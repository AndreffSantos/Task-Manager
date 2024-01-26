import TaskService from "../services/task.service";
import { Request, Response } from "express";
import { taskSchema } from "../interfaces/Task";
import { taskUpdatedSchema } from "../interfaces/TaskUpdated";
import JWT from "../utils/jwt";
import { JwtPayload } from "jsonwebtoken";

export default class TaskController {
    private service: TaskService = new TaskService();

    private getToken(req: Request): string {
        const token: string = req.headers.authorization ? req.headers.authorization : "";
        return token;
    }

    public async create(req: Request, res: Response) {
        const { id } = JWT.validate(this.getToken(req)) as JwtPayload;

        const parsed = taskSchema.parse(req.body);
        const created = await this.service.create({
            userId: id,
            title: parsed.title,
            description: parsed?.description,
        });

        return res.json(created);
    }

    public async read(req: Request, res: Response) {
        const { id } = JWT.validate(this.getToken(req)) as JwtPayload;
        
        const tasks = await this.service.read( id );
    
        return res.json(tasks);
    }

    public async update(req: Request, res: Response) {
        JWT.validate(this.getToken(req))

        const id: number = Number.parseInt(req.params.taskId);
        const parsed = taskUpdatedSchema.parse(req.body)
        const updated = await this.service.update(id, parsed);

        return res.json(updated);
    }

    public async delete(req: Request, res: Response) {
        JWT.validate(this.getToken(req))

        const id: number = Number.parseInt(req.params.taskId);
        const deleted = await this.service.delete(id);

        return res.json(deleted);
    }
}