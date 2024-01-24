import jwt from "jsonwebtoken";
import "dotenv/config";

const key: string = process.env.SECRET_KEY || 'SECRET_KEY';

export default class JWT {
    public static token(payload: jwt.JwtPayload) {
        console.log(key);
        return jwt.sign(payload, key);
    }
}