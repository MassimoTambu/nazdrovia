export interface Player {
  id: number;
  name: string;
  lastName: string;
  catchPhrase: string;
  penalities: number;
  isOut: boolean;
  image?: string;
  achievementsId?: number[];
  nasScore?: number;
}

export interface PlayersAchievementsRef {
  id: number;
  achievementId: number;
  playerId: number;
}
