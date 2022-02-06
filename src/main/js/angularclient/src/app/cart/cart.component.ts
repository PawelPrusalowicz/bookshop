import { Component, OnInit } from '@angular/core';
import {Cart} from "../model/cart";
import {Product} from "../model/product";
import {Client} from "../model/client";
import {Address} from "../model/address";

@Component({
  selector: 'app-cart',
  templateUrl: './cart.component.html',
  styleUrls: ['./cart.component.css']
})
export class CartComponent implements OnInit {

  cart: Cart;
  client: Client;
  address: Address;
  isOtherAddress: boolean;
  isCancelFlag: boolean;

  street: string;
  zipCode: string;
  buildingNumber: string;
  apartamentNumber: string;
  city: string;

  get orderSum() {
    let totalSum = 0;
    for(let item of this.cart.orderPositions) {
      totalSum += item.quantity * item.product.price;
    }
    return totalSum;
  }

  constructor() {
    let cartJson = this.getData('Cart') as string;
    this.cart = JSON.parse(cartJson);


    let addressJSON = this.getData('Address') as string;
    if(addressJSON != null) {
      this.address = JSON.parse(addressJSON);
      this.getAddressFromClient();
    }

    this.isOtherAddress = false;
    this.isCancelFlag = false;
  }

  ngOnInit(): void {
  }

  deleteItemFromBasket(itemId: Product) {
    // //todo: usuniecie produktu z koszyka
    console.log(itemId);
  }

  onCheckboxChange() {
    this.isOtherAddress = !this.isOtherAddress;
    if(!this.isOtherAddress) {
      this.getAddressFromClient();
    }
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

  setData(item: string, data: any) {
    const jsonData = JSON.stringify(data);
    localStorage.setItem(item, jsonData);
  }

  getData(item: string) {
    return localStorage.getItem(item);
  }

  removeData(key: string) {
    localStorage.removeItem(key);
  }

  getAddressFromClient() {
    this.street = this.address.street;
    this.zipCode = this.address.postCode;
    this.buildingNumber = this.address.buildingNo;
    this.apartamentNumber = this.address.apartamentNo;
    this.city = this.address.city;
  }

  getAddressForOrder() {
    let address = new Address();
    address.street = this.street;
    address.postCode = this.zipCode;
    address.apartamentNo = this.apartamentNumber;
    address.buildingNo = this.buildingNumber;
    address.city = this.city;
    return address;
  }

  submitOrder() {
    //adres do zamowienia:
    console.log(this.getAddressForOrder());
  }
}
