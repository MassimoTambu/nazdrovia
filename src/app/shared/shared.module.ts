import { CommonModule } from "@angular/common";
import { NgModule } from "@angular/core";
import { AppRoutingModule } from "../app.routing.module";
import { MaterialModule } from "../material.module";
import { CategoryTitleComponent } from "./components/category-title/category-title.component";
import { FooterComponent } from "./components/footer/footer.component";
import { PageAnchorListComponent } from "./components/page-anchor-list/page-anchor-list.component";
import { PageTitleComponent } from "./components/page-title/page-title.component";
import { UniversalTableComponent } from "./components/universal-table/universal-table.component";
import { SafeHtmlPipe } from "./pipes/safe-html.pipe";

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
