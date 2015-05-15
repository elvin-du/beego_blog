CREATE DATABASE IF NOT EXISTS `beego_blog` DEFAULT CHARSET SET utf-8;
USE `beego_blog`;

DROP TABLE IF EXISTS `articles`;
CREATE TABLE `articles`(
	`id` INT UNSIGNED NOT NULL AUTO_INCREMENT,
	`title` VARCHAR(100) NOT NULL,
	`content`  TEXT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
	`boundary` VARCHAR(100) NOT NULL,
	`tag_id` INT UNSIGNED NOT NULL DEFAULT 0,
	`created_at` BIGINT(20) NOT NULL,
	`updated_at` BIGINT(20) NOT NULL,
	PRIMARY KEY (`id`),
	KEY `articles_created_at` (`created_at`)
)ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

DROP TABLE IF EXISTS `comments`;
CREATE TABLE `comments`(
	`id` INT UNSIGNED NOT NULL AUTO_INCREMENT,
	`article_id` INT UNSIGNED NOT NULL,
	`content`  TEXT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
	`name` VARCHAR(50) NOT NULL,
	`email` VARCHAR(50) NOT NULL,
	`ip` VARCHAR(32) NOT NULL,
	`created_at` BIGINT(20) NOT NULL,
	PRIMARY KEY(`id`),
	KEY `articles_created_at` (`created_at`)
)ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

DROP TABLE IF EXISTS `tags`;
CREATE TABLE `tags`(
	`id` INT UNSIGNED NOT NULL AUTO_INCREMENT,
	`content	` VARCHAR(100) NOT NULL,
	PRIMARY KEY (`id`)
)ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

DROP TABLE IF EXISTS `read_count`;
CREATE TABLE `read_count`(
	`article_id` INT UNSIGNED NOT NULL,
	`count` INT UNSIGNED NOT NULL DEFAULT 0,
	PRIMARY KEY(`article_id`)
)ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

DROP TABLE IF EXISTS `files`;
CREATE TABLE `files`(
	`id` INT UNSIGNED NOT NULL AUTO_INCREMENT,
	`content_type` VARCHAR(32) NOT NULL,
	`size` INT UNSIGNED NOT NULL DEFAULT 0,
	`hash` VARCHAR(100) NOT NULL,
	`created_at` BIGINT(20) NOT NULL,
	PRIMARY KEY(`id`)
)ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


--for test
INSERT INTO `articles`(`title`,`content`,`boundary`,`tag_id`,`created_at`,`updated_at`)  VALUES('面對極度物質的時代','現代人面對極度物質的時代，但也同時面臨心靈最貧乏空虛的年代。許多人藉助各種方式尋找心理寄託、遍訪各方大師求指點迷津…然而當面對煩惱罣礙，卻依然束手就範！

黃庭禪創辦人─張慶祥講師，本著為往聖繼絕學的理念，帶領一群志工胼手胝足，於中嶺山草莽中開山闢路，建立中嶺山禪院，創辦黃庭靜禪研修課程，宣講源自本心清靜的聖賢之道。每當看到一張張迷惘無助的臉龐，在黃庭靜禪研修課程中找到清淨自在的本心。讓我們更堅定黃庭絕學是當今人類超脫煩惱罣礙的不二法門，對黃庭禪學的推廣宣揚益覺刻不容緩。

然而這樣的心靈希望工程，絕非僅憑少數人可以成就的，我們衷心期盼您的支持，讓黃庭禪學得以深入人心，帶領現代眾生走向解脫煩惱罣礙的心靈淨土。', '=ILOVEYOULQ=',0,123456789,123456789);
