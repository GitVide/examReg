/*
 Navicat Premium Data Transfer

 Source Server         : spring
 Source Server Type    : MySQL
 Source Server Version : 80017
 Source Host           : localhost:3306
 Source Schema         : team11

 Target Server Type    : MySQL
 Target Server Version : 80017
 File Encoding         : 65001

 Date: 16/06/2020 23:48:02
*/

SET NAMES utf8;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for stu_info
-- ----------------------------
DROP TABLE IF EXISTS `stu_info`;
CREATE TABLE `stu_info`  (
  `EXAM_NUM` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '准考证号',
  `STU_STAT` int(11) NOT NULL COMMENT '学籍状态 0，正常；1，已毕业；2，已转出；3，错误',
  `SEX` int(11) NOT NULL COMMENT '性别 1：男 2：女',
  `POLI_STAT` int(11) NOT NULL COMMENT '政治面貌 1：党员；2：团员；3：其他；255：未采集',
  `JOB_CODE` int(11) NULL DEFAULT NULL COMMENT '职业编码',
  `EDU_CODE` int(11) NOT NULL COMMENT '学历编码 1：本科以上；2：本科；3：大专(专科);4:中专(中技);5:高中(职高)； 6：初中及初中以下；255：未采集',
  `PHY_STAT` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '身体状况编码 1：健康；2：残疾',
  `HOUSE_CODE` int(11) NOT NULL COMMENT '户籍编码 1：城镇；2：农村；255：未采集',
  `STU_TYPE` int(11) NOT NULL COMMENT '学生类型编码 1：一类；2：二类；3：三类；4：四类',
  `STU_ID` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '学生ID',
  `INTENT_MAJOR` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '拟报专业编码',
  `ID_NUM` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '身份证号',
  `STU_NAME` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '学生姓名',
  `BIRTH` date NOT NULL COMMENT '出生日期',
  `APPLY_DATE` date NOT NULL COMMENT '报名日期',
  `APPLY_TYPE` int(11) NOT NULL COMMENT '报名形式 0：本地报名；1：外地转入',
  `DELAY_TIME` int(11) NULL DEFAULT 0 COMMENT '延期毕业（月）',
  `CARD_FLAG` int(11) NOT NULL COMMENT '发卡标志 0：未发卡；1：已发卡',
  `TELE` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '电话',
  `ADDR` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '地址',
  `POSTCODE` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '邮编',
  `APPLY_CITY_CODE` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '报名地市州编码',
  `APPLY_CONTY_CODE` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '报名区县编码',
  `APPLY_SCH_CODE` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '报名学学校编码',
  `WORK_UNIT` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '工作单位',
  `HELP_STUDY_CODE` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '助学码',
  `GROUP_CODE` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '集体代码',
  `STU_IMG_NAME` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '学生照片文件名 存储的是图片的相对路径',
  `ENG_NAME` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '英文姓名',
  `MAJOR_NAME` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '专业名称',
  `MAJOR_LEVEL_CODE` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '专业层次代码',
  `MAJOR_TYPE_CODE` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '专业类型代码',
  `MAJOR_FIELD` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '专业方向',
  `ID_PROOF_CODE` int(11) NULL DEFAULT NULL COMMENT '身份证件类型代码',
  `STU_EMAIL` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '考生电子邮件',
  PRIMARY KEY (`EXAM_NUM`, `STU_ID`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '考籍基本信息' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for stu_excuse_info
-- ----------------------------
DROP TABLE IF EXISTS `stu_excuse_info`;
CREATE TABLE `stu_excuse_info`  (
  `EXAM_NUM` int(11) NOT NULL COMMENT '准考证号',
  `EXCUSE_COURSE` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '免考课程编码',
  `EXAM_CODE` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '考次编码',
  `EXCUSE_ID` int(11) NULL DEFAULT NULL COMMENT '免考ID',
  `ACT_DATE` date NULL DEFAULT NULL COMMENT '办理时间',
  PRIMARY KEY (`EXAM_NUM`, `EXCUSE_COURSE`, `EXAM_CODE`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '学生转免考信息' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for stu_exam_info
-- ----------------------------
DROP TABLE IF EXISTS `stu_exam_info`;
CREATE TABLE `stu_exam_info`  (
  `EXAM_NUM` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '准考证号',
  `EXAM_CODE` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '考次编码',
  PRIMARY KEY (`EXAM_CODE`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '考生考次信息' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for out_stu_info
-- ----------------------------
DROP TABLE IF EXISTS `out_stu_info`;
CREATE TABLE `out_stu_info`  (
  `STU_ID` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '考生ID',
  `EXAM_NUM` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '准考证号',
  `PRIZE_INFO` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '奖惩记录',
  `OUT_CODE` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '转出编号 转出省代码加转入省代码加准考证号',
  `OUT_PROV_CODE` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '转出省编号',
  `OUT_DATE` date NULL DEFAULT NULL COMMENT '转出时间',
  `OUT_ACTOR` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '转出办理人',
  `OUT_APPROVE` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '转出审核人',
  `OUT_REASON` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '转出原因 1：工作调动；2：居住地变更',
  `OUT_EXAM_NUM` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '转出准考证号',
  `OUT_MAJOR_CODE` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '转出专业代码',
  `OUT_MAJOR_NAME` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '转出专业名称',
  `OUT_MAJOR_LEVEL_CODE` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '转出专业层次',
  `OUT_MAJOR_TYPE_CODE` int(11) NULL DEFAULT NULL COMMENT '转出专业类型代码 61：专科；62：基础科段； 51：本科；52：本科段；53：独立本科段',
  `OUT_MAJOR_FIELD` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '转出专业方向',
  `OUT_APPLY_TIME` date NULL DEFAULT NULL COMMENT '申请时间',
  `OUT_APPLY_STAT` int(11) NULL DEFAULT NULL COMMENT '申请状态 0：申请状态；1：审核状态；2：审核通过； 3：审核不通过',
  PRIMARY KEY (`EXAM_NUM`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '转出考生信息' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for out_stu_grade
-- ----------------------------
DROP TABLE IF EXISTS `out_stu_grade`;
CREATE TABLE `out_stu_grade`  (
  `EXAM_NUM` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '准考证号',
  `COURSE_CODE` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '课程代码',
  `PASS_REASON_CODE` int(11) NULL DEFAULT NULL COMMENT '合格原因代码 0：统考；1：转入；2：实践课； 3：免考；4：特批；5：其他',
  `PASS_DATE` date NULL DEFAULT NULL COMMENT '合格时间',
  `EXAM_CODE` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '考次号',
  `WRITE_INFO` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '笔迹信息 存储路径,文件名为考Th的准考证+课程代码+考次好。 每一个项之间用\"_\"分隔',
  PRIMARY KEY (`EXAM_NUM`, `COURSE_CODE`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '转出学生成绩' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for is_geadu
-- ----------------------------
DROP TABLE IF EXISTS `is_geadu`;
CREATE TABLE `is_geadu`  (
  `EXAM_NUM` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '准考证号',
  `untitled` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '是否毕业 1：是；0：否',
  PRIMARY KEY (`EXAM_NUM`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '毕业/在籍考生库' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for in_stu_info
-- ----------------------------
DROP TABLE IF EXISTS `in_stu_info`;
CREATE TABLE `in_stu_info`  (
  `STU_ID` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '考生ID',
  `EXAM_NUM` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '准考证号',
  `PRIZE_INFO` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '奖惩记录',
  `IN_CODE` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '转入编号 转出省代码加转入省代码加准考证号',
  `IN_PROV_CODE` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '转入省编号',
  `IN_DATE` date NULL DEFAULT NULL COMMENT '转入时间',
  `IN_ACTOR` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '转入办理人',
  `IN_APPROVE` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '转入审核人',
  `IN_REASON` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '转入原因 1：工作调动；2：居住地变更',
  `IN_EXAM_NUM` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '转入准考证号',
  `IN_MAJOR_CODE` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '转入专业代码',
  `IN_MAJOR_NAME` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '转入专业名称',
  `IN_MAJOR_LEVEL_CODE` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '转入专业层次',
  `IN_MAJOR_TYPE_CODE` int(11) NULL DEFAULT NULL COMMENT '转入专业类型代码 61：专科；62：基础科段； 51：本科；52：本科段；53：独立本科段',
  `IN_MAJOR_FIELD` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '转入专业方向',
  PRIMARY KEY (`EXAM_NUM`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '转入考生信息' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for in_stu_grade
-- ----------------------------
DROP TABLE IF EXISTS `in_stu_grade`;
CREATE TABLE `in_stu_grade`  (
  `EXAM_NUM` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '准考证号',
  `COURSE_CODE` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '课程代码',
  `PASS_REASON_CODE` int(11) NULL DEFAULT NULL COMMENT '合格原因代码 0：统考；1：转入；2：实践课； 3：免考；4：特批；5：其他',
  `PASS_DATE` date NULL DEFAULT NULL COMMENT '合格时间',
  `EXAM_CODE` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '考次号',
  `WRITE_INFO` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '笔迹信息 存储路径,文件名为考Th的准考证+课程代码+考次好。 每一个项之间用\"_\"分隔',
  PRIMARY KEY (`EXAM_NUM`, `COURSE_CODE`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '转入学生成绩' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for gradu_info
-- ----------------------------
DROP TABLE IF EXISTS `gradu_info`;
CREATE TABLE `gradu_info`  (
  `GRADU_ROLL_ID` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '毕业生学籍ID',
  `EXAM_NUM` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '准考证号',
  `MAJOR_CODE` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '专业编码',
  `GRADU_EXAM_CODE` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '毕业考次',
  `EXAM_SCH` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '主考学校',
  `EDU_CODE` int(11) NOT NULL COMMENT '学历层次 1：本科以上；2：本科；3：大专(专科);4:中专(中技);5:高中(职高)； 6：初中及初中以下；255：未采集',
  `MAJOR_NAME` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '专业名称',
  `ROLL_DATE` date NULL DEFAULT NULL COMMENT '取得学籍日期',
  `GRADU_DATE` date NULL DEFAULT NULL COMMENT '毕业日期',
  `DIPLOMA_CODE` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '毕业证书编号',
  `CITY_CODE` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '地市州编码',
  `CONTY_CODE` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '区县编码',
  `SCH_CODE` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '学校编码',
  PRIMARY KEY (`EXAM_NUM`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '毕业生基本信息' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for gradu_grade
-- ----------------------------
DROP TABLE IF EXISTS `gradu_grade`;
CREATE TABLE `gradu_grade`  (
  `EXAM_NUM` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '准考证号',
  `TOTAL_POINT` decimal(32, 10) NULL DEFAULT NULL COMMENT '总分',
  `AVG_POINT` decimal(32, 10) NULL DEFAULT NULL COMMENT '平均分',
  PRIMARY KEY (`EXAM_NUM`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '毕业生成绩信息' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for gradu_apply
-- ----------------------------
DROP TABLE IF EXISTS `gradu_apply`;
CREATE TABLE `gradu_apply`  (
  `APPLY_ID` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '申请ID',
  `EXAM_NUM` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '准考证号',
  `STU_TYPE` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '学生类型编码',
  `GRADU_FLAG` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '毕业标志',
  `GRADU_REMARK` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '备注',
  `APPLY_COUNTY_CODE` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '申请拿毕业证区县编码',
  `APPLY_TIME` date NULL DEFAULT NULL COMMENT '申请时间',
  `APPLY_STAT` int(11) NULL DEFAULT NULL COMMENT '审核状态 0：申请状态；1：审核状态；2：审核通过；3：审核不通过',
  PRIMARY KEY (`EXAM_NUM`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '毕业生申请信息' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for grade_info
-- ----------------------------
DROP TABLE IF EXISTS `grade_info`;
CREATE TABLE `grade_info`  (
  `GRADE_ID` int(11) NOT NULL COMMENT '学生成绩ID',
  `GRADE_TYPE` int(11) NULL DEFAULT NULL COMMENT '成绩类型 0：国考；1：转入；2：实践课；3：免考；4：特批；5：省考；6：手工加入',
  `GRADE_PASS_DATE` date NULL DEFAULT NULL COMMENT '成绩合格日期',
  `COURSE_CODE` int(11) NULL DEFAULT NULL COMMENT '课程编码',
  `MAJOR_CODE` datetime(0) NULL DEFAULT NULL COMMENT '专业编码',
  `GRADE` int(11) NULL DEFAULT NULL COMMENT '成绩',
  `EXAM_NUM` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '准考证号',
  `PASS_NOTES` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '合格备注 备注成绩来源，如PETS、某高校、计算机等级考试',
  `EXAM_CODE` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '考次编码',
  `COURSE_NAME` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '课程名称',
  `PASS_CODE` int(11) NULL DEFAULT NULL COMMENT '合格原因代码',
  `PASS_DATE` date NULL DEFAULT NULL COMMENT '合格时间',
  PRIMARY KEY (`GRADE_ID`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '考籍成绩信息' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for excuse_cource
-- ----------------------------
DROP TABLE IF EXISTS `excuse_cource`;
CREATE TABLE `excuse_cource`  (
  `EXAM_NUM` int(11) NOT NULL COMMENT '准考证号',
  `EXCUSE_COURSE` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '免考课程编码',
  `EXAM_CODE` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '考次编码',
  `EXCUSE_CODE` int(11) NULL DEFAULT NULL COMMENT '免考类型编码 1：一类；2：二类；3：三类；4：四类',
  `GRADE` int(11) NULL DEFAULT NULL COMMENT '成绩',
  `CITY_CODE` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '地市州编码',
  `CONTY_CODE` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '区县编码',
  `SCH_CODE` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '学校编码',
  `EXCUSE_INFO` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '免考描述信息',
  `RESULT` int(11) NULL DEFAULT NULL COMMENT '申请结果 1：通过；0：驳回',
  `RESULT_RESULT` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '驳回理由',
  `REMARK` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`EXAM_NUM`, `EXCUSE_COURSE`, `EXAM_CODE`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '转免考课程信息' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for excuse_apply_info
-- ----------------------------
DROP TABLE IF EXISTS `excuse_apply_info`;
CREATE TABLE `excuse_apply_info`  (
  `EXAM_NUM` int(11) NOT NULL COMMENT '准考证号',
  `EXCUSE_COURSE` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '免考课程编码',
  `EXAM_CODE` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '考次编码',
  `APPLY_INFO` varchar(512) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '申请信息 申请的具体业务关系',
  `APPLY_DATE` date NULL DEFAULT NULL COMMENT '申请时间',
  PRIMARY KEY (`EXAM_NUM`, `EXCUSE_COURSE`, `EXAM_CODE`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '转免考申请信息' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for exam_modify_info
-- ----------------------------
DROP TABLE IF EXISTS `exam_modify_info`;
CREATE TABLE `exam_modify_info`  (
  `EXAM_NUM` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '准考证号',
  `EXAM_CODE` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '考次编码',
  `MODIFY_DETAIL` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '更改内容',
  `MODIFY_FLAG` int(11) NULL DEFAULT NULL COMMENT '学籍更改标志 -1：未办理；0：成功；1：失败-其他；2：失败-修改超过俩次； 3：失败-身份证号与姓名不齐；4：失败-资料不齐',
  `MODIFY_ID` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '更改ID 唯一性',
  `NOW_NAME` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '现学籍姓名 包括：姓名、性别、身份证号、拟报专业',
  `OLD_VALUE` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '原值',
  `NEW_VALUE` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '新值',
  `MODIFY_REASON` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '更改原因',
  `CITY_CODE` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '地市州编码',
  `CONTY_CODE` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '区县编码',
  `SCH_CODE` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '学校编码',
  `CITY_OPIN` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '地市州审核意见',
  `PROV_OPIN` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '省考办审核意见',
  `DEAL_DATE` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '办理时间',
  `DEAL_STAT` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '办理状态 0：正常；1：撤销',
  PRIMARY KEY (`EXAM_NUM`, `EXAM_CODE`, `MODIFY_DETAIL`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '考籍修改信息' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for diploma_info
-- ----------------------------
DROP TABLE IF EXISTS `diploma_info`;
CREATE TABLE `diploma_info`  (
  `EXAM_NUM` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '准考证号',
  `DIPLOMA_ADDR` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '毕业证领取地点',
  `MANAGE_DATE` date NOT NULL COMMENT '办理时间',
  `DIPLOMA_STAT` int(11) NOT NULL COMMENT '毕业证状态 0：待打印；1：已打印，待发放；2：已发放，待领取；3：已领 取',
  PRIMARY KEY (`EXAM_NUM`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '毕业证处理信息' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for course_replace
-- ----------------------------
DROP TABLE IF EXISTS `course_replace`;
CREATE TABLE `course_replace`  (
  `EXAM_NUM` int(11) NOT NULL COMMENT '准考证号',
  `EXAM_CODE` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '考次编码',
  `OLD_GROUP` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '原课程组合',
  `NEW_GROUP` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '顶替课程组合',
  `RESULT` int(11) NULL DEFAULT NULL COMMENT '申请结果 1：通过；0：驳回',
  `RESULT_RESULT` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '驳回理由',
  PRIMARY KEY (`EXAM_NUM`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '课程顶替信息' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for course_info
-- ----------------------------
DROP TABLE IF EXISTS `course_info`;
CREATE TABLE `course_info`  (
  `COURSE_CODE` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '课程编码',
  `CREDIT` int(11) NULL DEFAULT NULL COMMENT '学分'
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '课程信息' ROW_FORMAT = Dynamic;

SET FOREIGN_KEY_CHECKS = 1;
