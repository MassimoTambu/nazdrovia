import { NgModule } from "@angular/core";
import { RouterModule, Route } from "@angular/router";
import { AchievementsComponent } from "./pages/achievements/achievements.component";
import { CreditsComponent } from "./pages/credits/credits.component";
import { HomeComponent } from "./pages/home/home.component";
import { OfficialCocktailsComponent } from "./pages/official-cocktails/official-cocktails.component";
import { OtherGamesComponent } from "./pages/other-games/other-games.component";
import { PlayersComponent } from "./pages/players/players.component";
import { RulesComponent } from "./pages/rules/rules.component";
import { Routes } from "./models/routes";

const ROUTES: Route[] = [
  {
    path: Routes.Home,
    component: HomeComponent,
  },
  {
    path: Routes.Home,
    // data: { animation: "home" },
    children: [
      {
        path: Routes.Rules,
        component: RulesComponent,
        // data: { animation: "rules" },
      },
      { path: Routes.Achievements, component: AchievementsComponent },
      { path: Routes.Players, component: PlayersComponent },
      { path: Routes.OfficialCocktails, component: OfficialCocktailsComponent },
      { path: Routes.Credits, component: CreditsComponent },
      { path: Routes.OtherGames, component: OtherGamesComponent },
    ],
  },
  { path: "", redirectTo: Routes.Home, pathMatch: "full" },
];

@NgModule({
  imports: [
    RouterModule.forRoot(ROUTES, {
      scrollPositionRestoration: "enabled", // or 'top'
      anchorScrolling: "enabled",
      scrollOffset: [0, 40], // [x, y] - adjust scroll offset
    }),
  ],
  exports: [RouterModule],
})
export class AppRoutingModule {}
