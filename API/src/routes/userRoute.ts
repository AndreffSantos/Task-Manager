import { Router, Request, Response } from "express";
const userRoute = Router();

userRoute.get('/', (_request: Request, response: Response) => {
    return response.send('Teste');
});

export default userRoute;