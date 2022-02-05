import { Injectable } from '@angular/core';
import { HttpClient, HttpHeaders } from '@angular/common/http';
import { Cart } from '../model/cart';
import { Observable } from 'rxjs';

@Injectable()
export class CartService {

  private cartsUrl: string;

  constructor(private http: HttpClient) {
    this.cartsUrl = 'http://localhost:8080/carts';
  }

  public findAll(): Observable<Cart[]> {
    return this.http.get<Cart[]>(this.cartsUrl);
  }

  public save(cart: Cart) {
    return this.http.post<Cart>(this.cartsUrl, cart).subscribe((data) => { console.log(data); }, (error) => { console.error(error); });

  }
}
