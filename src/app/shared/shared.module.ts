import { CommonModule } from "@angular/common";
import { NgModule } from "@angular/core";
import { AppRoutingModule } from "../app.routing.module";
import { MaterialModule } from "../material.module";
import { CategoryTitleComponent } from "./category-title/category-title.component";
import { FooterComponent } from "./footer/footer.component";
import { PageAnchorListComponent } from "./page-anchor-list/page-anchor-list.component";
import { PageTitleComponent } from "./page-title/page-title.component";
import { SafeHtmlPipe } from "./pipes/safe-html.pipe";
import { UniversalTableComponent } from "./universal-table/universal-table.component";

const SharedComponents = [
  PageTitleComponent,
  PageAnchorListComponent,
  CategoryTitleComponent,
  FooterComponent,
  UniversalTableComponent,
  SafeHtmlPipe,
];

const SharedModules = [MaterialModule, CommonModule, AppRoutingModule];

@NgModule({
  declarations: SharedComponents,
  imports: SharedModules,
  exports: SharedComponents,
})
export class SharedModule {}
