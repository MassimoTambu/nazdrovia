import { Component, ViewEncapsulation } from "@angular/core";
import { rules } from "src/app/data/rules";
import { RuleType, Rule } from "src/app/models/rule";
import { pages } from "src/app/models/pages";
import { Routes } from "src/app/models/routes";

@Component({
  selector: "app-rules",
  templateUrl: "./rules.component.html",
  styleUrls: ["./rules.component.scss"],
  encapsulation: ViewEncapsulation.None,
})
export class RulesComponent {
  pageTitle = pages.find((r) => r.route === Routes.Rules).title;

  mainRules = rules.filter((r) => r.type === RuleType.Principali);

  generateInnerHTML(rule: Rule): string {
    const title =
      rule.title !== undefined
        ? `<div class="rule-title">${rule.title}</div>`
        : "";
    const ruleNumber = `<div class="rule-number">${rule.number}.</div>`;
    const desc = `<div class="rule-desc">${rule.description}</div>`;
    return title + ruleNumber + desc;
  }
}
