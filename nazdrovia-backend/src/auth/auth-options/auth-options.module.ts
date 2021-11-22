import { DynamicModule, Global, Module } from '@nestjs/common';

import { AUTH_OPTIONS } from '../constants';
import { AuthOptions } from '../models/interfaces/auth-options.interface';
import { AuthOptionsService } from './auth-options.service';

@Module({})
export class AuthOptionsModule {
    static register(authOptions: AuthOptions): DynamicModule {
        return {
            module: AuthOptionsModule,
            providers: [
                {
                    provide: AUTH_OPTIONS,
                    useValue: authOptions,
                },
                AuthOptionsService,
            ],
            exports: [AuthOptionsService, AUTH_OPTIONS],
        };
    }
}
