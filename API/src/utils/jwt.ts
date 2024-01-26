import jwt, { JwtPayload } from "jsonwebtoken";
import "dotenv/config";

const key: string = process.env.SECRET_KEY || 'SECRET_KEY';

export default class JWT {
    public static token(payload: jwt.JwtPayload) {
        return jwt.sign(payload, key, {
            expiresIn: '30d'
        });
    }

    public static validate(token: string) {
        return jwt.verify(token, key);
    }
}