import { Component, Input, OnInit } from "@angular/core";
import { THEMES } from "src/app/models/themes";
import { ThemeService } from "src/app/services/theme.service";
import { Routes } from "src/app/models/routes";

@Component({
  selector: "app-page-title",
  template: `
    <div class="nav-bar-container">
      <div
        class="nav-bar"
        [style.backgroundColor]="tService.getThemeForegroundColor()"
      >
        <div class="nav-bar-elements">
          <a mat-icon-button *ngIf="!isHome" routerLink="..">
            <mat-icon inline="true" color="primary">arrow_back</mat-icon></a
          >
          <h1
            [ngClass]="[isHome ? 'title' : 'page-title']"
            [style.color]="tService.getFontColor()"
          >
            {{ title }}
          </h1>
          <a mat-icon-button [matMenuTriggerFor]="thememenu">
            <mat-icon inline="true" color="primary">format_paint</mat-icon>
          </a>
        </div>
        <app-page-anchor-list
          [anchors]="anchors"
          [routes]="routes"
        ></app-page-anchor-list>
      </div>
    </div>

    <mat-menu #thememenu="matMenu" class="theme-menu">
      <button
        mat-menu-item
        *ngFor="let theme of themes"
        (click)="onSelectTheme(theme.className)"
        class="theme-button"
      >
        <span class="theme-title">{{ theme.name }}</span>
        <mat-icon class="theme-preview">
          <div
            class="p-color"
            [style.backgroundColor]="theme.primary.primaryColor"
          ></div>
          <div
            class="s-color"
            [style.backgroundColor]="theme.accent.primaryColor"
          ></div>
        </mat-icon>
      </button>
    </mat-menu>
  `,
  styles: [
    `
      .title {
        flex-grow: 1;
        padding: 30px 0 20px 0;
        font-size: 6vh;
        font-weight: bold;
        text-transform: uppercase;
      }

      .nav-bar-container {
        padding-bottom: 3vh;
      }
      .nav-bar {
        padding: 0 20px 10px 20px;
        border-radius: 0 0 20px 20px;
        font-size: 3vh;
      }
      .nav-bar-elements {
        display: flex;
        align-items: center;
      }
      mat-icon {
        cursor: pointer;
      }
      .page-title {
        flex-grow: 1;
        padding: 3vh 0 1.5vh 0;
        font-size: 3.5vh;
        font-weight: bold;
        text-transform: uppercase;
      }
      ::ng-deep.mat-button-wrapper {
        font-size: 3vh;
      }
      .theme-button {
        display: flex;
        align-items: center;
      }
      .theme-title {
        flex-grow: 1;
        padding-right: 10px;
      }
      .theme-preview {
        margin: 0;
        padding: 0;
        width: 25px;
        height: 25px;
      }
      .p-color {
        border-radius: 3px 3px 0 0;
        width: 100%;
        height: 15px;
      }
      .s-color {
        border-radius: 0 0 3px 3px;
        width: 100%;
        height: 10px;
      }
    `,
  ],
})
export class PageTitleComponent implements OnInit {
  @Input() title: string;
  @Input() route: Routes;
  @Input() anchors: string[];
  @Input() routes: string[];

  themes = THEMES;

  isHome: boolean;

  constructor(public tService: ThemeService) {}
  onSelectTheme(theme: string) {
    this.tService.setTheme(theme);
  }

  ngOnInit() {
    this.route === Routes.Home ? (this.isHome = true) : (this.isHome = false);
  }
}
