import { Component, OnInit } from "@angular/core";
import { Pages } from "../../models/pages";

@Component({
  selector: "app-home",
  templateUrl: "./home.component.html",
  styleUrls: ["./home.component.scss"],
})
export class HomeComponent implements OnInit {
  pages: Pages[] = [
    { title: "Regole" },
    { title: "Obbiettivi" },
    { title: "Penalizzati" },
    { title: "Cocktails Ufficiali" },
    { title: "Crediti" },
    { title: "Altri giochi" },
  ];

  gridCols: number;
  gridRowHeight: string;

  ngOnInit(): void {
    this.styleGrid();
  }

  public styleGrid(): void {
    if (window.screen.width <= 800) {
      this.gridCols = 1;
      this.gridRowHeight = "100px";
    } else {
      this.gridCols = 2;
      this.gridRowHeight = `${(window.screen.height * 20) / 100}px`;
    }
  }
}
