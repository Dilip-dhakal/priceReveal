import express from 'express'
import authRoutes from "../features/auth/auth.router.js"
import { errorMiddleware } from '../errors/error.middleware.js'

const app=express()


app.use(express.json())

app.use("/register",authRoutes)

app.use(errorMiddleware)

export default app