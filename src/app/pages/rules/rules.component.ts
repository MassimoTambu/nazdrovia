import { Component, OnDestroy, OnInit, ViewEncapsulation } from "@angular/core";
import { Subscription } from "rxjs";
import { rules } from "src/app/data/rules";
import { pages } from "src/app/models/pages";
import { Routes } from "src/app/models/routes";
import { Rule, RulesContainer } from "src/app/models/rule";
import { ThemeService } from "src/app/services/theme.service";

@Component({
  selector: "app-rules",
  templateUrl: "./rules.component.html",
  styleUrls: ["./rules.component.scss"],
  encapsulation: ViewEncapsulation.None,
})
export class RulesComponent implements OnInit, OnDestroy {
  constructor(private tService: ThemeService) {}

  private subs = new Subscription();

  cssBoxShadow: string;
  cssColor: string;

  pageTitle = pages.find((r) => r.route === Routes.Rules).title;

  allRules: RulesContainer[] = rules;

  ruleBetaAdvisor =
    "* Le regole in beta non sono valide nella versione ufficiale.";

  ngOnInit() {
    this.subs.add(
      this.tService.themeSelected.subscribe((t) => {
        this.cssColor = this.tService.getFontColor();

        const color = this.tService.getThemePColor();
        const shadowSize = "25px 25px 0px 0px";
        this.cssBoxShadow = ` ${shadowSize} ${color}`;
      })
    );
  }

  ngOnDestroy() {
    this.subs.unsubscribe();
  }

  generateInnerHTML(rule: Rule): string {
    const title =
      rule.title !== undefined
        ? `<div class="rule-title">${rule.title}</div>`
        : "";
    const ruleNumber =
      rule.number !== undefined
        ? `<div class="rule-number">${rule.number}${
            +rule.number || rule.number === "0" ? "." : ""
          }</div>`
        : "";
    const desc = `<div class="rule-desc">${rule.description}</div>`;
    return title + ruleNumber + desc;
  }
}
