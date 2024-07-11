/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8mb3 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

DROP DATABASE IF EXISTS `t161`;
CREATE DATABASE IF NOT EXISTS `t161` /*!40100 DEFAULT CHARACTER SET utf8mb3 */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `t161`;

DROP TABLE IF EXISTS `bingshi`;
CREATE TABLE IF NOT EXISTS `bingshi` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键 ',
  `yisheng_id` int DEFAULT NULL COMMENT '发布医生',
  `yonghu_id` int DEFAULT NULL COMMENT '用户',
  `bingshi_name` varchar(200) DEFAULT NULL COMMENT '病名 Search111',
  `bingshi_bingyin` varchar(200) DEFAULT NULL COMMENT '病因',
  `bingshi_xianzhuang` varchar(200) DEFAULT NULL COMMENT '现状',
  `bingshi_text` text COMMENT '药单',
  `bingshi_jinji` varchar(200) DEFAULT NULL COMMENT '禁忌',
  `bingshi_zhuyishixiang` varchar(200) DEFAULT NULL COMMENT '注意事项',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb3 COMMENT='病史';

DELETE FROM `bingshi`;
INSERT INTO `bingshi` (`id`, `yisheng_id`, `yonghu_id`, `bingshi_name`, `bingshi_bingyin`, `bingshi_xianzhuang`, `bingshi_text`, `bingshi_jinji`, `bingshi_zhuyishixiang`, `create_time`) VALUES
	(1, 2, 3, '病名1', '病因1', '现状1', '药单1', '禁忌1', '注意事项1', '2022-02-24 09:34:16'),
	(2, 3, 1, '病名2', '病因2', '现状2', '药单2', '禁忌2', '注意事项2', '2022-02-24 09:34:16'),
	(3, 2, 3, '病名3', '病因3', '现状3', '药单3', '禁忌3', '注意事项3', '2022-02-24 09:34:16'),
	(4, 3, 2, '病名4', '病因4', '现状4', '药单4', '禁忌4', '注意事项4', '2022-02-24 09:34:16'),
	(5, 3, 3, '病名5', '病因5', '现状5', '药单5', '禁忌5', '注意事项5', '2022-02-24 09:34:16'),
	(12, 1, 3, '病名6', '病因6', '现状6', '药单6', '禁忌6', '注意事项6', '2022-02-24 11:07:03');

DROP TABLE IF EXISTS `config`;
CREATE TABLE IF NOT EXISTS `config` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(100) NOT NULL COMMENT '配置参数名称',
  `value` varchar(100) DEFAULT NULL COMMENT '配置参数值',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb3 COMMENT='配置文件';

DELETE FROM `config`;
INSERT INTO `config` (`id`, `name`, `value`) VALUES
	(1, '轮播图1', 'http://localhost:8080/yiyuanziyuanguanli/upload/config1.jpg'),
	(2, '轮播图2', 'http://localhost:8080/yiyuanziyuanguanli/upload/config2.jpg'),
	(3, '轮播图3', 'http://localhost:8080/yiyuanziyuanguanli/upload/config3.jpg');

DROP TABLE IF EXISTS `dictionary`;
CREATE TABLE IF NOT EXISTS `dictionary` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键',
  `dic_code` varchar(200) DEFAULT NULL COMMENT '字段',
  `dic_name` varchar(200) DEFAULT NULL COMMENT '字段名',
  `code_index` int DEFAULT NULL COMMENT '编码',
  `index_name` varchar(200) DEFAULT NULL COMMENT '编码名字  Search111 ',
  `super_id` int DEFAULT NULL COMMENT '父字段id',
  `beizhu` varchar(200) DEFAULT NULL COMMENT '备注',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb3 COMMENT='字典表';

