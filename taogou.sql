/*
 Navicat Premium Data Transfer

 Source Server         : 本地
 Source Server Type    : MySQL
 Source Server Version : 80011
 Source Host           : localhost:3306
 Source Schema         : taogou

 Target Server Type    : MySQL
 Target Server Version : 80011
 File Encoding         : 65001

 Date: 17/02/2019 17:57:20
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for address
-- ----------------------------
DROP TABLE IF EXISTS `address`;
CREATE TABLE `address`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `userId` int(11) NULL DEFAULT NULL,
  `address` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `addressDetail` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `isDelete` int(4) NULL DEFAULT NULL,
  `recipients` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `postCode` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `mobile` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of address
-- ----------------------------
INSERT INTO `address` VALUES (1, 1, '山西省太原市小店区', '解放东路传智播客科技集团14层1402室', 1, '周双大', '111112', NULL);

-- ----------------------------
-- Table structure for brand
-- ----------------------------
DROP TABLE IF EXISTS `brand`;
CREATE TABLE `brand`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `brandName` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `categoryId` int(11) NULL DEFAULT NULL,
  `brandLogo` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `isDelete` int(4) NULL DEFAULT NULL,
  `hot` int(4) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 28 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of brand
-- ----------------------------
INSERT INTO `brand` VALUES (1, '耐克', 1, '/images/brand1.png', 1, 1);
INSERT INTO `brand` VALUES (2, '阿迪达斯', 1, '/images/brand2.png', 1, 1);
INSERT INTO `brand` VALUES (3, '新百伦', 1, '/images/brand3.png', 1, 1);
INSERT INTO `brand` VALUES (4, '哥伦比亚', 1, '/images/brand4.png', 1, 0);
INSERT INTO `brand` VALUES (5, '匡威', 1, '/images/brand5.png', 1, 1);
INSERT INTO `brand` VALUES (6, '阿萨德', 1, '/images/brand6.png', 1, 1);
INSERT INTO `brand` VALUES (7, 'BEAU', 1, '/images/brand7.png', 1, 1);
INSERT INTO `brand` VALUES (8, 'PF', 1, '/images/brand8.png', 1, 1);
INSERT INTO `brand` VALUES (9, '诗爱', 3, '/images/brand9.jpg', 1, 1);
INSERT INTO `brand` VALUES (10, '康娇', 3, '/images/brand10.jpg', 1, 1);
INSERT INTO `brand` VALUES (11, '耐孚', 3, '/images/brand11.jpg', 1, 1);
INSERT INTO `brand` VALUES (12, '姿格', 3, '/images/brand12.jpg', 1, 1);
INSERT INTO `brand` VALUES (13, '春姿彩', 3, '/images/brand13.jpg', 1, 1);
INSERT INTO `brand` VALUES (14, '古奇天伦', 2, '/images/brand14.jpg', 1, 1);
INSERT INTO `brand` VALUES (15, '花花公子', 2, '/images/brand15.jpg', 1, 1);
INSERT INTO `brand` VALUES (16, '慕尚邦', 2, '/images/brand16.jpg', 1, 1);
INSERT INTO `brand` VALUES (17, '木森林', 2, '/images/brand17.jpg', 1, 1);
INSERT INTO `brand` VALUES (18, '公牛世家', 2, '/images/brand18.jpg', 1, 1);
INSERT INTO `brand` VALUES (19, '富贵鸟', 2, '/images/brand19.jpg', 1, 1);
INSERT INTO `brand` VALUES (20, '耐克', 4, '/images/brand20.jpg', 1, 1);
INSERT INTO `brand` VALUES (21, '迪士尼', 4, '/images/brand21.jpg', 1, 1);
INSERT INTO `brand` VALUES (22, '巴布豆', 4, '/images/brand22.jpg', 1, 1);
INSERT INTO `brand` VALUES (23, '阿迪达斯', 4, '/images/brand23.jpg', 1, 1);
INSERT INTO `brand` VALUES (24, '大象', 5, '/images/brand24.jpg', 1, 1);
INSERT INTO `brand` VALUES (25, 'POLO', 5, '/images/brand25.jpg', 1, 1);
INSERT INTO `brand` VALUES (26, '欧芙兰', 5, '/images/brand26.jpg', 1, 1);
INSERT INTO `brand` VALUES (27, '亦品阁', 5, '/images/brand27.jpg', 1, 1);

-- ----------------------------
-- Table structure for cart
-- ----------------------------
DROP TABLE IF EXISTS `cart`;
CREATE TABLE `cart`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `userId` int(11) NULL DEFAULT NULL,
  `productId` int(11) NULL DEFAULT NULL,
  `num` int(20) NULL DEFAULT NULL,
  `size` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `isDelete` int(4) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 31 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of cart
-- ----------------------------
INSERT INTO `cart` VALUES (1, 1, 1, 1, '50', 0);
INSERT INTO `cart` VALUES (2, 1, 2, 2, '45', 1);
INSERT INTO `cart` VALUES (3, 1, 3, 4, '40', 0);
INSERT INTO `cart` VALUES (5, 1, 6, 1, '36', 1);
INSERT INTO `cart` VALUES (6, 1, 4, 2, '42', 0);
INSERT INTO `cart` VALUES (7, 1, 4, 2, '42', 1);
INSERT INTO `cart` VALUES (8, 1, 4, 2, '42', 0);
INSERT INTO `cart` VALUES (9, 1, 4, 2, '42', 0);
INSERT INTO `cart` VALUES (10, 1, 4, 2, '42', 0);
INSERT INTO `cart` VALUES (11, 1, 4, 2, '42', 0);
INSERT INTO `cart` VALUES (12, 1, 4, 2, '42', 0);
INSERT INTO `cart` VALUES (13, 1, 4, 2, '42', 0);
INSERT INTO `cart` VALUES (14, 1, 4, 2, '42', 0);
INSERT INTO `cart` VALUES (15, 1, 4, 2, '42', 0);
INSERT INTO `cart` VALUES (16, 1, 4, 2, '42', 0);
INSERT INTO `cart` VALUES (17, 1, 4, 2, '42', 0);
INSERT INTO `cart` VALUES (18, 1, 4, 2, '42', 0);
INSERT INTO `cart` VALUES (19, 1, 4, 2, '42', 0);
INSERT INTO `cart` VALUES (20, 1, 4, 2, '42', 0);
INSERT INTO `cart` VALUES (21, 1, 4, 2, '42', 0);
INSERT INTO `cart` VALUES (22, 1, 4, 2, '42', 0);
INSERT INTO `cart` VALUES (23, 1, 4, 2, '50', 0);
INSERT INTO `cart` VALUES (24, 1, 3, 2, '32', 0);
INSERT INTO `cart` VALUES (25, 1, 3, 2, '32', 0);
INSERT INTO `cart` VALUES (26, 1, 6, 2, '36', 0);
INSERT INTO `cart` VALUES (27, 1, 19, 1, '36', 1);
INSERT INTO `cart` VALUES (28, 1, 10, 1, '36', 1);
INSERT INTO `cart` VALUES (29, 1, 10, 1, '37', 0);
INSERT INTO `cart` VALUES (30, 1, 34, 1, '45', 0);

-- ----------------------------
-- Table structure for category
-- ----------------------------
DROP TABLE IF EXISTS `category`;
CREATE TABLE `category`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `categoryName` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `isDelete` int(4) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 6 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of category
-- ----------------------------
INSERT INTO `category` VALUES (1, '运动鞋', 1);
INSERT INTO `category` VALUES (2, '男鞋', 1);
INSERT INTO `category` VALUES (3, '女鞋', 1);
INSERT INTO `category` VALUES (4, '童鞋', 1);
INSERT INTO `category` VALUES (5, '箱包', 1);

-- ----------------------------
-- Table structure for employee
-- ----------------------------
DROP TABLE IF EXISTS `employee`;
CREATE TABLE `employee`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `password` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `mobile` char(11) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `authority` int(4) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of employee
-- ----------------------------
INSERT INTO `employee` VALUES (1, 'root', '4QrcOUm6Wau+VuBX8g+IPg==', '13902060052', 1);

-- ----------------------------
-- Table structure for product
-- ----------------------------
DROP TABLE IF EXISTS `product`;
CREATE TABLE `product`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `proName` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '商品名称',
  `oldPrice` float NULL DEFAULT NULL COMMENT '商品价格',
  `price` float NULL DEFAULT NULL COMMENT '商品折扣价',
  `proDesc` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '商品描述',
  `size` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '商品尺寸',
  `statu` int(4) NULL DEFAULT NULL COMMENT '是否下架',
  `updateTime` datetime(0) NULL DEFAULT NULL COMMENT '上下架时间',
  `num` int(20) NULL DEFAULT NULL COMMENT '商品库存',
  `brandId` int(11) NULL DEFAULT NULL COMMENT '归属品牌',
  `picAddr` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '图片地址',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 37 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of product
-- ----------------------------
INSERT INTO `product` VALUES (1, 'NIKE耐克 中性 SMALL ITEMS 可调节肩带便携单肩包BA5268-451', 229, 149, '描述', '40-50', 1, '2018-10-28 00:28:29', 20, 1, '/images/product01.jpg');
INSERT INTO `product` VALUES (2, '耐克Nike 男式 沙滩运动休闲一字拖鞋 343880-060', 233.1, 179.1, '描述', '35-45', 1, '2018-10-28 00:28:29', 20, 1, '/images/product02.jpg');
INSERT INTO `product` VALUES (3, 'ADIDAS阿迪达斯 中性 LIN PER ORG 单肩包斜挎包', 188.1, 89.1, '描述', '30-50', 1, '2018-10-28 00:28:29', 20, 2, '/images/product03.jpg');
INSERT INTO `product` VALUES (4, 'ADIDAS阿迪达斯 中性 DURAMO SLIDE 彩色条纹运动休闲拖鞋G14309', 211.1, 149.1, '描述', '40-55', 1, '2018-10-28 00:28:29', 20, 2, '/images/product04.jpg');
INSERT INTO `product` VALUES (5, 'New Balance新百伦 男式 Fresh Foam Cruz X EVANGELION合作款跑步鞋', 868.1, 409.1, '描述123123', '40-50', 1, '2018-10-28 00:28:29', 22, 3, '/images/product05.jpg');
INSERT INTO `product` VALUES (6, 'ADIDAS阿迪达斯 女鞋 UltraBOOST X All Terrain LTD跑步鞋BY8921', 1342, 1069, '描述123123', '35-56', 1, '2018-10-28 00:28:29', 44, 3, '/images/product06.jpg');
INSERT INTO `product` VALUES (7, 'Columbia哥伦比亚 女鞋 户外防水防滑徒步鞋 YL2029030', 842, 709, '描述123123', '35-56', 1, '2018-10-28 00:28:29', 44, 4, '/images/product07.jpg');
INSERT INTO `product` VALUES (8, 'Columbia哥伦比亚 男式 户外登山徒步休闲鞋 DM1113439', 642, 599, '描述123123', '35-56', 1, '2018-10-28 00:28:29', 44, 4, '/images/product08.jpg');
INSERT INTO `product` VALUES (9, 'CONVERSE匡威 中性 One Star低帮反毛皮板鞋CS158369', 542, 439, '描述123123', '35-56', 1, '2018-10-28 00:28:29', 44, 5, '/images/product09.jpg');
INSERT INTO `product` VALUES (10, 'CONVERSE匡威 中性 Chuck Taylor All Star 70 高帮复古帆布鞋CS161442', 542, 399, '描述123123', '35-56', 1, '2018-10-28 00:28:29', 44, 5, '/images/product10.jpg');
INSERT INTO `product` VALUES (11, 'DEOLERLTOL/德欧老头 男式 布洛克雕花商务休闲皮鞋 0021', 342, 239, '描述123123', '35-56', 1, '2018-10-28 00:28:29', 44, 6, '/images/product11.jpg');
INSERT INTO `product` VALUES (12, 'DEOLERLTOL/德欧老头 男式 时尚青年纯色休闲鞋 T66818', 342, 112, '描述123123', '35-56', 1, '2018-10-28 00:28:29', 44, 6, '/images/product12.jpg');
INSERT INTO `product` VALUES (13, 'REEBOK锐步 女鞋 HAYASU 训练鞋BS6024', 342, 112, '描述123123', '35-56', 1, '2018-10-28 00:28:29', 44, 7, '/images/product13.jpg');
INSERT INTO `product` VALUES (14, '李宁LINING 女鞋 Bubble Ace气垫运动跑步鞋AGLM022-3', 342, 112, '描述123123', '35-56', 1, '2018-10-28 00:28:29', 44, 7, '/images/product14.jpg');
INSERT INTO `product` VALUES (15, 'PF 男式 复古潮流休闲皮鞋 5428', 342, 112, '描述123123', '35-56', 1, '2018-10-28 00:28:29', 44, 8, '/images/product15.jpg');
INSERT INTO `product` VALUES (16, 'PF 男式 户外高帮短筒工装靴 5615', 342, 112, '描述123123', '35-56', 1, '2018-10-28 00:28:29', 44, 8, '/images/product16.jpg');
INSERT INTO `product` VALUES (17, 'Amiamo诗爱 女式 舒适休闲板鞋 ASY003', 342, 112, '描述123123', '35-56', 1, '2018-10-28 00:28:29', 44, 9, '/images/product17.jpg');
INSERT INTO `product` VALUES (18, 'Amiamo诗爱 女式 舒适休闲乐福鞋 ASY001', 342, 112, '描述123123', '35-56', 1, '2018-10-28 00:28:29', 44, 9, '/images/product18.jpg');
INSERT INTO `product` VALUES (19, '康娇 女鞋 圆头浅口蝴蝶结浅口单鞋 1819', 342, 112, '描述123123', '35-56', 1, '2018-10-28 00:28:29', 44, 10, '/images/product19.jpg');
INSERT INTO `product` VALUES (20, '耐孚 中性 防砸耐磨劳保防护鞋 FN-803超纤', 342, 112, '描述123123', '35-56', 1, '2018-10-28 00:28:29', 44, 11, '/images/product20.jpg');
INSERT INTO `product` VALUES (21, '姿格 女鞋 平底时尚尖头浅口玛丽珍单鞋 070503W', 342, 112, '描述123123', '35-56', 1, '2018-10-28 00:28:29', 44, 12, '/images/product21.jpg');
INSERT INTO `product` VALUES (22, '春姿彩 女鞋 新款复古打蜡水牛皮尖头舒适软底休闲单鞋 A118', 342, 112, '描述123123', '35-56', 1, '2018-10-28 00:28:29', 44, 13, '/images/product22.jpg');
INSERT INTO `product` VALUES (23, '古奇天伦 男式 平底舒适休闲运动鞋 6506HUILAN', 342, 112, '描述123123', '35-56', 1, '2018-10-28 00:28:29', 44, 14, '/images/product23.jpg');
INSERT INTO `product` VALUES (24, '花花公子 男式 白色板鞋韩版潮流学生运动鞋休闲鞋滑板鞋DA75134', 342, 112, '描述123123', '35-56', 1, '2018-10-28 00:28:29', 44, 15, '/images/product24.jpg');
INSERT INTO `product` VALUES (25, 'WINTIL WAGNER 男式 手工固特异订制驼鸟皮商务皮鞋 W6213-1', 342, 112, '描述123123', '35-56', 1, '2018-10-28 00:28:29', 44, 16, '/images/product25.jpg');
INSERT INTO `product` VALUES (26, '木林森 男式 新款飞织运动休闲鞋 SS87619', 342, 112, '描述123123', '35-56', 1, '2018-10-28 00:28:29', 44, 17, '/images/product26.jpg');
INSERT INTO `product` VALUES (27, '公牛世家 男式 潮鞋新款运动鞋休闲鞋皮鞋真皮鞋 888261', 342, 112, '描述123123', '35-56', 1, '2018-10-28 00:28:29', 44, 18, '/images/product27.jpg');
INSERT INTO `product` VALUES (28, '富贵鸟男鞋春季帆布鞋男士懒人鞋男板鞋防臭透气休闲鞋 S845113E', 342, 112, '描述123123', '35-56', 1, '2018-10-28 00:28:29', 44, 19, '/images/product28.jpg');
INSERT INTO `product` VALUES (29, '耐克Nike 女童 毛毛虫休闲防滑透气运动休闲鞋 AA7216-600', 342, 112, '描述123123', '35-56', 1, '2018-10-28 00:28:29', 44, 20, '/images/product29.jpg');
INSERT INTO `product` VALUES (30, 'Disney/迪士尼 中性 儿童平底时尚运动学生运动休闲板鞋 M1838002', 342, 112, '描述123123', '35-56', 1, '2018-10-28 00:28:29', 44, 21, '/images/product30.jpg');
INSERT INTO `product` VALUES (31, '巴布豆 男女童 时尚运动鞋休闲板鞋 2753', 342, 112, '描述123123', '35-56', 1, '2018-10-28 00:28:29', 44, 22, '/images/product31.jpg');
INSERT INTO `product` VALUES (32, 'adidas阿迪三叶草 中性 儿童史密斯运动休闲板鞋 M20605', 342, 112, '描述123123', '35-56', 1, '2018-10-28 00:28:29', 44, 23, '/images/product32.jpg');
INSERT INTO `product` VALUES (33, 'DOODOO 女士 斜挎小包包女潮韩版简约百搭女士单肩时尚女包D5125', 342, 112, '描述123123', '35-56', 1, '2018-10-28 00:28:29', 44, 24, '/images/product33.jpg');
INSERT INTO `product` VALUES (34, 'POLO 磨砂压纹时尚铝框20寸/24寸/28寸拉杆箱 LA111', 342, 112, '描述123123', '35-56', 1, '2018-10-28 00:28:29', 44, 25, '/images/product34.jpg');
INSERT INTO `product` VALUES (35, '欧芙兰 女士包 头层牛皮欧美风纯色手提手挽包斜挎包9783', 342, 112, '描述123123', '35-56', 1, '2018-10-28 00:28:29', 44, 26, '/images/product35.jpg');
INSERT INTO `product` VALUES (36, '奕品澜 女式商务休闲时尚气质手拎包7786', 342, 112, '描述123123', '35-56', 1, '2018-10-28 00:28:29', 44, 27, '/images/product36.jpg');

-- ----------------------------
-- Table structure for product_picture
-- ----------------------------
DROP TABLE IF EXISTS `product_picture`;
CREATE TABLE `product_picture`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `picName` varchar(40) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `productId` int(11) NULL DEFAULT NULL,
  `picAddr` varchar(60) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 37 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of product_picture
-- ----------------------------
INSERT INTO `product_picture` VALUES (1, 'product01.jpg', 1, '/images/product01.jpg');
INSERT INTO `product_picture` VALUES (2, 'product02.jpg', 2, '/images/product02.jpg');
INSERT INTO `product_picture` VALUES (3, 'product03.jpg', 3, '/images/product03.jpg');
INSERT INTO `product_picture` VALUES (4, 'product04.jpg', 4, '/images/product04.jpg');
INSERT INTO `product_picture` VALUES (5, 'product05.jpg', 5, '/images/product05.jpg');
INSERT INTO `product_picture` VALUES (6, 'product06.jpg', 6, '/images/product06.jpg');
INSERT INTO `product_picture` VALUES (7, 'product07.jpg', 7, '/images/product07.jpg');
INSERT INTO `product_picture` VALUES (8, 'product08.jpg', 8, '/images/product08.jpg');
INSERT INTO `product_picture` VALUES (9, 'product09.jpg', 9, '/images/product09.jpg');
INSERT INTO `product_picture` VALUES (10, 'product10.jpg', 10, '/images/product10.jpg');
INSERT INTO `product_picture` VALUES (11, 'product11.jpg', 11, '/images/product11.jpg');
INSERT INTO `product_picture` VALUES (12, 'product12.jpg', 12, '/images/product12.jpg');
INSERT INTO `product_picture` VALUES (13, 'product13.jpg', 13, '/images/product13.jpg');
INSERT INTO `product_picture` VALUES (14, 'product14.jpg', 14, '/images/product14.jpg');
INSERT INTO `product_picture` VALUES (15, 'product15.jpg', 15, '/images/product15.jpg');
INSERT INTO `product_picture` VALUES (16, 'product16.jpg', 16, '/images/product16.jpg');
INSERT INTO `product_picture` VALUES (17, 'product17.jpg', 17, '/images/product17.jpg');
INSERT INTO `product_picture` VALUES (18, 'product18.jpg', 18, '/images/product18.jpg');
INSERT INTO `product_picture` VALUES (19, 'product19.jpg', 19, '/images/product19.jpg');
INSERT INTO `product_picture` VALUES (20, 'product20.jpg', 20, '/images/product20.jpg');
INSERT INTO `product_picture` VALUES (21, 'product21.jpg', 21, '/images/product21.jpg');
INSERT INTO `product_picture` VALUES (22, 'product22.jpg', 22, '/images/product22.jpg');
INSERT INTO `product_picture` VALUES (23, 'product23.jpg', 23, '/images/product23.jpg');
INSERT INTO `product_picture` VALUES (24, 'product24.jpg', 24, '/images/product24.jpg');
INSERT INTO `product_picture` VALUES (25, 'product25.jpg', 25, '/images/product25.jpg');
INSERT INTO `product_picture` VALUES (26, 'product26.jpg', 26, '/images/product26.jpg');
INSERT INTO `product_picture` VALUES (27, 'product27.jpg', 27, '/images/product27.jpg');
INSERT INTO `product_picture` VALUES (28, 'product28.jpg', 28, '/images/product28.jpg');
INSERT INTO `product_picture` VALUES (29, 'product29.jpg', 29, '/images/product29.jpg');
INSERT INTO `product_picture` VALUES (30, 'product30.jpg', 30, '/images/product30.jpg');
INSERT INTO `product_picture` VALUES (31, 'product31.jpg', 31, '/images/product31.jpg');
INSERT INTO `product_picture` VALUES (32, 'product32.jpg', 32, '/images/product32.jpg');
INSERT INTO `product_picture` VALUES (33, 'product33.jpg', 33, '/images/product33.jpg');
INSERT INTO `product_picture` VALUES (34, 'product34.jpg', 34, '/images/product34.jpg');
INSERT INTO `product_picture` VALUES (35, 'product35.jpg', 35, '/images/product35.jpg');
INSERT INTO `product_picture` VALUES (36, 'product36.jpg', 36, '/images/product36.jpg');

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `password` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `mobile` char(11) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `isDelete` int(4) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 5 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES (1, 'lhh', 'lueSGJZetyySpUndWjMBEg==', '15102324243', 1);

SET FOREIGN_KEY_CHECKS = 1;
