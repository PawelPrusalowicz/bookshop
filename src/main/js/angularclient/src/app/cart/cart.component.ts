import { Component, OnInit } from '@angular/core';
import {Cart} from "../model/cart";
import {Client} from "../model/client";
import {Address} from "../model/address";

import {OrderPosition} from "../model/orderPosition";
import {Order} from "../model/order";

import { OrderService } from "../service/order.service";
import { DiscountService } from "../service/discount.service";
import { ClientService } from "../service/client.service";


@Component({
  selector: 'app-cart',
  templateUrl: './cart.component.html',
  styleUrls: ['./cart.component.css']
})
export class CartComponent implements OnInit {

  cart: Cart;
  order : Order;
  client: Client;
  address: Address;
  isOtherAddress: boolean;
  isCancelFlag: boolean;
  openPopUp: boolean;

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
    if (this.order.discount) {
      totalSum *= (1 - this.order.discount.percentage/100);
    }
    totalSum = Number.parseFloat(totalSum.toFixed(2));
    this.order.orderPrice = totalSum;

    return totalSum;
  }

  constructor(private orderService: OrderService, private discountService: DiscountService, private clientService: ClientService) {

    this.client = JSON.parse(this.getData('Client') as string);

    this.cart = this.client.carts[0];
    this.order = new Order();
    this.address = this.client.address;

    this.isOtherAddress = false;
    this.isCancelFlag = false;
    this.openPopUp = false;
  }

  ngOnInit(): void {
  }

  deleteItemFromBasket(orderPosition: OrderPosition) {
    let index = this.cart.orderPositions.indexOf(orderPosition);
    this.cart.orderPositions.splice(index,1);
    this.setData('Cart', this.cart);
    if(this.cart.orderPositions.length == 0) {
      this.handleOpenPopUp('Koszyk jest pusty', 'Wróć na stronę produkty, aby kontynuować zakupy', 'Information');
    }
    this.client.carts[0] = this.cart;
    this.setData('Client', this.client);
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
    this.cart = new Cart();
    this.clientService.searchById(this.client.client_id).subscribe(data => {
        this.client = data;
        this.client.carts = [];
        this.setData('Client', this.client);
        console.log(this.client);
      });
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
    this.street = this.client.address.street;
    this.zipCode = this.client.address.postCode;
    this.buildingNumber = this.client.address.buildingNo;
    this.apartamentNumber = this.client.address.apartamentNo;
    this.city = this.client.address.city;
  }

  getAddressForOrder() {
    let address = new Address();
    address.street = this.street;
    address.postCode = this.zipCode;
    address.apartamentNo = this.apartamentNumber;
    address.buildingNo = this.buildingNumber;
    address.city = this.city;
    address.country = "Polska";
    return address;
  }

  submitOrder() {
    console.log(this.getAddressForOrder());

    this.order.client = this.client;
    this.order.creationTime = new Date();
    this.order.status = 'Opłacone';
    this.order.orderPositions = this.cart.orderPositions;
    this.order.address = this.getAddressForOrder();
    this.orderService.save(this.order);
    alert("Zamówienie zostało złożone");
    this.cart = new Cart();
    this.clientService.searchById(this.client.client_id).subscribe(data => {
        this.client = data;
        this.client.carts = [];
        this.setData('Client', this.client);
        console.log(this.client);
      });
  }

  getDiscount() {
    let searchParam = (<HTMLInputElement>document.getElementById("search")).value;
    if (searchParam) {
      this.discountService.search(searchParam).subscribe(data => {
        if (data) {
          this.order.discount = data;
        }
      });
    }
  }

  header: string;
  body: string;
  style: string;
  handleOpenPopUp(header: string, body: string, style: string) {
    this.header = header;
    this.body = body;
    this.style = style;
    this.openPopUp = true;
  }

  closePopUp(newItem: string) {
    this.openPopUp = false;
  }

  get isDisabledSubmit() {
    return this.cart.orderPositions.length == 0;
  }

}
