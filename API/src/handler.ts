import { Request, Response, NextFunction } from "express";
import { ZodError } from "zod";
import { Prisma } from '@prisma/client';

export default class Handler {

    public static error(erro: any, _req: Request, res: Response, _next: NextFunction) {
        if (erro instanceof ZodError) {
            var message: string = '';
            erro.issues.forEach((issue) => {
                message += `${issue.message} ${issue.path[0]} `
            })
            return res.status(400).json({
                message,
            })
        }
        else if (erro instanceof Prisma.PrismaClientKnownRequestError) {
            return res.status(500).json(erro);
        }
        else {
            console.log(erro)
            return res.status(500).json({
                message: 'Um erro inesperado ocorreu.',
                erro,
            })
        }
    }
}