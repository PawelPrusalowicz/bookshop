import { Component, Output, EventEmitter } from '@angular/core';
import { ActivatedRoute, Router } from '@angular/router';
import { ClientService } from '../service/client.service';
import { Client } from '../model/client';
import { AuthService } from '../service/auth.service';
import { TokenStorageService } from '../service/token-storage.service';

@Component({
  selector: 'app-client-form',
  templateUrl: './client-form.component.html',
  styleUrls: ['./client-form.component.css']
})
export class ClientFormComponent {

  client: Client;
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
  successfulReg: boolean;
  successfulLogin: boolean;
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
    this.successfulReg = false;
    this.successfulLogin = false;
  }

  get isRegisterComponent() {
    return this.selectedVal == 'login' ? false : true;
  }

  get isCorrectPassword() {
    return (this.client.password == this.passwordConfirm);
  }

  onSubmit() {
    if (this.validation()) {
      this.clientService.save(this.client).subscribe(result => this.gotoClientList());
      this.authenticationService.register(this.client.email, this.client.email, this.client.password).subscribe(
        data => {
          this.successfulReg = true;
        },
      );
    }
    else {
      console.log('incorrect password');
      this.successfulReg = false;
    }

    console.log(this.successfulReg);
    if (this.successfulReg) {
      this.setData('Client', this.client);
      this.setData('UserType', 'user');
      let clientJson = this.getData('Client') as string;
      console.log(clientJson);
    }
    //TODO Add autologin
}

  onLogin() {
    console.log('login');
    this.authenticationService.login(this.client.email, this.client.password).subscribe(
      data => {
        this.tokenStorage.saveToken(data.accessToken);
        this.tokenStorage.saveUser(data);
        this.roles = this.tokenStorage.getUser().roles;
        this.successfulLogin = true;

        this.clientService.search(this.client.email).subscribe(data => {
        this.client = data;});
      });
    console.log(this.successfulLogin);
    }

  gotoClientList() {
    this.router.navigate(['/clients']);
  }

  public onChangeToggleButton(val: string) {
    this.selectedVal = val;
    this.client = new Client();
  }

  //TODO: kolejne waldiacje
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

 setData(item: string, data: any) {
  const jsonData = JSON.stringify(data);
  localStorage.setItem(item, jsonData);
  }

  getData(item: string) {
    return localStorage.getItem('Client');
  }

  removeData(key: string) {
    localStorage.removeItem(key);
  }

}
