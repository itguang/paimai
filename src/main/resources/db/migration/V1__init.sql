/*

 ======  关注微信公众号: 【ITSource每日分享】,一万个IT资源等你发现：项目源码，软件工具，面试面经，学习视频 应有尽有！！！ ==========================================
	点击下方链接扫码关注 : https://mmbiz.qpic.cn/sz_mmbiz_jpg/JfvqwvA8e1vfT6fJAGV0hibeQY1Sia4iaCZ6iaicDl1joUxPsicXoiaeyWuAl8Vhmfiah9j0bjNYVuske8G3ZGopia92RyQ/640
=============================================================================================================================================================
 Navicat Premium Data Transfer

 Source Server         : Mysql8-Docker
 Source Server Type    : MySQL
 Source Server Version : 80100
 Source Host           : localhost:13306
 Source Schema         : springbootp0eo6

 Target Server Type    : MySQL
 Target Server Version : 80100
 File Encoding         : 65001

 Date: 24/02/2024 19:17:13
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for config
-- ----------------------------
DROP TABLE IF EXISTS `config`;
CREATE TABLE `config`  (
                           `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
                           `name` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL COMMENT '配置参数名称',
                           `value` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '配置参数值',
                           PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 7 CHARACTER SET = utf8mb3 COLLATE = utf8mb3_general_ci COMMENT = '配置文件' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of config
-- ----------------------------
INSERT INTO `config` VALUES (1, 'picture1', 'http://localhost:8080/springbootp0eo6/upload/1708615204416.jpg');
INSERT INTO `config` VALUES (2, 'picture2', 'http://localhost:8080/springbootp0eo6/upload/1708694354455.jpg');
INSERT INTO `config` VALUES (3, 'picture3', 'http://localhost:8080/springbootp0eo6/upload/1708694389152.jpg');
INSERT INTO `config` VALUES (6, 'homepage', 'http://localhost:8080/springbootp0eo6/upload/1708694373054.jpg');

-- ----------------------------
-- Table structure for jingpaidingdan
-- ----------------------------
DROP TABLE IF EXISTS `jingpaidingdan`;
CREATE TABLE `jingpaidingdan`  (
                                   `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
                                   `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
                                   `dingdanbianhao` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL COMMENT '订单编号',
                                   `shangpinmingcheng` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '商品名称',
                                   `shangpinleixing` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '商品类型',
                                   `chengjiaojiage` int NOT NULL COMMENT '成交价格',
                                   `faburiqi` date NULL DEFAULT NULL COMMENT '发布日期',
                                   `yonghuming` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '用户名',
                                   `xingming` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '姓名',
                                   `shouji` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '手机',
                                   `youxiang` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '邮箱',
                                   `dizhi` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '地址',
                                   `ispay` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT '未支付' COMMENT '是否支付',
                                   PRIMARY KEY (`id`) USING BTREE,
                                   UNIQUE INDEX `dingdanbianhao`(`dingdanbianhao` ASC) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1612340689796 CHARACTER SET = utf8mb3 COLLATE = utf8mb3_general_ci COMMENT = '竞拍订单' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of jingpaidingdan
-- ----------------------------
INSERT INTO `jingpaidingdan` VALUES (1708758887855, '2024-02-24 15:14:46', '1708758569856', '【电影院售票管理系统】SpringBoot+Vue', '程序源码,啊', 11, '2024-02-23', 'itsource001', 'itsource001', '17183829836', 'itsources@qq.com', '背景', '未支付');
INSERT INTO `jingpaidingdan` VALUES (1708758887856, '2024-02-24 15:33:20', '1708760000301', '耳机', '数码', 600, '2024-02-23', 'itsource', 'ITSource', '17638261726', 'itsource', '上海', '已支付');
INSERT INTO `jingpaidingdan` VALUES (1708758887857, '2024-02-24 19:09:46', '1708772986932', '【宠物管理系统(带论文)springboot+vue】', '程序源码', 200, '2024-02-22', 'itsource', 'ITSource', '17638261726', 'itsource', '上海', '已支付');

-- ----------------------------
-- Table structure for lishijingpai
-- ----------------------------
DROP TABLE IF EXISTS `lishijingpai`;
CREATE TABLE `lishijingpai`  (
                                 `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
                                 `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
                                 `shangpinmingcheng` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '商品名称',
                                 `shangpinleixing` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '商品类型',
                                 `riqi` datetime NULL DEFAULT NULL COMMENT '日期',
                                 `jiage` int NOT NULL COMMENT '价格',
                                 `yonghuming` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '用户名',
                                 `xingming` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '姓名',
                                 `shouji` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '手机',
                                 `dizhi` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '地址',
                                 `sfsh` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT '否' COMMENT '是否审核',
                                 `shhf` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL COMMENT '审核回复',
                                 PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1612340577250 CHARACTER SET = utf8mb3 COLLATE = utf8mb3_general_ci COMMENT = '历史竞拍' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of lishijingpai
-- ----------------------------
INSERT INTO `lishijingpai` VALUES (1708757752425, '2024-02-24 14:55:52', '【电影院售票管理系统】SpringBoot+Vue', '程序源码', '2024-02-24 06:55:45', 11, 'itsource001', 'itsource001', '17183829836', '背景', '是', '成交');
INSERT INTO `lishijingpai` VALUES (1708758523634, '2024-02-24 15:08:42', '耳机', '数码', '2024-02-23 16:00:00', 300, 'itsource', 'ITSource', '17638261726', '上海', '否', NULL);
INSERT INTO `lishijingpai` VALUES (1708759975726, '2024-02-24 15:32:55', '耳机', '数码', '2024-02-23 16:00:00', 600, 'itsource', 'ITSource', '17638261726', '上海', '是', '1');
INSERT INTO `lishijingpai` VALUES (1708772708339, '2024-02-24 19:05:07', '【宠物管理系统(带论文)springboot+vue】', '程序源码', '2024-02-23 16:00:00', 200, 'itsource', 'ITSource', '17638261726', '上海', '是', '价格合适');

-- ----------------------------
-- Table structure for messages
-- ----------------------------
DROP TABLE IF EXISTS `messages`;
CREATE TABLE `messages`  (
                             `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
                             `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
                             `userid` bigint NOT NULL COMMENT '留言人id',
                             `username` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '用户名',
                             `content` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL COMMENT '留言内容',
                             `reply` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL COMMENT '回复内容',
                             PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1612340606311 CHARACTER SET = utf8mb3 COLLATE = utf8mb3_general_ci COMMENT = '留言板' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of messages
-- ----------------------------
INSERT INTO `messages` VALUES (71, '2021-02-03 16:07:40', 1, '用户名1', '留言内容1', '回复内容1');
INSERT INTO `messages` VALUES (72, '2021-02-03 16:07:40', 2, '用户名2', '留言内容2', '回复内容2');
INSERT INTO `messages` VALUES (73, '2021-02-03 16:07:40', 3, '用户名3', '留言内容3', '回复内容3');
INSERT INTO `messages` VALUES (74, '2021-02-03 16:07:40', 4, '用户名4', '留言内容4', '回复内容4');
INSERT INTO `messages` VALUES (75, '2021-02-03 16:07:40', 5, '用户名5', '留言内容5', '回复内容5');
INSERT INTO `messages` VALUES (76, '2021-02-03 16:07:40', 6, '用户名6', '留言内容6', '回复内容6');
INSERT INTO `messages` VALUES (1612340606310, '2021-02-03 16:23:26', 1612340502319, '1', '有什么问题或者意见可以在这里给管理员进行反馈，管路员可以对信息进行回复', '好的 感谢反馈');

-- ----------------------------
-- Table structure for news
-- ----------------------------
DROP TABLE IF EXISTS `news`;
CREATE TABLE `news`  (
                         `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
                         `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
                         `title` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL COMMENT '标题',
                         `introduction` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL COMMENT '简介',
                         `picture` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL COMMENT '图片',
                         `content` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL COMMENT '内容',
                         PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 67 CHARACTER SET = utf8mb3 COLLATE = utf8mb3_general_ci COMMENT = '竞拍公告' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of news
-- ----------------------------
INSERT INTO `news` VALUES (61, '2021-02-03 16:07:40', '上海市地一届慈善拍卖大会启动', ' 凝聚商界力量，振兴阳江经济。为学习贯彻市委经济工作会议精神，推动商会各项工作高质量发展，全力打造暖心商会、创新商会、品牌商会，1月11日下午，阳江市企业家商会隆重召开六届一次理事大会。', 'http://localhost:8080/springbootp0eo6/upload/1708355365924.jpg', '<p class=\"ql-align-center\">文章发布日期：2024-01-17 15:56:13&nbsp;&nbsp;&nbsp;&nbsp;作者：庄子鸿</p><p>&nbsp;凝聚商界力量，振兴阳江经济。为学习贯彻市委经济工作会议精神，推动商会各项工作高质量发展，全力打造暖心商会、创新商会、品牌商会，1月11日下午，阳江市企业家商会隆重召开六届一次理事大会。市政协主席杨文龙，市委常委、秘书长、统战部长王兵，市人大常委会副主任李宗瑞等领导，会后出席我会助力“百千万工程”暨2024新年晚会，与企业家欢聚一堂，共贺新春。</p><p>&nbsp;&nbsp;会长梁洪志，常务副会长赖国荣、洪剑锋、朱素莲、张巍腾，监事长关小媛，常务副会长梁瑞超、陈文湘、甘达斌、李清华、赖雄伟，副会长兼秘书长林奕辉，副会长冯佐亮、蔡怀志、叶秀荣、吴光炯、冯放、覃世杰、区云、李茂记、谭明苏、冯从明、张诺雅、郑富文、陈雪霞、黄国良、郑海发、刘奕捍，副秘书长谭俊豪、黄基敏、黎福光，副监事长曾纪茨、陈文立等出席会议。&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</p><p>&nbsp;会议审议通过年度工作报告；审议通过年度会费收支情况说明；增补了若干常务理事、理事；表彰了一批先进会员；通过现场小组风采展示和会员投票评选，最终第六组被评为年度“红旗组”，第九组被评为“优秀组”，第四组被评为“潜力组”，分别获得一万元、六千元、四千元的奖金。</p><p>会议期间，还举行了慈善拍卖。所有拍品均由爱心会员企业家热心捐赠。在现场的热烈氛围下，一件件饱含爱心的拍品在广大会员企业家一次次踊跃举牌中被成功竞拍，29件拍品共筹得善款19.9万元，全部专款专用于我会的慈善公益事业。</p><p>&nbsp;&nbsp;会议充分肯定了商会一年来的工作，认为商会活动丰富多彩，效果显著。今后要继续始终坚持发挥职能作用，履行服务会员职责；始终不断促进企业交流合作，全面宣传商界文化，大力弘扬创业精神；始终加强会员队伍建设，增强凝聚力和社会影响力，为阳江民营经济健康发展起到了积极的作用。</p><p>&nbsp;会议号召，广大会员企业要坚定发展信心、保持发展定力、找准发展重点，攻坚克难、向上突围，进一步提振干事创业的精气神，以创先争优、埋头实干的劲头，努力在推动高质量发展上展现新作为、取得新成效。同时发扬集体智慧和力量，努力把阳江市企业家商会办成本地乃至全省一流的品牌商会而努力奋斗！</p>');
INSERT INTO `news` VALUES (62, '2021-02-03 16:07:40', 'ITsource每日分享拍卖专场', ' 关注微信公众号: 【ITSource每日分享】,一万个IT资源等你发现：项目源码，软件工具，面试面经，学习视频 应有尽有！！！ ', 'http://localhost:8080/springbootp0eo6/upload/1708355883210.png', '<ul><li><a href=\"https://mp.weixin.qq.com/s/KE7jOCpvbLVddVnu81fg9A\" rel=\"noopener noreferrer\" target=\"_blank\" style=\"color: rgb(102, 163, 224);\">ITSource&nbsp;分享&nbsp;第1期【问卷调查系统】springboot+vue</a></li><li><a href=\"https://mp.weixin.qq.com/s/So2Nb20hotB3S0aQtqf1mQ\" rel=\"noopener noreferrer\" target=\"_blank\" style=\"color: rgb(102, 163, 224);\">ITSource&nbsp;分享&nbsp;第2期【在线考试系统】springboot+vue</a></li><li><a href=\"https://mp.weixin.qq.com/s/HeSGWxxU-bGoeONjyR6qsw\" rel=\"noopener noreferrer\" target=\"_blank\" style=\"color: rgb(102, 163, 224);\">ITSource&nbsp;分享&nbsp;第4期【简洁的问卷调查系统】springboot+vue</a></li><li><a href=\"https://mp.weixin.qq.com/s/oA0Mbz3c4q1ziQbHvr72dg\" rel=\"noopener noreferrer\" target=\"_blank\" style=\"color: rgb(102, 163, 224);\">ITSource&nbsp;分享&nbsp;第5期【校园信息墙系统】springboot+vue</a></li><li><a href=\"https://mp.weixin.qq.com/s/NddwJn9h2f5n6dY-spCFhQ\" rel=\"noopener noreferrer\" target=\"_blank\" style=\"color: rgb(102, 163, 224);\">ITSource 分享 第6期【网址云收藏系统】】</a></li><li><a href=\"https://mp.weixin.qq.com/s/kRigevtP_EjpOS_Bw2UdZQ\" rel=\"noopener noreferrer\" target=\"_blank\" style=\"color: rgb(102, 163, 224);\">ITSource&nbsp;分享&nbsp;第7期【小程序记账软件系统】springboot+小程序</a></li><li><a href=\"https://mp.weixin.qq.com/s/oJ-PEahVwQkwRwE8sINyZg\" rel=\"noopener noreferrer\" target=\"_blank\" style=\"color: rgb(102, 163, 224);\">ITSource&nbsp;分享&nbsp;第8期【班级学生管理系统】</a></li><li><a href=\"https://mp.weixin.qq.com/s/euvjxBX3bVG71IF8yV_zJQ\" rel=\"noopener noreferrer\" target=\"_blank\" style=\"color: rgb(102, 163, 224);\">ITSource 分享 第9期【学知识在线考试系统】springboot+vue</a></li><li><a href=\"https://mp.weixin.qq.com/s/j5O3oi0Yc28v8ROomyR9_g\" rel=\"noopener noreferrer\" target=\"_blank\" style=\"color: rgb(102, 163, 224);\">ITSource 分享 第10期【个人博客系统】</a></li><li><a href=\"https://mp.weixin.qq.com/s/5AEgWPW1v0Y5Z77LGoMm1Q\" rel=\"noopener noreferrer\" target=\"_blank\" style=\"color: rgb(102, 163, 224);\">ITSource 分享 第11期【简单的教务管理系统】</a></li><li><a href=\"https://mp.weixin.qq.com/s/YpJXaGC5338ydeLCMBiLtg\" rel=\"noopener noreferrer\" target=\"_blank\" style=\"color: rgb(102, 163, 224);\">ITSource分享第12期【驾校理论课考试系统】springboot+vue</a></li><li><a href=\"https://mp.weixin.qq.com/s/7FYxlXoKrb5r-nckcPlAWw\" rel=\"noopener noreferrer\" target=\"_blank\" style=\"color: rgb(102, 163, 224);\">ITSource分享第13期【班级信息管理系统】</a></li><li><a href=\"https://mp.weixin.qq.com/s/oRU1VtvB68Z1qJbuGIGrGw\" rel=\"noopener noreferrer\" target=\"_blank\" style=\"color: rgb(102, 163, 224);\">ITSource分享第14期【电影院售票管理系统】springboot+vue</a></li><li><a href=\"https://mp.weixin.qq.com/s/rgixOXuJyJyZlL8Ny0AE8A\" rel=\"noopener noreferrer\" target=\"_blank\" style=\"color: rgb(102, 163, 224);\">ITSource分享第15期【图书管理系统】</a></li><li><a href=\"https://mp.weixin.qq.com/s/5aOJ9EHIqcVqtYWdKn3ONw\" rel=\"noopener noreferrer\" target=\"_blank\" style=\"color: rgb(102, 163, 224);\">ITSource分享第16期【连锁门店管理系统】springboot+vue</a></li><li><a href=\"https://mp.weixin.qq.com/s/S_mDclr4BKOzGZHG6etnoA\" rel=\"noopener noreferrer\" target=\"_blank\" style=\"color: rgb(102, 163, 224);\">ITSource分享第17期【宠物管理系统(带论文)springboot+vue】</a></li><li><a href=\"https://mp.weixin.qq.com/s/_LlrbVBq_6nhGp3BY7F38A\" rel=\"noopener noreferrer\" target=\"_blank\" style=\"color: rgb(102, 163, 224);\">ITSource分享第18期【二手交易(电商,商城)系统(带论文和PPT)springboot+vue】</a></li><li><a href=\"https://mp.weixin.qq.com/s/b8qTt-XT9SZNzQTKOJQqSw\" rel=\"noopener noreferrer\" target=\"_blank\" style=\"color: rgb(102, 163, 224);\">ITSource分享第19期【学生选课管理系统springboot+vue】</a></li><li><a href=\"https://mp.weixin.qq.com/s/xqmR6R96yFSZeQOmkCQcmQ\" rel=\"noopener noreferrer\" target=\"_blank\" style=\"color: rgb(102, 163, 224);\">ITSource分享第20期-Java SpringBoot 微信点餐系统视频</a></li><li><a href=\"https://mp.weixin.qq.com/s/7F7EhKv_CG81LEDS1XEJHw\" rel=\"noopener noreferrer\" target=\"_blank\" style=\"color: rgb(102, 163, 224);\">ITSource分享第21期【房屋租赁管理系统】springboot+vue</a></li></ul><p><br></p>');

-- ----------------------------
-- Table structure for paimaishangpin
-- ----------------------------
DROP TABLE IF EXISTS `paimaishangpin`;
CREATE TABLE `paimaishangpin`  (
                                   `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
                                   `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
                                   `shangpinmingcheng` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL COMMENT '商品名称',
                                   `shangpinleixing` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL COMMENT '商品类型',
                                   `tupian` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '图片',
                                   `jiage` int NOT NULL COMMENT '价格',
                                   `shangpinxiangqing` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL COMMENT '商品详情',
                                   `huodongshijian` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '活动时间',
                                   `huodongzhuangtai` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '活动状态',
                                   PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 37 CHARACTER SET = utf8mb3 COLLATE = utf8mb3_general_ci COMMENT = '拍卖商品' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of paimaishangpin
-- ----------------------------
INSERT INTO `paimaishangpin` VALUES (31, '2021-02-03 16:07:40', '索尼照相机', '数码', 'http://localhost:8080/springbootp0eo6/upload/paimaishangpin_tupian1.jpg', 2500, '<p>索尼是最早推出微单的企业之一，也是把以往仅传统反光相机才有的全画幅感光元件，第一个放入微单的先驱。其还拥有领先业界的自动对焦技术，只需轻轻按一下快门就可以自动抓拍到目标物，部分机型并配备优异的防抖功能，也使其直到今日依然是微单业界的佼佼者。</p><p><br></p><p><br></p><p>而除了入门到高阶机种，索尼更为了特殊场合设计多款特规机，因此购买前请务必考量使用场合，而不只是根据规格来选择，才能买到最适合的机种。</p><p><br></p><p><img src=\"https://pic3.zhimg.com/v2-67581c29639688a6889098fc4cca0a16_b.webp?consumer=ZHI_MENG\"><img src=\"http://localhost:8080/springbootp0eo6/upload/1708348875157.jpg\"></p>', '长期有效', '竞拍中');
INSERT INTO `paimaishangpin` VALUES (32, '2021-02-03 16:07:40', '耳机', '数码', 'http://localhost:8080/springbootp0eo6/upload/paimaishangpin_tupian2.jpg', 1100, '<p>这个二级非常好,媲美几万元的耳机</p>', '2024年1月1号 - 2025年1月1号', '竞拍中');
INSERT INTO `paimaishangpin` VALUES (33, '2021-02-03 16:07:40', '华为手机', '手机', 'http://localhost:8080/springbootp0eo6/upload/1612340132053.png', 2000, '<p><img src=\"http://localhost:8080/springbootp0eo6/upload/1612340379733.png\"></p><p><br></p><p>这里可以发布一些商品的详情，内容都是用预测是的都可以自行添加修改删除的</p><p><br></p><p>华为MATE30 ，现在可以享受竞拍，以1500低价，竞拍，没有上线</p>', '1-10号', '已结束');
INSERT INTO `paimaishangpin` VALUES (34, '2021-02-03 16:07:40', 'OPPO Reno', '手机', 'http://localhost:8080/springbootp0eo6/upload/1612340153669.png', 4000, '<p>这款手机好滴很</p>', '2023-2030', '竞拍中');
INSERT INTO `paimaishangpin` VALUES (35, '2021-02-03 16:07:40', '精品三国志', '书籍', 'http://localhost:8080/springbootp0eo6/upload/1612340185007.jpg', 1000, '<p>商品详情5</p>', '活动时间5', '竞拍中');
INSERT INTO `paimaishangpin` VALUES (36, '2021-02-03 16:07:40', '【电影院售票管理系统】SpringBoot+Vue', '程序源码', 'http://localhost:8080/springbootp0eo6/upload/1708694505061.png', 21, '<p>本期给大家介绍一个电影院售票管理系统.。技术栈采用 SpringBoot+Mybatis+Mysql+Vue。 分为影院管理端和用户购买端。</p><p>影院管理端： 主要功能有，登录注册，影院 管理，影片管理，影厅管理，订单管理，用户管理，权限管理等模块。主要是上架影片，排场次，查看订单等。</p><p>用户端： 用户端主要功能有： 登录注册，首页浏览影片，查看榜单，购买电影票等功能。</p><p>整体项目还是比较系统的，适合编程学习，二次开发练手，对初学者来说是一个很好的模仿学习项目。</p><p><br></p><p><strong style=\"background-color: rgba(0, 0, 0, 0); color: rgb(130, 127, 196);\">更多资源推荐:</strong></p><ul><li><a href=\"https://mp.weixin.qq.com/s/KE7jOCpvbLVddVnu81fg9A\" rel=\"noopener noreferrer\" target=\"_blank\" style=\"background-color: initial; color: rgb(130, 127, 196);\"><strong>ITSource&nbsp;分享&nbsp;第1期【问卷调查系统】</strong></a></li><li><a href=\"https://mp.weixin.qq.com/s/So2Nb20hotB3S0aQtqf1mQ\" rel=\"noopener noreferrer\" target=\"_blank\" style=\"background-color: initial; color: rgb(130, 127, 196);\"><strong>ITSource&nbsp;分享&nbsp;第2期【在线考试系统】</strong></a></li><li><a href=\"https://mp.weixin.qq.com/s/HeSGWxxU-bGoeONjyR6qsw\" rel=\"noopener noreferrer\" target=\"_blank\" style=\"background-color: initial; color: rgb(130, 127, 196);\"><strong>ITSource&nbsp;分享&nbsp;第4期【简洁的问卷调查系统】</strong></a></li><li><a href=\"https://mp.weixin.qq.com/s/oA0Mbz3c4q1ziQbHvr72dg\" rel=\"noopener noreferrer\" target=\"_blank\" style=\"background-color: initial; color: rgb(130, 127, 196);\"><strong>ITSource&nbsp;分享&nbsp;第5期【校园信息墙系统】</strong></a></li><li><a href=\"https://mp.weixin.qq.com/s/NddwJn9h2f5n6dY-spCFhQ\" rel=\"noopener noreferrer\" target=\"_blank\" style=\"background-color: initial; color: rgb(130, 127, 196);\"><strong>ITSource 分享 第6期【网址云收藏系统】】</strong></a></li><li><a href=\"https://mp.weixin.qq.com/s/kRigevtP_EjpOS_Bw2UdZQ\" rel=\"noopener noreferrer\" target=\"_blank\" style=\"background-color: initial; color: rgb(130, 127, 196);\"><strong>ITSource&nbsp;分享&nbsp;第7期【小程序记账软件系统】</strong></a></li><li><a href=\"https://mp.weixin.qq.com/s/oJ-PEahVwQkwRwE8sINyZg\" rel=\"noopener noreferrer\" target=\"_blank\" style=\"background-color: initial; color: rgb(130, 127, 196);\"><strong>ITSource&nbsp;分享&nbsp;第8期【班级学生管理系统】</strong></a></li><li><a href=\"https://mp.weixin.qq.com/s/euvjxBX3bVG71IF8yV_zJQ\" rel=\"noopener noreferrer\" target=\"_blank\" style=\"background-color: initial; color: rgb(130, 127, 196);\"><strong>ITSource 分享 第9期【学知识在线考试系统】】</strong></a></li><li><a href=\"https://mp.weixin.qq.com/s/j5O3oi0Yc28v8ROomyR9_g\" rel=\"noopener noreferrer\" target=\"_blank\" style=\"background-color: initial; color: rgb(130, 127, 196);\"><strong>ITSource 分享 第10期【个人博客系统】</strong></a></li><li><a href=\"https://mp.weixin.qq.com/s/5AEgWPW1v0Y5Z77LGoMm1Q\" rel=\"noopener noreferrer\" target=\"_blank\" style=\"background-color: initial; color: rgb(130, 127, 196);\"><strong>ITSource 分享 第11期【简单的教务管理系统】</strong></a></li><li><a href=\"https://mp.weixin.qq.com/s/YpJXaGC5338ydeLCMBiLtg\" rel=\"noopener noreferrer\" target=\"_blank\" style=\"background-color: initial; color: rgb(130, 127, 196);\"><strong>ITSource分享第12期【驾校理论课考试系统】</strong></a></li><li><a href=\"https://mp.weixin.qq.com/s/7FYxlXoKrb5r-nckcPlAWw\" rel=\"noopener noreferrer\" target=\"_blank\" style=\"background-color: initial; color: rgb(130, 127, 196);\"><strong>ITSource分享第13期【班级信息管理系统】</strong></a></li><li><a href=\"https://mp.weixin.qq.com/s/oRU1VtvB68Z1qJbuGIGrGw\" rel=\"noopener noreferrer\" target=\"_blank\" style=\"background-color: initial; color: rgb(130, 127, 196);\"><strong>ITSource分享第14期【电影院售票管理系统】</strong></a></li></ul><p><br></p><h2><br></h2>', '2024-01-01 至 2024-02-01', '竞拍中');
INSERT INTO `paimaishangpin` VALUES (1708772267205, '2024-02-24 18:57:47', '【宠物管理系统(带论文)springboot+vue】', '程序源码', 'http://localhost:8080/springbootp0eo6/upload/1708772162928.png', 299, '<p>当今社会，由于人民的生活条件日益改善，人们开始更加追求精神上的满足。互联网与宠物领养的组合，极大地刺激了市场的发展，促使这一产业的兴起。</p><p><br></p><p>本系统是基于Spring Boot的宠物领养系统的设计与实现，采用目前主流的Java语言进行编写；整个系统使用MVC设计模式，将业务逻辑与显示界面分离，实现前后端分离；前端使用Vue框架，配合Element中的UI组件库进行开发，后端利用Spring Boot框架进行逻辑控制，并使用MySQL数据库存储管理数据。</p><p><br></p><p>本系统分为用户端和管理员端，用户端包括以下模块：宠物喂养、流浪宠物救助、宠物喂养点、丢失宠物查看、流浪宠物救助站、宠物论坛、宠物捐赠、科普文章和热门活动；管理员端包括以下模块：流浪动物管理、申请领养管理、评论管理、流浪动物救助管理、喂养点管理、动物走失管理、救助站管理、帖子管理、捐赠管理、公告管理、科普文章管理和活动管理。</p><p><br></p><p>---更多源码:</p><p><br></p><ul><li><a href=\"https://mp.weixin.qq.com/s/KE7jOCpvbLVddVnu81fg9A\" rel=\"noopener noreferrer\" target=\"_blank\" style=\"color: var(--link-external-color);\">ITSource&nbsp;分享&nbsp;第1期【问卷调查系统】</a></li><li><a href=\"https://mp.weixin.qq.com/s/So2Nb20hotB3S0aQtqf1mQ\" rel=\"noopener noreferrer\" target=\"_blank\" style=\"color: var(--link-external-color);\">ITSource&nbsp;分享&nbsp;第2期【在线考试系统】</a></li><li><a href=\"https://mp.weixin.qq.com/s/HeSGWxxU-bGoeONjyR6qsw\" rel=\"noopener noreferrer\" target=\"_blank\" style=\"color: var(--link-external-color);\">ITSource&nbsp;分享&nbsp;第4期【简洁的问卷调查系统】</a></li><li><a href=\"https://mp.weixin.qq.com/s/oA0Mbz3c4q1ziQbHvr72dg\" rel=\"noopener noreferrer\" target=\"_blank\" style=\"color: var(--link-external-color);\">ITSource&nbsp;分享&nbsp;第5期【校园信息墙系统】</a></li><li><a href=\"https://mp.weixin.qq.com/s/NddwJn9h2f5n6dY-spCFhQ\" rel=\"noopener noreferrer\" target=\"_blank\" style=\"color: var(--link-external-color);\">ITSource 分享 第6期【网址云收藏系统】】</a></li><li><a href=\"https://mp.weixin.qq.com/s/kRigevtP_EjpOS_Bw2UdZQ\" rel=\"noopener noreferrer\" target=\"_blank\" style=\"color: var(--link-external-color);\">ITSource&nbsp;分享&nbsp;第7期【小程序记账软件系统】</a></li><li><a href=\"https://mp.weixin.qq.com/s/oJ-PEahVwQkwRwE8sINyZg\" rel=\"noopener noreferrer\" target=\"_blank\" style=\"color: var(--link-external-color);\">ITSource&nbsp;分享&nbsp;第8期【班级学生管理系统】</a></li><li><a href=\"https://mp.weixin.qq.com/s/euvjxBX3bVG71IF8yV_zJQ\" rel=\"noopener noreferrer\" target=\"_blank\" style=\"color: var(--link-external-color);\">ITSource 分享 第9期【学知识在线考试系统】】</a></li><li><a href=\"https://mp.weixin.qq.com/s/j5O3oi0Yc28v8ROomyR9_g\" rel=\"noopener noreferrer\" target=\"_blank\" style=\"color: var(--link-external-color);\">ITSource 分享 第10期【个人博客系统】</a></li><li><a href=\"https://mp.weixin.qq.com/s/5AEgWPW1v0Y5Z77LGoMm1Q\" rel=\"noopener noreferrer\" target=\"_blank\" style=\"color: var(--link-external-color);\">ITSource 分享 第11期【简单的教务管理系统】</a></li><li><a href=\"https://mp.weixin.qq.com/s/YpJXaGC5338ydeLCMBiLtg\" rel=\"noopener noreferrer\" target=\"_blank\" style=\"color: var(--link-external-color);\">ITSource分享第12期【驾校理论课考试系统】</a></li><li><a href=\"https://mp.weixin.qq.com/s/7FYxlXoKrb5r-nckcPlAWw\" rel=\"noopener noreferrer\" target=\"_blank\" style=\"color: var(--link-external-color);\">ITSource分享第13期【班级信息管理系统】</a></li><li><a href=\"https://mp.weixin.qq.com/s/oRU1VtvB68Z1qJbuGIGrGw\" rel=\"noopener noreferrer\" target=\"_blank\" style=\"color: var(--link-external-color);\">ITSource分享第14期【电影院售票管理系统】</a></li></ul><p><br></p>', '2023年 - 2030年', '竞拍中');

-- ----------------------------
-- Table structure for shangpinleixing
-- ----------------------------
DROP TABLE IF EXISTS `shangpinleixing`;
CREATE TABLE `shangpinleixing`  (
                                    `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
                                    `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
                                    `shangpinleixing` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL COMMENT '商品类型',
                                    PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1612340340507 CHARACTER SET = utf8mb3 COLLATE = utf8mb3_general_ci COMMENT = '商品类型' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of shangpinleixing
-- ----------------------------
INSERT INTO `shangpinleixing` VALUES (21, '2021-02-03 16:07:40', '手机');
INSERT INTO `shangpinleixing` VALUES (22, '2021-02-03 16:07:40', '数码');
INSERT INTO `shangpinleixing` VALUES (23, '2021-02-03 16:07:40', '电器');
INSERT INTO `shangpinleixing` VALUES (24, '2021-02-03 16:07:40', '书籍');
INSERT INTO `shangpinleixing` VALUES (1612340340506, '2021-02-03 16:18:59', '其他');
INSERT INTO `shangpinleixing` VALUES (1708695066108, '2024-02-23 21:31:05', '程序源码');

-- ----------------------------
-- Table structure for token
-- ----------------------------
DROP TABLE IF EXISTS `token`;
CREATE TABLE `token`  (
                          `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
                          `userid` bigint NOT NULL COMMENT '用户id',
                          `username` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL COMMENT '用户名',
                          `tablename` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '表名',
                          `role` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '角色',
                          `token` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL COMMENT '密码',
                          `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
                          `expiratedtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '过期时间',
                          PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 5 CHARACTER SET = utf8mb3 COLLATE = utf8mb3_general_ci COMMENT = 'token表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of token
-- ----------------------------
INSERT INTO `token` VALUES (1, 1, 'admin', 'users', '管理员', '2cbbpx1zbutpdzj2s5bjhe3iljyisieg', '2021-02-03 16:09:40', '2024-02-24 12:07:53');
INSERT INTO `token` VALUES (2, 11, '001', 'yonghu', '用户', '47mt1k61pm88q3au5v4udiaadou1nryj', '2021-02-03 16:09:48', '2021-02-03 09:18:06');
INSERT INTO `token` VALUES (3, 1612340502319, '1', 'yonghu', '用户', 'zvrwvzkxhd8p9t253canc34i2nz65uhu', '2021-02-03 16:21:50', '2021-02-03 09:25:45');
INSERT INTO `token` VALUES (4, 1708346591190, 'itsource', 'yonghu', '用户', '1i6jpr0fjt47c9bcyxop8fmebnfo6cye', '2024-02-19 20:43:22', '2024-02-24 11:59:51');
INSERT INTO `token` VALUES (5, 1708757433285, 'itsource001', 'yonghu', '用户', 'ir1v8pjcf4lxg72u5itamdh2oaz1dyik', '2024-02-24 14:50:44', '2024-02-24 08:14:23');

-- ----------------------------
-- Table structure for users
-- ----------------------------
DROP TABLE IF EXISTS `users`;
CREATE TABLE `users`  (
                          `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
                          `username` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL COMMENT '用户名',
                          `password` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL COMMENT '密码',
                          `role` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT '管理员' COMMENT '角色',
                          `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
                          PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8mb3 COLLATE = utf8mb3_general_ci COMMENT = '用户表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of users
-- ----------------------------
INSERT INTO `users` VALUES (1, 'admin', 'admin', '管理员', '2021-02-03 16:07:40');

-- ----------------------------
-- Table structure for yonghu
-- ----------------------------
DROP TABLE IF EXISTS `yonghu`;
CREATE TABLE `yonghu`  (
                           `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
                           `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
                           `yonghuming` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL COMMENT '用户名',
                           `mima` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL COMMENT '密码',
                           `xingming` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '姓名',
                           `xingbie` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '性别',
                           `touxiang` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '头像',
                           `shenfenzheng` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '身份证',
                           `shouji` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '手机',
                           `youxiang` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '邮箱',
                           `dizhi` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '地址',
                           PRIMARY KEY (`id`) USING BTREE,
                           UNIQUE INDEX `yonghuming`(`yonghuming` ASC) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1708346591191 CHARACTER SET = utf8mb3 COLLATE = utf8mb3_general_ci COMMENT = '用户' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of yonghu
-- ----------------------------
INSERT INTO `yonghu` VALUES (11, '2021-02-03 16:07:40', '001', '001', '姓名1', '男', 'http://localhost:8080/springbootp0eo6/upload/yonghu_touxiang1.jpg', '440300199101010001', '13823888881', '773890001@qq.com', '地址1');
INSERT INTO `yonghu` VALUES (12, '2021-02-03 16:07:40', '用户2', '123456', '姓名2', '男', 'http://localhost:8080/springbootp0eo6/upload/yonghu_touxiang2.jpg', '440300199202020002', '13823888882', '773890002@qq.com', '地址2');
INSERT INTO `yonghu` VALUES (13, '2021-02-03 16:07:40', '用户3', '123456', '姓名3', '男', 'http://localhost:8080/springbootp0eo6/upload/yonghu_touxiang3.jpg', '440300199303030003', '13823888883', '773890003@qq.com', '地址3');
INSERT INTO `yonghu` VALUES (1612340502319, '2021-02-03 16:21:42', '1', '1', '刘倩', '女', 'http://localhost:8080/springbootp0eo6/upload/1708441020716.webp', '441214121412141211', '15214121411', '11212@163.com', '上海市');
INSERT INTO `yonghu` VALUES (1708346591190, '2024-02-19 20:43:11', 'itsource', 'itsource', 'ITSource', '男', 'http://localhost:8080/springbootp0eo6/upload/1708349133164.jpg', '411422199638276356', '17638261726', 'itsources@qq.com', '上海');
INSERT INTO `yonghu` VALUES (1708757433285, '2024-02-24 14:50:33', 'itsource001', 'itsource', 'itsource001', NULL, 'http://localhost:8080/springbootp0eo6/upload/1708758085656.jpg', '411422728282828282', '17183829836', 'itsources@qq.com', '背景');

SET FOREIGN_KEY_CHECKS = 1;
