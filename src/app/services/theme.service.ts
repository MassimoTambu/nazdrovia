import { Injectable } from "@angular/core";
import { BehaviorSubject } from "rxjs";
import { THEMES } from "src/app/models/themes";
import { LocalStorageService } from "./local-storage.service";

@Injectable({ providedIn: "root" })
export class ThemeService {
  public themeSelected = new BehaviorSubject<string>(
    this.lStorageService.getItem(LocalStorageService.theme)
      ? this.lStorageService.getItem(LocalStorageService.theme)
      : THEMES[0].className
  );
  public previousTheme: string;

  constructor(private lStorageService: LocalStorageService) {}

  setTheme(theme: string) {
    this.previousTheme = this.themeSelected.value;

    this.themeSelected.next(theme);

    this.lStorageService.setItem(
      LocalStorageService.theme,
      this.themeSelected.value
    );
  }

  getThemeClassName(): string {
    for (const key in THEMES) {
      if (THEMES.hasOwnProperty(key)) {
        const t = THEMES[key];
        if (t.className === this.themeSelected.value) {
          return t.className;
        }
      }
    }
  }

  getThemePColor(): string {
    for (const key in THEMES) {
      if (THEMES.hasOwnProperty(key)) {
        const t = THEMES[key];
        if (t.className === this.themeSelected.value) {
          return t.primary.primaryColor;
        }
      }
    }
  }

  getThemeAColor(): string {
    for (const key in THEMES) {
      if (THEMES.hasOwnProperty(key)) {
        const t = THEMES[key];
        if (t.className === this.themeSelected.value) {
          return t.accent.primaryColor;
        }
      }
    }
  }

  getThemeWarnColor(): string {
    for (const key in THEMES) {
      if (THEMES.hasOwnProperty(key)) {
        const t = THEMES[key];
        if (t.className === this.themeSelected.value) {
          return t.warn.primaryColor;
        }
      }
    }
  }

  getThemeForegroundColor(): string {
    for (const key in THEMES) {
      if (THEMES.hasOwnProperty(key)) {
        const t = THEMES[key];
        if (t.className === this.themeSelected.value) {
          return t.foreground;
        }
      }
    }
  }

  getThemeBackgroundColor(): string {
    for (const key in THEMES) {
      if (THEMES.hasOwnProperty(key)) {
        const t = THEMES[key];
        if (t.className === this.themeSelected.value) {
          return t.background;
        }
      }
    }
  }

  getFontColor(): string {
    for (const key in THEMES) {
      if (THEMES.hasOwnProperty(key)) {
        const t = THEMES[key];
        if (t.className === this.themeSelected.value) {
          return t.fontColor;
        }
      }
    }
  }
}
