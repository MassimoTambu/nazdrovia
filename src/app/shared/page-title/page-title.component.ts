import { Component, OnInit, Input } from "@angular/core";

@Component({
  selector: "app-page-title",
  template: `<h1 class="page-title">{{ title }}</h1>`,
  styles: [
    `
      .page-title {
        padding: 3vh 0 1.5vh 0;
        color: whitesmoke;
        font-weight: bold;
        text-transform: uppercase;
      }
    `,
  ],
})
export class PageTitleComponent implements OnInit {
  @Input() title: string;

  ngOnInit(): void {}
}
