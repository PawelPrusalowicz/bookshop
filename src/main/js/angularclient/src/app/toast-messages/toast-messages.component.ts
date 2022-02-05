import { Component, OnInit, Input, Output, EventEmitter } from '@angular/core';

@Component({
  selector: 'app-toast-messages',
  templateUrl: './toast-messages.component.html',
  styleUrls: ['./toast-messages.component.css']
})

export class ToastMessagesComponent implements OnInit {

  @Input() openPopUp = false;
  @Input() header = 'Unexpected error';
  @Input() body = 'Unexpected error. Please contact with administrator';
  @Input() style = 'Error';

  @Output() closeModalEvent = new EventEmitter<string>();

  get brand() {
    return this.style == 'Error' ? 'red' : 'green';
  }

  closeModal() {
    this.closeModalEvent.emit();
  }

  constructor() {}
  ngOnInit(): void {}
}
