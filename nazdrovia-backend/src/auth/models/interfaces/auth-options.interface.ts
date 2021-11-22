import { JwtPayload } from './jwt-payload.interface';

export interface AuthOptions {
    appSecret: string;
    allowedOrigins: string[];
    jwtPayload: JwtPayload;
    jwtIssuers: string[];
}
