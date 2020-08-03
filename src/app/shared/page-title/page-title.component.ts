import { Component, Input } from "@angular/core";
import { ThemeService } from "src/app/services/theme.service";

@Component({
  selector: "app-page-title",
  template: `<h1 class="page-title" [style.color]="tService.getFontColor()">
    {{ title }}
  </h1>`,
  styles: [
    `
      .page-title {
        padding: 3vh 0 1.5vh 0;
        color: whitesmoke;
        font-size: 3.5vh;
        font-weight: bold;
        text-transform: uppercase;
      }
    `,
  ],
})
export class PageTitleComponent {
  @Input() title: string;

  constructor(public tService: ThemeService) {}
}
