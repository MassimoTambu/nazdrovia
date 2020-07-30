import { NgModule } from "@angular/core";
import { RouterModule, Route } from "@angular/router";
import { AchievementsComponent } from "./pages/achievements/achievements.component";
import { CreditsComponent } from "./pages/credits/credits.component";
import { HomeComponent } from "./pages/home/home.component";
import { OfficialCocktailsComponent } from "./pages/official-cocktails/official-cocktails.component";
import { OtherGamesComponent } from "./pages/other-games/other-games.component";
import { PenalizedComponent } from "./pages/penalized/penalized.component";
import { RulesComponent } from "./pages/rules/rules.component";
import { Routes } from "./models/routes";

const ROUTES: Route[] = [
  {
    path: Routes.Home,
    component: HomeComponent,
    data: { animation: "home" },
  },
  {
    path: Routes.Rules,
    component: RulesComponent,
    data: { animation: "rules" },
  },
  { path: Routes.Achievements, component: AchievementsComponent },
  { path: Routes.Penalized, component: PenalizedComponent },
  { path: Routes.OfficialCocktails, component: OfficialCocktailsComponent },
  { path: Routes.Credits, component: CreditsComponent },
  { path: Routes.OtherGames, component: OtherGamesComponent },
  { path: "", redirectTo: Routes.Home, pathMatch: "full" },
];

@NgModule({
  imports: [RouterModule.forRoot(ROUTES)],
  exports: [RouterModule],
})
export class AppRoutingModule {}
