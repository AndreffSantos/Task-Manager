import TaskService from "../services/task.service";
import { Request, Response } from "express";
import { taskSchema } from "../interfaces/Task";
import { taskUpdatedSchema } from "../interfaces/TaskUpdated";

export default class TaskController {
    private service: TaskService = new TaskService();

    public async create(req: Request, res: Response) {
        const parsed = taskSchema.parse(req.body);
        const created = await this.service.create(parsed);

        return res.json(created);
    }

    public async read(req: Request, res: Response) {
        const id: number = Number.parseInt(req.params.userId);
        const tasks = await this.service.read( id );
    
        return res.json(tasks)
    }

    public async update(req: Request, res: Response) {
        const id: number = Number.parseInt(req.params.taskId);
        const parsed = taskUpdatedSchema.parse(req.body)
        const updated = await this.service.update(id, parsed);

        return res.json(updated);
    }

    public async delete(req: Request, res: Response) {
        const id: number = Number.parseInt(req.params.taskId);
        const deleted = await this.service.delete(id);

        return res.json(deleted);
    }
}