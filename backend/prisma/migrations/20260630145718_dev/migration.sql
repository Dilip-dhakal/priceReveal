-- CreateEnum
CREATE TYPE "AlertStatus" AS ENUM ('active', 'triggered', 'cancelled');

-- CreateTable
CREATE TABLE "Users" (
    "id" TEXT NOT NULL,
    "email" TEXT NOT NULL,
    "password_hash" TEXT NOT NULL,
    "created_at" TIMESTAMP(3) NOT NULL DEFAULT CURRENT_TIMESTAMP,
    "updated_at" TIMESTAMP(3) NOT NULL,

    CONSTRAINT "Users_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "Products" (
    "id" TEXT NOT NULL,
    "asin" TEXT NOT NULL,
    "title" TEXT NOT NULL,
    "image_url" TEXT,
    "amazon_url" TEXT NOT NULL,
    "category" TEXT NOT NULL,
    "current_price" INTEGER NOT NULL,
    "currency" TEXT NOT NULL,
    "last_synced" TEXT NOT NULL,
    "created_at" TIMESTAMP(3) NOT NULL DEFAULT CURRENT_TIMESTAMP,

    CONSTRAINT "Products_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "PriceHistory" (
    "id" TEXT NOT NULL,
    "product_id" TEXT NOT NULL,
    "price" INTEGER NOT NULL,
    "recorded_at" TIMESTAMP(3) NOT NULL,
    "source" TEXT NOT NULL DEFAULT 'Keppa',

    CONSTRAINT "PriceHistory_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "UserProducts" (
    "id" TEXT NOT NULL,
    "user_id" TEXT NOT NULL,
    "product_id" TEXT NOT NULL,

    CONSTRAINT "UserProducts_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "Alerts" (
    "id" TEXT NOT NULL,
    "user_id" TEXT NOT NULL,
    "product_id" TEXT NOT NULL,
    "targeted_price" INTEGER NOT NULL,
    "status" "AlertStatus" NOT NULL DEFAULT 'active',
    "triggered_at" TIMESTAMP(3) NOT NULL,
    "created_at" TIMESTAMP(3) NOT NULL DEFAULT CURRENT_TIMESTAMP,

    CONSTRAINT "Alerts_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "Deals" (
    "id" TEXT NOT NULL,
    "product_id" TEXT NOT NULL,
    "claimed_discount" INTEGER NOT NULL,
    "real_discount" INTEGER NOT NULL,
    "is_verified" BOOLEAN NOT NULL,
    "expires_at" TIMESTAMP(3) NOT NULL,
    "is_active" BOOLEAN NOT NULL DEFAULT true,
    "created_at" TIMESTAMP(3) NOT NULL DEFAULT CURRENT_TIMESTAMP,

    CONSTRAINT "Deals_pkey" PRIMARY KEY ("id")
);

-- CreateIndex
CREATE UNIQUE INDEX "Users_email_key" ON "Users"("email");

-- CreateIndex
CREATE UNIQUE INDEX "Products_asin_key" ON "Products"("asin");

-- CreateIndex
CREATE UNIQUE INDEX "PriceHistory_product_id_recorded_at_key" ON "PriceHistory"("product_id", "recorded_at");

-- CreateIndex
CREATE UNIQUE INDEX "UserProducts_user_id_product_id_key" ON "UserProducts"("user_id", "product_id");

-- AddForeignKey
ALTER TABLE "PriceHistory" ADD CONSTRAINT "PriceHistory_product_id_fkey" FOREIGN KEY ("product_id") REFERENCES "Products"("id") ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "UserProducts" ADD CONSTRAINT "UserProducts_user_id_fkey" FOREIGN KEY ("user_id") REFERENCES "Users"("id") ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "UserProducts" ADD CONSTRAINT "UserProducts_product_id_fkey" FOREIGN KEY ("product_id") REFERENCES "Products"("id") ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "Alerts" ADD CONSTRAINT "Alerts_user_id_fkey" FOREIGN KEY ("user_id") REFERENCES "Users"("id") ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "Alerts" ADD CONSTRAINT "Alerts_product_id_fkey" FOREIGN KEY ("product_id") REFERENCES "Products"("id") ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "Deals" ADD CONSTRAINT "Deals_product_id_fkey" FOREIGN KEY ("product_id") REFERENCES "Products"("id") ON DELETE RESTRICT ON UPDATE CASCADE;
