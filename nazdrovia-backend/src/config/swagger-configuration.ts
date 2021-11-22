import { registerAs } from '@nestjs/config';
import { SwaggerConfiguration } from 'src/shared/interfaces/swagger-configuration.interface';

export default registerAs(
    'swagger',
    () =>
        <SwaggerConfiguration>{
            path: process.env.SWAGGER_PATH,
            title: process.env.SWAGGER_TITLE,
            description: process.env.SWAGGER_DESCRIPTION,
            version: process.env.SWAGGER_VERSION,
            scheme: process.env.SWAGGER_SCHEME,
        },
);
