import { Component, OnInit } from '@angular/core';
import {Order} from "../model/order";
import {OrderPosition} from "../model/orderPosition";
import {Product} from "../model/product";

@Component({
  selector: 'app-order-history',
  templateUrl: './order-history.component.html',
  styleUrls: ['./order-history.component.css']
})
export class OrderHistoryComponent implements OnInit {

  historyOrders : Order[];

  constructor() {

  }

  ngOnInit(): void {
  }

}
