import {Client} from "./client";
import {OrderPosition} from "./orderPosition";

export class Order {

  orderId: number;
  creationTime : Date;
  orderPrice: number;
  status : string;
  invoiceDate : Date;
  client : Client;
  orderPositions : OrderPosition[] = [];

}
