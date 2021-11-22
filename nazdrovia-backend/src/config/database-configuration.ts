import { registerAs } from '@nestjs/config';
import { DatabaseConfiguration } from 'src/shared/interfaces/database-configuration.interface';

export default registerAs(
    'database',
    () =>
        <DatabaseConfiguration>{
            host: process.env.PG_HOST,
            database: process.env.PG_DATABASE,
            port: +process.env.PG_PORT,
            user: process.env.PG_USER,
            password: process.env.PG_PASSWORD,
        },
);
