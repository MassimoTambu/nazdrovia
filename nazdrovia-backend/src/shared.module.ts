import { Module } from '@nestjs/common';

import { LoaderService } from './shared/services/loader.service';
import { LoggerService } from './shared/services/logger.service';

const providers = [LoaderService, LoggerService];

@Module({
    providers,
    imports: [],
    exports: [...providers],
})
export class SharedModule {}
