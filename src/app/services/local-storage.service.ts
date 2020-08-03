import { Injectable } from "@angular/core";

@Injectable({ providedIn: "root" })
export class LocalStorageService {
  public static theme = "userTheme";
  public static lovedRules = "lovedRules";

  constructor() {}

  getItem(key: string): string {
    return localStorage.getItem(key);
  }

  setItem(key: string, value: string): void {
    localStorage.setItem(key, value);
  }

  removeItem(key: string): void {
    localStorage.removeItem(key);
  }
}
