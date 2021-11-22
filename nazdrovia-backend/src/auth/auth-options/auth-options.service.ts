import { Inject, Injectable } from '@nestjs/common';

import { AUTH_OPTIONS } from '../constants';
import { AuthOptions } from '../models/interfaces/auth-options.interface';

@Injectable()
export class AuthOptionsService {
    constructor(@Inject(AUTH_OPTIONS) public authOptions: AuthOptions) {}
}
