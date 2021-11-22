import { RBACRoles } from '@auth/models/enums/rbac-roles.enum';
import { HttpStatus, INestApplication, ValidationPipe } from '@nestjs/common';
import { Test, TestingModule } from '@nestjs/testing';
import cookieParser from 'cookie-parser';
import { Response } from 'express';
import session from 'express-session';
import passport from 'passport';

import { AuthController } from './auth.controller';
import { AuthModule } from './auth.module';
import { AuthService } from './auth.service';
import { AuthOptions } from './models/interfaces/auth-options.interface';
import { User } from './models/interfaces/user.interface';

export function setup(app: INestApplication): INestApplication {
    app.useGlobalPipes(
        new ValidationPipe({
            transform: true,
            whitelist: true,
            errorHttpStatusCode: HttpStatus.UNPROCESSABLE_ENTITY,
        }),
    );

    app.use(cookieParser(process.env.APP_SECRET));

    app.use(
        session({
            secret: process.env.APP_SECRET as string,
            resave: false,
            saveUninitialized: false,
            store: new session.MemoryStore(),
            cookie: {
                httpOnly: true,
                signed: true,
                sameSite: 'strict',
                secure: process.env.NODE_ENV === 'production',
            },
        }),
    );

    app.use(passport.initialize());
    app.use(passport.session());

    app.enableCors({
        origin: process.env.ALLOWED_ORIGINS?.split(/\s*,\s*/) ?? '*',
        credentials: true,
        exposedHeaders: ['Authorization'],
    });

    // useContainer(app.select(NestJSAuthModule), { fallbackOnErrors: true });

    return app;
}

describe('AuthController', () => {
    let app: INestApplication;
    let controller: AuthController;
    let authService: AuthService;

    beforeEach(async () => {
        const authOptions: AuthOptions = {
            appSecret: process.env.APP_SECRET,
            allowedOrigins: process.env.ALLOWED_ORIGINS.split(', '),
            jwtPayload: {
                aud: process.env.JWT_AUD,
                exp: +process.env.JWT_EXP,
                iss: process.env.JWT_ISS,
            },
            jwtIssuers: process.env.JWT_ISSUERS.split(', '),
        };

        const module: TestingModule = await Test.createTestingModule({
            imports: [AuthModule.register(authOptions)],
        }).compile();

        app = setup(module.createNestApplication());

        controller = module.get(AuthController);
        authService = module.get(AuthService);

        await app.init();
    });

    afterEach(async () => {
        await app.close();
    });

    it('should be defined', () => {
        expect(controller).toBeDefined();
    });

    it('should generate a token', () => {
        const user: Partial<User> = {};
        const mockResponse = { json: (value) => value } as any as Response;

        const response = controller.generateToken(user, mockResponse);
        expect(response).toHaveProperty('accessToken');
    });

    it('should generate a token with a custom user _id', () => {
        const user: Partial<User> = { role: RBACRoles.Guest };

        const accessToken = authService.signToken(user).accessToken;

        expect(authService.decodeToken(accessToken)._id).toBeDefined();
    });

    it('should generate a token with the default Guest role', () => {
        const user: Partial<User> = { role: RBACRoles.Guest };

        const accessToken = authService.signToken(user).accessToken;
        const decodedToken = authService.decodeToken(accessToken);

        expect(decodedToken.role.toString()).toMatch(RBACRoles.Guest);
    });

    it('should generate a token with 1 hour expiration', () => {
        const user: Partial<User> = { role: RBACRoles.Guest };

        const accessToken = authService.signToken(user).accessToken;
        const decodedToken = authService.decodeToken(accessToken);

        const dateNow = new Date();
        const expDate = new Date(decodedToken.exp);
        const timeMs = expDate.getTime() - dateNow.getTime();
        const hourMs = 3600000;

        expect(timeMs).toBeLessThanOrEqual(hourMs + 100);
        expect(timeMs).toBeGreaterThanOrEqual(hourMs - 100);
    });
});
