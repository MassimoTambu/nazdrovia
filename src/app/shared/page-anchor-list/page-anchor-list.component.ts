import { Component, Input, OnInit } from "@angular/core";
import { ThemeService } from "src/app/services/theme.service";
import { Router } from "@angular/router";
import { Routes } from "src/app/models/routes";

@Component({
  selector: "app-page-anchor-list",
  template: `
    <span *ngFor="let anchor of anchors" (click)="navigateToFragment(anchor)">{{
      anchor
    }}</span>
  `,
  styles: [``],
})
export class PageAnchorListComponent implements OnInit {
  @Input() anchors: string[];

  constructor(public tService: ThemeService, private router: Router) {}

  ngOnInit() {}

  navigateToFragment(anchor: string): void {
    this.router.navigate([Routes.Home, Routes.Rules], { fragment: anchor });
  }
}
