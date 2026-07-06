import { Request, Response } from "express";
import { registerService } from "./auth.service.js";


export const registerController = async (
    req: Request,
    res: Response
) => {
    const { email, password } = req.body;
    const user = await registerService(email, password);
    return res.status(201).json({
    success: true,
    message: "User registered successfully",
    data: user,
});
}