import { NgModule } from "@angular/core";
import { BrowserModule } from "@angular/platform-browser";
import { BrowserAnimationsModule } from "@angular/platform-browser/animations";
import { AppComponent } from "./app.component";
import { AppMaterialModule } from "./app.material.module";
import { AppRoutingModule } from "./app.routing.module";
import { AchievementsComponent } from "./pages/achievements/achievements.component";
import { CreditsComponent } from "./pages/credits/credits.component";
import { FooterComponent } from "./pages/footer/footer.component";
import { HomeComponent } from "./pages/home/home.component";
import { OfficialCocktailsComponent } from "./pages/official-cocktails/official-cocktails.component";
import { OtherGamesComponent } from "./pages/other-games/other-games.component";
import { PlayerComponent } from "./pages/players/player/player.component";
import { PlayersComponent } from "./pages/players/players.component";
import { RulesComponent } from "./pages/rules/rules.component";
import { SharedModule } from "./shared/shared.module";

@NgModule({
  declarations: [
    AppComponent,
    RulesComponent,
    HomeComponent,
    AchievementsComponent,
    PlayersComponent,
    PlayerComponent,
    CreditsComponent,
    OtherGamesComponent,
    OfficialCocktailsComponent,
    FooterComponent,
  ],
  imports: [
    BrowserModule,
    AppRoutingModule,
    AppMaterialModule,
    SharedModule,
    BrowserAnimationsModule,
  ],
  providers: [],
  bootstrap: [AppComponent],
})
export class AppModule {}
