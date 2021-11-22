import { RBACRoles } from '../enums/rbac-roles.enum';

export interface User {
    userName: string;
    email: string;
    role: RBACRoles;
}
