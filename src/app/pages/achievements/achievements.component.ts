import { Component } from "@angular/core";
import { ACHIEVEMENTS } from "src/app/data/achievements";
import { AchievementsCategory } from "src/app/shared/models/achievement";
import { pages } from "src/app/shared/models/pages";
import { Routes } from "src/app/shared/models/routes";
import { ThemeService } from "src/app/shared/services/theme.service";

@Component({
  selector: "app-achievements",
  templateUrl: "./achievements.component.html",
  styleUrls: ["./achievements.component.scss"],
})
export class AchievementsComponent {
  constructor(public tService: ThemeService) {}

  pageRoute = Routes.Achievements;
  pageTitle = pages.find((r) => r.route === this.pageRoute).title;

  allAchievements = ACHIEVEMENTS;
  achievementsCategories: string[] = [
    AchievementsCategory.Principali,
    AchievementsCategory.Limited,
    AchievementsCategory.Segreti,
  ];
  achievementsRoutes = [Routes.Home, Routes.Achievements];
}
