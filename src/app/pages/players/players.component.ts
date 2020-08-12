import { Component } from "@angular/core";
import { ACHIEVEMENTS } from "src/app/data/achievements";
import { PLAYERS } from "src/app/data/players";
import { pages } from "src/app/shared/models/pages";
import { Routes } from "src/app/shared/models/routes";

@Component({
  selector: "app-players",
  templateUrl: "./players.component.html",
  styleUrls: ["./players.component.scss"],
})
export class PlayersComponent {
  constructor() {}

  pageRoute = Routes.Players;
  pageTitle = pages.find((r) => r.route === this.pageRoute).title;

  players = PLAYERS;
  achievements = ACHIEVEMENTS;
  playersPodium = this.players
    .sort((p1, p2) => (p1.NasScore > p2.NasScore ? -1 : 1))
    .slice(0, 3);

  displayedHeaderColumns = [
    "Nome",
    "Cognome",
    "Nas Score",
    "Obbiettivi Completati",
  ];
  displayedColumns = ["name", "lastName", "nasScore", "achievementsUnlocked"];
}
