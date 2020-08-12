import { OverlayContainer } from "@angular/cdk/overlay";
import {
  AfterViewInit,
  Component,
  ElementRef,
  HostBinding,
  OnDestroy,
  OnInit,
} from "@angular/core";
import { Router, RouterOutlet } from "@angular/router";
import { Subscription } from "rxjs";
import { ThemeService } from "src/app/shared/services/theme.service";
import { Animation } from "./animations";

@Component({
  selector: "app-root",
  templateUrl: "./app.component.html",
  styleUrls: ["./app.component.scss"],
  animations: [Animation],
})
export class AppComponent implements OnInit, AfterViewInit, OnDestroy {
  @HostBinding("class") componentCssClass: string;
  private subs = new Subscription();

  constructor(
    public router: Router,
    private elementRef: ElementRef,
    public tService: ThemeService,
    public overlayContainer: OverlayContainer
  ) {}

  ngOnInit() {
    this.subs.add(
      this.tService.themeSelected.subscribe((t) => this.onSetTheme(t))
    );
  }

  ngAfterViewInit() {
    this.setBackgroundColor();
  }

  ngOnDestroy() {
    this.subs.unsubscribe();
  }

  prepareRoute(outlet: RouterOutlet) {
    return (
      outlet && outlet.activatedRouteData && outlet.activatedRouteData.animation
    );
  }

  onSetTheme(theme: string) {
    this.overlayContainer
      .getContainerElement()
      .classList.remove(this.tService.previousTheme);
    this.overlayContainer.getContainerElement().classList.add(theme);
    this.componentCssClass = theme;
    this.setBackgroundColor();
  }

  setBackgroundColor(): void {
    this.elementRef.nativeElement.ownerDocument.body.style.backgroundColor = this.tService.getThemeBackgroundColor();
  }
}
