import { AuthOptionsService } from '@auth/auth-options/auth-options.service';
import { Token } from '@auth/models/token.type';
import { Injectable } from '@nestjs/common';
import { PassportStrategy } from '@nestjs/passport';
import { ExtractJwt, Strategy } from 'passport-jwt';

@Injectable()
export class JwtStrategy extends PassportStrategy(Strategy, 'jwt') {
    constructor(authOptionsService: AuthOptionsService) {
        super({
            jwtFromRequest: ExtractJwt.fromAuthHeaderAsBearerToken(),
            secretOrKey: authOptionsService.authOptions.appSecret,
            audience: authOptionsService.authOptions.jwtPayload.aud,
            issuer: authOptionsService.authOptions.jwtPayload.iss,
            ignoreExpiration: false,
            passReqToCallback: false,
        });
    }

    /** Questo metodo verrà richiamato solo se l'oggetto JWT sarà valido.
     * Passport restituisce il token sotto request.user
     */
    validate(decodedToken: Token): Token {
        return decodedToken;
    }
}
