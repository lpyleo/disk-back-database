/*
 Navicat Premium Data Transfer

 Source Server         : file
 Source Server Type    : MySQL
 Source Server Version : 80030 (8.0.30)
 Source Host           : localhost:3306
 Source Schema         : file

 Target Server Type    : MySQL
 Target Server Version : 80030 (8.0.30)
 File Encoding         : 65001

 Date: 28/05/2023 11:50:30
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for Administrator
-- ----------------------------
DROP TABLE IF EXISTS `Administrator`;
CREATE TABLE `Administrator` (
  `adminId` bigint NOT NULL AUTO_INCREMENT COMMENT '管理员id',
  `adminName` varchar(30) DEFAULT NULL COMMENT '用户名',
  `avatar` varchar(100) DEFAULT NULL COMMENT '头像',
  `password` varchar(35) DEFAULT NULL COMMENT '密码',
  `registerTime` varchar(30) DEFAULT NULL COMMENT '注册时间',
  `salt` varchar(20) DEFAULT NULL COMMENT '盐值',
  `telephone` varchar(15) DEFAULT NULL COMMENT '手机号码',
  PRIMARY KEY (`adminId`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of Administrator
-- ----------------------------
BEGIN;
INSERT INTO `Administrator` (`adminId`, `adminName`, `avatar`, `password`, `registerTime`, `salt`, `telephone`) VALUES (1, '杨勇', 'https://xsgames.co/randomusers/assets/avatars/pixel/11.jpg', '05f538663ac9306762abb6dbecd0cfce', '2023-05-07 23:54:06', 'b98f01b47a4343043', '10011110000');
COMMIT;

-- ----------------------------
-- Table structure for Company
-- ----------------------------
DROP TABLE IF EXISTS `Company`;
CREATE TABLE `Company` (
  `companyId` bigint NOT NULL AUTO_INCREMENT COMMENT '企业id',
  `companyDetail` longtext COMMENT '企业具体信息',
  `companyName` varchar(100) DEFAULT NULL COMMENT '企业名',
  PRIMARY KEY (`companyId`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of Company
-- ----------------------------
BEGIN;
INSERT INTO `Company` (`companyId`, `companyDetail`, `companyName`) VALUES (1, '寰宇有限公司是一家专注于互联网业务的公司，致力于为全球用户提供最佳的在线体验。我们拥有一支充满激情和创造力的团队，他们具有丰富的行业经验和先进的技术能力，为公司的快速发展提供了强有力的支持。\r\n寰宇有限公司注重用户体验，不断进行技术和服务升级。我们开发了多项互联网创新产品，如移动应用、云存储、人工智能客户服务等，旨在帮助用户提高工作效率，减轻生活负担。此外，我们还为企业提供定制化的互联网解决方案，帮助他们实现数字化转型。\r\n寰宇有限公司始终秉承“诚信、创新、共赢”的价值观，与合作伙伴共同成长，共创美好未来。我们期待与您携手共进，共同开创互联网新时代！', '寰宇有限公司');
COMMIT;

-- ----------------------------
-- Table structure for Department
-- ----------------------------
DROP TABLE IF EXISTS `Department`;
CREATE TABLE `Department` (
  `deptId` bigint NOT NULL AUTO_INCREMENT COMMENT '部门ID',
  `delFlag` varchar(2) DEFAULT NULL COMMENT '删除标志 0-存在, 2-删除',
  `deptName` varchar(30) DEFAULT NULL COMMENT '部门名称',
  `deptRank` int DEFAULT NULL COMMENT '部门级别',
  `email` varchar(35) DEFAULT NULL COMMENT '邮箱',
  `parentId` bigint DEFAULT NULL COMMENT '父级部门ID',
  `phone` varchar(20) DEFAULT NULL COMMENT '联系电话',
  PRIMARY KEY (`deptId`)
) ENGINE=InnoDB AUTO_INCREMENT=42 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of Department
-- ----------------------------
BEGIN;
INSERT INTO `Department` (`deptId`, `delFlag`, `deptName`, `deptRank`, `email`, `parentId`, `phone`) VALUES (1, '0', '总公司', 1, '1@qq.com', 0, '11111111111');
INSERT INTO `Department` (`deptId`, `delFlag`, `deptName`, `deptRank`, `email`, `parentId`, `phone`) VALUES (2, '0', '杭州分公司', 2, '2@qq.com', 1, '12222222222');
INSERT INTO `Department` (`deptId`, `delFlag`, `deptName`, `deptRank`, `email`, `parentId`, `phone`) VALUES (3, '0', '北京分公司', 2, '3@11.com', 1, '13333333333');
INSERT INTO `Department` (`deptId`, `delFlag`, `deptName`, `deptRank`, `email`, `parentId`, `phone`) VALUES (4, '0', '上海分公司', 2, '4@11.com', 1, '14444444444');
INSERT INTO `Department` (`deptId`, `delFlag`, `deptName`, `deptRank`, `email`, `parentId`, `phone`) VALUES (5, '0', '深圳分公司', 2, '5@11.com', 1, '15555555555');
INSERT INTO `Department` (`deptId`, `delFlag`, `deptName`, `deptRank`, `email`, `parentId`, `phone`) VALUES (6, '0', '广州分公司', 2, '6@11.com', 1, '16666666666');
INSERT INTO `Department` (`deptId`, `delFlag`, `deptName`, `deptRank`, `email`, `parentId`, `phone`) VALUES (7, '0', '研发部', 3, '7@11.com', 2, '17777777777');
INSERT INTO `Department` (`deptId`, `delFlag`, `deptName`, `deptRank`, `email`, `parentId`, `phone`) VALUES (8, '0', '公关部', 3, '8@11.com', 2, '18888888888');
INSERT INTO `Department` (`deptId`, `delFlag`, `deptName`, `deptRank`, `email`, `parentId`, `phone`) VALUES (9, '0', '法务部', 3, '9@11.com', 2, '19999999999');
INSERT INTO `Department` (`deptId`, `delFlag`, `deptName`, `deptRank`, `email`, `parentId`, `phone`) VALUES (10, '0', '市场部', 3, '10@qq.com', 2, '10000000000');
INSERT INTO `Department` (`deptId`, `delFlag`, `deptName`, `deptRank`, `email`, `parentId`, `phone`) VALUES (11, '0', '财务部', 3, '11@qq.com', 2, '10011110000');
INSERT INTO `Department` (`deptId`, `delFlag`, `deptName`, `deptRank`, `email`, `parentId`, `phone`) VALUES (12, '0', '研发部', 3, '7@111.com', 3, '17777777771');
INSERT INTO `Department` (`deptId`, `delFlag`, `deptName`, `deptRank`, `email`, `parentId`, `phone`) VALUES (13, '0', '公关部', 3, '8@111.com', 3, '18888888882');
INSERT INTO `Department` (`deptId`, `delFlag`, `deptName`, `deptRank`, `email`, `parentId`, `phone`) VALUES (14, '0', '法务部', 3, '9@111.com', 3, '19999999993');
INSERT INTO `Department` (`deptId`, `delFlag`, `deptName`, `deptRank`, `email`, `parentId`, `phone`) VALUES (15, '0', '市场部', 3, '10@qq1.com', 3, '10000000004');
INSERT INTO `Department` (`deptId`, `delFlag`, `deptName`, `deptRank`, `email`, `parentId`, `phone`) VALUES (16, '0', '财务部', 3, '11@qq1.com', 3, '10011110005');
INSERT INTO `Department` (`deptId`, `delFlag`, `deptName`, `deptRank`, `email`, `parentId`, `phone`) VALUES (17, '0', '研发部', 3, '17@111.com', 4, '17777777712');
INSERT INTO `Department` (`deptId`, `delFlag`, `deptName`, `deptRank`, `email`, `parentId`, `phone`) VALUES (18, '0', '公关部', 3, '83@111.com', 4, '18888888812');
INSERT INTO `Department` (`deptId`, `delFlag`, `deptName`, `deptRank`, `email`, `parentId`, `phone`) VALUES (19, '0', '法务部', 3, '94@111.com', 4, '19999999912');
INSERT INTO `Department` (`deptId`, `delFlag`, `deptName`, `deptRank`, `email`, `parentId`, `phone`) VALUES (20, '0', '市场部', 3, '1520@qq1.com', 4, '10000000012');
INSERT INTO `Department` (`deptId`, `delFlag`, `deptName`, `deptRank`, `email`, `parentId`, `phone`) VALUES (21, '0', '财务部', 3, '12431@qq1.com', 4, '10011110012');
INSERT INTO `Department` (`deptId`, `delFlag`, `deptName`, `deptRank`, `email`, `parentId`, `phone`) VALUES (22, '0', '研发部', 3, '1734@111.com', 5, '17774777712');
INSERT INTO `Department` (`deptId`, `delFlag`, `deptName`, `deptRank`, `email`, `parentId`, `phone`) VALUES (23, '0', '公关部', 3, '83234@111.com', 5, '18888388812');
INSERT INTO `Department` (`deptId`, `delFlag`, `deptName`, `deptRank`, `email`, `parentId`, `phone`) VALUES (24, '0', '法务部', 3, '94234@111.com', 5, '19999599912');
INSERT INTO `Department` (`deptId`, `delFlag`, `deptName`, `deptRank`, `email`, `parentId`, `phone`) VALUES (25, '0', '市场部', 3, '1534220@qq1.com', 5, '10000200012');
INSERT INTO `Department` (`deptId`, `delFlag`, `deptName`, `deptRank`, `email`, `parentId`, `phone`) VALUES (26, '0', '财务部', 3, '12324431@qq1.com', 5, '10011510012');
INSERT INTO `Department` (`deptId`, `delFlag`, `deptName`, `deptRank`, `email`, `parentId`, `phone`) VALUES (27, '0', '研发部', 3, '173434@111.com', 6, '17774776712');
INSERT INTO `Department` (`deptId`, `delFlag`, `deptName`, `deptRank`, `email`, `parentId`, `phone`) VALUES (28, '0', '公关部', 3, '83423234@111.com', 6, '18888368812');
INSERT INTO `Department` (`deptId`, `delFlag`, `deptName`, `deptRank`, `email`, `parentId`, `phone`) VALUES (29, '0', '法务部', 3, '94423234@111.com', 6, '19999596912');
INSERT INTO `Department` (`deptId`, `delFlag`, `deptName`, `deptRank`, `email`, `parentId`, `phone`) VALUES (30, '0', '市场部', 3, '1534324220@qq1.com', 6, '10000206012');
INSERT INTO `Department` (`deptId`, `delFlag`, `deptName`, `deptRank`, `email`, `parentId`, `phone`) VALUES (31, '0', '财务部', 3, '12342324431@qq1.com', 6, '10011516012');
INSERT INTO `Department` (`deptId`, `delFlag`, `deptName`, `deptRank`, `email`, `parentId`, `phone`) VALUES (32, '0', '成都分公司', 2, '4646@qq.com', 1, '12233334444');
INSERT INTO `Department` (`deptId`, `delFlag`, `deptName`, `deptRank`, `email`, `parentId`, `phone`) VALUES (33, '0', '青海分公司', 2, 'dahd@qq.com', 1, '10099998888');
INSERT INTO `Department` (`deptId`, `delFlag`, `deptName`, `deptRank`, `email`, `parentId`, `phone`) VALUES (34, '0', '研发部', 3, 'dwed@qq.com', 32, '12255557777');
INSERT INTO `Department` (`deptId`, `delFlag`, `deptName`, `deptRank`, `email`, `parentId`, `phone`) VALUES (35, '0', '研发部', 3, '133gjg@qq.com', 33, '15687923456');
INSERT INTO `Department` (`deptId`, `delFlag`, `deptName`, `deptRank`, `email`, `parentId`, `phone`) VALUES (36, '0', '市场部', 3, 'rwe@qq.com', 33, '16729462987');
INSERT INTO `Department` (`deptId`, `delFlag`, `deptName`, `deptRank`, `email`, `parentId`, `phone`) VALUES (37, '0', '市场部', 3, '1gjg@qq.com', 32, '19067432678');
INSERT INTO `Department` (`deptId`, `delFlag`, `deptName`, `deptRank`, `email`, `parentId`, `phone`) VALUES (38, '0', '公关部', 3, '2@qq.com', 32, '10023467898');
INSERT INTO `Department` (`deptId`, `delFlag`, `deptName`, `deptRank`, `email`, `parentId`, `phone`) VALUES (39, '0', '公关部', 3, '4646@qq.com', 33, '12378657777');
INSERT INTO `Department` (`deptId`, `delFlag`, `deptName`, `deptRank`, `email`, `parentId`, `phone`) VALUES (40, '0', '法务部', 3, '464644@qq.com', 33, '19867888888');
INSERT INTO `Department` (`deptId`, `delFlag`, `deptName`, `deptRank`, `email`, `parentId`, `phone`) VALUES (41, '0', '法务部', 3, 'gdwjdgs@qq.com', 32, '17790908989');
COMMIT;

-- ----------------------------
-- Table structure for DepartmentFile
-- ----------------------------
DROP TABLE IF EXISTS `DepartmentFile`;
CREATE TABLE `DepartmentFile` (
  `deptFileId` bigint NOT NULL AUTO_INCREMENT COMMENT '部门文件id',
  `deleteBatchNum` varchar(50) DEFAULT NULL COMMENT '删除批次号',
  `deleteFlag` int DEFAULT NULL COMMENT '删除标志 0-未删除 1-已删除',
  `deleteTime` varchar(25) DEFAULT NULL COMMENT '删除时间',
  `deptId` bigint DEFAULT NULL COMMENT '部门id',
  `extendName` varchar(100) DEFAULT NULL COMMENT '扩展名',
  `fileId` bigint DEFAULT NULL COMMENT '文件id',
  `fileName` varchar(100) DEFAULT NULL COMMENT '文件名',
  `filePath` varchar(500) DEFAULT NULL COMMENT '文件路径',
  `isDir` int DEFAULT NULL COMMENT '是否是目录 0-否, 1-是',
  `uploadTime` varchar(25) DEFAULT NULL COMMENT '上传时间',
  `uploadUserId` bigint DEFAULT NULL COMMENT '上传人id',
  `downloads` bigint DEFAULT '0' COMMENT '文件下载量',
  PRIMARY KEY (`deptFileId`)
) ENGINE=InnoDB AUTO_INCREMENT=100 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of DepartmentFile
-- ----------------------------
BEGIN;
INSERT INTO `DepartmentFile` (`deptFileId`, `deleteBatchNum`, `deleteFlag`, `deleteTime`, `deptId`, `extendName`, `fileId`, `fileName`, `filePath`, `isDir`, `uploadTime`, `uploadUserId`, `downloads`) VALUES (1, '63b2dd14-7982-4f36-a225-46d0311c1714', 2, '2023-05-17 02:49:25', 7, NULL, NULL, '1', '/', 1, '2023-05-05 05:48:05', NULL, 3);
INSERT INTO `DepartmentFile` (`deptFileId`, `deleteBatchNum`, `deleteFlag`, `deleteTime`, `deptId`, `extendName`, `fileId`, `fileName`, `filePath`, `isDir`, `uploadTime`, `uploadUserId`, `downloads`) VALUES (2, 'a94f6582-6830-4fa6-a70f-c3a30a42ce89', 2, '2023-05-19 14:14:26', 7, 'pdf', 1, ' web前端开发', '/', 0, '2023-05-05 05:48:10', NULL, 5);
INSERT INTO `DepartmentFile` (`deptFileId`, `deleteBatchNum`, `deleteFlag`, `deleteTime`, `deptId`, `extendName`, `fileId`, `fileName`, `filePath`, `isDir`, `uploadTime`, `uploadUserId`, `downloads`) VALUES (3, '05b95776-42fc-4a07-913c-1416a52fe268', 0, '2023-05-05 06:44:31', 7, NULL, NULL, '网盘项目开发资料', '/', 1, '2023-05-19 14:13:29', NULL, 2);
INSERT INTO `DepartmentFile` (`deptFileId`, `deleteBatchNum`, `deleteFlag`, `deleteTime`, `deptId`, `extendName`, `fileId`, `fileName`, `filePath`, `isDir`, `uploadTime`, `uploadUserId`, `downloads`) VALUES (4, 'ec577476-149e-486b-a5d3-1cf699351418', 2, '2023-05-05 06:44:44', 7, 'txt', 3, '4.20号订阅链接（里面有含小火箭-v2-cl）阿伟科技分享', '/', 0, '2023-05-05 05:49:31', NULL, 1);
INSERT INTO `DepartmentFile` (`deptFileId`, `deleteBatchNum`, `deleteFlag`, `deleteTime`, `deptId`, `extendName`, `fileId`, `fileName`, `filePath`, `isDir`, `uploadTime`, `uploadUserId`, `downloads`) VALUES (5, '416ba7ee-cf41-4a01-9a34-76c168e4e300', 0, '2023-05-05 06:44:34', 7, NULL, NULL, '基站项目开发资料', '/', 1, '2023-05-19 14:14:17', NULL, 4);
INSERT INTO `DepartmentFile` (`deptFileId`, `deleteBatchNum`, `deleteFlag`, `deleteTime`, `deptId`, `extendName`, `fileId`, `fileName`, `filePath`, `isDir`, `uploadTime`, `uploadUserId`, `downloads`) VALUES (6, 'efa69501-e02e-43ec-b0ac-efb32f7a42dc', 2, '2023-05-05 06:39:32', 7, NULL, NULL, '167', '/', 1, '2023-05-05 06:25:29', NULL, 8);
INSERT INTO `DepartmentFile` (`deptFileId`, `deleteBatchNum`, `deleteFlag`, `deleteTime`, `deptId`, `extendName`, `fileId`, `fileName`, `filePath`, `isDir`, `uploadTime`, `uploadUserId`, `downloads`) VALUES (7, 'aef114e2-28cb-4ffc-91b5-6cbe614d01f2', 2, '2023-05-05 06:35:49', 7, NULL, NULL, '78', '/', 1, '2023-05-05 06:35:40', NULL, 9);
INSERT INTO `DepartmentFile` (`deptFileId`, `deleteBatchNum`, `deleteFlag`, `deleteTime`, `deptId`, `extendName`, `fileId`, `fileName`, `filePath`, `isDir`, `uploadTime`, `uploadUserId`, `downloads`) VALUES (8, 'e5117b0e-91a9-48e3-9378-35a4f8d35984', 2, '2023-05-05 06:39:32', 7, NULL, NULL, '808', '/', 1, '2023-05-05 06:35:46', NULL, 5);
INSERT INTO `DepartmentFile` (`deptFileId`, `deleteBatchNum`, `deleteFlag`, `deleteTime`, `deptId`, `extendName`, `fileId`, `fileName`, `filePath`, `isDir`, `uploadTime`, `uploadUserId`, `downloads`) VALUES (9, 'ea26249c-f6cb-43cf-80fa-8c0b94afd215', 1, '2023-05-05 06:44:13', 7, 'pdf', 1, ' web前端开发', '/', 0, '2023-05-05 06:44:01', NULL, 2);
INSERT INTO `DepartmentFile` (`deptFileId`, `deleteBatchNum`, `deleteFlag`, `deleteTime`, `deptId`, `extendName`, `fileId`, `fileName`, `filePath`, `isDir`, `uploadTime`, `uploadUserId`, `downloads`) VALUES (10, '4ba2fa37-2d9b-411d-af60-007eb93df16b', 2, '2023-05-05 06:44:13', 7, 'txt', 3, '4.20号订阅链接（里面有含小火箭-v2-cl）阿伟科技分享', '/', 0, '2023-05-05 06:44:01', NULL, 7);
INSERT INTO `DepartmentFile` (`deptFileId`, `deleteBatchNum`, `deleteFlag`, `deleteTime`, `deptId`, `extendName`, `fileId`, `fileName`, `filePath`, `isDir`, `uploadTime`, `uploadUserId`, `downloads`) VALUES (11, '67653fc2-c505-49ce-a1db-2903dae6f44d', 2, '2023-05-05 06:44:13', 7, 'txt', 2, '5.1号订阅链接（里面有含小火箭-v2-cl）阿伟科技分享', '/', 0, '2023-05-05 06:44:01', NULL, 9);
INSERT INTO `DepartmentFile` (`deptFileId`, `deleteBatchNum`, `deleteFlag`, `deleteTime`, `deptId`, `extendName`, `fileId`, `fileName`, `filePath`, `isDir`, `uploadTime`, `uploadUserId`, `downloads`) VALUES (12, '4b874724-81a6-4b22-a277-0d0a35c3fc46', 2, '2023-05-05 06:44:13', 7, NULL, NULL, '34443', '/', 1, '2023-05-05 06:44:06', NULL, 2);
INSERT INTO `DepartmentFile` (`deptFileId`, `deleteBatchNum`, `deleteFlag`, `deleteTime`, `deptId`, `extendName`, `fileId`, `fileName`, `filePath`, `isDir`, `uploadTime`, `uploadUserId`, `downloads`) VALUES (13, 'cbbf24b9-bd4a-4e7a-bdac-78fc104d494b', 1, '2023-05-19 14:18:34', 7, 'jpeg', 13, 'IMG_1546', '/t/', 0, '2023-05-06 12:39:19', NULL, 10);
INSERT INTO `DepartmentFile` (`deptFileId`, `deleteBatchNum`, `deleteFlag`, `deleteTime`, `deptId`, `extendName`, `fileId`, `fileName`, `filePath`, `isDir`, `uploadTime`, `uploadUserId`, `downloads`) VALUES (14, '36f6d5bd-788d-436b-9416-8a05936f54f3', 2, '2023-05-19 14:12:52', 7, 'jpeg', 13, 'IMG_1546', '/', 0, '2023-05-06 12:39:32', NULL, 4);
INSERT INTO `DepartmentFile` (`deptFileId`, `deleteBatchNum`, `deleteFlag`, `deleteTime`, `deptId`, `extendName`, `fileId`, `fileName`, `filePath`, `isDir`, `uploadTime`, `uploadUserId`, `downloads`) VALUES (15, '7d8fda09-37b6-480f-bf36-f55eeeed1cdb', 1, '2023-05-19 14:14:30', 7, 'zip', 14, '404-main', '/', 0, '2023-05-06 12:39:47', NULL, 5);
INSERT INTO `DepartmentFile` (`deptFileId`, `deleteBatchNum`, `deleteFlag`, `deleteTime`, `deptId`, `extendName`, `fileId`, `fileName`, `filePath`, `isDir`, `uploadTime`, `uploadUserId`, `downloads`) VALUES (16, '11d6a11e-b257-4f22-9ae7-71b1c00dcff6', 1, '2023-05-19 14:14:32', 7, 'zip', 15, '404-gh-pages', '/', 0, '2023-05-06 12:40:24', NULL, 2);
INSERT INTO `DepartmentFile` (`deptFileId`, `deleteBatchNum`, `deleteFlag`, `deleteTime`, `deptId`, `extendName`, `fileId`, `fileName`, `filePath`, `isDir`, `uploadTime`, `uploadUserId`, `downloads`) VALUES (17, '7ac253ea-41f3-4d92-b79b-51e59e7ce41e', 1, '2023-05-19 14:14:34', 7, 'xlsx', 16, '项目组抽查名单', '/', 0, '2023-05-19 14:13:05', NULL, 5);
INSERT INTO `DepartmentFile` (`deptFileId`, `deleteBatchNum`, `deleteFlag`, `deleteTime`, `deptId`, `extendName`, `fileId`, `fileName`, `filePath`, `isDir`, `uploadTime`, `uploadUserId`, `downloads`) VALUES (18, 'f9088b96-3119-41f8-88c8-8b42b41e09ad', 2, '2023-05-17 02:49:29', 7, NULL, NULL, '1', '/', 1, '2023-05-17 02:40:23', NULL, 10);
INSERT INTO `DepartmentFile` (`deptFileId`, `deleteBatchNum`, `deleteFlag`, `deleteTime`, `deptId`, `extendName`, `fileId`, `fileName`, `filePath`, `isDir`, `uploadTime`, `uploadUserId`, `downloads`) VALUES (61, NULL, 0, NULL, 7, NULL, NULL, '商城项目开发资料', '/', 1, '2023-05-19 14:15:09', NULL, 20);
INSERT INTO `DepartmentFile` (`deptFileId`, `deleteBatchNum`, `deleteFlag`, `deleteTime`, `deptId`, `extendName`, `fileId`, `fileName`, `filePath`, `isDir`, `uploadTime`, `uploadUserId`, `downloads`) VALUES (62, NULL, 0, NULL, 7, NULL, NULL, '项目组人员资料', '/', 1, '2023-05-19 14:15:26', NULL, 10);
INSERT INTO `DepartmentFile` (`deptFileId`, `deleteBatchNum`, `deleteFlag`, `deleteTime`, `deptId`, `extendName`, `fileId`, `fileName`, `filePath`, `isDir`, `uploadTime`, `uploadUserId`, `downloads`) VALUES (63, NULL, 0, NULL, 7, NULL, NULL, '公司规章制度', '/', 1, '2023-05-19 14:16:00', NULL, 5);
INSERT INTO `DepartmentFile` (`deptFileId`, `deleteBatchNum`, `deleteFlag`, `deleteTime`, `deptId`, `extendName`, `fileId`, `fileName`, `filePath`, `isDir`, `uploadTime`, `uploadUserId`, `downloads`) VALUES (64, NULL, 0, NULL, 7, 'txt', 22, '人员安排', '/', 0, '2023-05-19 14:16:26', NULL, 20);
INSERT INTO `DepartmentFile` (`deptFileId`, `deleteBatchNum`, `deleteFlag`, `deleteTime`, `deptId`, `extendName`, `fileId`, `fileName`, `filePath`, `isDir`, `uploadTime`, `uploadUserId`, `downloads`) VALUES (65, NULL, 0, NULL, 7, 'zip', 15, '详细资料', '/', 0, '2023-05-19 14:16:39', NULL, 30);
INSERT INTO `DepartmentFile` (`deptFileId`, `deleteBatchNum`, `deleteFlag`, `deleteTime`, `deptId`, `extendName`, `fileId`, `fileName`, `filePath`, `isDir`, `uploadTime`, `uploadUserId`, `downloads`) VALUES (66, NULL, 0, NULL, 7, 'docx', 21, '需求文档', '/网盘项目开发资料/', 0, '2023-05-19 14:17:17', NULL, 12);
INSERT INTO `DepartmentFile` (`deptFileId`, `deleteBatchNum`, `deleteFlag`, `deleteTime`, `deptId`, `extendName`, `fileId`, `fileName`, `filePath`, `isDir`, `uploadTime`, `uploadUserId`, `downloads`) VALUES (67, NULL, 0, NULL, 7, 'docx', 21, '设计文档', '/网盘项目开发资料/', 0, '2023-05-19 14:17:25', NULL, 15);
INSERT INTO `DepartmentFile` (`deptFileId`, `deleteBatchNum`, `deleteFlag`, `deleteTime`, `deptId`, `extendName`, `fileId`, `fileName`, `filePath`, `isDir`, `uploadTime`, `uploadUserId`, `downloads`) VALUES (68, NULL, 0, NULL, 7, 'docx', 21, '接口文档', '/网盘项目开发资料/', 0, '2023-05-19 14:17:59', NULL, 10);
INSERT INTO `DepartmentFile` (`deptFileId`, `deleteBatchNum`, `deleteFlag`, `deleteTime`, `deptId`, `extendName`, `fileId`, `fileName`, `filePath`, `isDir`, `uploadTime`, `uploadUserId`, `downloads`) VALUES (69, NULL, 0, NULL, 7, 'docx', 21, '系统详细说明', '/网盘项目开发资料/', 0, '2023-05-19 14:18:11', NULL, 18);
INSERT INTO `DepartmentFile` (`deptFileId`, `deleteBatchNum`, `deleteFlag`, `deleteTime`, `deptId`, `extendName`, `fileId`, `fileName`, `filePath`, `isDir`, `uploadTime`, `uploadUserId`, `downloads`) VALUES (70, 'ac1341f3-85ef-4802-a9cb-fa177163cb0a', 1, '2023-05-19 14:22:13', 7, 'docx', 21, '系统人员安排', '/网盘项目开发资料/', 0, '2023-05-19 14:18:24', NULL, 32);
INSERT INTO `DepartmentFile` (`deptFileId`, `deleteBatchNum`, `deleteFlag`, `deleteTime`, `deptId`, `extendName`, `fileId`, `fileName`, `filePath`, `isDir`, `uploadTime`, `uploadUserId`, `downloads`) VALUES (71, NULL, 0, NULL, 7, 'docx', 21, '需求文档', '/基站项目开发资料/', 0, '2023-05-19 14:19:39', NULL, 21);
INSERT INTO `DepartmentFile` (`deptFileId`, `deleteBatchNum`, `deleteFlag`, `deleteTime`, `deptId`, `extendName`, `fileId`, `fileName`, `filePath`, `isDir`, `uploadTime`, `uploadUserId`, `downloads`) VALUES (72, NULL, 0, NULL, 7, 'docx', 21, '设计文档', '/基站项目开发资料/', 0, '2023-05-19 14:19:48', NULL, 20);
INSERT INTO `DepartmentFile` (`deptFileId`, `deleteBatchNum`, `deleteFlag`, `deleteTime`, `deptId`, `extendName`, `fileId`, `fileName`, `filePath`, `isDir`, `uploadTime`, `uploadUserId`, `downloads`) VALUES (73, NULL, 0, NULL, 7, 'docx', 21, '接口文档', '/基站项目开发资料/', 0, '2023-05-19 14:20:05', NULL, 50);
INSERT INTO `DepartmentFile` (`deptFileId`, `deleteBatchNum`, `deleteFlag`, `deleteTime`, `deptId`, `extendName`, `fileId`, `fileName`, `filePath`, `isDir`, `uploadTime`, `uploadUserId`, `downloads`) VALUES (74, NULL, 0, NULL, 7, 'docx', 21, '系统详细说明', '/基站项目开发资料/', 0, '2023-05-19 14:20:23', NULL, 33);
INSERT INTO `DepartmentFile` (`deptFileId`, `deleteBatchNum`, `deleteFlag`, `deleteTime`, `deptId`, `extendName`, `fileId`, `fileName`, `filePath`, `isDir`, `uploadTime`, `uploadUserId`, `downloads`) VALUES (75, 'b0a58755-ec97-44fa-840c-99e3518252d3', 1, '2023-05-19 14:22:37', 7, 'docx', 21, '系统人员安排', '/基站项目开发资料/', 0, '2023-05-19 14:20:31', NULL, 28);
INSERT INTO `DepartmentFile` (`deptFileId`, `deleteBatchNum`, `deleteFlag`, `deleteTime`, `deptId`, `extendName`, `fileId`, `fileName`, `filePath`, `isDir`, `uploadTime`, `uploadUserId`, `downloads`) VALUES (76, NULL, 0, NULL, 7, 'docx', 21, '需求文档', '/商城项目开发资料/', 0, '2023-05-19 14:20:59', NULL, 25);
INSERT INTO `DepartmentFile` (`deptFileId`, `deleteBatchNum`, `deleteFlag`, `deleteTime`, `deptId`, `extendName`, `fileId`, `fileName`, `filePath`, `isDir`, `uploadTime`, `uploadUserId`, `downloads`) VALUES (77, NULL, 0, NULL, 7, 'docx', 21, '设计文档', '/商城项目开发资料/', 0, '2023-05-19 14:21:05', NULL, 21);
INSERT INTO `DepartmentFile` (`deptFileId`, `deleteBatchNum`, `deleteFlag`, `deleteTime`, `deptId`, `extendName`, `fileId`, `fileName`, `filePath`, `isDir`, `uploadTime`, `uploadUserId`, `downloads`) VALUES (78, NULL, 0, NULL, 7, 'docx', 21, '接口文档', '/商城项目开发资料/', 0, '2023-05-19 14:21:12', NULL, 10);
INSERT INTO `DepartmentFile` (`deptFileId`, `deleteBatchNum`, `deleteFlag`, `deleteTime`, `deptId`, `extendName`, `fileId`, `fileName`, `filePath`, `isDir`, `uploadTime`, `uploadUserId`, `downloads`) VALUES (79, NULL, 0, NULL, 7, 'docx', 21, '系统详细说明', '/商城项目开发资料/', 0, '2023-05-19 14:21:19', NULL, 20);
INSERT INTO `DepartmentFile` (`deptFileId`, `deleteBatchNum`, `deleteFlag`, `deleteTime`, `deptId`, `extendName`, `fileId`, `fileName`, `filePath`, `isDir`, `uploadTime`, `uploadUserId`, `downloads`) VALUES (80, 'cd68f1d1-b19e-4e2e-8ddd-3acdc173a210', 1, '2023-05-19 14:23:00', 7, 'docx', 21, '系统人员安排', '/商城项目开发资料/', 0, '2023-05-19 14:21:34', NULL, 50);
INSERT INTO `DepartmentFile` (`deptFileId`, `deleteBatchNum`, `deleteFlag`, `deleteTime`, `deptId`, `extendName`, `fileId`, `fileName`, `filePath`, `isDir`, `uploadTime`, `uploadUserId`, `downloads`) VALUES (81, NULL, 0, NULL, 7, 'pdf', 30, '公司规章制度', '/公司规章制度/', 0, '2023-05-19 14:22:05', NULL, 32);
INSERT INTO `DepartmentFile` (`deptFileId`, `deleteBatchNum`, `deleteFlag`, `deleteTime`, `deptId`, `extendName`, `fileId`, `fileName`, `filePath`, `isDir`, `uploadTime`, `uploadUserId`, `downloads`) VALUES (82, NULL, 0, NULL, 7, 'xlsx', 16, '系统人员安排', '/网盘项目开发资料/', 0, '2023-05-19 14:22:28', NULL, 45);
INSERT INTO `DepartmentFile` (`deptFileId`, `deleteBatchNum`, `deleteFlag`, `deleteTime`, `deptId`, `extendName`, `fileId`, `fileName`, `filePath`, `isDir`, `uploadTime`, `uploadUserId`, `downloads`) VALUES (83, NULL, 0, NULL, 7, 'xlsx', 16, '系统人员安排', '/基站项目开发资料/', 0, '2023-05-19 14:22:48', NULL, 47);
INSERT INTO `DepartmentFile` (`deptFileId`, `deleteBatchNum`, `deleteFlag`, `deleteTime`, `deptId`, `extendName`, `fileId`, `fileName`, `filePath`, `isDir`, `uploadTime`, `uploadUserId`, `downloads`) VALUES (84, NULL, 0, NULL, 7, 'xlsx', 16, '系统人员安排', '/商城项目开发资料/', 0, '2023-05-19 14:23:12', NULL, 58);
INSERT INTO `DepartmentFile` (`deptFileId`, `deleteBatchNum`, `deleteFlag`, `deleteTime`, `deptId`, `extendName`, `fileId`, `fileName`, `filePath`, `isDir`, `uploadTime`, `uploadUserId`, `downloads`) VALUES (85, NULL, 0, NULL, 7, 'xlsx', 16, '人员资料', '/项目组人员资料/', 0, '2023-05-19 14:23:28', NULL, 21);
INSERT INTO `DepartmentFile` (`deptFileId`, `deleteBatchNum`, `deleteFlag`, `deleteTime`, `deptId`, `extendName`, `fileId`, `fileName`, `filePath`, `isDir`, `uploadTime`, `uploadUserId`, `downloads`) VALUES (86, NULL, 0, NULL, 7, 'png', 25, 'logo', '/', 0, '2023-05-19 14:23:56', NULL, 12);
INSERT INTO `DepartmentFile` (`deptFileId`, `deleteBatchNum`, `deleteFlag`, `deleteTime`, `deptId`, `extendName`, `fileId`, `fileName`, `filePath`, `isDir`, `uploadTime`, `uploadUserId`, `downloads`) VALUES (87, NULL, 0, NULL, 7, NULL, NULL, '图片资源', '/网盘项目开发资料/', 1, '2023-05-19 14:24:18', NULL, 15);
INSERT INTO `DepartmentFile` (`deptFileId`, `deleteBatchNum`, `deleteFlag`, `deleteTime`, `deptId`, `extendName`, `fileId`, `fileName`, `filePath`, `isDir`, `uploadTime`, `uploadUserId`, `downloads`) VALUES (88, NULL, 0, NULL, 7, 'gif', 26, 'ajax-loader', '/网盘项目开发资料/图片资源/', 0, '2023-05-19 14:24:41', NULL, 18);
INSERT INTO `DepartmentFile` (`deptFileId`, `deleteBatchNum`, `deleteFlag`, `deleteTime`, `deptId`, `extendName`, `fileId`, `fileName`, `filePath`, `isDir`, `uploadTime`, `uploadUserId`, `downloads`) VALUES (89, NULL, 0, NULL, 7, 'png', 23, '404-dark', '/网盘项目开发资料/图片资源/', 0, '2023-05-19 14:24:41', NULL, 33);
INSERT INTO `DepartmentFile` (`deptFileId`, `deleteBatchNum`, `deleteFlag`, `deleteTime`, `deptId`, `extendName`, `fileId`, `fileName`, `filePath`, `isDir`, `uploadTime`, `uploadUserId`, `downloads`) VALUES (90, NULL, 0, NULL, 7, 'png', 24, 'bg_btn', '/网盘项目开发资料/图片资源/', 0, '2023-05-19 14:24:41', NULL, 11);
INSERT INTO `DepartmentFile` (`deptFileId`, `deleteBatchNum`, `deleteFlag`, `deleteTime`, `deptId`, `extendName`, `fileId`, `fileName`, `filePath`, `isDir`, `uploadTime`, `uploadUserId`, `downloads`) VALUES (91, NULL, 0, NULL, 7, 'png', 25, 'btn', '/网盘项目开发资料/图片资源/', 0, '2023-05-19 14:24:41', NULL, 54);
INSERT INTO `DepartmentFile` (`deptFileId`, `deleteBatchNum`, `deleteFlag`, `deleteTime`, `deptId`, `extendName`, `fileId`, `fileName`, `filePath`, `isDir`, `uploadTime`, `uploadUserId`, `downloads`) VALUES (92, NULL, 0, NULL, 7, 'png', 27, 'favicon', '/网盘项目开发资料/图片资源/', 0, '2023-05-19 14:24:47', NULL, 23);
INSERT INTO `DepartmentFile` (`deptFileId`, `deleteBatchNum`, `deleteFlag`, `deleteTime`, `deptId`, `extendName`, `fileId`, `fileName`, `filePath`, `isDir`, `uploadTime`, `uploadUserId`, `downloads`) VALUES (93, NULL, 0, NULL, 7, 'mp3', 29, 'y860', '/', 0, '2023-05-19 14:25:10', NULL, 32);
INSERT INTO `DepartmentFile` (`deptFileId`, `deleteBatchNum`, `deleteFlag`, `deleteTime`, `deptId`, `extendName`, `fileId`, `fileName`, `filePath`, `isDir`, `uploadTime`, `uploadUserId`, `downloads`) VALUES (94, NULL, 0, NULL, 7, 'mp4', 28, '屏幕录制2023-05-19 14.08.01', '/', 0, '2023-05-19 14:25:16', NULL, 22);
INSERT INTO `DepartmentFile` (`deptFileId`, `deleteBatchNum`, `deleteFlag`, `deleteTime`, `deptId`, `extendName`, `fileId`, `fileName`, `filePath`, `isDir`, `uploadTime`, `uploadUserId`, `downloads`) VALUES (95, '5abf1399-95f6-46ed-84e6-b7f3dcd0d93b', 1, '2023-05-19 14:32:18', 7, 'docx', 31, '5.19工作报告', '/', 0, '2023-05-19 14:31:27', NULL, 11);
INSERT INTO `DepartmentFile` (`deptFileId`, `deleteBatchNum`, `deleteFlag`, `deleteTime`, `deptId`, `extendName`, `fileId`, `fileName`, `filePath`, `isDir`, `uploadTime`, `uploadUserId`, `downloads`) VALUES (96, NULL, 0, NULL, 7, 'doc', 32, '进程安排与考核表', '/', 0, '2023-05-19 14:35:28', NULL, 21);
INSERT INTO `DepartmentFile` (`deptFileId`, `deleteBatchNum`, `deleteFlag`, `deleteTime`, `deptId`, `extendName`, `fileId`, `fileName`, `filePath`, `isDir`, `uploadTime`, `uploadUserId`, `downloads`) VALUES (97, 'e4bbd3bc-0651-4f1e-8014-377c63bc3c60', 2, '2023-05-19 14:36:38', 7, 'png', 12, '网盘', '/', 0, '2023-05-19 14:35:49', NULL, 11);
INSERT INTO `DepartmentFile` (`deptFileId`, `deleteBatchNum`, `deleteFlag`, `deleteTime`, `deptId`, `extendName`, `fileId`, `fileName`, `filePath`, `isDir`, `uploadTime`, `uploadUserId`, `downloads`) VALUES (98, '1e043a06-b288-4e75-bff6-f0d8d81b2d4c', 1, '2023-05-23 12:04:55', 7, 'txt', 34, '项目资料', '/', 0, '2023-05-23 12:03:47', NULL, 0);
INSERT INTO `DepartmentFile` (`deptFileId`, `deleteBatchNum`, `deleteFlag`, `deleteTime`, `deptId`, `extendName`, `fileId`, `fileName`, `filePath`, `isDir`, `uploadTime`, `uploadUserId`, `downloads`) VALUES (99, NULL, 0, NULL, 7, 'txt', 35, '项目资料', '/', 0, '2023-05-23 12:05:05', NULL, 0);
COMMIT;

-- ----------------------------
-- Table structure for File
-- ----------------------------
DROP TABLE IF EXISTS `File`;
CREATE TABLE `File` (
  `fileId` bigint NOT NULL AUTO_INCREMENT COMMENT '文件id',
  `fileName` varchar(100) DEFAULT NULL COMMENT '文件名',
  `fileSize` bigint DEFAULT NULL COMMENT '文件大小',
  `fileUrl` varchar(500) DEFAULT NULL COMMENT '文件url',
  `identifier` varchar(32) DEFAULT NULL COMMENT 'md5唯一标识',
  `pointCount` int DEFAULT NULL COMMENT '引用数量',
  `storageType` int DEFAULT NULL COMMENT '存储类型 0-本地存储, 1-阿里云存储, 2-FastDFS存储',
  `timeStampName` varchar(500) DEFAULT NULL COMMENT '时间戳名称',
  PRIMARY KEY (`fileId`)
) ENGINE=InnoDB AUTO_INCREMENT=36 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of File
-- ----------------------------
BEGIN;
INSERT INTO `File` (`fileId`, `fileName`, `fileSize`, `fileUrl`, `identifier`, `pointCount`, `storageType`, `timeStampName`) VALUES (1, ' web前端开发', 93256, '/upload/20230504/2369a010a70d61ec353566ea65280a81.pdf', '2369a010a70d61ec353566ea65280a81', 1, 0, '2369a010a70d61ec353566ea65280a81');
INSERT INTO `File` (`fileId`, `fileName`, `fileSize`, `fileUrl`, `identifier`, `pointCount`, `storageType`, `timeStampName`) VALUES (2, '5.1号订阅链接（里面有含小火箭-v2-cl）阿伟科技分享', 665, '/upload/20230504/be39f77952f502c666ec42fb735cc390.txt', 'be39f77952f502c666ec42fb735cc390', 1, 0, 'be39f77952f502c666ec42fb735cc390');
INSERT INTO `File` (`fileId`, `fileName`, `fileSize`, `fileUrl`, `identifier`, `pointCount`, `storageType`, `timeStampName`) VALUES (3, '4.20号订阅链接（里面有含小火箭-v2-cl）阿伟科技分享', 667, '/upload/20230504/525f91ed5642f67a8d5ea2450d0615c5.txt', '525f91ed5642f67a8d5ea2450d0615c5', 1, 0, '525f91ed5642f67a8d5ea2450d0615c5');
INSERT INTO `File` (`fileId`, `fileName`, `fileSize`, `fileUrl`, `identifier`, `pointCount`, `storageType`, `timeStampName`) VALUES (4, '404', 4217, '/upload/20230504/a87a0e2d514a9dea7602e0ebcf63af04.html', 'a87a0e2d514a9dea7602e0ebcf63af04', 1, 0, 'a87a0e2d514a9dea7602e0ebcf63af04');
INSERT INTO `File` (`fileId`, `fileName`, `fileSize`, `fileUrl`, `identifier`, `pointCount`, `storageType`, `timeStampName`) VALUES (5, '50x', 1210, '/upload/20230504/727cef81a6b249132f27fdf38f066076.html', '727cef81a6b249132f27fdf38f066076', 1, 0, '727cef81a6b249132f27fdf38f066076');
INSERT INTO `File` (`fileId`, `fileName`, `fileSize`, `fileUrl`, `identifier`, `pointCount`, `storageType`, `timeStampName`) VALUES (6, '403', 1201, '/upload/20230504/d0067e130af272de062fc01ed695a56b.html', 'd0067e130af272de062fc01ed695a56b', 1, 0, 'd0067e130af272de062fc01ed695a56b');
INSERT INTO `File` (`fileId`, `fileName`, `fileSize`, `fileUrl`, `identifier`, `pointCount`, `storageType`, `timeStampName`) VALUES (7, 'index', 3195, '/upload/20230504/505d8f0fa76359354bf6b39625b3e26f.html', '505d8f0fa76359354bf6b39625b3e26f', 1, 0, '505d8f0fa76359354bf6b39625b3e26f');
INSERT INTO `File` (`fileId`, `fileName`, `fileSize`, `fileUrl`, `identifier`, `pointCount`, `storageType`, `timeStampName`) VALUES (8, 'LICENSE', 1072, '/upload/20230504/d1987ac24eeac91bfcae155e2250373e.', 'd1987ac24eeac91bfcae155e2250373e', 1, 0, 'd1987ac24eeac91bfcae155e2250373e');
INSERT INTO `File` (`fileId`, `fileName`, `fileSize`, `fileUrl`, `identifier`, `pointCount`, `storageType`, `timeStampName`) VALUES (9, 'README', 148, '/upload/20230504/95a508e14958f9ea69ab7d779d5e2ffe.md', '95a508e14958f9ea69ab7d779d5e2ffe', 1, 0, '95a508e14958f9ea69ab7d779d5e2ffe');
INSERT INTO `File` (`fileId`, `fileName`, `fileSize`, `fileUrl`, `identifier`, `pointCount`, `storageType`, `timeStampName`) VALUES (10, '404', 5206, '/upload/20230504/e5e5948c0c53481978052418e90b1397.css', 'e5e5948c0c53481978052418e90b1397', 1, 0, 'e5e5948c0c53481978052418e90b1397');
INSERT INTO `File` (`fileId`, `fileName`, `fileSize`, `fileUrl`, `identifier`, `pointCount`, `storageType`, `timeStampName`) VALUES (11, '404.min', 3180, '/upload/20230504/4723173f504018e53622dd6e51360772.css', '4723173f504018e53622dd6e51360772', 1, 0, '4723173f504018e53622dd6e51360772');
INSERT INTO `File` (`fileId`, `fileName`, `fileSize`, `fileUrl`, `identifier`, `pointCount`, `storageType`, `timeStampName`) VALUES (12, '网盘', 3397, '/upload/20230505/d5426d189967434bd382530f4d1384ef.png', 'd5426d189967434bd382530f4d1384ef', 1, 0, 'd5426d189967434bd382530f4d1384ef');
INSERT INTO `File` (`fileId`, `fileName`, `fileSize`, `fileUrl`, `identifier`, `pointCount`, `storageType`, `timeStampName`) VALUES (13, 'IMG_1546', 86454, '/upload/20230506/f99aeca2c3701457ff6e2031e58eb21b.jpeg', 'f99aeca2c3701457ff6e2031e58eb21b', 1, 0, 'f99aeca2c3701457ff6e2031e58eb21b');
INSERT INTO `File` (`fileId`, `fileName`, `fileSize`, `fileUrl`, `identifier`, `pointCount`, `storageType`, `timeStampName`) VALUES (14, '404-main', 4203933, '/upload/20230506/7ac486a917a81ff57e26f92c58384053.zip', '7ac486a917a81ff57e26f92c58384053', 1, 0, '7ac486a917a81ff57e26f92c58384053');
INSERT INTO `File` (`fileId`, `fileName`, `fileSize`, `fileUrl`, `identifier`, `pointCount`, `storageType`, `timeStampName`) VALUES (15, '404-gh-pages', 85243, '/upload/20230506/708dac8aad568574a690c7134be28469.zip', '708dac8aad568574a690c7134be28469', 1, 0, '708dac8aad568574a690c7134be28469');
INSERT INTO `File` (`fileId`, `fileName`, `fileSize`, `fileUrl`, `identifier`, `pointCount`, `storageType`, `timeStampName`) VALUES (16, '2023毕业设计抽查名单', 11203, '/upload/20230506/461e5e7477d201b6e9ef6c8801673be5.xlsx', '461e5e7477d201b6e9ef6c8801673be5', 1, 0, '461e5e7477d201b6e9ef6c8801673be5');
INSERT INTO `File` (`fileId`, `fileName`, `fileSize`, `fileUrl`, `identifier`, `pointCount`, `storageType`, `timeStampName`) VALUES (17, '实习资料', 12886499, '/upload/20230510/f0988a22a683930eee7bdac6029a677a.zip', 'f0988a22a683930eee7bdac6029a677a', 1, 0, 'f0988a22a683930eee7bdac6029a677a');
INSERT INTO `File` (`fileId`, `fileName`, `fileSize`, `fileUrl`, `identifier`, `pointCount`, `storageType`, `timeStampName`) VALUES (18, '！2023届计算机学院实习成绩+实习报告题目+实习单位汇总表', 230912, '/upload/20230510/106692fca84cd3758934d4ec30b7e70d.xls', '106692fca84cd3758934d4ec30b7e70d', 1, 0, '106692fca84cd3758934d4ec30b7e70d');
INSERT INTO `File` (`fileId`, `fileName`, `fileSize`, `fileUrl`, `identifier`, `pointCount`, `storageType`, `timeStampName`) VALUES (19, 'jdk-20_linux-aarch64_bin.tar', 189954225, '/upload/20230510/8e486e38e2da08c6930682e990d43fef.gz', '8e486e38e2da08c6930682e990d43fef', 1, 0, '8e486e38e2da08c6930682e990d43fef');
INSERT INTO `File` (`fileId`, `fileName`, `fileSize`, `fileUrl`, `identifier`, `pointCount`, `storageType`, `timeStampName`) VALUES (20, '屏幕录制2023-05-10 21.36.10', 150202305, '/upload/20230510/c17ac7900007fefa848a2880340a6776.mov', 'c17ac7900007fefa848a2880340a6776', 1, 0, 'c17ac7900007fefa848a2880340a6776');
INSERT INTO `File` (`fileId`, `fileName`, `fileSize`, `fileUrl`, `identifier`, `pointCount`, `storageType`, `timeStampName`) VALUES (21, '2本科毕业设计说明书（论文）', 18131202, '/upload/20230514/1b3f60cbba483e448cfef74b7237878f.docx', '1b3f60cbba483e448cfef74b7237878f', 1, 0, '1b3f60cbba483e448cfef74b7237878f');
INSERT INTO `File` (`fileId`, `fileName`, `fileSize`, `fileUrl`, `identifier`, `pointCount`, `storageType`, `timeStampName`) VALUES (22, '5.16号订阅链接（里面有含小火箭-v2-cl）', 679, '/upload/20230517/e5ba41d5ea0acb7f0681056b6a08d544.txt', 'e5ba41d5ea0acb7f0681056b6a08d544', 1, 0, 'e5ba41d5ea0acb7f0681056b6a08d544');
INSERT INTO `File` (`fileId`, `fileName`, `fileSize`, `fileUrl`, `identifier`, `pointCount`, `storageType`, `timeStampName`) VALUES (23, '404-dark', 14573, '/upload/20230519/225b8fb60c3e139d0b16dfc5a6c74dc3.png', '225b8fb60c3e139d0b16dfc5a6c74dc3', 1, 0, '225b8fb60c3e139d0b16dfc5a6c74dc3');
INSERT INTO `File` (`fileId`, `fileName`, `fileSize`, `fileUrl`, `identifier`, `pointCount`, `storageType`, `timeStampName`) VALUES (24, 'bg_btn', 6139, '/upload/20230519/0ebb4f5ada75c0d3d438630aef0b5f1c.png', '0ebb4f5ada75c0d3d438630aef0b5f1c', 1, 0, '0ebb4f5ada75c0d3d438630aef0b5f1c');
INSERT INTO `File` (`fileId`, `fileName`, `fileSize`, `fileUrl`, `identifier`, `pointCount`, `storageType`, `timeStampName`) VALUES (25, 'btn', 3151, '/upload/20230519/cf29ae6e8f8df822174c151bfe2940e6.png', 'cf29ae6e8f8df822174c151bfe2940e6', 1, 0, 'cf29ae6e8f8df822174c151bfe2940e6');
INSERT INTO `File` (`fileId`, `fileName`, `fileSize`, `fileUrl`, `identifier`, `pointCount`, `storageType`, `timeStampName`) VALUES (26, 'ajax-loader', 6328, '/upload/20230519/20c9d1ea2588574a878fdbad2acc573e.gif', '20c9d1ea2588574a878fdbad2acc573e', 1, 0, '20c9d1ea2588574a878fdbad2acc573e');
INSERT INTO `File` (`fileId`, `fileName`, `fileSize`, `fileUrl`, `identifier`, `pointCount`, `storageType`, `timeStampName`) VALUES (27, 'favicon', 1042, '/upload/20230519/f5a3466f70a2e81b67d07f0daf9749cd.png', 'f5a3466f70a2e81b67d07f0daf9749cd', 1, 0, 'f5a3466f70a2e81b67d07f0daf9749cd');
INSERT INTO `File` (`fileId`, `fileName`, `fileSize`, `fileUrl`, `identifier`, `pointCount`, `storageType`, `timeStampName`) VALUES (28, '屏幕录制2023-05-19 14.08.01', 4001201, '/upload/20230519/3546f4067b0f18ba610f31c23f432d62.mov', '3546f4067b0f18ba610f31c23f432d62', 1, 0, '3546f4067b0f18ba610f31c23f432d62');
INSERT INTO `File` (`fileId`, `fileName`, `fileSize`, `fileUrl`, `identifier`, `pointCount`, `storageType`, `timeStampName`) VALUES (29, 'y860', 543860, '/upload/20230519/a31a07d2fe6798494e4647a7b2de1263.mp3', 'a31a07d2fe6798494e4647a7b2de1263', 1, 0, 'a31a07d2fe6798494e4647a7b2de1263');
INSERT INTO `File` (`fileId`, `fileName`, `fileSize`, `fileUrl`, `identifier`, `pointCount`, `storageType`, `timeStampName`) VALUES (30, '全文标明引文_基于SpringBoot和Vue的企业网盘系统的设计与实现 (1)', 328512, '/upload/20230519/535ded506bc344c77a9ec05fdc8ba227.pdf', '535ded506bc344c77a9ec05fdc8ba227', 1, 0, '535ded506bc344c77a9ec05fdc8ba227');
INSERT INTO `File` (`fileId`, `fileName`, `fileSize`, `fileUrl`, `identifier`, `pointCount`, `storageType`, `timeStampName`) VALUES (31, '5.19工作报告', 0, '/upload/20230519/d41d8cd98f00b204e9800998ecf8427e.docx', 'd41d8cd98f00b204e9800998ecf8427e', 1, 0, 'd41d8cd98f00b204e9800998ecf8427e');
INSERT INTO `File` (`fileId`, `fileName`, `fileSize`, `fileUrl`, `identifier`, `pointCount`, `storageType`, `timeStampName`) VALUES (32, '进程安排与考核表', 45056, '/upload/20230519/a964de5f9f2db955e2e4c50cf2babf99.doc', 'a964de5f9f2db955e2e4c50cf2babf99', 1, 0, 'a964de5f9f2db955e2e4c50cf2babf99');
INSERT INTO `File` (`fileId`, `fileName`, `fileSize`, `fileUrl`, `identifier`, `pointCount`, `storageType`, `timeStampName`) VALUES (33, '图片1', 79354, '/upload/20230522/2fe005db5fa5cf1ebbf21ee9b772fc7d.png', '2fe005db5fa5cf1ebbf21ee9b772fc7d', 1, 0, '2fe005db5fa5cf1ebbf21ee9b772fc7d');
INSERT INTO `File` (`fileId`, `fileName`, `fileSize`, `fileUrl`, `identifier`, `pointCount`, `storageType`, `timeStampName`) VALUES (34, '项目资料', 679, '/upload/20230523/d71d455d8dc2acf35b9e0f4779c96b93.txt', 'd71d455d8dc2acf35b9e0f4779c96b93', 1, 0, 'd71d455d8dc2acf35b9e0f4779c96b93');
INSERT INTO `File` (`fileId`, `fileName`, `fileSize`, `fileUrl`, `identifier`, `pointCount`, `storageType`, `timeStampName`) VALUES (35, '项目资料', 12716, '/upload/20230523/b83c011badf2a4a2053fa145e6054814.txt', 'b83c011badf2a4a2053fa145e6054814', 1, 0, 'b83c011badf2a4a2053fa145e6054814');
COMMIT;

-- ----------------------------
-- Table structure for Notice
-- ----------------------------
DROP TABLE IF EXISTS `Notice`;
CREATE TABLE `Notice` (
  `noticeId` bigint NOT NULL AUTO_INCREMENT COMMENT '通知id',
  `deleteFlag` int DEFAULT NULL COMMENT '删除标志 0-未删除 1-已删除',
  `noticeContent` longtext COMMENT '通知内容',
  `noticeName` varchar(30) DEFAULT NULL COMMENT '通知标题',
  `sendTime` varchar(30) DEFAULT NULL COMMENT '发送时间',
  `senderId` bigint DEFAULT NULL COMMENT '发送人id',
  `updateTime` varchar(30) DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`noticeId`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of Notice
-- ----------------------------
BEGIN;
INSERT INTO `Notice` (`noticeId`, `deleteFlag`, `noticeContent`, `noticeName`, `sendTime`, `senderId`, `updateTime`) VALUES (1, 0, '2023年春节放假时间为1月21日（星期五）至1月27日（星期二），共7天。1月28日（星期三）、1月29日（星期四）上班。', '公司员工关于2023年春节放假安排的通知', '2023-05-05 06:50:47', 1, '2023-05-09 16:01:59');
INSERT INTO `Notice` (`noticeId`, `deleteFlag`, `noticeContent`, `noticeName`, `sendTime`, `senderId`, `updateTime`) VALUES (2, 0, '2023年春节放假时间为1月21日（星期五）至1月27日（星期二），共7天。1月28日（星期三）、1月29日（星期四）上班。', '公司员工关于2023年春节放假安排的通知', '2023-05-05 16:50:47', 1, '2023-05-05 16:50:47');
INSERT INTO `Notice` (`noticeId`, `deleteFlag`, `noticeContent`, `noticeName`, `sendTime`, `senderId`, `updateTime`) VALUES (3, 0, '2023年春节放假时间为1月21日（星期五）至1月27日（星期二），共7天。1月28日（星期三）、1月29日（星期四）上班。', '公司员工关于2023年春节放假安排的通知', '2023-05-05 16:50:47', 1, '2023-05-05 16:50:47');
INSERT INTO `Notice` (`noticeId`, `deleteFlag`, `noticeContent`, `noticeName`, `sendTime`, `senderId`, `updateTime`) VALUES (4, 0, '2023年春节放假时间为1月21日（星期五）至1月27日（星期二），共7天。1月28日（星期三）、1月29日（星期四）上班。', '公司员工关于2023年春节放假安排的通知', '2023-05-05 16:50:47', 1, '2023-05-05 16:50:47');
INSERT INTO `Notice` (`noticeId`, `deleteFlag`, `noticeContent`, `noticeName`, `sendTime`, `senderId`, `updateTime`) VALUES (5, 0, '2023年春节放假时间为1月21日（星期五）至1月27日（星期二），共7天。1月28日（星期三）、1月29日（星期四）上班。', '公司员工关于2023年春节放假安排的通知', '2023-05-05 16:50:47', 1, '2023-05-05 16:50:47');
INSERT INTO `Notice` (`noticeId`, `deleteFlag`, `noticeContent`, `noticeName`, `sendTime`, `senderId`, `updateTime`) VALUES (6, 0, '2023年春节放假时间为1月21日（星期五）至1月27日（星期二），共7天。1月28日（星期三）、1月29日（星期四）上班。', '公司员工关于2023年春节放假安排的通知', '2023-05-05 16:50:47', 1, '2023-05-05 16:50:47');
INSERT INTO `Notice` (`noticeId`, `deleteFlag`, `noticeContent`, `noticeName`, `sendTime`, `senderId`, `updateTime`) VALUES (7, 0, '2023年春节放假时间为1月21日（星期五）至1月27日（星期二），共7天。1月28日（星期三）、1月29日（星期四）上班。', '公司员工关于2023年春节放假安排的通知', '2023-05-05 16:50:47', 1, '2023-05-05 16:50:47');
INSERT INTO `Notice` (`noticeId`, `deleteFlag`, `noticeContent`, `noticeName`, `sendTime`, `senderId`, `updateTime`) VALUES (8, 0, '2023年春节放假时间为1月21日（星期五）至1月27日（星期二），共7天。1月28日（星期三）、1月29日（星期四）上班。', '公司员工关于2023年春节放假安排的通知', '2023-05-05 16:50:47', 1, '2023-05-05 16:50:47');
INSERT INTO `Notice` (`noticeId`, `deleteFlag`, `noticeContent`, `noticeName`, `sendTime`, `senderId`, `updateTime`) VALUES (9, 0, '2023年春节放假时间为1月21日（星期五）至1月27日（星期二），共7天。1月28日（星期三）、1月29日（星期四）上班。', '公司员工关于2023年春节放假安排的通知', '2023-05-05 16:50:47', 1, '2023-05-05 16:50:47');
INSERT INTO `Notice` (`noticeId`, `deleteFlag`, `noticeContent`, `noticeName`, `sendTime`, `senderId`, `updateTime`) VALUES (10, 0, '2023年春节放假时间为1月21日（星期五）至1月27日（星期二），共7天。1月28日（星期三）、1月29日（星期四）上班。', '公司员工关于2023年春节放假安排的通知', '2023-05-05 16:50:47', 1, '2023-05-05 16:50:47');
INSERT INTO `Notice` (`noticeId`, `deleteFlag`, `noticeContent`, `noticeName`, `sendTime`, `senderId`, `updateTime`) VALUES (11, 0, '2023年春节放假时间为1月21日（星期五）至1月27日（星期二），共7天。1月28日（星期三）、1月29日（星期四）上班。', '公司员工关于2023年春节放假安排的通知', '2023-05-05 16:50:47', 1, '2023-05-05 16:50:47');
INSERT INTO `Notice` (`noticeId`, `deleteFlag`, `noticeContent`, `noticeName`, `sendTime`, `senderId`, `updateTime`) VALUES (12, 0, '2023年春节放假时间为1月21日（星期五）至1月27日（星期二），共7天。1月28日（星期三）、1月29日（星期四）上班。', '公司员工关于2023年春节放假安排的通知', '2023-05-05 16:50:47', 1, '2023-05-05 16:50:47');
INSERT INTO `Notice` (`noticeId`, `deleteFlag`, `noticeContent`, `noticeName`, `sendTime`, `senderId`, `updateTime`) VALUES (13, 0, '2023年春节放假时间为1月21日（星期五）至1月27日（星期二），共7天。1月28日（星期三）、1月29日（星期四）上班。', '公司员工关于2023年春节放假安排的通知', '2023-05-08 19:50:04', 1, '2023-05-08 19:50:04');
INSERT INTO `Notice` (`noticeId`, `deleteFlag`, `noticeContent`, `noticeName`, `sendTime`, `senderId`, `updateTime`) VALUES (14, 0, '2023年春节放假时间为1月21日（星期五）至1月27日（星期二），共7天。1月28日（星期三）、1月29日（星期四）上班。', '公司员工关于2023年春节放假安排的通知', '2023-05-08 19:51:08', 1, '2023-05-08 19:51:08');
INSERT INTO `Notice` (`noticeId`, `deleteFlag`, `noticeContent`, `noticeName`, `sendTime`, `senderId`, `updateTime`) VALUES (15, 0, '2023年春节放假时间为1月21日（星期五）至1月27日（星期二），共7天。1月28日（星期三）、1月29日（星期四）上班。', '公司员工关于2023年春节放假安排的通知', '2023-05-08 19:53:10', 1, '2023-05-08 19:53:10');
INSERT INTO `Notice` (`noticeId`, `deleteFlag`, `noticeContent`, `noticeName`, `sendTime`, `senderId`, `updateTime`) VALUES (16, 0, '2023年春节放假时间为1月21日（星期五）至1月27日（星期二），共7天。1月28日（星期三）、1月29日（星期四）上班。', '公司员工关于2023年春节放假安排的通知', '2023-05-09 16:22:29', 1, '2023-05-09 16:22:29');
COMMIT;

-- ----------------------------
-- Table structure for RecoveryDeptFile
-- ----------------------------
DROP TABLE IF EXISTS `RecoveryDeptFile`;
CREATE TABLE `RecoveryDeptFile` (
  `recoveryDeptFileId` bigint NOT NULL AUTO_INCREMENT,
  `deleteBatchNum` varchar(50) DEFAULT NULL,
  `deleteTime` varchar(25) DEFAULT NULL,
  `deptFileId` bigint DEFAULT NULL,
  PRIMARY KEY (`recoveryDeptFileId`)
) ENGINE=InnoDB AUTO_INCREMENT=60 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of RecoveryDeptFile
-- ----------------------------
BEGIN;
INSERT INTO `RecoveryDeptFile` (`recoveryDeptFileId`, `deleteBatchNum`, `deleteTime`, `deptFileId`) VALUES (1, '5062351a-aa2d-4ee8-94bc-d2ca2889c5f0', '2023-05-05 04:58:58', 3);
INSERT INTO `RecoveryDeptFile` (`recoveryDeptFileId`, `deleteBatchNum`, `deleteTime`, `deptFileId`) VALUES (2, '1a5afe68-7022-4d79-bc4a-fe176b78c955', '2023-05-05 05:07:03', 1);
INSERT INTO `RecoveryDeptFile` (`recoveryDeptFileId`, `deleteBatchNum`, `deleteTime`, `deptFileId`) VALUES (3, '262f82c9-cd58-4a39-b6e4-2c0c0e5a8984', '2023-05-05 05:44:48', 4);
INSERT INTO `RecoveryDeptFile` (`recoveryDeptFileId`, `deleteBatchNum`, `deleteTime`, `deptFileId`) VALUES (4, 'a1bbe63b-0aad-4cef-ba0e-8d888b736331', '2023-05-05 05:45:08', 4);
INSERT INTO `RecoveryDeptFile` (`recoveryDeptFileId`, `deleteBatchNum`, `deleteTime`, `deptFileId`) VALUES (5, '8545aa00-9ac7-4907-a0f6-954c429134de', '2023-05-05 05:45:18', 1);
INSERT INTO `RecoveryDeptFile` (`recoveryDeptFileId`, `deleteBatchNum`, `deleteTime`, `deptFileId`) VALUES (6, '6c539173-1edf-491d-b9b3-356791492851', '2023-05-05 05:48:15', 2);
INSERT INTO `RecoveryDeptFile` (`recoveryDeptFileId`, `deleteBatchNum`, `deleteTime`, `deptFileId`) VALUES (7, 'c7fc3eac-4365-4138-954b-4e800ce89b32', '2023-05-05 05:49:14', 2);
INSERT INTO `RecoveryDeptFile` (`recoveryDeptFileId`, `deleteBatchNum`, `deleteTime`, `deptFileId`) VALUES (8, '6f6cb9d0-deb7-4422-ad13-a9df9147a67b', '2023-05-05 05:49:35', 2);
INSERT INTO `RecoveryDeptFile` (`recoveryDeptFileId`, `deleteBatchNum`, `deleteTime`, `deptFileId`) VALUES (9, '95762904-b568-4702-9a32-cd0b2380377c', '2023-05-05 05:49:39', 4);
INSERT INTO `RecoveryDeptFile` (`recoveryDeptFileId`, `deleteBatchNum`, `deleteTime`, `deptFileId`) VALUES (10, 'd9001de6-2bd3-465e-ae1e-5ad8b2f65c63', '2023-05-05 05:51:12', 2);
INSERT INTO `RecoveryDeptFile` (`recoveryDeptFileId`, `deleteBatchNum`, `deleteTime`, `deptFileId`) VALUES (11, '319138ba-c113-4581-b021-9ed165fd73a8', '2023-05-05 05:51:12', 4);
INSERT INTO `RecoveryDeptFile` (`recoveryDeptFileId`, `deleteBatchNum`, `deleteTime`, `deptFileId`) VALUES (12, '9b7d1905-c54f-409e-b088-e9334c882484', '2023-05-05 05:58:31', 4);
INSERT INTO `RecoveryDeptFile` (`recoveryDeptFileId`, `deleteBatchNum`, `deleteTime`, `deptFileId`) VALUES (13, '82844b11-456e-439f-8535-b353973ed4ef', '2023-05-05 05:58:31', 2);
INSERT INTO `RecoveryDeptFile` (`recoveryDeptFileId`, `deleteBatchNum`, `deleteTime`, `deptFileId`) VALUES (14, '8c4713d5-1903-4cb2-9a07-d6d5bb6bd5a4', '2023-05-05 05:58:31', 3);
INSERT INTO `RecoveryDeptFile` (`recoveryDeptFileId`, `deleteBatchNum`, `deleteTime`, `deptFileId`) VALUES (15, 'a4c76ac3-572c-484a-9671-ddb6ffd13c62', '2023-05-05 05:58:44', 2);
INSERT INTO `RecoveryDeptFile` (`recoveryDeptFileId`, `deleteBatchNum`, `deleteTime`, `deptFileId`) VALUES (16, '22673137-8f9e-46f0-b39d-c17fb70a8aca', '2023-05-05 06:21:51', 5);
INSERT INTO `RecoveryDeptFile` (`recoveryDeptFileId`, `deleteBatchNum`, `deleteTime`, `deptFileId`) VALUES (17, '1ee5b428-7d0a-4757-8181-a3bf77ab683a', '2023-05-05 06:21:56', 2);
INSERT INTO `RecoveryDeptFile` (`recoveryDeptFileId`, `deleteBatchNum`, `deleteTime`, `deptFileId`) VALUES (18, 'cea6b87b-1627-4412-996c-4388ff8ad20a', '2023-05-05 06:22:00', 4);
INSERT INTO `RecoveryDeptFile` (`recoveryDeptFileId`, `deleteBatchNum`, `deleteTime`, `deptFileId`) VALUES (19, 'f7e8322c-4866-437a-93aa-cde40522972b', '2023-05-05 06:22:47', 2);
INSERT INTO `RecoveryDeptFile` (`recoveryDeptFileId`, `deleteBatchNum`, `deleteTime`, `deptFileId`) VALUES (20, '793ecd81-bb23-4da6-b365-95c2154292f6', '2023-05-05 06:23:47', 2);
INSERT INTO `RecoveryDeptFile` (`recoveryDeptFileId`, `deleteBatchNum`, `deleteTime`, `deptFileId`) VALUES (21, '6d332355-fdd6-4942-9cc8-a339e927d519', '2023-05-05 06:25:32', 4);
INSERT INTO `RecoveryDeptFile` (`recoveryDeptFileId`, `deleteBatchNum`, `deleteTime`, `deptFileId`) VALUES (22, '0192b735-242c-4b21-887d-ee0938d30a8f', '2023-05-05 06:25:35', 2);
INSERT INTO `RecoveryDeptFile` (`recoveryDeptFileId`, `deleteBatchNum`, `deleteTime`, `deptFileId`) VALUES (23, '10b8705c-e6fe-4222-bbe3-f59468e9aaf9', '2023-05-05 06:31:28', 2);
INSERT INTO `RecoveryDeptFile` (`recoveryDeptFileId`, `deleteBatchNum`, `deleteTime`, `deptFileId`) VALUES (24, '26a6c3df-c1f8-426f-a335-0a0d08df152a', '2023-05-05 06:32:15', 4);
INSERT INTO `RecoveryDeptFile` (`recoveryDeptFileId`, `deleteBatchNum`, `deleteTime`, `deptFileId`) VALUES (25, '9cf78392-5bf2-4c29-881d-bd83ee6ecd00', '2023-05-05 06:32:18', 2);
INSERT INTO `RecoveryDeptFile` (`recoveryDeptFileId`, `deleteBatchNum`, `deleteTime`, `deptFileId`) VALUES (26, '6d558378-bff8-4c8c-a474-4afaf748a888', '2023-05-05 06:33:00', 2);
INSERT INTO `RecoveryDeptFile` (`recoveryDeptFileId`, `deleteBatchNum`, `deleteTime`, `deptFileId`) VALUES (27, '6d7f8339-06b0-4311-8321-cf2491fae9ef', '2023-05-05 06:33:02', 4);
INSERT INTO `RecoveryDeptFile` (`recoveryDeptFileId`, `deleteBatchNum`, `deleteTime`, `deptFileId`) VALUES (28, 'aef114e2-28cb-4ffc-91b5-6cbe614d01f2', '2023-05-05 06:35:49', 7);
INSERT INTO `RecoveryDeptFile` (`recoveryDeptFileId`, `deleteBatchNum`, `deleteTime`, `deptFileId`) VALUES (29, '7107ed44-9da0-4d02-b1f6-ab946d6596e6', '2023-05-05 06:36:49', 4);
INSERT INTO `RecoveryDeptFile` (`recoveryDeptFileId`, `deleteBatchNum`, `deleteTime`, `deptFileId`) VALUES (30, '39a22fb1-5305-4eab-a66b-4fb8e4454f4c', '2023-05-05 06:39:24', 2);
INSERT INTO `RecoveryDeptFile` (`recoveryDeptFileId`, `deleteBatchNum`, `deleteTime`, `deptFileId`) VALUES (31, '7a62d6f3-23e0-4048-a57d-4903fdaa15a3', '2023-05-05 06:39:25', 4);
INSERT INTO `RecoveryDeptFile` (`recoveryDeptFileId`, `deleteBatchNum`, `deleteTime`, `deptFileId`) VALUES (32, 'e5117b0e-91a9-48e3-9378-35a4f8d35984', '2023-05-05 06:39:32', 8);
INSERT INTO `RecoveryDeptFile` (`recoveryDeptFileId`, `deleteBatchNum`, `deleteTime`, `deptFileId`) VALUES (33, 'efa69501-e02e-43ec-b0ac-efb32f7a42dc', '2023-05-05 06:39:32', 6);
INSERT INTO `RecoveryDeptFile` (`recoveryDeptFileId`, `deleteBatchNum`, `deleteTime`, `deptFileId`) VALUES (34, '9f9972f0-961d-4101-a421-7abb68eaf5be', '2023-05-05 06:39:52', 2);
INSERT INTO `RecoveryDeptFile` (`recoveryDeptFileId`, `deleteBatchNum`, `deleteTime`, `deptFileId`) VALUES (35, '83f5e6fa-c16b-422c-b1b7-c46821e1e0d3', '2023-05-05 06:41:25', 2);
INSERT INTO `RecoveryDeptFile` (`recoveryDeptFileId`, `deleteBatchNum`, `deleteTime`, `deptFileId`) VALUES (36, '35e75e7c-8890-43e5-8d6a-efd116abaf46', '2023-05-05 06:41:31', 4);
INSERT INTO `RecoveryDeptFile` (`recoveryDeptFileId`, `deleteBatchNum`, `deleteTime`, `deptFileId`) VALUES (37, 'dc98c997-b4e5-4fbc-9e32-11728dc38531', '2023-05-05 06:43:49', 2);
INSERT INTO `RecoveryDeptFile` (`recoveryDeptFileId`, `deleteBatchNum`, `deleteTime`, `deptFileId`) VALUES (38, '465e4538-c487-45c5-9885-9f3186ad098a', '2023-05-05 06:43:52', 4);
INSERT INTO `RecoveryDeptFile` (`recoveryDeptFileId`, `deleteBatchNum`, `deleteTime`, `deptFileId`) VALUES (39, '4b874724-81a6-4b22-a277-0d0a35c3fc46', '2023-05-05 06:44:13', 12);
INSERT INTO `RecoveryDeptFile` (`recoveryDeptFileId`, `deleteBatchNum`, `deleteTime`, `deptFileId`) VALUES (40, 'ea26249c-f6cb-43cf-80fa-8c0b94afd215', '2023-05-05 06:44:13', 9);
INSERT INTO `RecoveryDeptFile` (`recoveryDeptFileId`, `deleteBatchNum`, `deleteTime`, `deptFileId`) VALUES (41, '4ba2fa37-2d9b-411d-af60-007eb93df16b', '2023-05-05 06:44:13', 10);
INSERT INTO `RecoveryDeptFile` (`recoveryDeptFileId`, `deleteBatchNum`, `deleteTime`, `deptFileId`) VALUES (42, '67653fc2-c505-49ce-a1db-2903dae6f44d', '2023-05-05 06:44:13', 11);
INSERT INTO `RecoveryDeptFile` (`recoveryDeptFileId`, `deleteBatchNum`, `deleteTime`, `deptFileId`) VALUES (43, 'd6b998a2-78cf-446b-ba0e-25e3060e9250', '2023-05-08 04:10:40', 14);
INSERT INTO `RecoveryDeptFile` (`recoveryDeptFileId`, `deleteBatchNum`, `deleteTime`, `deptFileId`) VALUES (44, 'da28f33a-3b16-4738-8fa4-60c22d229c14', '2023-05-17 02:47:54', 60);
INSERT INTO `RecoveryDeptFile` (`recoveryDeptFileId`, `deleteBatchNum`, `deleteTime`, `deptFileId`) VALUES (45, '854b0164-bd98-43ae-8f65-4fa529933ceb', '2023-05-17 02:48:00', 59);
INSERT INTO `RecoveryDeptFile` (`recoveryDeptFileId`, `deleteBatchNum`, `deleteTime`, `deptFileId`) VALUES (46, '63b2dd14-7982-4f36-a225-46d0311c1714', '2023-05-17 02:49:25', 1);
INSERT INTO `RecoveryDeptFile` (`recoveryDeptFileId`, `deleteBatchNum`, `deleteTime`, `deptFileId`) VALUES (47, 'f9088b96-3119-41f8-88c8-8b42b41e09ad', '2023-05-17 02:49:29', 18);
INSERT INTO `RecoveryDeptFile` (`recoveryDeptFileId`, `deleteBatchNum`, `deleteTime`, `deptFileId`) VALUES (48, '36f6d5bd-788d-436b-9416-8a05936f54f3', '2023-05-19 14:12:52', 14);
INSERT INTO `RecoveryDeptFile` (`recoveryDeptFileId`, `deleteBatchNum`, `deleteTime`, `deptFileId`) VALUES (49, 'a94f6582-6830-4fa6-a70f-c3a30a42ce89', '2023-05-19 14:14:26', 2);
INSERT INTO `RecoveryDeptFile` (`recoveryDeptFileId`, `deleteBatchNum`, `deleteTime`, `deptFileId`) VALUES (50, '7d8fda09-37b6-480f-bf36-f55eeeed1cdb', '2023-05-19 14:14:30', 15);
INSERT INTO `RecoveryDeptFile` (`recoveryDeptFileId`, `deleteBatchNum`, `deleteTime`, `deptFileId`) VALUES (51, '11d6a11e-b257-4f22-9ae7-71b1c00dcff6', '2023-05-19 14:14:32', 16);
INSERT INTO `RecoveryDeptFile` (`recoveryDeptFileId`, `deleteBatchNum`, `deleteTime`, `deptFileId`) VALUES (52, '7ac253ea-41f3-4d92-b79b-51e59e7ce41e', '2023-05-19 14:14:34', 17);
INSERT INTO `RecoveryDeptFile` (`recoveryDeptFileId`, `deleteBatchNum`, `deleteTime`, `deptFileId`) VALUES (53, 'cbbf24b9-bd4a-4e7a-bdac-78fc104d494b', '2023-05-19 14:18:34', 13);
INSERT INTO `RecoveryDeptFile` (`recoveryDeptFileId`, `deleteBatchNum`, `deleteTime`, `deptFileId`) VALUES (54, 'ac1341f3-85ef-4802-a9cb-fa177163cb0a', '2023-05-19 14:22:13', 70);
INSERT INTO `RecoveryDeptFile` (`recoveryDeptFileId`, `deleteBatchNum`, `deleteTime`, `deptFileId`) VALUES (55, 'b0a58755-ec97-44fa-840c-99e3518252d3', '2023-05-19 14:22:37', 75);
INSERT INTO `RecoveryDeptFile` (`recoveryDeptFileId`, `deleteBatchNum`, `deleteTime`, `deptFileId`) VALUES (56, 'cd68f1d1-b19e-4e2e-8ddd-3acdc173a210', '2023-05-19 14:23:00', 80);
INSERT INTO `RecoveryDeptFile` (`recoveryDeptFileId`, `deleteBatchNum`, `deleteTime`, `deptFileId`) VALUES (57, '5abf1399-95f6-46ed-84e6-b7f3dcd0d93b', '2023-05-19 14:32:18', 95);
INSERT INTO `RecoveryDeptFile` (`recoveryDeptFileId`, `deleteBatchNum`, `deleteTime`, `deptFileId`) VALUES (58, 'e4bbd3bc-0651-4f1e-8014-377c63bc3c60', '2023-05-19 14:36:38', 97);
INSERT INTO `RecoveryDeptFile` (`recoveryDeptFileId`, `deleteBatchNum`, `deleteTime`, `deptFileId`) VALUES (59, '1e043a06-b288-4e75-bff6-f0d8d81b2d4c', '2023-05-23 12:04:55', 98);
COMMIT;

-- ----------------------------
-- Table structure for RecoveryFile
-- ----------------------------
DROP TABLE IF EXISTS `RecoveryFile`;
CREATE TABLE `RecoveryFile` (
  `recoveryFileId` bigint NOT NULL AUTO_INCREMENT,
  `deleteBatchNum` varchar(50) DEFAULT NULL,
  `deleteTime` varchar(25) DEFAULT NULL,
  `userFileId` bigint DEFAULT NULL,
  PRIMARY KEY (`recoveryFileId`)
) ENGINE=InnoDB AUTO_INCREMENT=38 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of RecoveryFile
-- ----------------------------
BEGIN;
INSERT INTO `RecoveryFile` (`recoveryFileId`, `deleteBatchNum`, `deleteTime`, `userFileId`) VALUES (1, 'b0c7144a-cdcd-49d7-8f11-04e05932ed43', '2023-05-05 05:04:17', 13);
INSERT INTO `RecoveryFile` (`recoveryFileId`, `deleteBatchNum`, `deleteTime`, `userFileId`) VALUES (2, '3b9d7290-ab2e-4453-b6d6-e41d2c0bb8b7', '2023-05-05 05:47:05', 12);
INSERT INTO `RecoveryFile` (`recoveryFileId`, `deleteBatchNum`, `deleteTime`, `userFileId`) VALUES (3, '60b1fed0-7a2a-45fe-9d74-ad2d1e72f3cf', '2023-05-05 06:50:47', 1);
INSERT INTO `RecoveryFile` (`recoveryFileId`, `deleteBatchNum`, `deleteTime`, `userFileId`) VALUES (4, '0300e494-1415-4450-8b8e-dce80480ff48', '2023-05-05 06:51:02', 16);
INSERT INTO `RecoveryFile` (`recoveryFileId`, `deleteBatchNum`, `deleteTime`, `userFileId`) VALUES (5, '5de48658-01d9-4bac-a530-97ab87045f74', '2023-05-05 06:51:05', 17);
INSERT INTO `RecoveryFile` (`recoveryFileId`, `deleteBatchNum`, `deleteTime`, `userFileId`) VALUES (6, '3fe62c25-1792-4c63-b8b3-e40a9cacb6e3', '2023-05-08 04:10:00', 20);
INSERT INTO `RecoveryFile` (`recoveryFileId`, `deleteBatchNum`, `deleteTime`, `userFileId`) VALUES (7, '8e2b0f94-6256-47d8-9d2f-8e6a52d7b13e', '2023-05-10 16:37:03', 5);
INSERT INTO `RecoveryFile` (`recoveryFileId`, `deleteBatchNum`, `deleteTime`, `userFileId`) VALUES (8, 'e1792c64-fd1c-4b2f-80ae-10ec629af55a', '2023-05-10 16:37:03', 6);
INSERT INTO `RecoveryFile` (`recoveryFileId`, `deleteBatchNum`, `deleteTime`, `userFileId`) VALUES (9, 'ed1337cd-a2ad-4f59-9dad-514661f28c1b', '2023-05-14 12:49:53', 2);
INSERT INTO `RecoveryFile` (`recoveryFileId`, `deleteBatchNum`, `deleteTime`, `userFileId`) VALUES (10, '78cc7f44-ed57-4903-8388-08bf495d8734', '2023-05-14 12:49:53', 3);
INSERT INTO `RecoveryFile` (`recoveryFileId`, `deleteBatchNum`, `deleteTime`, `userFileId`) VALUES (11, 'ed52cb3c-7239-4bec-9a43-edf2d8e16ffb', '2023-05-14 12:50:02', 2);
INSERT INTO `RecoveryFile` (`recoveryFileId`, `deleteBatchNum`, `deleteTime`, `userFileId`) VALUES (12, 'dde9dd27-0f75-452d-8825-42a340c199d2', '2023-05-14 12:50:02', 3);
INSERT INTO `RecoveryFile` (`recoveryFileId`, `deleteBatchNum`, `deleteTime`, `userFileId`) VALUES (13, 'f5112f77-d9fa-4e61-9e06-70696073549a', '2023-05-14 19:08:46', 22);
INSERT INTO `RecoveryFile` (`recoveryFileId`, `deleteBatchNum`, `deleteTime`, `userFileId`) VALUES (14, '2b9bed72-c8e6-4a9b-ac0f-48cd7528ea32', '2023-05-14 19:08:49', 18);
INSERT INTO `RecoveryFile` (`recoveryFileId`, `deleteBatchNum`, `deleteTime`, `userFileId`) VALUES (15, '08fd6352-0e9b-43de-89d5-0f9fd352e137', '2023-05-14 19:08:52', 13);
INSERT INTO `RecoveryFile` (`recoveryFileId`, `deleteBatchNum`, `deleteTime`, `userFileId`) VALUES (16, '2436615b-4dca-44ba-984f-90927cf47c84', '2023-05-19 13:54:47', 5);
INSERT INTO `RecoveryFile` (`recoveryFileId`, `deleteBatchNum`, `deleteTime`, `userFileId`) VALUES (17, 'dc9457bb-6884-4531-b9aa-236644854e73', '2023-05-19 13:54:50', 7);
INSERT INTO `RecoveryFile` (`recoveryFileId`, `deleteBatchNum`, `deleteTime`, `userFileId`) VALUES (18, '18559365-466e-420e-be8a-9fb6e6f41aff', '2023-05-19 13:55:06', 8);
INSERT INTO `RecoveryFile` (`recoveryFileId`, `deleteBatchNum`, `deleteTime`, `userFileId`) VALUES (19, '32b5a010-645e-4326-90ff-6e51b4400419', '2023-05-19 13:55:06', 9);
INSERT INTO `RecoveryFile` (`recoveryFileId`, `deleteBatchNum`, `deleteTime`, `userFileId`) VALUES (20, '7886a168-fdf9-47a6-88e6-e4e27a4056c1', '2023-05-19 13:55:06', 10);
INSERT INTO `RecoveryFile` (`recoveryFileId`, `deleteBatchNum`, `deleteTime`, `userFileId`) VALUES (21, '5ae1cf22-0f70-4113-8bba-44ecd75448be', '2023-05-19 13:55:06', 11);
INSERT INTO `RecoveryFile` (`recoveryFileId`, `deleteBatchNum`, `deleteTime`, `userFileId`) VALUES (22, 'a71dc04e-eddb-4dcf-8542-8409dab3d9ea', '2023-05-19 13:55:06', 19);
INSERT INTO `RecoveryFile` (`recoveryFileId`, `deleteBatchNum`, `deleteTime`, `userFileId`) VALUES (23, '5a57e74c-83fb-4c62-b7a1-6186bac8a316', '2023-05-19 13:55:06', 20);
INSERT INTO `RecoveryFile` (`recoveryFileId`, `deleteBatchNum`, `deleteTime`, `userFileId`) VALUES (24, 'c71a6508-8358-45a0-9275-3db101b5eb4c', '2023-05-19 13:55:06', 23);
INSERT INTO `RecoveryFile` (`recoveryFileId`, `deleteBatchNum`, `deleteTime`, `userFileId`) VALUES (25, '3b1639c3-3b52-453e-b0bf-091da7bafc59', '2023-05-19 13:55:06', 24);
INSERT INTO `RecoveryFile` (`recoveryFileId`, `deleteBatchNum`, `deleteTime`, `userFileId`) VALUES (26, '6cd44692-fbeb-4bae-933e-0261dbedcff0', '2023-05-19 13:55:06', 25);
INSERT INTO `RecoveryFile` (`recoveryFileId`, `deleteBatchNum`, `deleteTime`, `userFileId`) VALUES (27, 'a9c99a64-b218-4e38-b272-032069ea9bab', '2023-05-19 13:55:06', 26);
INSERT INTO `RecoveryFile` (`recoveryFileId`, `deleteBatchNum`, `deleteTime`, `userFileId`) VALUES (28, '7fc749cb-fb98-4308-8525-f3a5bb8c9078', '2023-05-19 13:55:06', 27);
INSERT INTO `RecoveryFile` (`recoveryFileId`, `deleteBatchNum`, `deleteTime`, `userFileId`) VALUES (29, '0163f650-3fa8-4c0f-9124-fe22d0f42179', '2023-05-19 13:55:06', 28);
INSERT INTO `RecoveryFile` (`recoveryFileId`, `deleteBatchNum`, `deleteTime`, `userFileId`) VALUES (30, 'fcc4437d-59b9-4480-a00e-d08c9461210a', '2023-05-19 13:55:06', 32);
INSERT INTO `RecoveryFile` (`recoveryFileId`, `deleteBatchNum`, `deleteTime`, `userFileId`) VALUES (31, '636d2ad8-6ae3-46b8-b6ad-b10a3f224643', '2023-05-19 14:04:15', 52);
INSERT INTO `RecoveryFile` (`recoveryFileId`, `deleteBatchNum`, `deleteTime`, `userFileId`) VALUES (32, 'bb9c8a49-f6f7-4db7-9c91-f5ed3c969948', '2023-05-19 14:05:14', 34);
INSERT INTO `RecoveryFile` (`recoveryFileId`, `deleteBatchNum`, `deleteTime`, `userFileId`) VALUES (33, '5999f828-5f59-419b-b668-76bd6cd12de7', '2023-05-19 14:09:18', 61);
INSERT INTO `RecoveryFile` (`recoveryFileId`, `deleteBatchNum`, `deleteTime`, `userFileId`) VALUES (34, 'b4db3636-7660-4864-a582-58919d7032c1', '2023-05-22 00:11:10', 64);
INSERT INTO `RecoveryFile` (`recoveryFileId`, `deleteBatchNum`, `deleteTime`, `userFileId`) VALUES (35, '583da85a-78a9-4882-83ab-c75cc1cec6c6', '2023-05-22 00:12:01', 65);
INSERT INTO `RecoveryFile` (`recoveryFileId`, `deleteBatchNum`, `deleteTime`, `userFileId`) VALUES (36, '6c64fede-81b5-4204-a296-5b4a3a23663c', '2023-05-22 00:12:43', 66);
INSERT INTO `RecoveryFile` (`recoveryFileId`, `deleteBatchNum`, `deleteTime`, `userFileId`) VALUES (37, 'b98de381-f52f-46e2-aa85-21cd61f76481', '2023-05-22 00:13:14', 67);
COMMIT;

-- ----------------------------
-- Table structure for Review
-- ----------------------------
DROP TABLE IF EXISTS `Review`;
CREATE TABLE `Review` (
  `reviewId` bigint NOT NULL AUTO_INCREMENT COMMENT '评论id',
  `content` varchar(500) DEFAULT NULL COMMENT '评论内容',
  `fileId` bigint DEFAULT NULL COMMENT '评论文件id',
  `reviewTime` varchar(25) DEFAULT NULL COMMENT '评论时间',
  `userId` bigint DEFAULT NULL COMMENT '评论人id',
  PRIMARY KEY (`reviewId`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of Review
-- ----------------------------
BEGIN;
INSERT INTO `Review` (`reviewId`, `content`, `fileId`, `reviewTime`, `userId`) VALUES (1, '31234324', 2, '2023-05-14 06:44:26', 1);
INSERT INTO `Review` (`reviewId`, `content`, `fileId`, `reviewTime`, `userId`) VALUES (2, 'hjgikh', 2, '2023-05-14 06:44:27', 1);
INSERT INTO `Review` (`reviewId`, `content`, `fileId`, `reviewTime`, `userId`) VALUES (3, 'hjgikh', 1, '2023-05-14 06:44:27', 1);
INSERT INTO `Review` (`reviewId`, `content`, `fileId`, `reviewTime`, `userId`) VALUES (4, 'hjgikh', 1, '2023-05-14 06:44:27', 2);
INSERT INTO `Review` (`reviewId`, `content`, `fileId`, `reviewTime`, `userId`) VALUES (5, '13423', 2, '2023-05-14 17:04:33', 1);
INSERT INTO `Review` (`reviewId`, `content`, `fileId`, `reviewTime`, `userId`) VALUES (6, '897', 2, '2023-05-14 17:05:03', 1);
INSERT INTO `Review` (`reviewId`, `content`, `fileId`, `reviewTime`, `userId`) VALUES (7, '8974', 2, '2023-05-14 17:05:29', 1);
INSERT INTO `Review` (`reviewId`, `content`, `fileId`, `reviewTime`, `userId`) VALUES (8, '32', 2, '2023-05-14 17:05:39', 1);
INSERT INTO `Review` (`reviewId`, `content`, `fileId`, `reviewTime`, `userId`) VALUES (9, '766', 2, '2023-05-14 17:05:39', 1);
INSERT INTO `Review` (`reviewId`, `content`, `fileId`, `reviewTime`, `userId`) VALUES (10, '112', 2, '2023-05-14 17:05:39', 1);
INSERT INTO `Review` (`reviewId`, `content`, `fileId`, `reviewTime`, `userId`) VALUES (11, 'grg', 2, '2023-05-14 17:11:50', 1);
INSERT INTO `Review` (`reviewId`, `content`, `fileId`, `reviewTime`, `userId`) VALUES (12, 'jjhh', 2, '2023-05-14 17:16:56', 1);
INSERT INTO `Review` (`reviewId`, `content`, `fileId`, `reviewTime`, `userId`) VALUES (13, '需求分析已经上传', 66, '2023-05-23 12:35:26', 1);
INSERT INTO `Review` (`reviewId`, `content`, `fileId`, `reviewTime`, `userId`) VALUES (14, '需求分析已完善', 66, '2023-05-23 12:37:30', 3);
COMMIT;

-- ----------------------------
-- Table structure for Storage
-- ----------------------------
DROP TABLE IF EXISTS `Storage`;
CREATE TABLE `Storage` (
  `storageId` bigint NOT NULL AUTO_INCREMENT,
  `storageSize` bigint DEFAULT NULL,
  `userId` bigint DEFAULT NULL,
  PRIMARY KEY (`storageId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of Storage
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for User
-- ----------------------------
DROP TABLE IF EXISTS `User`;
CREATE TABLE `User` (
  `userId` bigint NOT NULL AUTO_INCREMENT COMMENT '用户id',
  `avatar` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL COMMENT '头像',
  `deptId` varchar(10) DEFAULT NULL COMMENT '部门id',
  `email` varchar(35) DEFAULT NULL COMMENT '邮箱',
  `password` varchar(35) DEFAULT NULL COMMENT '密码',
  `registerTime` varchar(30) DEFAULT NULL COMMENT '注册时间',
  `role` varchar(10) DEFAULT NULL COMMENT '角色',
  `salt` varchar(20) DEFAULT NULL COMMENT '盐值',
  `sex` varchar(2) DEFAULT NULL COMMENT '性别',
  `telephone` varchar(15) DEFAULT NULL COMMENT '手机号码',
  `username` varchar(30) DEFAULT NULL COMMENT '用户名',
  `lastLoginTime` varchar(30) DEFAULT NULL COMMENT '最近登录时间',
  `deleteFlag` varchar(2) DEFAULT '0' COMMENT '删除标志 0-未删除 1-已删除',
  PRIMARY KEY (`userId`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of User
-- ----------------------------
BEGIN;
INSERT INTO `User` (`userId`, `avatar`, `deptId`, `email`, `password`, `registerTime`, `role`, `salt`, `sex`, `telephone`, `username`, `lastLoginTime`, `deleteFlag`) VALUES (1, 'https://xsgames.co/randomusers/assets/avatars/pixel/11.jpg', '7', '21@ww.com', 'dee290212d091371572818562a5acd32', '2023-05-04 03:37:59', '普通员工', '9b22b6590e48bcf6b', '0', '18888888888', '张璇', '2023-05-23 12:35:53', '0');
INSERT INTO `User` (`userId`, `avatar`, `deptId`, `email`, `password`, `registerTime`, `role`, `salt`, `sex`, `telephone`, `username`, `lastLoginTime`, `deleteFlag`) VALUES (2, 'https://xsgames.co/randomusers/assets/avatars/pixel/22.jpg', '1', NULL, '7ee551364b635b67eb689e3fa6a7cc4b', '2023-05-05 07:06:30', '普通员工', 'ca16b9d9a0064ecac', '0', '18888888889', '李娜', '2023-05-23 11:39:06', '0');
INSERT INTO `User` (`userId`, `avatar`, `deptId`, `email`, `password`, `registerTime`, `role`, `salt`, `sex`, `telephone`, `username`, `lastLoginTime`, `deleteFlag`) VALUES (3, 'https://xsgames.co/randomusers/assets/avatars/pixel/33.jpg', '7', NULL, '5c63202ae0da929afa46a0146edc1146', '2023-05-05 07:07:07', '普通员工', 'f85bb569e548e8329', '1', '17777777777', '王宇航', '2023-05-23 12:36:49', '0');
INSERT INTO `User` (`userId`, `avatar`, `deptId`, `email`, `password`, `registerTime`, `role`, `salt`, `sex`, `telephone`, `username`, `lastLoginTime`, `deleteFlag`) VALUES (4, 'https://xsgames.co/randomusers/assets/avatars/pixel/44.jpg', '12', NULL, '42e8929e11c248f57f65fdcdaed15945', '2023-05-06 16:37:34', '普通员工', 'a95c0471e46fbde70', '1', '15555555555', '陈雨晴', '2023-05-23 11:39:06', '0');
INSERT INTO `User` (`userId`, `avatar`, `deptId`, `email`, `password`, `registerTime`, `role`, `salt`, `sex`, `telephone`, `username`, `lastLoginTime`, `deleteFlag`) VALUES (5, 'https://xsgames.co/randomusers/assets/avatars/pixel/1.jpg', '17', NULL, '62e1bc05b625865081398afca22ddb2d', '2023-05-06 16:41:08', '普通员工', '28f1c97d395d041f7', '0', '10000000000', '刘思涵', '2023-05-23 11:39:06', '0');
INSERT INTO `User` (`userId`, `avatar`, `deptId`, `email`, `password`, `registerTime`, `role`, `salt`, `sex`, `telephone`, `username`, `lastLoginTime`, `deleteFlag`) VALUES (6, 'https://xsgames.co/randomusers/assets/avatars/pixel/8.jpg', '22', NULL, 'f34e46f8320672de3da05944016f33ee', '2023-05-07 13:03:10', '普通员工', '78846a7e0991dfe17', '0', '13333333333', '赵阳', '2023-05-23 20:03:18', '0');
INSERT INTO `User` (`userId`, `avatar`, `deptId`, `email`, `password`, `registerTime`, `role`, `salt`, `sex`, `telephone`, `username`, `lastLoginTime`, `deleteFlag`) VALUES (7, 'https://xsgames.co/randomusers/assets/avatars/pixel/28.jpg', '27', NULL, '031a5804aafe5bb9c84ee23d268eb403', '2023-05-07 13:04:49', '普通员工', 'd9359a4c3250904ed', '0', '12345678901', '周晨曦', '2023-05-23 20:03:18', '0');
INSERT INTO `User` (`userId`, `avatar`, `deptId`, `email`, `password`, `registerTime`, `role`, `salt`, `sex`, `telephone`, `username`, `lastLoginTime`, `deleteFlag`) VALUES (8, 'https://xsgames.co/randomusers/assets/avatars/pixel/40.jpg', '31', NULL, '2cdc58485c02b754896e5a3febd851b7', '2023-05-07 13:13:14', '普通员工', '19b9635214788006b', '0', '44444444444', '黄梓涵', '2023-05-23 20:03:18', '0');
INSERT INTO `User` (`userId`, `avatar`, `deptId`, `email`, `password`, `registerTime`, `role`, `salt`, `sex`, `telephone`, `username`, `lastLoginTime`, `deleteFlag`) VALUES (9, 'https://xsgames.co/randomusers/assets/avatars/pixel/30.jpg', '18', NULL, '7348689efac52746311212f23db8bea2', '2023-05-07 22:26:30', '普通员工', '498fb8631f125d3f5', '0', '19999999999', '吴文静', '2023-05-23 20:03:18', '0');
INSERT INTO `User` (`userId`, `avatar`, `deptId`, `email`, `password`, `registerTime`, `role`, `salt`, `sex`, `telephone`, `username`, `lastLoginTime`, `deleteFlag`) VALUES (10, 'https://xsgames.co/randomusers/assets/avatars/pixel/44.jpg', '12', NULL, '19f62f8348cb55bcbc601a879aa437dc', '2023-05-10 16:34:32', '普通员工', '785895b4b2c40ab63', '0', '18822222222', '郑宇航', '2023-05-23 20:03:18', '0');
INSERT INTO `User` (`userId`, `avatar`, `deptId`, `email`, `password`, `registerTime`, `role`, `salt`, `sex`, `telephone`, `username`, `lastLoginTime`, `deleteFlag`) VALUES (11, 'https://xsgames.co/randomusers/assets/avatars/pixel/8.jpg', '8', NULL, 'c64e0d96e0e7fa29cd123ce1d6363217', '2023-05-16 13:57:17', '普通员工', '291f605fa8ef8f206', '0', '11111111111', '张瑞雪', '2023-05-23 20:03:18', '0');
INSERT INTO `User` (`userId`, `avatar`, `deptId`, `email`, `password`, `registerTime`, `role`, `salt`, `sex`, `telephone`, `username`, `lastLoginTime`, `deleteFlag`) VALUES (12, 'https://xsgames.co/randomusers/assets/avatars/pixel/2.jpg', '9', NULL, 'bc8738cd3cf3e749ca067298ec0c3118', '2023-05-16 14:02:22', '普通员工', 'f8557b1965a629606', '0', '14444444444', '李文雅', '2023-05-23 20:03:18', '0');
INSERT INTO `User` (`userId`, `avatar`, `deptId`, `email`, `password`, `registerTime`, `role`, `salt`, `sex`, `telephone`, `username`, `lastLoginTime`, `deleteFlag`) VALUES (13, 'https://xsgames.co/randomusers/assets/avatars/pixel/12.jpg', '16', NULL, 'ca7e80e53d1d5d0d682990fc9f0a0e17', '2023-05-16 14:08:03', '普通员工', 'ba108e4a2923a0b8d', '0', '19988888888', '王晨阳', '2023-05-23 20:03:18', '0');
INSERT INTO `User` (`userId`, `avatar`, `deptId`, `email`, `password`, `registerTime`, `role`, `salt`, `sex`, `telephone`, `username`, `lastLoginTime`, `deleteFlag`) VALUES (14, 'https://xsgames.co/randomusers/assets/avatars/pixel/43.jpg', '23', NULL, '020dcc4389638c5282345dfd091dec3b', '2023-05-16 14:10:07', '普通员工', '09f0b1a9e07979858', '1', '12233333333', '陈思佳', '2023-05-23 20:03:18', '0');
INSERT INTO `User` (`userId`, `avatar`, `deptId`, `email`, `password`, `registerTime`, `role`, `salt`, `sex`, `telephone`, `username`, `lastLoginTime`, `deleteFlag`) VALUES (15, 'https://xsgames.co/randomusers/assets/avatars/pixel/16.jpg', '1', NULL, '7e618b202c19a3e8038d2bfaa2eac6d8', '2023-05-16 14:14:47', '普通员工', '183d57b4fcdecf27f', '1', '11122223333', '赵晓雨', '2023-05-23 20:03:18', '0');
INSERT INTO `User` (`userId`, `avatar`, `deptId`, `email`, `password`, `registerTime`, `role`, `salt`, `sex`, `telephone`, `username`, `lastLoginTime`, `deleteFlag`) VALUES (16, 'https://xsgames.co/randomusers/assets/avatars/pixel/31.jpg', '1', NULL, '8d2fbd3ede6d7dbe3787fe578660fcdb', '2023-05-16 14:16:48', '普通员工', '693a098cfd30bdd6f', '1', '15566667777', '吴思颖', '2023-05-23 20:03:18', '0');
INSERT INTO `User` (`userId`, `avatar`, `deptId`, `email`, `password`, `registerTime`, `role`, `salt`, `sex`, `telephone`, `username`, `lastLoginTime`, `deleteFlag`) VALUES (17, 'https://xsgames.co/randomusers/assets/avatars/pixel/31.jpg', '28', NULL, 'ceb92286728b88981dcafc3d23f5b53a', '2023-05-16 14:17:07', '普通员工', 'ca192c46fb57a19b6', '1', '18877776666', '郑瑞阳', '2023-05-23 20:03:18', '0');
COMMIT;

-- ----------------------------
-- Table structure for UserFile
-- ----------------------------
DROP TABLE IF EXISTS `UserFile`;
CREATE TABLE `UserFile` (
  `userFileId` bigint NOT NULL AUTO_INCREMENT COMMENT '用户文件id',
  `deleteBatchNum` varchar(50) DEFAULT NULL COMMENT '删除批次号',
  `deleteFlag` int DEFAULT NULL COMMENT '删除标志 0-未删除 1-已删除',
  `deleteTime` varchar(25) DEFAULT NULL COMMENT '删除时间',
  `extendName` varchar(100) DEFAULT NULL COMMENT '扩展名',
  `fileId` bigint DEFAULT NULL COMMENT '文件id',
  `fileName` varchar(100) DEFAULT NULL COMMENT '文件名',
  `filePath` varchar(500) DEFAULT NULL COMMENT '文件路径',
  `isDir` int DEFAULT NULL COMMENT '是否是目录 0-否, 1-是',
  `uploadTime` varchar(25) DEFAULT NULL COMMENT '上传时间',
  `userId` bigint DEFAULT NULL COMMENT '用户id',
  PRIMARY KEY (`userFileId`)
) ENGINE=InnoDB AUTO_INCREMENT=69 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of UserFile
-- ----------------------------
BEGIN;
INSERT INTO `UserFile` (`userFileId`, `deleteBatchNum`, `deleteFlag`, `deleteTime`, `extendName`, `fileId`, `fileName`, `filePath`, `isDir`, `uploadTime`, `userId`) VALUES (1, '60b1fed0-7a2a-45fe-9d74-ad2d1e72f3cf', 1, '2023-05-05 06:50:47', 'pdf', 1, ' web前端开发', '/t/1/', 0, '2023-05-04 23:29:11', 1);
INSERT INTO `UserFile` (`userFileId`, `deleteBatchNum`, `deleteFlag`, `deleteTime`, `extendName`, `fileId`, `fileName`, `filePath`, `isDir`, `uploadTime`, `userId`) VALUES (2, 'ed52cb3c-7239-4bec-9a43-edf2d8e16ffb', 2, '2023-05-14 12:50:02', 'txt', 2, '5.1号订阅链接（里面有含小火箭-v2-cl）阿伟科技分享', '/', 0, '2023-05-04 23:29:58', 1);
INSERT INTO `UserFile` (`userFileId`, `deleteBatchNum`, `deleteFlag`, `deleteTime`, `extendName`, `fileId`, `fileName`, `filePath`, `isDir`, `uploadTime`, `userId`) VALUES (3, 'dde9dd27-0f75-452d-8825-42a340c199d2', 2, '2023-05-14 12:50:02', 'txt', 3, '4.20号订阅链接（里面有含小火箭-v2-cl）阿伟科技分享', '/', 0, '2023-05-04 23:29:58', 1);
INSERT INTO `UserFile` (`userFileId`, `deleteBatchNum`, `deleteFlag`, `deleteTime`, `extendName`, `fileId`, `fileName`, `filePath`, `isDir`, `uploadTime`, `userId`) VALUES (4, NULL, 1, '2023-05-14 19:08:49', 'html', 4, '404', '/gy/', 0, '2023-05-04 23:30:08', 1);
INSERT INTO `UserFile` (`userFileId`, `deleteBatchNum`, `deleteFlag`, `deleteTime`, `extendName`, `fileId`, `fileName`, `filePath`, `isDir`, `uploadTime`, `userId`) VALUES (5, '2436615b-4dca-44ba-984f-90927cf47c84', 2, '2023-05-19 13:54:47', 'html', 5, '50x', '/', 0, '2023-05-04 23:30:08', 1);
INSERT INTO `UserFile` (`userFileId`, `deleteBatchNum`, `deleteFlag`, `deleteTime`, `extendName`, `fileId`, `fileName`, `filePath`, `isDir`, `uploadTime`, `userId`) VALUES (6, 'e1792c64-fd1c-4b2f-80ae-10ec629af55a', 2, '2023-05-10 16:37:03', 'html', 6, '403', '/', 0, '2023-05-04 23:30:08', 1);
INSERT INTO `UserFile` (`userFileId`, `deleteBatchNum`, `deleteFlag`, `deleteTime`, `extendName`, `fileId`, `fileName`, `filePath`, `isDir`, `uploadTime`, `userId`) VALUES (7, 'dc9457bb-6884-4531-b9aa-236644854e73', 2, '2023-05-19 13:54:50', 'html', 7, 'index', '/', 0, '2023-05-04 23:30:08', 1);
INSERT INTO `UserFile` (`userFileId`, `deleteBatchNum`, `deleteFlag`, `deleteTime`, `extendName`, `fileId`, `fileName`, `filePath`, `isDir`, `uploadTime`, `userId`) VALUES (8, '18559365-466e-420e-be8a-9fb6e6f41aff', 2, '2023-05-19 13:55:06', '', 8, 'LICENSE', '/', 0, '2023-05-04 23:30:08', 1);
INSERT INTO `UserFile` (`userFileId`, `deleteBatchNum`, `deleteFlag`, `deleteTime`, `extendName`, `fileId`, `fileName`, `filePath`, `isDir`, `uploadTime`, `userId`) VALUES (9, '32b5a010-645e-4326-90ff-6e51b4400419', 2, '2023-05-19 13:55:06', 'md', 9, 'README', '/', 0, '2023-05-04 23:30:08', 1);
INSERT INTO `UserFile` (`userFileId`, `deleteBatchNum`, `deleteFlag`, `deleteTime`, `extendName`, `fileId`, `fileName`, `filePath`, `isDir`, `uploadTime`, `userId`) VALUES (10, '7886a168-fdf9-47a6-88e6-e4e27a4056c1', 2, '2023-05-19 13:55:06', 'css', 10, '404', '/', 0, '2023-05-04 23:30:16', 1);
INSERT INTO `UserFile` (`userFileId`, `deleteBatchNum`, `deleteFlag`, `deleteTime`, `extendName`, `fileId`, `fileName`, `filePath`, `isDir`, `uploadTime`, `userId`) VALUES (11, '5ae1cf22-0f70-4113-8bba-44ecd75448be', 2, '2023-05-19 13:55:06', 'css', 11, '404.min', '/', 0, '2023-05-04 23:30:16', 1);
INSERT INTO `UserFile` (`userFileId`, `deleteBatchNum`, `deleteFlag`, `deleteTime`, `extendName`, `fileId`, `fileName`, `filePath`, `isDir`, `uploadTime`, `userId`) VALUES (12, '3b9d7290-ab2e-4453-b6d6-e41d2c0bb8b7', 2, '2023-05-05 05:47:05', 'css', 10, '404', '/', 0, '2023-05-05 04:14:36', 1);
INSERT INTO `UserFile` (`userFileId`, `deleteBatchNum`, `deleteFlag`, `deleteTime`, `extendName`, `fileId`, `fileName`, `filePath`, `isDir`, `uploadTime`, `userId`) VALUES (13, '08fd6352-0e9b-43de-89d5-0f9fd352e137', 2, '2023-05-14 19:08:52', NULL, NULL, 't', '/', 1, '2023-05-05 04:53:31', 1);
INSERT INTO `UserFile` (`userFileId`, `deleteBatchNum`, `deleteFlag`, `deleteTime`, `extendName`, `fileId`, `fileName`, `filePath`, `isDir`, `uploadTime`, `userId`) VALUES (14, '33053f0a-64b1-4526-b7c6-78d49833ed31', 1, '2023-05-14 19:08:52', 'css', 11, '404.min', '/t/', 0, '2023-05-05 05:04:09', 1);
INSERT INTO `UserFile` (`userFileId`, `deleteBatchNum`, `deleteFlag`, `deleteTime`, `extendName`, `fileId`, `fileName`, `filePath`, `isDir`, `uploadTime`, `userId`) VALUES (15, '33053f0a-64b1-4526-b7c6-78d49833ed31', 1, '2023-05-14 19:08:52', 'png', 12, '网盘', '/t/', 0, '2023-05-05 05:12:41', 1);
INSERT INTO `UserFile` (`userFileId`, `deleteBatchNum`, `deleteFlag`, `deleteTime`, `extendName`, `fileId`, `fileName`, `filePath`, `isDir`, `uploadTime`, `userId`) VALUES (16, '0300e494-1415-4450-8b8e-dce80480ff48', 1, '2023-05-05 06:51:02', NULL, NULL, '1', '/t/', 1, '2023-05-05 05:47:26', 1);
INSERT INTO `UserFile` (`userFileId`, `deleteBatchNum`, `deleteFlag`, `deleteTime`, `extendName`, `fileId`, `fileName`, `filePath`, `isDir`, `uploadTime`, `userId`) VALUES (17, '5de48658-01d9-4bac-a530-97ab87045f74', 1, '2023-05-05 06:51:05', NULL, NULL, '1', '/t/', 1, '2023-05-05 05:47:30', 1);
INSERT INTO `UserFile` (`userFileId`, `deleteBatchNum`, `deleteFlag`, `deleteTime`, `extendName`, `fileId`, `fileName`, `filePath`, `isDir`, `uploadTime`, `userId`) VALUES (18, '2b9bed72-c8e6-4a9b-ac0f-48cd7528ea32', 2, '2023-05-14 19:08:49', NULL, NULL, 'gy', '/', 1, '2023-05-06 12:39:03', 1);
INSERT INTO `UserFile` (`userFileId`, `deleteBatchNum`, `deleteFlag`, `deleteTime`, `extendName`, `fileId`, `fileName`, `filePath`, `isDir`, `uploadTime`, `userId`) VALUES (19, 'a71dc04e-eddb-4dcf-8542-8409dab3d9ea', 2, '2023-05-19 13:55:06', 'zip', 15, '404-gh-pages', '/', 0, '2023-05-06 12:44:57', 1);
INSERT INTO `UserFile` (`userFileId`, `deleteBatchNum`, `deleteFlag`, `deleteTime`, `extendName`, `fileId`, `fileName`, `filePath`, `isDir`, `uploadTime`, `userId`) VALUES (20, '5a57e74c-83fb-4c62-b7a1-6186bac8a316', 2, '2023-05-19 13:55:06', 'jpeg', 13, 'IMG_1546', '/', 0, '2023-05-06 12:45:09', 1);
INSERT INTO `UserFile` (`userFileId`, `deleteBatchNum`, `deleteFlag`, `deleteTime`, `extendName`, `fileId`, `fileName`, `filePath`, `isDir`, `uploadTime`, `userId`) VALUES (21, NULL, 1, '2023-05-14 19:08:49', 'jpeg', 13, 'IMG_1546', '/gy/', 0, '2023-05-06 12:45:18', 1);
INSERT INTO `UserFile` (`userFileId`, `deleteBatchNum`, `deleteFlag`, `deleteTime`, `extendName`, `fileId`, `fileName`, `filePath`, `isDir`, `uploadTime`, `userId`) VALUES (22, 'f5112f77-d9fa-4e61-9e06-70696073549a', 2, '2023-05-14 19:08:46', NULL, NULL, '3', '/', 1, '2023-05-10 16:10:27', 1);
INSERT INTO `UserFile` (`userFileId`, `deleteBatchNum`, `deleteFlag`, `deleteTime`, `extendName`, `fileId`, `fileName`, `filePath`, `isDir`, `uploadTime`, `userId`) VALUES (23, 'c71a6508-8358-45a0-9275-3db101b5eb4c', 2, '2023-05-19 13:55:06', 'zip', 17, '实习资料', '/', 0, '2023-05-10 16:31:42', 1);
INSERT INTO `UserFile` (`userFileId`, `deleteBatchNum`, `deleteFlag`, `deleteTime`, `extendName`, `fileId`, `fileName`, `filePath`, `isDir`, `uploadTime`, `userId`) VALUES (24, '3b1639c3-3b52-453e-b0bf-091da7bafc59', 2, '2023-05-19 13:55:06', 'xls', 18, '！2023届计算机学院实习成绩+实习报告题目+实习单位汇总表', '/', 0, '2023-05-10 21:14:29', 1);
INSERT INTO `UserFile` (`userFileId`, `deleteBatchNum`, `deleteFlag`, `deleteTime`, `extendName`, `fileId`, `fileName`, `filePath`, `isDir`, `uploadTime`, `userId`) VALUES (25, '6cd44692-fbeb-4bae-933e-0261dbedcff0', 2, '2023-05-19 13:55:06', 'zip', 17, '实习资料', '/', 0, '2023-05-10 21:17:15', 1);
INSERT INTO `UserFile` (`userFileId`, `deleteBatchNum`, `deleteFlag`, `deleteTime`, `extendName`, `fileId`, `fileName`, `filePath`, `isDir`, `uploadTime`, `userId`) VALUES (26, 'a9c99a64-b218-4e38-b272-032069ea9bab', 2, '2023-05-19 13:55:06', 'gz', 19, 'jdk-20_linux-aarch64_bin.tar', '/', 0, '2023-05-10 21:24:16', 1);
INSERT INTO `UserFile` (`userFileId`, `deleteBatchNum`, `deleteFlag`, `deleteTime`, `extendName`, `fileId`, `fileName`, `filePath`, `isDir`, `uploadTime`, `userId`) VALUES (27, '7fc749cb-fb98-4308-8525-f3a5bb8c9078', 2, '2023-05-19 13:55:06', 'mov', 20, '屏幕录制2023-05-10 21.36.10', '/', 0, '2023-05-10 21:40:47', 1);
INSERT INTO `UserFile` (`userFileId`, `deleteBatchNum`, `deleteFlag`, `deleteTime`, `extendName`, `fileId`, `fileName`, `filePath`, `isDir`, `uploadTime`, `userId`) VALUES (28, '0163f650-3fa8-4c0f-9124-fe22d0f42179', 2, '2023-05-19 13:55:06', 'docx', 21, '2本科毕业设计说明书（论文）', '/', 0, '2023-05-14 18:52:49', 1);
INSERT INTO `UserFile` (`userFileId`, `deleteBatchNum`, `deleteFlag`, `deleteTime`, `extendName`, `fileId`, `fileName`, `filePath`, `isDir`, `uploadTime`, `userId`) VALUES (29, NULL, 0, NULL, NULL, NULL, '我的资源', '/', 1, '2023-05-19 13:53:14', 1);
INSERT INTO `UserFile` (`userFileId`, `deleteBatchNum`, `deleteFlag`, `deleteTime`, `extendName`, `fileId`, `fileName`, `filePath`, `isDir`, `uploadTime`, `userId`) VALUES (30, NULL, 0, NULL, NULL, NULL, '安装包', '/', 1, '2023-05-19 13:53:24', 1);
INSERT INTO `UserFile` (`userFileId`, `deleteBatchNum`, `deleteFlag`, `deleteTime`, `extendName`, `fileId`, `fileName`, `filePath`, `isDir`, `uploadTime`, `userId`) VALUES (31, NULL, 0, NULL, NULL, NULL, 'PPT', '/', 1, '2023-05-19 13:54:39', 1);
INSERT INTO `UserFile` (`userFileId`, `deleteBatchNum`, `deleteFlag`, `deleteTime`, `extendName`, `fileId`, `fileName`, `filePath`, `isDir`, `uploadTime`, `userId`) VALUES (32, 'fcc4437d-59b9-4480-a00e-d08c9461210a', 2, '2023-05-19 13:55:06', 'txt', 22, '5.16号订阅链接（里面有含小火箭-v2-cl）', '/', 0, '2023-05-17 22:30:40', 1);
INSERT INTO `UserFile` (`userFileId`, `deleteBatchNum`, `deleteFlag`, `deleteTime`, `extendName`, `fileId`, `fileName`, `filePath`, `isDir`, `uploadTime`, `userId`) VALUES (33, 'bb9c8a49-f6f7-4db7-9c91-f5ed3c969948', 0, '2023-05-19 14:05:19', 'docx', 21, '5.1工作报告', '/工作报告/', 0, '2023-05-19 13:57:25', 1);
INSERT INTO `UserFile` (`userFileId`, `deleteBatchNum`, `deleteFlag`, `deleteTime`, `extendName`, `fileId`, `fileName`, `filePath`, `isDir`, `uploadTime`, `userId`) VALUES (34, '76f9db9d-21ce-4cc5-93bd-0e12a0edad0d', 0, '2023-05-19 14:05:19', NULL, NULL, '工作报告', '/', 1, '2023-05-19 13:56:08', 1);
INSERT INTO `UserFile` (`userFileId`, `deleteBatchNum`, `deleteFlag`, `deleteTime`, `extendName`, `fileId`, `fileName`, `filePath`, `isDir`, `uploadTime`, `userId`) VALUES (35, 'bb9c8a49-f6f7-4db7-9c91-f5ed3c969948', 0, '2023-05-19 14:05:19', 'docx', 21, '5.2工作报告', '/工作报告/', 0, '2023-05-19 13:57:18', 1);
INSERT INTO `UserFile` (`userFileId`, `deleteBatchNum`, `deleteFlag`, `deleteTime`, `extendName`, `fileId`, `fileName`, `filePath`, `isDir`, `uploadTime`, `userId`) VALUES (36, 'bb9c8a49-f6f7-4db7-9c91-f5ed3c969948', 0, '2023-05-19 14:05:19', 'docx', 21, '5.3工作报告', '/工作报告/', 0, '2023-05-19 13:57:36', 1);
INSERT INTO `UserFile` (`userFileId`, `deleteBatchNum`, `deleteFlag`, `deleteTime`, `extendName`, `fileId`, `fileName`, `filePath`, `isDir`, `uploadTime`, `userId`) VALUES (37, 'bb9c8a49-f6f7-4db7-9c91-f5ed3c969948', 0, '2023-05-19 14:05:19', 'docx', 21, '5.4工作报告', '/工作报告/', 0, '2023-05-19 13:57:49', 1);
INSERT INTO `UserFile` (`userFileId`, `deleteBatchNum`, `deleteFlag`, `deleteTime`, `extendName`, `fileId`, `fileName`, `filePath`, `isDir`, `uploadTime`, `userId`) VALUES (38, 'bb9c8a49-f6f7-4db7-9c91-f5ed3c969948', 0, '2023-05-19 14:05:19', 'docx', 21, '5.5工作报告', '/工作报告/', 0, '2023-05-19 13:57:57', 1);
INSERT INTO `UserFile` (`userFileId`, `deleteBatchNum`, `deleteFlag`, `deleteTime`, `extendName`, `fileId`, `fileName`, `filePath`, `isDir`, `uploadTime`, `userId`) VALUES (39, 'bb9c8a49-f6f7-4db7-9c91-f5ed3c969948', 0, '2023-05-19 14:05:19', 'docx', 21, '5.6工作报告', '/工作报告/', 0, '2023-05-19 13:58:05', 1);
INSERT INTO `UserFile` (`userFileId`, `deleteBatchNum`, `deleteFlag`, `deleteTime`, `extendName`, `fileId`, `fileName`, `filePath`, `isDir`, `uploadTime`, `userId`) VALUES (40, 'bb9c8a49-f6f7-4db7-9c91-f5ed3c969948', 0, '2023-05-19 14:05:19', 'docx', 21, '5.7工作报告', '/工作报告/', 0, '2023-05-19 13:58:12', 1);
INSERT INTO `UserFile` (`userFileId`, `deleteBatchNum`, `deleteFlag`, `deleteTime`, `extendName`, `fileId`, `fileName`, `filePath`, `isDir`, `uploadTime`, `userId`) VALUES (41, 'bb9c8a49-f6f7-4db7-9c91-f5ed3c969948', 0, '2023-05-19 14:05:19', 'docx', 21, '5.8工作报告', '/工作报告/', 0, '2023-05-19 13:58:19', 1);
INSERT INTO `UserFile` (`userFileId`, `deleteBatchNum`, `deleteFlag`, `deleteTime`, `extendName`, `fileId`, `fileName`, `filePath`, `isDir`, `uploadTime`, `userId`) VALUES (42, 'bb9c8a49-f6f7-4db7-9c91-f5ed3c969948', 0, '2023-05-19 14:05:19', 'docx', 21, '5.9工作报告', '/工作报告/', 0, '2023-05-19 13:58:26', 1);
INSERT INTO `UserFile` (`userFileId`, `deleteBatchNum`, `deleteFlag`, `deleteTime`, `extendName`, `fileId`, `fileName`, `filePath`, `isDir`, `uploadTime`, `userId`) VALUES (43, 'bb9c8a49-f6f7-4db7-9c91-f5ed3c969948', 0, '2023-05-19 14:05:19', 'docx', 21, '5.10工作报告', '/工作报告/', 0, '2023-05-19 13:58:33', 1);
INSERT INTO `UserFile` (`userFileId`, `deleteBatchNum`, `deleteFlag`, `deleteTime`, `extendName`, `fileId`, `fileName`, `filePath`, `isDir`, `uploadTime`, `userId`) VALUES (44, 'bb9c8a49-f6f7-4db7-9c91-f5ed3c969948', 0, '2023-05-19 14:05:19', 'docx', 21, '5.11工作报告', '/工作报告/', 0, '2023-05-19 13:58:41', 1);
INSERT INTO `UserFile` (`userFileId`, `deleteBatchNum`, `deleteFlag`, `deleteTime`, `extendName`, `fileId`, `fileName`, `filePath`, `isDir`, `uploadTime`, `userId`) VALUES (45, 'bb9c8a49-f6f7-4db7-9c91-f5ed3c969948', 0, '2023-05-19 14:05:19', 'docx', 21, '5.12工作报告', '/工作报告/', 0, '2023-05-19 13:58:48', 1);
INSERT INTO `UserFile` (`userFileId`, `deleteBatchNum`, `deleteFlag`, `deleteTime`, `extendName`, `fileId`, `fileName`, `filePath`, `isDir`, `uploadTime`, `userId`) VALUES (46, 'bb9c8a49-f6f7-4db7-9c91-f5ed3c969948', 0, '2023-05-19 14:05:19', 'docx', 21, '5.13工作报告', '/工作报告/', 0, '2023-05-19 13:59:18', 1);
INSERT INTO `UserFile` (`userFileId`, `deleteBatchNum`, `deleteFlag`, `deleteTime`, `extendName`, `fileId`, `fileName`, `filePath`, `isDir`, `uploadTime`, `userId`) VALUES (47, 'bb9c8a49-f6f7-4db7-9c91-f5ed3c969948', 0, '2023-05-19 14:05:19', 'docx', 21, '5.14工作报告', '/工作报告/', 0, '2023-05-19 13:59:26', 1);
INSERT INTO `UserFile` (`userFileId`, `deleteBatchNum`, `deleteFlag`, `deleteTime`, `extendName`, `fileId`, `fileName`, `filePath`, `isDir`, `uploadTime`, `userId`) VALUES (48, 'bb9c8a49-f6f7-4db7-9c91-f5ed3c969948', 0, '2023-05-19 14:05:19', 'docx', 21, '5.15工作报告', '/工作报告/', 0, '2023-05-19 13:59:33', 1);
INSERT INTO `UserFile` (`userFileId`, `deleteBatchNum`, `deleteFlag`, `deleteTime`, `extendName`, `fileId`, `fileName`, `filePath`, `isDir`, `uploadTime`, `userId`) VALUES (49, 'bb9c8a49-f6f7-4db7-9c91-f5ed3c969948', 0, '2023-05-19 14:05:19', 'docx', 21, '5.16工作报告', '/工作报告/', 0, '2023-05-19 13:59:40', 1);
INSERT INTO `UserFile` (`userFileId`, `deleteBatchNum`, `deleteFlag`, `deleteTime`, `extendName`, `fileId`, `fileName`, `filePath`, `isDir`, `uploadTime`, `userId`) VALUES (50, 'bb9c8a49-f6f7-4db7-9c91-f5ed3c969948', 0, '2023-05-19 14:05:19', 'docx', 21, '5.17工作报告', '/工作报告/', 0, '2023-05-19 13:59:52', 1);
INSERT INTO `UserFile` (`userFileId`, `deleteBatchNum`, `deleteFlag`, `deleteTime`, `extendName`, `fileId`, `fileName`, `filePath`, `isDir`, `uploadTime`, `userId`) VALUES (51, 'bb9c8a49-f6f7-4db7-9c91-f5ed3c969948', 0, '2023-05-19 14:05:19', 'docx', 21, '5.18工作报告', '/工作报告/', 0, '2023-05-19 14:00:00', 1);
INSERT INTO `UserFile` (`userFileId`, `deleteBatchNum`, `deleteFlag`, `deleteTime`, `extendName`, `fileId`, `fileName`, `filePath`, `isDir`, `uploadTime`, `userId`) VALUES (52, 'bb9c8a49-f6f7-4db7-9c91-f5ed3c969948', 0, '2023-05-19 14:05:19', 'docx', 21, '5.19工作报告', '/工作报告/', 0, '2023-05-19 14:03:50', 1);
INSERT INTO `UserFile` (`userFileId`, `deleteBatchNum`, `deleteFlag`, `deleteTime`, `extendName`, `fileId`, `fileName`, `filePath`, `isDir`, `uploadTime`, `userId`) VALUES (53, NULL, 0, NULL, 'xlsx', 16, '项目抽查名单', '/', 0, '2023-05-19 14:05:51', 1);
INSERT INTO `UserFile` (`userFileId`, `deleteBatchNum`, `deleteFlag`, `deleteTime`, `extendName`, `fileId`, `fileName`, `filePath`, `isDir`, `uploadTime`, `userId`) VALUES (54, NULL, 0, NULL, 'zip', 15, '404-gh-pages', '/', 0, '2023-05-19 14:06:00', 1);
INSERT INTO `UserFile` (`userFileId`, `deleteBatchNum`, `deleteFlag`, `deleteTime`, `extendName`, `fileId`, `fileName`, `filePath`, `isDir`, `uploadTime`, `userId`) VALUES (55, NULL, 0, NULL, NULL, NULL, '图片资源', '/', 1, '2023-05-19 14:06:32', 1);
INSERT INTO `UserFile` (`userFileId`, `deleteBatchNum`, `deleteFlag`, `deleteTime`, `extendName`, `fileId`, `fileName`, `filePath`, `isDir`, `uploadTime`, `userId`) VALUES (56, NULL, 0, NULL, 'png', 24, 'bg_btn', '/图片资源/', 0, '2023-05-19 14:06:49', 1);
INSERT INTO `UserFile` (`userFileId`, `deleteBatchNum`, `deleteFlag`, `deleteTime`, `extendName`, `fileId`, `fileName`, `filePath`, `isDir`, `uploadTime`, `userId`) VALUES (57, NULL, 0, NULL, 'png', 23, '404-dark', '/图片资源/', 0, '2023-05-19 14:06:49', 1);
INSERT INTO `UserFile` (`userFileId`, `deleteBatchNum`, `deleteFlag`, `deleteTime`, `extendName`, `fileId`, `fileName`, `filePath`, `isDir`, `uploadTime`, `userId`) VALUES (58, NULL, 0, NULL, 'png', 25, 'btn', '/图片资源/', 0, '2023-05-19 14:06:49', 1);
INSERT INTO `UserFile` (`userFileId`, `deleteBatchNum`, `deleteFlag`, `deleteTime`, `extendName`, `fileId`, `fileName`, `filePath`, `isDir`, `uploadTime`, `userId`) VALUES (59, NULL, 0, NULL, 'gif', 26, 'ajax-loader', '/图片资源/', 0, '2023-05-19 14:06:58', 1);
INSERT INTO `UserFile` (`userFileId`, `deleteBatchNum`, `deleteFlag`, `deleteTime`, `extendName`, `fileId`, `fileName`, `filePath`, `isDir`, `uploadTime`, `userId`) VALUES (60, NULL, 0, NULL, 'png', 27, 'favicon', '/图片资源/', 0, '2023-05-19 14:07:19', 1);
INSERT INTO `UserFile` (`userFileId`, `deleteBatchNum`, `deleteFlag`, `deleteTime`, `extendName`, `fileId`, `fileName`, `filePath`, `isDir`, `uploadTime`, `userId`) VALUES (61, '5999f828-5f59-419b-b668-76bd6cd12de7', 1, '2023-05-19 14:09:18', 'mov', 28, '屏幕录制2023-05-19 14.08.01', '/', 0, '2023-05-19 14:08:46', 1);
INSERT INTO `UserFile` (`userFileId`, `deleteBatchNum`, `deleteFlag`, `deleteTime`, `extendName`, `fileId`, `fileName`, `filePath`, `isDir`, `uploadTime`, `userId`) VALUES (62, NULL, 0, NULL, 'mp4', 28, '屏幕录制2023-05-19 14.08.01', '/', 0, '2023-05-19 14:09:30', 1);
INSERT INTO `UserFile` (`userFileId`, `deleteBatchNum`, `deleteFlag`, `deleteTime`, `extendName`, `fileId`, `fileName`, `filePath`, `isDir`, `uploadTime`, `userId`) VALUES (63, NULL, 0, NULL, 'mp3', 29, 'y860', '/', 0, '2023-05-19 14:12:15', 1);
INSERT INTO `UserFile` (`userFileId`, `deleteBatchNum`, `deleteFlag`, `deleteTime`, `extendName`, `fileId`, `fileName`, `filePath`, `isDir`, `uploadTime`, `userId`) VALUES (64, 'b4db3636-7660-4864-a582-58919d7032c1', 2, '2023-05-22 00:11:10', 'jpeg', 13, 'IMG_1546', '/', 0, '2023-05-22 00:11:02', 1);
INSERT INTO `UserFile` (`userFileId`, `deleteBatchNum`, `deleteFlag`, `deleteTime`, `extendName`, `fileId`, `fileName`, `filePath`, `isDir`, `uploadTime`, `userId`) VALUES (65, '583da85a-78a9-4882-83ab-c75cc1cec6c6', 2, '2023-05-22 00:12:01', 'JPG', 13, 'IMG_1546', '/', 0, '2023-05-22 00:11:52', 1);
INSERT INTO `UserFile` (`userFileId`, `deleteBatchNum`, `deleteFlag`, `deleteTime`, `extendName`, `fileId`, `fileName`, `filePath`, `isDir`, `uploadTime`, `userId`) VALUES (66, '6c64fede-81b5-4204-a296-5b4a3a23663c', 2, '2023-05-22 00:12:43', 'png', 13, 'IMG_1546', '/', 0, '2023-05-22 00:12:33', 1);
INSERT INTO `UserFile` (`userFileId`, `deleteBatchNum`, `deleteFlag`, `deleteTime`, `extendName`, `fileId`, `fileName`, `filePath`, `isDir`, `uploadTime`, `userId`) VALUES (67, 'b98de381-f52f-46e2-aa85-21cd61f76481', 2, '2023-05-22 00:13:14', 'png', 12, '网盘', '/', 0, '2023-05-22 00:12:55', 1);
INSERT INTO `UserFile` (`userFileId`, `deleteBatchNum`, `deleteFlag`, `deleteTime`, `extendName`, `fileId`, `fileName`, `filePath`, `isDir`, `uploadTime`, `userId`) VALUES (68, NULL, 0, NULL, 'png', 33, 'MVVM', '/', 0, '2023-05-22 00:13:57', 1);
COMMIT;

SET FOREIGN_KEY_CHECKS = 1;