DELETE FROM `dictionary`;
INSERT INTO `dictionary` (`id`, `dic_code`, `dic_name`, `code_index`, `index_name`, `super_id`, `beizhu`, `create_time`) VALUES
	(1, 'yaopin_types', '药品类型', 1, '药品类型1', NULL, NULL, '2022-02-24 09:31:35'),
	(2, 'yaopin_types', '药品类型', 2, '药品类型2', NULL, NULL, '2022-02-24 09:31:35'),
	(3, 'yaopin_types', '药品类型', 3, '药品类型3', NULL, NULL, '2022-02-24 09:31:35'),
	(4, 'sex_types', '性别', 1, '男', NULL, NULL, '2022-02-24 09:31:35'),
	(5, 'sex_types', '性别', 2, '女', NULL, NULL, '2022-02-24 09:31:35'),
	(6, 'yisheng_types', '科室', 1, '科室1', NULL, NULL, '2022-02-24 09:31:35'),
	(7, 'yisheng_types', '科室', 2, '科室2', NULL, NULL, '2022-02-24 09:31:35'),
	(8, 'yisheng_types', '科室', 3, '科室3', NULL, NULL, '2022-02-24 09:31:35'),
	(9, 'yishengyuyue_yesno_types', '预约结果', 1, '未处理', NULL, NULL, '2022-02-24 09:31:35'),
	(10, 'yishengyuyue_yesno_types', '预约结果', 2, '同意', NULL, NULL, '2022-02-24 09:31:35'),
	(11, 'yishengyuyue_yesno_types', '预约结果', 3, '拒绝', NULL, NULL, '2022-02-24 09:31:35'),
	(12, 'news_types', '公告信息类型', 1, '公告信息类型1', NULL, NULL, '2022-02-24 09:31:35'),
	(13, 'news_types', '公告信息类型', 2, '公告信息类型2', NULL, NULL, '2022-02-24 09:31:35'),
	(14, 'news_types', '公告信息类型', 3, '公告信息类型3', NULL, NULL, '2022-02-24 09:31:35');

DROP TABLE IF EXISTS `news`;
CREATE TABLE IF NOT EXISTS `news` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键',
  `news_name` varchar(200) DEFAULT NULL COMMENT '公告信息标题  Search111 ',
  `news_types` int DEFAULT NULL COMMENT '公告信息类型  Search111 ',
  `news_photo` varchar(200) DEFAULT NULL COMMENT '公告信息图片',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '公告信息时间',
  `news_content` text COMMENT '公告信息详情',
  `news_delete` int DEFAULT '1' COMMENT '假删',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show1 show2 nameShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb3 COMMENT='公告信息';

DELETE FROM `news`;
INSERT INTO `news` (`id`, `news_name`, `news_types`, `news_photo`, `insert_time`, `news_content`, `news_delete`, `create_time`) VALUES
	(1, '公告信息标题1', 1, 'http://localhost:8080/yiyuanziyuanguanli/upload/news1.jpg', '2022-02-24 09:34:16', '公告信息详情1', 1, '2022-02-24 09:34:16'),
	(2, '公告信息标题2', 2, 'http://localhost:8080/yiyuanziyuanguanli/upload/news2.jpg', '2022-02-24 09:34:16', '公告信息详情2', 1, '2022-02-24 09:34:16'),
	(3, '公告信息标题3', 1, 'http://localhost:8080/yiyuanziyuanguanli/upload/news3.jpg', '2022-02-24 09:34:16', '公告信息详情3', 1, '2022-02-24 09:34:16'),
	(4, '公告信息标题4', 2, 'http://localhost:8080/yiyuanziyuanguanli/upload/news4.jpg', '2022-02-24 09:34:16', '公告信息详情4', 1, '2022-02-24 09:34:16'),
	(5, '公告信息标题5', 2, 'http://localhost:8080/yiyuanziyuanguanli/upload/news5.jpg', '2022-02-24 09:34:16', '公告信息详情5', 1, '2022-02-24 09:34:16');

