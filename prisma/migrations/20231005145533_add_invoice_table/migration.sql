-- CreateTable
CREATE TABLE `invoices` (
    `id` BIGINT UNSIGNED NOT NULL AUTO_INCREMENT,
    `total` VARCHAR(191) NOT NULL,
    `discount` VARCHAR(191) NOT NULL,
    `vat` VARCHAR(191) NOT NULL,
    `payable` VARCHAR(191) NOT NULL,
    `userId` BIGINT UNSIGNED NOT NULL,
    `customer_id` BIGINT UNSIGNED NOT NULL,
    `created_at` TIMESTAMP(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0),
    `updated_at` TIMESTAMP(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0),

    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- AddForeignKey
ALTER TABLE `invoices` ADD CONSTRAINT `invoices_userId_fkey` FOREIGN KEY (`userId`) REFERENCES `users`(`id`) ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE `invoices` ADD CONSTRAINT `invoices_customer_id_fkey` FOREIGN KEY (`customer_id`) REFERENCES `customers`(`id`) ON DELETE RESTRICT ON UPDATE CASCADE;
