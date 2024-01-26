import { PrismaClient } from "@prisma/client";
import { User } from "../interfaces/User";
import { userUpdated } from "../interfaces/UserUpdated";
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

    public async update(id: number, obj: userUpdated) {
        const userUpdated = await this.model.user.update({
            where: { id, },
            data: obj
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