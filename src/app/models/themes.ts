export interface IThemeColor {
  primaryColor: string;
  firstShade?: string;
  secondShade?: string;
}

export interface ITheme {
  name: string;
  className: string;
  primary: IThemeColor;
  accent: IThemeColor;
  warn?: IThemeColor;
  foreground: string;
  background: string;
  fontColor: string;
}

export const THEMES: ITheme[] = [
  {
    name: "Light Theme",
    className: "light-theme",
    primary: {
      primaryColor: "#1976d2",
      firstShade: "#42a5f5",
      secondShade: "#1565c0",
    },
    accent: {
      primaryColor: "#29b6f6",
      firstShade: "#81d4fa",
      secondShade: "#039be5",
    },
    warn: { primaryColor: "#ff3d00" },
    foreground: "#ffffff",
    background: "#e9ebee",
    fontColor: "#212121",
  },
  {
    name: "Dark Theme",
    className: "dark-theme",
    primary: {
      primaryColor: "#ba68c8",
      firstShade: "#ce93d8",
      secondShade: "#ab47bc",
    },
    accent: {
      primaryColor: "#fdd835",
      firstShade: "#fff176",
      secondShade: "#ffd600",
    },
    warn: {
      primaryColor: "#E91E63",
    },
    foreground: "#424242",
    background: "#121212",
    fontColor: "#ffffff",
  },
];
