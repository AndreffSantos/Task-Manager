import { Request, Response } from "express";
import UserService from "../services/user.service";
import { userSchema } from "../interfaces/User";
import { dataUpdatedSchema } from "../interfaces/UserDataUpdated";

export default class UserController {
    private service: UserService = new UserService();

    public async create(req: Request, res: Response) {
        const parsed = userSchema.parse(req.body);
        const created = await this.service.create(parsed);

        return res.json(created);
    }

    public async login(req: Request, res: Response) {
        const { email, password } = req.body;
        const token = await this.service.login(email, password);
    
        return res.json({
            token,
        })
    }

    public async update(req: Request, res: Response) {
        const id: number = Number.parseInt(req.params.id);
        const parsed = dataUpdatedSchema.parse(req.body)
        const updated = await this.service.update(id, parsed);

        return res.json(updated);
    }

    public async delete(req: Request, res: Response) {
        const id: number = Number.parseInt(req.params.id);
        const deleted = await this.service.delete(id);

        return res.json(deleted);
    }
}