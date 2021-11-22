import { Injectable } from '@nestjs/common';
import { ConfigService } from '@nestjs/config';
import { TypeOrmModuleOptions } from '@nestjs/typeorm';
import { DatabaseConfiguration } from 'src/shared/interfaces/database-configuration.interface';
import * as winston from 'winston';
import DailyRotateFile from 'winston-daily-rotate-file';

import { NodeEnvs } from '../enums/node-envs';
import { AppConfiguration } from '../interfaces/app-configuration.interface';
import { SwaggerConfiguration } from '../interfaces/swagger-configuration.interface';

@Injectable()
export class LoaderService {
    constructor(private configService: ConfigService) {}

    get typeOrmOptions(): TypeOrmModuleOptions {
        const databaseSettings =
            this.configService.get<DatabaseConfiguration>('database');

        const entities = [__dirname + '/../../modules/**/*.entity{.ts,.js}'];
        const migrations = [__dirname + '/../../migrations/*{.ts,.js}'];

        return {
            type: 'postgres',
            host: databaseSettings.host,
            port: databaseSettings.port,
            database: databaseSettings.database,
            password: databaseSettings.password,
            username: databaseSettings.user,
            entities,
            migrations,
        };
    }

    get appConfig(): AppConfiguration {
        return this.configService.get<AppConfiguration>('app');
    }

    get nodeEnv(): NodeEnvs {
        return this.configService.get<AppConfiguration>('app').nodeEnv;
    }

    get swaggerConfig(): SwaggerConfiguration {
        return this.configService.get<SwaggerConfiguration>('swagger');
    }

    get winstonConfig(): winston.LoggerOptions {
        return {
            transports: [
                new DailyRotateFile({
                    level: 'debug',
                    filename: `./logs/${this.nodeEnv}/debug-%DATE%.log`,
                    datePattern: 'YYYY-MM-DD',
                    zippedArchive: true,
                    maxSize: '20m',
                    maxFiles: '14d',
                    format: winston.format.combine(
                        winston.format.timestamp(),
                        winston.format.json(),
                    ),
                }),
                new DailyRotateFile({
                    level: 'error',
                    filename: `./logs/${this.nodeEnv}/error-%DATE%.log`,
                    datePattern: 'YYYY-MM-DD',
                    zippedArchive: false,
                    maxSize: '20m',
                    maxFiles: '30d',
                    format: winston.format.combine(
                        winston.format.timestamp(),
                        winston.format.json(),
                    ),
                }),
                new winston.transports.Console({
                    level: 'debug',
                    handleExceptions: true,
                    format: winston.format.combine(
                        winston.format.colorize(),
                        winston.format.timestamp({
                            format: 'DD-MM-YYYY HH:mm:ss',
                        }),
                        winston.format.simple(),
                    ),
                }),
            ],
            exitOnError: false,
        };
    }
}
