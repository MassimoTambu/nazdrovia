import { Component, Input, OnInit } from "@angular/core";
import { ThemeService } from "src/app/services/theme.service";
import { Router } from "@angular/router";
import { Routes } from "src/app/models/routes";

@Component({
  selector: "app-page-anchor-list",
  template: `
    <mat-chip-list>
      <mat-chip
        *ngFor="let anchor of anchors"
        (click)="navigateToFragment(anchor)"
        color="primary"
        selected
        >{{ anchor }}</mat-chip
      >
    </mat-chip-list>
  `,
  styles: [
    `
      ::ng-deep.mat-chip-list-wrapper {
        justify-content: center;
      }
      mat-chip {
        cursor: pointer;
        font-size: 2vh;
      }
    `,
  ],
})
export class PageAnchorListComponent implements OnInit {
  @Input() anchors: string[];
  @Input() routes: string[];

  constructor(public tService: ThemeService, private router: Router) {}

  ngOnInit() {}

  navigateToFragment(anchor: string): void {
    this.router.navigate(this.routes, { fragment: anchor });
  }
}
