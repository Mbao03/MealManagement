/*
 Navicat Premium Data Transfer

 Source Server         : ymj
 Source Server Type    : MySQL
 Source Server Version : 80300
 Source Host           : localhost:3306
 Source Schema         : db_kitchen

 Target Server Type    : MySQL
 Target Server Version : 80300
 File Encoding         : 65001

 Date: 22/05/2026 17:29:21
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for dish_info
-- ----------------------------
DROP TABLE IF EXISTS `dish_info`;
CREATE TABLE `dish_info`  (
  `dishId` int NOT NULL AUTO_INCREMENT,
  `dishName` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `chefName` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `dishPrice` decimal(10, 2) NOT NULL,
  `dishTypeId` int NOT NULL,
  `dishDesc` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL COMMENT '书籍描述',
  `isReserved` tinyint NOT NULL COMMENT '1表示借出，0表示已还',
  `dishImg` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '书籍图片',
  `kitchenName` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '供应档口/厨房',
  `stockQty` int NOT NULL DEFAULT 0 COMMENT '可售库存份数',
  `isAvailable` tinyint NOT NULL DEFAULT 1 COMMENT '是否上架 1上架 0下架',
  `prepMinutes` int NULL DEFAULT NULL COMMENT '预计制作时间(分钟)',
  `spiceLevel` tinyint NULL DEFAULT NULL COMMENT '辣度 0-5',
  `allergens` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '过敏原',
  `caloriesKcal` decimal(10, 2) NULL DEFAULT NULL COMMENT '热量(kcal)',
  `proteinG` decimal(10, 2) NULL DEFAULT NULL COMMENT '蛋白质(g)',
  `fatG` decimal(10, 2) NULL DEFAULT NULL COMMENT '脂肪(g)',
  `carbG` decimal(10, 2) NULL DEFAULT NULL COMMENT '碳水(g)',
  `createdAt` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `updatedAt` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '更新时间',
  PRIMARY KEY (`dishId`) USING BTREE,
  INDEX `fk_book_info_book_type_1`(`dishTypeId`) USING BTREE,
  INDEX `idx_dish_type_available`(`dishTypeId`, `isAvailable`) USING BTREE,
  INDEX `idx_dish_name`(`dishName`) USING BTREE,
  CONSTRAINT `dish_info_ibfk_1` FOREIGN KEY (`dishTypeId`) REFERENCES `dish_type` (`dishTypeId`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 91 CHARACTER SET = utf8mb3 COLLATE = utf8mb3_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of dish_info
-- ----------------------------
INSERT INTO `dish_info` VALUES (14, '香煎鸡胸时蔬饭', '王师傅', 32.24, 1, '社区厨房当日现做，营养均衡，适合早餐食用', 0, '/files/172956399543517291640144028.jpg', '社区一食堂', 20, 1, 24, 0, '牛奶', 436.08, 23.68, 14.85, 13.80, '2026-03-08 21:31:10', '2026-03-08 21:31:10');
INSERT INTO `dish_info` VALUES (27, '番茄牛腩盖饭', '李师傅', 30.85, 2, '社区厨房当日现做，营养均衡，适合晚餐食用', 0, '/files/172956400090017291640208699.jpg', '社区二食堂', 16, 1, 19, 1, '无', 570.14, 30.51, 20.08, 45.46, '2026-03-08 21:31:10', '2026-03-08 21:31:10');
INSERT INTO `dish_info` VALUES (28, '黑椒牛柳意面', '陈师傅', 24.06, 3, '社区厨房当日现做，营养均衡，适合午餐食用', 0, '/files/172956400629517291640430541.jpg', '社区中央厨房', 20, 1, 14, 2, '无', 546.27, 14.04, 4.68, 40.77, '2026-03-08 21:31:10', '2026-03-08 21:31:10');
INSERT INTO `dish_info` VALUES (30, '清炒西兰花', '周师傅', 15.73, 4, '社区厨房当日现做，营养均衡，适合早餐食用', 0, '/files/172956401153917291640483012.jpg', '社区一食堂', 16, 1, 27, 1, '无', 347.76, 28.36, 4.19, 59.67, '2026-03-08 21:31:10', '2026-03-08 21:31:10');
INSERT INTO `dish_info` VALUES (31, '蒜蓉生菜', '张师傅', 19.89, 6, '社区厨房当日现做，营养均衡，适合晚餐食用', 0, '/files/172956401698717291640550423.jpg', '社区二食堂', 12, 1, 26, 2, '无', 551.94, 19.23, 22.40, 33.79, '2026-03-08 21:31:10', '2026-03-08 21:31:10');
INSERT INTO `dish_info` VALUES (32, '宫保鸡丁', '王师傅', 30.20, 7, '社区厨房当日现做，营养均衡，适合午餐食用', 0, '/files/172956402393917291640653915.jpg', '社区中央厨房', 8, 1, 26, 3, '花生', 624.24, 23.80, 8.40, 34.42, '2026-03-08 21:31:10', '2026-03-08 21:31:10');
INSERT INTO `dish_info` VALUES (33, '鱼香肉丝', '李师傅', 22.49, 9, '社区厨房当日现做，营养均衡，适合早餐食用', 0, '/files/172956402802917291640704876.jpg', '社区一食堂', 14, 1, 21, 0, '牛奶', 264.12, 20.37, 7.61, 43.66, '2026-03-08 21:31:10', '2026-03-08 21:31:10');
INSERT INTO `dish_info` VALUES (34, '番茄鸡蛋面', '陈师傅', 25.25, 10, '社区厨房当日现做，营养均衡，适合晚餐食用', 0, '/files/172956403420817291640819258.jpg', '社区二食堂', 13, 1, 27, 3, '无', 294.65, 8.92, 22.32, 38.56, '2026-03-08 21:31:10', '2026-03-08 21:31:10');
INSERT INTO `dish_info` VALUES (36, '菌菇豆腐汤', '周师傅', 24.76, 11, '社区厨房当日现做，营养均衡，适合午餐食用', 0, '/files/172956404306717291640980355.jpg', '社区中央厨房', 21, 1, 25, 1, '无', 409.61, 24.38, 21.13, 41.04, '2026-03-08 21:31:10', '2026-03-08 21:31:10');
INSERT INTO `dish_info` VALUES (37, '玉米排骨汤', '张师傅', 26.11, 12, '社区厨房当日现做，营养均衡，适合早餐食用', 0, '/files/172956405109817291641036889.jpg', '社区一食堂', 8, 1, 23, 2, '无', 592.84, 11.05, 7.36, 40.18, '2026-03-08 21:31:10', '2026-03-08 21:31:10');
INSERT INTO `dish_info` VALUES (38, '南瓜小米粥', '王师傅', 18.25, 13, '社区厨房当日现做，营养均衡，适合晚餐食用', 0, '/files/172956405866417291641148732.jpg', '社区二食堂', 8, 1, 23, 2, '无', 549.18, 26.89, 10.17, 40.45, '2026-03-08 21:31:10', '2026-03-08 21:31:10');
INSERT INTO `dish_info` VALUES (39, '香菇滑鸡饭', '李师傅', 34.95, 14, '社区厨房当日现做，营养均衡，适合午餐食用', 0, '/files/172956406475517291641216376.jpg', '社区中央厨房', 21, 1, 23, 3, '花生', 540.43, 35.47, 22.04, 43.13, '2026-03-08 21:31:10', '2026-03-08 21:31:10');
INSERT INTO `dish_info` VALUES (40, '芹菜牛肉丝', '陈师傅', 39.80, 1, '社区厨房当日现做，营养均衡，适合早餐食用', 0, '/files/1729564073178172916402618610.jpg', '社区一食堂', 8, 1, 26, 1, '牛奶', 472.89, 29.36, 9.87, 21.80, '2026-03-08 21:31:10', '2026-03-08 21:31:10');
INSERT INTO `dish_info` VALUES (41, '清蒸鲈鱼', '周师傅', 22.00, 2, '社区厨房当日现做，营养均衡，适合晚餐食用', 0, '/files/1729564077935172916403170411.jpg', '社区二食堂', 8, 1, 18, 2, '无', 378.80, 27.82, 17.83, 30.29, '2026-03-08 21:31:10', '2026-03-08 21:31:10');
INSERT INTO `dish_info` VALUES (43, '虾仁炒饭', '张师傅', 36.00, 3, '社区厨房当日现做，营养均衡，适合午餐食用', 0, '/files/1729564082560172916403663712.jpg', '社区中央厨房', 19, 1, 26, 3, '无', 265.70, 12.31, 18.56, 21.86, '2026-03-08 21:31:10', '2026-03-08 21:31:10');
INSERT INTO `dish_info` VALUES (44, '红烧茄子', '王师傅', 36.50, 4, '社区厨房当日现做，营养均衡，适合早餐食用', 0, '/files/1729564086820172916408665610.jpg', '社区一食堂', 22, 1, 8, 3, '无', 608.49, 13.85, 15.10, 20.17, '2026-03-08 21:31:10', '2026-03-08 21:31:10');
INSERT INTO `dish_info` VALUES (45, '青椒土豆丝', '李师傅', 12.00, 6, '社区厨房当日现做，营养均衡，适合晚餐食用', 0, '/files/1729564097385172916410776711.jpg', '社区二食堂', 8, 1, 26, 1, '无', 507.77, 21.92, 18.33, 17.02, '2026-03-08 21:31:10', '2026-03-08 21:31:10');
INSERT INTO `dish_info` VALUES (46, '低脂鸡肉沙拉', '陈师傅', 18.00, 7, '社区厨房当日现做，营养均衡，适合午餐食用', 0, '/files/1729564102030172916415913110.jpg', '社区中央厨房', 12, 1, 13, 1, '花生', 305.64, 19.51, 18.58, 34.72, '2026-03-08 21:31:10', '2026-03-08 21:31:10');
INSERT INTO `dish_info` VALUES (49, '全麦三明治', '周师傅', 29.00, 9, '社区厨房当日现做，营养均衡，适合早餐食用', 0, '/files/1729564187277172916403663712.jpg', '社区一食堂', 26, 1, 10, 0, '牛奶', 297.01, 11.41, 10.91, 31.84, '2026-03-08 21:31:10', '2026-03-08 21:31:10');
INSERT INTO `dish_info` VALUES (50, '时令蔬菜拼盘', '张师傅', 39.00, 10, '社区厨房当日现做，营养均衡，适合晚餐食用', 0, '/files/172956419212917291641148732.jpg', '社区二食堂', 24, 1, 23, 1, '无', 306.03, 11.42, 9.65, 14.50, '2026-03-08 21:31:10', '2026-03-08 21:31:10');
INSERT INTO `dish_info` VALUES (90, '香煎鸡胸时蔬饭', '王师傅', 18.77, 11, '社区厨房当日现做，营养均衡，适合午餐食用', 0, '/files/1772850161514微信图片_20250901215436_58_2.jpg', '社区中央厨房', 14, 1, 23, 2, '无', 296.73, 19.52, 19.90, 52.75, '2026-03-08 21:31:10', '2026-03-08 21:31:10');
INSERT INTO `dish_info` VALUES (91, '番茄牛腩盖饭', '李师傅', 34.11, 12, '社区厨房当日现做，营养均衡，适合早餐食用', 0, '/files/1772959981899qg_vivo_2025aigc_card_342422200309294032.jpg', '社区一食堂', 12, 1, 15, 3, '无', 442.47, 20.28, 21.80, 19.41, '2026-03-08 21:31:10', '2026-03-08 21:31:10');

-- ----------------------------
-- Table structure for dish_type
-- ----------------------------
DROP TABLE IF EXISTS `dish_type`;
CREATE TABLE `dish_type`  (
  `dishTypeId` int NOT NULL AUTO_INCREMENT,
  `dishTypeName` varchar(20) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `dishTypeDesc` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL COMMENT '书籍类型描述',
  PRIMARY KEY (`dishTypeId`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 14 CHARACTER SET = utf8mb3 COLLATE = utf8mb3_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of dish_type
-- ----------------------------
INSERT INTO `dish_type` VALUES (1, '主食套餐', '米饭、面食及套餐类');
INSERT INTO `dish_type` VALUES (2, '荤菜', '肉类与高蛋白主菜');
INSERT INTO `dish_type` VALUES (3, '素菜', '蔬菜、菌菇与豆制品');
INSERT INTO `dish_type` VALUES (4, '汤品', '汤、粥及炖煮类');
INSERT INTO `dish_type` VALUES (6, '轻食', '低脂低卡与营养均衡');
INSERT INTO `dish_type` VALUES (7, '早餐', '早餐快捷供应');
INSERT INTO `dish_type` VALUES (9, '晚餐特供', '晚餐时段热销菜品');
INSERT INTO `dish_type` VALUES (10, '地方风味', '各地特色风味餐品');
INSERT INTO `dish_type` VALUES (11, '低糖餐', '控糖友好餐品');
INSERT INTO `dish_type` VALUES (12, '儿童餐', '适合儿童的营养配餐');
INSERT INTO `dish_type` VALUES (13, '长者餐', '适合老年人的软烂低盐配餐');
INSERT INTO `dish_type` VALUES (14, '节气限定', '节日与节气主题菜品');

-- ----------------------------
-- Table structure for meal_order
-- ----------------------------
DROP TABLE IF EXISTS `meal_order`;
CREATE TABLE `meal_order`  (
  `orderId` int NOT NULL AUTO_INCREMENT,
  `residentId` int NOT NULL,
  `dishId` int NOT NULL,
  `orderTime` datetime NOT NULL,
  `completeTime` datetime NULL DEFAULT NULL,
  `quantity` int NOT NULL DEFAULT 1 COMMENT '订餐份数',
  `unitPrice` decimal(10, 2) NULL DEFAULT NULL COMMENT '下单时单价',
  `totalPrice` decimal(10, 2) NULL DEFAULT NULL COMMENT '订单总价',
  `orderStatus` varchar(30) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL DEFAULT 'PENDING' COMMENT '订单状态',
  `mealDate` date NULL DEFAULT NULL COMMENT '就餐日期',
  `mealSlot` varchar(20) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '餐次 BREAKFAST/LUNCH/DINNER',
  `deliveryType` varchar(20) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL DEFAULT 'PICKUP' COMMENT '取餐方式 PICKUP/DELIVERY',
  `pickupCode` varchar(20) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '取餐码',
  `contactPhone` varchar(30) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '联系电话',
  `deliveryAddress` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '配送地址',
  `remark` varchar(500) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '备注',
  `payStatus` varchar(20) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL DEFAULT 'UNPAID' COMMENT '支付状态',
  `paidAt` datetime NULL DEFAULT NULL COMMENT '支付时间',
  `cancelReason` varchar(500) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '取消原因',
  `createdAt` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `updatedAt` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '更新时间',
  PRIMARY KEY (`orderId`) USING BTREE,
  INDEX `fk_borrow_user_1`(`residentId`) USING BTREE,
  INDEX `fk_borrow_book_info_1`(`dishId`) USING BTREE,
  INDEX `idx_order_resident_status`(`residentId`, `orderStatus`) USING BTREE,
  INDEX `idx_order_date_slot`(`mealDate`, `mealSlot`) USING BTREE,
  INDEX `idx_order_dish`(`dishId`) USING BTREE,
  CONSTRAINT `meal_order_ibfk_1` FOREIGN KEY (`dishId`) REFERENCES `dish_info` (`dishId`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `meal_order_ibfk_2` FOREIGN KEY (`residentId`) REFERENCES `resident` (`residentId`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 67 CHARACTER SET = utf8mb3 COLLATE = utf8mb3_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of meal_order
-- ----------------------------
INSERT INTO `meal_order` VALUES (58, 2, 14, '2026-03-08 23:11:44', '2026-03-08 23:18:52', 2, 32.24, 64.48, 'COMPLETED', '2026-03-08', 'LUNCH', 'PICKUP', '13154609275', 'E栋1单元103', 'UNPAID', '2026-03-08 23:11:44', '2026-03-08 23:11:44');
INSERT INTO `meal_order` VALUES (59, 17, 14, '2026-03-07 23:11:44', '2026-03-08 23:18:50', 2, 32.24, 64.48, 'COMPLETED', '2026-03-08', 'DINNER', 'PICKUP', '13157304914', 'D栋1单元202', 'UNPAID', '2026-03-08 23:11:44', '2026-03-08 23:11:44');
INSERT INTO `meal_order` VALUES (60, 19, 14, '2026-03-08 23:11:44', '2026-05-16 16:50:25', 2, 32.24, 64.48, 'COMPLETED', '2026-03-08', 'LUNCH', 'DELIVERY', '13941907890', 'C栋2单元804', 'UNPAID', '2026-03-08 23:11:44', '2026-03-08 23:11:44');
INSERT INTO `meal_order` VALUES (61, 22, 14, '2026-03-07 23:11:44', NULL, 2, 32.24, 64.48, 'PENDING', '2026-03-08', 'LUNCH', 'DELIVERY', '13800000002', 'A栋2单元202', 'UNPAID', '2026-03-08 23:11:44', '2026-03-08 23:11:44');
INSERT INTO `meal_order` VALUES (62, 23, 14, '2026-03-07 23:11:44', '2026-05-16 16:50:26', 2, 32.24, 64.48, 'COMPLETED', '2026-03-08', 'DINNER', 'PICKUP', '13800000003', 'B栋1单元302', 'UNPAID', '2026-03-08 23:11:44', '2026-03-08 23:11:44');
INSERT INTO `meal_order` VALUES (66, 20, 27, '2026-03-13 17:52:11', '2026-05-16 16:50:28', 2, 30.85, 61.70, 'COMPLETED', NULL, 'BREAKFAST', 'PICKUP', '123', '', 'UNPAID', '2026-03-13 17:52:11', '2026-03-13 17:52:11');
INSERT INTO `meal_order` VALUES (67, 20, 30, '2026-05-12 16:41:47', '2026-05-16 16:50:23', 1, 15.73, 15.73, 'COMPLETED', NULL, 'LUNCH', 'DELIVERY', '1111', '科技', 'UNPAID', '2026-05-12 16:41:47', '2026-05-12 16:41:47');

-- ----------------------------
-- Table structure for resident
-- ----------------------------
DROP TABLE IF EXISTS `resident`;
CREATE TABLE `resident`  (
  `residentId` int NOT NULL AUTO_INCREMENT,
  `residentName` varchar(20) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `residentPassword` varchar(20) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `roleType` tinyint NOT NULL COMMENT '1是管理员，0非管理员',
  `phone` varchar(30) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '手机号',
  `gender` varchar(10) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '性别',
  `birthday` date DEFAULT NULL COMMENT '出生日期',
  `buildingNo` varchar(30) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '楼栋',
  `unitNo` varchar(30) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '单元',
  `roomNo` varchar(30) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '房号',
  `dietaryTags` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '饮食偏好标签',
  `healthNotes` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '健康提示/禁忌',
  `isActive` tinyint NOT NULL DEFAULT 1 COMMENT '账号状态 1启用 0停用',
  `createdAt` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `updatedAt` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '更新时间',
  PRIMARY KEY (`residentId`) USING BTREE,
  INDEX `idx_resident_name`(`residentName`) USING BTREE,
  INDEX `idx_resident_phone`(`phone`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 24 CHARACTER SET = utf8mb3 COLLATE = utf8mb3_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of resident
-- ----------------------------
INSERT INTO `resident` VALUES (1, 'admin', '123456', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2026-03-08 21:31:10', '2026-03-08 21:31:10');
INSERT INTO `resident` VALUES (2, '李明', '123456', 0, '13154609275', '男', 'E栋', '1单元', '103', '高蛋白', '血压偏高，建议少盐', 1, '2026-03-08 21:31:10', '2026-03-08 21:31:10');
INSERT INTO `resident` VALUES (11, 'zhang', '123456', 0, '13729945962', '女', 'A栋', '1单元', '902', '高蛋白', '建议控制糖分摄入', 1, '2026-03-08 21:31:10', '2026-03-08 21:31:10');
INSERT INTO `resident` VALUES (13, 'zhao', '123456', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2026-03-08 21:31:10', '2026-03-08 21:31:10');
INSERT INTO `resident` VALUES (15, 'user', '123456', 0, '13773199801', '女', 'C栋', '3单元', '1003', '高蛋白', '建议补充优质蛋白', 1, '2026-03-08 21:31:10', '2026-03-08 21:31:10');
INSERT INTO `resident` VALUES (16, 'user2', '123456', 0, '13752986439', '男', 'C栋', '3单元', '1103', '均衡膳食', '日常保健，无特殊忌口', 1, '2026-03-08 21:31:10', '2026-03-08 21:31:10');
INSERT INTO `resident` VALUES (17, 'user3', '123456', 0, '13157304914', '男', 'D栋', '1单元', '202', '低盐', '建议补充优质蛋白', 1, '2026-03-08 21:31:10', '2026-03-08 21:31:10');
INSERT INTO `resident` VALUES (18, 'admin2', '123456', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2026-03-08 21:31:10', '2026-03-08 21:31:10');
INSERT INTO `resident` VALUES (19, 'i', 'i', 0, '13941907890', '男', 'C栋', '2单元', '804', '低盐', '血压偏高，建议少盐', 1, '2026-03-08 21:31:10', '2026-03-08 21:31:10');
INSERT INTO `resident` VALUES (20, 'ymj', '123456', 0, '13858145670', '男', 'A栋', '1单元', '104', '低脂', '体重管理中', 1, '2026-03-08 21:31:10', '2026-03-08 21:31:10');
INSERT INTO `resident` VALUES (21, 'admin', '123456', 1, '13800000001', '男', 'A栋', '1单元', '101', '均衡饮食', '管理员账号', 1, '2026-03-08 22:43:24', '2026-03-08 22:43:24');
INSERT INTO `resident` VALUES (22, 'resident01', '123456', 0, '13800000002', '女', 'A栋', '2单元', '202', '低盐', '轻度高血压，建议低盐', 1, '2026-03-08 22:43:24', '2026-03-08 22:43:24');
INSERT INTO `resident` VALUES (23, 'resident02', '123456', 0, '13800000003', '男', 'B栋', '1单元', '302', '高蛋白', '健身需求', 1, '2026-03-08 22:43:24', '2026-03-08 22:43:24');
INSERT INTO `resident` VALUES (24, 'ymh', '123456', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2026-05-16 17:10:23', '2026-05-16 17:10:23');

-- ----------------------------
-- View structure for book_info
-- ----------------------------
DROP VIEW IF EXISTS `book_info`;
CREATE ALGORITHM = UNDEFINED SQL SECURITY DEFINER VIEW `book_info` AS select `dish_info`.`dishId` AS `bookId`,`dish_info`.`dishName` AS `bookName`,`dish_info`.`chefName` AS `bookAuthor`,`dish_info`.`dishPrice` AS `bookPrice`,`dish_info`.`dishTypeId` AS `bookTypeId`,`dish_info`.`dishDesc` AS `bookDesc`,`dish_info`.`isReserved` AS `isBorrowed`,`dish_info`.`dishImg` AS `bookImg` from `dish_info`;

-- ----------------------------
-- View structure for book_type
-- ----------------------------
DROP VIEW IF EXISTS `book_type`;
CREATE ALGORITHM = UNDEFINED SQL SECURITY DEFINER VIEW `book_type` AS select `dish_type`.`dishTypeId` AS `bookTypeId`,`dish_type`.`dishTypeName` AS `bookTypeName`,`dish_type`.`dishTypeDesc` AS `bookTypeDesc` from `dish_type`;

-- ----------------------------
-- View structure for borrow
-- ----------------------------
DROP VIEW IF EXISTS `borrow`;
CREATE ALGORITHM = UNDEFINED SQL SECURITY DEFINER VIEW `borrow` AS select `meal_order`.`orderId` AS `borrowId`,`meal_order`.`residentId` AS `userId`,`meal_order`.`dishId` AS `bookId`,`meal_order`.`orderTime` AS `borrowTime`,`meal_order`.`completeTime` AS `returnTime` from `meal_order`;

-- ----------------------------
-- View structure for user
-- ----------------------------
DROP VIEW IF EXISTS `user`;
CREATE ALGORITHM = UNDEFINED SQL SECURITY DEFINER VIEW `user` AS select `resident`.`residentId` AS `userId`,`resident`.`residentName` AS `userName`,`resident`.`residentPassword` AS `userPassword`,`resident`.`roleType` AS `isAdmin` from `resident`;

SET FOREIGN_KEY_CHECKS = 1;
