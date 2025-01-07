-- DropForeignKey
ALTER TABLE `userhavepromotion` DROP FOREIGN KEY `userHavepromotion_promotion_id_fkey`;

-- DropForeignKey
ALTER TABLE `userhavepromotion` DROP FOREIGN KEY `userHavepromotion_user_id_fkey`;

-- AddForeignKey
ALTER TABLE `userhavepromotion` ADD CONSTRAINT `userhavepromotion_promotion_id_fkey` FOREIGN KEY (`promotion_id`) REFERENCES `promotion`(`id`) ON DELETE CASCADE ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE `userhavepromotion` ADD CONSTRAINT `userhavepromotion_user_id_fkey` FOREIGN KEY (`user_id`) REFERENCES `user`(`id`) ON DELETE RESTRICT ON UPDATE CASCADE;
