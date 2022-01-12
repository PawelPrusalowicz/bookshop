import { OrderPosition } from '../model/orderPosition';
import { Client } from '../model/client';


export class Cart {

  cart_id: number;
  creation_date : Date;
  orderPositions : OrderPosition[] = [];
  client : Client;

}
