/*
Navicat MySQL Data Transfer

Source Server         : localhost_3306
Source Server Version : 50714
Source Host           : localhost:3306
Source Database       : h5_1804

Target Server Type    : MYSQL
Target Server Version : 50714
File Encoding         : 65001

Date: 2018-08-27 15:47:37
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for goods
-- ----------------------------
DROP TABLE IF EXISTS `goods`;
CREATE TABLE `goods` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `imgurl` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `bigimg` varchar(255) DEFAULT NULL,
  `centerimg` varchar(255) DEFAULT NULL,
  `minimg` varchar(255) DEFAULT NULL,
  `describe` varchar(255) DEFAULT NULL,
  `newprice` float(10,2) NOT NULL,
  `overprice` varchar(255) NOT NULL,
  `coding` varchar(255) DEFAULT NULL,
  `time` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=69 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of goods
-- ----------------------------
INSERT INTO `goods` VALUES ('3', 'a0.jpg', '大王纸尿裤L54片*2包\r\n柔软透气 自由自在', null, null, null, '有效过滤有害蓝光 柔韧舒适 原装进口', '148.00', '376.00', '2829959', '2018-08-22 20:27:13');
INSERT INTO `goods` VALUES ('4', 'a1.jpg', '兔头妈妈甄选 柔薄婴儿纸尿裤NB35片*2包(≤5kg 婴儿尿裤尿布湿\r\n', null, null, null, '有效过滤有害蓝光 柔韧舒适 原装进口', '98.00', '98.00', '2829959', '2018-08-22 20:27:14');
INSERT INTO `goods` VALUES ('43', 'b29.jpg', '柔软透气 自由自在\r\n大王纸尿裤L54片*2包\r\n柔软透气 自由自在', null, null, null, '有效过滤有害蓝光 柔韧舒适 原装进口', '99.00', '99.00', '2829959', '2018-08-22 20:27:16');
INSERT INTO `goods` VALUES ('5', 'a2.jpg', '雯晨服饰 2018年婴童男女童螺纹收口卡通立体耳朵大pp裤', null, null, null, '有效过滤有害蓝光 柔韧舒适 原装进口', '98.00', '98.00', '2829959', '2018-08-22 20:27:17');
INSERT INTO `goods` VALUES ('6', 'a3.jpg', '雯晨服饰 2018年婴童男女童螺纹收口卡通立体耳朵大pp裤', null, null, null, '有效过滤有害蓝光 柔韧舒适 原装进口', '98.00', '9800', '2829959', '2018-08-22 20:27:18');
INSERT INTO `goods` VALUES ('7', 'a4.jpg', '雯晨服饰 2018年婴童男女童螺纹收口卡通立体耳朵大pp裤', null, null, null, '有效过滤有害蓝光 柔韧舒适 原装进口', '98.00', '98.00', '2829959', '2018-08-22 20:27:19');
INSERT INTO `goods` VALUES ('42', 'b28.jpg', '柔软透气 自由自在\r\n大王纸尿裤L54片*2包\r\n柔软透气 自由自在', null, null, null, '有效过滤有害蓝光 柔韧舒适 原装进口', '99.00', '99.00', '2829959', '2018-08-22 20:27:21');
INSERT INTO `goods` VALUES ('8', 'a5.jpg', '雯晨服饰 2018年婴童男女童螺纹收口卡通立体耳朵大pp裤', null, null, null, '有效过滤有害蓝光 柔韧舒适 原装进口', '888.00', '888.00', '2829959', '2018-08-22 20:27:20');
INSERT INTO `goods` VALUES ('9', 'a6.jpg', '雯晨服饰 2018年婴童男女童螺纹收口卡通立体耳朵大pp裤', null, null, null, '有效过滤有害蓝光 柔韧舒适 原装进口', '889.00', '999.00', '2829959', '2018-08-22 20:27:22');
INSERT INTO `goods` VALUES ('10', 'a7.jpg', '雯晨服饰 2018年婴童男女童螺纹收口卡通立体耳朵大pp裤', null, null, null, '有效过滤有害蓝光 柔韧舒适 原装进口', '889.00', '999.00', '2829959', '2018-08-22 20:27:23');
INSERT INTO `goods` VALUES ('11', 'a8.jpg', '雯晨服饰 2018年婴童男女童螺纹收口卡通立体耳朵大pp裤', null, null, null, '有效过滤有害蓝光 柔韧舒适 原装进口', '77.00', '999.00', '2829959', '2018-08-22 20:27:24');
INSERT INTO `goods` VALUES ('12', 'a9.jpg', '雯晨服饰 2018年婴童男女童螺纹收口卡通立体耳朵大pp裤', null, null, null, '有效过滤有害蓝光 柔韧舒适 原装进口', '55.00', '99.00', '1741717', '2018-08-22 20:27:25');
INSERT INTO `goods` VALUES ('13', 'b0.jpg', '雯晨服饰 2018婴童女童纯色条纹个性系带长袖打底衫', null, null, null, '有效过滤有害蓝光 柔韧舒适 原装进口', '88.00', '89.00', '1741717', '2018-08-22 20:27:44');
INSERT INTO `goods` VALUES ('14', 'b1.jpg', '[包邮] 阿比让 2018时尚港味chic仙女网红凉鞋百搭显瘦增高凉拖鞋', null, null, null, '有效过滤有害蓝光 柔韧舒适 原装进口', '199.00', '299.00', '1741717', '2018-08-22 20:27:26');
INSERT INTO `goods` VALUES ('15', 'b2.jpg', '嘉宝 Gerber 新包装1段营养米粉225g罐装', null, null, null, '软糯，弹力好面料，舒适承托，零触感轻薄无压力一仿佛没穿一样。', '199.00', '399.00', '1741717', '2018-08-22 20:27:46');
INSERT INTO `goods` VALUES ('16', 'b3.jpg', '雯晨服饰 2018婴童女童纯色条纹个性系带长袖打底衫', null, null, null, '软糯，弹力好面料，舒适承托，零触感轻薄无压力一仿佛没穿一样。', '299.00', '688.00', '1741717', '2018-08-22 20:27:47');
INSERT INTO `goods` VALUES ('17', 'b4.jpg', '雯晨服饰 2018年婴童男女童螺纹收口卡通立体耳朵大pp裤', null, null, null, '软糯，弹力好面料，舒适承托，零触感轻薄无压力一仿佛没穿一样。', '188.00', '288.00', '1741717', '2018-08-22 20:27:48');
INSERT INTO `goods` VALUES ('18', 'b5.jpg', '雯晨服饰 2018婴童女童纯色条纹个性系带长袖打底衫', null, null, null, '软糯，弹力好面料，舒适承托，零触感轻薄无压力一仿佛没穿一样。', '599.00', '799.00', '1741717', '2018-08-22 20:27:49');
INSERT INTO `goods` VALUES ('19', 'b6.jpg', '嘉宝 Gerber 新包装1段营养米粉225g罐装', null, null, null, '软糯，弹力好面料，舒适承托，零触感轻薄无压力一仿佛没穿一样。', '1566.00', '1788', '1741717', '2018-08-22 20:27:50');
INSERT INTO `goods` VALUES ('20', 'b7.jpg', '嘉宝 Gerber 新包装1段营养米粉225g罐装', null, null, null, '软糯，弹力好面料，舒适承托，零触感轻薄无压力一仿佛没穿一样。', '565.00', '656', '1741717', '2018-08-22 20:27:50');
INSERT INTO `goods` VALUES ('21', 'b8.jpg', '[包邮] 阿比让 2018时尚港味chic仙女网红凉鞋百搭显瘦增高凉拖鞋', null, null, null, '软糯，弹力好面料，舒适承托，零触感轻薄无压力一仿佛没穿一样。', '666.00', '777', '1741717', '2018-08-22 20:27:51');
INSERT INTO `goods` VALUES ('22', 'b9.jpg', '雯晨服饰 2018年婴童男女童螺纹收口卡通立体耳朵大pp裤', null, null, null, '软糯，弹力好面料，舒适承托，零触感轻薄无压力一仿佛没穿一样。', '110.00', '120', '1741717', '2018-08-22 20:27:52');
INSERT INTO `goods` VALUES ('23', 'b10.jpg', '雯晨服饰 2018婴童女童纯色条纹个性系带长袖打底衫', null, null, null, '迷你巴拉巴拉满200减50起 时尚连帽，附立体耳朵，萌趣保暖；卡通印花，撞色抢眼，可爱有趣', '299.00', '499', '1741717', '2018-08-22 20:23:49');
INSERT INTO `goods` VALUES ('24', 'b11.jpg', '雯晨服饰 2018年婴童男女童螺纹收口卡通立体耳朵大pp裤', null, null, null, '迷你巴拉巴拉满200减50起 时尚连帽，附立体耳朵，萌趣保暖；卡通印花，撞色抢眼，可爱有趣', '10.00', '59.99', '2498986', '2018-08-22 20:23:51');
INSERT INTO `goods` VALUES ('25', 'b12.jpg', '嘉宝 Gerber 新包装1段营养米粉225g罐装', null, null, null, '迷你巴拉巴拉满200减50起 时尚连帽，附立体耳朵，萌趣保暖；卡通印花，撞色抢眼，可爱有趣', '888.00', '1888.00', '2498986', '2018-08-22 20:23:53');
INSERT INTO `goods` VALUES ('41', 'b27.jpg', '柔软透气 自由自在\r\n大王纸尿裤L54片*2包\r\n柔软透气 自由自在', null, null, null, '迷你巴拉巴拉满200减50起 时尚连帽，附立体耳朵，萌趣保暖；卡通印花，撞色抢眼，可爱有趣', '99.00', '99.00', '2498986', '2018-08-22 20:23:54');
INSERT INTO `goods` VALUES ('26', 'b13.jpg', '雯晨服饰 2018年婴童男女童螺纹收口卡通立体耳朵大pp裤', null, null, null, '迷你巴拉巴拉满200减50起 时尚连帽，附立体耳朵，萌趣保暖；卡通印花，撞色抢眼，可爱有趣', '16.00', '30.00', '2498986', '2018-08-22 20:23:56');
INSERT INTO `goods` VALUES ('27', 'b14.jpg', '雯晨服饰 2018婴童女童纯色条纹个性系带长袖打底衫', null, null, null, '迷你巴拉巴拉满200减50起 时尚连帽，附立体耳朵，萌趣保暖；卡通印花，撞色抢眼，可爱有趣', '33.00', '44.4', '2498986', '2018-08-22 20:23:57');
INSERT INTO `goods` VALUES ('28', 'b15.jpg', '雯晨服饰 2018婴童女童纯色条纹个性系带长袖打底衫', null, null, null, '迷你巴拉巴拉满200减50起 时尚连帽，附立体耳朵，萌趣保暖；卡通印花，撞色抢眼，可爱有趣', '49.00', '69.00', '2498986', '2018-08-22 20:23:59');
INSERT INTO `goods` VALUES ('29', 'b16.jpg', '[包邮] 阿比让 2018时尚港味chic仙女网红凉鞋百搭显瘦增高凉拖鞋', null, null, null, '迷你巴拉巴拉满200减50起 时尚连帽，附立体耳朵，萌趣保暖；卡通印花，撞色抢眼，可爱有趣', '78.00', '79.00', '2498986', '2018-08-22 20:24:00');
INSERT INTO `goods` VALUES ('30', 'b17.jpg', '雯晨服饰 2018婴童女童纯色条纹个性系带长袖打底衫', null, null, null, '迷你巴拉巴拉满200减50起 时尚连帽，附立体耳朵，萌趣保暖；卡通印花，撞色抢眼，可爱有趣', '58.00', '68.00', '2498986', '2018-08-22 20:24:02');
INSERT INTO `goods` VALUES ('31', 'b18.jpg', '雯晨服饰 2018年婴童男女童螺纹收口卡通立体耳朵大pp裤', null, null, null, '迷你巴拉巴拉满200减50起 时尚连帽，附立体耳朵，萌趣保暖；卡通印花，撞色抢眼，可爱有趣', '9.00', '29.9', '2498986', '2018-08-22 20:24:26');
INSERT INTO `goods` VALUES ('32', 'b19.jpg', '[包邮] 阿比让 2018时尚港味chic仙女网红凉鞋百搭显瘦增高凉拖鞋', null, null, null, '哈贝泰迪和朋友们的洗澡小桶套装，搭配泰迪公仔造型和鲸鱼，小黄鸭等呆萌配件，组合3个彩色洗澡小桶(此套装不含发条泰迪)，增加了宝宝洗澡沐浴的趣味性和父母的互动性，让宝宝爱上洗澡', '30.00', '30.00', '2498986', '2018-08-22 20:24:27');
INSERT INTO `goods` VALUES ('33', 'b20.jpg', '[包邮] 阿比让 2018时尚港味chic仙女网红凉鞋百搭显瘦增高凉拖鞋', null, null, null, '哈贝泰迪和朋友们的洗澡小桶套装，搭配泰迪公仔造型和鲸鱼，小黄鸭等呆萌配件，组合3个彩色洗澡小桶(此套装不含发条泰迪)，增加了宝宝洗澡沐浴的趣味性和父母的互动性，让宝宝爱上洗澡', '30.00', '30.00', '2498986', '2018-08-22 20:24:29');
INSERT INTO `goods` VALUES ('35', 'b21.jpg', '雯晨服饰 2018年婴童男女童螺纹收口卡通立体耳朵大pp裤', null, null, null, '哈贝泰迪和朋友们的洗澡小桶套装，搭配泰迪公仔造型和鲸鱼，小黄鸭等呆萌配件，组合3个彩色洗澡小桶(此套装不含发条泰迪)，增加了宝宝洗澡沐浴的趣味性和父母的互动性，让宝宝爱上洗澡', '188.00', '288.00', '2498986', '2018-08-22 20:24:31');
INSERT INTO `goods` VALUES ('36', 'b22.jpg', '雯晨服饰 2018年婴童男女童螺纹收口卡通立体耳朵大pp裤', null, null, null, '哈贝泰迪和朋友们的洗澡小桶套装，搭配泰迪公仔造型和鲸鱼，小黄鸭等呆萌配件，组合3个彩色洗澡小桶(此套装不含发条泰迪)，增加了宝宝洗澡沐浴的趣味性和父母的互动性，让宝宝爱上洗澡', '55.00', '99.00', '2498986', '2018-08-22 20:24:32');
INSERT INTO `goods` VALUES ('37', 'b23.jpg', '雯晨服饰 2018年婴童男女童螺纹收口卡通立体耳朵大pp裤', null, null, null, '哈贝泰迪和朋友们的洗澡小桶套装，搭配泰迪公仔造型和鲸鱼，小黄鸭等呆萌配件，组合3个彩色洗澡小桶(此套装不含发条泰迪)，增加了宝宝洗澡沐浴的趣味性和父母的互动性，让宝宝爱上洗澡', '110.00', '120', '2498986', '2018-08-22 20:24:34');
INSERT INTO `goods` VALUES ('38', 'b24.jpg', '雯晨服饰 2018年婴童男女童螺纹收口卡通立体耳朵大pp裤', null, null, null, '哈贝泰迪和朋友们的洗澡小桶套装，搭配泰迪公仔造型和鲸鱼，小黄鸭等呆萌配件，组合3个彩色洗澡小桶(此套装不含发条泰迪)，增加了宝宝洗澡沐浴的趣味性和父母的互动性，让宝宝爱上洗澡', '889.00', '999.00', '2498986', '2018-08-22 20:24:36');
INSERT INTO `goods` VALUES ('39', 'b25.jpg', '大王纸尿裤L54片*2包\r\n柔软透气 自由自在', null, null, null, '哈贝泰迪和朋友们的洗澡小桶套装，搭配泰迪公仔造型和鲸鱼，小黄鸭等呆萌配件，组合3个彩色洗澡小桶(此套装不含发条泰迪)，增加了宝宝洗澡沐浴的趣味性和父母的互动性，让宝宝爱上洗澡', '148.00', '376.00', '2498986', '2018-08-22 20:24:37');
INSERT INTO `goods` VALUES ('40', 'b26.jpg', '[包邮] 阿比让 2018时尚港味chic仙女网红凉鞋百搭显瘦增高凉拖鞋', null, null, null, '哈贝泰迪和朋友们的洗澡小桶套装，搭配泰迪公仔造型和鲸鱼，小黄鸭等呆萌配件，组合3个彩色洗澡小桶(此套装不含发条泰迪)，增加了宝宝洗澡沐浴的趣味性和父母的互动性，让宝宝爱上洗澡', '199.00', '299.00', '2498986', '2018-08-22 20:24:39');
INSERT INTO `goods` VALUES ('44', 'b30.jpg', '柔软透气 自由自在\r\n大王纸尿裤L54片*2包\r\n柔软透气 自由自在', null, null, null, '哈贝泰迪和朋友们的洗澡小桶套装，搭配泰迪公仔造型和鲸鱼，小黄鸭等呆萌配件，组合3个彩色洗澡小桶(此套装不含发条泰迪)，增加了宝宝洗澡沐浴的趣味性和父母的互动性，让宝宝爱上洗澡', '99.00', '99.00', '2498986', '2018-08-22 20:24:41');
INSERT INTO `goods` VALUES ('45', 'b31.jpg', '柔软透气 自由自在\r\n大王纸尿裤L54片*2包\r\n柔软透气 自由自在', null, null, null, '哈贝泰迪和朋友们的洗澡小桶套装，搭配泰迪公仔造型和鲸鱼，小黄鸭等呆萌配件，组合3个彩色洗澡小桶(此套装不含发条泰迪)，增加了宝宝洗澡沐浴的趣味性和父母的互动性，让宝宝爱上洗澡', '99.00', '99.00', '2498986', '2018-08-22 20:24:42');
INSERT INTO `goods` VALUES ('46', 'b32.jpg', '柔软透气 自由自在\r\n大王纸尿裤L54片*2包\r\n柔软透气 自由自在', null, null, null, '哈贝泰迪和朋友们的洗澡小桶套装，搭配泰迪公仔造型和鲸鱼，小黄鸭等呆萌配件，组合3个彩色洗澡小桶(此套装不含发条泰迪)，增加了宝宝洗澡沐浴的趣味性和父母的互动性，让宝宝爱上洗澡', '99.00', '99.00', '2498986', '2018-08-22 20:24:43');
INSERT INTO `goods` VALUES ('47', 'b33.jpg', '柔软透气 自由自在\r\n大王纸尿裤L54片*2包\r\n柔软透气 自由自在', null, null, null, '哈贝泰迪和朋友们的洗澡小桶套装，搭配泰迪公仔造型和鲸鱼，小黄鸭等呆萌配件，组合3个彩色洗澡小桶(此套装不含发条泰迪)，增加了宝宝洗澡沐浴的趣味性和父母的互动性，让宝宝爱上洗澡', '99.00', '99.00', '2498986', '2018-08-22 20:24:45');
INSERT INTO `goods` VALUES ('48', 'b34.jpg', '柔软透气 自由自在\r\n大王纸尿裤L54片*2包\r\n柔软透气 自由自在', null, null, null, '哈贝泰迪和朋友们的洗澡小桶套装，搭配泰迪公仔造型和鲸鱼，小黄鸭等呆萌配件，组合3个彩色洗澡小桶(此套装不含发条泰迪)，增加了宝宝洗澡沐浴的趣味性和父母的互动性，让宝宝爱上洗澡', '99.00', '99.00', '2498986', '2018-08-22 20:24:46');
INSERT INTO `goods` VALUES ('49', 'b35.jpg', '柔软透气 自由自在\r\n大王纸尿裤L54片*2包\r\n柔软透气 自由自在', null, null, null, '哈贝泰迪和朋友们的洗澡小桶套装，搭配泰迪公仔造型和鲸鱼，小黄鸭等呆萌配件，组合3个彩色洗澡小桶(此套装不含发条泰迪)，增加了宝宝洗澡沐浴的趣味性和父母的互动性，让宝宝爱上洗澡', '99.00', '99.00', '2498986', '2018-08-22 20:24:47');
INSERT INTO `goods` VALUES ('50', 'b36.jpg', '柔软透气 自由自在\r\n大王纸尿裤L54片*2包\r\n柔软透气 自由自在', null, null, null, '哈贝泰迪和朋友们的洗澡小桶套装，搭配泰迪公仔造型和鲸鱼，小黄鸭等呆萌配件，组合3个彩色洗澡小桶(此套装不含发条泰迪)，增加了宝宝洗澡沐浴的趣味性和父母的互动性，让宝宝爱上洗澡', '99.00', '99.00', '2498986', '2018-08-22 20:25:03');
INSERT INTO `goods` VALUES ('51', 'b37.jpg', '柔软透气 自由自在\r\n大王纸尿裤L54片*2包\r\n柔软透气 自由自在', null, null, null, '富含食物纤维和铁份，营养丰富，早餐宵夜补充能量，热量低，不用担心上火或发胖哦，里面加入水果颗粒及干果子,还有新鲜烘焙的玄米、燕麦、、麦子、膳食纤维、强化铁质、矿物质及多种维生素B1.B2呢', '99.00', '99.00', '2819715', '2018-08-22 20:25:04');
INSERT INTO `goods` VALUES ('52', 'b38.jpg', '柔软透气 自由自在\r\n大王纸尿裤L54片*2包\r\n柔软透气 自由自在', null, null, null, '富含食物纤维和铁份，营养丰富，早餐宵夜补充能量，热量低，不用担心上火或发胖哦，里面加入水果颗粒及干果子,还有新鲜烘焙的玄米、燕麦、、麦子、膳食纤维、强化铁质、矿物质及多种维生素B1.B2呢', '99.00', '99.00', '2819715', '2018-08-22 20:25:05');
INSERT INTO `goods` VALUES ('53', 'b39.jpg', '柔软透气 自由自在\r\n大王纸尿裤L54片*2包\r\n柔软透气 自由自在', null, null, null, '富含食物纤维和铁份，营养丰富，早餐宵夜补充能量，热量低，不用担心上火或发胖哦，里面加入水果颗粒及干果子,还有新鲜烘焙的玄米、燕麦、、麦子、膳食纤维、强化铁质、矿物质及多种维生素B1.B2呢', '99.00', '99.00', '2819715', '2018-08-22 20:25:06');
INSERT INTO `goods` VALUES ('54', 'b40.jpg', '柔软透气 自由自在\r\n大王纸尿裤L54片*2包\r\n柔软透气 自由自在', null, null, null, '富含食物纤维和铁份，营养丰富，早餐宵夜补充能量，热量低，不用担心上火或发胖哦，里面加入水果颗粒及干果子,还有新鲜烘焙的玄米、燕麦、、麦子、膳食纤维、强化铁质、矿物质及多种维生素B1.B2呢', '99.00', '99.00', '2819715', '2018-08-22 20:25:08');
INSERT INTO `goods` VALUES ('55', 'b41.jpg', '柔软透气 自由自在\r\n大王纸尿裤L54片*2包\r\n柔软透气 自由自在', null, null, null, '富含食物纤维和铁份，营养丰富，早餐宵夜补充能量，热量低，不用担心上火或发胖哦，里面加入水果颗粒及干果子,还有新鲜烘焙的玄米、燕麦、、麦子、膳食纤维、强化铁质、矿物质及多种维生素B1.B2呢', '99.00', '99.00', '2819715', '2018-08-22 20:25:09');
INSERT INTO `goods` VALUES ('56', 'b42.jpg', '柔软透气 自由自在\r\n大王纸尿裤L54片*2包\r\n柔软透气 自由自在', null, null, null, '富含食物纤维和铁份，营养丰富，早餐宵夜补充能量，热量低，不用担心上火或发胖哦，里面加入水果颗粒及干果子,还有新鲜烘焙的玄米、燕麦、、麦子、膳食纤维、强化铁质、矿物质及多种维生素B1.B2呢', '99.00', '99.00', '2819715', '2018-08-22 20:25:28');
INSERT INTO `goods` VALUES ('57', 'b43.jpg', '柔软透气 自由自在\r\n大王纸尿裤L54片*2包\r\n柔软透气 自由自在', null, null, null, '果仁饱满，营养丰富，老少皆宜，孕妇及宝妈均可食用~ 盐焗（腰果，扁桃仁，碧根果，巴西果、夏威夷果） 无盐（腰果，扁桃仁，碧根果，开心果）', '99.00', '99.00', '2819715', '2018-08-22 20:25:37');
INSERT INTO `goods` VALUES ('58', 'b44.jpg', '柔软透气 自由自在\r\n大王纸尿裤L54片*2包\r\n柔软透气 自由自在', null, null, null, '果仁饱满，营养丰富，老少皆宜，孕妇及宝妈均可食用~ 盐焗（腰果，扁桃仁，碧根果，巴西果、夏威夷果） 无盐（腰果，扁桃仁，碧根果，开心果）', '99.00', '99.00', '2819715', '2018-08-22 20:25:39');
INSERT INTO `goods` VALUES ('59', 'b45.jpg', '柔软透气 自由自在\r\n大王纸尿裤L54片*2包\r\n柔软透气 自由自在', null, null, null, '果仁饱满，营养丰富，老少皆宜，孕妇及宝妈均可食用~ 盐焗（腰果，扁桃仁，碧根果，巴西果、夏威夷果） 无盐（腰果，扁桃仁，碧根果，开心果）', '99.00', '99.00', '2819715', '2018-08-22 20:25:40');
INSERT INTO `goods` VALUES ('60', 'b46.jpg', '柔软透气 自由自在\r\n大王纸尿裤L54片*2包\r\n柔软透气 自由自在', null, null, null, '果仁饱满，营养丰富，老少皆宜，孕妇及宝妈均可食用~ 盐焗（腰果，扁桃仁，碧根果，巴西果、夏威夷果） 无盐（腰果，扁桃仁，碧根果，开心果）', '99.00', '99.00', '2819715', '2018-08-22 20:25:41');
INSERT INTO `goods` VALUES ('61', 'b47.jpg', '柔软透气 自由自在\r\n大王纸尿裤L54片*2包\r\n柔软透气 自由自在', null, null, null, '果仁饱满，营养丰富，老少皆宜，孕妇及宝妈均可食用~ 盐焗（腰果，扁桃仁，碧根果，巴西果、夏威夷果） 无盐（腰果，扁桃仁，碧根果，开心果）', '99.00', '99.00', '2819715', '2018-08-22 20:25:44');
INSERT INTO `goods` VALUES ('62', 'b48.jpg', '柔软透气 自由自在\r\n大王纸尿裤L54片*2包\r\n柔软透气 自由自在', null, null, null, '果仁饱满，营养丰富，老少皆宜，孕妇及宝妈均可食用~ 盐焗（腰果，扁桃仁，碧根果，巴西果、夏威夷果） 无盐（腰果，扁桃仁，碧根果，开心果）', '99.00', '99.00', '2819715', '2018-08-22 20:25:43');
INSERT INTO `goods` VALUES ('63', 'b49.jpg', '柔软透气 自由自在\r\n大王纸尿裤L54片*2包\r\n柔软透气 自由自在', null, null, null, '果仁饱满，营养丰富，老少皆宜，孕妇及宝妈均可食用~ 盐焗（腰果，扁桃仁，碧根果，巴西果、夏威夷果） 无盐（腰果，扁桃仁，碧根果，开心果）', '99.00', '99.00', '2819715', '2018-08-22 20:25:46');
INSERT INTO `goods` VALUES ('64', 'b49.jpg', '柔软透气 自由自在\r\n大王纸尿裤L54片*2包\r\n柔软透气 自由自在', null, null, null, '果仁饱满，营养丰富，老少皆宜，孕妇及宝妈均可食用~ 盐焗（腰果，扁桃仁，碧根果，巴西果、夏威夷果） 无盐（腰果，扁桃仁，碧根果，开心果）', '99.00', '99.00', '2819715', '2018-08-22 20:25:47');
INSERT INTO `goods` VALUES ('65', 'b49.jpg', '柔软透气 自由自在\r\n大王纸尿裤L54片*2包\r\n柔软透气 自由自在', null, null, null, '果仁饱满，营养丰富，老少皆宜，孕妇及宝妈均可食用~ 盐焗（腰果，扁桃仁，碧根果，巴西果、夏威夷果） 无盐（腰果，扁桃仁，碧根果，开心果）', '99.00', '99.00', '2819715', '2018-08-22 20:25:48');
INSERT INTO `goods` VALUES ('66', 'b49.jpg', '柔软透气 自由自在\r\n大王纸尿裤L54片*2包\r\n柔软透气 自由自在', null, null, null, '果仁饱满，营养丰富，老少皆宜，孕妇及宝妈均可食用~ 盐焗（腰果，扁桃仁，碧根果，巴西果、夏威夷果） 无盐（腰果，扁桃仁，碧根果，开心果）', '99.00', '99.00', '2819715', '2018-08-22 20:25:49');
INSERT INTO `goods` VALUES ('67', 'b49.jpg', '柔软透气 自由自在\r\n大王纸尿裤L54片*2包\r\n柔软透气 自由自在', null, null, null, '果仁饱满，营养丰富，老少皆宜，孕妇及宝妈均可食用~ 盐焗（腰果，扁桃仁，碧根果，巴西果、夏威夷果） 无盐（腰果，扁桃仁，碧根果，开心果）', '99.00', '99.00', '2819715', '2018-08-22 20:25:50');
INSERT INTO `goods` VALUES ('68', 'b49.jpg', '柔软透气 自由自在\r\n大王纸尿裤L54片*2包\r\n柔软透气 自由自在', null, null, null, '果仁饱满，营养丰富，老少皆宜，孕妇及宝妈均可食用~ 盐焗（腰果，扁桃仁，碧根果，巴西果、夏威夷果） 无盐（腰果，扁桃仁，碧根果，开心果）', '99.00', '99.00', '2819715', '2018-08-22 20:26:32');

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES ('1', '18207762938', '123456', '2018-08-20 20:26:25');
INSERT INTO `user` VALUES ('2', '18866888866', '456789', '2018-08-20 20:26:40');
INSERT INTO `user` VALUES ('3', '13838384381', '987654', '2018-08-20 20:59:42');
INSERT INTO `user` VALUES ('4', '14777889999', '123456', '2018-08-20 21:03:42');
INSERT INTO `user` VALUES ('5', '16677445522', '123456', '2018-08-20 21:04:53');
INSERT INTO `user` VALUES ('6', '158369369258', '123456', '2018-08-24 09:59:28');
INSERT INTO `user` VALUES ('8', '14725836936', '000000', '2018-08-25 14:53:08');
SET FOREIGN_KEY_CHECKS=1;
