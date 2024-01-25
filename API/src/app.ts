import "express-async-errors"
import express, { Express } from 'express';
import { userRoute } from './routes';
import Handler from './handler';

const app: Express = express();
const port = 80;

app.use(express.json())
app.use('/user', userRoute );
app.use(Handler.error)

app.listen(port, () => console.log(`Sevidor rodando na porta ${port}`));