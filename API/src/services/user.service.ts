import { PrismaClient } from "@prisma/client";
import { User } from "../interfaces/User";
import { dataUpdated } from "../interfaces/UserDataUpdated";
import JWT from "../utils/jwt";

export default class UserService {
    private model: PrismaClient = new PrismaClient();

    public async create(newUser: User) {
        const created = await this.model.user.create({
            data: newUser,
        });

        return created;
    }

    public async login(email: string, password: string) {
        const user = await this.model.user.findUnique({
            where: {
                email,
                password, 
            }
        });

        const payload = {
            id: user?.id,
            name: user?.name,
            email: user?.email,
        }

        const token = JWT.token(payload);

        return token;
    }

    public async update(id: number, obj: dataUpdated) {
        const user = await this.model.user.findUnique({
            where: { id, }
        });

        const userUpdated = await this.model.user.update({
            where: { id, },
            data: {
                name: obj.name == '' ? user?.name : obj.name,
                password: obj.password == '' ? user?.password : obj.password,
                email: obj.email == '' ? user?.email : obj.email,
            }
        });

        return userUpdated;
    }

    public async delete(id: number) {
        const deleted = await this.model.user.delete({
            where: { id, }
        })

        return deleted;
    }
}