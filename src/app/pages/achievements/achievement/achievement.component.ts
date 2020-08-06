import { Component, Input, OnInit } from "@angular/core";
import { Achievement } from "src/app/models/achievement";
import { ThemeService } from "src/app/services/theme.service";

@Component({
  selector: "app-achievement",
  templateUrl: "./achievement.component.html",
  styleUrls: ["./achievement.component.scss"],
})
export class AchievementComponent implements OnInit {
  constructor(public tService: ThemeService) {}

  @Input() achievement: Achievement;

  ngOnInit(): void {}
}
