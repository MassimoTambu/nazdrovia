import { HttpClient } from "@angular/common/http";
import { Injectable } from "@angular/core";
import { BehaviorSubject } from "rxjs";
import { Consts } from "../../../../../shared/models/consts";
import { Player } from "../../../../../shared/models/player";

@Injectable({ providedIn: "root" })
export class PlayersService {
  playersWithAchievements = new BehaviorSubject<Player[]>(null);
  playersWithAchievementsNeverCalled = true;

  constructor(private http: HttpClient) {}

  getPlayers() {
    return this.http.get<Player[]>(`${Consts.BASE_URL}${Consts.PLAYERS}`);
  }

  getPlayersWithAchievements(): void {
    this.http
      .get<Player[]>(
        `${Consts.BASE_URL}${Consts.PLAYERS}${Consts.PLAYERS_W_ACHIEVEMENTS}`
      )
      .subscribe((pwa) => this.playersWithAchievements.next(pwa));
  }
}
