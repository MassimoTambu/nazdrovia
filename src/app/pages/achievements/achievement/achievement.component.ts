import { Component, Input } from "@angular/core";
import { Achievement } from "src/app/shared/models/achievement";
import { ThemeService } from "src/app/shared/services/theme.service";

@Component({
  selector: "app-achievement",
  templateUrl: "./achievement.component.html",
  styleUrls: ["./achievement.component.scss"],
})
export class AchievementComponent {
  constructor(public tService: ThemeService) {}

  @Input() achievement: Achievement;
}
