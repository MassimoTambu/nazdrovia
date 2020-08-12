import { Component, OnInit } from "@angular/core";
import { pages } from "src/app/shared/models/pages";
import { Routes } from "src/app/shared/models/routes";

@Component({
  selector: "app-other-games",
  templateUrl: "./other-games.component.html",
  styleUrls: ["./other-games.component.scss"],
})
export class OtherGamesComponent implements OnInit {
  constructor() {}

  pageRoute = Routes.OtherGames;
  pageTitle = pages.find((r) => r.route === this.pageRoute).title;

  ngOnInit(): void {}
}
