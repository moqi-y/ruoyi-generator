/*
 Navicat Premium Data Transfer

 Source Server         : ruoyi-generator「dev」
 Source Server Type    : SQLite
 Source Server Version : 3035005 (3.35.5)
 Source Schema         : main

 Target Server Type    : SQLite
 Target Server Version : 3035005 (3.35.5)
 File Encoding         : 65001

 Date: 08/03/2023 11:10:07
*/

PRAGMA foreign_keys = false;

-- ----------------------------
-- Table structure for gen_table
-- ----------------------------
DROP TABLE IF EXISTS "gen_table";
CREATE TABLE "gen_table" (
  "table_id" INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
  "data_source_id" INTEGER NOT NULL,
  "table_name" VARCHAR(200) DEFAULT '',
  "table_comment" VARCHAR(500) DEFAULT '',
  "sub_table_name" VARCHAR(64) DEFAULT NULL,
  "sub_table_fk_name" VARCHAR(64) DEFAULT NULL,
  "class_name" VARCHAR(100) DEFAULT '',
  "tpl_category" VARCHAR(200) DEFAULT 'crud',
  "tpl_frontend" VARCHAR(200) DEFAULT 'vue3',
  "package_name" VARCHAR(100),
  "module_name" VARCHAR(30),
  "business_name" VARCHAR(30),
  "function_name" VARCHAR(50),
  "function_author" VARCHAR(50),
  "gen_type" CHAR(1) DEFAULT '0',
  "gen_path" VARCHAR(200) DEFAULT '/code/',
  "options" VARCHAR(1000),
  "create_by" VARCHAR(64) DEFAULT '',
  "create_time" VARCHAR(30),
  "update_by" VARCHAR(64) DEFAULT '',
  "update_time" VARCHAR(30),
  "remark" VARCHAR(500) DEFAULT 'html'
);

-- ----------------------------
-- Records of gen_table
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for gen_table_column
-- ----------------------------
DROP TABLE IF EXISTS "gen_table_column";
CREATE TABLE "gen_table_column" (
"column_id"  INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL,
"table_id"  VARCHAR(64),
"column_name"  VARCHAR(200),
"column_comment"  VARCHAR(500),
"column_type"  VARCHAR(100),
"java_type"  VARCHAR(500),
"java_field"  VARCHAR(200),
"is_pk"  CHAR(1),
"is_increment"  CHAR(1),
"is_required"  CHAR(1),
"is_insert"  CHAR(1),
"is_edit"  CHAR(1),
"is_list"  CHAR(1),
"is_query"  CHAR(1),
"query_type"  VARCHAR(200) DEFAULT 'EQ',
"html_type"  VARCHAR(200),
"dict_type"  VARCHAR(200) DEFAULT '',
"sort"  INTEGER,
"create_by"  VARCHAR(64) DEFAULT '',
"create_time"  VARCHAR(30),
"update_by"  VARCHAR(64) DEFAULT '',
"update_time"  VARCHAR(30)
);

-- ----------------------------
-- Records of gen_table_column
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for sqlite_sequence
-- ----------------------------
DROP TABLE IF EXISTS "sqlite_sequence";
CREATE TABLE sqlite_sequence(name,seq);

-- ----------------------------
-- Records of sqlite_sequence
-- ----------------------------
BEGIN;
INSERT INTO "sqlite_sequence" ("name", "seq") VALUES ('sys_dict_type', 12);
INSERT INTO "sqlite_sequence" ("name", "seq") VALUES ('sys_dict_data', 23);
INSERT INTO "sqlite_sequence" ("name", "seq") VALUES ('sys_data_source', 1);
INSERT INTO "sqlite_sequence" ("name", "seq") VALUES ('gen_table_column', 1);
INSERT INTO "sqlite_sequence" ("name", "seq") VALUES ('sys_config', 1);
INSERT INTO "sqlite_sequence" ("name", "seq") VALUES ('gen_table', 1);
COMMIT;

-- ----------------------------
-- Table structure for sys_config
-- ----------------------------
DROP TABLE IF EXISTS "sys_config";
CREATE TABLE "sys_config" (
  "config_id" INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
  "author" VARCHAR(30) DEFAULT 'administrator',
  "package_name" VARCHAR(100) DEFAULT 'com.ruoyi.project.system',
  "auto_remove_pre" CHAR(1) DEFAULT '1',
  "table_prefix" VARCHAR(10) DEFAULT 'tb_'
);

