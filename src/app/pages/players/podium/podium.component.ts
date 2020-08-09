import { Component, Input } from "@angular/core";
import { Player } from "src/app/models/player";
import { ThemeService } from "src/app/services/theme.service";

@Component({
  selector: "app-podium",
  templateUrl: "./podium.component.html",
  styleUrls: ["./podium.component.scss"],
})
export class PodiumComponent {
  constructor(public tService: ThemeService) {}

  @Input() players: Player[];
}
