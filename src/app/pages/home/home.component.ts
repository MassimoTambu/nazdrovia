import { Component, OnInit } from "@angular/core";
import { ActivatedRoute, Router } from "@angular/router";
import { Pages, pages } from "src/app/shared/models/pages";
import { Routes } from "src/app/shared/models/routes";

@Component({
  selector: "app-home",
  templateUrl: "./home.component.html",
  styleUrls: ["./home.component.scss"],
})
export class HomeComponent implements OnInit {
  constructor(private router: Router, private activatedRoute: ActivatedRoute) {}

  pages: Pages[] = pages;

  title = "Nazdrovia";
  route = pages.find((r) => r.route === Routes.Home).route;

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

  public filterPages(): Pages[] {
    return pages.filter((p) => p.mainPage !== true);
  }

  public navigateToPage(route: string): void {
    this.router.navigate([route], { relativeTo: this.activatedRoute });
  }
}
