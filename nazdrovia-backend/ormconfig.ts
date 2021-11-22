import * as dotenv from 'dotenv';

dotenv.config({
    path: `.env`,
});

export = {
    type: 'postgres',
    host: process.env.PG_HOST,
    port: +process.env.PG_PORT,
    database: process.env.PG_DATABASE,
    username: process.env.PG_USER,
    password: process.env.PG_PASSWORD,
    entities: ['src/modules/**/*.entity{.ts,.js}'],
    migrations: ['src/migrations/*{.ts,.js}'],
};
