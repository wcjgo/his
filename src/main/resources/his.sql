/*
 Navicat Premium Data Transfer

 Source Server         : localhost_3306
 Source Server Type    : MySQL
 Source Server Version : 80019
 Source Host           : localhost:3306
 Source Schema         : his

 Target Server Type    : MySQL
 Target Server Version : 80019
 File Encoding         : 65001

 Date: 05/06/2021 07:57:25
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for casehistory
-- ----------------------------
DROP TABLE IF EXISTS `casehistory`;
CREATE TABLE `casehistory`  (
  `chid` int(0) NOT NULL COMMENT '病历id',
  `chmark` int(0) NOT NULL AUTO_INCREMENT COMMENT '记录号',
  `anamnesis` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '既往病史',
  `rid` int(0) NULL DEFAULT NULL COMMENT '挂号id',
  `message` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '诊断信息',
  `appeal` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '主诉',
  `ndisease` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '现病史',
  `allergy` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '过敏史',
  `del` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '是否被删除（空代表还在）',
  `nowDisease` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`chmark`) USING BTREE,
  INDEX `r_id8`(`rid`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 10 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of casehistory
-- ----------------------------
INSERT INTO `casehistory` VALUES (600601, 1, '既往有10年余慢性咳嗽史，曾诊断为“慢性支气管炎”，不吸烟。否认肺结核病史。', 3, '曾服止咳糖浆等3天，效果不好', '半月前受凉后开始咳嗽，呈阵发性，无畏冷发热，无咯血及胸痛，伴有少量的白色黏稠痰。曾服止咳糖浆等3天，效果不好。', '阵发性咳嗽半月', '无', NULL, NULL);
INSERT INTO `casehistory` VALUES (600607, 2, '无结核及肝炎病史，无糖尿病及心脏病、高血压病史，无药物过敏史及手术史。', 4, '该患以转移性右下腹痛伴恶心、呕吐8小时于2008年06月11日入院。', '转移性右下腹痛伴恶心、呕吐8小时。', '该患于8小时前无诱因出现腹部疼痛，初表现为上腹部隐痛，4小时后疼痛逐渐加重并转移至右下腹固定，无腰背部及会阴部放散痛，呈阵发性发作，伴有恶心、呕吐数次，呕吐物为胃内容物，量共约200毫升，未经任何诊治，今因腹痛不缓解前来我院就诊，门诊以“腹痛待查”收入院。病程中患者无咳嗽、咳痰，无心悸、气短，无呼吸困难，无腹胀、腹泻，无尿频、尿急、尿痛及血尿，患病以来，睡眠不良，食欲欠佳，大小便正常。', '无', NULL, NULL);
INSERT INTO `casehistory` VALUES (600605, 3, '无结核及肝炎病史，无糖尿病及心脏病、高血压病史，无药物过敏史及手术史。', 6, '于2010年1月14日在四平市爱龄齐医院行超声检查提示：胆囊多发结石，但未经治疗，今为进一步治疗来我院，门诊以胆囊结石收入院。病程中无寒战、高热，无反酸、嗳气，无恶心、呕吐，无呕血、黑便，无黄染。患病以来，睡眠不良，食欲欠佳，大小便正常。', '间断性右上腹疼痛2年。', '该患缘于2年前无明显诱因开始出现右上腹部隐痛，伴右胸背部放散痛，无肩部放散痛，腹痛呈间断性发作，曾予以抗感染治疗（具体药名及剂量不详）后腹痛可缓解。', '无', NULL, NULL);
INSERT INTO `casehistory` VALUES (600606, 4, '无结核及肝炎病史，无糖尿病及心脏病、高血压病史，无药物过敏史及手术史。', 9, '该患以转移性右下腹痛伴恶心、呕吐8小时于2008年06月11日入院。', '右下腹痛伴恶心。', '该患于8小时前无诱因出现腹部疼痛，初表现为上腹部隐痛，4小时后疼痛逐渐加重并转移至右下腹固定，无腰背部及会阴部放散痛，呈阵发性发作，伴有恶心、呕吐数次，呕吐物为胃内容物，量共约200毫升，未经任何诊治，今因腹痛不缓解前来我院就诊，门诊以“腹痛待查”收入院。病程中患者无咳嗽、咳痰，无心悸、气短，无呼吸困难，无腹胀、腹泻，无尿频、尿急、尿痛及血尿，患病以来，睡眠不良，食欲欠佳，大小便正常。', '无', NULL, NULL);
INSERT INTO `casehistory` VALUES (600620, 5, '发烧', 40, '吃了头孢', '头痛', '感冒', '无', NULL, NULL);
INSERT INTO `casehistory` VALUES (600603, 6, NULL, 6, '胃痛', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `casehistory` VALUES (600603, 7, NULL, 6, '胃痛', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `casehistory` VALUES (600603, 8, NULL, 6, '胃痛', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `casehistory` VALUES (600603, 9, NULL, 6, '胃痛', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `casehistory` VALUES (600699, 10, '3', 172, '5', '1', '2', '4', NULL, '52,菌痢混合感染');

-- ----------------------------
-- Table structure for cid_patient
-- ----------------------------
DROP TABLE IF EXISTS `cid_patient`;
CREATE TABLE `cid_patient`  (
  `cid_id` int(0) NOT NULL AUTO_INCREMENT COMMENT '项目id',
  `cid_name` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '项目名',
  `reg_id` int(0) NOT NULL COMMENT '挂号id',
  `check_part` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '检查部位',
  `num` int(0) NULL DEFAULT NULL COMMENT '数量',
  `time` datetime(6) NULL DEFAULT NULL COMMENT '时间',
  `doctor_id` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '医生id',
  `checker_id` int(0) NULL DEFAULT NULL COMMENT '检查员id',
  `cid_type` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '记录类型',
  `status` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '状态',
  `del` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '是否被删除（空代表还在）',
  PRIMARY KEY (`cid_id`, `reg_id`) USING BTREE,
  INDEX `reg_id1`(`reg_id`) USING BTREE,
  INDEX `doctor5`(`doctor_id`) USING BTREE,
  CONSTRAINT `doctor5` FOREIGN KEY (`doctor_id`) REFERENCES `user` (`uid`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 55 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of cid_patient
-- ----------------------------
INSERT INTO `cid_patient` VALUES (1, '模板：骨外伤', 25, '全身', 1, '2019-03-26 09:02:05.000000', '1', 2, '1', '1', NULL);
INSERT INTO `cid_patient` VALUES (1, '模板：骨外伤', 27, '全身', 1, '2019-03-28 10:59:30.000000', '1', 2, '1', '3', NULL);
INSERT INTO `cid_patient` VALUES (10, '模板：骨外伤', 25, '胃部', 1, '2019-03-26 09:02:05.000000', '1', 2, '2', '1', NULL);
INSERT INTO `cid_patient` VALUES (10, '模板：骨外伤', 27, '胃部', 1, '2019-03-28 10:59:30.000000', '1', 2, '1', '3', NULL);
INSERT INTO `cid_patient` VALUES (10, '中毒', 35, '', 1, '2019-03-25 14:24:23.000000', '1', 2, '1', '6', NULL);
INSERT INTO `cid_patient` VALUES (12, '中毒', 35, '', 1, '2019-03-25 14:24:23.000000', '1', 2, '1', '6', NULL);
INSERT INTO `cid_patient` VALUES (20, 'q', 29, 'q', 1, '2019-03-28 13:47:54.000000', '1', 2, '1', '6', NULL);
INSERT INTO `cid_patient` VALUES (20, '3', 30, '3', 1, '2019-03-28 15:26:19.000000', '1', 2, '1', '6', NULL);
INSERT INTO `cid_patient` VALUES (20, 'd', 32, 'd', 1, '2019-03-29 09:26:36.000000', '1', 2, '1', '2', NULL);
INSERT INTO `cid_patient` VALUES (25, '腹痛', 9, '腹部', 1, '2019-03-25 08:39:40.000000', '1', 2, '1', '1', NULL);
INSERT INTO `cid_patient` VALUES (25, 'f', 32, 'f', 1, '2019-03-29 09:26:42.000000', '1', 2, '1', '2', NULL);
INSERT INTO `cid_patient` VALUES (25, 'g', 37, 'g', 1, '2019-04-01 13:27:12.000000', '1', 2, '1', '6', NULL);
INSERT INTO `cid_patient` VALUES (27, 'e', 30, 'e', 1, '2019-03-28 15:26:29.000000', '1', 2, '1', '6', NULL);
INSERT INTO `cid_patient` VALUES (28, 'g', 32, 'g', 1, '2019-03-29 09:26:51.000000', '1', 2, '1', '2', NULL);
INSERT INTO `cid_patient` VALUES (28, 'e', 37, 'e', 1, '2019-04-01 13:27:04.000000', '1', 2, '1', '6', NULL);
INSERT INTO `cid_patient` VALUES (29, 'd', 29, 'd', 1, '2019-03-28 13:48:02.000000', '1', 2, '1', '6', NULL);
INSERT INTO `cid_patient` VALUES (29, 'r', 30, 'r', 1, '2019-03-28 15:26:39.000000', '1', 2, '1', '6', NULL);
INSERT INTO `cid_patient` VALUES (29, 'w', 37, 'w', 1, '2019-04-01 13:26:55.000000', '1', 2, '1', '6', NULL);
INSERT INTO `cid_patient` VALUES (36, '模板：小儿感冒', 26, '', 1, '2019-03-26 09:43:02.000000', '1', 2, '1', '0', NULL);
INSERT INTO `cid_patient` VALUES (36, '模板：小儿感冒', 33, '', 1, '2019-03-29 14:47:28.000000', '1', 2, '1', '3', NULL);
INSERT INTO `cid_patient` VALUES (36, '模板：小儿感冒', 34, '', 1, '2019-03-29 15:20:03.000000', '1', 2, '1', '2', NULL);
INSERT INTO `cid_patient` VALUES (41, '模板：腱鞘炎', 6, '', 1, '2019-04-01 16:23:35.000000', '1', 2, '1', '1', NULL);
INSERT INTO `cid_patient` VALUES (41, '模板：腱鞘炎', 26, '', 1, '2019-03-26 09:43:44.000000', '1', 2, '1', '1', NULL);
INSERT INTO `cid_patient` VALUES (41, '模板：腱鞘炎', 32, '', 1, '2019-03-29 13:05:35.000000', '1', 2, '1', '1', NULL);
INSERT INTO `cid_patient` VALUES (44, '模板：腱鞘炎', 6, '', 1, '2019-04-01 16:23:35.000000', '1', 2, '1', '1', NULL);
INSERT INTO `cid_patient` VALUES (44, '模板：腱鞘炎', 26, '', 1, '2019-03-26 09:43:44.000000', '1', 2, '2', '1', NULL);
INSERT INTO `cid_patient` VALUES (44, '模板：腱鞘炎', 32, '', 1, '2019-03-29 13:05:35.000000', '1', 2, '1', '1', NULL);
INSERT INTO `cid_patient` VALUES (55, '模板：小儿感冒', 26, '', 1, '2019-03-26 09:55:12.000000', '1', 2, '2', '1', NULL);
INSERT INTO `cid_patient` VALUES (55, '模板：小儿感冒', 33, '', 1, '2019-03-29 14:47:28.000000', '1', 2, '1', '3', NULL);
INSERT INTO `cid_patient` VALUES (55, '模板：小儿感冒', 34, '', 1, '2019-03-29 15:20:02.000000', '1', 2, '2', '2', NULL);

-- ----------------------------
-- Table structure for cid_tem
-- ----------------------------
DROP TABLE IF EXISTS `cid_tem`;
CREATE TABLE `cid_tem`  (
  `t_id` int(0) NOT NULL AUTO_INCREMENT COMMENT '模板id',
  `t_name` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '模板名称',
  `cid_type` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '记录类型',
  `del` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '是否被删除（空代表还在）',
  PRIMARY KEY (`t_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of cid_tem
-- ----------------------------
INSERT INTO `cid_tem` VALUES (1, '小儿感冒', '1', NULL);
INSERT INTO `cid_tem` VALUES (2, '腱鞘炎', '1', NULL);
INSERT INTO `cid_tem` VALUES (3, '肩周炎', '1', NULL);
INSERT INTO `cid_tem` VALUES (4, '骨外伤', '1', NULL);

-- ----------------------------
-- Table structure for cid_tem_det
-- ----------------------------
DROP TABLE IF EXISTS `cid_tem_det`;
CREATE TABLE `cid_tem_det`  (
  `cid_id` int(0) NOT NULL,
  `t_id` int(0) NULL DEFAULT NULL,
  `check_part` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `del` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '是否被删除（空代表还在）',
  PRIMARY KEY (`cid_id`) USING BTREE,
  INDEX `t_id`(`t_id`) USING BTREE,
  CONSTRAINT `t_id` FOREIGN KEY (`t_id`) REFERENCES `cid_tem` (`t_id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of cid_tem_det
-- ----------------------------
INSERT INTO `cid_tem_det` VALUES (1, 4, '全身', NULL);
INSERT INTO `cid_tem_det` VALUES (5, 3, '胸部', NULL);
INSERT INTO `cid_tem_det` VALUES (10, 4, '胃部', NULL);
INSERT INTO `cid_tem_det` VALUES (29, 3, '头部', NULL);
INSERT INTO `cid_tem_det` VALUES (36, 1, '手臂', NULL);
INSERT INTO `cid_tem_det` VALUES (41, 2, '头部', NULL);
INSERT INTO `cid_tem_det` VALUES (44, 2, '腿部', NULL);
INSERT INTO `cid_tem_det` VALUES (55, 1, '胸部', NULL);

-- ----------------------------
-- Table structure for department
-- ----------------------------
DROP TABLE IF EXISTS `department`;
CREATE TABLE `department`  (
  `deptid` int(0) NOT NULL AUTO_INCREMENT COMMENT '科室id',
  `deptname` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '科室名',
  `deptcode` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '科室编码',
  `del` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '是否被删除（空代表还在）',
  PRIMARY KEY (`deptid`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 138 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of department
-- ----------------------------
INSERT INTO `department` VALUES (1, '核医学科', 'HYK', NULL);
INSERT INTO `department` VALUES (2, '美容科', 'YJK', NULL);
INSERT INTO `department` VALUES (3, '护理科', 'HLK', NULL);
INSERT INTO `department` VALUES (4, '体检科', 'TJK', NULL);
INSERT INTO `department` VALUES (5, '急诊科', 'JZK', NULL);
INSERT INTO `department` VALUES (6, '公共卫生与预防科', 'GGWSYYFK', NULL);
INSERT INTO `department` VALUES (7, '设备科', 'SBK', NULL);
INSERT INTO `department` VALUES (8, '财务科', 'CWK', NULL);
INSERT INTO `department` VALUES (9, '心血管内科', 'XXGNK', NULL);
INSERT INTO `department` VALUES (10, '神经内科', 'SJNK', NULL);
INSERT INTO `department` VALUES (11, '普通内科', 'PTNK', NULL);
INSERT INTO `department` VALUES (12, '消化内科', 'XHNK', NULL);
INSERT INTO `department` VALUES (13, '呼吸内科', 'HXNK', NULL);
INSERT INTO `department` VALUES (14, '内分泌科', 'NFMK', NULL);
INSERT INTO `department` VALUES (15, '肾病内科', 'SBNK', NULL);
INSERT INTO `department` VALUES (16, '血液内科', 'XYNK', NULL);
INSERT INTO `department` VALUES (17, '感染内科', 'GRNK', NULL);
INSERT INTO `department` VALUES (18, '老年病内科', 'LNBNK', NULL);
INSERT INTO `department` VALUES (19, '风湿免疫内科', 'FSMYNK', NULL);
INSERT INTO `department` VALUES (20, '透析科', 'TXK', NULL);
INSERT INTO `department` VALUES (21, '变态反应科', 'BTFYK', NULL);
INSERT INTO `department` VALUES (22, '普通外科', 'PTWK', NULL);
INSERT INTO `department` VALUES (23, '泌尿外科', 'MNWK', NULL);
INSERT INTO `department` VALUES (24, '神经外科', 'SJWK', NULL);
INSERT INTO `department` VALUES (25, '胸外科', 'XWK', NULL);
INSERT INTO `department` VALUES (26, '整形外科', 'ZXWK', NULL);
INSERT INTO `department` VALUES (27, '肛肠外科', 'GCWK', NULL);
INSERT INTO `department` VALUES (28, '肝胆外科', 'GDWK', NULL);
INSERT INTO `department` VALUES (29, '乳腺外科', 'RXWK', NULL);
INSERT INTO `department` VALUES (30, '心血管外科', 'XXGWK', NULL);
INSERT INTO `department` VALUES (31, '心脏外科', 'XZWK', NULL);
INSERT INTO `department` VALUES (32, '器官移植', 'QGYZ', NULL);
INSERT INTO `department` VALUES (33, '微创外科', 'WCWK', NULL);
INSERT INTO `department` VALUES (34, '功能神经外科', 'GNSJWK', NULL);
INSERT INTO `department` VALUES (35, '腺体外科', 'XTWK', NULL);
INSERT INTO `department` VALUES (36, '儿科综合', 'EKZH', NULL);
INSERT INTO `department` VALUES (37, '小儿外科', 'XEWK', NULL);
INSERT INTO `department` VALUES (38, '儿童保健科', 'ETBJK', NULL);
INSERT INTO `department` VALUES (39, '新生儿科', 'XSEK', NULL);
INSERT INTO `department` VALUES (40, '小儿骨科', 'XEGK', NULL);
INSERT INTO `department` VALUES (41, '小儿神经内科', 'XESJNK', NULL);
INSERT INTO `department` VALUES (42, '小儿呼吸科', 'XEHXK', NULL);
INSERT INTO `department` VALUES (43, '小儿血液科', 'XEXYK', NULL);
INSERT INTO `department` VALUES (44, '小儿耳鼻喉科', 'XEEBHK', NULL);
INSERT INTO `department` VALUES (45, '小儿心内科', 'XEXNK', NULL);
INSERT INTO `department` VALUES (46, '小儿康复科', 'XEKFK', NULL);
INSERT INTO `department` VALUES (47, '小儿精神科', 'XEJSK', NULL);
INSERT INTO `department` VALUES (48, '小儿肾内科', 'XESNK', NULL);
INSERT INTO `department` VALUES (49, '小儿消化科', 'XEXHK', NULL);
INSERT INTO `department` VALUES (50, '小儿皮肤科', 'XEPFK', NULL);
INSERT INTO `department` VALUES (51, '小儿急诊科', 'XEJZK', NULL);
INSERT INTO `department` VALUES (52, '小儿内分泌科', 'XENFMK', NULL);
INSERT INTO `department` VALUES (53, '小儿泌尿外科', 'XEMNWK', NULL);
INSERT INTO `department` VALUES (54, '小儿感染科', 'XEGRK', NULL);
INSERT INTO `department` VALUES (55, '小儿心外科', 'XEXWK01', NULL);
INSERT INTO `department` VALUES (56, '小儿胸外科', 'XEXWK02', NULL);
INSERT INTO `department` VALUES (57, '小儿神经外科', 'XESJWK', NULL);
INSERT INTO `department` VALUES (58, '小儿整形科', 'XEZXK', NULL);
INSERT INTO `department` VALUES (59, '小儿风湿免疫科', 'XEFSMYK', NULL);
INSERT INTO `department` VALUES (60, '小儿妇科', 'XEFK', NULL);
INSERT INTO `department` VALUES (61, '传染科', 'CRK', NULL);
INSERT INTO `department` VALUES (62, '肝病科', 'GBK', NULL);
INSERT INTO `department` VALUES (63, '艾滋病科', 'AZBK', NULL);
INSERT INTO `department` VALUES (64, '传染危重室', 'CRWZS', NULL);
INSERT INTO `department` VALUES (65, '妇产科综合', 'FCKZH', NULL);
INSERT INTO `department` VALUES (66, '妇科', 'FK', NULL);
INSERT INTO `department` VALUES (67, '产科', 'CK', NULL);
INSERT INTO `department` VALUES (68, '计划生育科', 'JHSYK', NULL);
INSERT INTO `department` VALUES (69, '妇科内分泌', 'FKNFM', NULL);
INSERT INTO `department` VALUES (70, '遗传咨询科', 'YCZYK', NULL);
INSERT INTO `department` VALUES (71, '产前检查科', 'CQJCK', NULL);
INSERT INTO `department` VALUES (72, '妇泌尿科', 'FMNK', NULL);
INSERT INTO `department` VALUES (73, '前列腺', 'QLX', NULL);
INSERT INTO `department` VALUES (74, '性功能障碍', 'XGNZA', NULL);
INSERT INTO `department` VALUES (75, '生殖器感染', 'SZQGR', NULL);
INSERT INTO `department` VALUES (76, '男性不育', 'NXBY', NULL);
INSERT INTO `department` VALUES (77, '生殖整形', 'SZZX', NULL);
INSERT INTO `department` VALUES (78, '精神科', 'JSK', NULL);
INSERT INTO `department` VALUES (79, '司法鉴定科', 'SFJDK', NULL);
INSERT INTO `department` VALUES (80, '药物依赖科', 'YWYLK', NULL);
INSERT INTO `department` VALUES (81, '中医精神科', 'ZYJSK', NULL);
INSERT INTO `department` VALUES (82, '双相障碍科', 'SXZAK', NULL);
INSERT INTO `department` VALUES (83, '皮肤科', 'PFK', NULL);
INSERT INTO `department` VALUES (84, '性病科', 'XBK', NULL);
INSERT INTO `department` VALUES (85, '中医综合科', 'ZYZHK', NULL);
INSERT INTO `department` VALUES (86, '针灸科', 'ZJK', NULL);
INSERT INTO `department` VALUES (87, '中医骨科', 'ZYGK', NULL);
INSERT INTO `department` VALUES (88, '中医妇产科', 'ZYFCK', NULL);
INSERT INTO `department` VALUES (89, '中医外科', 'ZYWK', NULL);
INSERT INTO `department` VALUES (90, '中医儿科', 'ZYEK', NULL);
INSERT INTO `department` VALUES (91, '中医肛肠科', 'ZYGCK', NULL);
INSERT INTO `department` VALUES (92, '中医皮肤科', 'ZYPFK', NULL);
INSERT INTO `department` VALUES (93, '中医五官科', 'ZYWGK', NULL);
INSERT INTO `department` VALUES (94, '中医按摩科', 'ZYAMK', NULL);
INSERT INTO `department` VALUES (95, '中医消化科', 'ZYXHK', NULL);
INSERT INTO `department` VALUES (96, '中医肿瘤科', 'ZYZLK', NULL);
INSERT INTO `department` VALUES (97, '中医心内科', 'ZYXNK', NULL);
INSERT INTO `department` VALUES (98, '中医神经内科', 'ZYSJNK', NULL);
INSERT INTO `department` VALUES (99, '中医肾病内科', 'ZYSBNK', NULL);
INSERT INTO `department` VALUES (100, '中医内分泌', 'ZYNFM', NULL);
INSERT INTO `department` VALUES (101, '中医呼吸科', 'ZYHXK', NULL);
INSERT INTO `department` VALUES (102, '中医肝病科', 'ZYGBK', NULL);
INSERT INTO `department` VALUES (103, '中医男科', 'ZYNK', NULL);
INSERT INTO `department` VALUES (104, '中医风湿免疫内科', 'ZYFSMYNK', NULL);
INSERT INTO `department` VALUES (105, '中医血液科', 'ZYXYK', NULL);
INSERT INTO `department` VALUES (106, '中医乳腺外科', 'ZYRXWK', NULL);
INSERT INTO `department` VALUES (107, '中医老年病科', 'ZYLNBK', NULL);
INSERT INTO `department` VALUES (108, '肿瘤综合科', 'ZLZHK', NULL);
INSERT INTO `department` VALUES (109, '肿瘤内科', 'ZLNK', NULL);
INSERT INTO `department` VALUES (110, '放疗科', 'FLK', NULL);
INSERT INTO `department` VALUES (111, '肿瘤外科', 'ZLWK', NULL);
INSERT INTO `department` VALUES (112, '肿瘤妇科', 'ZLFK', NULL);
INSERT INTO `department` VALUES (113, '骨肿瘤科', 'GZLK', NULL);
INSERT INTO `department` VALUES (114, '肿瘤康复科', 'ZLKFK', NULL);
INSERT INTO `department` VALUES (115, '骨外科', 'GWK', NULL);
INSERT INTO `department` VALUES (116, '手外科', 'SWK', NULL);
INSERT INTO `department` VALUES (117, '创伤骨科', 'CSGK', NULL);
INSERT INTO `department` VALUES (118, '脊柱外科', 'JZWK', NULL);
INSERT INTO `department` VALUES (119, '骨关节科', 'GGJK', NULL);
INSERT INTO `department` VALUES (120, '骨质疏松科', 'GZSSK', NULL);
INSERT INTO `department` VALUES (121, '矫形骨科', 'JXGK', NULL);
INSERT INTO `department` VALUES (122, '耳鼻咽喉头颈科', 'EBYHTJK', NULL);
INSERT INTO `department` VALUES (123, '口腔科', 'KQK', NULL);
INSERT INTO `department` VALUES (124, '眼科', 'YK', NULL);
INSERT INTO `department` VALUES (125, '康复科', 'KFK', NULL);
INSERT INTO `department` VALUES (126, '理疗科', 'LLK', NULL);
INSERT INTO `department` VALUES (127, '麻醉科', 'MZK', NULL);
INSERT INTO `department` VALUES (128, '疼痛科', 'TTK', NULL);
INSERT INTO `department` VALUES (129, '营养科', 'YYK', NULL);
INSERT INTO `department` VALUES (130, '高压氧科', 'GYYK', NULL);
INSERT INTO `department` VALUES (131, '功能检查科', 'GNJCK', NULL);
INSERT INTO `department` VALUES (132, '病理科', 'BLK', NULL);
INSERT INTO `department` VALUES (133, '检验科', 'JYK', NULL);
INSERT INTO `department` VALUES (134, '实验中心', 'SYZX', NULL);
INSERT INTO `department` VALUES (135, '心电图科', 'XDTK', NULL);
INSERT INTO `department` VALUES (136, '放射科', 'FSK', NULL);
INSERT INTO `department` VALUES (137, '超声诊断科', 'CSZDK', NULL);
INSERT INTO `department` VALUES (138, '医学影像科', 'YXYXK', NULL);

-- ----------------------------
-- Table structure for diagnosis
-- ----------------------------
DROP TABLE IF EXISTS `diagnosis`;
CREATE TABLE `diagnosis`  (
  `r_id` int(0) NOT NULL COMMENT '挂号id',
  `d_id` int(0) NULL DEFAULT NULL COMMENT '疾病id',
  `d_type` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '诊断类型',
  `del` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '是否被删除（空代表还在）',
  PRIMARY KEY (`r_id`) USING BTREE,
  INDEX `d_id`(`d_id`) USING BTREE,
  CONSTRAINT `d_id` FOREIGN KEY (`d_id`) REFERENCES `disease` (`did`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of diagnosis
-- ----------------------------
INSERT INTO `diagnosis` VALUES (3, 103, '1', NULL);
INSERT INTO `diagnosis` VALUES (4, 4, '1', NULL);
INSERT INTO `diagnosis` VALUES (6, 9, '1', NULL);
INSERT INTO `diagnosis` VALUES (9, 5, '1', NULL);
INSERT INTO `diagnosis` VALUES (25, 149, '2', NULL);
INSERT INTO `diagnosis` VALUES (26, 8, '1', NULL);
INSERT INTO `diagnosis` VALUES (27, 8, '1', NULL);
INSERT INTO `diagnosis` VALUES (29, 5, '1', NULL);

-- ----------------------------
-- Table structure for disease
-- ----------------------------
DROP TABLE IF EXISTS `disease`;
CREATE TABLE `disease`  (
  `did` int(0) NOT NULL AUTO_INCREMENT COMMENT '疾病id',
  `dname` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '疾病名称',
  `typeid` int(0) NOT NULL COMMENT '类型id',
  `code` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '助记编码',
  `icdcode` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '国际icd',
  `del` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '是否被删除（空代表还在）',
  PRIMARY KEY (`did`) USING BTREE,
  INDEX `type_id`(`typeid`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 200 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of disease
-- ----------------------------
INSERT INTO `disease` VALUES (1, '古典型霍乱', 1, 'GDXHL', 'A00.051', NULL);
INSERT INTO `disease` VALUES (2, '中型[典型]霍乱', 2, 'ZXDXHL', 'A00.052', NULL);
INSERT INTO `disease` VALUES (3, '重型[暴发型或干性]霍乱', 3, 'ZXBFXHGXHL', 'A00.053', NULL);
INSERT INTO `disease` VALUES (4, '轻型[非典型]霍乱', 4, 'QXFDXHL', 'A00.151', NULL);
INSERT INTO `disease` VALUES (5, '埃尔托霍乱', 5, 'AETHL', 'A00.152', NULL);
INSERT INTO `disease` VALUES (6, '埃尔托小肠炎', 6, 'AETXCY', 'A00.153', NULL);
INSERT INTO `disease` VALUES (7, '霍乱 NOS', 7, 'HL', 'A00.901', NULL);
INSERT INTO `disease` VALUES (8, '伤寒', 8, 'SH', 'A01.001', NULL);
INSERT INTO `disease` VALUES (9, '伤寒杆菌性败血症', 9, 'SHGJXBXZ', 'A01.002', NULL);
INSERT INTO `disease` VALUES (10, '伤寒性脑膜炎', 10, 'SHXNMY', 'A01.003+', NULL);
INSERT INTO `disease` VALUES (11, '伤寒肺炎', 11, 'SHFY', 'A01.051+', NULL);
INSERT INTO `disease` VALUES (12, '伤寒腹膜炎', 12, 'SHFMY', 'A01.052', NULL);
INSERT INTO `disease` VALUES (13, '埃贝特Eberth`s氏病(伤寒)', 13, 'ABTSBSH', 'A01.053', NULL);
INSERT INTO `disease` VALUES (14, '肠出血性伤寒', 14, 'CCXXSH', 'A01.054', NULL);
INSERT INTO `disease` VALUES (15, '伤寒性肠穿孔', 15, 'SHXCCK', 'A01.055', NULL);
INSERT INTO `disease` VALUES (16, '肠伤寒', 16, 'CSH', 'A01.056', NULL);
INSERT INTO `disease` VALUES (17, '伤寒样小肠炎', 17, 'SHYXCY', 'A01.057', NULL);
INSERT INTO `disease` VALUES (18, '甲型副伤寒', 18, 'JXFSH', 'A01.101', NULL);
INSERT INTO `disease` VALUES (19, '乙型副伤寒', 19, 'YXFSH', 'A01.201', NULL);
INSERT INTO `disease` VALUES (20, '丙型副伤寒', 20, 'BXFSH', 'A01.301', NULL);
INSERT INTO `disease` VALUES (21, '副伤寒', 21, 'FSH', 'A01.401', NULL);
INSERT INTO `disease` VALUES (22, 'Ｂ群沙门氏菌肠炎', 22, 'QSMSJCY', 'A02.001', NULL);
INSERT INTO `disease` VALUES (23, 'Ｃ群沙门氏菌肠炎', 23, 'QSMSJCY', 'A02.002', NULL);
INSERT INTO `disease` VALUES (24, '阿哥拉沙门氏菌肠炎', 24, 'AGLSMSJCY', 'A02.003', NULL);
INSERT INTO `disease` VALUES (25, '沙门氏菌性肠炎', 25, 'SMSJXCY', 'A02.004', NULL);
INSERT INTO `disease` VALUES (26, '沙门氏菌伦敦血清型肠炎', 26, 'SMSJLDXQXCY', 'A02.005', NULL);
INSERT INTO `disease` VALUES (27, '沙门氏菌胃肠炎', 27, 'SMSJWCY', 'A02.006', NULL);
INSERT INTO `disease` VALUES (28, '鼠伤寒沙门氏菌性肠炎', 28, 'SSHSMSJXCY', 'A02.007', NULL);
INSERT INTO `disease` VALUES (29, '婴儿沙门氏菌肠炎', 29, 'YESMSJCY', 'A02.008', NULL);
INSERT INTO `disease` VALUES (30, '沙门氏菌肠道感染', 30, 'SMSJCDGR', 'A02.051', NULL);
INSERT INTO `disease` VALUES (31, '沙门氏菌(亚利桑那)小肠炎', 31, 'SMSJYLSNXCY', 'A02.052', NULL);
INSERT INTO `disease` VALUES (32, '沙门氏菌败血症', 32, 'SMSJBXZ', 'A02.101', NULL);
INSERT INTO `disease` VALUES (33, '沙门氏菌鼠伤寒伴有败血症', 33, 'SMSJSSHBYBXZ', 'A02.102', NULL);
INSERT INTO `disease` VALUES (34, '沙门氏菌性肺炎', 34, 'SMSJXFY', 'A02.201+', NULL);
INSERT INTO `disease` VALUES (35, '沙门氏菌性关节炎', 35, 'SMSJXGJY', 'A02.202+', NULL);
INSERT INTO `disease` VALUES (36, '沙门氏菌性脑膜炎', 36, 'SMSJXNMY', 'A02.203+', NULL);
INSERT INTO `disease` VALUES (37, '沙门氏菌性骨髓炎', 37, 'SMSJXGSY', 'A02.251+', NULL);
INSERT INTO `disease` VALUES (38, '沙门氏菌性肾小管-间质病', 38, 'SMSJXSXGJZB', 'A02.252+', NULL);
INSERT INTO `disease` VALUES (39, '其他特指的沙门氏菌感染', 39, 'QTTZDSMSJGR', 'A02.851', NULL);
INSERT INTO `disease` VALUES (40, '沙门氏菌感染 NOS', 40, 'SMSJGR', 'A02.901', NULL);
INSERT INTO `disease` VALUES (41, '鼠伤寒沙门氏菌感染', 41, 'SSHSMSJGR', 'A02.902', NULL);
INSERT INTO `disease` VALUES (42, '沙门氏菌属食物中毒', 42, 'SMSJSSWZD', 'A02.903', NULL);
INSERT INTO `disease` VALUES (43, '什密氏志贺菌痢疾', 43, 'SMSZHJLJ', 'A03.001', NULL);
INSERT INTO `disease` VALUES (44, '志贺-克鲁泽痢疾[A亚群志贺菌病]', 44, 'ZHKLZLJYQZHJB', 'A03.051', NULL);
INSERT INTO `disease` VALUES (45, '施米茨(－施蒂策)痢疾', 45, 'SMCSDCLJ', 'A03.052', NULL);
INSERT INTO `disease` VALUES (46, '弗氏志贺菌痢疾', 46, 'FSZHJLJ', 'A03.101', NULL);
INSERT INTO `disease` VALUES (47, '希斯－罗素细菌性痢疾', 47, 'XSLSXJXLJ', 'A03.151', NULL);
INSERT INTO `disease` VALUES (48, '鲍氏志贺菌痢疾', 48, 'BSZHJLJ', 'A03.201', NULL);
INSERT INTO `disease` VALUES (49, '波伊德细菌性痢疾', 49, 'BYDXJXLJ', 'A03.251', NULL);
INSERT INTO `disease` VALUES (50, '宋内氏志贺菌痢疾', 0, 'SNSZHJLJ', 'A03.301', NULL);
INSERT INTO `disease` VALUES (51, '不定型志贺菌痢疾', 1, 'BDXZHJLJ', 'A03.801', NULL);
INSERT INTO `disease` VALUES (52, '菌痢混合感染', 2, 'JLHHGR', 'A03.802', NULL);
INSERT INTO `disease` VALUES (53, '其他志贺菌痢疾', 3, 'QTZHJLJ', 'A03.851', NULL);
INSERT INTO `disease` VALUES (54, '细菌性痢疾 NOS', 4, 'XJXLJ', 'A03.901', NULL);
INSERT INTO `disease` VALUES (55, '慢性细菌性痢疾急性发作', 5, 'MXXJXLJJXFZ', 'A03.902', NULL);
INSERT INTO `disease` VALUES (56, '慢性迁延型细菌性痢疾', 6, 'MXQYXXJXLJ', 'A03.903', NULL);
INSERT INTO `disease` VALUES (57, '慢性隐伏型菌痢', 7, 'MXYFXJL', 'A03.904', NULL);
INSERT INTO `disease` VALUES (58, '中毒性[暴发型]痢疾', 8, 'ZDXBFXLJ', 'A03.905', NULL);
INSERT INTO `disease` VALUES (59, '细菌性结肠炎', 9, 'XJXJCY', 'A03.951', NULL);
INSERT INTO `disease` VALUES (60, '细菌性关节炎痢疾', 10, 'XJXGJYLJ', 'A03.952+', NULL);
INSERT INTO `disease` VALUES (61, '新生儿肠病原性大肠埃希氏菌肠炎', 11, 'XSECBYXDCAXSJCY', 'A04.001', NULL);
INSERT INTO `disease` VALUES (62, '肠病原性大肠埃希氏菌肠炎', 12, 'CBYXDCAXSJCY', 'A04.002', NULL);
INSERT INTO `disease` VALUES (63, '肠道原病性大肠埃希氏菌感染', 13, 'CDYBXDCAXSJGR', 'A04.051', NULL);
INSERT INTO `disease` VALUES (64, '肠毒性大肠埃希氏菌肠炎', 14, 'CDXDCAXSJCY', 'A04.101', NULL);
INSERT INTO `disease` VALUES (65, '新生儿肠毒性大肠埃希氏菌肠炎', 15, 'XSECDXDCAXSJCY', 'A04.102', NULL);
INSERT INTO `disease` VALUES (66, '肠毒性大肠埃希氏菌感染', 16, 'CDXDCAXSJGR', 'A04.151', NULL);
INSERT INTO `disease` VALUES (67, '侵袭性大肠埃希氏菌肠炎', 17, 'QXXDCAXSJCY', 'A04.201', NULL);
INSERT INTO `disease` VALUES (68, '新生儿侵袭性大肠杆菌肠炎', 18, 'XSEQXXDCGJCY', 'A04.202', NULL);
INSERT INTO `disease` VALUES (69, '出血性大肠埃希氏菌肠炎', 19, 'CXXDCAXSJCY', 'A04.301', NULL);
INSERT INTO `disease` VALUES (70, '新生儿出血性大肠杆菌肠炎', 20, 'XSECXXDCGJCY', 'A04.302', NULL);
INSERT INTO `disease` VALUES (71, '大肠埃希氏杆菌性肠道感染', 21, 'DCAXSGJXCDGR', 'A04.401', NULL);
INSERT INTO `disease` VALUES (72, '新生儿大肠杆菌肠炎', 22, 'XSEDCGJCY', 'A04.402', NULL);
INSERT INTO `disease` VALUES (73, '新生儿粘附性大肠杆菌肠炎', 23, 'XSENFXDCGJCY', 'A04.403', NULL);
INSERT INTO `disease` VALUES (74, '粘附性大肠杆菌肠炎', 24, 'NFXDCGJCY', 'A04.404', NULL);
INSERT INTO `disease` VALUES (75, '弯曲杆菌肠炎', 25, 'WQGJCY', 'A04.501', NULL);
INSERT INTO `disease` VALUES (76, '耶尔森氏菌肠炎[冰箱病]', 26, 'YESSJCYBXB', 'A04.601', NULL);
INSERT INTO `disease` VALUES (77, '难辨梭状芽胞杆菌肠炎', 27, 'NBSZYBGJCY', 'A04.701', NULL);
INSERT INTO `disease` VALUES (78, '难辨梭状芽胞杆菌性小肠结肠炎', 28, 'NBSZYBGJXXCJCY', 'A04.751', NULL);
INSERT INTO `disease` VALUES (79, '吡邻单胞菌肠炎', 29, 'BLDBJCY', 'A04.801', NULL);
INSERT INTO `disease` VALUES (80, '变形杆菌性肠炎', 30, 'BXGJXCY', 'A04.802', NULL);
INSERT INTO `disease` VALUES (81, '产气杆菌肠炎', 31, 'CQGJCY', 'A04.803', NULL);
INSERT INTO `disease` VALUES (82, '肠道厌氧菌感染', 32, 'CDYYJGR', 'A04.804', NULL);
INSERT INTO `disease` VALUES (83, '副霍乱', 33, 'FHL', 'A04.805', NULL);
INSERT INTO `disease` VALUES (84, '副溶血孤菌肠炎', 34, 'FRXGJCY', 'A04.806', NULL);
INSERT INTO `disease` VALUES (85, '金黄色葡萄球菌性肠炎', 35, 'JHSPTQJXCY', 'A04.807', NULL);
INSERT INTO `disease` VALUES (86, '绿脓杆菌性肠炎', 36, 'LNGJXCY', 'A04.808', NULL);
INSERT INTO `disease` VALUES (87, '难辨芽胞杆菌肠炎', 37, 'NBYBGJCY', 'A04.809', NULL);
INSERT INTO `disease` VALUES (88, '嗜水气单胞菌肠炎', 38, 'SSQDBJCY', 'A04.810', NULL);
INSERT INTO `disease` VALUES (89, '产气荚膜梭状芽胞杆菌(产气荚膜杆菌)肠炎', 39, 'CQJMSZYBGJCQJMGJCY', 'A04.851', NULL);
INSERT INTO `disease` VALUES (90, '肠道感染', 40, 'CDGR', 'A04.901', NULL);
INSERT INTO `disease` VALUES (91, '细菌性肠炎 NOS', 41, 'XJXCY', 'A04.902', NULL);
INSERT INTO `disease` VALUES (92, '感染性腹泻', 42, 'GRXFX', 'A04.903', NULL);
INSERT INTO `disease` VALUES (93, '葡萄球菌性食物中毒', 43, 'PTQJXSWZD', 'A05.001', NULL);
INSERT INTO `disease` VALUES (94, '肉毒中毒', 44, 'RDZD', 'A05.101', NULL);
INSERT INTO `disease` VALUES (95, '肉毒梭状芽胞杆菌性食物中毒', 45, 'RDSZYBGJXSWZD', 'A05.151', NULL);
INSERT INTO `disease` VALUES (96, '出血性坏死性肠炎', 46, 'CXXHSXCY', 'A05.201', NULL);
INSERT INTO `disease` VALUES (97, '急性坏死性肠炎', 47, 'JXHSXCY', 'A05.202', NULL);
INSERT INTO `disease` VALUES (98, '急性出血性坏死性肠炎', 48, 'JXCXXHSXCY', 'A05.203', NULL);
INSERT INTO `disease` VALUES (99, '坏死性肠炎', 49, 'HSXCY', 'A05.251', NULL);
INSERT INTO `disease` VALUES (100, '产气夹膜梭状芽胞杆菌[韦尔希梭状芽胞杆菌]性食物中毒', 0, 'CQJMSZYBGJWEXSZYBGJX', 'A05.252', NULL);
INSERT INTO `disease` VALUES (101, '猪腹病', 1, 'ZFB', 'A05.253', NULL);
INSERT INTO `disease` VALUES (102, '副溶血弧菌性食物中毒', 2, 'FRXHJXSWZD', 'A05.301', NULL);
INSERT INTO `disease` VALUES (103, '蜡样芽胞杆菌性食物中毒', 3, 'LYYBGJXSWZD', 'A05.451', NULL);
INSERT INTO `disease` VALUES (104, '大肠杆菌性食物中毒', 4, 'DCGJXSWZD', 'A05.851', NULL);
INSERT INTO `disease` VALUES (105, '嗜盐杆菌性食物中毒', 5, 'SYGJXSWZD', 'A05.852', NULL);
INSERT INTO `disease` VALUES (106, '细菌性食物中毒', 6, 'XJXSWZD', 'A05.901', NULL);
INSERT INTO `disease` VALUES (107, '食物中毒 NOS', 7, 'SWZD', 'A05.951', NULL);
INSERT INTO `disease` VALUES (108, '胃肠型食物中毒', 8, 'WCXSWZD', 'A05.952', NULL);
INSERT INTO `disease` VALUES (109, '香肠(腊肠)食物中毒', 9, 'XCLCSWZD', 'A05.953', NULL);
INSERT INTO `disease` VALUES (110, '阿米巴性肠炎', 10, 'AMBXCY', 'A06.001', NULL);
INSERT INTO `disease` VALUES (111, '阿米巴性结肠炎', 11, 'AMBXJCY', 'A06.002', NULL);
INSERT INTO `disease` VALUES (112, '阿米巴性痢疾', 12, 'AMBXLJ', 'A06.003', NULL);
INSERT INTO `disease` VALUES (113, '肠道阿米巴病 NOS', 13, 'CDAMBB', 'A06.004', NULL);
INSERT INTO `disease` VALUES (114, '急性阿米巴痢疾', 14, 'JXAMBLJ', 'A06.005', NULL);
INSERT INTO `disease` VALUES (115, '急性阿米巴病', 15, 'JXAMBB', 'A06.051', NULL);
INSERT INTO `disease` VALUES (116, '慢性肠道阿米巴病', 16, 'MXCDAMBB', 'A06.101', NULL);
INSERT INTO `disease` VALUES (117, '慢性阿米巴性痢疾', 17, 'MXAMBXLJ', 'A06.151', NULL);
INSERT INTO `disease` VALUES (118, '阿米巴(肠)溃疡', 18, 'AMBCKY', 'A06.152', NULL);
INSERT INTO `disease` VALUES (119, '慢性阿米巴病', 19, 'MXAMBB', 'A06.153', NULL);
INSERT INTO `disease` VALUES (120, '慢性阿米巴病肠炎', 20, 'MXAMBBCY', 'A06.154', NULL);
INSERT INTO `disease` VALUES (121, '非痢疾性阿米巴结肠炎', 21, 'FLJXAMBJCY', 'A06.201', NULL);
INSERT INTO `disease` VALUES (122, '非痢疾性阿米巴肠炎', 22, 'FLJXAMBCY', 'A06.251', NULL);
INSERT INTO `disease` VALUES (123, '急性非痢疾性阿米巴肠炎', 23, 'JXFLJXAMBCY', 'A06.252', NULL);
INSERT INTO `disease` VALUES (124, '慢性非痢疾性阿米巴肠炎', 24, 'MXFLJXAMBCY', 'A06.253', NULL);
INSERT INTO `disease` VALUES (125, '阿米巴性肉芽肿(阿米巴瘤)', 25, 'AMBXRYZAMBL', 'A06.301', NULL);
INSERT INTO `disease` VALUES (126, '阿米巴病肠穿孔', 26, 'AMBBCCK', 'A06.351', NULL);
INSERT INTO `disease` VALUES (127, '肠道阿米巴', 27, 'CDAMB', 'A06.352', NULL);
INSERT INTO `disease` VALUES (128, '阿米巴性肝脓肿', 28, 'AMBXGNZ', 'A06.401', NULL);
INSERT INTO `disease` VALUES (129, '肝阿米巴病', 29, 'GAMBB', 'A06.402', NULL);
INSERT INTO `disease` VALUES (130, '阿米巴脓肿', 30, 'AMBNZ', 'A06.451', NULL);
INSERT INTO `disease` VALUES (131, '阿米巴性肺脓肿', 31, 'AMBXFNZ', 'A06.501+', NULL);
INSERT INTO `disease` VALUES (132, '肝肺阿米巴脓肿', 32, 'GFAMBNZ', 'A06.502+', NULL);
INSERT INTO `disease` VALUES (133, '阿米巴性脑脓肿', 33, 'AMBXNNZ', 'A06.651+', NULL);
INSERT INTO `disease` VALUES (134, '阿米巴脑和肝脓肿', 34, 'AMBNHGNZ', 'A06.652+', NULL);
INSERT INTO `disease` VALUES (135, '阿米巴脑和肺脓肿', 35, 'AMBNHFNZ', 'A06.653+', NULL);
INSERT INTO `disease` VALUES (136, '阿米巴脑和肝、肺脓肿', 36, 'AMBNHGFNZ', 'A06.654+', NULL);
INSERT INTO `disease` VALUES (137, '阿米巴性皮肤溃疡', 37, 'AMBXPFKY', 'A06.701', NULL);
INSERT INTO `disease` VALUES (138, '阿米巴皮炎', 38, 'AMBPY', 'A06.751', NULL);
INSERT INTO `disease` VALUES (139, '肺阿米巴病', 39, 'FAMBB', 'A06.801+', NULL);
INSERT INTO `disease` VALUES (140, '阿米巴性阑尾炎', 40, 'AMBXLWY', 'A06.851', NULL);
INSERT INTO `disease` VALUES (141, '阿米巴性外阴炎', 41, 'AMBXWYY', 'A06.852', NULL);
INSERT INTO `disease` VALUES (142, '阿米巴性心包炎', 42, 'AMBXXBY', 'A06.853+', NULL);
INSERT INTO `disease` VALUES (143, '阿米巴性龟头炎', 43, 'AMBXGTY', 'A06.854+', NULL);
INSERT INTO `disease` VALUES (144, '阿米巴病 NOS', 44, 'AMBB', 'A06.901', NULL);
INSERT INTO `disease` VALUES (145, '小袋虫病', 45, 'XDCB', 'A07.001', NULL);
INSERT INTO `disease` VALUES (146, '小袋虫性痢疾', 46, 'XDCXLJ', 'A07.051', NULL);
INSERT INTO `disease` VALUES (147, '贾第虫病(肠贾第虫)[兰伯鞭毛虫病]', 47, 'JDCBCJDCLBBMCB', 'A07.101', NULL);
INSERT INTO `disease` VALUES (148, '肠梨形鞭毛虫病[蓝氏贾第鞭毛虫病]', 48, 'CLXBMCBLSJDBMCB', 'A07.151', NULL);
INSERT INTO `disease` VALUES (149, '隐孢子虫病', 49, 'YBZCB', 'A07.251', NULL);
INSERT INTO `disease` VALUES (150, '等孢子球虫病(球虫病)', 0, 'DBZQCBQCB', 'A07.301', NULL);
INSERT INTO `disease` VALUES (151, '肠道球虫病', 1, 'CDQCB', 'A07.351', NULL);
INSERT INTO `disease` VALUES (152, '肠道滴虫病', 2, 'CDDCB', 'A07.801', NULL);
INSERT INTO `disease` VALUES (153, '肉孢子虫病', 3, 'RBZCB', 'A07.802', NULL);
INSERT INTO `disease` VALUES (154, '肠道毛滴虫病', 4, 'CDMDCB', 'A07.851', NULL);
INSERT INTO `disease` VALUES (155, '鞭毛虫性腹泻', 5, 'BMCXFX', 'A07.951', NULL);
INSERT INTO `disease` VALUES (156, '原生动物性结肠炎', 6, 'YSDWXJCY', 'A07.952', NULL);
INSERT INTO `disease` VALUES (157, '原生动物性痢疾', 7, 'YSDWXLJ', 'A07.953', NULL);
INSERT INTO `disease` VALUES (158, '原生动物性腹泻', 8, 'YSDWXFX', 'A07.954', NULL);
INSERT INTO `disease` VALUES (159, '旋转(轮状)病毒肠炎', 9, 'XZLZBDCY', 'A08.001', NULL);
INSERT INTO `disease` VALUES (160, '诺瓦克病毒肠炎', 10, 'NWKBDCY', 'A08.101', NULL);
INSERT INTO `disease` VALUES (161, '流行性恶心', 11, 'LXXEX', 'A08.151', NULL);
INSERT INTO `disease` VALUES (162, '流行性病毒性诺瓦克型胃肠病', 12, 'LXXBDXNWKXWCB', 'A08.152', NULL);
INSERT INTO `disease` VALUES (163, '流行性呕吐综合征[布拉德利病]', 13, 'LXXOTZHZBLDLB', 'A08.153', NULL);
INSERT INTO `disease` VALUES (164, '流行性胃肠炎[斯潘塞病]', 14, 'LXXWCYSPSB', 'A08.154', NULL);
INSERT INTO `disease` VALUES (165, '小圆结构病毒性肠炎', 15, 'XYJGBDXCY', 'A08.155', NULL);
INSERT INTO `disease` VALUES (166, '腺病毒肠炎', 16, 'XBDCY', 'A08.201', NULL);
INSERT INTO `disease` VALUES (167, '轮转病毒胃肠炎', 17, 'LZBDWCY', 'A08.351', NULL);
INSERT INTO `disease` VALUES (168, '病毒性肠炎', 18, 'BDXCY', 'A08.401', NULL);
INSERT INTO `disease` VALUES (169, '病毒性胃肠炎', 19, 'BDXWCY', 'A08.402', NULL);
INSERT INTO `disease` VALUES (170, '肠道病毒感染', 20, 'CDBDGR', 'A08.451', NULL);
INSERT INTO `disease` VALUES (171, '病毒性胃肠病', 21, 'BDXWCB', 'A08.452', NULL);
INSERT INTO `disease` VALUES (172, '肺结核，显微镜检证实', 22, 'FJHXWJJZS', 'A15.001', NULL);
INSERT INTO `disease` VALUES (173, '结核性肺纤维变性，经显微镜下痰检查证实', 23, 'JHXFXWBXJXWJXTJCZS', 'A15.051', NULL);
INSERT INTO `disease` VALUES (174, '结核性气胸，经显微镜下痰检查证实', 24, 'JHXQXJXWJXTJCZS', 'A15.052', NULL);
INSERT INTO `disease` VALUES (175, '结核性肺炎，经显微镜下痰检查证实', 25, 'JHXFYJXWJXTJCZS', 'A15.053', NULL);
INSERT INTO `disease` VALUES (176, '结核性支气管扩张，经显微镜下痰检查证实', 26, 'JHXZQGKZJXWJXTJCZS', 'A15.054', NULL);
INSERT INTO `disease` VALUES (177, '肺结核病，仅经痰培养所证实', 27, 'FJHBJJTPYSZS', 'A15.101', NULL);
INSERT INTO `disease` VALUES (178, '结核性肺纤维变性，仅经痰培养所证实', 28, 'JHXFXWBXJJTPYSZS', 'A15.151', NULL);
INSERT INTO `disease` VALUES (179, '结核性气胸，仅经痰培养所证实', 29, 'JHXQXJJTPYSZS', 'A15.152', NULL);
INSERT INTO `disease` VALUES (180, '结核性肺炎，仅经痰培养所证实', 30, 'JHXFYJJTPYSZS', 'A15.153', NULL);
INSERT INTO `disease` VALUES (181, '结核性支气管扩张，仅经痰培养所证实', 31, 'JHXZQGKZJJTPYSZS', 'A15.154', NULL);
INSERT INTO `disease` VALUES (182, '肺结核病，经组织学所证实', 32, 'FJHBJZZXSZS', 'A15.201', NULL);
INSERT INTO `disease` VALUES (183, '结核性肺纤维变性，经组织学所证实', 33, 'JHXFXWBXJZZXSZS', 'A15.251', NULL);
INSERT INTO `disease` VALUES (184, '结核性气胸，经组织学所证实', 34, 'JHXQXJZZXSZS', 'A15.252', NULL);
INSERT INTO `disease` VALUES (185, '结核性肺炎，经组织学所证实', 35, 'JHXFYJZZXSZS', 'A15.253', NULL);
INSERT INTO `disease` VALUES (186, '结核性支气管扩张，经组织学所证实', 36, 'JHXZQGKZJZZXSZS', 'A15.254', NULL);
INSERT INTO `disease` VALUES (187, '肺结核病，经未特指的方法所证实', 37, 'FJHBJWTZDFFSZS', 'A15.351', NULL);
INSERT INTO `disease` VALUES (188, '结核性肺纤维变性，经未特指的方法所证实', 38, 'JHXFXWBXJWTZDFFSZS', 'A15.352', NULL);
INSERT INTO `disease` VALUES (189, '结核性气胸，经未特指的方法所证实', 39, 'JHXQXJWTZDFFSZS', 'A15.353', NULL);
INSERT INTO `disease` VALUES (190, '结核性肺炎，经未特指的方法所证实', 40, 'JHXFYJWTZDFFSZS', 'A15.354', NULL);
INSERT INTO `disease` VALUES (191, '结核性支气管扩张，经未特指的方法所证实', 41, 'JHXZQGKZJWTZDFFSZS', 'A15.355', NULL);
INSERT INTO `disease` VALUES (192, '肺门淋巴结结核病，经细菌学和组织学所证实', 42, 'FMLBJJHBJXJXHZZXSZS', 'A15.451', NULL);
INSERT INTO `disease` VALUES (193, '纵隔淋巴结结核病，经细菌学和组织学所证实', 43, 'ZGLBJJHBJXJXHZZXSZS', 'A15.452', NULL);
INSERT INTO `disease` VALUES (194, '气管支气管淋巴结结核病，经细菌学和组织学所证实', 44, 'QGZQGLBJJHBJXJXHZZXS', 'A15.453', NULL);
INSERT INTO `disease` VALUES (195, '肺门淋巴结结核,已证实', 45, 'FMLBJJHYZS', 'A15.501', NULL);
INSERT INTO `disease` VALUES (196, '支气管结核病，经细菌学和组织学所证实', 46, 'ZQGJHBJXJXHZZXSZS', 'A15.551', NULL);
INSERT INTO `disease` VALUES (197, '声门结核病，经细菌学和组织学所证实', 47, 'SMJHBJXJXHZZXSZS', 'A15.552', NULL);
INSERT INTO `disease` VALUES (198, '喉结核病，经细菌学和组织学所证实', 48, 'HJHBJXJXHZZXSZS', 'A15.553', NULL);
INSERT INTO `disease` VALUES (199, '气管结核病，经细菌学和组织学所证实', 49, 'QGJHBJXJXHZZXSZS', 'A15.554', NULL);
INSERT INTO `disease` VALUES (200, '结核性胸膜炎，经细菌学和组织学所证实', 0, 'JHXXMYJXJXHZZXSZS', 'A15.601', NULL);

-- ----------------------------
-- Table structure for disease_type
-- ----------------------------
DROP TABLE IF EXISTS `disease_type`;
CREATE TABLE `disease_type`  (
  `type_id` int(0) NOT NULL AUTO_INCREMENT COMMENT '疾病类型id',
  `type_name` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '类型名称',
  `del` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '是否被删除（空代表还在）',
  PRIMARY KEY (`type_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 482 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of disease_type
-- ----------------------------
INSERT INTO `disease_type` VALUES (1, '阿米巴病', NULL);
INSERT INTO `disease_type` VALUES (2, '癌症', NULL);
INSERT INTO `disease_type` VALUES (3, '白斑病', NULL);
INSERT INTO `disease_type` VALUES (4, '白内障', NULL);
INSERT INTO `disease_type` VALUES (5, '白血病', NULL);
INSERT INTO `disease_type` VALUES (6, '白血症', NULL);
INSERT INTO `disease_type` VALUES (7, '百日咳', NULL);
INSERT INTO `disease_type` VALUES (8, '败血病', NULL);
INSERT INTO `disease_type` VALUES (9, '败血症', NULL);
INSERT INTO `disease_type` VALUES (10, '斑疹热', NULL);
INSERT INTO `disease_type` VALUES (11, '瘢痕', NULL);
INSERT INTO `disease_type` VALUES (12, '半月板疾病', NULL);
INSERT INTO `disease_type` VALUES (13, '包皮疾病', NULL);
INSERT INTO `disease_type` VALUES (14, '孢子菌病', NULL);
INSERT INTO `disease_type` VALUES (15, '贲门疾病', NULL);
INSERT INTO `disease_type` VALUES (16, '鼻部疾病', NULL);
INSERT INTO `disease_type` VALUES (17, '扁桃体疾病', NULL);
INSERT INTO `disease_type` VALUES (18, '扁桃体炎', NULL);
INSERT INTO `disease_type` VALUES (19, '髌骨疾病', NULL);
INSERT INTO `disease_type` VALUES (20, '病毒病', NULL);
INSERT INTO `disease_type` VALUES (21, '玻璃体疾病', NULL);
INSERT INTO `disease_type` VALUES (22, '玻璃体炎', NULL);
INSERT INTO `disease_type` VALUES (23, '不良性行为', NULL);
INSERT INTO `disease_type` VALUES (24, '不育症', NULL);
INSERT INTO `disease_type` VALUES (25, '产后疾病', NULL);
INSERT INTO `disease_type` VALUES (26, '产科疾病', NULL);
INSERT INTO `disease_type` VALUES (27, '产前检查', NULL);
INSERT INTO `disease_type` VALUES (28, '产伤', NULL);
INSERT INTO `disease_type` VALUES (29, '产伤引起的疾病', NULL);
INSERT INTO `disease_type` VALUES (30, '肠道传染病', NULL);
INSERT INTO `disease_type` VALUES (31, '肠道疾病', NULL);
INSERT INTO `disease_type` VALUES (32, '肠梗阻', NULL);
INSERT INTO `disease_type` VALUES (33, '肠炎', NULL);
INSERT INTO `disease_type` VALUES (34, '痴呆', NULL);
INSERT INTO `disease_type` VALUES (35, '齿槽疾病', NULL);
INSERT INTO `disease_type` VALUES (36, '虫病', NULL);
INSERT INTO `disease_type` VALUES (37, '抽动症', NULL);
INSERT INTO `disease_type` VALUES (38, '出血', NULL);
INSERT INTO `disease_type` VALUES (39, '出血热', NULL);
INSERT INTO `disease_type` VALUES (40, '除异物', NULL);
INSERT INTO `disease_type` VALUES (41, '搐动症', NULL);
INSERT INTO `disease_type` VALUES (42, '搐搦症', NULL);
INSERT INTO `disease_type` VALUES (43, '疮', NULL);
INSERT INTO `disease_type` VALUES (44, '创伤性疾病', NULL);
INSERT INTO `disease_type` VALUES (45, '垂体疾病', NULL);
INSERT INTO `disease_type` VALUES (46, '唇裂', NULL);
INSERT INTO `disease_type` VALUES (47, '促性腺激素缺乏症', NULL);
INSERT INTO `disease_type` VALUES (48, '痤疮', NULL);
INSERT INTO `disease_type` VALUES (49, '挫伤', NULL);
INSERT INTO `disease_type` VALUES (50, '大肠疾病', NULL);
INSERT INTO `disease_type` VALUES (51, '呆小病', NULL);
INSERT INTO `disease_type` VALUES (52, '代谢紊乱', NULL);
INSERT INTO `disease_type` VALUES (53, '胆囊疾病', NULL);
INSERT INTO `disease_type` VALUES (54, '蛋白尿', NULL);
INSERT INTO `disease_type` VALUES (55, '倒睫', NULL);
INSERT INTO `disease_type` VALUES (56, '低血糖', NULL);
INSERT INTO `disease_type` VALUES (57, '癫痫', NULL);
INSERT INTO `disease_type` VALUES (58, '动脉闭塞', NULL);
INSERT INTO `disease_type` VALUES (59, '动脉供血不足', NULL);
INSERT INTO `disease_type` VALUES (60, '动脉回流', NULL);
INSERT INTO `disease_type` VALUES (61, '动脉扩张', NULL);
INSERT INTO `disease_type` VALUES (62, '动脉瘤', NULL);
INSERT INTO `disease_type` VALUES (63, '动脉硬化', NULL);
INSERT INTO `disease_type` VALUES (64, '冻伤', NULL);
INSERT INTO `disease_type` VALUES (65, '痘病', NULL);
INSERT INTO `disease_type` VALUES (66, '多动症', NULL);
INSERT INTO `disease_type` VALUES (67, '多糖病', NULL);
INSERT INTO `disease_type` VALUES (68, '恶心', NULL);
INSERT INTO `disease_type` VALUES (69, '腭裂', NULL);
INSERT INTO `disease_type` VALUES (70, '耳部疾病', NULL);
INSERT INTO `disease_type` VALUES (71, '耳聋', NULL);
INSERT INTO `disease_type` VALUES (72, '二尖瓣疾病', NULL);
INSERT INTO `disease_type` VALUES (73, '发热', NULL);
INSERT INTO `disease_type` VALUES (74, '发育不良', NULL);
INSERT INTO `disease_type` VALUES (75, '发育疾病', NULL);
INSERT INTO `disease_type` VALUES (76, '房室传导', NULL);
INSERT INTO `disease_type` VALUES (77, '肥胖', NULL);
INSERT INTO `disease_type` VALUES (78, '腓骨疾病', NULL);
INSERT INTO `disease_type` VALUES (79, '肺病', NULL);
INSERT INTO `disease_type` VALUES (80, '肺动脉疾病', NULL);
INSERT INTO `disease_type` VALUES (81, '肺炎', NULL);
INSERT INTO `disease_type` VALUES (82, '分娩', NULL);
INSERT INTO `disease_type` VALUES (83, '蜂窝织炎', NULL);
INSERT INTO `disease_type` VALUES (84, '蜂窝组织炎', NULL);
INSERT INTO `disease_type` VALUES (85, '腐蚀伤', NULL);
INSERT INTO `disease_type` VALUES (86, '妇科疾病', NULL);
INSERT INTO `disease_type` VALUES (87, '附睾疾病', NULL);
INSERT INTO `disease_type` VALUES (88, '附睾炎', NULL);
INSERT INTO `disease_type` VALUES (89, '腹膜疾病', NULL);
INSERT INTO `disease_type` VALUES (90, '腹膜炎', NULL);
INSERT INTO `disease_type` VALUES (91, '腹泻', NULL);
INSERT INTO `disease_type` VALUES (92, '肝部疾病', NULL);
INSERT INTO `disease_type` VALUES (93, '肝炎', NULL);
INSERT INTO `disease_type` VALUES (94, '感冒', NULL);
INSERT INTO `disease_type` VALUES (95, '感染', NULL);
INSERT INTO `disease_type` VALUES (96, '肛门疾病', NULL);
INSERT INTO `disease_type` VALUES (97, '肛周疾病', NULL);
INSERT INTO `disease_type` VALUES (98, '高血糖', NULL);
INSERT INTO `disease_type` VALUES (99, '高血压', NULL);
INSERT INTO `disease_type` VALUES (100, '高脂血症', NULL);
INSERT INTO `disease_type` VALUES (101, '睾丸疾病', NULL);
INSERT INTO `disease_type` VALUES (102, '宫颈疾病', NULL);
INSERT INTO `disease_type` VALUES (103, '宫颈炎', NULL);
INSERT INTO `disease_type` VALUES (104, '巩膜炎', NULL);
INSERT INTO `disease_type` VALUES (105, '佝偻病', NULL);
INSERT INTO `disease_type` VALUES (106, '骨刺', NULL);
INSERT INTO `disease_type` VALUES (107, '骨骺炎', NULL);
INSERT INTO `disease_type` VALUES (108, '骨坏死', NULL);
INSERT INTO `disease_type` VALUES (109, '骨活组织检查', NULL);
INSERT INTO `disease_type` VALUES (110, '骨膜炎', NULL);
INSERT INTO `disease_type` VALUES (111, '骨切开', NULL);
INSERT INTO `disease_type` VALUES (112, '骨软化', NULL);
INSERT INTO `disease_type` VALUES (113, '骨髓疾病', NULL);
INSERT INTO `disease_type` VALUES (114, '骨髓炎', NULL);
INSERT INTO `disease_type` VALUES (115, '骨炎', NULL);
INSERT INTO `disease_type` VALUES (116, '骨折', NULL);
INSERT INTO `disease_type` VALUES (117, '骨质疏松', NULL);
INSERT INTO `disease_type` VALUES (118, '骨质增生', NULL);
INSERT INTO `disease_type` VALUES (119, '骨纵形短缺缺陷', NULL);
INSERT INTO `disease_type` VALUES (120, '鼓膜疾病', NULL);
INSERT INTO `disease_type` VALUES (121, '鼓膜炎', NULL);
INSERT INTO `disease_type` VALUES (122, '鼓室炎', NULL);
INSERT INTO `disease_type` VALUES (123, '关节疾病', NULL);
INSERT INTO `disease_type` VALUES (124, '关节炎', NULL);
INSERT INTO `disease_type` VALUES (125, '冠状动脉疾病', NULL);
INSERT INTO `disease_type` VALUES (126, '龟头炎', NULL);
INSERT INTO `disease_type` VALUES (127, '颌窦炎', NULL);
INSERT INTO `disease_type` VALUES (128, '颌骨疾病', NULL);
INSERT INTO `disease_type` VALUES (129, '颌下腺疾病', NULL);
INSERT INTO `disease_type` VALUES (130, '黑(色素)瘤', NULL);
INSERT INTO `disease_type` VALUES (131, '黑色素瘤', NULL);
INSERT INTO `disease_type` VALUES (132, '虹膜疾病', NULL);
INSERT INTO `disease_type` VALUES (133, '喉部疾病', NULL);
INSERT INTO `disease_type` VALUES (134, '滑膜炎', NULL);
INSERT INTO `disease_type` VALUES (135, '滑囊炎', NULL);
INSERT INTO `disease_type` VALUES (136, '踝部疾病', NULL);
INSERT INTO `disease_type` VALUES (137, '黄疸', NULL);
INSERT INTO `disease_type` VALUES (138, '蛔虫', NULL);
INSERT INTO `disease_type` VALUES (139, '昏迷', NULL);
INSERT INTO `disease_type` VALUES (140, '霍乱', NULL);
INSERT INTO `disease_type` VALUES (141, '肌断裂', NULL);
INSERT INTO `disease_type` VALUES (142, '肌腱疾病', NULL);
INSERT INTO `disease_type` VALUES (143, '肌挛缩', NULL);
INSERT INTO `disease_type` VALUES (144, '肌肉萎缩', NULL);
INSERT INTO `disease_type` VALUES (145, '肌无力', NULL);
INSERT INTO `disease_type` VALUES (146, '肌炎', NULL);
INSERT INTO `disease_type` VALUES (147, '肌张力障碍', NULL);
INSERT INTO `disease_type` VALUES (148, '畸形', NULL);
INSERT INTO `disease_type` VALUES (149, '疾病疗法', NULL);
INSERT INTO `disease_type` VALUES (150, '挤压伤', NULL);
INSERT INTO `disease_type` VALUES (151, '脊髓灰质炎', NULL);
INSERT INTO `disease_type` VALUES (152, '脊髓疾病', NULL);
INSERT INTO `disease_type` VALUES (153, '脊髓炎', NULL);
INSERT INTO `disease_type` VALUES (154, '脊柱疾病', NULL);
INSERT INTO `disease_type` VALUES (155, '脊柱炎', NULL);
INSERT INTO `disease_type` VALUES (156, '寄生虫病', NULL);
INSERT INTO `disease_type` VALUES (157, '甲沟炎', NULL);
INSERT INTO `disease_type` VALUES (158, '甲状旁腺疾病', NULL);
INSERT INTO `disease_type` VALUES (159, '甲状腺疾病', NULL);
INSERT INTO `disease_type` VALUES (160, '假肢安装', NULL);
INSERT INTO `disease_type` VALUES (161, '间质病', NULL);
INSERT INTO `disease_type` VALUES (162, '腱鞘囊肿', NULL);
INSERT INTO `disease_type` VALUES (163, '腱鞘炎', NULL);
INSERT INTO `disease_type` VALUES (164, '浆膜炎', NULL);
INSERT INTO `disease_type` VALUES (165, '焦虑障碍', NULL);
INSERT INTO `disease_type` VALUES (166, '角膜疾病', NULL);
INSERT INTO `disease_type` VALUES (167, '角膜炎', NULL);
INSERT INTO `disease_type` VALUES (168, '脚气', NULL);
INSERT INTO `disease_type` VALUES (169, '疖病', NULL);
INSERT INTO `disease_type` VALUES (170, '结肠疾病', NULL);
INSERT INTO `disease_type` VALUES (171, '结核', NULL);
INSERT INTO `disease_type` VALUES (172, '结节病', NULL);
INSERT INTO `disease_type` VALUES (173, '结膜疾病', NULL);
INSERT INTO `disease_type` VALUES (174, '结膜炎', NULL);
INSERT INTO `disease_type` VALUES (175, '截瘫', NULL);
INSERT INTO `disease_type` VALUES (176, '精囊疾病', NULL);
INSERT INTO `disease_type` VALUES (177, '精神和行为障碍', NULL);
INSERT INTO `disease_type` VALUES (178, '颈动脉疾病', NULL);
INSERT INTO `disease_type` VALUES (179, '痉挛', NULL);
INSERT INTO `disease_type` VALUES (180, '静脉梗阻', NULL);
INSERT INTO `disease_type` VALUES (181, '静脉疾病', NULL);
INSERT INTO `disease_type` VALUES (182, '静脉瘤', NULL);
INSERT INTO `disease_type` VALUES (183, '静脉曲张', NULL);
INSERT INTO `disease_type` VALUES (184, '静脉栓塞', NULL);
INSERT INTO `disease_type` VALUES (185, '静脉炎', NULL);
INSERT INTO `disease_type` VALUES (186, '静脉阻塞', NULL);
INSERT INTO `disease_type` VALUES (187, '疽病', NULL);
INSERT INTO `disease_type` VALUES (188, '菌病', NULL);
INSERT INTO `disease_type` VALUES (189, '菌血病', NULL);
INSERT INTO `disease_type` VALUES (190, '开放性伤口', NULL);
INSERT INTO `disease_type` VALUES (191, '口部疾病', NULL);
INSERT INTO `disease_type` VALUES (192, '口腔炎', NULL);
INSERT INTO `disease_type` VALUES (193, '口炎', NULL);
INSERT INTO `disease_type` VALUES (194, '狂犬病', NULL);
INSERT INTO `disease_type` VALUES (195, '溃疡', NULL);
INSERT INTO `disease_type` VALUES (196, '阑尾炎', NULL);
INSERT INTO `disease_type` VALUES (197, '劳损', NULL);
INSERT INTO `disease_type` VALUES (198, '泪囊炎', NULL);
INSERT INTO `disease_type` VALUES (199, '泪腺炎', NULL);
INSERT INTO `disease_type` VALUES (200, '痢疾', NULL);
INSERT INTO `disease_type` VALUES (201, '裂伤', NULL);
INSERT INTO `disease_type` VALUES (202, '淋巴管疾病', NULL);
INSERT INTO `disease_type` VALUES (203, '淋巴管瘤', NULL);
INSERT INTO `disease_type` VALUES (204, '淋巴管炎', NULL);
INSERT INTO `disease_type` VALUES (205, '淋巴疾病', NULL);
INSERT INTO `disease_type` VALUES (206, '淋巴结病', NULL);
INSERT INTO `disease_type` VALUES (207, '淋巴结炎', NULL);
INSERT INTO `disease_type` VALUES (208, '淋巴瘤', NULL);
INSERT INTO `disease_type` VALUES (209, '淋病', NULL);
INSERT INTO `disease_type` VALUES (210, '流产', NULL);
INSERT INTO `disease_type` VALUES (211, '流感', NULL);
INSERT INTO `disease_type` VALUES (212, '瘘病', NULL);
INSERT INTO `disease_type` VALUES (213, '颅内疾病', NULL);
INSERT INTO `disease_type` VALUES (214, '颅内损伤', NULL);
INSERT INTO `disease_type` VALUES (215, '鲁氏菌病', NULL);
INSERT INTO `disease_type` VALUES (216, '螺旋体病', NULL);
INSERT INTO `disease_type` VALUES (217, '麻痹', NULL);
INSERT INTO `disease_type` VALUES (218, '麻风病', NULL);
INSERT INTO `disease_type` VALUES (219, '麻疹', NULL);
INSERT INTO `disease_type` VALUES (220, '脉管炎', NULL);
INSERT INTO `disease_type` VALUES (221, '脉络膜炎', NULL);
INSERT INTO `disease_type` VALUES (222, '慢性查加斯病', NULL);
INSERT INTO `disease_type` VALUES (223, '盲肠疾病', NULL);
INSERT INTO `disease_type` VALUES (224, '毛囊炎', NULL);
INSERT INTO `disease_type` VALUES (225, '梅毒', NULL);
INSERT INTO `disease_type` VALUES (226, '霉菌病', NULL);
INSERT INTO `disease_type` VALUES (227, '霉菌性疾病', NULL);
INSERT INTO `disease_type` VALUES (228, '免疫性疾病', NULL);
INSERT INTO `disease_type` VALUES (229, '膜睫状体炎', NULL);
INSERT INTO `disease_type` VALUES (230, '男科疾病', NULL);
INSERT INTO `disease_type` VALUES (231, '囊肿', NULL);
INSERT INTO `disease_type` VALUES (232, '脑膜炎', NULL);
INSERT INTO `disease_type` VALUES (233, '脑血管病', NULL);
INSERT INTO `disease_type` VALUES (234, '脑炎', NULL);
INSERT INTO `disease_type` VALUES (235, '内分泌系统疾病', NULL);
INSERT INTO `disease_type` VALUES (236, '念珠菌病', NULL);
INSERT INTO `disease_type` VALUES (237, '尿道疾病', NULL);
INSERT INTO `disease_type` VALUES (238, '尿道炎', NULL);
INSERT INTO `disease_type` VALUES (239, '尿毒症', NULL);
INSERT INTO `disease_type` VALUES (240, '尿失禁', NULL);
INSERT INTO `disease_type` VALUES (241, '凝血疾病', NULL);
INSERT INTO `disease_type` VALUES (242, '脓疱', NULL);
INSERT INTO `disease_type` VALUES (243, '脓肿', NULL);
INSERT INTO `disease_type` VALUES (244, '疟疾', NULL);
INSERT INTO `disease_type` VALUES (245, '帕金森', NULL);
INSERT INTO `disease_type` VALUES (246, '膀胱疾病', NULL);
INSERT INTO `disease_type` VALUES (247, '膀胱炎', NULL);
INSERT INTO `disease_type` VALUES (248, '疱疹', NULL);
INSERT INTO `disease_type` VALUES (249, '盆腔炎', NULL);
INSERT INTO `disease_type` VALUES (250, '皮肤病', NULL);
INSERT INTO `disease_type` VALUES (251, '皮瘤', NULL);
INSERT INTO `disease_type` VALUES (252, '皮炎', NULL);
INSERT INTO `disease_type` VALUES (253, '脾病', NULL);
INSERT INTO `disease_type` VALUES (254, '偏瘫', NULL);
INSERT INTO `disease_type` VALUES (255, '贫血', NULL);
INSERT INTO `disease_type` VALUES (256, '品行障碍', NULL);
INSERT INTO `disease_type` VALUES (257, '破伤风', NULL);
INSERT INTO `disease_type` VALUES (258, '葡萄胎', NULL);
INSERT INTO `disease_type` VALUES (259, '其他肠类疾病', NULL);
INSERT INTO `disease_type` VALUES (260, '其他动脉疾病', NULL);
INSERT INTO `disease_type` VALUES (261, '其他瘤', NULL);
INSERT INTO `disease_type` VALUES (262, '其他胰腺疾病', NULL);
INSERT INTO `disease_type` VALUES (263, '其他章疾病', NULL);
INSERT INTO `disease_type` VALUES (264, '其它腹部疾病', NULL);
INSERT INTO `disease_type` VALUES (265, '其它骨疾病', NULL);
INSERT INTO `disease_type` VALUES (266, '其它呼吸疾病', NULL);
INSERT INTO `disease_type` VALUES (267, '其它肌部疾病', NULL);
INSERT INTO `disease_type` VALUES (268, '其它疾病', NULL);
INSERT INTO `disease_type` VALUES (269, '其它泌尿系统疾病', NULL);
INSERT INTO `disease_type` VALUES (270, '其它气管病', NULL);
INSERT INTO `disease_type` VALUES (271, '其它热病', NULL);
INSERT INTO `disease_type` VALUES (272, '其它舌部疾病', NULL);
INSERT INTO `disease_type` VALUES (273, '其它疼痛', NULL);
INSERT INTO `disease_type` VALUES (274, '其它胸部疾病', NULL);
INSERT INTO `disease_type` VALUES (275, '其它血液疾病', NULL);
INSERT INTO `disease_type` VALUES (276, '其它咽部疾病', NULL);
INSERT INTO `disease_type` VALUES (277, '其它炎症', NULL);
INSERT INTO `disease_type` VALUES (278, '其它暂时无法归类的', NULL);
INSERT INTO `disease_type` VALUES (279, '其它支气管病', NULL);
INSERT INTO `disease_type` VALUES (280, '其它足部疾病', NULL);
INSERT INTO `disease_type` VALUES (281, '脐带疾病', NULL);
INSERT INTO `disease_type` VALUES (282, '气道疾病', NULL);
INSERT INTO `disease_type` VALUES (283, '气管炎', NULL);
INSERT INTO `disease_type` VALUES (284, '气胸', NULL);
INSERT INTO `disease_type` VALUES (285, '前列腺疾病', NULL);
INSERT INTO `disease_type` VALUES (286, '前列腺炎', NULL);
INSERT INTO `disease_type` VALUES (287, '浅表损伤', NULL);
INSERT INTO `disease_type` VALUES (288, '羟化酶缺陷', NULL);
INSERT INTO `disease_type` VALUES (289, '情感障碍', NULL);
INSERT INTO `disease_type` VALUES (290, '曲霉病', NULL);
INSERT INTO `disease_type` VALUES (291, '染色体疾病', NULL);
INSERT INTO `disease_type` VALUES (292, '人格障碍', NULL);
INSERT INTO `disease_type` VALUES (293, '妊娠引起的疾病', NULL);
INSERT INTO `disease_type` VALUES (294, '肉瘤', NULL);
INSERT INTO `disease_type` VALUES (295, '肉芽肿', NULL);
INSERT INTO `disease_type` VALUES (296, '蠕虫病', NULL);
INSERT INTO `disease_type` VALUES (297, '乳突炎', NULL);
INSERT INTO `disease_type` VALUES (298, '乳腺疾病', NULL);
INSERT INTO `disease_type` VALUES (299, '乳腺炎', NULL);
INSERT INTO `disease_type` VALUES (300, '软骨病', NULL);
INSERT INTO `disease_type` VALUES (301, '软骨瘤', NULL);
INSERT INTO `disease_type` VALUES (302, '腮腺炎', NULL);
INSERT INTO `disease_type` VALUES (303, '三尖瓣疾病', NULL);
INSERT INTO `disease_type` VALUES (304, '晒伤', NULL);
INSERT INTO `disease_type` VALUES (305, '疝病', NULL);
INSERT INTO `disease_type` VALUES (306, '伤寒', NULL);
INSERT INTO `disease_type` VALUES (307, '上肢疾病', NULL);
INSERT INTO `disease_type` VALUES (308, '上肢其它疾病', NULL);
INSERT INTO `disease_type` VALUES (309, '烧伤', NULL);
INSERT INTO `disease_type` VALUES (310, '舌炎', NULL);
INSERT INTO `disease_type` VALUES (311, '蛇咬伤', NULL);
INSERT INTO `disease_type` VALUES (312, '身材矮小', NULL);
INSERT INTO `disease_type` VALUES (313, '神经系统疾病', NULL);
INSERT INTO `disease_type` VALUES (314, '肾病', NULL);
INSERT INTO `disease_type` VALUES (315, '肾炎', NULL);
INSERT INTO `disease_type` VALUES (316, '声带疾病', NULL);
INSERT INTO `disease_type` VALUES (317, '失语', NULL);
INSERT INTO `disease_type` VALUES (318, '虱病', NULL);
INSERT INTO `disease_type` VALUES (319, '湿疣', NULL);
INSERT INTO `disease_type` VALUES (320, '湿疹', NULL);
INSERT INTO `disease_type` VALUES (321, '十二指肠疾病', NULL);
INSERT INTO `disease_type` VALUES (322, '食道疾病', NULL);
INSERT INTO `disease_type` VALUES (323, '食管疾病', NULL);
INSERT INTO `disease_type` VALUES (324, '食物中毒', NULL);
INSERT INTO `disease_type` VALUES (325, '视力疾病', NULL);
INSERT INTO `disease_type` VALUES (326, '视网膜疾病', NULL);
INSERT INTO `disease_type` VALUES (327, '视网膜炎', NULL);
INSERT INTO `disease_type` VALUES (328, '手部疾病', NULL);
INSERT INTO `disease_type` VALUES (329, '手部其它疾病', NULL);
INSERT INTO `disease_type` VALUES (330, '手术', NULL);
INSERT INTO `disease_type` VALUES (331, '输精管疾病', NULL);
INSERT INTO `disease_type` VALUES (332, '输卵管疾病', NULL);
INSERT INTO `disease_type` VALUES (333, '输尿管疾病', NULL);
INSERT INTO `disease_type` VALUES (334, '输尿管炎', NULL);
INSERT INTO `disease_type` VALUES (335, '鼠疫', NULL);
INSERT INTO `disease_type` VALUES (336, '水痘', NULL);
INSERT INTO `disease_type` VALUES (337, '水肿', NULL);
INSERT INTO `disease_type` VALUES (338, '睡眠疾病', NULL);
INSERT INTO `disease_type` VALUES (339, '四肢其它疾病', NULL);
INSERT INTO `disease_type` VALUES (340, '粟疹', NULL);
INSERT INTO `disease_type` VALUES (341, '酸尿证', NULL);
INSERT INTO `disease_type` VALUES (342, '酸血症', NULL);
INSERT INTO `disease_type` VALUES (343, '损伤', NULL);
INSERT INTO `disease_type` VALUES (344, '锁骨疾病', NULL);
INSERT INTO `disease_type` VALUES (345, '瘫痪', NULL);
INSERT INTO `disease_type` VALUES (346, '炭疽', NULL);
INSERT INTO `disease_type` VALUES (347, '唐氏综合征', NULL);
INSERT INTO `disease_type` VALUES (348, '糖尿病', NULL);
INSERT INTO `disease_type` VALUES (349, '天花', NULL);
INSERT INTO `disease_type` VALUES (350, '听道疾病', NULL);
INSERT INTO `disease_type` VALUES (351, '听骨疾病', NULL);
INSERT INTO `disease_type` VALUES (352, '听觉丧失', NULL);
INSERT INTO `disease_type` VALUES (353, '听力疾病', NULL);
INSERT INTO `disease_type` VALUES (354, '瞳孔疾病', NULL);
INSERT INTO `disease_type` VALUES (355, '痛风', NULL);
INSERT INTO `disease_type` VALUES (356, '痛经', NULL);
INSERT INTO `disease_type` VALUES (357, '头部疾病', NULL);
INSERT INTO `disease_type` VALUES (358, '头痛', NULL);
INSERT INTO `disease_type` VALUES (359, '土拉菌病', NULL);
INSERT INTO `disease_type` VALUES (360, '腿部疾病', NULL);
INSERT INTO `disease_type` VALUES (361, '吞咽困难', NULL);
INSERT INTO `disease_type` VALUES (362, '脱出', NULL);
INSERT INTO `disease_type` VALUES (363, '脱发', NULL);
INSERT INTO `disease_type` VALUES (364, '脱髓鞘', NULL);
INSERT INTO `disease_type` VALUES (365, '脱位', NULL);
INSERT INTO `disease_type` VALUES (366, '外翻', NULL);
INSERT INTO `disease_type` VALUES (367, '外阴疾病', NULL);
INSERT INTO `disease_type` VALUES (368, '外阴炎', NULL);
INSERT INTO `disease_type` VALUES (369, '维生素疾病', NULL);
INSERT INTO `disease_type` VALUES (370, '胃部疾病', NULL);
INSERT INTO `disease_type` VALUES (371, '胃炎', NULL);
INSERT INTO `disease_type` VALUES (372, '吸虫病', NULL);
INSERT INTO `disease_type` VALUES (373, '吸收障碍', NULL);
INSERT INTO `disease_type` VALUES (374, '息肉', NULL);
INSERT INTO `disease_type` VALUES (375, '膝部疾病', NULL);
INSERT INTO `disease_type` VALUES (376, '细胞疾病', NULL);
INSERT INTO `disease_type` VALUES (377, '细胞瘤', NULL);
INSERT INTO `disease_type` VALUES (378, '细胞再生障碍', NULL);
INSERT INTO `disease_type` VALUES (379, '细胞增多症', NULL);
INSERT INTO `disease_type` VALUES (380, '细菌性疾病', NULL);
INSERT INTO `disease_type` VALUES (381, '下疳', NULL);
INSERT INTO `disease_type` VALUES (382, '下肢其它疾病', NULL);
INSERT INTO `disease_type` VALUES (383, '先天性疾病', NULL);
INSERT INTO `disease_type` VALUES (384, '纤维瘤', NULL);
INSERT INTO `disease_type` VALUES (385, '腺体疾病', NULL);
INSERT INTO `disease_type` VALUES (386, '腺样体疾病', NULL);
INSERT INTO `disease_type` VALUES (387, '消化道疾病', NULL);
INSERT INTO `disease_type` VALUES (388, '消化疾病', NULL);
INSERT INTO `disease_type` VALUES (389, '小肠疾病', NULL);
INSERT INTO `disease_type` VALUES (390, '哮喘', NULL);
INSERT INTO `disease_type` VALUES (391, '斜视', NULL);
INSERT INTO `disease_type` VALUES (392, '心瓣疾病', NULL);
INSERT INTO `disease_type` VALUES (393, '心包疾病', NULL);
INSERT INTO `disease_type` VALUES (394, '心包炎', NULL);
INSERT INTO `disease_type` VALUES (395, '心动过缓', NULL);
INSERT INTO `disease_type` VALUES (396, '心动过速', NULL);
INSERT INTO `disease_type` VALUES (397, '心肌病', NULL);
INSERT INTO `disease_type` VALUES (398, '心绞痛', NULL);
INSERT INTO `disease_type` VALUES (399, '心境障碍', NULL);
INSERT INTO `disease_type` VALUES (400, '心律疾病', NULL);
INSERT INTO `disease_type` VALUES (401, '心内膜炎', NULL);
INSERT INTO `disease_type` VALUES (402, '心血管病', NULL);
INSERT INTO `disease_type` VALUES (403, '心脏病', NULL);
INSERT INTO `disease_type` VALUES (404, '心脏疾病', NULL);
INSERT INTO `disease_type` VALUES (405, '新生儿疾病', NULL);
INSERT INTO `disease_type` VALUES (406, '胸骨疾病', NULL);
INSERT INTO `disease_type` VALUES (407, '胸膜疾病', NULL);
INSERT INTO `disease_type` VALUES (408, '胸膜炎', NULL);
INSERT INTO `disease_type` VALUES (409, '胸腺疾病', NULL);
INSERT INTO `disease_type` VALUES (410, '休克', NULL);
INSERT INTO `disease_type` VALUES (411, '徐动症', NULL);
INSERT INTO `disease_type` VALUES (412, '眩晕', NULL);
INSERT INTO `disease_type` VALUES (413, '血管疾病', NULL);
INSERT INTO `disease_type` VALUES (414, '血管瘤', NULL);
INSERT INTO `disease_type` VALUES (415, '血管炎', NULL);
INSERT INTO `disease_type` VALUES (416, '血红蛋白病', NULL);
INSERT INTO `disease_type` VALUES (417, '血红蛋白尿', NULL);
INSERT INTO `disease_type` VALUES (418, '血尿', NULL);
INSERT INTO `disease_type` VALUES (419, '血栓', NULL);
INSERT INTO `disease_type` VALUES (420, '血小板疾病', NULL);
INSERT INTO `disease_type` VALUES (421, '血友病', NULL);
INSERT INTO `disease_type` VALUES (422, '血肿', NULL);
INSERT INTO `disease_type` VALUES (423, '荨麻疹', NULL);
INSERT INTO `disease_type` VALUES (424, '循环系统疾病', NULL);
INSERT INTO `disease_type` VALUES (425, '牙齿疾病', NULL);
INSERT INTO `disease_type` VALUES (426, '芽生菌病', NULL);
INSERT INTO `disease_type` VALUES (427, '雅司病', NULL);
INSERT INTO `disease_type` VALUES (428, '咽峡炎', NULL);
INSERT INTO `disease_type` VALUES (429, '咽炎', NULL);
INSERT INTO `disease_type` VALUES (430, '眼部疾病', NULL);
INSERT INTO `disease_type` VALUES (431, '咬伤', NULL);
INSERT INTO `disease_type` VALUES (432, '药物反应', NULL);
INSERT INTO `disease_type` VALUES (433, '药物引起的疾病', NULL);
INSERT INTO `disease_type` VALUES (434, '依恋障碍', NULL);
INSERT INTO `disease_type` VALUES (435, '胰部疾病', NULL);
INSERT INTO `disease_type` VALUES (436, '胰岛素疾病', NULL);
INSERT INTO `disease_type` VALUES (437, '胰腺炎', NULL);
INSERT INTO `disease_type` VALUES (438, '移植', NULL);
INSERT INTO `disease_type` VALUES (439, '遗传疾病', NULL);
INSERT INTO `disease_type` VALUES (440, '遗尿', NULL);
INSERT INTO `disease_type` VALUES (441, '遗尿症', NULL);
INSERT INTO `disease_type` VALUES (442, '抑郁', NULL);
INSERT INTO `disease_type` VALUES (443, '疫苗引起的疾病', NULL);
INSERT INTO `disease_type` VALUES (444, '癔病', NULL);
INSERT INTO `disease_type` VALUES (445, '阴囊疾病', NULL);
INSERT INTO `disease_type` VALUES (446, '引产', NULL);
INSERT INTO `disease_type` VALUES (447, '引流', NULL);
INSERT INTO `disease_type` VALUES (448, '营养不良', NULL);
INSERT INTO `disease_type` VALUES (449, '营养过度', NULL);
INSERT INTO `disease_type` VALUES (450, '蝇蛆病', NULL);
INSERT INTO `disease_type` VALUES (451, '痈病', NULL);
INSERT INTO `disease_type` VALUES (452, '幽门疾病', NULL);
INSERT INTO `disease_type` VALUES (453, '疣病', NULL);
INSERT INTO `disease_type` VALUES (454, '幼儿急疹', NULL);
INSERT INTO `disease_type` VALUES (455, '原虫性疾病', NULL);
INSERT INTO `disease_type` VALUES (456, '晕动病', NULL);
INSERT INTO `disease_type` VALUES (457, '晕厥', NULL);
INSERT INTO `disease_type` VALUES (458, '孕产妇医疗', NULL);
INSERT INTO `disease_type` VALUES (459, '早熟', NULL);
INSERT INTO `disease_type` VALUES (460, '造影术', NULL);
INSERT INTO `disease_type` VALUES (461, '粘膜斑', NULL);
INSERT INTO `disease_type` VALUES (462, '粘液囊炎', NULL);
INSERT INTO `disease_type` VALUES (463, '照相术', NULL);
INSERT INTO `disease_type` VALUES (464, '真菌性疾病', NULL);
INSERT INTO `disease_type` VALUES (465, '支气管炎', NULL);
INSERT INTO `disease_type` VALUES (466, '肢体疾病', NULL);
INSERT INTO `disease_type` VALUES (467, '脂肪瘤', NULL);
INSERT INTO `disease_type` VALUES (468, '直肠疾病', NULL);
INSERT INTO `disease_type` VALUES (469, '指', NULL);
INSERT INTO `disease_type` VALUES (470, '痣', NULL);
INSERT INTO `disease_type` VALUES (471, '中毒', NULL);
INSERT INTO `disease_type` VALUES (472, '中医疾病', NULL);
INSERT INTO `disease_type` VALUES (473, '肿瘤', NULL);
INSERT INTO `disease_type` VALUES (474, '肿胀', NULL);
INSERT INTO `disease_type` VALUES (475, '蛛网膜疾病', NULL);
INSERT INTO `disease_type` VALUES (476, '蛛网膜炎', NULL);
INSERT INTO `disease_type` VALUES (477, '主动脉疾病', NULL);
INSERT INTO `disease_type` VALUES (478, '注射', NULL);
INSERT INTO `disease_type` VALUES (479, '椎管疾病', NULL);
INSERT INTO `disease_type` VALUES (480, '椎管狭窄', NULL);
INSERT INTO `disease_type` VALUES (481, '紫癜', NULL);
INSERT INTO `disease_type` VALUES (482, '自杀', NULL);

-- ----------------------------
-- Table structure for drug
-- ----------------------------
DROP TABLE IF EXISTS `drug`;
CREATE TABLE `drug`  (
  `drugid` int(0) NOT NULL AUTO_INCREMENT COMMENT '药品id',
  `drugname` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '药品名',
  `drugprice` double(10, 2) NULL DEFAULT NULL COMMENT '单价',
  `specification` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '规格',
  `unit` varchar(5) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '单位',
  `del` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '是否被删除（空代表还在）',
  PRIMARY KEY (`drugid`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 100 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of drug
-- ----------------------------
INSERT INTO `drug` VALUES (1, '注射用甲氨喋呤', 15.73, '1g×1支', '支', NULL);
INSERT INTO `drug` VALUES (2, '氟康唑氯化钠注射液(大扶康)', 7.01, '200mg×100ml/瓶', '瓶', NULL);
INSERT INTO `drug` VALUES (3, '50%葡萄糖注射液(塑瓶)', 25.16, '10:20ml×1支', '支', NULL);
INSERT INTO `drug` VALUES (4, '盐酸特比萘芬泡腾片（丁克）', 40.62, '50mg×7片/盒', '盒', NULL);
INSERT INTO `drug` VALUES (5, '红芪冲剂', 30.79, '10g/袋', '袋', NULL);
INSERT INTO `drug` VALUES (6, '盐酸氨酮戊酸散（外用）', 19.51, '118mg×1瓶', '瓶', NULL);
INSERT INTO `drug` VALUES (7, '盐酸美金刚片(易贝申)', 22.05, '10mg×28片/盒', '盒', NULL);
INSERT INTO `drug` VALUES (8, '磷酸奥司他韦胶囊(达菲)', 60.96, '75mg×10粒/盒', '盒', NULL);
INSERT INTO `drug` VALUES (9, '泽泻颗粒', 0.09, '1g/10g/袋', '袋', NULL);
INSERT INTO `drug` VALUES (10, '山药颗粒', 6.79, '0.5g/10g/袋', '袋', NULL);
INSERT INTO `drug` VALUES (11, '熟大黄颗粒', 23.51, '1g/6g/袋', '袋', NULL);
INSERT INTO `drug` VALUES (12, '黄连颗粒', 1.07, '0.5g/3g袋', '袋', NULL);
INSERT INTO `drug` VALUES (13, '黄芩颗粒(酒)', 81.74, '2g/10g/袋', '袋', NULL);
INSERT INTO `drug` VALUES (14, '炒白芍颗粒', 31.86, '1g/10g/袋', '袋', NULL);
INSERT INTO `drug` VALUES (15, '炒白术颗粒', 41.50, '3g/10g/袋', '袋', NULL);
INSERT INTO `drug` VALUES (16, '白芷颗粒', 67.72, '1g/6g/袋', '袋', NULL);
INSERT INTO `drug` VALUES (17, '薤白颗粒', 17.95, '2.5g/10g袋', '袋', NULL);
INSERT INTO `drug` VALUES (18, '川芎颗粒', 0.70, '2g/6g/袋', '袋', NULL);
INSERT INTO `drug` VALUES (19, '维生素K1注射液', 10.39, '1ml:10mg×10支/盒', '盒', NULL);
INSERT INTO `drug` VALUES (20, '利培酮片（维思通）', 5.52, '1mg×20片/盒', '盒', NULL);
INSERT INTO `drug` VALUES (21, '0.9%氯化钠注射液(塑瓶)', 14.34, '2.25g:250ml×1瓶', '瓶', NULL);
INSERT INTO `drug` VALUES (22, '0.9%氯化钠注射液（百特）', 46.91, '500ml×1袋', '瓶', NULL);
INSERT INTO `drug` VALUES (23, '0.9%氯化钠注射液(塑瓶)', 6.34, '0.9g:100ml×1瓶', '瓶', NULL);
INSERT INTO `drug` VALUES (24, '10%葡萄糖注射液(塑瓶)', 5.04, '50g:500ml×1瓶', '瓶', NULL);
INSERT INTO `drug` VALUES (25, '10%葡萄糖注射液(塑瓶)', 16.02, '25g:250ml×1瓶', '袋', NULL);
INSERT INTO `drug` VALUES (26, '5%葡萄糖注射液(塑瓶)', 47.78, '25g:500ml×1瓶', '瓶', NULL);
INSERT INTO `drug` VALUES (27, '5%葡萄糖注射液(塑瓶)', 45.62, '12.5g:250ml×1瓶', '瓶', NULL);
INSERT INTO `drug` VALUES (28, '5%葡萄糖注射液(塑瓶)', 17.53, '5g:100ml×1瓶', '瓶', NULL);
INSERT INTO `drug` VALUES (29, '胃苏颗粒', 1.73, '5g*9袋/盒', '盒', NULL);
INSERT INTO `drug` VALUES (30, '复方甘露醇注射液(伸宁)', 15.56, '250ml×1袋', '袋', NULL);
INSERT INTO `drug` VALUES (31, '艾塞那肽注射液(百泌达)', 23.71, '5ug:1.2ml×1支', '支', NULL);
INSERT INTO `drug` VALUES (32, '艾塞那肽注射液(百泌达)', 91.92, '10ug:2.4ml×1支', '支', NULL);
INSERT INTO `drug` VALUES (33, '丹参颗粒', 11.61, '2g/10g/袋', '袋', NULL);
INSERT INTO `drug` VALUES (34, '亮菌甲素注射液', 62.41, '10ml:5mg×1支', '支', NULL);
INSERT INTO `drug` VALUES (35, '瞿麦', 43.84, '1000mg/g', '克', NULL);
INSERT INTO `drug` VALUES (36, '肠内营养粉剂(安素)', 3.12, '1000mg/g', '克', NULL);
INSERT INTO `drug` VALUES (37, '桉叶油', 3.40, '1000g/瓶', '瓶', NULL);
INSERT INTO `drug` VALUES (38, '肉苁蓉', 51.82, '1000mg/g', '克', NULL);
INSERT INTO `drug` VALUES (39, '番木鳖酊', 16.84, '1000mg/g', '克', NULL);
INSERT INTO `drug` VALUES (40, '枸橼酸芬太尼注射液', 19.42, '0.1mg×1支', '支', NULL);
INSERT INTO `drug` VALUES (41, '枸橼酸芬太尼注射液', 2.66, '0.5mg×1支', '支', NULL);
INSERT INTO `drug` VALUES (42, '酚红(AR)', 13.43, '25g×1瓶', '瓶', NULL);
INSERT INTO `drug` VALUES (43, '酚红IND', 4.07, '25g×1瓶', '瓶', NULL);
INSERT INTO `drug` VALUES (44, '酚酞', 10.42, '25g×1瓶', '瓶', NULL);
INSERT INTO `drug` VALUES (45, '蜂蜡', 3.47, '500g×1瓶', '瓶', NULL);
INSERT INTO `drug` VALUES (46, '呋喃西林', 37.75, '25g×1袋', '袋', NULL);
INSERT INTO `drug` VALUES (47, '氯雷他定糖浆(开瑞坦)', 72.62, '60ml：60mg×1瓶', '瓶', NULL);
INSERT INTO `drug` VALUES (48, '丙泊酚注射液(得普利麻)', 2.23, '50ml：0.5g×1瓶', '瓶', NULL);
INSERT INTO `drug` VALUES (49, 'BG维生素E软胶囊', 11.03, '0.1g×30粒/盒', '盒', NULL);
INSERT INTO `drug` VALUES (50, '贝前列素钠片', 30.09, '20ug×10片/盒', '盒', NULL);
INSERT INTO `drug` VALUES (51, '盐酸伊立替康注射液(开普拓）', 7.42, '5ml:100mg×1瓶', '瓶', NULL);
INSERT INTO `drug` VALUES (52, '磺胺(AR)', 1.72, '100g×1瓶', '瓶', NULL);
INSERT INTO `drug` VALUES (53, '白附子', 31.83, '1000mg/g', '克', NULL);
INSERT INTO `drug` VALUES (54, '白癫风胶囊', 3.41, '1000mg/g', '克', NULL);
INSERT INTO `drug` VALUES (55, '奋乃静片', 0.54, '2mg×100片/瓶', '瓶', NULL);
INSERT INTO `drug` VALUES (56, '注射用头孢他啶(复达欣)', 8.05, '1g×1支', '支', NULL);
INSERT INTO `drug` VALUES (57, '复方氨基酸(绿支安)18AA注射液', 49.18, '10.3%200ml×1瓶', '瓶', NULL);
INSERT INTO `drug` VALUES (58, '吡诺克辛滴眼液(卡林-U)', 51.24, '5ml×1支', '支', NULL);
INSERT INTO `drug` VALUES (59, '卡巴胆碱注射液（卡米可林）', 5.23, '0.1mg×1支', '支', NULL);
INSERT INTO `drug` VALUES (60, '重组人粒细胞(特尔立)巨噬细胞集落冻干粉针', 32.97, '150ug×1瓶', '瓶', NULL);
INSERT INTO `drug` VALUES (61, '哌拉西林他唑巴坦钠(特治星)', 50.50, '4.5g×1支', '支', NULL);
INSERT INTO `drug` VALUES (62, '地黄颗粒', 5.48, '3g/10g/袋', '袋', NULL);
INSERT INTO `drug` VALUES (63, '当归颗粒', 68.19, '4g/10g/袋', '袋', NULL);
INSERT INTO `drug` VALUES (64, '维生素B1注射液', 12.70, '2ml:100mg×10支/盒', '盒', NULL);
INSERT INTO `drug` VALUES (65, '芒硝颗粒', 13.00, '10g/4g/袋', '袋', NULL);
INSERT INTO `drug` VALUES (66, '生大黄颗粒', 30.87, '1g:3g/袋', '袋', NULL);
INSERT INTO `drug` VALUES (67, '虎杖颗粒', 23.76, '1g/15g/袋', '袋', NULL);
INSERT INTO `drug` VALUES (68, '鱼腥草颗粒', 14.89, '1g/15g/袋', '袋', NULL);
INSERT INTO `drug` VALUES (69, '苦参颗粒', 1.39, '1g/10g/袋', '袋', NULL);
INSERT INTO `drug` VALUES (70, '硫酸镁注射液', 42.29, '10ml:2.5g×5支/盒', '盒', NULL);
INSERT INTO `drug` VALUES (71, '胡黄连', 37.20, '1000mg/g', '克', NULL);
INSERT INTO `drug` VALUES (72, '虎杖', 16.01, '1000mg/g', '克', NULL);
INSERT INTO `drug` VALUES (73, '聚桂醇注射液', 12.87, '10ml:100mg×1支/盒', '盒', NULL);
INSERT INTO `drug` VALUES (74, '康肤冲剂(I)', 33.74, '20g×10袋/盒', '盒', NULL);
INSERT INTO `drug` VALUES (75, '注射用头孢哌酮舒巴坦(舒普深)', 2.07, '1.5g×1瓶', '瓶', NULL);
INSERT INTO `drug` VALUES (76, '清热通淋片', 19.18, '0.39g*48片/盒', '盒', NULL);
INSERT INTO `drug` VALUES (77, '康莱特注射液', 11.36, '10g×100ml/瓶', '瓶', NULL);
INSERT INTO `drug` VALUES (78, '山茨菇', 70.02, '1000mg/g', '克', NULL);
INSERT INTO `drug` VALUES (79, '马来酸桂哌齐特注射液(克林澳)', 67.66, '80mg×1支', '支', NULL);
INSERT INTO `drug` VALUES (80, '氯化镁', 6.25, '500g×1瓶', '瓶', NULL);
INSERT INTO `drug` VALUES (81, '呋塞米注射液(速尿)', 5.63, '2ml:20mg×10支/盒', '盒', NULL);
INSERT INTO `drug` VALUES (82, '注射用奈达铂（奥先达）', 9.04, '10mg×1支', '支', NULL);
INSERT INTO `drug` VALUES (83, '注射用夫西地酸钠', 44.97, '0.125g×1支', '支', NULL);
INSERT INTO `drug` VALUES (84, '阳起石', 25.38, '1000mg/g', '克', NULL);
INSERT INTO `drug` VALUES (85, '铜绿假单胞菌注射液', 37.76, '1ml×1支', '支', NULL);
INSERT INTO `drug` VALUES (86, '盐酸氟西汀胶囊(百忧解)', 15.61, '20mg×7粒/盒', '盒', NULL);
INSERT INTO `drug` VALUES (87, '10%氯化钠注射液', 4.50, '10ml:1g×5支/盒', '盒', NULL);
INSERT INTO `drug` VALUES (88, '注射用替考拉宁(他格适)', 14.21, '200mg×1瓶', '瓶', NULL);
INSERT INTO `drug` VALUES (89, '石决明', 10.74, '1000mg/g', '克', NULL);
INSERT INTO `drug` VALUES (90, '石榴皮', 9.49, '1000mg/g', '克', NULL);
INSERT INTO `drug` VALUES (91, '熟地', 55.10, '1000mg/g', '克', NULL);
INSERT INTO `drug` VALUES (92, '水牛角片', 5.68, '1000mg/g', '克', NULL);
INSERT INTO `drug` VALUES (93, '水蜈蚣', 2.20, '1000mg/g', '克', NULL);
INSERT INTO `drug` VALUES (94, '水蛭', 71.56, '1000mg/g', '克', NULL);
INSERT INTO `drug` VALUES (95, '苏梗', 17.14, '1000mg/g', '克', NULL);
INSERT INTO `drug` VALUES (96, '苏木', 34.06, '1000mg/g', '克', NULL);
INSERT INTO `drug` VALUES (97, '太子参', 28.50, '1000mg/g', '克', NULL);
INSERT INTO `drug` VALUES (98, '檀香', 1.48, '1000mg/g', '克', NULL);
INSERT INTO `drug` VALUES (99, '桃仁', 41.29, '1000mg/g', '克', NULL);
INSERT INTO `drug` VALUES (100, '天冬', 38.04, '1000mg/g', '克', NULL);

-- ----------------------------
-- Table structure for hp_patent_detail
-- ----------------------------
DROP TABLE IF EXISTS `hp_patent_detail`;
CREATE TABLE `hp_patent_detail`  (
  `r_id` int(0) NOT NULL COMMENT '挂号id',
  `durg_id` int(0) NOT NULL COMMENT '药品id',
  `durg_num` int(0) NULL DEFAULT NULL COMMENT '药品数量',
  `use_method` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '用法',
  `del` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '是否被删除（空代表还在）',
  PRIMARY KEY (`r_id`, `durg_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of hp_patent_detail
-- ----------------------------
INSERT INTO `hp_patent_detail` VALUES (1, 21, 2, '口服', NULL);
INSERT INTO `hp_patent_detail` VALUES (2, 22, 3, '口服', NULL);
INSERT INTO `hp_patent_detail` VALUES (3, 23, 4, '口服', NULL);
INSERT INTO `hp_patent_detail` VALUES (4, 24, 5, '口服', NULL);

-- ----------------------------
-- Table structure for hp_patient
-- ----------------------------
DROP TABLE IF EXISTS `hp_patient`;
CREATE TABLE `hp_patient`  (
  `r_id` int(0) NOT NULL COMMENT '挂号id',
  `doctor_id` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '医生id',
  `time` datetime(6) NULL DEFAULT NULL COMMENT '开立时间',
  `template_id` int(0) NOT NULL COMMENT '模板id',
  `status` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '状态',
  `del` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '是否被删除（空代表还在）',
  PRIMARY KEY (`r_id`, `template_id`) USING BTREE,
  INDEX `doctor_id6`(`doctor_id`) USING BTREE,
  INDEX `template_id4`(`template_id`) USING BTREE,
  CONSTRAINT `doctor_id6` FOREIGN KEY (`doctor_id`) REFERENCES `user` (`uid`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `template_id4` FOREIGN KEY (`template_id`) REFERENCES `hp_tem` (`template_id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of hp_patient
-- ----------------------------
INSERT INTO `hp_patient` VALUES (1, '1', '2019-03-27 00:00:00.000000', 3, '0', NULL);
INSERT INTO `hp_patient` VALUES (2, '2', '2019-03-28 00:00:00.000000', 4, '1', NULL);
INSERT INTO `hp_patient` VALUES (3, '3', '2019-03-28 00:00:00.000000', 5, '0', NULL);

-- ----------------------------
-- Table structure for hp_tem
-- ----------------------------
DROP TABLE IF EXISTS `hp_tem`;
CREATE TABLE `hp_tem`  (
  `template_id` int(0) NOT NULL AUTO_INCREMENT COMMENT '模板id',
  `type` varchar(12) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '类型',
  `cure` varchar(12) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '治法',
  `del` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '是否被删除（空代表还在）',
  PRIMARY KEY (`template_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 5 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of hp_tem
-- ----------------------------
INSERT INTO `hp_tem` VALUES (1, '水煎煮', '缓解疼痛', NULL);
INSERT INTO `hp_tem` VALUES (2, '酒泡', '缓解疼痛', NULL);
INSERT INTO `hp_tem` VALUES (3, '打粉', '缓解疼痛', NULL);
INSERT INTO `hp_tem` VALUES (4, '制丸', '缓解疼痛', NULL);
INSERT INTO `hp_tem` VALUES (5, '装胶囊', '缓解疼痛', NULL);

-- ----------------------------
-- Table structure for hp_tem_detail
-- ----------------------------
DROP TABLE IF EXISTS `hp_tem_detail`;
CREATE TABLE `hp_tem_detail`  (
  `template_id` int(0) NOT NULL COMMENT '模板id',
  `durg_id` int(0) NOT NULL COMMENT '药品id',
  `usage` varchar(52) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '用法',
  `durg_num` int(0) NULL DEFAULT NULL COMMENT '药品数量',
  `del` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '是否被删除（空代表还在）',
  PRIMARY KEY (`template_id`, `durg_id`) USING BTREE,
  INDEX `durg_id1`(`durg_id`) USING BTREE,
  CONSTRAINT `durg_id1` FOREIGN KEY (`durg_id`) REFERENCES `drug` (`drugid`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `template_id` FOREIGN KEY (`template_id`) REFERENCES `hp_tem` (`template_id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of hp_tem_detail
-- ----------------------------
INSERT INTO `hp_tem_detail` VALUES (1, 12, '口服', 1, NULL);
INSERT INTO `hp_tem_detail` VALUES (1, 13, '口服', 2, NULL);
INSERT INTO `hp_tem_detail` VALUES (2, 14, '口服', 3, NULL);
INSERT INTO `hp_tem_detail` VALUES (2, 15, '口服', 4, NULL);
INSERT INTO `hp_tem_detail` VALUES (3, 16, '口服', 5, NULL);
INSERT INTO `hp_tem_detail` VALUES (3, 17, '口服', 6, NULL);
INSERT INTO `hp_tem_detail` VALUES (4, 18, '口服', 7, NULL);
INSERT INTO `hp_tem_detail` VALUES (4, 19, '口服', 8, NULL);
INSERT INTO `hp_tem_detail` VALUES (5, 10, '口服', 9, NULL);
INSERT INTO `hp_tem_detail` VALUES (5, 11, '口服', 10, NULL);

-- ----------------------------
-- Table structure for invoice
-- ----------------------------
DROP TABLE IF EXISTS `invoice`;
CREATE TABLE `invoice`  (
  `i_id` int(0) NOT NULL AUTO_INCREMENT COMMENT '发票号',
  `money` double(12, 2) NULL DEFAULT NULL COMMENT '金额',
  `status` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '状态',
  `time` datetime(6) NULL DEFAULT NULL COMMENT '时间',
  `r_id` int(0) NULL DEFAULT NULL COMMENT '挂号id',
  `pay_type` varchar(12) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '支付类型',
  `del` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '是否被删除（空代表还在）',
  `o_id` int(0) NULL DEFAULT NULL COMMENT '操作员id',
  PRIMARY KEY (`i_id`) USING BTREE,
  INDEX `r_id2`(`r_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 800827 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of invoice
-- ----------------------------
INSERT INTO `invoice` VALUES (800801, 51.00, '2', '2019-03-25 10:09:28.000000', 24, '51', NULL, 9);
INSERT INTO `invoice` VALUES (800802, 48.65, '3', '2019-04-01 11:26:23.000000', 35, '51', NULL, 9);
INSERT INTO `invoice` VALUES (800803, -8.65, '7', '2019-04-01 11:27:48.000000', 35, '51', NULL, 9);
INSERT INTO `invoice` VALUES (800804, 48.65, '3', '2019-04-01 11:38:23.000000', 35, '51', NULL, 9);
INSERT INTO `invoice` VALUES (800805, -48.65, '7', '2019-04-01 11:39:40.000000', 35, '51', NULL, 9);
INSERT INTO `invoice` VALUES (800806, 77.90, '3', '2019-04-01 11:40:19.000000', 35, '51', NULL, 9);
INSERT INTO `invoice` VALUES (800807, -67.90, '7', '2019-04-01 11:41:37.000000', 35, '51', NULL, 9);
INSERT INTO `invoice` VALUES (800808, -10.00, '7', '2019-04-01 11:42:42.000000', 35, '51', NULL, 9);
INSERT INTO `invoice` VALUES (800809, 8.00, '3', '2019-04-01 13:25:23.000000', 37, '51', NULL, 9);
INSERT INTO `invoice` VALUES (800810, 129.94, '3', '2019-04-01 13:33:54.000000', 37, '51', NULL, 9);
INSERT INTO `invoice` VALUES (800811, -129.94, '7', '2019-04-01 13:38:56.000000', 37, '51', NULL, 9);
INSERT INTO `invoice` VALUES (800812, 247.37, '3', '2019-04-01 13:39:37.000000', 37, '52', NULL, 9);
INSERT INTO `invoice` VALUES (800813, -155.00, '7', '2019-04-01 13:39:57.000000', 37, '51', NULL, 9);
INSERT INTO `invoice` VALUES (800814, 0.00, '1', '2019-06-25 11:44:13.000000', 40, '51', NULL, 9);
INSERT INTO `invoice` VALUES (800815, 0.00, '1', '2019-06-25 11:45:33.000000', 40, '51', NULL, 9);
INSERT INTO `invoice` VALUES (800816, 0.00, '1', '2019-06-25 11:52:32.000000', 40, '51', NULL, 9);
INSERT INTO `invoice` VALUES (800817, 0.00, '1', '2019-06-25 11:55:24.000000', 40, '51', NULL, 9);
INSERT INTO `invoice` VALUES (800818, 0.00, '1', '2019-06-25 12:01:39.000000', 40, '51', NULL, 9);
INSERT INTO `invoice` VALUES (800819, 0.00, '1', '2019-06-25 12:02:17.000000', 40, '51', NULL, 9);
INSERT INTO `invoice` VALUES (800820, 0.00, '1', '2019-06-25 12:03:04.000000', 40, '51', NULL, 9);
INSERT INTO `invoice` VALUES (800821, 0.00, '1', '2019-06-25 12:03:34.000000', 40, '51', NULL, 9);
INSERT INTO `invoice` VALUES (800822, 0.00, '7', '2019-06-25 12:04:44.000000', 40, '51', NULL, 9);
INSERT INTO `invoice` VALUES (800823, -27.00, '7', '2019-06-25 12:05:30.000000', 40, '51', NULL, 9);
INSERT INTO `invoice` VALUES (800824, 27.00, '1', '2019-06-25 14:21:33.000000', 40, '51', NULL, 9);
INSERT INTO `invoice` VALUES (800825, 374.00, '1', '2020-07-05 18:32:23.000000', 3, '1', NULL, NULL);
INSERT INTO `invoice` VALUES (800826, 374.00, '1', '2020-07-05 20:46:13.000000', 3, '1', NULL, NULL);
INSERT INTO `invoice` VALUES (800827, 374.00, '1', '2020-07-06 08:38:18.000000', 3, '1', NULL, NULL);

-- ----------------------------
-- Table structure for patient_cost_detail
-- ----------------------------
DROP TABLE IF EXISTS `patient_cost_detail`;
CREATE TABLE `patient_cost_detail`  (
  `psd_id` int(0) NOT NULL AUTO_INCREMENT COMMENT '费用id',
  `r_id` int(0) NULL DEFAULT NULL COMMENT '挂号id',
  `p_name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '项目名称',
  `p_unit_price` decimal(10, 2) NULL DEFAULT NULL COMMENT '项目单价',
  `p_num` int(0) NULL DEFAULT NULL COMMENT '项目数量',
  `time` datetime(6) NULL DEFAULT NULL COMMENT '时间',
  PRIMARY KEY (`psd_id`) USING BTREE,
  INDEX `r_id1`(`r_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 60 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of patient_cost_detail
-- ----------------------------
INSERT INTO `patient_cost_detail` VALUES (1, 35, '胃苏颗粒', 1.73, 5, '2019-04-01 11:38:23.000000');
INSERT INTO `patient_cost_detail` VALUES (2, 35, '洗胃', 40.00, 1, '2019-04-01 11:38:23.000000');
INSERT INTO `patient_cost_detail` VALUES (3, 35, '胃苏颗粒', 1.73, -5, '2019-04-01 11:39:40.000000');
INSERT INTO `patient_cost_detail` VALUES (4, 35, '洗胃', 40.00, -1, '2019-04-01 11:39:40.000000');
INSERT INTO `patient_cost_detail` VALUES (5, 35, '山药颗粒', 6.79, 10, '2019-04-01 11:40:19.000000');
INSERT INTO `patient_cost_detail` VALUES (6, 35, '灌肠', 10.00, 1, '2019-04-01 11:40:19.000000');
INSERT INTO `patient_cost_detail` VALUES (7, 35, '山药颗粒', 6.79, -10, '2019-04-01 11:41:37.000000');
INSERT INTO `patient_cost_detail` VALUES (8, 35, '灌肠', 10.00, -1, '2019-04-01 11:42:42.000000');
INSERT INTO `patient_cost_detail` VALUES (9, 37, '挂号费', 8.00, 1, '2019-04-01 13:25:23.000000');
INSERT INTO `patient_cost_detail` VALUES (10, 37, '蜂蜡', 3.47, 2, '2019-04-01 13:33:54.000000');
INSERT INTO `patient_cost_detail` VALUES (11, 37, '甲紫溶液', 41.00, 3, '2019-04-01 13:33:54.000000');
INSERT INTO `patient_cost_detail` VALUES (12, 37, '蜂蜡', 3.47, -2, '2019-04-01 13:38:56.000000');
INSERT INTO `patient_cost_detail` VALUES (13, 37, '甲紫溶液', 41.00, -3, '2019-04-01 13:38:56.000000');
INSERT INTO `patient_cost_detail` VALUES (14, 37, '红芪冲剂', 30.79, 3, '2019-04-01 13:39:37.000000');
INSERT INTO `patient_cost_detail` VALUES (15, 37, '脑室碘水造影', 60.00, 1, '2019-04-01 13:39:37.000000');
INSERT INTO `patient_cost_detail` VALUES (16, 37, '气脑造影', 80.00, 1, '2019-04-01 13:39:37.000000');
INSERT INTO `patient_cost_detail` VALUES (17, 37, '食管钡餐透视', 15.00, 1, '2019-04-01 13:39:37.000000');
INSERT INTO `patient_cost_detail` VALUES (18, 37, '脑室碘水造影', 60.00, -1, '2019-04-01 13:39:57.000000');
INSERT INTO `patient_cost_detail` VALUES (19, 37, '气脑造影', 80.00, -1, '2019-04-01 13:39:57.000000');
INSERT INTO `patient_cost_detail` VALUES (20, 37, '食管钡餐透视', 15.00, -1, '2019-04-01 13:39:57.000000');
INSERT INTO `patient_cost_detail` VALUES (21, 40, '鱼腥草颗粒', 15.00, 1, '2019-06-25 11:44:13.000000');
INSERT INTO `patient_cost_detail` VALUES (22, 40, '鱼腥草颗粒', 15.00, 1, '2019-06-25 11:44:13.000000');
INSERT INTO `patient_cost_detail` VALUES (23, 40, '鱼腥草颗粒', 15.00, 1, '2019-06-25 11:45:33.000000');
INSERT INTO `patient_cost_detail` VALUES (24, 40, '鱼腥草颗粒', 15.00, 1, '2019-06-25 11:45:33.000000');
INSERT INTO `patient_cost_detail` VALUES (25, 40, '鱼腥草颗粒', 15.00, 1, '2019-06-25 11:52:32.000000');
INSERT INTO `patient_cost_detail` VALUES (26, 40, '0.9%氯化钠注射液(塑瓶)', 6.00, 2, '2019-06-25 11:52:32.000000');
INSERT INTO `patient_cost_detail` VALUES (27, 40, '鱼腥草颗粒', 15.00, 1, '2019-06-25 11:55:24.000000');
INSERT INTO `patient_cost_detail` VALUES (28, 40, '0.9%氯化钠注射液(塑瓶)', 6.00, 2, '2019-06-25 11:55:24.000000');
INSERT INTO `patient_cost_detail` VALUES (29, 40, '鱼腥草颗粒', 15.00, 1, '2019-06-25 12:01:39.000000');
INSERT INTO `patient_cost_detail` VALUES (30, 40, '0.9%氯化钠注射液(塑瓶)', 6.00, 2, '2019-06-25 12:01:39.000000');
INSERT INTO `patient_cost_detail` VALUES (31, 40, '鱼腥草颗粒', 15.00, 1, '2019-06-25 12:02:17.000000');
INSERT INTO `patient_cost_detail` VALUES (32, 40, '0.9%氯化钠注射液(塑瓶)', 6.00, 2, '2019-06-25 12:02:17.000000');
INSERT INTO `patient_cost_detail` VALUES (33, 40, '鱼腥草颗粒', 15.00, 1, '2019-06-25 12:03:04.000000');
INSERT INTO `patient_cost_detail` VALUES (34, 40, '0.9%氯化钠注射液(塑瓶)', 6.00, 2, '2019-06-25 12:03:04.000000');
INSERT INTO `patient_cost_detail` VALUES (35, 40, '鱼腥草颗粒', 15.00, 1, '2019-06-25 12:03:34.000000');
INSERT INTO `patient_cost_detail` VALUES (36, 40, '0.9%氯化钠注射液(塑瓶)', 6.00, 2, '2019-06-25 12:03:34.000000');
INSERT INTO `patient_cost_detail` VALUES (37, 40, '鱼腥草颗粒', 15.00, 1, '2019-06-25 12:04:44.000000');
INSERT INTO `patient_cost_detail` VALUES (38, 40, '0.9%氯化钠注射液(塑瓶)', 6.00, 2, '2019-06-25 12:04:44.000000');
INSERT INTO `patient_cost_detail` VALUES (39, 40, '鱼腥草颗粒', 15.00, 1, '2019-06-25 12:05:30.000000');
INSERT INTO `patient_cost_detail` VALUES (40, 40, '0.9%氯化钠注射液(塑瓶)', 6.00, 2, '2019-06-25 12:05:30.000000');
INSERT INTO `patient_cost_detail` VALUES (41, 40, '鱼腥草颗粒', 15.00, 1, '2019-06-25 14:21:33.000000');
INSERT INTO `patient_cost_detail` VALUES (42, 40, '0.9%氯化钠注射液(塑瓶)', 6.00, 2, '2019-06-25 14:21:33.000000');
INSERT INTO `patient_cost_detail` VALUES (43, 40, '鱼腥草颗粒', -15.00, 1, '2019-06-25 14:28:50.000000');
INSERT INTO `patient_cost_detail` VALUES (44, 40, '0.9%氯化钠注射液(塑瓶)', -6.00, 2, '2019-06-25 14:28:50.000000');
INSERT INTO `patient_cost_detail` VALUES (45, 40, '鱼腥草颗粒', -15.00, 1, '2019-06-25 14:29:06.000000');
INSERT INTO `patient_cost_detail` VALUES (46, 40, '0.9%氯化钠注射液(塑瓶)', -6.00, 2, '2019-06-25 14:29:06.000000');
INSERT INTO `patient_cost_detail` VALUES (47, 3, '0.9%氯化钠注射液(塑瓶)', 6.34, 10, '2020-07-05 18:18:13.000000');
INSERT INTO `patient_cost_detail` VALUES (48, 3, '复方甘露醇注射液(伸宁)', 15.56, 20, '2020-07-05 18:18:13.000000');
INSERT INTO `patient_cost_detail` VALUES (49, 3, '0.9%氯化钠注射液(塑瓶)', 6.34, 10, '2020-07-05 18:25:43.000000');
INSERT INTO `patient_cost_detail` VALUES (50, 3, '复方甘露醇注射液(伸宁)', 15.56, 20, '2020-07-05 18:25:43.000000');
INSERT INTO `patient_cost_detail` VALUES (51, 3, '0.9%氯化钠注射液(塑瓶)', 6.34, 10, '2020-07-05 18:32:22.000000');
INSERT INTO `patient_cost_detail` VALUES (52, 3, '复方甘露醇注射液(伸宁)', 15.56, 20, '2020-07-05 18:32:23.000000');
INSERT INTO `patient_cost_detail` VALUES (53, 6, '0.9%氯化钠注射液(塑瓶)', -6.34, 1, '2020-07-05 20:27:21.000000');
INSERT INTO `patient_cost_detail` VALUES (54, 7, '复方甘露醇注射液(伸宁)', -15.56, 1, '2020-07-05 20:28:04.000000');
INSERT INTO `patient_cost_detail` VALUES (55, 3, '0.9%氯化钠注射液(塑瓶)', 6.34, 10, '2020-07-05 20:46:13.000000');
INSERT INTO `patient_cost_detail` VALUES (56, 3, '复方甘露醇注射液(伸宁)', 15.56, 20, '2020-07-05 20:46:13.000000');
INSERT INTO `patient_cost_detail` VALUES (57, 7, '复方甘露醇注射液(伸宁)', -15.56, 1, '2020-07-05 20:46:25.000000');
INSERT INTO `patient_cost_detail` VALUES (58, 7, '复方甘露醇注射液(伸宁)', -15.56, 1, '2020-07-06 08:38:12.000000');
INSERT INTO `patient_cost_detail` VALUES (59, 3, '0.9%氯化钠注射液(塑瓶)', 6.34, 10, '2020-07-06 08:38:18.000000');
INSERT INTO `patient_cost_detail` VALUES (60, 3, '复方甘露醇注射液(伸宁)', 15.56, 20, '2020-07-06 08:38:18.000000');

-- ----------------------------
-- Table structure for patientdrug
-- ----------------------------
DROP TABLE IF EXISTS `patientdrug`;
CREATE TABLE `patientdrug`  (
  `drugName` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '药品名称',
  `rid` int(0) NOT NULL COMMENT '挂号id',
  `id` int(0) NOT NULL AUTO_INCREMENT COMMENT 'id主键',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of patientdrug
-- ----------------------------
INSERT INTO `patientdrug` VALUES ('氟康唑氯化钠注射液(大扶康)', 172, 1);
INSERT INTO `patientdrug` VALUES ('50%葡萄糖注射液(塑瓶)', 172, 2);

-- ----------------------------
-- Table structure for paybeanpo
-- ----------------------------
DROP TABLE IF EXISTS `paybeanpo`;
CREATE TABLE `paybeanpo`  (
  `pbpid` int(0) NOT NULL AUTO_INCREMENT,
  `chid` int(0) NULL DEFAULT NULL,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `id` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `date` date NULL DEFAULT NULL,
  `pName` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `price` double(255, 0) NULL DEFAULT NULL,
  `num` int(0) NULL DEFAULT NULL,
  PRIMARY KEY (`pbpid`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for pd_patient
-- ----------------------------
DROP TABLE IF EXISTS `pd_patient`;
CREATE TABLE `pd_patient`  (
  `r_id` int(0) NOT NULL COMMENT '挂号id',
  `doctor_id` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '医生id',
  `template_name` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '模板id',
  `time` datetime(6) NULL DEFAULT NULL COMMENT '创建时间',
  `status` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '状态',
  PRIMARY KEY (`r_id`, `template_name`) USING BTREE,
  INDEX `template_id2`(`template_name`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of pd_patient
-- ----------------------------
INSERT INTO `pd_patient` VALUES (4, '5', '肠炎', '2019-03-17 17:59:19.000000', '2');
INSERT INTO `pd_patient` VALUES (5, '1', '急性黄疸性丁型肝炎', '2020-07-05 13:54:09.000000', '1');
INSERT INTO `pd_patient` VALUES (6, '1', '急性黄疸性丁型肝炎', '2020-07-05 20:46:01.000000', '1');
INSERT INTO `pd_patient` VALUES (9, '1', '新增处方1', '2019-03-28 10:38:57.000000', '1');
INSERT INTO `pd_patient` VALUES (9, '1', '模板：念珠菌性皮炎', '2019-03-28 10:27:28.000000', '1');
INSERT INTO `pd_patient` VALUES (26, '1', '模板：季节性常发哮喘', '2019-03-29 15:42:04.000000', '1');
INSERT INTO `pd_patient` VALUES (27, '1', '新增处方1', '2019-03-28 11:00:14.000000', '2');
INSERT INTO `pd_patient` VALUES (29, '1', '新增处方1', '2019-03-28 13:46:47.000000', '6');
INSERT INTO `pd_patient` VALUES (30, '1', 'www', '2019-03-28 15:27:01.000000', '6');
INSERT INTO `pd_patient` VALUES (30, '1', '模板：病毒性胃肠炎', '2019-03-28 15:28:12.000000', '6');
INSERT INTO `pd_patient` VALUES (32, '1', 's1', '2019-03-29 09:27:12.000000', '6');
INSERT INTO `pd_patient` VALUES (33, '1', '模板：念珠菌性皮炎', '2019-03-29 14:47:52.000000', '6');
INSERT INTO `pd_patient` VALUES (33, '1', '模板：病毒性胃肠炎', '2019-03-29 14:47:46.000000', '6');
INSERT INTO `pd_patient` VALUES (34, '1', '模板：季节性常发哮喘', '2019-03-29 15:20:22.000000', '2');
INSERT INTO `pd_patient` VALUES (34, '1', '模板：病毒性胃肠炎', '2019-03-29 15:20:15.000000', '2');
INSERT INTO `pd_patient` VALUES (35, '2', '小儿感冒', '2019-03-17 17:19:19.000000', '2');
INSERT INTO `pd_patient` VALUES (37, '1', 'a1', '2019-04-01 13:27:53.000000', '2');
INSERT INTO `pd_patient` VALUES (37, '1', '模板：支气管哮喘', '2019-04-01 13:47:39.000000', '1');
INSERT INTO `pd_patient` VALUES (40, '2', '感冒', '2019-06-25 00:46:50.000000', '1');

-- ----------------------------
-- Table structure for pd_patient_detail
-- ----------------------------
DROP TABLE IF EXISTS `pd_patient_detail`;
CREATE TABLE `pd_patient_detail`  (
  `r_id` int(0) NOT NULL COMMENT '挂号id',
  `durg_id` int(0) NOT NULL COMMENT '药品id',
  `durg_num` int(0) NULL DEFAULT NULL COMMENT '药品数量',
  `usage` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '用法',
  `status` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '状态',
  `del` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '是否被删除（空代表还在）',
  PRIMARY KEY (`r_id`, `durg_id`) USING BTREE,
  INDEX `durg_id5`(`durg_id`) USING BTREE,
  CONSTRAINT `durg_id5` FOREIGN KEY (`durg_id`) REFERENCES `drug` (`drugid`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of pd_patient_detail
-- ----------------------------
INSERT INTO `pd_patient_detail` VALUES (1, 10, 10, '口服', '6', NULL);
INSERT INTO `pd_patient_detail` VALUES (2, 29, 5, '口服', '6', NULL);
INSERT INTO `pd_patient_detail` VALUES (3, 36, 1, '1', '3', NULL);
INSERT INTO `pd_patient_detail` VALUES (4, 39, 1, '1', '3', NULL);
INSERT INTO `pd_patient_detail` VALUES (5, 2, 1, '', '3', NULL);
INSERT INTO `pd_patient_detail` VALUES (6, 23, 1, '静脉注射', '4', NULL);
INSERT INTO `pd_patient_detail` VALUES (7, 30, 1, '静脉注射', '4', NULL);
INSERT INTO `pd_patient_detail` VALUES (8, 36, 1, '1', '2', NULL);
INSERT INTO `pd_patient_detail` VALUES (9, 39, 1, '1', '2', NULL);
INSERT INTO `pd_patient_detail` VALUES (92, 33, 1, '口服', '2', NULL);
INSERT INTO `pd_patient_detail` VALUES (93, 47, 1, '口服', '2', NULL);
INSERT INTO `pd_patient_detail` VALUES (94, 9, 1, '口服', '4', NULL);
INSERT INTO `pd_patient_detail` VALUES (95, 33, 1, '口服', '4', NULL);
INSERT INTO `pd_patient_detail` VALUES (96, 47, 1, '口服', '4', NULL);
INSERT INTO `pd_patient_detail` VALUES (97, 5, 3, 'q', '4', NULL);
INSERT INTO `pd_patient_detail` VALUES (98, 45, 2, 'w', '6', NULL);

-- ----------------------------
-- Table structure for pddetail
-- ----------------------------
DROP TABLE IF EXISTS `pddetail`;
CREATE TABLE `pddetail`  (
  `id` int(0) NOT NULL AUTO_INCREMENT,
  `pdid` int(0) NULL DEFAULT NULL,
  `drugid` int(0) NULL DEFAULT NULL,
  `num` int(0) NULL DEFAULT NULL,
  `usage` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `del` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 10 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of pddetail
-- ----------------------------
INSERT INTO `pddetail` VALUES (1, 1, 2, 2, '口服', NULL);
INSERT INTO `pddetail` VALUES (2, 1, 3, 1, '口服', NULL);
INSERT INTO `pddetail` VALUES (3, 2, 1, 2, '口服', NULL);
INSERT INTO `pddetail` VALUES (4, 2, 1, 1, '口服', NULL);
INSERT INTO `pddetail` VALUES (5, 3, 5, 2, '口服', NULL);
INSERT INTO `pddetail` VALUES (6, 3, 2, 1, '口服', NULL);
INSERT INTO `pddetail` VALUES (7, 4, 3, 1, '口服', NULL);
INSERT INTO `pddetail` VALUES (8, 5, 6, 1, '口服', NULL);
INSERT INTO `pddetail` VALUES (9, 5, 8, 1, '口服', NULL);
INSERT INTO `pddetail` VALUES (10, 6, 9, 1, '口服', NULL);

-- ----------------------------
-- Table structure for pdtem
-- ----------------------------
DROP TABLE IF EXISTS `pdtem`;
CREATE TABLE `pdtem`  (
  `pdid` int(0) NOT NULL AUTO_INCREMENT COMMENT '成药模板id',
  `pdname` varchar(25) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '模板名称',
  `createtime` datetime(6) NULL DEFAULT NULL COMMENT '创建时间',
  `del` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '是否被删除（空代表还在）',
  `method` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '治法',
  `opera` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '操作',
  PRIMARY KEY (`pdid`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 7 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of pdtem
-- ----------------------------
INSERT INTO `pdtem` VALUES (1, '念珠菌性皮炎', '2019-03-21 13:25:45.000000', NULL, '治疗皮炎', '外用');
INSERT INTO `pdtem` VALUES (2, '急性黄疸性丁型肝炎', '2019-03-21 13:25:59.000000', NULL, '治疗肝炎', '内用');
INSERT INTO `pdtem` VALUES (3, '病毒性胃肠炎', '2019-03-21 13:26:25.000000', NULL, '治疗肠炎', '内用');
INSERT INTO `pdtem` VALUES (4, '流行性腮腺炎 NOS', '2019-03-21 13:26:33.000000', NULL, '治疗腺炎', '内用');
INSERT INTO `pdtem` VALUES (5, '春季常发性感冒', '2019-03-22 16:34:08.000000', NULL, '治疗感冒', '内服');
INSERT INTO `pdtem` VALUES (6, '季节性常发哮喘', '2019-03-29 14:50:13.000000', NULL, '治疗季节性哮喘', '内服');
INSERT INTO `pdtem` VALUES (7, '支气管哮喘', '2019-04-01 13:43:44.000000', NULL, '治疗支气管哮喘', '内服');

-- ----------------------------
-- Table structure for pdtemdetail
-- ----------------------------
DROP TABLE IF EXISTS `pdtemdetail`;
CREATE TABLE `pdtemdetail`  (
  `pdid` int(0) NOT NULL COMMENT '成药模板id',
  `drugid` int(0) NOT NULL COMMENT '药品id',
  `num` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '数量',
  `usage` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '用法',
  `del` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '是否被删除（空代表还在）',
  PRIMARY KEY (`pdid`, `drugid`) USING BTREE,
  INDEX `drug_id3`(`drugid`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for price_detail
-- ----------------------------
DROP TABLE IF EXISTS `price_detail`;
CREATE TABLE `price_detail`  (
  `p_id` int(0) NOT NULL AUTO_INCREMENT COMMENT '划价id',
  `drug_id` int(0) NULL DEFAULT NULL COMMENT '药品id',
  `drug_num` int(0) NULL DEFAULT NULL COMMENT '药品数量',
  `unit_price` decimal(10, 2) NULL DEFAULT NULL COMMENT '单价',
  `del` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '是否被删除（空代表还在）',
  PRIMARY KEY (`p_id`) USING BTREE,
  INDEX `drug_id`(`drug_id`) USING BTREE,
  CONSTRAINT `drug_id` FOREIGN KEY (`drug_id`) REFERENCES `drug` (`drugid`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 13 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of price_detail
-- ----------------------------
INSERT INTO `price_detail` VALUES (1, 5, 1, 30.79, NULL);
INSERT INTO `price_detail` VALUES (2, 6, 2, 19.51, NULL);
INSERT INTO `price_detail` VALUES (3, 7, 3, 22.05, NULL);
INSERT INTO `price_detail` VALUES (4, 8, 4, 60.96, NULL);
INSERT INTO `price_detail` VALUES (5, 9, 5, 0.09, NULL);
INSERT INTO `price_detail` VALUES (6, 10, 1, 6.79, NULL);
INSERT INTO `price_detail` VALUES (7, 11, 2, 23.51, NULL);
INSERT INTO `price_detail` VALUES (8, 12, 3, 1.07, NULL);
INSERT INTO `price_detail` VALUES (9, 13, 4, 81.74, NULL);
INSERT INTO `price_detail` VALUES (10, 4, 0, 41.00, NULL);
INSERT INTO `price_detail` VALUES (11, 4, 0, 41.00, NULL);
INSERT INTO `price_detail` VALUES (12, 4, 0, 41.00, NULL);
INSERT INTO `price_detail` VALUES (13, 4, 0, 41.00, NULL);

-- ----------------------------
-- Table structure for registration
-- ----------------------------
DROP TABLE IF EXISTS `registration`;
CREATE TABLE `registration`  (
  `rid` int(0) NOT NULL AUTO_INCREMENT COMMENT '挂号id',
  `chid` int(0) NULL DEFAULT NULL COMMENT '病历号',
  `name` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '姓名',
  `sex` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '性别',
  `id` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '身份证号',
  `birthday` date NULL DEFAULT NULL COMMENT '出生日期',
  `address` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '地址',
  `ddate` date NULL DEFAULT NULL COMMENT '看诊日期',
  `deptid` int(0) NULL DEFAULT NULL COMMENT '科室',
  `doctorid` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '医生id',
  `level` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '挂号级别',
  `paytype` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '结算类别',
  `isbook` int(0) NULL DEFAULT NULL COMMENT '是否要病历本',
  `workerid` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '挂号员id',
  `dstatus` int(0) NULL DEFAULT NULL COMMENT '看诊状态',
  `money` double(20, 2) NULL DEFAULT NULL COMMENT '挂号费',
  `noon` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '午别',
  `iid` int(0) NULL DEFAULT NULL COMMENT '发票号',
  `del` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '是否被删除（空代表还在）',
  PRIMARY KEY (`rid`) USING BTREE,
  INDEX `dept_id1`(`deptid`) USING BTREE,
  INDEX `doctor_id1`(`doctorid`) USING BTREE,
  INDEX `worker_id`(`workerid`) USING BTREE,
  CONSTRAINT `dept_id1` FOREIGN KEY (`deptid`) REFERENCES `department` (`deptid`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `doctor_id1` FOREIGN KEY (`doctorid`) REFERENCES `user` (`uid`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `worker_id` FOREIGN KEY (`workerid`) REFERENCES `user` (`uid`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 178 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of registration
-- ----------------------------
INSERT INTO `registration` VALUES (1, 600668, '方干', '男', '35021119790613928X', '1900-01-02', '厦门', '2020-07-01', 1, '1', '1', '1', 1, '9', 2, 15.00, '下', 68, NULL);
INSERT INTO `registration` VALUES (2, 600667, '高适', '男', '430111197906137326', '1900-01-02', '长沙', '2020-07-01', 1, '1', '1', '1', 1, '9', 3, 15.00, '上', 67, NULL);
INSERT INTO `registration` VALUES (3, 600600, '李白', '男', '110101199003073335', '1900-01-02', '北京', '2019-03-18', 1, '1', '2', '1', 1, '301', 4, 15.00, '上午', 1, NULL);
INSERT INTO `registration` VALUES (4, 600601, '杜甫', '男', '110101199003073634', '1900-01-02', '雄安', '2020-03-19', 2, '1', '1', '2', 1, '301', 1, 15.00, '下午', 2, NULL);
INSERT INTO `registration` VALUES (5, 600602, '李商隐', '男', '110101199003075496', '1900-01-02', '哈尔滨', '2019-03-18', 2, '1', '2', '1', 0, '301', 2, 15.00, '上午', 3, NULL);
INSERT INTO `registration` VALUES (6, 600603, '杜牧', '男', '1101011990030女519', '1900-01-02', '大连', '2019-03-19', 1, '1', '1', '2', 1, '301', 2, 15.00, '上午', 4, NULL);
INSERT INTO `registration` VALUES (7, 600604, '李清照', '女', '11010119900307643X', '1900-01-02', '青岛', '2019-03-19', 1, '1', '1', '2', 1, '301', 4, 15.00, '上午', 5, NULL);
INSERT INTO `registration` VALUES (8, 600605, '李贺', '男', '110101199003078937', '1900-01-02', '长沙', '2019-03-19', 1, '1', '1', '1', 1, '301', 4, 15.00, '上午', 6, NULL);
INSERT INTO `registration` VALUES (9, 600606, '卢照邻', '男', '110101199003079577', '1900-01-02', '天津', '2019-03-19', 2, '1', '2', '1', 0, '301', 2, 25.00, '下午', 7, NULL);
INSERT INTO `registration` VALUES (25, 600669, '马致远', '男', '350211197906138180', '1900-01-02', '厦门', '2020-07-01', 1, '1', '1', '1', 1, '9', 2, 15.00, '上', 69, NULL);
INSERT INTO `registration` VALUES (26, 600607, '陆游', '男', '1101011990030女770', '1900-01-02', '上海', '2019-03-26', 1, '1', '1', '1', 1, '301', 3, 25.00, '上午', 8, NULL);
INSERT INTO `registration` VALUES (27, 600608, '屈原', '男', '11010119900307045X', '1900-01-02', '广州', '2019-03-28', 1, '1', '1', '1', 1, '301', 4, 25.00, '上午', 9, NULL);
INSERT INTO `registration` VALUES (28, 600609, '白居易', '男', '210102199208051076', '1900-01-02', '台北', '2019-03-28', 1, '1', '1', '1', 0, '301', 1, 25.00, '上午', 10, NULL);
INSERT INTO `registration` VALUES (29, 600610, '王安石', '男', '210102199208050938', '1900-01-02', '香港', '2019-03-28', 1, '1', '1', '1', 1, '9', 2, 25.00, '下午', 11, NULL);
INSERT INTO `registration` VALUES (30, 600611, '李煜', '男', '210102199208051834', '1900-01-02', '杭州', '2019-03-28', 1, '1', '1', '1', 1, '10', 3, 25.00, '下午', 12, NULL);
INSERT INTO `registration` VALUES (31, 600612, '孟浩然', '男', '2101021992080589女', '1900-01-02', '南京', '2019-03-26', 1, '1', '1', '1', 1, '9', 4, 25.00, '上午', 13, NULL);
INSERT INTO `registration` VALUES (32, 600613, '王勃', '男', '210102199208055392', '1900-01-02', '武汉', '2019-03-29', 1, '1', '1', '1', 0, '9', 1, 25.00, '上午', 14, NULL);
INSERT INTO `registration` VALUES (33, 600614, '范仲淹', '男', '210102199208056053', '1900-01-02', '成都', '2019-03-29', 1, '1', '1', '1', 0, '9', 2, 25.00, '上午', 15, NULL);
INSERT INTO `registration` VALUES (34, 600615, '陶渊明', '男', '210102199208059377', '1900-01-02', '深圳', '2019-03-29', 1, '1', '1', '1', 0, '9', 3, 25.00, '上午', 16, NULL);
INSERT INTO `registration` VALUES (35, 600670, '李峤', '男', '350211197906138287', '1900-01-02', '厦门', '2020-07-01', 1, '1', '1', '1', 1, '9', 4, 15.00, '下', 70, NULL);
INSERT INTO `registration` VALUES (36, 600617, '苏洵', '男', '210102199208059916', '1900-01-02', '重庆', '2019-04-01', 1, '1', '1', '1', 1, '9', 1, 25.00, '下午', 17, NULL);
INSERT INTO `registration` VALUES (37, 600618, '苏辙', '男', '210102199208058999', '1900-01-02', '厦门', '2019-04-01', 1, '2', '2', '1', 0, '9', 2, 25.00, '下午', 18, NULL);
INSERT INTO `registration` VALUES (39, 600619, '苏轼', '男', '21010219920805025X', '2000-01-01', '沈阳', '2020-06-24', 1, '2', '2', '1', 0, '9', 4, 25.00, '上', 19, NULL);
INSERT INTO `registration` VALUES (40, 600620, '苏轼', '男', '21010219920805025X', '2000-01-01', '沈阳', '2020-06-24', 1, '2', '2', '1', 0, '9', 1, 25.00, '上', 20, NULL);
INSERT INTO `registration` VALUES (41, 600621, '苏轼', '男', '21010219920805025X', '2000-01-01', '沈阳', '2020-06-24', 1, '2', '2', '1', 0, '9', 2, 25.00, '下', 21, NULL);
INSERT INTO `registration` VALUES (121, 600622, '辛弃疾', '男', '21010219920805女53', '1900-01-02', '沈阳', '2020-07-01', 1, '1', '1', '1', 1, '9', 2, 25.00, '上', 22, NULL);
INSERT INTO `registration` VALUES (122, 600623, '刘禹锡', '男', '320114198702156937', '1900-01-02', '南京', '2020-07-01', 1, '1', '1', '1', 1, '9', 3, 25.00, '上', 23, NULL);
INSERT INTO `registration` VALUES (123, 600624, '王维', '男', '320114198702158男3', '1900-01-02', '南京', '2020-07-01', 1, '1', '1', '1', 0, '9', 4, 25.00, '下', 24, NULL);
INSERT INTO `registration` VALUES (124, 600625, '李商隐', '男', '32011419870215929X', '1900-01-02', '南京', '2020-07-01', 1, '1', '1', '1', 1, '9', 1, 25.00, '上', 25, NULL);
INSERT INTO `registration` VALUES (125, 600626, '纳兰性德', '男', '320114198702159134', '1900-01-02', '南京', '2020-07-01', 1, '1', '1', '1', 0, '9', 2, 15.00, '上', 26, NULL);
INSERT INTO `registration` VALUES (126, 600627, '杜牧', '男', '320114198702159038', '1900-01-02', '南京', '2020-07-01', 1, '1', '1', '1', 1, '9', 3, 15.00, '下', 27, NULL);
INSERT INTO `registration` VALUES (127, 600628, '元稹', '男', '320114198702158932', '1900-01-02', '南京', '2020-07-01', 1, '1', '1', '1', 0, '9', 4, 15.00, '上', 28, NULL);
INSERT INTO `registration` VALUES (128, 600629, '柳宗元', '男', '320114198702157593', '1900-01-02', '南京', '2020-07-01', 1, '1', '1', '1', 1, '9', 1, 15.00, '上', 29, NULL);
INSERT INTO `registration` VALUES (129, 600630, '岑参', '男', '320114198702159775', '1900-01-02', '南京', '2020-07-01', 1, '1', '1', '1', 1, '9', 2, 15.00, '上', 30, NULL);
INSERT INTO `registration` VALUES (130, 600631, '韩愈', '男', '320114198702159097', '1900-01-02', '南京', '2020-07-01', 1, '1', '1', '1', 1, '9', 3, 15.00, '上', 31, NULL);
INSERT INTO `registration` VALUES (131, 600632, '欧阳修', '男', '320114198702156056', '1900-01-02', '南京', '2020-07-01', 1, '1', '1', '1', 1, '9', 4, 15.00, '上', 32, NULL);
INSERT INTO `registration` VALUES (132, 600633, '齐己', '男', '320114198702156275', '1900-01-02', '南京', '2020-07-01', 1, '1', '1', '1', 1, '9', 1, 15.00, '下', 33, NULL);
INSERT INTO `registration` VALUES (133, 600634, '贾岛', '男', '320114198702156996', '1900-01-02', '南京', '2020-07-01', 1, '1', '1', '1', 1, '9', 2, 15.00, '下', 34, NULL);
INSERT INTO `registration` VALUES (134, 600635, '韦应物', '男', '320114198702158836', '1900-01-02', '南京', '2020-07-01', 1, '1', '1', '1', 1, '9', 3, 15.00, '下', 35, NULL);
INSERT INTO `registration` VALUES (135, 600636, '曹操', '男', '320114198702157497', '1900-01-02', '南京', '2020-07-01', 1, '1', '1', '1', 1, '9', 4, 15.00, '上', 36, NULL);
INSERT INTO `registration` VALUES (136, 600637, '温庭筠', '男', '32011419870215945X', '1900-01-02', '南京', '2020-07-01', 1, '1', '1', '1', 1, '9', 1, 15.00, '下', 37, NULL);
INSERT INTO `registration` VALUES (137, 600638, '柳永', '男', '440304199210189484', '1900-01-02', '深圳', '2020-07-01', 1, '1', '1', '1', 1, '9', 2, 15.00, '上', 38, NULL);
INSERT INTO `registration` VALUES (138, 600639, '刘长卿', '男', '440304199210187462', '1900-01-02', '深圳', '2020-07-01', 1, '1', '1', '1', 1, '9', 3, 15.00, '上', 39, NULL);
INSERT INTO `registration` VALUES (139, 600640, '曹植', '男', '440304199210188967', '1900-01-02', '深圳', '2020-07-01', 1, '1', '1', '1', 0, '9', 4, 15.00, '上', 40, NULL);
INSERT INTO `registration` VALUES (140, 600641, '王昌龄', '男', '440304199210188326', '1900-01-02', '深圳', '2020-07-01', 1, '1', '1', '1', 1, '9', 1, 15.00, '下', 41, NULL);
INSERT INTO `registration` VALUES (141, 600642, '张籍', '男', '440304199210186267', '1900-01-02', '深圳', '2020-07-01', 1, '1', '1', '1', 1, '9', 2, 15.00, '上', 42, NULL);
INSERT INTO `registration` VALUES (142, 600643, '孟郊', '男', '440304199210186523', '1900-01-02', '深圳', '2020-07-01', 1, '1', '1', '1', 1, '9', 3, 15.00, '下', 43, NULL);
INSERT INTO `registration` VALUES (143, 600644, '皎然', '男', '440304199210186347', '1900-01-02', '深圳', '2020-07-01', 1, '1', '1', '1', 0, '9', 4, 15.00, '上', 44, NULL);
INSERT INTO `registration` VALUES (144, 600645, '贯休', '男', '440304199210188182', '1900-01-02', '深圳', '2020-07-01', 1, '1', '1', '1', 1, '9', 1, 15.00, '上', 45, NULL);
INSERT INTO `registration` VALUES (145, 600646, '许浑', '男', '440304199210189409', '1900-01-02', '深圳', '2020-07-01', 1, '1', '1', '1', 1, '9', 2, 15.00, '下', 46, NULL);
INSERT INTO `registration` VALUES (146, 600647, '罗隐', '男', '440304199210189222', '1900-01-02', '深圳', '2020-07-01', 1, '1', '1', '1', 1, '9', 3, 15.00, '上', 47, NULL);
INSERT INTO `registration` VALUES (147, 600648, '杨万里', '男', '440304199210186267', '1900-01-02', '深圳', '2020-07-01', 1, '1', '1', '1', 1, '9', 4, 15.00, '下', 48, NULL);
INSERT INTO `registration` VALUES (148, 600649, '陆龟蒙', '男', '440304199210188203', '1900-01-02', '深圳', '2020-07-01', 1, '1', '1', '1', 1, '9', 1, 15.00, '下', 49, NULL);
INSERT INTO `registration` VALUES (149, 600650, '张祜', '男', '440304199210186689', '1900-01-02', '深圳', '2020-07-01', 1, '1', '1', '1', 0, '9', 2, 15.00, '下', 50, NULL);
INSERT INTO `registration` VALUES (150, 600651, '王建', '男', '44030419921018830X', '1900-01-02', '深圳', '2020-07-01', 1, '1', '1', '1', 1, '9', 3, 15.00, '上', 51, NULL);
INSERT INTO `registration` VALUES (151, 600652, '韦庄', '男', '440304199210188924', '1900-01-02', '深圳', '2020-07-01', 1, '1', '1', '1', 1, '9', 4, 15.00, '上', 52, NULL);
INSERT INTO `registration` VALUES (152, 600653, '诸葛亮', '男', '430111197906137887', '1900-01-02', '长沙', '2020-07-01', 1, '1', '1', '1', 1, '9', 1, 15.00, '上', 53, NULL);
INSERT INTO `registration` VALUES (153, 600654, '姚合', '男', '430111197906136681', '1900-01-02', '长沙', '2020-07-01', 1, '1', '1', '1', 1, '9', 2, 15.00, '上', 54, NULL);
INSERT INTO `registration` VALUES (154, 600655, '晏殊', '男', '430111197906139女7', '1900-01-02', '长沙', '2020-07-01', 1, '1', '1', '1', 1, '9', 3, 15.00, '下', 55, NULL);
INSERT INTO `registration` VALUES (155, 600656, '卢纶', '男', '430111197906139161', '1900-01-02', '长沙', '2020-07-01', 1, '1', '1', '1', 0, '9', 4, 15.00, '上', 56, NULL);
INSERT INTO `registration` VALUES (156, 600657, '杜荀鹤', '男', '430111197906138249', '1900-01-02', '长沙', '2020-07-01', 1, '1', '1', '1', 1, '9', 1, 15.00, '上', 57, NULL);
INSERT INTO `registration` VALUES (157, 600658, '岳飞', '男', '43011119790613男82', '1900-01-02', '长沙', '2020-07-01', 1, '1', '1', '1', 1, '9', 2, 15.00, '上', 58, NULL);
INSERT INTO `registration` VALUES (158, 600659, '周邦彦', '男', '430111197906139女7', '1900-01-02', '长沙', '2020-07-01', 1, '1', '1', '1', 1, '9', 3, 15.00, '下', 59, NULL);
INSERT INTO `registration` VALUES (159, 600660, '晏几道', '男', '430111197906138388', '1900-01-02', '长沙', '2020-07-01', 1, '1', '1', '1', 1, '9', 4, 15.00, '上', 60, NULL);
INSERT INTO `registration` VALUES (160, 600661, '钱起', '男', '43011119790613730X', '1900-01-02', '长沙', '2020-07-01', 1, '1', '1', '1', 1, '9', 1, 15.00, '上', 61, NULL);
INSERT INTO `registration` VALUES (161, 600662, '韩偓', '男', '430111197906139444', '1900-01-02', '长沙', '2020-07-01', 1, '1', '1', '1', 1, '9', 2, 15.00, '上', 62, NULL);
INSERT INTO `registration` VALUES (162, 600663, '皮日休', '男', '430111197906137983', '1900-01-02', '长沙', '2020-07-01', 1, '1', '1', '1', 1, '9', 3, 15.00, '下', 63, NULL);
INSERT INTO `registration` VALUES (163, 600664, '秦观', '男', '43011119790613女03', '1900-01-02', '长沙', '2020-07-01', 1, '1', '1', '1', 1, '9', 4, 15.00, '上', 64, NULL);
INSERT INTO `registration` VALUES (164, 600665, '吴文英', '男', '430111197906138126', '1900-01-02', '长沙', '2020-07-01', 1, '1', '1', '1', 0, '9', 1, 15.00, '下', 65, NULL);
INSERT INTO `registration` VALUES (165, 600666, '朱熹', '男', '430111197906136665', '1900-01-02', '长沙', '2020-07-20', 2, '4', '专家号', '自费', 1, '9', 1, 15.00, '上', 66, NULL);
INSERT INTO `registration` VALUES (166, 600621, '李华', '女', '440304199210180201', '1900-01-31', '深圳', '2020-07-04', 2, '1', '1', '1', 1, '9', 3, 15.50, '上', 67, NULL);
INSERT INTO `registration` VALUES (167, 600621, '李华', '女', '440304199210180201', '1900-01-31', '深圳', '2020-07-04', 2, '1', '1', '1', 1, '9', 4, 15.50, '上', 67, NULL);
INSERT INTO `registration` VALUES (168, 600621, '李华', '女', '440304199210180201', '1900-01-31', '深圳', '2020-07-04', 2, '1', '1', '1', 1, '9', 1, 15.50, '上', 67, NULL);
INSERT INTO `registration` VALUES (169, 600621, '李华', '女', '440304199210180201', '1900-01-31', '深圳', '2020-07-04', 2, '1', '1', '1', 1, '9', 2, 15.50, '上', 67, NULL);
INSERT INTO `registration` VALUES (170, 600621, '李华', '女', '440304199210180201', '1900-01-31', '深圳', '2020-07-04', 2, '1', '1', '1', 1, '9', 3, 15.50, '上', 67, NULL);
INSERT INTO `registration` VALUES (171, 600623, '李华', '男', '110198204030101', '1982-04-02', '北京', '2020-07-20', 2, '1', '专家号', '自费', 1, '10', 2, 50.00, '上午', 1003, NULL);
INSERT INTO `registration` VALUES (172, 600699, '张飞', '男', '110220200006060202', '1970-01-28', '北京', '2020-07-22', 2, '4', '专家号', '自费', 0, '10', 3, 50.00, '上午', 1003, NULL);
INSERT INTO `registration` VALUES (173, 600700, '李华', '男', '110222198507040202', '1985-07-03', '北京', '2020-07-22', 2, '4', '专家号', '自费', 0, '10', 1, 50.00, '上午', 1003, NULL);
INSERT INTO `registration` VALUES (175, 600668, '方干', '男', '35021119790613928X', '1900-01-01', '厦门', '2020-07-22', 2, '4', '专家号', '自费', 1, '10', 1, 50.00, '上午', 1003, NULL);
INSERT INTO `registration` VALUES (176, 600700, '李阿虎', '男', '220333200001010202', '1991-02-28', 'as', '2020-07-22', 2, '1', '专家号', '自费', 0, '10', 1, 50.00, '上午', 1003, NULL);
INSERT INTO `registration` VALUES (177, 600722, '刘备', '男', '200100200001010202', '1971-02-24', '南京', '2020-07-22', 2, '4', '专家号', '自费', 0, '10', 1, 50.00, '上午', 100325, NULL);
INSERT INTO `registration` VALUES (178, 600700, '丽丽', '女', '110002200001012301', '2001-03-05', '北京', '2021-02-24', 2, '1', '专家号', '医保', 1, '10', 1, 50.00, '上午', 1003, NULL);

-- ----------------------------
-- Table structure for regprice
-- ----------------------------
DROP TABLE IF EXISTS `regprice`;
CREATE TABLE `regprice`  (
  `title` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '挂号类别',
  `price` double(10, 2) NOT NULL COMMENT '挂号费',
  PRIMARY KEY (`title`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of regprice
-- ----------------------------
INSERT INTO `regprice` VALUES ('专家号', 50.00);
INSERT INTO `regprice` VALUES ('普通号', 25.00);

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user`  (
  `uid` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '用户id',
  `loginname` varchar(16) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '登录名',
  `loginpwd` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '密码',
  `uname` varchar(12) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '真实姓名',
  `utype` varchar(8) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '用户类型',
  `doctorrank` varchar(5) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '医生职称',
  `deptid` int(0) NOT NULL COMMENT '科室',
  `del` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '是否被删除（空代表还在）',
  `rlevel` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '挂号级别',
  PRIMARY KEY (`uid`) USING BTREE,
  INDEX `dept_id`(`deptid`) USING BTREE,
  CONSTRAINT `dept_id` FOREIGN KEY (`deptid`) REFERENCES `department` (`deptid`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES ('1', 'bianque', 'd92973740a36903cf9f0107f01b3b4ff', '扁鹊', '医生', '主任医师', 2, NULL, '专家号');
INSERT INTO `user` VALUES ('10', 'ghy', '1c6a3d53926c069218977ecf170e5156', '挂号收费员', '挂号人员', '其他', 2, NULL, NULL);
INSERT INTO `user` VALUES ('2', 'fwb', '8cba64af11e9142b7781bd242fdbe6c8', '张仲景', '医生', '副主任医师', 3, NULL, '专家号');
INSERT INTO `user` VALUES ('3', 'hqb', '49589dbc6f6efac097414e5099d16c93', '皇甫谧', '医生', '副主任医师', 3, NULL, '普通号');
INSERT INTO `user` VALUES ('301', 'admin', '0192023a7bbd73250516f069df18b500', '医院管理员', '管理员', '其他', 2, NULL, NULL);
INSERT INTO `user` VALUES ('4', 'huatuo', '1b551e1022e7c371c15b693995a52504', '华佗', '医生', '主任医师', 2, NULL, '专家号');
INSERT INTO `user` VALUES ('5', 'xll', '671e99f52a8a49e39a9b9e3a508a814d', '葛洪', '医生', '副主任医师', 2, NULL, '普通号');
INSERT INTO `user` VALUES ('6', 'adq', '606a5d4f0d2158f2f4458d29e397dcfc', '孙思邈', '医生', '副主任医师', 2, NULL, '普通号');
INSERT INTO `user` VALUES ('8', 'dd', 'dae2f05a224d7c55bfab71996e90f4eb', '钱乙', '管理员', '主治医师', 9, NULL, '专家号');
INSERT INTO `user` VALUES ('9', 'root', '63a9f0ea7bb98050796b649e85481845', '李时珍', '超级管理员', '主治医师', 2, NULL, '专家号');

-- ----------------------------
-- Table structure for working_schedule
-- ----------------------------
DROP TABLE IF EXISTS `working_schedule`;
CREATE TABLE `working_schedule`  (
  `w_id` int(0) NOT NULL AUTO_INCREMENT COMMENT '排班id',
  `doctor_id` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '医生id',
  `date` date NULL DEFAULT NULL COMMENT '日期',
  `noon` int(0) NULL DEFAULT NULL COMMENT '午别',
  `del` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '是否被删除（空代表还在）',
  PRIMARY KEY (`w_id`, `doctor_id`) USING BTREE,
  INDEX `doctor_id`(`doctor_id`) USING BTREE,
  CONSTRAINT `doctor_id` FOREIGN KEY (`doctor_id`) REFERENCES `user` (`uid`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 33 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of working_schedule
-- ----------------------------
INSERT INTO `working_schedule` VALUES (1, '1', '2019-04-01', 0, NULL);
INSERT INTO `working_schedule` VALUES (2, '2', '2019-04-01', 0, NULL);
INSERT INTO `working_schedule` VALUES (3, '3', '2019-04-01', 0, NULL);
INSERT INTO `working_schedule` VALUES (4, '2', '2019-04-01', 1, NULL);
INSERT INTO `working_schedule` VALUES (5, '3', '2019-04-01', 1, NULL);
INSERT INTO `working_schedule` VALUES (6, '2', '2019-04-02', 0, NULL);
INSERT INTO `working_schedule` VALUES (7, '3', '2019-04-02', 0, NULL);
INSERT INTO `working_schedule` VALUES (8, '2', '2019-04-02', 1, NULL);
INSERT INTO `working_schedule` VALUES (9, '3', '2019-04-02', 1, NULL);
INSERT INTO `working_schedule` VALUES (10, '2', '2019-04-03', 0, NULL);
INSERT INTO `working_schedule` VALUES (11, '1', '2019-04-01', 1, NULL);
INSERT INTO `working_schedule` VALUES (12, '3', '2019-04-03', 0, NULL);
INSERT INTO `working_schedule` VALUES (13, '2', '2019-04-03', 1, NULL);
INSERT INTO `working_schedule` VALUES (14, '1', '2019-04-02', 0, NULL);
INSERT INTO `working_schedule` VALUES (15, '3', '2019-04-03', 1, NULL);
INSERT INTO `working_schedule` VALUES (16, '1', '2019-04-02', 1, NULL);
INSERT INTO `working_schedule` VALUES (17, '3', '2019-04-04', 0, NULL);
INSERT INTO `working_schedule` VALUES (18, '1', '2019-04-03', 0, NULL);
INSERT INTO `working_schedule` VALUES (19, '3', '2019-04-04', 1, NULL);
INSERT INTO `working_schedule` VALUES (20, '1', '2019-04-03', 1, NULL);
INSERT INTO `working_schedule` VALUES (21, '3', '2019-04-05', 0, NULL);
INSERT INTO `working_schedule` VALUES (22, '1', '2019-04-04', 0, NULL);
INSERT INTO `working_schedule` VALUES (23, '1', '2019-04-04', 1, NULL);
INSERT INTO `working_schedule` VALUES (24, '1', '2019-04-05', 0, NULL);
INSERT INTO `working_schedule` VALUES (25, '1', '2019-03-25', 0, NULL);
INSERT INTO `working_schedule` VALUES (26, '1', '2019-03-25', 1, NULL);
INSERT INTO `working_schedule` VALUES (27, '1', '2019-03-26', 0, NULL);
INSERT INTO `working_schedule` VALUES (28, '1', '2019-03-26', 1, NULL);
INSERT INTO `working_schedule` VALUES (29, '1', '2019-03-27', 0, NULL);
INSERT INTO `working_schedule` VALUES (30, '1', '2019-03-27', 1, NULL);
INSERT INTO `working_schedule` VALUES (31, '1', '2019-03-28', 0, NULL);
INSERT INTO `working_schedule` VALUES (32, '1', '2019-03-28', 1, NULL);
INSERT INTO `working_schedule` VALUES (33, '1', '2019-03-29', 0, NULL);

-- ----------------------------
-- Procedure structure for pro_diagnose
-- ----------------------------
DROP PROCEDURE IF EXISTS `pro_diagnose`;
delimiter ;;
CREATE PROCEDURE `pro_diagnose`(IN r_id1 int,IN msg VARCHAR(255),OUT result VARCHAR(20))
BEGIN   
	DECLARE status1 int default 0;
	DECLARE ch_id1 int default 0; #病历ID
	
	-- 1）根据挂号ID得到病历ID
	SELECT ch_id into ch_id1 from registration r where r_id = r_id1;
	-- 2）保存诊断信息到病历表。
	insert into case_history(ch_id, r_id, message) VALUES(ch_id1,r_id1,msg);
	-- 3）更新挂号的诊断状态为已诊断。
	update registration set d_status = 2 where  r_id = r_id1;
	SET result = 'success';
END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for pro_dispensing
-- ----------------------------
DROP PROCEDURE IF EXISTS `pro_dispensing`;
delimiter ;;
CREATE PROCEDURE `pro_dispensing`(IN r_id1 int,OUT result VARCHAR(20))
BEGIN   
	SET result = 'failure';
	UPDATE pd_patient_detail set `status` = 6 where r_id = r_id1;
	UPDATE pd_patient set `status` = 6 where r_id = r_id1;
	SET result = 'success';
END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for pro_pay
-- ----------------------------
DROP PROCEDURE IF EXISTS `pro_pay`;
delimiter ;;
CREATE PROCEDURE `pro_pay`(IN c_id1 int,IN r_id1 int,IN o_id1 int,OUT result VARCHAR(20))
BEGIN   
	DECLARE money1 DECIMAL default 0.0;
	DECLARE i_id1 int default 0; 
	DECLARE p_name1 VARCHAR(32); 
	DECLARE p_unit_price1 DECIMAL(10,2); 
	DECLARE p_num1 int DEFAULT 0; 
	DECLARE i int DEFAULT 0; 
	declare stopflag int default 0;
	-- 	1）根据处方ID得到药品明细。 
	declare drug_cur cursor for SELECT drug_id from pd_tem_detail where pd_id = c_id1;
	declare continue handler for not found set stopflag=1;

	SET result = 'failure';
	open drug_cur; -- 打卡游标
	fetch drug_cur into i; -- 游标向前走一步，取出一条记录
	while(stopflag=0) do -- 如果游标还没有结尾，就继续
	begin
			-- 从药品表中根据药品id查出单价
			SELECT drug_price,drug_name into p_unit_price1,p_name1	from drug where drug_id = i;
			-- 从处方表中查出药品数量
			SELECT num into p_num1 from pd_tem_detail where pd_id = c_id1 and drug_id=i;
			-- 4）将每一条药品的缴费信息保存到缴费明细表中，包括缴费ID, 药品ID, 药品价格，药品数量等。
			INSERT into patient_cost_detail(r_id, p_name, p_unit_price, p_num, time) VALUES(r_id1, p_name1, p_unit_price1, p_num1, NOW());  
			SET money1 = money1+ p_unit_price1*p_num1;
			fetch drug_cur into i;
	end;
	end while; -- 结束循环
	close drug_cur; -- 关闭游标
	-- 2）修改成药处方表处方明细表缴费状态
	update pd_patient_detail set `status` = 3 where r_id = r_id1;
	-- 3）获取可用发票号
	SELECT MAX(i_id)+1 into i_id1 FROM invoice;
	
	-- 5）新增发票记录
	insert into invoice(i_id, money, status, time, r_id, pay_type) VALUES (i_id1, money1, '1', NOW(), r_id1, '1');
	SET result = 'success';
END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for pro_prescribe
-- ----------------------------
DROP PROCEDURE IF EXISTS `pro_prescribe`;
delimiter ;;
CREATE PROCEDURE `pro_prescribe`(IN r_id1 int,IN c_name VARCHAR(255),IN drugs VARCHAR(255),OUT result VARCHAR(20))
BEGIN   
 
	DECLARE doctor_id1 int default 0; #医生ID
	declare stopflag int default 0;
	declare drug_num1 int default 0;
	declare unit_price1 decimal;
  declare i VARCHAR(32);
  declare drug_cur cursor for SELECT 
		SUBSTRING_INDEX(SUBSTRING_INDEX(drugs,',',help_topic_id+1),',',-1)
	FROM 
		mysql.help_topic 
	WHERE 
		help_topic_id < LENGTH(drugs)-LENGTH(REPLACE(drugs,',',''))+1;
  declare continue handler for not found set stopflag=1;
	
	SET result = 'failure';
  open drug_cur; -- 打卡游标
		fetch drug_cur into i; -- 游标向前走一步，取出一条记录放到变量username中
		while(stopflag=0) do -- 如果游标还没有结尾，就继续
      begin 
          -- 从药品表中根据药品id查出单价
					SELECT drug_price into unit_price1 from drug where drug_id = i;
					-- 从处方表中查出药品数量
					SELECT num into drug_num1 from pd_tem p1,pd_tem_detail p2 where pd_name = c_name and p1.pd_id = p2.pd_id and drug_id=i;
					-- 2）将每一条药品的划价信息保存到划价明细表中，包括划价ID, 药品ID, 药品价格，药品数量等
          insert into price_detail(drug_id,drug_num,unit_price) VALUES (i,drug_num1,unit_price1);
          fetch drug_cur into i;
      end;
		end while; -- 结束循环
  close drug_cur; -- 关闭游标

	-- 1）将处方的基本信息保存到处方表，包括挂号ID，开立医生ID，处方名称，开立时间等 
	-- 根据挂号id查询医生id
	SELECT doctor_id INTO doctor_id1 from registration where r_id = r_id1;
	insert into pd_patient(r_id, doctor_id, template_name, time, status) VALUES (r_id1, doctor_id1, c_name, NOW(), 1);
	
	SET result = 'success';
END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for pro_registration
-- ----------------------------
DROP PROCEDURE IF EXISTS `pro_registration`;
delimiter ;;
CREATE PROCEDURE `pro_registration`(IN r_id int,IN p_name VARCHAR(32),IN p_sex VARCHAR(1),IN p_id VARCHAR(20),IN p_birthday date,
				IN p_address VARCHAR(50),IN dept_id int,IN doctor_id VARCHAR(32),IN level VARCHAR(20),IN pay_type VARCHAR(20),
				IN is_book VARCHAR(1),IN worker_id VARCHAR(32),IN d_status int,IN money VARCHAR(20),IN noon VARCHAR(20),
				IN i_id VARCHAR(20),OUT result VARCHAR(20))
BEGIN   
	DECLARE ch_id int;
	DECLARE now_time date; 
	DECLARE num int DEFAULT 0; # 主键是否存在

	-- 1）获取当前时间用于作为本次挂号时间字段
	SET now_time = NOW();
	-- 2）查找可用病历号
	SELECT MAX(ch.ch_id)+1 INTO ch_id FROM case_history ch;
	-- 3）将挂号信息保存到挂号表中
	SELECT count(*) into num from registration r where r.r_id = r_id;
	
	IF (num=1) THEN
		SET result = 'failure';
	ELSE
		insert into registration(r_id, ch_id, name, sex, id, birthday, address, d_date, dept_id, doctor_id, level, pay_type, is_book, worker_id, d_status, money, noon, i_id) VALUES(r_id,ch_id,p_name,p_sex,p_id,p_birthday,p_address,now_time,dept_id,doctor_id,level,pay_type,is_book,worker_id,d_status,money,noon,i_id);
		SET result = 'success';
	END IF;
END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for pro_r_premium
-- ----------------------------
DROP PROCEDURE IF EXISTS `pro_r_premium`;
delimiter ;;
CREATE PROCEDURE `pro_r_premium`(IN r_id1 int,IN i_id1 int,OUT result VARCHAR(20))
BEGIN   
	DECLARE money1 DECIMAL default 0.0;
	DECLARE p_name1 VARCHAR(32); 
	DECLARE p_unit_price1 DECIMAL(10,2); 
	DECLARE p_num1 int DEFAULT 0; 
	DECLARE i int DEFAULT 0; 
	declare stopflag int default 0;
	-- 根据处方ID得到药品明细。 
	declare drug_cur cursor for SELECT durg_id from pd_patient_detail where r_id	= r_id1;
	declare continue handler for not found set stopflag=1;

	SET result = 'failure';
	open drug_cur; -- 打卡游标
	fetch drug_cur into i; -- 游标向前走一步，取出一条记录
	while(stopflag=0) do -- 如果游标还没有结尾，就继续
	begin
			-- 从药品表中根据药品id查出单价
			SELECT -1*drug_price into p_unit_price1	from drug where drug_id = i;
			SELECT drug_name into p_name1	from drug where drug_id = i;
			-- 从处方表中查出药品数量
			SELECT durg_num into p_num1 from pd_patient_detail where r_id = r_id1;
			-- 2）在缴费明细表中添加若干明细记录, 其中药品价格为负数。
			INSERT into patient_cost_detail(r_id, p_name, p_unit_price, p_num, time) VALUES(r_id1, p_name1, p_unit_price1, p_num1, NOW());  
			fetch drug_cur into i;
	end;
	end while; -- 结束循环
	close drug_cur; -- 关闭游标
	-- 1）更新成药处方明细表状态为已退费
	update pd_patient_detail set `status` = 4 where r_id = r_id1;
	-- 3）修改发票记录
	SELECT -1 * money into money1 from invoice where i_id = i_id1;
	update invoice set `status` = 7, money = money1 where i_id = i_id1;
	SET result = 'success';
END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for pro_withdrawing_r
-- ----------------------------
DROP PROCEDURE IF EXISTS `pro_withdrawing_r`;
delimiter ;;
CREATE PROCEDURE `pro_withdrawing_r`(IN r_id1 int,OUT result VARCHAR(20))
BEGIN   
	DECLARE status1 int default 0;
	-- 1）查询挂号状态
	SELECT d_status into status1 from registration r where r_id = r_id1;
	-- 2）条件判断是否可以退号
	IF (status1=2 or status1=4) THEN
		-- 3-1）如果患者已经就诊，不能退号。 如果患者已经退号，不能二次退号。
		SET result = 'failure';
	ELSE
		-- 3-2）如果患者未就诊，可以退号，执行退号操作，更新挂号表中的挂号状态
		update registration set d_status = 4 where  r_id = r_id1;
		SET result = 'success';
	END IF;
END
;;
delimiter ;

SET FOREIGN_KEY_CHECKS = 1;
