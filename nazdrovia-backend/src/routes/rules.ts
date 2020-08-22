import cors from 'cors';
import express from 'express';
import { getRules } from '../controllers/rules.controller';

export const RouterRules = express.Router();

RouterRules.use(cors());

RouterRules.get('/', getRules);
