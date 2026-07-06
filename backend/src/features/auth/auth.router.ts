import express from 'express'
import registerSchema from './auth.schema.js'
import { registerController } from './auth.controller.js'
import {  validateRequest } from '../../middlewares/validate.middleware.js'

const router=express.Router()

router.post("/register",validateRequest(registerSchema),registerController)

export default router