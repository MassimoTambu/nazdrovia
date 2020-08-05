import { Component, OnDestroy, OnInit, ViewEncapsulation } from "@angular/core";
import { Subscription } from "rxjs";
import { rules } from "src/app/data/rules";
import { pages } from "src/app/models/pages";
import { Routes } from "src/app/models/routes";
import { Rule, RulesContainer, RulesCategory } from "src/app/models/rule";
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
  cssNumberBackgroundColor: string;
  cssCategoryFGColor: string;

  pageRoute = Routes.Rules;
  pageTitle = pages.find((r) => r.route === this.pageRoute).title;

  allRules: RulesContainer[] = rules;
  rulesCategories: string[] = [
    RulesCategory.Bevuta,
    RulesCategory.Extra,
    RulesCategory.Penalità,
    RulesCategory.Principali,
    RulesCategory.Sacrificio,
  ];

  rulePageIntro = `Le regole sono state scritte in vari momenti mentre eravamo in gatta, se sono presenti errori di calligrafia o di altro genere <span class="rule-page-intro-bold">non rompete il cazzo</span>.`;
  rulePageBetaAdvisor =
    "* Le regole in Beta non sono valide nella versione ufficiale.";

  ngOnInit() {
    this.subs.add(
      this.tService.themeSelected.subscribe((t) => {
        this.cssColor = this.tService.getFontColor();
        this.cssCategoryFGColor = this.tService.getThemeWarnColor();
        const PColor = this.tService.getThemePColor();
        const AColor = this.tService.getThemeAColor();
        const shadowSize = "25px 25px 0px 0px";
        this.cssBoxShadow = ` ${shadowSize} ${PColor}`;
        this.cssNumberBackgroundColor = AColor;
      })
    );
  }

  ngOnDestroy() {
    this.subs.unsubscribe();
  }

  generateInnerHTML(rule: Rule): any {
    const ruleNumber =
      rule.number !== undefined
        ? `<span class="rule-number" style="background-color: ${
            this.cssNumberBackgroundColor
          }">${rule.number}${
            +rule.number || rule.number === "0" ? "." : ""
          }</span>`
        : "";
    const title =
      rule.title !== undefined
        ? `<span class="rule-title">${rule.title}</span>`
        : "";
    const header = `<div class="rule-head">${ruleNumber}${title}</div>`;
    const desc = `<div class="rule-desc">${rule.description}</div>`;
    return header + desc;
  }
}