-- ----------------------------
-- Records of sys_config
-- ----------------------------
BEGIN;
INSERT INTO "sys_config" ("config_id", "author", "package_name", "auto_remove_pre", "table_prefix") VALUES (1, 'liaocj', 'com.ruoyi.business', '1', 'tb_,t_');
COMMIT;

-- ----------------------------
-- Table structure for sys_data_source
-- ----------------------------
DROP TABLE IF EXISTS "sys_data_source";
CREATE TABLE "sys_data_source" (
"id"  INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL,
"name"  VARCHAR(30),
"db_type"  VARCHAR(30),
"oracle_conn_mode"  VARCHAR(20),
"service_name_or_sid"  VARCHAR(100),
"host"  VARCHAR(20),
"port"  INTEGER,
"username"  VARCHAR(50),
"password"  VARCHAR(100),
"schema_name"  VARCHAR(100),
"status"  CHAR(1) DEFAULT '0',
"create_by"  VARCHAR(64) DEFAULT '',
"create_time"  TIMESTAMP,
"update_by"  VARCHAR(64) DEFAULT '',
"update_time"  TIMESTAMP,
"remark"  VARCHAR(500) DEFAULT null
);

-- ----------------------------
-- Records of sys_data_source
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for sys_dict_data
-- ----------------------------
DROP TABLE IF EXISTS "sys_dict_data";
CREATE TABLE "sys_dict_data" (
"dict_code"  INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL,
"dict_sort"  INTEGER DEFAULT 0,
"dict_label"  VARCHAR(100) DEFAULT '',
"dict_value"  VARCHAR(100) DEFAULT '',
"dict_type"  VARCHAR(100) DEFAULT '',
"css_class"  VARCHAR(100) DEFAULT null,
"list_class"  VARCHAR(100) DEFAULT null,
"is_default"  CHAR(1) DEFAULT 'N',
"status"  CHAR(1) DEFAULT '0',
"create_by"  VARCHAR(64) DEFAULT '',
"create_time"  TIMESTAMP,
"update_by"  VARCHAR(64) DEFAULT '',
"update_time"  TIMESTAMP,
"remark"  VARCHAR(500) DEFAULT null
);

