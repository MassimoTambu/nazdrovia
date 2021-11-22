import { JwtPayload } from './interfaces/jwt-payload.interface';
import { User } from './interfaces/user.interface';

export type Token = User & JwtPayload;
