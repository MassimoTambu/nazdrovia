import Joi from 'joi';
import { NodeEnvs } from 'src/shared/enums/node-envs';

export default () =>
    Joi.object({
        // APP
        NODE_ENV: Joi.string().valid(...Object.values(NodeEnvs)),
        HOST: Joi.string().hostname().required(),
        PORT: Joi.number().port().required(),
        // DATABASE
        PG_HOST: Joi.string().required(),
        PG_PORT: Joi.number().port().default(5432),
        PG_DATABASE: Joi.string().required(),
        PG_USER: Joi.string().required(),
        PG_PASSWORD: Joi.string().required(),
        // AUTH
        SECRET_KEY: Joi.string().required(),
        JWT_ISSUER: Joi.string().required(),
        // SWAGGER
        SWAGGER_PATH: Joi.string().required().required(),
        SWAGGER_TITLE: Joi.string().required() || 'an empty title',
        SWAGGER_DESCRIPTION: Joi.string() || 'an empty description',
        SWAGGER_VERSION: Joi.string().required() || '0.0.0',
        SWAGGER_SCHEME: Joi.string() || 'http',
    });
