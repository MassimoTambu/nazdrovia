import { Component, OnInit } from "@angular/core";
import { pages } from "src/app/models/pages";
import { Routes } from "src/app/models/routes";
import { ThemeService } from "src/app/services/theme.service";

@Component({
  selector: "app-achievements",
  templateUrl: "./achievements.component.html",
  styleUrls: ["./achievements.component.scss"],
})
export class AchievementsComponent implements OnInit {
  constructor(public tService: ThemeService) {}

  pageRoute = Routes.Achievements;
  pageTitle = pages.find((r) => r.route === this.pageRoute).title;

  ngOnInit(): void {}
}
