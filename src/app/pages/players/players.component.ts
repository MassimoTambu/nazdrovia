import { Component, OnInit } from "@angular/core";
import { pages } from "src/app/models/pages";
import { Routes } from "src/app/models/routes";

@Component({
  selector: "app-players",
  templateUrl: "./players.component.html",
  styleUrls: ["./players.component.scss"],
})
export class PlayersComponent implements OnInit {
  constructor() {}

  pageRoute = Routes.Players;
  pageTitle = pages.find((r) => r.route === this.pageRoute).title;

  ngOnInit(): void {}
}
