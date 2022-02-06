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
  }

  get isRegisterComponent() {
    return this.selectedVal == 'login' ? false : true;
  }

  get isCorrectPassword() {
    return (this.client.password == this.passwordConfirm);
  }

  onSubmit() {
    if(this.validation()) {
      this.clientService.save(this.client).subscribe(result => this.gotoClientList());
      this.authenticationService.register(this.client.email, this.client.email, this.client.password).subscribe();
      //TODO po rejestracji zmieniaj okno
      //zapis danych do bazy
    }else {
      console.log('incorrect password');
    }
  }

  onLogin() {
    console.log('login');
    this.authenticationService.login(this.client.email, this.client.password).subscribe(
    data => {
      this.tokenStorage.saveToken(data.accessToken);
      this.tokenStorage.saveUser(data);
      this.roles = this.tokenStorage.getUser().roles;
      //storage data z bazy danych
    });
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

}
