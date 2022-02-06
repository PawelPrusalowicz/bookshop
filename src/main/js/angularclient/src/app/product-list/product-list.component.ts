import { Component, OnInit } from '@angular/core';
import { Product } from '../model/product';
import { OrderPosition } from '../model/orderPosition';
import { Cart } from '../model/cart';
import { Client } from '../model/client';

import { ProductService } from '../service/product.service';
import { CartService } from '../service/cart.service';

@Component({
  selector: 'app-product-list',
  templateUrl: './product-list.component.html',
  styleUrls: ['./product-list.component.css']
})
export class ProductListComponent implements OnInit {

  products: Product[];

  cart: Cart;

  total: number;

  wasAddToCard: boolean;
  isEmptySearch: boolean;

  style: string

  constructor(private productService: ProductService, private cartService: CartService) {
    this.wasAddToCard = false;
    this.isEmptySearch = false;
    this.style = 'Information';
  }

  ngOnInit() {
    this.productService.findAll().subscribe(data => {
      this.products = data;
    });

    this.total = 0;
    this.cart = new Cart();
    this.cart.cart_id = 2;
    this.cart.creation_date = new Date('2021-12-17T03:24:00');
    this.cart.client = new Client();
    this.cart.client.client_id = 1;
    //todo: tutaj dodaje do storage:

    this.setData('Cart', this.cart);
  }

  searchProducts() {
    this.wasAddToCard = false;
    this.isEmptySearch = false;

    let searchParam = (<HTMLInputElement>document.getElementById("search")).value;
    if (searchParam) {
      this.productService.search(searchParam).subscribe(data => {
      this.products = data;
      });
    }

    if(this.products.length == 0) {
      this.isEmptySearch = true;
    }

  }

  addToCart(product: Product) {
    console.log(this.cart);
    console.log(this.getData('Cart'));
    this.wasAddToCard = false;
      for (let orderPos of this.cart.orderPositions) {
          if (orderPos.product.product_id == product.product_id) {
              orderPos.quantity += 1;
              for (let orderPos of this.cart.orderPositions) {
                this.total += orderPos.quantity * orderPos.product.price;
              }
              return;
          }
      }

      let orderPosition = new OrderPosition();
      orderPosition.product = product;
      orderPosition.quantity = 1;
      this.cart.orderPositions.push(orderPosition);
      this.total = 0;
      for (let orderPos of this.cart.orderPositions) {
        this.total += orderPos.quantity * orderPos.product.price;
      }
      this.wasAddToCard = true;
      //dodanie do storage po każdym dodaniu produktu
      this.setData('Cart', this.cart);
  }

  makeOrder() {
      this.cartService.save(this.cart);
  }

  closePopUp(newItem: string) {
    this.wasAddToCard = false;
    this.isEmptySearch = false;
  }

  setData(item: string, data: any) {
    const jsonData = JSON.stringify(data);
    localStorage.setItem(item, jsonData);
  }

  getData(item: string) {
    return localStorage.getItem('Products');
  }

  removeData(key: string) {
    localStorage.removeItem(key);
  }


}
