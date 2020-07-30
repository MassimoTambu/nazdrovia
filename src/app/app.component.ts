import { Component } from "@angular/core";
import { Router, RouterOutlet } from "@angular/router";
import { Animation } from "./animations";

@Component({
  selector: "app-root",
  templateUrl: "./app.component.html",
  styleUrls: ["./app.component.scss"],
  animations: [Animation],
})
export class AppComponent {
  title = "Nazdrovia";

  constructor(public router: Router) {}

  prepareRoute(outlet: RouterOutlet) {
    return (
      outlet && outlet.activatedRouteData && outlet.activatedRouteData.animation
    );
  }
}
