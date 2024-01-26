import { PrismaClient } from "@prisma/client";
import { Task } from "../interfaces/Task";
import { taskUpdated } from "../interfaces/TaskUpdated";

export default class TaskService {
    private model = new PrismaClient();

    public async create(newTask: Task) {
        const created = await this.model.task.create({
            data: newTask
        })

        return created;
    }

    public async read(userId: number) {
        const tasks = await this.model.task.findMany({
            where: { userId }
        });
        return tasks;
    }

    public async update(id: number, obj: taskUpdated) {
        const updated = await this.model.task.update({
            // select: { id },
            where: { id },
            data: obj
        });

        return updated;
    }

    public async delete(id: number) {
        const deleted = await this.model.task.delete({
            where: { id }
        });

        return deleted;
    }
}