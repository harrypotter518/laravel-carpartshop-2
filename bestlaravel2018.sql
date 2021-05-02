/*
 Navicat Premium Data Transfer

 Source Server         : chmdb
 Source Server Type    : MySQL
 Source Server Version : 100417
 Source Host           : localhost:3306
 Source Schema         : bestlaravel2018

 Target Server Type    : MySQL
 Target Server Version : 100417
 File Encoding         : 65001

 Date: 27/03/2021 13:28:58
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for cart
-- ----------------------------
DROP TABLE IF EXISTS `cart`;
CREATE TABLE `cart`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `products_id` int(11) NOT NULL,
  `product_name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_code` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_color` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `size` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` double(8, 2) NOT NULL,
  `quantity` int(11) NOT NULL,
  `user_email` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `session_id` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 56 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of cart
-- ----------------------------
INSERT INTO `cart` VALUES (41, 31, 'House', 'SKU-House2', 'White and Brown', '10*10', 20.00, 2, 'weshare@gmail.com', 'bKnMoW6lH0eA6ciYTU47tgeayw5CFUzBkjkBb3F5', '2018-12-07 03:17:37', '2018-12-07 03:17:37');
INSERT INTO `cart` VALUES (42, 34, 'Lenovo ThinkPad', 'SKU-Lenovo X1', 'Black', '15 inch', 10.00, 2, 'weshare@gmail.com', 'bKnMoW6lH0eA6ciYTU47tgeayw5CFUzBkjkBb3F5', '2018-12-07 03:18:26', '2018-12-07 03:18:26');
INSERT INTO `cart` VALUES (40, 30, 'Link House New LC2', 'SKU-Link House1', 'Gray', 'Small', 10.00, 5, 'weshare@gmail.com', 'SFoV6rkDUv7y5F81nKOo5H3u0ERK3EYkcBQhUrcm', '2018-12-07 02:50:30', '2018-12-07 02:50:30');
INSERT INTO `cart` VALUES (39, 31, 'House', 'SKU-House1', 'White and Brown', '5*20', 25.00, 4, 'weshare@gmail.com', 'SFoV6rkDUv7y5F81nKOo5H3u0ERK3EYkcBQhUrcm', '2018-12-07 02:49:50', '2018-12-07 02:49:50');
INSERT INTO `cart` VALUES (36, 33, 'Cole Haan', 'SKU-Haan1', 'Brown', '25', 12.00, 1, 'weshare@gmail.com', 'OrHCEFHcACdGNXet3m2jVbzlJS0VybkkeknXXilx', '2018-12-06 11:18:10', '2018-12-06 11:18:10');
INSERT INTO `cart` VALUES (37, 32, 'Vionic Shoes Brand', 'SKU-Vionic3', 'All Colors', '30', 20.00, 1, 'weshare@gmail.com', 'OrHCEFHcACdGNXet3m2jVbzlJS0VybkkeknXXilx', '2018-12-06 11:30:33', '2018-12-06 11:30:33');
INSERT INTO `cart` VALUES (43, 35, 'Cloths', 'SKU-Red', 'Black', 'S', 2.00, 5, 'weshare@gmail.com', 'bKnMoW6lH0eA6ciYTU47tgeayw5CFUzBkjkBb3F5', '2018-12-07 03:18:31', '2018-12-07 03:18:31');
INSERT INTO `cart` VALUES (46, 895, 'TOYOTA Parts: 0400049260', 'Japan', 'Black', '8.5*5.5*0.8', 0.94, 14, 'weshare@gmail.com', 'h2QHRs4MMM9I6XKQi5rbniTPY9sKP0jNLkLWB0mY', '2021-03-29 05:09:14', '2021-03-29 05:09:14');
INSERT INTO `cart` VALUES (47, 852, 'TOYOTA Parts: 0400045141', 'Japan', 'Black', '19*15*7.5', 27.93, 2, 'weshare@gmail.com', 'h2QHRs4MMM9I6XKQi5rbniTPY9sKP0jNLkLWB0mY', '2021-03-29 05:09:55', '2021-03-29 05:09:55');
INSERT INTO `cart` VALUES (55, 39, 'TOYOTA Parts: 04000-05333', 'Japan', 'Black', '1.8*1.8*0.2', 0.09, 15, 'weshare@gmail.com', 'tDX7wcHE6NeUuKJ66jBTZnrUAHPWuvat164mHLVG', '2021-03-29 14:12:11', '2021-03-29 14:12:11');

-- ----------------------------
-- Table structure for categories
-- ----------------------------
DROP TABLE IF EXISTS `categories`;
CREATE TABLE `categories`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `parent_id` int(11) NULL DEFAULT NULL,
  `name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL,
  `url` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 0,
  `remember_token` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `slug`(`name`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 29 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of categories
-- ----------------------------
INSERT INTO `categories` VALUES (12, 0, 'Car', 'Car Category', 'http://wornnarith.cambosoft.com', 1, NULL, '2018-10-23 06:32:33', '2018-11-16 11:00:00');
INSERT INTO `categories` VALUES (10, 0, 'House', 'House Category', 'http://wornnarith.cambosoft.com', 1, NULL, '2018-10-23 06:31:29', '2018-11-16 11:05:53');
INSERT INTO `categories` VALUES (11, 0, 'Shoes', 'Shoes Category', 'http://wornnarith.cambosoft.com', 1, NULL, '2018-10-23 06:32:14', '2018-11-16 11:07:15');
INSERT INTO `categories` VALUES (13, 0, 'Computer', 'Computer Category', 'http://wornnarith.cambosoft.com', 1, NULL, '2018-10-23 06:33:26', '2018-11-16 11:05:43');
INSERT INTO `categories` VALUES (14, 0, 'Cloths', 'Cloths Category', 'http://wornnarith.cambosoft.com', 1, NULL, '2018-10-23 06:34:31', '2018-11-16 11:05:18');
INSERT INTO `categories` VALUES (15, 12, 'Toyota', 'Toyota Sub Category of Car', 'http://wornnarith.cambosoft.com', 1, NULL, '2018-10-23 06:35:08', '2018-11-16 10:54:49');
INSERT INTO `categories` VALUES (16, 10, 'Link House', 'Link House Sub Category', 'http://wornnarith.cambosoft.com', 1, NULL, '2018-10-23 06:56:56', '2018-11-16 11:07:05');
INSERT INTO `categories` VALUES (17, 11, 'Man Shoes', 'Man Shoes Sub Category of Shoes', 'http://wornnarith.cambosoft.com', 1, NULL, '2018-10-23 06:58:13', '2018-11-16 10:53:44');
INSERT INTO `categories` VALUES (25, 0, 'my horsedsf', 'sdfsdf', 'http://wornnarith.cambosoft.com', 1, NULL, NULL, NULL);
INSERT INTO `categories` VALUES (27, 12, 'Car parts', 'These are parts for TOYOTA', 'http://wornnarith.cambosoft.com', 1, NULL, '2021-03-28 04:39:02', '2021-03-28 04:40:27');

-- ----------------------------
-- Table structure for countries
-- ----------------------------
DROP TABLE IF EXISTS `countries`;
CREATE TABLE `countries`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `country_code` varchar(2) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `country_name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 298 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of countries
-- ----------------------------
INSERT INTO `countries` VALUES (2, 'AL', 'Albania', NULL, NULL);
INSERT INTO `countries` VALUES (3, 'DZ', 'Algeria', NULL, NULL);
INSERT INTO `countries` VALUES (4, 'DS', 'American Samoa', NULL, NULL);
INSERT INTO `countries` VALUES (5, 'AD', 'Andorra', NULL, NULL);
INSERT INTO `countries` VALUES (6, 'AO', 'Angola', NULL, NULL);
INSERT INTO `countries` VALUES (7, 'AI', 'Anguilla', NULL, NULL);
INSERT INTO `countries` VALUES (8, 'AQ', 'Antarctica', NULL, NULL);
INSERT INTO `countries` VALUES (9, 'AG', 'Antigua and Barbuda', NULL, NULL);
INSERT INTO `countries` VALUES (10, 'AR', 'Argentina', NULL, NULL);
INSERT INTO `countries` VALUES (11, 'AM', 'Armenia', NULL, NULL);
INSERT INTO `countries` VALUES (12, 'AW', 'Aruba', NULL, NULL);
INSERT INTO `countries` VALUES (13, 'AU', 'Australia', NULL, NULL);
INSERT INTO `countries` VALUES (14, 'AT', 'Austria', NULL, NULL);
INSERT INTO `countries` VALUES (15, 'AZ', 'Azerbaijan', NULL, NULL);
INSERT INTO `countries` VALUES (16, 'BS', 'Bahamas', NULL, NULL);
INSERT INTO `countries` VALUES (17, 'BH', 'Bahrain', NULL, NULL);
INSERT INTO `countries` VALUES (18, 'BD', 'Bangladesh', NULL, NULL);
INSERT INTO `countries` VALUES (19, 'BB', 'Barbados', NULL, NULL);
INSERT INTO `countries` VALUES (20, 'BY', 'Belarus', NULL, NULL);
INSERT INTO `countries` VALUES (21, 'BE', 'Belgium', NULL, NULL);
INSERT INTO `countries` VALUES (22, 'BZ', 'Belize', NULL, NULL);
INSERT INTO `countries` VALUES (23, 'BJ', 'Benin', NULL, NULL);
INSERT INTO `countries` VALUES (24, 'BM', 'Bermuda', NULL, NULL);
INSERT INTO `countries` VALUES (25, 'BT', 'Bhutan', NULL, NULL);
INSERT INTO `countries` VALUES (26, 'BO', 'Bolivia', NULL, NULL);
INSERT INTO `countries` VALUES (27, 'BA', 'Bosnia and Herzegovina', NULL, NULL);
INSERT INTO `countries` VALUES (28, 'BW', 'Botswana', NULL, NULL);
INSERT INTO `countries` VALUES (29, 'BV', 'Bouvet Island', NULL, NULL);
INSERT INTO `countries` VALUES (30, 'BR', 'Brazil', NULL, NULL);
INSERT INTO `countries` VALUES (31, 'IO', 'British Indian Ocean Territory', NULL, NULL);
INSERT INTO `countries` VALUES (32, 'BN', 'Brunei Darussalam', NULL, NULL);
INSERT INTO `countries` VALUES (33, 'BG', 'Bulgaria', NULL, NULL);
INSERT INTO `countries` VALUES (34, 'BF', 'Burkina Faso', NULL, NULL);
INSERT INTO `countries` VALUES (35, 'BI', 'Burundi', NULL, NULL);
INSERT INTO `countries` VALUES (36, 'KH', 'Cambodia', NULL, NULL);
INSERT INTO `countries` VALUES (37, 'CM', 'Cameroon', NULL, NULL);
INSERT INTO `countries` VALUES (38, 'CA', 'Canada', NULL, NULL);
INSERT INTO `countries` VALUES (39, 'CV', 'Cape Verde', NULL, NULL);
INSERT INTO `countries` VALUES (40, 'KY', 'Cayman Islands', NULL, NULL);
INSERT INTO `countries` VALUES (41, 'CF', 'Central African Republic', NULL, NULL);
INSERT INTO `countries` VALUES (42, 'TD', 'Chad', NULL, NULL);
INSERT INTO `countries` VALUES (43, 'CL', 'Chile', NULL, NULL);
INSERT INTO `countries` VALUES (44, 'CN', 'China', NULL, NULL);
INSERT INTO `countries` VALUES (45, 'CX', 'Christmas Island', NULL, NULL);
INSERT INTO `countries` VALUES (46, 'CC', 'Cocos (Keeling) Islands', NULL, NULL);
INSERT INTO `countries` VALUES (47, 'CO', 'Colombia', NULL, NULL);
INSERT INTO `countries` VALUES (48, 'KM', 'Comoros', NULL, NULL);
INSERT INTO `countries` VALUES (49, 'CG', 'Congo', NULL, NULL);
INSERT INTO `countries` VALUES (50, 'CK', 'Cook Islands', NULL, NULL);
INSERT INTO `countries` VALUES (51, 'CR', 'Costa Rica', NULL, NULL);
INSERT INTO `countries` VALUES (52, 'AF', 'Afghanistan', NULL, NULL);
INSERT INTO `countries` VALUES (53, 'AL', 'Albania', NULL, NULL);
INSERT INTO `countries` VALUES (54, 'DZ', 'Algeria', NULL, NULL);
INSERT INTO `countries` VALUES (55, 'DS', 'American Samoa', NULL, NULL);
INSERT INTO `countries` VALUES (56, 'AD', 'Andorra', NULL, NULL);
INSERT INTO `countries` VALUES (57, 'AO', 'Angola', NULL, NULL);
INSERT INTO `countries` VALUES (58, 'AI', 'Anguilla', NULL, NULL);
INSERT INTO `countries` VALUES (59, 'AQ', 'Antarctica', NULL, NULL);
INSERT INTO `countries` VALUES (60, 'AG', 'Antigua and Barbuda', NULL, NULL);
INSERT INTO `countries` VALUES (61, 'AR', 'Argentina', NULL, NULL);
INSERT INTO `countries` VALUES (62, 'AM', 'Armenia', NULL, NULL);
INSERT INTO `countries` VALUES (63, 'AW', 'Aruba', NULL, NULL);
INSERT INTO `countries` VALUES (64, 'AU', 'Australia', NULL, NULL);
INSERT INTO `countries` VALUES (65, 'AT', 'Austria', NULL, NULL);
INSERT INTO `countries` VALUES (66, 'AZ', 'Azerbaijan', NULL, NULL);
INSERT INTO `countries` VALUES (67, 'BS', 'Bahamas', NULL, NULL);
INSERT INTO `countries` VALUES (68, 'BH', 'Bahrain', NULL, NULL);
INSERT INTO `countries` VALUES (69, 'BD', 'Bangladesh', NULL, NULL);
INSERT INTO `countries` VALUES (70, 'BB', 'Barbados', NULL, NULL);
INSERT INTO `countries` VALUES (71, 'BY', 'Belarus', NULL, NULL);
INSERT INTO `countries` VALUES (72, 'BE', 'Belgium', NULL, NULL);
INSERT INTO `countries` VALUES (73, 'BZ', 'Belize', NULL, NULL);
INSERT INTO `countries` VALUES (74, 'BJ', 'Benin', NULL, NULL);
INSERT INTO `countries` VALUES (75, 'BM', 'Bermuda', NULL, NULL);
INSERT INTO `countries` VALUES (76, 'BT', 'Bhutan', NULL, NULL);
INSERT INTO `countries` VALUES (77, 'BO', 'Bolivia', NULL, NULL);
INSERT INTO `countries` VALUES (78, 'BA', 'Bosnia and Herzegovina', NULL, NULL);
INSERT INTO `countries` VALUES (79, 'BW', 'Botswana', NULL, NULL);
INSERT INTO `countries` VALUES (80, 'BV', 'Bouvet Island', NULL, NULL);
INSERT INTO `countries` VALUES (81, 'BR', 'Brazil', NULL, NULL);
INSERT INTO `countries` VALUES (82, 'IO', 'British Indian Ocean Territory', NULL, NULL);
INSERT INTO `countries` VALUES (83, 'BN', 'Brunei Darussalam', NULL, NULL);
INSERT INTO `countries` VALUES (84, 'BG', 'Bulgaria', NULL, NULL);
INSERT INTO `countries` VALUES (85, 'BF', 'Burkina Faso', NULL, NULL);
INSERT INTO `countries` VALUES (86, 'BI', 'Burundi', NULL, NULL);
INSERT INTO `countries` VALUES (87, 'KH', 'Cambodia', NULL, NULL);
INSERT INTO `countries` VALUES (88, 'CM', 'Cameroon', NULL, NULL);
INSERT INTO `countries` VALUES (89, 'CA', 'Canada', NULL, NULL);
INSERT INTO `countries` VALUES (90, 'CV', 'Cape Verde', NULL, NULL);
INSERT INTO `countries` VALUES (91, 'KY', 'Cayman Islands', NULL, NULL);
INSERT INTO `countries` VALUES (92, 'CF', 'Central African Republic', NULL, NULL);
INSERT INTO `countries` VALUES (93, 'TD', 'Chad', NULL, NULL);
INSERT INTO `countries` VALUES (94, 'CL', 'Chile', NULL, NULL);
INSERT INTO `countries` VALUES (95, 'CN', 'China', NULL, NULL);
INSERT INTO `countries` VALUES (96, 'CX', 'Christmas Island', NULL, NULL);
INSERT INTO `countries` VALUES (97, 'CC', 'Cocos (Keeling) Islands', NULL, NULL);
INSERT INTO `countries` VALUES (98, 'CO', 'Colombia', NULL, NULL);
INSERT INTO `countries` VALUES (99, 'KM', 'Comoros', NULL, NULL);
INSERT INTO `countries` VALUES (100, 'CG', 'Congo', NULL, NULL);
INSERT INTO `countries` VALUES (101, 'CK', 'Cook Islands', NULL, NULL);
INSERT INTO `countries` VALUES (102, 'CR', 'Costa Rica', NULL, NULL);
INSERT INTO `countries` VALUES (103, 'HR', 'Croatia (Hrvatska)', NULL, NULL);
INSERT INTO `countries` VALUES (104, 'CU', 'Cuba', NULL, NULL);
INSERT INTO `countries` VALUES (105, 'CY', 'Cyprus', NULL, NULL);
INSERT INTO `countries` VALUES (106, 'CZ', 'Czech Republic', NULL, NULL);
INSERT INTO `countries` VALUES (107, 'DK', 'Denmark', NULL, NULL);
INSERT INTO `countries` VALUES (108, 'DJ', 'Djibouti', NULL, NULL);
INSERT INTO `countries` VALUES (109, 'DM', 'Dominica', NULL, NULL);
INSERT INTO `countries` VALUES (110, 'DO', 'Dominican Republic', NULL, NULL);
INSERT INTO `countries` VALUES (111, 'TP', 'East Timor', NULL, NULL);
INSERT INTO `countries` VALUES (112, 'EC', 'Ecuador', NULL, NULL);
INSERT INTO `countries` VALUES (113, 'EG', 'Egypt', NULL, NULL);
INSERT INTO `countries` VALUES (114, 'SV', 'El Salvador', NULL, NULL);
INSERT INTO `countries` VALUES (115, 'GQ', 'Equatorial Guinea', NULL, NULL);
INSERT INTO `countries` VALUES (116, 'ER', 'Eritrea', NULL, NULL);
INSERT INTO `countries` VALUES (117, 'EE', 'Estonia', NULL, NULL);
INSERT INTO `countries` VALUES (118, 'ET', 'Ethiopia', NULL, NULL);
INSERT INTO `countries` VALUES (119, 'FK', 'Falkland Islands (Malvinas)', NULL, NULL);
INSERT INTO `countries` VALUES (120, 'FO', 'Faroe Islands', NULL, NULL);
INSERT INTO `countries` VALUES (121, 'FJ', 'Fiji', NULL, NULL);
INSERT INTO `countries` VALUES (122, 'FI', 'Finland', NULL, NULL);
INSERT INTO `countries` VALUES (123, 'FR', 'France', NULL, NULL);
INSERT INTO `countries` VALUES (124, 'FX', 'France, Metropolitan', NULL, NULL);
INSERT INTO `countries` VALUES (125, 'GF', 'French Guiana', NULL, NULL);
INSERT INTO `countries` VALUES (126, 'PF', 'French Polynesia', NULL, NULL);
INSERT INTO `countries` VALUES (127, 'TF', 'French Southern Territories', NULL, NULL);
INSERT INTO `countries` VALUES (128, 'GA', 'Gabon', NULL, NULL);
INSERT INTO `countries` VALUES (129, 'GM', 'Gambia', NULL, NULL);
INSERT INTO `countries` VALUES (130, 'GE', 'Georgia', NULL, NULL);
INSERT INTO `countries` VALUES (131, 'DE', 'Germany', NULL, NULL);
INSERT INTO `countries` VALUES (132, 'GH', 'Ghana', NULL, NULL);
INSERT INTO `countries` VALUES (133, 'GI', 'Gibraltar', NULL, NULL);
INSERT INTO `countries` VALUES (134, 'GK', 'Guernsey', NULL, NULL);
INSERT INTO `countries` VALUES (135, 'GR', 'Greece', NULL, NULL);
INSERT INTO `countries` VALUES (136, 'GL', 'Greenland', NULL, NULL);
INSERT INTO `countries` VALUES (137, 'GD', 'Grenada', NULL, NULL);
INSERT INTO `countries` VALUES (138, 'GP', 'Guadeloupe', NULL, NULL);
INSERT INTO `countries` VALUES (139, 'GU', 'Guam', NULL, NULL);
INSERT INTO `countries` VALUES (140, 'GT', 'Guatemala', NULL, NULL);
INSERT INTO `countries` VALUES (141, 'GN', 'Guinea', NULL, NULL);
INSERT INTO `countries` VALUES (142, 'GW', 'Guinea-Bissau', NULL, NULL);
INSERT INTO `countries` VALUES (143, 'GY', 'Guyana', NULL, NULL);
INSERT INTO `countries` VALUES (144, 'HT', 'Haiti', NULL, NULL);
INSERT INTO `countries` VALUES (145, 'HM', 'Heard and Mc Donald Islands', NULL, NULL);
INSERT INTO `countries` VALUES (146, 'HN', 'Honduras', NULL, NULL);
INSERT INTO `countries` VALUES (147, 'HK', 'Hong Kong', NULL, NULL);
INSERT INTO `countries` VALUES (148, 'HU', 'Hungary', NULL, NULL);
INSERT INTO `countries` VALUES (149, 'IS', 'Iceland', NULL, NULL);
INSERT INTO `countries` VALUES (150, 'IN', 'India', NULL, NULL);
INSERT INTO `countries` VALUES (151, 'IM', 'Isle of Man', NULL, NULL);
INSERT INTO `countries` VALUES (152, 'ID', 'Indonesia', NULL, NULL);
INSERT INTO `countries` VALUES (153, 'IR', 'Iran (Islamic Republic of)', NULL, NULL);
INSERT INTO `countries` VALUES (154, 'IQ', 'Iraq', NULL, NULL);
INSERT INTO `countries` VALUES (155, 'IE', 'Ireland', NULL, NULL);
INSERT INTO `countries` VALUES (156, 'IL', 'Israel', NULL, NULL);
INSERT INTO `countries` VALUES (157, 'IT', 'Italy', NULL, NULL);
INSERT INTO `countries` VALUES (158, 'CI', 'Ivory Coast', NULL, NULL);
INSERT INTO `countries` VALUES (159, 'JE', 'Jersey', NULL, NULL);
INSERT INTO `countries` VALUES (160, 'JM', 'Jamaica', NULL, NULL);
INSERT INTO `countries` VALUES (161, 'JP', 'Japan', NULL, NULL);
INSERT INTO `countries` VALUES (162, 'JO', 'Jordan', NULL, NULL);
INSERT INTO `countries` VALUES (163, 'KZ', 'Kazakhstan', NULL, NULL);
INSERT INTO `countries` VALUES (164, 'KE', 'Kenya', NULL, NULL);
INSERT INTO `countries` VALUES (165, 'KI', 'Kiribati', NULL, NULL);
INSERT INTO `countries` VALUES (166, 'KP', 'Korea, Democratic People\'s Republic of', NULL, NULL);
INSERT INTO `countries` VALUES (167, 'KR', 'Korea, Republic of', NULL, NULL);
INSERT INTO `countries` VALUES (168, 'XK', 'Kosovo', NULL, NULL);
INSERT INTO `countries` VALUES (169, 'KW', 'Kuwait', NULL, NULL);
INSERT INTO `countries` VALUES (170, 'KG', 'Kyrgyzstan', NULL, NULL);
INSERT INTO `countries` VALUES (171, 'LA', 'Lao People\'s Democratic Republic', NULL, NULL);
INSERT INTO `countries` VALUES (172, 'LV', 'Latvia', NULL, NULL);
INSERT INTO `countries` VALUES (173, 'LB', 'Lebanon', NULL, NULL);
INSERT INTO `countries` VALUES (174, 'LS', 'Lesotho', NULL, NULL);
INSERT INTO `countries` VALUES (175, 'LR', 'Liberia', NULL, NULL);
INSERT INTO `countries` VALUES (176, 'LY', 'Libyan Arab Jamahiriya', NULL, NULL);
INSERT INTO `countries` VALUES (177, 'LI', 'Liechtenstein', NULL, NULL);
INSERT INTO `countries` VALUES (178, 'LT', 'Lithuania', NULL, NULL);
INSERT INTO `countries` VALUES (179, 'LU', 'Luxembourg', NULL, NULL);
INSERT INTO `countries` VALUES (180, 'MO', 'Macau', NULL, NULL);
INSERT INTO `countries` VALUES (181, 'MK', 'Macedonia', NULL, NULL);
INSERT INTO `countries` VALUES (182, 'MG', 'Madagascar', NULL, NULL);
INSERT INTO `countries` VALUES (183, 'MW', 'Malawi', NULL, NULL);
INSERT INTO `countries` VALUES (184, 'MY', 'Malaysia', NULL, NULL);
INSERT INTO `countries` VALUES (185, 'MV', 'Maldives', NULL, NULL);
INSERT INTO `countries` VALUES (186, 'ML', 'Mali', NULL, NULL);
INSERT INTO `countries` VALUES (187, 'MT', 'Malta', NULL, NULL);
INSERT INTO `countries` VALUES (188, 'MH', 'Marshall Islands', NULL, NULL);
INSERT INTO `countries` VALUES (189, 'MQ', 'Martinique', NULL, NULL);
INSERT INTO `countries` VALUES (190, 'MR', 'Mauritania', NULL, NULL);
INSERT INTO `countries` VALUES (191, 'MU', 'Mauritius', NULL, NULL);
INSERT INTO `countries` VALUES (192, 'TY', 'Mayotte', NULL, NULL);
INSERT INTO `countries` VALUES (193, 'MX', 'Mexico', NULL, NULL);
INSERT INTO `countries` VALUES (194, 'FM', 'Micronesia, Federated States of', NULL, NULL);
INSERT INTO `countries` VALUES (195, 'MD', 'Moldova, Republic of', NULL, NULL);
INSERT INTO `countries` VALUES (196, 'MC', 'Monaco', NULL, NULL);
INSERT INTO `countries` VALUES (197, 'MN', 'Mongolia', NULL, NULL);
INSERT INTO `countries` VALUES (198, 'ME', 'Montenegro', NULL, NULL);
INSERT INTO `countries` VALUES (199, 'MS', 'Montserrat', NULL, NULL);
INSERT INTO `countries` VALUES (200, 'MA', 'Morocco', NULL, NULL);
INSERT INTO `countries` VALUES (201, 'MZ', 'Mozambique', NULL, NULL);
INSERT INTO `countries` VALUES (202, 'MM', 'Myanmar', NULL, NULL);
INSERT INTO `countries` VALUES (203, 'NA', 'Namibia', NULL, NULL);
INSERT INTO `countries` VALUES (204, 'NR', 'Nauru', NULL, NULL);
INSERT INTO `countries` VALUES (205, 'NP', 'Nepal', NULL, NULL);
INSERT INTO `countries` VALUES (206, 'NL', 'Netherlands', NULL, NULL);
INSERT INTO `countries` VALUES (207, 'AN', 'Netherlands Antilles', NULL, NULL);
INSERT INTO `countries` VALUES (208, 'NC', 'New Caledonia', NULL, NULL);
INSERT INTO `countries` VALUES (209, 'NZ', 'New Zealand', NULL, NULL);
INSERT INTO `countries` VALUES (210, 'NI', 'Nicaragua', NULL, NULL);
INSERT INTO `countries` VALUES (211, 'NE', 'Niger', NULL, NULL);
INSERT INTO `countries` VALUES (212, 'NG', 'Nigeria', NULL, NULL);
INSERT INTO `countries` VALUES (213, 'NU', 'Niue', NULL, NULL);
INSERT INTO `countries` VALUES (214, 'NF', 'Norfolk Island', NULL, NULL);
INSERT INTO `countries` VALUES (215, 'MP', 'Northern Mariana Islands', NULL, NULL);
INSERT INTO `countries` VALUES (216, 'NO', 'Norway', NULL, NULL);
INSERT INTO `countries` VALUES (217, 'OM', 'Oman', NULL, NULL);
INSERT INTO `countries` VALUES (218, 'PK', 'Pakistan', NULL, NULL);
INSERT INTO `countries` VALUES (219, 'PW', 'Palau', NULL, NULL);
INSERT INTO `countries` VALUES (220, 'PS', 'Palestine', NULL, NULL);
INSERT INTO `countries` VALUES (221, 'PA', 'Panama', NULL, NULL);
INSERT INTO `countries` VALUES (222, 'PG', 'Papua New Guinea', NULL, NULL);
INSERT INTO `countries` VALUES (223, 'PY', 'Paraguay', NULL, NULL);
INSERT INTO `countries` VALUES (224, 'PE', 'Peru', NULL, NULL);
INSERT INTO `countries` VALUES (225, 'PH', 'Philippines', NULL, NULL);
INSERT INTO `countries` VALUES (226, 'PN', 'Pitcairn', NULL, NULL);
INSERT INTO `countries` VALUES (227, 'PL', 'Poland', NULL, NULL);
INSERT INTO `countries` VALUES (228, 'PT', 'Portugal', NULL, NULL);
INSERT INTO `countries` VALUES (229, 'PR', 'Puerto Rico', NULL, NULL);
INSERT INTO `countries` VALUES (230, 'QA', 'Qatar', NULL, NULL);
INSERT INTO `countries` VALUES (231, 'RE', 'Reunion', NULL, NULL);
INSERT INTO `countries` VALUES (232, 'RO', 'Romania', NULL, NULL);
INSERT INTO `countries` VALUES (233, 'RU', 'Russian Federation', NULL, NULL);
INSERT INTO `countries` VALUES (234, 'RW', 'Rwanda', NULL, NULL);
INSERT INTO `countries` VALUES (235, 'KN', 'Saint Kitts and Nevis', NULL, NULL);
INSERT INTO `countries` VALUES (236, 'LC', 'Saint Lucia', NULL, NULL);
INSERT INTO `countries` VALUES (237, 'VC', 'Saint Vincent and the Grenadines', NULL, NULL);
INSERT INTO `countries` VALUES (238, 'WS', 'Samoa', NULL, NULL);
INSERT INTO `countries` VALUES (239, 'SM', 'San Marino', NULL, NULL);
INSERT INTO `countries` VALUES (240, 'ST', 'Sao Tome and Principe', NULL, NULL);
INSERT INTO `countries` VALUES (241, 'SA', 'Saudi Arabia', NULL, NULL);
INSERT INTO `countries` VALUES (242, 'SN', 'Senegal', NULL, NULL);
INSERT INTO `countries` VALUES (243, 'RS', 'Serbia', NULL, NULL);
INSERT INTO `countries` VALUES (244, 'SC', 'Seychelles', NULL, NULL);
INSERT INTO `countries` VALUES (245, 'SL', 'Sierra Leone', NULL, NULL);
INSERT INTO `countries` VALUES (246, 'SG', 'Singapore', NULL, NULL);
INSERT INTO `countries` VALUES (247, 'SK', 'Slovakia', NULL, NULL);
INSERT INTO `countries` VALUES (248, 'SI', 'Slovenia', NULL, NULL);
INSERT INTO `countries` VALUES (249, 'SB', 'Solomon Islands', NULL, NULL);
INSERT INTO `countries` VALUES (250, 'SO', 'Somalia', NULL, NULL);
INSERT INTO `countries` VALUES (251, 'ZA', 'South Africa', NULL, NULL);
INSERT INTO `countries` VALUES (252, 'GS', 'South Georgia South Sandwich Islands', NULL, NULL);
INSERT INTO `countries` VALUES (253, 'SS', 'South Sudan', NULL, NULL);
INSERT INTO `countries` VALUES (254, 'ES', 'Spain', NULL, NULL);
INSERT INTO `countries` VALUES (255, 'LK', 'Sri Lanka', NULL, NULL);
INSERT INTO `countries` VALUES (256, 'SH', 'St. Helena', NULL, NULL);
INSERT INTO `countries` VALUES (257, 'PM', 'St. Pierre and Miquelon', NULL, NULL);
INSERT INTO `countries` VALUES (258, 'SD', 'Sudan', NULL, NULL);
INSERT INTO `countries` VALUES (259, 'SR', 'Suriname', NULL, NULL);
INSERT INTO `countries` VALUES (260, 'SJ', 'Svalbard and Jan Mayen Islands', NULL, NULL);
INSERT INTO `countries` VALUES (261, 'SZ', 'Swaziland', NULL, NULL);
INSERT INTO `countries` VALUES (262, 'SE', 'Sweden', NULL, NULL);
INSERT INTO `countries` VALUES (263, 'CH', 'Switzerland', NULL, NULL);
INSERT INTO `countries` VALUES (264, 'SY', 'Syrian Arab Republic', NULL, NULL);
INSERT INTO `countries` VALUES (265, 'TW', 'Taiwan', NULL, NULL);
INSERT INTO `countries` VALUES (266, 'TJ', 'Tajikistan', NULL, NULL);
INSERT INTO `countries` VALUES (267, 'TZ', 'Tanzania, United Republic of', NULL, NULL);
INSERT INTO `countries` VALUES (268, 'TH', 'Thailand', NULL, NULL);
INSERT INTO `countries` VALUES (269, 'TG', 'Togo', NULL, NULL);
INSERT INTO `countries` VALUES (270, 'TK', 'Tokelau', NULL, NULL);
INSERT INTO `countries` VALUES (271, 'TO', 'Tonga', NULL, NULL);
INSERT INTO `countries` VALUES (272, 'TT', 'Trinidad and Tobago', NULL, NULL);
INSERT INTO `countries` VALUES (273, 'TN', 'Tunisia', NULL, NULL);
INSERT INTO `countries` VALUES (274, 'TR', 'Turkey', NULL, NULL);
INSERT INTO `countries` VALUES (275, 'TM', 'Turkmenistan', NULL, NULL);
INSERT INTO `countries` VALUES (276, 'TC', 'Turks and Caicos Islands', NULL, NULL);
INSERT INTO `countries` VALUES (277, 'TV', 'Tuvalu', NULL, NULL);
INSERT INTO `countries` VALUES (278, 'UG', 'Uganda', NULL, NULL);
INSERT INTO `countries` VALUES (279, 'UA', 'Ukraine', NULL, NULL);
INSERT INTO `countries` VALUES (280, 'AE', 'United Arab Emirates', NULL, NULL);
INSERT INTO `countries` VALUES (281, 'GB', 'United Kingdom', NULL, NULL);
INSERT INTO `countries` VALUES (282, 'US', 'United States', NULL, NULL);
INSERT INTO `countries` VALUES (283, 'UM', 'United States minor outlying islands', NULL, NULL);
INSERT INTO `countries` VALUES (284, 'UY', 'Uruguay', NULL, NULL);
INSERT INTO `countries` VALUES (285, 'UZ', 'Uzbekistan', NULL, NULL);
INSERT INTO `countries` VALUES (286, 'VU', 'Vanuatu', NULL, NULL);
INSERT INTO `countries` VALUES (287, 'VA', 'Vatican City State', NULL, NULL);
INSERT INTO `countries` VALUES (288, 'VE', 'Venezuela', NULL, NULL);
INSERT INTO `countries` VALUES (289, 'VN', 'Vietnam', NULL, NULL);
INSERT INTO `countries` VALUES (290, 'VG', 'Virgin Islands (British)', NULL, NULL);
INSERT INTO `countries` VALUES (291, 'VI', 'Virgin Islands (U.S.)', NULL, NULL);
INSERT INTO `countries` VALUES (292, 'WF', 'Wallis and Futuna Islands', NULL, NULL);
INSERT INTO `countries` VALUES (293, 'EH', 'Western Sahara', NULL, NULL);
INSERT INTO `countries` VALUES (294, 'YE', 'Yemen', NULL, NULL);
INSERT INTO `countries` VALUES (295, 'ZR', 'Zaire', NULL, NULL);
INSERT INTO `countries` VALUES (296, 'ZM', 'Zambia', NULL, NULL);
INSERT INTO `countries` VALUES (297, 'ZW', 'Zimbabwe', NULL, NULL);

-- ----------------------------
-- Table structure for coupons
-- ----------------------------
DROP TABLE IF EXISTS `coupons`;
CREATE TABLE `coupons`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `coupon_code` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `amount` int(11) NOT NULL,
  `amount_type` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `expiry_date` date NOT NULL,
  `status` tinyint(4) NOT NULL,
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 7 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of coupons
-- ----------------------------
INSERT INTO `coupons` VALUES (6, 'Coupon001', 10, 'Percentage', '2019-12-06', 1, '2018-12-06 05:19:15', '2018-12-06 05:19:15');

-- ----------------------------
-- Table structure for delivery_address
-- ----------------------------
DROP TABLE IF EXISTS `delivery_address`;
CREATE TABLE `delivery_address`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `users_id` int(11) NOT NULL,
  `users_email` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `city` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `state` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `country` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `pincode` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `mobile` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 5 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of delivery_address
-- ----------------------------
INSERT INTO `delivery_address` VALUES (2, 4, 'weshare@gmail.com', 'weshare', 'address', 'city', 'state', 'Cambodia', 'pincode', 'mobile', NULL, NULL);
INSERT INTO `delivery_address` VALUES (3, 1, 'demo@gmail.com', 'WeShare', '123 Street', 'Phnom Penh', 'PP', 'Cambodia', '12252', '010313234', NULL, NULL);
INSERT INTO `delivery_address` VALUES (4, 6, 'student@lms.com', 'art', 'sdf', 'sdf', 'sdf', 'Burundi', 'sdf', 'sdf', NULL, NULL);

-- ----------------------------
-- Table structure for migrations
-- ----------------------------
DROP TABLE IF EXISTS `migrations`;
CREATE TABLE `migrations`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `migration` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 20 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of migrations
-- ----------------------------
INSERT INTO `migrations` VALUES (3, '2014_10_12_000000_create_users_table', 2);
INSERT INTO `migrations` VALUES (2, '2014_10_12_100000_create_password_resets_table', 1);
INSERT INTO `migrations` VALUES (8, '2018_10_20_040609_create_categories_table', 3);
INSERT INTO `migrations` VALUES (9, '2018_10_24_075802_create_products_table', 4);
INSERT INTO `migrations` VALUES (10, '2018_11_08_024109_create_product_att_table', 5);
INSERT INTO `migrations` VALUES (11, '2018_11_20_055123_create_tblgallery_table', 6);
INSERT INTO `migrations` VALUES (12, '2018_11_26_070031_create_cart_table', 7);
INSERT INTO `migrations` VALUES (13, '2018_11_28_072535_create_coupons_table', 8);
INSERT INTO `migrations` VALUES (15, '2018_12_01_042342_create_countries_table', 10);
INSERT INTO `migrations` VALUES (19, '2018_12_03_043804_add_more_fields_to_users_table', 14);
INSERT INTO `migrations` VALUES (17, '2018_12_03_093548_create_delivery_address_table', 12);
INSERT INTO `migrations` VALUES (18, '2018_12_05_024718_create_orders_table', 13);

-- ----------------------------
-- Table structure for orders
-- ----------------------------
DROP TABLE IF EXISTS `orders`;
CREATE TABLE `orders`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `users_id` int(11) NOT NULL,
  `users_email` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `city` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `state` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `pincode` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `country` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `mobile` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `shipping_charges` double(8, 2) NOT NULL,
  `coupon_code` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `coupon_amount` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `order_status` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `payment_method` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `grand_total` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 10 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of orders
-- ----------------------------
INSERT INTO `orders` VALUES (7, 1, 'demo@gmail.com', 'WeShare', '123 Street', 'Phnom Penh', 'PP', '12252', 'Cambodia', '010313234', 0.00, 'NO Coupon', '0', 'success', 'Paypal', '70', '2018-12-07 03:20:18', '2018-12-07 03:20:18');
INSERT INTO `orders` VALUES (6, 4, 'weshare@gmail.com', 'weshare', 'address', 'city', 'state', 'pincode', 'Cambodia', 'mobile', 0.00, 'Coupon001', '2', 'success', 'Paypal', '18', '2018-12-06 10:45:09', '2018-12-06 10:45:09');
INSERT INTO `orders` VALUES (8, 6, 'student@lms.com', 'art', 'sdf', 'sdf', 'sdf', 'sdf', 'Albania', 'sdf', 0.00, 'NO Coupon', '0', 'success', 'Paypal', '69.02', '2021-03-29 08:14:35', '2021-03-29 08:14:35');
INSERT INTO `orders` VALUES (9, 6, 'student@lms.com', 'art', 'sdf', 'sdf', 'sdf', 'sdf', 'Burundi', 'sdf', 0.00, 'NO Coupon', '0', 'success', 'Paypal', '1.35', '2021-03-29 14:13:11', '2021-03-29 14:13:11');

-- ----------------------------
-- Table structure for password_resets
-- ----------------------------
DROP TABLE IF EXISTS `password_resets`;
CREATE TABLE `password_resets`  (
  `email` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp(0) NULL DEFAULT NULL,
  INDEX `password_resets_email_index`(`email`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for product_att
-- ----------------------------
DROP TABLE IF EXISTS `product_att`;
CREATE TABLE `product_att`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `products_id` int(11) NOT NULL,
  `sku` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `size` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` double(8, 2) NOT NULL,
  `stock` int(11) NOT NULL,
  `created_at` timestamp(0) NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP(0),
  `updated_at` timestamp(0) NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP(0),
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 35 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of product_att
-- ----------------------------
INSERT INTO `product_att` VALUES (14, 34, 'SKU-Lenovo X1', '15 inch', 10.00, 2, '2018-12-05 20:08:43', '2018-12-05 20:08:43');
INSERT INTO `product_att` VALUES (13, 35, 'SKU-Red', 'S', 2.00, 5, '2018-12-05 20:08:08', '2018-12-05 20:08:08');
INSERT INTO `product_att` VALUES (12, 35, 'SKU-White', 'L', 6.00, 2, '2018-12-05 20:07:42', '2018-12-05 20:07:42');
INSERT INTO `product_att` VALUES (11, 35, 'SKU-Black', 'M', 5.00, 10, '2018-12-05 20:07:11', '2018-12-05 20:07:11');
INSERT INTO `product_att` VALUES (15, 34, 'SKU-Carbon', '14 inch', 4.00, 5, '2018-12-05 20:09:05', '2018-12-05 20:09:05');
INSERT INTO `product_att` VALUES (16, 33, 'SKU-Haan1', '25', 12.00, 3, '2018-12-05 20:09:45', '2018-12-05 20:09:45');
INSERT INTO `product_att` VALUES (17, 33, 'SKU-Haan2', '22', 10.00, 1, '2018-12-05 20:09:58', '2018-12-05 20:09:58');
INSERT INTO `product_att` VALUES (18, 33, 'SKU-Haan3', '19', 2.00, 3, '2018-12-05 20:10:16', '2018-12-05 20:10:16');
INSERT INTO `product_att` VALUES (19, 32, 'SKU-Vionic1', '20', 10.00, 5, '2018-12-05 20:11:02', '2018-12-05 20:11:02');
INSERT INTO `product_att` VALUES (20, 32, 'SKU-Vionic2', '20', 15.00, 4, '2018-12-05 20:11:24', '2018-12-05 20:11:24');
INSERT INTO `product_att` VALUES (21, 32, 'SKU-Vionic3', '30', 20.00, 1, '2018-12-05 20:11:38', '2018-12-05 20:11:38');
INSERT INTO `product_att` VALUES (22, 31, 'SKU-House1', '5*20', 25.00, 4, '2018-12-05 20:12:13', '2018-12-05 20:12:13');
INSERT INTO `product_att` VALUES (23, 31, 'SKU-House2', '10*10', 20.00, 2, '2018-12-05 20:12:30', '2018-12-05 20:12:30');
INSERT INTO `product_att` VALUES (24, 31, 'SKU-House3', '20*20', 20.00, 5, '2018-12-05 20:12:46', '2018-12-05 20:12:46');
INSERT INTO `product_att` VALUES (25, 30, 'SKU-Link House1', 'Small', 10.00, 5, '2018-12-05 20:13:06', '2018-12-05 20:13:06');
INSERT INTO `product_att` VALUES (26, 30, 'SKU-House2', 'Medium', 15.00, 23, '2018-12-05 20:13:23', '2018-12-05 20:13:23');
INSERT INTO `product_att` VALUES (27, 30, 'SKU-House3', 'Large', 5.00, 2, '2018-12-05 20:14:55', '2018-12-05 20:14:55');
INSERT INTO `product_att` VALUES (28, 29, 'SKU-Prius1', 'One Size', 12.00, 2, '2018-12-05 20:15:43', '2018-12-05 20:15:43');
INSERT INTO `product_att` VALUES (29, 28, 'SKU-Lexus Red', 'Size Red', 12.00, 12, '2018-12-05 20:16:28', '2018-12-05 20:16:28');
INSERT INTO `product_att` VALUES (30, 28, 'SKU-Lexus2', 'Size Black', 11.00, 22, '2018-12-05 20:16:48', '2018-12-05 20:16:48');
INSERT INTO `product_att` VALUES (31, 28, 'SKU-Lexus3', 'Size White', 12.00, 2, '2018-12-05 20:17:02', '2018-12-05 20:17:02');
INSERT INTO `product_att` VALUES (32, 27, 'SKU-Hilander', 'Size Black', 50.00, 10, '2018-12-05 20:17:35', '2018-12-05 20:17:35');
INSERT INTO `product_att` VALUES (33, 27, 'SKU-Hilander1', 'Size White', 20.00, 10, '2018-12-05 20:17:46', '2018-12-05 20:17:46');
INSERT INTO `product_att` VALUES (34, 27, 'SKU-Hilande3', 'Size Red', 20.00, 10, '2018-12-05 20:18:01', '2018-12-05 20:18:01');

-- ----------------------------
-- Table structure for products
-- ----------------------------
DROP TABLE IF EXISTS `products`;
CREATE TABLE `products`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `categories_id` int(11) NOT NULL,
  `p_name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `p_code` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `p_color` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` double(8, 2) NOT NULL,
  `image` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp(0) NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP(0),
  `updated_at` timestamp(0) NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP(0),
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 36 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of products
-- ----------------------------
INSERT INTO `products` VALUES (28, 15, 'Lexus Rx 330', '12152', 'White', 'EXCELLENT SAFETY FOR YOUR FAMILY<br>Child Safety Locks, Electronic Stability Control, Brake Assist, 4-Wheel ABS, Tire Pressure Monitoring System, 4-Wheel Disc Brakes Safety equipment includes Child Safety Locks', 15.00, '1544063712-lexus-rx-330.jpg', '2018-12-05 19:35:12', '2018-12-05 19:43:48');
INSERT INTO `products` VALUES (27, 15, '2019 New Toyota Highlander XLE V6', 'XLE V6 FWD', 'White', 'Sunroof, Heated Leather Seats, NAV, 3rd Row Seat, Alloy Wheels, Quad Seats, Rear Air, Power Liftgate. XLE trim. Warranty 5 yrs/60k Miles - Drivetrain Warranty; AND MORE!', 20.00, '1544063425-2019-new-toyota-highlander-xle-v6.jpg', '2018-12-05 19:30:25', '2018-12-05 19:43:57');
INSERT INTO `products` VALUES (29, 12, '2018 Toyota Prius', '1252', 'Red', 'VEHICLE FEATURES<br>Rear Spoiler, MP3 Player, Remote Trunk Release, Keyless Entry, Privacy Glass.&nbsp;', 5.00, '1544063924-2018-toyota-prius.jpg', '2018-12-05 19:38:44', '2018-12-05 19:43:38');
INSERT INTO `products` VALUES (30, 16, 'Link House New LC2', 'L_1252', 'Gray', 'Borey Peng Huoth Cambodia', 10.00, '1544064142-link-house-new-lc2.jpg', '2018-12-05 19:42:22', '2018-12-05 19:42:22');
INSERT INTO `products` VALUES (31, 10, 'House', '5214', 'White and Brown', 'House For Sale', 10.00, '1544064430-house.jpg', '2018-12-05 19:47:10', '2018-12-05 19:47:10');
INSERT INTO `products` VALUES (32, 11, 'Vionic Shoes Brand', '5265', 'All Colors', 'Women Shoes', 12.00, '1544064607-vionic-shoes-brand.jpg', '2018-12-05 19:50:07', '2018-12-05 19:50:07');
INSERT INTO `products` VALUES (33, 17, 'Cole Haan', 'KHR 775659.29', 'Brown', 'Men\'s Original Grand Wingtip Oxfords', 5.00, '1544064903-cole-haan.jpg', '2018-12-05 19:55:03', '2018-12-05 19:55:03');
INSERT INTO `products` VALUES (34, 13, 'Lenovo ThinkPad', '1252', 'Black', 'Lenovo Thinkpad From China', 2.00, '1544065331-lenovo-thinkpad.jpg', '2018-12-05 20:02:12', '2018-12-05 20:02:12');
INSERT INTO `products` VALUES (35, 14, 'Cloths', 'The Man', 'Black', 'Cloths Description here', 2.00, '1544065493-cloths.png', '2018-12-05 20:04:54', '2018-12-05 20:04:54');

-- ----------------------------
-- Table structure for tblgallery
-- ----------------------------
DROP TABLE IF EXISTS `tblgallery`;
CREATE TABLE `tblgallery`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `products_id` int(11) NOT NULL,
  `image` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 35 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tblgallery
-- ----------------------------
INSERT INTO `tblgallery` VALUES (8, 27, '7664271544063472.jpg', '2018-12-06 04:31:12', '2018-12-06 04:31:12');
INSERT INTO `tblgallery` VALUES (9, 27, '6768551544063472.jpg', '2018-12-06 04:31:13', '2018-12-06 04:31:13');
INSERT INTO `tblgallery` VALUES (10, 27, '4131281544063473.jpg', '2018-12-06 04:31:13', '2018-12-06 04:31:13');
INSERT INTO `tblgallery` VALUES (11, 28, '6720891544063734.jpg', '2018-12-06 04:35:34', '2018-12-06 04:35:34');
INSERT INTO `tblgallery` VALUES (12, 28, '4686631544063734.jpg', '2018-12-06 04:35:34', '2018-12-06 04:35:34');
INSERT INTO `tblgallery` VALUES (13, 28, '5960611544063759.jpeg', '2018-12-06 04:35:59', '2018-12-06 04:35:59');
INSERT INTO `tblgallery` VALUES (14, 29, '5146071544063935.JPG', '2018-12-06 04:38:55', '2018-12-06 04:38:55');
INSERT INTO `tblgallery` VALUES (15, 29, '762811544063935.jpg', '2018-12-06 04:38:55', '2018-12-06 04:38:55');
INSERT INTO `tblgallery` VALUES (16, 29, '3716041544063935.jpg', '2018-12-06 04:38:56', '2018-12-06 04:38:56');
INSERT INTO `tblgallery` VALUES (17, 30, '6832831544064156.jpg', '2018-12-06 04:42:37', '2018-12-06 04:42:37');
INSERT INTO `tblgallery` VALUES (18, 30, '1655391544064157.jpg', '2018-12-06 04:42:37', '2018-12-06 04:42:37');
INSERT INTO `tblgallery` VALUES (19, 30, '4693601544064157.jpg', '2018-12-06 04:42:37', '2018-12-06 04:42:37');
INSERT INTO `tblgallery` VALUES (20, 31, '9233341544064441.jpg', '2018-12-06 04:47:21', '2018-12-06 04:47:21');
INSERT INTO `tblgallery` VALUES (21, 31, '8167501544064441.jpg', '2018-12-06 04:47:22', '2018-12-06 04:47:22');
INSERT INTO `tblgallery` VALUES (22, 31, '3887071544064442.jpg', '2018-12-06 04:47:22', '2018-12-06 04:47:22');
INSERT INTO `tblgallery` VALUES (23, 32, '3998691544064618.jpg', '2018-12-06 04:50:18', '2018-12-06 04:50:18');
INSERT INTO `tblgallery` VALUES (24, 32, '1159141544064618.jpg', '2018-12-06 04:50:18', '2018-12-06 04:50:18');
INSERT INTO `tblgallery` VALUES (25, 32, '2035101544064618.jpg', '2018-12-06 04:50:18', '2018-12-06 04:50:18');
INSERT INTO `tblgallery` VALUES (26, 33, '2128501544064917.jpg', '2018-12-06 04:55:17', '2018-12-06 04:55:17');
INSERT INTO `tblgallery` VALUES (27, 33, '5649911544064917.jpg', '2018-12-06 04:55:17', '2018-12-06 04:55:17');
INSERT INTO `tblgallery` VALUES (28, 33, '3704141544064917.jpg', '2018-12-06 04:55:17', '2018-12-06 04:55:17');
INSERT INTO `tblgallery` VALUES (29, 34, '3899431544065346.JPG', '2018-12-06 05:02:26', '2018-12-06 05:02:26');
INSERT INTO `tblgallery` VALUES (30, 34, '119131544065346.jpg', '2018-12-06 05:02:27', '2018-12-06 05:02:27');
INSERT INTO `tblgallery` VALUES (31, 34, '6905491544065347.jpg', '2018-12-06 05:02:27', '2018-12-06 05:02:27');
INSERT INTO `tblgallery` VALUES (32, 35, '981591544065510.jpeg', '2018-12-06 05:05:10', '2018-12-06 05:05:10');
INSERT INTO `tblgallery` VALUES (33, 35, '5320811544065510.jpg', '2018-12-06 05:05:11', '2018-12-06 05:05:11');
INSERT INTO `tblgallery` VALUES (34, 35, '1153181544065511.jpg', '2018-12-06 05:05:11', '2018-12-06 05:05:11');

-- ----------------------------
-- Table structure for users
-- ----------------------------
DROP TABLE IF EXISTS `users`;
CREATE TABLE `users`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp(0) NULL DEFAULT NULL,
  `password` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `admin` tinyint(4) NULL DEFAULT NULL,
  `remember_token` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  `address` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL,
  `city` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `state` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `country` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `pincode` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `mobile` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `users_email_unique`(`email`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 7 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of users
-- ----------------------------
INSERT INTO `users` VALUES (1, 'WeShare', 'demo@gmail.com', NULL, '$2y$10$m9fNpTgwyBVqqVfsJ9bXUensvx5iqlYhzqmL3khhSpKpgqNQnW0t2', 1, 'eXRJYaZCo6qXgGfTHiOFvShGWta2eLgaIhcBVfa9ppQnN5SFFH7yo516DQs1', '2018-10-15 11:32:54', '2018-12-05 10:39:52', '123 Street', 'Phnom Penh', 'PP', 'Cambodia', '12252', '010313234');
INSERT INTO `users` VALUES (4, 'weshare', 'weshare@gmail.com', NULL, '$2y$10$3Ccxg17LYw/.qS7ib5Xcr.T5po6AXUsnjEcEI4IHcQ0MGkcuRfO.O', NULL, 'za7FtmzYvfzBYmkQtE5tfvStl7dY3Z6uZKSpuRtBRIvlbXzM0csZEQYzjuEb', '2018-12-06 10:40:27', '2018-12-06 10:40:27', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `users` VALUES (5, 'harry', 'dvoryanovalex@outlook.com', NULL, '$2y$10$reQt..g4sHJAJ2OEFRnnr.Xd61jp1o9iXxA8IPC34m8pO4AJrprSu', 1, 'p5OX6R2PgaJSwP038u7j1KYgk9smxdFGVTafV8qkJ9uhm50p3YZ0GQtCRtAG', '2021-03-24 15:59:02', '2021-03-24 15:59:02', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `users` VALUES (6, 'art', 'student@lms.com', NULL, '$2y$10$mdaQNk7cGqwbGUCq5A4u6uZ2kT3fvduDb/1CwujDtNySRrVEsS5JW', NULL, 'XM4Vv8UFC5x2iCKcKqyp65bSxRfNFuHONPoxI3qhqXtSu2UnuHoLRfmYVbeS', '2021-03-29 02:46:13', '2021-03-29 02:46:13', 'sdf', 'sdf', 'sdf', 'Burundi', 'sdf', 'sdf');

SET FOREIGN_KEY_CHECKS = 1;
