import { Module } from '@nestjs/common';
import { ConfigModule } from '@nestjs/config';
import { TypeOrmModule } from '@nestjs/typeorm';
import { RbacModule } from 'nestjs-rbac';

import { AppController } from './app.controller';
import { AppService } from './app.service';
import { AuthModule } from './auth/auth.module';
import appConfiguration from './config/app-configuration';
import authConfiguration from './config/auth-configuration';
import databaseConfiguration from './config/database-configuration';
import swaggerConfiguration from './config/swagger-configuration';
import validateConfigurations from './config/validate-configurations';
import { AchievementsModule } from './modules/achievements/achievements.module';
import { PlayersModule } from './modules/players/players.module';
import { RulesModule } from './modules/rules/rules.module';
import { RBACstorage } from './rbac_storage';
import { SharedModule } from './shared.module';
import { LoaderService } from './shared/services/loader.service';

const CONFIGURATIONS = [
  appConfiguration,
  authConfiguration,
  databaseConfiguration,
  swaggerConfiguration
];

@Module({
  imports: [
    ConfigModule.forRoot({
      isGlobal: true,
      cache: true,
      load: CONFIGURATIONS,
      validationSchema: validateConfigurations()
    }),
    TypeOrmModule.forRootAsync({
      imports: [SharedModule],
      inject: [LoaderService],
      useFactory: (loaderService: LoaderService) => loaderService.typeOrmOptions
    }),
    RbacModule.forRoot(RBACstorage),
    AuthModule,
    AchievementsModule,
    PlayersModule,
    RulesModule
  ],
  controllers: [AppController],
  providers: [AppService, LoaderService]
})
export class AppModule {}
