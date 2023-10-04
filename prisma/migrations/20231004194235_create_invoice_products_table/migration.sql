/*
  Warnings:

  - You are about to drop the `user` table. If the table is not empty, all the data it contains will be lost.

*/
-- DropTable
DROP TABLE `user`;

-- CreateTable
CREATE TABLE `invoice_products` (
    `id` BIGINT NOT NULL AUTO_INCREMENT,
    `invoice_id` BIGINT NOT NULL,
    `product_id` BIGINT NOT NULL,
    `user_id` BIGINT NOT NULL,
    `qty` VARCHAR(191) NOT NULL,
    `sale_price` VARCHAR(191) NOT NULL,
    `created_at` TIMESTAMP NOT NULL,
    `Updated_at` TIMESTAMP NOT NULL,


    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;