DROP TABLE IF EXISTS `token`;
CREATE TABLE IF NOT EXISTS `token` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `userid` bigint NOT NULL COMMENT '用户id',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `tablename` varchar(100) DEFAULT NULL COMMENT '表名',
  `role` varchar(100) DEFAULT NULL COMMENT '角色',
  `token` varchar(200) NOT NULL COMMENT '密码',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  `expiratedtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '过期时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb3 COMMENT='token表';

DELETE FROM `token`;
INSERT INTO `token` (`id`, `userid`, `username`, `tablename`, `role`, `token`, `addtime`, `expiratedtime`) VALUES
	(1, 1, 'admin', 'users', '管理员', 'm6c6sr47kev6on9m3bur11uu0mpu9i86', '2022-02-24 09:44:06', '2024-04-28 14:13:38'),
	(2, 1, 'a1', 'yonghu', '用户', 'l1svsm48j7kiwn9uhj2x9xqj9gxbrmv6', '2022-02-24 09:48:33', '2024-04-28 14:15:42'),
	(3, 1, 'a1', 'yisheng', '医生', 'gxb33si991wtn1ezctlaqngdr8zzgao1', '2022-02-24 09:54:51', '2024-04-28 14:15:10'),
	(4, 2, 'a2', 'yisheng', '医生', '1p0vn7uisxlcbitalf3l1swdrntdl2d7', '2022-02-24 09:56:06', '2022-02-24 10:56:06');

DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `password` varchar(100) NOT NULL COMMENT '密码',
  `role` varchar(100) DEFAULT '管理员' COMMENT '角色',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb3 COMMENT='用户表';

DELETE FROM `users`;
INSERT INTO `users` (`id`, `username`, `password`, `role`, `addtime`) VALUES
	(1, 'admin', '123456', '管理员', '2021-02-25 07:59:12');

DROP TABLE IF EXISTS `yaopin`;
CREATE TABLE IF NOT EXISTS `yaopin` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键 ',
  `yaopin_name` varchar(200) DEFAULT NULL COMMENT '药品名称 Search111',
  `yaopin_photo` varchar(200) DEFAULT NULL COMMENT '药品图片',
  `yaopin_chyengfen` varchar(200) DEFAULT NULL COMMENT '主要成分',
  `yaopin_kucun_number` int DEFAULT NULL COMMENT '库存',
  `yaopin_shiyongfanwei` varchar(200) DEFAULT NULL COMMENT '适用范围',
  `yaopin_beizhu` varchar(200) DEFAULT NULL COMMENT '备注',
  `yaopin_jiangshi` decimal(10,2) DEFAULT NULL COMMENT '价格',
  `yaopin_types` int DEFAULT NULL COMMENT '药品类型 Search111',
  `yaopin_content` text COMMENT '详情',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show1 show2 photoShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb3 COMMENT='药品';

DELETE FROM `yaopin`;
INSERT INTO `yaopin` (`id`, `yaopin_name`, `yaopin_photo`, `yaopin_chyengfen`, `yaopin_kucun_number`, `yaopin_shiyongfanwei`, `yaopin_beizhu`, `yaopin_jiangshi`, `yaopin_types`, `yaopin_content`, `create_time`) VALUES
	(1, '药品名称1', 'http://localhost:8080/yiyuanziyuanguanli/upload/yaopin1.jpg', '主要成分1', 10, '适用范围1', '备注1', 661.36, 1, '详情1', '2022-02-24 09:34:16'),
	(2, '药品名称2', 'http://localhost:8080/yiyuanziyuanguanli/upload/yaopin2.jpg', '主要成分2', 20, '适用范围2', '备注2', 91.82, 2, '详情2', '2022-02-24 09:34:16'),
	(3, '药品名称3', 'http://localhost:8080/yiyuanziyuanguanli/upload/yaopin3.jpg', '主要成分3', 30, '适用范围3', '备注3', 237.34, 3, '详情3', '2022-02-24 09:34:16'),
	(4, '药品名称4', 'http://localhost:8080/yiyuanziyuanguanli/upload/yaopin4.jpg', '主要成分4', 40, '适用范围4', '备注4', 305.12, 1, '详情4', '2022-02-24 09:34:16'),
	(5, '药品名称5', 'http://localhost:8080/yiyuanziyuanguanli/upload/yaopin5.jpg', '主要成分5', 149, '适用范围5', '备注5', 75.68, 1, '详情5', '2022-02-24 09:34:16');

DROP TABLE IF EXISTS `yisheng`;
CREATE TABLE IF NOT EXISTS `yisheng` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(200) DEFAULT NULL COMMENT '账户',
  `password` varchar(200) DEFAULT NULL COMMENT '密码',
  `yisheng_uuid_number` varchar(200) DEFAULT NULL COMMENT '医生工号',
  `yisheng_name` varchar(200) DEFAULT NULL COMMENT '医生姓名 Search111 ',
  `yisheng_photo` varchar(255) DEFAULT NULL COMMENT '头像',
  `yisheng_phone` varchar(200) DEFAULT NULL COMMENT '联系方式',
  `yisheng_id_number` varchar(200) DEFAULT NULL COMMENT '医生身份证号 ',
  `yisheng_email` varchar(200) DEFAULT NULL COMMENT '邮箱',
  `sex_types` int DEFAULT NULL COMMENT '性别 Search111 ',
  `yisheng_gongzuoshij` varchar(255) DEFAULT NULL COMMENT '工作时间',
  `yisheng_guahao` varchar(200) DEFAULT NULL COMMENT '挂号须知',
  `yisheng_new_money` decimal(10,2) DEFAULT NULL COMMENT '挂号价格',
  `yisheng_zhichneg` varchar(200) DEFAULT NULL COMMENT '职称',
  `yisheng_types` int DEFAULT NULL COMMENT '科室 Search111 ',
  `yisheng_content` text COMMENT '简介',
  `yisheng_delete` int DEFAULT '1' COMMENT '假删',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show1 show2 photoShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb3 COMMENT='医生';

DELETE FROM `yisheng`;
INSERT INTO `yisheng` (`id`, `username`, `password`, `yisheng_uuid_number`, `yisheng_name`, `yisheng_photo`, `yisheng_phone`, `yisheng_id_number`, `yisheng_email`, `sex_types`, `yisheng_gongzuoshij`, `yisheng_guahao`, `yisheng_new_money`, `yisheng_zhichneg`, `yisheng_types`, `yisheng_content`, `yisheng_delete`, `create_time`) VALUES
	(1, '医生1', '123456', '164569525637111', '医生姓名1', 'http://localhost:8080/yiyuanziyuanguanli/upload/yisheng1.jpg', '17703786901', '410224199610232001', '1@qq.com', 2, '星期1、2、3111', '挂号须知1', 176.30, '职称1', 3, '<p>简介1</p>', 1, '2022-02-24 09:34:16'),
	(2, '医生2', '123456', '164569525637115', '医生姓名2', 'http://localhost:8080/yiyuanziyuanguanli/upload/yisheng2.jpg', '17703786902', '410224199610232002', '2@qq.com', 2, '星期2、4、5', '挂号须知2', 204.33, '职称2', 1, '简介2', 1, '2022-02-24 09:34:16'),
	(3, '医生3', '123456', '16456952563745', '医生姓名3', 'http://localhost:8080/yiyuanziyuanguanli/upload/yisheng3.jpg', '17703786903', '410224199610232003', '3@qq.com', 2, '星期1、3、5', '挂号须知3', 334.80, '职称3', 3, '简介3', 1, '2022-02-24 09:34:16');

DROP TABLE IF EXISTS `yishengyuyue`;
CREATE TABLE IF NOT EXISTS `yishengyuyue` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键 ',
  `yisheng_id` int DEFAULT NULL COMMENT '医生',
  `yonghu_id` int DEFAULT NULL COMMENT '用户',
  `yishengyuyue_yesno_types` int DEFAULT NULL COMMENT '预约结果',
  `yishengyuyue_time` timestamp NULL DEFAULT NULL COMMENT '预约时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show1 show2 photoShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb3 COMMENT='医生预约';

DELETE FROM `yishengyuyue`;
INSERT INTO `yishengyuyue` (`id`, `yisheng_id`, `yonghu_id`, `yishengyuyue_yesno_types`, `yishengyuyue_time`, `create_time`) VALUES
	(1, 3, 2, 1, '2022-02-24 09:34:16', '2022-02-24 09:34:16'),
	(2, 2, 3, 1, '2022-02-24 09:34:16', '2022-02-24 09:34:16'),
	(3, 2, 3, 1, '2022-02-24 09:34:16', '2022-02-24 09:34:16'),
	(4, 1, 2, 2, '2022-02-24 09:34:16', '2022-02-24 09:34:16'),
	(5, 2, 1, 1, '2022-02-24 09:34:16', '2022-02-24 09:34:16'),
	(12, 3, 1, 3, '2022-02-24 16:00:00', '2022-02-24 11:05:11');

DROP TABLE IF EXISTS `yonghu`;
CREATE TABLE IF NOT EXISTS `yonghu` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(200) DEFAULT NULL COMMENT '账户',
  `password` varchar(200) DEFAULT NULL COMMENT '密码',
  `yonghu_name` varchar(200) DEFAULT NULL COMMENT '用户姓名 Search111 ',
  `yonghu_photo` varchar(255) DEFAULT NULL COMMENT '头像',
  `yonghu_phone` varchar(200) DEFAULT NULL COMMENT '用户手机号',
  `yonghu_id_number` varchar(200) DEFAULT NULL COMMENT '用户身份证号 ',
  `yonghu_email` varchar(200) DEFAULT NULL COMMENT '邮箱',
  `sex_types` int DEFAULT NULL COMMENT '性别 Search111 ',
  `yonghu_delete` int DEFAULT '1' COMMENT '假删',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb3 COMMENT='用户';

DELETE FROM `yonghu`;
INSERT INTO `yonghu` (`id`, `username`, `password`, `yonghu_name`, `yonghu_photo`, `yonghu_phone`, `yonghu_id_number`, `yonghu_email`, `sex_types`, `yonghu_delete`, `create_time`) VALUES
	(1, '用户1', '123456', '用户姓名1', 'http://localhost:8080/yiyuanziyuanguanli/upload/yonghu1.jpg', '17703786901', '410224199610232001', '1@qq.com', 1, 1, '2022-02-24 09:34:16'),
	(2, '用户2', '123456', '用户姓名2', 'http://localhost:8080/yiyuanziyuanguanli/upload/yonghu2.jpg', '17703786902', '410224199610232002', '2@qq.com', 1, 1, '2022-02-24 09:34:16'),
	(3, '用户3', '123456', '用户姓名3', 'http://localhost:8080/yiyuanziyuanguanli/upload/yonghu3.jpg', '17703786903', '410224199610232003', '3@qq.com', 1, 1, '2022-02-24 09:34:16');

DROP TABLE IF EXISTS `zhuyuan`;
CREATE TABLE IF NOT EXISTS `zhuyuan` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键 ',
  `yisheng_id` int DEFAULT NULL COMMENT '发布医生',
  `yonghu_id` int DEFAULT NULL COMMENT '用户',
  `zhuyuan_name` varchar(200) DEFAULT NULL COMMENT '病房地址',
  `zhuyuan_fangjianhao` varchar(200) DEFAULT NULL COMMENT '房间号',
  `zhuyuan_chuanghao` varchar(200) DEFAULT NULL COMMENT '床号',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb3 COMMENT='住院';

DELETE FROM `zhuyuan`;
INSERT INTO `zhuyuan` (`id`, `yisheng_id`, `yonghu_id`, `zhuyuan_name`, `zhuyuan_fangjianhao`, `zhuyuan_chuanghao`, `create_time`) VALUES
	(1, 2, 2, '病房地址1', '房间号1', '床号1', '2022-02-24 09:34:16'),
	(2, 3, 2, '病房地址2', '房间号2', '床号2', '2022-02-24 09:34:16'),
	(3, 3, 3, '病房地址3', '房间号3', '床号3', '2022-02-24 09:34:16'),
	(4, 1, 3, '病房地址4', '房间号4', '床号4', '2022-02-24 09:34:16'),
	(5, 3, 1, '病房地址5', '房间号5', '床号5', '2022-02-24 09:34:16'),
	(12, 1, 2, '病房地址6', '房间号6', '床号6', '2022-02-24 11:06:31');

/*!40103 SET TIME_ZONE=IFNULL(@OLD_TIME_ZONE, 'system') */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
