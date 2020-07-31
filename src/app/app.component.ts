import { Component, AfterViewInit, ElementRef } from "@angular/core";
import { Router, RouterOutlet } from "@angular/router";
import { Animation } from "./animations";

@Component({
  selector: "app-root",
  templateUrl: "./app.component.html",
  styleUrls: ["./app.component.scss"],
  animations: [Animation],
})
export class AppComponent implements AfterViewInit {
  title = "Nazdrovia";

  constructor(public router: Router, private elementRef: ElementRef) {}

  prepareRoute(outlet: RouterOutlet) {
    return (
      outlet && outlet.activatedRouteData && outlet.activatedRouteData.animation
    );
  }

  ngAfterViewInit() {
    this.elementRef.nativeElement.ownerDocument.body.style.backgroundColor = "black";
  }
}
