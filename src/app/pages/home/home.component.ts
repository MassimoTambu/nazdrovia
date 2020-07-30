import { Component, OnInit } from "@angular/core";
import { Pages, pages } from "../../models/pages";
import { Router } from "@angular/router";
import { Routes } from "src/app/models/routes";

@Component({
  selector: "app-home",
  templateUrl: "./home.component.html",
  styleUrls: ["./home.component.scss"],
})
export class HomeComponent implements OnInit {
  constructor(private route: Router) {}

  pages: Pages[] = pages;

  gridCols: number;
  gridRowHeight: string;

  ngOnInit(): void {
    this.styleGrid();
  }

  public styleGrid(): void {
    if (window.screen.width <= 800) {
      this.gridCols = 1;
      this.gridRowHeight = "100px";
    } else {
      this.gridCols = 2;
      this.gridRowHeight = `${(window.screen.height * 20) / 100}px`;
    }
  }

  public navigateToPage(route: string): void {
    this.route.navigate([route]);
  }
}
