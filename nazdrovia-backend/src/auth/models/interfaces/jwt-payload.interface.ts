/**
 * Reference: https://datatracker.ietf.org/doc/html/rfc7519#page-3
 */
export interface JwtPayload {
    iss: string;
    sub?: string;
    aud: string;
    exp: number;
    jti?: string;
}
