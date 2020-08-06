export interface AchievementsContainer {
  category: AchievementsCategory;
  achievements: Achievement[];
}

export interface Achievement {
  id: number;
  title: string;
  description: string;
  nasScore: number;
  icon?: string;
}

export class AchievementsCategory {
  static readonly Principali = "Principali";
  static readonly Limited = "Limited";
  static readonly Segreti = "Segreti";
}
