import { registerAs } from '@nestjs/config';
import { AuthConfiguration } from 'src/shared/interfaces/auth-configuration.interface';

export default registerAs(
    'auth',
    () =>
        <AuthConfiguration>{
            jwtIssuer: process.env.JWT_ISSUER,
            secretKey: process.env.SECRET_KEY,
        },
);
