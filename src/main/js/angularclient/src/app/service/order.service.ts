import { Injectable } from '@angular/core';
import { HttpClient, HttpHeaders } from '@angular/common/http';
import { Order } from '../model/order';
import { Observable } from 'rxjs';

@Injectable()
export class OrderService {

  private ordersUrl: string;

  constructor(private http: HttpClient) {
    this.ordersUrl = 'http://localhost:8080/orders';
  }

  public findAll(): Observable<Order[]> {
    return this.http.get<Order[]>(this.ordersUrl);
  }

  public save(order: Order) {
    return this.http.post<Order>(this.ordersUrl, order).subscribe((data) => { console.log(data); }, (error) => { console.error(error); });

  }
}
