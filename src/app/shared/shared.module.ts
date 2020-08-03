import { CommonModule } from "@angular/common";
import { NgModule } from "@angular/core";
import { MaterialModule } from "../material.module";
import { SafeHtmlPipe } from "./pipes/safe-html.pipe";
import { NavBarComponent } from "./nav-bar/nav-bar.component";
import { PageTitleComponent } from "./page-title/page-title.component";

const SharedComponents = [PageTitleComponent, NavBarComponent, SafeHtmlPipe];

const SharedModules = [MaterialModule, CommonModule];

@NgModule({
  declarations: SharedComponents,
  imports: SharedModules,
  exports: SharedComponents,
})
export class SharedModule {}
