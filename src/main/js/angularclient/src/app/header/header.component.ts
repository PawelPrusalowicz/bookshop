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

  constructor() {
    this.homeMenuLabel = 'Home';
    this.productsMenuLabel = 'Products';
    this.registrationMenuLabel = 'Registration/Login';
    this.basketMenuLabel = 'Przejdź do koszyka';
  }

  ngOnInit(): void {
  }

}
