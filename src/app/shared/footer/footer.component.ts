import { Component, OnInit } from "@angular/core";
import { ThemeService } from "src/app/services/theme.service";

@Component({
  selector: "app-footer",
  template: `
    <div class="footer-container">
      <div
        [style.backgroundColor]="tService.getThemeForegroundColor()"
        class="footer"
      ></div>
    </div>
  `,
  styles: [
    `
      .footer-container {
        padding-top: 2vh;
        flex-shrink: 0;
      }
      .footer {
        width: 100%;
        height: 200px;
      }
    `,
  ],
})
export class FooterComponent implements OnInit {
  constructor(public tService: ThemeService) {}

  ngOnInit(): void {}
}
