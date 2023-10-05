/*
  Warnings:

  - You are about to drop the column `userId` on the `categories` table. All the data in the column will be lost.
  - You are about to drop the column `userId` on the `customers` table. All the data in the column will be lost.
  - You are about to drop the column `userId` on the `invoices` table. All the data in the column will be lost.
  - You are about to drop the column `userId` on the `products` table. All the data in the column will be lost.
  - Added the required column `user_id` to the `categories` table without a default value. This is not possible if the table is not empty.
  - Added the required column `user_id` to the `customers` table without a default value. This is not possible if the table is not empty.
  - Added the required column `user_id` to the `invoices` table without a default value. This is not possible if the table is not empty.
  - Added the required column `user_id` to the `products` table without a default value. This is not possible if the table is not empty.

*/
-- DropForeignKey
ALTER TABLE `categories` DROP FOREIGN KEY `categories_userId_fkey`;

-- DropForeignKey
ALTER TABLE `customers` DROP FOREIGN KEY `customers_userId_fkey`;

-- DropForeignKey
ALTER TABLE `invoices` DROP FOREIGN KEY `invoices_userId_fkey`;

-- DropForeignKey
ALTER TABLE `products` DROP FOREIGN KEY `products_userId_fkey`;

-- AlterTable
ALTER TABLE `categories` DROP COLUMN `userId`,
    ADD COLUMN `user_id` BIGINT UNSIGNED NOT NULL;

-- AlterTable
ALTER TABLE `customers` DROP COLUMN `userId`,
    ADD COLUMN `user_id` BIGINT UNSIGNED NOT NULL;

-- AlterTable
ALTER TABLE `invoices` DROP COLUMN `userId`,
    ADD COLUMN `user_id` BIGINT UNSIGNED NOT NULL;

-- AlterTable
ALTER TABLE `products` DROP COLUMN `userId`,
    ADD COLUMN `user_id` BIGINT UNSIGNED NOT NULL;

-- AddForeignKey
ALTER TABLE `customers` ADD CONSTRAINT `customers_user_id_fkey` FOREIGN KEY (`user_id`) REFERENCES `users`(`id`) ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE `categories` ADD CONSTRAINT `categories_user_id_fkey` FOREIGN KEY (`user_id`) REFERENCES `users`(`id`) ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE `invoices` ADD CONSTRAINT `invoices_user_id_fkey` FOREIGN KEY (`user_id`) REFERENCES `users`(`id`) ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE `products` ADD CONSTRAINT `products_user_id_fkey` FOREIGN KEY (`user_id`) REFERENCES `users`(`id`) ON DELETE RESTRICT ON UPDATE CASCADE;
