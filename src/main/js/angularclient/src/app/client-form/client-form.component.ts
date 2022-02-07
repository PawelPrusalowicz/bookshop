import { Component, Output, EventEmitter } from '@angular/core';
import { ActivatedRoute, Router } from '@angular/router';
import { ClientService } from '../service/client.service';
import { Client } from '../model/client';
import { Address } from '../model/address';
import { AuthService } from '../service/auth.service';
import { TokenStorageService } from '../service/token-storage.service';

@Component({
  selector: 'app-client-form',
  templateUrl: './client-form.component.html',
  styleUrls: ['./client-form.component.css']
})
export class ClientFormComponent {

  client: Client;
  address: Address;
  registrationButtonLabel: String;
  loginButtonLabel: String;
  loginFlag: Boolean;
  passwordConfirm : String;
  isError : boolean;
  popUpHeader : string;
  popUpBody : string;
  popUpStyle : string;
  //added for login, can be moved somewhere
  roles: string[] = [];
  public selectedVal: string;

  constructor(private route: ActivatedRoute, private router: Router, private clientService: ClientService, private authenticationService: AuthService, private tokenStorage: TokenStorageService) {
    this.client = new Client();
    this.registrationButtonLabel = 'Zarejestruj nowe konto';
    this.loginButtonLabel = 'Zaloguj się';
    this.loginFlag = true;
    this.isError = false;
    this.selectedVal = 'register';
    this.passwordConfirm = '';
    this.popUpHeader = 'Unexpected Error';
    this.popUpStyle = 'Error';
    this.popUpBody = 'Unexpected error. Please contact with administrator';
    //added for login, can be moved somewhere
    this.roles = this.tokenStorage.getUser().roles;
    //placeholder for form
    this.address = new Address();
    this.address.street = ' assa';
    this.address.buildingNo = ' asssa';
    this.address.apartamentNo = ' assa';
    this.address.city = ' assa';
    this.address.country = ' assa';
    this.address.postCode = ' postcode';

  }



  get isRegisterComponent() {
    return this.selectedVal == 'login' ? false : true;
  }

  get isCorrectPassword() {
    return (this.client.password == this.passwordConfirm);
  }

  onSubmit() {
    if (this.validation()) {
      this.authenticationService.register(this.client.email, this.client.email, this.client.password).subscribe(data => {

        console.log(this.client);
        this.setData('UserType', 'user');

        this.authenticationService.login(this.client.email, this.client.password).subscribe(data => {
          this.tokenStorage.saveToken(data.accessToken);
          this.tokenStorage.saveUser(data);
          this.roles = this.tokenStorage.getUser().roles;

          this.client.address = this.address;
          this.clientService.save(this.client);
        });

      });
    }
    else {
      console.log('incorrect password');
    }
}

  onLogin() {
    this.authenticationService.login(this.client.email, this.client.password).subscribe(
    data => {
      this.tokenStorage.saveToken(data.accessToken);
      this.tokenStorage.saveUser(data);
      this.roles = this.tokenStorage.getUser().roles;
      this.clientService.searchByLogin(this.client.email).subscribe(data => {
        this.client = data;
        this.client.carts = [];
        this.setData('Client', JSON.stringify(this.client));
        console.log(this.client);
        alert("Pomyślnie zalogowano");
        window.location.reload();
      });

    });


    this.setData('UserType',this.roles[0]);
  }

  gotoClientList() {
    this.router.navigate(['/clients']);
  }

  public onChangeToggleButton(val: string) {
    this.selectedVal = val;
    this.client = new Client();
  }

  public validation() {
    if(!this.isCorrectPassword) {
      this.handleErrorMessage('Invalid Password', 'Passwords doesn\'t match', 'Error');
      return false;
    }
    return true;
  }

  public handleErrorMessage(header: string, body: string, type: string) {
    this.popUpHeader = header;
    this.popUpBody = body;
    this.popUpStyle = type;
    this.isError = true;
  }

  closePopUp(newItem: string) {
    this.isError = false;
  }

  setData(item: string, data: string) {
    localStorage.setItem(item, data);
  }


  getData(item: string) {
    return localStorage.getItem(item);
  }

  removeData(key: string) {
    localStorage.removeItem(key);
  }

}
