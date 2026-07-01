import express from 'express'
import app from './routes/app.js'
import dotenv from 'dotenv'
 
dotenv.config()

const PORT=process.env.PORT

app.listen(PORT,()=>{
    console.log(`Project is running on port ${PORT}`)
})
