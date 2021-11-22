import { User as IUser } from '@auth/models/interfaces/user.interface';
import { createParamDecorator, ExecutionContext } from '@nestjs/common';

export const User = createParamDecorator(
    (data: unknown, ctx: ExecutionContext): Partial<IUser> => {
        return ctx.switchToHttp().getRequest().body.user;
    },
);
