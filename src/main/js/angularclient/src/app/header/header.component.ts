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

  constructor() {
    this.homeMenuLabel = 'Strona główna';
    this.productsMenuLabel = 'Produkty';
    this.registrationMenuLabel = 'Logowanie';
    this.basketMenuLabel = 'Przejdź do koszyka';
    this.raportsLabel = 'Raporty sprzedaży';
  }

  ngOnInit(): void {
  }

}
