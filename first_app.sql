/*
 Navicat Premium Data Transfer

 Source Server         : Local
 Source Server Type    : MySQL
 Source Server Version : 50724
 Source Host           : localhost:3306
 Source Schema         : first_app

 Target Server Type    : MySQL
 Target Server Version : 50724
 File Encoding         : 65001

 Date: 09/11/2021 13:52:03
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for categories
-- ----------------------------
DROP TABLE IF EXISTS `categories`;
CREATE TABLE `categories`  (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `categories_name_unique`(`name`) USING BTREE,
  UNIQUE INDEX `categories_slug_unique`(`slug`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of categories
-- ----------------------------
INSERT INTO `categories` VALUES (1, 'Web Programming', 'web-programming', '2021-11-03 06:58:04', '2021-11-03 06:58:04');
INSERT INTO `categories` VALUES (2, 'personal', 'personal', '2021-11-03 06:58:04', '2021-11-03 06:58:04');

-- ----------------------------
-- Table structure for failed_jobs
-- ----------------------------
DROP TABLE IF EXISTS `failed_jobs`;
CREATE TABLE `failed_jobs`  (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `uuid` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0),
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `failed_jobs_uuid_unique`(`uuid`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for migrations
-- ----------------------------
DROP TABLE IF EXISTS `migrations`;
CREATE TABLE `migrations`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 7 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of migrations
-- ----------------------------
INSERT INTO `migrations` VALUES (1, '2014_10_12_000000_create_users_table', 1);
INSERT INTO `migrations` VALUES (2, '2014_10_12_100000_create_password_resets_table', 1);
INSERT INTO `migrations` VALUES (3, '2019_08_19_000000_create_failed_jobs_table', 1);
INSERT INTO `migrations` VALUES (4, '2019_12_14_000001_create_personal_access_tokens_table', 1);
INSERT INTO `migrations` VALUES (5, '2021_10_27_035528_create_posts_table', 1);
INSERT INTO `migrations` VALUES (6, '2021_10_28_025644_create_categories_table', 1);

-- ----------------------------
-- Table structure for password_resets
-- ----------------------------
DROP TABLE IF EXISTS `password_resets`;
CREATE TABLE `password_resets`  (
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp(0) NULL DEFAULT NULL,
  INDEX `password_resets_email_index`(`email`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for personal_access_tokens
-- ----------------------------
DROP TABLE IF EXISTS `personal_access_tokens`;
CREATE TABLE `personal_access_tokens`  (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `tokenable_type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL,
  `last_used_at` timestamp(0) NULL DEFAULT NULL,
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `personal_access_tokens_token_unique`(`token`) USING BTREE,
  INDEX `personal_access_tokens_tokenable_type_tokenable_id_index`(`tokenable_type`, `tokenable_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for posts
-- ----------------------------
DROP TABLE IF EXISTS `posts`;
CREATE TABLE `posts`  (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `category_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `excerpt` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `body` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `publish_at` timestamp(0) NULL DEFAULT NULL,
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `posts_slug_unique`(`slug`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 5 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of posts
-- ----------------------------
INSERT INTO `posts` VALUES (1, 1, 1, 'Judul Pertama', 'judul-pertama', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Libero dolore nisi ipsum atque dolorem obcaecati nam esse eum corporis et deserunt maiore', '<p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Libero dolore nisi ipsum atque dolorem obcaecati nam esse eum corporis et deserunt maiores deleniti, odit veniam hic nobis exercitationem recusandae dolor sint vero vitae pariatur sequi adipisci sit.</p><p>Nesciunt non qui perspiciatis error similique harum doloremque, vero perferendis laudantium, nulla iste, voluptatibus placeat! Rem a quisquam libero id repellendus nulla suscipit inventore laudantium similique eos doloribus earum dicta aspernatur accusantium totam, quam sint.</p><p>Maxime possimus vel nulla ea, earum est, quos provident recusandae error fuga ipsa dolore nobis tenetur ullam doloribus deleniti delectus quasi ducimus aperiam nisi? Voluptatibus, hic! Deserunt, tenetur?</p>', NULL, '2021-11-03 06:58:04', '2021-11-03 06:58:04');
INSERT INTO `posts` VALUES (2, 1, 1, 'Judul Kedua', 'judul-kedua', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Libero dolore nisi ipsum atque dolorem obcaecati nam esse eum corporis et deserunt maiore', '<p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Libero dolore nisi ipsum atque dolorem obcaecati nam esse eum corporis et deserunt maiores deleniti, odit veniam hic nobis exercitationem recusandae dolor sint vero vitae pariatur sequi adipisci sit.</p><p>Nesciunt non qui perspiciatis error similique harum doloremque, vero perferendis laudantium, nulla iste, voluptatibus placeat! Rem a quisquam libero id repellendus nulla suscipit inventore laudantium similique eos doloribus earum dicta aspernatur accusantium totam, quam sint.</p><p>Maxime possimus vel nulla ea, earum est, quos provident recusandae error fuga ipsa dolore nobis tenetur ullam doloribus deleniti delectus quasi ducimus aperiam nisi? Voluptatibus, hic! Deserunt, tenetur?</p>', NULL, '2021-11-03 06:58:04', '2021-11-03 06:58:04');
INSERT INTO `posts` VALUES (3, 2, 2, 'Judul Ketiga', 'judul-ketiga', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Libero dolore nisi ipsum atque dolorem obcaecati nam esse eum corporis et deserunt maiore', '<p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Libero dolore nisi ipsum atque dolorem obcaecati nam esse eum corporis et deserunt maiores deleniti, odit veniam hic nobis exercitationem recusandae dolor sint vero vitae pariatur sequi adipisci sit.</p><p>Nesciunt non qui perspiciatis error similique harum doloremque, vero perferendis laudantium, nulla iste, voluptatibus placeat! Rem a quisquam libero id repellendus nulla suscipit inventore laudantium similique eos doloribus earum dicta aspernatur accusantium totam, quam sint.</p><p>Maxime possimus vel nulla ea, earum est, quos provident recusandae error fuga ipsa dolore nobis tenetur ullam doloribus deleniti delectus quasi ducimus aperiam nisi? Voluptatibus, hic! Deserunt, tenetur?</p>', NULL, '2021-11-03 06:58:04', '2021-11-03 06:58:04');
INSERT INTO `posts` VALUES (4, 2, 2, 'Judul Keempat', 'judul-keempat', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Libero dolore nisi ipsum atque dolorem obcaecati nam esse eum corporis et deserunt maiore', '<p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Libero dolore nisi ipsum atque dolorem obcaecati nam esse eum corporis et deserunt maiores deleniti, odit veniam hic nobis exercitationem recusandae dolor sint vero vitae pariatur sequi adipisci sit.</p><p>Nesciunt non qui perspiciatis error similique harum doloremque, vero perferendis laudantium, nulla iste, voluptatibus placeat! Rem a quisquam libero id repellendus nulla suscipit inventore laudantium similique eos doloribus earum dicta aspernatur accusantium totam, quam sint.</p><p>Maxime possimus vel nulla ea, earum est, quos provident recusandae error fuga ipsa dolore nobis tenetur ullam doloribus deleniti delectus quasi ducimus aperiam nisi? Voluptatibus, hic! Deserunt, tenetur?</p>', NULL, '2021-11-03 06:58:05', '2021-11-03 06:58:05');

-- ----------------------------
-- Table structure for users
-- ----------------------------
DROP TABLE IF EXISTS `users`;
CREATE TABLE `users`  (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp(0) NULL DEFAULT NULL,
  `password` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `users_email_unique`(`email`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of users
-- ----------------------------
INSERT INTO `users` VALUES (1, 'Irfan Priyadi Nurfauzi', 'irfan@gmail.com', NULL, '$2y$10$OR7Kjo9gSeh2z.4RfeEl.uNv.H8a6skGcfE8T2lAsBk9jw5Aq3WF.', NULL, '2021-11-03 06:58:04', '2021-11-03 06:58:04');
INSERT INTO `users` VALUES (2, 'Doddy Cahyadi', 'doddsky@gmail.com', NULL, '$2y$10$CFEFs3Shq4KjWZBjIWAk6OasudDa6xACp68oJ4cRw9qCn2OfgvoRe', NULL, '2021-11-03 06:58:04', '2021-11-03 06:58:04');

SET FOREIGN_KEY_CHECKS = 1;
