import { Component, OnInit } from '@angular/core';
import { TokenStorageService } from '../service/token-storage.service';

@Component({
  selector: 'app-header',
  templateUrl: './header.component.html',
  styleUrls: ['./header.component.css']
})
export class HeaderComponent implements OnInit {

  homeMenuLabel: string;
  productsMenuLabel: string;
  registrationMenuLabel: string;
  basketMenuLabel: string;
  raportsLabel: string;
  userType: string;
  isGuestUser: boolean;
  historyLabel: string;
  topSecretPanelLabel: string;
  isLoggedIn: boolean;
  showAdminBoard: boolean;
  showModeratorBoard: boolean;
  private roles: string[];

  constructor(private tokenStorageService: TokenStorageService) {
    //todo: do usuniecia
    this.setData('UserType','user');

    this.isLoggedIn = false;
    this.showAdminBoard = false;
    this.showModeratorBoard = false;
    this.roles = [];

    this.homeMenuLabel = 'Strona główna';
    this.productsMenuLabel = 'Produkty';
    this.registrationMenuLabel = 'Logowanie';
    this.basketMenuLabel = 'Przejdź do koszyka';
    this.raportsLabel = 'Raporty sprzedaży';
    this.historyLabel = 'Historia zamówień';
    this.topSecretPanelLabel = "Panel Administratora";
  }

  ngOnInit(): void {
    this.userType = this.getData('UserType') as string;
    console.log(this.userType);
    this.isGuestUser = this.userType == null;
    this.isLoggedIn = !!this.tokenStorageService.getToken();
    if (this.isLoggedIn) {
      const user = this.tokenStorageService.getUser();
      this.roles = user.roles;
      this.showAdminBoard = this.roles.includes('ROLE_ADMIN');
      this.showModeratorBoard = this.roles.includes('ROLE_MODERATOR');
      console.log("======= ADMIN AND MOD DATA ========");
      console.log(this.showAdminBoard);
      console.log(this.showModeratorBoard);
    }
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

  get isAdmin() {
    return this.userType == 'admin' ? true : false;
  }
}
