import { Router } from "express";
import TaskController from "../controllers/task.controller";

const route = Router();
const controller = new TaskController();

route.post('/', async (req, res) => controller.create(req, res));
route.get('/', async (req, res) => controller.read(req, res));
route.put('/:taskId', async (req, res) => controller.update(req, res));
route.delete('/:taskId', async (req, res) => controller.delete(req, res));

export default route;