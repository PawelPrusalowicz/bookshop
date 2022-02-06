import { Address } from '../model/address';
import { Order } from '../model/order';
import { Cart } from '../model/cart';


export class Client {

    client_id: number;
    firstName: string;
    lastName: string;
    companyName: string;
    nip: string;
    phoneNumber: string;
    email: string;
    loyaltyCard: boolean;
    newsletterAgreement: boolean;
    password: string;
   // address : Address;
    orders : Order[] = [];
    carts : Cart[] = [];

}
