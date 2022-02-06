import { Injectable } from '@angular/core';
import { HttpClient, HttpHeaders } from '@angular/common/http';
import { Stats} from "../model/stats";
import { Observable } from 'rxjs';
import { HttpClientModule, HttpParams } from '@angular/common/http';

@Injectable()
export class ReportService {

  private reportsUrl: string;

  constructor(private http: HttpClient) {
    this.reportsUrl = 'http://localhost:8080/reports';
  }

  public findAll(): Observable<Stats[]> {
    return this.http.get<Stats[]>(this.reportsUrl);
  }

}
