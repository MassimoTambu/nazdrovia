import { Component, OnInit } from '@angular/core';
import { Router } from '@angular/router';

@Component({
  selector: 'app-header',
  templateUrl: './header.component.html',
  styleUrls: ['./header.component.css']
})
export class HeaderComponent implements OnInit {

  constructor(private router: Router) { }

  ngOnInit() {
  }

  onClickRules() {
    if (this.router.url !== '/rules') {
      this.router.navigate(['../rules']);
    }
  }

  onClickHistory() {
    console.log(this.router.url);
    if (this.router.url !== '/history') {
      this.router.navigate(['../history']);
    }
  }
}
