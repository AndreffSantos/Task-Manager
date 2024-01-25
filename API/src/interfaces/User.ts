import { z } from "zod";

export const userSchema = z.object({
    name: z.string().min(5),
    password: z.string().min(4),
    email: z.string().regex(/^[a-zA-Z0-9]+@+email.com$|.br$/),
});

export type User = z.infer<typeof userSchema>;