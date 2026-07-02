import {z} from 'zod'

const registerSchema=z.object({
    body:z.object({
        email:z.email("Please enter a valid email address"),
        password:z.string().min(6,"Password should be atleast of 6 characters")
    }).strict()
})

export default registerSchema