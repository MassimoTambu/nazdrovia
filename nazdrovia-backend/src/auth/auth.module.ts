import { DynamicModule, Module } from '@nestjs/common';
import { JwtModule } from '@nestjs/jwt';
import { PassportModule } from '@nestjs/passport';

import { AuthOptionsService } from './auth-options/auth-options.service';
import { AuthController } from './auth.controller';
import { AuthService } from './auth.service';
import { AUTH_OPTIONS } from './constants';
import { AuthOptions } from './models/interfaces/auth-options.interface';
import { JwtStrategy } from './strategies/jwt.strategy';
import { LocalStrategy } from './strategies/local.strategy';

@Module({})
export class AuthModule {
    static register(authOptions: AuthOptions): DynamicModule {
        return {
            module: AuthModule,
            imports: [
                PassportModule.register({ defaultStrategy: 'jwt' }),
                JwtModule.registerAsync({
                    useFactory: async (configService: AuthOptionsService) => ({
                        secret: configService.authOptions.appSecret,
                        signOptions: {
                            algorithm: 'HS384',
                        },
                        verifyOptions: {
                            algorithms: ['HS384'],
                            issuer: configService.authOptions.jwtIssuers,
                            ignoreExpiration: false,
                        },
                    }),
                    inject: [AuthOptionsService],
                }),
            ],
            controllers: [AuthController],
            providers: [
                AuthService,
                LocalStrategy,
                JwtStrategy,
                {
                    provide: AUTH_OPTIONS,
                    useValue: authOptions,
                },
            ],
            exports: [AuthService],
        };
    }
}
