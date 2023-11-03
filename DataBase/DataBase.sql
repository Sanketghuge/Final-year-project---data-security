/*
SQLyog Community v13.1.6 (64 bit)
MySQL - 8.0.25 : Database - secrbac
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`secrbac` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;

USE `secrbac`;

/*Table structure for table `files` */

DROP TABLE IF EXISTS `files`;

CREATE TABLE `files` (
  `fileId` int NOT NULL AUTO_INCREMENT,
  `fname` varchar(255) DEFAULT NULL,
  `fdata` text,
  `ownerId` int DEFAULT NULL,
  `ouname` varchar(255) DEFAULT NULL,
  `key1` varchar(255) DEFAULT NULL,
  `key2` varchar(255) DEFAULT NULL,
  `key3` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`fileId`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=latin1;

/*Data for the table `files` */

insert  into `files`(`fileId`,`fname`,`fdata`,`ownerId`,`ouname`,`key1`,`key2`,`key3`) values 
(1,'live.txt','H7n3CDj+FOUmH8VZH2Tt1dPGUHZuTgnnxG090SYAIRpHFWWRDVxWYt0acB492yNVdujQdytysKZkl4cZ+rD/2w==',3,'suresh','javax.crypto.spec.SecretKeySpec@fffe953f',NULL,NULL),
(2,'live.txt','CC713vGyv1omR8SmuZlTDCy5prbgzJRtE8y2KjAqLqdPUY+bwpYBsJfBmzEPDXfQvXWSkD1MbXkekD0Cqrq1IQ==',3,'suresh','javax.crypto.spec.SecretKeySpec@1795c',NULL,NULL),
(3,'live.txt','ND2R7nsVJ/T6R8tqSP7/5OzGzIa+GzPqVcqmXpddIEXIwUUqwkRqC/yyAEX/ZRsaLGzh9+IwA4zWeW6jho31aQ==',3,'suresh','javax.crypto.spec.SecretKeySpec@fffe8d06',NULL,NULL),
(4,'live1.txt','FlklIZPIT740df9bTNA1molGx31r9MZXw3L5zWoVKxOEyQ2w6+qyZ41N1D8YqbFVgpUVYf1p6yoo+RnXBN9Grw==',3,'suresh','javax.crypto.spec.SecretKeySpec@fffe836b',NULL,NULL),
(5,'live2.txt','ycMsdI6FYAnYYmOjQg9rZRVjP5YvwncXfi9J2oVhhMAS2ICFttA2DFwVYrvn2TyU8XNjJ8Yb4gqi3NC6btP73xd5EYz9JDE4kOsywvKWNoQxgjccmpPV+TopeG2ENiH3Nw/CgxYDnpTzxitDHT9/gFG4Ye7I+6UfFGEn8HBX0xuGkfXDEI4xJUylgKDhQHI3YmSemC6P1iq+8uWhPAu/chann62IgpYhpPNKghl+Ys2MXwr395DS59QrJxxYm4jit/tsaKcWfwdCHlN6AD/D0nMCkbRNnh3IGrGV8pAGqD/wjcAf1iM6WwO+Dd8jCgjtTAhR3Z8Yns5p1RMhLPVCtUoQVyruCHB1s+3RKe2WhA0sTNVUIQ4DJcC2AYlqB3du2t4UiTMCMBVqdVo2b5k8TFtWcp0n0daM+QNvxjCb8vOkWR3FAc1eWIqSQuh/zwfxjA8nPQ68rNV5zV6KafFTN/llg3cLhFkj29JsSGMuIKTip9LWO2mDgoRxVC46to98zN+c6E2DOPTJEcM9DbATv6hfsoyVs7KcucpJA+OoEP38TRaLrfwQceb9pSl3OSIcB77Y8DGin4/3P14VCwQvgw==',3,'suresh','javax.crypto.spec.SecretKeySpec@fffe808b',NULL,NULL),
(6,'live3.txt','Oqlwo7WJnfeTBbHMPhh9PCwYQPaFER4wYX4HdYugGMahbtZfO4AupTTPE/esqowYmGg9IkwV3Tmopjn8nY1HyPHX7VE/SVDeFFgf0jRb+ps7nk53+ijgDh7ElZeyeKfwBxQ5/T2Z/k+HHcfDICsD0gW1zz1oqfzoWo8VIiivHcb+GCFn0Wog/oAVzWFN9zf6Wt5a3xeRNCxa5TjiGO3VQO1s7FW4661/HTW4bb13EfinQwclUwYpULBIWm1+2aV7UNibTjUgIZ9ZKn8v+6Zu35Va3Arqcw72pp2oCS7wGvcgmaYPh6SyHd1bdmdSN1feK4h+ZAOG4qlQH93xSEB5Og9nR9egrofKBLbIOM/B0ZMZFja3y+fpZERmh7TFvVPriMSWdnF3leTIy3oJhhi+DC5u1w+alwAl3Cbp2DueoQ3nHOpYfB6jEdoKxaGItM7CYaQPR7+og8tle6J1DjuKNs5m3C5hQLPZNm9FuZJnlOXLxgilwYD+WRb8/+Di0SBTSoD9KzXTmZdh75p6+PTzzr9nNYUZHVlKL4EFHWMZ8gAPyzzFbMUwJhinn5VcY3uV55k2zoiev024PFTGFKMB6BU2SOITRx6A3kwi4YKYIe8=',3,'suresh','javax.crypto.spec.SecretKeySpec@17983',NULL,NULL),
(7,'live4.txt','IxqbsWtrqCqNvqUiHoxWRgMoYdF9/A8HurQ/sQmUI7p9B8q5PfHux2tVu/mOX0JSbvGg2Xxlwv7mqG2yXlHyRNtwBis/wBwdlr9h1HtWaj9RPsqb0HK817CzhMOOgFDFtp/ATk99DB2j3xee/OPYx1bobcr/7ISOO83qVg1tzC+cDZg3jlIs6N3Eqyde1NolTI4Zjq7ICaJDX5jNV8CmAfRhWlHR2v76FKkk4SOVNXKVgmDhEKGfULnAXKLzJ6DZ4ntF6bF2o15hMIJqFuOdqedGmjdJWOZmwvXWdIx5YHug32nRZ4As0ytqUW/NASYYWggYrQthqGWSzKI9nLOf8caLxHTcB4Xuboe7M76hGbwnblC578yvhb8YdK1pG15al5GtOKAZzHNa3598O6BOQPiU2ZOfkcrTiaU7uhtluAI5Z4VIhDrhdvyfzkLFpGhSWlduVCnoc7a3elWAuLGmaWfPg10dhaSMs7u7Ngw0c2Qwx6K7n4eLJnWxXzqoOetz8BQvJFsZqDWxr9+qltA0xQjQW7jnmS0DVVLNiEG4H1v6sufsOR8x/pll6LSFKQ7zBigwYV/gHrmzEd2F4s3hx0y0zaNnaQZG0MtoVG6H15E=',3,'suresh','javax.crypto.spec.SecretKeySpec@fffe844f',NULL,NULL),
(8,'live5.txt','Cjem8tpPAqIhGgfxLwe5I8TjgtLWu1y8PRVzkbYEbjMcJjp0wj/dQs2eWEfgY20wxOOC0ta7XLw9FXORtgRuMxwmOnTCP91CzZ5YR+BjbTDE44LS1rtcvD0Vc5G2BG4zldwG0XktBGHjlo8TBim6QN+oskPQQ1qqCYCTskb6POEXHTIUQd9Mi602yX9YnSRabx7TDZ/o6T4WVTM40ebWhlLnQJYoicUB6jqJ9q2eXEFyuoMQA2X7JlytZGdEk5Q5OePYPXAScI2iIY2v1Gnb8/sHXxBz+bgfuS37CZwMDcyUwwa2zbFH9YG/T2JXwekbxUimQIo45LkJcN5DOpOhEcScsIyu7fyx+J5f0bXET1asOOzMriq6WVxNcrYe3dAshOXGZC+OKyEuHlnD2UUrSwQrIVZjRQgU2eKVipcjVgBvHtMNn+jpPhZVMzjR5taGUudAliiJxQHqOon2rZ5cQXK6gxADZfsmXK1kZ0STlDk549g9cBJwjaIhja/Uadvz+wdfEHP5uB+5LfsJnAwNzJTDBrbNsUf1gb9PYlfB6RvFSKZAijjkuQlw3kM6k6ERxJywjK7t/LH4nl/RtcRPVqw47MyuKrpZXE1yth7d0CyE5cZkL44rIS4eWcPZRStLgzB/YMeqV8nGpVpU9IC5ig==',3,'suresh','javax.crypto.spec.SecretKeySpec@1784f',NULL,NULL),
(9,'live6.txt','kMzfr0uQ/qqgJ4rBKXez17aDyQ/bOcepp9qjb98IdsY7BzH5Enpmn9yCrOc+/S5gtoPJD9s5x6mn2qNv3wh2xjsHMfkSemaf3IKs5z79LmC2g8kP2znHqafao2/fCHbGt0y6Qzx3UBCJloX83aH2ETEtPkVQ7r2S3qb6Nsoj2aoWvwOsU/3UPn6WtMFUuQjo0XGXiAE6nDDc2SgpLasN/kW2+mAB4xVvCb8DrBuZ+Mz3y99kw19OkGzOznMPsXpeTX3U2PFCRngRap9PIVVeLAIE4WvyJ+qlIi3bHits/qjUuSPjg545iGyIciuwpnv2UhSbQ+MeqM/vyVc4wSj3jN7qr/Cqzpar5Ja9HdrJUeEcjmxnPQNYAYLsrpQwwsydlEHMvVn1S/mRxcrvfzV/F70umCOWWg8d30AdeHGgsRjRcZeIATqcMNzZKCktqw3+Rbb6YAHjFW8JvwOsG5n4zPfL32TDX06QbM7Ocw+xel5NfdTY8UJGeBFqn08hVV4sAgTha/In6qUiLdseK2z+qNS5I+ODnjmIbIhyK7Cme/ZSFJtD4x6oz+/JVzjBKPeM3uqv8KrOlqvklr0d2slR4RyObGc9A1gBguyulDDCzJ2UQcy9WfVL+ZHFyu9/NX8XdFLZb/1M5yEn/+RD9Hup1g==',3,'suresh','javax.crypto.spec.SecretKeySpec@fffe9788',NULL,NULL),
(11,'data.txt','FarsCK+kGRa6Xg3dKxiyZMBYWrT7Yvy8eVypnEfolWyRY4x0NbciHNJTrX3JDn5AQZQNHtgJzcAgQnQl0cWICDdgtincgLGHvlGDw4tujC0/atobvDa1N4MNzP7TaYB1bGfusslczIirHKRr8Vr88F1THiKeKndMqeEaflxg+MwB/xa3h9WI7dImxrOHcf1yqUwC+zu8NzLy2pbzw4sMr02olvqjqlZIOA50CLYuZ+AWrU9wfgSvJ6d9FZtzu2jIXZZuT9m6oBMoNt9Z916tA1Dt1CLj2TjLZ/oavC51LoQ=',3,'suresh','javax.crypto.spec.SecretKeySpec@fffe8f2b','javax.crypto.spec.SecretKeySpec@fffe8286','javax.crypto.spec.SecretKeySpec@fffe8a89'),
(12,'pavan.txt','JBQ+GJo5NqyDxyX0rJQAIMklrDAbDkuxNns5n3x0vCI=',3,'suresh','javax.crypto.spec.SecretKeySpec@fffe8fc8','javax.crypto.spec.SecretKeySpec@fffe822d','javax.crypto.spec.SecretKeySpec@fffe889d');

/*Table structure for table `notifications` */

DROP TABLE IF EXISTS `notifications`;

CREATE TABLE `notifications` (
  `nId` int NOT NULL AUTO_INCREMENT,
  `fileId` int DEFAULT NULL,
  `fname` varchar(255) DEFAULT NULL,
  `action` varchar(255) DEFAULT NULL,
  `actionby` varchar(255) DEFAULT NULL,
  `utype` varchar(255) DEFAULT NULL,
  `datee` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`nId`)
) ENGINE=InnoDB AUTO_INCREMENT=34 DEFAULT CHARSET=latin1;

