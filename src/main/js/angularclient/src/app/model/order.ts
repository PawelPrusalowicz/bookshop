import { OrderPosition } from '../model/orderPosition';
import { Client } from '../model/client';
import { Address } from '../model/address';
import { Discount } from '../model/discount';

export class Order {

  orderId: number;
  creationTime : Date;
  orderPrice: number;
  status : string;
  invoiceDate : Date;
  client : Client;
  address : Address;
  discount : Discount;
  orderPositions : OrderPosition[] = [];

}