-- ----------------------------
-- Records of sys_dict_data
-- ----------------------------
BEGIN;
INSERT INTO "sys_dict_data" ("dict_code", "dict_sort", "dict_label", "dict_value", "dict_type", "css_class", "list_class", "is_default", "status", "create_by", "create_time", "update_by", "update_time", "remark") VALUES (1, 1, '男', '0', 'sys_user_sex', '', '', 'Y', '0', 'admin', '2018-03-16 11-33-00', 'ry', '2018-03-16 11-33-00', '性别男');
INSERT INTO "sys_dict_data" ("dict_code", "dict_sort", "dict_label", "dict_value", "dict_type", "css_class", "list_class", "is_default", "status", "create_by", "create_time", "update_by", "update_time", "remark") VALUES (2, 2, '女', '1', 'sys_user_sex', '', '', 'N', '0', 'admin', '2018-03-16 11-33-00', 'ry', '2018-03-16 11-33-00', '性别女');
INSERT INTO "sys_dict_data" ("dict_code", "dict_sort", "dict_label", "dict_value", "dict_type", "css_class", "list_class", "is_default", "status", "create_by", "create_time", "update_by", "update_time", "remark") VALUES (3, 3, '未知', '2', 'sys_user_sex', '', '', 'N', '0', 'admin', '2018-03-16 11-33-00', 'ry', '2018-03-16 11-33-00', '性别未知');
INSERT INTO "sys_dict_data" ("dict_code", "dict_sort", "dict_label", "dict_value", "dict_type", "css_class", "list_class", "is_default", "status", "create_by", "create_time", "update_by", "update_time", "remark") VALUES (4, 1, '显示', '0', 'sys_show_hide', '', 'primary', 'Y', '0', 'admin', '2018-03-16 11-33-00', 'ry', '2018-03-16 11-33-00', '显示菜单');
INSERT INTO "sys_dict_data" ("dict_code", "dict_sort", "dict_label", "dict_value", "dict_type", "css_class", "list_class", "is_default", "status", "create_by", "create_time", "update_by", "update_time", "remark") VALUES (5, 2, '隐藏', '1', 'sys_show_hide', '', 'danger', 'N', '0', 'admin', '2018-03-16 11-33-00', 'ry', '2018-03-16 11-33-00', '隐藏菜单');
INSERT INTO "sys_dict_data" ("dict_code", "dict_sort", "dict_label", "dict_value", "dict_type", "css_class", "list_class", "is_default", "status", "create_by", "create_time", "update_by", "update_time", "remark") VALUES (6, 1, '正常', '0', 'sys_normal_disable', '', 'primary', 'Y', '0', 'admin', '2018-03-16 11-33-00', 'ry', '2018-03-16 11-33-00', '正常状态');
INSERT INTO "sys_dict_data" ("dict_code", "dict_sort", "dict_label", "dict_value", "dict_type", "css_class", "list_class", "is_default", "status", "create_by", "create_time", "update_by", "update_time", "remark") VALUES (7, 2, '停用', '1', 'sys_normal_disable', '', 'danger', 'N', '0', 'admin', '2018-03-16 11-33-00', 'ry', '2018-03-16 11-33-00', '停用状态');
INSERT INTO "sys_dict_data" ("dict_code", "dict_sort", "dict_label", "dict_value", "dict_type", "css_class", "list_class", "is_default", "status", "create_by", "create_time", "update_by", "update_time", "remark") VALUES (8, 1, '正常', '0', 'sys_job_status', '', 'primary', 'Y', '0', 'admin', '2018-03-16 11-33-00', 'ry', '2018-03-16 11-33-00', '正常状态');
INSERT INTO "sys_dict_data" ("dict_code", "dict_sort", "dict_label", "dict_value", "dict_type", "css_class", "list_class", "is_default", "status", "create_by", "create_time", "update_by", "update_time", "remark") VALUES (9, 2, '暂停', '1', 'sys_job_status', '', 'danger', 'N', '0', 'admin', '2018-03-16 11-33-00', 'ry', '2018-03-16 11-33-00', '停用状态');
INSERT INTO "sys_dict_data" ("dict_code", "dict_sort", "dict_label", "dict_value", "dict_type", "css_class", "list_class", "is_default", "status", "create_by", "create_time", "update_by", "update_time", "remark") VALUES (10, 1, '默认', 'DEFAULT', 'sys_job_group', '', '', 'Y', '0', 'admin', '2018-03-16 11-33-00', 'ry', '2018-03-16 11-33-00', '默认分组');
INSERT INTO "sys_dict_data" ("dict_code", "dict_sort", "dict_label", "dict_value", "dict_type", "css_class", "list_class", "is_default", "status", "create_by", "create_time", "update_by", "update_time", "remark") VALUES (11, 2, '系统', 'SYSTEM', 'sys_job_group', '', '', 'N', '0', 'admin', '2018-03-16 11-33-00', 'ry', '2018-03-16 11-33-00', '系统分组');
INSERT INTO "sys_dict_data" ("dict_code", "dict_sort", "dict_label", "dict_value", "dict_type", "css_class", "list_class", "is_default", "status", "create_by", "create_time", "update_by", "update_time", "remark") VALUES (12, 1, '是', 'Y', 'sys_yes_no', '', 'primary', 'Y', '0', 'admin', '2018-03-16 11-33-00', 'ry', '2018-03-16 11-33-00', '系统默认是');
INSERT INTO "sys_dict_data" ("dict_code", "dict_sort", "dict_label", "dict_value", "dict_type", "css_class", "list_class", "is_default", "status", "create_by", "create_time", "update_by", "update_time", "remark") VALUES (13, 2, '否', 'N', 'sys_yes_no', '', 'danger', 'N', '0', 'admin', '2018-03-16 11-33-00', 'ry', '2018-03-16 11-33-00', '系统默认否');
INSERT INTO "sys_dict_data" ("dict_code", "dict_sort", "dict_label", "dict_value", "dict_type", "css_class", "list_class", "is_default", "status", "create_by", "create_time", "update_by", "update_time", "remark") VALUES (14, 1, '成功', '0', 'sys_common_status', '', 'primary', 'N', '0', 'admin', '2018-03-16 11-33-00', 'ry', '2018-03-16 11-33-00', '正常状态');
INSERT INTO "sys_dict_data" ("dict_code", "dict_sort", "dict_label", "dict_value", "dict_type", "css_class", "list_class", "is_default", "status", "create_by", "create_time", "update_by", "update_time", "remark") VALUES (15, 2, '失败', '1', 'sys_common_status', '', 'danger', 'N', '0', 'admin', '2018-03-16 11-33-00', 'ry', '2018-03-16 11-33-00', '停用状态');
INSERT INTO "sys_dict_data" ("dict_code", "dict_sort", "dict_label", "dict_value", "dict_type", "css_class", "list_class", "is_default", "status", "create_by", "create_time", "update_by", "update_time", "remark") VALUES (16, 1, 'MySQL', 'mysql', 'sys_db_type', '', 'default', 'Y', '0', '', '2020-07-30 07:11:42', '', '2020-10-15 17:11:54', 'MySQL');
INSERT INTO "sys_dict_data" ("dict_code", "dict_sort", "dict_label", "dict_value", "dict_type", "css_class", "list_class", "is_default", "status", "create_by", "create_time", "update_by", "update_time", "remark") VALUES (17, 2, 'Oracle', 'oracle', 'sys_db_type', '', 'default', 'N', '0', '', '2020-07-30 07:11:53', '', '2020-10-15 17:12:00', 'Oracle');
INSERT INTO "sys_dict_data" ("dict_code", "dict_sort", "dict_label", "dict_value", "dict_type", "css_class", "list_class", "is_default", "status", "create_by", "create_time", "update_by", "update_time", "remark") VALUES (18, 1, '服务名', 'service_name', 'sys_oracle_mode', NULL, 'default', 'Y', '0', '', '2020-07-30 07:12:25', '', NULL, '服务名');
INSERT INTO "sys_dict_data" ("dict_code", "dict_sort", "dict_label", "dict_value", "dict_type", "css_class", "list_class", "is_default", "status", "create_by", "create_time", "update_by", "update_time", "remark") VALUES (19, 2, 'SID', 'sid', 'sys_oracle_mode', NULL, 'default', 'N', '0', '', '2020-07-30 07:12:38', '', NULL, 'SID');
INSERT INTO "sys_dict_data" ("dict_code", "dict_sort", "dict_label", "dict_value", "dict_type", "css_class", "list_class", "is_default", "status", "create_by", "create_time", "update_by", "update_time", "remark") VALUES (20, 2, 'SQLite', 'sqlite', 'sys_db_type', '', 'default', 'N', '1', '', '2020-10-15 14:25:10', '', '2020-10-15 17:12:06', 'SQLite');
INSERT INTO "sys_dict_data" ("dict_code", "dict_sort", "dict_label", "dict_value", "dict_type", "css_class", "list_class", "is_default", "status", "create_by", "create_time", "update_by", "update_time", "remark") VALUES (21, 4, 'PostgreSQL', 'pgsql', 'sys_db_type', '', 'default', 'N', '0', '', '2020-10-15 14:26:27', '', '2020-10-15 17:12:23', 'PostgreSQL');
INSERT INTO "sys_dict_data" ("dict_code", "dict_sort", "dict_label", "dict_value", "dict_type", "css_class", "list_class", "is_default", "status", "create_by", "create_time", "update_by", "update_time", "remark") VALUES (22, 5, 'DB2', 'db2', 'sys_db_type', '', 'default', 'N', '1', '', '2020-10-15 14:26:52', '', '2020-10-15 17:12:28', 'DB2');
INSERT INTO "sys_dict_data" ("dict_code", "dict_sort", "dict_label", "dict_value", "dict_type", "css_class", "list_class", "is_default", "status", "create_by", "create_time", "update_by", "update_time", "remark") VALUES (23, 6, 'SQL Server', 'sqlserver', 'sys_db_type', '', 'default', 'N', '0', '', '2020-10-15 14:27:10', '', '2020-10-15 17:12:36', 'SQL Server');
COMMIT;

