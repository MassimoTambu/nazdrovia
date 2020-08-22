import { Component, Input } from "@angular/core";
import { ThemeService } from "src/app/shared/services/theme.service";
import { Player } from "../../../../../../shared/models/player";

@Component({
  selector: "app-podium",
  templateUrl: "./podium.component.html",
  styleUrls: ["./podium.component.scss"],
})
export class PodiumComponent {
  constructor(public tService: ThemeService) {}

  @Input() players: Player[];
}
