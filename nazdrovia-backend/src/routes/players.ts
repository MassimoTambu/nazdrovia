import cors from 'cors';
import express from 'express';
import {
  getPlayers,
  getPlayersWithAchievements,
} from '../controllers/players.controller';
import { Consts } from '../models/consts';

export const RouterPlayers = express.Router();

RouterPlayers.use(cors());

RouterPlayers.get('/', getPlayers);
RouterPlayers.get(Consts.PLAYERS_W_ACHIEVEMENTS, getPlayersWithAchievements);
