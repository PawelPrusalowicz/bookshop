import { Injectable } from '@angular/core';
import { HttpClient, HttpHeaders } from '@angular/common/http';
import { Product } from '../model/product';
import { Observable } from 'rxjs';
import { HttpClientModule, HttpParams } from '@angular/common/http';

@Injectable()
export class ProductService {

  private productsUrl: string;

  constructor(private http: HttpClient) {
    this.productsUrl = 'http://localhost:8080/products';
  }

  public findAll(): Observable<Product[]> {
    return this.http.get<Product[]>(this.productsUrl);
  }

  public search(param : string): Observable<Product[]> {
    let url = this.productsUrl + "/search";
    return this.http.post<Product[]>(url, param);
  }

  public save(product: Product) {
    return this.http.post<Product>(this.productsUrl, product);
  }
}
