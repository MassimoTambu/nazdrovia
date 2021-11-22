import { NodeEnvs } from '../enums/node-envs';

export interface AppConfiguration {
    nodeEnv: NodeEnvs;
    host: string;
    port: number;
}
