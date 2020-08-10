import {
  animate,
  state,
  style,
  transition,
  trigger,
} from "@angular/animations";
import {
  Component,
  Directive,
  ElementRef,
  Input,
  OnDestroy,
  OnInit,
  ViewChild,
} from "@angular/core";
import { MatPaginator, PageEvent } from "@angular/material/paginator";
import { MatSort } from "@angular/material/sort";
import { MatTableDataSource } from "@angular/material/table";
import { Subscription } from "rxjs";
import { ThemeService } from "src/app/services/theme.service";
import { Player } from "src/app/models/player";

@Component({
  selector: "app-universal-table",
  templateUrl: "./universal-table.component.html",
  styleUrls: ["./universal-table.component.scss"],
  animations: [
    trigger("detailExpand", [
      state("collapsed, void", style({ height: "0px", minHeight: "0" })),
      state("expanded", style({ height: "*" })),
      transition(
        "expanded <=> collapsed",
        animate("225ms cubic-bezier(0.4, 0.0, 0.2, 1)")
      ),
      transition(
        "expanded <=> void",
        animate("225ms cubic-bezier(0.4, 0.0, 0.2, 1)")
      ),
    ]),
  ],
})
export class UniversalTableComponent implements OnInit, OnDestroy {
  @Input() players: Player[];
  @Input() displayedHeaderColumns: string[];
  @Input() displayedColumns: string[];
  @ViewChild(MatSort, { static: true }) sort: MatSort;
  @ViewChild(MatPaginator, { static: true }) paginatorU: MatPaginator;

  dataSource: MatTableDataSource<any>;
  expandedElement: any | null;

  accentColor: string;
  private subs = new Subscription();

  constructor(public tService: ThemeService) {}

  ngOnInit() {
    this.subs.add(
      this.tService.themeSelected.subscribe(() => {
        this.accentColor = this.tService.getThemeAColor();
      })
    );
    if (this.players) {
      this.dataSource = new MatTableDataSource(this.players);
      this.loadDataSourceOptions();
    }
  }

  ngOnDestroy() {
    this.subs.unsubscribe();
  }

  loadDataSourceOptions(): void {
    this.dataSource.sort = this.sort;
    this.dataSource.paginator = this.paginatorU;
  }

  syncPrimaryPaginator(event: PageEvent): void {
    this.paginatorU.pageIndex = event.pageIndex;
    this.paginatorU.pageSize = event.pageSize;
    this.paginatorU.page.emit(event);
  }

  applyFilter(event: Event): void {
    const filterValue = (event.target as HTMLInputElement).value;
    this.dataSource.filter = filterValue.trim().toLowerCase();
  }
}
