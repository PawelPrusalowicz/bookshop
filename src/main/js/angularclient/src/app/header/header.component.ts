import { Component, OnInit } from '@angular/core';

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

  constructor() {
    this.homeMenuLabel = 'Strona główna';
    this.productsMenuLabel = 'Produkty';
    this.registrationMenuLabel = 'Logowanie';
    this.basketMenuLabel = 'Przejdź do koszyka';
    this.raportsLabel = 'Raporty sprzedaży';
    this.historyLabel = 'Historia zamówień';
  }

  ngOnInit(): void {
    this.userType = this.getData('UserType') as string;
    console.log(this.userType);
    this.isGuestUser = this.userType == null;
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
