import { registerAs } from '@nestjs/config';
import { AppConfiguration } from 'src/shared/interfaces/app-configuration.interface';

export default registerAs(
    'app',
    () =>
        <AppConfiguration>{
            nodeEnv: process.env.NODE_ENV,
            host: process.env.HOST,
            port: +process.env.PORT,
        },
);
