import { Component, OnInit } from "@angular/core";
import { pages } from "src/app/shared/models/pages";
import { Routes } from "src/app/shared/models/routes";

@Component({
  selector: "app-official-cocktails",
  templateUrl: "./official-cocktails.component.html",
  styleUrls: ["./official-cocktails.component.scss"],
})
export class OfficialCocktailsComponent implements OnInit {
  constructor() {}

  pageRoute = Routes.OfficialCocktails;
  pageTitle = pages.find((r) => r.route === this.pageRoute).title;

  ngOnInit(): void {}
}
