import { ClassSerializerInterceptor, ValidationPipe } from '@nestjs/common';
import { NestFactory, Reflector } from '@nestjs/core';
import {
    ExpressAdapter,
    NestExpressApplication,
} from '@nestjs/platform-express';
import rateLimit from 'express-rate-limit';
import helmet from 'helmet';
import morgan from 'morgan';

import { AppModule } from './app.module';
import { SharedModule } from './shared.module';
import { NodeEnvs } from './shared/enums/node-envs';
import { LoaderService } from './shared/services/loader.service';
import { LoggerService } from './shared/services/logger.service';
import { setupSwagger } from './shared/swagger/setup';

async function bootstrap() {
    const app = await NestFactory.create<NestExpressApplication>(
        AppModule,
        new ExpressAdapter(),
        { cors: true },
    );

    const loggerService = app.select(SharedModule).get(LoggerService);
    app.useLogger(loggerService);
    app.use(
        morgan('combined', {
            stream: {
                write: (message) => {
                    loggerService.log(message);
                },
            },
        }),
    );

    app.use(helmet());
    app.use(
        rateLimit({
            windowMs: 15 * 60 * 1000, // 15 minutes
            max: 100, // limit each IP to 100 requests per windowMs
        }),
    );

    const reflector = app.get(Reflector);

    app.useGlobalInterceptors(new ClassSerializerInterceptor(reflector));
    app.useGlobalPipes(
        new ValidationPipe({
            whitelist: true,
            transform: true,
            // exceptionFactory: errors => new BadRequestException(errors),
            // dismissDefaultMessages: true,//TODO: disable in prod (if required)
            validationError: {
                target: false,
            },
        }),
    );

    const loaderService = app.select(SharedModule).get(LoaderService);

    if (
        [NodeEnvs.Development, NodeEnvs.Staging].includes(loaderService.nodeEnv)
    ) {
        setupSwagger(app, loaderService.swaggerConfig);
    }

    const appConfig = loaderService.appConfig;
    await app.listen(appConfig.port, appConfig.host);

    loggerService.warn(
        `server running on port ${appConfig.host}:${appConfig.port}`,
    );
}
bootstrap();
