/*
Navicat MySQL Data Transfer

Source Server         : ntt
Source Server Version : 50505
Source Host           : localhost:3306
Source Database       : mypham

Target Server Type    : MYSQL
Target Server Version : 50505
File Encoding         : 65001

Date: 2017-03-28 18:17:55
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for categories
-- ----------------------------
DROP TABLE IF EXISTS `categories`;
CREATE TABLE `categories` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `parent_id` int(11) unsigned DEFAULT '0',
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `has_top` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=74 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of categories
-- ----------------------------
INSERT INTO `categories` VALUES ('37', '0', 'Trang điểm mặt', '0', '2017-03-22 08:21:05', '2017-03-22 08:21:05');
INSERT INTO `categories` VALUES ('38', '37', 'Phấn nền', '1', '2017-03-22 08:21:21', '2017-03-22 08:21:21');
INSERT INTO `categories` VALUES ('39', '37', 'Phấn phủ', '0', '2017-03-22 08:21:32', '2017-03-22 08:21:32');
INSERT INTO `categories` VALUES ('40', '37', 'Kem lot', '0', '2017-03-22 08:21:58', '2017-03-22 08:21:58');
INSERT INTO `categories` VALUES ('41', '37', 'Phấn má', '1', '2017-03-22 08:22:14', '2017-03-22 08:22:14');
INSERT INTO `categories` VALUES ('42', '0', 'Trang điểm mắt', '0', '2017-03-22 08:22:26', '2017-03-22 08:22:26');
INSERT INTO `categories` VALUES ('43', '42', 'Phấn mắt', '0', '2017-03-22 08:22:50', '2017-03-22 08:22:50');
INSERT INTO `categories` VALUES ('44', '42', 'Mascara', '0', '2017-03-22 08:23:01', '2017-03-22 08:23:01');
INSERT INTO `categories` VALUES ('45', '0', 'Phụ kiện trang điểm', '0', '2017-03-22 08:23:18', '2017-03-22 08:23:18');
INSERT INTO `categories` VALUES ('46', '45', 'Phụ kiện trang điểm khác', '0', '2017-03-22 08:23:51', '2017-03-22 08:23:51');
INSERT INTO `categories` VALUES ('47', '37', 'Kem che khuyết điểm', '0', '2017-03-22 08:24:34', '2017-03-22 08:24:34');
INSERT INTO `categories` VALUES ('48', '37', 'Kem tẩy trang', '0', '2017-03-22 08:24:51', '2017-03-22 08:24:51');
INSERT INTO `categories` VALUES ('49', '37', 'Phấn tạo khối', '0', '2017-03-22 08:25:10', '2017-03-22 08:25:10');
INSERT INTO `categories` VALUES ('50', '42', 'Kẻ lông mày', '0', '2017-03-22 15:57:05', '2017-03-22 15:57:05');
INSERT INTO `categories` VALUES ('51', '42', 'Kẻ mắt', '0', '2017-03-22 15:57:28', '2017-03-22 15:57:28');
INSERT INTO `categories` VALUES ('52', '42', 'Serum mọc mi , dưỡng mi', '0', '2017-03-22 15:57:54', '2017-03-22 15:57:54');
INSERT INTO `categories` VALUES ('53', '45', 'Cọ và các dụng cụ trang điểm', '0', '2017-03-22 15:58:34', '2017-03-22 15:58:34');
INSERT INTO `categories` VALUES ('54', '45', 'Kính áp tròng', '0', '2017-03-22 15:58:56', '2017-03-22 15:58:56');
INSERT INTO `categories` VALUES ('55', '45', 'Mi giả', '0', '2017-03-22 15:59:16', '2017-03-22 15:59:16');
INSERT INTO `categories` VALUES ('56', '45', 'Khung kẻ mày,dán mí', '0', '2017-03-22 15:59:39', '2017-03-22 15:59:39');
INSERT INTO `categories` VALUES ('57', '0', 'Nước hoa', '0', '2017-03-22 15:59:48', '2017-03-22 15:59:48');
INSERT INTO `categories` VALUES ('60', '57', 'Bộ sản phẩm', '0', '2017-03-22 16:05:33', '2017-03-22 16:05:33');
INSERT INTO `categories` VALUES ('61', '57', 'Xịt toàn thân', '0', '2017-03-22 16:05:52', '2017-03-22 16:05:52');
INSERT INTO `categories` VALUES ('62', '57', 'Nước hoa nữ', '0', '2017-03-22 16:06:08', '2017-03-22 16:06:08');
INSERT INTO `categories` VALUES ('63', '57', 'Nước hoa nam', '0', '2017-03-22 16:06:26', '2017-03-22 16:06:26');
INSERT INTO `categories` VALUES ('64', '0', 'Chăm sóc móng', '0', '2017-03-22 16:06:42', '2017-03-22 16:06:42');
INSERT INTO `categories` VALUES ('65', '64', 'Sơn màu', '0', '2017-03-22 16:07:01', '2017-03-22 16:07:01');
INSERT INTO `categories` VALUES ('66', '64', 'Móng tay giả', '0', '2017-03-22 16:07:21', '2017-03-22 16:07:21');
INSERT INTO `categories` VALUES ('67', '0', 'Sản phẩm chăm sóc da', '0', '2017-03-22 16:07:50', '2017-03-22 16:07:50');
INSERT INTO `categories` VALUES ('68', '67', 'Sữa tắm', '0', '2017-03-22 16:08:31', '2017-03-23 01:57:39');
INSERT INTO `categories` VALUES ('69', '0', 'Sữa rửa mặt', '0', '2017-03-22 16:08:41', '2017-03-22 16:08:41');
INSERT INTO `categories` VALUES ('70', '67', 'Kem dưỡng da', '0', '2017-03-22 16:08:54', '2017-03-23 01:58:00');
INSERT INTO `categories` VALUES ('71', '67', 'Kem chống nắng', '0', '2017-03-22 16:09:06', '2017-03-23 01:58:13');
INSERT INTO `categories` VALUES ('72', '67', 'Kem tẩy da chết', '0', '2017-03-22 16:09:18', '2017-03-23 01:58:49');
INSERT INTO `categories` VALUES ('73', '67', 'Kem mát xa', null, '2017-03-22 16:09:45', '2017-03-23 01:58:34');

-- ----------------------------
-- Table structure for contacts
-- ----------------------------
DROP TABLE IF EXISTS `contacts`;
CREATE TABLE `contacts` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `message` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of contacts
-- ----------------------------
INSERT INTO `contacts` VALUES ('2', 'nguoimua1223', '5243563.21.52.', 'nguoimuafghgh@gmail.com', null, '0', '2017-03-03 09:53:41', '2017-03-22 02:50:21');

-- ----------------------------
-- Table structure for groups
-- ----------------------------
DROP TABLE IF EXISTS `groups`;
CREATE TABLE `groups` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of groups
-- ----------------------------
INSERT INTO `groups` VALUES ('1', 'Admin', null, null, null);
INSERT INTO `groups` VALUES ('2', 'User', null, null, null);

-- ----------------------------
-- Table structure for images
-- ----------------------------
DROP TABLE IF EXISTS `images`;
CREATE TABLE `images` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `product_id` int(11) unsigned NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `color` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `product_indexes` (`product_id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of images
-- ----------------------------
INSERT INTO `images` VALUES ('1', '1', 'x', ' áo nữ', '2017-02-01 09:12:27', '2017-02-02 09:12:33');
INSERT INTO `images` VALUES ('2', '2', 'xl', 'váy', '2017-02-02 09:13:01', '2017-02-03 09:13:07');
INSERT INTO `images` VALUES ('3', '3', 's', 'đầm', '2017-02-04 09:13:28', '2017-02-05 09:13:33');
INSERT INTO `images` VALUES ('4', '1', 'xxl', 'chân váy', null, null);
INSERT INTO `images` VALUES ('5', '1', 'xs', 'váy', null, null);

-- ----------------------------
-- Table structure for migrations
-- ----------------------------
DROP TABLE IF EXISTS `migrations`;
CREATE TABLE `migrations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of migrations
-- ----------------------------
INSERT INTO `migrations` VALUES ('1', '2017_02_15_135445_create_images_table', '1');
INSERT INTO `migrations` VALUES ('2', '2017_02_15_163903_add_product_index_to_images_table', '2');
INSERT INTO `migrations` VALUES ('3', '2017_02_16_143835_create_categories_table', '3');
INSERT INTO `migrations` VALUES ('4', '2017_02_16_143952_create_products_table', '3');
INSERT INTO `migrations` VALUES ('5', '2017_02_16_144029_create_suppliers_table', '3');
INSERT INTO `migrations` VALUES ('6', '2017_02_16_144103_create_orders_table', '3');
INSERT INTO `migrations` VALUES ('7', '2017_02_16_144139_create_supports_table', '3');
INSERT INTO `migrations` VALUES ('8', '2017_02_16_144226_create_order_details_table', '3');
INSERT INTO `migrations` VALUES ('9', '2017_02_16_144312_create_groups_table', '3');
INSERT INTO `migrations` VALUES ('10', '2017_02_16_144352_create_comtacts_table', '3');
INSERT INTO `migrations` VALUES ('11', '2017_02_16_144413_create_chats_table', '3');
INSERT INTO `migrations` VALUES ('12', '2017_02_16_144445_create_userss_table', '3');
INSERT INTO `migrations` VALUES ('13', '2017_02_20_095347_create_introduces_table', '4');
INSERT INTO `migrations` VALUES ('14', '2017_03_01_164833_create_password_resets_table', '5');

-- ----------------------------
-- Table structure for news
-- ----------------------------
DROP TABLE IF EXISTS `news`;
CREATE TABLE `news` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `short_description` text COLLATE utf8mb4_unicode_ci,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of news
-- ----------------------------
INSERT INTO `news` VALUES ('7', 'SỨC KHỎE & LÀM ĐẸP THEO TIÊU CHÍ HIỆN ĐẠI', 'images (1).jpg', '<p>Bất kỳ ai trong ch&uacute;ng ta cũng đều muốn ng&agrave;y một trở n&ecirc;n xinh đẹp hơn. Ch&iacute;nh v&igrave; vậy, mỹ phẩm ch&iacute;nh l&agrave; sự lựa chọn tối ưu gi&uacute;p bảo vệ v&agrave; l&agrave;m đẹp cho da của bạn.</p>', '<p>Cũng như&nbsp;<a href=\"https://www.sendo.vn/thoi-trang-nu/\">thời trang</a>, ng&agrave;y nay&nbsp;sức khỏe &amp; l&agrave;m đẹp chiếm giữ một phần v&ocirc; c&ugrave;ng quan trọng trong cuộc sống năng động. Tất cả những g&igrave; li&ecirc;n quan đến lĩnh vực l&agrave;m đẹp lu&ocirc;n được ph&aacute;i đẹp hết mực quan t&acirc;m, đặc biệt l&agrave; mỹ phẩm. Kh&ocirc;ng chỉ ri&ecirc;ng với ph&aacute;i đẹp, ngay cả nam giới hiện đại cũng quan t&acirc;m rất nhiều đến việc chăm s&oacute;c sức khỏe &amp; l&agrave;m đẹp.&nbsp;Chăm s&oacute;c da, dưỡng t&oacute;c, dưỡng thể&hellip; một c&aacute;ch to&agrave;n diện từ b&ecirc;n trong sẽ đem lại cho bạn một vẻ đẹp đầy sức sống, tươi trẻ để lu&ocirc;n được tự tin trong suốt một ng&agrave;y d&agrave;i l&agrave;m việc. Đặc biệt,&nbsp;những d&ograve;ng sản phẩm t&iacute;ch hợp nhiều t&iacute;nh năng v&agrave; khả năng t&aacute;i tạo v&agrave; bảo vệ da, hay cả những loại chỉ cần một c&ocirc;ng đoạn đơn giản cũng thay thế được kh&aacute; nhiều bước trang điểm quen thuộc th&ocirc;ng thường hiện đang rất được y&ecirc;u th&iacute;ch.</p>', '2017-03-23 07:49:33', '2017-03-23 07:49:33');
INSERT INTO `news` VALUES ('8', 'ĐẸP HƠN MỖI NGÀY VỚI CÁC SẢN PHẨM CHĂM SÓC SỨC KHỎE & LÀM ĐẸP', 'images (2).jpg', '<p>Sự đa dạng v&agrave; phong ph&uacute; của mỹ phẩm d&agrave;nh cho nữ chắc chắn sẽ gi&uacute;p c&aacute;c bạn g&aacute;i c&oacute; th&ecirc;m nhiều lựa chọn th&iacute;ch hợp. Từ kem dưỡng da, kem l&agrave;m trắng, sữa rửa mặt cho đến xịt kho&aacute;ng,... tất cả đều sẽ gi&uacute;p bạn ho&agrave;n thiện hơn vẻ đẹp của m&igrave;nh. Những thương hiệu nổi bật bạn kh&ocirc;ng n&ecirc;n bỏ qua: kem dưỡng da The Face Shop, sữa rửa mặt Olay, xịt kho&aacute;ng Avene,..</p>', '<p>Với nhu cầu sử dụng&nbsp;ng&agrave;y c&agrave;ng cao, c&aacute;c h&atilde;ng sản xuất cũng ng&agrave;y c&agrave;ng cho ra đời nhiều hơn c&aacute;c loại sản phẩm đ&aacute;p ứng đầy đủ c&aacute;c yếu tố an to&agrave;n v&agrave; chất lượng. Đặc biệt, khi mua sắm c&aacute;c sản phẩm chăm s&oacute;c sức khỏe &amp;&nbsp;l&agrave;m đẹp tại Senndo.vn, bạn kh&ocirc;ng chỉ được trải nghiệm kh&ocirc;ng gian hiện đại m&agrave; c&ograve;n thường xuy&ecirc;n được hưởng những ch&iacute;nh s&aacute;ch giảm gi&aacute;, ưu đ&atilde;i cực kỳ cao.</p>\r\n\r\n<p>Sendo.vn mua b&aacute;n đảm bảo, giao h&agrave;ng to&agrave;n quốc, kh&aacute;ch h&agrave;ng được đổi, trả, khiếu nại v&agrave; nhận ho&agrave;n 100% ph&iacute; mua h&agrave;ng nếu sản phẩm kh&ocirc;ng đ&uacute;ng m&ocirc; tả. Th&ocirc;ng tin kh&aacute;ch h&agrave;ng được bảo mật tuyệt đối v&agrave; nhiều chương tr&igrave;nh ưu đ&atilde;i giảm gi&aacute; hấp dẫn, gi&uacute;p kh&aacute;ch h&agrave;ng mua sắm thật đảm bảo, tiết kiệm v&agrave; tiện &iacute;ch tại&nbsp;</p>', '2017-03-23 07:51:47', '2017-03-23 07:51:47');
INSERT INTO `news` VALUES ('9', '10 sản phẩm làm đẹp phổ biến đến từ Hàn Quốc', 'images.jpg', '<p><em><strong>Kh&ocirc;ng thể phủ nhận sự đam m&ecirc; tột độ của c&aacute;c bạn g&aacute;i đối với sản phẩm l&agrave;m đẹp của H&agrave;n Quốc. Trong suốt những năm qua, c&aacute;c d&ograve;ng sản phẩm từ H&agrave;n Quốc như kem dưỡng ẩm, mặt nạ đất s&eacute;t, v&agrave; toner&hellip; lu&ocirc;n được t&igrave;m kiếm v&agrave; người d&ugrave;ng tin tưởng sử dụng.</strong></em></p>', '<p>Dưới đ&acirc;y những sản phẩm H&agrave;n Quốc đang được phổ biến ở nước ngo&agrave;i v&agrave; nhận được sự ch&agrave;o đ&oacute;n nồng nhiệt tại thị trường lớn như Mỹ. C&ugrave;ng điểm qua 10 loại mỹ phẩm của H&agrave;n Quốc được y&ecirc;u th&iacute;ch v&agrave; l&agrave;m thay đổi th&oacute;i quen l&agrave;m đẹp của bạn.</p>\r\n\r\n<h2>Laneige Hai Tone Lip Bar</h2>\r\n\r\n<p>Nắm vững phong c&aacute;ch trang điểm m&ocirc;i theo xu hướng Ombre sẽ dễ d&agrave;ng hơn nhiều với Laneige Hai Tone Lip Bar, m&agrave; đi k&egrave;m trong đ&oacute; c&oacute; 10 sắc th&aacute;i k&eacute;p v&ocirc; c&ugrave;ng phong ph&uacute;. Việc thiết lập loại son gel để lại một kết th&uacute;c b&oacute;ng bổ sung cho một c&aacute;i nh&igrave;n căng đầy, tươi trẻ.<br />\r\nNếu bạn mới bắt đầu l&agrave;m quen với việc sử dụng son th&igrave; h&atilde;y chọn những m&agrave;u nhẹ nh&agrave;ng hơn như Red Blossom v&agrave; Pink Salmon. Sự kết hợp của &aacute;nh s&aacute;ng v&agrave; t&ocirc;ng m&agrave;u tối sẽ gi&uacute;p tạo đường vi&ecirc;n m&ocirc;i r&otilde; r&agrave;ng hơn.</p>', '2017-03-23 07:53:30', '2017-03-23 07:53:30');
INSERT INTO `news` VALUES ('10', 'Bí quyết nuôi dưỡng sắc đẹp từ Nhật Bản', 'mau-poster-quang-cao-my-pham-duong-da-photoshop-1962.jpg', '<p><em><strong>D&ugrave; chỉ mới ch&iacute;nh thức đặt ch&acirc;n v&agrave; thị trường mỹ phẩm Việt Nam. Thế nhưng, với bề d&agrave;y lịch sử h&igrave;nh th&agrave;nh v&agrave; ph&aacute;t triển trong suốt hơn 30 năm qua, SK-II đang từng bước chinh phục những t&iacute;n đồ l&agrave;m đẹp Việt những bởi hiệu quả thần k&igrave; m&agrave; n&oacute; mang lại.</strong></em></p>', '<p>Nhật Bản &ndash; xứ sở nổi tiếng của hoa anh đ&agrave;o lu&ocirc;n khiến cả thế giới phải ng&atilde; mũ th&aacute;n phục bởi những ph&aacute;t minh v&agrave; c&ocirc;ng tr&igrave;nh vĩ đại. V&agrave; nền c&ocirc;ng nghiệp mỹ phẩm cũng kh&ocirc;ng nằm ngoại lệ. Mang phương ch&acirc;m &ldquo;những g&igrave; tốt cho sức khỏe cũng đều tốt cho l&agrave;n da&rdquo;, trải qua nhiều c&ocirc;ng tr&igrave;nh nghi&ecirc;n cứu v&agrave; t&igrave;m t&ograve;i từ những sản phẩm quen thuộc đến từ tự nhi&ecirc;n. Thương hiệu SK-II ra đời như một minh chứng h&ugrave;ng hồn cho tư duy &ldquo;những g&igrave; đến từ thi&ecirc;n nhi&ecirc;n đều tốt&rdquo;.</p>\r\n\r\n<p>Vươn xa thị trường Nhật Bản, SK-II c&ograve;n l&agrave; c&aacute;i t&ecirc;n được rất nhiều ng&ocirc;i sao h&agrave;ng đầu Hollywood y&ecirc;u th&iacute;ch: Cate Blanchette, Kate Bosworth v&agrave; Courteney Cox đều l&agrave; những fan cuồng của thương hiệu n&agrave;y. Điểm đặc biệt khiến SK-II kh&ocirc;ng ngừng &ldquo;l&agrave;m mưa l&agrave;m gi&oacute;&rdquo; tr&ecirc;n thị trường mỹ phẩm hiện nay ch&iacute;nh l&agrave; tinh chất Pitera độc quyền chỉ c&oacute; trong những d&ograve;ng sản phẩm SK-II, n&oacute; được v&iacute; von tựa như &ldquo; nước th&aacute;nh&rdquo;, gi&uacute;p da hồi sinh lại vẻ trong trẻo tự nhi&ecirc;n cho l&agrave;n da. Tinh chất Pitera được chắt lọc tinh t&uacute;y từ qu&aacute; tr&igrave;nh sản xuất rượu sake. Nhờ đ&oacute;, c&aacute;c sản phẩm của SK-II gi&uacute;p l&agrave;n da s&aacute;ng hơn, đều m&agrave;u, &iacute;t nếp nhăn v&agrave; &iacute;t chảy xệ hơn.</p>\r\n\r\n<p>C&ugrave;ng điểm xem một v&agrave;i d&ograve;ng sản phẩm đ&igrave;nh đ&aacute;m được nhiều người ưu chuộng của nh&atilde;n h&agrave;ng mỹ phẩm n&agrave;y</p>', '2017-03-23 08:01:49', '2017-03-23 08:01:49');

-- ----------------------------
-- Table structure for orders
-- ----------------------------
DROP TABLE IF EXISTS `orders`;
CREATE TABLE `orders` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(11) unsigned NOT NULL,
  `support_id` int(11) unsigned DEFAULT NULL,
  `orderdate` date NOT NULL,
  `requiredate` date NOT NULL,
  `receiver` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `amount` double(20,2) NOT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `support_id` (`support_id`),
  KEY `user_id` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=750 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of orders
-- ----------------------------
INSERT INTO `orders` VALUES ('1', '3', null, '2017-02-28', '2017-02-23', 'eeecc', 'dddddddd', '22222.00', '3', '2017-02-23 19:07:00', '2017-02-24 06:22:05');
INSERT INTO `orders` VALUES ('2', '4', null, '2017-02-23', '2017-02-23', 'Tien', 'Testing', '0.00', '3', '2017-02-23 19:21:37', '2017-02-24 06:23:26');
INSERT INTO `orders` VALUES ('3', '5', null, '2017-01-01', '2017-02-23', 'Tien', 'Testing', '7002465.93', '4', '2017-02-23 19:23:12', '2017-02-24 06:23:41');
INSERT INTO `orders` VALUES ('4', '6', null, '2017-02-23', '2017-02-23', '555555', 'eeeeeeeeeeeeeeeeeeeeee', '251233.00', '4', '2017-02-23 19:25:32', '2017-02-24 06:23:47');
INSERT INTO `orders` VALUES ('5', '7', null, '2017-02-25', '2017-02-25', 'nguoimua', 'nguoimuanguoimuanguoimuanguoimuanguoimua', '4999999.95', '4', '2017-02-25 17:23:06', '2017-02-25 17:23:06');
INSERT INTO `orders` VALUES ('6', '7', null, '2017-03-03', '2017-03-03', 'nguyễn thị tiến', 'giao hàng cho tôi lúc 9h sáng ngày 8/3/2017', '1750.00', '4', '2017-03-03 04:14:15', '2017-03-03 04:14:16');
INSERT INTO `orders` VALUES ('7', '7', null, '2015-01-03', '2017-03-03', 'nguyễn thị tiến', 'giao hàng cho tôi lúc 9h sáng ngày 8/3/2017', '1750.00', '3', '2015-01-03 04:14:15', '2015-01-03 04:14:16');
INSERT INTO `orders` VALUES ('8', '7', null, '2015-01-03', '2017-03-03', 'nguyễn thị tiến', 'giao hàng cho tôi lúc 9h sáng ngày 8/3/2017', '1750.00', '4', '2015-01-03 04:14:15', '2015-01-03 04:14:16');
INSERT INTO `orders` VALUES ('9', '7', null, '2015-01-03', '2017-03-03', 'nguyễn thị tiến', 'giao hàng cho tôi lúc 9h sáng ngày 8/3/2017', '1750.00', '4', '2015-01-03 04:14:15', '2015-01-03 04:14:16');
INSERT INTO `orders` VALUES ('10', '7', null, '2015-01-03', '2017-03-03', 'nguyễn thị tiến', 'giao hàng cho tôi lúc 9h sáng ngày 8/3/2017', '1750.00', '3', '2015-01-03 04:14:15', '2015-01-03 04:14:16');
INSERT INTO `orders` VALUES ('11', '7', null, '2015-01-03', '2017-03-03', 'nguyễn thị tiến', 'giao hàng cho tôi lúc 9h sáng ngày 8/3/2017', '1750.00', '3', '2015-01-03 04:14:15', '2015-01-03 04:14:16');
INSERT INTO `orders` VALUES ('12', '7', null, '2015-01-03', '2017-03-03', 'nguyễn thị tiến', 'giao hàng cho tôi lúc 9h sáng ngày 8/3/2017', '1750.00', '4', '2015-01-03 04:14:15', '2015-01-03 04:14:16');
INSERT INTO `orders` VALUES ('13', '7', null, '2015-01-03', '2017-03-03', 'nguyễn thị tiến', 'giao hàng cho tôi lúc 9h sáng ngày 8/3/2017', '1750.00', '4', '2015-01-03 04:14:15', '2015-01-03 04:14:16');
INSERT INTO `orders` VALUES ('14', '7', null, '2015-01-03', '2017-03-03', 'nguyễn thị tiến', 'giao hàng cho tôi lúc 9h sáng ngày 8/3/2017', '1750.00', '3', '2015-01-03 04:14:15', '2015-01-03 04:14:16');
INSERT INTO `orders` VALUES ('15', '7', null, '2015-01-03', '2017-03-03', 'nguyễn thị tiến', 'giao hàng cho tôi lúc 9h sáng ngày 8/3/2017', '1750.00', '4', '2015-01-03 04:14:15', '2015-01-03 04:14:16');
INSERT INTO `orders` VALUES ('16', '7', null, '2015-01-03', '2017-03-03', 'nguyễn thị tiến', 'giao hàng cho tôi lúc 9h sáng ngày 8/3/2017', '1750.00', '3', '2015-01-03 04:14:15', '2015-01-03 04:14:16');
INSERT INTO `orders` VALUES ('17', '7', null, '2015-01-03', '2017-03-03', 'nguyễn thị tiến', 'giao hàng cho tôi lúc 9h sáng ngày 8/3/2017', '1750.00', '4', '2015-01-03 04:14:15', '2015-01-03 04:14:16');
INSERT INTO `orders` VALUES ('18', '7', null, '2015-01-03', '2017-03-03', 'nguyễn thị tiến', 'giao hàng cho tôi lúc 9h sáng ngày 8/3/2017', '1750.00', '3', '2015-01-03 04:14:15', '2015-01-03 04:14:16');
INSERT INTO `orders` VALUES ('19', '7', null, '2015-01-03', '2017-03-03', 'nguyễn thị tiến', 'giao hàng cho tôi lúc 9h sáng ngày 8/3/2017', '1750.00', '3', '2015-01-03 04:14:15', '2015-01-03 04:14:16');
INSERT INTO `orders` VALUES ('20', '7', null, '2015-01-03', '2017-03-03', 'nguyễn thị tiến', 'giao hàng cho tôi lúc 9h sáng ngày 8/3/2017', '1750.00', '3', '2015-01-03 04:14:15', '2015-01-03 04:14:16');
INSERT INTO `orders` VALUES ('21', '7', null, '2015-01-03', '2017-03-03', 'nguyễn thị tiến', 'giao hàng cho tôi lúc 9h sáng ngày 8/3/2017', '1750.00', '4', '2015-01-03 04:14:15', '2015-01-03 04:14:16');
INSERT INTO `orders` VALUES ('22', '7', null, '2015-01-03', '2017-03-03', 'nguyễn thị tiến', 'giao hàng cho tôi lúc 9h sáng ngày 8/3/2017', '1750.00', '4', '2015-01-03 04:14:15', '2015-01-03 04:14:16');
INSERT INTO `orders` VALUES ('23', '7', null, '2015-01-03', '2017-03-03', 'nguyễn thị tiến', 'giao hàng cho tôi lúc 9h sáng ngày 8/3/2017', '1750.00', '3', '2015-01-03 04:14:15', '2015-01-03 04:14:16');
INSERT INTO `orders` VALUES ('24', '7', null, '2015-01-03', '2017-03-03', 'nguyễn thị tiến', 'giao hàng cho tôi lúc 9h sáng ngày 8/3/2017', '1750.00', '4', '2015-01-03 04:14:15', '2015-01-03 04:14:16');
INSERT INTO `orders` VALUES ('25', '7', null, '2015-01-03', '2017-03-03', 'nguyễn thị tiến', 'giao hàng cho tôi lúc 9h sáng ngày 8/3/2017', '1750.00', '3', '2015-01-03 04:14:15', '2015-01-03 04:14:16');
INSERT INTO `orders` VALUES ('26', '7', null, '2015-01-03', '2017-03-03', 'nguyễn thị tiến', 'giao hàng cho tôi lúc 9h sáng ngày 8/3/2017', '1750.00', '3', '2015-01-03 04:14:15', '2015-01-03 04:14:16');
INSERT INTO `orders` VALUES ('27', '7', null, '2015-01-03', '2017-03-03', 'nguyễn thị tiến', 'giao hàng cho tôi lúc 9h sáng ngày 8/3/2017', '1750.00', '3', '2015-01-03 04:14:15', '2015-01-03 04:14:16');
INSERT INTO `orders` VALUES ('28', '7', null, '2015-01-03', '2017-03-03', 'nguyễn thị tiến', 'giao hàng cho tôi lúc 9h sáng ngày 8/3/2017', '1750.00', '3', '2015-01-03 04:14:15', '2015-01-03 04:14:16');
INSERT INTO `orders` VALUES ('29', '7', null, '2015-01-03', '2017-03-03', 'nguyễn thị tiến', 'giao hàng cho tôi lúc 9h sáng ngày 8/3/2017', '1750.00', '4', '2015-01-03 04:14:15', '2015-01-03 04:14:16');
INSERT INTO `orders` VALUES ('30', '7', null, '2015-01-03', '2017-03-03', 'nguyễn thị tiến', 'giao hàng cho tôi lúc 9h sáng ngày 8/3/2017', '1750.00', '4', '2015-01-03 04:14:15', '2015-01-03 04:14:16');
INSERT INTO `orders` VALUES ('31', '7', null, '2015-01-03', '2017-03-03', 'nguyễn thị tiến', 'giao hàng cho tôi lúc 9h sáng ngày 8/3/2017', '1750.00', '4', '2015-01-03 04:14:15', '2015-01-03 04:14:16');
INSERT INTO `orders` VALUES ('32', '7', null, '2015-01-03', '2017-03-03', 'nguyễn thị tiến', 'giao hàng cho tôi lúc 9h sáng ngày 8/3/2017', '1750.00', '3', '2015-01-03 04:14:15', '2015-01-03 04:14:16');
INSERT INTO `orders` VALUES ('33', '7', null, '2015-01-03', '2017-03-03', 'nguyễn thị tiến', 'giao hàng cho tôi lúc 9h sáng ngày 8/3/2017', '1750.00', '4', '2015-01-03 04:14:15', '2015-01-03 04:14:16');
INSERT INTO `orders` VALUES ('34', '7', null, '2015-01-03', '2017-03-03', 'nguyễn thị tiến', 'giao hàng cho tôi lúc 9h sáng ngày 8/3/2017', '1750.00', '3', '2015-01-03 04:14:15', '2015-01-03 04:14:16');
INSERT INTO `orders` VALUES ('35', '7', null, '2015-01-03', '2017-03-03', 'nguyễn thị tiến', 'giao hàng cho tôi lúc 9h sáng ngày 8/3/2017', '1750.00', '3', '2015-01-03 04:14:15', '2015-01-03 04:14:16');
INSERT INTO `orders` VALUES ('36', '7', null, '2015-01-03', '2017-03-03', 'nguyễn thị tiến', 'giao hàng cho tôi lúc 9h sáng ngày 8/3/2017', '1750.00', '3', '2015-01-03 04:14:15', '2015-01-03 04:14:16');
INSERT INTO `orders` VALUES ('37', '7', null, '2015-01-03', '2017-03-03', 'nguyễn thị tiến', 'giao hàng cho tôi lúc 9h sáng ngày 8/3/2017', '1750.00', '4', '2015-01-03 04:14:15', '2015-01-03 04:14:16');
INSERT INTO `orders` VALUES ('38', '7', null, '2015-01-03', '2017-03-03', 'nguyễn thị tiến', 'giao hàng cho tôi lúc 9h sáng ngày 8/3/2017', '1750.00', '4', '2015-01-03 04:14:15', '2015-01-03 04:14:16');
INSERT INTO `orders` VALUES ('39', '7', null, '2015-01-03', '2017-03-03', 'nguyễn thị tiến', 'giao hàng cho tôi lúc 9h sáng ngày 8/3/2017', '1750.00', '4', '2015-01-03 04:14:15', '2015-01-03 04:14:16');
INSERT INTO `orders` VALUES ('40', '7', null, '2015-02-03', '2017-03-03', 'nguyễn thị tiến', 'giao hàng cho tôi lúc 9h sáng ngày 8/3/2017', '1750.00', '3', '2015-02-03 04:14:15', '2015-02-03 04:14:16');
INSERT INTO `orders` VALUES ('41', '7', null, '2015-02-03', '2017-03-03', 'nguyễn thị tiến', 'giao hàng cho tôi lúc 9h sáng ngày 8/3/2017', '1750.00', '4', '2015-02-03 04:14:15', '2015-02-03 04:14:16');
INSERT INTO `orders` VALUES ('42', '7', null, '2015-02-03', '2017-03-03', 'nguyễn thị tiến', 'giao hàng cho tôi lúc 9h sáng ngày 8/3/2017', '1750.00', '4', '2015-02-03 04:14:15', '2015-02-03 04:14:16');
INSERT INTO `orders` VALUES ('43', '7', null, '2015-02-03', '2017-03-03', 'nguyễn thị tiến', 'giao hàng cho tôi lúc 9h sáng ngày 8/3/2017', '1750.00', '4', '2015-02-03 04:14:15', '2015-02-03 04:14:16');
INSERT INTO `orders` VALUES ('44', '7', null, '2015-02-03', '2017-03-03', 'nguyễn thị tiến', 'giao hàng cho tôi lúc 9h sáng ngày 8/3/2017', '1750.00', '3', '2015-02-03 04:14:15', '2015-02-03 04:14:16');
INSERT INTO `orders` VALUES ('45', '7', null, '2015-02-03', '2017-03-03', 'nguyễn thị tiến', 'giao hàng cho tôi lúc 9h sáng ngày 8/3/2017', '1750.00', '3', '2015-02-03 04:14:15', '2015-02-03 04:14:16');
INSERT INTO `orders` VALUES ('46', '7', null, '2015-02-03', '2017-03-03', 'nguyễn thị tiến', 'giao hàng cho tôi lúc 9h sáng ngày 8/3/2017', '1750.00', '3', '2015-02-03 04:14:15', '2015-02-03 04:14:16');
INSERT INTO `orders` VALUES ('47', '7', null, '2015-02-03', '2017-03-03', 'nguyễn thị tiến', 'giao hàng cho tôi lúc 9h sáng ngày 8/3/2017', '1750.00', '3', '2015-02-03 04:14:15', '2015-02-03 04:14:16');
INSERT INTO `orders` VALUES ('48', '7', null, '2015-02-03', '2017-03-03', 'nguyễn thị tiến', 'giao hàng cho tôi lúc 9h sáng ngày 8/3/2017', '1750.00', '4', '2015-02-03 04:14:15', '2015-02-03 04:14:16');
INSERT INTO `orders` VALUES ('49', '7', null, '2015-02-03', '2017-03-03', 'nguyễn thị tiến', 'giao hàng cho tôi lúc 9h sáng ngày 8/3/2017', '1750.00', '4', '2015-02-03 04:14:15', '2015-02-03 04:14:16');
INSERT INTO `orders` VALUES ('50', '7', null, '2015-02-03', '2017-03-03', 'nguyễn thị tiến', 'giao hàng cho tôi lúc 9h sáng ngày 8/3/2017', '1750.00', '4', '2015-02-03 04:14:15', '2015-02-03 04:14:16');
INSERT INTO `orders` VALUES ('51', '7', null, '2015-02-03', '2017-03-03', 'nguyễn thị tiến', 'giao hàng cho tôi lúc 9h sáng ngày 8/3/2017', '1750.00', '4', '2015-02-03 04:14:15', '2015-02-03 04:14:16');
INSERT INTO `orders` VALUES ('52', '7', null, '2015-02-03', '2017-03-03', 'nguyễn thị tiến', 'giao hàng cho tôi lúc 9h sáng ngày 8/3/2017', '1750.00', '4', '2015-02-03 04:14:15', '2015-02-03 04:14:16');
INSERT INTO `orders` VALUES ('53', '7', null, '2015-02-03', '2017-03-03', 'nguyễn thị tiến', 'giao hàng cho tôi lúc 9h sáng ngày 8/3/2017', '1750.00', '3', '2015-02-03 04:14:15', '2015-02-03 04:14:16');
INSERT INTO `orders` VALUES ('54', '7', null, '2015-02-03', '2017-03-03', 'nguyễn thị tiến', 'giao hàng cho tôi lúc 9h sáng ngày 8/3/2017', '1750.00', '4', '2015-02-03 04:14:15', '2015-02-03 04:14:16');
INSERT INTO `orders` VALUES ('55', '7', null, '2015-02-03', '2017-03-03', 'nguyễn thị tiến', 'giao hàng cho tôi lúc 9h sáng ngày 8/3/2017', '1750.00', '4', '2015-02-03 04:14:15', '2015-02-03 04:14:16');
INSERT INTO `orders` VALUES ('56', '7', null, '2015-02-03', '2017-03-03', 'nguyễn thị tiến', 'giao hàng cho tôi lúc 9h sáng ngày 8/3/2017', '1750.00', '4', '2015-02-03 04:14:15', '2015-02-03 04:14:16');
INSERT INTO `orders` VALUES ('57', '7', null, '2015-02-03', '2017-03-03', 'nguyễn thị tiến', 'giao hàng cho tôi lúc 9h sáng ngày 8/3/2017', '1750.00', '3', '2015-02-03 04:14:15', '2015-02-03 04:14:16');
INSERT INTO `orders` VALUES ('58', '7', null, '2015-02-03', '2017-03-03', 'nguyễn thị tiến', 'giao hàng cho tôi lúc 9h sáng ngày 8/3/2017', '1750.00', '3', '2015-02-03 04:14:15', '2015-02-03 04:14:16');
INSERT INTO `orders` VALUES ('59', '7', null, '2015-02-03', '2017-03-03', 'nguyễn thị tiến', 'giao hàng cho tôi lúc 9h sáng ngày 8/3/2017', '1750.00', '4', '2015-02-03 04:14:15', '2015-02-03 04:14:16');
INSERT INTO `orders` VALUES ('60', '7', null, '2015-02-03', '2017-03-03', 'nguyễn thị tiến', 'giao hàng cho tôi lúc 9h sáng ngày 8/3/2017', '1750.00', '3', '2015-02-03 04:14:15', '2015-02-03 04:14:16');
INSERT INTO `orders` VALUES ('61', '7', null, '2015-02-03', '2017-03-03', 'nguyễn thị tiến', 'giao hàng cho tôi lúc 9h sáng ngày 8/3/2017', '1750.00', '3', '2015-02-03 04:14:15', '2015-02-03 04:14:16');
INSERT INTO `orders` VALUES ('62', '7', null, '2015-02-03', '2017-03-03', 'nguyễn thị tiến', 'giao hàng cho tôi lúc 9h sáng ngày 8/3/2017', '1750.00', '4', '2015-02-03 04:14:15', '2015-02-03 04:14:16');
INSERT INTO `orders` VALUES ('63', '7', null, '2015-02-03', '2017-03-03', 'nguyễn thị tiến', 'giao hàng cho tôi lúc 9h sáng ngày 8/3/2017', '1750.00', '3', '2015-02-03 04:14:15', '2015-02-03 04:14:16');
INSERT INTO `orders` VALUES ('64', '7', null, '2015-02-03', '2017-03-03', 'nguyễn thị tiến', 'giao hàng cho tôi lúc 9h sáng ngày 8/3/2017', '1750.00', '3', '2015-02-03 04:14:15', '2015-02-03 04:14:16');
INSERT INTO `orders` VALUES ('65', '7', null, '2015-02-03', '2017-03-03', 'nguyễn thị tiến', 'giao hàng cho tôi lúc 9h sáng ngày 8/3/2017', '1750.00', '3', '2015-02-03 04:14:15', '2015-02-03 04:14:16');
INSERT INTO `orders` VALUES ('66', '7', null, '2015-02-03', '2017-03-03', 'nguyễn thị tiến', 'giao hàng cho tôi lúc 9h sáng ngày 8/3/2017', '1750.00', '4', '2015-02-03 04:14:15', '2015-02-03 04:14:16');
INSERT INTO `orders` VALUES ('67', '7', null, '2015-02-03', '2017-03-03', 'nguyễn thị tiến', 'giao hàng cho tôi lúc 9h sáng ngày 8/3/2017', '1750.00', '4', '2015-02-03 04:14:15', '2015-02-03 04:14:16');
INSERT INTO `orders` VALUES ('68', '7', null, '2015-02-03', '2017-03-03', 'nguyễn thị tiến', 'giao hàng cho tôi lúc 9h sáng ngày 8/3/2017', '1750.00', '4', '2015-02-03 04:14:15', '2015-02-03 04:14:16');
INSERT INTO `orders` VALUES ('69', '7', null, '2015-02-03', '2017-03-03', 'nguyễn thị tiến', 'giao hàng cho tôi lúc 9h sáng ngày 8/3/2017', '1750.00', '3', '2015-02-03 04:14:15', '2015-02-03 04:14:16');
INSERT INTO `orders` VALUES ('70', '7', null, '2015-02-03', '2017-03-03', 'nguyễn thị tiến', 'giao hàng cho tôi lúc 9h sáng ngày 8/3/2017', '1750.00', '4', '2015-02-03 04:14:15', '2015-02-03 04:14:16');
INSERT INTO `orders` VALUES ('71', '7', null, '2015-02-03', '2017-03-03', 'nguyễn thị tiến', 'giao hàng cho tôi lúc 9h sáng ngày 8/3/2017', '1750.00', '3', '2015-02-03 04:14:15', '2015-02-03 04:14:16');
INSERT INTO `orders` VALUES ('72', '7', null, '2015-02-03', '2017-03-03', 'nguyễn thị tiến', 'giao hàng cho tôi lúc 9h sáng ngày 8/3/2017', '1750.00', '3', '2015-02-03 04:14:15', '2015-02-03 04:14:16');
INSERT INTO `orders` VALUES ('73', '7', null, '2015-02-03', '2017-03-03', 'nguyễn thị tiến', 'giao hàng cho tôi lúc 9h sáng ngày 8/3/2017', '1750.00', '4', '2015-02-03 04:14:15', '2015-02-03 04:14:16');
INSERT INTO `orders` VALUES ('74', '7', null, '2015-03-03', '2017-03-03', 'nguyễn thị tiến', 'giao hàng cho tôi lúc 9h sáng ngày 8/3/2017', '1750.00', '4', '2015-03-03 04:14:15', '2015-03-03 04:14:16');
INSERT INTO `orders` VALUES ('75', '7', null, '2015-03-03', '2017-03-03', 'nguyễn thị tiến', 'giao hàng cho tôi lúc 9h sáng ngày 8/3/2017', '1750.00', '3', '2015-03-03 04:14:15', '2015-03-03 04:14:16');
INSERT INTO `orders` VALUES ('76', '7', null, '2015-03-03', '2017-03-03', 'nguyễn thị tiến', 'giao hàng cho tôi lúc 9h sáng ngày 8/3/2017', '1750.00', '4', '2015-03-03 04:14:15', '2015-03-03 04:14:16');
INSERT INTO `orders` VALUES ('77', '7', null, '2015-03-03', '2017-03-03', 'nguyễn thị tiến', 'giao hàng cho tôi lúc 9h sáng ngày 8/3/2017', '1750.00', '4', '2015-03-03 04:14:15', '2015-03-03 04:14:16');
INSERT INTO `orders` VALUES ('78', '7', null, '2015-03-03', '2017-03-03', 'nguyễn thị tiến', 'giao hàng cho tôi lúc 9h sáng ngày 8/3/2017', '1750.00', '4', '2015-03-03 04:14:15', '2015-03-03 04:14:16');
INSERT INTO `orders` VALUES ('79', '7', null, '2015-03-03', '2017-03-03', 'nguyễn thị tiến', 'giao hàng cho tôi lúc 9h sáng ngày 8/3/2017', '1750.00', '3', '2015-03-03 04:14:15', '2015-03-03 04:14:16');
INSERT INTO `orders` VALUES ('80', '7', null, '2015-03-03', '2017-03-03', 'nguyễn thị tiến', 'giao hàng cho tôi lúc 9h sáng ngày 8/3/2017', '1750.00', '3', '2015-03-03 04:14:15', '2015-03-03 04:14:16');
INSERT INTO `orders` VALUES ('81', '7', null, '2015-03-03', '2017-03-03', 'nguyễn thị tiến', 'giao hàng cho tôi lúc 9h sáng ngày 8/3/2017', '1750.00', '4', '2015-03-03 04:14:15', '2015-03-03 04:14:16');
INSERT INTO `orders` VALUES ('82', '7', null, '2015-03-03', '2017-03-03', 'nguyễn thị tiến', 'giao hàng cho tôi lúc 9h sáng ngày 8/3/2017', '1750.00', '3', '2015-03-03 04:14:15', '2015-03-03 04:14:16');
INSERT INTO `orders` VALUES ('83', '7', null, '2015-03-03', '2017-03-03', 'nguyễn thị tiến', 'giao hàng cho tôi lúc 9h sáng ngày 8/3/2017', '1750.00', '3', '2015-03-03 04:14:15', '2015-03-03 04:14:16');
INSERT INTO `orders` VALUES ('84', '7', null, '2015-03-03', '2017-03-03', 'nguyễn thị tiến', 'giao hàng cho tôi lúc 9h sáng ngày 8/3/2017', '1750.00', '4', '2015-03-03 04:14:15', '2015-03-03 04:14:16');
INSERT INTO `orders` VALUES ('85', '7', null, '2015-03-03', '2017-03-03', 'nguyễn thị tiến', 'giao hàng cho tôi lúc 9h sáng ngày 8/3/2017', '1750.00', '4', '2015-03-03 04:14:15', '2015-03-03 04:14:16');
INSERT INTO `orders` VALUES ('86', '7', null, '2015-03-03', '2017-03-03', 'nguyễn thị tiến', 'giao hàng cho tôi lúc 9h sáng ngày 8/3/2017', '1750.00', '3', '2015-03-03 04:14:15', '2015-03-03 04:14:16');
INSERT INTO `orders` VALUES ('87', '7', null, '2015-04-03', '2017-03-03', 'nguyễn thị tiến', 'giao hàng cho tôi lúc 9h sáng ngày 8/3/2017', '1750.00', '4', '2015-04-03 04:14:15', '2015-04-03 04:14:16');
INSERT INTO `orders` VALUES ('88', '7', null, '2015-04-03', '2017-03-03', 'nguyễn thị tiến', 'giao hàng cho tôi lúc 9h sáng ngày 8/3/2017', '1750.00', '3', '2015-04-03 04:14:15', '2015-04-03 04:14:16');
INSERT INTO `orders` VALUES ('89', '7', null, '2015-04-03', '2017-03-03', 'nguyễn thị tiến', 'giao hàng cho tôi lúc 9h sáng ngày 8/3/2017', '1750.00', '4', '2015-04-03 04:14:15', '2015-04-03 04:14:16');
INSERT INTO `orders` VALUES ('90', '7', null, '2015-04-03', '2017-03-03', 'nguyễn thị tiến', 'giao hàng cho tôi lúc 9h sáng ngày 8/3/2017', '1750.00', '3', '2015-04-03 04:14:15', '2015-04-03 04:14:16');
INSERT INTO `orders` VALUES ('91', '7', null, '2015-04-03', '2017-03-03', 'nguyễn thị tiến', 'giao hàng cho tôi lúc 9h sáng ngày 8/3/2017', '1750.00', '4', '2015-04-03 04:14:15', '2015-04-03 04:14:16');
INSERT INTO `orders` VALUES ('92', '7', null, '2015-04-03', '2017-03-03', 'nguyễn thị tiến', 'giao hàng cho tôi lúc 9h sáng ngày 8/3/2017', '1750.00', '4', '2015-04-03 04:14:15', '2015-04-03 04:14:16');
INSERT INTO `orders` VALUES ('93', '7', null, '2015-04-03', '2017-03-03', 'nguyễn thị tiến', 'giao hàng cho tôi lúc 9h sáng ngày 8/3/2017', '1750.00', '3', '2015-04-03 04:14:15', '2015-04-03 04:14:16');
INSERT INTO `orders` VALUES ('94', '7', null, '2015-04-03', '2017-03-03', 'nguyễn thị tiến', 'giao hàng cho tôi lúc 9h sáng ngày 8/3/2017', '1750.00', '4', '2015-04-03 04:14:15', '2015-04-03 04:14:16');
INSERT INTO `orders` VALUES ('95', '7', null, '2015-04-03', '2017-03-03', 'nguyễn thị tiến', 'giao hàng cho tôi lúc 9h sáng ngày 8/3/2017', '1750.00', '3', '2015-04-03 04:14:15', '2015-04-03 04:14:16');
INSERT INTO `orders` VALUES ('96', '7', null, '2015-04-03', '2017-03-03', 'nguyễn thị tiến', 'giao hàng cho tôi lúc 9h sáng ngày 8/3/2017', '1750.00', '3', '2015-04-03 04:14:15', '2015-04-03 04:14:16');
INSERT INTO `orders` VALUES ('97', '7', null, '2015-04-03', '2017-03-03', 'nguyễn thị tiến', 'giao hàng cho tôi lúc 9h sáng ngày 8/3/2017', '1750.00', '3', '2015-04-03 04:14:15', '2015-04-03 04:14:16');
INSERT INTO `orders` VALUES ('98', '7', null, '2015-04-03', '2017-03-03', 'nguyễn thị tiến', 'giao hàng cho tôi lúc 9h sáng ngày 8/3/2017', '1750.00', '3', '2015-04-03 04:14:15', '2015-04-03 04:14:16');
INSERT INTO `orders` VALUES ('99', '7', null, '2015-04-03', '2017-03-03', 'nguyễn thị tiến', 'giao hàng cho tôi lúc 9h sáng ngày 8/3/2017', '1750.00', '4', '2015-04-03 04:14:15', '2015-04-03 04:14:16');
INSERT INTO `orders` VALUES ('100', '7', null, '2015-04-03', '2017-03-03', 'nguyễn thị tiến', 'giao hàng cho tôi lúc 9h sáng ngày 8/3/2017', '1750.00', '3', '2015-04-03 04:14:15', '2015-04-03 04:14:16');
INSERT INTO `orders` VALUES ('101', '7', null, '2015-04-03', '2017-03-03', 'nguyễn thị tiến', 'giao hàng cho tôi lúc 9h sáng ngày 8/3/2017', '1750.00', '3', '2015-04-03 04:14:15', '2015-04-03 04:14:16');
INSERT INTO `orders` VALUES ('102', '7', null, '2015-04-03', '2017-03-03', 'nguyễn thị tiến', 'giao hàng cho tôi lúc 9h sáng ngày 8/3/2017', '1750.00', '4', '2015-04-03 04:14:15', '2015-04-03 04:14:16');
INSERT INTO `orders` VALUES ('103', '7', null, '2015-04-03', '2017-03-03', 'nguyễn thị tiến', 'giao hàng cho tôi lúc 9h sáng ngày 8/3/2017', '1750.00', '3', '2015-04-03 04:14:15', '2015-04-03 04:14:16');
INSERT INTO `orders` VALUES ('104', '7', null, '2015-04-03', '2017-03-03', 'nguyễn thị tiến', 'giao hàng cho tôi lúc 9h sáng ngày 8/3/2017', '1750.00', '3', '2015-04-03 04:14:15', '2015-04-03 04:14:16');
INSERT INTO `orders` VALUES ('105', '7', null, '2015-04-03', '2017-03-03', 'nguyễn thị tiến', 'giao hàng cho tôi lúc 9h sáng ngày 8/3/2017', '1750.00', '3', '2015-04-03 04:14:15', '2015-04-03 04:14:16');
INSERT INTO `orders` VALUES ('106', '7', null, '2015-04-03', '2017-03-03', 'nguyễn thị tiến', 'giao hàng cho tôi lúc 9h sáng ngày 8/3/2017', '1750.00', '3', '2015-04-03 04:14:15', '2015-04-03 04:14:16');
INSERT INTO `orders` VALUES ('107', '7', null, '2015-04-03', '2017-03-03', 'nguyễn thị tiến', 'giao hàng cho tôi lúc 9h sáng ngày 8/3/2017', '1750.00', '4', '2015-04-03 04:14:15', '2015-04-03 04:14:16');
INSERT INTO `orders` VALUES ('108', '7', null, '2015-04-03', '2017-03-03', 'nguyễn thị tiến', 'giao hàng cho tôi lúc 9h sáng ngày 8/3/2017', '1750.00', '4', '2015-04-03 04:14:15', '2015-04-03 04:14:16');
INSERT INTO `orders` VALUES ('109', '7', null, '2015-04-03', '2017-03-03', 'nguyễn thị tiến', 'giao hàng cho tôi lúc 9h sáng ngày 8/3/2017', '1750.00', '4', '2015-04-03 04:14:15', '2015-04-03 04:14:16');
INSERT INTO `orders` VALUES ('110', '7', null, '2015-04-03', '2017-03-03', 'nguyễn thị tiến', 'giao hàng cho tôi lúc 9h sáng ngày 8/3/2017', '1750.00', '4', '2015-04-03 04:14:15', '2015-04-03 04:14:16');
INSERT INTO `orders` VALUES ('111', '7', null, '2015-04-03', '2017-03-03', 'nguyễn thị tiến', 'giao hàng cho tôi lúc 9h sáng ngày 8/3/2017', '1750.00', '3', '2015-04-03 04:14:15', '2015-04-03 04:14:16');
INSERT INTO `orders` VALUES ('112', '7', null, '2015-04-03', '2017-03-03', 'nguyễn thị tiến', 'giao hàng cho tôi lúc 9h sáng ngày 8/3/2017', '1750.00', '3', '2015-04-03 04:14:15', '2015-04-03 04:14:16');
INSERT INTO `orders` VALUES ('113', '7', null, '2015-04-03', '2017-03-03', 'nguyễn thị tiến', 'giao hàng cho tôi lúc 9h sáng ngày 8/3/2017', '1750.00', '3', '2015-04-03 04:14:15', '2015-04-03 04:14:16');
INSERT INTO `orders` VALUES ('114', '7', null, '2015-05-03', '2017-03-03', 'nguyễn thị tiến', 'giao hàng cho tôi lúc 9h sáng ngày 8/3/2017', '1750.00', '4', '2015-05-03 04:14:15', '2015-05-03 04:14:16');
INSERT INTO `orders` VALUES ('115', '7', null, '2015-05-03', '2017-03-03', 'nguyễn thị tiến', 'giao hàng cho tôi lúc 9h sáng ngày 8/3/2017', '1750.00', '3', '2015-05-03 04:14:15', '2015-05-03 04:14:16');
INSERT INTO `orders` VALUES ('116', '7', null, '2015-05-03', '2017-03-03', 'nguyễn thị tiến', 'giao hàng cho tôi lúc 9h sáng ngày 8/3/2017', '1750.00', '4', '2015-05-03 04:14:15', '2015-05-03 04:14:16');
INSERT INTO `orders` VALUES ('117', '7', null, '2015-05-03', '2017-03-03', 'nguyễn thị tiến', 'giao hàng cho tôi lúc 9h sáng ngày 8/3/2017', '1750.00', '3', '2015-05-03 04:14:15', '2015-05-03 04:14:16');
INSERT INTO `orders` VALUES ('118', '7', null, '2015-05-03', '2017-03-03', 'nguyễn thị tiến', 'giao hàng cho tôi lúc 9h sáng ngày 8/3/2017', '1750.00', '3', '2015-05-03 04:14:15', '2015-05-03 04:14:16');
INSERT INTO `orders` VALUES ('119', '7', null, '2015-05-03', '2017-03-03', 'nguyễn thị tiến', 'giao hàng cho tôi lúc 9h sáng ngày 8/3/2017', '1750.00', '4', '2015-05-03 04:14:15', '2015-05-03 04:14:16');
INSERT INTO `orders` VALUES ('120', '7', null, '2015-05-03', '2017-03-03', 'nguyễn thị tiến', 'giao hàng cho tôi lúc 9h sáng ngày 8/3/2017', '1750.00', '4', '2015-05-03 04:14:15', '2015-05-03 04:14:16');
INSERT INTO `orders` VALUES ('121', '7', null, '2015-05-03', '2017-03-03', 'nguyễn thị tiến', 'giao hàng cho tôi lúc 9h sáng ngày 8/3/2017', '1750.00', '3', '2015-05-03 04:14:15', '2015-05-03 04:14:16');
INSERT INTO `orders` VALUES ('122', '7', null, '2015-05-03', '2017-03-03', 'nguyễn thị tiến', 'giao hàng cho tôi lúc 9h sáng ngày 8/3/2017', '1750.00', '4', '2015-05-03 04:14:15', '2015-05-03 04:14:16');
INSERT INTO `orders` VALUES ('123', '7', null, '2015-05-03', '2017-03-03', 'nguyễn thị tiến', 'giao hàng cho tôi lúc 9h sáng ngày 8/3/2017', '1750.00', '4', '2015-05-03 04:14:15', '2015-05-03 04:14:16');
INSERT INTO `orders` VALUES ('124', '7', null, '2015-05-03', '2017-03-03', 'nguyễn thị tiến', 'giao hàng cho tôi lúc 9h sáng ngày 8/3/2017', '1750.00', '4', '2015-05-03 04:14:15', '2015-05-03 04:14:16');
INSERT INTO `orders` VALUES ('125', '7', null, '2015-05-03', '2017-03-03', 'nguyễn thị tiến', 'giao hàng cho tôi lúc 9h sáng ngày 8/3/2017', '1750.00', '3', '2015-05-03 04:14:15', '2015-05-03 04:14:16');
INSERT INTO `orders` VALUES ('126', '7', null, '2015-05-03', '2017-03-03', 'nguyễn thị tiến', 'giao hàng cho tôi lúc 9h sáng ngày 8/3/2017', '1750.00', '4', '2015-05-03 04:14:15', '2015-05-03 04:14:16');
INSERT INTO `orders` VALUES ('127', '7', null, '2015-05-03', '2017-03-03', 'nguyễn thị tiến', 'giao hàng cho tôi lúc 9h sáng ngày 8/3/2017', '1750.00', '4', '2015-05-03 04:14:15', '2015-05-03 04:14:16');
INSERT INTO `orders` VALUES ('128', '7', null, '2015-05-03', '2017-03-03', 'nguyễn thị tiến', 'giao hàng cho tôi lúc 9h sáng ngày 8/3/2017', '1750.00', '4', '2015-05-03 04:14:15', '2015-05-03 04:14:16');
INSERT INTO `orders` VALUES ('129', '7', null, '2015-05-03', '2017-03-03', 'nguyễn thị tiến', 'giao hàng cho tôi lúc 9h sáng ngày 8/3/2017', '1750.00', '4', '2015-05-03 04:14:15', '2015-05-03 04:14:16');
INSERT INTO `orders` VALUES ('130', '7', null, '2015-05-03', '2017-03-03', 'nguyễn thị tiến', 'giao hàng cho tôi lúc 9h sáng ngày 8/3/2017', '1750.00', '3', '2015-05-03 04:14:15', '2015-05-03 04:14:16');
INSERT INTO `orders` VALUES ('131', '7', null, '2015-05-03', '2017-03-03', 'nguyễn thị tiến', 'giao hàng cho tôi lúc 9h sáng ngày 8/3/2017', '1750.00', '3', '2015-05-03 04:14:15', '2015-05-03 04:14:16');
INSERT INTO `orders` VALUES ('132', '7', null, '2015-05-03', '2017-03-03', 'nguyễn thị tiến', 'giao hàng cho tôi lúc 9h sáng ngày 8/3/2017', '1750.00', '4', '2015-05-03 04:14:15', '2015-05-03 04:14:16');
INSERT INTO `orders` VALUES ('133', '7', null, '2015-05-03', '2017-03-03', 'nguyễn thị tiến', 'giao hàng cho tôi lúc 9h sáng ngày 8/3/2017', '1750.00', '4', '2015-05-03 04:14:15', '2015-05-03 04:14:16');
INSERT INTO `orders` VALUES ('134', '7', null, '2015-05-03', '2017-03-03', 'nguyễn thị tiến', 'giao hàng cho tôi lúc 9h sáng ngày 8/3/2017', '1750.00', '3', '2015-05-03 04:14:15', '2015-05-03 04:14:16');
INSERT INTO `orders` VALUES ('135', '7', null, '2015-05-03', '2017-03-03', 'nguyễn thị tiến', 'giao hàng cho tôi lúc 9h sáng ngày 8/3/2017', '1750.00', '4', '2015-05-03 04:14:15', '2015-05-03 04:14:16');
INSERT INTO `orders` VALUES ('136', '7', null, '2015-05-03', '2017-03-03', 'nguyễn thị tiến', 'giao hàng cho tôi lúc 9h sáng ngày 8/3/2017', '1750.00', '3', '2015-05-03 04:14:15', '2015-05-03 04:14:16');
INSERT INTO `orders` VALUES ('137', '7', null, '2015-05-03', '2017-03-03', 'nguyễn thị tiến', 'giao hàng cho tôi lúc 9h sáng ngày 8/3/2017', '1750.00', '3', '2015-05-03 04:14:15', '2015-05-03 04:14:16');
INSERT INTO `orders` VALUES ('138', '7', null, '2015-05-03', '2017-03-03', 'nguyễn thị tiến', 'giao hàng cho tôi lúc 9h sáng ngày 8/3/2017', '1750.00', '4', '2015-05-03 04:14:15', '2015-05-03 04:14:16');
INSERT INTO `orders` VALUES ('139', '7', null, '2015-05-03', '2017-03-03', 'nguyễn thị tiến', 'giao hàng cho tôi lúc 9h sáng ngày 8/3/2017', '1750.00', '3', '2015-05-03 04:14:15', '2015-05-03 04:14:16');
INSERT INTO `orders` VALUES ('140', '7', null, '2015-05-03', '2017-03-03', 'nguyễn thị tiến', 'giao hàng cho tôi lúc 9h sáng ngày 8/3/2017', '1750.00', '3', '2015-05-03 04:14:15', '2015-05-03 04:14:16');
INSERT INTO `orders` VALUES ('141', '7', null, '2015-05-03', '2017-03-03', 'nguyễn thị tiến', 'giao hàng cho tôi lúc 9h sáng ngày 8/3/2017', '1750.00', '3', '2015-05-03 04:14:15', '2015-05-03 04:14:16');
INSERT INTO `orders` VALUES ('142', '7', null, '2015-05-03', '2017-03-03', 'nguyễn thị tiến', 'giao hàng cho tôi lúc 9h sáng ngày 8/3/2017', '1750.00', '4', '2015-05-03 04:14:15', '2015-05-03 04:14:16');
INSERT INTO `orders` VALUES ('143', '7', null, '2015-05-03', '2017-03-03', 'nguyễn thị tiến', 'giao hàng cho tôi lúc 9h sáng ngày 8/3/2017', '1750.00', '3', '2015-05-03 04:14:15', '2015-05-03 04:14:16');
INSERT INTO `orders` VALUES ('144', '7', null, '2015-05-03', '2017-03-03', 'nguyễn thị tiến', 'giao hàng cho tôi lúc 9h sáng ngày 8/3/2017', '1750.00', '3', '2015-05-03 04:14:15', '2015-05-03 04:14:16');
INSERT INTO `orders` VALUES ('145', '7', null, '2015-05-03', '2017-03-03', 'nguyễn thị tiến', 'giao hàng cho tôi lúc 9h sáng ngày 8/3/2017', '1750.00', '3', '2015-05-03 04:14:15', '2015-05-03 04:14:16');
INSERT INTO `orders` VALUES ('146', '7', null, '2015-05-03', '2017-03-03', 'nguyễn thị tiến', 'giao hàng cho tôi lúc 9h sáng ngày 8/3/2017', '1750.00', '3', '2015-05-03 04:14:15', '2015-05-03 04:14:16');
INSERT INTO `orders` VALUES ('147', '7', null, '2015-05-03', '2017-03-03', 'nguyễn thị tiến', 'giao hàng cho tôi lúc 9h sáng ngày 8/3/2017', '1750.00', '4', '2015-05-03 04:14:15', '2015-05-03 04:14:16');
INSERT INTO `orders` VALUES ('148', '7', null, '2015-05-03', '2017-03-03', 'nguyễn thị tiến', 'giao hàng cho tôi lúc 9h sáng ngày 8/3/2017', '1750.00', '3', '2015-05-03 04:14:15', '2015-05-03 04:14:16');
INSERT INTO `orders` VALUES ('149', '7', null, '2015-05-03', '2017-03-03', 'nguyễn thị tiến', 'giao hàng cho tôi lúc 9h sáng ngày 8/3/2017', '1750.00', '3', '2015-05-03 04:14:15', '2015-05-03 04:14:16');
INSERT INTO `orders` VALUES ('150', '7', null, '2015-05-03', '2017-03-03', 'nguyễn thị tiến', 'giao hàng cho tôi lúc 9h sáng ngày 8/3/2017', '1750.00', '3', '2015-05-03 04:14:15', '2015-05-03 04:14:16');
INSERT INTO `orders` VALUES ('151', '7', null, '2015-05-03', '2017-03-03', 'nguyễn thị tiến', 'giao hàng cho tôi lúc 9h sáng ngày 8/3/2017', '1750.00', '4', '2015-05-03 04:14:15', '2015-05-03 04:14:16');
INSERT INTO `orders` VALUES ('152', '7', null, '2015-05-03', '2017-03-03', 'nguyễn thị tiến', 'giao hàng cho tôi lúc 9h sáng ngày 8/3/2017', '1750.00', '4', '2015-05-03 04:14:15', '2015-05-03 04:14:16');
INSERT INTO `orders` VALUES ('153', '7', null, '2015-06-03', '2017-03-03', 'nguyễn thị tiến', 'giao hàng cho tôi lúc 9h sáng ngày 8/3/2017', '1750.00', '3', '2015-06-03 04:14:15', '2015-06-03 04:14:16');
INSERT INTO `orders` VALUES ('154', '7', null, '2015-06-03', '2017-03-03', 'nguyễn thị tiến', 'giao hàng cho tôi lúc 9h sáng ngày 8/3/2017', '1750.00', '3', '2015-06-03 04:14:15', '2015-06-03 04:14:16');
INSERT INTO `orders` VALUES ('155', '7', null, '2015-06-03', '2017-03-03', 'nguyễn thị tiến', 'giao hàng cho tôi lúc 9h sáng ngày 8/3/2017', '1750.00', '4', '2015-06-03 04:14:15', '2015-06-03 04:14:16');
INSERT INTO `orders` VALUES ('156', '7', null, '2015-06-03', '2017-03-03', 'nguyễn thị tiến', 'giao hàng cho tôi lúc 9h sáng ngày 8/3/2017', '1750.00', '3', '2015-06-03 04:14:15', '2015-06-03 04:14:16');
INSERT INTO `orders` VALUES ('157', '7', null, '2015-06-03', '2017-03-03', 'nguyễn thị tiến', 'giao hàng cho tôi lúc 9h sáng ngày 8/3/2017', '1750.00', '3', '2015-06-03 04:14:15', '2015-06-03 04:14:16');
INSERT INTO `orders` VALUES ('158', '7', null, '2015-06-03', '2017-03-03', 'nguyễn thị tiến', 'giao hàng cho tôi lúc 9h sáng ngày 8/3/2017', '1750.00', '3', '2015-06-03 04:14:15', '2015-06-03 04:14:16');
INSERT INTO `orders` VALUES ('159', '7', null, '2015-06-03', '2017-03-03', 'nguyễn thị tiến', 'giao hàng cho tôi lúc 9h sáng ngày 8/3/2017', '1750.00', '4', '2015-06-03 04:14:15', '2015-06-03 04:14:16');
INSERT INTO `orders` VALUES ('160', '7', null, '2015-06-03', '2017-03-03', 'nguyễn thị tiến', 'giao hàng cho tôi lúc 9h sáng ngày 8/3/2017', '1750.00', '3', '2015-06-03 04:14:15', '2015-06-03 04:14:16');
INSERT INTO `orders` VALUES ('161', '7', null, '2015-06-03', '2017-03-03', 'nguyễn thị tiến', 'giao hàng cho tôi lúc 9h sáng ngày 8/3/2017', '1750.00', '4', '2015-06-03 04:14:15', '2015-06-03 04:14:16');
INSERT INTO `orders` VALUES ('162', '7', null, '2015-06-03', '2017-03-03', 'nguyễn thị tiến', 'giao hàng cho tôi lúc 9h sáng ngày 8/3/2017', '1750.00', '4', '2015-06-03 04:14:15', '2015-06-03 04:14:16');
INSERT INTO `orders` VALUES ('163', '7', null, '2015-06-03', '2017-03-03', 'nguyễn thị tiến', 'giao hàng cho tôi lúc 9h sáng ngày 8/3/2017', '1750.00', '4', '2015-06-03 04:14:15', '2015-06-03 04:14:16');
INSERT INTO `orders` VALUES ('164', '7', null, '2015-06-03', '2017-03-03', 'nguyễn thị tiến', 'giao hàng cho tôi lúc 9h sáng ngày 8/3/2017', '1750.00', '3', '2015-06-03 04:14:15', '2015-06-03 04:14:16');
INSERT INTO `orders` VALUES ('165', '7', null, '2015-06-03', '2017-03-03', 'nguyễn thị tiến', 'giao hàng cho tôi lúc 9h sáng ngày 8/3/2017', '1750.00', '3', '2015-06-03 04:14:15', '2015-06-03 04:14:16');
INSERT INTO `orders` VALUES ('166', '7', null, '2015-06-03', '2017-03-03', 'nguyễn thị tiến', 'giao hàng cho tôi lúc 9h sáng ngày 8/3/2017', '1750.00', '4', '2015-06-03 04:14:15', '2015-06-03 04:14:16');
INSERT INTO `orders` VALUES ('167', '7', null, '2015-06-03', '2017-03-03', 'nguyễn thị tiến', 'giao hàng cho tôi lúc 9h sáng ngày 8/3/2017', '1750.00', '4', '2015-06-03 04:14:15', '2015-06-03 04:14:16');
INSERT INTO `orders` VALUES ('168', '7', null, '2015-06-03', '2017-03-03', 'nguyễn thị tiến', 'giao hàng cho tôi lúc 9h sáng ngày 8/3/2017', '1750.00', '3', '2015-06-03 04:14:15', '2015-06-03 04:14:16');
INSERT INTO `orders` VALUES ('169', '7', null, '2015-06-03', '2017-03-03', 'nguyễn thị tiến', 'giao hàng cho tôi lúc 9h sáng ngày 8/3/2017', '1750.00', '4', '2015-06-03 04:14:15', '2015-06-03 04:14:16');
INSERT INTO `orders` VALUES ('170', '7', null, '2015-06-03', '2017-03-03', 'nguyễn thị tiến', 'giao hàng cho tôi lúc 9h sáng ngày 8/3/2017', '1750.00', '3', '2015-06-03 04:14:15', '2015-06-03 04:14:16');
INSERT INTO `orders` VALUES ('171', '7', null, '2015-06-03', '2017-03-03', 'nguyễn thị tiến', 'giao hàng cho tôi lúc 9h sáng ngày 8/3/2017', '1750.00', '4', '2015-06-03 04:14:15', '2015-06-03 04:14:16');
INSERT INTO `orders` VALUES ('172', '7', null, '2015-06-03', '2017-03-03', 'nguyễn thị tiến', 'giao hàng cho tôi lúc 9h sáng ngày 8/3/2017', '1750.00', '3', '2015-06-03 04:14:15', '2015-06-03 04:14:16');
INSERT INTO `orders` VALUES ('173', '7', null, '2015-06-03', '2017-03-03', 'nguyễn thị tiến', 'giao hàng cho tôi lúc 9h sáng ngày 8/3/2017', '1750.00', '4', '2015-06-03 04:14:15', '2015-06-03 04:14:16');
INSERT INTO `orders` VALUES ('174', '7', null, '2015-06-03', '2017-03-03', 'nguyễn thị tiến', 'giao hàng cho tôi lúc 9h sáng ngày 8/3/2017', '1750.00', '4', '2015-06-03 04:14:15', '2015-06-03 04:14:16');
INSERT INTO `orders` VALUES ('175', '7', null, '2015-07-03', '2017-03-03', 'nguyễn thị tiến', 'giao hàng cho tôi lúc 9h sáng ngày 8/3/2017', '1750.00', '4', '2015-07-03 04:14:15', '2015-07-03 04:14:16');
INSERT INTO `orders` VALUES ('176', '7', null, '2015-07-03', '2017-03-03', 'nguyễn thị tiến', 'giao hàng cho tôi lúc 9h sáng ngày 8/3/2017', '1750.00', '4', '2015-07-03 04:14:15', '2015-07-03 04:14:16');
INSERT INTO `orders` VALUES ('177', '7', null, '2015-07-03', '2017-03-03', 'nguyễn thị tiến', 'giao hàng cho tôi lúc 9h sáng ngày 8/3/2017', '1750.00', '4', '2015-07-03 04:14:15', '2015-07-03 04:14:16');
INSERT INTO `orders` VALUES ('178', '7', null, '2015-07-03', '2017-03-03', 'nguyễn thị tiến', 'giao hàng cho tôi lúc 9h sáng ngày 8/3/2017', '1750.00', '4', '2015-07-03 04:14:15', '2015-07-03 04:14:16');
INSERT INTO `orders` VALUES ('179', '7', null, '2015-07-03', '2017-03-03', 'nguyễn thị tiến', 'giao hàng cho tôi lúc 9h sáng ngày 8/3/2017', '1750.00', '4', '2015-07-03 04:14:15', '2015-07-03 04:14:16');
INSERT INTO `orders` VALUES ('180', '7', null, '2015-07-03', '2017-03-03', 'nguyễn thị tiến', 'giao hàng cho tôi lúc 9h sáng ngày 8/3/2017', '1750.00', '4', '2015-07-03 04:14:15', '2015-07-03 04:14:16');
INSERT INTO `orders` VALUES ('181', '7', null, '2015-07-03', '2017-03-03', 'nguyễn thị tiến', 'giao hàng cho tôi lúc 9h sáng ngày 8/3/2017', '1750.00', '3', '2015-07-03 04:14:15', '2015-07-03 04:14:16');
INSERT INTO `orders` VALUES ('182', '7', null, '2015-07-03', '2017-03-03', 'nguyễn thị tiến', 'giao hàng cho tôi lúc 9h sáng ngày 8/3/2017', '1750.00', '4', '2015-07-03 04:14:15', '2015-07-03 04:14:16');
INSERT INTO `orders` VALUES ('183', '7', null, '2015-07-03', '2017-03-03', 'nguyễn thị tiến', 'giao hàng cho tôi lúc 9h sáng ngày 8/3/2017', '1750.00', '3', '2015-07-03 04:14:15', '2015-07-03 04:14:16');
INSERT INTO `orders` VALUES ('184', '7', null, '2015-07-03', '2017-03-03', 'nguyễn thị tiến', 'giao hàng cho tôi lúc 9h sáng ngày 8/3/2017', '1750.00', '3', '2015-07-03 04:14:15', '2015-07-03 04:14:16');
INSERT INTO `orders` VALUES ('185', '7', null, '2015-07-03', '2017-03-03', 'nguyễn thị tiến', 'giao hàng cho tôi lúc 9h sáng ngày 8/3/2017', '1750.00', '4', '2015-07-03 04:14:15', '2015-07-03 04:14:16');
INSERT INTO `orders` VALUES ('186', '7', null, '2015-07-03', '2017-03-03', 'nguyễn thị tiến', 'giao hàng cho tôi lúc 9h sáng ngày 8/3/2017', '1750.00', '4', '2015-07-03 04:14:15', '2015-07-03 04:14:16');
INSERT INTO `orders` VALUES ('187', '7', null, '2015-07-03', '2017-03-03', 'nguyễn thị tiến', 'giao hàng cho tôi lúc 9h sáng ngày 8/3/2017', '1750.00', '4', '2015-07-03 04:14:15', '2015-07-03 04:14:16');
INSERT INTO `orders` VALUES ('188', '7', null, '2015-07-03', '2017-03-03', 'nguyễn thị tiến', 'giao hàng cho tôi lúc 9h sáng ngày 8/3/2017', '1750.00', '3', '2015-07-03 04:14:15', '2015-07-03 04:14:16');
INSERT INTO `orders` VALUES ('189', '7', null, '2015-07-03', '2017-03-03', 'nguyễn thị tiến', 'giao hàng cho tôi lúc 9h sáng ngày 8/3/2017', '1750.00', '4', '2015-07-03 04:14:15', '2015-07-03 04:14:16');
INSERT INTO `orders` VALUES ('190', '7', null, '2015-07-03', '2017-03-03', 'nguyễn thị tiến', 'giao hàng cho tôi lúc 9h sáng ngày 8/3/2017', '1750.00', '3', '2015-07-03 04:14:15', '2015-07-03 04:14:16');
INSERT INTO `orders` VALUES ('191', '7', null, '2015-07-03', '2017-03-03', 'nguyễn thị tiến', 'giao hàng cho tôi lúc 9h sáng ngày 8/3/2017', '1750.00', '3', '2015-07-03 04:14:15', '2015-07-03 04:14:16');
INSERT INTO `orders` VALUES ('192', '7', null, '2015-07-03', '2017-03-03', 'nguyễn thị tiến', 'giao hàng cho tôi lúc 9h sáng ngày 8/3/2017', '1750.00', '4', '2015-07-03 04:14:15', '2015-07-03 04:14:16');
INSERT INTO `orders` VALUES ('193', '7', null, '2015-07-03', '2017-03-03', 'nguyễn thị tiến', 'giao hàng cho tôi lúc 9h sáng ngày 8/3/2017', '1750.00', '4', '2015-07-03 04:14:15', '2015-07-03 04:14:16');
INSERT INTO `orders` VALUES ('194', '7', null, '2015-07-03', '2017-03-03', 'nguyễn thị tiến', 'giao hàng cho tôi lúc 9h sáng ngày 8/3/2017', '1750.00', '4', '2015-07-03 04:14:15', '2015-07-03 04:14:16');
INSERT INTO `orders` VALUES ('195', '7', null, '2015-07-03', '2017-03-03', 'nguyễn thị tiến', 'giao hàng cho tôi lúc 9h sáng ngày 8/3/2017', '1750.00', '3', '2015-07-03 04:14:15', '2015-07-03 04:14:16');
INSERT INTO `orders` VALUES ('196', '7', null, '2015-07-03', '2017-03-03', 'nguyễn thị tiến', 'giao hàng cho tôi lúc 9h sáng ngày 8/3/2017', '1750.00', '4', '2015-07-03 04:14:15', '2015-07-03 04:14:16');
INSERT INTO `orders` VALUES ('197', '7', null, '2015-07-03', '2017-03-03', 'nguyễn thị tiến', 'giao hàng cho tôi lúc 9h sáng ngày 8/3/2017', '1750.00', '4', '2015-07-03 04:14:15', '2015-07-03 04:14:16');
INSERT INTO `orders` VALUES ('198', '7', null, '2015-07-03', '2017-03-03', 'nguyễn thị tiến', 'giao hàng cho tôi lúc 9h sáng ngày 8/3/2017', '1750.00', '3', '2015-07-03 04:14:15', '2015-07-03 04:14:16');
INSERT INTO `orders` VALUES ('199', '7', null, '2015-07-03', '2017-03-03', 'nguyễn thị tiến', 'giao hàng cho tôi lúc 9h sáng ngày 8/3/2017', '1750.00', '3', '2015-07-03 04:14:15', '2015-07-03 04:14:16');
INSERT INTO `orders` VALUES ('200', '7', null, '2015-07-03', '2017-03-03', 'nguyễn thị tiến', 'giao hàng cho tôi lúc 9h sáng ngày 8/3/2017', '1750.00', '4', '2015-07-03 04:14:15', '2015-07-03 04:14:16');
INSERT INTO `orders` VALUES ('201', '7', null, '2015-07-03', '2017-03-03', 'nguyễn thị tiến', 'giao hàng cho tôi lúc 9h sáng ngày 8/3/2017', '1750.00', '3', '2015-07-03 04:14:15', '2015-07-03 04:14:16');
INSERT INTO `orders` VALUES ('202', '7', null, '2015-07-03', '2017-03-03', 'nguyễn thị tiến', 'giao hàng cho tôi lúc 9h sáng ngày 8/3/2017', '1750.00', '4', '2015-07-03 04:14:15', '2015-07-03 04:14:16');
INSERT INTO `orders` VALUES ('203', '7', null, '2015-07-03', '2017-03-03', 'nguyễn thị tiến', 'giao hàng cho tôi lúc 9h sáng ngày 8/3/2017', '1750.00', '3', '2015-07-03 04:14:15', '2015-07-03 04:14:16');
INSERT INTO `orders` VALUES ('204', '7', null, '2015-07-03', '2017-03-03', 'nguyễn thị tiến', 'giao hàng cho tôi lúc 9h sáng ngày 8/3/2017', '1750.00', '4', '2015-07-03 04:14:15', '2015-07-03 04:14:16');
INSERT INTO `orders` VALUES ('205', '7', null, '2015-07-03', '2017-03-03', 'nguyễn thị tiến', 'giao hàng cho tôi lúc 9h sáng ngày 8/3/2017', '1750.00', '4', '2015-07-03 04:14:15', '2015-07-03 04:14:16');
INSERT INTO `orders` VALUES ('206', '7', null, '2015-07-03', '2017-03-03', 'nguyễn thị tiến', 'giao hàng cho tôi lúc 9h sáng ngày 8/3/2017', '1750.00', '3', '2015-07-03 04:14:15', '2015-07-03 04:14:16');
INSERT INTO `orders` VALUES ('207', '7', null, '2015-07-03', '2017-03-03', 'nguyễn thị tiến', 'giao hàng cho tôi lúc 9h sáng ngày 8/3/2017', '1750.00', '3', '2015-07-03 04:14:15', '2015-07-03 04:14:16');
INSERT INTO `orders` VALUES ('208', '7', null, '2015-07-03', '2017-03-03', 'nguyễn thị tiến', 'giao hàng cho tôi lúc 9h sáng ngày 8/3/2017', '1750.00', '4', '2015-07-03 04:14:15', '2015-07-03 04:14:16');
INSERT INTO `orders` VALUES ('209', '7', null, '2015-07-03', '2017-03-03', 'nguyễn thị tiến', 'giao hàng cho tôi lúc 9h sáng ngày 8/3/2017', '1750.00', '3', '2015-07-03 04:14:15', '2015-07-03 04:14:16');
INSERT INTO `orders` VALUES ('210', '7', null, '2015-07-03', '2017-03-03', 'nguyễn thị tiến', 'giao hàng cho tôi lúc 9h sáng ngày 8/3/2017', '1750.00', '3', '2015-07-03 04:14:15', '2015-07-03 04:14:16');
INSERT INTO `orders` VALUES ('211', '7', null, '2015-07-03', '2017-03-03', 'nguyễn thị tiến', 'giao hàng cho tôi lúc 9h sáng ngày 8/3/2017', '1750.00', '4', '2015-07-03 04:14:15', '2015-07-03 04:14:16');
INSERT INTO `orders` VALUES ('212', '7', null, '2015-07-03', '2017-03-03', 'nguyễn thị tiến', 'giao hàng cho tôi lúc 9h sáng ngày 8/3/2017', '1750.00', '3', '2015-07-03 04:14:15', '2015-07-03 04:14:16');
INSERT INTO `orders` VALUES ('213', '7', null, '2015-07-03', '2017-03-03', 'nguyễn thị tiến', 'giao hàng cho tôi lúc 9h sáng ngày 8/3/2017', '1750.00', '4', '2015-07-03 04:14:15', '2015-07-03 04:14:16');
INSERT INTO `orders` VALUES ('214', '7', null, '2015-07-03', '2017-03-03', 'nguyễn thị tiến', 'giao hàng cho tôi lúc 9h sáng ngày 8/3/2017', '1750.00', '4', '2015-07-03 04:14:15', '2015-07-03 04:14:16');
INSERT INTO `orders` VALUES ('215', '7', null, '2015-08-03', '2017-03-03', 'nguyễn thị tiến', 'giao hàng cho tôi lúc 9h sáng ngày 8/3/2017', '1750.00', '3', '2015-08-03 04:14:15', '2015-08-03 04:14:16');
INSERT INTO `orders` VALUES ('216', '7', null, '2015-08-03', '2017-03-03', 'nguyễn thị tiến', 'giao hàng cho tôi lúc 9h sáng ngày 8/3/2017', '1750.00', '3', '2015-08-03 04:14:15', '2015-08-03 04:14:16');
INSERT INTO `orders` VALUES ('217', '7', null, '2015-08-03', '2017-03-03', 'nguyễn thị tiến', 'giao hàng cho tôi lúc 9h sáng ngày 8/3/2017', '1750.00', '4', '2015-08-03 04:14:15', '2015-08-03 04:14:16');
INSERT INTO `orders` VALUES ('218', '7', null, '2015-08-03', '2017-03-03', 'nguyễn thị tiến', 'giao hàng cho tôi lúc 9h sáng ngày 8/3/2017', '1750.00', '4', '2015-08-03 04:14:15', '2015-08-03 04:14:16');
INSERT INTO `orders` VALUES ('219', '7', null, '2015-08-03', '2017-03-03', 'nguyễn thị tiến', 'giao hàng cho tôi lúc 9h sáng ngày 8/3/2017', '1750.00', '4', '2015-08-03 04:14:15', '2015-08-03 04:14:16');
INSERT INTO `orders` VALUES ('220', '7', null, '2015-08-03', '2017-03-03', 'nguyễn thị tiến', 'giao hàng cho tôi lúc 9h sáng ngày 8/3/2017', '1750.00', '4', '2015-08-03 04:14:15', '2015-08-03 04:14:16');
INSERT INTO `orders` VALUES ('221', '7', null, '2015-08-03', '2017-03-03', 'nguyễn thị tiến', 'giao hàng cho tôi lúc 9h sáng ngày 8/3/2017', '1750.00', '4', '2015-08-03 04:14:15', '2015-08-03 04:14:16');
INSERT INTO `orders` VALUES ('222', '7', null, '2015-08-03', '2017-03-03', 'nguyễn thị tiến', 'giao hàng cho tôi lúc 9h sáng ngày 8/3/2017', '1750.00', '4', '2015-08-03 04:14:15', '2015-08-03 04:14:16');
INSERT INTO `orders` VALUES ('223', '7', null, '2015-08-03', '2017-03-03', 'nguyễn thị tiến', 'giao hàng cho tôi lúc 9h sáng ngày 8/3/2017', '1750.00', '4', '2015-08-03 04:14:15', '2015-08-03 04:14:16');
INSERT INTO `orders` VALUES ('224', '7', null, '2015-08-03', '2017-03-03', 'nguyễn thị tiến', 'giao hàng cho tôi lúc 9h sáng ngày 8/3/2017', '1750.00', '3', '2015-08-03 04:14:15', '2015-08-03 04:14:16');
INSERT INTO `orders` VALUES ('225', '7', null, '2015-08-03', '2017-03-03', 'nguyễn thị tiến', 'giao hàng cho tôi lúc 9h sáng ngày 8/3/2017', '1750.00', '3', '2015-08-03 04:14:15', '2015-08-03 04:14:16');
INSERT INTO `orders` VALUES ('226', '7', null, '2015-08-03', '2017-03-03', 'nguyễn thị tiến', 'giao hàng cho tôi lúc 9h sáng ngày 8/3/2017', '1750.00', '3', '2015-08-03 04:14:15', '2015-08-03 04:14:16');
INSERT INTO `orders` VALUES ('227', '7', null, '2015-08-03', '2017-03-03', 'nguyễn thị tiến', 'giao hàng cho tôi lúc 9h sáng ngày 8/3/2017', '1750.00', '4', '2015-08-03 04:14:15', '2015-08-03 04:14:16');
INSERT INTO `orders` VALUES ('228', '7', null, '2015-08-03', '2017-03-03', 'nguyễn thị tiến', 'giao hàng cho tôi lúc 9h sáng ngày 8/3/2017', '1750.00', '4', '2015-08-03 04:14:15', '2015-08-03 04:14:16');
INSERT INTO `orders` VALUES ('229', '7', null, '2015-08-03', '2017-03-03', 'nguyễn thị tiến', 'giao hàng cho tôi lúc 9h sáng ngày 8/3/2017', '1750.00', '3', '2015-08-03 04:14:15', '2015-08-03 04:14:16');
INSERT INTO `orders` VALUES ('230', '7', null, '2015-08-03', '2017-03-03', 'nguyễn thị tiến', 'giao hàng cho tôi lúc 9h sáng ngày 8/3/2017', '1750.00', '4', '2015-08-03 04:14:15', '2015-08-03 04:14:16');
INSERT INTO `orders` VALUES ('231', '7', null, '2015-08-03', '2017-03-03', 'nguyễn thị tiến', 'giao hàng cho tôi lúc 9h sáng ngày 8/3/2017', '1750.00', '4', '2015-08-03 04:14:15', '2015-08-03 04:14:16');
INSERT INTO `orders` VALUES ('232', '7', null, '2015-08-03', '2017-03-03', 'nguyễn thị tiến', 'giao hàng cho tôi lúc 9h sáng ngày 8/3/2017', '1750.00', '3', '2015-08-03 04:14:15', '2015-08-03 04:14:16');
INSERT INTO `orders` VALUES ('233', '7', null, '2015-08-03', '2017-03-03', 'nguyễn thị tiến', 'giao hàng cho tôi lúc 9h sáng ngày 8/3/2017', '1750.00', '4', '2015-08-03 04:14:15', '2015-08-03 04:14:16');
INSERT INTO `orders` VALUES ('234', '7', null, '2015-08-03', '2017-03-03', 'nguyễn thị tiến', 'giao hàng cho tôi lúc 9h sáng ngày 8/3/2017', '1750.00', '3', '2015-08-03 04:14:15', '2015-08-03 04:14:16');
INSERT INTO `orders` VALUES ('235', '7', null, '2015-08-03', '2017-03-03', 'nguyễn thị tiến', 'giao hàng cho tôi lúc 9h sáng ngày 8/3/2017', '1750.00', '3', '2015-08-03 04:14:15', '2015-08-03 04:14:16');
INSERT INTO `orders` VALUES ('236', '7', null, '2015-08-03', '2017-03-03', 'nguyễn thị tiến', 'giao hàng cho tôi lúc 9h sáng ngày 8/3/2017', '1750.00', '3', '2015-08-03 04:14:15', '2015-08-03 04:14:16');
INSERT INTO `orders` VALUES ('237', '7', null, '2015-08-03', '2017-03-03', 'nguyễn thị tiến', 'giao hàng cho tôi lúc 9h sáng ngày 8/3/2017', '1750.00', '3', '2015-08-03 04:14:15', '2015-08-03 04:14:16');
INSERT INTO `orders` VALUES ('238', '7', null, '2015-08-03', '2017-03-03', 'nguyễn thị tiến', 'giao hàng cho tôi lúc 9h sáng ngày 8/3/2017', '1750.00', '3', '2015-08-03 04:14:15', '2015-08-03 04:14:16');
INSERT INTO `orders` VALUES ('239', '7', null, '2015-08-03', '2017-03-03', 'nguyễn thị tiến', 'giao hàng cho tôi lúc 9h sáng ngày 8/3/2017', '1750.00', '3', '2015-08-03 04:14:15', '2015-08-03 04:14:16');
INSERT INTO `orders` VALUES ('240', '7', null, '2015-08-03', '2017-03-03', 'nguyễn thị tiến', 'giao hàng cho tôi lúc 9h sáng ngày 8/3/2017', '1750.00', '3', '2015-08-03 04:14:15', '2015-08-03 04:14:16');
INSERT INTO `orders` VALUES ('241', '7', null, '2015-08-03', '2017-03-03', 'nguyễn thị tiến', 'giao hàng cho tôi lúc 9h sáng ngày 8/3/2017', '1750.00', '4', '2015-08-03 04:14:15', '2015-08-03 04:14:16');
INSERT INTO `orders` VALUES ('242', '7', null, '2015-08-03', '2017-03-03', 'nguyễn thị tiến', 'giao hàng cho tôi lúc 9h sáng ngày 8/3/2017', '1750.00', '4', '2015-08-03 04:14:15', '2015-08-03 04:14:16');
INSERT INTO `orders` VALUES ('243', '7', null, '2015-08-03', '2017-03-03', 'nguyễn thị tiến', 'giao hàng cho tôi lúc 9h sáng ngày 8/3/2017', '1750.00', '4', '2015-08-03 04:14:15', '2015-08-03 04:14:16');
INSERT INTO `orders` VALUES ('244', '7', null, '2015-08-03', '2017-03-03', 'nguyễn thị tiến', 'giao hàng cho tôi lúc 9h sáng ngày 8/3/2017', '1750.00', '4', '2015-08-03 04:14:15', '2015-08-03 04:14:16');
INSERT INTO `orders` VALUES ('245', '7', null, '2015-08-03', '2017-03-03', 'nguyễn thị tiến', 'giao hàng cho tôi lúc 9h sáng ngày 8/3/2017', '1750.00', '4', '2015-08-03 04:14:15', '2015-08-03 04:14:16');
INSERT INTO `orders` VALUES ('246', '7', null, '2015-08-03', '2017-03-03', 'nguyễn thị tiến', 'giao hàng cho tôi lúc 9h sáng ngày 8/3/2017', '1750.00', '3', '2015-08-03 04:14:15', '2015-08-03 04:14:16');
INSERT INTO `orders` VALUES ('247', '7', null, '2015-08-03', '2017-03-03', 'nguyễn thị tiến', 'giao hàng cho tôi lúc 9h sáng ngày 8/3/2017', '1750.00', '4', '2015-08-03 04:14:15', '2015-08-03 04:14:16');
INSERT INTO `orders` VALUES ('248', '7', null, '2015-08-03', '2017-03-03', 'nguyễn thị tiến', 'giao hàng cho tôi lúc 9h sáng ngày 8/3/2017', '1750.00', '4', '2015-08-03 04:14:15', '2015-08-03 04:14:16');
INSERT INTO `orders` VALUES ('249', '7', null, '2015-08-03', '2017-03-03', 'nguyễn thị tiến', 'giao hàng cho tôi lúc 9h sáng ngày 8/3/2017', '1750.00', '4', '2015-08-03 04:14:15', '2015-08-03 04:14:16');
INSERT INTO `orders` VALUES ('250', '7', null, '2015-08-03', '2017-03-03', 'nguyễn thị tiến', 'giao hàng cho tôi lúc 9h sáng ngày 8/3/2017', '1750.00', '4', '2015-08-03 04:14:15', '2015-08-03 04:14:16');
INSERT INTO `orders` VALUES ('251', '7', null, '2015-08-03', '2017-03-03', 'nguyễn thị tiến', 'giao hàng cho tôi lúc 9h sáng ngày 8/3/2017', '1750.00', '3', '2015-08-03 04:14:15', '2015-08-03 04:14:16');
INSERT INTO `orders` VALUES ('252', '7', null, '2015-08-03', '2017-03-03', 'nguyễn thị tiến', 'giao hàng cho tôi lúc 9h sáng ngày 8/3/2017', '1750.00', '4', '2015-08-03 04:14:15', '2015-08-03 04:14:16');
INSERT INTO `orders` VALUES ('253', '7', null, '2015-09-03', '2017-03-03', 'nguyễn thị tiến', 'giao hàng cho tôi lúc 9h sáng ngày 8/3/2017', '1750.00', '4', '2015-09-03 04:14:15', '2015-09-03 04:14:16');
INSERT INTO `orders` VALUES ('254', '7', null, '2015-09-03', '2017-03-03', 'nguyễn thị tiến', 'giao hàng cho tôi lúc 9h sáng ngày 8/3/2017', '1750.00', '3', '2015-09-03 04:14:15', '2015-09-03 04:14:16');
INSERT INTO `orders` VALUES ('255', '7', null, '2015-09-03', '2017-03-03', 'nguyễn thị tiến', 'giao hàng cho tôi lúc 9h sáng ngày 8/3/2017', '1750.00', '4', '2015-09-03 04:14:15', '2015-09-03 04:14:16');
INSERT INTO `orders` VALUES ('256', '7', null, '2015-09-03', '2017-03-03', 'nguyễn thị tiến', 'giao hàng cho tôi lúc 9h sáng ngày 8/3/2017', '1750.00', '3', '2015-09-03 04:14:15', '2015-09-03 04:14:16');
INSERT INTO `orders` VALUES ('257', '7', null, '2015-09-03', '2017-03-03', 'nguyễn thị tiến', 'giao hàng cho tôi lúc 9h sáng ngày 8/3/2017', '1750.00', '3', '2015-09-03 04:14:15', '2015-09-03 04:14:16');
INSERT INTO `orders` VALUES ('258', '7', null, '2015-09-03', '2017-03-03', 'nguyễn thị tiến', 'giao hàng cho tôi lúc 9h sáng ngày 8/3/2017', '1750.00', '3', '2015-09-03 04:14:15', '2015-09-03 04:14:16');
INSERT INTO `orders` VALUES ('259', '7', null, '2015-09-03', '2017-03-03', 'nguyễn thị tiến', 'giao hàng cho tôi lúc 9h sáng ngày 8/3/2017', '1750.00', '3', '2015-09-03 04:14:15', '2015-09-03 04:14:16');
INSERT INTO `orders` VALUES ('260', '7', null, '2015-09-03', '2017-03-03', 'nguyễn thị tiến', 'giao hàng cho tôi lúc 9h sáng ngày 8/3/2017', '1750.00', '4', '2015-09-03 04:14:15', '2015-09-03 04:14:16');
INSERT INTO `orders` VALUES ('261', '7', null, '2015-09-03', '2017-03-03', 'nguyễn thị tiến', 'giao hàng cho tôi lúc 9h sáng ngày 8/3/2017', '1750.00', '3', '2015-09-03 04:14:15', '2015-09-03 04:14:16');
INSERT INTO `orders` VALUES ('262', '7', null, '2015-09-03', '2017-03-03', 'nguyễn thị tiến', 'giao hàng cho tôi lúc 9h sáng ngày 8/3/2017', '1750.00', '4', '2015-09-03 04:14:15', '2015-09-03 04:14:16');
INSERT INTO `orders` VALUES ('263', '7', null, '2015-09-03', '2017-03-03', 'nguyễn thị tiến', 'giao hàng cho tôi lúc 9h sáng ngày 8/3/2017', '1750.00', '4', '2015-09-03 04:14:15', '2015-09-03 04:14:16');
INSERT INTO `orders` VALUES ('264', '7', null, '2015-09-03', '2017-03-03', 'nguyễn thị tiến', 'giao hàng cho tôi lúc 9h sáng ngày 8/3/2017', '1750.00', '4', '2015-09-03 04:14:15', '2015-09-03 04:14:16');
INSERT INTO `orders` VALUES ('265', '7', null, '2015-09-03', '2017-03-03', 'nguyễn thị tiến', 'giao hàng cho tôi lúc 9h sáng ngày 8/3/2017', '1750.00', '3', '2015-09-03 04:14:15', '2015-09-03 04:14:16');
INSERT INTO `orders` VALUES ('266', '7', null, '2015-09-03', '2017-03-03', 'nguyễn thị tiến', 'giao hàng cho tôi lúc 9h sáng ngày 8/3/2017', '1750.00', '3', '2015-09-03 04:14:15', '2015-09-03 04:14:16');
INSERT INTO `orders` VALUES ('267', '7', null, '2015-09-03', '2017-03-03', 'nguyễn thị tiến', 'giao hàng cho tôi lúc 9h sáng ngày 8/3/2017', '1750.00', '4', '2015-09-03 04:14:15', '2015-09-03 04:14:16');
INSERT INTO `orders` VALUES ('268', '7', null, '2015-09-03', '2017-03-03', 'nguyễn thị tiến', 'giao hàng cho tôi lúc 9h sáng ngày 8/3/2017', '1750.00', '3', '2015-09-03 04:14:15', '2015-09-03 04:14:16');
INSERT INTO `orders` VALUES ('269', '7', null, '2015-09-03', '2017-03-03', 'nguyễn thị tiến', 'giao hàng cho tôi lúc 9h sáng ngày 8/3/2017', '1750.00', '3', '2015-09-03 04:14:15', '2015-09-03 04:14:16');
INSERT INTO `orders` VALUES ('270', '7', null, '2015-09-03', '2017-03-03', 'nguyễn thị tiến', 'giao hàng cho tôi lúc 9h sáng ngày 8/3/2017', '1750.00', '3', '2015-09-03 04:14:15', '2015-09-03 04:14:16');
INSERT INTO `orders` VALUES ('271', '7', null, '2015-09-03', '2017-03-03', 'nguyễn thị tiến', 'giao hàng cho tôi lúc 9h sáng ngày 8/3/2017', '1750.00', '3', '2015-09-03 04:14:15', '2015-09-03 04:14:16');
INSERT INTO `orders` VALUES ('272', '7', null, '2015-09-03', '2017-03-03', 'nguyễn thị tiến', 'giao hàng cho tôi lúc 9h sáng ngày 8/3/2017', '1750.00', '3', '2015-09-03 04:14:15', '2015-09-03 04:14:16');
INSERT INTO `orders` VALUES ('273', '7', null, '2015-09-03', '2017-03-03', 'nguyễn thị tiến', 'giao hàng cho tôi lúc 9h sáng ngày 8/3/2017', '1750.00', '3', '2015-09-03 04:14:15', '2015-09-03 04:14:16');
INSERT INTO `orders` VALUES ('274', '7', null, '2015-09-03', '2017-03-03', 'nguyễn thị tiến', 'giao hàng cho tôi lúc 9h sáng ngày 8/3/2017', '1750.00', '3', '2015-09-03 04:14:15', '2015-09-03 04:14:16');
INSERT INTO `orders` VALUES ('275', '7', null, '2015-09-03', '2017-03-03', 'nguyễn thị tiến', 'giao hàng cho tôi lúc 9h sáng ngày 8/3/2017', '1750.00', '3', '2015-09-03 04:14:15', '2015-09-03 04:14:16');
INSERT INTO `orders` VALUES ('276', '7', null, '2015-09-03', '2017-03-03', 'nguyễn thị tiến', 'giao hàng cho tôi lúc 9h sáng ngày 8/3/2017', '1750.00', '4', '2015-09-03 04:14:15', '2015-09-03 04:14:16');
INSERT INTO `orders` VALUES ('277', '7', null, '2015-09-03', '2017-03-03', 'nguyễn thị tiến', 'giao hàng cho tôi lúc 9h sáng ngày 8/3/2017', '1750.00', '4', '2015-09-03 04:14:15', '2015-09-03 04:14:16');
INSERT INTO `orders` VALUES ('278', '7', null, '2015-09-03', '2017-03-03', 'nguyễn thị tiến', 'giao hàng cho tôi lúc 9h sáng ngày 8/3/2017', '1750.00', '4', '2015-09-03 04:14:15', '2015-09-03 04:14:16');
INSERT INTO `orders` VALUES ('279', '7', null, '2015-09-03', '2017-03-03', 'nguyễn thị tiến', 'giao hàng cho tôi lúc 9h sáng ngày 8/3/2017', '1750.00', '4', '2015-09-03 04:14:15', '2015-09-03 04:14:16');
INSERT INTO `orders` VALUES ('280', '7', null, '2015-09-03', '2017-03-03', 'nguyễn thị tiến', 'giao hàng cho tôi lúc 9h sáng ngày 8/3/2017', '1750.00', '3', '2015-09-03 04:14:15', '2015-09-03 04:14:16');
INSERT INTO `orders` VALUES ('281', '7', null, '2015-09-03', '2017-03-03', 'nguyễn thị tiến', 'giao hàng cho tôi lúc 9h sáng ngày 8/3/2017', '1750.00', '3', '2015-09-03 04:14:15', '2015-09-03 04:14:16');
INSERT INTO `orders` VALUES ('282', '7', null, '2015-09-03', '2017-03-03', 'nguyễn thị tiến', 'giao hàng cho tôi lúc 9h sáng ngày 8/3/2017', '1750.00', '3', '2015-09-03 04:14:15', '2015-09-03 04:14:16');
INSERT INTO `orders` VALUES ('283', '7', null, '2015-09-03', '2017-03-03', 'nguyễn thị tiến', 'giao hàng cho tôi lúc 9h sáng ngày 8/3/2017', '1750.00', '4', '2015-09-03 04:14:15', '2015-09-03 04:14:16');
INSERT INTO `orders` VALUES ('284', '7', null, '2015-09-03', '2017-03-03', 'nguyễn thị tiến', 'giao hàng cho tôi lúc 9h sáng ngày 8/3/2017', '1750.00', '3', '2015-09-03 04:14:15', '2015-09-03 04:14:16');
INSERT INTO `orders` VALUES ('285', '7', null, '2015-09-03', '2017-03-03', 'nguyễn thị tiến', 'giao hàng cho tôi lúc 9h sáng ngày 8/3/2017', '1750.00', '4', '2015-09-03 04:14:15', '2015-09-03 04:14:16');
INSERT INTO `orders` VALUES ('286', '7', null, '2015-09-03', '2017-03-03', 'nguyễn thị tiến', 'giao hàng cho tôi lúc 9h sáng ngày 8/3/2017', '1750.00', '3', '2015-09-03 04:14:15', '2015-09-03 04:14:16');
INSERT INTO `orders` VALUES ('287', '7', null, '2015-09-03', '2017-03-03', 'nguyễn thị tiến', 'giao hàng cho tôi lúc 9h sáng ngày 8/3/2017', '1750.00', '3', '2015-09-03 04:14:15', '2015-09-03 04:14:16');
INSERT INTO `orders` VALUES ('288', '7', null, '2015-09-03', '2017-03-03', 'nguyễn thị tiến', 'giao hàng cho tôi lúc 9h sáng ngày 8/3/2017', '1750.00', '3', '2015-09-03 04:14:15', '2015-09-03 04:14:16');
INSERT INTO `orders` VALUES ('289', '7', null, '2015-09-03', '2017-03-03', 'nguyễn thị tiến', 'giao hàng cho tôi lúc 9h sáng ngày 8/3/2017', '1750.00', '3', '2015-09-03 04:14:15', '2015-09-03 04:14:16');
INSERT INTO `orders` VALUES ('290', '7', null, '2015-10-03', '2017-03-03', 'nguyễn thị tiến', 'giao hàng cho tôi lúc 9h sáng ngày 8/3/2017', '1750.00', '4', '2015-10-03 04:14:15', '2015-10-03 04:14:16');
INSERT INTO `orders` VALUES ('291', '7', null, '2015-10-03', '2017-03-03', 'nguyễn thị tiến', 'giao hàng cho tôi lúc 9h sáng ngày 8/3/2017', '1750.00', '4', '2015-10-03 04:14:15', '2015-10-03 04:14:16');
INSERT INTO `orders` VALUES ('292', '7', null, '2015-10-03', '2017-03-03', 'nguyễn thị tiến', 'giao hàng cho tôi lúc 9h sáng ngày 8/3/2017', '1750.00', '4', '2015-10-03 04:14:15', '2015-10-03 04:14:16');
INSERT INTO `orders` VALUES ('293', '7', null, '2015-10-03', '2017-03-03', 'nguyễn thị tiến', 'giao hàng cho tôi lúc 9h sáng ngày 8/3/2017', '1750.00', '4', '2015-10-03 04:14:15', '2015-10-03 04:14:16');
INSERT INTO `orders` VALUES ('294', '7', null, '2015-10-03', '2017-03-03', 'nguyễn thị tiến', 'giao hàng cho tôi lúc 9h sáng ngày 8/3/2017', '1750.00', '3', '2015-10-03 04:14:15', '2015-10-03 04:14:16');
INSERT INTO `orders` VALUES ('295', '7', null, '2015-10-03', '2017-03-03', 'nguyễn thị tiến', 'giao hàng cho tôi lúc 9h sáng ngày 8/3/2017', '1750.00', '4', '2015-10-03 04:14:15', '2015-10-03 04:14:16');
INSERT INTO `orders` VALUES ('296', '7', null, '2015-10-03', '2017-03-03', 'nguyễn thị tiến', 'giao hàng cho tôi lúc 9h sáng ngày 8/3/2017', '1750.00', '3', '2015-10-03 04:14:15', '2015-10-03 04:14:16');
INSERT INTO `orders` VALUES ('297', '7', null, '2015-10-03', '2017-03-03', 'nguyễn thị tiến', 'giao hàng cho tôi lúc 9h sáng ngày 8/3/2017', '1750.00', '4', '2015-10-03 04:14:15', '2015-10-03 04:14:16');
INSERT INTO `orders` VALUES ('298', '7', null, '2015-10-03', '2017-03-03', 'nguyễn thị tiến', 'giao hàng cho tôi lúc 9h sáng ngày 8/3/2017', '1750.00', '4', '2015-10-03 04:14:15', '2015-10-03 04:14:16');
INSERT INTO `orders` VALUES ('299', '7', null, '2015-10-03', '2017-03-03', 'nguyễn thị tiến', 'giao hàng cho tôi lúc 9h sáng ngày 8/3/2017', '1750.00', '3', '2015-10-03 04:14:15', '2015-10-03 04:14:16');
INSERT INTO `orders` VALUES ('300', '7', null, '2015-10-03', '2017-03-03', 'nguyễn thị tiến', 'giao hàng cho tôi lúc 9h sáng ngày 8/3/2017', '1750.00', '4', '2015-10-03 04:14:15', '2015-10-03 04:14:16');
INSERT INTO `orders` VALUES ('301', '7', null, '2015-10-03', '2017-03-03', 'nguyễn thị tiến', 'giao hàng cho tôi lúc 9h sáng ngày 8/3/2017', '1750.00', '3', '2015-10-03 04:14:15', '2015-10-03 04:14:16');
INSERT INTO `orders` VALUES ('302', '7', null, '2015-10-03', '2017-03-03', 'nguyễn thị tiến', 'giao hàng cho tôi lúc 9h sáng ngày 8/3/2017', '1750.00', '4', '2015-10-03 04:14:15', '2015-10-03 04:14:16');
INSERT INTO `orders` VALUES ('303', '7', null, '2015-10-03', '2017-03-03', 'nguyễn thị tiến', 'giao hàng cho tôi lúc 9h sáng ngày 8/3/2017', '1750.00', '3', '2015-10-03 04:14:15', '2015-10-03 04:14:16');
INSERT INTO `orders` VALUES ('304', '7', null, '2015-10-03', '2017-03-03', 'nguyễn thị tiến', 'giao hàng cho tôi lúc 9h sáng ngày 8/3/2017', '1750.00', '3', '2015-10-03 04:14:15', '2015-10-03 04:14:16');
INSERT INTO `orders` VALUES ('305', '7', null, '2015-10-03', '2017-03-03', 'nguyễn thị tiến', 'giao hàng cho tôi lúc 9h sáng ngày 8/3/2017', '1750.00', '4', '2015-10-03 04:14:15', '2015-10-03 04:14:16');
INSERT INTO `orders` VALUES ('306', '7', null, '2015-10-03', '2017-03-03', 'nguyễn thị tiến', 'giao hàng cho tôi lúc 9h sáng ngày 8/3/2017', '1750.00', '3', '2015-10-03 04:14:15', '2015-10-03 04:14:16');
INSERT INTO `orders` VALUES ('307', '7', null, '2015-10-03', '2017-03-03', 'nguyễn thị tiến', 'giao hàng cho tôi lúc 9h sáng ngày 8/3/2017', '1750.00', '3', '2015-10-03 04:14:15', '2015-10-03 04:14:16');
INSERT INTO `orders` VALUES ('308', '7', null, '2015-10-03', '2017-03-03', 'nguyễn thị tiến', 'giao hàng cho tôi lúc 9h sáng ngày 8/3/2017', '1750.00', '3', '2015-10-03 04:14:15', '2015-10-03 04:14:16');
INSERT INTO `orders` VALUES ('309', '7', null, '2015-10-03', '2017-03-03', 'nguyễn thị tiến', 'giao hàng cho tôi lúc 9h sáng ngày 8/3/2017', '1750.00', '3', '2015-10-03 04:14:15', '2015-10-03 04:14:16');
INSERT INTO `orders` VALUES ('310', '7', null, '2015-10-03', '2017-03-03', 'nguyễn thị tiến', 'giao hàng cho tôi lúc 9h sáng ngày 8/3/2017', '1750.00', '4', '2015-10-03 04:14:15', '2015-10-03 04:14:16');
INSERT INTO `orders` VALUES ('311', '7', null, '2015-10-03', '2017-03-03', 'nguyễn thị tiến', 'giao hàng cho tôi lúc 9h sáng ngày 8/3/2017', '1750.00', '4', '2015-10-03 04:14:15', '2015-10-03 04:14:16');
INSERT INTO `orders` VALUES ('312', '7', null, '2015-10-03', '2017-03-03', 'nguyễn thị tiến', 'giao hàng cho tôi lúc 9h sáng ngày 8/3/2017', '1750.00', '3', '2015-10-03 04:14:15', '2015-10-03 04:14:16');
INSERT INTO `orders` VALUES ('313', '7', null, '2015-10-03', '2017-03-03', 'nguyễn thị tiến', 'giao hàng cho tôi lúc 9h sáng ngày 8/3/2017', '1750.00', '4', '2015-10-03 04:14:15', '2015-10-03 04:14:16');
INSERT INTO `orders` VALUES ('314', '7', null, '2015-10-03', '2017-03-03', 'nguyễn thị tiến', 'giao hàng cho tôi lúc 9h sáng ngày 8/3/2017', '1750.00', '3', '2015-10-03 04:14:15', '2015-10-03 04:14:16');
INSERT INTO `orders` VALUES ('315', '7', null, '2015-10-03', '2017-03-03', 'nguyễn thị tiến', 'giao hàng cho tôi lúc 9h sáng ngày 8/3/2017', '1750.00', '3', '2015-10-03 04:14:15', '2015-10-03 04:14:16');
INSERT INTO `orders` VALUES ('316', '7', null, '2015-10-03', '2017-03-03', 'nguyễn thị tiến', 'giao hàng cho tôi lúc 9h sáng ngày 8/3/2017', '1750.00', '3', '2015-10-03 04:14:15', '2015-10-03 04:14:16');
INSERT INTO `orders` VALUES ('317', '7', null, '2015-10-03', '2017-03-03', 'nguyễn thị tiến', 'giao hàng cho tôi lúc 9h sáng ngày 8/3/2017', '1750.00', '4', '2015-10-03 04:14:15', '2015-10-03 04:14:16');
INSERT INTO `orders` VALUES ('318', '7', null, '2015-10-03', '2017-03-03', 'nguyễn thị tiến', 'giao hàng cho tôi lúc 9h sáng ngày 8/3/2017', '1750.00', '3', '2015-10-03 04:14:15', '2015-10-03 04:14:16');
INSERT INTO `orders` VALUES ('319', '7', null, '2015-10-03', '2017-03-03', 'nguyễn thị tiến', 'giao hàng cho tôi lúc 9h sáng ngày 8/3/2017', '1750.00', '3', '2015-10-03 04:14:15', '2015-10-03 04:14:16');
INSERT INTO `orders` VALUES ('320', '7', null, '2015-10-03', '2017-03-03', 'nguyễn thị tiến', 'giao hàng cho tôi lúc 9h sáng ngày 8/3/2017', '1750.00', '4', '2015-10-03 04:14:15', '2015-10-03 04:14:16');
INSERT INTO `orders` VALUES ('321', '7', null, '2015-10-03', '2017-03-03', 'nguyễn thị tiến', 'giao hàng cho tôi lúc 9h sáng ngày 8/3/2017', '1750.00', '3', '2015-10-03 04:14:15', '2015-10-03 04:14:16');
INSERT INTO `orders` VALUES ('322', '7', null, '2015-10-03', '2017-03-03', 'nguyễn thị tiến', 'giao hàng cho tôi lúc 9h sáng ngày 8/3/2017', '1750.00', '3', '2015-10-03 04:14:15', '2015-10-03 04:14:16');
INSERT INTO `orders` VALUES ('323', '7', null, '2015-10-03', '2017-03-03', 'nguyễn thị tiến', 'giao hàng cho tôi lúc 9h sáng ngày 8/3/2017', '1750.00', '4', '2015-10-03 04:14:15', '2015-10-03 04:14:16');
INSERT INTO `orders` VALUES ('324', '7', null, '2015-10-03', '2017-03-03', 'nguyễn thị tiến', 'giao hàng cho tôi lúc 9h sáng ngày 8/3/2017', '1750.00', '4', '2015-10-03 04:14:15', '2015-10-03 04:14:16');
INSERT INTO `orders` VALUES ('325', '7', null, '2015-10-03', '2017-03-03', 'nguyễn thị tiến', 'giao hàng cho tôi lúc 9h sáng ngày 8/3/2017', '1750.00', '3', '2015-10-03 04:14:15', '2015-10-03 04:14:16');
INSERT INTO `orders` VALUES ('326', '7', null, '2015-10-03', '2017-03-03', 'nguyễn thị tiến', 'giao hàng cho tôi lúc 9h sáng ngày 8/3/2017', '1750.00', '4', '2015-10-03 04:14:15', '2015-10-03 04:14:16');
INSERT INTO `orders` VALUES ('327', '7', null, '2015-10-03', '2017-03-03', 'nguyễn thị tiến', 'giao hàng cho tôi lúc 9h sáng ngày 8/3/2017', '1750.00', '3', '2015-10-03 04:14:15', '2015-10-03 04:14:16');
INSERT INTO `orders` VALUES ('328', '7', null, '2015-11-03', '2017-03-03', 'nguyễn thị tiến', 'giao hàng cho tôi lúc 9h sáng ngày 8/3/2017', '1750.00', '3', '2015-11-03 04:14:15', '2015-11-03 04:14:16');
INSERT INTO `orders` VALUES ('329', '7', null, '2015-11-03', '2017-03-03', 'nguyễn thị tiến', 'giao hàng cho tôi lúc 9h sáng ngày 8/3/2017', '1750.00', '3', '2015-11-03 04:14:15', '2015-11-03 04:14:16');
INSERT INTO `orders` VALUES ('330', '7', null, '2015-11-03', '2017-03-03', 'nguyễn thị tiến', 'giao hàng cho tôi lúc 9h sáng ngày 8/3/2017', '1750.00', '4', '2015-11-03 04:14:15', '2015-11-03 04:14:16');
INSERT INTO `orders` VALUES ('331', '7', null, '2015-11-03', '2017-03-03', 'nguyễn thị tiến', 'giao hàng cho tôi lúc 9h sáng ngày 8/3/2017', '1750.00', '4', '2015-11-03 04:14:15', '2015-11-03 04:14:16');
INSERT INTO `orders` VALUES ('332', '7', null, '2015-11-03', '2017-03-03', 'nguyễn thị tiến', 'giao hàng cho tôi lúc 9h sáng ngày 8/3/2017', '1750.00', '4', '2015-11-03 04:14:15', '2015-11-03 04:14:16');
INSERT INTO `orders` VALUES ('333', '7', null, '2015-11-03', '2017-03-03', 'nguyễn thị tiến', 'giao hàng cho tôi lúc 9h sáng ngày 8/3/2017', '1750.00', '4', '2015-11-03 04:14:15', '2015-11-03 04:14:16');
INSERT INTO `orders` VALUES ('334', '7', null, '2015-11-03', '2017-03-03', 'nguyễn thị tiến', 'giao hàng cho tôi lúc 9h sáng ngày 8/3/2017', '1750.00', '3', '2015-11-03 04:14:15', '2015-11-03 04:14:16');
INSERT INTO `orders` VALUES ('335', '7', null, '2015-11-03', '2017-03-03', 'nguyễn thị tiến', 'giao hàng cho tôi lúc 9h sáng ngày 8/3/2017', '1750.00', '4', '2015-11-03 04:14:15', '2015-11-03 04:14:16');
INSERT INTO `orders` VALUES ('336', '7', null, '2015-11-03', '2017-03-03', 'nguyễn thị tiến', 'giao hàng cho tôi lúc 9h sáng ngày 8/3/2017', '1750.00', '3', '2015-11-03 04:14:15', '2015-11-03 04:14:16');
INSERT INTO `orders` VALUES ('337', '7', null, '2015-11-03', '2017-03-03', 'nguyễn thị tiến', 'giao hàng cho tôi lúc 9h sáng ngày 8/3/2017', '1750.00', '3', '2015-11-03 04:14:15', '2015-11-03 04:14:16');
INSERT INTO `orders` VALUES ('338', '7', null, '2015-11-03', '2017-03-03', 'nguyễn thị tiến', 'giao hàng cho tôi lúc 9h sáng ngày 8/3/2017', '1750.00', '3', '2015-11-03 04:14:15', '2015-11-03 04:14:16');
INSERT INTO `orders` VALUES ('339', '7', null, '2015-11-03', '2017-03-03', 'nguyễn thị tiến', 'giao hàng cho tôi lúc 9h sáng ngày 8/3/2017', '1750.00', '3', '2015-11-03 04:14:15', '2015-11-03 04:14:16');
INSERT INTO `orders` VALUES ('340', '7', null, '2015-11-03', '2017-03-03', 'nguyễn thị tiến', 'giao hàng cho tôi lúc 9h sáng ngày 8/3/2017', '1750.00', '4', '2015-11-03 04:14:15', '2015-11-03 04:14:16');
INSERT INTO `orders` VALUES ('341', '7', null, '2015-11-03', '2017-03-03', 'nguyễn thị tiến', 'giao hàng cho tôi lúc 9h sáng ngày 8/3/2017', '1750.00', '4', '2015-11-03 04:14:15', '2015-11-03 04:14:16');
INSERT INTO `orders` VALUES ('342', '7', null, '2015-11-03', '2017-03-03', 'nguyễn thị tiến', 'giao hàng cho tôi lúc 9h sáng ngày 8/3/2017', '1750.00', '3', '2015-11-03 04:14:15', '2015-11-03 04:14:16');
INSERT INTO `orders` VALUES ('343', '7', null, '2015-11-03', '2017-03-03', 'nguyễn thị tiến', 'giao hàng cho tôi lúc 9h sáng ngày 8/3/2017', '1750.00', '4', '2015-11-03 04:14:15', '2015-11-03 04:14:16');
INSERT INTO `orders` VALUES ('344', '7', null, '2015-11-03', '2017-03-03', 'nguyễn thị tiến', 'giao hàng cho tôi lúc 9h sáng ngày 8/3/2017', '1750.00', '4', '2015-11-03 04:14:15', '2015-11-03 04:14:16');
INSERT INTO `orders` VALUES ('345', '7', null, '2015-11-03', '2017-03-03', 'nguyễn thị tiến', 'giao hàng cho tôi lúc 9h sáng ngày 8/3/2017', '1750.00', '3', '2015-11-03 04:14:15', '2015-11-03 04:14:16');
INSERT INTO `orders` VALUES ('346', '7', null, '2015-11-03', '2017-03-03', 'nguyễn thị tiến', 'giao hàng cho tôi lúc 9h sáng ngày 8/3/2017', '1750.00', '3', '2015-11-03 04:14:15', '2015-11-03 04:14:16');
INSERT INTO `orders` VALUES ('347', '7', null, '2015-11-03', '2017-03-03', 'nguyễn thị tiến', 'giao hàng cho tôi lúc 9h sáng ngày 8/3/2017', '1750.00', '4', '2015-11-03 04:14:15', '2015-11-03 04:14:16');
INSERT INTO `orders` VALUES ('348', '7', null, '2015-11-03', '2017-03-03', 'nguyễn thị tiến', 'giao hàng cho tôi lúc 9h sáng ngày 8/3/2017', '1750.00', '4', '2015-11-03 04:14:15', '2015-11-03 04:14:16');
INSERT INTO `orders` VALUES ('349', '7', null, '2015-11-03', '2017-03-03', 'nguyễn thị tiến', 'giao hàng cho tôi lúc 9h sáng ngày 8/3/2017', '1750.00', '4', '2015-11-03 04:14:15', '2015-11-03 04:14:16');
INSERT INTO `orders` VALUES ('350', '7', null, '2015-11-03', '2017-03-03', 'nguyễn thị tiến', 'giao hàng cho tôi lúc 9h sáng ngày 8/3/2017', '1750.00', '3', '2015-11-03 04:14:15', '2015-11-03 04:14:16');
INSERT INTO `orders` VALUES ('351', '7', null, '2015-11-03', '2017-03-03', 'nguyễn thị tiến', 'giao hàng cho tôi lúc 9h sáng ngày 8/3/2017', '1750.00', '3', '2015-11-03 04:14:15', '2015-11-03 04:14:16');
INSERT INTO `orders` VALUES ('352', '7', null, '2015-11-03', '2017-03-03', 'nguyễn thị tiến', 'giao hàng cho tôi lúc 9h sáng ngày 8/3/2017', '1750.00', '3', '2015-11-03 04:14:15', '2015-11-03 04:14:16');
INSERT INTO `orders` VALUES ('353', '7', null, '2015-11-03', '2017-03-03', 'nguyễn thị tiến', 'giao hàng cho tôi lúc 9h sáng ngày 8/3/2017', '1750.00', '4', '2015-11-03 04:14:15', '2015-11-03 04:14:16');
INSERT INTO `orders` VALUES ('354', '7', null, '2015-11-03', '2017-03-03', 'nguyễn thị tiến', 'giao hàng cho tôi lúc 9h sáng ngày 8/3/2017', '1750.00', '3', '2015-11-03 04:14:15', '2015-11-03 04:14:16');
INSERT INTO `orders` VALUES ('355', '7', null, '2015-11-03', '2017-03-03', 'nguyễn thị tiến', 'giao hàng cho tôi lúc 9h sáng ngày 8/3/2017', '1750.00', '4', '2015-11-03 04:14:15', '2015-11-03 04:14:16');
INSERT INTO `orders` VALUES ('356', '7', null, '2015-11-03', '2017-03-03', 'nguyễn thị tiến', 'giao hàng cho tôi lúc 9h sáng ngày 8/3/2017', '1750.00', '3', '2015-11-03 04:14:15', '2015-11-03 04:14:16');
INSERT INTO `orders` VALUES ('357', '7', null, '2015-11-03', '2017-03-03', 'nguyễn thị tiến', 'giao hàng cho tôi lúc 9h sáng ngày 8/3/2017', '1750.00', '3', '2015-11-03 04:14:15', '2015-11-03 04:14:16');
INSERT INTO `orders` VALUES ('358', '7', null, '2015-11-03', '2017-03-03', 'nguyễn thị tiến', 'giao hàng cho tôi lúc 9h sáng ngày 8/3/2017', '1750.00', '3', '2015-11-03 04:14:15', '2015-11-03 04:14:16');
INSERT INTO `orders` VALUES ('359', '7', null, '2015-12-03', '2017-03-03', 'nguyễn thị tiến', 'giao hàng cho tôi lúc 9h sáng ngày 8/3/2017', '1750.00', '3', '2015-12-03 04:14:15', '2015-12-03 04:14:16');
INSERT INTO `orders` VALUES ('360', '7', null, '2015-12-03', '2017-03-03', 'nguyễn thị tiến', 'giao hàng cho tôi lúc 9h sáng ngày 8/3/2017', '1750.00', '3', '2015-12-03 04:14:15', '2015-12-03 04:14:16');
INSERT INTO `orders` VALUES ('361', '7', null, '2015-12-03', '2017-03-03', 'nguyễn thị tiến', 'giao hàng cho tôi lúc 9h sáng ngày 8/3/2017', '1750.00', '4', '2015-12-03 04:14:15', '2015-12-03 04:14:16');
INSERT INTO `orders` VALUES ('362', '7', null, '2015-12-03', '2017-03-03', 'nguyễn thị tiến', 'giao hàng cho tôi lúc 9h sáng ngày 8/3/2017', '1750.00', '3', '2015-12-03 04:14:15', '2015-12-03 04:14:16');
INSERT INTO `orders` VALUES ('363', '7', null, '2015-12-03', '2017-03-03', 'nguyễn thị tiến', 'giao hàng cho tôi lúc 9h sáng ngày 8/3/2017', '1750.00', '4', '2015-12-03 04:14:15', '2015-12-03 04:14:16');
INSERT INTO `orders` VALUES ('364', '7', null, '2015-12-03', '2017-03-03', 'nguyễn thị tiến', 'giao hàng cho tôi lúc 9h sáng ngày 8/3/2017', '1750.00', '3', '2015-12-03 04:14:15', '2015-12-03 04:14:16');
INSERT INTO `orders` VALUES ('365', '7', null, '2015-12-03', '2017-03-03', 'nguyễn thị tiến', 'giao hàng cho tôi lúc 9h sáng ngày 8/3/2017', '1750.00', '3', '2015-12-03 04:14:15', '2015-12-03 04:14:16');
INSERT INTO `orders` VALUES ('366', '7', null, '2015-12-03', '2017-03-03', 'nguyễn thị tiến', 'giao hàng cho tôi lúc 9h sáng ngày 8/3/2017', '1750.00', '3', '2015-12-03 04:14:15', '2015-12-03 04:14:16');
INSERT INTO `orders` VALUES ('367', '7', null, '2015-12-03', '2017-03-03', 'nguyễn thị tiến', 'giao hàng cho tôi lúc 9h sáng ngày 8/3/2017', '1750.00', '4', '2015-12-03 04:14:15', '2015-12-03 04:14:16');
INSERT INTO `orders` VALUES ('368', '7', null, '2015-12-03', '2017-03-03', 'nguyễn thị tiến', 'giao hàng cho tôi lúc 9h sáng ngày 8/3/2017', '1750.00', '4', '2015-12-03 04:14:15', '2015-12-03 04:14:16');
INSERT INTO `orders` VALUES ('369', '7', null, '2015-12-03', '2017-03-03', 'nguyễn thị tiến', 'giao hàng cho tôi lúc 9h sáng ngày 8/3/2017', '1750.00', '3', '2015-12-03 04:14:15', '2015-12-03 04:14:16');
INSERT INTO `orders` VALUES ('370', '7', null, '2015-12-03', '2017-03-03', 'nguyễn thị tiến', 'giao hàng cho tôi lúc 9h sáng ngày 8/3/2017', '1750.00', '4', '2015-12-03 04:14:15', '2015-12-03 04:14:16');
INSERT INTO `orders` VALUES ('371', '7', null, '2015-12-03', '2017-03-03', 'nguyễn thị tiến', 'giao hàng cho tôi lúc 9h sáng ngày 8/3/2017', '1750.00', '4', '2015-12-03 04:14:15', '2015-12-03 04:14:16');
INSERT INTO `orders` VALUES ('372', '7', null, '2015-12-03', '2017-03-03', 'nguyễn thị tiến', 'giao hàng cho tôi lúc 9h sáng ngày 8/3/2017', '1750.00', '3', '2015-12-03 04:14:15', '2015-12-03 04:14:16');
INSERT INTO `orders` VALUES ('373', '7', null, '2015-12-03', '2017-03-03', 'nguyễn thị tiến', 'giao hàng cho tôi lúc 9h sáng ngày 8/3/2017', '1750.00', '4', '2015-12-03 04:14:15', '2015-12-03 04:14:16');
INSERT INTO `orders` VALUES ('374', '7', null, '2016-01-03', '2017-03-03', 'nguyễn thị tiến', 'giao hàng cho tôi lúc 9h sáng ngày 8/3/2017', '1750.00', '4', '2016-01-03 04:14:15', '2016-01-03 04:14:16');
INSERT INTO `orders` VALUES ('375', '7', null, '2016-01-03', '2017-03-03', 'nguyễn thị tiến', 'giao hàng cho tôi lúc 9h sáng ngày 8/3/2017', '1750.00', '4', '2016-01-03 04:14:15', '2016-01-03 04:14:16');
INSERT INTO `orders` VALUES ('376', '7', null, '2016-01-03', '2017-03-03', 'nguyễn thị tiến', 'giao hàng cho tôi lúc 9h sáng ngày 8/3/2017', '1750.00', '3', '2016-01-03 04:14:15', '2016-01-03 04:14:16');
INSERT INTO `orders` VALUES ('377', '7', null, '2016-01-03', '2017-03-03', 'nguyễn thị tiến', 'giao hàng cho tôi lúc 9h sáng ngày 8/3/2017', '1750.00', '4', '2016-01-03 04:14:15', '2016-01-03 04:14:16');
INSERT INTO `orders` VALUES ('378', '7', null, '2016-01-03', '2017-03-03', 'nguyễn thị tiến', 'giao hàng cho tôi lúc 9h sáng ngày 8/3/2017', '1750.00', '4', '2016-01-03 04:14:15', '2016-01-03 04:14:16');
INSERT INTO `orders` VALUES ('379', '7', null, '2016-01-03', '2017-03-03', 'nguyễn thị tiến', 'giao hàng cho tôi lúc 9h sáng ngày 8/3/2017', '1750.00', '4', '2016-01-03 04:14:15', '2016-01-03 04:14:16');
INSERT INTO `orders` VALUES ('380', '7', null, '2016-01-03', '2017-03-03', 'nguyễn thị tiến', 'giao hàng cho tôi lúc 9h sáng ngày 8/3/2017', '1750.00', '3', '2016-01-03 04:14:15', '2016-01-03 04:14:16');
INSERT INTO `orders` VALUES ('381', '7', null, '2016-01-03', '2017-03-03', 'nguyễn thị tiến', 'giao hàng cho tôi lúc 9h sáng ngày 8/3/2017', '1750.00', '4', '2016-01-03 04:14:15', '2016-01-03 04:14:16');
INSERT INTO `orders` VALUES ('382', '7', null, '2016-01-03', '2017-03-03', 'nguyễn thị tiến', 'giao hàng cho tôi lúc 9h sáng ngày 8/3/2017', '1750.00', '3', '2016-01-03 04:14:15', '2016-01-03 04:14:16');
INSERT INTO `orders` VALUES ('383', '7', null, '2016-01-03', '2017-03-03', 'nguyễn thị tiến', 'giao hàng cho tôi lúc 9h sáng ngày 8/3/2017', '1750.00', '3', '2016-01-03 04:14:15', '2016-01-03 04:14:16');
INSERT INTO `orders` VALUES ('384', '7', null, '2016-01-03', '2017-03-03', 'nguyễn thị tiến', 'giao hàng cho tôi lúc 9h sáng ngày 8/3/2017', '1750.00', '3', '2016-01-03 04:14:15', '2016-01-03 04:14:16');
INSERT INTO `orders` VALUES ('385', '7', null, '2016-01-03', '2017-03-03', 'nguyễn thị tiến', 'giao hàng cho tôi lúc 9h sáng ngày 8/3/2017', '1750.00', '3', '2016-01-03 04:14:15', '2016-01-03 04:14:16');
INSERT INTO `orders` VALUES ('386', '7', null, '2016-01-03', '2017-03-03', 'nguyễn thị tiến', 'giao hàng cho tôi lúc 9h sáng ngày 8/3/2017', '1750.00', '3', '2016-01-03 04:14:15', '2016-01-03 04:14:16');
INSERT INTO `orders` VALUES ('387', '7', null, '2016-02-03', '2017-03-03', 'nguyễn thị tiến', 'giao hàng cho tôi lúc 9h sáng ngày 8/3/2017', '1750.00', '3', '2016-02-03 04:14:15', '2016-02-03 04:14:16');
INSERT INTO `orders` VALUES ('388', '7', null, '2016-02-03', '2017-03-03', 'nguyễn thị tiến', 'giao hàng cho tôi lúc 9h sáng ngày 8/3/2017', '1750.00', '4', '2016-02-03 04:14:15', '2016-02-03 04:14:16');
INSERT INTO `orders` VALUES ('389', '7', null, '2016-02-03', '2017-03-03', 'nguyễn thị tiến', 'giao hàng cho tôi lúc 9h sáng ngày 8/3/2017', '1750.00', '4', '2016-02-03 04:14:15', '2016-02-03 04:14:16');
INSERT INTO `orders` VALUES ('390', '7', null, '2016-02-03', '2017-03-03', 'nguyễn thị tiến', 'giao hàng cho tôi lúc 9h sáng ngày 8/3/2017', '1750.00', '3', '2016-02-03 04:14:15', '2016-02-03 04:14:16');
INSERT INTO `orders` VALUES ('391', '7', null, '2016-02-03', '2017-03-03', 'nguyễn thị tiến', 'giao hàng cho tôi lúc 9h sáng ngày 8/3/2017', '1750.00', '3', '2016-02-03 04:14:15', '2016-02-03 04:14:16');
INSERT INTO `orders` VALUES ('392', '7', null, '2016-02-03', '2017-03-03', 'nguyễn thị tiến', 'giao hàng cho tôi lúc 9h sáng ngày 8/3/2017', '1750.00', '4', '2016-02-03 04:14:15', '2016-02-03 04:14:16');
INSERT INTO `orders` VALUES ('393', '7', null, '2016-02-03', '2017-03-03', 'nguyễn thị tiến', 'giao hàng cho tôi lúc 9h sáng ngày 8/3/2017', '1750.00', '3', '2016-02-03 04:14:15', '2016-02-03 04:14:16');
INSERT INTO `orders` VALUES ('394', '7', null, '2016-02-03', '2017-03-03', 'nguyễn thị tiến', 'giao hàng cho tôi lúc 9h sáng ngày 8/3/2017', '1750.00', '4', '2016-02-03 04:14:15', '2016-02-03 04:14:16');
INSERT INTO `orders` VALUES ('395', '7', null, '2016-02-03', '2017-03-03', 'nguyễn thị tiến', 'giao hàng cho tôi lúc 9h sáng ngày 8/3/2017', '1750.00', '3', '2016-02-03 04:14:15', '2016-02-03 04:14:16');
INSERT INTO `orders` VALUES ('396', '7', null, '2016-02-03', '2017-03-03', 'nguyễn thị tiến', 'giao hàng cho tôi lúc 9h sáng ngày 8/3/2017', '1750.00', '4', '2016-02-03 04:14:15', '2016-02-03 04:14:16');
INSERT INTO `orders` VALUES ('397', '7', null, '2016-02-03', '2017-03-03', 'nguyễn thị tiến', 'giao hàng cho tôi lúc 9h sáng ngày 8/3/2017', '1750.00', '4', '2016-02-03 04:14:15', '2016-02-03 04:14:16');
INSERT INTO `orders` VALUES ('398', '7', null, '2016-02-03', '2017-03-03', 'nguyễn thị tiến', 'giao hàng cho tôi lúc 9h sáng ngày 8/3/2017', '1750.00', '4', '2016-02-03 04:14:15', '2016-02-03 04:14:16');
INSERT INTO `orders` VALUES ('399', '7', null, '2016-02-03', '2017-03-03', 'nguyễn thị tiến', 'giao hàng cho tôi lúc 9h sáng ngày 8/3/2017', '1750.00', '3', '2016-02-03 04:14:15', '2016-02-03 04:14:16');
INSERT INTO `orders` VALUES ('400', '7', null, '2016-02-03', '2017-03-03', 'nguyễn thị tiến', 'giao hàng cho tôi lúc 9h sáng ngày 8/3/2017', '1750.00', '3', '2016-02-03 04:14:15', '2016-02-03 04:14:16');
INSERT INTO `orders` VALUES ('401', '7', null, '2016-02-03', '2017-03-03', 'nguyễn thị tiến', 'giao hàng cho tôi lúc 9h sáng ngày 8/3/2017', '1750.00', '3', '2016-02-03 04:14:15', '2016-02-03 04:14:16');
INSERT INTO `orders` VALUES ('402', '7', null, '2016-02-03', '2017-03-03', 'nguyễn thị tiến', 'giao hàng cho tôi lúc 9h sáng ngày 8/3/2017', '1750.00', '3', '2016-02-03 04:14:15', '2016-02-03 04:14:16');
INSERT INTO `orders` VALUES ('403', '7', null, '2016-02-03', '2017-03-03', 'nguyễn thị tiến', 'giao hàng cho tôi lúc 9h sáng ngày 8/3/2017', '1750.00', '4', '2016-02-03 04:14:15', '2016-02-03 04:14:16');
INSERT INTO `orders` VALUES ('404', '7', null, '2016-02-03', '2017-03-03', 'nguyễn thị tiến', 'giao hàng cho tôi lúc 9h sáng ngày 8/3/2017', '1750.00', '3', '2016-02-03 04:14:15', '2016-02-03 04:14:16');
INSERT INTO `orders` VALUES ('405', '7', null, '2016-02-03', '2017-03-03', 'nguyễn thị tiến', 'giao hàng cho tôi lúc 9h sáng ngày 8/3/2017', '1750.00', '4', '2016-02-03 04:14:15', '2016-02-03 04:14:16');
INSERT INTO `orders` VALUES ('406', '7', null, '2016-02-03', '2017-03-03', 'nguyễn thị tiến', 'giao hàng cho tôi lúc 9h sáng ngày 8/3/2017', '1750.00', '4', '2016-02-03 04:14:15', '2016-02-03 04:14:16');
INSERT INTO `orders` VALUES ('407', '7', null, '2016-02-03', '2017-03-03', 'nguyễn thị tiến', 'giao hàng cho tôi lúc 9h sáng ngày 8/3/2017', '1750.00', '4', '2016-02-03 04:14:15', '2016-02-03 04:14:16');
INSERT INTO `orders` VALUES ('408', '7', null, '2016-03-03', '2017-03-03', 'nguyễn thị tiến', 'giao hàng cho tôi lúc 9h sáng ngày 8/3/2017', '1750.00', '3', '2016-03-03 04:14:15', '2016-03-03 04:14:16');
INSERT INTO `orders` VALUES ('409', '7', null, '2016-03-03', '2017-03-03', 'nguyễn thị tiến', 'giao hàng cho tôi lúc 9h sáng ngày 8/3/2017', '1750.00', '3', '2016-03-03 04:14:15', '2016-03-03 04:14:16');
INSERT INTO `orders` VALUES ('410', '7', null, '2016-03-03', '2017-03-03', 'nguyễn thị tiến', 'giao hàng cho tôi lúc 9h sáng ngày 8/3/2017', '1750.00', '3', '2016-03-03 04:14:15', '2016-03-03 04:14:16');
INSERT INTO `orders` VALUES ('411', '7', null, '2016-03-03', '2017-03-03', 'nguyễn thị tiến', 'giao hàng cho tôi lúc 9h sáng ngày 8/3/2017', '1750.00', '4', '2016-03-03 04:14:15', '2016-03-03 04:14:16');
INSERT INTO `orders` VALUES ('412', '7', null, '2016-03-03', '2017-03-03', 'nguyễn thị tiến', 'giao hàng cho tôi lúc 9h sáng ngày 8/3/2017', '1750.00', '3', '2016-03-03 04:14:15', '2016-03-03 04:14:16');
INSERT INTO `orders` VALUES ('413', '7', null, '2016-03-03', '2017-03-03', 'nguyễn thị tiến', 'giao hàng cho tôi lúc 9h sáng ngày 8/3/2017', '1750.00', '3', '2016-03-03 04:14:15', '2016-03-03 04:14:16');
INSERT INTO `orders` VALUES ('414', '7', null, '2016-03-03', '2017-03-03', 'nguyễn thị tiến', 'giao hàng cho tôi lúc 9h sáng ngày 8/3/2017', '1750.00', '4', '2016-03-03 04:14:15', '2016-03-03 04:14:16');
INSERT INTO `orders` VALUES ('415', '7', null, '2016-03-03', '2017-03-03', 'nguyễn thị tiến', 'giao hàng cho tôi lúc 9h sáng ngày 8/3/2017', '1750.00', '4', '2016-03-03 04:14:15', '2016-03-03 04:14:16');
INSERT INTO `orders` VALUES ('416', '7', null, '2016-03-03', '2017-03-03', 'nguyễn thị tiến', 'giao hàng cho tôi lúc 9h sáng ngày 8/3/2017', '1750.00', '4', '2016-03-03 04:14:15', '2016-03-03 04:14:16');
INSERT INTO `orders` VALUES ('417', '7', null, '2016-03-03', '2017-03-03', 'nguyễn thị tiến', 'giao hàng cho tôi lúc 9h sáng ngày 8/3/2017', '1750.00', '3', '2016-03-03 04:14:15', '2016-03-03 04:14:16');
INSERT INTO `orders` VALUES ('418', '7', null, '2016-03-03', '2017-03-03', 'nguyễn thị tiến', 'giao hàng cho tôi lúc 9h sáng ngày 8/3/2017', '1750.00', '3', '2016-03-03 04:14:15', '2016-03-03 04:14:16');
INSERT INTO `orders` VALUES ('419', '7', null, '2016-03-03', '2017-03-03', 'nguyễn thị tiến', 'giao hàng cho tôi lúc 9h sáng ngày 8/3/2017', '1750.00', '4', '2016-03-03 04:14:15', '2016-03-03 04:14:16');
INSERT INTO `orders` VALUES ('420', '7', null, '2016-03-03', '2017-03-03', 'nguyễn thị tiến', 'giao hàng cho tôi lúc 9h sáng ngày 8/3/2017', '1750.00', '3', '2016-03-03 04:14:15', '2016-03-03 04:14:16');
INSERT INTO `orders` VALUES ('421', '7', null, '2016-03-03', '2017-03-03', 'nguyễn thị tiến', 'giao hàng cho tôi lúc 9h sáng ngày 8/3/2017', '1750.00', '4', '2016-03-03 04:14:15', '2016-03-03 04:14:16');
INSERT INTO `orders` VALUES ('422', '7', null, '2016-03-03', '2017-03-03', 'nguyễn thị tiến', 'giao hàng cho tôi lúc 9h sáng ngày 8/3/2017', '1750.00', '4', '2016-03-03 04:14:15', '2016-03-03 04:14:16');
INSERT INTO `orders` VALUES ('423', '7', null, '2016-03-03', '2017-03-03', 'nguyễn thị tiến', 'giao hàng cho tôi lúc 9h sáng ngày 8/3/2017', '1750.00', '3', '2016-03-03 04:14:15', '2016-03-03 04:14:16');
INSERT INTO `orders` VALUES ('424', '7', null, '2016-03-03', '2017-03-03', 'nguyễn thị tiến', 'giao hàng cho tôi lúc 9h sáng ngày 8/3/2017', '1750.00', '3', '2016-03-03 04:14:15', '2016-03-03 04:14:16');
INSERT INTO `orders` VALUES ('425', '7', null, '2016-03-03', '2017-03-03', 'nguyễn thị tiến', 'giao hàng cho tôi lúc 9h sáng ngày 8/3/2017', '1750.00', '4', '2016-03-03 04:14:15', '2016-03-03 04:14:16');
INSERT INTO `orders` VALUES ('426', '7', null, '2016-03-03', '2017-03-03', 'nguyễn thị tiến', 'giao hàng cho tôi lúc 9h sáng ngày 8/3/2017', '1750.00', '4', '2016-03-03 04:14:15', '2016-03-03 04:14:16');
INSERT INTO `orders` VALUES ('427', '7', null, '2016-03-03', '2017-03-03', 'nguyễn thị tiến', 'giao hàng cho tôi lúc 9h sáng ngày 8/3/2017', '1750.00', '4', '2016-03-03 04:14:15', '2016-03-03 04:14:16');
INSERT INTO `orders` VALUES ('428', '7', null, '2016-03-03', '2017-03-03', 'nguyễn thị tiến', 'giao hàng cho tôi lúc 9h sáng ngày 8/3/2017', '1750.00', '3', '2016-03-03 04:14:15', '2016-03-03 04:14:16');
INSERT INTO `orders` VALUES ('429', '7', null, '2016-03-03', '2017-03-03', 'nguyễn thị tiến', 'giao hàng cho tôi lúc 9h sáng ngày 8/3/2017', '1750.00', '3', '2016-03-03 04:14:15', '2016-03-03 04:14:16');
INSERT INTO `orders` VALUES ('430', '7', null, '2016-03-03', '2017-03-03', 'nguyễn thị tiến', 'giao hàng cho tôi lúc 9h sáng ngày 8/3/2017', '1750.00', '3', '2016-03-03 04:14:15', '2016-03-03 04:14:16');
INSERT INTO `orders` VALUES ('431', '7', null, '2016-03-03', '2017-03-03', 'nguyễn thị tiến', 'giao hàng cho tôi lúc 9h sáng ngày 8/3/2017', '1750.00', '3', '2016-03-03 04:14:15', '2016-03-03 04:14:16');
INSERT INTO `orders` VALUES ('432', '7', null, '2016-03-03', '2017-03-03', 'nguyễn thị tiến', 'giao hàng cho tôi lúc 9h sáng ngày 8/3/2017', '1750.00', '3', '2016-03-03 04:14:15', '2016-03-03 04:14:16');
INSERT INTO `orders` VALUES ('433', '7', null, '2016-03-03', '2017-03-03', 'nguyễn thị tiến', 'giao hàng cho tôi lúc 9h sáng ngày 8/3/2017', '1750.00', '4', '2016-03-03 04:14:15', '2016-03-03 04:14:16');
INSERT INTO `orders` VALUES ('434', '7', null, '2016-03-03', '2017-03-03', 'nguyễn thị tiến', 'giao hàng cho tôi lúc 9h sáng ngày 8/3/2017', '1750.00', '4', '2016-03-03 04:14:15', '2016-03-03 04:14:16');
INSERT INTO `orders` VALUES ('435', '7', null, '2016-03-03', '2017-03-03', 'nguyễn thị tiến', 'giao hàng cho tôi lúc 9h sáng ngày 8/3/2017', '1750.00', '4', '2016-03-03 04:14:15', '2016-03-03 04:14:16');
INSERT INTO `orders` VALUES ('436', '7', null, '2016-03-03', '2017-03-03', 'nguyễn thị tiến', 'giao hàng cho tôi lúc 9h sáng ngày 8/3/2017', '1750.00', '3', '2016-03-03 04:14:15', '2016-03-03 04:14:16');
INSERT INTO `orders` VALUES ('437', '7', null, '2016-03-03', '2017-03-03', 'nguyễn thị tiến', 'giao hàng cho tôi lúc 9h sáng ngày 8/3/2017', '1750.00', '3', '2016-03-03 04:14:15', '2016-03-03 04:14:16');
INSERT INTO `orders` VALUES ('438', '7', null, '2016-03-03', '2017-03-03', 'nguyễn thị tiến', 'giao hàng cho tôi lúc 9h sáng ngày 8/3/2017', '1750.00', '3', '2016-03-03 04:14:15', '2016-03-03 04:14:16');
INSERT INTO `orders` VALUES ('439', '7', null, '2016-03-03', '2017-03-03', 'nguyễn thị tiến', 'giao hàng cho tôi lúc 9h sáng ngày 8/3/2017', '1750.00', '3', '2016-03-03 04:14:15', '2016-03-03 04:14:16');
INSERT INTO `orders` VALUES ('440', '7', null, '2016-03-03', '2017-03-03', 'nguyễn thị tiến', 'giao hàng cho tôi lúc 9h sáng ngày 8/3/2017', '1750.00', '3', '2016-03-03 04:14:15', '2016-03-03 04:14:16');
INSERT INTO `orders` VALUES ('441', '7', null, '2016-03-03', '2017-03-03', 'nguyễn thị tiến', 'giao hàng cho tôi lúc 9h sáng ngày 8/3/2017', '1750.00', '3', '2016-03-03 04:14:15', '2016-03-03 04:14:16');
INSERT INTO `orders` VALUES ('442', '7', null, '2016-03-03', '2017-03-03', 'nguyễn thị tiến', 'giao hàng cho tôi lúc 9h sáng ngày 8/3/2017', '1750.00', '3', '2016-03-03 04:14:15', '2016-03-03 04:14:16');
INSERT INTO `orders` VALUES ('443', '7', null, '2016-03-03', '2017-03-03', 'nguyễn thị tiến', 'giao hàng cho tôi lúc 9h sáng ngày 8/3/2017', '1750.00', '3', '2016-03-03 04:14:15', '2016-03-03 04:14:16');
INSERT INTO `orders` VALUES ('444', '7', null, '2016-03-03', '2017-03-03', 'nguyễn thị tiến', 'giao hàng cho tôi lúc 9h sáng ngày 8/3/2017', '1750.00', '3', '2016-03-03 04:14:15', '2016-03-03 04:14:16');
INSERT INTO `orders` VALUES ('445', '7', null, '2016-03-03', '2017-03-03', 'nguyễn thị tiến', 'giao hàng cho tôi lúc 9h sáng ngày 8/3/2017', '1750.00', '3', '2016-03-03 04:14:15', '2016-03-03 04:14:16');
INSERT INTO `orders` VALUES ('446', '7', null, '2016-04-03', '2017-03-03', 'nguyễn thị tiến', 'giao hàng cho tôi lúc 9h sáng ngày 8/3/2017', '1750.00', '4', '2016-04-03 04:14:15', '2016-04-03 04:14:16');
INSERT INTO `orders` VALUES ('447', '7', null, '2016-04-03', '2017-03-03', 'nguyễn thị tiến', 'giao hàng cho tôi lúc 9h sáng ngày 8/3/2017', '1750.00', '4', '2016-04-03 04:14:15', '2016-04-03 04:14:16');
INSERT INTO `orders` VALUES ('448', '7', null, '2016-04-03', '2017-03-03', 'nguyễn thị tiến', 'giao hàng cho tôi lúc 9h sáng ngày 8/3/2017', '1750.00', '3', '2016-04-03 04:14:15', '2016-04-03 04:14:16');
INSERT INTO `orders` VALUES ('449', '7', null, '2016-04-03', '2017-03-03', 'nguyễn thị tiến', 'giao hàng cho tôi lúc 9h sáng ngày 8/3/2017', '1750.00', '3', '2016-04-03 04:14:15', '2016-04-03 04:14:16');
INSERT INTO `orders` VALUES ('450', '7', null, '2016-04-03', '2017-03-03', 'nguyễn thị tiến', 'giao hàng cho tôi lúc 9h sáng ngày 8/3/2017', '1750.00', '4', '2016-04-03 04:14:15', '2016-04-03 04:14:16');
INSERT INTO `orders` VALUES ('451', '7', null, '2016-04-03', '2017-03-03', 'nguyễn thị tiến', 'giao hàng cho tôi lúc 9h sáng ngày 8/3/2017', '1750.00', '4', '2016-04-03 04:14:15', '2016-04-03 04:14:16');
INSERT INTO `orders` VALUES ('452', '7', null, '2016-04-03', '2017-03-03', 'nguyễn thị tiến', 'giao hàng cho tôi lúc 9h sáng ngày 8/3/2017', '1750.00', '4', '2016-04-03 04:14:15', '2016-04-03 04:14:16');
INSERT INTO `orders` VALUES ('453', '7', null, '2016-04-03', '2017-03-03', 'nguyễn thị tiến', 'giao hàng cho tôi lúc 9h sáng ngày 8/3/2017', '1750.00', '4', '2016-04-03 04:14:15', '2016-04-03 04:14:16');
INSERT INTO `orders` VALUES ('454', '7', null, '2016-04-03', '2017-03-03', 'nguyễn thị tiến', 'giao hàng cho tôi lúc 9h sáng ngày 8/3/2017', '1750.00', '3', '2016-04-03 04:14:15', '2016-04-03 04:14:16');
INSERT INTO `orders` VALUES ('455', '7', null, '2016-04-03', '2017-03-03', 'nguyễn thị tiến', 'giao hàng cho tôi lúc 9h sáng ngày 8/3/2017', '1750.00', '3', '2016-04-03 04:14:15', '2016-04-03 04:14:16');
INSERT INTO `orders` VALUES ('456', '7', null, '2016-04-03', '2017-03-03', 'nguyễn thị tiến', 'giao hàng cho tôi lúc 9h sáng ngày 8/3/2017', '1750.00', '3', '2016-04-03 04:14:15', '2016-04-03 04:14:16');
INSERT INTO `orders` VALUES ('457', '7', null, '2016-04-03', '2017-03-03', 'nguyễn thị tiến', 'giao hàng cho tôi lúc 9h sáng ngày 8/3/2017', '1750.00', '3', '2016-04-03 04:14:15', '2016-04-03 04:14:16');
INSERT INTO `orders` VALUES ('458', '7', null, '2016-04-03', '2017-03-03', 'nguyễn thị tiến', 'giao hàng cho tôi lúc 9h sáng ngày 8/3/2017', '1750.00', '4', '2016-04-03 04:14:15', '2016-04-03 04:14:16');
INSERT INTO `orders` VALUES ('459', '7', null, '2016-04-03', '2017-03-03', 'nguyễn thị tiến', 'giao hàng cho tôi lúc 9h sáng ngày 8/3/2017', '1750.00', '4', '2016-04-03 04:14:15', '2016-04-03 04:14:16');
INSERT INTO `orders` VALUES ('460', '7', null, '2016-04-03', '2017-03-03', 'nguyễn thị tiến', 'giao hàng cho tôi lúc 9h sáng ngày 8/3/2017', '1750.00', '3', '2016-04-03 04:14:15', '2016-04-03 04:14:16');
INSERT INTO `orders` VALUES ('461', '7', null, '2016-04-03', '2017-03-03', 'nguyễn thị tiến', 'giao hàng cho tôi lúc 9h sáng ngày 8/3/2017', '1750.00', '3', '2016-04-03 04:14:15', '2016-04-03 04:14:16');
INSERT INTO `orders` VALUES ('462', '7', null, '2016-04-03', '2017-03-03', 'nguyễn thị tiến', 'giao hàng cho tôi lúc 9h sáng ngày 8/3/2017', '1750.00', '4', '2016-04-03 04:14:15', '2016-04-03 04:14:16');
INSERT INTO `orders` VALUES ('463', '7', null, '2016-04-03', '2017-03-03', 'nguyễn thị tiến', 'giao hàng cho tôi lúc 9h sáng ngày 8/3/2017', '1750.00', '3', '2016-04-03 04:14:15', '2016-04-03 04:14:16');
INSERT INTO `orders` VALUES ('464', '7', null, '2016-04-03', '2017-03-03', 'nguyễn thị tiến', 'giao hàng cho tôi lúc 9h sáng ngày 8/3/2017', '1750.00', '4', '2016-04-03 04:14:15', '2016-04-03 04:14:16');
INSERT INTO `orders` VALUES ('465', '7', null, '2016-04-03', '2017-03-03', 'nguyễn thị tiến', 'giao hàng cho tôi lúc 9h sáng ngày 8/3/2017', '1750.00', '4', '2016-04-03 04:14:15', '2016-04-03 04:14:16');
INSERT INTO `orders` VALUES ('466', '7', null, '2016-05-03', '2017-03-03', 'nguyễn thị tiến', 'giao hàng cho tôi lúc 9h sáng ngày 8/3/2017', '1750.00', '4', '2016-05-03 04:14:15', '2016-05-03 04:14:16');
INSERT INTO `orders` VALUES ('467', '7', null, '2016-05-03', '2017-03-03', 'nguyễn thị tiến', 'giao hàng cho tôi lúc 9h sáng ngày 8/3/2017', '1750.00', '3', '2016-05-03 04:14:15', '2016-05-03 04:14:16');
INSERT INTO `orders` VALUES ('468', '7', null, '2016-05-03', '2017-03-03', 'nguyễn thị tiến', 'giao hàng cho tôi lúc 9h sáng ngày 8/3/2017', '1750.00', '3', '2016-05-03 04:14:15', '2016-05-03 04:14:16');
INSERT INTO `orders` VALUES ('469', '7', null, '2016-05-03', '2017-03-03', 'nguyễn thị tiến', 'giao hàng cho tôi lúc 9h sáng ngày 8/3/2017', '1750.00', '3', '2016-05-03 04:14:15', '2016-05-03 04:14:16');
INSERT INTO `orders` VALUES ('470', '7', null, '2016-05-03', '2017-03-03', 'nguyễn thị tiến', 'giao hàng cho tôi lúc 9h sáng ngày 8/3/2017', '1750.00', '4', '2016-05-03 04:14:15', '2016-05-03 04:14:16');
INSERT INTO `orders` VALUES ('471', '7', null, '2016-05-03', '2017-03-03', 'nguyễn thị tiến', 'giao hàng cho tôi lúc 9h sáng ngày 8/3/2017', '1750.00', '4', '2016-05-03 04:14:15', '2016-05-03 04:14:16');
INSERT INTO `orders` VALUES ('472', '7', null, '2016-05-03', '2017-03-03', 'nguyễn thị tiến', 'giao hàng cho tôi lúc 9h sáng ngày 8/3/2017', '1750.00', '4', '2016-05-03 04:14:15', '2016-05-03 04:14:16');
INSERT INTO `orders` VALUES ('473', '7', null, '2016-05-03', '2017-03-03', 'nguyễn thị tiến', 'giao hàng cho tôi lúc 9h sáng ngày 8/3/2017', '1750.00', '3', '2016-05-03 04:14:15', '2016-05-03 04:14:16');
INSERT INTO `orders` VALUES ('474', '7', null, '2016-05-03', '2017-03-03', 'nguyễn thị tiến', 'giao hàng cho tôi lúc 9h sáng ngày 8/3/2017', '1750.00', '4', '2016-05-03 04:14:15', '2016-05-03 04:14:16');
INSERT INTO `orders` VALUES ('475', '7', null, '2016-05-03', '2017-03-03', 'nguyễn thị tiến', 'giao hàng cho tôi lúc 9h sáng ngày 8/3/2017', '1750.00', '3', '2016-05-03 04:14:15', '2016-05-03 04:14:16');
INSERT INTO `orders` VALUES ('476', '7', null, '2016-05-03', '2017-03-03', 'nguyễn thị tiến', 'giao hàng cho tôi lúc 9h sáng ngày 8/3/2017', '1750.00', '3', '2016-05-03 04:14:15', '2016-05-03 04:14:16');
INSERT INTO `orders` VALUES ('477', '7', null, '2016-05-03', '2017-03-03', 'nguyễn thị tiến', 'giao hàng cho tôi lúc 9h sáng ngày 8/3/2017', '1750.00', '3', '2016-05-03 04:14:15', '2016-05-03 04:14:16');
INSERT INTO `orders` VALUES ('478', '7', null, '2016-05-03', '2017-03-03', 'nguyễn thị tiến', 'giao hàng cho tôi lúc 9h sáng ngày 8/3/2017', '1750.00', '3', '2016-05-03 04:14:15', '2016-05-03 04:14:16');
INSERT INTO `orders` VALUES ('479', '7', null, '2016-05-03', '2017-03-03', 'nguyễn thị tiến', 'giao hàng cho tôi lúc 9h sáng ngày 8/3/2017', '1750.00', '3', '2016-05-03 04:14:15', '2016-05-03 04:14:16');
INSERT INTO `orders` VALUES ('480', '7', null, '2016-05-03', '2017-03-03', 'nguyễn thị tiến', 'giao hàng cho tôi lúc 9h sáng ngày 8/3/2017', '1750.00', '3', '2016-05-03 04:14:15', '2016-05-03 04:14:16');
INSERT INTO `orders` VALUES ('481', '7', null, '2016-05-03', '2017-03-03', 'nguyễn thị tiến', 'giao hàng cho tôi lúc 9h sáng ngày 8/3/2017', '1750.00', '4', '2016-05-03 04:14:15', '2016-05-03 04:14:16');
INSERT INTO `orders` VALUES ('482', '7', null, '2016-05-03', '2017-03-03', 'nguyễn thị tiến', 'giao hàng cho tôi lúc 9h sáng ngày 8/3/2017', '1750.00', '3', '2016-05-03 04:14:15', '2016-05-03 04:14:16');
INSERT INTO `orders` VALUES ('483', '7', null, '2016-05-03', '2017-03-03', 'nguyễn thị tiến', 'giao hàng cho tôi lúc 9h sáng ngày 8/3/2017', '1750.00', '3', '2016-05-03 04:14:15', '2016-05-03 04:14:16');
INSERT INTO `orders` VALUES ('484', '7', null, '2016-05-03', '2017-03-03', 'nguyễn thị tiến', 'giao hàng cho tôi lúc 9h sáng ngày 8/3/2017', '1750.00', '3', '2016-05-03 04:14:15', '2016-05-03 04:14:16');
INSERT INTO `orders` VALUES ('485', '7', null, '2016-05-03', '2017-03-03', 'nguyễn thị tiến', 'giao hàng cho tôi lúc 9h sáng ngày 8/3/2017', '1750.00', '3', '2016-05-03 04:14:15', '2016-05-03 04:14:16');
INSERT INTO `orders` VALUES ('486', '7', null, '2016-05-03', '2017-03-03', 'nguyễn thị tiến', 'giao hàng cho tôi lúc 9h sáng ngày 8/3/2017', '1750.00', '4', '2016-05-03 04:14:15', '2016-05-03 04:14:16');
INSERT INTO `orders` VALUES ('487', '7', null, '2016-05-03', '2017-03-03', 'nguyễn thị tiến', 'giao hàng cho tôi lúc 9h sáng ngày 8/3/2017', '1750.00', '3', '2016-05-03 04:14:15', '2016-05-03 04:14:16');
INSERT INTO `orders` VALUES ('488', '7', null, '2016-05-03', '2017-03-03', 'nguyễn thị tiến', 'giao hàng cho tôi lúc 9h sáng ngày 8/3/2017', '1750.00', '4', '2016-05-03 04:14:15', '2016-05-03 04:14:16');
INSERT INTO `orders` VALUES ('489', '7', null, '2016-05-03', '2017-03-03', 'nguyễn thị tiến', 'giao hàng cho tôi lúc 9h sáng ngày 8/3/2017', '1750.00', '4', '2016-05-03 04:14:15', '2016-05-03 04:14:16');
INSERT INTO `orders` VALUES ('490', '7', null, '2016-05-03', '2017-03-03', 'nguyễn thị tiến', 'giao hàng cho tôi lúc 9h sáng ngày 8/3/2017', '1750.00', '3', '2016-05-03 04:14:15', '2016-05-03 04:14:16');
INSERT INTO `orders` VALUES ('491', '7', null, '2016-05-03', '2017-03-03', 'nguyễn thị tiến', 'giao hàng cho tôi lúc 9h sáng ngày 8/3/2017', '1750.00', '4', '2016-05-03 04:14:15', '2016-05-03 04:14:16');
INSERT INTO `orders` VALUES ('492', '7', null, '2016-05-03', '2017-03-03', 'nguyễn thị tiến', 'giao hàng cho tôi lúc 9h sáng ngày 8/3/2017', '1750.00', '3', '2016-05-03 04:14:15', '2016-05-03 04:14:16');
INSERT INTO `orders` VALUES ('493', '7', null, '2016-05-03', '2017-03-03', 'nguyễn thị tiến', 'giao hàng cho tôi lúc 9h sáng ngày 8/3/2017', '1750.00', '4', '2016-05-03 04:14:15', '2016-05-03 04:14:16');
INSERT INTO `orders` VALUES ('494', '7', null, '2016-05-03', '2017-03-03', 'nguyễn thị tiến', 'giao hàng cho tôi lúc 9h sáng ngày 8/3/2017', '1750.00', '4', '2016-05-03 04:14:15', '2016-05-03 04:14:16');
INSERT INTO `orders` VALUES ('495', '7', null, '2016-05-03', '2017-03-03', 'nguyễn thị tiến', 'giao hàng cho tôi lúc 9h sáng ngày 8/3/2017', '1750.00', '3', '2016-05-03 04:14:15', '2016-05-03 04:14:16');
INSERT INTO `orders` VALUES ('496', '7', null, '2016-06-03', '2017-03-03', 'nguyễn thị tiến', 'giao hàng cho tôi lúc 9h sáng ngày 8/3/2017', '1750.00', '4', '2016-06-03 04:14:15', '2016-06-03 04:14:16');
INSERT INTO `orders` VALUES ('497', '7', null, '2016-06-03', '2017-03-03', 'nguyễn thị tiến', 'giao hàng cho tôi lúc 9h sáng ngày 8/3/2017', '1750.00', '4', '2016-06-03 04:14:15', '2016-06-03 04:14:16');
INSERT INTO `orders` VALUES ('498', '7', null, '2016-06-03', '2017-03-03', 'nguyễn thị tiến', 'giao hàng cho tôi lúc 9h sáng ngày 8/3/2017', '1750.00', '3', '2016-06-03 04:14:15', '2016-06-03 04:14:16');
INSERT INTO `orders` VALUES ('499', '7', null, '2016-06-03', '2017-03-03', 'nguyễn thị tiến', 'giao hàng cho tôi lúc 9h sáng ngày 8/3/2017', '1750.00', '3', '2016-06-03 04:14:15', '2016-06-03 04:14:16');
INSERT INTO `orders` VALUES ('500', '7', null, '2016-06-03', '2017-03-03', 'nguyễn thị tiến', 'giao hàng cho tôi lúc 9h sáng ngày 8/3/2017', '1750.00', '3', '2016-06-03 04:14:15', '2016-06-03 04:14:16');
INSERT INTO `orders` VALUES ('501', '7', null, '2016-06-03', '2017-03-03', 'nguyễn thị tiến', 'giao hàng cho tôi lúc 9h sáng ngày 8/3/2017', '1750.00', '3', '2016-06-03 04:14:15', '2016-06-03 04:14:16');
INSERT INTO `orders` VALUES ('502', '7', null, '2016-06-03', '2017-03-03', 'nguyễn thị tiến', 'giao hàng cho tôi lúc 9h sáng ngày 8/3/2017', '1750.00', '3', '2016-06-03 04:14:15', '2016-06-03 04:14:16');
INSERT INTO `orders` VALUES ('503', '7', null, '2016-06-03', '2017-03-03', 'nguyễn thị tiến', 'giao hàng cho tôi lúc 9h sáng ngày 8/3/2017', '1750.00', '4', '2016-06-03 04:14:15', '2016-06-03 04:14:16');
INSERT INTO `orders` VALUES ('504', '7', null, '2016-06-03', '2017-03-03', 'nguyễn thị tiến', 'giao hàng cho tôi lúc 9h sáng ngày 8/3/2017', '1750.00', '4', '2016-06-03 04:14:15', '2016-06-03 04:14:16');
INSERT INTO `orders` VALUES ('505', '7', null, '2016-06-03', '2017-03-03', 'nguyễn thị tiến', 'giao hàng cho tôi lúc 9h sáng ngày 8/3/2017', '1750.00', '3', '2016-06-03 04:14:15', '2016-06-03 04:14:16');
INSERT INTO `orders` VALUES ('506', '7', null, '2016-06-03', '2017-03-03', 'nguyễn thị tiến', 'giao hàng cho tôi lúc 9h sáng ngày 8/3/2017', '1750.00', '4', '2016-06-03 04:14:15', '2016-06-03 04:14:16');
INSERT INTO `orders` VALUES ('507', '7', null, '2016-06-03', '2017-03-03', 'nguyễn thị tiến', 'giao hàng cho tôi lúc 9h sáng ngày 8/3/2017', '1750.00', '4', '2016-06-03 04:14:15', '2016-06-03 04:14:16');
INSERT INTO `orders` VALUES ('508', '7', null, '2016-06-03', '2017-03-03', 'nguyễn thị tiến', 'giao hàng cho tôi lúc 9h sáng ngày 8/3/2017', '1750.00', '4', '2016-06-03 04:14:15', '2016-06-03 04:14:16');
INSERT INTO `orders` VALUES ('509', '7', null, '2016-06-03', '2017-03-03', 'nguyễn thị tiến', 'giao hàng cho tôi lúc 9h sáng ngày 8/3/2017', '1750.00', '3', '2016-06-03 04:14:15', '2016-06-03 04:14:16');
INSERT INTO `orders` VALUES ('510', '7', null, '2016-06-03', '2017-03-03', 'nguyễn thị tiến', 'giao hàng cho tôi lúc 9h sáng ngày 8/3/2017', '1750.00', '4', '2016-06-03 04:14:15', '2016-06-03 04:14:16');
INSERT INTO `orders` VALUES ('511', '7', null, '2016-06-03', '2017-03-03', 'nguyễn thị tiến', 'giao hàng cho tôi lúc 9h sáng ngày 8/3/2017', '1750.00', '3', '2016-06-03 04:14:15', '2016-06-03 04:14:16');
INSERT INTO `orders` VALUES ('512', '7', null, '2016-06-03', '2017-03-03', 'nguyễn thị tiến', 'giao hàng cho tôi lúc 9h sáng ngày 8/3/2017', '1750.00', '4', '2016-06-03 04:14:15', '2016-06-03 04:14:16');
INSERT INTO `orders` VALUES ('513', '7', null, '2016-06-03', '2017-03-03', 'nguyễn thị tiến', 'giao hàng cho tôi lúc 9h sáng ngày 8/3/2017', '1750.00', '3', '2016-06-03 04:14:15', '2016-06-03 04:14:16');
INSERT INTO `orders` VALUES ('514', '7', null, '2016-06-03', '2017-03-03', 'nguyễn thị tiến', 'giao hàng cho tôi lúc 9h sáng ngày 8/3/2017', '1750.00', '4', '2016-06-03 04:14:15', '2016-06-03 04:14:16');
INSERT INTO `orders` VALUES ('515', '7', null, '2016-06-03', '2017-03-03', 'nguyễn thị tiến', 'giao hàng cho tôi lúc 9h sáng ngày 8/3/2017', '1750.00', '4', '2016-06-03 04:14:15', '2016-06-03 04:14:16');
INSERT INTO `orders` VALUES ('516', '7', null, '2016-06-03', '2017-03-03', 'nguyễn thị tiến', 'giao hàng cho tôi lúc 9h sáng ngày 8/3/2017', '1750.00', '3', '2016-06-03 04:14:15', '2016-06-03 04:14:16');
INSERT INTO `orders` VALUES ('517', '7', null, '2016-06-03', '2017-03-03', 'nguyễn thị tiến', 'giao hàng cho tôi lúc 9h sáng ngày 8/3/2017', '1750.00', '3', '2016-06-03 04:14:15', '2016-06-03 04:14:16');
INSERT INTO `orders` VALUES ('518', '7', null, '2016-06-03', '2017-03-03', 'nguyễn thị tiến', 'giao hàng cho tôi lúc 9h sáng ngày 8/3/2017', '1750.00', '3', '2016-06-03 04:14:15', '2016-06-03 04:14:16');
INSERT INTO `orders` VALUES ('519', '7', null, '2016-06-03', '2017-03-03', 'nguyễn thị tiến', 'giao hàng cho tôi lúc 9h sáng ngày 8/3/2017', '1750.00', '3', '2016-06-03 04:14:15', '2016-06-03 04:14:16');
INSERT INTO `orders` VALUES ('520', '7', null, '2016-06-03', '2017-03-03', 'nguyễn thị tiến', 'giao hàng cho tôi lúc 9h sáng ngày 8/3/2017', '1750.00', '4', '2016-06-03 04:14:15', '2016-06-03 04:14:16');
INSERT INTO `orders` VALUES ('521', '7', null, '2016-06-03', '2017-03-03', 'nguyễn thị tiến', 'giao hàng cho tôi lúc 9h sáng ngày 8/3/2017', '1750.00', '4', '2016-06-03 04:14:15', '2016-06-03 04:14:16');
INSERT INTO `orders` VALUES ('522', '7', null, '2016-06-03', '2017-03-03', 'nguyễn thị tiến', 'giao hàng cho tôi lúc 9h sáng ngày 8/3/2017', '1750.00', '4', '2016-06-03 04:14:15', '2016-06-03 04:14:16');
INSERT INTO `orders` VALUES ('523', '7', null, '2016-07-03', '2017-03-03', 'nguyễn thị tiến', 'giao hàng cho tôi lúc 9h sáng ngày 8/3/2017', '1750.00', '4', '2016-07-03 04:14:15', '2016-07-03 04:14:16');
INSERT INTO `orders` VALUES ('524', '7', null, '2016-07-03', '2017-03-03', 'nguyễn thị tiến', 'giao hàng cho tôi lúc 9h sáng ngày 8/3/2017', '1750.00', '4', '2016-07-03 04:14:15', '2016-07-03 04:14:16');
INSERT INTO `orders` VALUES ('525', '7', null, '2016-07-03', '2017-03-03', 'nguyễn thị tiến', 'giao hàng cho tôi lúc 9h sáng ngày 8/3/2017', '1750.00', '3', '2016-07-03 04:14:15', '2016-07-03 04:14:16');
INSERT INTO `orders` VALUES ('526', '7', null, '2016-07-03', '2017-03-03', 'nguyễn thị tiến', 'giao hàng cho tôi lúc 9h sáng ngày 8/3/2017', '1750.00', '3', '2016-07-03 04:14:15', '2016-07-03 04:14:16');
INSERT INTO `orders` VALUES ('527', '7', null, '2016-07-03', '2017-03-03', 'nguyễn thị tiến', 'giao hàng cho tôi lúc 9h sáng ngày 8/3/2017', '1750.00', '3', '2016-07-03 04:14:15', '2016-07-03 04:14:16');
INSERT INTO `orders` VALUES ('528', '7', null, '2016-07-03', '2017-03-03', 'nguyễn thị tiến', 'giao hàng cho tôi lúc 9h sáng ngày 8/3/2017', '1750.00', '4', '2016-07-03 04:14:15', '2016-07-03 04:14:16');
INSERT INTO `orders` VALUES ('529', '7', null, '2016-07-03', '2017-03-03', 'nguyễn thị tiến', 'giao hàng cho tôi lúc 9h sáng ngày 8/3/2017', '1750.00', '3', '2016-07-03 04:14:15', '2016-07-03 04:14:16');
INSERT INTO `orders` VALUES ('530', '7', null, '2016-07-03', '2017-03-03', 'nguyễn thị tiến', 'giao hàng cho tôi lúc 9h sáng ngày 8/3/2017', '1750.00', '4', '2016-07-03 04:14:15', '2016-07-03 04:14:16');
INSERT INTO `orders` VALUES ('531', '7', null, '2016-07-03', '2017-03-03', 'nguyễn thị tiến', 'giao hàng cho tôi lúc 9h sáng ngày 8/3/2017', '1750.00', '3', '2016-07-03 04:14:15', '2016-07-03 04:14:16');
INSERT INTO `orders` VALUES ('532', '7', null, '2016-07-03', '2017-03-03', 'nguyễn thị tiến', 'giao hàng cho tôi lúc 9h sáng ngày 8/3/2017', '1750.00', '3', '2016-07-03 04:14:15', '2016-07-03 04:14:16');
INSERT INTO `orders` VALUES ('533', '7', null, '2016-07-03', '2017-03-03', 'nguyễn thị tiến', 'giao hàng cho tôi lúc 9h sáng ngày 8/3/2017', '1750.00', '4', '2016-07-03 04:14:15', '2016-07-03 04:14:16');
INSERT INTO `orders` VALUES ('534', '7', null, '2016-07-03', '2017-03-03', 'nguyễn thị tiến', 'giao hàng cho tôi lúc 9h sáng ngày 8/3/2017', '1750.00', '3', '2016-07-03 04:14:15', '2016-07-03 04:14:16');
INSERT INTO `orders` VALUES ('535', '7', null, '2016-07-03', '2017-03-03', 'nguyễn thị tiến', 'giao hàng cho tôi lúc 9h sáng ngày 8/3/2017', '1750.00', '4', '2016-07-03 04:14:15', '2016-07-03 04:14:16');
INSERT INTO `orders` VALUES ('536', '7', null, '2016-07-03', '2017-03-03', 'nguyễn thị tiến', 'giao hàng cho tôi lúc 9h sáng ngày 8/3/2017', '1750.00', '3', '2016-07-03 04:14:15', '2016-07-03 04:14:16');
INSERT INTO `orders` VALUES ('537', '7', null, '2016-07-03', '2017-03-03', 'nguyễn thị tiến', 'giao hàng cho tôi lúc 9h sáng ngày 8/3/2017', '1750.00', '3', '2016-07-03 04:14:15', '2016-07-03 04:14:16');
INSERT INTO `orders` VALUES ('538', '7', null, '2016-07-03', '2017-03-03', 'nguyễn thị tiến', 'giao hàng cho tôi lúc 9h sáng ngày 8/3/2017', '1750.00', '4', '2016-07-03 04:14:15', '2016-07-03 04:14:16');
INSERT INTO `orders` VALUES ('539', '7', null, '2016-07-03', '2017-03-03', 'nguyễn thị tiến', 'giao hàng cho tôi lúc 9h sáng ngày 8/3/2017', '1750.00', '3', '2016-07-03 04:14:15', '2016-07-03 04:14:16');
INSERT INTO `orders` VALUES ('540', '7', null, '2016-07-03', '2017-03-03', 'nguyễn thị tiến', 'giao hàng cho tôi lúc 9h sáng ngày 8/3/2017', '1750.00', '3', '2016-07-03 04:14:15', '2016-07-03 04:14:16');
INSERT INTO `orders` VALUES ('541', '7', null, '2016-07-03', '2017-03-03', 'nguyễn thị tiến', 'giao hàng cho tôi lúc 9h sáng ngày 8/3/2017', '1750.00', '4', '2016-07-03 04:14:15', '2016-07-03 04:14:16');
INSERT INTO `orders` VALUES ('542', '7', null, '2016-07-03', '2017-03-03', 'nguyễn thị tiến', 'giao hàng cho tôi lúc 9h sáng ngày 8/3/2017', '1750.00', '3', '2016-07-03 04:14:15', '2016-07-03 04:14:16');
INSERT INTO `orders` VALUES ('543', '7', null, '2016-08-03', '2017-03-03', 'nguyễn thị tiến', 'giao hàng cho tôi lúc 9h sáng ngày 8/3/2017', '1750.00', '3', '2016-08-03 04:14:15', '2016-08-03 04:14:16');
INSERT INTO `orders` VALUES ('544', '7', null, '2016-08-03', '2017-03-03', 'nguyễn thị tiến', 'giao hàng cho tôi lúc 9h sáng ngày 8/3/2017', '1750.00', '3', '2016-08-03 04:14:15', '2016-08-03 04:14:16');
INSERT INTO `orders` VALUES ('545', '7', null, '2016-08-03', '2017-03-03', 'nguyễn thị tiến', 'giao hàng cho tôi lúc 9h sáng ngày 8/3/2017', '1750.00', '3', '2016-08-03 04:14:15', '2016-08-03 04:14:16');
INSERT INTO `orders` VALUES ('546', '7', null, '2016-08-03', '2017-03-03', 'nguyễn thị tiến', 'giao hàng cho tôi lúc 9h sáng ngày 8/3/2017', '1750.00', '3', '2016-08-03 04:14:15', '2016-08-03 04:14:16');
INSERT INTO `orders` VALUES ('547', '7', null, '2016-08-03', '2017-03-03', 'nguyễn thị tiến', 'giao hàng cho tôi lúc 9h sáng ngày 8/3/2017', '1750.00', '4', '2016-08-03 04:14:15', '2016-08-03 04:14:16');
INSERT INTO `orders` VALUES ('548', '7', null, '2016-08-03', '2017-03-03', 'nguyễn thị tiến', 'giao hàng cho tôi lúc 9h sáng ngày 8/3/2017', '1750.00', '4', '2016-08-03 04:14:15', '2016-08-03 04:14:16');
INSERT INTO `orders` VALUES ('549', '7', null, '2016-08-03', '2017-03-03', 'nguyễn thị tiến', 'giao hàng cho tôi lúc 9h sáng ngày 8/3/2017', '1750.00', '3', '2016-08-03 04:14:15', '2016-08-03 04:14:16');
INSERT INTO `orders` VALUES ('550', '7', null, '2016-08-03', '2017-03-03', 'nguyễn thị tiến', 'giao hàng cho tôi lúc 9h sáng ngày 8/3/2017', '1750.00', '3', '2016-08-03 04:14:15', '2016-08-03 04:14:16');
INSERT INTO `orders` VALUES ('551', '7', null, '2016-08-03', '2017-03-03', 'nguyễn thị tiến', 'giao hàng cho tôi lúc 9h sáng ngày 8/3/2017', '1750.00', '4', '2016-08-03 04:14:15', '2016-08-03 04:14:16');
INSERT INTO `orders` VALUES ('552', '7', null, '2016-08-03', '2017-03-03', 'nguyễn thị tiến', 'giao hàng cho tôi lúc 9h sáng ngày 8/3/2017', '1750.00', '4', '2016-08-03 04:14:15', '2016-08-03 04:14:16');
INSERT INTO `orders` VALUES ('553', '7', null, '2016-08-03', '2017-03-03', 'nguyễn thị tiến', 'giao hàng cho tôi lúc 9h sáng ngày 8/3/2017', '1750.00', '4', '2016-08-03 04:14:15', '2016-08-03 04:14:16');
INSERT INTO `orders` VALUES ('554', '7', null, '2016-08-03', '2017-03-03', 'nguyễn thị tiến', 'giao hàng cho tôi lúc 9h sáng ngày 8/3/2017', '1750.00', '3', '2016-08-03 04:14:15', '2016-08-03 04:14:16');
INSERT INTO `orders` VALUES ('555', '7', null, '2016-08-03', '2017-03-03', 'nguyễn thị tiến', 'giao hàng cho tôi lúc 9h sáng ngày 8/3/2017', '1750.00', '3', '2016-08-03 04:14:15', '2016-08-03 04:14:16');
INSERT INTO `orders` VALUES ('556', '7', null, '2016-08-03', '2017-03-03', 'nguyễn thị tiến', 'giao hàng cho tôi lúc 9h sáng ngày 8/3/2017', '1750.00', '3', '2016-08-03 04:14:15', '2016-08-03 04:14:16');
INSERT INTO `orders` VALUES ('557', '7', null, '2016-08-03', '2017-03-03', 'nguyễn thị tiến', 'giao hàng cho tôi lúc 9h sáng ngày 8/3/2017', '1750.00', '4', '2016-08-03 04:14:15', '2016-08-03 04:14:16');
INSERT INTO `orders` VALUES ('558', '7', null, '2016-08-03', '2017-03-03', 'nguyễn thị tiến', 'giao hàng cho tôi lúc 9h sáng ngày 8/3/2017', '1750.00', '3', '2016-08-03 04:14:15', '2016-08-03 04:14:16');
INSERT INTO `orders` VALUES ('559', '7', null, '2016-08-03', '2017-03-03', 'nguyễn thị tiến', 'giao hàng cho tôi lúc 9h sáng ngày 8/3/2017', '1750.00', '3', '2016-08-03 04:14:15', '2016-08-03 04:14:16');
INSERT INTO `orders` VALUES ('560', '7', null, '2016-08-03', '2017-03-03', 'nguyễn thị tiến', 'giao hàng cho tôi lúc 9h sáng ngày 8/3/2017', '1750.00', '3', '2016-08-03 04:14:15', '2016-08-03 04:14:16');
INSERT INTO `orders` VALUES ('561', '7', null, '2016-08-03', '2017-03-03', 'nguyễn thị tiến', 'giao hàng cho tôi lúc 9h sáng ngày 8/3/2017', '1750.00', '3', '2016-08-03 04:14:15', '2016-08-03 04:14:16');
INSERT INTO `orders` VALUES ('562', '7', null, '2016-08-03', '2017-03-03', 'nguyễn thị tiến', 'giao hàng cho tôi lúc 9h sáng ngày 8/3/2017', '1750.00', '3', '2016-08-03 04:14:15', '2016-08-03 04:14:16');
INSERT INTO `orders` VALUES ('563', '7', null, '2016-08-03', '2017-03-03', 'nguyễn thị tiến', 'giao hàng cho tôi lúc 9h sáng ngày 8/3/2017', '1750.00', '4', '2016-08-03 04:14:15', '2016-08-03 04:14:16');
INSERT INTO `orders` VALUES ('564', '7', null, '2016-08-03', '2017-03-03', 'nguyễn thị tiến', 'giao hàng cho tôi lúc 9h sáng ngày 8/3/2017', '1750.00', '4', '2016-08-03 04:14:15', '2016-08-03 04:14:16');
INSERT INTO `orders` VALUES ('565', '7', null, '2016-08-03', '2017-03-03', 'nguyễn thị tiến', 'giao hàng cho tôi lúc 9h sáng ngày 8/3/2017', '1750.00', '4', '2016-08-03 04:14:15', '2016-08-03 04:14:16');
INSERT INTO `orders` VALUES ('566', '7', null, '2016-08-03', '2017-03-03', 'nguyễn thị tiến', 'giao hàng cho tôi lúc 9h sáng ngày 8/3/2017', '1750.00', '3', '2016-08-03 04:14:15', '2016-08-03 04:14:16');
INSERT INTO `orders` VALUES ('567', '7', null, '2016-08-03', '2017-03-03', 'nguyễn thị tiến', 'giao hàng cho tôi lúc 9h sáng ngày 8/3/2017', '1750.00', '3', '2016-08-03 04:14:15', '2016-08-03 04:14:16');
INSERT INTO `orders` VALUES ('568', '7', null, '2016-09-03', '2017-03-03', 'nguyễn thị tiến', 'giao hàng cho tôi lúc 9h sáng ngày 8/3/2017', '1750.00', '4', '2016-09-03 04:14:15', '2016-09-03 04:14:16');
INSERT INTO `orders` VALUES ('569', '7', null, '2016-09-03', '2017-03-03', 'nguyễn thị tiến', 'giao hàng cho tôi lúc 9h sáng ngày 8/3/2017', '1750.00', '3', '2016-09-03 04:14:15', '2016-09-03 04:14:16');
INSERT INTO `orders` VALUES ('570', '7', null, '2016-09-03', '2017-03-03', 'nguyễn thị tiến', 'giao hàng cho tôi lúc 9h sáng ngày 8/3/2017', '1750.00', '4', '2016-09-03 04:14:15', '2016-09-03 04:14:16');
INSERT INTO `orders` VALUES ('571', '7', null, '2016-09-03', '2017-03-03', 'nguyễn thị tiến', 'giao hàng cho tôi lúc 9h sáng ngày 8/3/2017', '1750.00', '3', '2016-09-03 04:14:15', '2016-09-03 04:14:16');
INSERT INTO `orders` VALUES ('572', '7', null, '2016-09-03', '2017-03-03', 'nguyễn thị tiến', 'giao hàng cho tôi lúc 9h sáng ngày 8/3/2017', '1750.00', '4', '2016-09-03 04:14:15', '2016-09-03 04:14:16');
INSERT INTO `orders` VALUES ('573', '7', null, '2016-09-03', '2017-03-03', 'nguyễn thị tiến', 'giao hàng cho tôi lúc 9h sáng ngày 8/3/2017', '1750.00', '3', '2016-09-03 04:14:15', '2016-09-03 04:14:16');
INSERT INTO `orders` VALUES ('574', '7', null, '2016-09-03', '2017-03-03', 'nguyễn thị tiến', 'giao hàng cho tôi lúc 9h sáng ngày 8/3/2017', '1750.00', '3', '2016-09-03 04:14:15', '2016-09-03 04:14:16');
INSERT INTO `orders` VALUES ('575', '7', null, '2016-09-03', '2017-03-03', 'nguyễn thị tiến', 'giao hàng cho tôi lúc 9h sáng ngày 8/3/2017', '1750.00', '3', '2016-09-03 04:14:15', '2016-09-03 04:14:16');
INSERT INTO `orders` VALUES ('576', '7', null, '2016-09-03', '2017-03-03', 'nguyễn thị tiến', 'giao hàng cho tôi lúc 9h sáng ngày 8/3/2017', '1750.00', '4', '2016-09-03 04:14:15', '2016-09-03 04:14:16');
INSERT INTO `orders` VALUES ('577', '7', null, '2016-09-03', '2017-03-03', 'nguyễn thị tiến', 'giao hàng cho tôi lúc 9h sáng ngày 8/3/2017', '1750.00', '4', '2016-09-03 04:14:15', '2016-09-03 04:14:16');
INSERT INTO `orders` VALUES ('578', '7', null, '2016-09-03', '2017-03-03', 'nguyễn thị tiến', 'giao hàng cho tôi lúc 9h sáng ngày 8/3/2017', '1750.00', '3', '2016-09-03 04:14:15', '2016-09-03 04:14:16');
INSERT INTO `orders` VALUES ('579', '7', null, '2016-09-03', '2017-03-03', 'nguyễn thị tiến', 'giao hàng cho tôi lúc 9h sáng ngày 8/3/2017', '1750.00', '4', '2016-09-03 04:14:15', '2016-09-03 04:14:16');
INSERT INTO `orders` VALUES ('580', '7', null, '2016-09-03', '2017-03-03', 'nguyễn thị tiến', 'giao hàng cho tôi lúc 9h sáng ngày 8/3/2017', '1750.00', '4', '2016-09-03 04:14:15', '2016-09-03 04:14:16');
INSERT INTO `orders` VALUES ('581', '7', null, '2016-09-03', '2017-03-03', 'nguyễn thị tiến', 'giao hàng cho tôi lúc 9h sáng ngày 8/3/2017', '1750.00', '4', '2016-09-03 04:14:15', '2016-09-03 04:14:16');
INSERT INTO `orders` VALUES ('582', '7', null, '2016-09-03', '2017-03-03', 'nguyễn thị tiến', 'giao hàng cho tôi lúc 9h sáng ngày 8/3/2017', '1750.00', '4', '2016-09-03 04:14:15', '2016-09-03 04:14:16');
INSERT INTO `orders` VALUES ('583', '7', null, '2016-09-03', '2017-03-03', 'nguyễn thị tiến', 'giao hàng cho tôi lúc 9h sáng ngày 8/3/2017', '1750.00', '4', '2016-09-03 04:14:15', '2016-09-03 04:14:16');
INSERT INTO `orders` VALUES ('584', '7', null, '2016-09-03', '2017-03-03', 'nguyễn thị tiến', 'giao hàng cho tôi lúc 9h sáng ngày 8/3/2017', '1750.00', '4', '2016-09-03 04:14:15', '2016-09-03 04:14:16');
INSERT INTO `orders` VALUES ('585', '7', null, '2016-09-03', '2017-03-03', 'nguyễn thị tiến', 'giao hàng cho tôi lúc 9h sáng ngày 8/3/2017', '1750.00', '4', '2016-09-03 04:14:15', '2016-09-03 04:14:16');
INSERT INTO `orders` VALUES ('586', '7', null, '2016-09-03', '2017-03-03', 'nguyễn thị tiến', 'giao hàng cho tôi lúc 9h sáng ngày 8/3/2017', '1750.00', '4', '2016-09-03 04:14:15', '2016-09-03 04:14:16');
INSERT INTO `orders` VALUES ('587', '7', null, '2016-09-03', '2017-03-03', 'nguyễn thị tiến', 'giao hàng cho tôi lúc 9h sáng ngày 8/3/2017', '1750.00', '3', '2016-09-03 04:14:15', '2016-09-03 04:14:16');
INSERT INTO `orders` VALUES ('588', '7', null, '2016-09-03', '2017-03-03', 'nguyễn thị tiến', 'giao hàng cho tôi lúc 9h sáng ngày 8/3/2017', '1750.00', '4', '2016-09-03 04:14:15', '2016-09-03 04:14:16');
INSERT INTO `orders` VALUES ('589', '7', null, '2016-09-03', '2017-03-03', 'nguyễn thị tiến', 'giao hàng cho tôi lúc 9h sáng ngày 8/3/2017', '1750.00', '4', '2016-09-03 04:14:15', '2016-09-03 04:14:16');
INSERT INTO `orders` VALUES ('590', '7', null, '2016-09-03', '2017-03-03', 'nguyễn thị tiến', 'giao hàng cho tôi lúc 9h sáng ngày 8/3/2017', '1750.00', '3', '2016-09-03 04:14:15', '2016-09-03 04:14:16');
INSERT INTO `orders` VALUES ('591', '7', null, '2016-09-03', '2017-03-03', 'nguyễn thị tiến', 'giao hàng cho tôi lúc 9h sáng ngày 8/3/2017', '1750.00', '4', '2016-09-03 04:14:15', '2016-09-03 04:14:16');
INSERT INTO `orders` VALUES ('592', '7', null, '2016-09-03', '2017-03-03', 'nguyễn thị tiến', 'giao hàng cho tôi lúc 9h sáng ngày 8/3/2017', '1750.00', '4', '2016-09-03 04:14:15', '2016-09-03 04:14:16');
INSERT INTO `orders` VALUES ('593', '7', null, '2016-09-03', '2017-03-03', 'nguyễn thị tiến', 'giao hàng cho tôi lúc 9h sáng ngày 8/3/2017', '1750.00', '4', '2016-09-03 04:14:15', '2016-09-03 04:14:16');
INSERT INTO `orders` VALUES ('594', '7', null, '2016-09-03', '2017-03-03', 'nguyễn thị tiến', 'giao hàng cho tôi lúc 9h sáng ngày 8/3/2017', '1750.00', '3', '2016-09-03 04:14:15', '2016-09-03 04:14:16');
INSERT INTO `orders` VALUES ('595', '7', null, '2016-09-03', '2017-03-03', 'nguyễn thị tiến', 'giao hàng cho tôi lúc 9h sáng ngày 8/3/2017', '1750.00', '3', '2016-09-03 04:14:15', '2016-09-03 04:14:16');
INSERT INTO `orders` VALUES ('596', '7', null, '2016-09-03', '2017-03-03', 'nguyễn thị tiến', 'giao hàng cho tôi lúc 9h sáng ngày 8/3/2017', '1750.00', '4', '2016-09-03 04:14:15', '2016-09-03 04:14:16');
INSERT INTO `orders` VALUES ('597', '7', null, '2016-09-03', '2017-03-03', 'nguyễn thị tiến', 'giao hàng cho tôi lúc 9h sáng ngày 8/3/2017', '1750.00', '4', '2016-09-03 04:14:15', '2016-09-03 04:14:16');
INSERT INTO `orders` VALUES ('598', '7', null, '2016-09-03', '2017-03-03', 'nguyễn thị tiến', 'giao hàng cho tôi lúc 9h sáng ngày 8/3/2017', '1750.00', '4', '2016-09-03 04:14:15', '2016-09-03 04:14:16');
INSERT INTO `orders` VALUES ('599', '7', null, '2016-09-03', '2017-03-03', 'nguyễn thị tiến', 'giao hàng cho tôi lúc 9h sáng ngày 8/3/2017', '1750.00', '3', '2016-09-03 04:14:15', '2016-09-03 04:14:16');
INSERT INTO `orders` VALUES ('600', '7', null, '2016-09-03', '2017-03-03', 'nguyễn thị tiến', 'giao hàng cho tôi lúc 9h sáng ngày 8/3/2017', '1750.00', '3', '2016-09-03 04:14:15', '2016-09-03 04:14:16');
INSERT INTO `orders` VALUES ('601', '7', null, '2016-09-03', '2017-03-03', 'nguyễn thị tiến', 'giao hàng cho tôi lúc 9h sáng ngày 8/3/2017', '1750.00', '4', '2016-09-03 04:14:15', '2016-09-03 04:14:16');
INSERT INTO `orders` VALUES ('602', '7', null, '2016-09-03', '2017-03-03', 'nguyễn thị tiến', 'giao hàng cho tôi lúc 9h sáng ngày 8/3/2017', '1750.00', '4', '2016-09-03 04:14:15', '2016-09-03 04:14:16');
INSERT INTO `orders` VALUES ('603', '7', null, '2016-09-03', '2017-03-03', 'nguyễn thị tiến', 'giao hàng cho tôi lúc 9h sáng ngày 8/3/2017', '1750.00', '3', '2016-09-03 04:14:15', '2016-09-03 04:14:16');
INSERT INTO `orders` VALUES ('604', '7', null, '2016-10-03', '2017-03-03', 'nguyễn thị tiến', 'giao hàng cho tôi lúc 9h sáng ngày 8/3/2017', '1750.00', '4', '2016-10-03 04:14:15', '2016-10-03 04:14:16');
INSERT INTO `orders` VALUES ('605', '7', null, '2016-10-03', '2017-03-03', 'nguyễn thị tiến', 'giao hàng cho tôi lúc 9h sáng ngày 8/3/2017', '1750.00', '3', '2016-10-03 04:14:15', '2016-10-03 04:14:16');
INSERT INTO `orders` VALUES ('606', '7', null, '2016-10-03', '2017-03-03', 'nguyễn thị tiến', 'giao hàng cho tôi lúc 9h sáng ngày 8/3/2017', '1750.00', '3', '2016-10-03 04:14:15', '2016-10-03 04:14:16');
INSERT INTO `orders` VALUES ('607', '7', null, '2016-10-03', '2017-03-03', 'nguyễn thị tiến', 'giao hàng cho tôi lúc 9h sáng ngày 8/3/2017', '1750.00', '4', '2016-10-03 04:14:15', '2016-10-03 04:14:16');
INSERT INTO `orders` VALUES ('608', '7', null, '2016-10-03', '2017-03-03', 'nguyễn thị tiến', 'giao hàng cho tôi lúc 9h sáng ngày 8/3/2017', '1750.00', '4', '2016-10-03 04:14:15', '2016-10-03 04:14:16');
INSERT INTO `orders` VALUES ('609', '7', null, '2016-10-03', '2017-03-03', 'nguyễn thị tiến', 'giao hàng cho tôi lúc 9h sáng ngày 8/3/2017', '1750.00', '3', '2016-10-03 04:14:15', '2016-10-03 04:14:16');
INSERT INTO `orders` VALUES ('610', '7', null, '2016-10-03', '2017-03-03', 'nguyễn thị tiến', 'giao hàng cho tôi lúc 9h sáng ngày 8/3/2017', '1750.00', '3', '2016-10-03 04:14:15', '2016-10-03 04:14:16');
INSERT INTO `orders` VALUES ('611', '7', null, '2016-10-03', '2017-03-03', 'nguyễn thị tiến', 'giao hàng cho tôi lúc 9h sáng ngày 8/3/2017', '1750.00', '3', '2016-10-03 04:14:15', '2016-10-03 04:14:16');
INSERT INTO `orders` VALUES ('612', '7', null, '2016-10-03', '2017-03-03', 'nguyễn thị tiến', 'giao hàng cho tôi lúc 9h sáng ngày 8/3/2017', '1750.00', '3', '2016-10-03 04:14:15', '2016-10-03 04:14:16');
INSERT INTO `orders` VALUES ('613', '7', null, '2016-10-03', '2017-03-03', 'nguyễn thị tiến', 'giao hàng cho tôi lúc 9h sáng ngày 8/3/2017', '1750.00', '3', '2016-10-03 04:14:15', '2016-10-03 04:14:16');
INSERT INTO `orders` VALUES ('614', '7', null, '2016-10-03', '2017-03-03', 'nguyễn thị tiến', 'giao hàng cho tôi lúc 9h sáng ngày 8/3/2017', '1750.00', '4', '2016-10-03 04:14:15', '2016-10-03 04:14:16');
INSERT INTO `orders` VALUES ('615', '7', null, '2016-10-03', '2017-03-03', 'nguyễn thị tiến', 'giao hàng cho tôi lúc 9h sáng ngày 8/3/2017', '1750.00', '4', '2016-10-03 04:14:15', '2016-10-03 04:14:16');
INSERT INTO `orders` VALUES ('616', '7', null, '2016-10-03', '2017-03-03', 'nguyễn thị tiến', 'giao hàng cho tôi lúc 9h sáng ngày 8/3/2017', '1750.00', '4', '2016-10-03 04:14:15', '2016-10-03 04:14:16');
INSERT INTO `orders` VALUES ('617', '7', null, '2016-10-03', '2017-03-03', 'nguyễn thị tiến', 'giao hàng cho tôi lúc 9h sáng ngày 8/3/2017', '1750.00', '4', '2016-10-03 04:14:15', '2016-10-03 04:14:16');
INSERT INTO `orders` VALUES ('618', '7', null, '2016-10-03', '2017-03-03', 'nguyễn thị tiến', 'giao hàng cho tôi lúc 9h sáng ngày 8/3/2017', '1750.00', '3', '2016-10-03 04:14:15', '2016-10-03 04:14:16');
INSERT INTO `orders` VALUES ('619', '7', null, '2016-10-03', '2017-03-03', 'nguyễn thị tiến', 'giao hàng cho tôi lúc 9h sáng ngày 8/3/2017', '1750.00', '4', '2016-10-03 04:14:15', '2016-10-03 04:14:16');
INSERT INTO `orders` VALUES ('620', '7', null, '2016-10-03', '2017-03-03', 'nguyễn thị tiến', 'giao hàng cho tôi lúc 9h sáng ngày 8/3/2017', '1750.00', '3', '2016-10-03 04:14:15', '2016-10-03 04:14:16');
INSERT INTO `orders` VALUES ('621', '7', null, '2016-10-03', '2017-03-03', 'nguyễn thị tiến', 'giao hàng cho tôi lúc 9h sáng ngày 8/3/2017', '1750.00', '3', '2016-10-03 04:14:15', '2016-10-03 04:14:16');
INSERT INTO `orders` VALUES ('622', '7', null, '2016-10-03', '2017-03-03', 'nguyễn thị tiến', 'giao hàng cho tôi lúc 9h sáng ngày 8/3/2017', '1750.00', '3', '2016-10-03 04:14:15', '2016-10-03 04:14:16');
INSERT INTO `orders` VALUES ('623', '7', null, '2016-10-03', '2017-03-03', 'nguyễn thị tiến', 'giao hàng cho tôi lúc 9h sáng ngày 8/3/2017', '1750.00', '3', '2016-10-03 04:14:15', '2016-10-03 04:14:16');
INSERT INTO `orders` VALUES ('624', '7', null, '2016-10-03', '2017-03-03', 'nguyễn thị tiến', 'giao hàng cho tôi lúc 9h sáng ngày 8/3/2017', '1750.00', '3', '2016-10-03 04:14:15', '2016-10-03 04:14:16');
INSERT INTO `orders` VALUES ('625', '7', null, '2016-10-03', '2017-03-03', 'nguyễn thị tiến', 'giao hàng cho tôi lúc 9h sáng ngày 8/3/2017', '1750.00', '4', '2016-10-03 04:14:15', '2016-10-03 04:14:16');
INSERT INTO `orders` VALUES ('626', '7', null, '2016-10-03', '2017-03-03', 'nguyễn thị tiến', 'giao hàng cho tôi lúc 9h sáng ngày 8/3/2017', '1750.00', '3', '2016-10-03 04:14:15', '2016-10-03 04:14:16');
INSERT INTO `orders` VALUES ('627', '7', null, '2016-10-03', '2017-03-03', 'nguyễn thị tiến', 'giao hàng cho tôi lúc 9h sáng ngày 8/3/2017', '1750.00', '3', '2016-10-03 04:14:15', '2016-10-03 04:14:16');
INSERT INTO `orders` VALUES ('628', '7', null, '2016-10-03', '2017-03-03', 'nguyễn thị tiến', 'giao hàng cho tôi lúc 9h sáng ngày 8/3/2017', '1750.00', '3', '2016-10-03 04:14:15', '2016-10-03 04:14:16');
INSERT INTO `orders` VALUES ('629', '7', null, '2016-10-03', '2017-03-03', 'nguyễn thị tiến', 'giao hàng cho tôi lúc 9h sáng ngày 8/3/2017', '1750.00', '3', '2016-10-03 04:14:15', '2016-10-03 04:14:16');
INSERT INTO `orders` VALUES ('630', '7', null, '2016-10-03', '2017-03-03', 'nguyễn thị tiến', 'giao hàng cho tôi lúc 9h sáng ngày 8/3/2017', '1750.00', '3', '2016-10-03 04:14:15', '2016-10-03 04:14:16');
INSERT INTO `orders` VALUES ('631', '7', null, '2016-11-03', '2017-03-03', 'nguyễn thị tiến', 'giao hàng cho tôi lúc 9h sáng ngày 8/3/2017', '1750.00', '4', '2016-11-03 04:14:15', '2016-11-03 04:14:16');
INSERT INTO `orders` VALUES ('632', '7', null, '2016-11-03', '2017-03-03', 'nguyễn thị tiến', 'giao hàng cho tôi lúc 9h sáng ngày 8/3/2017', '1750.00', '4', '2016-11-03 04:14:15', '2016-11-03 04:14:16');
INSERT INTO `orders` VALUES ('633', '7', null, '2016-11-03', '2017-03-03', 'nguyễn thị tiến', 'giao hàng cho tôi lúc 9h sáng ngày 8/3/2017', '1750.00', '4', '2016-11-03 04:14:15', '2016-11-03 04:14:16');
INSERT INTO `orders` VALUES ('634', '7', null, '2016-11-03', '2017-03-03', 'nguyễn thị tiến', 'giao hàng cho tôi lúc 9h sáng ngày 8/3/2017', '1750.00', '4', '2016-11-03 04:14:15', '2016-11-03 04:14:16');
INSERT INTO `orders` VALUES ('635', '7', null, '2016-11-03', '2017-03-03', 'nguyễn thị tiến', 'giao hàng cho tôi lúc 9h sáng ngày 8/3/2017', '1750.00', '4', '2016-11-03 04:14:15', '2016-11-03 04:14:16');
INSERT INTO `orders` VALUES ('636', '7', null, '2016-11-03', '2017-03-03', 'nguyễn thị tiến', 'giao hàng cho tôi lúc 9h sáng ngày 8/3/2017', '1750.00', '4', '2016-11-03 04:14:15', '2016-11-03 04:14:16');
INSERT INTO `orders` VALUES ('637', '7', null, '2016-11-03', '2017-03-03', 'nguyễn thị tiến', 'giao hàng cho tôi lúc 9h sáng ngày 8/3/2017', '1750.00', '3', '2016-11-03 04:14:15', '2016-11-03 04:14:16');
INSERT INTO `orders` VALUES ('638', '7', null, '2016-11-03', '2017-03-03', 'nguyễn thị tiến', 'giao hàng cho tôi lúc 9h sáng ngày 8/3/2017', '1750.00', '4', '2016-11-03 04:14:15', '2016-11-03 04:14:16');
INSERT INTO `orders` VALUES ('639', '7', null, '2016-11-03', '2017-03-03', 'nguyễn thị tiến', 'giao hàng cho tôi lúc 9h sáng ngày 8/3/2017', '1750.00', '3', '2016-11-03 04:14:15', '2016-11-03 04:14:16');
INSERT INTO `orders` VALUES ('640', '7', null, '2016-11-03', '2017-03-03', 'nguyễn thị tiến', 'giao hàng cho tôi lúc 9h sáng ngày 8/3/2017', '1750.00', '4', '2016-11-03 04:14:15', '2016-11-03 04:14:16');
INSERT INTO `orders` VALUES ('641', '7', null, '2016-11-03', '2017-03-03', 'nguyễn thị tiến', 'giao hàng cho tôi lúc 9h sáng ngày 8/3/2017', '1750.00', '4', '2016-11-03 04:14:15', '2016-11-03 04:14:16');
INSERT INTO `orders` VALUES ('642', '7', null, '2016-11-03', '2017-03-03', 'nguyễn thị tiến', 'giao hàng cho tôi lúc 9h sáng ngày 8/3/2017', '1750.00', '3', '2016-11-03 04:14:15', '2016-11-03 04:14:16');
INSERT INTO `orders` VALUES ('643', '7', null, '2016-11-03', '2017-03-03', 'nguyễn thị tiến', 'giao hàng cho tôi lúc 9h sáng ngày 8/3/2017', '1750.00', '4', '2016-11-03 04:14:15', '2016-11-03 04:14:16');
INSERT INTO `orders` VALUES ('644', '7', null, '2016-11-03', '2017-03-03', 'nguyễn thị tiến', 'giao hàng cho tôi lúc 9h sáng ngày 8/3/2017', '1750.00', '3', '2016-11-03 04:14:15', '2016-11-03 04:14:16');
INSERT INTO `orders` VALUES ('645', '7', null, '2016-11-03', '2017-03-03', 'nguyễn thị tiến', 'giao hàng cho tôi lúc 9h sáng ngày 8/3/2017', '1750.00', '3', '2016-11-03 04:14:15', '2016-11-03 04:14:16');
INSERT INTO `orders` VALUES ('646', '7', null, '2016-11-03', '2017-03-03', 'nguyễn thị tiến', 'giao hàng cho tôi lúc 9h sáng ngày 8/3/2017', '1750.00', '4', '2016-11-03 04:14:15', '2016-11-03 04:14:16');
INSERT INTO `orders` VALUES ('647', '7', null, '2016-11-03', '2017-03-03', 'nguyễn thị tiến', 'giao hàng cho tôi lúc 9h sáng ngày 8/3/2017', '1750.00', '4', '2016-11-03 04:14:15', '2016-11-03 04:14:16');
INSERT INTO `orders` VALUES ('648', '7', null, '2016-11-03', '2017-03-03', 'nguyễn thị tiến', 'giao hàng cho tôi lúc 9h sáng ngày 8/3/2017', '1750.00', '3', '2016-11-03 04:14:15', '2016-11-03 04:14:16');
INSERT INTO `orders` VALUES ('649', '7', null, '2016-11-03', '2017-03-03', 'nguyễn thị tiến', 'giao hàng cho tôi lúc 9h sáng ngày 8/3/2017', '1750.00', '4', '2016-11-03 04:14:15', '2016-11-03 04:14:16');
INSERT INTO `orders` VALUES ('650', '7', null, '2016-11-03', '2017-03-03', 'nguyễn thị tiến', 'giao hàng cho tôi lúc 9h sáng ngày 8/3/2017', '1750.00', '3', '2016-11-03 04:14:15', '2016-11-03 04:14:16');
INSERT INTO `orders` VALUES ('651', '7', null, '2016-12-03', '2017-03-03', 'nguyễn thị tiến', 'giao hàng cho tôi lúc 9h sáng ngày 8/3/2017', '1750.00', '4', '2016-12-03 04:14:15', '2016-12-03 04:14:16');
INSERT INTO `orders` VALUES ('652', '7', null, '2016-12-03', '2017-03-03', 'nguyễn thị tiến', 'giao hàng cho tôi lúc 9h sáng ngày 8/3/2017', '1750.00', '4', '2016-12-03 04:14:15', '2016-12-03 04:14:16');
INSERT INTO `orders` VALUES ('653', '7', null, '2016-12-03', '2017-03-03', 'nguyễn thị tiến', 'giao hàng cho tôi lúc 9h sáng ngày 8/3/2017', '1750.00', '3', '2016-12-03 04:14:15', '2016-12-03 04:14:16');
INSERT INTO `orders` VALUES ('654', '7', null, '2016-12-03', '2017-03-03', 'nguyễn thị tiến', 'giao hàng cho tôi lúc 9h sáng ngày 8/3/2017', '1750.00', '4', '2016-12-03 04:14:15', '2016-12-03 04:14:16');
INSERT INTO `orders` VALUES ('655', '7', null, '2016-12-03', '2017-03-03', 'nguyễn thị tiến', 'giao hàng cho tôi lúc 9h sáng ngày 8/3/2017', '1750.00', '3', '2016-12-03 04:14:15', '2016-12-03 04:14:16');
INSERT INTO `orders` VALUES ('656', '7', null, '2016-12-03', '2017-03-03', 'nguyễn thị tiến', 'giao hàng cho tôi lúc 9h sáng ngày 8/3/2017', '1750.00', '4', '2016-12-03 04:14:15', '2016-12-03 04:14:16');
INSERT INTO `orders` VALUES ('657', '7', null, '2016-12-03', '2017-03-03', 'nguyễn thị tiến', 'giao hàng cho tôi lúc 9h sáng ngày 8/3/2017', '1750.00', '4', '2016-12-03 04:14:15', '2016-12-03 04:14:16');
INSERT INTO `orders` VALUES ('658', '7', null, '2016-12-03', '2017-03-03', 'nguyễn thị tiến', 'giao hàng cho tôi lúc 9h sáng ngày 8/3/2017', '1750.00', '4', '2016-12-03 04:14:15', '2016-12-03 04:14:16');
INSERT INTO `orders` VALUES ('659', '7', null, '2016-12-03', '2017-03-03', 'nguyễn thị tiến', 'giao hàng cho tôi lúc 9h sáng ngày 8/3/2017', '1750.00', '4', '2016-12-03 04:14:15', '2016-12-03 04:14:16');
INSERT INTO `orders` VALUES ('660', '7', null, '2016-12-03', '2017-03-03', 'nguyễn thị tiến', 'giao hàng cho tôi lúc 9h sáng ngày 8/3/2017', '1750.00', '4', '2016-12-03 04:14:15', '2016-12-03 04:14:16');
INSERT INTO `orders` VALUES ('661', '7', null, '2016-12-03', '2017-03-03', 'nguyễn thị tiến', 'giao hàng cho tôi lúc 9h sáng ngày 8/3/2017', '1750.00', '4', '2016-12-03 04:14:15', '2016-12-03 04:14:16');
INSERT INTO `orders` VALUES ('662', '7', null, '2016-12-03', '2017-03-03', 'nguyễn thị tiến', 'giao hàng cho tôi lúc 9h sáng ngày 8/3/2017', '1750.00', '3', '2016-12-03 04:14:15', '2016-12-03 04:14:16');
INSERT INTO `orders` VALUES ('663', '7', null, '2016-12-03', '2017-03-03', 'nguyễn thị tiến', 'giao hàng cho tôi lúc 9h sáng ngày 8/3/2017', '1750.00', '3', '2016-12-03 04:14:15', '2016-12-03 04:14:16');
INSERT INTO `orders` VALUES ('664', '7', null, '2016-12-03', '2017-03-03', 'nguyễn thị tiến', 'giao hàng cho tôi lúc 9h sáng ngày 8/3/2017', '1750.00', '4', '2016-12-03 04:14:15', '2016-12-03 04:14:16');
INSERT INTO `orders` VALUES ('665', '7', null, '2016-12-03', '2017-03-03', 'nguyễn thị tiến', 'giao hàng cho tôi lúc 9h sáng ngày 8/3/2017', '1750.00', '3', '2016-12-03 04:14:15', '2016-12-03 04:14:16');
INSERT INTO `orders` VALUES ('666', '7', null, '2016-12-03', '2017-03-03', 'nguyễn thị tiến', 'giao hàng cho tôi lúc 9h sáng ngày 8/3/2017', '1750.00', '3', '2016-12-03 04:14:15', '2016-12-03 04:14:16');
INSERT INTO `orders` VALUES ('667', '7', null, '2016-12-03', '2017-03-03', 'nguyễn thị tiến', 'giao hàng cho tôi lúc 9h sáng ngày 8/3/2017', '1750.00', '3', '2016-12-03 04:14:15', '2016-12-03 04:14:16');
INSERT INTO `orders` VALUES ('668', '7', null, '2016-12-03', '2017-03-03', 'nguyễn thị tiến', 'giao hàng cho tôi lúc 9h sáng ngày 8/3/2017', '1750.00', '3', '2016-12-03 04:14:15', '2016-12-03 04:14:16');
INSERT INTO `orders` VALUES ('669', '7', null, '2016-12-03', '2017-03-03', 'nguyễn thị tiến', 'giao hàng cho tôi lúc 9h sáng ngày 8/3/2017', '1750.00', '4', '2016-12-03 04:14:15', '2016-12-03 04:14:16');
INSERT INTO `orders` VALUES ('670', '7', null, '2016-12-03', '2017-03-03', 'nguyễn thị tiến', 'giao hàng cho tôi lúc 9h sáng ngày 8/3/2017', '1750.00', '3', '2016-12-03 04:14:15', '2016-12-03 04:14:16');
INSERT INTO `orders` VALUES ('671', '7', null, '2016-12-03', '2017-03-03', 'nguyễn thị tiến', 'giao hàng cho tôi lúc 9h sáng ngày 8/3/2017', '1750.00', '3', '2016-12-03 04:14:15', '2016-12-03 04:14:16');
INSERT INTO `orders` VALUES ('672', '7', null, '2017-01-03', '2017-03-03', 'nguyễn thị tiến', 'giao hàng cho tôi lúc 9h sáng ngày 8/3/2017', '1750.00', '4', '2017-01-03 04:14:15', '2017-01-03 04:14:16');
INSERT INTO `orders` VALUES ('673', '7', null, '2017-01-03', '2017-03-03', 'nguyễn thị tiến', 'giao hàng cho tôi lúc 9h sáng ngày 8/3/2017', '1750.00', '4', '2017-01-03 04:14:15', '2017-01-03 04:14:16');
INSERT INTO `orders` VALUES ('674', '7', null, '2017-01-03', '2017-03-03', 'nguyễn thị tiến', 'giao hàng cho tôi lúc 9h sáng ngày 8/3/2017', '1750.00', '4', '2017-01-03 04:14:15', '2017-01-03 04:14:16');
INSERT INTO `orders` VALUES ('675', '7', null, '2017-01-03', '2017-03-03', 'nguyễn thị tiến', 'giao hàng cho tôi lúc 9h sáng ngày 8/3/2017', '1750.00', '4', '2017-01-03 04:14:15', '2017-01-03 04:14:16');
INSERT INTO `orders` VALUES ('676', '7', null, '2017-01-03', '2017-03-03', 'nguyễn thị tiến', 'giao hàng cho tôi lúc 9h sáng ngày 8/3/2017', '1750.00', '4', '2017-01-03 04:14:15', '2017-01-03 04:14:16');
INSERT INTO `orders` VALUES ('677', '7', null, '2017-01-03', '2017-03-03', 'nguyễn thị tiến', 'giao hàng cho tôi lúc 9h sáng ngày 8/3/2017', '1750.00', '3', '2017-01-03 04:14:15', '2017-01-03 04:14:16');
INSERT INTO `orders` VALUES ('678', '7', null, '2017-01-03', '2017-03-03', 'nguyễn thị tiến', 'giao hàng cho tôi lúc 9h sáng ngày 8/3/2017', '1750.00', '3', '2017-01-03 04:14:15', '2017-01-03 04:14:16');
INSERT INTO `orders` VALUES ('679', '7', null, '2017-01-03', '2017-03-03', 'nguyễn thị tiến', 'giao hàng cho tôi lúc 9h sáng ngày 8/3/2017', '1750.00', '3', '2017-01-03 04:14:15', '2017-01-03 04:14:16');
INSERT INTO `orders` VALUES ('680', '7', null, '2017-01-03', '2017-03-03', 'nguyễn thị tiến', 'giao hàng cho tôi lúc 9h sáng ngày 8/3/2017', '1750.00', '4', '2017-01-03 04:14:15', '2017-01-03 04:14:16');
INSERT INTO `orders` VALUES ('681', '7', null, '2017-01-03', '2017-03-03', 'nguyễn thị tiến', 'giao hàng cho tôi lúc 9h sáng ngày 8/3/2017', '1750.00', '4', '2017-01-03 04:14:15', '2017-01-03 04:14:16');
INSERT INTO `orders` VALUES ('682', '7', null, '2017-01-03', '2017-03-03', 'nguyễn thị tiến', 'giao hàng cho tôi lúc 9h sáng ngày 8/3/2017', '1750.00', '4', '2017-01-03 04:14:15', '2017-01-03 04:14:16');
INSERT INTO `orders` VALUES ('683', '7', null, '2017-01-03', '2017-03-03', 'nguyễn thị tiến', 'giao hàng cho tôi lúc 9h sáng ngày 8/3/2017', '1750.00', '4', '2017-01-03 04:14:15', '2017-01-03 04:14:16');
INSERT INTO `orders` VALUES ('684', '7', null, '2017-01-03', '2017-03-03', 'nguyễn thị tiến', 'giao hàng cho tôi lúc 9h sáng ngày 8/3/2017', '1750.00', '4', '2017-01-03 04:14:15', '2017-01-03 04:14:16');
INSERT INTO `orders` VALUES ('685', '7', null, '2017-01-03', '2017-03-03', 'nguyễn thị tiến', 'giao hàng cho tôi lúc 9h sáng ngày 8/3/2017', '1750.00', '3', '2017-01-03 04:14:15', '2017-01-03 04:14:16');
INSERT INTO `orders` VALUES ('686', '7', null, '2017-01-03', '2017-03-03', 'nguyễn thị tiến', 'giao hàng cho tôi lúc 9h sáng ngày 8/3/2017', '1750.00', '4', '2017-01-03 04:14:15', '2017-01-03 04:14:16');
INSERT INTO `orders` VALUES ('687', '7', null, '2017-01-03', '2017-03-03', 'nguyễn thị tiến', 'giao hàng cho tôi lúc 9h sáng ngày 8/3/2017', '1750.00', '4', '2017-01-03 04:14:15', '2017-01-03 04:14:16');
INSERT INTO `orders` VALUES ('688', '7', null, '2017-01-03', '2017-03-03', 'nguyễn thị tiến', 'giao hàng cho tôi lúc 9h sáng ngày 8/3/2017', '1750.00', '3', '2017-01-03 04:14:15', '2017-01-03 04:14:16');
INSERT INTO `orders` VALUES ('689', '7', null, '2017-01-03', '2017-03-03', 'nguyễn thị tiến', 'giao hàng cho tôi lúc 9h sáng ngày 8/3/2017', '1750.00', '4', '2017-01-03 04:14:15', '2017-01-03 04:14:16');
INSERT INTO `orders` VALUES ('690', '7', null, '2017-01-03', '2017-03-03', 'nguyễn thị tiến', 'giao hàng cho tôi lúc 9h sáng ngày 8/3/2017', '1750.00', '3', '2017-01-03 04:14:15', '2017-01-03 04:14:16');
INSERT INTO `orders` VALUES ('691', '7', null, '2017-01-03', '2017-03-03', 'nguyễn thị tiến', 'giao hàng cho tôi lúc 9h sáng ngày 8/3/2017', '1750.00', '4', '2017-01-03 04:14:15', '2017-01-03 04:14:16');
INSERT INTO `orders` VALUES ('692', '7', null, '2017-01-03', '2017-03-03', 'nguyễn thị tiến', 'giao hàng cho tôi lúc 9h sáng ngày 8/3/2017', '1750.00', '3', '2017-01-03 04:14:15', '2017-01-03 04:14:16');
INSERT INTO `orders` VALUES ('693', '7', null, '2017-01-03', '2017-03-03', 'nguyễn thị tiến', 'giao hàng cho tôi lúc 9h sáng ngày 8/3/2017', '1750.00', '3', '2017-01-03 04:14:15', '2017-01-03 04:14:16');
INSERT INTO `orders` VALUES ('694', '7', null, '2017-01-03', '2017-03-03', 'nguyễn thị tiến', 'giao hàng cho tôi lúc 9h sáng ngày 8/3/2017', '1750.00', '3', '2017-01-03 04:14:15', '2017-01-03 04:14:16');
INSERT INTO `orders` VALUES ('695', '7', null, '2017-01-03', '2017-03-03', 'nguyễn thị tiến', 'giao hàng cho tôi lúc 9h sáng ngày 8/3/2017', '1750.00', '4', '2017-01-03 04:14:15', '2017-01-03 04:14:16');
INSERT INTO `orders` VALUES ('696', '7', null, '2017-01-03', '2017-03-03', 'nguyễn thị tiến', 'giao hàng cho tôi lúc 9h sáng ngày 8/3/2017', '1750.00', '3', '2017-01-03 04:14:15', '2017-01-03 04:14:16');
INSERT INTO `orders` VALUES ('697', '7', null, '2017-01-03', '2017-03-03', 'nguyễn thị tiến', 'giao hàng cho tôi lúc 9h sáng ngày 8/3/2017', '1750.00', '3', '2017-01-03 04:14:15', '2017-01-03 04:14:16');
INSERT INTO `orders` VALUES ('698', '7', null, '2017-01-03', '2017-03-03', 'nguyễn thị tiến', 'giao hàng cho tôi lúc 9h sáng ngày 8/3/2017', '1750.00', '3', '2017-01-03 04:14:15', '2017-01-03 04:14:16');
INSERT INTO `orders` VALUES ('699', '7', null, '2017-01-03', '2017-03-03', 'nguyễn thị tiến', 'giao hàng cho tôi lúc 9h sáng ngày 8/3/2017', '1750.00', '4', '2017-01-03 04:14:15', '2017-01-03 04:14:16');
INSERT INTO `orders` VALUES ('700', '7', null, '2017-01-03', '2017-03-03', 'nguyễn thị tiến', 'giao hàng cho tôi lúc 9h sáng ngày 8/3/2017', '1750.00', '4', '2017-01-03 04:14:15', '2017-01-03 04:14:16');
INSERT INTO `orders` VALUES ('701', '7', null, '2017-01-03', '2017-03-03', 'nguyễn thị tiến', 'giao hàng cho tôi lúc 9h sáng ngày 8/3/2017', '1750.00', '4', '2017-01-03 04:14:15', '2017-01-03 04:14:16');
INSERT INTO `orders` VALUES ('702', '7', null, '2017-01-03', '2017-03-03', 'nguyễn thị tiến', 'giao hàng cho tôi lúc 9h sáng ngày 8/3/2017', '1750.00', '3', '2017-01-03 04:14:15', '2017-01-03 04:14:16');
INSERT INTO `orders` VALUES ('703', '7', null, '2017-01-03', '2017-03-03', 'nguyễn thị tiến', 'giao hàng cho tôi lúc 9h sáng ngày 8/3/2017', '1750.00', '3', '2017-01-03 04:14:15', '2017-01-03 04:14:16');
INSERT INTO `orders` VALUES ('704', '7', null, '2017-01-03', '2017-03-03', 'nguyễn thị tiến', 'giao hàng cho tôi lúc 9h sáng ngày 8/3/2017', '1750.00', '4', '2017-01-03 04:14:15', '2017-01-03 04:14:16');
INSERT INTO `orders` VALUES ('705', '7', null, '2017-01-03', '2017-03-03', 'nguyễn thị tiến', 'giao hàng cho tôi lúc 9h sáng ngày 8/3/2017', '1750.00', '3', '2017-01-03 04:14:15', '2017-01-03 04:14:16');
INSERT INTO `orders` VALUES ('706', '7', null, '2017-01-03', '2017-03-03', 'nguyễn thị tiến', 'giao hàng cho tôi lúc 9h sáng ngày 8/3/2017', '1750.00', '4', '2017-01-03 04:14:15', '2017-01-03 04:14:16');
INSERT INTO `orders` VALUES ('707', '7', null, '2017-01-03', '2017-03-03', 'nguyễn thị tiến', 'giao hàng cho tôi lúc 9h sáng ngày 8/3/2017', '1750.00', '3', '2017-01-03 04:14:15', '2017-01-03 04:14:16');
INSERT INTO `orders` VALUES ('708', '7', null, '2017-01-03', '2017-03-03', 'nguyễn thị tiến', 'giao hàng cho tôi lúc 9h sáng ngày 8/3/2017', '1750.00', '4', '2017-01-03 04:14:15', '2017-01-03 04:14:16');
INSERT INTO `orders` VALUES ('709', '7', null, '2017-01-03', '2017-03-03', 'nguyễn thị tiến', 'giao hàng cho tôi lúc 9h sáng ngày 8/3/2017', '1750.00', '3', '2017-01-03 04:14:15', '2017-01-03 04:14:16');
INSERT INTO `orders` VALUES ('710', '7', null, '2017-02-03', '2017-03-03', 'nguyễn thị tiến', 'giao hàng cho tôi lúc 9h sáng ngày 8/3/2017', '1750.00', '4', '2017-02-03 04:14:15', '2017-02-03 04:14:16');
INSERT INTO `orders` VALUES ('711', '7', null, '2017-02-03', '2017-03-03', 'nguyễn thị tiến', 'giao hàng cho tôi lúc 9h sáng ngày 8/3/2017', '1750.00', '3', '2017-02-03 04:14:15', '2017-02-03 04:14:16');
INSERT INTO `orders` VALUES ('712', '7', null, '2017-02-03', '2017-03-03', 'nguyễn thị tiến', 'giao hàng cho tôi lúc 9h sáng ngày 8/3/2017', '1750.00', '4', '2017-02-03 04:14:15', '2017-02-03 04:14:16');
INSERT INTO `orders` VALUES ('713', '7', null, '2017-02-03', '2017-03-03', 'nguyễn thị tiến', 'giao hàng cho tôi lúc 9h sáng ngày 8/3/2017', '1750.00', '3', '2017-02-03 04:14:15', '2017-02-03 04:14:16');
INSERT INTO `orders` VALUES ('714', '7', null, '2017-02-03', '2017-03-03', 'nguyễn thị tiến', 'giao hàng cho tôi lúc 9h sáng ngày 8/3/2017', '1750.00', '4', '2017-02-03 04:14:15', '2017-02-03 04:14:16');
INSERT INTO `orders` VALUES ('715', '7', null, '2017-02-03', '2017-03-03', 'nguyễn thị tiến', 'giao hàng cho tôi lúc 9h sáng ngày 8/3/2017', '1750.00', '3', '2017-02-03 04:14:15', '2017-02-03 04:14:16');
INSERT INTO `orders` VALUES ('716', '7', null, '2017-02-03', '2017-03-03', 'nguyễn thị tiến', 'giao hàng cho tôi lúc 9h sáng ngày 8/3/2017', '1750.00', '3', '2017-02-03 04:14:15', '2017-02-03 04:14:16');
INSERT INTO `orders` VALUES ('717', '7', null, '2017-02-03', '2017-03-03', 'nguyễn thị tiến', 'giao hàng cho tôi lúc 9h sáng ngày 8/3/2017', '1750.00', '3', '2017-02-03 04:14:15', '2017-02-03 04:14:16');
INSERT INTO `orders` VALUES ('718', '7', null, '2017-02-03', '2017-03-03', 'nguyễn thị tiến', 'giao hàng cho tôi lúc 9h sáng ngày 8/3/2017', '1750.00', '3', '2017-02-03 04:14:15', '2017-02-03 04:14:16');
INSERT INTO `orders` VALUES ('719', '7', null, '2017-02-03', '2017-03-03', 'nguyễn thị tiến', 'giao hàng cho tôi lúc 9h sáng ngày 8/3/2017', '1750.00', '4', '2017-02-03 04:14:15', '2017-02-03 04:14:16');
INSERT INTO `orders` VALUES ('720', '7', null, '2017-02-03', '2017-03-03', 'nguyễn thị tiến', 'giao hàng cho tôi lúc 9h sáng ngày 8/3/2017', '1750.00', '4', '2017-02-03 04:14:15', '2017-02-03 04:14:16');
INSERT INTO `orders` VALUES ('721', '7', null, '2017-02-03', '2017-03-03', 'nguyễn thị tiến', 'giao hàng cho tôi lúc 9h sáng ngày 8/3/2017', '1750.00', '3', '2017-02-03 04:14:15', '2017-02-03 04:14:16');
INSERT INTO `orders` VALUES ('722', '7', null, '2017-02-03', '2017-03-03', 'nguyễn thị tiến', 'giao hàng cho tôi lúc 9h sáng ngày 8/3/2017', '1750.00', '3', '2017-02-03 04:14:15', '2017-02-03 04:14:16');
INSERT INTO `orders` VALUES ('723', '7', null, '2017-02-03', '2017-03-03', 'nguyễn thị tiến', 'giao hàng cho tôi lúc 9h sáng ngày 8/3/2017', '1750.00', '3', '2017-02-03 04:14:15', '2017-02-03 04:14:16');
INSERT INTO `orders` VALUES ('724', '7', null, '2017-02-03', '2017-03-03', 'nguyễn thị tiến', 'giao hàng cho tôi lúc 9h sáng ngày 8/3/2017', '1750.00', '4', '2017-02-03 04:14:15', '2017-02-03 04:14:16');
INSERT INTO `orders` VALUES ('725', '7', null, '2017-02-03', '2017-03-03', 'nguyễn thị tiến', 'giao hàng cho tôi lúc 9h sáng ngày 8/3/2017', '1750.00', '4', '2017-02-03 04:14:15', '2017-02-03 04:14:16');
INSERT INTO `orders` VALUES ('726', '7', null, '2017-02-03', '2017-03-03', 'nguyễn thị tiến', 'giao hàng cho tôi lúc 9h sáng ngày 8/3/2017', '1750.00', '4', '2017-02-03 04:14:15', '2017-02-03 04:14:16');
INSERT INTO `orders` VALUES ('727', '7', null, '2017-02-03', '2017-03-03', 'nguyễn thị tiến', 'giao hàng cho tôi lúc 9h sáng ngày 8/3/2017', '1750.00', '4', '2017-02-03 04:14:15', '2017-02-03 04:14:16');
INSERT INTO `orders` VALUES ('728', '7', null, '2017-02-03', '2017-03-03', 'nguyễn thị tiến', 'giao hàng cho tôi lúc 9h sáng ngày 8/3/2017', '1750.00', '2', '2017-02-03 04:14:15', '2017-02-03 04:14:16');
INSERT INTO `orders` VALUES ('729', '7', null, '2017-03-03', '2017-03-03', 'nguyễn thị tiến', 'giao hàng cho tôi lúc 9h sáng ngày 8/3/2017', '1750.00', '2', '2017-03-03 04:14:15', '2017-03-03 04:14:16');
INSERT INTO `orders` VALUES ('730', '7', null, '2017-03-03', '2017-03-03', 'nguyễn thị tiến', 'giao hàng cho tôi lúc 9h sáng ngày 8/3/2017', '1750.00', '2', '2017-03-03 04:14:15', '2017-03-03 04:14:16');
INSERT INTO `orders` VALUES ('731', '7', null, '2017-03-03', '2017-03-03', 'nguyễn thị tiến', 'giao hàng cho tôi lúc 9h sáng ngày 8/3/2017', '1750.00', '2', '2017-03-03 04:14:15', '2017-03-03 04:14:16');
INSERT INTO `orders` VALUES ('732', '7', null, '2017-03-03', '2017-03-03', 'nguyễn thị tiến', 'giao hàng cho tôi lúc 9h sáng ngày 8/3/2017', '1750.00', '2', '2017-03-03 04:14:15', '2017-03-03 04:14:16');
INSERT INTO `orders` VALUES ('733', '7', null, '2017-03-03', '2017-03-03', 'nguyễn thị tiến', 'giao hàng cho tôi lúc 9h sáng ngày 8/3/2017', '1750.00', '2', '2017-03-03 04:14:15', '2017-03-03 04:14:16');
INSERT INTO `orders` VALUES ('734', '7', null, '2017-03-03', '2017-03-03', 'nguyễn thị tiến', 'giao hàng cho tôi lúc 9h sáng ngày 8/3/2017', '1750.00', '1', '2017-03-03 04:14:15', '2017-03-03 04:14:16');
INSERT INTO `orders` VALUES ('735', '7', null, '2017-03-03', '2017-03-03', 'nguyễn thị tiến', 'giao hàng cho tôi lúc 9h sáng ngày 8/3/2017', '1750.00', '1', '2017-03-03 04:14:15', '2017-03-03 04:14:16');
INSERT INTO `orders` VALUES ('736', '7', null, '2017-03-03', '2017-03-03', 'nguyễn thị tiến', 'giao hàng cho tôi lúc 9h sáng ngày 8/3/2017', '1750.00', '1', '2017-03-03 04:14:15', '2017-03-03 04:14:16');
INSERT INTO `orders` VALUES ('737', '7', null, '2017-03-03', '2017-03-03', 'nguyễn thị tiến', 'giao hàng cho tôi lúc 9h sáng ngày 8/3/2017', '1750.00', '1', '2017-03-03 04:14:15', '2017-03-03 04:14:16');
INSERT INTO `orders` VALUES ('738', '7', null, '2017-03-03', '2017-03-03', 'nguyễn thị tiến', 'giao hàng cho tôi lúc 9h sáng ngày 8/3/2017', '1750.00', '2', '2017-03-03 04:14:15', '2017-03-03 04:14:16');
INSERT INTO `orders` VALUES ('739', '7', null, '2017-03-04', '2017-03-04', 'dsgdg', 'gfhfghf', '2500.00', '1', '2017-03-04 02:45:22', '2017-03-04 02:45:22');
INSERT INTO `orders` VALUES ('740', '8', null, '2017-03-12', '2017-03-12', 'tiennguyeneee', 'vxdfvcfbcn', '1500.00', '1', '2017-03-12 09:35:48', '2017-03-12 09:35:48');
INSERT INTO `orders` VALUES ('741', '11', null, '2017-03-14', '2017-03-14', 'tiennguyeneee', 'gsgfdhfhj', '250.00', '1', '2017-03-14 08:47:42', '2017-03-14 08:47:42');
INSERT INTO `orders` VALUES ('742', '12', null, '2017-03-14', '2017-03-14', 'tiennguyeneee', 'ghghjhjkjhk', '200000.00', '1', '2017-03-14 14:51:34', '2017-03-14 14:51:34');
INSERT INTO `orders` VALUES ('743', '15', null, '2017-03-14', '2017-03-14', 'tiennguyeneee', 'cgcfhfhjgjg', '2000.00', '1', '2017-03-14 15:37:03', '2017-03-14 15:37:03');
INSERT INTO `orders` VALUES ('744', '17', null, '2017-03-14', '2017-03-14', 'tiennguyeneee', 'sadfsdfd', '2000.00', '1', '2017-03-14 15:55:03', '2017-03-14 15:55:04');
INSERT INTO `orders` VALUES ('745', '18', null, '2017-03-14', '2017-03-14', 'tiennguyeneee', 'fdfgdfgdf', '2000.00', '1', '2017-03-14 15:55:29', '2017-03-14 15:55:29');
INSERT INTO `orders` VALUES ('746', '20', null, '2017-03-14', '2017-03-14', 'dfgdfgfdg', 'sdsfsdfsdf', '2000.00', '1', '2017-03-14 16:40:51', '2017-03-14 16:40:51');
INSERT INTO `orders` VALUES ('747', '21', null, '2017-03-14', '2017-03-14', 'tester', 'fhfhfffhfhh', '2000.00', '1', '2017-03-14 16:43:09', '2017-03-14 16:43:09');
INSERT INTO `orders` VALUES ('748', '22', null, '2017-03-21', '2017-03-21', 'cxvx', 'xcvxcvxcvcx', '450000.00', '1', '2017-03-21 06:41:17', '2017-03-21 06:41:17');
INSERT INTO `orders` VALUES ('749', '23', null, '2017-03-23', '2017-03-23', 'tiennguyeneee', 'hkjhlkjljl', '350000.00', '1', '2017-03-23 10:32:01', '2017-03-23 10:32:02');

-- ----------------------------
-- Table structure for order_details
-- ----------------------------
DROP TABLE IF EXISTS `order_details`;
CREATE TABLE `order_details` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `order_id` int(11) unsigned NOT NULL,
  `product_id` int(11) unsigned DEFAULT NULL,
  `price` double(20,2) NOT NULL,
  `quantity` int(11) NOT NULL,
  `amount` double(20,2) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `order_id` (`order_id`),
  KEY `product_id` (`product_id`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of order_details
-- ----------------------------
INSERT INTO `order_details` VALUES ('1', '3', '1', '999999.99', '7', '6999999.93', '2017-02-23 19:23:12', '2017-02-23 19:23:12');
INSERT INTO `order_details` VALUES ('2', '3', '3', '1233.00', '2', '2466.00', '2017-02-23 19:23:12', '2017-02-23 19:23:12');
INSERT INTO `order_details` VALUES ('3', '4', '2', '50000.00', '5', '250000.00', '2017-02-23 19:25:32', '2017-02-23 19:25:32');
INSERT INTO `order_details` VALUES ('4', '4', '3', '1233.00', '1', '1233.00', '2017-02-23 19:25:32', '2017-02-23 19:25:32');
INSERT INTO `order_details` VALUES ('5', '5', '1', '999999.99', '10', '4999999.95', '2017-02-25 17:23:06', '2017-02-25 17:23:06');
INSERT INTO `order_details` VALUES ('6', '6', '3', '1500.00', '1', '1500.00', '2017-03-03 04:14:15', '2017-03-03 04:14:15');
INSERT INTO `order_details` VALUES ('7', '6', '2', '250.00', '1', '250.00', '2017-03-03 04:14:15', '2017-03-03 04:14:15');
INSERT INTO `order_details` VALUES ('8', '739', '9', '2500.00', '1', '2500.00', '2017-03-04 02:45:22', '2017-03-04 02:45:22');
INSERT INTO `order_details` VALUES ('9', '740', '3', '1500.00', '1', '1500.00', '2017-03-12 09:35:48', '2017-03-12 09:35:48');
INSERT INTO `order_details` VALUES ('10', '741', '2', '250.00', '1', '250.00', '2017-03-14 08:47:42', '2017-03-14 08:47:42');
INSERT INTO `order_details` VALUES ('11', '742', '1', '200000.00', '1', '200000.00', '2017-03-14 14:51:34', '2017-03-14 14:51:34');
INSERT INTO `order_details` VALUES ('12', '743', '1', '2000.00', '1', '2000.00', '2017-03-14 15:37:03', '2017-03-14 15:37:03');
INSERT INTO `order_details` VALUES ('13', '744', '1', '2000.00', '1', '2000.00', '2017-03-14 15:55:03', '2017-03-14 15:55:03');
INSERT INTO `order_details` VALUES ('14', '745', '1', '2000.00', '1', '2000.00', '2017-03-14 15:55:29', '2017-03-14 15:55:29');
INSERT INTO `order_details` VALUES ('15', '746', '1', '2000.00', '1', '2000.00', '2017-03-14 16:40:51', '2017-03-14 16:40:51');
INSERT INTO `order_details` VALUES ('16', '747', '1', '2000.00', '1', '2000.00', '2017-03-14 16:43:09', '2017-03-14 16:43:09');
INSERT INTO `order_details` VALUES ('17', '748', '3', '450000.00', '1', '450000.00', '2017-03-21 06:41:17', '2017-03-21 06:41:17');
INSERT INTO `order_details` VALUES ('18', '749', '61', '350000.00', '1', '350000.00', '2017-03-23 10:32:01', '2017-03-23 10:32:01');

-- ----------------------------
-- Table structure for password_resets
-- ----------------------------
DROP TABLE IF EXISTS `password_resets`;
CREATE TABLE `password_resets` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of password_resets
-- ----------------------------
INSERT INTO `password_resets` VALUES ('1', 'tester@gmail.com', '$2y$10$sITfgPuVNkSzuqfEMtMcJO4tIjRLjAx80YFMFhJ6RCDc7cdX25eiS', '2017-03-01 16:50:14');
INSERT INTO `password_resets` VALUES ('2', 'tiennguyen@gmail.com', '$2y$10$TPQ5qQnUyatmsriXiQpFA.Tq.1aBJXhjs0wSBU8wO8woKor6yhJSW', '2017-03-01 16:52:13');
INSERT INTO `password_resets` VALUES ('7', 'tientien@gmail.com', '$2y$10$M9A6iSYICGoGX9JcSLaMPuRH2NeJ7u.EOmKc0GY6YRg06NXXcN4MW', '2017-03-01 17:21:04');
INSERT INTO `password_resets` VALUES ('8', 'duyliemapt@gmail.com', '$2y$10$XqxS3zw3IhIiANyMBmrRIeKSNMZITZ1uRnoqIaiegJaWI/duASg2y', '2017-03-01 17:25:52');

-- ----------------------------
-- Table structure for products
-- ----------------------------
DROP TABLE IF EXISTS `products`;
CREATE TABLE `products` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `category_id` int(11) unsigned NOT NULL,
  `supplier_id` int(11) unsigned NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` double(8,2) NOT NULL,
  `productdate` date NOT NULL,
  `available` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `thumbnail` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `short_description` text COLLATE utf8mb4_unicode_ci,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `quantity` int(11) NOT NULL,
  `discount` double(8,2) NOT NULL,
  `view` int(11) DEFAULT '0',
  `status` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `supplier_id` (`supplier_id`),
  KEY `category_id` (`category_id`)
) ENGINE=InnoDB AUTO_INCREMENT=68 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of products
-- ----------------------------
INSERT INTO `products` VALUES ('1', '38', '5', 'Phấn nước April Skin', '350000.00', '2017-03-22', 'on', 'phannen1.JPG', '<p><strong>Phấn nước April Skin&nbsp;Magic Snow Cushion</strong>&nbsp;l&agrave; phấn nước t&aacute;c dụng 3 trong 1 vừa l&agrave; phấn phủ, vừa l&agrave; kem nền v&agrave; vừa l&agrave; kem che khuyết điểm cực tốt.&nbsp;</p>\r\n\r\n<p>&nbsp;</p>', '<p><strong>Phấn nước April Skin&nbsp;Magic Snow Cushion</strong>&nbsp;l&agrave; phấn nước t&aacute;c dụng 3 trong 1 vừa l&agrave; phấn phủ, vừa l&agrave; kem nền v&agrave; vừa l&agrave; kem che khuyết điểm cực tốt. Bạn sẽ kh&ocirc;ng c&ograve;n lo lắng về một l&agrave;n da mụn hay nhiều khuyết điểm. L&agrave;n da của bạn sẽ lu&ocirc;n mịn m&agrave;ng tươi s&aacute;ng kh&ocirc;ng t&igrave; vết.</p>\r\n\r\n<p>Thiết kế vỏ hộp&nbsp;<strong>phấn nước April Skin Magic Snow Cushion</strong>&nbsp;với t&ocirc;ng m&agrave;u đen sang trọng, huyền b&iacute; với b&ocirc;ng đ&aacute;nh đi k&egrave;m. Hộp chắc chắn v&agrave; cầm chắc tay</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Với&nbsp;<strong>Phấn nước April Skin Magic Snow Cushion</strong>&nbsp;c&aacute;c khuyết điểm sẽ kh&ocirc;ng c&ograve;n l&agrave; nỗi lo bởi khả năng&nbsp;che khuyết điểm của&nbsp;<strong>April Skin Magic Cushion</strong>&nbsp;thực sự&nbsp;vượt trội hơn hẳn so với c&aacute;c d&ograve;ng Cushion kh&aacute;c.</p>\r\n\r\n<p>+ Khả năng che phủ ho&agrave;n hảo gi&uacute;p che phủ tốt những khuyết điểm tr&ecirc;n da,</p>\r\n\r\n<p>+ Duy tr&igrave; lớp trang điểm trong thời gian d&agrave;i kh&ocirc;ng bị xuống t&ocirc;ng m&agrave;u,</p>\r\n\r\n<p>+ Tạo cảm gi&aacute;c da mượt m&agrave;, mướt m&agrave; kh&ocirc;ng bị mốc hay kh&ocirc; da,</p>\r\n\r\n<p>+ Độ kiềm dầu tốt, ph&ugrave; hợp với c&aacute;c bạn da dầu hay da hỗn hợp v&agrave; cả da thường,</p>\r\n\r\n<p>+ Kết cấu kem mềm của phấn nước&nbsp;April Skin Magic Snow Cushion&nbsp;mỏng mịn gi&uacute;p tăng khả năng b&aacute;m tr&ecirc;n da v&agrave; kh&ocirc;ng bị bết d&iacute;nh,</p>\r\n\r\n<p>+ Chỉ số chống nắng cao, rất ph&ugrave; hợp với kh&iacute; hậu nắng n&oacute;ng của nước ta.</p>\r\n\r\n<p>Đ&oacute; l&agrave; tất cả những ưu điểm nổi bật của&nbsp;<strong>Phấn nước April Skin Magic Snow Cushion</strong></p>', '1523', '35.00', '6', '1', '2017-03-22 04:18:08', '2017-03-24 02:17:47');
INSERT INTO `products` VALUES ('2', '40', '9', 'Kem Che Khuyết Điểm dưỡng trắng tạo nền POND Thái', '79000.00', '2017-03-09', 'on', 'kem1.JPG', '<p>Trắng kh&ocirc;ng tỳ vết</p>', '&lt;p&gt;Phủ ngay khuyết điểm&amp;nbsp;&lt;a href=&quot;https://www.sendo.vn/duong-trang.htm&quot;&gt;dưỡng trắng&lt;/a&gt;&amp;nbsp;d&amp;agrave;i l&amp;acirc;u.&lt;/p&gt;\r\n\r\n&lt;p&gt;_ Che phủ tức th&amp;igrave; c&amp;aacute;c vết th&amp;acirc;m n&amp;aacute;m v&amp;agrave; khuyết điểm tr&amp;ecirc;n da, cho l&amp;agrave;n da trắng mịn đều m&amp;agrave;u ngay khi sử dụng, với c&amp;ocirc;ng thức che phủ ưu việt GenActivTMCOVER.&lt;/p&gt;\r\n\r\n&lt;p&gt;_ Dưỡng trắng v&amp;agrave; giảm th&amp;acirc;m n&amp;aacute;m từ s&amp;acirc;u b&amp;ecirc;n trong, đồng thời bảo vệ da hiệu quả dưới t&amp;aacute;c hại của tia UVA &amp;amp; UVB với SPF30PA++.&lt;/p&gt;', '1547', '20.00', '0', '0', '2017-03-22 06:18:49', '2017-03-22 08:33:36');
INSERT INTO `products` VALUES ('3', '38', '8', 'Phấn Nước Kiềm Dầu Oil1', '145000.00', '2017-03-23', 'on', 'phannen2.JPG', '<p><strong>Phấn Nước Kiềm Dầu Oil Control Water Cushion&nbsp;</strong></p>\r\n\r\n<p><strong>Oil Control Water Cushion</strong>&nbsp;l&agrave; d&ograve;ng phấn nước mới nhất&nbsp; nhằm giải tỏa cơn kh&aacute;t &rdquo; sự xinh đẹp&rdquo; cho &ldquo;l&agrave;n da&rdquo; &nbsp;hỗn hợp, da dầu, da si&ecirc;u dầu, da super dầu :))))))).</p>', 'Phấn Nước Kiềm Dầu Oil Control Water Cushion \r\nOil Control Water Cushion là dòng phấn nước mới nhất  nhằm giải tỏa cơn khát ” sự xinh đẹp” cho “làn da”  hỗn hợp, da dầu, da siêu dầu, da super dầu :))))))). \r\nThật sự không hề vô căn cứ khi nói giải tỏa cơn khát ^^. Da dầu vốn dĩ là da thiếu nước, da càng tiết nhiều dầu, nhiều bã nhờn thì càng cho thấy dấu hiệu thiếu nước của da. Chính do vậy từ trước tới nay, nhiều bạn luôn băn khoăn về việc muốn tạo hiệu ứng căng bóng nhưng lại lo ngại về việc da theo đó mà đổ quá nhiều dầu bóng nhẫy. Giờ đây, Oil Control Water Cushion sẽ xóa băng 2 vấn đề nan giải này, dòng phấn nước mới nhất chứa hiệu quả kiềm dầu, hạn chế bã nhờn và cấp nước, tạo hiệu ứng căng bóng như sao Hàn mà nhờn dính không còn là vấn đề ^^. \r\nQuan trọng hơn chính là khả năng che khuyết điểm mà mọi người thường kì vọng từ các dòng phấn nước, do lo ngại về độ che phủ 1 số dòng cũ chưa được thì. Lại thêm 1 ưu điểm nữa được đẩy thêm vào “sao Hàn mới nổi Oil Control Water Cushion” :))) – chính là khả năng che khuyết điểm vượt trội hơn các dòng phấn nước trước đây, thậm chí hơn nhiều sản phẩm kem nền BB, CC hay BCD, kết cấu phấn tự tan trên da giúp phủ lấp cả những lỗ chân lông to,che đi vết thâm mụn,mụn đầu đen. Da láng mịn, căng bóng, không ngại đổ dầu mà vẫn cấp đầy độ ẩm cho da, không hề bị khô hay mốc phấn. \r\nTóm lại, Oil Control Water Cushion mới  chứa ưu điểm:\r\n1. Che phủ vượt trội hơn các dòng phấn nước cũ trước đây. \r\n2. Kết cấu hạt phấn tự tan và cấu trúc tự khô, cho bạn lớp Make up hoàn hảo, và vô cùng tự nhiên trong thời gian ngắn.\r\n3. Chứa ưu điểm vượt trội trong kiềm dầu và điều tiết bã nhờn,tuy nhiên lại tạo lớp nền căng mịn, cảm giác như da được uống nước đúng như tên gọi “Oil Control Water” Cushion.\r\n4. Long – Lastting: Giữ trên da lâu trôi, hạn chế việc phải make lại sản phẩm nhiều lần trong ngày, đặc biệt là vào mùa hè, mồ hôi và bã nhờn có thể gây xuống tone nền. Cho bạn lớp nền rạng rỡ. ^^\r\n5. Chỉ số chống nắng SPF50 PA+++: Khả năng chống nắng được bổ sung tối ưu cho 1 loại phấn nước.', '1425', '30.00', '8', '0', '2017-03-22 05:07:31', '2017-03-28 04:43:47');
INSERT INTO `products` VALUES ('9', '43', '10', 'Phấn Mắt Bourjois', '190000.00', '2017-03-18', 'on', 'phấn mắt1.JPG', '<p><a href=\"https://www.sendo.vn/phan-mat.htm\">Phấn mắt</a>&nbsp;Bourjois Ph&aacute;p - tone m&agrave;u sang trọng ph&ugrave; hợp đi tiệc - l&agrave; một sản phẩm của &ocirc;ng lớn Bourjois Ph&aacute;p .</p>', '&lt;p&gt;&lt;a href=&quot;https://www.sendo.vn/phan-mat.htm&quot;&gt;Phấn mắt&lt;/a&gt;&amp;nbsp;Bourjois Ph&amp;aacute;p - tone m&amp;agrave;u sang trọng ph&amp;ugrave; hợp đi tiệc - l&amp;agrave; một sản phẩm của &amp;ocirc;ng lớn Bourjois Ph&amp;aacute;p .&lt;/p&gt;', '174', '30.00', '1', '1', '2017-03-22 06:31:40', '2017-03-22 09:31:10');
INSERT INTO `products` VALUES ('61', '49', '8', 'AAA', '13.00', '2017-03-18', '1', 'phannen1.JPG', '&lt;p&gt;12312312&lt;/p&gt;', '&lt;p&gt;123123213&lt;/p&gt;', '123', '123.00', '10', null, '2017-03-22 09:18:10', '2017-03-22 09:31:01');
INSERT INTO `products` VALUES ('66', '44', '8', 'MASCARA MILKY DRESS', '295000.00', '2017-03-18', '1', 'mascara1.JPG', '&lt;p&gt;&lt;strong&gt;&lt;a href=&quot;https://www.sendo.vn/milky-dress.htm&quot;&gt;Milky Dress&lt;/a&gt;&amp;nbsp;Barbie Make Mascara&lt;/strong&gt;&lt;/p&gt;', '&lt;p&gt;&lt;strong&gt;&lt;a href=&quot;https://www.sendo.vn/milky-dress.htm&quot;&gt;Milky Dress&lt;/a&gt;&amp;nbsp;Barbie Make Mascara&lt;/strong&gt;&lt;/p&gt;\r\n\r\n&lt;p&gt;&lt;strong&gt;C&amp;ocirc;ng dụng&lt;/strong&gt;: Gi&amp;uacute;p h&amp;agrave;ng mi d&amp;agrave;i d&amp;agrave;y v&amp;agrave; cong tự nhi&amp;ecirc;n gi&amp;uacute;p nu&amp;ocirc;i dưỡng l&amp;agrave;n mi được khỏe mạnh kh&amp;ocirc;ng g&amp;atilde;y rụng tạo sự hấp dẫn cho đ&amp;ocirc;i mắt bạn.Thiết kế đầu cọ độc đ&amp;aacute;o gi&amp;uacute;p giữ nếp chuốt mi đều kh&amp;ocirc;ng bị bết d&amp;iacute;nh kh&amp;ocirc;ng lem khi tiếp x&amp;uacute;c với nước.&lt;/p&gt;\r\n\r\n&lt;p&gt;&lt;strong&gt;C&amp;aacute;ch D&amp;ugrave;ng&lt;/strong&gt;: Chuốt mi từ b&amp;ecirc;n trong ch&amp;acirc;n mi ra ngo&amp;agrave;i.&lt;/p&gt;', '17845', '10.00', '1', null, '2017-03-22 10:28:14', '2017-03-23 04:51:53');
INSERT INTO `products` VALUES ('67', '37', '5', 'mat', '158421.00', '2017-03-18', '1', '87a984_simg_63a662_340x340_maxb.jpg', '&lt;p&gt;fxdgfcg&lt;/p&gt;', '&lt;p&gt;fhgfhgjgh&lt;/p&gt;', '1245', '20.00', '0', null, '2017-03-24 09:11:51', '2017-03-24 09:11:51');

-- ----------------------------
-- Table structure for suppliers
-- ----------------------------
DROP TABLE IF EXISTS `suppliers`;
CREATE TABLE `suppliers` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `logo` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of suppliers
-- ----------------------------
INSERT INTO `suppliers` VALUES ('5', 'fashion', 'logo11.jpg', 'nikie@gmail.com', '+84984562158', '2017-02-27 03:13:54', '2017-03-12 10:11:34');
INSERT INTO `suppliers` VALUES ('6', 'sanyon', 'logo12.jpg', 'sanyon.com.vn', '+84596521356', '2017-02-27 03:16:04', '2017-03-03 03:38:05');
INSERT INTO `suppliers` VALUES ('7', 'lacostie', 'logo16.jpg', 'lacostie@gmail.com', '+84945682315', '2017-02-27 03:16:48', '2017-03-12 10:11:57');
INSERT INTO `suppliers` VALUES ('8', 'hermes', 'logo17.jpg', 'hermes@gmail.com', '+84954863259', '2017-02-27 03:19:07', '2017-03-03 03:43:00');
INSERT INTO `suppliers` VALUES ('9', 'hellokis', 'logo14.jpg', 'hellokis@gmail.com', '+849125687456', '2017-02-27 03:19:49', '2017-03-03 03:38:41');
INSERT INTO `suppliers` VALUES ('10', 'Accessories', 'logo18.jpg', 'Accessories@gmail.com', '+849156845647', '2017-03-03 03:46:01', '2017-03-03 03:46:01');
INSERT INTO `suppliers` VALUES ('11', 'thoitrangviet', 'logo19.jpg', 'thoitrangviet@gmail.com', '+84901256978', '2017-03-03 03:50:59', '2017-03-03 09:29:36');
INSERT INTO `suppliers` VALUES ('12', 'viettien', 'logo4.JPG', 'viettien@gmail.com', '+84947896541', '2017-03-03 03:51:40', '2017-03-03 03:52:49');

-- ----------------------------
-- Table structure for supports
-- ----------------------------
DROP TABLE IF EXISTS `supports`;
CREATE TABLE `supports` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of supports
-- ----------------------------

-- ----------------------------
-- Table structure for users
-- ----------------------------
DROP TABLE IF EXISTS `users`;
CREATE TABLE `users` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `group_id` int(11) unsigned NOT NULL,
  `username` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `emailconfirmed` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `security` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `adderss` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remember_token` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `group_id` (`group_id`)
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of users
-- ----------------------------
INSERT INTO `users` VALUES ('1', 'tiennguyeneee', '1', null, 'tiennguyen@gmail.com', null, '$2y$10$490Y1KwDl48qbwxOUYEyYe5DPOLXBVttZMn45Ir57OhFZYEkUJPfW', null, 'bac ninh', '04153241532', '49ViZWdWavDmooYPFxuzcUd9msy4o43Maoal6mheC1eAYVYNxqq6mLiYs6Fj', '2017-02-23 15:59:02', '2017-03-03 20:09:29');
INSERT INTO `users` VALUES ('2', 'tester', '2', null, 'tester@gmail.com', null, '$2y$10$BVrbl27bKS5fiJO17ZEgUuDeGAwA5zS0AyWgAYQiM36ePx8m/xUwK', null, 'thai bình', '0113223', 'OBkx3wCHlyTfQcP1spQGbQao3MepYcoZT3E6oF74BaaMJd4O4lnx97R7jvWQ', '2017-02-23 16:05:08', '2017-02-23 16:05:08');
INSERT INTO `users` VALUES ('3', 'eeecc', '2', null, 'leconggiang_551989@yahoo.com.vn', null, '$2y$10$5qhrfrdKupMLV6qlz29zCenx1yyMAVv.iaQOS.lru2/XjCH/F3FUm', null, 'eeeeeeeeeee', '015656566', null, '2017-02-23 19:07:00', '2017-02-23 19:07:00');
INSERT INTO `users` VALUES ('4', 'nguyenthitien', '1', null, 'nguyenthitien17061995@gmail.com', null, '$2y$10$t6tI3BbHmMPas3KoOFvFQOJyPdn/L6co4B7JTToIq3g7e2OOX7GfK', null, 'Ha Noi', '0985417452', 'X6qW5LN6mIEto9sLnjdHpw7u2HndUi4c0hcTBFzp1d0qMu7BmyxzBMOrQrkp', '2017-02-23 19:21:37', '2017-03-01 18:04:16');
INSERT INTO `users` VALUES ('5', '44444', '2', null, 'tientien@gmail.com', null, '$2y$10$meCf5fQP9ZADabyIpko4xOx8zFpaSz11r.uoZv7rxQiOOLVofTnJ.', null, 'Ha Noi', '0985417452', null, '2017-02-23 19:23:12', '2017-02-23 19:23:12');
INSERT INTO `users` VALUES ('6', '555555', '2', null, 'duyliemapt@gmail.com', null, '$2y$10$Z2oWFCNB4Ofx4Kmnhxfoq.Fiy51LGNycUAy8VX5jp/AAexf9Vdu7K', null, 'chi nhánh bắc ninh', '0985417999', null, '2017-02-23 19:25:32', '2017-02-23 19:25:32');
INSERT INTO `users` VALUES ('7', 'dsgdg', '2', null, 'fsdfsffdf@gmail.com', null, '$2y$10$4eLlPJy6o6CFX6UTdcafZueexjkDjph1Q0fj4Ih6KE1LZeFEX2tzC', null, 'fghfgh', '12415356', null, '2017-03-04 02:45:22', '2017-03-04 02:45:22');
INSERT INTO `users` VALUES ('8', 'tiennguyeneee', '2', null, 'tiennguyen@gmail.com', null, '$2y$10$10U5xFf9zizTq17CNamiCOlRUm.x/N07B8ZqTiG8s.hka0Ao2cQfW', null, 'bac ninh', '04153241532', null, '2017-03-12 09:35:48', '2017-03-12 09:35:48');
INSERT INTO `users` VALUES ('9', 'thao', '2', null, 'nguyendangthao95@gmail.com', null, '$2y$10$wxUxrpm6bnXyml0aDQyZA.Btp4m.vEX4l11wFjeEeeRjc4YrgdKfK', null, null, null, 'WLb18Tvycam1vplNbksfsX1Lr4CB5CBzLTxLVmtFnKU9U1Yv2BjRifV32iFL', '2017-03-14 04:00:11', '2017-03-14 04:00:11');
INSERT INTO `users` VALUES ('10', 'tiennguyeneee', '2', null, 'tiennguyen@gmail.com', null, '$2y$10$/Ui/Hq95ZolS6UODFb029emQrA4aKk.nrULTUAE1H2ejKzLUhQeby', null, 'bac ninh', '04153241532', null, '2017-03-14 08:47:19', '2017-03-14 08:47:19');
INSERT INTO `users` VALUES ('11', 'tiennguyeneee', '2', null, 'tiennguyen@gmail.com', null, '$2y$10$HmiFwSrF29Hh9Toc8eCoRuGoQHh9XBh4taIHid0uNBjJ9HkENtFrC', null, 'bac ninh', '04153241532', null, '2017-03-14 08:47:42', '2017-03-14 08:47:42');
INSERT INTO `users` VALUES ('12', 'tiennguyeneee', '2', null, 'tiennguyen@gmail.com', null, '$2y$10$Guw0nbG/UVtGLUofxhm1O.SexrN1gS/vVNClHFBuYrWMS98N7ei.e', null, 'bac ninh', '04153241532', null, '2017-03-14 14:51:34', '2017-03-14 14:51:34');
INSERT INTO `users` VALUES ('13', 'tiennguyeneee', '2', null, 'tiennguyen@gmail.com', null, '$2y$10$TQAIVOATHrG3jNiZye3/aupF7O/otAD0Oz0Lw7wCgVQ11/MfqmNfe', null, 'bac ninh', '04153241532', null, '2017-03-14 15:36:34', '2017-03-14 15:36:34');
INSERT INTO `users` VALUES ('14', 'tiennguyeneee', '2', null, 'tiennguyen@gmail.com', null, '$2y$10$Nth.qVoLZomtsTm/SXl8y.SgdrLZZ4beXEZdrQIyaVrAk9kd3mugu', null, 'bac ninh', '04153241532', null, '2017-03-14 15:36:45', '2017-03-14 15:36:45');
INSERT INTO `users` VALUES ('15', 'tiennguyeneee', '2', null, 'tiennguyen@gmail.com', null, '$2y$10$A8kMWLDddQt9j1WtS.vNPelp1hiHbj0jRwDF8wjsdX/p88rA1E0.S', null, 'bac ninh', '04153241532', null, '2017-03-14 15:37:03', '2017-03-14 15:37:03');
INSERT INTO `users` VALUES ('16', 'tiennguyeneee', '2', null, 'tiennguyen@gmail.com', null, '$2y$10$j4iYHfADG5EotfIqxw9IF.wayUepZTJhuh85219Yyi9noacZE5jQ2', null, 'bac ninh', '04153241532', null, '2017-03-14 15:54:54', '2017-03-14 15:54:54');
INSERT INTO `users` VALUES ('17', 'tiennguyeneee', '2', null, 'tiennguyen@gmail.com', null, '$2y$10$Wx2ElfT8K8YByxekPvllbeg4lE/gZ3B3hXf1CzjPFRsf0RpKaYtm.', null, 'bac ninh', '04153241532', null, '2017-03-14 15:55:03', '2017-03-14 15:55:03');
INSERT INTO `users` VALUES ('18', 'tiennguyeneee', '2', null, 'tiennguyen@gmail.com', null, '$2y$10$K21uTF427zMpb3lVA6xk1etdp77DCgulaWE6eyAFfG.q/gUWJ9I2i', null, 'bac ninh', '04153241532', null, '2017-03-14 15:55:29', '2017-03-14 15:55:29');
INSERT INTO `users` VALUES ('19', 'tester', '2', null, 'tester@gmail.com', null, '$2y$10$G1LCkNQ05UZLgUYc294.WOaxYJHNbwtZ9cjyXEgDXmdig3Yp..Dea', null, 'thai bình', '0113223', null, '2017-03-14 16:40:00', '2017-03-14 16:40:00');
INSERT INTO `users` VALUES ('20', 'dfgdfgfdg', '2', null, 'fgdfgdfg@gmail.com', null, '$2y$10$dOVHLKXKo9ehvqpbf8LvDeJucDJa0px6Zqvz8M2k4oWn1.a.oqJcS', null, 'dfgdfgdfgd', 'fggdfgdfg', null, '2017-03-14 16:40:51', '2017-03-14 16:40:51');
INSERT INTO `users` VALUES ('21', 'tester', '2', null, 'tester@gmail.com', null, '$2y$10$iG.BzGCHqvOp78zfI.GZi.5O22YHMf2fksphh26ZRHuLd8/tzp1uS', null, 'thai bình', '0113223', null, '2017-03-14 16:43:08', '2017-03-14 16:43:08');
INSERT INTO `users` VALUES ('22', 'cxvx', '2', null, 'asfsdfsdf@gmail.com', null, '$2y$10$YgLnHGXb.gl/ljmXfQJR.uBrZ7KTSYWj3nZu.rkafa3l4zUhNC4aS', null, 'dcvxvxcv', '0165823465210', null, '2017-03-21 06:41:17', '2017-03-21 06:41:17');
INSERT INTO `users` VALUES ('23', 'tiennguyeneee', '2', null, 'tiennguyen@gmail.com', null, '$2y$10$w1DmXRVudVpE2r7HQij/IOyUukcYOqANdfVbVJN/3XTqf6VahuczW', null, 'bac ninh', '04153241532', null, '2017-03-23 10:32:01', '2017-03-23 10:32:01');
