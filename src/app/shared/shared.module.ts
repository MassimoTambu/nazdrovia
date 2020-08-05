import { CommonModule } from "@angular/common";
import { NgModule } from "@angular/core";
import { AppRoutingModule } from "../app.routing.module";
import { MaterialModule } from "../material.module";
import { FooterComponent } from "./footer/footer.component";
import { PageAnchorListComponent } from "./page-anchor-list/page-anchor-list.component";
import { PageTitleComponent } from "./page-title/page-title.component";
import { SafeHtmlPipe } from "./pipes/safe-html.pipe";

const SharedComponents = [
  PageTitleComponent,
  PageAnchorListComponent,
  FooterComponent,
  SafeHtmlPipe,
];

const SharedModules = [MaterialModule, CommonModule, AppRoutingModule];

@NgModule({
  declarations: SharedComponents,
  imports: SharedModules,
  exports: SharedComponents,
})
export class SharedModule {}
