import { Routes } from "./routes";

export interface Pages {
  title: string;
  route: Routes;
}

export const pages: Pages[] = [
  { title: "Regole", route: Routes.Rules },
  { title: "Obbiettivi", route: Routes.Achievements },
  { title: "Giocatori", route: Routes.Players },
  { title: "Cocktails Ufficiali", route: Routes.OfficialCocktails },
  { title: "Crediti", route: Routes.Credits },
  { title: "Altri giochi", route: Routes.OtherGames },
];