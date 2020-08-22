import { Pool } from 'pg';

export const pool = new Pool({
  user: 'postgres',
  host: 'localhost',
  password: 'postgres',
  database: 'nazdrovia',
  port: 5432,
});
