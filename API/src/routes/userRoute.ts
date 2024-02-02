import { Router } from "express";
import UserController from "../controllers/user.controler";

const userRoute = Router();
const controller = new UserController();

userRoute.post('/', async (req, res) => controller.create(req, res));
userRoute.post('/login', async (req, res) => controller.login(req, res));
userRoute.put('/:id', async (req, res) => controller.update(req, res));
userRoute.delete('/:id', async (req, res) => controller.delete(req, res));

export default userRoute;