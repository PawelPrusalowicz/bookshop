import { Component, OnInit } from '@angular/core';
import {Cart} from "../model/cart";
import {Product} from "../model/product";
import {Client} from "../model/client";

@Component({
  selector: 'app-cart',
  templateUrl: './cart.component.html',
  styleUrls: ['./cart.component.css']
})
export class CartComponent implements OnInit {

  cart: Cart;
  client: Client;
  isOtherAddress: boolean;
  isCancelFlag: boolean;

  street: string;
  zipCode: string;
  homeNumber: string;
  city: string;

  get orderSum() {
    //todo: suma towarow
    return 100;
  }

  constructor() {
    let cartJson = this.getData('Cart') as string;
    this.cart = JSON.parse(cartJson);

    let clientJson = this.getData('Address') as string;
    this.client = JSON.parse(clientJson);

    this.street = '';
    this.zipCode = '';
    this.homeNumber = '';
    this.city = '';

    this.isOtherAddress = false;
    this.isCancelFlag = false;
  }

  ngOnInit(): void {
  }

  deleteItemFromBasket(itemId: Product) {
    // //todo: usuniecie produktu z koszyka
    // console.log(itemId);
  }

  onCheckboxChange() {
    this.isOtherAddress = !this.isOtherAddress;
    if(this.isOtherAddress) {
      //todo: kopia pol z klient.address
    }
    console.log(this.isOtherAddress);
  }

  cancelSubmit() {
    this.isCancelFlag = true;
  }
  cancel() {
    //todo: usuniecie calego zamowienia i przekierowanie na strone glowna
  }

  returnToOrder() {
    this.isCancelFlag = false;
  }

  getData(item: string) {
    return localStorage.getItem(item);
  }

  getAddressFromClient() {

  }

}
