import bcrypt from "bcrypt";
import { prisma } from "../../shared/prisma.js";
import { ErrorHandler } from "../../errors/error.handler.js";

export const registerService = async (
  email: string,
  password: string
) => {
  const existingUser = await prisma.users.findUnique({
    where: {
      email,
    },
  });

  if (existingUser) {
    throw new ErrorHandler(409, "User with this email already exists");
  }

  const hashedPassword = await bcrypt.hash(password, 10);

  const user = await prisma.users.create({
    data: {
      email,
      password_hash: hashedPassword,
    },
  });

  return {
    email: user.email,
  };
};