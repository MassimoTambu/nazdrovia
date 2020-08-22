import { Request, Response } from 'express';
import { QueryResult } from 'pg';
import { pool } from '../database';
import { Player, PlayersAchievementsRef } from '../models/player';
import { PlayersAchievementsRefTable } from '../models/tables/players-achievements-ref.table';
import { PlayersTable } from '../models/tables/players.table';

export const getPlayers = async (req: Request, res: Response) => {
  const response: QueryResult<Player> = await pool.query(
    ` SELECT * FROM ${PlayersTable.tableName} `
  );

  res.send(response.rows);
};

export const getPlayersWithAchievements = async (
  req: Request,
  res: Response
) => {
  const pResponse: QueryResult<Player> = await pool.query(
    ` SELECT * FROM ${PlayersTable.tableName} `
  );
  const paResponse: QueryResult<PlayersAchievementsRef> = await pool.query(
    `
    SELECT * FROM ${PlayersAchievementsRefTable.tableName}
    `
  );
  pResponse.rows.forEach((p) => {
    p.achievementsId = [];
    p.achievementsId.push(
      ...paResponse.rows
        .filter((pa) => pa.playerId === p.id)
        .map((pa) => pa.achievementId)
    );
  });

  res.send(pResponse.rows);
};
