import { Component, OnInit } from '@angular/core';
import { Stats} from "../model/stats";
import { ReportService } from '../service/report.service';


@Component({
  selector: 'app-reports',
  templateUrl: './reports.component.html',
  styleUrls: ['./reports.component.css']
})
export class ReportsComponent implements OnInit {

  report: Stats[];

  constructor(private reportService: ReportService) {
  }

  ngOnInit() {

var number = 2453413.70;

//#console.log(new Intl.NumberFormat('en-IN', { style: "currency", currency: "INR" }).format(number));
//#if you dont want currency symbol, use it like this

console.log(new Intl.NumberFormat('en-IN').format(number));
console.log("OK");
    this.reportService.findAll().subscribe(data => {
      this.report = data;
    });
  }

}
