export interface Achievement {
  id: number;
  title: string;
  category: AchievementsCategory;
  description: string;
  nasScore: number;
}

export class AchievementsCategory {
  static readonly Principali = "principali";
  static readonly Limited = "limited";
  static readonly Segreti = "segreti";
}
