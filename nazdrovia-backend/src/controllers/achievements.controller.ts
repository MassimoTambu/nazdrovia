import { Request, Response } from 'express';
import { QueryResult } from 'pg';
import { pool } from '../database';
import {
  Achievement,
  AchievementsCategory,
  AchievementsContainer,
} from '../models/achievement';
import { AchievementsCategoryTable } from '../models/tables/achievements-category.table';
import { AchievementsTable } from '../models/tables/achievements.table';

export const getAchievements = async (req: Request, res: Response) => {
  const response: QueryResult<Achievement> = await pool.query(
    ` SELECT * FROM ${AchievementsTable.tableName} `
  );

  res.send(response.rows);
};

export const getAchievementsWithCategories = async (
  req: Request,
  res: Response
) => {
  const aResponse: QueryResult<Achievement> = await pool.query(
    ` SELECT * FROM ${AchievementsTable.tableName} `
  );

  const acResponse: QueryResult<AchievementsCategory> = await pool.query(
    `
        SELECT * FROM ${AchievementsCategoryTable.tableName}
        `
  );
  const achievementsContainer: AchievementsContainer[] = [];

  acResponse.rows.forEach((ac) =>
    achievementsContainer.push({
      category: ac.category,
      achievements: aResponse.rows.filter((a) => a.categoryId === ac.id),
    })
  );

  res.send(achievementsContainer);
};
