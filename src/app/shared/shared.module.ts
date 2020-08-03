import { CommonModule } from "@angular/common";
import { NgModule } from "@angular/core";
import { MaterialModule } from "../material.module";
import { NavBarComponent } from "./nav-bar/nav-bar.component";
import { PageTitleComponent } from "./page-title/page-title.component";

const SharedComponents = [PageTitleComponent, NavBarComponent];

const SharedModules = [MaterialModule, CommonModule];

@NgModule({
  declarations: SharedComponents,
  imports: SharedModules,
  exports: SharedComponents,
})
export class SharedModule {}
