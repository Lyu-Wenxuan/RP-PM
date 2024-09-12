/*
 Navicat Premium Data Transfer

 Source Server         : db_train
 Source Server Type    : MySQL
 Source Server Version : 80013
 Source Host           : localhost:3306
 Source Schema         : db_train

 Target Server Type    : MySQL
 Target Server Version : 80013
 File Encoding         : 65001

 Date: 25/11/2023 22:01:22
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for gen_table
-- ----------------------------
DROP TABLE IF EXISTS `gen_table`;
CREATE TABLE `gen_table`  (
  `table_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '编号',
  `table_name` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '表名称',
  `table_comment` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '表描述',
  `sub_table_name` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '关联子表的表名',
  `sub_table_fk_name` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '子表关联的外键名',
  `class_name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '实体类名称',
  `tpl_category` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT 'crud' COMMENT '使用的模板（crud单表操作 tree树表操作）',
  `package_name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '生成包路径',
  `module_name` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '生成模块名',
  `business_name` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '生成业务名',
  `function_name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '生成功能名',
  `function_author` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '生成功能作者',
  `gen_type` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '0' COMMENT '生成代码方式（0zip压缩包 1自定义路径）',
  `gen_path` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '/' COMMENT '生成路径（不填默认项目路径）',
  `options` varchar(1000) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '其它生成选项',
  `create_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '创建者',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '更新者',
  `update_time` datetime NULL DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`table_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 10 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '代码生成业务表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of gen_table
-- ----------------------------
INSERT INTO `gen_table` VALUES (4, 'train_application', '报名表', NULL, NULL, 'TrainApplication', 'crud', 'com.ruoyi.system', 'system', 'application', '报名', 'ruoyi', '0', '/', '{\"parentMenuId\":\"2001\"}', 'admin', '2023-11-22 15:25:32', '', '2023-11-22 15:29:37', NULL);
INSERT INTO `gen_table` VALUES (5, 'train_course', '课程表', NULL, NULL, 'TrainCourse', 'crud', 'com.ruoyi.system', 'system', 'course', '课程信息', 'ruoyi', '0', '/', '{\"parentMenuId\":2000}', 'admin', '2023-11-22 15:25:32', '', '2023-11-22 15:26:11', NULL);
INSERT INTO `gen_table` VALUES (6, 'train_payment', '缴费签到表', NULL, NULL, 'TrainPayment', 'crud', 'com.ruoyi.system', 'system', 'payment', '缴费签到', 'ruoyi', '0', '/', '{\"parentMenuId\":2002}', 'admin', '2023-11-22 15:25:32', '', '2023-11-22 15:30:31', NULL);
INSERT INTO `gen_table` VALUES (7, 'train_survey', '问卷调查表', NULL, NULL, 'TrainSurvey', 'crud', 'com.ruoyi.system', 'system', 'survey', '问卷调查', 'ruoyi', '0', '/', '{\"parentMenuId\":2021}', 'admin', '2023-11-22 17:09:54', '', '2023-11-22 17:11:16', NULL);
INSERT INTO `gen_table` VALUES (8, 'train_trianer', '讲师表', NULL, NULL, 'TrainTrianer', 'crud', 'com.ruoyi.system', 'system', 'trianer', '讲师管理', 'ruoyi', '0', '/', '{\"parentMenuId\":\"2028\"}', 'admin', '2023-11-22 17:59:54', '', '2023-11-22 18:02:43', NULL);
INSERT INTO `gen_table` VALUES (9, 'train_income', '课程收入表', NULL, NULL, 'TrainIncome', 'crud', 'com.ruoyi.system', 'system', 'income', '课程收入', 'ruoyi', '0', '/', '{\"parentMenuId\":2035}', 'admin', '2023-11-23 15:39:26', '', '2023-11-23 15:40:40', NULL);

-- ----------------------------
-- Table structure for gen_table_column
-- ----------------------------
DROP TABLE IF EXISTS `gen_table_column`;
CREATE TABLE `gen_table_column`  (
  `column_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '编号',
  `table_id` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '归属表编号',
  `column_name` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '列名称',
  `column_comment` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '列描述',
  `column_type` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '列类型',
  `java_type` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT 'JAVA类型',
  `java_field` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT 'JAVA字段名',
  `is_pk` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '是否主键（1是）',
  `is_increment` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '是否自增（1是）',
  `is_required` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '是否必填（1是）',
  `is_insert` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '是否为插入字段（1是）',
  `is_edit` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '是否编辑字段（1是）',
  `is_list` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '是否列表字段（1是）',
  `is_query` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '是否查询字段（1是）',
  `query_type` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT 'EQ' COMMENT '查询方式（等于、不等于、大于、小于、范围）',
  `html_type` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '显示类型（文本框、文本域、下拉框、复选框、单选框、日期控件）',
  `dict_type` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '字典类型',
  `sort` int(11) NULL DEFAULT NULL COMMENT '排序',
  `create_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '创建者',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '更新者',
  `update_time` datetime NULL DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`column_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 70 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '代码生成业务表字段' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of gen_table_column
-- ----------------------------
INSERT INTO `gen_table_column` VALUES (27, '4', 'id', '编号', 'int', 'Long', 'id', '1', '1', NULL, '1', NULL, NULL, NULL, 'EQ', 'input', '', 1, 'admin', '2023-11-22 15:25:32', '', '2023-11-22 15:29:37');
INSERT INTO `gen_table_column` VALUES (28, '4', 'type', '报名类型', 'int', 'Long', 'type', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'select', 'app_status', 2, 'admin', '2023-11-22 15:25:32', '', '2023-11-22 15:29:37');
INSERT INTO `gen_table_column` VALUES (29, '4', 'student_id', '学员编号', 'int', 'Long', 'studentId', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 3, 'admin', '2023-11-22 15:25:32', '', '2023-11-22 15:29:37');
INSERT INTO `gen_table_column` VALUES (30, '4', 'username', '学员姓名', 'varchar(30)', 'String', 'username', '0', '0', NULL, '1', '1', '1', '1', 'LIKE', 'input', '', 4, 'admin', '2023-11-22 15:25:32', '', '2023-11-22 15:29:37');
INSERT INTO `gen_table_column` VALUES (31, '4', 'course', '报名课程', 'varchar(20)', 'String', 'course', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 5, 'admin', '2023-11-22 15:25:32', '', '2023-11-22 15:29:37');
INSERT INTO `gen_table_column` VALUES (32, '4', 'company', '公司', 'varchar(255)', 'String', 'company', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 6, 'admin', '2023-11-22 15:25:32', '', '2023-11-22 15:29:37');
INSERT INTO `gen_table_column` VALUES (33, '4', 'position', '工作岗位', 'varchar(255)', 'String', 'position', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 7, 'admin', '2023-11-22 15:25:32', '', '2023-11-22 15:29:37');
INSERT INTO `gen_table_column` VALUES (34, '4', 'skill', '技术水平', 'varchar(255)', 'String', 'skill', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 8, 'admin', '2023-11-22 15:25:32', '', '2023-11-22 15:29:37');
INSERT INTO `gen_table_column` VALUES (35, '4', 'app_time', '报名时间', 'datetime', 'Date', 'appTime', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'datetime', '', 9, 'admin', '2023-11-22 15:25:32', '', '2023-11-22 15:29:37');
INSERT INTO `gen_table_column` VALUES (36, '4', 'status', '审核状态', 'int', 'Long', 'status', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'select', 'process_status', 10, 'admin', '2023-11-22 15:25:32', '', '2023-11-22 15:29:37');
INSERT INTO `gen_table_column` VALUES (37, '5', 'id', '课程ID', 'int', 'Long', 'id', '1', '1', NULL, '1', NULL, NULL, NULL, 'EQ', 'input', '', 1, 'admin', '2023-11-22 15:25:32', '', '2023-11-22 15:26:11');
INSERT INTO `gen_table_column` VALUES (38, '5', 'course_name', '课程名', 'varchar(30)', 'String', 'courseName', '0', '0', '1', '1', '1', '1', '1', 'LIKE', 'input', '', 2, 'admin', '2023-11-22 15:25:32', '', '2023-11-22 15:26:11');
INSERT INTO `gen_table_column` VALUES (39, '5', 'trainer', '讲师', 'varchar(30)', 'String', 'trainer', '0', '0', NULL, '1', '1', '1', '0', 'EQ', 'input', '', 3, 'admin', '2023-11-22 15:25:32', '', '2023-11-22 15:26:11');
INSERT INTO `gen_table_column` VALUES (40, '5', 'start_date', '开始日期', 'datetime', 'Date', 'startDate', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'datetime', '', 4, 'admin', '2023-11-22 15:25:32', '', '2023-11-22 15:26:11');
INSERT INTO `gen_table_column` VALUES (41, '5', 'end_date', '结束日期', 'datetime', 'Date', 'endDate', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'datetime', '', 5, 'admin', '2023-11-22 15:25:32', '', '2023-11-22 15:26:11');
INSERT INTO `gen_table_column` VALUES (42, '5', 'course_price', '课程费用', 'decimal(10,2)', 'BigDecimal', 'coursePrice', '0', '0', NULL, '1', '1', '1', '0', 'EQ', 'input', '', 6, 'admin', '2023-11-22 15:25:32', '', '2023-11-22 15:26:11');
INSERT INTO `gen_table_column` VALUES (43, '5', 'is_del', '课程状态', 'int', 'Long', 'isDel', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'select', 'sys_job_status', 7, 'admin', '2023-11-22 15:25:32', '', '2023-11-22 15:26:11');
INSERT INTO `gen_table_column` VALUES (44, '6', 'id', '账单ID', 'int', 'Long', 'id', '1', '0', NULL, '1', NULL, NULL, NULL, 'EQ', 'input', '', 1, 'admin', '2023-11-22 15:25:32', '', '2023-11-22 15:30:31');
INSERT INTO `gen_table_column` VALUES (45, '6', 'student_id', '学员ID', 'int', 'Long', 'studentId', '0', '0', NULL, '1', '1', '1', '0', 'EQ', 'input', '', 2, 'admin', '2023-11-22 15:25:32', '', '2023-11-22 15:30:31');
INSERT INTO `gen_table_column` VALUES (46, '6', 'student_name', '学员姓名', 'varchar(255)', 'String', 'studentName', '0', '0', NULL, '1', '1', '1', '1', 'LIKE', 'input', '', 3, 'admin', '2023-11-22 15:25:32', '', '2023-11-22 15:30:31');
INSERT INTO `gen_table_column` VALUES (47, '6', 'course_name', '课程名', 'varchar(255)', 'String', 'courseName', '0', '0', NULL, '1', '1', '1', '1', 'LIKE', 'input', '', 4, 'admin', '2023-11-22 15:25:32', '', '2023-11-22 15:30:31');
INSERT INTO `gen_table_column` VALUES (48, '6', 'course_price', '课程费用', 'decimal(10,2)', 'BigDecimal', 'coursePrice', '0', '0', NULL, '1', '1', '1', '0', 'EQ', 'input', '', 5, 'admin', '2023-11-22 15:25:32', '', '2023-11-22 15:30:31');
INSERT INTO `gen_table_column` VALUES (49, '6', 'pay_name', '付款人', 'varchar(255)', 'String', 'payName', '0', '0', NULL, '1', '1', '1', '0', 'LIKE', 'input', '', 6, 'admin', '2023-11-22 15:25:32', '', '2023-11-22 15:30:31');
INSERT INTO `gen_table_column` VALUES (50, '6', 'pay_acount', '付款账户', 'varchar(255)', 'String', 'payAcount', '0', '0', NULL, '1', '1', '1', '0', 'EQ', 'input', '', 7, 'admin', '2023-11-22 15:25:32', '', '2023-11-22 15:30:31');
INSERT INTO `gen_table_column` VALUES (51, '6', 'pay_status', '付款状态', 'int', 'Long', 'payStatus', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'radio', 'pay_status', 8, 'admin', '2023-11-22 15:25:32', '', '2023-11-22 15:30:31');
INSERT INTO `gen_table_column` VALUES (52, '6', 'sign_status', '签到状态', 'int', 'Long', 'signStatus', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'radio', 'sign_status', 9, 'admin', '2023-11-22 15:25:32', '', '2023-11-22 15:30:31');
INSERT INTO `gen_table_column` VALUES (53, '7', 'id', '问卷ID', 'int', 'Long', 'id', '1', '1', NULL, '1', NULL, NULL, NULL, 'EQ', 'input', '', 1, 'admin', '2023-11-22 17:09:54', '', '2023-11-22 17:11:16');
INSERT INTO `gen_table_column` VALUES (54, '7', 'student_name', '学员姓名', 'varchar(255)', 'String', 'studentName', '0', '0', NULL, '1', '1', '1', '1', 'LIKE', 'input', '', 2, 'admin', '2023-11-22 17:09:54', '', '2023-11-22 17:11:16');
INSERT INTO `gen_table_column` VALUES (55, '7', 'course_name', '课程名', 'varchar(30)', 'String', 'courseName', '0', '0', NULL, '1', '1', '1', '1', 'LIKE', 'input', '', 3, 'admin', '2023-11-22 17:09:54', '', '2023-11-22 17:11:16');
INSERT INTO `gen_table_column` VALUES (56, '7', 'rating', '满意度', 'int', 'Long', 'rating', '0', '0', NULL, '1', '1', '1', '0', 'EQ', 'select', 'rating_level', 4, 'admin', '2023-11-22 17:09:54', '', '2023-11-22 17:11:16');
INSERT INTO `gen_table_column` VALUES (57, '7', 'comment', '评价', 'varchar(255)', 'String', 'comment', '0', '0', NULL, '1', '1', '1', '0', 'EQ', 'textarea', '', 5, 'admin', '2023-11-22 17:09:54', '', '2023-11-22 17:11:16');
INSERT INTO `gen_table_column` VALUES (58, '7', 'advice', '建议', 'varchar(255)', 'String', 'advice', '0', '0', NULL, '1', '1', '1', '0', 'EQ', 'textarea', '', 6, 'admin', '2023-11-22 17:09:54', '', '2023-11-22 17:11:16');
INSERT INTO `gen_table_column` VALUES (59, '8', 'id', '讲师ID', 'int', 'Long', 'id', '1', '1', NULL, '1', NULL, NULL, NULL, 'EQ', 'input', '', 1, 'admin', '2023-11-22 17:59:54', '', '2023-11-22 18:02:43');
INSERT INTO `gen_table_column` VALUES (60, '8', 'full_name', '姓名', 'varchar(30)', 'String', 'fullName', '0', '0', NULL, '1', '1', '1', '1', 'LIKE', 'input', '', 2, 'admin', '2023-11-22 17:59:54', '', '2023-11-22 18:02:43');
INSERT INTO `gen_table_column` VALUES (61, '8', 'title', '职称', 'varchar(255)', 'String', 'title', '0', '0', NULL, '1', '1', '1', '0', 'EQ', 'select', 'position', 3, 'admin', '2023-11-22 17:59:54', '', '2023-11-22 18:02:43');
INSERT INTO `gen_table_column` VALUES (62, '8', 'expertise', '擅长领域', 'varchar(255)', 'String', 'expertise', '0', '0', NULL, '1', '1', '1', '0', 'EQ', 'input', '', 4, 'admin', '2023-11-22 17:59:54', '', '2023-11-22 18:02:43');
INSERT INTO `gen_table_column` VALUES (63, '8', 'email', '邮箱', 'varchar(29)', 'String', 'email', '0', '0', NULL, '1', '1', '1', '0', 'EQ', 'input', '', 5, 'admin', '2023-11-22 17:59:54', '', '2023-11-22 18:02:43');
INSERT INTO `gen_table_column` VALUES (64, '8', 'phone', '手机号', 'varchar(11)', 'String', 'phone', '0', '0', NULL, '1', '1', '1', '0', 'EQ', 'input', '', 6, 'admin', '2023-11-22 17:59:54', '', '2023-11-22 18:02:43');
INSERT INTO `gen_table_column` VALUES (65, '9', 'id', '收入ID', 'int', 'Long', 'id', '1', '1', NULL, '1', NULL, NULL, NULL, 'EQ', 'input', '', 1, 'admin', '2023-11-23 15:39:26', '', '2023-11-23 15:40:40');
INSERT INTO `gen_table_column` VALUES (66, '9', 'course_name', '课程名', 'varchar(30)', 'String', 'courseName', '0', '0', NULL, '1', '1', '1', '1', 'LIKE', 'input', '', 2, 'admin', '2023-11-23 15:39:26', '', '2023-11-23 15:40:40');
INSERT INTO `gen_table_column` VALUES (67, '9', 'number', '选课人数', 'int', 'Long', 'number', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 3, 'admin', '2023-11-23 15:39:26', '', '2023-11-23 15:40:40');
INSERT INTO `gen_table_column` VALUES (68, '9', 'price', '价格', 'decimal(10,2)', 'BigDecimal', 'price', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 4, 'admin', '2023-11-23 15:39:26', '', '2023-11-23 15:40:40');
INSERT INTO `gen_table_column` VALUES (69, '9', 'total_price', '总收入', 'decimal(10,2)', 'BigDecimal', 'totalPrice', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 5, 'admin', '2023-11-23 15:39:26', '', '2023-11-23 15:40:40');

-- ----------------------------
-- Table structure for sys_config
-- ----------------------------
DROP TABLE IF EXISTS `sys_config`;
CREATE TABLE `sys_config`  (
  `config_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '参数主键',
  `config_name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '参数名称',
  `config_key` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '参数键名',
  `config_value` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '参数键值',
  `config_type` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT 'N' COMMENT '系统内置（Y是 N否）',
  `create_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '创建者',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '更新者',
  `update_time` datetime NULL DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`config_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 100 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '参数配置表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of sys_config
-- ----------------------------
INSERT INTO `sys_config` VALUES (1, '主框架页-默认皮肤样式名称', 'sys.index.skinName', 'skin-blue', 'Y', 'admin', '2023-11-22 14:00:20', '', NULL, '蓝色 skin-blue、绿色 skin-green、紫色 skin-purple、红色 skin-red、黄色 skin-yellow');
INSERT INTO `sys_config` VALUES (2, '用户管理-账号初始密码', 'sys.user.initPassword', '123456', 'Y', 'admin', '2023-11-22 14:00:20', '', NULL, '初始化密码 123456');
INSERT INTO `sys_config` VALUES (3, '主框架页-侧边栏主题', 'sys.index.sideTheme', 'theme-dark', 'Y', 'admin', '2023-11-22 14:00:20', '', NULL, '深色主题theme-dark，浅色主题theme-light');
INSERT INTO `sys_config` VALUES (4, '账号自助-验证码开关', 'sys.account.captchaEnabled', 'true', 'Y', 'admin', '2023-11-22 14:00:20', '', NULL, '是否开启验证码功能（true开启，false关闭）');
INSERT INTO `sys_config` VALUES (5, '账号自助-是否开启用户注册功能', 'sys.account.registerUser', 'true', 'Y', 'admin', '2023-11-22 14:00:20', '', NULL, '是否开启注册用户功能（true开启，false关闭）');
INSERT INTO `sys_config` VALUES (6, '用户登录-黑名单列表', 'sys.login.blackIPList', '', 'Y', 'admin', '2023-11-22 14:00:20', '', NULL, '设置登录IP黑名单限制，多个匹配项以;分隔，支持匹配（*通配、网段）');

-- ----------------------------
-- Table structure for sys_dept
-- ----------------------------
DROP TABLE IF EXISTS `sys_dept`;
CREATE TABLE `sys_dept`  (
  `dept_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '部门id',
  `parent_id` bigint(20) NULL DEFAULT 0 COMMENT '父部门id',
  `ancestors` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '祖级列表',
  `dept_name` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '部门名称',
  `order_num` int(11) NULL DEFAULT 0 COMMENT '显示顺序',
  `leader` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '负责人',
  `phone` varchar(11) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '联系电话',
  `email` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '邮箱',
  `status` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '0' COMMENT '部门状态（0正常 1停用）',
  `del_flag` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '0' COMMENT '删除标志（0代表存在 2代表删除）',
  `create_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '创建者',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '更新者',
  `update_time` datetime NULL DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`dept_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 200 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '部门表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of sys_dept
-- ----------------------------
INSERT INTO `sys_dept` VALUES (100, 0, '0', '浩奇培训', 0, '若依', '15888888888', 'ry@qq.com', '0', '0', 'admin', '2023-11-22 14:00:20', '', NULL);
INSERT INTO `sys_dept` VALUES (101, 100, '0,100', '深圳总公司', 1, '若依', '15888888888', 'ry@qq.com', '0', '0', 'admin', '2023-11-22 14:00:20', '', NULL);
INSERT INTO `sys_dept` VALUES (102, 100, '0,100', '长沙分公司', 2, '若依', '15888888888', 'ry@qq.com', '0', '2', 'admin', '2023-11-22 14:00:20', '', NULL);
INSERT INTO `sys_dept` VALUES (103, 101, '0,100,101', '研发部门', 1, '若依', '15888888888', 'ry@qq.com', '0', '0', 'admin', '2023-11-22 14:00:20', '', NULL);
INSERT INTO `sys_dept` VALUES (104, 101, '0,100,101', '市场部门', 2, '若依', '15888888888', 'ry@qq.com', '0', '0', 'admin', '2023-11-22 14:00:20', '', NULL);
INSERT INTO `sys_dept` VALUES (105, 101, '0,100,101', '测试部门', 3, '若依', '15888888888', 'ry@qq.com', '0', '0', 'admin', '2023-11-22 14:00:20', '', NULL);
INSERT INTO `sys_dept` VALUES (106, 101, '0,100,101', '财务部门', 4, '若依', '15888888888', 'ry@qq.com', '0', '0', 'admin', '2023-11-22 14:00:20', '', NULL);
INSERT INTO `sys_dept` VALUES (107, 101, '0,100,101', '运维部门', 5, '若依', '15888888888', 'ry@qq.com', '0', '0', 'admin', '2023-11-22 14:00:20', '', NULL);
INSERT INTO `sys_dept` VALUES (108, 102, '0,100,102', '市场部门', 1, '若依', '15888888888', 'ry@qq.com', '0', '2', 'admin', '2023-11-22 14:00:20', '', NULL);
INSERT INTO `sys_dept` VALUES (109, 102, '0,100,102', '财务部门', 2, '若依', '15888888888', 'ry@qq.com', '0', '2', 'admin', '2023-11-22 14:00:20', '', NULL);

-- ----------------------------
-- Table structure for sys_dict_data
-- ----------------------------
DROP TABLE IF EXISTS `sys_dict_data`;
CREATE TABLE `sys_dict_data`  (
  `dict_code` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '字典编码',
  `dict_sort` int(11) NULL DEFAULT 0 COMMENT '字典排序',
  `dict_label` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '字典标签',
  `dict_value` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '字典键值',
  `dict_type` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '字典类型',
  `css_class` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '样式属性（其他样式扩展）',
  `list_class` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '表格回显样式',
  `is_default` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT 'N' COMMENT '是否默认（Y是 N否）',
  `status` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '0' COMMENT '状态（0正常 1停用）',
  `create_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '创建者',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '更新者',
  `update_time` datetime NULL DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`dict_code`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 119 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '字典数据表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of sys_dict_data
-- ----------------------------
INSERT INTO `sys_dict_data` VALUES (1, 1, '男', '0', 'sys_user_sex', '', '', 'Y', '0', 'admin', '2023-11-22 14:00:20', '', NULL, '性别男');
INSERT INTO `sys_dict_data` VALUES (2, 2, '女', '1', 'sys_user_sex', '', '', 'N', '0', 'admin', '2023-11-22 14:00:20', '', NULL, '性别女');
INSERT INTO `sys_dict_data` VALUES (3, 3, '未知', '2', 'sys_user_sex', '', '', 'N', '0', 'admin', '2023-11-22 14:00:20', '', NULL, '性别未知');
INSERT INTO `sys_dict_data` VALUES (4, 1, '显示', '0', 'sys_show_hide', '', 'primary', 'Y', '0', 'admin', '2023-11-22 14:00:20', '', NULL, '显示菜单');
INSERT INTO `sys_dict_data` VALUES (5, 2, '隐藏', '1', 'sys_show_hide', '', 'danger', 'N', '0', 'admin', '2023-11-22 14:00:20', '', NULL, '隐藏菜单');
INSERT INTO `sys_dict_data` VALUES (6, 1, '正常', '0', 'sys_normal_disable', '', 'primary', 'Y', '0', 'admin', '2023-11-22 14:00:20', '', NULL, '正常状态');
INSERT INTO `sys_dict_data` VALUES (7, 2, '停用', '1', 'sys_normal_disable', '', 'danger', 'N', '0', 'admin', '2023-11-22 14:00:20', '', NULL, '停用状态');
INSERT INTO `sys_dict_data` VALUES (8, 1, '正常', '0', 'sys_job_status', '', 'primary', 'Y', '0', 'admin', '2023-11-22 14:00:20', '', NULL, '正常状态');
INSERT INTO `sys_dict_data` VALUES (9, 2, '暂停', '1', 'sys_job_status', '', 'danger', 'N', '0', 'admin', '2023-11-22 14:00:20', '', NULL, '停用状态');
INSERT INTO `sys_dict_data` VALUES (10, 1, '默认', 'DEFAULT', 'sys_job_group', '', '', 'Y', '0', 'admin', '2023-11-22 14:00:20', '', NULL, '默认分组');
INSERT INTO `sys_dict_data` VALUES (11, 2, '系统', 'SYSTEM', 'sys_job_group', '', '', 'N', '0', 'admin', '2023-11-22 14:00:20', '', NULL, '系统分组');
INSERT INTO `sys_dict_data` VALUES (12, 1, '是', 'Y', 'sys_yes_no', '', 'primary', 'Y', '0', 'admin', '2023-11-22 14:00:20', '', NULL, '系统默认是');
INSERT INTO `sys_dict_data` VALUES (13, 2, '否', 'N', 'sys_yes_no', '', 'danger', 'N', '0', 'admin', '2023-11-22 14:00:20', '', NULL, '系统默认否');
INSERT INTO `sys_dict_data` VALUES (14, 1, '通知', '1', 'sys_notice_type', '', 'warning', 'Y', '0', 'admin', '2023-11-22 14:00:20', '', NULL, '通知');
INSERT INTO `sys_dict_data` VALUES (15, 2, '公告', '2', 'sys_notice_type', '', 'success', 'N', '0', 'admin', '2023-11-22 14:00:20', '', NULL, '公告');
INSERT INTO `sys_dict_data` VALUES (16, 1, '正常', '0', 'sys_notice_status', '', 'primary', 'Y', '0', 'admin', '2023-11-22 14:00:20', '', NULL, '正常状态');
INSERT INTO `sys_dict_data` VALUES (17, 2, '关闭', '1', 'sys_notice_status', '', 'danger', 'N', '0', 'admin', '2023-11-22 14:00:20', '', NULL, '关闭状态');
INSERT INTO `sys_dict_data` VALUES (18, 99, '其他', '0', 'sys_oper_type', '', 'info', 'N', '0', 'admin', '2023-11-22 14:00:20', '', NULL, '其他操作');
INSERT INTO `sys_dict_data` VALUES (19, 1, '新增', '1', 'sys_oper_type', '', 'info', 'N', '0', 'admin', '2023-11-22 14:00:20', '', NULL, '新增操作');
INSERT INTO `sys_dict_data` VALUES (20, 2, '修改', '2', 'sys_oper_type', '', 'info', 'N', '0', 'admin', '2023-11-22 14:00:20', '', NULL, '修改操作');
INSERT INTO `sys_dict_data` VALUES (21, 3, '删除', '3', 'sys_oper_type', '', 'danger', 'N', '0', 'admin', '2023-11-22 14:00:20', '', NULL, '删除操作');
INSERT INTO `sys_dict_data` VALUES (22, 4, '授权', '4', 'sys_oper_type', '', 'primary', 'N', '0', 'admin', '2023-11-22 14:00:20', '', NULL, '授权操作');
INSERT INTO `sys_dict_data` VALUES (23, 5, '导出', '5', 'sys_oper_type', '', 'warning', 'N', '0', 'admin', '2023-11-22 14:00:20', '', NULL, '导出操作');
INSERT INTO `sys_dict_data` VALUES (24, 6, '导入', '6', 'sys_oper_type', '', 'warning', 'N', '0', 'admin', '2023-11-22 14:00:20', '', NULL, '导入操作');
INSERT INTO `sys_dict_data` VALUES (25, 7, '强退', '7', 'sys_oper_type', '', 'danger', 'N', '0', 'admin', '2023-11-22 14:00:20', '', NULL, '强退操作');
INSERT INTO `sys_dict_data` VALUES (26, 8, '生成代码', '8', 'sys_oper_type', '', 'warning', 'N', '0', 'admin', '2023-11-22 14:00:20', '', NULL, '生成操作');
INSERT INTO `sys_dict_data` VALUES (27, 9, '清空数据', '9', 'sys_oper_type', '', 'danger', 'N', '0', 'admin', '2023-11-22 14:00:20', '', NULL, '清空操作');
INSERT INTO `sys_dict_data` VALUES (28, 1, '成功', '0', 'sys_common_status', '', 'primary', 'N', '0', 'admin', '2023-11-22 14:00:20', '', NULL, '正常状态');
INSERT INTO `sys_dict_data` VALUES (29, 2, '失败', '1', 'sys_common_status', '', 'danger', 'N', '0', 'admin', '2023-11-22 14:00:20', '', NULL, '停用状态');
INSERT INTO `sys_dict_data` VALUES (100, 0, '待审核', '0', 'process_status', NULL, 'warning', 'N', '0', 'admin', '2023-11-22 15:21:59', 'admin', '2023-11-22 15:22:55', NULL);
INSERT INTO `sys_dict_data` VALUES (101, 1, '通过', '1', 'process_status', NULL, 'success', 'N', '0', 'admin', '2023-11-22 15:23:06', '', NULL, NULL);
INSERT INTO `sys_dict_data` VALUES (102, 2, '不通过', '2', 'process_status', NULL, 'danger', 'N', '0', 'admin', '2023-11-22 15:23:24', '', NULL, NULL);
INSERT INTO `sys_dict_data` VALUES (103, 0, '未缴费', '0', 'pay_status', NULL, 'danger', 'N', '0', 'admin', '2023-11-22 15:24:33', '', NULL, NULL);
INSERT INTO `sys_dict_data` VALUES (104, 1, '已缴费', '1', 'pay_status', NULL, 'success', 'N', '0', 'admin', '2023-11-22 15:24:40', '', NULL, NULL);
INSERT INTO `sys_dict_data` VALUES (105, 0, '未签到', '0', 'sign_status', NULL, 'danger', 'N', '0', 'admin', '2023-11-22 15:25:11', '', NULL, NULL);
INSERT INTO `sys_dict_data` VALUES (106, 1, '已签到', '1', 'sign_status', NULL, 'success', 'N', '0', 'admin', '2023-11-22 15:25:20', '', NULL, NULL);
INSERT INTO `sys_dict_data` VALUES (107, 0, '个人', '0', 'app_status', NULL, 'default', 'N', '0', 'admin', '2023-11-22 15:29:05', 'admin', '2023-11-22 16:08:49', NULL);
INSERT INTO `sys_dict_data` VALUES (108, 1, '组织', '1', 'app_status', NULL, 'default', 'N', '0', 'admin', '2023-11-22 15:29:14', 'admin', '2023-11-22 16:08:55', NULL);
INSERT INTO `sys_dict_data` VALUES (109, 0, '0', '0', 'rating_level', NULL, 'default', 'N', '0', 'admin', '2023-11-22 17:07:34', '', NULL, NULL);
INSERT INTO `sys_dict_data` VALUES (110, 1, '1', '1', 'rating_level', NULL, 'default', 'N', '0', 'admin', '2023-11-22 17:07:38', 'admin', '2023-11-22 17:07:42', NULL);
INSERT INTO `sys_dict_data` VALUES (111, 2, '2', '2', 'rating_level', NULL, 'default', 'N', '0', 'admin', '2023-11-22 17:07:47', '', NULL, NULL);
INSERT INTO `sys_dict_data` VALUES (112, 3, '3', '3', 'rating_level', NULL, 'default', 'N', '0', 'admin', '2023-11-22 17:09:30', '', NULL, NULL);
INSERT INTO `sys_dict_data` VALUES (113, 4, '4', '4', 'rating_level', NULL, 'default', 'N', '0', 'admin', '2023-11-22 17:09:36', '', NULL, NULL);
INSERT INTO `sys_dict_data` VALUES (114, 5, '5', '5', 'rating_level', NULL, 'default', 'N', '0', 'admin', '2023-11-22 17:09:45', '', NULL, NULL);
INSERT INTO `sys_dict_data` VALUES (115, 0, '初级讲师', '初级讲师', 'position', NULL, 'default', 'N', '0', 'admin', '2023-11-22 18:01:11', '', NULL, NULL);
INSERT INTO `sys_dict_data` VALUES (116, 1, '中级讲师', '中级讲师', 'position', NULL, 'default', 'N', '0', 'admin', '2023-11-22 18:01:28', '', NULL, NULL);
INSERT INTO `sys_dict_data` VALUES (117, 2, '高级讲师', '高级讲师', 'position', NULL, 'default', 'N', '0', 'admin', '2023-11-22 18:01:40', '', NULL, NULL);
INSERT INTO `sys_dict_data` VALUES (118, 3, '特级讲师', '特级讲师', 'position', NULL, 'default', 'N', '0', 'admin', '2023-11-22 18:01:54', '', NULL, NULL);

-- ----------------------------
-- Table structure for sys_dict_type
-- ----------------------------
DROP TABLE IF EXISTS `sys_dict_type`;
CREATE TABLE `sys_dict_type`  (
  `dict_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '字典主键',
  `dict_name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '字典名称',
  `dict_type` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '字典类型',
  `status` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '0' COMMENT '状态（0正常 1停用）',
  `create_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '创建者',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '更新者',
  `update_time` datetime NULL DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`dict_id`) USING BTREE,
  UNIQUE INDEX `dict_type`(`dict_type` ASC) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 105 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '字典类型表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of sys_dict_type
-- ----------------------------
INSERT INTO `sys_dict_type` VALUES (1, '用户性别', 'sys_user_sex', '0', 'admin', '2023-11-22 14:00:20', '', NULL, '用户性别列表');
INSERT INTO `sys_dict_type` VALUES (2, '菜单状态', 'sys_show_hide', '0', 'admin', '2023-11-22 14:00:20', '', NULL, '菜单状态列表');
INSERT INTO `sys_dict_type` VALUES (3, '系统开关', 'sys_normal_disable', '0', 'admin', '2023-11-22 14:00:20', '', NULL, '系统开关列表');
INSERT INTO `sys_dict_type` VALUES (4, '任务状态', 'sys_job_status', '0', 'admin', '2023-11-22 14:00:20', '', NULL, '任务状态列表');
INSERT INTO `sys_dict_type` VALUES (5, '任务分组', 'sys_job_group', '0', 'admin', '2023-11-22 14:00:20', '', NULL, '任务分组列表');
INSERT INTO `sys_dict_type` VALUES (6, '系统是否', 'sys_yes_no', '0', 'admin', '2023-11-22 14:00:20', '', NULL, '系统是否列表');
INSERT INTO `sys_dict_type` VALUES (7, '通知类型', 'sys_notice_type', '0', 'admin', '2023-11-22 14:00:20', '', NULL, '通知类型列表');
INSERT INTO `sys_dict_type` VALUES (8, '通知状态', 'sys_notice_status', '0', 'admin', '2023-11-22 14:00:20', '', NULL, '通知状态列表');
INSERT INTO `sys_dict_type` VALUES (9, '操作类型', 'sys_oper_type', '0', 'admin', '2023-11-22 14:00:20', '', NULL, '操作类型列表');
INSERT INTO `sys_dict_type` VALUES (10, '系统状态', 'sys_common_status', '0', 'admin', '2023-11-22 14:00:20', '', NULL, '登录状态列表');
INSERT INTO `sys_dict_type` VALUES (100, '审核状态', 'process_status', '0', 'admin', '2023-11-22 15:21:35', '', NULL, NULL);
INSERT INTO `sys_dict_type` VALUES (101, '缴费状态', 'pay_status', '0', 'admin', '2023-11-22 15:23:44', '', NULL, NULL);
INSERT INTO `sys_dict_type` VALUES (102, '签到状态', 'sign_status', '0', 'admin', '2023-11-22 15:24:56', '', NULL, NULL);
INSERT INTO `sys_dict_type` VALUES (103, '报名类型', 'app_status', '0', 'admin', '2023-11-22 15:28:51', '', NULL, NULL);
INSERT INTO `sys_dict_type` VALUES (104, '满意度', 'rating_level', '0', 'admin', '2023-11-22 17:07:24', '', NULL, NULL);
INSERT INTO `sys_dict_type` VALUES (105, '职称选择', 'position', '0', 'admin', '2023-11-22 18:00:53', '', NULL, NULL);

-- ----------------------------
-- Table structure for sys_job
-- ----------------------------
DROP TABLE IF EXISTS `sys_job`;
CREATE TABLE `sys_job`  (
  `job_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '任务ID',
  `job_name` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT '' COMMENT '任务名称',
  `job_group` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT 'DEFAULT' COMMENT '任务组名',
  `invoke_target` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '调用目标字符串',
  `cron_expression` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT 'cron执行表达式',
  `misfire_policy` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '3' COMMENT '计划执行错误策略（1立即执行 2执行一次 3放弃执行）',
  `concurrent` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '1' COMMENT '是否并发执行（0允许 1禁止）',
  `status` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '0' COMMENT '状态（0正常 1暂停）',
  `create_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '创建者',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '更新者',
  `update_time` datetime NULL DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '备注信息',
  PRIMARY KEY (`job_id`, `job_name`, `job_group`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 100 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '定时任务调度表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of sys_job
-- ----------------------------
INSERT INTO `sys_job` VALUES (1, '系统默认（无参）', 'DEFAULT', 'ryTask.ryNoParams', '0/10 * * * * ?', '3', '1', '1', 'admin', '2023-11-22 14:00:20', '', NULL, '');
INSERT INTO `sys_job` VALUES (2, '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '0/15 * * * * ?', '3', '1', '1', 'admin', '2023-11-22 14:00:20', '', NULL, '');
INSERT INTO `sys_job` VALUES (3, '系统默认（多参）', 'DEFAULT', 'ryTask.ryMultipleParams(\'ry\', true, 2000L, 316.50D, 100)', '0/20 * * * * ?', '3', '1', '1', 'admin', '2023-11-22 14:00:20', '', NULL, '');

-- ----------------------------
-- Table structure for sys_job_log
-- ----------------------------
DROP TABLE IF EXISTS `sys_job_log`;
CREATE TABLE `sys_job_log`  (
  `job_log_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '任务日志ID',
  `job_name` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '任务名称',
  `job_group` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '任务组名',
  `invoke_target` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '调用目标字符串',
  `job_message` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '日志信息',
  `status` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '0' COMMENT '执行状态（0正常 1失败）',
  `exception_info` varchar(2000) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '异常信息',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`job_log_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '定时任务调度日志表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of sys_job_log
-- ----------------------------

-- ----------------------------
-- Table structure for sys_logininfor
-- ----------------------------
DROP TABLE IF EXISTS `sys_logininfor`;
CREATE TABLE `sys_logininfor`  (
  `info_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '访问ID',
  `user_name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '用户账号',
  `ipaddr` varchar(128) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '登录IP地址',
  `login_location` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '登录地点',
  `browser` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '浏览器类型',
  `os` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '操作系统',
  `status` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '0' COMMENT '登录状态（0成功 1失败）',
  `msg` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '提示消息',
  `login_time` datetime NULL DEFAULT NULL COMMENT '访问时间',
  PRIMARY KEY (`info_id`) USING BTREE,
  INDEX `idx_sys_logininfor_s`(`status` ASC) USING BTREE,
  INDEX `idx_sys_logininfor_lt`(`login_time` ASC) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 124 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '系统访问记录' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of sys_logininfor
-- ----------------------------
INSERT INTO `sys_logininfor` VALUES (1, 'admin', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '0', '退出成功', '2023-11-22 18:18:06');
INSERT INTO `sys_logininfor` VALUES (2, '测试', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '0', '注册成功', '2023-11-22 18:20:01');
INSERT INTO `sys_logininfor` VALUES (3, '测试', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '0', '登录成功', '2023-11-22 18:20:08');
INSERT INTO `sys_logininfor` VALUES (4, '测试', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '0', '退出成功', '2023-11-22 18:21:19');
INSERT INTO `sys_logininfor` VALUES (5, 'test', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '0', '登录成功', '2023-11-22 18:21:26');
INSERT INTO `sys_logininfor` VALUES (6, 'test', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '0', '退出成功', '2023-11-22 18:22:59');
INSERT INTO `sys_logininfor` VALUES (7, '小王', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '0', '登录成功', '2023-11-22 18:23:04');
INSERT INTO `sys_logininfor` VALUES (8, '小王', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '0', '退出成功', '2023-11-22 18:23:15');
INSERT INTO `sys_logininfor` VALUES (9, '小红', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '0', '登录成功', '2023-11-22 18:23:25');
INSERT INTO `sys_logininfor` VALUES (10, '小红', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '0', '退出成功', '2023-11-22 18:23:40');
INSERT INTO `sys_logininfor` VALUES (11, '小红', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '0', '登录成功', '2023-11-22 18:23:46');
INSERT INTO `sys_logininfor` VALUES (12, '小红', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '0', '退出成功', '2023-11-22 18:23:54');
INSERT INTO `sys_logininfor` VALUES (13, 'admin', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '0', '登录成功', '2023-11-22 18:23:58');
INSERT INTO `sys_logininfor` VALUES (14, 'admin', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '0', '退出成功', '2023-11-22 18:26:30');
INSERT INTO `sys_logininfor` VALUES (15, '小王', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '0', '登录成功', '2023-11-22 18:26:39');
INSERT INTO `sys_logininfor` VALUES (16, '小王', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '0', '退出成功', '2023-11-22 18:27:52');
INSERT INTO `sys_logininfor` VALUES (17, '测试', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '0', '登录成功', '2023-11-22 18:27:58');
INSERT INTO `sys_logininfor` VALUES (18, '测试', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '0', '退出成功', '2023-11-22 18:28:05');
INSERT INTO `sys_logininfor` VALUES (19, 'admin', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '0', '登录成功', '2023-11-22 18:28:09');
INSERT INTO `sys_logininfor` VALUES (20, 'admin', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '0', '登录成功', '2023-11-22 22:56:20');
INSERT INTO `sys_logininfor` VALUES (21, 'admin', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '0', '登录成功', '2023-11-23 15:27:56');
INSERT INTO `sys_logininfor` VALUES (22, 'admin', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '0', '退出成功', '2023-11-23 15:29:31');
INSERT INTO `sys_logininfor` VALUES (23, '小王', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '0', '登录成功', '2023-11-23 15:29:35');
INSERT INTO `sys_logininfor` VALUES (24, '小王', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '0', '退出成功', '2023-11-23 15:29:41');
INSERT INTO `sys_logininfor` VALUES (25, '小红', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '0', '登录成功', '2023-11-23 15:29:46');
INSERT INTO `sys_logininfor` VALUES (26, '小红', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '0', '退出成功', '2023-11-23 15:30:32');
INSERT INTO `sys_logininfor` VALUES (27, 'admin', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '0', '登录成功', '2023-11-23 15:30:35');
INSERT INTO `sys_logininfor` VALUES (28, 'admin', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '0', '退出成功', '2023-11-23 16:01:33');
INSERT INTO `sys_logininfor` VALUES (29, '小红', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '0', '登录成功', '2023-11-23 16:01:38');
INSERT INTO `sys_logininfor` VALUES (30, '小红', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '0', '退出成功', '2023-11-23 16:02:04');
INSERT INTO `sys_logininfor` VALUES (31, 'admin', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '0', '登录成功', '2023-11-23 16:02:07');
INSERT INTO `sys_logininfor` VALUES (32, 'admin', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '0', '退出成功', '2023-11-23 16:07:46');
INSERT INTO `sys_logininfor` VALUES (33, '小红', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '0', '登录成功', '2023-11-23 16:07:50');
INSERT INTO `sys_logininfor` VALUES (34, '小红', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '0', '退出成功', '2023-11-23 16:09:08');
INSERT INTO `sys_logininfor` VALUES (35, 'admin', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '0', '登录成功', '2023-11-23 16:09:12');
INSERT INTO `sys_logininfor` VALUES (36, 'admin', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '0', '登录成功', '2023-11-24 01:35:20');
INSERT INTO `sys_logininfor` VALUES (37, 'admin', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '0', '退出成功', '2023-11-24 01:36:39');
INSERT INTO `sys_logininfor` VALUES (38, 'ry', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '0', '登录成功', '2023-11-24 01:36:50');
INSERT INTO `sys_logininfor` VALUES (39, 'ry', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '0', '退出成功', '2023-11-24 01:40:28');
INSERT INTO `sys_logininfor` VALUES (40, 'test', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '0', '登录成功', '2023-11-24 01:40:48');
INSERT INTO `sys_logininfor` VALUES (41, 'test', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '0', '退出成功', '2023-11-24 01:41:17');
INSERT INTO `sys_logininfor` VALUES (42, '小红', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '0', '登录成功', '2023-11-24 01:41:27');
INSERT INTO `sys_logininfor` VALUES (43, 'admin', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '0', '登录成功', '2023-11-24 19:31:17');
INSERT INTO `sys_logininfor` VALUES (44, 'admin', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '0', '退出成功', '2023-11-24 19:37:22');
INSERT INTO `sys_logininfor` VALUES (45, 'ry', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '0', '登录成功', '2023-11-24 19:37:33');
INSERT INTO `sys_logininfor` VALUES (46, 'ry', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '0', '退出成功', '2023-11-24 19:37:52');
INSERT INTO `sys_logininfor` VALUES (47, '赵梓妍', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '0', '注册成功', '2023-11-24 19:38:28');
INSERT INTO `sys_logininfor` VALUES (48, '赵梓妍', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '0', '登录成功', '2023-11-24 19:38:38');
INSERT INTO `sys_logininfor` VALUES (49, '赵梓妍', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '0', '退出成功', '2023-11-24 19:43:57');
INSERT INTO `sys_logininfor` VALUES (50, 'test', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '0', '登录成功', '2023-11-24 19:44:30');
INSERT INTO `sys_logininfor` VALUES (51, 'test', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '0', '退出成功', '2023-11-24 19:44:50');
INSERT INTO `sys_logininfor` VALUES (52, '谷裕', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '0', '注册成功', '2023-11-24 19:45:17');
INSERT INTO `sys_logininfor` VALUES (53, '谷裕', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '0', '登录成功', '2023-11-24 19:45:25');
INSERT INTO `sys_logininfor` VALUES (54, '谷裕', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '0', '退出成功', '2023-11-24 19:45:55');
INSERT INTO `sys_logininfor` VALUES (55, 'test', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '0', '登录成功', '2023-11-24 19:46:02');
INSERT INTO `sys_logininfor` VALUES (56, 'test', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '0', '退出成功', '2023-11-24 20:00:13');
INSERT INTO `sys_logininfor` VALUES (57, '小红', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '0', '登录成功', '2023-11-24 20:00:20');
INSERT INTO `sys_logininfor` VALUES (58, '小红', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '0', '退出成功', '2023-11-24 20:01:42');
INSERT INTO `sys_logininfor` VALUES (59, 'test', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '1', '验证码错误', '2023-11-24 20:01:47');
INSERT INTO `sys_logininfor` VALUES (60, 'test', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '0', '登录成功', '2023-11-24 20:01:51');
INSERT INTO `sys_logininfor` VALUES (61, 'test', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '0', '退出成功', '2023-11-24 20:01:59');
INSERT INTO `sys_logininfor` VALUES (62, 'test', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '1', '验证码已失效', '2023-11-24 20:14:48');
INSERT INTO `sys_logininfor` VALUES (63, '小红', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '0', '登录成功', '2023-11-24 20:15:11');
INSERT INTO `sys_logininfor` VALUES (64, '小红', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '0', '退出成功', '2023-11-24 20:15:40');
INSERT INTO `sys_logininfor` VALUES (65, '小红', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '0', '登录成功', '2023-11-24 20:15:46');
INSERT INTO `sys_logininfor` VALUES (66, '小红', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '0', '退出成功', '2023-11-24 20:16:00');
INSERT INTO `sys_logininfor` VALUES (67, 'test', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '0', '登录成功', '2023-11-24 20:16:06');
INSERT INTO `sys_logininfor` VALUES (68, 'test', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '0', '退出成功', '2023-11-24 20:16:19');
INSERT INTO `sys_logininfor` VALUES (69, '赵梓妍', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '0', '登录成功', '2023-11-24 20:16:26');
INSERT INTO `sys_logininfor` VALUES (70, '赵梓妍', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '0', '退出成功', '2023-11-24 20:16:35');
INSERT INTO `sys_logininfor` VALUES (71, '小红', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '0', '登录成功', '2023-11-24 20:16:42');
INSERT INTO `sys_logininfor` VALUES (72, '小红', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '0', '退出成功', '2023-11-24 20:18:21');
INSERT INTO `sys_logininfor` VALUES (73, '小李', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '1', '登录用户：小李 不存在', '2023-11-24 20:18:31');
INSERT INTO `sys_logininfor` VALUES (74, '小王', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '0', '登录成功', '2023-11-24 20:18:44');
INSERT INTO `sys_logininfor` VALUES (75, '小王', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '0', '退出成功', '2023-11-24 20:19:23');
INSERT INTO `sys_logininfor` VALUES (76, 'ry', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '0', '登录成功', '2023-11-25 12:27:56');
INSERT INTO `sys_logininfor` VALUES (77, 'ry', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '0', '退出成功', '2023-11-25 12:28:15');
INSERT INTO `sys_logininfor` VALUES (78, 'test', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '0', '登录成功', '2023-11-25 12:28:29');
INSERT INTO `sys_logininfor` VALUES (79, 'test', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '0', '退出成功', '2023-11-25 12:28:58');
INSERT INTO `sys_logininfor` VALUES (80, '小红', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '0', '登录成功', '2023-11-25 12:29:09');
INSERT INTO `sys_logininfor` VALUES (81, '小红', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '0', '退出成功', '2023-11-25 12:43:00');
INSERT INTO `sys_logininfor` VALUES (82, 'admin', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '0', '登录成功', '2023-11-25 12:43:05');
INSERT INTO `sys_logininfor` VALUES (83, 'admin', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '0', '退出成功', '2023-11-25 12:44:36');
INSERT INTO `sys_logininfor` VALUES (84, 'test', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '0', '登录成功', '2023-11-25 12:44:42');
INSERT INTO `sys_logininfor` VALUES (85, 'test', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '0', '退出成功', '2023-11-25 12:45:04');
INSERT INTO `sys_logininfor` VALUES (86, 'admin', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '0', '登录成功', '2023-11-25 12:45:08');
INSERT INTO `sys_logininfor` VALUES (87, 'admin', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '0', '退出成功', '2023-11-25 12:47:38');
INSERT INTO `sys_logininfor` VALUES (88, 'ry', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '0', '登录成功', '2023-11-25 12:47:46');
INSERT INTO `sys_logininfor` VALUES (89, 'ry', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '0', '退出成功', '2023-11-25 12:47:59');
INSERT INTO `sys_logininfor` VALUES (90, 'test', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '0', '登录成功', '2023-11-25 12:48:05');
INSERT INTO `sys_logininfor` VALUES (91, 'test', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '0', '退出成功', '2023-11-25 12:48:35');
INSERT INTO `sys_logininfor` VALUES (92, '小红', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '0', '登录成功', '2023-11-25 12:48:44');
INSERT INTO `sys_logininfor` VALUES (93, 'ry', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2023-11-25 12:50:24');
INSERT INTO `sys_logininfor` VALUES (94, 'ry', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '退出成功', '2023-11-25 12:50:34');
INSERT INTO `sys_logininfor` VALUES (95, 'test', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2023-11-25 12:50:48');
INSERT INTO `sys_logininfor` VALUES (96, 'test', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '退出成功', '2023-11-25 12:50:59');
INSERT INTO `sys_logininfor` VALUES (97, '小红', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2023-11-25 12:51:11');
INSERT INTO `sys_logininfor` VALUES (98, '小红', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2023-11-25 12:58:57');
INSERT INTO `sys_logininfor` VALUES (99, '小红', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '退出成功', '2023-11-25 12:59:08');
INSERT INTO `sys_logininfor` VALUES (100, 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '1', '验证码已失效', '2023-11-25 20:13:29');
INSERT INTO `sys_logininfor` VALUES (101, 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2023-11-25 20:13:33');
INSERT INTO `sys_logininfor` VALUES (102, 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '退出成功', '2023-11-25 20:18:14');
INSERT INTO `sys_logininfor` VALUES (103, '小红', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2023-11-25 20:18:20');
INSERT INTO `sys_logininfor` VALUES (104, '小红', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '退出成功', '2023-11-25 20:19:20');
INSERT INTO `sys_logininfor` VALUES (105, 'test', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2023-11-25 20:19:26');
INSERT INTO `sys_logininfor` VALUES (106, 'test', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '退出成功', '2023-11-25 20:22:18');
INSERT INTO `sys_logininfor` VALUES (107, '小王', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2023-11-25 20:22:48');
INSERT INTO `sys_logininfor` VALUES (108, '小王', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '退出成功', '2023-11-25 20:23:02');
INSERT INTO `sys_logininfor` VALUES (109, 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2023-11-25 20:23:10');
INSERT INTO `sys_logininfor` VALUES (110, 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '退出成功', '2023-11-25 20:37:43');
INSERT INTO `sys_logininfor` VALUES (111, 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2023-11-25 20:39:34');
INSERT INTO `sys_logininfor` VALUES (112, 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '退出成功', '2023-11-25 20:39:42');
INSERT INTO `sys_logininfor` VALUES (113, 'ry', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2023-11-25 20:39:58');
INSERT INTO `sys_logininfor` VALUES (114, 'ry', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '退出成功', '2023-11-25 20:40:12');
INSERT INTO `sys_logininfor` VALUES (115, 'test', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2023-11-25 20:40:26');
INSERT INTO `sys_logininfor` VALUES (116, 'test', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '退出成功', '2023-11-25 20:43:30');
INSERT INTO `sys_logininfor` VALUES (117, 'ry', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2023-11-25 20:43:44');
INSERT INTO `sys_logininfor` VALUES (118, 'ry', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '退出成功', '2023-11-25 20:45:40');
INSERT INTO `sys_logininfor` VALUES (119, 'test', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2023-11-25 20:45:51');
INSERT INTO `sys_logininfor` VALUES (120, 'test', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '退出成功', '2023-11-25 20:46:25');
INSERT INTO `sys_logininfor` VALUES (121, '小红', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2023-11-25 20:46:35');
INSERT INTO `sys_logininfor` VALUES (122, '小红', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '退出成功', '2023-11-25 20:47:48');
INSERT INTO `sys_logininfor` VALUES (123, 'test', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2023-11-25 20:47:55');
INSERT INTO `sys_logininfor` VALUES (124, '经理', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '1', '验证码错误', '2023-11-25 21:36:05');
INSERT INTO `sys_logininfor` VALUES (125, '经理', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2023-11-25 21:36:11');
INSERT INTO `sys_logininfor` VALUES (126, '经理', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '退出成功', '2023-11-25 21:36:17');
INSERT INTO `sys_logininfor` VALUES (127, '执行人', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2023-11-25 21:36:43');
INSERT INTO `sys_logininfor` VALUES (128, '执行人', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '退出成功', '2023-11-25 21:38:39');
INSERT INTO `sys_logininfor` VALUES (129, '赵梓妍', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2023-11-25 21:38:53');
INSERT INTO `sys_logininfor` VALUES (130, '赵梓妍', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '退出成功', '2023-11-25 21:39:44');
INSERT INTO `sys_logininfor` VALUES (131, '经理', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '1', '验证码错误', '2023-11-25 21:39:57');
INSERT INTO `sys_logininfor` VALUES (132, '经理', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2023-11-25 21:39:59');
INSERT INTO `sys_logininfor` VALUES (133, '经理', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '退出成功', '2023-11-25 21:40:03');
INSERT INTO `sys_logininfor` VALUES (134, '经理', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2023-11-25 21:40:10');
INSERT INTO `sys_logininfor` VALUES (135, '经理', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '退出成功', '2023-11-25 21:40:59');
INSERT INTO `sys_logininfor` VALUES (136, '现场工作人员', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2023-11-25 21:41:14');
INSERT INTO `sys_logininfor` VALUES (137, '现场工作人员', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '退出成功', '2023-11-25 21:42:10');
INSERT INTO `sys_logininfor` VALUES (138, 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2023-11-25 21:42:37');
INSERT INTO `sys_logininfor` VALUES (139, 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '退出成功', '2023-11-25 21:43:05');
INSERT INTO `sys_logininfor` VALUES (140, '赵梓妍', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2023-11-25 21:43:19');
INSERT INTO `sys_logininfor` VALUES (141, '赵梓妍', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '退出成功', '2023-11-25 21:44:42');
INSERT INTO `sys_logininfor` VALUES (142, '赵梓妍', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2023-11-25 21:44:53');
INSERT INTO `sys_logininfor` VALUES (143, '赵梓妍', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '退出成功', '2023-11-25 21:46:28');
INSERT INTO `sys_logininfor` VALUES (144, '吕文宣', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '注册成功', '2023-11-25 21:46:44');
INSERT INTO `sys_logininfor` VALUES (145, '吕文宣', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2023-11-25 21:46:54');
INSERT INTO `sys_logininfor` VALUES (146, '吕文宣', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '退出成功', '2023-11-25 21:48:08');
INSERT INTO `sys_logininfor` VALUES (147, '执行人', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2023-11-25 21:48:21');
INSERT INTO `sys_logininfor` VALUES (148, '执行人', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '退出成功', '2023-11-25 21:50:20');
INSERT INTO `sys_logininfor` VALUES (149, '执行人', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2023-11-25 21:50:26');
INSERT INTO `sys_logininfor` VALUES (150, '执行人', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '退出成功', '2023-11-25 21:51:56');
INSERT INTO `sys_logininfor` VALUES (151, '经理', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2023-11-25 21:52:05');
INSERT INTO `sys_logininfor` VALUES (152, '经理', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '退出成功', '2023-11-25 21:52:24');
INSERT INTO `sys_logininfor` VALUES (153, '现场工作人员', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2023-11-25 21:52:34');
INSERT INTO `sys_logininfor` VALUES (154, '现场工作人员', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '退出成功', '2023-11-25 21:56:39');
INSERT INTO `sys_logininfor` VALUES (155, 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2023-11-25 21:56:47');
INSERT INTO `sys_logininfor` VALUES (156, 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '退出成功', '2023-11-25 21:57:02');
INSERT INTO `sys_logininfor` VALUES (157, 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2023-11-25 21:57:09');
INSERT INTO `sys_logininfor` VALUES (158, 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '退出成功', '2023-11-25 21:57:19');
INSERT INTO `sys_logininfor` VALUES (159, 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2023-11-25 21:57:26');

-- ----------------------------
-- Table structure for sys_menu
-- ----------------------------
DROP TABLE IF EXISTS `sys_menu`;
CREATE TABLE `sys_menu`  (
  `menu_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '菜单ID',
  `menu_name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '菜单名称',
  `parent_id` bigint(20) NULL DEFAULT 0 COMMENT '父菜单ID',
  `order_num` int(11) NULL DEFAULT 0 COMMENT '显示顺序',
  `path` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '路由地址',
  `component` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '组件路径',
  `query` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '路由参数',
  `is_frame` int(11) NULL DEFAULT 1 COMMENT '是否为外链（0是 1否）',
  `is_cache` int(11) NULL DEFAULT 0 COMMENT '是否缓存（0缓存 1不缓存）',
  `menu_type` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '菜单类型（M目录 C菜单 F按钮）',
  `visible` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '0' COMMENT '菜单状态（0显示 1隐藏）',
  `status` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '0' COMMENT '菜单状态（0正常 1停用）',
  `perms` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '权限标识',
  `icon` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '#' COMMENT '菜单图标',
  `create_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '创建者',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '更新者',
  `update_time` datetime NULL DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '备注',
  PRIMARY KEY (`menu_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2048 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '菜单权限表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of sys_menu
-- ----------------------------
INSERT INTO `sys_menu` VALUES (1, '系统管理', 0, 1, 'system', NULL, '', 1, 0, 'M', '0', '0', '', 'system', 'admin', '2023-11-22 14:00:20', '', NULL, '系统管理目录');
INSERT INTO `sys_menu` VALUES (2, '系统监控', 0, 2, 'monitor', NULL, '', 1, 0, 'M', '1', '0', '', 'monitor', 'admin', '2023-11-22 14:00:20', '', NULL, '系统监控目录');
INSERT INTO `sys_menu` VALUES (3, '系统工具', 0, 10, 'tool', NULL, '', 1, 0, 'M', '1', '0', '', 'tool', 'admin', '2023-11-22 14:00:20', 'admin', '2023-11-23 16:06:43', '系统工具目录');
INSERT INTO `sys_menu` VALUES (100, '用户管理', 1, 1, 'user', 'system/user/index', '', 1, 0, 'C', '0', '0', 'system:user:list', 'user', 'admin', '2023-11-22 14:00:20', '', NULL, '用户管理菜单');
INSERT INTO `sys_menu` VALUES (101, '角色管理', 1, 2, 'role', 'system/role/index', '', 1, 0, 'C', '0', '0', 'system:role:list', 'peoples', 'admin', '2023-11-22 14:00:20', 'admin', '2023-11-23 15:28:33', '角色管理菜单');
INSERT INTO `sys_menu` VALUES (102, '菜单管理', 1, 3, 'menu', 'system/menu/index', '', 1, 0, 'C', '1', '0', 'system:menu:list', 'tree-table', 'admin', '2023-11-22 14:00:20', 'admin', '2023-11-23 16:07:39', '菜单管理菜单');
INSERT INTO `sys_menu` VALUES (103, '部门管理', 1, 4, 'dept', 'system/dept/index', '', 1, 0, 'C', '0', '0', 'system:dept:list', 'tree', 'admin', '2023-11-22 14:00:20', '', NULL, '部门管理菜单');
INSERT INTO `sys_menu` VALUES (104, '岗位管理', 1, 5, 'post', 'system/post/index', '', 1, 0, 'C', '1', '0', 'system:post:list', 'post', 'admin', '2023-11-22 14:00:20', 'admin', '2023-11-22 18:12:15', '岗位管理菜单');
INSERT INTO `sys_menu` VALUES (105, '字典管理', 1, 6, 'dict', 'system/dict/index', '', 1, 0, 'C', '1', '0', 'system:dict:list', 'dict', 'admin', '2023-11-22 14:00:20', 'admin', '2023-11-22 18:12:01', '字典管理菜单');
INSERT INTO `sys_menu` VALUES (106, '参数设置', 1, 7, 'config', 'system/config/index', '', 1, 0, 'C', '1', '0', 'system:config:list', 'edit', 'admin', '2023-11-22 14:00:20', 'admin', '2023-11-22 18:12:50', '参数设置菜单');
INSERT INTO `sys_menu` VALUES (107, '通知公告', 2047, 8, 'notice', 'system/notice/index', '', 1, 0, 'C', '0', '0', 'system:notice:list', 'message', 'admin', '2023-11-22 14:00:20', 'admin', '2023-11-23 16:06:24', '通知公告菜单');
INSERT INTO `sys_menu` VALUES (108, '日志管理', 1, 9, 'log', '', '', 1, 0, 'M', '0', '0', '', 'log', 'admin', '2023-11-22 14:00:20', '', NULL, '日志管理菜单');
INSERT INTO `sys_menu` VALUES (109, '在线用户', 2, 1, 'online', 'monitor/online/index', '', 1, 0, 'C', '0', '0', 'monitor:online:list', 'online', 'admin', '2023-11-22 14:00:20', '', NULL, '在线用户菜单');
INSERT INTO `sys_menu` VALUES (110, '定时任务', 2, 2, 'job', 'monitor/job/index', '', 1, 0, 'C', '0', '0', 'monitor:job:list', 'job', 'admin', '2023-11-22 14:00:20', '', NULL, '定时任务菜单');
INSERT INTO `sys_menu` VALUES (111, '数据监控', 2, 3, 'druid', 'monitor/druid/index', '', 1, 0, 'C', '0', '0', 'monitor:druid:list', 'druid', 'admin', '2023-11-22 14:00:20', '', NULL, '数据监控菜单');
INSERT INTO `sys_menu` VALUES (112, '服务监控', 2, 4, 'server', 'monitor/server/index', '', 1, 0, 'C', '0', '0', 'monitor:server:list', 'server', 'admin', '2023-11-22 14:00:20', '', NULL, '服务监控菜单');
INSERT INTO `sys_menu` VALUES (113, '缓存监控', 2, 5, 'cache', 'monitor/cache/index', '', 1, 0, 'C', '0', '0', 'monitor:cache:list', 'redis', 'admin', '2023-11-22 14:00:20', '', NULL, '缓存监控菜单');
INSERT INTO `sys_menu` VALUES (114, '缓存列表', 2, 6, 'cacheList', 'monitor/cache/list', '', 1, 0, 'C', '0', '0', 'monitor:cache:list', 'redis-list', 'admin', '2023-11-22 14:00:20', '', NULL, '缓存列表菜单');
INSERT INTO `sys_menu` VALUES (115, '表单构建', 3, 1, 'build', 'tool/build/index', '', 1, 0, 'C', '0', '0', 'tool:build:list', 'build', 'admin', '2023-11-22 14:00:20', '', NULL, '表单构建菜单');
INSERT INTO `sys_menu` VALUES (116, '代码生成', 3, 2, 'gen', 'tool/gen/index', '', 1, 0, 'C', '0', '0', 'tool:gen:list', 'code', 'admin', '2023-11-22 14:00:20', '', NULL, '代码生成菜单');
INSERT INTO `sys_menu` VALUES (117, '系统接口', 3, 3, 'swagger', 'tool/swagger/index', '', 1, 0, 'C', '0', '0', 'tool:swagger:list', 'swagger', 'admin', '2023-11-22 14:00:20', '', NULL, '系统接口菜单');
INSERT INTO `sys_menu` VALUES (500, '操作日志', 108, 1, 'operlog', 'monitor/operlog/index', '', 1, 0, 'C', '0', '0', 'monitor:operlog:list', 'form', 'admin', '2023-11-22 14:00:20', '', NULL, '操作日志菜单');
INSERT INTO `sys_menu` VALUES (501, '登录日志', 108, 2, 'logininfor', 'monitor/logininfor/index', '', 1, 0, 'C', '0', '0', 'monitor:logininfor:list', 'logininfor', 'admin', '2023-11-22 14:00:20', '', NULL, '登录日志菜单');
INSERT INTO `sys_menu` VALUES (1000, '用户查询', 100, 1, '', '', '', 1, 0, 'F', '0', '0', 'system:user:query', '#', 'admin', '2023-11-22 14:00:20', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1001, '用户新增', 100, 2, '', '', '', 1, 0, 'F', '0', '0', 'system:user:add', '#', 'admin', '2023-11-22 14:00:20', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1002, '用户修改', 100, 3, '', '', '', 1, 0, 'F', '0', '0', 'system:user:edit', '#', 'admin', '2023-11-22 14:00:20', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1003, '用户删除', 100, 4, '', '', '', 1, 0, 'F', '0', '0', 'system:user:remove', '#', 'admin', '2023-11-22 14:00:20', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1004, '用户导出', 100, 5, '', '', '', 1, 0, 'F', '0', '0', 'system:user:export', '#', 'admin', '2023-11-22 14:00:20', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1005, '用户导入', 100, 6, '', '', '', 1, 0, 'F', '0', '0', 'system:user:import', '#', 'admin', '2023-11-22 14:00:20', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1006, '重置密码', 100, 7, '', '', '', 1, 0, 'F', '0', '0', 'system:user:resetPwd', '#', 'admin', '2023-11-22 14:00:20', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1007, '角色查询', 101, 1, '', '', '', 1, 0, 'F', '0', '0', 'system:role:query', '#', 'admin', '2023-11-22 14:00:20', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1008, '角色新增', 101, 2, '', '', '', 1, 0, 'F', '0', '0', 'system:role:add', '#', 'admin', '2023-11-22 14:00:20', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1009, '角色修改', 101, 3, '', '', '', 1, 0, 'F', '0', '0', 'system:role:edit', '#', 'admin', '2023-11-22 14:00:20', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1010, '角色删除', 101, 4, '', '', '', 1, 0, 'F', '0', '0', 'system:role:remove', '#', 'admin', '2023-11-22 14:00:20', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1011, '角色导出', 101, 5, '', '', '', 1, 0, 'F', '0', '0', 'system:role:export', '#', 'admin', '2023-11-22 14:00:20', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1012, '菜单查询', 102, 1, '', '', '', 1, 0, 'F', '0', '0', 'system:menu:query', '#', 'admin', '2023-11-22 14:00:20', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1013, '菜单新增', 102, 2, '', '', '', 1, 0, 'F', '0', '0', 'system:menu:add', '#', 'admin', '2023-11-22 14:00:20', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1014, '菜单修改', 102, 3, '', '', '', 1, 0, 'F', '0', '0', 'system:menu:edit', '#', 'admin', '2023-11-22 14:00:20', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1015, '菜单删除', 102, 4, '', '', '', 1, 0, 'F', '0', '0', 'system:menu:remove', '#', 'admin', '2023-11-22 14:00:20', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1016, '部门查询', 103, 1, '', '', '', 1, 0, 'F', '0', '0', 'system:dept:query', '#', 'admin', '2023-11-22 14:00:20', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1017, '部门新增', 103, 2, '', '', '', 1, 0, 'F', '0', '0', 'system:dept:add', '#', 'admin', '2023-11-22 14:00:20', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1018, '部门修改', 103, 3, '', '', '', 1, 0, 'F', '0', '0', 'system:dept:edit', '#', 'admin', '2023-11-22 14:00:20', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1019, '部门删除', 103, 4, '', '', '', 1, 0, 'F', '0', '0', 'system:dept:remove', '#', 'admin', '2023-11-22 14:00:20', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1020, '岗位查询', 104, 1, '', '', '', 1, 0, 'F', '0', '0', 'system:post:query', '#', 'admin', '2023-11-22 14:00:20', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1021, '岗位新增', 104, 2, '', '', '', 1, 0, 'F', '0', '0', 'system:post:add', '#', 'admin', '2023-11-22 14:00:20', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1022, '岗位修改', 104, 3, '', '', '', 1, 0, 'F', '0', '0', 'system:post:edit', '#', 'admin', '2023-11-22 14:00:20', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1023, '岗位删除', 104, 4, '', '', '', 1, 0, 'F', '0', '0', 'system:post:remove', '#', 'admin', '2023-11-22 14:00:20', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1024, '岗位导出', 104, 5, '', '', '', 1, 0, 'F', '0', '0', 'system:post:export', '#', 'admin', '2023-11-22 14:00:20', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1025, '字典查询', 105, 1, '#', '', '', 1, 0, 'F', '0', '0', 'system:dict:query', '#', 'admin', '2023-11-22 14:00:20', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1026, '字典新增', 105, 2, '#', '', '', 1, 0, 'F', '0', '0', 'system:dict:add', '#', 'admin', '2023-11-22 14:00:20', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1027, '字典修改', 105, 3, '#', '', '', 1, 0, 'F', '0', '0', 'system:dict:edit', '#', 'admin', '2023-11-22 14:00:20', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1028, '字典删除', 105, 4, '#', '', '', 1, 0, 'F', '0', '0', 'system:dict:remove', '#', 'admin', '2023-11-22 14:00:20', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1029, '字典导出', 105, 5, '#', '', '', 1, 0, 'F', '0', '0', 'system:dict:export', '#', 'admin', '2023-11-22 14:00:20', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1030, '参数查询', 106, 1, '#', '', '', 1, 0, 'F', '0', '0', 'system:config:query', '#', 'admin', '2023-11-22 14:00:20', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1031, '参数新增', 106, 2, '#', '', '', 1, 0, 'F', '0', '0', 'system:config:add', '#', 'admin', '2023-11-22 14:00:20', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1032, '参数修改', 106, 3, '#', '', '', 1, 0, 'F', '0', '0', 'system:config:edit', '#', 'admin', '2023-11-22 14:00:20', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1033, '参数删除', 106, 4, '#', '', '', 1, 0, 'F', '0', '0', 'system:config:remove', '#', 'admin', '2023-11-22 14:00:20', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1034, '参数导出', 106, 5, '#', '', '', 1, 0, 'F', '0', '0', 'system:config:export', '#', 'admin', '2023-11-22 14:00:20', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1035, '公告查询', 107, 1, '#', '', '', 1, 0, 'F', '0', '0', 'system:notice:query', '#', 'admin', '2023-11-22 14:00:20', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1036, '公告新增', 107, 2, '#', '', '', 1, 0, 'F', '0', '0', 'system:notice:add', '#', 'admin', '2023-11-22 14:00:20', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1037, '公告修改', 107, 3, '#', '', '', 1, 0, 'F', '0', '0', 'system:notice:edit', '#', 'admin', '2023-11-22 14:00:20', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1038, '公告删除', 107, 4, '#', '', '', 1, 0, 'F', '0', '0', 'system:notice:remove', '#', 'admin', '2023-11-22 14:00:20', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1039, '操作查询', 500, 1, '#', '', '', 1, 0, 'F', '0', '0', 'monitor:operlog:query', '#', 'admin', '2023-11-22 14:00:20', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1040, '操作删除', 500, 2, '#', '', '', 1, 0, 'F', '0', '0', 'monitor:operlog:remove', '#', 'admin', '2023-11-22 14:00:20', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1041, '日志导出', 500, 3, '#', '', '', 1, 0, 'F', '0', '0', 'monitor:operlog:export', '#', 'admin', '2023-11-22 14:00:20', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1042, '登录查询', 501, 1, '#', '', '', 1, 0, 'F', '0', '0', 'monitor:logininfor:query', '#', 'admin', '2023-11-22 14:00:20', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1043, '登录删除', 501, 2, '#', '', '', 1, 0, 'F', '0', '0', 'monitor:logininfor:remove', '#', 'admin', '2023-11-22 14:00:20', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1044, '日志导出', 501, 3, '#', '', '', 1, 0, 'F', '0', '0', 'monitor:logininfor:export', '#', 'admin', '2023-11-22 14:00:20', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1045, '账户解锁', 501, 4, '#', '', '', 1, 0, 'F', '0', '0', 'monitor:logininfor:unlock', '#', 'admin', '2023-11-22 14:00:20', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1046, '在线查询', 109, 1, '#', '', '', 1, 0, 'F', '0', '0', 'monitor:online:query', '#', 'admin', '2023-11-22 14:00:20', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1047, '批量强退', 109, 2, '#', '', '', 1, 0, 'F', '0', '0', 'monitor:online:batchLogout', '#', 'admin', '2023-11-22 14:00:20', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1048, '单条强退', 109, 3, '#', '', '', 1, 0, 'F', '0', '0', 'monitor:online:forceLogout', '#', 'admin', '2023-11-22 14:00:20', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1049, '任务查询', 110, 1, '#', '', '', 1, 0, 'F', '0', '0', 'monitor:job:query', '#', 'admin', '2023-11-22 14:00:20', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1050, '任务新增', 110, 2, '#', '', '', 1, 0, 'F', '0', '0', 'monitor:job:add', '#', 'admin', '2023-11-22 14:00:20', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1051, '任务修改', 110, 3, '#', '', '', 1, 0, 'F', '0', '0', 'monitor:job:edit', '#', 'admin', '2023-11-22 14:00:20', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1052, '任务删除', 110, 4, '#', '', '', 1, 0, 'F', '0', '0', 'monitor:job:remove', '#', 'admin', '2023-11-22 14:00:20', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1053, '状态修改', 110, 5, '#', '', '', 1, 0, 'F', '0', '0', 'monitor:job:changeStatus', '#', 'admin', '2023-11-22 14:00:20', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1054, '任务导出', 110, 6, '#', '', '', 1, 0, 'F', '0', '0', 'monitor:job:export', '#', 'admin', '2023-11-22 14:00:20', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1055, '生成查询', 116, 1, '#', '', '', 1, 0, 'F', '0', '0', 'tool:gen:query', '#', 'admin', '2023-11-22 14:00:20', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1056, '生成修改', 116, 2, '#', '', '', 1, 0, 'F', '0', '0', 'tool:gen:edit', '#', 'admin', '2023-11-22 14:00:20', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1057, '生成删除', 116, 3, '#', '', '', 1, 0, 'F', '0', '0', 'tool:gen:remove', '#', 'admin', '2023-11-22 14:00:20', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1058, '导入代码', 116, 4, '#', '', '', 1, 0, 'F', '0', '0', 'tool:gen:import', '#', 'admin', '2023-11-22 14:00:20', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1059, '预览代码', 116, 5, '#', '', '', 1, 0, 'F', '0', '0', 'tool:gen:preview', '#', 'admin', '2023-11-22 14:00:20', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1060, '生成代码', 116, 6, '#', '', '', 1, 0, 'F', '0', '0', 'tool:gen:code', '#', 'admin', '2023-11-22 14:00:20', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2000, '课程管理', 0, 1, 'course', NULL, NULL, 1, 0, 'M', '0', '0', '', 'build', 'admin', '2023-11-22 14:32:04', 'admin', '2023-11-22 17:57:46', '');
INSERT INTO `sys_menu` VALUES (2001, '课程报名', 0, 1, 'aoo', NULL, NULL, 1, 0, 'M', '0', '0', NULL, 'form', 'admin', '2023-11-22 15:26:55', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2002, '缴费签到', 0, 3, 'sign', NULL, NULL, 1, 0, 'M', '0', '0', NULL, 'money', 'admin', '2023-11-22 15:27:25', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2003, '报名', 2001, 1, 'application', 'system/application/index', NULL, 1, 0, 'C', '0', '0', 'system:application:list', '#', 'admin', '2023-11-22 15:31:02', '', NULL, '报名菜单');
INSERT INTO `sys_menu` VALUES (2004, '报名查询', 2003, 1, '#', '', NULL, 1, 0, 'F', '0', '0', 'system:application:query', '#', 'admin', '2023-11-22 15:31:02', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2005, '报名新增', 2003, 2, '#', '', NULL, 1, 0, 'F', '0', '0', 'system:application:add', '#', 'admin', '2023-11-22 15:31:02', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2006, '报名修改', 2003, 3, '#', '', NULL, 1, 0, 'F', '0', '0', 'system:application:edit', '#', 'admin', '2023-11-22 15:31:02', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2007, '报名删除', 2003, 4, '#', '', NULL, 1, 0, 'F', '0', '0', 'system:application:remove', '#', 'admin', '2023-11-22 15:31:02', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2008, '报名导出', 2003, 5, '#', '', NULL, 1, 0, 'F', '0', '0', 'system:application:export', '#', 'admin', '2023-11-22 15:31:02', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2009, '课程信息', 2000, 1, 'course', 'system/course/index', NULL, 1, 0, 'C', '0', '0', 'system:course:list', '#', 'admin', '2023-11-22 15:31:08', '', NULL, '课程信息菜单');
INSERT INTO `sys_menu` VALUES (2010, '课程信息查询', 2009, 1, '#', '', NULL, 1, 0, 'F', '0', '0', 'system:course:query', '#', 'admin', '2023-11-22 15:31:08', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2011, '课程信息新增', 2009, 2, '#', '', NULL, 1, 0, 'F', '0', '0', 'system:course:add', '#', 'admin', '2023-11-22 15:31:08', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2012, '课程信息修改', 2009, 3, '#', '', NULL, 1, 0, 'F', '0', '0', 'system:course:edit', '#', 'admin', '2023-11-22 15:31:08', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2013, '课程信息删除', 2009, 4, '#', '', NULL, 1, 0, 'F', '0', '0', 'system:course:remove', '#', 'admin', '2023-11-22 15:31:08', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2014, '课程信息导出', 2009, 5, '#', '', NULL, 1, 0, 'F', '0', '0', 'system:course:export', '#', 'admin', '2023-11-22 15:31:08', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2015, '缴费签到', 2002, 1, 'payment', 'system/payment/index', NULL, 1, 0, 'C', '0', '0', 'system:payment:list', '#', 'admin', '2023-11-22 15:31:14', 'admin', '2023-11-23 16:03:27', '缴费签到菜单');
INSERT INTO `sys_menu` VALUES (2016, '缴费签到查询', 2015, 1, '#', '', NULL, 1, 0, 'F', '0', '0', 'system:payment:query', '#', 'admin', '2023-11-22 15:31:14', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2017, '缴费签到新增', 2015, 2, '#', '', NULL, 1, 0, 'F', '0', '0', 'system:payment:add', '#', 'admin', '2023-11-22 15:31:14', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2018, '缴费签到修改', 2015, 3, '#', '', NULL, 1, 0, 'F', '0', '0', 'system:payment:edit', '#', 'admin', '2023-11-22 15:31:14', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2019, '缴费签到删除', 2015, 4, '#', '', NULL, 1, 0, 'F', '0', '0', 'system:payment:remove', '#', 'admin', '2023-11-22 15:31:14', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2020, '缴费签到导出', 2015, 5, '#', '', NULL, 1, 0, 'F', '0', '0', 'system:payment:export', '#', 'admin', '2023-11-22 15:31:14', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2021, '问卷调查', 0, 3, 'survey', NULL, NULL, 1, 0, 'M', '0', '0', NULL, 'documentation', 'admin', '2023-11-22 17:11:06', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2022, '问卷调查', 2021, 1, 'survey', 'system/survey/index', NULL, 1, 0, 'C', '0', '0', 'system:survey:list', '#', 'admin', '2023-11-22 17:11:46', 'admin', '2023-11-23 16:00:17', '问卷调查菜单');
INSERT INTO `sys_menu` VALUES (2023, '问卷调查查询', 2022, 1, '#', '', NULL, 1, 0, 'F', '0', '0', 'system:survey:query', '#', 'admin', '2023-11-22 17:11:46', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2024, '问卷调查新增', 2022, 2, '#', '', NULL, 1, 0, 'F', '0', '0', 'system:survey:add', '#', 'admin', '2023-11-22 17:11:46', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2025, '问卷调查修改', 2022, 3, '#', '', NULL, 1, 0, 'F', '0', '0', 'system:survey:edit', '#', 'admin', '2023-11-22 17:11:46', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2026, '问卷调查删除', 2022, 4, '#', '', NULL, 1, 0, 'F', '0', '0', 'system:survey:remove', '#', 'admin', '2023-11-22 17:11:46', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2027, '问卷调查导出', 2022, 5, '#', '', NULL, 1, 0, 'F', '0', '0', 'system:survey:export', '#', 'admin', '2023-11-22 17:11:46', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2028, '讲师管理', 0, 3, 'talker', NULL, NULL, 1, 0, 'M', '0', '0', NULL, 'peoples', 'admin', '2023-11-22 17:46:32', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2029, '讲师管理', 2028, 1, 'trianer', 'system/trianer/index', NULL, 1, 0, 'C', '0', '0', 'system:trianer:list', '#', 'admin', '2023-11-22 18:03:09', 'admin', '2023-11-23 15:59:12', '讲师管理菜单');
INSERT INTO `sys_menu` VALUES (2030, '讲师管理查询', 2029, 1, '#', '', NULL, 1, 0, 'F', '0', '0', 'system:trianer:query', '#', 'admin', '2023-11-22 18:03:09', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2031, '讲师管理新增', 2029, 2, '#', '', NULL, 1, 0, 'F', '0', '0', 'system:trianer:add', '#', 'admin', '2023-11-22 18:03:09', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2032, '讲师管理修改', 2029, 3, '#', '', NULL, 1, 0, 'F', '0', '0', 'system:trianer:edit', '#', 'admin', '2023-11-22 18:03:09', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2033, '讲师管理删除', 2029, 4, '#', '', NULL, 1, 0, 'F', '0', '0', 'system:trianer:remove', '#', 'admin', '2023-11-22 18:03:09', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2034, '讲师管理导出', 2029, 5, '#', '', NULL, 1, 0, 'F', '0', '0', 'system:trianer:export', '#', 'admin', '2023-11-22 18:03:09', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2035, '汇总报表', 0, 3, 'total', NULL, NULL, 1, 0, 'M', '0', '0', NULL, 'table', 'admin', '2023-11-23 15:31:04', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2036, '课程收入', 2035, 1, 'income', 'system/income/index', NULL, 1, 0, 'C', '0', '0', 'system:income:list', 'excel', 'admin', '2023-11-23 15:41:11', 'admin', '2023-11-23 15:58:05', '课程收入菜单');
INSERT INTO `sys_menu` VALUES (2037, '课程收入查询', 2036, 1, '#', '', NULL, 1, 0, 'F', '0', '0', 'system:income:query', '#', 'admin', '2023-11-23 15:41:11', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2038, '课程收入新增', 2036, 2, '#', '', NULL, 1, 0, 'F', '0', '0', 'system:income:add', '#', 'admin', '2023-11-23 15:41:11', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2039, '课程收入修改', 2036, 3, '#', '', NULL, 1, 0, 'F', '0', '0', 'system:income:edit', '#', 'admin', '2023-11-23 15:41:11', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2040, '课程收入删除', 2036, 4, '#', '', NULL, 1, 0, 'F', '0', '0', 'system:income:remove', '#', 'admin', '2023-11-23 15:41:11', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2041, '课程收入导出', 2036, 5, '#', '', NULL, 1, 0, 'F', '0', '0', 'system:income:export', '#', 'admin', '2023-11-23 15:41:11', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2043, '课程', 2035, 2, 'course', 'system/course/index', NULL, 1, 0, 'C', '0', '0', 'system:course:list', 'excel', 'admin', '2023-11-23 15:57:21', 'admin', '2023-11-23 15:57:32', '');
INSERT INTO `sys_menu` VALUES (2044, '讲师', 2035, 3, 'trainer', 'system/trianer/index', NULL, 1, 0, 'C', '0', '0', 'system:trianer:list', 'excel', 'admin', '2023-11-23 15:59:35', 'admin', '2023-11-23 15:59:50', '');
INSERT INTO `sys_menu` VALUES (2045, '问卷', 2035, 4, 'survey', 'system/survey/index', NULL, 1, 0, 'C', '0', '0', 'system:survey:list', 'excel', 'admin', '2023-11-23 16:00:38', 'admin', '2023-11-23 16:00:47', '');
INSERT INTO `sys_menu` VALUES (2046, '学员', 2035, 2, 'payment', 'system/payment/index', NULL, 1, 0, 'C', '0', '0', 'system:payment:list', 'excel', 'admin', '2023-11-23 16:03:09', 'admin', '2023-11-23 16:03:31', '');
INSERT INTO `sys_menu` VALUES (2047, '培训通知', 0, 0, 'notice', NULL, NULL, 1, 0, 'M', '0', '0', '', 'message', 'admin', '2023-11-23 16:04:32', 'admin', '2023-11-23 16:06:32', '');

-- ----------------------------
-- Table structure for sys_notice
-- ----------------------------
DROP TABLE IF EXISTS `sys_notice`;
CREATE TABLE `sys_notice`  (
  `notice_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '公告ID',
  `notice_title` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '公告标题',
  `notice_type` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '公告类型（1通知 2公告）',
  `notice_content` longblob NULL COMMENT '公告内容',
  `status` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '0' COMMENT '公告状态（0正常 1关闭）',
  `create_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '创建者',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '更新者',
  `update_time` datetime NULL DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`notice_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 12 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '通知公告表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of sys_notice
-- ----------------------------
INSERT INTO `sys_notice` VALUES (11, '培训通知', '1', 0x3C703EE696B0E4B880E5B9B4E79A84E59FB9E8AEADE5BC80E5A78BE595A6EFBC813C2F703E, '0', 'test', '2023-11-25 20:41:03', '', NULL, NULL);
INSERT INTO `sys_notice` VALUES (12, '放假', '1', 0x3C703EE694BEE58187E9809AE79FA5EFBC813C2F703E, '0', '执行人', '2023-11-25 21:37:11', '', NULL, NULL);
INSERT INTO `sys_notice` VALUES (14, '培训通知', '1', 0x3C703EE6988EE5A4A9E59FB9E8AEADE6ADA3E5B8B8E8BF9BE8A18C3C2F703E, '0', '执行人', '2023-11-25 21:50:58', '', NULL, NULL);

-- ----------------------------
-- Table structure for sys_oper_log
-- ----------------------------
DROP TABLE IF EXISTS `sys_oper_log`;
CREATE TABLE `sys_oper_log`  (
  `oper_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '日志主键',
  `title` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '模块标题',
  `business_type` int(11) NULL DEFAULT 0 COMMENT '业务类型（0其它 1新增 2修改 3删除）',
  `method` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '方法名称',
  `request_method` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '请求方式',
  `operator_type` int(11) NULL DEFAULT 0 COMMENT '操作类别（0其它 1后台用户 2手机端用户）',
  `oper_name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '操作人员',
  `dept_name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '部门名称',
  `oper_url` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '请求URL',
  `oper_ip` varchar(128) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '主机地址',
  `oper_location` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '操作地点',
  `oper_param` varchar(2000) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '请求参数',
  `json_result` varchar(2000) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '返回参数',
  `status` int(11) NULL DEFAULT 0 COMMENT '操作状态（0正常 1异常）',
  `error_msg` varchar(2000) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '错误消息',
  `oper_time` datetime NULL DEFAULT NULL COMMENT '操作时间',
  `cost_time` bigint(20) NULL DEFAULT 0 COMMENT '消耗时间',
  PRIMARY KEY (`oper_id`) USING BTREE,
  INDEX `idx_sys_oper_log_bt`(`business_type` ASC) USING BTREE,
  INDEX `idx_sys_oper_log_s`(`status` ASC) USING BTREE,
  INDEX `idx_sys_oper_log_ot`(`oper_time` ASC) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 115 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '操作日志记录' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of sys_oper_log
-- ----------------------------
INSERT INTO `sys_oper_log` VALUES (1, '操作日志', 9, 'com.ruoyi.web.controller.monitor.SysOperlogController.clean()', 'DELETE', 1, 'admin', NULL, '/monitor/operlog/clean', '127.0.0.1', '内网IP', '{}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2023-11-22 18:13:17', 33);
INSERT INTO `sys_oper_log` VALUES (2, '登录日志', 9, 'com.ruoyi.web.controller.monitor.SysLogininforController.clean()', 'DELETE', 1, 'admin', NULL, '/monitor/logininfor/clean', '127.0.0.1', '内网IP', '{}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2023-11-22 18:13:21', 22);
INSERT INTO `sys_oper_log` VALUES (3, '用户管理', 1, 'com.ruoyi.web.controller.system.SysUserController.add()', 'POST', 1, 'admin', NULL, '/system/user', '127.0.0.1', '内网IP', '{\"admin\":false,\"createBy\":\"admin\",\"deptId\":100,\"email\":\"1233@qq.ci\",\"nickName\":\"小红\",\"params\":{},\"phonenumber\":\"13823122123\",\"postIds\":[2],\"roleIds\":[101],\"sex\":\"1\",\"status\":\"0\",\"userId\":101,\"userName\":\"小红\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2023-11-22 18:14:45', 81);
INSERT INTO `sys_oper_log` VALUES (4, '用户管理', 1, 'com.ruoyi.web.controller.system.SysUserController.add()', 'POST', 1, 'admin', NULL, '/system/user', '127.0.0.1', '内网IP', '{\"admin\":false,\"createBy\":\"admin\",\"deptId\":100,\"email\":\"2222@qq.com\",\"nickName\":\"小王\",\"params\":{},\"phonenumber\":\"13954525444\",\"postIds\":[5],\"roleIds\":[102],\"sex\":\"0\",\"status\":\"0\",\"userId\":102,\"userName\":\"小王\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2023-11-22 18:15:41', 74);
INSERT INTO `sys_oper_log` VALUES (5, '报名', 1, 'com.ruoyi.web.controller.system.TrainApplicationController.add()', 'POST', 1, '测试', NULL, '/system/application', '127.0.0.1', '内网IP', '{\"appTime\":\"2023-11-24 12:00:00\",\"company\":\"百度\",\"course\":\"Java\",\"id\":5,\"params\":{},\"position\":\"Java工程师\",\"skill\":\"数量掌握Java\",\"studentId\":103,\"type\":0,\"username\":\"测试\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2023-11-22 18:20:39', 21);
INSERT INTO `sys_oper_log` VALUES (6, '缴费签到', 2, 'com.ruoyi.web.controller.system.TrainPaymentController.edit()', 'PUT', 1, '测试', NULL, '/system/payment', '127.0.0.1', '内网IP', '{\"courseName\":\"Java\",\"coursePrice\":5000,\"id\":4,\"params\":{},\"payAcount\":\"12028231212312\",\"payName\":\"测试\",\"payStatus\":1,\"signStatus\":0,\"studentId\":103,\"studentName\":\"测试\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2023-11-22 18:20:58', 7);
INSERT INTO `sys_oper_log` VALUES (7, '问卷调查', 1, 'com.ruoyi.web.controller.system.TrainSurveyController.add()', 'POST', 1, '测试', NULL, '/system/survey', '127.0.0.1', '内网IP', '{\"advice\":\"还不错\",\"comment\":\"很棒\",\"courseName\":\"Java\",\"id\":3,\"params\":{},\"rating\":5,\"studentName\":\"测试\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2023-11-22 18:21:12', 6);
INSERT INTO `sys_oper_log` VALUES (8, '讲师管理', 1, 'com.ruoyi.web.controller.system.TrainTrianerController.add()', 'POST', 1, 'test', NULL, '/system/trianer', '127.0.0.1', '内网IP', '{\"email\":\"12332@qq.com\",\"expertise\":\"C语言\",\"fullName\":\"小李\",\"id\":2,\"params\":{},\"phone\":\"11397451147\",\"title\":\"高级讲师\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2023-11-22 18:21:57', 6);
INSERT INTO `sys_oper_log` VALUES (9, '课程信息', 1, 'com.ruoyi.web.controller.system.TrainCourseController.add()', 'POST', 1, 'test', NULL, '/system/course', '127.0.0.1', '内网IP', '{\"courseName\":\"Python\",\"coursePrice\":10050,\"endDate\":\"2023-11-30\",\"id\":4,\"isDel\":0,\"params\":{},\"startDate\":\"2023-11-23\",\"trainer\":\"小李\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2023-11-22 18:22:32', 7);
INSERT INTO `sys_oper_log` VALUES (10, '报名', 2, 'com.ruoyi.web.controller.system.TrainApplicationController.edit()', 'PUT', 1, 'test', NULL, '/system/application', '127.0.0.1', '内网IP', '{\"appTime\":\"2023-11-23 12:00:00\",\"company\":\"百度\",\"course\":\"C语言\",\"id\":1,\"params\":{},\"position\":\"Java开发工程师\",\"skill\":\"优秀\",\"status\":1,\"studentId\":1,\"type\":0,\"username\":\"admin\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2023-11-22 18:22:40', 6);
INSERT INTO `sys_oper_log` VALUES (11, '报名', 2, 'com.ruoyi.web.controller.system.TrainApplicationController.edit()', 'PUT', 1, 'test', NULL, '/system/application', '127.0.0.1', '内网IP', '{\"appTime\":\"2023-11-22 12:00:00\",\"company\":\"华为\",\"course\":\"Java\",\"id\":2,\"params\":{},\"position\":\"Java后端工程师\",\"skill\":\"熟练\",\"status\":1,\"studentId\":1,\"type\":0,\"username\":\"admin\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2023-11-22 18:22:43', 5);
INSERT INTO `sys_oper_log` VALUES (12, '报名', 2, 'com.ruoyi.web.controller.system.TrainApplicationController.edit()', 'PUT', 1, 'test', NULL, '/system/application', '127.0.0.1', '内网IP', '{\"appTime\":\"2023-11-24 12:00:00\",\"company\":\"百度\",\"course\":\"Java\",\"id\":5,\"params\":{},\"position\":\"Java工程师\",\"skill\":\"数量掌握Java\",\"status\":1,\"studentId\":103,\"type\":0,\"username\":\"测试\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2023-11-22 18:22:46', 4);
INSERT INTO `sys_oper_log` VALUES (13, '问卷调查', 3, 'com.ruoyi.web.controller.system.TrainSurveyController.remove()', 'DELETE', 1, 'test', NULL, '/system/survey/1', '127.0.0.1', '内网IP', '{}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2023-11-22 18:22:55', 7);
INSERT INTO `sys_oper_log` VALUES (14, '角色管理', 2, 'com.ruoyi.web.controller.system.SysRoleController.edit()', 'PUT', 1, 'admin', NULL, '/system/role', '127.0.0.1', '内网IP', '{\"admin\":false,\"createTime\":\"2023-11-22 14:16:19\",\"dataScope\":\"1\",\"delFlag\":\"0\",\"deptCheckStrictly\":true,\"flag\":false,\"menuCheckStrictly\":true,\"menuIds\":[2002,2015,2016,2020],\"params\":{},\"roleId\":102,\"roleKey\":\"woker\",\"roleName\":\"现场工作人员\",\"roleSort\":4,\"status\":\"0\"}', NULL, 1, '\r\n### Error querying database.  Cause: java.sql.SQLSyntaxErrorException: You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near \'LIMIT 10\' at line 9\r\n### The error may exist in file [C:\\Users\\Lenovo\\Desktop\\培训系统vue\\ruoyi-system\\target\\classes\\mapper\\system\\SysRoleMapper.xml]\r\n### The error may involve com.ruoyi.system.mapper.SysRoleMapper.checkRoleNameUnique-Inline\r\n### The error occurred while setting parameters\r\n### SQL: select distinct r.role_id, r.role_name, r.role_key, r.role_sort, r.data_scope, r.menu_check_strictly, r.dept_check_strictly,             r.status, r.del_flag, r.create_time, r.remark          from sys_role r          left join sys_user_role ur on ur.role_id = r.role_id          left join sys_user u on u.user_id = ur.user_id          left join sys_dept d on u.dept_id = d.dept_id          where r.role_name=? and r.del_flag = \'0\' limit 1  LIMIT ?\r\n### Cause: java.sql.SQLSyntaxErrorException: You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near \'LIMIT 10\' at line 9\n; bad SQL grammar []; nested exception is java.sql.SQLSyntaxErrorException: You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near \'LIMIT 10\' at line 9', '2023-11-22 18:25:55', 48);
INSERT INTO `sys_oper_log` VALUES (15, '菜单管理', 2, 'com.ruoyi.web.controller.system.SysMenuController.edit()', 'PUT', 1, 'admin', NULL, '/system/menu', '127.0.0.1', '内网IP', '{\"children\":[],\"component\":\"system/role/index\",\"createTime\":\"2023-11-22 14:00:20\",\"icon\":\"peoples\",\"isCache\":\"0\",\"isFrame\":\"1\",\"menuId\":101,\"menuName\":\"角色管理\",\"menuType\":\"C\",\"orderNum\":2,\"params\":{},\"parentId\":1,\"path\":\"role\",\"perms\":\"system:role:list\",\"query\":\"\",\"status\":\"0\",\"updateBy\":\"admin\",\"visible\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2023-11-23 15:28:33', 17);
INSERT INTO `sys_oper_log` VALUES (16, '角色管理', 2, 'com.ruoyi.web.controller.system.SysRoleController.edit()', 'PUT', 1, 'admin', NULL, '/system/role', '127.0.0.1', '内网IP', '{\"admin\":false,\"createTime\":\"2023-11-22 14:15:55\",\"dataScope\":\"1\",\"delFlag\":\"0\",\"deptCheckStrictly\":true,\"flag\":false,\"menuCheckStrictly\":true,\"menuIds\":[1,2001,2003,100,1000,1001,1002,1003,1004,1005,1006,2004,2006],\"params\":{},\"roleId\":101,\"roleKey\":\"manager\",\"roleName\":\"经理\",\"roleSort\":3,\"status\":\"0\",\"updateBy\":\"admin\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2023-11-23 15:29:23', 36);
INSERT INTO `sys_oper_log` VALUES (17, '报名', 2, 'com.ruoyi.web.controller.system.TrainApplicationController.edit()', 'PUT', 1, '小红', NULL, '/system/application', '127.0.0.1', '内网IP', '{\"appTime\":\"2023-11-22 12:00:00\",\"company\":\"百度\",\"course\":\"C语言\",\"id\":4,\"params\":{},\"position\":\"C开发\",\"skill\":\"数量\",\"status\":1,\"studentId\":2,\"type\":0,\"username\":\"ry\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2023-11-23 15:30:05', 10);
INSERT INTO `sys_oper_log` VALUES (18, '菜单管理', 1, 'com.ruoyi.web.controller.system.SysMenuController.add()', 'POST', 1, 'admin', NULL, '/system/menu', '127.0.0.1', '内网IP', '{\"children\":[],\"createBy\":\"admin\",\"icon\":\"table\",\"isCache\":\"0\",\"isFrame\":\"1\",\"menuName\":\"汇总报表\",\"menuType\":\"M\",\"orderNum\":3,\"params\":{},\"parentId\":0,\"path\":\"total\",\"status\":\"0\",\"visible\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2023-11-23 15:31:04', 6);
INSERT INTO `sys_oper_log` VALUES (19, '菜单管理', 2, 'com.ruoyi.web.controller.system.SysMenuController.edit()', 'PUT', 1, 'admin', NULL, '/system/menu', '127.0.0.1', '内网IP', '{\"children\":[],\"createTime\":\"2023-11-22 14:00:20\",\"icon\":\"tool\",\"isCache\":\"0\",\"isFrame\":\"1\",\"menuId\":3,\"menuName\":\"系统工具\",\"menuType\":\"M\",\"orderNum\":10,\"params\":{},\"parentId\":0,\"path\":\"tool\",\"perms\":\"\",\"query\":\"\",\"status\":\"0\",\"updateBy\":\"admin\",\"visible\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2023-11-23 15:39:09', 5);
INSERT INTO `sys_oper_log` VALUES (20, '代码生成', 6, 'com.ruoyi.generator.controller.GenController.importTableSave()', 'POST', 1, 'admin', NULL, '/tool/gen/importTable', '127.0.0.1', '内网IP', '{\"tables\":\"train_income\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2023-11-23 15:39:26', 31);
INSERT INTO `sys_oper_log` VALUES (21, '代码生成', 2, 'com.ruoyi.generator.controller.GenController.editSave()', 'PUT', 1, 'admin', NULL, '/tool/gen', '127.0.0.1', '内网IP', '{\"businessName\":\"income\",\"className\":\"TrainIncome\",\"columns\":[{\"capJavaField\":\"Id\",\"columnComment\":\"收入ID\",\"columnId\":65,\"columnName\":\"id\",\"columnType\":\"int\",\"createBy\":\"admin\",\"createTime\":\"2023-11-23 15:39:26\",\"dictType\":\"\",\"edit\":false,\"htmlType\":\"input\",\"increment\":true,\"insert\":true,\"isIncrement\":\"1\",\"isInsert\":\"1\",\"isPk\":\"1\",\"javaField\":\"id\",\"javaType\":\"Long\",\"list\":false,\"params\":{},\"pk\":true,\"query\":false,\"queryType\":\"EQ\",\"required\":false,\"sort\":1,\"superColumn\":false,\"tableId\":9,\"updateBy\":\"\",\"usableColumn\":false},{\"capJavaField\":\"CourseName\",\"columnComment\":\"课程名\",\"columnId\":66,\"columnName\":\"course_name\",\"columnType\":\"varchar(30)\",\"createBy\":\"admin\",\"createTime\":\"2023-11-23 15:39:26\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"javaField\":\"courseName\",\"javaType\":\"String\",\"list\":true,\"params\":{},\"pk\":false,\"query\":true,\"queryType\":\"LIKE\",\"required\":false,\"sort\":2,\"superColumn\":false,\"tableId\":9,\"updateBy\":\"\",\"usableColumn\":false},{\"capJavaField\":\"Number\",\"columnComment\":\"选课人数\",\"columnId\":67,\"columnName\":\"number\",\"columnType\":\"int\",\"createBy\":\"admin\",\"createTime\":\"2023-11-23 15:39:26\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"javaField\":\"number\",\"javaType\":\"Long\",\"list\":true,\"params\":{},\"pk\":false,\"query\":true,\"queryType\":\"EQ\",\"required\":false,\"sort\":3,\"superColumn\":false,\"tableId\":9,\"updateBy\":\"\",\"usableColumn\":false},{\"capJavaField\":\"Price\",\"columnComment\":\"价格\",\"columnId\":68,\"columnName\":\"price\",\"columnType\":\"decimal(10,2)\",\"createBy\":\"admin\",\"createTime\":\"2023-11-23 15:39:26\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"javaField\":\"price\",\"javaType\":\"BigDecimal\",\"list\":true,\"params\":{},\"pk\":false,\"query\":true,\"', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2023-11-23 15:40:40', 18);
INSERT INTO `sys_oper_log` VALUES (22, '代码生成', 8, 'com.ruoyi.generator.controller.GenController.batchGenCode()', 'GET', 1, 'admin', NULL, '/tool/gen/batchGenCode', '127.0.0.1', '内网IP', '{\"tables\":\"train_income\"}', NULL, 0, NULL, '2023-11-23 15:40:43', 141);
INSERT INTO `sys_oper_log` VALUES (23, '报名', 1, 'com.ruoyi.web.controller.system.TrainApplicationController.add()', 'POST', 1, 'admin', NULL, '/system/application', '127.0.0.1', '内网IP', '{\"appTime\":\"2023-11-23 12:00:00\",\"company\":\"百度\",\"course\":\"Java\",\"id\":6,\"params\":{},\"position\":\"Java\",\"skill\":\"Java\",\"status\":1,\"studentId\":1,\"type\":1,\"username\":\"admin\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2023-11-23 15:54:03', 31);
INSERT INTO `sys_oper_log` VALUES (24, '缴费签到', 2, 'com.ruoyi.web.controller.system.TrainPaymentController.edit()', 'PUT', 1, 'admin', NULL, '/system/payment', '127.0.0.1', '内网IP', '{\"courseName\":\"Java\",\"coursePrice\":5000,\"id\":5,\"params\":{},\"payAcount\":\"123123124141231\",\"payName\":\"admin\",\"payStatus\":1,\"signStatus\":0,\"studentId\":1,\"studentName\":\"admin\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2023-11-23 15:54:13', 16);
INSERT INTO `sys_oper_log` VALUES (25, '缴费签到', 2, 'com.ruoyi.web.controller.system.TrainPaymentController.edit()', 'PUT', 1, 'admin', NULL, '/system/payment', '127.0.0.1', '内网IP', '{\"courseName\":\"C语言\",\"coursePrice\":2000,\"id\":2,\"params\":{},\"payAcount\":\"1312312312\",\"payName\":\"admin\",\"payStatus\":1,\"signStatus\":1,\"studentId\":1,\"studentName\":\"admin\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2023-11-23 15:54:40', 9);
INSERT INTO `sys_oper_log` VALUES (26, '缴费签到', 2, 'com.ruoyi.web.controller.system.TrainPaymentController.edit()', 'PUT', 1, 'admin', NULL, '/system/payment', '127.0.0.1', '内网IP', '{\"courseName\":\"C语言\",\"coursePrice\":2000,\"id\":3,\"params\":{},\"payAcount\":\"1234353455322\",\"payName\":\"ry\",\"payStatus\":1,\"signStatus\":1,\"studentId\":2,\"studentName\":\"ry\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2023-11-23 15:54:42', 9);
INSERT INTO `sys_oper_log` VALUES (27, '缴费签到', 2, 'com.ruoyi.web.controller.system.TrainPaymentController.edit()', 'PUT', 1, 'admin', NULL, '/system/payment', '127.0.0.1', '内网IP', '{\"courseName\":\"Java\",\"coursePrice\":5000,\"id\":4,\"params\":{},\"payAcount\":\"12028231212312\",\"payName\":\"测试\",\"payStatus\":1,\"signStatus\":0,\"studentId\":103,\"studentName\":\"测试\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2023-11-23 15:54:44', 9);
INSERT INTO `sys_oper_log` VALUES (28, '菜单管理', 1, 'com.ruoyi.web.controller.system.SysMenuController.add()', 'POST', 1, 'admin', NULL, '/system/menu', '127.0.0.1', '内网IP', '{\"children\":[],\"component\":\"\",\"createBy\":\"admin\",\"icon\":\"excel\",\"isCache\":\"0\",\"isFrame\":\"1\",\"menuName\":\"课程\",\"menuType\":\"C\",\"orderNum\":2,\"params\":{},\"parentId\":2036,\"path\":\"course\",\"perms\":\"system:course:list\",\"status\":\"0\",\"visible\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2023-11-23 15:56:29', 11);
INSERT INTO `sys_oper_log` VALUES (29, '菜单管理', 3, 'com.ruoyi.web.controller.system.SysMenuController.remove()', 'DELETE', 1, 'admin', NULL, '/system/menu/2042', '127.0.0.1', '内网IP', '{}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2023-11-23 15:56:55', 9);
INSERT INTO `sys_oper_log` VALUES (30, '菜单管理', 1, 'com.ruoyi.web.controller.system.SysMenuController.add()', 'POST', 1, 'admin', NULL, '/system/menu', '127.0.0.1', '内网IP', '{\"children\":[],\"component\":\"system/course/index\",\"createBy\":\"admin\",\"icon\":\"excel\",\"isCache\":\"0\",\"isFrame\":\"1\",\"menuName\":\"课程\",\"menuType\":\"C\",\"orderNum\":2,\"params\":{},\"parentId\":2035,\"path\":\"course\",\"status\":\"0\",\"visible\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2023-11-23 15:57:21', 6);
INSERT INTO `sys_oper_log` VALUES (31, '菜单管理', 2, 'com.ruoyi.web.controller.system.SysMenuController.edit()', 'PUT', 1, 'admin', NULL, '/system/menu', '127.0.0.1', '内网IP', '{\"children\":[],\"component\":\"system/course/index\",\"createTime\":\"2023-11-23 15:57:21\",\"icon\":\"excel\",\"isCache\":\"0\",\"isFrame\":\"1\",\"menuId\":2043,\"menuName\":\"课程\",\"menuType\":\"C\",\"orderNum\":2,\"params\":{},\"parentId\":2035,\"path\":\"course\",\"perms\":\"system:course:list\",\"status\":\"0\",\"updateBy\":\"admin\",\"visible\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2023-11-23 15:57:32', 6);
INSERT INTO `sys_oper_log` VALUES (32, '菜单管理', 2, 'com.ruoyi.web.controller.system.SysMenuController.edit()', 'PUT', 1, 'admin', NULL, '/system/menu', '127.0.0.1', '内网IP', '{\"children\":[],\"component\":\"system/income/index\",\"createTime\":\"2023-11-23 15:41:11\",\"icon\":\"excel\",\"isCache\":\"0\",\"isFrame\":\"1\",\"menuId\":2036,\"menuName\":\"课程收入\",\"menuType\":\"C\",\"orderNum\":1,\"params\":{},\"parentId\":2035,\"path\":\"income\",\"perms\":\"system:income:list\",\"status\":\"0\",\"updateBy\":\"admin\",\"visible\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2023-11-23 15:58:05', 6);
INSERT INTO `sys_oper_log` VALUES (33, '菜单管理', 2, 'com.ruoyi.web.controller.system.SysMenuController.edit()', 'PUT', 1, 'admin', NULL, '/system/menu', '127.0.0.1', '内网IP', '{\"children\":[],\"component\":\"system/trianer/index\",\"createTime\":\"2023-11-22 18:03:09\",\"icon\":\"#\",\"isCache\":\"0\",\"isFrame\":\"1\",\"menuId\":2029,\"menuName\":\"讲师管理\",\"menuType\":\"C\",\"orderNum\":1,\"params\":{},\"parentId\":2028,\"path\":\"trianer\",\"perms\":\"system:trianer:list\",\"status\":\"0\",\"updateBy\":\"admin\",\"visible\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2023-11-23 15:59:12', 5);
INSERT INTO `sys_oper_log` VALUES (34, '菜单管理', 1, 'com.ruoyi.web.controller.system.SysMenuController.add()', 'POST', 1, 'admin', NULL, '/system/menu', '127.0.0.1', '内网IP', '{\"children\":[],\"component\":\"system/trianer/index\",\"createBy\":\"admin\",\"icon\":\"excel\",\"isCache\":\"0\",\"isFrame\":\"1\",\"menuName\":\"讲师\",\"menuType\":\"C\",\"orderNum\":3,\"params\":{},\"parentId\":2035,\"path\":\"teacher\",\"status\":\"0\",\"visible\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2023-11-23 15:59:35', 6);
INSERT INTO `sys_oper_log` VALUES (35, '菜单管理', 2, 'com.ruoyi.web.controller.system.SysMenuController.edit()', 'PUT', 1, 'admin', NULL, '/system/menu', '127.0.0.1', '内网IP', '{\"children\":[],\"component\":\"system/trianer/index\",\"createTime\":\"2023-11-23 15:59:35\",\"icon\":\"excel\",\"isCache\":\"0\",\"isFrame\":\"1\",\"menuId\":2044,\"menuName\":\"讲师\",\"menuType\":\"C\",\"orderNum\":3,\"params\":{},\"parentId\":2035,\"path\":\"trainer\",\"perms\":\"system:trianer:list\",\"status\":\"0\",\"updateBy\":\"admin\",\"visible\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2023-11-23 15:59:50', 6);
INSERT INTO `sys_oper_log` VALUES (36, '菜单管理', 2, 'com.ruoyi.web.controller.system.SysMenuController.edit()', 'PUT', 1, 'admin', NULL, '/system/menu', '127.0.0.1', '内网IP', '{\"children\":[],\"component\":\"system/survey/index\",\"createTime\":\"2023-11-22 17:11:46\",\"icon\":\"#\",\"isCache\":\"0\",\"isFrame\":\"1\",\"menuId\":2022,\"menuName\":\"问卷调查\",\"menuType\":\"C\",\"orderNum\":1,\"params\":{},\"parentId\":2021,\"path\":\"survey\",\"perms\":\"system:survey:list\",\"status\":\"0\",\"updateBy\":\"admin\",\"visible\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2023-11-23 16:00:17', 5);
INSERT INTO `sys_oper_log` VALUES (37, '菜单管理', 1, 'com.ruoyi.web.controller.system.SysMenuController.add()', 'POST', 1, 'admin', NULL, '/system/menu', '127.0.0.1', '内网IP', '{\"children\":[],\"component\":\"system/survey/index\",\"createBy\":\"admin\",\"icon\":\"excel\",\"isCache\":\"0\",\"isFrame\":\"1\",\"menuName\":\"问卷\",\"menuType\":\"C\",\"orderNum\":4,\"params\":{},\"parentId\":2035,\"path\":\"survey\",\"status\":\"0\",\"visible\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2023-11-23 16:00:38', 6);
INSERT INTO `sys_oper_log` VALUES (38, '菜单管理', 2, 'com.ruoyi.web.controller.system.SysMenuController.edit()', 'PUT', 1, 'admin', NULL, '/system/menu', '127.0.0.1', '内网IP', '{\"children\":[],\"component\":\"system/survey/index\",\"createTime\":\"2023-11-23 16:00:38\",\"icon\":\"excel\",\"isCache\":\"0\",\"isFrame\":\"1\",\"menuId\":2045,\"menuName\":\"问卷\",\"menuType\":\"C\",\"orderNum\":4,\"params\":{},\"parentId\":2035,\"path\":\"survey\",\"perms\":\"system:survey:list\",\"status\":\"0\",\"updateBy\":\"admin\",\"visible\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2023-11-23 16:00:47', 6);
INSERT INTO `sys_oper_log` VALUES (39, '角色管理', 2, 'com.ruoyi.web.controller.system.SysRoleController.edit()', 'PUT', 1, 'admin', NULL, '/system/role', '127.0.0.1', '内网IP', '{\"admin\":false,\"createTime\":\"2023-11-22 14:15:55\",\"dataScope\":\"1\",\"delFlag\":\"0\",\"deptCheckStrictly\":true,\"flag\":false,\"menuCheckStrictly\":true,\"menuIds\":[1,2001,2003,2035,2036,100,1000,1001,1002,1003,1004,1005,1006,2004,2006,2037,2043,2044,2045],\"params\":{},\"roleId\":101,\"roleKey\":\"manager\",\"roleName\":\"经理\",\"roleSort\":3,\"status\":\"0\",\"updateBy\":\"admin\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2023-11-23 16:01:19', 26);
INSERT INTO `sys_oper_log` VALUES (40, '菜单管理', 1, 'com.ruoyi.web.controller.system.SysMenuController.add()', 'POST', 1, 'admin', NULL, '/system/menu', '127.0.0.1', '内网IP', '{\"children\":[],\"createBy\":\"admin\",\"icon\":\"excel\",\"isCache\":\"0\",\"isFrame\":\"1\",\"menuName\":\"学员\",\"menuType\":\"C\",\"orderNum\":2,\"params\":{},\"parentId\":2035,\"path\":\"student\",\"status\":\"0\",\"visible\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2023-11-23 16:03:09', 6);
INSERT INTO `sys_oper_log` VALUES (41, '菜单管理', 2, 'com.ruoyi.web.controller.system.SysMenuController.edit()', 'PUT', 1, 'admin', NULL, '/system/menu', '127.0.0.1', '内网IP', '{\"children\":[],\"createTime\":\"2023-11-23 16:03:09\",\"icon\":\"excel\",\"isCache\":\"0\",\"isFrame\":\"1\",\"menuId\":2046,\"menuName\":\"学员\",\"menuType\":\"C\",\"orderNum\":2,\"params\":{},\"parentId\":2035,\"path\":\"student\",\"perms\":\"system:payment:list\",\"status\":\"0\",\"updateBy\":\"admin\",\"visible\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2023-11-23 16:03:16', 6);
INSERT INTO `sys_oper_log` VALUES (42, '菜单管理', 2, 'com.ruoyi.web.controller.system.SysMenuController.edit()', 'PUT', 1, 'admin', NULL, '/system/menu', '127.0.0.1', '内网IP', '{\"children\":[],\"component\":\"system/payment/index\",\"createTime\":\"2023-11-23 16:03:09\",\"icon\":\"excel\",\"isCache\":\"0\",\"isFrame\":\"1\",\"menuId\":2046,\"menuName\":\"学员\",\"menuType\":\"C\",\"orderNum\":2,\"params\":{},\"parentId\":2035,\"path\":\"student\",\"perms\":\"system:payment:list\",\"status\":\"0\",\"updateBy\":\"admin\",\"visible\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2023-11-23 16:03:21', 6);
INSERT INTO `sys_oper_log` VALUES (43, '菜单管理', 2, 'com.ruoyi.web.controller.system.SysMenuController.edit()', 'PUT', 1, 'admin', NULL, '/system/menu', '127.0.0.1', '内网IP', '{\"children\":[],\"component\":\"system/payment/index\",\"createTime\":\"2023-11-22 15:31:14\",\"icon\":\"#\",\"isCache\":\"0\",\"isFrame\":\"1\",\"menuId\":2015,\"menuName\":\"缴费签到\",\"menuType\":\"C\",\"orderNum\":1,\"params\":{},\"parentId\":2002,\"path\":\"payment\",\"perms\":\"system:payment:list\",\"status\":\"0\",\"updateBy\":\"admin\",\"visible\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2023-11-23 16:03:27', 5);
INSERT INTO `sys_oper_log` VALUES (44, '菜单管理', 2, 'com.ruoyi.web.controller.system.SysMenuController.edit()', 'PUT', 1, 'admin', NULL, '/system/menu', '127.0.0.1', '内网IP', '{\"children\":[],\"component\":\"system/payment/index\",\"createTime\":\"2023-11-23 16:03:09\",\"icon\":\"excel\",\"isCache\":\"0\",\"isFrame\":\"1\",\"menuId\":2046,\"menuName\":\"学员\",\"menuType\":\"C\",\"orderNum\":2,\"params\":{},\"parentId\":2035,\"path\":\"payment\",\"perms\":\"system:payment:list\",\"status\":\"0\",\"updateBy\":\"admin\",\"visible\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2023-11-23 16:03:31', 5);
INSERT INTO `sys_oper_log` VALUES (45, '角色管理', 2, 'com.ruoyi.web.controller.system.SysRoleController.edit()', 'PUT', 1, 'admin', NULL, '/system/role', '127.0.0.1', '内网IP', '{\"admin\":false,\"createTime\":\"2023-11-22 14:15:55\",\"dataScope\":\"1\",\"delFlag\":\"0\",\"deptCheckStrictly\":true,\"flag\":false,\"menuCheckStrictly\":true,\"menuIds\":[1,2001,2003,2035,2036,100,1000,1001,1002,1003,1004,1005,1006,2004,2006,2037,2043,2046,2044,2045],\"params\":{},\"roleId\":101,\"roleKey\":\"manager\",\"roleName\":\"经理\",\"roleSort\":3,\"status\":\"0\",\"updateBy\":\"admin\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2023-11-23 16:03:38', 12);
INSERT INTO `sys_oper_log` VALUES (46, '菜单管理', 1, 'com.ruoyi.web.controller.system.SysMenuController.add()', 'POST', 1, 'admin', NULL, '/system/menu', '127.0.0.1', '内网IP', '{\"children\":[],\"createBy\":\"admin\",\"icon\":\"message\",\"isCache\":\"0\",\"isFrame\":\"1\",\"menuName\":\"系统通知\",\"menuType\":\"M\",\"orderNum\":2,\"params\":{},\"parentId\":0,\"path\":\"notice\",\"status\":\"0\",\"visible\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2023-11-23 16:04:32', 6);
INSERT INTO `sys_oper_log` VALUES (47, '菜单管理', 2, 'com.ruoyi.web.controller.system.SysMenuController.edit()', 'PUT', 1, 'admin', NULL, '/system/menu', '127.0.0.1', '内网IP', '{\"children\":[],\"component\":\"system/notice/index\",\"createTime\":\"2023-11-22 14:00:20\",\"icon\":\"message\",\"isCache\":\"0\",\"isFrame\":\"1\",\"menuId\":107,\"menuName\":\"通知公告\",\"menuType\":\"C\",\"orderNum\":8,\"params\":{},\"parentId\":2047,\"path\":\"notice\",\"perms\":\"system:notice:list\",\"query\":\"\",\"status\":\"0\",\"updateBy\":\"admin\",\"visible\":\"1\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2023-11-23 16:04:57', 5);
INSERT INTO `sys_oper_log` VALUES (48, '菜单管理', 2, 'com.ruoyi.web.controller.system.SysMenuController.edit()', 'PUT', 1, 'admin', NULL, '/system/menu', '127.0.0.1', '内网IP', '{\"children\":[],\"createTime\":\"2023-11-23 16:04:32\",\"icon\":\"message\",\"isCache\":\"0\",\"isFrame\":\"1\",\"menuId\":2047,\"menuName\":\"系统通知\",\"menuType\":\"M\",\"orderNum\":1,\"params\":{},\"parentId\":0,\"path\":\"notice\",\"perms\":\"\",\"status\":\"0\",\"updateBy\":\"admin\",\"visible\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2023-11-23 16:05:07', 5);
INSERT INTO `sys_oper_log` VALUES (49, '菜单管理', 2, 'com.ruoyi.web.controller.system.SysMenuController.edit()', 'PUT', 1, 'admin', NULL, '/system/menu', '127.0.0.1', '内网IP', '{\"children\":[],\"createTime\":\"2023-11-23 16:04:32\",\"icon\":\"message\",\"isCache\":\"0\",\"isFrame\":\"1\",\"menuId\":2047,\"menuName\":\"系统通知\",\"menuType\":\"M\",\"orderNum\":0,\"params\":{},\"parentId\":0,\"path\":\"notice\",\"perms\":\"\",\"status\":\"0\",\"updateBy\":\"admin\",\"visible\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2023-11-23 16:05:29', 5);
INSERT INTO `sys_oper_log` VALUES (50, '菜单管理', 2, 'com.ruoyi.web.controller.system.SysMenuController.edit()', 'PUT', 1, 'admin', NULL, '/system/menu', '127.0.0.1', '内网IP', '{\"children\":[],\"component\":\"system/notice/index\",\"createTime\":\"2023-11-22 14:00:20\",\"icon\":\"message\",\"isCache\":\"0\",\"isFrame\":\"1\",\"menuId\":107,\"menuName\":\"通知公告\",\"menuType\":\"C\",\"orderNum\":8,\"params\":{},\"parentId\":2047,\"path\":\"notice\",\"perms\":\"system:notice:list\",\"query\":\"\",\"status\":\"0\",\"updateBy\":\"admin\",\"visible\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2023-11-23 16:05:39', 4);
INSERT INTO `sys_oper_log` VALUES (51, '菜单管理', 2, 'com.ruoyi.web.controller.system.SysMenuController.edit()', 'PUT', 1, 'admin', NULL, '/system/menu', '127.0.0.1', '内网IP', '{\"children\":[],\"component\":\"system/notice/index\",\"createTime\":\"2023-11-22 14:00:20\",\"icon\":\"message\",\"isCache\":\"0\",\"isFrame\":\"1\",\"menuId\":107,\"menuName\":\"通知公告\",\"menuType\":\"C\",\"orderNum\":8,\"params\":{},\"parentId\":2047,\"path\":\"notice\",\"perms\":\"system:notice:list\",\"query\":\"\",\"status\":\"0\",\"updateBy\":\"admin\",\"visible\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2023-11-23 16:06:24', 5);
INSERT INTO `sys_oper_log` VALUES (52, '菜单管理', 2, 'com.ruoyi.web.controller.system.SysMenuController.edit()', 'PUT', 1, 'admin', NULL, '/system/menu', '127.0.0.1', '内网IP', '{\"children\":[],\"createTime\":\"2023-11-23 16:04:32\",\"icon\":\"message\",\"isCache\":\"0\",\"isFrame\":\"1\",\"menuId\":2047,\"menuName\":\"培训通知\",\"menuType\":\"M\",\"orderNum\":0,\"params\":{},\"parentId\":0,\"path\":\"notice\",\"perms\":\"\",\"status\":\"0\",\"updateBy\":\"admin\",\"visible\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2023-11-23 16:06:32', 5);
INSERT INTO `sys_oper_log` VALUES (53, '菜单管理', 2, 'com.ruoyi.web.controller.system.SysMenuController.edit()', 'PUT', 1, 'admin', NULL, '/system/menu', '127.0.0.1', '内网IP', '{\"children\":[],\"createTime\":\"2023-11-22 14:00:20\",\"icon\":\"tool\",\"isCache\":\"0\",\"isFrame\":\"1\",\"menuId\":3,\"menuName\":\"系统工具\",\"menuType\":\"M\",\"orderNum\":10,\"params\":{},\"parentId\":0,\"path\":\"tool\",\"perms\":\"\",\"query\":\"\",\"status\":\"0\",\"updateBy\":\"admin\",\"visible\":\"1\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2023-11-23 16:06:43', 4);
INSERT INTO `sys_oper_log` VALUES (54, '角色管理', 2, 'com.ruoyi.web.controller.system.SysRoleController.edit()', 'PUT', 1, 'admin', NULL, '/system/role', '127.0.0.1', '内网IP', '{\"admin\":false,\"createTime\":\"2023-11-22 14:00:20\",\"dataScope\":\"2\",\"delFlag\":\"0\",\"deptCheckStrictly\":true,\"flag\":false,\"menuCheckStrictly\":true,\"menuIds\":[2047,107,2001,2003,2002,2015,2021,2022,1035,2004,2005,2016,2018,2019,2023,2024],\"params\":{},\"remark\":\"普通角色\",\"roleId\":2,\"roleKey\":\"common\",\"roleName\":\"普通角色\",\"roleSort\":2,\"status\":\"0\",\"updateBy\":\"admin\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2023-11-23 16:06:59', 9);
INSERT INTO `sys_oper_log` VALUES (55, '角色管理', 2, 'com.ruoyi.web.controller.system.SysRoleController.edit()', 'PUT', 1, 'admin', NULL, '/system/role', '127.0.0.1', '内网IP', '{\"admin\":false,\"createTime\":\"2023-11-22 14:15:35\",\"dataScope\":\"1\",\"delFlag\":\"0\",\"deptCheckStrictly\":true,\"flag\":false,\"menuCheckStrictly\":true,\"menuIds\":[2047,107,1,2001,2003,2021,2022,1035,100,1000,1001,1002,1003,1004,1005,1006,2000,2009,2010,2011,2012,2013,2014,2004,2006,2008,2023,2026,2027,2028,2029,2030,2031,2032,2033,2034],\"params\":{},\"roleId\":100,\"roleKey\":\"executor\",\"roleName\":\"执行人\",\"roleSort\":2,\"status\":\"0\",\"updateBy\":\"admin\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2023-11-23 16:07:07', 9);
INSERT INTO `sys_oper_log` VALUES (56, '角色管理', 2, 'com.ruoyi.web.controller.system.SysRoleController.edit()', 'PUT', 1, 'admin', NULL, '/system/role', '127.0.0.1', '内网IP', '{\"admin\":false,\"createTime\":\"2023-11-22 14:15:55\",\"dataScope\":\"1\",\"delFlag\":\"0\",\"deptCheckStrictly\":true,\"flag\":false,\"menuCheckStrictly\":true,\"menuIds\":[1,2001,2003,2035,2036,2047,107,1035,1036,1037,1038,100,1000,1001,1002,1003,1004,1005,1006,2004,2006,2037,2043,2046,2044,2045],\"params\":{},\"roleId\":101,\"roleKey\":\"manager\",\"roleName\":\"经理\",\"roleSort\":3,\"status\":\"0\",\"updateBy\":\"admin\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2023-11-23 16:07:19', 9);
INSERT INTO `sys_oper_log` VALUES (57, '角色管理', 2, 'com.ruoyi.web.controller.system.SysRoleController.edit()', 'PUT', 1, 'admin', NULL, '/system/role', '127.0.0.1', '内网IP', '{\"admin\":false,\"createTime\":\"2023-11-22 14:16:19\",\"dataScope\":\"1\",\"delFlag\":\"0\",\"deptCheckStrictly\":true,\"flag\":false,\"menuCheckStrictly\":true,\"menuIds\":[2047,107,2002,2015,1035,2016,2020],\"params\":{},\"roleId\":102,\"roleKey\":\"woker\",\"roleName\":\"现场工作人员\",\"roleSort\":4,\"status\":\"0\",\"updateBy\":\"admin\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2023-11-23 16:07:26', 8);
INSERT INTO `sys_oper_log` VALUES (58, '菜单管理', 2, 'com.ruoyi.web.controller.system.SysMenuController.edit()', 'PUT', 1, 'admin', NULL, '/system/menu', '127.0.0.1', '内网IP', '{\"children\":[],\"component\":\"system/menu/index\",\"createTime\":\"2023-11-22 14:00:20\",\"icon\":\"tree-table\",\"isCache\":\"0\",\"isFrame\":\"1\",\"menuId\":102,\"menuName\":\"菜单管理\",\"menuType\":\"C\",\"orderNum\":3,\"params\":{},\"parentId\":1,\"path\":\"menu\",\"perms\":\"system:menu:list\",\"query\":\"\",\"status\":\"0\",\"updateBy\":\"admin\",\"visible\":\"1\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2023-11-23 16:07:39', 4);
INSERT INTO `sys_oper_log` VALUES (59, '通知公告', 1, 'com.ruoyi.web.controller.system.SysNoticeController.add()', 'POST', 1, '小红', NULL, '/system/notice', '127.0.0.1', '内网IP', '{\"createBy\":\"小红\",\"noticeContent\":\"<p>新一轮培训开始了！</p>\",\"noticeTitle\":\"培训新通知\",\"noticeType\":\"1\",\"params\":{},\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2023-11-23 16:08:22', 5);
INSERT INTO `sys_oper_log` VALUES (60, '通知公告', 3, 'com.ruoyi.web.controller.system.SysNoticeController.remove()', 'DELETE', 1, '小红', NULL, '/system/notice/1', '127.0.0.1', '内网IP', '{}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2023-11-23 16:08:34', 5);
INSERT INTO `sys_oper_log` VALUES (61, '通知公告', 3, 'com.ruoyi.web.controller.system.SysNoticeController.remove()', 'DELETE', 1, '小红', NULL, '/system/notice/2', '127.0.0.1', '内网IP', '{}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2023-11-23 16:08:35', 4);
INSERT INTO `sys_oper_log` VALUES (62, '用户管理', 2, 'com.ruoyi.web.controller.system.SysUserController.resetPwd()', 'PUT', 1, 'admin', NULL, '/system/user/resetPwd', '127.0.0.1', '内网IP', '{\"admin\":false,\"params\":{},\"updateBy\":\"admin\",\"userId\":2}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2023-11-23 16:09:45', 67);
INSERT INTO `sys_oper_log` VALUES (63, '用户管理', 2, 'com.ruoyi.web.controller.system.SysUserController.resetPwd()', 'PUT', 1, 'admin', NULL, '/system/user/resetPwd', '127.0.0.1', '内网IP', '{\"admin\":false,\"params\":{},\"updateBy\":\"admin\",\"userId\":100}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2023-11-23 16:09:50', 66);
INSERT INTO `sys_oper_log` VALUES (64, '用户管理', 2, 'com.ruoyi.web.controller.system.SysUserController.resetPwd()', 'PUT', 1, 'admin', NULL, '/system/user/resetPwd', '127.0.0.1', '内网IP', '{\"admin\":false,\"params\":{},\"updateBy\":\"admin\",\"userId\":101}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2023-11-23 16:09:56', 66);
INSERT INTO `sys_oper_log` VALUES (65, '用户管理', 2, 'com.ruoyi.web.controller.system.SysUserController.resetPwd()', 'PUT', 1, 'admin', NULL, '/system/user/resetPwd', '127.0.0.1', '内网IP', '{\"admin\":false,\"params\":{},\"updateBy\":\"admin\",\"userId\":102}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2023-11-23 16:10:02', 67);
INSERT INTO `sys_oper_log` VALUES (66, '用户管理', 2, 'com.ruoyi.web.controller.system.SysUserController.resetPwd()', 'PUT', 1, 'admin', NULL, '/system/user/resetPwd', '127.0.0.1', '内网IP', '{\"admin\":false,\"params\":{},\"updateBy\":\"admin\",\"userId\":103}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2023-11-23 16:10:06', 68);
INSERT INTO `sys_oper_log` VALUES (67, '报名', 1, 'com.ruoyi.web.controller.system.TrainApplicationController.add()', 'POST', 1, '赵梓妍', NULL, '/system/application', '127.0.0.1', '内网IP', '{\"appTime\":\"2023-11-24 12:00:00\",\"company\":\"百度\",\"course\":\"Java\",\"id\":7,\"params\":{},\"position\":\"后端工程师\",\"skill\":\"熟练\",\"studentId\":104,\"type\":1,\"username\":\"赵梓妍\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2023-11-24 19:42:03', 77);
INSERT INTO `sys_oper_log` VALUES (68, '缴费签到', 2, 'com.ruoyi.web.controller.system.TrainPaymentController.edit()', 'PUT', 1, '赵梓妍', NULL, '/system/payment', '127.0.0.1', '内网IP', '{\"courseName\":\"Java\",\"coursePrice\":5000,\"id\":6,\"params\":{},\"payAcount\":\"12345678\",\"payName\":\"经理\",\"payStatus\":1,\"signStatus\":0,\"studentId\":104,\"studentName\":\"赵梓妍\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2023-11-24 19:42:50', 109);
INSERT INTO `sys_oper_log` VALUES (69, '缴费签到', 2, 'com.ruoyi.web.controller.system.TrainPaymentController.edit()', 'PUT', 1, '赵梓妍', NULL, '/system/payment', '127.0.0.1', '内网IP', '{\"courseName\":\"Java\",\"coursePrice\":5000,\"id\":6,\"params\":{},\"payAcount\":\"12345678\",\"payName\":\"经理\",\"payStatus\":1,\"signStatus\":1,\"studentId\":104,\"studentName\":\"赵梓妍\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2023-11-24 19:42:53', 17);
INSERT INTO `sys_oper_log` VALUES (70, '问卷调查', 1, 'com.ruoyi.web.controller.system.TrainSurveyController.add()', 'POST', 1, '赵梓妍', NULL, '/system/survey', '127.0.0.1', '内网IP', '{\"advice\":\"暂无\",\"comment\":\"很好\",\"courseName\":\"Java\",\"id\":4,\"params\":{},\"rating\":5,\"studentName\":\"赵梓妍\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2023-11-24 19:43:45', 80);
INSERT INTO `sys_oper_log` VALUES (71, '个人信息', 2, 'com.ruoyi.web.controller.system.SysProfileController.updateProfile()', 'PUT', 1, 'test', NULL, '/system/user/profile', '127.0.0.1', '内网IP', '{\"admin\":false,\"createBy\":\"admin\",\"createTime\":\"2023-11-22 17:53:48\",\"delFlag\":\"0\",\"dept\":{\"ancestors\":\"0\",\"children\":[],\"deptId\":100,\"deptName\":\"浩奇培训\",\"leader\":\"若依\",\"orderNum\":0,\"params\":{},\"parentId\":0,\"status\":\"0\"},\"email\":\"gy123@qq.com\",\"loginDate\":\"2023-11-24 19:44:31\",\"loginIp\":\"127.0.0.1\",\"nickName\":\"谷裕\",\"params\":{},\"phonenumber\":\"13941524526\",\"roles\":[{\"admin\":false,\"dataScope\":\"1\",\"deptCheckStrictly\":false,\"flag\":false,\"menuCheckStrictly\":false,\"params\":{},\"roleId\":100,\"roleKey\":\"executor\",\"roleName\":\"执行人\",\"roleSort\":2,\"status\":\"0\"}],\"sex\":\"1\",\"status\":\"0\",\"userId\":100,\"userName\":\"test\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2023-11-24 19:46:44', 71);
INSERT INTO `sys_oper_log` VALUES (72, '用户管理', 4, 'com.ruoyi.web.controller.system.SysUserController.insertAuthRole()', 'PUT', 1, 'test', NULL, '/system/user/authRole', '127.0.0.1', '内网IP', '{\"roleIds\":\"100\",\"userId\":\"105\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2023-11-24 19:58:43', 118);
INSERT INTO `sys_oper_log` VALUES (73, '用户管理', 4, 'com.ruoyi.web.controller.system.SysUserController.insertAuthRole()', 'PUT', 1, 'test', NULL, '/system/user/authRole', '127.0.0.1', '内网IP', '{\"roleIds\":\"2\",\"userId\":\"105\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2023-11-24 19:58:59', 84);
INSERT INTO `sys_oper_log` VALUES (74, '个人信息', 2, 'com.ruoyi.web.controller.system.SysProfileController.updateProfile()', 'PUT', 1, '小红', NULL, '/system/user/profile', '127.0.0.1', '内网IP', '{\"admin\":false,\"createBy\":\"admin\",\"createTime\":\"2023-11-22 18:14:45\",\"delFlag\":\"0\",\"dept\":{\"ancestors\":\"0\",\"children\":[],\"deptId\":100,\"deptName\":\"浩奇培训\",\"leader\":\"若依\",\"orderNum\":0,\"params\":{},\"parentId\":0,\"status\":\"0\"},\"email\":\"syt123@qq.com\",\"loginDate\":\"2023-11-24 01:41:28\",\"loginIp\":\"127.0.0.1\",\"nickName\":\"孙雨彤\",\"params\":{},\"phonenumber\":\"13823122123\",\"roles\":[{\"admin\":false,\"dataScope\":\"1\",\"deptCheckStrictly\":false,\"flag\":false,\"menuCheckStrictly\":false,\"params\":{},\"roleId\":101,\"roleKey\":\"manager\",\"roleName\":\"经理\",\"roleSort\":3,\"status\":\"0\"}],\"sex\":\"1\",\"status\":\"0\",\"userId\":101,\"userName\":\"小红\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2023-11-24 20:00:57', 31);
INSERT INTO `sys_oper_log` VALUES (75, '角色管理', 2, 'com.ruoyi.web.controller.system.SysRoleController.edit()', 'PUT', 1, 'admin', NULL, '/system/role', '127.0.0.1', '内网IP', '{\"admin\":false,\"createTime\":\"2023-11-22 14:15:35\",\"dataScope\":\"1\",\"delFlag\":\"0\",\"deptCheckStrictly\":true,\"flag\":false,\"menuCheckStrictly\":true,\"menuIds\":[2047,107,1,2001,2003,1035,100,1000,1001,1002,1003,1004,1005,1006,2000,2009,2010,2011,2012,2013,2014,2004,2006,2008,2021,2022,2023,2024,2025,2026,2027,2028,2029,2030,2031,2032,2033,2034],\"params\":{},\"roleId\":100,\"roleKey\":\"executor\",\"roleName\":\"执行人\",\"roleSort\":2,\"status\":\"0\",\"updateBy\":\"admin\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2023-11-25 12:44:14', 44);
INSERT INTO `sys_oper_log` VALUES (76, '角色管理', 2, 'com.ruoyi.web.controller.system.SysRoleController.edit()', 'PUT', 1, 'admin', NULL, '/system/role', '127.0.0.1', '内网IP', '{\"admin\":false,\"createTime\":\"2023-11-22 14:15:55\",\"dataScope\":\"1\",\"delFlag\":\"0\",\"deptCheckStrictly\":true,\"flag\":false,\"menuCheckStrictly\":true,\"menuIds\":[],\"params\":{},\"roleId\":101,\"roleKey\":\"manager\",\"roleName\":\"经理\",\"roleSort\":3,\"status\":\"0\",\"updateBy\":\"admin\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2023-11-25 12:44:30', 27);
INSERT INTO `sys_oper_log` VALUES (77, '角色管理', 2, 'com.ruoyi.web.controller.system.SysRoleController.edit()', 'PUT', 1, 'admin', NULL, '/system/role', '127.0.0.1', '内网IP', '{\"admin\":false,\"createTime\":\"2023-11-22 14:15:35\",\"dataScope\":\"1\",\"delFlag\":\"0\",\"deptCheckStrictly\":true,\"flag\":false,\"menuCheckStrictly\":true,\"menuIds\":[2047,107,1,2001,2003,1035,100,1000,1001,1002,1003,1004,1005,1006,2000,2009,2010,2011,2012,2013,2014,2004,2006,2008,2021,2022,2023,2024,2025,2026,2027,2028,2029,2030,2031,2032,2033,2034],\"params\":{},\"roleId\":100,\"roleKey\":\"executor\",\"roleName\":\"执行人\",\"roleSort\":2,\"status\":\"0\",\"updateBy\":\"admin\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2023-11-25 12:46:25', 58);
INSERT INTO `sys_oper_log` VALUES (78, '角色管理', 2, 'com.ruoyi.web.controller.system.SysRoleController.edit()', 'PUT', 1, 'admin', NULL, '/system/role', '127.0.0.1', '内网IP', '{\"admin\":false,\"createTime\":\"2023-11-22 14:15:55\",\"dataScope\":\"1\",\"delFlag\":\"0\",\"deptCheckStrictly\":true,\"flag\":false,\"menuCheckStrictly\":true,\"menuIds\":[2021,2022,2023,2025,2026,2027],\"params\":{},\"roleId\":101,\"roleKey\":\"manager\",\"roleName\":\"经理\",\"roleSort\":3,\"status\":\"0\",\"updateBy\":\"admin\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2023-11-25 12:46:38', 17);
INSERT INTO `sys_oper_log` VALUES (79, '角色管理', 2, 'com.ruoyi.web.controller.system.SysRoleController.edit()', 'PUT', 1, 'admin', NULL, '/system/role', '127.0.0.1', '内网IP', '{\"admin\":false,\"createTime\":\"2023-11-22 14:15:35\",\"dataScope\":\"1\",\"delFlag\":\"0\",\"deptCheckStrictly\":true,\"flag\":false,\"menuCheckStrictly\":true,\"menuIds\":[2047,107,1,2001,2003,2021,2022,1035,100,1000,1001,1002,1003,1004,1005,1006,2000,2009,2010,2011,2012,2013,2014,2004,2006,2008,2024,2025,2026,2027,2028,2029,2030,2031,2032,2033,2034],\"params\":{},\"roleId\":100,\"roleKey\":\"executor\",\"roleName\":\"执行人\",\"roleSort\":2,\"status\":\"0\",\"updateBy\":\"admin\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2023-11-25 12:47:12', 66);
INSERT INTO `sys_oper_log` VALUES (80, '角色管理', 2, 'com.ruoyi.web.controller.system.SysRoleController.edit()', 'PUT', 1, 'admin', NULL, '/system/role', '127.0.0.1', '内网IP', '{\"admin\":false,\"createTime\":\"2023-11-22 14:15:55\",\"dataScope\":\"1\",\"delFlag\":\"0\",\"deptCheckStrictly\":true,\"flag\":false,\"menuCheckStrictly\":true,\"menuIds\":[2021,2022,2023],\"params\":{},\"roleId\":101,\"roleKey\":\"manager\",\"roleName\":\"经理\",\"roleSort\":3,\"status\":\"0\",\"updateBy\":\"admin\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2023-11-25 12:47:24', 26);
INSERT INTO `sys_oper_log` VALUES (81, '角色管理', 2, 'com.ruoyi.web.controller.system.SysRoleController.edit()', 'PUT', 1, 'admin', NULL, '/system/role', '127.0.0.1', '内网IP', '{\"admin\":false,\"createTime\":\"2023-11-22 14:15:55\",\"dataScope\":\"1\",\"delFlag\":\"0\",\"deptCheckStrictly\":true,\"flag\":false,\"menuCheckStrictly\":true,\"menuIds\":[2021,2022,2023,2024],\"params\":{},\"roleId\":101,\"roleKey\":\"manager\",\"roleName\":\"经理\",\"roleSort\":3,\"status\":\"0\",\"updateBy\":\"admin\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2023-11-25 12:47:33', 81);
INSERT INTO `sys_oper_log` VALUES (82, '角色管理', 2, 'com.ruoyi.web.controller.system.SysRoleController.edit()', 'PUT', 1, 'admin', NULL, '/system/role', '127.0.0.1', '内网IP', '{\"admin\":false,\"createTime\":\"2023-11-22 14:00:20\",\"dataScope\":\"2\",\"delFlag\":\"0\",\"deptCheckStrictly\":true,\"flag\":false,\"menuCheckStrictly\":true,\"menuIds\":[2047,107,2001,2003,2002,2015,2021,2022,1035,2004,2005,2016,2018,2019,2023,2024],\"params\":{},\"remark\":\"普通角色\",\"roleId\":2,\"roleKey\":\"common\",\"roleName\":\"普通角色\",\"roleSort\":2,\"status\":\"0\",\"updateBy\":\"admin\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2023-11-25 20:16:54', 71);
INSERT INTO `sys_oper_log` VALUES (83, '角色管理', 2, 'com.ruoyi.web.controller.system.SysRoleController.edit()', 'PUT', 1, 'admin', NULL, '/system/role', '127.0.0.1', '内网IP', '{\"admin\":false,\"createTime\":\"2023-11-22 14:15:35\",\"dataScope\":\"1\",\"delFlag\":\"0\",\"deptCheckStrictly\":true,\"flag\":false,\"menuCheckStrictly\":true,\"menuIds\":[1,2001,2003,2021,2022,2047,107,1035,1036,1037,1038,100,1000,1001,1002,1003,1004,1005,1006,2000,2009,2010,2011,2012,2013,2014,2004,2006,2008,2023,2025,2026,2027,2028,2029,2030,2031,2032,2033,2034],\"params\":{},\"roleId\":100,\"roleKey\":\"executor\",\"roleName\":\"执行人\",\"roleSort\":2,\"status\":\"0\",\"updateBy\":\"admin\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2023-11-25 20:17:25', 26);
INSERT INTO `sys_oper_log` VALUES (84, '角色管理', 2, 'com.ruoyi.web.controller.system.SysRoleController.edit()', 'PUT', 1, 'admin', NULL, '/system/role', '127.0.0.1', '内网IP', '{\"admin\":false,\"createTime\":\"2023-11-22 14:15:55\",\"dataScope\":\"1\",\"delFlag\":\"0\",\"deptCheckStrictly\":true,\"flag\":false,\"menuCheckStrictly\":true,\"menuIds\":[2035,2036,2037,2038,2039,2040,2041,2043,2046,2044,2045],\"params\":{},\"roleId\":101,\"roleKey\":\"manager\",\"roleName\":\"经理\",\"roleSort\":3,\"status\":\"0\",\"updateBy\":\"admin\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2023-11-25 20:18:06', 58);
INSERT INTO `sys_oper_log` VALUES (85, '用户管理', 2, 'com.ruoyi.web.controller.system.SysUserController.edit()', 'PUT', 1, 'admin', NULL, '/system/user', '127.0.0.1', '内网IP', '{\"admin\":false,\"avatar\":\"\",\"createBy\":\"admin\",\"createTime\":\"2023-11-22 18:15:41\",\"delFlag\":\"0\",\"dept\":{\"ancestors\":\"0\",\"children\":[],\"deptId\":100,\"deptName\":\"浩奇培训\",\"leader\":\"若依\",\"orderNum\":0,\"params\":{},\"parentId\":0,\"status\":\"0\"},\"deptId\":100,\"email\":\"2222@qq.com\",\"loginDate\":\"2023-11-25 20:22:49\",\"loginIp\":\"127.0.0.1\",\"nickName\":\"邓瀚宇\",\"params\":{},\"phonenumber\":\"13954525444\",\"postIds\":[5],\"roleIds\":[102],\"roles\":[{\"admin\":false,\"dataScope\":\"1\",\"deptCheckStrictly\":false,\"flag\":false,\"menuCheckStrictly\":false,\"params\":{},\"roleId\":102,\"roleKey\":\"woker\",\"roleName\":\"现场工作人员\",\"roleSort\":4,\"status\":\"0\"}],\"sex\":\"0\",\"status\":\"0\",\"updateBy\":\"admin\",\"userId\":102,\"userName\":\"小王\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2023-11-25 20:27:16', 44);
INSERT INTO `sys_oper_log` VALUES (86, '用户管理', 2, 'com.ruoyi.web.controller.system.SysUserController.edit()', 'PUT', 1, 'admin', NULL, '/system/user', '127.0.0.1', '内网IP', '{\"admin\":false,\"avatar\":\"\",\"createBy\":\"admin\",\"createTime\":\"2023-11-22 14:00:20\",\"delFlag\":\"0\",\"dept\":{\"ancestors\":\"0,100,101\",\"children\":[],\"deptId\":105,\"deptName\":\"测试部门\",\"leader\":\"若依\",\"orderNum\":3,\"params\":{},\"parentId\":101,\"status\":\"0\"},\"deptId\":105,\"email\":\"ry@qq.com\",\"loginDate\":\"2023-11-25 12:50:25\",\"loginIp\":\"127.0.0.1\",\"nickName\":\"赵梓妍\",\"params\":{},\"phonenumber\":\"15666666666\",\"postIds\":[4],\"remark\":\"测试员\",\"roleIds\":[2],\"roles\":[{\"admin\":false,\"dataScope\":\"2\",\"deptCheckStrictly\":false,\"flag\":false,\"menuCheckStrictly\":false,\"params\":{},\"roleId\":2,\"roleKey\":\"common\",\"roleName\":\"普通角色\",\"roleSort\":2,\"status\":\"0\"}],\"sex\":\"1\",\"status\":\"0\",\"updateBy\":\"admin\",\"userId\":2,\"userName\":\"ry\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2023-11-25 20:27:36', 88);
INSERT INTO `sys_oper_log` VALUES (87, '用户管理', 3, 'com.ruoyi.web.controller.system.SysUserController.remove()', 'DELETE', 1, 'admin', NULL, '/system/user/103', '127.0.0.1', '内网IP', '{}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2023-11-25 20:27:59', 59);
INSERT INTO `sys_oper_log` VALUES (88, '用户管理', 3, 'com.ruoyi.web.controller.system.SysUserController.remove()', 'DELETE', 1, 'admin', NULL, '/system/user/104', '127.0.0.1', '内网IP', '{}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2023-11-25 20:28:02', 11);
INSERT INTO `sys_oper_log` VALUES (89, '用户管理', 3, 'com.ruoyi.web.controller.system.SysUserController.remove()', 'DELETE', 1, 'admin', NULL, '/system/user/105', '127.0.0.1', '内网IP', '{}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2023-11-25 20:28:04', 12);
INSERT INTO `sys_oper_log` VALUES (90, '课程信息', 2, 'com.ruoyi.web.controller.system.TrainCourseController.edit()', 'PUT', 1, 'admin', NULL, '/system/course', '127.0.0.1', '内网IP', '{\"courseName\":\"C语言\",\"coursePrice\":2000,\"endDate\":\"2023-11-24\",\"id\":1,\"isDel\":0,\"params\":{},\"startDate\":\"2023-11-22\",\"trainer\":\"小张\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2023-11-25 20:29:57', 7);
INSERT INTO `sys_oper_log` VALUES (91, '讲师管理', 2, 'com.ruoyi.web.controller.system.TrainTrianerController.edit()', 'PUT', 1, 'admin', NULL, '/system/trianer', '127.0.0.1', '内网IP', '{\"email\":\"zxd123@qq.com\",\"expertise\":\"Python\",\"fullName\":\"张晓东\",\"id\":1,\"params\":{},\"phone\":\"12312321311\",\"title\":\"高级讲师\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2023-11-25 20:31:03', 64);
INSERT INTO `sys_oper_log` VALUES (92, '讲师管理', 3, 'com.ruoyi.web.controller.system.TrainTrianerController.remove()', 'DELETE', 1, 'admin', NULL, '/system/trianer/2', '127.0.0.1', '内网IP', '{}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2023-11-25 20:31:11', 24);
INSERT INTO `sys_oper_log` VALUES (93, '讲师管理', 1, 'com.ruoyi.web.controller.system.TrainTrianerController.add()', 'POST', 1, 'admin', NULL, '/system/trianer', '127.0.0.1', '内网IP', '{\"email\":\"wz123@qq.com\",\"expertise\":\"C语言\",\"fullName\":\"王铮\",\"id\":3,\"params\":{},\"phone\":\"17666668888\",\"title\":\"高级讲师\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2023-11-25 20:31:51', 85);
INSERT INTO `sys_oper_log` VALUES (94, '讲师管理', 5, 'com.ruoyi.web.controller.system.TrainTrianerController.export()', 'POST', 1, 'admin', NULL, '/system/trianer/export', '127.0.0.1', '内网IP', '{\"pageSize\":\"10\",\"pageNum\":\"1\"}', NULL, 0, NULL, '2023-11-25 20:32:09', 659);
INSERT INTO `sys_oper_log` VALUES (95, '讲师管理', 1, 'com.ruoyi.web.controller.system.TrainTrianerController.add()', 'POST', 1, 'admin', NULL, '/system/trianer', '127.0.0.1', '内网IP', '{\"email\":\"mfc123@qq.com\",\"expertise\":\"Java\",\"fullName\":\"孟凡超\",\"id\":4,\"params\":{},\"phone\":\"13277778888\",\"title\":\"高级讲师\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2023-11-25 20:34:11', 15);
INSERT INTO `sys_oper_log` VALUES (96, '讲师管理', 3, 'com.ruoyi.web.controller.system.TrainTrianerController.remove()', 'DELETE', 1, 'admin', NULL, '/system/trianer/1,3,4', '127.0.0.1', '内网IP', '{}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2023-11-25 20:34:26', 92);
INSERT INTO `sys_oper_log` VALUES (97, '讲师管理', 1, 'com.ruoyi.web.controller.system.TrainTrianerController.add()', 'POST', 1, 'admin', NULL, '/system/trianer', '127.0.0.1', '内网IP', '{\"email\":\"wz123@qq.com\",\"expertise\":\"C语言\",\"fullName\":\"王铮\",\"id\":5,\"params\":{},\"phone\":\"17677776666\",\"title\":\"高级讲师\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2023-11-25 20:34:53', 31);
INSERT INTO `sys_oper_log` VALUES (98, '讲师管理', 1, 'com.ruoyi.web.controller.system.TrainTrianerController.add()', 'POST', 1, 'admin', NULL, '/system/trianer', '127.0.0.1', '内网IP', '{\"email\":\"zxd123@qq.com\",\"expertise\":\"Python\",\"fullName\":\"张小东\",\"id\":6,\"params\":{},\"phone\":\"13233332222\",\"title\":\"高级讲师\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2023-11-25 20:35:42', 73);
INSERT INTO `sys_oper_log` VALUES (99, '讲师管理', 1, 'com.ruoyi.web.controller.system.TrainTrianerController.add()', 'POST', 1, 'admin', NULL, '/system/trianer', '127.0.0.1', '内网IP', '{\"email\":\"mfc123@qq.com\",\"expertise\":\"Java\",\"fullName\":\"孟凡超\",\"id\":7,\"params\":{},\"phone\":\"18877778888\",\"title\":\"高级讲师\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2023-11-25 20:36:15', 7);
INSERT INTO `sys_oper_log` VALUES (100, '问卷调查', 3, 'com.ruoyi.web.controller.system.TrainSurveyController.remove()', 'DELETE', 1, 'admin', NULL, '/system/survey/2,3,4', '127.0.0.1', '内网IP', '{}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2023-11-25 20:36:45', 88);
INSERT INTO `sys_oper_log` VALUES (101, '课程信息', 3, 'com.ruoyi.web.controller.system.TrainCourseController.remove()', 'DELETE', 1, 'admin', NULL, '/system/course/1,2,3,4', '127.0.0.1', '内网IP', '{}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2023-11-25 20:37:20', 23);
INSERT INTO `sys_oper_log` VALUES (102, '通知公告', 3, 'com.ruoyi.web.controller.system.SysNoticeController.remove()', 'DELETE', 1, 'admin', NULL, '/system/notice/10', '127.0.0.1', '内网IP', '{}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2023-11-25 20:37:37', 76);
INSERT INTO `sys_oper_log` VALUES (103, '通知公告', 1, 'com.ruoyi.web.controller.system.SysNoticeController.add()', 'POST', 1, 'test', NULL, '/system/notice', '127.0.0.1', '内网IP', '{\"createBy\":\"test\",\"noticeContent\":\"<p>新一年的培训开始啦！</p>\",\"noticeTitle\":\"培训通知\",\"noticeType\":\"1\",\"params\":{},\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2023-11-25 20:41:03', 57);
INSERT INTO `sys_oper_log` VALUES (104, '课程信息', 1, 'com.ruoyi.web.controller.system.TrainCourseController.add()', 'POST', 1, 'test', NULL, '/system/course', '127.0.0.1', '内网IP', '{\"courseName\":\"Python\",\"coursePrice\":5000,\"endDate\":\"2023-11-30\",\"id\":5,\"isDel\":0,\"params\":{},\"startDate\":\"2023-11-01\",\"trainer\":\"张小东\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2023-11-25 20:41:37', 89);
INSERT INTO `sys_oper_log` VALUES (105, '课程信息', 1, 'com.ruoyi.web.controller.system.TrainCourseController.add()', 'POST', 1, 'test', NULL, '/system/course', '127.0.0.1', '内网IP', '{\"courseName\":\"Java\",\"coursePrice\":6000,\"endDate\":\"2023-11-30\",\"id\":6,\"isDel\":0,\"params\":{},\"startDate\":\"2023-11-01\",\"trainer\":\"孟凡超\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2023-11-25 20:42:00', 56);
INSERT INTO `sys_oper_log` VALUES (106, '课程信息', 1, 'com.ruoyi.web.controller.system.TrainCourseController.add()', 'POST', 1, 'test', NULL, '/system/course', '127.0.0.1', '内网IP', '{\"courseName\":\"C语言\",\"coursePrice\":7000,\"endDate\":\"2023-11-30\",\"id\":7,\"isDel\":0,\"params\":{},\"startDate\":\"2023-11-01\",\"trainer\":\"王铮\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2023-11-25 20:42:28', 99);
INSERT INTO `sys_oper_log` VALUES (107, '课程信息', 2, 'com.ruoyi.web.controller.system.TrainCourseController.edit()', 'PUT', 1, 'test', NULL, '/system/course', '127.0.0.1', '内网IP', '{\"courseName\":\"C语言\",\"coursePrice\":7000,\"endDate\":\"2023-11-30\",\"id\":7,\"isDel\":1,\"params\":{},\"startDate\":\"2023-11-01\",\"trainer\":\"王铮\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2023-11-25 20:42:36', 29);
INSERT INTO `sys_oper_log` VALUES (108, '报名', 2, 'com.ruoyi.web.controller.system.TrainApplicationController.edit()', 'PUT', 1, 'test', NULL, '/system/application', '127.0.0.1', '内网IP', '{\"appTime\":\"2023-11-24 12:00:00\",\"company\":\"百度\",\"course\":\"Java\",\"id\":7,\"params\":{},\"position\":\"后端工程师\",\"skill\":\"熟练\",\"status\":0,\"studentId\":104,\"type\":1,\"username\":\"赵梓妍\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2023-11-25 20:42:53', 11);
INSERT INTO `sys_oper_log` VALUES (109, '讲师管理', 2, 'com.ruoyi.web.controller.system.TrainTrianerController.edit()', 'PUT', 1, 'test', NULL, '/system/trianer', '127.0.0.1', '内网IP', '{\"email\":\"wz123@qq.com\",\"expertise\":\"C语言\",\"fullName\":\"王铮\",\"id\":5,\"params\":{},\"phone\":\"17677776666\",\"title\":\"特级讲师\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2023-11-25 20:43:22', 103);
INSERT INTO `sys_oper_log` VALUES (110, '报名', 1, 'com.ruoyi.web.controller.system.TrainApplicationController.add()', 'POST', 1, 'ry', NULL, '/system/application', '127.0.0.1', '内网IP', '{\"appTime\":\"2023-11-25 12:00:00\",\"company\":\"华为\",\"course\":\"Java\",\"id\":8,\"params\":{},\"position\":\"后端工程师\",\"skill\":\"熟练\",\"studentId\":2,\"type\":0,\"username\":\"ry\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2023-11-25 20:44:39', 116);
INSERT INTO `sys_oper_log` VALUES (111, '缴费签到', 2, 'com.ruoyi.web.controller.system.TrainPaymentController.edit()', 'PUT', 1, 'ry', NULL, '/system/payment', '127.0.0.1', '内网IP', '{\"courseName\":\"Java\",\"coursePrice\":6000,\"id\":7,\"params\":{},\"payAcount\":\"123123123123\",\"payName\":\"浩奇公司\",\"payStatus\":1,\"signStatus\":0,\"studentId\":2,\"studentName\":\"ry\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2023-11-25 20:45:09', 102);
INSERT INTO `sys_oper_log` VALUES (112, '缴费签到', 2, 'com.ruoyi.web.controller.system.TrainPaymentController.edit()', 'PUT', 1, 'ry', NULL, '/system/payment', '127.0.0.1', '内网IP', '{\"courseName\":\"Java\",\"coursePrice\":6000,\"id\":7,\"params\":{},\"payAcount\":\"123123123123\",\"payName\":\"浩奇公司\",\"payStatus\":1,\"signStatus\":1,\"studentId\":2,\"studentName\":\"ry\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2023-11-25 20:45:13', 41);
INSERT INTO `sys_oper_log` VALUES (113, '问卷调查', 1, 'com.ruoyi.web.controller.system.TrainSurveyController.add()', 'POST', 1, 'ry', NULL, '/system/survey', '127.0.0.1', '内网IP', '{\"advice\":\"暂无\",\"comment\":\"很好\",\"courseName\":\"Java\",\"id\":5,\"params\":{},\"rating\":5,\"studentName\":\"ry\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2023-11-25 20:45:32', 110);
INSERT INTO `sys_oper_log` VALUES (114, '报名', 2, 'com.ruoyi.web.controller.system.TrainApplicationController.edit()', 'PUT', 1, 'test', NULL, '/system/application', '127.0.0.1', '内网IP', '{\"appTime\":\"2023-11-25 12:00:00\",\"company\":\"华为\",\"course\":\"Java\",\"id\":8,\"params\":{},\"position\":\"后端工程师\",\"skill\":\"熟练\",\"status\":1,\"studentId\":2,\"type\":0,\"username\":\"ry\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2023-11-25 20:46:09', 83);
INSERT INTO `sys_oper_log` VALUES (115, '通知公告', 1, 'com.ruoyi.web.controller.system.SysNoticeController.add()', 'POST', 1, '执行人', NULL, '/system/notice', '127.0.0.1', '内网IP', '{\"createBy\":\"执行人\",\"noticeContent\":\"<p>放假通知！</p>\",\"noticeTitle\":\"放假\",\"noticeType\":\"1\",\"params\":{},\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2023-11-25 21:37:11', 97);
INSERT INTO `sys_oper_log` VALUES (116, '课程信息', 2, 'com.ruoyi.web.controller.system.TrainCourseController.edit()', 'PUT', 1, '执行人', NULL, '/system/course', '127.0.0.1', '内网IP', '{\"courseName\":\"C语言\",\"coursePrice\":6500,\"endDate\":\"2023-11-30\",\"id\":7,\"isDel\":1,\"params\":{},\"startDate\":\"2023-11-01\",\"trainer\":\"王铮\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2023-11-25 21:37:26', 110);
INSERT INTO `sys_oper_log` VALUES (117, '问卷调查', 3, 'com.ruoyi.web.controller.system.TrainSurveyController.remove()', 'DELETE', 1, '执行人', NULL, '/system/survey/5', '127.0.0.1', '内网IP', '{}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2023-11-25 21:38:07', 26);
INSERT INTO `sys_oper_log` VALUES (118, '个人信息', 2, 'com.ruoyi.web.controller.system.SysProfileController.updateProfile()', 'PUT', 1, '执行人', NULL, '/system/user/profile', '127.0.0.1', '内网IP', '{\"admin\":false,\"createBy\":\"admin\",\"createTime\":\"2023-11-22 17:53:48\",\"delFlag\":\"0\",\"dept\":{\"ancestors\":\"0\",\"children\":[],\"deptId\":100,\"deptName\":\"浩奇培训\",\"leader\":\"若依\",\"orderNum\":0,\"params\":{},\"parentId\":0,\"status\":\"0\"},\"email\":\"zxr123@qq.com\",\"loginDate\":\"2023-11-25 20:47:55\",\"loginIp\":\"127.0.0.1\",\"nickName\":\"执行人\",\"params\":{},\"phonenumber\":\"13941524526\",\"roles\":[{\"admin\":false,\"dataScope\":\"1\",\"deptCheckStrictly\":false,\"flag\":false,\"menuCheckStrictly\":false,\"params\":{},\"roleId\":100,\"roleKey\":\"executor\",\"roleName\":\"执行人\",\"roleSort\":2,\"status\":\"0\"}],\"sex\":\"1\",\"status\":\"0\",\"userId\":100,\"userName\":\"执行人\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2023-11-25 21:38:24', 48);
INSERT INTO `sys_oper_log` VALUES (119, '个人信息', 2, 'com.ruoyi.web.controller.system.SysProfileController.updateProfile()', 'PUT', 1, '执行人', NULL, '/system/user/profile', '127.0.0.1', '内网IP', '{\"admin\":false,\"createBy\":\"admin\",\"createTime\":\"2023-11-22 17:53:48\",\"delFlag\":\"0\",\"dept\":{\"ancestors\":\"0\",\"children\":[],\"deptId\":100,\"deptName\":\"浩奇培训\",\"leader\":\"若依\",\"orderNum\":0,\"params\":{},\"parentId\":0,\"status\":\"0\"},\"email\":\"zxr123@qq.com\",\"loginDate\":\"2023-11-25 20:47:55\",\"loginIp\":\"127.0.0.1\",\"nickName\":\"执行人\",\"params\":{},\"phonenumber\":\"13933339999\",\"roles\":[{\"admin\":false,\"dataScope\":\"1\",\"deptCheckStrictly\":false,\"flag\":false,\"menuCheckStrictly\":false,\"params\":{},\"roleId\":100,\"roleKey\":\"executor\",\"roleName\":\"执行人\",\"roleSort\":2,\"status\":\"0\"}],\"sex\":\"1\",\"status\":\"0\",\"userId\":100,\"userName\":\"执行人\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2023-11-25 21:38:36', 52);
INSERT INTO `sys_oper_log` VALUES (120, '用户头像', 2, 'com.ruoyi.web.controller.system.SysProfileController.avatar()', 'POST', 1, '赵梓妍', NULL, '/system/user/profile/avatar', '127.0.0.1', '内网IP', '', '{\"msg\":\"操作成功\",\"imgUrl\":\"/profile/avatar/2023/11/25/blob_20231125213923A001.png\",\"code\":200}', 0, NULL, '2023-11-25 21:39:23', 164);
INSERT INTO `sys_oper_log` VALUES (121, '个人信息', 2, 'com.ruoyi.web.controller.system.SysProfileController.updateProfile()', 'PUT', 1, '赵梓妍', NULL, '/system/user/profile', '127.0.0.1', '内网IP', '{\"admin\":false,\"createBy\":\"admin\",\"createTime\":\"2023-11-22 14:00:20\",\"delFlag\":\"0\",\"dept\":{\"ancestors\":\"0,100,101\",\"children\":[],\"deptId\":105,\"deptName\":\"测试部门\",\"leader\":\"若依\",\"orderNum\":3,\"params\":{},\"parentId\":101,\"status\":\"0\"},\"email\":\"zzy123@qq.com\",\"loginDate\":\"2023-11-25 20:43:44\",\"loginIp\":\"127.0.0.1\",\"nickName\":\"赵梓妍\",\"params\":{},\"phonenumber\":\"15655556666\",\"remark\":\"测试员\",\"roles\":[{\"admin\":false,\"dataScope\":\"2\",\"deptCheckStrictly\":false,\"flag\":false,\"menuCheckStrictly\":false,\"params\":{},\"roleId\":2,\"roleKey\":\"common\",\"roleName\":\"普通角色\",\"roleSort\":2,\"status\":\"0\"}],\"sex\":\"1\",\"status\":\"0\",\"userId\":2,\"userName\":\"赵梓妍\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2023-11-25 21:39:40', 22);
INSERT INTO `sys_oper_log` VALUES (122, '用户头像', 2, 'com.ruoyi.web.controller.system.SysProfileController.avatar()', 'POST', 1, '经理', NULL, '/system/user/profile/avatar', '127.0.0.1', '内网IP', '', '{\"msg\":\"操作成功\",\"imgUrl\":\"/profile/avatar/2023/11/25/blob_20231125214043A002.png\",\"code\":200}', 0, NULL, '2023-11-25 21:40:43', 76);
INSERT INTO `sys_oper_log` VALUES (123, '个人信息', 2, 'com.ruoyi.web.controller.system.SysProfileController.updateProfile()', 'PUT', 1, '经理', NULL, '/system/user/profile', '127.0.0.1', '内网IP', '{\"admin\":false,\"createBy\":\"admin\",\"createTime\":\"2023-11-22 18:14:45\",\"delFlag\":\"0\",\"dept\":{\"ancestors\":\"0\",\"children\":[],\"deptId\":100,\"deptName\":\"浩奇培训\",\"leader\":\"若依\",\"orderNum\":0,\"params\":{},\"parentId\":0,\"status\":\"0\"},\"email\":\"jl123@qq.com\",\"loginDate\":\"2023-11-25 21:40:00\",\"loginIp\":\"127.0.0.1\",\"nickName\":\"经理\",\"params\":{},\"phonenumber\":\"13833338888\",\"roles\":[{\"admin\":false,\"dataScope\":\"1\",\"deptCheckStrictly\":false,\"flag\":false,\"menuCheckStrictly\":false,\"params\":{},\"roleId\":101,\"roleKey\":\"manager\",\"roleName\":\"经理\",\"roleSort\":3,\"status\":\"0\"}],\"sex\":\"1\",\"status\":\"0\",\"userId\":101,\"userName\":\"经理\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2023-11-25 21:40:54', 10);
INSERT INTO `sys_oper_log` VALUES (124, '用户头像', 2, 'com.ruoyi.web.controller.system.SysProfileController.avatar()', 'POST', 1, '现场工作人员', NULL, '/system/user/profile/avatar', '127.0.0.1', '内网IP', '', '{\"msg\":\"操作成功\",\"imgUrl\":\"/profile/avatar/2023/11/25/blob_20231125214149A003.png\",\"code\":200}', 0, NULL, '2023-11-25 21:41:49', 15);
INSERT INTO `sys_oper_log` VALUES (125, '个人信息', 2, 'com.ruoyi.web.controller.system.SysProfileController.updateProfile()', 'PUT', 1, '现场工作人员', NULL, '/system/user/profile', '127.0.0.1', '内网IP', '{\"admin\":false,\"avatar\":\"\",\"createBy\":\"admin\",\"createTime\":\"2023-11-22 18:15:41\",\"delFlag\":\"0\",\"dept\":{\"ancestors\":\"0\",\"children\":[],\"deptId\":100,\"deptName\":\"浩奇培训\",\"leader\":\"若依\",\"orderNum\":0,\"params\":{},\"parentId\":0,\"status\":\"0\"},\"deptId\":100,\"email\":\"gzry123@qq.com\",\"loginDate\":\"2023-11-25 20:22:49\",\"loginIp\":\"127.0.0.1\",\"nickName\":\"现场工作人员\",\"params\":{},\"phonenumber\":\"13933339999\",\"roles\":[{\"admin\":false,\"dataScope\":\"1\",\"deptCheckStrictly\":false,\"flag\":false,\"menuCheckStrictly\":false,\"params\":{},\"roleId\":102,\"roleKey\":\"woker\",\"roleName\":\"现场工作人员\",\"roleSort\":4,\"status\":\"0\"}],\"sex\":\"1\",\"status\":\"0\",\"userId\":102,\"userName\":\"现场工作人员\"}', '{\"msg\":\"修改用户\'现场工作人员\'失败，手机号码已存在\",\"code\":500}', 0, NULL, '2023-11-25 21:41:53', 2);
INSERT INTO `sys_oper_log` VALUES (126, '个人信息', 2, 'com.ruoyi.web.controller.system.SysProfileController.updateProfile()', 'PUT', 1, '现场工作人员', NULL, '/system/user/profile', '127.0.0.1', '内网IP', '{\"admin\":false,\"createBy\":\"admin\",\"createTime\":\"2023-11-22 18:15:41\",\"delFlag\":\"0\",\"dept\":{\"ancestors\":\"0\",\"children\":[],\"deptId\":100,\"deptName\":\"浩奇培训\",\"leader\":\"若依\",\"orderNum\":0,\"params\":{},\"parentId\":0,\"status\":\"0\"},\"email\":\"gzry123@qq.com\",\"loginDate\":\"2023-11-25 20:22:49\",\"loginIp\":\"127.0.0.1\",\"nickName\":\"现场工作人员\",\"params\":{},\"phonenumber\":\"18988889999\",\"roles\":[{\"admin\":false,\"dataScope\":\"1\",\"deptCheckStrictly\":false,\"flag\":false,\"menuCheckStrictly\":false,\"params\":{},\"roleId\":102,\"roleKey\":\"woker\",\"roleName\":\"现场工作人员\",\"roleSort\":4,\"status\":\"0\"}],\"sex\":\"1\",\"status\":\"0\",\"userId\":102,\"userName\":\"现场工作人员\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2023-11-25 21:42:05', 15);
INSERT INTO `sys_oper_log` VALUES (127, '角色管理', 2, 'com.ruoyi.web.controller.system.SysRoleController.edit()', 'PUT', 1, 'admin', NULL, '/system/role', '127.0.0.1', '内网IP', '{\"admin\":false,\"createTime\":\"2023-11-22 14:15:55\",\"dataScope\":\"1\",\"delFlag\":\"0\",\"deptCheckStrictly\":true,\"flag\":false,\"menuCheckStrictly\":true,\"menuIds\":[2035,2043,2046,2044,2045],\"params\":{},\"roleId\":101,\"roleKey\":\"manager\",\"roleName\":\"经理\",\"roleSort\":3,\"status\":\"0\",\"updateBy\":\"admin\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2023-11-25 21:42:58', 90);
INSERT INTO `sys_oper_log` VALUES (128, '报名', 1, 'com.ruoyi.web.controller.system.TrainApplicationController.add()', 'POST', 1, '赵梓妍', NULL, '/system/application', '127.0.0.1', '内网IP', '{\"appTime\":\"2023-11-25 12:00:00\",\"company\":\"华为\",\"course\":\"Python\",\"id\":9,\"params\":{},\"position\":\"工程师\",\"skill\":\"熟练\",\"studentId\":2,\"type\":1,\"username\":\"赵梓妍\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2023-11-25 21:45:39', 42);
INSERT INTO `sys_oper_log` VALUES (129, '缴费签到', 2, 'com.ruoyi.web.controller.system.TrainPaymentController.edit()', 'PUT', 1, '赵梓妍', NULL, '/system/payment', '127.0.0.1', '内网IP', '{\"courseName\":\"Python\",\"coursePrice\":5000,\"id\":8,\"params\":{},\"payAcount\":\"123123123\",\"payName\":\"浩奇公司\",\"payStatus\":1,\"signStatus\":0,\"studentId\":2,\"studentName\":\"赵梓妍\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2023-11-25 21:46:00', 48);
INSERT INTO `sys_oper_log` VALUES (130, '缴费签到', 2, 'com.ruoyi.web.controller.system.TrainPaymentController.edit()', 'PUT', 1, '赵梓妍', NULL, '/system/payment', '127.0.0.1', '内网IP', '{\"courseName\":\"Python\",\"coursePrice\":5000,\"id\":8,\"params\":{},\"payAcount\":\"123123123\",\"payName\":\"浩奇公司\",\"payStatus\":1,\"signStatus\":1,\"studentId\":2,\"studentName\":\"赵梓妍\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2023-11-25 21:46:03', 45);
INSERT INTO `sys_oper_log` VALUES (131, '问卷调查', 1, 'com.ruoyi.web.controller.system.TrainSurveyController.add()', 'POST', 1, '赵梓妍', NULL, '/system/survey', '127.0.0.1', '内网IP', '{\"advice\":\"暂无\",\"comment\":\"很好\",\"courseName\":\"Python\",\"id\":6,\"params\":{},\"rating\":5,\"studentName\":\"赵梓妍\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2023-11-25 21:46:22', 82);
INSERT INTO `sys_oper_log` VALUES (132, '报名', 1, 'com.ruoyi.web.controller.system.TrainApplicationController.add()', 'POST', 1, '吕文宣', NULL, '/system/application', '127.0.0.1', '内网IP', '{\"appTime\":\"2023-11-25 12:00:00\",\"company\":\"百度\",\"course\":\"Java\",\"id\":10,\"params\":{},\"position\":\"工程师\",\"skill\":\"熟练\",\"studentId\":106,\"type\":0,\"username\":\"吕文宣\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2023-11-25 21:47:25', 106);
INSERT INTO `sys_oper_log` VALUES (133, '个人信息', 2, 'com.ruoyi.web.controller.system.SysProfileController.updateProfile()', 'PUT', 1, '吕文宣', NULL, '/system/user/profile', '127.0.0.1', '内网IP', '{\"admin\":false,\"createBy\":\"\",\"createTime\":\"2023-11-25 21:46:44\",\"delFlag\":\"0\",\"email\":\"lwx123@qq.com\",\"loginIp\":\"\",\"nickName\":\"吕文宣\",\"params\":{},\"phonenumber\":\"17677776666\",\"roles\":[{\"admin\":false,\"dataScope\":\"2\",\"deptCheckStrictly\":false,\"flag\":false,\"menuCheckStrictly\":false,\"params\":{},\"roleId\":2,\"roleKey\":\"common\",\"roleName\":\"普通角色\",\"roleSort\":2,\"status\":\"0\"}],\"sex\":\"1\",\"status\":\"0\",\"userId\":106,\"userName\":\"吕文宣\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2023-11-25 21:47:50', 110);
INSERT INTO `sys_oper_log` VALUES (134, '用户头像', 2, 'com.ruoyi.web.controller.system.SysProfileController.avatar()', 'POST', 1, '吕文宣', NULL, '/system/user/profile/avatar', '127.0.0.1', '内网IP', '', '{\"msg\":\"操作成功\",\"imgUrl\":\"/profile/avatar/2023/11/25/blob_20231125214804A004.png\",\"code\":200}', 0, NULL, '2023-11-25 21:48:04', 53);
INSERT INTO `sys_oper_log` VALUES (135, '通知公告', 1, 'com.ruoyi.web.controller.system.SysNoticeController.add()', 'POST', 1, '执行人', NULL, '/system/notice', '127.0.0.1', '内网IP', '{\"createBy\":\"执行人\",\"noticeContent\":\"<p>m</p>\",\"noticeTitle\":\"培训通知\",\"noticeType\":\"1\",\"params\":{},\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2023-11-25 21:49:43', 15);
INSERT INTO `sys_oper_log` VALUES (136, '通知公告', 3, 'com.ruoyi.web.controller.system.SysNoticeController.remove()', 'DELETE', 1, '执行人', NULL, '/system/notice/13', '127.0.0.1', '内网IP', '{}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2023-11-25 21:49:59', 101);
INSERT INTO `sys_oper_log` VALUES (137, '通知公告', 1, 'com.ruoyi.web.controller.system.SysNoticeController.add()', 'POST', 1, '执行人', NULL, '/system/notice', '127.0.0.1', '内网IP', '{\"createBy\":\"执行人\",\"noticeContent\":\"<p>明天培训正常进行</p>\",\"noticeTitle\":\"培训通知\",\"noticeType\":\"1\",\"params\":{},\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2023-11-25 21:50:58', 38);
INSERT INTO `sys_oper_log` VALUES (138, '课程信息', 2, 'com.ruoyi.web.controller.system.TrainCourseController.edit()', 'PUT', 1, '执行人', NULL, '/system/course', '127.0.0.1', '内网IP', '{\"courseName\":\"C语言\",\"coursePrice\":7000,\"endDate\":\"2023-11-30\",\"id\":7,\"isDel\":1,\"params\":{},\"startDate\":\"2023-11-01\",\"trainer\":\"王铮\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2023-11-25 21:51:13', 21);
INSERT INTO `sys_oper_log` VALUES (139, '报名', 2, 'com.ruoyi.web.controller.system.TrainApplicationController.edit()', 'PUT', 1, '执行人', NULL, '/system/application', '127.0.0.1', '内网IP', '{\"appTime\":\"2023-11-25 12:00:00\",\"company\":\"华为\",\"course\":\"Python\",\"id\":9,\"params\":{},\"position\":\"工程师\",\"skill\":\"熟练\",\"status\":1,\"studentId\":2,\"type\":1,\"username\":\"赵梓妍\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2023-11-25 21:51:26', 50);
INSERT INTO `sys_oper_log` VALUES (140, '报名', 2, 'com.ruoyi.web.controller.system.TrainApplicationController.edit()', 'PUT', 1, '执行人', NULL, '/system/application', '127.0.0.1', '内网IP', '{\"appTime\":\"2023-11-25 12:00:00\",\"company\":\"百度\",\"course\":\"Java\",\"id\":10,\"params\":{},\"position\":\"工程师\",\"skill\":\"熟练\",\"status\":1,\"studentId\":106,\"type\":0,\"username\":\"吕文宣\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2023-11-25 21:51:31', 31);

-- ----------------------------
-- Table structure for sys_post
-- ----------------------------
DROP TABLE IF EXISTS `sys_post`;
CREATE TABLE `sys_post`  (
  `post_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '岗位ID',
  `post_code` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '岗位编码',
  `post_name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '岗位名称',
  `post_sort` int(11) NOT NULL COMMENT '显示顺序',
  `status` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '状态（0正常 1停用）',
  `create_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '创建者',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '更新者',
  `update_time` datetime NULL DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`post_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 6 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '岗位信息表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of sys_post
-- ----------------------------
INSERT INTO `sys_post` VALUES (1, 'ceo', '董事长', 1, '0', 'admin', '2023-11-22 14:00:20', '', NULL, '');
INSERT INTO `sys_post` VALUES (2, 'se', '经理', 2, '0', 'admin', '2023-11-22 14:00:20', 'admin', '2023-11-22 14:16:57', '');
INSERT INTO `sys_post` VALUES (3, 'hr', '执行人', 3, '0', 'admin', '2023-11-22 14:00:20', 'admin', '2023-11-22 14:17:05', '');
INSERT INTO `sys_post` VALUES (4, 'user', '普通用户', 4, '0', 'admin', '2023-11-22 14:00:20', 'admin', '2023-11-22 14:17:20', '');
INSERT INTO `sys_post` VALUES (5, 'woker', '现场工作人员', 4, '0', 'admin', '2023-11-22 14:17:30', '', NULL, NULL);

-- ----------------------------
-- Table structure for sys_role
-- ----------------------------
DROP TABLE IF EXISTS `sys_role`;
CREATE TABLE `sys_role`  (
  `role_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '角色ID',
  `role_name` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '角色名称',
  `role_key` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '角色权限字符串',
  `role_sort` int(11) NOT NULL COMMENT '显示顺序',
  `data_scope` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '1' COMMENT '数据范围（1：全部数据权限 2：自定数据权限 3：本部门数据权限 4：本部门及以下数据权限）',
  `menu_check_strictly` tinyint(1) NULL DEFAULT 1 COMMENT '菜单树选择项是否关联显示',
  `dept_check_strictly` tinyint(1) NULL DEFAULT 1 COMMENT '部门树选择项是否关联显示',
  `status` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '角色状态（0正常 1停用）',
  `del_flag` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '0' COMMENT '删除标志（0代表存在 2代表删除）',
  `create_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '创建者',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '更新者',
  `update_time` datetime NULL DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`role_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 103 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '角色信息表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of sys_role
-- ----------------------------
INSERT INTO `sys_role` VALUES (1, '超级管理员', 'admin', 1, '1', 1, 1, '0', '0', 'admin', '2023-11-22 14:00:20', '', NULL, '超级管理员');
INSERT INTO `sys_role` VALUES (2, '普通角色', 'common', 2, '2', 1, 1, '0', '0', 'admin', '2023-11-22 14:00:20', 'admin', '2023-11-25 20:16:54', '普通角色');
INSERT INTO `sys_role` VALUES (100, '执行人', 'executor', 2, '1', 1, 1, '0', '0', 'admin', '2023-11-22 14:15:35', 'admin', '2023-11-25 20:17:25', NULL);
INSERT INTO `sys_role` VALUES (101, '经理', 'manager', 3, '1', 1, 1, '0', '0', 'admin', '2023-11-22 14:15:55', 'admin', '2023-11-25 21:42:58', NULL);
INSERT INTO `sys_role` VALUES (102, '现场工作人员', 'woker', 4, '1', 1, 1, '0', '0', 'admin', '2023-11-22 14:16:19', 'admin', '2023-11-23 16:07:26', NULL);

-- ----------------------------
-- Table structure for sys_role_dept
-- ----------------------------
DROP TABLE IF EXISTS `sys_role_dept`;
CREATE TABLE `sys_role_dept`  (
  `role_id` bigint(20) NOT NULL COMMENT '角色ID',
  `dept_id` bigint(20) NOT NULL COMMENT '部门ID',
  PRIMARY KEY (`role_id`, `dept_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '角色和部门关联表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of sys_role_dept
-- ----------------------------
INSERT INTO `sys_role_dept` VALUES (2, 100);
INSERT INTO `sys_role_dept` VALUES (2, 101);
INSERT INTO `sys_role_dept` VALUES (2, 105);

-- ----------------------------
-- Table structure for sys_role_menu
-- ----------------------------
DROP TABLE IF EXISTS `sys_role_menu`;
CREATE TABLE `sys_role_menu`  (
  `role_id` bigint(20) NOT NULL COMMENT '角色ID',
  `menu_id` bigint(20) NOT NULL COMMENT '菜单ID',
  PRIMARY KEY (`role_id`, `menu_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '角色和菜单关联表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of sys_role_menu
-- ----------------------------
INSERT INTO `sys_role_menu` VALUES (2, 107);
INSERT INTO `sys_role_menu` VALUES (2, 1035);
INSERT INTO `sys_role_menu` VALUES (2, 2001);
INSERT INTO `sys_role_menu` VALUES (2, 2002);
INSERT INTO `sys_role_menu` VALUES (2, 2003);
INSERT INTO `sys_role_menu` VALUES (2, 2004);
INSERT INTO `sys_role_menu` VALUES (2, 2005);
INSERT INTO `sys_role_menu` VALUES (2, 2015);
INSERT INTO `sys_role_menu` VALUES (2, 2016);
INSERT INTO `sys_role_menu` VALUES (2, 2018);
INSERT INTO `sys_role_menu` VALUES (2, 2019);
INSERT INTO `sys_role_menu` VALUES (2, 2021);
INSERT INTO `sys_role_menu` VALUES (2, 2022);
INSERT INTO `sys_role_menu` VALUES (2, 2023);
INSERT INTO `sys_role_menu` VALUES (2, 2024);
INSERT INTO `sys_role_menu` VALUES (2, 2047);
INSERT INTO `sys_role_menu` VALUES (100, 1);
INSERT INTO `sys_role_menu` VALUES (100, 100);
INSERT INTO `sys_role_menu` VALUES (100, 107);
INSERT INTO `sys_role_menu` VALUES (100, 1000);
INSERT INTO `sys_role_menu` VALUES (100, 1001);
INSERT INTO `sys_role_menu` VALUES (100, 1002);
INSERT INTO `sys_role_menu` VALUES (100, 1003);
INSERT INTO `sys_role_menu` VALUES (100, 1004);
INSERT INTO `sys_role_menu` VALUES (100, 1005);
INSERT INTO `sys_role_menu` VALUES (100, 1006);
INSERT INTO `sys_role_menu` VALUES (100, 1035);
INSERT INTO `sys_role_menu` VALUES (100, 1036);
INSERT INTO `sys_role_menu` VALUES (100, 1037);
INSERT INTO `sys_role_menu` VALUES (100, 1038);
INSERT INTO `sys_role_menu` VALUES (100, 2000);
INSERT INTO `sys_role_menu` VALUES (100, 2001);
INSERT INTO `sys_role_menu` VALUES (100, 2003);
INSERT INTO `sys_role_menu` VALUES (100, 2004);
INSERT INTO `sys_role_menu` VALUES (100, 2006);
INSERT INTO `sys_role_menu` VALUES (100, 2008);
INSERT INTO `sys_role_menu` VALUES (100, 2009);
INSERT INTO `sys_role_menu` VALUES (100, 2010);
INSERT INTO `sys_role_menu` VALUES (100, 2011);
INSERT INTO `sys_role_menu` VALUES (100, 2012);
INSERT INTO `sys_role_menu` VALUES (100, 2013);
INSERT INTO `sys_role_menu` VALUES (100, 2014);
INSERT INTO `sys_role_menu` VALUES (100, 2021);
INSERT INTO `sys_role_menu` VALUES (100, 2022);
INSERT INTO `sys_role_menu` VALUES (100, 2023);
INSERT INTO `sys_role_menu` VALUES (100, 2025);
INSERT INTO `sys_role_menu` VALUES (100, 2026);
INSERT INTO `sys_role_menu` VALUES (100, 2027);
INSERT INTO `sys_role_menu` VALUES (100, 2028);
INSERT INTO `sys_role_menu` VALUES (100, 2029);
INSERT INTO `sys_role_menu` VALUES (100, 2030);
INSERT INTO `sys_role_menu` VALUES (100, 2031);
INSERT INTO `sys_role_menu` VALUES (100, 2032);
INSERT INTO `sys_role_menu` VALUES (100, 2033);
INSERT INTO `sys_role_menu` VALUES (100, 2034);
INSERT INTO `sys_role_menu` VALUES (100, 2047);
INSERT INTO `sys_role_menu` VALUES (101, 2035);
INSERT INTO `sys_role_menu` VALUES (101, 2043);
INSERT INTO `sys_role_menu` VALUES (101, 2044);
INSERT INTO `sys_role_menu` VALUES (101, 2045);
INSERT INTO `sys_role_menu` VALUES (101, 2046);
INSERT INTO `sys_role_menu` VALUES (102, 107);
INSERT INTO `sys_role_menu` VALUES (102, 1035);
INSERT INTO `sys_role_menu` VALUES (102, 2002);
INSERT INTO `sys_role_menu` VALUES (102, 2015);
INSERT INTO `sys_role_menu` VALUES (102, 2016);
INSERT INTO `sys_role_menu` VALUES (102, 2020);
INSERT INTO `sys_role_menu` VALUES (102, 2047);

-- ----------------------------
-- Table structure for sys_user
-- ----------------------------
DROP TABLE IF EXISTS `sys_user`;
CREATE TABLE `sys_user`  (
  `user_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '用户ID',
  `dept_id` bigint(20) NULL DEFAULT NULL COMMENT '部门ID',
  `user_name` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '用户账号',
  `nick_name` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '用户昵称',
  `user_type` varchar(2) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '00' COMMENT '用户类型（00系统用户）',
  `email` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '用户邮箱',
  `phonenumber` varchar(11) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '手机号码',
  `sex` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '0' COMMENT '用户性别（0男 1女 2未知）',
  `avatar` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '头像地址',
  `password` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '密码',
  `status` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '0' COMMENT '帐号状态（0正常 1停用）',
  `del_flag` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '0' COMMENT '删除标志（0代表存在 2代表删除）',
  `login_ip` varchar(128) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '最后登录IP',
  `login_date` datetime NULL DEFAULT NULL COMMENT '最后登录时间',
  `create_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '创建者',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '更新者',
  `update_time` datetime NULL DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`user_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 106 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '用户信息表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of sys_user
-- ----------------------------
INSERT INTO `sys_user` VALUES (1, 103, 'admin', '若依', '00', 'ry@163.com', '15888888888', '1', '', '$2a$10$7JB720yubVSZvUI0rEqK/.VqGOZTH.ulu33dHOiBE8ByOhJIrdAu2', '0', '0', '127.0.0.1', '2023-11-25 21:57:26', 'admin', '2023-11-22 14:00:20', '', '2023-11-25 21:57:26', '管理员');
INSERT INTO `sys_user` VALUES (2, 105, '赵梓妍', '赵梓妍', '00', 'zzy123@qq.com', '15655556666', '1', '/profile/avatar/2023/11/25/blob_20231125213923A001.png', '$2a$10$bFKkenT8ECOncF9WTy7qf.sTaZQz4Yc21yZDRulEcxguK/WLoNTIO', '0', '0', '127.0.0.1', '2023-11-25 21:44:53', 'admin', '2023-11-22 14:00:20', 'admin', '2023-11-25 21:44:53', '测试员');
INSERT INTO `sys_user` VALUES (100, 100, '执行人', '执行人', '00', 'zxr123@qq.com', '13933339999', '1', '', '$2a$10$nmShRmVVOZB2TnI9ZcEXKeiTYpFwAXqPb0fEfghqtAvFZGkBSIh5m', '0', '0', '127.0.0.1', '2023-11-25 21:50:26', 'admin', '2023-11-22 17:53:48', 'admin', '2023-11-25 21:50:26', NULL);
INSERT INTO `sys_user` VALUES (101, 100, '经理', '经理', '00', 'jl123@qq.com', '13833338888', '1', '/profile/avatar/2023/11/25/blob_20231125214043A002.png', '$2a$10$eNpMy5wOOHkGSlR8i4s9SObObbU8TMp8nX2MWkgF6XgZHfbF0PQha', '0', '0', '127.0.0.1', '2023-11-25 21:52:05', 'admin', '2023-11-22 18:14:45', 'admin', '2023-11-25 21:52:05', NULL);
INSERT INTO `sys_user` VALUES (102, 100, '现场工作人员', '现场工作人员', '00', 'gzry123@qq.com', '18988889999', '1', '/profile/avatar/2023/11/25/blob_20231125214149A003.png', '$2a$10$GEvvzgxsyMVyoteyIDUifO0j0ex8St1AV4987m.52F.xH6sQQVZsq', '0', '0', '127.0.0.1', '2023-11-25 21:52:35', 'admin', '2023-11-22 18:15:41', 'admin', '2023-11-25 21:52:34', NULL);
INSERT INTO `sys_user` VALUES (106, NULL, '吕文宣', '吕文宣', '00', 'lwx123@qq.com', '17677776666', '1', '/profile/avatar/2023/11/25/blob_20231125214804A004.png', '$2a$10$F7.FPnrNWvp9rBVT/f/1XejWLQZjKD5Gh5TCbvnAsVJVQZ1l6ps/C', '0', '0', '127.0.0.1', '2023-11-25 21:46:55', '', '2023-11-25 21:46:44', '', '2023-11-25 21:47:50', NULL);

-- ----------------------------
-- Table structure for sys_user_post
-- ----------------------------
DROP TABLE IF EXISTS `sys_user_post`;
CREATE TABLE `sys_user_post`  (
  `user_id` bigint(20) NOT NULL COMMENT '用户ID',
  `post_id` bigint(20) NOT NULL COMMENT '岗位ID',
  PRIMARY KEY (`user_id`, `post_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '用户与岗位关联表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of sys_user_post
-- ----------------------------
INSERT INTO `sys_user_post` VALUES (1, 1);
INSERT INTO `sys_user_post` VALUES (2, 4);
INSERT INTO `sys_user_post` VALUES (100, 3);
INSERT INTO `sys_user_post` VALUES (101, 2);
INSERT INTO `sys_user_post` VALUES (102, 5);

-- ----------------------------
-- Table structure for sys_user_role
-- ----------------------------
DROP TABLE IF EXISTS `sys_user_role`;
CREATE TABLE `sys_user_role`  (
  `user_id` bigint(20) NOT NULL COMMENT '用户ID',
  `role_id` bigint(20) NOT NULL COMMENT '角色ID',
  PRIMARY KEY (`user_id`, `role_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '用户和角色关联表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of sys_user_role
-- ----------------------------
INSERT INTO `sys_user_role` VALUES (1, 1);
INSERT INTO `sys_user_role` VALUES (2, 2);
INSERT INTO `sys_user_role` VALUES (100, 100);
INSERT INTO `sys_user_role` VALUES (101, 101);
INSERT INTO `sys_user_role` VALUES (102, 102);
INSERT INTO `sys_user_role` VALUES (106, 2);

-- ----------------------------
-- Table structure for train_application
-- ----------------------------
DROP TABLE IF EXISTS `train_application`;
CREATE TABLE `train_application`  (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '编号',
  `type` int(11) NULL DEFAULT 0 COMMENT '报名类型',
  `student_id` int(11) NULL DEFAULT NULL COMMENT '学员编号',
  `username` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '学员姓名',
  `course` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '报名课程',
  `company` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '公司',
  `position` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '工作岗位',
  `skill` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '技术水平',
  `app_time` datetime NULL DEFAULT NULL COMMENT '报名时间',
  `status` int(11) NULL DEFAULT 0 COMMENT '审核状态',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 9 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of train_application
-- ----------------------------
INSERT INTO `train_application` VALUES (9, 1, 2, '赵梓妍', 'Python', '华为', '工程师', '熟练', '2023-11-25 00:00:00', 1);
INSERT INTO `train_application` VALUES (10, 0, 106, '吕文宣', 'Java', '百度', '工程师', '熟练', '2023-11-25 00:00:00', 1);

-- ----------------------------
-- Table structure for train_course
-- ----------------------------
DROP TABLE IF EXISTS `train_course`;
CREATE TABLE `train_course`  (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '课程ID',
  `course_name` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '课程名',
  `trainer` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '讲师',
  `start_date` datetime NULL DEFAULT NULL COMMENT '开始日期',
  `end_date` datetime NULL DEFAULT NULL COMMENT '结束日期',
  `course_price` decimal(10, 2) NULL DEFAULT NULL COMMENT '课程费用',
  `is_del` int(11) NULL DEFAULT 0 COMMENT '课程状态',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 8 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of train_course
-- ----------------------------
INSERT INTO `train_course` VALUES (5, 'Python', '张小东', '2023-11-01 00:00:00', '2023-11-30 00:00:00', 5000.00, 0);
INSERT INTO `train_course` VALUES (6, 'Java', '孟凡超', '2023-11-01 00:00:00', '2023-11-30 00:00:00', 6000.00, 0);
INSERT INTO `train_course` VALUES (7, 'C语言', '王铮', '2023-11-01 00:00:00', '2023-11-30 00:00:00', 7000.00, 1);

-- ----------------------------
-- Table structure for train_income
-- ----------------------------
DROP TABLE IF EXISTS `train_income`;
CREATE TABLE `train_income`  (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '收入ID',
  `course_name` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '课程名',
  `number` int(11) NULL DEFAULT NULL COMMENT '选课人数',
  `price` decimal(10, 2) NULL DEFAULT NULL COMMENT '价格',
  `total_price` decimal(10, 2) NULL DEFAULT NULL COMMENT '总收入',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of train_income
-- ----------------------------
INSERT INTO `train_income` VALUES (1, 'Java', 6, 5000.00, 32000.00);
INSERT INTO `train_income` VALUES (2, 'C语言', 2, 2000.00, 4000.00);
INSERT INTO `train_income` VALUES (3, 'Python', 2, 5000.00, 10000.00);

-- ----------------------------
-- Table structure for train_payment
-- ----------------------------
DROP TABLE IF EXISTS `train_payment`;
CREATE TABLE `train_payment`  (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '账单ID',
  `student_id` int(11) NULL DEFAULT NULL COMMENT '学员ID',
  `student_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '学员姓名',
  `course_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '课程名',
  `course_price` decimal(10, 2) NULL DEFAULT NULL COMMENT '课程费用',
  `pay_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '付款人',
  `pay_acount` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '付款账户',
  `pay_status` int(11) NULL DEFAULT 0 COMMENT '付款状态',
  `sign_status` int(11) NULL DEFAULT 0 COMMENT '签到状态',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 8 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of train_payment
-- ----------------------------
INSERT INTO `train_payment` VALUES (8, 2, '赵梓妍', 'Python', 5000.00, '浩奇公司', '123123123', 1, 1);
INSERT INTO `train_payment` VALUES (9, 106, '吕文宣', 'Java', 6000.00, NULL, NULL, 0, 0);

-- ----------------------------
-- Table structure for train_survey
-- ----------------------------
DROP TABLE IF EXISTS `train_survey`;
CREATE TABLE `train_survey`  (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '问卷ID',
  `student_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '学员姓名',
  `course_name` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '课程名',
  `rating` int(11) NULL DEFAULT 0 COMMENT '满意度',
  `comment` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '评价',
  `advice` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '建议',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 6 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of train_survey
-- ----------------------------
INSERT INTO `train_survey` VALUES (6, '赵梓妍', 'Python', 5, '很好', '暂无');

-- ----------------------------
-- Table structure for train_trianer
-- ----------------------------
DROP TABLE IF EXISTS `train_trianer`;
CREATE TABLE `train_trianer`  (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '讲师ID',
  `full_name` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '姓名',
  `title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '职称',
  `expertise` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '擅长领域',
  `email` varchar(29) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '邮箱',
  `phone` varchar(11) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '手机号',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 8 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of train_trianer
-- ----------------------------
INSERT INTO `train_trianer` VALUES (5, '王铮', '特级讲师', 'C语言', 'wz123@qq.com', '17677776666');
INSERT INTO `train_trianer` VALUES (6, '张小东', '高级讲师', 'Python', 'zxd123@qq.com', '13233332222');
INSERT INTO `train_trianer` VALUES (7, '孟凡超', '高级讲师', 'Java', 'mfc123@qq.com', '18877778888');

SET FOREIGN_KEY_CHECKS = 1;
