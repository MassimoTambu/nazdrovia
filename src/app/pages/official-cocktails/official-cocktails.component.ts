import { Component, OnInit } from "@angular/core";
import { Routes } from "src/app/models/routes";
import { pages } from "src/app/models/pages";

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
