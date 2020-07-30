import { NgModule } from "@angular/core";
import { BrowserModule } from "@angular/platform-browser";
import { BrowserAnimationsModule } from "@angular/platform-browser/animations";
import { AppMaterialModule } from "./app-material.module";
import { AppRoutingModule } from "./app-routing.module";
import { AppComponent } from "./app.component";
import { AchievementsComponent } from "./pages/achievements/achievements.component";
import { CreditsComponent } from "./pages/credits/credits.component";
import { FooterComponent } from "./pages/footer/footer.component";
import { HomeComponent } from "./pages/home/home.component";
import { OfficialCocktailsComponent } from "./pages/official-cocktails/official-cocktails.component";
import { OtherGamesComponent } from "./pages/other-games/other-games.component";
import { PenalizedComponent } from "./pages/penalized/penalized.component";
import { RulesComponent } from "./pages/rules/rules.component";

@NgModule({
  declarations: [
    AppComponent,
    RulesComponent,
    HomeComponent,
    AchievementsComponent,
    PenalizedComponent,
    CreditsComponent,
    OtherGamesComponent,
    OfficialCocktailsComponent,
    FooterComponent,
  ],
  imports: [
    BrowserModule,
    AppRoutingModule,
    AppMaterialModule,
    BrowserAnimationsModule,
  ],
  providers: [],
  bootstrap: [AppComponent],
})
export class AppModule {}
