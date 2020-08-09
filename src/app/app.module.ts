import { NgModule } from "@angular/core";
import { BrowserModule } from "@angular/platform-browser";
import { BrowserAnimationsModule } from "@angular/platform-browser/animations";
import { AppComponent } from "./app.component";
import { AppRoutingModule } from "./app.routing.module";
import { MaterialModule } from "./material.module";
import { AchievementComponent } from "./pages/achievements/achievement/achievement.component";
import { AchievementsComponent } from "./pages/achievements/achievements.component";
import { CreditsComponent } from "./pages/credits/credits.component";
import { HomeComponent } from "./pages/home/home.component";
import { OfficialCocktailsComponent } from "./pages/official-cocktails/official-cocktails.component";
import { OtherGamesComponent } from "./pages/other-games/other-games.component";
import { PlayerComponent } from "./pages/players/player/player.component";
import { PlayersComponent } from "./pages/players/players.component";
import { PodiumComponent } from "./pages/players/podium/podium.component";
import { RulesComponent } from "./pages/rules/rules.component";
import { SharedModule } from "./shared/shared.module";

const AppComponents = [
  AppComponent,
  RulesComponent,
  HomeComponent,
  AchievementsComponent,
  AchievementComponent,
  PlayersComponent,
  PlayerComponent,
  PodiumComponent,
  CreditsComponent,
  OtherGamesComponent,
  OfficialCocktailsComponent,
];

const AppModules = [
  BrowserModule,
  BrowserAnimationsModule,
  MaterialModule,
  AppRoutingModule,
  SharedModule,
];

@NgModule({
  declarations: [AppComponents],
  imports: [AppModules],
  providers: [],
  bootstrap: [AppComponent],
})
export class AppModule {}