-- ----------------------------
-- Table structure for sys_dict_type
-- ----------------------------
DROP TABLE IF EXISTS "sys_dict_type";
CREATE TABLE "sys_dict_type" (
"dict_id"  INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL,
"dict_name"  VARCHAR(100),
"dict_type"  VARCHAR(100),
"status"  CHAR(1),
"create_by"  VARCHAR(64),
"create_time"  TIMESTAMP,
"update_by"  VARCHAR(64),
"update_time"  TIMESTAMP,
"remark"  VARCHAR(500)
);

-- ----------------------------
-- Records of sys_dict_type
-- ----------------------------
BEGIN;
INSERT INTO "sys_dict_type" ("dict_id", "dict_name", "dict_type", "status", "create_by", "create_time", "update_by", "update_time", "remark") VALUES (1, '用户性别', 'sys_user_sex', '0', 'admin', '2018-03-16 11-33-00', 'admin', '2018-03-16 11-33-00', '用户性别列表');
INSERT INTO "sys_dict_type" ("dict_id", "dict_name", "dict_type", "status", "create_by", "create_time", "update_by", "update_time", "remark") VALUES (2, '菜单状态', 'sys_show_hide', '0', 'admin', '2018-03-16 11-33-00', 'admin', '2018-03-16 11-33-00', '菜单状态列表');
INSERT INTO "sys_dict_type" ("dict_id", "dict_name", "dict_type", "status", "create_by", "create_time", "update_by", "update_time", "remark") VALUES (3, '系统开关', 'sys_normal_disable', '0', 'admin', '2018-03-16 11-33-00', 'admin', '2018-03-16 11-33-00', '系统开关列表');
INSERT INTO "sys_dict_type" ("dict_id", "dict_name", "dict_type", "status", "create_by", "create_time", "update_by", "update_time", "remark") VALUES (4, '任务状态', 'sys_job_status', '0', 'admin', '2018-03-16 11-33-00', 'admin', '2018-03-16 11-33-00', '任务状态列表');
INSERT INTO "sys_dict_type" ("dict_id", "dict_name", "dict_type", "status", "create_by", "create_time", "update_by", "update_time", "remark") VALUES (5, '任务分组', 'sys_job_group', '0', 'admin', '2018-03-16 11-33-00', 'admin', '2018-03-16 11-33-00', '任务分组列表');
INSERT INTO "sys_dict_type" ("dict_id", "dict_name", "dict_type", "status", "create_by", "create_time", "update_by", "update_time", "remark") VALUES (6, '系统是否', 'sys_yes_no', '0', 'admin', '2018-03-16 11-33-00', 'admin', '2018-03-16 11-33-00', '系统是否列表');
INSERT INTO "sys_dict_type" ("dict_id", "dict_name", "dict_type", "status", "create_by", "create_time", "update_by", "update_time", "remark") VALUES (7, '通知类型', 'sys_notice_type', '0', 'admin', '2018-03-16 11-33-00', 'admin', '2018-03-16 11-33-00', '通知类型列表');
INSERT INTO "sys_dict_type" ("dict_id", "dict_name", "dict_type", "status", "create_by", "create_time", "update_by", "update_time", "remark") VALUES (8, '通知状态', 'sys_notice_status', '0', 'admin', '2018-03-16 11-33-00', 'admin', '2018-03-16 11-33-00', '通知状态列表');
INSERT INTO "sys_dict_type" ("dict_id", "dict_name", "dict_type", "status", "create_by", "create_time", "update_by", "update_time", "remark") VALUES (9, '操作类型', 'sys_oper_type', '0', 'admin', '2018-03-16 11-33-00', 'admin', '2018-03-16 11-33-00', '操作类型列表');
INSERT INTO "sys_dict_type" ("dict_id", "dict_name", "dict_type", "status", "create_by", "create_time", "update_by", "update_time", "remark") VALUES (10, '系统状态', 'sys_common_status', '0', 'admin', '2018-03-16 11-33-00', 'admin', '2018-03-16 11-33-00', '登录状态列表');
INSERT INTO "sys_dict_type" ("dict_id", "dict_name", "dict_type", "status", "create_by", "create_time", "update_by", "update_time", "remark") VALUES (11, '数据库类型', 'sys_db_type', '0', NULL, '2020-07-30 07:11:28', NULL, '2020-10-15 14:23:40', '数据库类型列表');
INSERT INTO "sys_dict_type" ("dict_id", "dict_name", "dict_type", "status", "create_by", "create_time", "update_by", "update_time", "remark") VALUES (12, 'Oracle连接方式', 'sys_oracle_mode', '0', NULL, '2020-07-30 07:12:05', NULL, NULL, 'Oracle连接方式');
COMMIT;

