/*
SQLyog Ultimate v11.24 (32 bit)
MySQL - 5.5.41 : Database - folkmuisc
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`folkmuisc` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `folkmuisc`;

/*Table structure for table `footprint` */

DROP TABLE IF EXISTS `footprint`;

CREATE TABLE `footprint` (
  `footprint_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '用户足迹表ID',
  `footprint_list` varchar(100) DEFAULT NULL COMMENT '歌单集合',
  `footprint_num` int(11) DEFAULT NULL COMMENT '用户看过的歌曲数量，最大为10首',
  `user_id` int(11) NOT NULL COMMENT '用户ID',
  PRIMARY KEY (`footprint_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

/*Data for the table `footprint` */

insert  into `footprint`(`footprint_id`,`footprint_list`,`footprint_num`,`user_id`) values (1,'1, 2, 3',3,1),(2,'2, 5, 8, 9, 15, 16',6,2);

/*Table structure for table `mv` */

DROP TABLE IF EXISTS `mv`;

CREATE TABLE `mv` (
  `mv_id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'mvID',
  `song_id` int(11) DEFAULT NULL COMMENT '歌曲ID',
  `song_name` varchar(50) DEFAULT NULL COMMENT '歌曲名',
  `singer_id` int(11) DEFAULT NULL COMMENT '歌手ID',
  `singer_name` varchar(30) DEFAULT NULL COMMENT '歌手名',
  `mv_picture_src` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL COMMENT 'mv图片路径',
  `mv_name` varchar(30) DEFAULT NULL COMMENT 'mv名称',
  `mv_src` varchar(255) DEFAULT NULL COMMENT 'mv视频文件路径',
  `mv_createdate` varchar(20) DEFAULT NULL COMMENT 'mv发行时间',
  PRIMARY KEY (`mv_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

/*Data for the table `mv` */

insert  into `mv`(`mv_id`,`song_id`,`song_name`,`singer_id`,`singer_name`,`mv_picture_src`,`mv_name`,`mv_src`,`mv_createdate`) values (1,NULL,'Baby ，До свидания (达尼亚)',9,'朴树','C:\\muisc\\picture\\mv\\Baby ，До свидания (达尼亚).jpg','Baby ，До свидания (达尼亚)','C:\\muisc\\mv\\朴树 - Baby ，До свидания (达尼亚).mp4','1534086567864'),(2,1,'斑马，斑马',10,'宋冬野','C:\\muisc\\picture\\mv\\斑马，斑马.jpg','斑马，斑马','C:\\muisc\\mv\\宋冬野 - 斑马，斑马.mp4','1534086537864'),(3,3,'成都',2,'赵雷','C:\\muisc\\picture\\mv\\成都.jpg','成都','C:\\muisc\\mv\\赵雷 - 成都.mp4','1534086536864'),(4,NULL,'董小姐',10,'宋冬野','C:\\muisc\\picture\\mv\\董小姐.png','董小姐','C:\\muisc\\mv\\宋冬野 - 董小姐.mp4',NULL),(5,NULL,'关于郑州的记忆',7,'李志','C:\\muisc\\picture\\mv\\关于郑州的记忆.png','关于郑州的记忆','C:\\muisc\\mv\\李志 - 关于郑州的记忆.mp4',NULL),(6,NULL,'皆非',8,'马頔','C:\\muisc\\picture\\mv\\皆非.jpg','皆非','C:\\muisc\\mv\\马頔 - 皆非.mp4',NULL),(7,NULL,'借我',12,'谢春花','C:\\muisc\\picture\\mv\\借我.jpg','借我','C:\\muisc\\mv\\谢春花 - 借我.mp4',NULL),(8,NULL,'旧时光，我是时间的新欢',13,'尧十三','C:\\muisc\\picture\\mv\\旧时光，我是时间的新欢.png','旧情人，我是时间的新欢','C:\\muisc\\mv\\尧十三 - 旧情人，我是时间的新欢.mp4',NULL),(9,NULL,'理想',2,'赵雷','C:\\muisc\\picture\\mv\\理想.jpg','理想','C:\\muisc\\mv\\赵雷 - 理想.mp4',NULL),(10,NULL,'理想三旬',12,'谢春花','C:\\muisc\\picture\\mv\\理想三旬.png','理想三旬','C:\\muisc\\mv\\谢春花 - 理想三旬.mp4',NULL),(11,NULL,'玫瑰',4,'贰佰','C:\\muisc\\picture\\mv\\玫瑰.png','玫瑰','C:\\muisc\\mv\\贰佰 - 玫瑰.mp4',NULL),(12,NULL,'南方姑娘',2,'赵雷','C:\\muisc\\picture\\mv\\南方姑娘.jpg','南方姑娘','C:\\muisc\\mv\\赵雷 - 南方姑娘.mp4',NULL),(13,NULL,'南山南',8,'马頔','C:\\muisc\\picture\\mv\\南山南.jpg','南山南','C:\\muisc\\mv\\马頔 - 南山南.mp4',NULL),(14,NULL,'平凡之路',9,'朴树','C:\\muisc\\picture\\mv\\平凡之路.png','平凡之路','C:\\muisc\\mv\\朴树 - 平凡之路.mp4',NULL),(15,NULL,'青春再见',6,'老狼','C:\\muisc\\picture\\mv\\青春再见.png','青春再见','C:\\muisc\\mv\\水木年华 - 青春再见.mp4',NULL),(16,NULL,'清白之年',9,'朴树','C:\\muisc\\picture\\mv\\清白之年.jpg','清白之年','C:\\muisc\\mv\\王珞丹,朴树 - 清白之年 2017跨界歌王 第十二期 现场版.mp4',NULL),(17,NULL,'我要你',6,'老狼','C:\\muisc\\picture\\mv\\我要你.jpg','我要你','C:\\muisc\\mv\\老狼,任素汐 - 我要你.mp4',NULL),(18,NULL,'我一定会爱上你',12,'谢春花','C:\\muisc\\picture\\mv\\我一定会爱上你.jpg','我一定会爱上你','C:\\muisc\\mv\\谢春花 - 我一定会爱上你.mp4',NULL),(19,NULL,'小梦大半',3,'陈粒','C:\\muisc\\picture\\mv\\小梦大半.jpg','小梦大半','C:\\muisc\\mv\\陈粒 - 2016陈粒“小梦大半”巡回演唱会上海站 宣传.mp4',NULL),(20,NULL,'易燃易爆炸',3,'陈粒','C:\\muisc\\picture\\mv\\易燃易爆炸.png','易燃易爆炸','C:\\muisc\\mv\\陈粒 - 易燃易爆炸.mp4',NULL);

/*Table structure for table `random` */

DROP TABLE IF EXISTS `random`;

CREATE TABLE `random` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `songIdList` varchar(50) NOT NULL COMMENT '歌曲ID集合',
  `mvIdList` varchar(50) NOT NULL COMMENT 'mvID集合',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

/*Data for the table `random` */

insert  into `random`(`id`,`songIdList`,`mvIdList`) values (1,'41,1,51,31,73,36,12,30,17,15,7,49,10,74,38','1, 2, 3, 4, 5, 6, 7, 8, 9, 10');

/*Table structure for table `singer` */

DROP TABLE IF EXISTS `singer`;

CREATE TABLE `singer` (
  `singer_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '歌手ID',
  `singer_name` varchar(30) DEFAULT NULL COMMENT '歌手名',
  `singer_sex` int(3) DEFAULT '0' COMMENT '歌手性别,1为男，2为女',
  `singer_picture` varchar(255) DEFAULT NULL COMMENT '歌手头像',
  `singer_area` varchar(50) DEFAULT NULL COMMENT '歌手所属地区',
  `mv_id` int(11) DEFAULT NULL COMMENT 'mvID',
  `singer_genre` varchar(30) DEFAULT NULL COMMENT '流派',
  `singer_first_letter` char(1) DEFAULT NULL COMMENT '歌手的第一个字母',
  `singer_intro` varchar(255) DEFAULT NULL COMMENT '歌手的简介',
  `singer_info` varchar(255) DEFAULT NULL COMMENT '歌手的详细信息',
  PRIMARY KEY (`singer_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

/*Data for the table `singer` */

insert  into `singer`(`singer_id`,`singer_name`,`singer_sex`,`singer_picture`,`singer_area`,`mv_id`,`singer_genre`,`singer_first_letter`,`singer_intro`,`singer_info`) values (1,'陈小熊',2,'C:\\muisc\\picture\\singer\\陈小熊.JPEG','国内',NULL,'小清新','C',NULL,NULL),(2,'赵雷',1,'C:\\muisc\\picture\\singer\\赵雷.jpg','国内',NULL,'校园','Z',NULL,NULL),(3,'陈粒',2,'C:\\muisc\\picture\\singer\\陈粒.jpeg','国内',NULL,'小清新','C',NULL,NULL),(4,'贰佰',1,'C:\\muisc\\picture\\singer\\贰佰.jpg','国内',NULL,'地方','E',NULL,NULL),(5,'花粥',2,'C:\\muisc\\picture\\singer\\花粥.JPEG','国内',NULL,'小清新','H',NULL,NULL),(6,'老狼',1,'C:\\muisc\\picture\\singer\\老狼.jpeg','国内',NULL,'校园','L',NULL,NULL),(7,'李志',1,'C:\\muisc\\picture\\singer\\李志.jpg','国内',NULL,'地方','L',NULL,NULL),(8,'马頔',1,'C:\\muisc\\picture\\singer\\马頔.jpg','国内',NULL,'人文','M',NULL,NULL),(9,'朴树',1,'C:\\muisc\\picture\\singer\\朴树.jpeg','国内',NULL,'人文','P',NULL,NULL),(10,'宋冬野',1,'C:\\muisc\\picture\\singer\\宋冬野.jpg','国内',NULL,'地方','S',NULL,NULL),(11,'万晓利',1,'C:\\muisc\\picture\\singer\\万晓利.jpg','国内',NULL,'人文','W',NULL,NULL),(12,'谢春花',2,'C:\\muisc\\picture\\singer\\谢春花.jpg','国内',NULL,'小清新','X',NULL,NULL),(13,'尧十三',1,'C:\\muisc\\picture\\singer\\尧十三.jpg','国内',NULL,'地方','Y',NULL,NULL),(14,'赵照',1,'C:\\muisc\\picture\\singer\\赵照.jpg','国内',NULL,'小清新','Z',NULL,NULL);

/*Table structure for table `song` */

DROP TABLE IF EXISTS `song`;

CREATE TABLE `song` (
  `song_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '歌曲ID',
  `song_name` varchar(30) NOT NULL COMMENT '歌名',
  `singer_name` varchar(30) NOT NULL COMMENT '歌手',
  `songer_file_src` varchar(255) DEFAULT NULL COMMENT '歌曲文件路径',
  `song_picture_src` varchar(255) DEFAULT NULL COMMENT '歌曲图片路径',
  `song_lyrics_src` varchar(255) DEFAULT NULL COMMENT '歌词文件路径',
  `song_lyricsdate` int(5) DEFAULT NULL COMMENT '歌曲时长，单位是秒',
  `song_createdate` varchar(20) DEFAULT NULL COMMENT '歌曲发行时间',
  `singer_id` int(11) DEFAULT NULL COMMENT '歌曲所属歌手的ID',
  `special_id` int(11) DEFAULT NULL COMMENT '歌曲专辑ID',
  `song_mvid` int(11) DEFAULT '0' COMMENT 'mvID',
  `song_mvname` varchar(50) DEFAULT NULL COMMENT 'mv名称',
  `song_other` varchar(255) DEFAULT NULL COMMENT '歌曲的其它信息',
  `song_first_letter` char(1) DEFAULT NULL COMMENT '歌曲的第一个字母',
  `song_genre` varchar(30) DEFAULT NULL COMMENT '歌曲所属流派',
  PRIMARY KEY (`song_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=120 DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

/*Data for the table `song` */

insert  into `song`(`song_id`,`song_name`,`singer_name`,`songer_file_src`,`song_picture_src`,`song_lyrics_src`,`song_lyricsdate`,`song_createdate`,`singer_id`,`special_id`,`song_mvid`,`song_mvname`,`song_other`,`song_first_letter`,`song_genre`) values (1,'八十岁的歌','陈小熊','C:/muisc/song/陈小熊 - 八十岁的歌.mp3',NULL,'C:/muisc/lyrics/陈小熊 - 八十岁的歌.lrc',NULL,NULL,1,9,0,NULL,NULL,'B',NULL),(2,'反复磨一把刀','陈小熊','C:/muisc/song/陈小熊 - 反复磨一把刀.mp3',NULL,'C:/muisc/lyrics/陈小熊 - 反复磨一把刀.lrc',NULL,NULL,1,9,0,NULL,NULL,'F',NULL),(3,'济南济南','陈小熊','C:/muisc/song/陈小熊 - 济南济南.mp3',NULL,'C:/muisc/lyrics/陈小熊 - 济南济南.lrc',NULL,NULL,1,9,0,NULL,NULL,'J',NULL),(4,'你有多久没有看过星星','陈小熊','C:/muisc/song/陈小熊 - 你有多久没有看过星星.mp3',NULL,'C:/muisc/lyrics/陈小熊 - 你有多久没有看过星星.lrc',NULL,NULL,1,9,0,NULL,NULL,'N',NULL),(5,'如果明天不会到来','陈小熊','C:/muisc/song/陈小熊 - 如果明天不会到来.mp3',NULL,'C:/muisc/lyrics/陈小熊 - 如果明天不会到来.lrc',NULL,NULL,1,9,0,NULL,NULL,'R',NULL),(6,'成都','赵雷','C:/muisc/song/赵雷 - 成都.mp3',NULL,'C:/muisc/lyrics/赵雷 - 成都.lrc',NULL,NULL,2,10,0,NULL,NULL,'C',NULL),(7,'画','赵雷','C:/muisc/song/赵雷 - 画.mp3',NULL,'C:/muisc/lyrics/赵雷 - 画.lrc',NULL,NULL,2,11,0,NULL,NULL,'H',NULL),(8,'理想','赵雷','C:/muisc/song/赵雷 - 理想.mp3',NULL,'C:/muisc/lyrics/赵雷 - 理想.lrc',NULL,NULL,2,11,0,NULL,NULL,'L',NULL),(9,'南方姑娘','赵雷','C:/muisc/song/赵雷 - 南方姑娘.mp3',NULL,'C:/muisc/lyrics/赵雷 - 南方姑娘.lrc',NULL,NULL,2,11,0,NULL,NULL,'N',NULL),(10,'我们的时光','赵雷','C:/muisc/song/赵雷 - 我们的时光.mp3',NULL,'C:/muisc/lyrics/赵雷 - 我们的时光.lrc',NULL,NULL,2,11,0,NULL,NULL,'W',NULL),(11,'光','陈粒','C:/muisc/song/陈粒 - 光.mp3',NULL,'C:/muisc/lyrics/陈粒 - 光.lrc',NULL,NULL,3,12,0,NULL,NULL,'G',NULL),(12,'绝对占有 相对自由','陈粒','C:/muisc/song/陈粒 - 绝对占有 相对自由.mp3',NULL,'C:/muisc/lyrics/陈粒 - 绝对占有 相对自由.lrc',NULL,NULL,3,12,0,NULL,NULL,'J',NULL),(13,'奇妙能力歌','陈粒','C:/muisc/song/陈粒 - 奇妙能力歌.mp3',NULL,'C:/muisc/lyrics/陈粒 - 奇妙能力歌.lrc',NULL,NULL,3,12,0,NULL,NULL,'Q',NULL),(14,'小半','陈粒','C:/muisc/song/陈粒 - 小半.mp3',NULL,'C:/muisc/lyrics/陈粒 - 小半.lrc',NULL,NULL,3,12,0,NULL,NULL,'X',NULL),(15,'走马','陈粒','C:/muisc/song/陈粒 - 走马.mp3',NULL,'C:/muisc/lyrics/陈粒 - 走马.lrc',NULL,NULL,3,12,0,NULL,NULL,'Z',NULL),(16,'狗日的青春','贰佰','C:/muisc/song/贰佰 - 狗日的青春.mp3',NULL,'C:/muisc/lyrics/贰佰 - 狗日的青春.lrc',NULL,NULL,4,13,0,NULL,NULL,'G',NULL),(17,'嘿，抬头','贰佰','C:/muisc/song/贰佰 - 嘿，抬头！.mp3',NULL,'C:/muisc/lyrics/贰佰 - 嘿，抬头！.lrc',NULL,NULL,4,13,0,NULL,NULL,'H',NULL),(18,'黎明之前','贰佰','C:/muisc/song/贰佰 - 黎明之前.mp3',NULL,'C:/muisc/lyrics/贰佰 - 黎明之前.lrc',NULL,NULL,4,13,0,NULL,NULL,'L',NULL),(19,'玫瑰','贰佰','C:/muisc/song/贰佰 - 玫瑰.mp3',NULL,'C:/muisc/lyrics/贰佰 - 玫瑰.lrc',NULL,NULL,4,13,0,NULL,NULL,'M',NULL),(20,'以梦喂马','贰佰','C:/muisc/song/贰佰 - 以梦喂马.mp3',NULL,'C:/muisc/lyrics/贰佰 - 以梦喂马.lrc',NULL,NULL,4,13,0,NULL,NULL,'Y',NULL),(21,'二十岁的某一天','花粥','C:/muisc/song/花粥 - 二十岁的某一天 (Demo).mp3',NULL,'C:/muisc/lyrics/花粥 - 二十岁的某一天 (Demo).lrc',NULL,NULL,5,14,0,NULL,NULL,'E',NULL),(22,'遥不可及的你','花粥','C:/muisc/song/花粥 - 遥不可及的你.mp3',NULL,'C:/muisc/lyrics/花粥 - 遥不可及的你.lrc',NULL,NULL,5,14,0,NULL,NULL,'Y',NULL),(23,'一腔诗意喂了狗','花粥','C:/muisc/song/花粥 - 一腔诗意喂了狗.mp3',NULL,'C:/muisc/lyrics/花粥 - 一腔诗意喂了狗.lrc',NULL,NULL,5,14,0,NULL,NULL,'Y',NULL),(24,'远在北方孤独的鬼','花粥','C:/muisc/song/花粥 - 远在北方孤独的鬼 (Demo).mp3',NULL,'C:/muisc/lyrics/花粥 - 远在北方孤独的鬼 (Demo).lrc',NULL,NULL,5,14,0,NULL,NULL,'Y',NULL),(25,'远在北方孤独的鬼 (Demo)','花粥','C:/muisc/song/花粥 - 远在北方孤独的鬼.mp3',NULL,'C:/muisc/lyrics/花粥 - 远在北方孤独的鬼.lrc',NULL,NULL,5,14,0,NULL,NULL,'Y',NULL),(26,'同桌的你','老狼','C:/muisc/song/老狼 - 同桌的你.mp3',NULL,'C:/muisc/lyrics/老狼 - 同桌的你.lrc',NULL,NULL,6,15,0,NULL,NULL,'T',NULL),(27,'睡在我上铺的兄弟','老狼','C:/muisc/song/老狼 - 睡在我上铺的兄弟.mp3',NULL,'C:/muisc/lyrics/老狼 - 睡在我上铺的兄弟.lrc',NULL,NULL,6,16,0,NULL,NULL,'S',NULL),(28,'我要你','老狼','C:/muisc/song/老狼 - 我要你.mp3',NULL,'C:/muisc/lyrics/老狼 - 我要你.lrc',NULL,NULL,6,16,0,NULL,NULL,'W',NULL),(29,'关于郑州的记忆','李志','C:/muisc/song/李志 - 关于郑州的记忆.mp3',NULL,'C:/muisc/lyrics/李志 - 关于郑州的记忆.lrc',NULL,NULL,7,17,0,NULL,NULL,'G',NULL),(30,'天空之城','李志','C:/muisc/song/李志 - 天空之城.mp3',NULL,'C:/muisc/lyrics/李志 - 天空之城.lrc',NULL,NULL,7,18,0,NULL,NULL,'T',NULL),(31,'梵高先生','李志','C:/muisc/song/李志 - 梵高先生.mp3',NULL,'C:/muisc/lyrics/李志 - 梵高先生.lrc',NULL,NULL,7,19,0,NULL,NULL,'F',NULL),(32,'忽然','李志','C:/muisc/song/李志 - 忽然.mp3',NULL,'C:/muisc/lyrics/李志 - 忽然.lrc',NULL,NULL,7,19,0,NULL,NULL,'H',NULL),(33,'米店','李志','C:/muisc/song/李志 - 米店.mp3',NULL,'C:/muisc/lyrics/李志 - 米店.lrc',NULL,NULL,7,19,0,NULL,NULL,'M',NULL),(34,'傲寒','马頔','C:/muisc/song/马頔 - 傲寒.mp3',NULL,'C:/muisc/lyrics/马頔 - 傲寒.lrc',NULL,NULL,8,20,0,NULL,NULL,'A',NULL),(35,'孤鸟的歌','马頔','C:/muisc/song/马頔 - 孤鸟的歌.mp3',NULL,'C:/muisc/lyrics/马頔 - 孤鸟的歌.lrc',NULL,NULL,8,20,0,NULL,NULL,'G',NULL),(36,'皆非','马頔','C:/muisc/song/马頔 - 皆非.mp3',NULL,'C:/muisc/lyrics/马頔 - 皆非.lrc',NULL,NULL,8,20,0,NULL,NULL,'J',NULL),(37,'南山南','马頔','C:/muisc/song/马頔 - 南山南.mp3',NULL,'C:/muisc/lyrics/马頔 - 南山南.lrc',NULL,NULL,8,20,0,NULL,NULL,'N',NULL),(38,'时间里的','马頔','C:/muisc/song/马頔 - 时间里的.mp3',NULL,'C:/muisc/lyrics/马頔 - 时间里的.lrc',NULL,NULL,8,20,0,NULL,NULL,'S',NULL),(39,'白桦树','朴树','C:/muisc/song/朴树 - 白桦林 (Live).mp3',NULL,'C:/muisc/lyrics/朴树 - 白桦林 (Live).lrc',NULL,NULL,9,21,0,NULL,NULL,'B',NULL),(40,'那些花儿','朴树','C:/muisc/song/朴树 - 那些花儿.mp3',NULL,'C:/muisc/lyrics/朴树 - 那些花儿.lrc',NULL,NULL,9,21,0,NULL,NULL,'N',NULL),(41,'平凡之路','朴树','C:/muisc/song/朴树 - 平凡之路.mp3',NULL,'C:/muisc/lyrics/朴树 - 平凡之路.lrc',NULL,NULL,9,21,0,NULL,NULL,'P',NULL),(42,'清白之年','朴树','C:/muisc/song/朴树 - 清白之年.mp3',NULL,'C:/muisc/lyrics/朴树 - 清白之年.lrc',NULL,NULL,9,21,0,NULL,NULL,'Q',NULL),(43,'青春再见','水木年华','C:/muisc/song/水木年华 - 青春再见.mp3',NULL,'C:/muisc/lyrics/水木年华 - 青春再见.lrc',NULL,NULL,9,22,0,NULL,NULL,'Q',NULL),(44,'安和桥','宋冬野','C:/muisc/song/宋冬野 - 安和桥.mp3',NULL,'C:/muisc/lyrics/宋冬野 - 安和桥.lrc',NULL,NULL,10,23,0,NULL,NULL,'A',NULL),(45,'董小姐','宋冬野','C:/muisc/song/宋冬野 - 董小姐.mp3',NULL,'C:/muisc/lyrics/宋冬野 - 董小姐.lrc',NULL,NULL,10,23,0,NULL,NULL,'D',NULL),(46,'关忆北','宋冬野','C:/muisc/song/宋冬野 - 关忆北.mp3',NULL,'C:/muisc/lyrics/宋冬野 - 关忆北.lrc',NULL,NULL,10,24,0,NULL,NULL,'G',NULL),(47,'莉莉安','宋冬野','C:/muisc/song/宋冬野 - 莉莉安.mp3',NULL,'C:/muisc/lyrics/宋冬野 - 莉莉安.lrc',NULL,NULL,10,24,0,NULL,NULL,'L',NULL),(48,'六层楼','宋冬野','C:/muisc/song/宋冬野 - 六层楼.mp3',NULL,'C:/muisc/lyrics/宋冬野 - 六层楼.lrc',NULL,NULL,10,24,0,NULL,NULL,'L',NULL),(49,'答案','万晓利','C:/muisc/song/万晓利 - 答案.mp3',NULL,'C:/muisc/lyrics/万晓利 - 答案.lrc',NULL,NULL,11,25,0,NULL,NULL,'D',NULL),(50,'狐狸','万晓利','C:/muisc/song/万晓利 - 狐狸.mp3',NULL,'C:/muisc/lyrics/万晓利 - 狐狸.lrc',NULL,NULL,11,25,0,NULL,NULL,'H',NULL),(51,'女儿情','万晓利','C:/muisc/song/万晓利 - 女儿情.mp3',NULL,'C:/muisc/lyrics/万晓利 - 女儿情.lrc',NULL,NULL,11,25,0,NULL,NULL,'N',NULL),(52,'陀螺','万晓利','C:/muisc/song/万晓利 - 陀螺.mp3',NULL,'C:/muisc/lyrics/万晓利 - 陀螺.lrc',NULL,NULL,11,25,0,NULL,NULL,'T',NULL),(53,'这一切没有想象的那么糟','万晓利','C:/muisc/song/万晓利 - 这一切没有想象的那么糟.mp3',NULL,'C:/muisc/lyrics/万晓利 - 这一切没有想象的那么糟.lrc',NULL,NULL,11,25,0,NULL,NULL,'Z',NULL),(54,'荒岛','谢春芳','C:/muisc/song/谢春花 - 荒岛.mp3',NULL,'C:/muisc/lyrics/谢春花 - 荒岛.lrc',NULL,NULL,12,26,0,NULL,NULL,'H',NULL),(55,'借我','谢春芳','C:/muisc/song/谢春花 - 借我.mp3',NULL,'C:/muisc/lyrics/谢春花 - 借我.lrc',NULL,NULL,12,26,0,NULL,NULL,'J',NULL),(56,'妄为','谢春芳','C:/muisc/song/谢春花 - 妄为.mp3',NULL,'C:/muisc/lyrics/谢春花 - 妄为.lrc',NULL,NULL,12,26,0,NULL,NULL,'W',NULL),(57,'我从崖边跌落','谢春芳','C:/muisc/song/谢春花 - 我从崖边跌落.mp3',NULL,'C:/muisc/lyrics/谢春花 - 我从崖边跌落.lrc',NULL,NULL,12,27,0,NULL,NULL,'W',NULL),(58,'只道寻常','谢春芳','C:/muisc/song/谢春花 - 只道寻常.mp3',NULL,'C:/muisc/lyrics/谢春花 - 只道寻常.lrc',NULL,NULL,12,27,0,NULL,NULL,'Z',NULL),(59,'北方女王','尧十三','C:/muisc/song/尧十三 - 北方女王.mp3',NULL,'C:/muisc/lyrics/尧十三 - 北方女王.lrc',NULL,NULL,13,28,0,NULL,NULL,'B',NULL),(60,'不陌生的人','尧十三','C:/muisc/song/尧十三 - 不陌生的人.mp3',NULL,'C:/muisc/lyrics/尧十三 - 不陌生的人.lrc',NULL,NULL,13,28,0,NULL,NULL,'B',NULL),(61,'旧情人，我是时间的新欢','尧十三','C:/muisc/song/尧十三 - 旧情人，我是时间的新欢.mp3',NULL,'C:/muisc/lyrics/尧十三 - 旧情人，我是时间的新欢.lrc',NULL,NULL,13,28,0,NULL,NULL,'J',NULL),(62,'失了城','尧十三','C:/muisc/song/尧十三 - 失之城.mp3',NULL,'C:/muisc/lyrics/尧十三 - 失之城.lrc',NULL,NULL,13,28,0,NULL,NULL,'S',NULL),(63,'瞎子','尧十三','C:/muisc/song/尧十三 - 瞎子.mp3',NULL,'C:/muisc/lyrics/尧十三 - 瞎子.lrc',NULL,NULL,13,28,0,NULL,NULL,'X',NULL),(64,'当你老了','赵照','C:/muisc/song/赵照 - 当你老了.mp3',NULL,'C:/muisc/lyrics/赵照 - 当你老了.lrc',NULL,NULL,14,29,0,NULL,NULL,'D',NULL),(65,'慢慢的','赵照','C:/muisc/song/赵照 - 慢慢的.mp3',NULL,'C:/muisc/lyrics/赵照 - 慢慢的.lrc',NULL,NULL,14,30,0,NULL,NULL,'M',NULL),(66,'你就是我最想要的丫头','赵照','C:/muisc/song/赵照 - 你就是我最想要的丫头.mp3',NULL,'C:/muisc/lyrics/赵照 - 你就是我最想要的丫头.lrc',NULL,NULL,14,30,0,NULL,NULL,'N',NULL),(67,'启航','赵照','C:/muisc/song/赵照 - 启航.mp3',NULL,'C:/muisc/lyrics/赵照 - 启航.lrc',NULL,NULL,14,30,0,NULL,NULL,'Q',NULL),(68,'一把破吉他1999','赵照','C:/muisc/song/赵照 - 一把破吉他1999.mp3',NULL,'C:/muisc/lyrics/赵照 - 一把破吉他1999.lrc',NULL,NULL,14,30,0,NULL,NULL,'Y',NULL),(69,'少年锦时','赵雷',NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,'S',NULL),(70,'小屋','赵雷',NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,'X',NULL),(73,'三十岁的女人','赵雷',NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,'S',NULL),(74,'吉姆餐厅','赵雷',NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,'J',NULL),(75,'斑马，斑马','宋冬野',NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,'B',NULL),(76,'给抱着盒子的姑娘','宋冬野',NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,'G',NULL),(77,'鸽子','宋冬野',NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,'G',NULL),(78,'最后一次看不见那些人老去','马頔',NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,'Z',NULL),(79,'表','马頔',NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,'B',NULL),(80,'切尔西旅馆没有8310','马頔',NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,'Q',NULL),(81,'intro','马頔',NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,'I',NULL),(82,'易燃易爆炸','陈粒',NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,'Y',NULL),(83,'不灭','陈粒',NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,'B',NULL),(84,'走马','陈粒',NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,'Z',NULL),(85,'芳草地','陈粒',NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,'F',NULL),(86,'虚拟','陈粒',NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,'X',NULL),(87,'妈妈要我出嫁','花粥',NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,'M',NULL),(88,'少年你在哪里','花粥',NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,'S',NULL),(89,'你需要什么','花粥',NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,'N',NULL),(90,'一首情歌','花粥',NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,'Y',NULL),(91,'长岛','花粥',NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,'C',NULL),(92,'大猩猩','尧十三',NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,'D',NULL),(93,'有信心','尧十三',NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,'Y',NULL),(94,'静夜','尧十三',NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,'J',NULL),(95,'outro','尧十三',NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,'O',NULL),(96,'雨霖铃','尧十三',NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,'Y',NULL),(97,'麦克','老狼',NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,'M',NULL),(98,'关于现在关于未来','老狼',NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,'G',NULL),(99,'月光倾城','老狼',NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,'Y',NULL),(100,'未知的旅途','老狼',NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,'W',NULL),(101,'阿拉善','贰佰',NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,'A',NULL),(102,'从夜晚到清晨','贰佰',NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,'C',NULL),(103,'像白云一样','贰佰',NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,'X',NULL),(104,'的青春','贰佰',NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,'D',NULL),(105,'我在太原和谁一样假装悲伤','贰佰',NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,'W',NULL),(106,'铅笔','李志',NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,'Q',NULL),(107,'墙上的向日葵','李志',NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,'Q',NULL),(108,'她','李志',NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,'T',NULL),(109,'路','李志',NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,'L',NULL),(110,'夜','李志',NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,'Y',NULL),(111,'哑巴的歌','陈小熊',NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,'Y',NULL),(112,'车窗','陈小熊',NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,'C',NULL),(113,'你的眼睛','陈小熊',NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,'N',NULL),(114,'在你望向我的眼睛','陈小熊',NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,'Z',NULL),(115,'平凡之路','朴树',NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,'P',NULL),(116,'别，千万别','朴树',NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,'B',NULL),(117,'旅途','朴树',NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,'L',NULL),(118,'召唤','朴树',NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,'Z',NULL),(119,'活着','朴树',NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,'H',NULL);

/*Table structure for table `songmenu` */

DROP TABLE IF EXISTS `songmenu`;

CREATE TABLE `songmenu` (
  `songmenu_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '歌单表的ID',
  `songmenu_name` varchar(30) DEFAULT NULL COMMENT '歌单名，用户创建歌单时应该设置',
  `songmenu_list` varchar(255) DEFAULT NULL COMMENT '一个歌单所保存的歌曲ID集合，最多50首歌',
  `songmenu_num` int(11) DEFAULT NULL COMMENT '歌单所收藏的歌曲数量，最大应该为50',
  `user_id` int(11) NOT NULL COMMENT '用户ID',
  PRIMARY KEY (`songmenu_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

/*Data for the table `songmenu` */

insert  into `songmenu`(`songmenu_id`,`songmenu_name`,`songmenu_list`,`songmenu_num`,`user_id`) values (1,'我是一个粉刷匠','1,2,3,12,16',4,1),(2,'天空的蓝','2,5,8,9',4,2),(3,'测试用例','1,5,15',3,5);

/*Table structure for table `special` */

DROP TABLE IF EXISTS `special`;

CREATE TABLE `special` (
  `special_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '专辑ID',
  `special_name` varchar(30) NOT NULL COMMENT '专辑名称',
  `song_num` int(11) NOT NULL DEFAULT '0' COMMENT '专辑中歌曲数量',
  `singer_id` int(11) NOT NULL COMMENT '歌手ID',
  `special_area` varchar(255) DEFAULT NULL COMMENT '专辑信息',
  PRIMARY KEY (`special_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=45 DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

/*Data for the table `special` */

insert  into `special`(`special_id`,`special_name`,`song_num`,`singer_id`,`special_area`) values (1,'成都',1,2,'C:\\muisc\\picture\\special\\成都.jpg'),(2,'赵小雷',2,2,'C:\\muisc\\picture\\special\\赵小雷.jpg'),(3,'吉姆餐厅',6,2,'C:\\muisc\\picture\\special\\吉姆餐厅.jpg'),(4,'安河桥北',8,10,'C:\\muisc\\picture\\special\\安河桥北.jpg'),(5,'傲寒',1,8,'C:\\muisc\\picture\\special\\傲寒.jpg'),(6,'孤岛',7,8,'C:\\muisc\\picture\\special\\孤岛.png'),(7,'皆非',1,8,'C:\\muisc\\picture\\special\\皆非.jpg'),(8,'如也',7,3,'C:\\muisc\\picture\\special\\知非.jpg'),(9,'小梦大半',3,3,'C:\\muisc\\picture\\special\\小梦大半.jpg'),(10,'早年间的一些歌',5,5,'C:\\muisc\\picture\\special\\早年间的一些歌.jpg'),(11,'2017（一）',1,5,'C:\\muisc\\picture\\special\\2017（一）.jpg'),(12,'2017（三）',1,5,'C:\\muisc\\picture\\special\\2017（三）.jpg'),(13,'周打野',3,5,'C:\\muisc\\picture\\special\\花大爷.jpg'),(14,'算云烟',2,12,'C:\\muisc\\picture\\special\\算云烟.png'),(15,'只道寻常',2,12,'C:\\muisc\\picture\\special\\只道寻常.png'),(16,'妄为',1,12,'C:\\muisc\\picture\\special\\只道寻常.png'),(17,'飞船，宇航员',8,13,'C:\\muisc\\picture\\special\\飞船宇航员.jpg'),(18,'他妈的',1,13,'C:\\muisc\\picture\\special\\他妈的.jpg'),(19,'热门华语247',1,13,'C:\\muisc\\picture\\special\\不陌生的人 热门华语247.jpg'),(20,'校园民谣1',3,6,'C:\\muisc\\picture\\special\\校园民谣（一）.jpg'),(21,'晴朗',5,6,'C:\\muisc\\picture\\special\\晴朗.jpg'),(22,'我要你',1,6,'C:\\muisc\\picture\\special\\我要你.jpg'),(23,'青春再见',1,6,'C:\\muisc\\picture\\special\\青春再见.jpg'),(24,'嘿，抬头',9,4,'C:\\muisc\\picture\\special\\嘿，抬头.jpg'),(25,'贰佰作品集',1,4,'C:\\muisc\\picture\\special\\贰佰作品集.jpg'),(26,'梵高先生',1,7,'C:\\muisc\\picture\\special\\梵高先生.jpg'),(28,'你好，郑州',7,7,'C:\\muisc\\picture\\special\\你好，郑州.jpg'),(29,'我爱南京',2,7,'C:\\muisc\\picture\\special\\我爱南京.jpg'),(30,'济南济南',1,1,'C:\\muisc\\picture\\special\\济南济南.jpg'),(31,'之外',7,1,'C:\\muisc\\picture\\special\\之外.jpg'),(32,'三城记',1,1,'C:\\muisc\\picture\\special\\三城记.jpg'),(33,'猎户星座',3,9,'C:\\muisc\\picture\\special\\猎户星座.jpg'),(34,'生如夏花',1,9,'C:\\muisc\\picture\\special\\生如夏花.jpg'),(35,'我去2000年',6,9,'C:\\muisc\\picture\\special\\我去2000年.jpg'),(36,'你在红楼 我在西游',1,11,'C:\\muisc\\picture\\special\\你在红楼，我在西游.jpg'),(37,'这一切没有想象的那么糟',2,11,'C:\\muisc\\picture\\special\\一切没有想象的那么糟.jpg'),(38,'走过来 走过去',3,11,'C:\\muisc\\picture\\special\\走过来走过去.jpg'),(39,'天秤之舟／牙齿，菠菜和豆腐与诗人，流浪汉和门徒',4,11,'C:\\muisc\\picture\\special\\天秤之州.jpg'),(40,'一把破木吉他1999',1,14,'C:\\muisc\\picture\\special\\一把破木吉他.png'),(41,'你就是我最想要的丫头',1,14,'C:\\muisc\\picture\\special\\你就是我最想要的丫头.jpg'),(42,'当你老了',1,14,'C:\\muisc\\picture\\special\\当你老了.jpg'),(43,'大经厂',5,14,'C:\\muisc\\picture\\special\\大经厂.jpg'),(44,'启程',1,14,'C:\\muisc\\picture\\special\\启程.jpg');

/*Table structure for table `user` */

DROP TABLE IF EXISTS `user`;

CREATE TABLE `user` (
  `user_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '用户ID',
  `username` varchar(18) NOT NULL COMMENT '用户名',
  `user_nickname` varchar(18) NOT NULL COMMENT '用户昵称',
  `password` varchar(18) NOT NULL COMMENT '用户密码',
  `user_sex` int(3) DEFAULT '0' COMMENT '用户性别',
  `user_area` varchar(15) DEFAULT NULL COMMENT '用户所属地区',
  `user_logo` varchar(100) DEFAULT NULL COMMENT '用户头像',
  `user_info` varchar(255) DEFAULT NULL COMMENT '用户其它信息',
  PRIMARY KEY (`user_id`) USING BTREE,
  UNIQUE KEY `username` (`username`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=30 DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

/*Data for the table `user` */

insert  into `user`(`user_id`,`username`,`user_nickname`,`password`,`user_sex`,`user_area`,`user_logo`,`user_info`) values (1,'tom','超级管理员','1234',1,'陕西省咸阳市','E:/静态资源/muisc/picture/Koala.jpg','当你在羡慕别人的时候，殊不知也有人正在羡慕着你'),(2,'xk','繁花','xk',2,'陕西省西安市',NULL,'我没有什么要说的'),(3,'ceshiyongli','测试用例','ceshimima',1,'','',NULL),(4,'c123456','555','1234569',1,'江南','null',NULL),(5,'y123456','555','1234569',1,'江南','null',NULL),(6,'x149963911','tset11','a123456',1,'','','1499639115@qq.com'),(8,'c1499639','test12','c14996',1,'','',''),(9,'v999999','test13','999999',1,'','',''),(10,'v888888','test15','888888',1,'','',''),(11,'v666666','test16','666666',1,'','',''),(12,'v555555','test17','555555',1,'','','1499639115@qq.com'),(15,'v5555559','5555','555555',1,'','',''),(16,'v4444447','4444','123456',1,'','',''),(17,'v333333','333333','333333',1,'','',''),(18,'v222222','222222','222222',1,'','',''),(19,'c666666','666','666666',1,'','',''),(20,'c1234567','555','123456',1,'','',''),(21,'c12345678','555','123456',1,'','',''),(22,'f123456','123','123456',1,'','',''),(23,'h123456','123','123456',1,'','',''),(25,'c1123456','555','1234569',1,'江南','null',NULL),(28,'c1234569','123','1234569',1,'','',''),(29,'wx1499639','wx','1499639',1,'','','');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
