import { Injectable } from '@angular/core';
import { HttpClient, HttpHeaders } from '@angular/common/http';
import { Discount } from '../model/discount';
import { Observable } from 'rxjs';
import { HttpClientModule, HttpParams } from '@angular/common/http';

@Injectable()
export class DiscountService {

  private discountsUrl: string;

  constructor(private http: HttpClient) {
    this.discountsUrl = 'http://localhost:8080/discounts';
  }

  public search(param : string): Observable<Discount> {
    let url = this.discountsUrl;
    return this.http.post<Discount>(url, param);
  }

}
