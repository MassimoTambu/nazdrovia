import { Component, OnDestroy, OnInit } from "@angular/core";
import { Subscription } from "rxjs";
import { ACHIEVEMENTS } from "src/app/data/achievements";
import { pages } from "src/app/shared/models/pages";
import { Routes } from "src/app/shared/models/routes";
import { PlayersService } from "src/app/shared/services/players.service";
import { Player } from "../../../../../shared/models/player";

@Component({
  selector: "app-players",
  templateUrl: "./players.component.html",
  styleUrls: ["./players.component.scss"],
})
export class PlayersComponent implements OnInit, OnDestroy {
  constructor(private pService: PlayersService) {}

  pageRoute = Routes.Players;
  pageTitle = pages.find((r) => r.route === this.pageRoute).title;

  players: Player[] = [];
  achievements = ACHIEVEMENTS;
  playersPodium: Player[] = [];

  displayedHeaderColumns = [
    "Nome",
    "Cognome",
    "Nas Score",
    "Obbiettivi Completati",
  ];
  displayedColumns = ["name", "lastName", "nasScore", "achievementsId"];

  subscriptions = new Subscription();

  ngOnInit(): void {
    this.pService.getPlayersWithAchievements();

    this.subscriptions.add(
      this.pService.playersWithAchievements.subscribe((p) => {
        console.log(p);
        this.players = p;
        this.playersPodium = this.players
          .sort((p1, p2) => (p1.nasScore > p2.nasScore ? -1 : 1))
          .slice(0, 3);
        console.log(this.players);
      })
    );



  }

  ngOnDestroy(): void {
    this.subscriptions.unsubscribe();
  }
}
