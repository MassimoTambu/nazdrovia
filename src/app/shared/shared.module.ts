import { CommonModule } from "@angular/common";
import { NgModule } from "@angular/core";
import { MaterialModule } from "../material.module";
import { PageTitleComponent } from "./page-title/page-title.component";
import { SafeHtmlPipe } from "./pipes/safe-html.pipe";
import { AppRoutingModule } from "../app.routing.module";

const SharedComponents = [PageTitleComponent, SafeHtmlPipe];

const SharedModules = [MaterialModule, CommonModule, AppRoutingModule];

@NgModule({
  declarations: SharedComponents,
  imports: SharedModules,
  exports: SharedComponents,
})
export class SharedModule {}
