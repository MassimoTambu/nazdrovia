import { Controller, Get, Post, Res, UseGuards } from '@nestjs/common';
import { Response } from 'express';

import { AuthService } from './auth.service';
import { User } from './decorators/user.decorator';
import { JWTAuthGuard } from './guards/jwt-auth.guard';
import { User as IUser } from './models/interfaces/user.interface';

@Controller('auth')
export class AuthController {
    constructor(private readonly authService: AuthService) {}

    @Post('token')
    generateToken(@User() user: Partial<IUser>, @Res() res: Response) {
        return res.json(this.authService.signToken(user));
    }

    @Get('verify')
    @UseGuards(JWTAuthGuard)
    verifyToken(): boolean {
        return true;
    }
}