-- ----------------------------
-- Auto increment value for gen_table
-- ----------------------------
UPDATE "main"."sqlite_sequence" SET seq = 1 WHERE name = 'gen_table';

-- ----------------------------
-- Auto increment value for gen_table_column
-- ----------------------------
UPDATE "main"."sqlite_sequence" SET seq = 1 WHERE name = 'gen_table_column';

-- ----------------------------
-- Auto increment value for sys_config
-- ----------------------------
UPDATE "main"."sqlite_sequence" SET seq = 1 WHERE name = 'sys_config';

-- ----------------------------
-- Auto increment value for sys_data_source
-- ----------------------------
UPDATE "main"."sqlite_sequence" SET seq = 1 WHERE name = 'sys_data_source';

-- ----------------------------
-- Auto increment value for sys_dict_data
-- ----------------------------
UPDATE "main"."sqlite_sequence" SET seq = 23 WHERE name = 'sys_dict_data';

-- ----------------------------
-- Auto increment value for sys_dict_type
-- ----------------------------
UPDATE "main"."sqlite_sequence" SET seq = 12 WHERE name = 'sys_dict_type';

-- ----------------------------
-- Indexes structure for table sys_dict_type
-- ----------------------------
CREATE UNIQUE INDEX "main"."dict_type"
ON "sys_dict_type" (
  "dict_type" ASC
);

PRAGMA foreign_keys = true;
