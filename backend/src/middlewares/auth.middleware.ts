import { RequestHandler } from "express";
import { ErrorHandler } from "../errors/error.handler.js";
import jwt from "jsonwebtoken";

export const authMiddleware:RequestHandler=(req,res,next)=>{
    const authHeader=req.headers.authorization
    if (!authHeader) {
    throw new ErrorHandler(401, "Authentication token missing");
}
if (!authHeader.startsWith("Bearer ")) {
    throw new ErrorHandler(
        401,
        "Invalid authentication format"
    );
}
const token = authHeader.split(" ")[1];
const decoded = jwt.verify(
    token,
    process.env.JWT_SECRET!
);
req.user = decoded as {
    id: string;
    email: string;
    role: string;
};
next()
}