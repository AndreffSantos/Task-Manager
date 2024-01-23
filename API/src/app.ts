import express, { Request, Response, Express } from 'express';
import { userRoute } from './routes';

const app: Express = express();
const port = 80;

app.use('/user', userRoute );

app.listen(port, () => console.log(`Sevidor rodando na porta ${port}`));