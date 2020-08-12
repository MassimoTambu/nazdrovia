import { Component, OnInit } from "@angular/core";
import { Routes } from "src/app/shared/models/routes";
import { pages } from "src/app/shared/models/pages";

@Component({
  selector: "app-credits",
  templateUrl: "./credits.component.html",
  styleUrls: ["./credits.component.scss"],
})
export class CreditsComponent implements OnInit {
  constructor() {}

  pageRoute = Routes.Credits;
  pageTitle = pages.find((r) => r.route === this.pageRoute).title;

  ngOnInit(): void {}
}
