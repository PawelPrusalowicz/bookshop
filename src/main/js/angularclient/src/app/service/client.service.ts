import { Injectable } from '@angular/core';
import { HttpClient, HttpHeaders } from '@angular/common/http';
import { Client } from '../model/client';
import { Observable } from 'rxjs';

@Injectable()
export class ClientService {

  private clientsUrl: string;

  constructor(private http: HttpClient) {
    this.clientsUrl = 'http://localhost:8080/clients';
  }

  public findAll(): Observable<Client[]> {
    return this.http.get<Client[]>(this.clientsUrl);
  }

  public save(client: Client) {
    return this.http.post<Client>(this.clientsUrl, client);
  }

  public search(param : number): Observable<Client> {
    let url = this.clientsUrl + "/search";
    return this.http.post<Client>(url, param);
  }

}
