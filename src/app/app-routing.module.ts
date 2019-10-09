import { NgModule } from '@angular/core';
import { Routes, RouterModule } from '@angular/router';

import { IntroComponent } from './intro/intro.component';
import { RulesComponent } from './rules/rules.component';
import { HistoryComponent } from './history/history.component';

const routes: Routes = [
  { path: 'intro', component: IntroComponent, data: { animation: 'intro' } },
  { path: 'rules', component: RulesComponent, data: { animation: 'rules' } },
  {
    path: 'history',
    component: HistoryComponent,
    data: { animation: 'History' }
  },
  { path: '', redirectTo: 'intro', pathMatch: 'full' }
];

@NgModule({
  imports: [RouterModule.forRoot(routes)],
  exports: [RouterModule]
})
export class AppRoutingModule {}
