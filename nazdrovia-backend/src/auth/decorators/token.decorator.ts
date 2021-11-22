import { Token as TypeToken } from '@auth/models/token.type';
import { createParamDecorator, ExecutionContext } from '@nestjs/common';

export const Token = createParamDecorator(
    (data: unknown, ctx: ExecutionContext): TypeToken => {
        const request = ctx.switchToHttp().getRequest();
        return request.user;
    },
);
