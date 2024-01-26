import { z } from "zod"

export const taskUpdatedSchema = z.object({
    userId: z.number().optional(),
    title: z.string().min(3).optional(),
    description: z.string().max(100, 'O maximo de caracteres são 100').optional(),
    concluded: z.boolean().optional(),
});

export type taskUpdated = z.infer<typeof taskUpdatedSchema>