import {
  AchievementsCategory,
  AchievementsContainer,
} from "../models/achievement";

export const ACHIEVEMENTS: AchievementsContainer[] = [
  {
    category: AchievementsCategory.Principali,
    achievements: [
      {
        id: 0,
        title: "<b>SEI FUORI</b>",
        description: "Arriva a tre penalità",
        nasScore: 0,
      },
      {
        id: 1,
        title: "<b>LA TUA PRIMA VOLTA</b>",
        description: "Completa il tuo primo Nasdarovia",
        nasScore: 5,
      },
      {
        id: 3,
        title: "<b>DISONORE</b>",
        description: "Prendi una penalità",
        nasScore: 5,
      },
    ],
  },
  {
    category: AchievementsCategory.Limited,
    achievements: [],
  },
  {
    category: AchievementsCategory.Segreti,
    achievements: [],
  },
];
