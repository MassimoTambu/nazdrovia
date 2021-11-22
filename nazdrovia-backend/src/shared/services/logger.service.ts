import { ConsoleLogger, Injectable, Logger } from '@nestjs/common';
import winston from 'winston';

import { LoaderService } from './loader.service';

@Injectable()
export class LoggerService extends ConsoleLogger {
    private readonly _logger: winston.Logger;

    constructor(private readonly _configService: LoaderService) {
        super(LoggerService.name, { timestamp: true });
        this._logger = winston.createLogger(_configService.winstonConfig);
        if (_configService.nodeEnv !== 'production') {
            this._logger.debug('Logging initialized at debug level');
        }
    }
    log(message: string): void {
        this._logger.info(message);
    }
    info(message: string): void {
        this._logger.info(message);
    }
    debug(message: string): void {
        this._logger.debug(message);
    }
    error(message: string, trace?: any, context?: string): void {
        // i think the trace should be JSON Stringified
        this._logger.error(
            `${context || ''} ${message} -> (${
                trace || 'trace not provided !'
            })`,
        );
    }
    warn(message: string): void {
        this._logger.warn(message);
    }
}
