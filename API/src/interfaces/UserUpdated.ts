import { z } from "zod";

export const userUpdatedSchema = z.object({
    name: z.string().optional(),
    password: z.string().optional(),
    email: z.string().regex(/^[a-zA-Z0-9]+@+email.com$|.br$/).optional(),
});

export type userUpdated = z.infer<typeof userUpdatedSchema>