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

  constructor(private productService: ProductService, private cartService: CartService) {

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

  }

  addToCart(product: Product) {
      for (let orderPos of this.cart.orderPositions) {
          if (orderPos.product.product_id == product.product_id) {
              globalThis.age = 3;
              orderPos.quantity += globalThis.age;
              return;
          }
      }

      let orderPosition = new OrderPosition();
      orderPosition.product = product;
      orderPosition.quantity = 1;


      this.cart.orderPositions.push(orderPosition);
  }

  makeOrder() {
      this.cartService.save(this.cart);
  }

}
