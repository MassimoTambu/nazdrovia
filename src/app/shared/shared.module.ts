import { NgModule } from "@angular/core";

import { PageTitleComponent } from "./page-title/page-title.component";

const SharedComponents = [PageTitleComponent];

@NgModule({
  declarations: SharedComponents,
  exports: SharedComponents,
})
export class SharedModule {}
