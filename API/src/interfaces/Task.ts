import { z } from "zod"

export const taskSchema = z.object({
    title: z.string().min(3),
    description: z.string().max(100, 'O maximo de caracteres são 100').optional(),
});

export type Task = z.infer<typeof taskSchema>