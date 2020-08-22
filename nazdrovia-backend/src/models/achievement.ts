export interface AchievementsContainer {
  category: string;
  achievements: Achievement[];
}

export interface Achievement {
  id: number;
  title: string;
  description: string;
  nasScore: number;
  categoryId: number;
  icon?: string;
}

export interface AchievementsCategory {
  id: number;
  category: string;
}
