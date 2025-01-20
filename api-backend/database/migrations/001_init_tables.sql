CREATE DATABASE IF NOT EXISTS `attendance_tracker` DEFAULT CHARACTER SET latin1 COLLATE latin1_danish_ci;

DROP TABLE IF EXISTS `attendances`;
DROP TABLE IF EXISTS `sessions`;

CREATE TABLE sessions (
    id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(255) NOT NULL,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    duration INT NOT NULL,
    active BOOLEAN DEFAULT TRUE
);

CREATE TABLE `attendances` (
    `id` INT  AUTO_INCREMENT PRIMARY KEY,
    `session_id` INT  NOT NULL,
    `roll` VARCHAR(255) NOT NULL,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (`session_id`) REFERENCES `sessions`(`id`)
);
