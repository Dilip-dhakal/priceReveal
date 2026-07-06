import { Request, Response, NextFunction } from "express";
import { z } from "zod";
import { ErrorHandler } from "../errors/error.handler.js";

export const validateRequest = (schema: z.ZodSchema) => {
  return (req: Request, res: Response, next: NextFunction) => {
    const result = schema.safeParse({
      body: req.body,
      params: req.params,
      query: req.query,
    });

    if (!result.success) {
      return next(new ErrorHandler(400, result.error.message));
    }

    next();
  };
};