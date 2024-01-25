import { z } from "zod";

export const dataUpdatedSchema = z.object({
    name: z.string().optional(),
    password: z.string().optional(),
    email: z.string().regex(/^[a-zA-Z0-9]+@+email.com$|.br$/).optional(),
});

export type dataUpdated = z.infer<typeof dataUpdatedSchema>