/*Data for the table `notifications` */

insert  into `notifications`(`nId`,`fileId`,`fname`,`action`,`actionby`,`utype`,`datee`) values 
(1,1,'live.txt','UPLOADED','suresh','OWNER','2019-02-08 10:50:50'),
(2,2,'live.txt','UPLOADED','suresh','OWNER','2019-02-08 10:57:43'),
(3,3,'live.txt','UPLOADED','suresh','OWNER','2019-02-08 11:01:01'),
(4,4,'live1.txt','UPLOADED','suresh','OWNER','2019-02-08 11:56:40'),
(5,5,'live2.txt','UPLOADED','suresh','OWNER','2019-02-08 12:02:59'),
(6,6,'live3.txt','UPLOADED','suresh','OWNER','2019-02-08 12:15:15'),
(7,7,'live4.txt','UPLOADED','suresh','OWNER','2019-02-08 12:20:07'),
(8,8,'live5.txt','UPLOADED','suresh','OWNER','2019-02-08 12:23:54'),
(9,9,'live6.txt','UPLOADED','suresh','OWNER','2019-02-08 12:27:48'),
(10,10,'live7.txt','UPLOADED','suresh','OWNER','2019-02-08 12:29:24'),
(11,10,'live7.txt','DOWNLOADED','suresh','OWNER','2019-02-08 12:32:34'),
(12,11,'data.txt','UPLOADED','suresh','OWNER','2023-09-22 11:22:41'),
(13,10,'live7.txt','DELETED','suresh','OWNER','2023-09-22 11:23:51'),
(14,11,'data.txt','DOWNLOADED','suresh','OWNER','2023-09-22 11:23:55'),
(15,11,'data.txt','DOWNLOADED','fratello','USER','2023-09-22 12:14:22'),
(16,11,'data.txt','DOWNLOADED','fratello','USER','2023-09-22 12:14:24'),
(17,11,'data.txt','DOWNLOADED','fratello','USER','2023-09-22 12:14:29'),
(18,11,'data.txt','DOWNLOADED','fratello','USER','2023-09-22 12:15:31'),
(19,11,'data.txt','DOWNLOADED','fratello','USER','2023-09-22 12:15:32'),
(20,11,'data.txt','DOWNLOADED','fratello','USER','2023-09-22 12:15:38'),
(21,11,'data.txt','DOWNLOADED','fratello','USER','2023-09-22 12:16:08'),
(22,11,'data.txt','DOWNLOADED','fratello','USER','2023-09-22 12:17:08'),
(23,11,'data.txt','DOWNLOADED','fratello','USER','2023-09-22 12:20:31'),
(24,11,'data.txt','DOWNLOADED','fratello','USER','2023-09-22 12:22:36'),
(25,11,'data.txt','DOWNLOADED','fratello','USER','2023-09-22 12:33:30'),
(26,11,'data.txt','DOWNLOADED','fratello','USER','2023-09-22 12:35:57'),
(27,11,'data.txt','DOWNLOADED','fratello','USER','2023-09-22 12:35:58'),
(28,11,'data.txt','DOWNLOADED','fratello','USER','2023-09-22 12:36:03'),
(29,11,'data.txt','DOWNLOADED','fratello','USER','2023-09-22 12:36:33'),
(30,11,'data.txt','DOWNLOADED','fratello','USER','2023-09-22 12:37:33'),
(31,12,'pavan.txt','UPLOADED','suresh','OWNER','2023-09-22 12:43:45'),
(32,12,'pavan.txt','DOWNLOADED','suresh','OWNER','2023-09-22 12:46:33'),
(33,12,'pavan.txt','DOWNLOADED','suresh','OWNER','2023-09-22 12:52:01');

