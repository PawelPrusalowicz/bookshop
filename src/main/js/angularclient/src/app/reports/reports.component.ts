import { Component, OnInit } from '@angular/core';
import { Stats} from "../model/stats";

@Component({
  selector: 'app-reports',
  templateUrl: './reports.component.html',
  styleUrls: ['./reports.component.css']
})
export class ReportsComponent implements OnInit {

  report: Stats[];

  constructor() {
    //todo: podpięice Service
    this.report = [new Stats(), new Stats(), new Stats()];
  }

  ngOnInit(): void {
  }

}
