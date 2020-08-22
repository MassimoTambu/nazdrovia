import cors from 'cors';
import express from 'express';
import {
  getAchievements,
  getAchievementsWithCategories,
} from '../controllers/achievements.controller';
import { Consts } from '../models/consts';

export const RouterAchievements = express.Router();

RouterAchievements.use(cors());

RouterAchievements.get('/', getAchievements);
RouterAchievements.get(
  Consts.ACHIEVEMENTS_W_CATEGORIES,
  getAchievementsWithCategories
);