/*Table structure for table `owner` */

DROP TABLE IF EXISTS `owner`;

CREATE TABLE `owner` (
  `ownerId` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `uname` varchar(255) DEFAULT NULL,
  `pass` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `key_` varchar(255) DEFAULT NULL,
  `count` int DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`ownerId`),
  UNIQUE KEY `uname` (`uname`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

/*Data for the table `owner` */

insert  into `owner`(`ownerId`,`name`,`uname`,`pass`,`email`,`phone`,`key_`,`count`,`status`) values 
(3,'suresh','suresh','suresh','satee107@gmail.com','7788994455','5466',0,'yes');

/*Table structure for table `user` */

DROP TABLE IF EXISTS `user`;

CREATE TABLE `user` (
  `userId` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `uname` varchar(255) DEFAULT NULL,
  `pass` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `key_` varchar(255) DEFAULT NULL,
  `count` int DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`userId`),
  UNIQUE KEY `uname` (`uname`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

/*Data for the table `user` */

insert  into `user`(`userId`,`name`,`uname`,`pass`,`email`,`phone`,`key_`,`count`,`status`) values 
(3,'sudarshan','halgi','halgi','satee107@gmail.com','7788994455','4483',0,'yes'),
(4,'fratello','fratello','kk','fratello@gmail.com','7788994455','100',0,'yes');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
