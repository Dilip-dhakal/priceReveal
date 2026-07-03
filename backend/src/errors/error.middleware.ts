import { ErrorRequestHandler } from "express";
import { ErrorHandler } from "./error.handler.js";

export const errorMiddleware:ErrorRequestHandler=(err,req,res,next)=>{
    if(err instanceof ErrorHandler){
        return res.status(err.statusCode).json({
        success:false,
        message:err.message 
    })
    }
    return res.status(500).json({
        success:false,
        message:"Internal Server Error"
    })
    
}