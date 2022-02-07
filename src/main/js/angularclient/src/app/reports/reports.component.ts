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

    this.reportService.findAll().subscribe(data => {
      this.report = data;
    });
  }

}
