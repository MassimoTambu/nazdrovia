import { Component } from "@angular/core";
import { THEMES } from "src/app/models/themes";
import { ThemeService } from "src/app/services/theme.service";

@Component({
  selector: "app-nav-bar",
  templateUrl: "./nav-bar.component.html",
  styleUrls: ["./nav-bar.component.scss"],
})
export class NavBarComponent {
  themes = THEMES;

  constructor(private tService: ThemeService) {}
  onSelectTheme(theme: string) {
    this.tService.setTheme(theme);
  }
}
