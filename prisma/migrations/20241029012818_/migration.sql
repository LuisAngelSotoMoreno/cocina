-- CreateTable
CREATE TABLE `ordenes_cocina` (
    `id_ordenes_cocina` INTEGER NOT NULL AUTO_INCREMENT,
    `id_pedidos` INTEGER NOT NULL,
    `id_menu` INTEGER NOT NULL,
    `cantidad` INTEGER NOT NULL,
    `estado` BOOLEAN NOT NULL,

    PRIMARY KEY (`id_ordenes_cocina`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `menu` (
    `id_menu` INTEGER NOT NULL AUTO_INCREMENT,

    PRIMARY KEY (`id_menu`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `pedidos` (
    `id_pedidos` INTEGER NOT NULL AUTO_INCREMENT,

    PRIMARY KEY (`id_pedidos`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `empleados` (
    `id_empleado` INTEGER NOT NULL AUTO_INCREMENT,
    `nombre` VARCHAR(191) NOT NULL,
    `puesto` VARCHAR(191) NOT NULL,
    `salario` DOUBLE NOT NULL,

    PRIMARY KEY (`id_empleado`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- AddForeignKey
ALTER TABLE `ordenes_cocina` ADD CONSTRAINT `ordenes_cocina_id_pedidos_fkey` FOREIGN KEY (`id_pedidos`) REFERENCES `pedidos`(`id_pedidos`) ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE `ordenes_cocina` ADD CONSTRAINT `ordenes_cocina_id_menu_fkey` FOREIGN KEY (`id_menu`) REFERENCES `menu`(`id_menu`) ON DELETE RESTRICT ON UPDATE CASCADE;
