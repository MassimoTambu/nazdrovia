import { Component, Input } from "@angular/core";
import { ThemeService } from "src/app/services/theme.service";

@Component({
  selector: "app-category-title",
  template: `
    <div class="category" [style.color]="tService.getFontColor()">
      <span
        [id]="categoryTitle"
        [style.backgroundColor]="tService.getThemeWarnColor()"
        class="category-title"
        >{{ categoryTitle }}</span
      >
      <span
        [style.backgroundColor]="tService.getThemeWarnColor()"
        class="category-title-background-extension"
      ></span>
      <span
        [style.backgroundColor]="tService.getThemeWarnColor()"
        class="category-title-circle"
      ></span>
    </div>
  `,
  styles: [
    `
      .category {
        display: flex;
      }
      .category-title {
        padding: 15px 10px;
        border-radius: 15px 0 0 15px;
        font-size: 3vh;
      }
      .category-title-background-extension {
        width: 4vw;
        border-radius: 0 20px 40px 0;
      }
      .category-title-circle {
        width: 15px;
        height: 10px;
        border-radius: 25px;
        margin-left: 5px;
      }
    `,
  ],
})
export class CategoryTitleComponent {
  constructor(public tService: ThemeService) {}

  @Input() categoryTitle: string;
}
