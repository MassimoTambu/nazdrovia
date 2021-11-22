import { Injectable, Optional } from '@nestjs/common';
import { JwtService } from '@nestjs/jwt';

import { AuthOptionsService } from './auth-options/auth-options.service';
import { RBACRoles } from './models/enums/rbac-roles.enum';
import { AccessToken } from './models/interfaces/access-token.interface';
import { JwtPayload } from './models/interfaces/jwt-payload.interface';
import { User } from './models/interfaces/user.interface';
import { Token } from './models/token.type';

@Injectable()
export class AuthService {
    constructor(
        private readonly jwtService: JwtService,
        private readonly authService: AuthOptionsService,
        @Optional()
        private readonly getCustomJwtPayload?: <J extends JwtPayload>() => J,
    ) {}

    signToken<J extends JwtPayload>(user: Partial<User>): AccessToken {
        const jwtPayload: J | JwtPayload = this.getJwtPayload();

        if (user.role == null) {
            this.setUserDefaultRole(user);
        }

        this.generateJwtExpirationDate(jwtPayload);

        const accessToken: AccessToken = {
            accessToken: this.jwtService.sign({ ...user, ...jwtPayload }),
        };

        return accessToken;
    }

    decodeToken(bearerToken: string): Token {
        return this.jwtService.decode(bearerToken) as Token;
    }

    private getJwtPayload<J extends JwtPayload>(): J | JwtPayload {
        if (this.getCustomJwtPayload != null) {
            return this.getCustomJwtPayload();
        }

        return this.getDefaultJwtPayload();
    }

    private getDefaultJwtPayload(): JwtPayload {
        return this.authService.authOptions.jwtPayload;
    }

    private generateJwtExpirationDate<J extends JwtPayload>(
        jwtPayload: J,
    ): void {
        jwtPayload.exp = new Date().getTime() + jwtPayload.exp;
    }

    private setUserDefaultRole(user: Partial<User>) {
        user.role = RBACRoles.Guest;
    }
}
