import { INestApplication } from '@nestjs/common';
import { DocumentBuilder, SwaggerModule } from '@nestjs/swagger';

import { SwaggerConfiguration } from '../interfaces/swagger-configuration.interface';

export function setupSwagger(
    app: INestApplication,
    config: SwaggerConfiguration,
) {
    const options = new DocumentBuilder()
        .setTitle(config.title)
        .setDescription(config.description)
        .setVersion(config.version)
        .addBearerAuth()
        .addServer(`${config.scheme}://`)
        .build();

    const document = SwaggerModule.createDocument(app, options);
    SwaggerModule.setup(config.path, app, document);
}
