-- MySQL dump 10.13  Distrib 5.7.17, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: monitoring
-- ------------------------------------------------------
-- Server version	5.7.21-log

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `company`
--

DROP TABLE IF EXISTS `company`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `company` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(30) DEFAULT NULL,
  `tiker` varchar(30) DEFAULT NULL,
  `description` varchar(700) DEFAULT NULL,
  `image` mediumblob,
  `info` varchar(30) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `company`
--

LOCK TABLES `company` WRITE;
/*!40000 ALTER TABLE `company` DISABLE KEYS */;
INSERT INTO `company` VALUES (1,'Ð“Ð°Ð·Ð¿Ñ€Ð¾Ð¼','GAZP','Ð­Ñ‚Ð¾ Ð“Ð°Ð·Ð¿Ñ€Ð¾Ð¼','‰PNG\r\n\Z\n\0\0\0\rIHDR\0\0\0\î\0\0\0\Ô\0\0\0¬\Ñ\ï\Û\0\0\0gAMA\0\0±üa\0\0\0PLTE\0\0\0\0\\²\0eµ\0i·\0j¶\0k·\0p¸q¹\0p»\0tº\rx½|¿)\Â9ˆ\Ä=\ÅGŽ\ÄS”\É\\™\Ëb›\Èi \Îs¦\Ï~®ÕƒªÌŠ°Ó‰²Ð‹²Ø“¹Ü˜¹ÕžºÑ˜ÀÞ£ÀÚ©\ÅÜ¯\ÈÛ´\ÆÔ³\ÌÞ´\ËÛ³\Ð\ç½\Ö\ê\Â\Ô\ß\Ã\Õ\â\Í\Û\å\Í\ß\ì\Ñ\à\é\Û\ä\ë\Þ\å\è\ß\ëõ\í\í\í\î\î\î\ï\ï\ï\åðö\ïòøóò\îòòòõõõ÷÷÷ñöøûùöùùùþüøþþþþþÿ\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0F„S\0\0\0tRNSÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ\0S÷%\0\0\0	pHYs\0\0\Â\0\0\Â(J€\0\0\0tEXtSoftware\0paint.net 4.0.173nŸc\0\0IDATx^\í[Û¸†Ï‰|¹(¤\ÝÓž–\Ý-»½\Ñ$\ÝIþÿ\ß\â|\ß\Ìø’\ÐKÀr£røpl\Ùñ£\×#\ÍH²­ü\ëöÿJO¸YO¸YO¸YO¸YO¸YO¸{V\Ç>[Qt¸ƒt`km(:\\—9[kC±\á¦Y–y[oA‘\á7OŸ\ÙVxE†\ë`\Ý‹s\\¸}\ï‰\ëû¶\\q\á:²¢8·fÞ¨p»4­8«K	­¨pi\Üü5—m™7&\Üœ\Éhq$õ\×\Ò+&\Ü$Ë³übþ‘\æMF–V\áÒ¨É‹\Ùdv\Â\ê›ZjXÅƒ;J|\æó‹\éxú‘\àé©¥U<¸ðR™{±¼ººZž&¨Æ­˜7\Üñ\Ç_¬©O,Í­\Ô\Þhp»(Á\é\ÉBpµö¶áœ£Áí µ\ì>\Îwú¦\Î\ÛR±\àèŽfŠ;™±gä»¶/ bÁupN\î\í|¾¢\æó÷x®†q\"Á…5s\ß_¯Wc\n>DUöC\ÛN‘\à2Òº7\ë\Õj<™LˆûW;-\çHp\éšü5­k¸+öŽ\Â;«8pû…Hi¸«õK˜\×÷l0Å+%÷ƒ\àZ\Ý]i¥4G;b«¢7…æ¨¾«5\×.‡H\ÞpŽõ4w£\Ê1pa\Ù)\Öf\ç4o\èQ(p¥\Ü~$¤53 \é?”]šcÀ}Î²<X¸¯Õº\ã%Î¡Ks¸vý\Þ,é¤¦\ëó^O¸º”\Ð\Ø7Ç€K\ãºO‹ê²Ÿ\é\Ú\Õ?O’1\àÒŠƒÙ•TÛ³\Äwþ–µK\é\'®¼à²Žº\ßw‰Gzd¸g¸+o¸=Ÿ\å\Éû©\àþ\ÅÖ¤û,¸\Ó\ànXE€K\Â\ÞtrIFŽ1#\îdÆ¶e\Øvs¸þd1¿‚{ú\Ìj]\ÓiÍ¯\Ø\Ú\n[y÷{\nºóõúj<ž\ÒIÃ¢¯\æ\ãñ\r‹6jr\Ðºý\ãrØ†µõj<ó¶	ÕŸMˆûôi\Ð>þþq‰\×CKùj,®X\ä\Þ\Í&À]£ò†±\Ú?.\Ý/Cp\Ù	¥\Ï—…;h\å\Ý?.<Uò’¸¹fº`a^\ÓÜ7wN\Ç\ãËµ\Ü\ÙUÁw]¢ý\Î!$\ÛqA´w\Ü#–\×O\Ó	pðÑ…Žw\'\Ó¬ùc;2„öŽ\Û\Ër€ß˜AWx½\Ïó,ýr9žL§}l‡|.e\ï¸`\ÎØ¿}Y\Çuo\Øÿy\Ä&;2„öŽ‹úšž\ÎØ¿e“1©_?\\Œ\Ç´;|\Ð\ÇpöŽ\ÛA\Õ}³º¹Y}\æ}¡^÷\Z’«³$\\¸ð½\î/ÄœõkD$b\ïÎ˜ø\Æ\éš÷û<E=ýB²!ZP¤•\í}z\ÌDöB¶š÷{Ü”-Škú¬28¿\Ö\Ô,\r‰ö{\Ü\î`2\'…\Ù\ä\Þ!u…¾ðy\î}\ã¼÷ƒ\å\Í\Ír\î\n—‘w´¼ºY¢\ér@cß¸ýÌ§\'ˆ9³~Í´Œ¼¹ôÇ¸\no%\ì·§4ZL¦Ÿ†\nÁ\â4/š–ö‰>½¾o\ÜŸ§/“\Ù\ïŒp\Í\â•ù\ï3÷ûl²ø\Ò>aµo\Ü\Ü\ç\É\ëK6Ÿ€(\Ï2.+/p_7`\à\Ý7.\0\Ý\Ùb:«õ†``Q:œMgh|lV\í—û7«õuE[\âf9Ñ¯Ž{z\Ø\Í¥þ6AEs‘¿B\Ä%q\Þù²^þŽpü‹\âœKR\Ô\Ð¶´h*¸«õy\rW-‹44–üš\Ö=\Î\È\êR\\\Z¸/p4ðŠmeO-ÿ€«ú\Õp¼C¿UJ™u‰»^\r7=]¯ˆûKy\æ\Ó\Ü!œJþ7¤¸ tç‹ºc®ä‡³«wa{€m\ãv\îÚ•\Ê\r»\Üùl,/‡\ÝQoúk\áöaXM3|€]ÿœ\Éùâ‚»\ØN.Š¿‚þ\à\Å:J¿Ja*¼m\rR\Ü.=\Ò\â½õþ°G\å>\ê\ãâ¼ƒU92ˆ\Ú\Ã=v\Å-•S>\n\ëöa\Ý×‹?+\È~Sž»w‹3\\²_¡G\ä8dZ“\ÐH–\\Q\Ü!z\0/–€\Ò@\ÙEÜŸ\ËW	ºÿrdµ„Û³1\ã\r¡r’\Ê\Æh÷¸§\ë\×IQ\à¡7G\à}\ë\Æ>š1B…c\î-\ßØ>6™ŒMJqO€ûlýŸ”W¢\0–ã°…®\áú4õ±U\r¤EX\Ò2óÀ«\ÝÁ}ž¢\çC(¤c1¬\Î€;bû#}.GQ¸´\ä+h\rR–„(\Ò—Íªþú$\Å)Ä¹\ï\Ã\Òr@ž§\'\ëA\Ø[€\áq;\È\'qŠx\ØT«*8/@‰\ëò\ì`\ZL\\r\æ_ºöUœ\æhÙ‹û¦\É3\Çiö$\æŠ\"È‚M.«ùü¥A”Œ¿I\0“#8AÄ¸‡ \"É¼\á¢Zr+¢\r\\¶š.\Ê&³\Ï>M/4^ók®‡|0,n?)l«1‡ÿe¤…Šú)ûE×½\çm\\90=¾\ä;SVü\à=ÊºDAqû°Ei\×\×x•R÷\Öq‡>K\Þö$ÿ\î\ï\ÙdþŒrœœ\Ñq\ëA·/V©£š]\Ù»\Z¹¤\Ø1\ÜQ’%ÿ\\\È÷&“ñd\Ü¿…\í\êq\Ð\ç\È\â‚Vp‘\×—V\"q5\å.\"Q:\\‘Œ\äÕ‹gˆE”œ¤aŠ‡{h=¡Á¿|ð“\Ìr!l\Ó\ì\\à¢•x\Ü\Óoez§w\Íñ89n0@šDÁpO\Ð^ §\\º\Íu#´][¸0k_&\Ì\àþ©\à²û\Ë\ã|\ï\0ß¶\ã‚(®ôX‘¥¤\Â?sMiByD\åp,\ælˆAGò”\ïz\Æû‚Ha©ðA§¯\n…Z2ŠÔ€\ßÁ•\Ï÷¹v¨ô\ÕLqÑ†.öqõ@¸¢0S\É_®\ÔU\àÊ«»*÷\áæ’ºaw_r\Ô\nƒ\Ëf=2mƒREöiN4±¸\Ø,qS¤Zòµ½ø¹£\ÛP„¸ˆZvk<PV\Ùm\'>j¸\èôÈ·ø¾²¾\á¹Zñf ^­°s9Á\í ·m‘g†¥2\Ì-\ÙÏ¶ƒ$p³V˜o\ÃM\Üu_\ê-öaõ ¸\è¤)Ž2r)@² ¸\Âý®$U¸\Îp“%®L5@\ï\ßkS#W#?¥k’\n4\ÜÃ¤\â,+\ÜbL=y³º™S7ky0…§<7J\0\\\Õ\Ð\\BH~\Öq…wªpiJ\Êý>\Õf\Æx&}^F±À³\r4\Ç\ÒP…+/B\î\íÔ¦	™¿\á¬7L²#B©9n\"¿£\ê‚Tk5\\k&\ï—O¦X’JqÙ™¡B1eQ\Õu)µ²\ÃvVþ\ZÒ•\Zî(˜²Äþ	÷\Åï…ž\0µ1.Ì˜¢Z›ñ«¸%ñ\\ôŠø%÷wQw‰‹o†}jŠK\ãZx\Õ0SH\Ùð_YU6K\è\r\\\Ù\ã>”3+ü¥\ZÁ\ç¬jŠËŒn\ã’G\Ì)u1\ék¸úz»Å¼\ç\Ä\ÍÃ¾!F5\Ä\åm\ÆGXü“Þ¸$…Y>ñ¯ÅšiX\Öq\Õß¹³÷&\Ø\Þpjˆ[¹eâª³b\Ü\ÅR®v®­\â’p‹\r\\&ò\í©÷%\Z–H±½\á\Ô÷™EL±(‹2¤Hk‘5Rµ³õB¸r\">z\"uwÅ·\áP–\Ã\Ï\ä\Û\×hµE¥¨“€X\â\Êf[›¸zý\áâ’“\Ü\ÌGüftóUYû`S™6	K\ÝÅ•õ\î¼hUI4oa\ÖñF¸œC\ëŽP‡%Yø*\È\r\\^“M\\\ÓH/÷‚m\ÈðŽª!\îvû‘HŒGø€KÂ–f¤kí•‚|—“d¸·Š;\ç\ãEÁç»¡\Z\á\ÖË²\àhA&ŽZ¸\Â\ÕO‰\ÌVØ·py\í\Ò\ßl$ò6‚·¨¨&¸C\Íw% i\\¥\ÚZ\ÈP©m\\\ìò6!\ÊR&X°ô j‚[D¡RS1}w»\îÞ¢G\ïndº›>\\\Ý¯œ`¸¹\0#K,tO‰\Ë;Â§‰\ë8pg\Ì\rw>p2£)_…keŠ\×&¸2‡˜¨€ÑúE€°C“øŸ&Iÿ›‡$K_\ÌA;%¹kc†\×F¸ƒ\Â\\\àn²ReŠw\ÙwŸÂ½\ét20\êZZ`5ÀUŠ’µR‹+3M*f¥\Ä-û\Ôý°\Ù\àr÷÷|\Ê0ÔŠ[†\Z\àV#ý\ä­\ã¢\Æ*®òrÍ»:s=>A\'\ÓG´â–¡¸U\Ô-{º]—š\rˆ\Ý\Z„¸‚\×\ë\ë$ô¤\\•Ž[y*Á-š›ÀŠ›\î\êf½{\Î_Œ¿zq$$*[Aæºˆ\äld‘\Þ\ÚW~,—u¯óÀwý\êz8.g0©\rÕ®ViuUp\ïSF.¤QþbMõú€Ø•\Ö%°Z“…ÖŽ\ßM]\Þû³õôp\\>Udª\áÂ²²ŠTM¸\ïÛ¨±þ\ÚT­÷Wõ¶\å\ïý\î\íi\'\ä¤/\Û\n‚[T\Ö;zH¹\ÜÝ¯=@a¬[-	®ð9l\ÞV\ã\èÁz8n­o¯!ˆVì¬¸Hl­µð`Á¥ø”0\Z-V\Û\é²6R8\ÜBê–©\í|\n„«aˆ²(ÿ( t\ï£0† ®JEP\Æ_+\Ì\îGEù\Î	¾.+,a¢q`\\.mó‡\ã¦\å	6\â\Ø\Æe¸aœ|\\m+,r\Ë\ï\ÐÌ¯N 5Á\Ö\åDm\'—\Ú\á§\í\î\Ë\Ù5\ì[\Í\Ô\0w»\Ô1g\Å\Ç.\ïÜºª\ÜÊŠBnžµô:…\Ç\Ý\Ze–\\i\Þø¿C‡~·°i™HÅƒ+\ÙQ•ùVZdÚŸ\ØQ\ßQ\ÍUÓ°Lôñüàº¦\ï»0s\â¬m™%v{‘m\×6J	®˜[ÎºoÜ;D\âOl™Ü¥\ßg¸f\Èiß¸§õ‡+\\®\îö˜Á\î¸Ü¿o\Ü\íF3T\æ{§¼Uˆ\Ò\ï~›<B\ÜR;¹\ÑM\\UÄ¸u—Q„Gwûù\\ÁÕ“¨7RT¦˜\ç2xqe{Ç­\ßÓ˜©Kdn§§\Ý\×û\Ô9—pJ\'9Ÿž¸Œ¸¼Šú±\\\Îz·)f•\Ë\Ý\ÞýÜ´\Ó+>9p)‡| 2\ÊR®_¸õ\Êg\åPm»\ã¬-øzšn5GŽœ”u¸,\åûÇ½ã«˜Q\è\Ý\Z|.sG¶ZÓ¡Ì¸±+\ëû\Ç˜£D–8\é¡\î†\ÛùF»ºVhxýl¹\Ü[{a@q™+)ˆ»6\ç¿\é¾\í\"\Êyi\ÚXp\Í \Õ\É\×Î¸ß–\Ì\Ä ‘À\Ñ\àò]{\ÈpÕB\Í;k|\Þ5>\Ü;ÎŠ~³1.\'¬\'—õWq›g¿–PS$¸ö#$Z\æ\ÔYq«¹u\ë\îY®\åJq¥’IðZf\í\ÉU¸\Å\Z‘:ó\éWš÷\ÕF\íÅ‰£À-ð¸!~Chc°n!\Ü\Ú,¡@~Evy\å´q\à\Ö|ŠÙ–\n‚+%¦<i$¸j^3,r\'nk»£óU/&\ë\"ö\"7\È—J‹ø ò\Ê<8¢¨pm®)f‰}U\å\ry«Yn7\Ì\ã\Ü\ÍqomjSQi\Ý\0s™í”¦hpù“£&¢Š-|ó›\íú6e©X\n3ûk–%JhC\Ül¯n\ÊDUw!NR¨ðÑŸ\Ñ\ÝjEF„Ë¹ð\0*f\0®\076o5\Ë-_L¸|NUA+\ë6~\Ì(¡\Ë‰¯	\×:¾´‚†$,\Z\æO\âñ\â\Äq\á²-©c‘.‚‘\íz˜œ½\Ó.Š÷„Ñ—µ5Xs™6yvµxï»¬Àq\á\ÊD‚’7­\ÂT“\'@‹žG¬¸E\×Pù\áY”ùöTzñòhZU…¬o¤K…µ]÷VÕ­,p´Â¡€¸œñY+\Ì\"\Ù|\àÖµgx\å\à\Ò0/\â‡\Ä\Õ\Ù/6õ ž\àö°\\0Ú°¸7ô¥-\ä\Ó´6j\ï°@9\ÊL\ê…°¸·\ÝbbtÅ¥\î\Ý7ªw(!”\äp/ŸÆ½8ZC™a]\äõž\ïÖœ¢¿¡\ß\æ\Ê3`(\È\Z÷ö\'KW^:¬ø\Î=²\Ë\ËE×¤Ž\çô\à¶*8.£ÒªO¥\Ý\Î+I\Îøm\Å\Í}\ZôU\Þpo$Ž\Øtù’s¿[\í\ë³\Ó\'_)p}v&˜6poµ•P\à²`¦?~\ËfeE˜\âª=\ã@+¸ˆ%iQù„š©û®…\å»\ívÀë‚¿¶\Ü\î\íq\Ýc1û\ØH]÷\Æ:ñ®Š`*\à†ôQ¦¶p\Ñeø\Ú3“©\Ë\ï<Qw˜mþP…’±\Ë\Ü÷V{¸tY–y•šš3J¸¬7‡‡ý®\ç!–!¶Z\ÉÂ—cQ›¸·#¯wTHA\Ø2šBlp\ác³«|\Öik®Vq¡x \å\Ú\Ä-j\êWp}\'lð©«m\\\Ä”V@Uv…6¡tÈ§I\È—º£öqQ¦{®þ[aP1V¡ Õ®¤\Ñø\Öú¸ˆ9˜eX\àƒ“Vq5RªSûý,\\è¸›\È\ïÑ–‚U\Õ\Êi\ÒI\Í\ïî Ÿˆ+:tùtºKy@+¾÷sHE?w\Ïz\Â}\Ìz\Â}\Ìz\Â}\Ìz\Â}\Ìz\Â}\Ìú¿Â½½ý€¤œA\Ä*-\0\0\0\0IEND®B`‚','11 ÐºÐ²Ð°Ñ€Ñ‚Ð°Ð»Ñƒ'),(2,'Ð›ÑƒÐºÐ¾Ð¹Ð»','LKON','Ð­Ñ‚Ð¾ Ð›ÑƒÐºÐ¾Ð¹Ð»','‰PNG\r\n\Z\n\0\0\0\rIHDR\0\0\0\î\0\0\0\í\0\0\0¸zIŒ\0\0\0sRGB\0®\Î\é\0\0\0gAMA\0\0±üa\0\0\0	pHYs\0\0\Ã\0\0\Ã\Ço¨d\0\0\0tEXtSoftware\0paint.net 4.0.173nŸc\0\0(wIDATx^\í]˜UÕµ†^†)\ÌÀ½\Ì0CÄ‚Š-FT0\à\ZjL\Ä<¢»\Ä&QS¬IŸ%ön4‰Š½Dc¯•9ç¶¹sgnÿ­µ\ï%x;sÎ¾\å°þ\ïû?`˜³÷:û\ì¯µ{‰@ @ @ @ @ \Ç`ÿò\ÊQ?¿lI\à\Ðc–Ž9Q(:\åÿ³¤ó7\×-‰\Üx{­–™û^x\é¡8÷`·%À\Â#…B¡S\îv0p\é5h»fÍ‘Zf\î#p\âiK°ðh´”Œ†=¸Q(:\áF\Ò\Ò(\à\ÈS¾\è—Ë´\ÌÜ‡}\ÒK°ôxØƒ¦\Â7j¡Pè„µ;À\Þ~p\ì\é_r™9\áD¸B¡{\á\n…EH®PX„\á\n…EH®PX„\á\n…EH®PX„\á\n…EH®PX„\á\n…EH®PX„\á\n…EH®PX„\á\n…EH®PX„\á\n….qd†Ÿ™¢ç…»qaŽœ\r»j&\ì\á\Óa—Mƒ=ŒXF¯œ¡þï¿ž\Ë\ÙF²G\Ù8¬)m#³¼võ¬\Ì\Ï\äš5d#Û£lk$N%’­\\¦›–e.+³Iv}Uoè‡\Ò;3ù\ïü3ªWŸ3E\Ï\nw£\n£\ÄZN«|\Z|TÀ\ås\èÏ¹ðUË‰³\Ôÿ\Ù\åô*¨\âmœŽInTÁ\íl#\Û\Ð_U’\ê¹dwš\Ê\Î\ê\ég\Üè°\Íÿ-“\ìÊ‡\ÊS\Ù8œJ¬¤ŸU’M5T–£\æÐŸóÈ®©<¹,\Óeý_\rM±\n˜[A\èpª;•TUô\Î#\ç‘p\è]‰v\r±‚\Ê`8‰š\ß;WNÀ“\ÂÕ•„+Ž]5¾!$\Ö\nÊ·qw[‰¶«¯Gû÷¢ý\îYsB«V\Ã7cú(\rð\r¢\ÊYIÞ„*©\ÑÊ¦?®²‘ó\ã_9\rþé»£õG«¹ñÿ\ÐñÐ£\èx\à´\ßó \"\×Þ€À’c\éö\Ä,rz¦j£Jb°²\Ø5\Ú\Ær.›d\ã~h»\ì÷h¿ÿDŸ	ñ¿Ž\è3\Ï#rÇ½z.|Mó\éw\Ùs9R#CZ¥•‹\n\í\"UƒOe\Ì^\Õ7™¾\Ë\é\Ð;?„\Ø+¯!þ\ÞŠ\Ñ^F\ä¦\ÛZ~}Kú6C8ZÚ¤\Ñ2A¯z\\®l¾Á\Ó`\rÐ‰g\"ö\Æ[\è\Ä\æÁÿ—ü¢\á\ß^kð\Ø©õdc¢²u‰–1°Ö &„Ž=ñ÷?Ø¢ŒT<ö{„\ân°K\ëU„`¿¿]F!aU#ZWž‡\ÄGkK6~‡\è\ËÿBð £aõOŸ*òH]‘‹@¼6“¢«O=|õ¨[û2ômbQjÐ®¥:NB\çúÃò&i»F/\n\×5\Övµt8µŠ\êb\ÍüyRñ8B\'Ÿ»\ïX\ìiÜ¬l]¢%Z\ÛU!°\ïÁˆ½üJ:ón¢\í7TIj¨qD\r\Í&\é;\"§A\äÁ\î7þ™{#þ\î{:\×î¡ƒ*½o\n52½\Çmd\ãFyù[[Ô Z\Û× u\ÕHuDõ›d”ÏÀ\Òc\èûŽQiiü½(Ü–’2´žû3$ý¬ZÊÁ¿\Í\Ït¦RhûÓŸ\ÉcO$¯Fý›ùôˆükç’ƒZ±	òòÝµ±ü\\ûCQ`7X¥c)]\êk¹QI8\r®À}& tÀqÔ\Å\Ù{\éø÷\\J\ï\\«mÌg£ «¤\Z\áË¯!\Ñvô\è½ù™T¤¡žMiþ*\"r“^.Ÿ5\ÛS\ÑnŠ\ÎDm×®5”Âž²¦Œùu‹\\a©â¶””#ôƒ!ñ\Éz\ç6&“h¿\ãòj{\Â\î39-ŒLygKÕ°°5.<©\ÖðV\Ã÷­Á\è\ÏÀ7s_\n\ï§dÎ·\0h`O;%\íi£QG\ï\ÍÏ²x\Ùó\Ú¨¿\ïvŸ\×+\ÂU\áHY3ü»ˆdKÏ½Ø¦\è¤\\FvWð`X9i=)ô\ì\Û\0\ß\Üý{\îE÷lŒ\Å\Ðv\ÎÅ°Ê¸‚8´‘Dkm?#ö\ÔsŽE\Ûn;nºJ*\á«+<¯«Bdœ¾:#W\Þ[‰\×P\ß\Ü*Ÿ\î°\îlB¯\×\Z\É!N9\âÏ¾„µðn‚dü“\æÁ\Z4É™G£\n\ÛR2\0\í¸	Ôv‰?B\è\àcUß¾\Ç6r\Å\"\Ï\Ð\Òw<\ÚÎº˜lL\è\Ô\ÝG¡å§¨†±Œ6\ä‰VEUj]û¬¶\Ö=D®£.× z52Ÿ)\ï\Ñ\ÂU£³ƒ›<øH¤Ú©_¢\Ì-pz­§O­2\å\Õ\Óy:z\Æ\îG\ï>go5}\â68\\xZúP_—Ê£§\Í\ê=‘¢–¥ˆ’·u\Öw\Üý0y\ÝAi¯›!ÿ|PMûŽÀ\â#Td\à6Rmmðõo†5Œº[ny]/\×\â…	T\á:\îº)ª&{öø÷†=°\ç}4‹ú\ß\áó.A\Ò\çÓ©º‹\è?\×Â¿\ã\"\êë²=¨ ªo[…ðŠ3\ÕÀŒ	\Ä_v\ÃN\àky—uþ\Ö0\ê¾›‚ø;h+\ÝGx\åjØ¼8…þM\í\è	=\áqGÌ€\ÕkR¶ßµ~\ã¦è¤Š\Øé›°úŒ\îY(\Ê}Ç’¡\è¸ý>\åyL ñ\é§q2\åS§>lF;¶Dz†÷\"^®St\É\Ï>Gè¸•ª\Òe´!\Ç\ìZ	\Öz\Þ\Ï]\Ô6FôÉ§H´Ô+si†¢Ø…û\å Â¸yºˆ\Ì!¸\è(X&|µ¨;T\Þl(\âÏ¼¤Ss\ì%Ã§^@ùTöH¸j5õ\Ã\Úÿp³N\Ñ}¤A„~…Š>zÔ¸¸E\îºPTb\r\nÿ¬oª\Å7&‘ðù©\ÞPd8Ì¥ú_\ìÂµÔ’Á™r¬.\"sh=\ã\Âô¢^+œÁ–­‘½Y\â\Õ7ujîƒ£¶s/&Q”©†\"“\r›%…\Ö\àFøš÷F\Ç}\ë\ÝG*Qƒ5’\çM¸\"s4”§Ï¨¡ºñvm9t¦:á¯›F}\éú\Ì6u—E\ïq\Ù\ÛkF\è´ót™C\Û\åW\Ã7q~\Ï\Âj`xAC\â\ßo\é\Ô\Ì ²ú\î0ú°s3Û±\Úý\àŸ»Ñ¿ý]§\æ>¸\Ë\Ñþç¿’y.O\ËQc\Ï\Þ/t\Ô÷‘Š¹;ÂŸ	†‹p7¢]5¾A\Ó\Ðú£§K\È \"¿¹¾I»Q¿hzF[¶\È*\ê‡÷›ˆ\Äko\ë\Ô\Ì ²úR\íq»)\\®¥S(l\Ü\ÑG÷\Æ\Û\È\Æù.\êÖ‘·-\0\ã>ˆ=ÿ²¶\Ì,xA‡ooXhøºM=añ{\\\ÞL0½ð…K‘AÁ·o=ü³¿\ém\á\Õ\îbøÌŸk«\Ì#±\îc5ˆ\Ê62\Ù\ÔmŠp³‡\×9ò*\\5 µZúN@ð \åH|º^[e±§Ÿ…·Eº±t–)\Â\Í\"\\\çÈ›p»\æl‡L¯~W´\ßt‡¶(7ˆüñ/ð•\ÍN/}\ÜÔ¶ž\Ð3\Â]u.\"s\á:G>=®=‚„S:\á“Ï€»‹b·^8\ä˜ô¦|^KžÁ¶n\Ó3\Â=\ål]L\æ \ÂuŽ¼—¤(/«d<»/C\ìùµ5¹Aôñ§`«\Ò\Åí¡ž\î©\ç\èb2®s\ä\Ë\ãò:V\éD.¾F[b<¯Î»\Ë|“\ç\Ãbo\Ë\rH\ÛzDnö\á:GÎ…«¤x\Þ8t\Ü)H|þ…¶\Ä,X´)\Þ\Ïý\Ëß©\ÝPj½Á¦¶9¡7{ˆp#\×\ÚD\ßmD\ï5·\"lS°p“\ë?‡\Ýk„Ú½–\É.G\áf®s\äT¸ªo\Ë\Çõ§ùr\ås…\Îöv>š\Zi\êÜ©Œö9¡7{ˆp#§\Â\åõ\ÈÛC`ÿ\Ãý\r£»6’ÀG\ëòsj¯¸›}\Û.Šp³‡\×9r&\\K\Ílò¶\Õ\è¸\í#\ä7‡”€oøL¨Cá»Ž¥u›\"\Ü\ì!\ÂuŽœ	W\í.G\è¤sŒo\Ù\Û|¸^øÇ¿¦¼Ç¦Þ–\é	\áš†\ÐV\é¢3®s\äD¸$»¬öø9ˆ=÷’:\Ö\'\àP<öüK°\ÊF©\ÝGms‹ž\îÀ&Wœ–.=ƒ\á:GN„[\ÇRý¹\ê•_®ü\ì\rkÀs\ï\ÖÅ¢.o\ë#\á†N<]Ÿ9ˆp#ÂµúMF`ÿ%\êT\É\\!\ÕÞŽö?ÞŒ–\Þu\êPAc!r‹^¸\ìqy#ý\n.c›®\ZªC\ìO¹~\î–\áø¦Í‡Í›2\Ù\å6‹^¸|B|\ÅL„N\á2¶i\áRzV\ï‘}w¥šG\Í’-ZOYM\röN\ån\Ú\Û2=#\\ñ¸\nÛªp\Õ\\iù\Øcf þ\Þû¹¢|:þz7¬š&\ØCù,²ˆ–Yô\Â\åPY<\î—\ØV…kñHrI5Ú®¼\É\ÜmÚ‹¿ù.‚ûJžž\ÞGy\Û\Ìö¹Î¢.{\Üò™~÷T]”\æ \Âu\ÂUGôk„\Ú\ÎFn²\ØR\á0\ÚV_F!rMÚ–\\„\È],z\áò:\Ð\á38\êº8\ÍA„\ën·\ë\\m¾a\"ö\ä³\Æ\ÄÏ„\èýÁ7mX|aw\ÃuJO—=\î\Ñÿ«‹\ÓD¸\Î\á¶p­\Z*\×\áS<ôû:‡\Ü \å õ\È\äm‡Rˆ¼cn½-\ÓÂ x\\…mI¸\ìmù\Òq{dŸ®s0uoò/¯„]9\êBs\îE\Ëô†p›<b….Vs\á:‡›ÂµøF‰²™h»\ì*zn{\å5öX\n«W\ï‘rƒ\Þ.y\Ü#O\Ô\Åj\"\\\çpK¸\ÊÛ–5\Â?a^\Î£‰$Zÿ!…\È|÷‰6Þ–\é\áŠ\ÇUð¼pY°\Ì!\r\ê\ïÑµ\Ï\è”Íƒ¾\"¹\r¾†½t=Î“h™ž\î²\ï\ê\â5®s¸\"\\¾ˆš»G‡¯\È\ÙBF2Bp¯E°úŒ‚=ŠCdnù¥p¿}œ.^s\á:‡#\ávÝ²7`ü\róXŸ›ƒßº\Ðz\Òyj@ŠOlüÒžMm\Ì=#\\ñ¸\nž.\Û8¸	¾\êyh»\â\ê\Ü\Î\Ù>ó<ü{Q£1Y\Z™·¾mE¸\ÙC„\ë=®JK\ÉX\æ.U\'M\ä\n\Ü<÷<ˆ\ZI\éú¶©mù 7{ˆp£\Ç\Â\å¹\ßxø¦\ÌG\Ç=\è\Ôrƒ¶k×\r³au]Ø•oo\Ëô„p‡7#°\è]\Ì\æ \ÂuŽ	WHYÃ¦¢õä³‘Š\æðT‹–\rð\Ï\ØSÝ²g×`A´LO·l:ü\ÓEm\"\\\ç\è¶pY(usaõªF`Åˆ¿÷N)7h]¾R]FmWñ–½öå‹ž.{\Ü¾£‹\ÚD¸\Î\Ñk\rj„];\íWýQ§’¤/\ëj¦\Ù\ÅËºÜ¢7{ˆp£[\ÂUa\éµJ©õ¨•H\æð\Þ>öÆ¿\ÇBØƒ§¥÷|g²/Ÿ,z\áò}£*‹p\Óð”py@ªÿ8ø\Z öð\ã:ó\àQ\ä\È\Õ7À\îS«Z\Ï\Ù\Z‹^¸\ìq+f °P„\ËðŒpÕ€\Ôl\n“Ç¡\í\â+Š\Çt\nfÁ\Þ6±\îØ£fÁ.Ÿ™\Êd_¾Yô\Â\åpŠ\Ä+\ÂM\Ã;—¼m\é:\nñ\×\ß\ÒO›o\Ù\ã\Ã\æ¬>\ã\ÒN!£m@O·š„»ß¡º\è\ÍA„\ëY	—½m\rŸ\ØX‰ö«®\Ï\Ù\î^÷{\æE\êS—\Ã\ÊdW!\Ñ\ÂA\Â]°D¿9ˆp#[k\rl€o\æ7{úý¤Ypˆ\Ìwù\ç\ï{`Sº^e°«`\è	\á²\Ç\Ýs©þ\æ \ÂuŽ¬„[\Ë#\É\ÕŸw	’þ€~\Ò,Rl\×u¦|nÞ®B¢7{ˆpc«\Â\É\ßt´ôŒ\Ø]÷\ë§Ì‚C\äø\ë\ïÀ\ê?QEo_³©\é\áò”_Be…\â÷¸³a\rh@\à‡\ålPŠo\"­8ƒl\Z›Áž¥„«\æ\Ú\æ/ÒŸÁD¸Î±U\á\Ò\ÏZJj^ý+$}~ý”9p\ß6zÿ#”g)å§ó£zBnö\á:\ÇÖ…\ËýÛ\è¸óœ\ì·M¼ý.Ekß‚\år½4N/W…Ê»-ÖŸ\ÂD¸Î±U\áV\Í@\ËÀ‰ˆ=û²~\Â¸oÛ¾\æX\Û\rLE\Ã\ã%›\ÚS¨ô„pIþ÷×Ÿ\ÃD¸Î±E\áòÀ\Ô\à©ð\ïù-\Ä\ßy_?a‰?E\èø\Ó\È\ê\ÛfjD\n™žn	w\î7õ\ç0®sl\Í\ãÚ½& xü\éH|fþ€ó\Ø\Ï\Â½#,õ=‹\È\Û2=!\\ñ¸_¢¨…Kÿ¶JF£õì‹ôùô\æ»ý´lW®Ï\ÚÄ–B§7{ˆpck\Â\å\Û\ä\Ã\ç_Š”\ßüˆrôæ»°¡d\å[D£\É]\áf®sl]¸\äqôS$m[?a7\ßA\Â\å•R\Ý,«B \'„[5þYû\ê\Ïa\"\\\ç\ØZ\×*\Ðÿž\äô\æ½•B\å’\áðÕ‰\Ç\Ý,Œ\n·²þ\é{\ë\Ïa\"\\\çØ¢p©Ÿi•\Ö#p\ÈqH|´N?a±Çž‚]=6_&}\Ü\Ì0\îq›÷ÑŸ\ÃD¸Î±5k—M‡=fâ¯¾©Ÿ0‡ø\Û\ï p\àQ°úL¢¼eT9#D¸\"\\\ÆÖ„ë«™M\ák¥:ª\Æôº©d ¨\ÂZJ*2\ÛR\È,v\áZ\"\ÜÿB\Ñ—~f‘\"—^‰d\Ø\ìm¼¤’—V¶ô© @yS¸\\\ì\Â\íò¸¾¦=õ\ç0®slU¸²\Úý§Â¿\ÇA.¿®Ÿ2‡\Ä[\ïÁ¿óA°†4ª¼¿nO²Ø…›>Tl\ìI»\êOa\"\\\çØªp\Ù\ë\Õ\ÍÅ†’~\è¸þfu”I¤\"D®û…\ËU›iH\n”^®oò|ý)\ÌA„\ë[÷¸iZ\Û\×!¸ü‡H|ô±~\Ò\âÿzÖ \Z\Ø\Õ\âq¿®—‘•põ7µ*›\Ðq‡ù\í}\É\rB\ß_«\×ø\Ìö\"E¸\ÙC„\ë\Ùz\\uz\Ép„\Ïú)’†¯\Ô\ìL\Ä\ÑñÀ\ßH¸\ÃÕ˜IF{\nžn%	Wú¸\nž.R•N\Çý\çZý´9$?^\ß\Øy\ä\å\ìr¯\Í\Ñ3\Â·“þ\æ \ÂuŽn	—E§w\áw2\rö\ê\áK~Gù\Ë`K\ÒÂ­ \áRki\Z\"\\\ç\ÈZ¸<º¬Ž±ƒ\à\â\ï\"þö»:3\à~tâƒ(¿þ™\í)4zB¸\âq¿„w<nšjªt\Úq­NÁ’Á¦\æ‘¾¯+\Â\Í\"\\\ç\è–pµxZJF\"t\ä\ÉHXf·ú¥b1´\ßv·²W\ä}ÍžB¢7{ˆp£»—i\rn€¯a\Úo¾K§b.§ZlX\'¥¯o-dñzC¸\Íjµiˆp£\Û\Â\å\ï«.\0«E\ë	§\ßx\Ð‹#tò9°KH¼r[Ÿaá’j\ç\è¢7®sô\Ä\ãò\ïY½\Ç!°\ÛR\Ä^ù·N\ÉR\É$b¯¾AöUÁb¯›ÉžB 7„+·ž.O\rURù•5\"|\æOuJf \Âeòº¾Y{ª<öŽ\\nö\á:G„«6ðœ\îh,3~¬\r‹·\í\Ê?\Â\\kÄŒ\Ì6\å›E/\\j\í\nõƒLC„\ë=ó¸Lj ‡4Á7nWD~½N\ÍX¸\ÉÏ¿€µ\ÝXUº’ª\è…\Ë—\×*W\Î\Ò\Ån\"\\\ç\è±põFw«\ßx¿ùt\Æb:Es\ìs\ìa.\â U\Ñ—¨\n¶j¶.ns\á:G\Ï=nšÖ€‰ð7-@ô™\çuŠ\æ\Ðñ\ÄZ\Ø\Z`•O\ËhK^)\Â\Í\"\\\çp$\\]‘¤~g\èû+\ÍO\r\Å\ãðM¤®XySá­¤òŒp+$Tfx\Ý\ãª\í~ý&À_?I\ËÒ©šC\ëªÕªnÜ®!\Ïwðt]\Ô\æ \Âu\Ç\Â\åAª¡ºVïŒ¶Ë®Ñ©šCü\Ý÷á«¡\Æb˜ûõ\Ö=#\Ü!Íº¨\ÍA„\ëŽ…ËƒTô§5ˆl» \'ƒTþ™û\Ã\Ö»†\Â\åB	™E¸\ÙC„\ë\Î=nš\ÖÐ©j)d‡A[»Ys3Ùºy\Ý\Z¤\áf®s¸%\\^\ÑÄ‹#¥\æ]M\"Á?uWòò“ô•œ\àuE¸\ÙC„\ën	—io¤¾n“ºY\Þ4BÇœB\Ï\é\ÈúeO—D\á+¦‹\ØD¸\Î\á¦p-¾¬køL„ökº9DŸz¾ú°L\ÎhK\Î\é	\áòÊ©>Mºˆ\ÍA„\ë®z\\ž\×\å\Å#¦šŸ\ÓM$\Ü\å[h\é3Ž\ìžó\å Y\Þ\è	\áŠ\ÇýN…ë›µ:~L§\æ>\Ü.“½®Ý·\í÷>¨s0‡¶\ß^\ß\Ø]am¢¼ó\Ü\Ï\áfG\Âå³“r Ü¶.q \Ü)ð\ÏYˆ\è£ÿÔ©¹·…«©†7\Ã?\ï@ƒ9$>]\0\ß3\Ô{Ùž\çË°½\"\\»tª.^sp$ÜšÙ°¶Ä¿\ßÒ©™A\äg¿JŸT\Øm\áR\Ø\Ùg2{1ƒë€¿®Kwõp¸<‚\Å	H¼õ.:S)“û\à´CÇ\nkh½j0ò\Z.{E¸Viƒ.^sp$\\\"\ï\'Mü\Ë\ì…\Íkn¦ðq\nõý¨\ßßiª|Gð\Û\'\"þ\Þ{:5÷‘Š´«K¶\Üò¸L«z–ªW¼<±3™\Ô9™Aû\Ý\Â7}?Xý(\ï<†\Ë\âq³‡#\áRAó…Í‰\Ì½\ÂWS82\Îe²#\Ùs\Ô\Í%û#|\ÆO\Ô\rv¦ÀG †/ù=\åU\ëšp\ÓW­òT\Í¤A£óº)²?´\è(²Ÿ\Z*³¼y]nöp&\\>\Ü{0bkŸÓ©™Aª½‘K¯¢¼*¨Re\ß³‡N§ð¯·Þ©S2ƒ”Ï‡ð9“\Ç\ëšp™¨P2wÝ§\î2‰\È%—SC1\êo<È“\×\áf§ÂµJ†\"z\ï\Ã\ÆÃ¹\Ä\ï ¸÷ÿP\è[Ny“xY ™<ÿŒÿ\È\Ñ@\ë	\ç ¹þ3Šð\É¡V‘\È&|\ÝT\Û\î†Ï€\çý\Ñiø’0Žj‚¨|·\çAª\Ìö§7{8•«¹\æF£¡(ƒ\Åø\Ó\Ï!0_o\r\ìé°ŽGB7&ý\Ì\ØH¿S‡À‚¥ˆ\î3\ï}ÿ‚%°R\Ñ\í0S•ñ0\Ä^x\Åh\ã\ÈG¸†O<-½F¥ó\í\ÎX‚[ôŽp§PsnÖ“9œš­\Â\Ã\Ös/F\Òð‰ü%\Þ^Ep\Ñw\à½+¬\ÒQ°ûŽƒ\Ýobš}\'¨ŸùjwFðÀ£I´o_\ÄÀ\àK¤[\Êù\Ìb3K-z¯\ÐI\ç n\Ó9šAû…=v\'\ØC¨Q\Ì`‡qzG¸¨V$t±š#\á’w\áƒA\âƒÿ\èÍƒWüD®[ƒ\à\ÂC\Ø\å vX˜\æ.#¸ÿ!ˆ\\õ\'¤¢Qý\ÛfÁƒF±G×’W’öø™\Ê\É!Õ¼n\Ù$\å\ÙMR%Ö¯Gp\Ù\nz—\Zc\ï²EzG¸¹f\èb5g—\ì$/cœ†\Ø3/\és‹\Ä-ˆ½õ¶b‚úš¹7‘«o¤\Èc¸ªx™\Ê\È\rZ%\åj\Ê)\ÕÞ®s6ƒ¶‹.‡ÕŸ\"™\Z\Ê7\×á²§„5»©Ú©p¹e\ÞP2\0\Ñ\Û\ï7ºP P‘XÿB\ß[k;¾ƒ\Ö\\E·ûSøºó~Hüg\Î\Ù¢O<\rÿüƒa\åcã§„3<\r\àX¸\ì\rj\Ðvþ¥H:\Õmñÿ_\ãüô\Ñ3&\ç?\ëx\ê­\Ñ3:H•µ\"|ú…”WU:_“\ï´)E¸\ÙÃ±p\É\ËØ¥õ\ÔJ/Bü•\×tª\Û8\Â\è¸ñV%¨n/\Ç\ì6©œ{MBhù)H|f¶K\Ðñ\Ç\Ûa•ŽK\ïP\Ëåœ®7{8®š7K\á2yƒ›n7~rC!!ñÉ§­8‹\"^\Ñe¸‚s9W\ÏTGñµ/\Z-\çøû ¸\ìjÆ€Å”\ÑôŽp\'\ÇM“\×,‡~x~^ˆòNô¾Gañù\Ä\ì™rR\Öò‚—_ü[µ\Ì\Ò$\Ús\r\å5\06/v\É\Õ •w„;¾x„[Ù¬.*‹\ÞùN\Ù\ÛH…\ÃÔ¯ÿyÀr}f\Ó\×\Ë\Ä­Áð5\ï…øK¯hK\Ì ú\ä3ðM\ß6\ç\'\ÂÍži\áŽ+\áÒ‡\å\ÊË‹\Ô[W®F\Ò\ï×©{\Ñ\Ç‡¯q’û\ß~³T\åL^w»¡h¿\î\Ïf©l\á³~N^·&³-&\è\áöÎŽ¨\Ñ\Õ?ny\\&¹\Â7Áu\ÜrNÝ›H’·\å;m­^U°\Ù\Ó\ær¾“*·\Õk¬Z(‘xÿCm‘û\à·\è]b\ÏO\×Q¾9\é\nxI¸\ÑXqWWÞ–’Qq™o\Ì\':þ\ïN\ì,*³|,\r$¯[=-*\Ðq\ë]\Ú\"3H¼ûI‘_Žö\éJ7{¸\éq™v\å\nG£\íbó§\æ¼!?xðñ\Ô@M¿s.½-“=_-\Ï\éV¡õTê–´´h\Ë\ÜG*Úö«oPƒT9Y\é\r\á\Î ;¦¨BeU‰y\ä³\ßx5°}ðQ‹7À\ë\Â\Ú\Îý	¬\ã`Wðg†2\È\íaM°\Ç\í„\è}Kg\0\\\ï\âÏ½LÝŸ)\ä\åsp¬7„\Û»w\ÚDnr!¡\ÛW\r ðYT}\'#xÀr\Ä\ß4{\\.¹üøxsûIi”ko\Û\Å/»%\Õh»\àWF7T$¿hA\è„3`•\ê\Ã$½\ãqG—\ÇÝˆœž=¤¡\ã~H\áœù«#M£\ã¾G¨œPžH\ï—G\ÑnD^\Ýø\Æw{ùUm¥û\àX±G§Fbpz*ƒ®Q„›=ŒW‡\Ì6ŸX^ð™«ÕjÅŠ\Ø?\×Â¿óbµQ^„˜\ésMŽlªf\Â\Z>‘+®Ò–šAr\Ýz\êúì®Ž\Êh‹[\áfS÷+ñRÿ¨b2\ÚV_Œd\È\ìjˆ=ñ4»/M‹¶’úµT¹2¾o>\È\ã	%•º\É\r´\Å\î#\ÕA\ÛeWS^Õ™\íp‹\"\Ü\ìaL¸L%Þ¹i\Ï;d,‰÷\"u>S±€CDÿ.‹aÐ¢U\ï´\É;\æ•\äu5Á7vg´\ßp‹¶\Ú}ðò\ÎÄ«oÀ\ê?2}ú$×Œö8¤7{.³K¼å°úŽB\ë\É\ç þ¦\ÙÔ\"Ee\Þq\ëýðM\ÜVŸ\Éô-\n\ä6»MÉˆ:‚¶­‡Ÿlt“}*B`ÿ\Ãa\riR§Of´\Ç)½#Üº\â®bº…Vs¼%µx\âO¿¨(+4$\×}‚È•€\Õky˜út\Ãóµ÷),Z¥\àŸwZ_l\n|K~\Ç=«‘lK<\î\æ™\îHw#ªkK&Q\Ë]ö57#±\î\ã‚\Ø\nÈ‡‚ÇŸ{ÁCO \Æe\ì\ê\ë\ÏnŽºVó]CS>}µ\ÑSHR¡Vª\'u\éƒ\ÚMˆ\×;\Â\å=\á*òˆh3	¤?\ßZ®€ø”\È\\˜sã—Ä»\"|\Ñd\Ï(\âxCJsB¤Ú®Á=Q{„M\ëb\ë™?¡z9\ÙL¸,\Â\Íù®&:÷žB\á\×\0_¡¶ª¥ü–™|g\ÞU“j\r#ñþ\Ðö«+©¬›É†*µQ=\'kr]\'5„\Ô÷ôÙ…¾\ç5\ÆÊŽ½y\ìµ7I\\µ\ê@×½®7{\äU¸]d—°€Â¿\ï!h¿õn$?û\íj€\Óð=yg\"‰\ÎhT5±µ\Ï\"ôýU\ä]\ëˆ#\Õ=¿\í*v­_\î]‹\à‚o!eò\àôxþ\ßP‡¸\îuE¸\Ù#r\Å5_	7_S]ùò‡\ÔDbªQ|8‘?Ý„øo#Ž(+²·Æ®ß¥JœøøS´\ßó B+VÁ®›A\rD¥_¯–/~Í–¢%y]L«\ßþC]÷ÁBûš[`m_KI•É–R„›=\nJ¸Ä®yBu+ÀiT“¨’T\Ã\î;\nþ™û!´ò<´]q\Úo»Ñ¿?©¼gù\ß\ì­Û®úZ\Ïú	û.ƒ]6žž{»‰ð\r¤ôj\Ò!ž\nó\ÜõòJz\'jˆ¸¼BŽ\Ö_\×}¤¨1L\Ú~XT7­.Gi\"\Ü\ì\ÑF}\"{ô\Î\é>R;rÊW\r˜*#÷§¨uW‹ †6\Ã.%¯Ü¯‘<\Ìd\Ø¦|Eú·úy\ßið\r –\Ó\ïV\Ósü<§C\éyK¬Q—Ÿ‡\ìo\Úñw\Ì\Ü\Ü\Ñ—ŸDßƒ¿‹Q‹—„›òTA™Bû\ÝÀ7e_\Øý\Z¨\à\n¸RS\ÅL{bª,¼W™§$X\Ì_#ýœÿ„j¦´<L«œ¼`\Íh=óBý…Í \ãñ§`nPge²£Gô’p9,q:8³%ð½ù‹(œ¬£‚+²i\á“6ú\Ó<þŠ™\Û\î\Ç\'³øFPC1œ\"5·¢ñ¸Ùƒ…Ö•\ç\Ó ³²\ÈGW…Š\Ö0>™qGu!¶I„ú+\êbQcQ\î\Ò •·{H¬û„¼\îj´\Õü‰üB£\ì\êN”MC`·Eú›Abý\çð•M†5´>³-Ý¥·ûˆýý	øg\íN\â-ƒ¯rVZÀ:‹us`s[1\Ë\è	$\\+ƒ‹£H)Zs:+!\Â\í>8‡\Ø?žD\è°\ïR¨5™<|;U2NX„lQß®Á…Ç¤?°!Dn¹“\ê\ë\\Xe.\ÌJxG¸#‘\âÁ©·\É×¡ýw×¡uÅ©.ý‚‹#>\Å\ËZv¢\Ñ\ÓG’>?ücv‡5`\n\Õ[žn\Ë\\Ÿ³¢7„K\á{\Ü\rVN…\Û^\ËË—?\Å\ß~‡ø®°ù»wŒÔº|\ì¡\äh\ÔÉ—F˜=!\\ž“\ìS‹\äºOó\"\\ [\Ä^z	þ±;§/\Ã&ñeª\ÏY\Ñw&\ìÞ£\í-£ó¸Spý\ì³\Ö\àI\ÎV§yB¸\Õ3am?\ÑG7z¹“@\àÂ—_\r{ôN\é9\äõ9+zC¸³\È\ã6 r\Í\Zt\Æºx‚\ÂDü?!0\ç@X}Æ“\0\çôl\Ê\ÂU{MC\ëŠUjc¹@P\è}\ç$\ê\ç\êp¹\'ƒTžð¸¼†7x‡T$\"T‚‚G\ÇC\Âß¼¬þS”3\Õ\ë-\Ò\ÂeZ#g¼N|ð‘\Ú)2R\ÑB‹Ž€µ\Ý(}K7½®g„\ËûQK&¡\íª\ë^\ì$¸…¶Ÿ\\F¢Ý³\í~\Þ\î,5Ÿ\ëk\ÜC*:bo½À>\ìu\'d¬\Ó[¤W„\Ûu¼ŠÕ«Ñ§žS§	…ž\Ó\rJz³\noT\é\Î\è²W„\ÛE¾pŠ\ÏNùýºx‚\ÂE\Ç\í÷\Â×´—ºs©[£\Ë^.¯[¥Uˆþ\ãIuÌ¨@P\È\àûùA«d‰qN\Æ:‘^.\Ó\ZV\ß\Üý‘ú¢E@P˜\è\ìL¡\í¢\ß\Â\ê?œÎ¬\ìG—½(\\©k)ƒð…—\É@• \à{úyöø¶º\í0S}\ÎH/\n—io†U5w= \r\ÞJ>\í\Ç\éAªº,©<)\\~q\ê/Xƒ\Æ\Â?cu\0¸@P\È\è¸õN\ØuÍ°‡ðÁ\éY„\Ë^õ¸ª¯P·£:E>°\ËBÄžzA‘@PxH|´¡\Ã\0«\×H%ÊŒuzczV¸L\Õ\Ñ\çkG\"°\ÛAˆýc­Ñ›‚ž‚g@Ú¯ø…\Ë\å\éˆqkƒTž\î—dñV\Ã?g\nI\îP‚BC\ì‰g\ák\Ø3;l\Â%r\ØÜ«\Zöø9h»\ä÷H¼û¾.. 0ô>ÿ’´\×\ÝÚœ\î6#\\\Ý\çU—]•ŽGp\éqˆ>ò’d®WP8ˆ\Þÿ¬!5°GP}\ÝR¸¼\Í—\ÉÁ-Y5o¬¡\Z‹\Ö\ÓŒ\Ø\Ú\ç\\ÿ¹œž!\È;\â\ïˆÀ\âc`õ˜¹wq›\î\ÆdW\Î$BõƒG„Ž\Û\îE\âµw‘ü|Rmm\êFq\Ì\ä\ê2\ì\ëo¡p¹2s½\í\â6+\Ü.²€),±J&PaUÐŸuú=´ýö:t\Ü÷\â/¾Jý\á\\÷	’J\\/š\ã\'\ë}\à1Xƒ§P½\Ü\Â\ÅrÛ¼p7¦\Z ÷¦~p\Érý9„ØŸ\ØOÿ¯\nMp(\Õ9þs”®‹\êhE¸BaR\æq…BR„+!E¸BaR„+!E¸BaR„+!E¸BaR„+!E¸BaR„+!E¸BaR„+!E¸BaR„+!E¸BaR„+!E¸BaR„+!E¸BaR„+!E¸BaR„+!E¸Ba2WÂµO<m	>v\ïI°«f…B\'A,}\Z\ÂýÒœpƒ§ž}(–¯Dªj`òB¡\Ð!S³€\Ó†¶__y¤–™ûˆ¬:¿¶ó¨“–µ\Ô\î°\ÌW¿»P(tH\ÖR\ç\Êó—µ_võh-3@ @ @ @ @ o ¤\äÿ)\æjù¶º¤\0\0\0\0IEND®B`‚','2 ÐºÐ²Ð°Ñ€Ñ‚Ð°Ð»Ñƒ'),(3,'Ð Ð¾ÑÐ½ÐµÑ„Ñ‚ÑŒ','ROSNEFT','Ð­Ñ‚Ð¾ Ð Ð¾ÑÐ½ÐµÑ„Ñ‚ÑŒ','‰PNG\r\n\Z\n\0\0\0\rIHDR\0\0\0\î\0\0\0\î\0\0\0>\î;\"\0\0\0sRGB\0®\Î\é\0\0\0gAMA\0\0±üa\0\0\0	pHYs\0\0\Ã\0\0\Ã\Ço¨d\0\0\0tEXtSoftware\0paint.net 4.0.173nŸc\0\0 _IDATx^\í\\×½\ÇyƒÀ¾YvaÄ€hð-‰Š/ÁJT|\æ!*Q“XcL}4‰I£Q	¾b’zÅª(ø¨Êš‹7iR“\ÆÄ´·ÍU¬1M\ÓÜ¶ù$\íM\îMb\ïŒ\çžÿ\ì\Ì:\Ë\ì«0ðû~>¿\Ï\Ì\îœ÷9¿9gfg \0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0€®Í†gŸ=£\Ñh\Îñ]Ÿe4\ÎmÜ°\á\r¾\0h¶<¿\åŸq±Vc41«\Å\âU&ƒ‘%\Ù\ØÖ­[ÿKL\0p»Ù¾mû×‰q6FJMNñ*›%Ž¥$\ÚÙŽ;þ&&\0¸\ÝH\ÆMˆ‹g)öd¯Š‡qh`\\\0TŒ€\nqP!0.\0*\Æ@…À¸\0¨\0\ã B`\\\0TŒ€\nqhŠg\Ìø\íý÷\Þw\Õ\'\Í·÷\Ý÷w1º?Œ\Ì\Óüo·||\Ð\Ì\â\â7\Åø\0t=\Â\Â\Â.Zb\Ì\Â\Û=¾\Êfÿ§\Ý\Æ\r1Di¬ñŠy5VW¬\É\Ìx¹%\Æ KRg1\Ç2{b³\'$6+z61>o¯Šqýb\Ü½±>L\É\ÓW\ÊW®d^\ÎX~¢\áñ\ÞsF kRg±\n\ï\Ê*M®\ä$»`p¾õ«q-&s}™’§¯G.*§5\Ö\ã‚.Œ€\nqP!0.\0*\Æ@…À¸\0¨\0\ã B`\\\0TŒ€\nqP!0.\0·“1c\Æè¢££\Í|·¥’\ÓŒÈ¥T\Ï&eµZ\Í\Ô~|€\ÛË¸¼¼w\è?\àñ]\è“(,W7Š/\ÒŒKT¬¯’(l‚\Í\Æ\nòò^bp;™Z8\å\ÍÞ™½˜\ÍGÓ1x´Nk\\_â“¨½úÜ™ÅŠ¦L©uF\à6ãº€qz€q]À¸@=À¸.`\\ `\\0.P0®¨\×Œ\ÔŒ\ë\Æ\ê\Æu\ãõ\0ãº€qz€q]À¸@=À¸.`\\ `\\0.¸}õXZºtliI	W©*û\Â/Œ-//Œ\ãºh“q\Ë\ÊÊ¢6n\Ü(´¯r»7V\ÉX\ê7\Þ©t!~ý\ë_§\ÜSTô\ê=S‹Xñ´\é>©¨p\n+¾œmÚ´©¥\ãºh“qW¯^µþ\Ùg…öUjw%Q¿Í˜qò\Ýw\ß\íNi€.\Â{g\Ï:¦\nFŠ5Æ°½Ñ«\Â‚\Ù\Ì\âbv\ï½÷\nƒ\Æu\Ñ&\ãòö\ìEf¤öUj÷Æ¢þ¢ü&Ožü\ÝÙ³g·P\Z ‹ðÞ»\ïVOš<™……†²\î)©Š¬±hÀÌ›;—-\\¸\Æõ£q,X\ÐkÎ¬\Ù\Ìl0)†o,\ê/VGe\ØHñA‚Œ\Ë\Ï\Ø0nG1\î\ìV³mWÆ…q\nqa\\ B`\ÜNq\ãv5`\ÜfÜ™0.ð3.P!0.®q\nqa\\ B`\\,•\nqqs\n¨3.P!0.®q\nqa\\ B`\\¨×¸@…À¸Ì¸¸«|Æ…q\nq±T*\Æ\Å\Í) B`\\Ì¸@…À¸0.P!0.ŒTHg3nb¼MHÃ›l^V\\\ãµ\ÒYŒ»ñ¹\ç¾7,88˜…‡xUpP0‹5›\Ù\æM›¾“€qz\è,\Æ]¿~}FTTT/¾ë³¸\Ñ{mz\æ™t¾OÀ¸@=t\ãú¨\×Œ\ÔCg2n\Ã[o\\«¬?\îU7.†T^;P&F%`\\ :™q¿bŸ\êû£É»>Ó²ús\Òe\Æ\ê¡S÷\\Àg\ì÷fv½.Î«Ø‡&2\î\ÇbTB\Í\Æ\Ý@ñA‚·¦¨¨ˆ…†„À¸*4n·ˆ6xð`Þ\ïN¦4@wø\â\ì\ì\ìO#\Â\Ã‡’`ÜŽa\Üd»E„…³¼\Ü19û\Î;\Ë(\rÐµxÀ \×BO%\Ùœƒ¢™Áã¶Ÿq¥´y?%ðþŠ5šþÀ£Î¢ø ’’”2\'\Ånÿ³Ý–((\Z˜M\r@÷\Z·™g•)]\Ê\×f\å\í\ì\Üÿ$%)\éŠº0S§Nžž=p\Ð_\âc­,\Î\Z×¤ya\Ü[h\Ü&þ¥IyRQÿ2\ì\Ï\Å\Å\Å)\0+}tÊ„ñã¿ŒŠŠ–cÒ ‘\"·}f\\\ê\è\èh6y\Ò\ä/x?\åR\0\\\ìÜ¶3wá‚…_GFF2{B’\Ç\0‚qoÿ5.Õ—N¦+V¬øj÷Þ½C)<\0ükÍ¿\æl|n\ãÿ†††\n‘\î`Jƒ\èV—Œ@\Çh6\'2\Í>|\ëW\ãòz\Õ\Ó\rJ_)_¹¨œs\ì-7.¥E\å\á‡ÿ¹u\ËÖ«µµµ}),\0Mrö\ì\Ù~û÷\í»\Îw¿—+\r¦[d\Üó\\”WKô\r—‹6\Z7˜\ë¹”òiN\ïrIøu©,™600ð{~8ž\Â\0\àG\r\ã\Û$mD‹·\Æ	\ê7”‹òj©\\´Ñ¸„Rú\ÞD\å–ð«q\é\ÒA¥a‘V:@‹‰ˆˆH¤ÁD¦¥uŒ\Ûfü`Ü¶â—¥rŒ\Þ(´sF;\èfT \Õ\Ø\íö\ä‘Ã‡¦£\æO\ã\Ö_YðÆ¿.ÿ\ìúŸ|Ð§¤´ÿ‘] -\ÆeG‚þô\è\'Bº”¾R¾t\ão|{¥\Ä!&A´Ù¸\Å\Ógm3ft.KKKK \ïh3£FJ_PÀfLŸÎŠŠŠR\é;·\á¼\î»bá†Š÷®KV.=«¯³^£´É¸o„ÔŸ7\Ü`¿\×ó´\é¸B¾n\âaþha\rtÿ.&A´É¸£G\Î,œ4™M),¼1aÂ„ô\0~cþ¼y÷\î\Ý\Ëv\íÚ•AŸýb\Ü\êØ‡\Zn“2²\ë¸q/ývW™Œ{\í|H=?\é+\ç\ë.v9š];ç¿»\Ê[¶l\éÿ\â\Î\Ù\âÅ‹\Ðg\0üÎ©S§F¿ò\Ê+‘´_8q’Ë¸¾ZE\ãž\ãÆ½lR4™’¾¿\Ç\Z\ê¬~5ný…nõ\×ë¬Š\á=\ÅgÝ¸Á\×:\ãR˜„8»³WoVŸ/\×\áphjjjF\Ò>\0·œÅ¥‹\Û=5•tz\áÁo·«—Ž;ß¥Õ²ŒôVZZú¶3:\0·‘U«VM9rä•¤x³˜b…A\Ù\Ü\à\í\ÊÆ•L+ü\ä\Ã÷óÇ»°j\íª|gt\0n3K–,)—;öR’-‘ô†f\Í\ÛUKß§¥tgz­Ž¥¥vgE“\n÷\Øò\å0-h_V®\\99\\~]RR36cÞ®h\\úÎ¹<Ö±”\ädV4µ\è·6l€iA\Ç\à¹\çž+œ2e\ÊùÄ„Df4(›·«W2-\ÝHæ¦9s\æl{þù±\Î(\0t\Ê\Ë\Ëó‹‹‹\ë˜\Éhô0oW2®dZ“Á(¼¨± dÁ\ìÞ½wŽA\Çd\×K»\ÆÌŸ?ÿC«\Õ*üù\Ý\æ®b\\\ÚR½cc\Ì,>>ž-{øá‹‡¾\Ë€Jee\åeË–}l±X˜•ÞµsW1.\Õ\×kaqqqì‡?~¹zÿþ~\Î`\0tp~ö³Ÿ\r\\÷\äºÿ¤ÿ¤\'=Y\ÕUŒKõ5™Ll\ÓÆŸ½ú\ê«\Ò?@;v,có¦M_j4\Z\áø®`\\z!_«Õ²—_|ù‹\ÚÓ§\í\Î\Ã\0¨ŒŸÿü\ç)/¿üòwaaaŒ\î8ó¯:­q©~\á\á\á¬bwÅ·Çu@¥\Ô­µVî¯¬\n\n\ê¬\Æ\Õr1ª_\ÕÁªúªª*ƒók\0T\Í@GŽ\é´\Æ\rdT¿ŠŠ\nø\0ƒýû÷›>\Ì\Ê\Ë\Ë;•q÷\îÝ«?qü8;p\à\0Í¼\0t>\Þz\ë-·¿£\ÔŒ\Ël\\/\0:5Á¸\0t9`\\\0TŒ€\nqP!0.\0*\Æ@…À¸\0¨\0\ã B`\\\0TŒ€\nqP!0.\0*\Æ@…À¸\0¨\0\ã B`\\\0TŒ€\nqP!0.\0*\Æ@…À¸\0¨\0\ã B`\\\0TŒ€\nqP!0.\0*\Æ@…À¸\0¨\0\ã B`\\\0TŒ€\nqP!0.\0*\Æ@…À¸\0¨\0\ã B`\\\0TŒ€\nqP!0.\0*\Æ@…8k”£yÁ¸\0t\0\Z>\à\Æýá‚™+–]¿`¶\rbDÑ¾…‹Ž“¹bXý…7\ã\ÖÀ{\Ñ †i^ì’Ž]ûÀÝ¸\×Î‡\×;óRŽ\ÓXì²–];\ã‚.Lý\ïB/±\ãÙ\ß\ÇpY¹±\ì|k\á3«ŽK\Ï÷\Í\\	\\&®$~\\Ï«û?1º@\Ã\ïBÿ\Ê.\ëøqƒW±´|\Æ\rýDŒ*Î¸ú\ï•\Â6%ö±–5œýµ˜\0]†‹™o\ßøx\è\rŽ\ä\Z!}–$}ñ\Åõ\Ë\ÂöS1ºÀõ\ß÷:w\ã£1Lóºñ\îb¦\Ët\ìh@pÃ¥U\nÛ”nüq\Ø\×/ež“\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0ðþo~³\æÌ™3\ÓÄ~e$W¥¿\\™Ÿ—WyøÐ¡ü³W\Þ{\ï½\éO?ýtelLŒbz­Ñ ¾ý+W®\\¹ˆ\ï{\å\ÕS¯n,¹ÿþÊ¨¨(Å´Ú¢™3fVVTTL\áûMr\âÄ‰Ê±£G+\Æo\rPY¹o\íûÄ®mÛ’¦N™R\ì‘V[Ecaó\æÍ•Ó§O\æŸ=¨9VSRº¨´2::Z1~[W¹p\á\Â\'ø¾D7.Å°þVö\àÁ_?~%\ß÷;KCCC™\ÉhdFƒÁo2\ÇÄ°;{õf¹¹¹,Åž²Y\ÌK‘	&L›<iÒ‡9\Ãr˜->^1½Ko`={¤³¬^½ÿ“g1ß™“2S§®\ã\Û0x\à fµ(§\×*YXH([0¿„\íÝ³gƒ˜]c‚úÞ™õ“‰\'²¬Þ½\Òh¹¼\î\é=\î`yyc©\íÿ…\ç\â\ÌÊ“G/\Î*((Ø¢\Õjƒdf£I1\Í\ÖÊ \Ó3Md{a\Çì©§ž\n³u‘™‘q\ßðœœ?4˜\Å[\ã\Óh‹´\Ñ\Z\Ö3=ƒ=´ô¡ób–„ŽKh\'¥8þyŠò\áZB™ú›E‘‘‘¬G÷4\Ö=9õ¦RZ)1~ª=E0AxX‹3[\Øý÷\ßÿÔˆ#<Ð±#\Çf\Z9òZ†7²–\Ù“š-GZjw75>\î\Ê?9…%\ÚXŒÁÄ¢£¢>\çY)š÷\å_\\Ù³\'‹`fS\èÉŠù¶FT>M·(Á¸|ö{J\Ì\ÒEII‰eÚ´iÛ¨}\ÂBÃ˜-.^(·«\î-)‡,¥AiQ\ÛÇš\Ìlü¸ü\æÌ™\'f\ëâ—¿øe\Î\Ã=ôZ÷\îÝ™^§\â¸\êß’¼›QJ’\Å\è\ìù²\ç=Œ»|ùò’\ÌôŒ¿Dw‹dF~\ÂðVw\ÅþV|l$ð:\r\èÛ­xt…üÿ\nÆ•‡U’+My™\Z•M)ž¤;\Òzð±M\Æ]*\ä\êg\ãR!¨\Ó$%ó§ŽŒ³X…3as¢0	ñ6!ŽWž–\Ù\Ã\î\ÊÎ¦\nx0w\Î\Ü_f¤§g¨´FedOHdV>¸-1±\Ì\ÄÏ’N…­%\Æ\Ì\â-q‚\á•\â\Ò` Cò\å\ë\×_{}¶˜­‹¢¢\"¦\ág\å$[¢G\\ª?\åi5·Nq±V\È\È\ìY³_*{\×d2¥4H\ØJ\íOe§Om«\Ô\î$©Ý…°²ø$J“Ú¦_Ÿ¾,\Ê\ÕK\Ì\Ö\ÅòeËŸ™?^8i\Ñ@kŸ\ä\Z¼.qüD\ì\Üú\"gXj‡ˆ°p¶y\ÓfÆ—\Ên\Æ\Í\ÉÉ©K±óúñô\åå—:ù:û\Þ,ôy\ã6V­\ZH´¯‰Œf)\É\Élñ\â\Å\Æ5\ê¤q¤$\Z[±,‰=©,rQoŽG¥øFf\æ“FP@\à\í3.Êž˜(4ffFO–~\Ç\Â\ÒK\Ø6ÿ>3½§Ÿ\Z‹:¬ñ J\æ\Ãóa»*\æ=z´ñr©VÏ—SG\ê0iKf\Ðè˜…w@/^Ž}û³\Þ={	º3³·°\å\ËL–Á\Ë`\Ð\êø\ìjT4pŒ\É\Ä2\î\È`{*öüM\ÌS\Î7I|pHa¥¼\édDõ\Ê2”\r»{H«Dq{ò\Ù|õª\Õ\ìð\á\ÃÏŠù	œ9s\ÆüÐ’‡\Öð\Ý&M«\Óh™…·\'õA>k\è\ß\ßMô]\ï\Ì^Â‰.M’eiHJMI\Ú~aI\É\'Ož´™‹­¡v£ü¥z\Ëe\Ô\ê…CV\ï;Y¿¬¾\\}X~ðERØ¾\\©<ýŠ\ÝJK\åw\Ì\æ\çx‘õ=}¦“­h™›\Í/aF\Î\î|—°õ¦¡w\r42g£ËŸ¼¼<¶võ\Úsbž©©©º¬¬,v× l!M%\rá¢±Ee¡q(oaŒñ\ÏC²\ïöš\Æ@~ùÁ\ÇÀ21k¿\âa\\:\Ë\Ñ@xp\Ñ\"¶}\Û6¾\Ì)ce›7\ÛÆ¢\ï·o\ÛÎž~j›8~<KŒ³yV4)‰…³Ã‡³ýû÷›\Ä|%jcøŒ(tžžDgyZj\å•/]T\Ê^z\é%V]U\ÍUT-n++÷³ò\ç\ËÙ¼\ÙsX73\r4jX)\Ú\Òwüz—/\×?ó”óMã³ª\ÏR\Ý\Â\ÂÏ•[û£µkkW¯Z\Õ*­\â\â³Z\í¡C‡jO¿\î>\Û\×\ÔÔŒ|q\ç‹,(0\Ð-oµE?	ö\ë×%&$þjôˆQµ³gÏ®7w®›øL^›?vlm|\\\\-Oò-š\á\Z§E³MxP+\çKÕªªª1\Î\Ü]¬‰Šò\\mQûQÿ\î7€\Å\ZM§\n\'Nª;—\ç?\Ï=ÿf%†¥rO›!´7®\ëR‰\×?G¯\Õ]Š\å3)•Qž?4©Oø\í\Ð!Cj^º´ö\Ç\Ïü¸öÒºg¼\ëQ|Ýºuµ||\ÖV\î«|^\Ì:`Ñ¢E‘Oþ\èGbX1\ÝFÚ°~C\í\ã+ÿdø°¡/\ä\å£ñ\ÄgÛ««_u³\\Mˆ\ÒY³f\Í1k¿\âa\\2M¿>z\ãõ\×YKøüó\Ï\Ù}ó\îcZ¾®—W”Ì£Ò°M7\ÑY\×(\æ+\áf\\\nK¢›Kýúõg\ë.Š©{\çØ±c¬Ÿhù\"ÏŸNDT¿1¹c¼\Z—m¢%žÙŒ\æ\é\âñ[\ÂÎ;‡­]³–u\rwd\\\å\å\Ãf³±\êC\Õ\ïój%ˆQšeÑ¬Y1t†ol\Þ\äd;‹‹`Ë—ý€•••\Ñ/r\Öh¢£\Ýúž\Ê\"\Ü 4\Z*÷\ïÿ…\Î\ï?\îøl Ÿ\Å\é•QÊ›ÚŸVXÿó‡Ë—]fk^y\å•õ÷ÍÇ¢\"\"\Ý&Z\rð\ÃWœ¡\Ú\ã\Ò%\"\"‚?~œÝ¸q\Ã\é\n9XuPXš5:n\\º\Îñf\\5\Åö\ÇÏŠ©ú\Î\ì9sø,\ä–—>=Ú«q\él?˜/oF\r~¯xü–°k×®aOü\è	Á¸RÞ’\"B\ÃØª®ºÌ¯\Ëbp¯¼VóZ\"¿Žþ0, \Ø==>›‘qW,”mÝºÕ«q\éZŸÌ³pþ‚ÿ\Ã\ÜøŠ©.‹_\ê\ÐýùŒ\Ë\Ç\Â\Ý\ÙwýƒÏ”Ï‰AÛ½{º¥x\Útá®¸|<\Ñ\Ä\Æÿ\ÉªýPœq\Ã\ÃÃ™\Ã\á\í\à\r\r\rÂ’––òŠJ\Æ-\Û\\\Æ\Ê\ËË›5.m\éÂ¾\ï}Ø©\ÚSbÊ¾ó\Ðâ¥´\Ì\å\Ëó›³˜4\ãŽ\Í\Íõj\\!žñ5\Ýcü\Ú\Ä>þ|;_\îù$\n»v\íZûÁƒ\í\ï¿ÿ~¨˜¾\"\Í—&i…€-#’\Ë=½\Z\×fg‰\\U«þg\í\Úö+ü#¾\Z²‹y\n(—~‰ ›”ÁÁòóó\ÍÔžþ\å\ÏW8V1kŸÙ¿ï–™\Óg¨Ç¸4\ãv\ëÖ\à3\îw\ß}Ç®^½\êU\ß~û-;s\æ\Ë9J¸K*_þ\Ñ5.\Ý\Ý{a\Ç¶{÷n¯Æ¥›\"ûôco¾ù¦hG\ßYù\Øc\Âow\É|Öò÷Å¸Ry¥m87?\ÝÀ˜3{6›1}ºSü\ì+HþY\ÜN¿g\Z›\Ë\Ãþ€/I©ž<ò\ÈD­VKuU4ps\Æ\r\ä\'>Ä§%r#¬\×-½\Z—f[j‚qùì‘‡f‹\\\Ì,}PØ¶Fw\É\â%\Â$ ¿1y\èÐ‘º>™½ÝŒKmO¦ nÔž÷Î›\Ç\î;·Mš3{¯\Ç#lKù–Ä¬}FuÆ¥\Î#óR\ç•.Z\Ä¿´Y-]²„M™\"D­u«¤7.Ï‡¨<pµªªªñò\Ïs\Æ\Õ\Ún\\g\Ükü7tœ\ê,…—$Ü„ Ÿb?G\Ð\íýX>Ð„\Ïü{Ú—¶\Ò1ú\Ý628\\¨/…KJHZÀ÷=ž\ê¨\Æ%Q\ÛQ½\è,Õ«µ2ñ“0•‰V[òŸƒŽ“uýzgy,•I\ÔtÓª­y“´¼?\ÒS{°G—?*ÿ9\È\'Tg\\u]\ïYcb™\Åd¶MI8\Î;šº<\ryZ<=jÖ˜v5\îÞŸ\îý&š^º®–\ÂûSQ¼my6¿\ãud\ãúSv>{S6~\0£9\ãúSñ|\ÓOS]Ê¸­‘×•Ÿ\É\èÉ ‰\ã\'0»\Ý!\æ)§]KË·qcó¾ž2\âgy)Ž¿D³\îÀþ\ZòóòÖŠY\nÀ¸\ÊÆ•÷›?\Ô\åŒ+‰\n,—R˜\Æ\ÂqQ»‡	———\×ø\ÚV¢UÆ¥»\ÝJw¼[j\\¢pD¡þ\É\'Ÿü<#\í\Ôjuz~¢rxTzÀ$$$\Ä\íÉ©Žl\\{B’P.¥:¶XA\Â\ãœ;¶\ïðj\\\ê3j/z\")8 P9½ŠÚƒ.\ÕJKK;ÿ5.‰®ù¨ó‚ƒƒ\ÝDO!\Éoü\ÈE75ôZŽ\îJ\Ó\Ï*O¯{ºÁh4\ÚÄ¼”P¼95 «/;ý‹Ó¢=iÊ¸¯\\)W~\Í\êÍ¸\Ä\îÝ»-iiid–VkVqq]6\È/(_ZŠó\ã?\är\ÑQ›gcüºŸN€ÿÍ{Ô±µÚ¸q#m]45\ã\ê5:6a\\\Ý\Ä<Ãƒy¤\Ó\ZÙŒÆ„xÀ\Ì÷[„\êŒK¿\åÑµ\ë\Ê\Õó\ãwr\Ñs®‚º\'§ü•”ÿ„B¢kDz&¶pÒ¤7x¸$\n;hÐ ^H\çû\Í\á9\ã\ê\rôVsÔ´\ì\ç(bþ°\à `·†öÅ¸þ\àÁL’ý\éÎ¬TŸ¨ˆn¬¨p\ÊÇŽs½\Þ\ÕQKý˜ŸÀªV%†¹%(—\ÚÊ \Ó\Ñ\äpüüùó­©¿_QqiÆˆ\â…=r\ä\È51Œ‹ŒÔŒ\Þ|`~Df›—–9ô0ÿ]weÿ\ã\ÕS§¶ŠÁ}ÁÍ¸$J›Ð’‹vôüý\ï¬`|°<“\×G2n`ø•’ùó?¡·B\ä³n7Î¬\é3?‰mƒuX\ãRŸR_\ä\Ü\Ò0”ŒKo\Ý\Ð\ï¸ü0½Š\Ø\î¨Î¸T0zr\êÄ‰õüº$H\ç\"51q`œ5®Ž\Â\É\ÍKŸ-±±lô\è\ÑWO;¶C\î\r7\ãJ×¦ô²B\ïŒL¶\ë\'»„ß’½ñ÷/¿d?x\ä¡t7\\*‰LD\éŒË¿\å\Æ\ínO¹B3®|©\ZÁ\æÏ»N„?ƒuX\ãRûSŸš\r¦z~]X#†ó;^Œ»\Çª}Q\åŒK`?~\\Ñ¸Dll\ìÝ¶øø\ßP\'Kƒ”*G•\"#Ž\ÉÍ½v\ì\èQ\×\ÓµÒ»˜Rþ$J3‘/\Ùzfd°q\ãÆ±i÷\Ü\ÃJ,d‹\ZiÞ¬9¬¨h*,„r\Ó]\\JK:Ð–ž\ßM\ïÞƒ-_¶\Ü\ãí šššŸj4šê°€\à\ê\È\àp§B\Ämp˜(\é³x\Ìí¸´^Í“«6\êô\ß\ÊMKe‰\æ\ß\'+\ëgœ~\Î\\;Žq#y?\ËûžD\å§Šýûô£r\ê\Æ\ëÉ¯Ý«­+—¥E²˜\Í\ÕúHMu\Ù\æ²jù_À€q\ÛN«ŒK$&&‹1˜~E\ïK&%Þ¼¦£ŠQ\ä\ç\ß8røp³Ïœ&\Æ\Û~)™_2›$ú\Ì;^x!<,$„i£4L\í.\Z”ôW&\èI\'>°\Ü\âK¢»”šhÍ§\ë×¯÷x—ž\è\Ñò\ë*ƒV/ü-‰®ñ\ég,’\ë·jq+©ñ1½V˜tÓ´T~z\Ï5,\\x c•3G\'Á¸)))\ÏP¿\ËWMrQ¿R¨nt¹!]µDô®­!J\ëñ0`Ü¶\Ój\ã!!9&ñmº)Ÿi(\r>“±\Â\ÂBv¨ªjÜƒAýûÏˆŽŠþ€HZJwW\'\ÊEF\"S\ZK:®\ÊDƒ\'Áf»(f\éÆ©\Ú\Úo\è¯o\ÄYošž\Þ–â»¥\Ë\ËF\Ç(O\é¸ü˜¼\r\é™6²[$\Ë\Î\Îf3g\Ît;u\ã\æ\ä\ä±\Å\Ûj¨Œd\Z·úˆ¢:\Ñ÷Tg\é\ä\ÚÑL£F\çñ;nÌ¸\Ò\ÛAÏ¸?U‡q©¡©`‚qoy5.a6†\Æ\èŒ\ï\ÐcÔ¹TI®•\çÎ™Ciý@\îÁøñ\ãö\Ê\ì%¼8N¯yÑ™]*‹”©»l¿©\ï(\ém\Ö8!=VK/û9bØ°\åbvn8«u7®˜·\\\ÒwJÇ¤\ïITaÅ¡30ƒ^\Ï2\Ò3Ø²‡—½óóû·<1K¹q\å\å\'µÕ¸né¥¤4·T˜:u\êC‡^Z§Ÿ\á¨\ì\Ò	Xª\íK\é\É\ë,ÿ¾©c”–Q£W|\0£w\ÏL\á]W\é\ä@\'nSG›q\é\í :±‰e$‘?ø\áv7\îú\Í5ž_’ñhYDÏ¨ÒŒË¯ÿ¨±½\ZW$Û¨Ñ¾C×˜ô[/]W\niòe$?F:„mÙ²\å±\íÛ·‡;ƒß¤¶¶¶¤  `OZZ\Ú\ÅQ9#ý\r(z\â†\îRSZ¾Š\ÊO/Á\Ó`£¿^06w]k>`À€‡Å¬<\àK\å\ïµ:­ð”óÏ­ð\å/_\"\Ò5žô™ö\é;\é˜ô|K|\Ò	‡fYúYl\Ì\È\\sz\îÜ¹{vnÝ™-f\çb\çÎÃŸ|\â	\Z\âQ~˜”(lôw¥<\Ò\ãy¬xtÛ´iS®3\ØM\Þ~û\í\á«W¯\Þ\Ã\ËúFo/*;Õ\ê$¿$ þ$\Ñø.\ä\ß’}/lùw?:\"\Ò\ãŒ“Ž“L\Ï\È\à+’n®~¦­øˆ\èAg¨öeß¾};‹§\Í`\áüRŒ\î\ÛH\íI\Ôð\Ã_8CµyAŽÈ pGdˆS\á!>S:ª««ñ\ã\Î`Þ‰7\Ç÷å³œƒ\ïºÒŠ\n>“øÿLEE…†\Â*qúô\é\É|p9†\æ°Y¬Ž^.þµÏ¢z\è\"4Ž´\ÔT\Ç\Ô\ÂBG\å¾JÇ¥ºº&gz\â\äÉ“‡4ZƒwŽC\ÙjE…G:ø‰Ã‘™ž!\äý\ÒK/9®\\¹\ÒC\Ì\Æ\Þ=—/[¦XQÿRˆ/è¹”\Òr,Z¸È±þ©õ½ù¾\"_ýuÊžŠ\nŸ=\Ò‘¡Ž\Þw$W_¶B|,…9\Ê\Ê\ÊÜ¸®¿€q²\æ\äöôôtÅ²r=\Ä\Õ\îðU\Ñü‰\'*•\Ô!~²\0\0\0\0\0\0\0\0\0\0\0\0\Ðu	øWv\ØTìœ†\Ø\0\0\0\0IEND®B`‚','3 ÐºÐ²Ð°Ñ€Ñ‚Ð°Ð»Ñƒ'),(10,'ÐœÐ¾ÑÑÐ½ÐµÑ€Ð³Ð¾ÑÐ±Ñ‹Ñ‚','MSENRG','Ð­Ñ‚Ð¾ ÐœÐ¾ÑÑÐ½ÐµÑ€Ð³Ð¾ÑÐ±Ñ‹Ñ‚','‰PNG\r\n\Z\n\0\0\0\rIHDR\0\0,\0\0\0\Õ\0\0\0\í—\Í\0\0\0gAMA\0\0±üa\0\0\0 cHRM\0\0z&\0\0€„\0\0ú\0\0\0€\è\0\0u0\0\0\ê`\0\0:˜\0\0pœºQ<\0\0\0	pHYs\0\0\Â\0\0\Â(J€\0\0\0tIME\á\n„?RQ\0\0\0tEXtSoftware\0paint.net 4.0.173nŸc\0\0[©IDATx^\í]|\Åõ\ÓlcˆqQ1ÈŸB	%N(	ÁT\ë$\ÓÁ@¨!¡…Ih!ˆ€mÝ¹\06\îE–\îN2Ø€iãŽ{W±$7\\p¯÷ÿ¾·oOwº=\édL,\È|¿\ßhwvß¼-\Úù\î\ÍÌ›7\Æ\Â\Â\Â\Â\Â\Â\Â\Â\Â\Â\Â\Â\Â\Â\Â\Â\Â\Â\Â\Â\Â\Â\Â\Âb¢4dþ\\6Ùšµ°°°h˜(š\ã\ÊC\æ»ò ¯‡,,,,\Z¦ô1.™	\Ë\Â&ki$dö\×S\r°ª:‘¬v Yx®¶°°°hX¨,2\çÁª\Ú)\ÖU\È<·\"d2—›\Ëõ´………E\Ã@i¾i²*%Y•…\ÌW‘)\æ@\Öû\Èß¦\"\r\åE&¨MÁõ¥\æX\Õ\Ãbi…\Íù*baaa±OÑˆ–…\Ì\íJV‘Ê ¹$u*Žmi\íXõ–9T$-,,,ö\"!sÐ²¦\Õ\nº0„\Í!¬¾;hš‚¨f‰u2cT\Ü\Â\Â\Âb\ß 1Ê‚¦\Ý,Vy\ÐLTr*Yú¦9\Û^jmm†Ì¯µˆ………Å¾AE‘¹qE\ÈR\ê\"ä„¦_i\Øüû—‚°¤i«\ëAß« Y\âz7 \éy’²°°°ðˆ©#\È\è¬òs>\Èi—“\ë\Â2+”ÀÞhÿ\Ö÷E\ÕÓ¬2l~[4\Ê\Í5û•…\ÌÐ¿\0ÄµŸŠ|oÐ¹•¯šµ°°Ø—(nN-+4w,kš\è¡=By¡9„ñšz-AZeJNŽCÐ¼§–\Õò\Å\ÃM†©HHUas2-(ZR Â»¡SüºpÝ›ð§\à\Ølo\Ò\"\ßcÇš*Â¦+¯­‡,,,ö%hA€HDP9Q\Ù[4iz*e,+0?iS$$dE†\æ\Ø\ÒBua™\Ý\åE&g\éÀú#\Ê_‡ò•\ÔA\ÂZZ`N\Ä=o½a3Œd‹\ã3pþs’™ûÞ€\î\0tö×¬……EC\0›h¨˜.±”±JOÕ‰ŠQ\æà²°ù¸´\È\ë\ê¯Ô¡zn¥õ†\íV92=)[Yl|Z4)(·¬\Èü­\"dÎ¥\ß\Ê~§z/m\Z#?UóK‡Lsl_¹l\0!¯*¾7J‚\æB\è\ÜUQdþ ‡,,,\Zh!¡\Òo&	TM!Œ\æ—zºVÀ²z£²\È\ÜB²@yqa@E/ ögJ>dfÒ²\ÂñW\Ëó““\n›^h>ÞŒ2\ËP&È¾#”O ©\Å†šŸ•MwÕ¹£¢\Ðü$\é\Ãþn’¥ª\Ùc¬\Ä3\Ës6­p½r\èýBOYXX4”†\ÍoI Ÿ´`@\Z¯¡²N­«ó\Zdr>\ÉIü®Bf’‹\ã\Â6¯H^]`1]•Z4l’\âü\ÛBFaS*\ÓyB\æ9Éƒœ°ý=\ÒE¸\Ç\Ý*ólU±IÇ¶\nú‹UM½À\æ\ãj ž÷!\\\ãS\èB³\Û\"\è\Ý\É~9µ°°h(X4\ç€6³\ãZˆ%\ìBeÈ´U‘h\Ç÷›$\È\æQitœ\è€s.±<XRl\Ú`»\Ç&iñT€€T~geÐ´£õ\Ä}\Ñ2¹óòMk\ì/c5^¬¯…s´ˆTM\Ø\éO\Â\\r#9\á:¡cÊ¾MrÂ½\Ók¬Aô(4¥Y‹\ã]U………ECI\nV\Å+•X¤‡M‘žö\Ê\\ä‚¥H(\ã¸0„\ÍóKC&d .\Ð9ZHÁ™\èLKi²C	¬§r\ê¼&dšCv©\ê/\ÖWÐŒóa³®j¤ù?\Ð}zþjU‡Y!s\Ès(ô¬CÙ‰2¨6ƒµÌº’ t„\ÌMš ©y½Û¬EþCŽª*‹†TÞ“d„/h>\n4\Ë\ÖMKB\Ò~!qc€¦œe°@\ïv’”’Àò\å#Mt=\"yZ\\Á\Äp2\Úi¾Xe&I¿°cõ ¿~y‘9º\îd^Ž\ÍÍ¼_\ìo\Æ5g\ÄútñhMq„ú†È³_m„ù%dopu¨HX\Ø_§2Ù¬\åõ!7–þ]¢\Ð\ÂÂ¢a•ø\ïZyi\é\\$M²šxA\ÓTE\âÀrÈ…Yi=\äŽ™<¤ù]\Ø\ï\0R;\r £„hŠ½Jr‚\Üý,Ï¦$›•8?”\çq­\ïh\á¸V»•dƒ{Ú¨Ç†i\çý×’™\äf€\Ê\æD\\\ã#újU\Â\êru@\ß•E\æh\èZ\Ë<\Ê\Ó\æ\ä*³h\î[\æPl»\à\\þ‚ž¦±ª´°°hˆXö¦9•u+pE\Ðt•&Y\Ø,a¾\n–ˆŠÅD ž\é6Z6\ØnadõŠŒ4\êDg¤\Ù$>l‡@\ï.¤;\ÙaŽkÝ¨\ç#h¾Ý¾ôMó‰kõ¨\ÃdÉ£‰¨÷\ÕC\Ê\Íf’\ï…Ä†D¿¬ûÊ‹Í‘\Ø_-2ô\rC\ÓûŸ\Ö\Ð\áô—…\ÌvÈŸ­ƒ÷\ì-|‹lþ \â\Î\Ñ\n<\Í:4§¢V;\ÌU4\n±zBŽ\Õr*T2ú†y¤™t\ä)¼ªù- Ž\Ó\Ë\Â\æOš°c{iA9…LPG	?—|Ø”r¤\åüz~‡ød…M{\ìKg>tÜûh…|7Cz›ýNØŽ\áy¤e<gùW¬Ž’‚¸þ²§ù<6Ì…Åh.\Ý%\ZÍ®\ÊsbYQµÕƒ\n}»ŠEÁ~\"T~\Ç\êq\Ý\Â\æeÉ‡Ì–%h–Šƒ;JøÈ’˜&,3\×\êùŒy¤\Ò\ÒwL’‡\Ê\ïD:?®3?hþS4i©`:FGœ&©t\ÄC®Š£€8þ˜\äCfWii\"=ût‰\à±\çÄº\n:–#ÊŒ\ã³\ècYXXü€Š;’M¬{¤¯G;¢‘±IV³Zú¥x\Þ\é\ßjW6\ÙQr\nš‡h‘áœŒ\"ÿÁ”)Ò‰\î6\É**÷„\ëy!§ò\á\æ,—Xp\Ý.\ÐÇ…!l\Þ\Ôü\nŽDbÿÉƒœ@f¾Òi‹¼4k!ÛV\îcó\Ø~%$©ýeØ®­BóS\É\Â\Â\â\Ç\06\åP¹7‚FjG´X=$’*¶Ÿ}M*.€Œk‘u’QÀY®ù÷t¤Ñ\è¼R\Ý$ž’<­6\é\ÍA\É	\Í\Ä.ô^\ÇþB•™¬~Sngþ:Nù)™\êù\ÝtÁˆŽ:2/r*\ÊÌ“|\ÈL—¿° e\ÂfýŠ\æXX_\Ñ\Î|\ÈÞ¨caañcˆŠž•\Ú\Üršd´z\Ð«*B“$Ss²2\Î\Óñr¢¸0„\Í;RC\ÈTT\ÏG†\Êbó;ä·«\Þt\ÜÄ¾®\'.\ÐA}<\ï¸„\Í_\ä¼sì–Š\"ó+è“‰\Îi$É’”˜	9žùa\ÓW\ä!R<×¾.ª#dn¥¶\ëU\Ç`}³hˆIÇ±3¸]÷B÷\äk3÷,\ì\ßÆ­m:ZXüÀ(}\Ë®»I\Êø2!+¶IF«G:«9—Ö—ŠF\ã“\é~\0rz€ò(\Ç\æà¥±.(÷*›d i’„X¤eÄ…!–Xp\îŽØ\Ê\Ø\æ«ƒ;\ÑyŽ’UO9rª\ZnN\Æu¯A^š¤8\ß\â9\n2kD&l\nb]_¢Ý¥°\Ô\è\ëE\ïþóJ\Í\ÅØ—þ2\èx\Í\àt\è¨d\é=>7\î\ïvè…´\Þ\äEXXX\ì ’]WZ`þ¨Ù¤@e½W+°\Ó\×6“\Ø$\Ã\Öm’-RQCÏ”†ÌŸQ\îœs\\B¦W¬*µ¸0\àx\Ío.+†|\Ð\\¼Ë²bs»L¸Vb<C\Óp>btUhvƒL»IDXRl~]\Ñ)?´ˆ\â\\`í‘œ \ã\ÕQº–s\ZƒŽ\Òö’Bó‡\Ø)?(ûœô©)?8>N¬>\Üö?\Âù‡I\Þ|ö½¶\Æ\Â\ÂB\" Ww\Ê\ì„\Ö\æ”\Ó\×«g1\ÊVÄ†ˆ	››U\\ \Ó]+g†–™%\ä¤.ØŠH\âZ\ì±\Ðý€sô°\ïSØ„ ª\Î?Žòý%ú-:\\$ô\Ê?M¿(úƒ\îw 3\ÖÐ£%CM\ì;ùa3R\Ý Ä…[	ˆ\í“\ÌC‡`¿Ú…¡\È<£“²\ÝQB\é\Ì\Ç5‹\å<î®ØžAK\Ï”…\Å¥N¨—ôP­€C\Z;VO\ØüÅK\Ç<H\'\"	•d\à6É¶À\Â9\à\Ø(óˆX=aó-ó \Ñ\â_d:\ã\ÜpüüH‚zR!\Ê \í\Ç-û²\Ðt{3š}nÈ‹›r—2T2\î\Ã\é/›N´\Ðp¯î”Ÿ/\Ç\æŠ+…3\Ñ9lÖ²3r2\åG\ÞA‘¹^,GX~zy‹ …~¨œ{Š“Žõ°\'4–’¸0 âº«\Ü8M²p|³2Î…\Í%qaGcµ¿/V›RŽ/\Õxº°\ÜÞ´V\\]°\Ú\îÀóŽõ\ä\Ô\Z\Ü\Ï|½/\é\Ì\Ç9g>¢Ž4b\Ë8[»±%‘\ÞH‹²Žó+¬Lm\Ö\ÎÀþ*”)~^°Ê°\ßÇž\âû¤\åR\Ï\á–y–±ó-,ö\0\Ë\n\ÍÅ¨€›P¹N¥\ÕC‹DOy²ieu\\\ÜUn\Âf{\Ås\î2†œ	™±*n¤\É6UR\äD¯r\ì;.hª‘¼´#~G\êX\áµ\è^ƒ	Hž];óqŸBNroØ›\è\\d	9s¢3Ÿ7d\Ð219ñ»Bf+,-Žn^‡²¢ƒýeê™¿‰aš‹„\Ã\æ3¤\í86§\ê\Ó²ÿ\Æ>\ß\ë`öŸ\É;\äEX—$HŽ¤\âühv\ß\Ï0\Ï$=Zú8ÿ\à‡/\Ö¬­+H\Zz:°ZC†•q*ð\ì\ïA>\êU.\áhN!UÒ¢!1`\ß	®§\ä9‰Â€´«4h.§ô±7­©TÁk²)Šû¸$–œ†\É\"a3NóÅ¡4ßµ÷|&¶\\‚\Ì%§\Ç\Äú\Ô\ËH6c‘w=ó—­gŸ[\Ð<\Ã<t\ï\ÄG/Â¾3\Ò2¹\ì—C\Þq~\r™/d0£:’E•¸’Í¿°¿”ò´Nõq,,~\ÚÀG5*\Å\ÒO2\ï²R\ÐJO\'@+›FyH#S\Ê<\Ê\Æy„C\ï*Z8¿œWr¢®\ç¸0„L/U\Û P6\Ìü\Z÷=žD@\âòpže[U\Í%\È\Â\æq!_·3?d\Æ\È\\Jw¤±¦\ZÈ‰¤¸Ô±>\Ïü°	i˜”ùB\Þa\Øi~­øi$\äw\áý\åT¾i\ÚBŸô¹!½L\ß/\Ü\ëPŽb\ê£XXü4¿ t¸9•\âA­\0¬\â\éÊ¡\âLf\åD\ÙB-³Ž«Ü YwŽq2ñ\îŠbs-5œ¯ruúiú0Vûf\äŸjˆN•´8aI®M2w.\á$gÜ³C\Îaó±6ë¢žùóa!‚0d¤ùh\Zfa{–KNxo\ÉùEªc\n\Ý1@4Qr\â\è,¶œ\rÀþ²\Ýaó\'\\76’\Å\Ëm…\Ì\\\æ¡k&Žþfn\äÓµ?\Âu§°°øI}K¥\æ\n\á\n9•‚\áz\Ú¨,Ï¡Bü–ÖŸY©¤\":\á\Øw›S}Pq¢^\åsü«‚\æUÁBv<«º\Üó©Hó@(ŸX±/\äŒ\í*6!ñ\ê³r\Ú\ßaµg~\Øt—x\ï®g~\ØL_±°x\Ãóü”?\ï„n BNe §¥ù\æW\Øw:ó‹\Ì \é\Ì:‘,ð\Þgq@\ï´3}\ß&AöT\Z\Î}€c°½•¾a8þ\r\Þõl$	‹Ÿ8J%\ÄVbQ\ÇÍ²\áÉ—Ó¢<\ç×¡r\ÈòY\ØWkKúz°G½\Ø‘y\á\Ò\á\æv\æC÷˜u\ï˜ªªÁƒAe4S\É\ÏJr¹\Z\Ït:ž-Ú¬%1à¸Œ4‚x¾ŽÌ’÷\áL9q\éF\ê•vð‹\Ènz\æOai‘\è„Eý;°}\Û\íW¤eGu;\Ü‡‹ƒ\ÌsŸ}r\"3iô	ZXü @\åpˆ\Å	\Ì`|\ì\Ó\Ú\Â\è*!§ ³|\äd•Th\é\ëAù­ôiB…ôÁ2q¬¯°yD*}\ÈôdYU³GHk\×\ë\Ì\ìÀo3²òþœ\áó?ŸžÝµº/ðNzv`lF–LF¶DFv\à5\ì?™–å¿ºuv—_š¶w}\ï¥\âñœ¯óYð\\½\Õ_m¶>¿\ãü\êz\æ‡\ÌFXš\'•2Æ»ûüh\âIS¯\Úú7¼¯4¿®hN‹g>\Ò66G\ÙW\Åwý÷[â±°\0\Ø\Ï%.W?]¥‹Š\ÅÏ¸)«\Ü`ŸKh9s	C\æ1FhÀ¾Ì¥ƒ\Ì\ê_uµk\Ô—tK\Ïð\åý%=\ÛÿnºÏ¿9\Ã\Ø	RŠÔü»±Ýr+Q¾7,\ë\Èk{x†l®2\ÒYdž&Z\Øô–gJ?Ü©\Ø\ïCNw\Ó3[%)Á»ÁCŽR\'Éƒœ\Îbg<¶Ò™²ú\×r4Õ±_ùù\ìS\ÓÛ°°ø\ß*‰\ß|´\á\ÇD\Üd_-vÈ«¸ ZùŠ\Ìs\Z\ÙS<\Â\Ù\×Cÿª\n‘…\n½’e¹Ä–øUµ\íS/K\'\Í÷ü± ¨Á œ­ ’)\Õ#ù»`•-‡5öTZNWqJ­/–\ÓòQr*c\Ô\Òx\Ú:—RF	‘œ¨¥®›v…\æÚ¹x\ï\î|\Ä\'9’ˆ­Ä»üLW\Å\r„MQ½´……*J	\ÒrY^„T\"¿˜ö¨\\gK%£\Ãc±9M‹p”ðCT¬	:J\æ®P³Zý\îEžý<»@\\WhAZŽÿ\ê´\ì®Ï·ö\åaLn\Ö\Ö\áY@4\Ûˆg/¤ôì¼é¾¼gZ\\\ìo®—K	\ì;\Âó½r~›\äT6±(Á\ã=DG	\éŒË¦Þ‰k}v\Ö	\Õ2\é±>C\æ-\Í\Ëf8›€\Ø\ß\rù\"öM\é¥-,,P±\æ¡u\à*Nt„K—\Ïr\ã})+h€\Ô^G~*\Õq•as3öŽè ¹–B40\È\ê5E\Z¥g\îH÷¶ M\Ï\Ì\n\ÜS—¥kh \á\ì­®,#+¯ƒ^.%°3\\­¢(ÁW I\'ó«G	KŠõ).\ÈO¤)HH|Ô°u¾\ÐÜ‹sòAn´fOÆ¹r$\ëjaQ  [døÝK‡&¢\ÎtG¸\Ö\é\Ú~9\áŽ\ß\Æ\Õp°u;‘û‚À\Øñ<M\Ë\Ìa_^¢&\Z¡‰w\'šf\ì‡Ú­Í½pFN·m.\í\ÞZe¢H\ïw\ÈmS,\É\ìõ\äó\ï‚\ÅõZ›Ks“\Ýsv³\Ó\\›‚ \ë®:J\èD-Uÿ*l†Y_žoŽ‰ÿûs‘–\Âz½\ï\ì\ì3¬]º²c½ò-s,WÞ‡\íd·°¨	VT47D\Ì&XZŒUu~á…œp\ì\ÖXrÂ±VFœw\Ö\å™td\ÄöÉ‡Í–ŠbóUŸ2²ó\îS\Òr‰¤\áß‚4ªuV\àO\ìhWYƒ¦[—¹2}\Õ:«S\Â*?\ÉP2w\ãýLU—\'j©º0\àýÜ„sQ‚¿59òW“\ì\Äý\0\Í=6«9\ÃÀŽZX¤\0XX2t.d\Ãþ§7«;‘Q\á†saPlˆ›!S\Â) ¥œŒ\ëTÄ­¨€gUŒå³œ®ù»ª®\Ð{X:\Âˆ\Ã\Ë\Í\Ælÿ»™>ÿm™¾\Î\'!¿2Q\î‡Hþ… KÏµk‚„#VR¬%}‡xwÆº0ðŠ•N–\Æv)­±\Òs¬ª±°°H¨p>­H£t„K:‘‘/‘\â°CN\È\ï¨šv%Eq7ŸÔ¸\æ2Â…\ã\Êh`Êˆ4:\í\Ú\Ç:·\Éñ{‡›\èš\à\ß\nrûa›…1	D¹¤\Í\Åþ£ô&k]5ð\ìqd]¤‘\Üõ—\Ê(ªN–\æ;Ä±ó\Ùß…\í6ä‡³9®ª,,,\ê‚NN.‘ð/Aó¸[±*G˜v¥±\Ã\ïA\ÓIWpG¸Bf,›3\Øw–\Ï\n›•´6\ê\ã\Êk—M\Í\Ë=/R;i\íƒ\ä|sT‡¼”<ò—¡9\Ì\É\Ë#L+XZ\îd\é\í\ì³\"É»\ï\ç:³³û.Áf\Ç:Ž\Ów\íUgaaQ@4Ç±\ß	•H\Ö\åc\ÅÒ•_œpÀA3Q­/g‚m\Ð|\Ë\ÅM±ýd\Ø\Ú«\á*\ê\áÈ˜ª­\ì³A¹Á¢?\Ü(’÷\Ìy‘\ÌGZþ‘¦c¨N§Mu	¹ Ö…\ï\åY¼– ÿ}gÕ»\Ý!x7X\Ø<(\ï0d¶â·eÿ ªµ°°ðGôP\Ü\å\æ\'\ÑJÂ¾x=ƒÇ´nÁ¹\èð;WyÆ¾,Ÿ…|\éxš\ÛTe@ef\Ð<§\ïŒ\×iùž¥µ;=\Ëÿ¨\Þr­ žG\\ðl\ï$4\\ŸO\Þ!\Þ\Ï\ß\är²t\Ð\\¹h¾C‰|\Z6_#=\Î~/Umaa©lŽÿ\Ôw¨8\' 2Ý¦‹Í–\Û9Jˆ¼¬Ë‡cP\Ñ\è\Â \Ëga;W§«¼D«KU\Ö\n6 g¥TÔ˜$–V#-vþ\Ë|\Ä:€wB…\íx_k\Å\r¤H	žÏ†w\Èù…\ÈÁƒü_•wV½\Ç\\,\îLù	™h’Ÿ¨ª-,,jk š‚wpô\nI\È	ù v\";.:I²\Ý%2[&$w9d‹TU€¬,D\á•\Z\"i¡iÈµ\ët;Àû\àò^ñ!•Ã¦P-XñQCr¢a¸ï€“\ÌC¦mE¡¹2»ß„÷yª´°°ð§•\èðû—Z\ÑJQ±Z\Â\ZpF	5‚@E±Œp9K_\Í?e9ùYQ†\n§ªj…N®–°,\ÉR$­\Ým²üYúIA+‹}Px>w”°´ôÓ¢,&\Zˆ\é7t%râ±ù;;Þ±}º¢\È\\Ik\×údYX¤€eEN@:T&\Æ_º\è\Ü\ç±\Ê\"ó/™Ž¢#\\°\ÜpÀ©¼†–˜ª©\Ð\ÛU*j©<D\Òj\×`HM\Ãq¸ý:‰\Í\é\é3l\çrý 1º8÷»|¤\ÉÀ;«DÚ‚wñš\Ä`a±‡@S\æB#_v‰sa;`Q`2q³¼\Ð<Ly¤BUQ+\è\á\r¢[¥:\ëL$­.\Ï4KkwFN—³ôQ’÷-#Ÿ ¤\ÎQr\â³Í‡|‡ø¥\Ï÷®µ¤,,¾XP¡ºI³&hò¥¢…\Ì\Z3\Îi(\â\ÂÀyp\ËcF¸\ØI¯*j£7P¾>IH«¡4}þ¾ú(IB¾	÷-.\Ør¡¯\\\æ\"ö\ï\ã;D^\"Y`{*düÖ•Á\Âb!\êb\\Ð¤¹q©37\Îqa™7$¬rõ—,¼ª\ÅkôÊ„\êú&’V\Ãpyð{œ¯g­M_\Æÿ\â¼A¼·û]r*/0W3\nž\ßYŒMAY‡\ÐYZ«F¿ \Å-,,\êT\"\'xš7¨xta˜,Mcµcû²C$f¬­hœ¬:\ÐT–²Ú“\ÔpH«Û…ú<I¡È…œz\×%¬\è#n òñN¶€\Ì8\Òzßµª°°°H\å\Å\ælT¦…«GËª/n\'ù®UX4Pù\ÜuùL5À\Ã«žøT´d\ã¢^‘MKúÅ¥•Ÿ#\×(²~ö3‘KúG>ü|\\$ÿý’nz&G&\Ç_ûRä®¼‘‘a87·dUd\Õ\ÚM‘\Ò\å\ë\"£>Ÿ¹\Ç?*r\Ô\å=\â\äc\ÓI7¼y°Ç»‘â±³#‹—­‰¬Z·)² lud\è{\Ó#WþsxT.\ÝðP1\ï\Û%xX£n$‹\Í%%Œy‡ ©V˜_ \ÌZ–‹Œµ£õCŸ°S]–¯¯žKø¸\Æ—Nd¤wdºN\Ð\\®\Åjt]¦\å\â\ÒÊ±\çF¼°ú‹œ¨\Ì\ê/.Ã‘\ÝÎ‰ø\Z\"$\Ò&§k\äÞ®oA\íÞ(G\ì\Âñ±S—D~~y÷(ù0qi·È“¯}Y¿q+Êªp\r\ìØ±+ò·À\Ûaeû£\Ë\ï\'\î™\Ö\ÓED\âÚ„\Î;›Gø±u—\ìÿ(â¸’Èª\Ð\ØVp°ÃŽZX\ÔŒ\Í’Š.\Z*1Ÿ\ÜN\äY\Îyp¥…\æáŠ°y\\‹\Ô\nXW]qi\ÃÂžJñXù\É9r¾b\ÄÁ‘\ê\Ñj¬Z½\"rx?R\×Hß‘S\"»vU³\rI\ë»M[#\ÛA45ñ\ÈK\ïE\É\ê\ç—u2[\ÈÌ…[v\ç®ø²K*\Ö8„\å¬\ÖGJŠeE\æŸ ¥\Ç5’…;\Ñù}|\Ì;\\µ°ÀüVt\ÉúJº@°i2CSu±°°P€°\ÞC\åY­\Í9\á\Âvgi‘¹Œ«\ÅlAE¼]\Åkd]\ç\É\ê„\æ\à\Î\Í\åJ	°‚¶­Ñ½Hdùû¿6»wEvm_\ï\ì\ß\Í\ë\éòL»\È)7ôŒ|øMd\íw[\äø\×ó+#\Ù‰w\ÍK‘\ßþ¹wd\ÎÒ•r\ÜE\áG3£„\Õ\ç\Í\Éqv\Ë\æ<2T\Êú ƒV—‹m;vF~q\åR\îg\í{´\Ô\Çòû°\ï+:\Ñ\Ä7JÈ‘V’ŽIHe6\Îûqž“¡;«:‹T€Š“\n\Ô¿ü\ÑX\í¨H=u]>Y˜\ËÑ«x­€¬„ŽM+\ÇþQ\é\0|´sSdK\Õûš‹D*\ßÎˆ,}Žo–ü–\ÊwÀY\ÛdŸX9\æw úiµK\ë—{Fž\î=&r\ì\Õ/F	‰\éÙ¾Ÿh	A%¬\Ëþ>,\Î*›³deä˜«BrS`È¸\È\ëÅ“\"·?ÿf\ä\ä^‰d\æ\è¹\Ý\êƒ\ç»G\È)dvq\ÚM\Ü;›>\ZkLbæƒ¬¦/kš€À®°Y·¨\È’ó-nNU•\Z\ëˆUo\Å/\åE\Ð\Å!n„+dfB¶)*Ú«\Ìc\Ëyo\'¨x­€|‘V\ÆhŠmn^VÙºbŒ\æ\"h\n6Žl©)û»¶¯‹¬Ÿù”\ì;7.FùF¢\Ã%-wôð\Ú\'#¯MŒ¦ñ3Ë´”ƒ\ç|*rc§.\Õ#:>Œ•›2sº&sŽç§\å	Fm	¹_‹}‡xgóø\Îaµ\Ò÷°¡¬Øœyúo\í\"\Éa{¬\Øc°]‡<õ\\¤ª-,~º`´K\Ý°3]\Èqù©Á¦G§P!*Y)P±j?\Õ ¤»9B\È2²öždŠ\Íi¥ŽÃ£t\"—†\ÌÃ¢8@^¼\ä£IšƒË”.\"‘o\'\ÜÙ¾vš\ì\ïÞ±1²ú\Ë\êŽöu3……õ¶\ì\æªõ E-­œ¼\Èg_—¨”7.¼w`\ä7·¾\×oµ´r­t\Ü{‘“WJ\Ïö_¢\å	‰%÷\å,Æ÷\åLgG|ÐœY47bŽÓºº7:J\è”qC*Ë„sœ—…W±ä­µeñ\Ó>z.\É\Õk\Å;&s1W#š‰\È\ÇJ¡«¾|*•$?\Ñ•‡}S§\Ó	²\nMBc ¹RXa(»Be\Þe\Ç0;\ßõrµ•­@\Êiª\Ù¬xó\Ð\È\ÎMŽÕ³k\ëªhGûöu3#•£\Ò\Ð¬\îOZ9\æ·Q=n\"iõ\ëzVdÜ´yb=1Ñµ!_Ï¯’fÝ£/½§Gx{Z)ý\áÎ¾‘¯9\á8Sº¯s­OE‘\É\Â=m¡·\Å{k\ï<¶/%9…U¡ñ.\ß\"9a\ßù?h\Ì|š3;þ\'\âG¦\Îq}H^;\å\Ó,,~üÀ)>òQ¬eº\Z±û‹\ä®F¼½¼\Ð\\\0Ë‰KP9\Ñ2C\æI\r™\\\Êò$\'™®6\ïñ<’Œ\â\×\å»N/W+Pö5-+i\ÃÂ—•.\Ø,’cÕ\êjý\ì\ÞYõ\é‘5“nsòÀŽ\r‹ »_¤¢ø \Èò÷Ž‹|ûU\ÇÈ†/E\ÖNûŽ7Š¼õ\Êñ‘“®Éuy÷\ÈgÓª›}4¨n~¶H‡\í±\È\íûI!µ½\íuq‘\àh\á\Û\ã\æE\Ú?88\î|š\Ï®>–\'ðÞ®\åDg±f\ÕYM@®\å\Øù±ú*tIÿ3/ÿ\Æ{a\ÎuÿÏ£%ŒüR-ó™N›\ê\"ü“\Òcñ“H\ÐQJ_lNp\æ\è+¡\"=GC%ˆ®FL\Ë	\Ë]¸Š\ä„2¢ŒŒbÿrúa\ÊÞ¯—«(\ãF1ðh^cb¯º™Fl*Í‡|#\épwñ6\×\ÏzF;\ä2lNV½{,µC\"_ü12òó\Ùq~U\ágGû¤úœªGŒ™´XG\Ùa\ß\áÑ¡\â0\êbÃ¦m‘s\ï\êGX™Ù\ß\êcy‚Á÷8Jˆû”~;¼÷U2\ÒZdž\ÖüN¤lù?\è(!\Þ\'†¢Á{w—ýŸ,\ÖWu\Ô\ÒoHV\Û]ü?ðÿ‡wßŽŽ©zY‹?d)*ýUG\å\è\äKž+:;ýVR)°]-K¥‡\Ì¬8¶•ŒŸg /1¬P±^\ÑpÀs%6\Ï\ê¥j*\çõ”gZ5ö<¥Ð6\Ù\ì‹;Ú«\Þ9\"Rù\Öaq\ÍÁ\ÚüvüUz¤\Z\ìûÚµ\í\Û\èÈ¢öký\â\Êj/÷»óF\é\ä5ZStØ¾c§sØºmGä¯ÞŒ#+&.îª•x?±„Å£½\ãòbs¶KNx¿/\Èj:!³@\ÞI\ÈL\å\Ôb\ÂR£Yù+¿]t œn\Ä;<e7R†ÿ™&…f>~<z²)©—¶°øqƒC\æø°\Ë\É]ø!dÖ–Ž0Ç¢ÜŽ<;€w¡B\\‡ŠÁ(\Î$Ý°yYV4vV\'f™YÒ‰Œ&‰\æ¿c\Å\Ò\ËÔŠ¥\æD–aÚ°\è¥„\ê\æ\àò÷O\Ð#\ÖMTŽ{5E¬´­\Ë?\Ð3\ÞØ½cCd\ì§Å‘£®HônŸ2·B¥¼Q¶|}ä†§C´¦\â\Ê\"\í®k…\è%1Ä‚Ô—d\â’\Þ\é\×xÇŒ8*£„x‡N\Ìü¹y%„5vdŽ\ãûU™A|\ïØŸ¨:f3µyY\0wE\ÈÔºì¿…Å\n°¦ö\Ç\Çÿ$*\Ït\Î\Íq•\"lú‰‹ƒFa€\Ì\Ì\Ý\Î\Ä\ç\×\ÝJ\íH\×\á	Ž¿üw¥ú\Ë\Î9‡(#´n.Ël]9V\Ò\êq\Î:ŠºÇ¶,+ŽT(\Ç\×\ÏÎ_7ý!‡¬4UŒh\ZYÿ\Í‘m«\ÆEvlZ\ZÙ¹¥R:î·­ú<ò\Ý\Ü<Xh?”ŒüýŸ&M³ù÷JhBd\Úü\ÊH\åª\ï\"+\Öl”y‡ã¦—JŸÖ±\×\Äûs¹)=;P©”x/ñþ°¯K\Ø;\Ëþƒ\ÄøƒÀþ\'rBþ/ŒóRù0\'G\ãÿ3^Ê„\Í\"®]K\×\Ï<’t\æ\ÓòÅ¹h`@†¯Až\ëCþ›LõV,,~ü ¥Å¦b©\ÓLû\ä4Y-©^¬\0\ØnZö¦9\àj·R\à\Ø\Ãô/B^H\ÄVÄ‘FŸLU\×\n”³ì²¢ª“úS\É6z|=FY\ìG«uU3\á§ð°ÿŠ[‘9_j\éñŸ\ßGŽ¼´syY÷\Èÿ]õB\ä=\Ù‡õUS&>ù?\Ò\Çñ„6±\'l\Þ\ÕYA‡œ\ä^B\æ^6¹±uF	ƒ¦E¿¶qz¾|^¾imgÉ‡\ÍVF}\Åö\"\èt;\âÿ\É\Ñ[”Y®2\ï©\Är:ø¿\äò÷zK?pÎ Œ\":#XŒ*0\é!\äù‹-+Û Œ–feÈŒ‘J‚J&I\ëò\"ódvW…\Íùª®VT\Í-R~$Æ‰\Öý\äÈ±WüÇƒ„\ê•:\é\ãx‚\é¼^i¡y2Žœ\è\Â@ov­\Å{s]IøN¶“tE\èóc\È\éyÏUc´y/£µ\È;S~@bü?\à¸3q\î!h†Ð¢\ÖÛ²°øi‚B›ŽwIe™\åüE¯@SR**SiØ´g¨\äe\áU¤”Vy1†òn\ß\Î>I\ï¿öóÈ¯¯}Ê‹ˆRKYyµ’si‘ù\Þ\Ù\'\ZóJ\È	ù\nº‰ \éÆ‘RvÄ‹¶g±\ß	„2ö\ÙDg\Ü\í/üœ–0Ž‰UŠóÎ€H\È	MI\ÛYVd®”XZ\î¢øÁ‘þ² YH¤»ô¶,,~\Ú`¸d%ªs«F˜3]rBE\ë\Z;JˆJ2M‹Õ‰Š° \åöaš4°E\äÜ›N$£:RºÏ¿¢m\Û>\ê£x\ïe”XVŽ‰eGe\Ød—JŒ1gem7f~\È,\Â{Ž²²ŸO|·Š\Ì\Å\â2§#•w27p€û«°¿\ÍùW%^™.€‹c3¦8$\éªl\\þ¦ùµ\íÏ²øŸ*\Ø?Pø‹=U|ƒÂ¦¯T<V\nŽ*™\ëW˜cU¼Vpz\Ê:\Åû0\Í\Ío\Z¹\âŽ;<‰©–\ÔM\Ã´–\Ð\ìKN qaÀ»›¯×ž¨\ïÐ¾P‹{‚Mvþ \Ìhq±‰X2Ô´¡\r_\ÓºŸ”QB¼[¹\rÿ³ûtI~\Ù\â§\rþÊ¯š\ã°\Û¿ä—°É‚¿MÁ“a9\\‡JB\ÇGö±\Ü\'–\0;\âC\æi§t\í\à´\ÈJD\Î}–¹û¡k#™\Ùu‡]N\Ïöo\Î\Ì\éV\ë\Ê\Ö\\\ÛQ¢0(9\á‰¶bU\â¸øW±\ß\nÇœQ\ÂBs\Ó\Þ\ê §ULw_”f}ÐŒÀ56\Î\n™CT\Ä\Â\â§ñ\nš>¨\\ §\ßV\ÍUø\à9‡m*Ú2J2«¥òNdü’¬•ñKUS\'\Ô\'KV\Ü\Ù×©$¸_\ä\Ù]9¢CO¢Š&_ ‡\Þ~RÈªC.91\n¬OX¡7Ä\ÓÚœv¦\Ú\Í%´\×~ˆù´Àð\Zƒÿ]‹ÀZXü``³Ê¦°·€Š\ã\ÃÇ½A*[\È<±€\ë\ê(!òo\ë(¡ø!I\'2;\â±\Ï~š\í\\š\ÓQT]€•\å\Ý\ïóD·‡>y¿‰ü\â²\ç=\É*\Ý\ç/iq±¿¹\ÞzR\à™nÀ;’(\Ð[m}\"_^d‚\Úüý²¦Ue‘¹k\rÈ«4džC’Y1¶ö\â`Zh	\Ëb\âf|ä•Œ£D¿Ú£_\ç¹ýÌ¡ü…—I¸A\r\å‹‰ÇÄ¯©Š}&®*\ål³qþLœs¦\ë„M\0ù–¸§\áô\ïRõµ‚•Ö‡\ã¤\Ú@Ò›/ù\ÕUO\ïŽ#«lÿÖŒœÀz\ÛI!\ät\È	\ï\è-.&}\×ú,#I\á==…ü\'ZD€<\Ã\ÆT¡üczh¯#\Õÿ‰…\Å\îî£•\â|ð#ñ+*A\å\êò½\áy”¥‡ûÃ°¨ò¿òn(_g\èœ~=\ìdw:\Ç/…nNtv\çöˆ%›Ig³fË Ò¦´(!\Ãù!\ÇÃ»¡¤\Ïû¤\ï<ý\Ú\'¶\naù»2²ü\ê\í&-K·iŒT!M\ÍSx\'b}\êbga+\ß)ûº´¨@Aƒ¦\Î\ëXXühÁ\ájü*‹ÕƒJ¿ƒ•B|£Bf~E‘\é%q—ø«^dr¿•\å’UE\Ø¢\Ì¤oe©\ÈüDƒ<\ç^O¿\ä]¿žžBNag\èÇ§	9U\Ï%\\_Y`N\ÄöV–—4\×\ê-¦ö“A—\ë\Ï\Õ ÒŒÁ‡l<\ë†GWføüÏ›\Ü\Ü:­“R—œh}\â}W\ÅXŸ8\æ\×w8y¼Ÿ‰\\²^‹Fa­ ‹Ÿ<@S¥ I\Æþ\ä\nA3NúK‚&,$2«\ÔrŠ.‚€\æ\ØMƒ‚¼3û?dú‹Ž°™--h¾aÿ*\Üz\r	\å‹}g”ý.!s‡Ê—2\È\Ë$]VZ½\Å:¡\Ë\ãs|ñ\îþ/%FY•\È	\É\Ò\Â\á~;{P³“õ6“¢|¸c9±\Þ\ï‹qÿ†ˆq¬`!x¤ux¯\'p\î ·°ø\ßƒ\î$¾«„£•d\r-\'X.E^¬œ¿±2hN‚¬g<l\êRé²¢3¶Ø‰¦ŸKNq\ìt\ì3\Ú(]\Ø\Ôû[\Ü(a\ÈõºŸ‹]x\Û.H\ë(«·Y\'\èc„2÷\à:ÿK\×\éË‘Jl\ÈOGr¬¡\Z	ï«¼<\ß¯·™\0u\Ür‚\ìt!xõQ\Ãû[_Â…\'`µBFF	qü/Œ\Ì@YUaañ¿YÐ€l\Ñ)±œÊ†˜ã°¿^*N\ØfÜ¤(9A,C¥¢u\Óó[p\ì4)]rb…~k\æa»Š2°\ØF\ÐbC\'\nç¶¡¹	¹’wš¿Gºçœ˜O L½Å”@K\å:B§\Ä6ÿ\ÓVõ3cÓšó(C\ê‚{ÿ\Z\çjº[,¡)7±µiŒ\Ä&6—=‹ZŸ°2\ïbG<d¤#Mñ±>\Ãf<\Ï\Ó\×MUYXüo•­‡T’ ¨“ceö?*\ÇzY—ÆSIù=*O{\ì±”r\n	¬!…CN!ó¶XNaó¡–Y\ÆÊ…2\ãû\ËX\î\"\è<ygªI\È<\Ê¤‹ü!¸z4\r]\à>h\ÙÍ¤ž4…L±^2\n¾;\í\ã \Ã4}V\Ê/\\‚&µŠ	 S\Ý4šû¿±>‘\ÂJð2Y\çÝ‰Î\ä<\ï&©\åfañ“W&¡,€å„Š!±Ú‘¶h\Úi\0©x¨@O’|@(gÛ±\Óµ²\Úr’pÈ¨X³\"\"\í€>_™Ó™\ï4›ŠLg™W½¦\ÞX\é/›\êp\Â‡Ì½¬˜¥…\æ2½Í”Áç€®¡Kš°?D‚n†z>G/™\0’WU¡9÷ÿdI8ó8Ás‹i9U;ÐŽ\Ä9¼\ã£\æF²\Ð\É\â8¶\r2œ\è|>÷E&lþ\r5v!	‹ÿ]\ÐSZ\'Ô–±R uZ\0rbec\Ç\Å\êA…r\×ü¶Ä‰\îDa`¹\Ð\Ã\Ý%\' LtÆ¾tÄƒœ&°	…ón´\ÌÕª\ã.\ä\ÙOÃ¸O×±\ïú\Ü\Îün{\â\Å\ÍQ³¥°¶ \çC$\×\ÒÙ«	÷ö›vzIOð<­T¼‹+ðü=—4¸7@_¥\äu´Ç¶\Óz\å(!Ž\É;\ÄñNø_\ÐGMbµ#ÿ™\Ä+4\×\è%,,þw\ÊÁ%Ñ»È¯~\Èµb‰Õƒ\í\Ý\ÈG;\âkT¬—uø]\È	\Û)ÔJ\êv\Ä\Ëò7¡Œ\è\0ù9\Â\ê!4}Ù™ó\Ò_†\í\æQ‰Ÿe§¿\Þb½@\'¹Ï°	{\Ågº\ØW7Í²\'\ê\"¬X¨\Û3(\ë¸0Mu%‰<G	±\ïFPøŠ\ïÛ¡r]Áþm86C\ÕZXüoƒ\r}}P¡º£bp«c,± \rTk\Ì~›o¤c>,óY±¾£S\'H\æZ©\Üh.+6·ë‚ŸVUY!d&©Žys¨¥n\Ùf:œ–›8\Æ\Ê]\Å\æ¨\Þb½A²XEËy÷\Ï(©\\1\å¨(·	÷8i\0\Þ\Å8X¡ªS®Kÿ*·S\Þqa¨öQ‚G\ÞñQ¹rn&Ž\Çú¨\Ý\Ì\Î~[ü6:\íªjg\ê\Óm€Î£°\0B¨(-îƒŠ4]±¿´t¸9CK7#¿\ên’\Î3\ê@\Îõ0p\î\í»\Ã[Yd®ÁyvðOÁñ³\èf}©Ð°\èC“.º*™g\é\Ô.6¿\Ñ\Û\Ûcˆ\Ól¾i\Í>&\è½D\Ñ–_1®õ\Òg¸\Þ\'È¿‹{\Z†óq\Þ\Ç~\'l},*|:²\êZN\â\Âµ>•\à5\ä´Cð!<š\Ë\ØwG=\Ë(au¬ö…–°,,j‰‹•û³Ø¯2\Ô\ÉÕœ™\'¹°¹\Â>)Z3\ì\ï\"i1\\\nòR±\Ø÷B\Ë\r•^¼²]}<Î¼T\êB‰wu+#*¥,O­D-\Åþ?°Ï¾­”\"”¦\nŠ\Ü\î‹÷NreØžS,¨÷{Ÿ÷\ìXŸtaÀ3\Âr¬¶>ƒ\æo\Ú\ävF	Cf¸X[!gEg\äó=\âXž\è\à`DÈœk½\Û-,\Z\èÖ€Ê¹–\×¨ mQYeù0T`¿„òlZ©hƒ;\Ú\Ë\Ð\ì\Ói6…œ\ÂU\áe5|\ÔHN°^\Äs•c¿©%\Î\É\âµ8¶µ¬Èœ\Ç(¢x2x\0½ÿ¦…ˆý\Ûôrû\Z ª“9\n©ð\â[…J;•®\Ø†Ê¾?¥,þ[ ¥Æ¦-\îsHF|\Ô\\r)9.ºB\r¶\ÎróAóŽAgZY²‹Ž¸Õƒ\ÏJ\\*½\Åö3ñ•\ãœÎ \É\×\ËZXX\ìKh¥ý„}h¨¤\ÎÚ†\ì\ëq\æ#2¤Š\Ô.lþ\Â\æ›£ZtŸA¢…:Skh	~\Â>/‘8\Ð\â^+\Ùl†…õd\ÄG\r\Ûl6\íp~+ŽGcN©5õÎ\ãb\Ð\áFX•	\çe!sŸ\ï\ç+-baa±¯€ŠyREI¡ùM¥®m(\ä2÷²\Â\"\ïº\'„¤#:d>GZ‹Šý–ÿ¾}Oõ¯\Å\Å\ìO\Âý¹\î««\Þ4¿(‰q -	›Kayý\çeP\ÖQu\ïÄ¬\è2w«J1VŒ4Ç±Kt€ ð.nÖ‘CY¼\ée·°°\Ø@Å¼\Z•ø»Šbó°®F,QK‘F¨W½L–Æ¶Œý88ÿ=¿\r¤pQy¡¹\0•|0\È\ë\Ì=q8M(XZh\Î\Æõ»JZµÕ·\Òõô\î\Ç1Ç…!h^Ò‰\Î\î\\\ÓôYÄI\\Tµ‹F\\”:Å•:†¨\ë\ÈW¢#l\æp¤ÕŽZX\ì\ÐBA¦c*›S\ï€p\Ø\×ó¾TV]—•ôY©¬\ì|F³	2\íwúzB\æ9Ê¹Dóo‹ûB‘ù+C¸\Ð\ÓK\íhI1ð!÷a\Ñ7l\Ò&XMqœ,.V\Îõ“Un\Ü0;!3]üÍŠ´Y4¸|š€7!\ïZŽwptR.\Þ?Î½‹2K”e”i3ôŸ\×ð=¨¸……\Å²U¡¬\Z\ÍŒÅ…$\àD-e_O¡\ÉaG6*¿\Î\åq„\çœ\é*°º„\à‚&_+ô·l’a{­žM¨\Üˆ\ËD\Ð<ZUl:\Ð+ŸV‰€N $’­É÷&–šš\Ð1¦\"l\Ú\Ómd!Î¯ “7x]ì»“\Å\ç\éT¤Þš\ßÀøù$\ì;\ä„{¢-öÃ¦„†\æž\çˆ;\íq\Ý?’˜ /s	QöI®lƒ²+é¯¦¢ÿ\r \â?À\Ê\ÌJ\Êy…öõˆCE\Ðô\0)p˜ß,=Aú­\è\Ô\éT\Þ\Õ\ß\Âû\í}¤•E\æ\äOÁ9™ˆò}dB´M3òó\ZòU›\Ã\0…tÜ„\Þ2œ¯ D½8\'Ž› \ÃaBN!3Vu\Î#¹AþyÑ‰û]\Z4\çÄ’¶B\î$g1Ž y‹\ä~9t\Â\ì`û<Ž%]ÿO#7”\èu¤3y\Çú›Á*faañC€Ž¤¨Ä¿fE\ä\Û]~þ™\Ó\×#ƒ\Îj\ÄH\ë8¯4dþŒ2«qüû=uÒ`AO\ÓxQ±I\"	™)¢#h\æJ>h^Q›q\Í3£Ž›a³\Ö\Í#qŽ›aSDR\Ä\Öq\ÜdL+6ÉŠœø]HN“¬V£)ð:Ÿ¿R\Ð(\\‡Sm\Þ\Ó2œ\èŒ{>!†p/‚L;\Ü\Û6ô#òr< ¨N¨™o\éýÑ˜ù$x³°°\Ø`S‹ŽŸ°`nC¥{	t6­µ$L3\Ò7lš!\ïôõ°96§\"q…Ç…!d\îPk\ãn6•bû}\Ô30\Å!ƒ\îªs³„ .6—\ãzN\å\"Tvö\ÎüyWG\Z\Ý9eŒR\ãOkž„t>,°óp\Ì\í/{\"®¿,h>TnŸ[%W\n\Âö\ï¼o¤¸f\Í9 ¨>¼_’£0,\Å\æBy$ \ÅùA®Q\ë\×}³H\È*faa±7ÀJ\Åð3¨Ä£Q\ÑÇ‹U\ØôŠ‡¦]\âúz‚\æ~\é/BóiŽwò\ê˜&H&Y+\é\\”óaß‰\ß43>ö«ô:\Ä¶\Ëq_œý$’Äž’¾\"ú€¹\îlò\r6­°\ïˆMH3l\nôüJ\Î3\Äu£}n\ÐqYœg~Ø¼¨Sk\æ!	ax\Þ[T\ÇúT&Së½»Ö§Œ¢\ì«HW«ˆ……\Å\ÞI‡\Í<6\ßÐœy•m*ø\ßP‘\Ùi>q2ö{s„le‘9•úxZb´\ÒTE`uqe\ä\r ™g\Äk\\ƒ\"}(:©_‰E\"£:\è$§h†]\ãg!\ï’S\'’tL@~Ž)$¡ù8\ï.\ÆñW\ì3‚\ÂNœ»–+á¼\î§\ç\Ç3ÿ-óµZŽ3\çýzë²²2Ž1@ßz¨V\èüJ6uf-]@ð\ØP‹\ìŸ!1‘`X)S\Ô¸•dƒô‰d Á‘_µd˜9º\"hÄ¾ôõ±À\êÁ¾ÛœzE\Ü÷„\n\ïAË‰•qG\à|\'\Û	 ¯\ÛqŽŠ\æ:q\Ü\Ôx÷ë­£‚NHæ™®–\ã«\Ìc\Ëh§C;ó]\ËñOzû6Q“YŽ^€žSqop\â9ö\"‡\ä\Ö\Ó\r\å…\Ò|d8›5 Æˆrƒ\n±HÅ®\î\Ì\ï­ó\Å\êA™´z°\í	\Â\è‰ý\ÌXN£‚^\Íj \ïøW…M_\éscx\êš\Ù\ÔQ\Z4/\ËyŽH‚œp/Wa»ƒ\äby°F†79J¨—02„\î¦–Î·õº+€¼¾O¬0‹¥\â“Å¹v»\è\Â Kn\ét‹œ¦z]\Z°\í%–°9ƒ\×ôoò²\æPùÛ©¥\äÄž\nšyBxA“‡c$žrºQP\ç—A\'\É\é!\é›\åzQ\Ú\ç\ä\Äj\×\å{¸\Î#Ð¹¹–#ŸDù%-D=maa\Ñ Ö”\Û\Z\"nNŸ£!¸Ž›/2¹M?“Cÿ\Øw¬ž\"óõ¸^\ë5Á¾3±¾œõy\Í\å\Å\ælXR— ü\Z\\\ë—x$H¡CV²Rš¤\ï\ÊuƒºGQõ\Ê\Ú8\Öa\ÙóË½5]ˆD[‰&.\'G\ã\Z\\^Œ÷Ú‡\î*baa±/¡£s_)\Ð7\êÓ‚\ØZY7\Ã:GˆÁYtb7û‡VÆŒ¢y6Š„¤\ê’BÈ‰#†¼N\ÈY)z? þX‹Œ\Í?\ÈUñ\Z\Ø>Bò¡\í€\Ü\å\ÈsE\ç\è(¡Xya\Ó]‹\î5xé¶û\ëTVd\î\ç&=eaa±/\n\ïz•o\Åþù\Ë\n\Í\Å\Ø:\Ä4O‰c&šh\"2\ï«õ\áŽŠÕ£ª’BV\n¢:Ë¸\ë#†\ÍÍœh­\"Q\àø«\â\ã…&&’\Û_ö².$!s	+Š\Ì4i^š^´¸´¨……\ÅO ‡óA \â¸	\èy‰\ÔP=]\åc\é/rC*s*\ç\àG§ülXV`.UUIÁ\Ñ:XMa\ê€å¶š\ë\Ò\"ój>ª‹ÁSº\"—«—\Îü¹ýÌ¡°°ª\Ã!›\Ó`ù\\‰û\à\Zgjq‹Ÿ*P\Ñ[‚Ü‰\Î_Hh–j\ÇMYÛ°¬\ÐÜ«\ä$.\Ë9J\èt°W•™‹S\é;B’‹@8.!sƒöGÿÄ¿J§ü\àº+\èü\Z³RH\ïv\ÄC\×r\ä—3n–·°°ø)‚~Z ™èŒŠ¿–\×ØŠoH@\ÖG,\r›“ANÜ¨°\éM+\ç¦\"Í­aNTUueù†AÓ¯._0ºAÀÒ»\×p:óÙ‡;—MQ\Ü[´#©¯µ°°ø©\Ý	Œ‡„\Ê»x¿WûF\r+\']\Ûp¶tnM\Úhz¾«š”\0k4\Èg>G\ZõPR\È( væ“”\Ô#Þ™\èÌ¹„\ì\ìšGIf8¶Ó†´¨……\ÅO	$Î“ƒ…B\'¼K\È§\ã&ö%öHaxªMW=/.\È_X6ÿ!¨º”t\èµýZ +\é\ÌG™\å¸.C\ÈÈ”$%¤\Ë\ÎKG<\ÍÿCF?µ°°\Ø`¥æ‚¢¨üÿ¬¹„\Ñ*‚\Ñp\È[d¢s¡\ÉÂ¹\í \Ýeœ\â\âL\ïùuªS{jeÿª»µ¤ø\É	÷±£¬\Ø\\\Åø]\Èo’{\r›—c\ç‚¬&@oS-jaañS\0,¢Ö¨\Øÿ†uò,k¥\ä \Û\ÂE\ØFG	)\'¾Q¶G™÷#SÌªj‘Š–Fw\Ë	–Ü««Ýò6\Ó\Ý\n\ÌCn}}ú\Ð,,,\Z(h\r¹“~QÁ\ï\é”`»\rd\ä\Óp19…M\ã(¡„wÁv,›{\ØAfò£qþQú_\0#‘\ê}\Ì\Ôþ2—œœ9\Î\"\Z\î\\Â”¢0XXX4P,)4§Up\ÊJÐ¼\Å\æ_¹³òŒA¡;\É	•\Ý%§¯´\ßjˆ\äu]>\È]‹ý\ç\ÐEú|Ëª>`\Ò&¿w\î\Õ!§yX\"(\è´!lƒ\ê¿eû®,,~¬`_,(.*ñˆx‘;\î¬ðS\Ä\é2\ä\Ä wI\\¢¸\ÉÕ±\'Qöp?\ÑlýGi\ÌDg¤whõ\áþF3\ã¥ô˜\'©i1‹;\Øg\Ä>6\é®ÀE@ù\ÈWÍ”aóp\épsû¸bCÀ\ì+\à\Þþ$\ä\äÄ“§%%£„°%2Žm«(6—p\Â4›‡Z\Ì\Â\Ââ§Š†\ìÀH4cV«\Óm®¢%…}%qù9—d5\ÛÆ¨²°°Ø§\àbhú\É(!H\éU	gÒˆ£Ef‚®ò\ÓV¢E,,,,ö\r´Ÿ#˜ßˆKCP\Ö6$y­/	š“ªœh§œK8F‹XXXX\ì;€ŒF‰³(—Š\Ëòaœ\×x×šQy	VWO·°°°\Øw\ÇVNt®Ž|\Z*sV\èùy/™\ç?\Ë\Â\Â\ÂbŸ\0¤4\\Éª”\ë\\ù™ñô\Ì/2\Ûø\ê\r°¨\î\'9¨Ú«ƒY<ó‘þ¡¢û‘9¨4dþ,.!3‡dU2_1rE‘DSµ°°°hX2O«e%žù•as3Œñ»òU\Ä\Â\ÂÂ¢a€«Ô€´Þ¬™;JG˜cA\\\ß*YÂ²°°hx\Ø=\Ú4f\ä	TXWts _\Ö\0=maaa\Ñð@¯÷\ngM\Ã×“z\Ø\Â\ÂÂ¢á‚“´¹˜f-,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,RGÇŽûŸ\Ô1÷ #¯\í\Ñô\èv¹ML»\ÜŒ‰\ìU;†¢ºóõl\ì\è\Þó“¹¢ñ”>\æÀºe4õ:\é\Ñ=kœ›ÛŽ:-\Z\Z\Ûî€±nòV\à„Cƒ=Žl\Ê<;§¿\Zñû\áw\Ä\ï‰\ß¿/=gñ\Ã#\Ò(\Ã\×õùôö@²tdû-U8Y\Ýô’wSZû.Ç©¨\'\Ò\Ú\åÒº}^\ÛŸÿù4Ÿÿ­Œlÿøôlÿ\ÔtŸrZ–Žõ\Í\È\É\ëð³$×¯\r\Í\Û\å†ò\çBww\è|7\Ý˜\0ý\ÓÒ³“Ò³ü \ß\×9[\È1„rO:\è‹~­Nøª_‹G\ç\å8bI\áþ_\"}³¤`ÿ™K÷›8oX“÷§jþÜ´¡‡œÔ§O\Ûµ˜\'>\í~\Î\ì¡M^©™¦lþ˜Š$`Ê Ÿ]\çU\æ«þ­nVÁg½3\Ïó’K5\Í|ð+w\ÝU}ÿúµl\ï%ç•¦8\ì\Åq}\Ó\ïšÐ¿\åI¡\ÐIž!c&h‘\ãU6\ÕôÁ\ËGýŸªŠ\Ã\Ô|ùZFú\ço´¾tö&}\ç\roüiih¿)ø\ÍZ\Z\Üo\ê‚\á}6kHÓ¾\ãû´¼ÿ\ÇCµXŠˆ4J¿¬sFFV^‡Œ¬.}\Ò|yò;\Ê\ÈL\Ã74\éí´¬À³-sü\'\ÖF^­³ý\Ù^õ¤>‰ßµª8½\äðûSý¶c\Ñ\Ú\×ýo}{TÄ¤gu½\ÂS¦ž	¼\Ó\Ù\ä\æ\î§jSCz‡¼cð\â#µ%ùG\Ô@\Æ%\ÝNÁ?m‡—¼¦\Ý-}þ#U<üeJ\ÏÉ»2ø‡¶\Õ(Ÿ|]ø €xnHå—¬\Õ\åC3|y€¤\æ¢|m÷\Ìv\\ÿý–:¡\Åk\ê\Ë™¿›7\ì ÷ñ\áË²\ëµ%\×\æYC.ž80-SU$`\ÎÐ¦¯²³‡5®\"	˜?ü O½\Ê|=\è\ÇUD0{\ØÁ/{É¥š\æ\çTªªs†5\æ%W[*Á;À}Œü\è•\Ã[©š(@:\Å^eRI¥Áývõ\íqvÂ\×èž™i_<´È©¬,\Ôh·WY7•†\Z\íZTpÀŒ/ûµºEë´¸2®ê–žž•\×\r\ßK9~ðv\×ü†b¾§ø‘|=­c\î!Z<ø–ñ£\ì]6•„ú¶®f\Èôuû]\Ùrœ®·E™\Ñ\Þ\ß\ÙK\ê\Ô*bð\Æx\Ê\Ô3\ág©\Ê\ÔA\"ðR›Zw\è\ÞVÅ£\0‰ô’uS²vd‡G\àûþy;½\Ê%K¹\ä=¢j<ÑºC\àøŒì¼¯\êú°<\Ò4Z{ª&\n6õ¾\Ò\ì? ªM^mi\áð\çŒ\éûª*\É\Èg\ÊÀCV‘8„\Ð\\†>\Ï{\×7\ã|,\È?h‚—\\ªiö°&aU%˜?¼ñ/¹TtP5Q\Ì\Ë?¨\ÜK6•2]¨j\\4ú¼O\ëv¨÷=–\à\Çg\ÂÀVWª/4Â\ÙE¨‹=¾—:’H¢\å\0+\Í\ç¯ô–O-¡üÇª,Š´\ì¼û<e³\Å*R/ ^~\ä¥\ï\á¯\"\0\Â\Ä{Y\ç)S\Ï=õ‘\Ýõ/e±©uV\à*.hq©ÿ(\È/Ù˜”ð\ÂZeNk\É[¾Î„Â–\Ì\ìÀoU]\Ò:ä†P\æU.•\ÝO©*AOÕ¬¡\Íú\Õõ‹][ªYù‰P(9ù|\ÔûðsT,\ïô:út/ù¥…û\ï\ì•\Û.J´¹h¶..8`›—lªiÚ C£k¾\Ò\åw­`-\íñóÓš\É\áøcT\Ô\é´#¾\×û\Ú4n±\n4=¯ñ¬÷’M%Á\"[5ü%\ï•LŸÿZT\Òï¼¾•Ò®´,–ªd\æt;\ÚC®^	\ßwU\É\ÑK6#ËŸ´{!)„Œük=õu\èv\nE`Ñ\äy~RzN×»\åºõõK/e±©\æË‡y\Ø\ÃK..ùº\Ä5U\Ú\\Ú½5Hnž·,š}Ù•\Ø_ˆV†L-\ÍDB³‰ý(·\ÄS–\ÎU\âÚ³Qv1-5/9\\)ª|ôWñ\ëA‡æ•‡\Zy~è¨ˆ—\ì_ºxøKa}­\á*ÆžrÁF;G¼xt\\s:ù,Ñ$U,S5¿Ë«¬©*\"ø¤÷gy\É\á~·£r\ÎM%}\Þ;\ã,Ug¾\Ð\"\ËK\îuÃ¤-ƒû·(š1¤Ù§h¯ò’cš7´1›^‚	›_\é%Ã„wXgš6ð\ÐU•\×?\í\\\Õw^º\ÊÂv‚hW\âÿS†{[	’\Ü\å%\Ç4s\è!ÿR•Q¤gu9\'Y\á[b7Bi\Zš3È—óÛ­)Ã„\ï)\î\Ç*Í—\×\ÑK\å#õH%yýX\ã>\ç{\é\ÍôÚ©H\Ê\È\ÌñŸ\è¥õf½TÁ¢ó\ß\î-Sÿ”–\Óõt¹pª\à^þ¦X%B>ÿ†øcyWisø•¯´\Â?£\Ú$\ä?Ì‹•³òª›*0!3<A	\×[›ž÷\Ð\á\íŸÿy\Æ%Ýš\Õ!¯Ek_ \ÄBó÷¯åˆ¢jr÷\Ãý“\É\â^\ï!¡±s’ý[i9[ {«—|š¯ë±ª¿\Þ-[\\°ÿ’Žûq\Ó:˜3´\É[\ã´þ\ÍÀ>lh\îq?\×?ý˜YC›Ž­±	\ËCªR0yÀ\Ï\îö’[0ü ‰*’€9ùMûy•Áuû©ˆ`\n®\å%‡&\èøœ\Ý4•\Ä\ÎkUgf\r>ø/}só›| \"‚{ùk·\')\Ì\Ô\ì33‡6\í\â%\ÃûÃ¹‡\êJ\ãú´8Šz\Þ\n´:tÁð—x\éZT°\ÕÔ‡\Ýòa¿V‡ó4\æõ#øzHó\Çð\Ü\î%\ÒÿRnN!ý«¾À¯\ï\ßÍ’ŒöK¾\â\Å\Ãø=ñG\ßugT\è„.|{« .ú.qŒý`q2’@D*Ro~Q—VRÿõ\îà·®b)#-+\ï\ÏºøÜŸ¨ˆ’y\Þ5dB^eq\ßx\É3™¶}jœJ@›\Ý\ÛÖ¼\0.<\Ûò¸c¾ÀMZ7œ÷tscQf}\ì1¤¸–‘\Ý\íB¯‹r3sò\ÎS±8À$¿­¦¼›Z]8\\\Åð«wž§nŸsFvÞ…*œ$\È÷°‚/ò½bõõ9¦ù\ÔÍ¯ž3¬\é¸\Ò\Ð~\Ù)\Î~-=Å¨>m^Xp`¥W…˜;¬\É+*&˜5¬i/94\ã\äb\nýW™IƒZÜ¥\"6™¼\äfmò‚Š\Ôsò›Œö\Ò7cH\Ó\çT\ÄE£yÃšl¨)G«h@\à\Ä\ãU\Æ\Ì\ÏoòqM&X³µöM\Ö¬ºÿx\éY\\x@\ÅÇ¯~‚Š\Å\ïf W™9Ãš|§\"|Ï\Ôü–˜p¼?¨‰#”°<¤R\â{Â·´\ßQd\'’\È\\«„ÀùÏ½ôf\äø¯S‘z£MV§,O\Ùþ8\Ë;U\à\Çý5/}x.¿Š$\ëwÙ¼<ùþ\Èôu¹7ñ\×ð\Â\ã\ÌL\Üð”§„üò\êsø\'yüƒ\Óð”(ÿ°¦,£gT$¸VºW¦\Ö¢•\0÷6\ÊK¦¶—œ‘¸\0\à}$;!©:˜žn\nµnû\Ñ+¿Jõr1kh³Q^b\Æ\àC†ªˆ`þðÆž\ä3cðÁO|¨\ß+±¯Ê«\Ì\Û/ÿ\â4U+`§´—\Ü\×›\ÝWUl\ÒkK_l7\\NKV\ßj/}tMP1›g°>\äPž#Žbe\ä\Â\Ê^8ü@\Ï&\Ü\Ç}ÿ=eRý\Þ°¶¦’\ã\äþ-¯U±Lr\È55\Ë0-\Þx»Š\ÃG¶ß«twZv\×kT*øŽoF]¸=£½ÿLZ]5Gò\Ú\âûB…\Þ\è¡7\"®?$67I\ÙÔ†úq¯ÿöÒ‰\ãýt:­’ZG\rñ4VõÅ´°’¼A7Ä²Ù\Ú6\ê(„¥1}þ\é±\ÇZg\åI³¦\æˆþ	“!û\×\Øcr<+mªˆÛ„ÏŸ0\"ˆ—º‘\Í?K@›Ks®Y\ÆM­³:µ¡\ÚÀ™x\É}Rþí­³^™½÷_?ò\ÌO\ßhsU\ÍôÍf_xUˆy\Ã\Z¿¤E\r;\ÈK’O},º\ìÀW\Õf0;Èƒûywh‡\Ì\Úò°YY[š5\ä\àWU• \Ø\ã¤\ãH5u‘˜‚=;\éóþ™iS\Ñ\ìšØ¿ùU‹\nðù›>¸YgUgŠ_:\æ/XE\Û\æ¶K\Ù_hRÿ\æ·{\é\á¨,GSU,‹‚/ô*+r½Šð{ò%~Kò/¨IBõÁ\á9]O÷Ò‹D«\ìSTj´R|þ‘7-\Ë?ûÿj\í\Ë;ƒõ@\Õ$\0e\Þñ\ÐI’XÕ™\í«~c\Å0.^I\Ë\êvµÓ’ˆw\ÊnsiŸƒ\Ù\âðÐ·»e‡I\Ý~ˆ#\ÏF3Ú»›e“»\Õ¸}•\â.BŸ+Tøñ±\ÇÒ²ýO\ê¯Ï¢\Ø\ãH×§ùº¾^\ã\ÉH,2/ê¡š\ç%ùüo©ˆ\'’ù‡\á¹\Éýx2rºz·¹\ÑL%?\0`\ÅLöúð“¥\ØQ7º x\É\ìI¢c¤ªLL\ÒAžjŠ\í\Ð&&8\ìF/9\Ö\Â\áT¤ª@ß–&õƒ´¢øµc\ÒU™<°ù_½\äø>U$%€`\Þò\Ò3cp³„´X\àý\Ü\áUnaAõõñ­z7‰|þ®*²GH\Ïñ\ßí¥·\Î\äô\'GK\èwª*‘F¨g+<\ËÕ•|\ÒJz6Ö±´Mv\×?$\È!¡IG÷¤Z÷s¶wY™Š|ÐºI°||5$2}\Üñ\ì®Ï§\çþwL~u„Ä¦\ÅGJ÷u=U/C+nD\ÍóL\éjµ%CZû¼k<\Ëe¢Ó¸\Ïd¾`Ïª\È^E.,%°¼>üd\é\Ë72¢ýh\Óò„—Ìž¤Yƒ›T­\à›!\çzÉ¥š>\èuDtt˜3\ì\à—¼\äRI ²M_ôku¹ª\ÌÚ´—\ì\ìaM\â,»Ú \Í\Ô5^z>}=ýó\Ä\ì¡¿\âUŽ}[*B\Â\â\È_\â÷”•\×AEö¨#ý=õ¦˜ð¯¢¡ª¤\âð]Gbn´\Ã?=\Ëÿ¨‡\ëy‘Š$E2£÷]gÙ”—x‰\ÇE>’s>ÿ\Ûq\Çsº¾ù¸ömfV\à\é\Óò\Õh’ùü\ßI»Y‡Y\Zw\ÞM±£ˆÀ=$\ë\Ä\ë¦\"”ù\ÚS\Æ×µ\Î6÷ž€}-\î{\\ò¨LK\n÷\ß:¤Û©Í´8H É›^r{’&\rh~µª@÷{^r¥Áý¶‚@6Ö–´–>\\ªJÀ‘;/}µ%¼‹\Ý\ìøž0ð°„\n¾`xã¯½\ÊLp\Øm*R\'ú\çýú/´úúto\ÛZ\Å<1?¿ñ,¯²S6ÿ3\ÏstßŽ\çÌˆd36R,~o\"”ö˜Dñ’“\ä#öô¬.ñDµ‰(V§\×(¢$\Ü\×6v«ˆ>Ÿ¿\ÐK­«:ý¹p|Ï²YyÿT‘\ïô¬@\ÜhŸ¦Nr®\Æ%&\Î\Ù\ç+IVm8W/æ¸ž«nªÀZK°\â\\9üB¨T\"@x¸f‰W¹\ØQE\Èx:¹Ñ‰TEÀ~Œ\ìn·\ËG˜Â°*\ÕC!#M\Ð÷zeœ\Ì&^\Í4wXc\Ï\Ê\r\ë\á=Q¢@ó§\ÂKd\Ó{þ°&O\ÖL3\Ò\ÓKžt@÷“®jk\í ÿ¢o\ë;>\èuøéµ¥‘½~~²ªpMº­^úJ\n÷\ÛFT\"\Ü\Ê\ÑSlW-\È?h\Öô!ÿ\ã\ÃW~7\ÒJô\èqvÓ¥…ûï¨©‹D?\â\Å\ã¦}%\Ã\Ä~‡WSÓ¼ü\Æ[U\Ä£^>úW¥ÁÄ¦+\î{‡\ë8\êÌ’Hü–ð=CwòIø¨G—gøò.\ËôuNó\ê\çjq±¿¹gðv¶öùoH\ËÎ»F’/¯cš\Ïÿ\\¯\"AV\äýqMg{1A‰\Ä\Õ\é¤[ñ#\"óo“\Õ]|,q]O?\Æ\Ö)øsAwÍ®¢”Ë¦X>	£k|ù<‡ý„\ÎøØ„ ^\á\Ðñ÷„s1\í}™\×Wã¼›\Ï\îòKK@fŽÿj¯2Hã¬·$dH8‰G®ølIG%þA\ß\â£y\Û;\Ý_E£¹G7ÿz\Ë#>}=3g\ÖÐƒ_Ÿ: y\Íaü(†t\Ëh¶¨\à€e5+~½;ª˜!Áx¤±\"õ\ï|zšŠÅVTMy&_¥Šò\'\ïe\åq\î\Ýky\ç&\ØH,\Ô\Ô\Å\Äò±}Úœû\É\ëmþÀD‹sôk‡ŸñY\ï\Ömj›ðý\é­ÿ\è¥$·.\Ö\ï«.,(h\Ü\ÞS\Ïðƒ¶×¦\ç›Á÷ò*7gh\Ó\Ñ*bZg~Só;’\ï„-†$Hk\×\ëœ\ç+­še™¾@0=»ó•±”\éZSS\'¬›9*\ÔAo\Ë\É˜®\"X\\?³›Ò²üq–·À1\0<L‘.M¿ì¥Œ$„V§?‰\Z÷\æå²´ƒ\ïGÅ¾/¡Á_ÿnwô\r\ç:\Ò\Ý’Z\ëFoÀKOp\ØÌŒþm{WŸ½F\ä|~Ï¦€¼€$Œ\róô~\à>\ã\\Ý”ž“w…ŠÄ¢š¡ö|¹¾@O\nŒ~ý¨“f9¸	Ñœ[\ãzº/~\à\â)rln»¦>Ä³¯e\Äz®O\Z\Ð2ù,Q‘\Ì\Ú\Ô\ïU†MKÀò¸\ÉKn~þóU¤^˜<ðgx\é1LR‘z\áë‡þ\ÓK\ß\Üü&ªHJ˜6øv^z˜>\ì\é9ek\\ÿç‚¸·Ô”ÇÇ®q}\Ò/V±Ú¼¼w·¼\Ðc¤‹}½Ùžev\Ó\ÍA¥ø>\á!\Ãz4HE\â\0K\ë$ò£T\ÄqøÎ¦Ÿa‚\Ün:`«X\ì\\‡¼g=[#´½Î¡®Ä¹\'yNÞže÷\Ð\Ì¨¸¿¨yþR\èi¶I“N½‰\éCj„—X³\n/¬{\Üƒ®…5d$ñz\é¾Î§:ñ„:\î\Ï\á[g\æyb\'¾\Ê\Ï\äð©ª\àŸ\Äo\Ä?õ6ùh!ñ–’—/\Ì4o\Å!0™§8§\ê¼\ß÷È–cs\ÄY\Z?¨\å37\ë\Í¿¦,M\ì\×2j]³’Dh€W¨\"	˜—\ÐX¯2\ì¼WÁ¬¡M<›ŽŒŒ0«\ï\ÏZÖ•\Æ#©*Á¬aM‡z\ê\Ë?¸—Š\Ôsò›„½ô\á<¯\")¡_·3ŽÆ»õ•\äh\ã\Ø\×3~Á0@ü½ó\ÚQ-&<\ì&4EWzÉ£¹NˆZeŽ‡»?É”°¼aG¶\Ïm)M¾¶øv|»%ùñ›û¢™÷fM\'u½¿$\è\åõ9\Zˆ{X\æ%Ÿ\æD§ºµ\Êü\ÖK\ßw…Ü£\è\ìˆ{½\ëÀÃ¯¤7¼ÿ%oùÀjyŸÿy¯ó8\ÞW/™Yg½\Ë¢\Ñ¾72²»\\_ó™Ù žf“°S\ÍóLøglq; ¨øNBœ_†Sq¦9­—X™¸sÿ \Ï\ÙL#\É\à&™P\í\ß@2S•Q\àœ\ç}2\É/Š\ã°ú>\Ê/Äµ¼L\Þ]¸¿¨—õû}ŽþUY\ÌTœ\ØDkkaÁ%8ÿá¢‚\'ÀKp^9¤™ÃšbX\ZU+@…ò$Ÿ©I¼¼\écµ \à@\Ïp6_ôÎˆNw! û+/9Xß¡\ÂVÔ•\Ð4Z ªóó\Ï÷\Ò7±ä±˜?ü RO}ý»TER\îm†—.¦\ÅøŸ\ày8·ÿ£8­Ê“\ÜØ„û\Æ	\éø>¨ñ}T\'_`1¾•\ÑøN\é+\å\ÙÏ„\ã[é”¬\êF|ð$ |ó¡\ëm&X8£ñ\íOÂ¾—\Õ\Ä\à\Í-b,§´,\ï\rø\Æ×¸:5}Œ\ë—z\ÊJ\Ê{Qô%s\ì\Î\n\Ü!¬¸\Æ{^eq/Nt‡½˜	Tfv\Þ\ßõ4,—¼§jžg\Âñj‡Pv6Ö”Á¯‰žŽ‚™x(\ÏD*‰V~¥<=˜[Àš\ãy¯ru\'z\éû‡\Äö‰°x<ý|RI%›—\ß\äzc«:DhHB>¿\ê\í\å=ò\Õÿ;\ÕKrg ðûh¿Bmä©¦yù?Su¦G\î\Ù-KC‰óI\Äõ\è w1ô…ß´ñ²Šx¬o\çS<#%Ô†Éƒ»µ,\ÉdóT\Ò\â‚ýWÙ§•‡_¾\Õ\ìn\Ù^VSŠi;\ÍU•€­\r¹ú%\Ü¾Ó¸	\Ú\Èö”­G’\Ö,E§_7°\ÆS- ½d°¬µg\Ù\ì¼_«\Ð÷.òE\Íp\ÄOO\ã|×‡kžÇ‹\ÛÛ™c‰\Ö\r\Ú\ëz:¸õ\Õ\ZL\Ï+á¥–§·÷\×\ê_“\î\ëò0®\ë\Ùù^K\Ú¢\ëO3\\\ÕDñQŸ6G\á\Ø\Ó\"¨-¡nŸ=´\é\à\Ñ=û™ªŠ‚Sh¼Ê°›¾]*‡)›\ß\éU\Ö\ÔL$\ë ¯Oš5¤it „F½dp\Ýzu»˜0 \ÕIô-U‘z¡¨\Ñ\Ô-âƒ—\Þd‰ò\nš5ö´Z\"H\ß.É ÷‚Ä„\n¿)ƒCølŠÅ€?´^ò©&±Ø²/²i§*8ž\àð]„gó/t}%[µ\ïþ+\Ö\å8÷$/$Y\rD£;|o°#¡\Ó[.\éõJ\ÏòôÌ‹o…‡Nôo\Ç\0Lx•´l\Ê\Å%±|\Ö\à…½^×”\0>†²nF¨]7ˆ\r¦xifN\à–\Ú^\è\ç¯gž´ ÿ \É ¡„¡øš	M\Äm°PfO\ÔüªØ©2±˜28ù4N\ê\å\Íp¾^e8yZES{w\×\'M\Z\Ø<:Pò\Í\àƒÿ\í%3wXý:\È]|3¤ig/}s†5vA\Ô´`gmÖ§$¸ß¦d>pnBS~\äV~=ø\Ð\Î\ì\×RIÁzÀ3|ƒu¶\n ³-iÉ¾{\è\é\êU®\ÖD\Ï\à`\ÒW™¾@NMd_Zý­@\Ö9\Ôñ,U¦//À\è%ªŽ¤\êd 3»\î\Ù\"\\ð*‹º¸÷fšHì¨¬@¿\Ø$±•c–\ãÿ}Mú/\éi\Êt¯)\ÓÒ—›`]Ä‚ý_B†Œ\ß.q€üË¯\Â?¾\ÉXXEøµº+\ã2Yñu€ÁñOy	\çd• U¦e–‹nÇl(®wCóZ\æ/\ÆbTn›ƒa\å\\ù\Í\àf?`þ’\Âý«–÷_…&\Ò~s‡5žÁ\ÅIý›_\Ü²Z\Ì\ãú¦\Ýöõ C‹k&õŒ\Åø­:y•ù¬_FœS\æýZ\ß\é%WŸ4¨\Çi\Ñ†q}\Óÿ\î%3a\àa·¨H½ðYŸ´\'½ô\ë\Û2qø½~h\Ä0?3‡5ûÏ¬¡M§-\r\îWŽÿ\ÍJ¤\Õø_­X\\¸ÿ¢o†4\ãZ·\Ø/\Ñ7¬VðG0§\ÛY\é9.øv&óG\ßU%*7¿§eøVga\Û+­}Wß‘g?’`¥»€ŽkÖ‘¤)\Ûÿ*¾ýg@(7K°¼\ZV•†@ò,\ï‘P\Ç\Þ\È\È\Î\ë\ÆY%\Ð	\ÃÑ¨š(hz•Å½D#´$](ö´\ì°ô\è\ãÁ)B-}=¶\×LH€±ŠŽn—{ÿAt\Üû¾ºi€};¡®\'eé”Œž¹g\ÖJ\Ìÿ}pby°\ç\éi°¾2wù]«½¹ŠG°ùÒGü’jX={cþ\Þ5¾AºôÑ‰\0\0\0\0IEND®B`‚','4 ÐºÐ²Ð°Ñ€Ñ‚Ð°Ð»Ñƒ'),(11,'ÐžÐ“Ðš-2','OGK','Ð­Ñ‚Ð¾ OGK','GIF89až\0k\0\æU\0\á\ïø¥\Ð\é<™Ð–\È\æZ©\Øð÷û|\Ãüýþ‡À\âK¡\Ô3•\Î‚\Æùüþóùü€Å™\Ê\ç	\ÄŠ\É}\Ã\Ã\àñ\çòù\íöû6–\Ïf¯\Ú\Ø\ëööúýrµ\Ý?›\ÑT¦\Ö-‘\Í‡\È9˜\ÐƒÆ½\á\Ì\äól²\Ü$\ËˆÈ\Å\ä\Þ\î÷Bœ\Ò…\ÇW§\×c®ÚŸ\Í\èx¹ßŠ\Â\ã]«\Ø\Û\ìöEž\ÓÀ\ÞðN£\ÕH \Ó\Ï\æô\äñù\É\ãò½\Ý\ï0“\ÍQ¤\Õu·\Þ\Õ\éõ“\Ç\åº\Ûî„¿\âi±Û«\Ó\ë\'Ž\Ë\Ò\èô±\Ö\ì\êôú{º\ß`¬\Ùo´Ý·\Ù\î~¼\à¢\Î\é®\Õ\ì¨\Ò\ê!‹\Ê\Æ\áñœ\Ë\ç\Ä\ä´\Ø\í*\Ì\0z\Âÿÿÿ\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0!ù\0\0U\0,\0\0\0\0ž\0k\0\0ÿ€U‚ƒ„…†‡ˆ‰„\n\rŠ‘’“”•–—ŠGT\Z˜žŸ ¡—TT<¢©ª«¬‘¥T	­³´µž°¥R¶¼½¾„%¥#¥$¿\ÈÉ«&¥4U¥\Ê\ÓÔ—¥7U8¥\Ç\Õ\à\áˆ,¥3ƒ\Ñ\â\ê\êB¥\"ƒ\ÜT$\ëö\ÔA¥…9¥D÷\0‘A£²¤Ð’R1*´…¡TŠoƒ¤(c¡EV\ZJµ8d¤Tˆ‹ Ea£‚\á\0óBª\ìDŠŠ…D(²­œIiG)„¤\r\"GÍŸ:”0(É©AP\n\0\ÊôPR*û½RAš\nM³\nbRÊ§ y*\nBP*‰Ö¬Ä¨<\Ä\'A-ÿ?žeª€ŠƒzU( tø\í\0„Xsú¥²aÐ\\T‚\æ!ðÏ†›¹Ë…bPF*6\ÏÌ—X\ÐÄ¦(\â‰Có\Ê¥jjšŠ\Î¥z˜V¹¢”£*“®Ra\Ø\ì4¨”ð\Ü:´ €_º›Yq\ÅU„*P~q\"A	ŠSy!(•\Æ\ÔJ 2¢\Ê\Ú#\"`*üBUžh/UI)ˆ\îÁQ¯A\ì*\Îi§XGT_20@q\nN\äb`\éh2\ßFdQ!Ú¶0„\nh÷`:¯\Ì\'‹¥`…\á,\"\\°À|¥˜ÁMU 7\ßUPJ\'²C[,\Âb`]A\È\"UHEŽª\Äÿ^=¶(\Èx!@\Æ\"69€d(\r„€^“\n‚\Í24™\"\ê]\é	\Âp‰Øu­À‹>´õ’™— “júˆ:Øˆ˜Œ¹\àtZÒ€wy‚ö\ãP	‹\"Œ—\Ë\0u½U¨$Ô•¨¢‚XB…°”÷b& \'Û¥‘œ@Â¦­ýH„)6å¢šˆ±F…¨BRÄª¬rZ\Å	\å\äÒ ¤YŠ¥\\˜+\"\r„\ØëšƒLÄ«Fƒ°6\Ã-›Hp\ÏúZEvx\â:\Zh„j{¨\Ýv9b\à(ˆ”°Da®!\à™®“\Ä	K\ÈyˆÁ3\ï \rŒt¯º‚tK¹ƒôxý[EZ\\…µ¥X*\Èÿ¹\à° 5\Øñ‚\à‹\\ƒHXJWÁm\ÄW ).b_)¸û¯,{»g)?,TmŒl\ÎWqP);R[)LlŒ\Ç,ƒ,HmW\ÆT<´ñeD\ëYˆµK¢ðF0Q\×^‚s\Öû¢gÀ	ÓŠvÚ„\ÄDQ\ï›2\×sK]T)\ÐÕ˜Z\ÊB\Í=E#ˆ|@\ÕRq\Ý\ÆO±lA8\à‡H˜W‘Gmü\êÀŒ\07%ÁùP.Ü¥Œ\î³+˜XI\r˜#@X)W1j·L\à	kDV»\â\Ï\æ€w\'\rC‚\Í\Ì*\Èw‚ƒº\×^\ÅË‰\Î\Ð0(\âJß«\ÍK/\n« Œ\îýÿ*¬²PÉŠOl¹&„	\×?\Ó$t~\"&H\ïˆI`ù#\'±%h˜¿65\'J \ï^\ê;À\ÊDTˆ°ˆ~­D¬rQÀH\á€Ú‘@ªP55™\î|SOšd¾\Å\ÌOõ\Ë\Å\ÎrQžI8‹E (€ÀšD#K`°[\êC—v#\Î‚ DƒSIð O\Ð!—pb\Ã\â°x\rT\0\Z\"™1\ZCD\naQx¬$’8\Zbd€n‚QjR\ß$\ÌØ«\áù4Š´zš,b‹¥¨\Â³\0J8\n\Ùòa)ðG\r\ëld\ÕðlÐš8¶FY‚¤‚\r\Ç#}.	™\Ä\ê\ÈDG\Ä$@ÿnMZ&¹©\á ‘§k\Íð\"9\ÉBT²\n›4%6Y¦H& PkÍ©šØ#„\àJxòšdJT\Ê1«¬c\"^y»\\üC“ ©%hd\É\â4\r‘Tˆ6\èUMU\â”pL%h’‰\ÅeFx¹PV$h\Ù\É\\\ÈB	\\Šž%J°AE@z\Å)f8	rfÌœAT7*ÁNùy²\nk\ë\Ñ6-!–G\Ü\0Š\Þ8\ã\Èq^ñŸZlMoó¸P\ØRˆM’\ç,¸2}RTœˆñ\',Z™“\Ö\È1ò…\Â0Šš\í\ÂK\Ë\ç7QƒbôŽ­Á_.²Ša–\â‚ \0>u\É\0,µŸ;\ÝgOY	P\ÄL°ÿ¸\r(&š‹ž	óa/x\ÔS®Â¢¢)½\èJ«J\Ä2…\Ô\Å NKX¼µPÐŽI…RdªulÕŽ(±dT*H@j&+ŽŠÀ‹„ZT¢<}¬O×š\Ñ=@¶BL\Ðaˆ‚f—´0«_!+U\ÉRµ²,’%!Œ €Öº¶µªID½\0Û–Î§‚³€^£zR~å¯’lqx¸žâˆ´E(¬\ï\nq\0Mi‡¨­“NI\ÛÛ©*µCðC1\Äw\nl\r	´Zx6a£\Å&¡J]¾úönÀe\é *¹Éµ4®5\ß<«X\ÛC4áµ@§dEÛ™÷ª°Ø…(a³û‚&¿FiMÿ	±Ö¤@©€\Ín\Û{Ö¾²w²*h(\0\Zs\Ä\ã(N1Š\Õ)Q\Âb°8\0ÖŠ“ƒ\î\â\0pd\Ó\ÚNÊŠ\Ø~F&²š\ZK‚v+NGS1³\â(ÀfF\ëhA\Ü\çq¥@E%Þ»€†F¢Jl\r\â\ç‰\Ãh\çR‹²‡\Û\ãS2‚™…\Åe)Q<	[‚dmM\\\×	üL; o\Ôl\àø\n÷HÿEL\ê&Ñƒ\ÖÈ¢NM¯–1q‚#\æû#´u\Ëi\å#Á«N¨D\ár\Ìt\"¤„\0ø,‰\n\ì\à¼4ƒ\"4m\Ú\ëþX…üBŒ©#ÁH\Ð õ•ž”À\êD ¤¤‚†ó—1´õ›ƒX…žl—”•(l\Âü`Ò…€¥DÌ„xcuA£\Õ\ÓÞš‹Uø3\' XXQ¸ÀSµ«\0\\\àP@·MqÂ³ \0c%Cw\Z…E†&bÊ¤\nŒ ƒ“À\n\Ä‰$÷¨2w« \á\\Ào‰X¯v‰\"ôÀÚ¬\"ÁK‰÷>§*\Òve«\Ð\0™eyb¹\'0ð\Z`¼Gˆ˜‰…³h³m®²È$ˆö•BµPyq„~\ã	<\0		PÀ¨•­\0\\À\Ø\ß%°§J\0s\Æ9§§>§Ã‚¸ŠÐº£\0;','3 ÐºÐ²Ð°Ñ€Ñ‚Ð°Ð»Ñƒ'),(15,'Test','test','This is test add data in 7 years ago///','‰PNG\r\n\Z\n\0\0\0\rIHDR\0\0\0\á\0\0\0\á\0\0\0>³\Òz\0\0\0sRGB\0®\Î\é\0\0\0gAMA\0\0±üa\0\0\0	pHYs\0\0\Ã\0\0\Ã\Ço¨d\0\0\0tEXtSoftware\0paint.net 4.0.173nŸc\0\0 \ÊIDATx^\í [Ç•þe|\Ì\Ì\Ìlffˆ“\ÂBw»ÿm»…\ív»[\Ür›´\r¶‰ã˜™™™‡F‡Á1óc~ÿïŒžœ±<–­<;‰“§\ägI÷IW÷\Î\Ì7\çœA€/óÁú·i¨ÿ\ÓÝ¸ð\ë;€\ïýø\ÎO€ýðµ\ïþ0âŸA_ƒ«\ßm@\ÉX\ß\î =˜\ÒT§\çd \Ï`ð×€\Ñ\ß\0¦|ø\Ç\ï\ßd~}ûp\áD\íoÿ‚Æ¿þ\röi³€\ÅË˜Í†|¿‰1ü\Üò»\éÀmU\Ñ?¡\Ãx¤7Ž\Åõ\Ç\Éø8“05ICÑœ4ö\äQ@\Ê2§\ËG\â9_:5%#QW4…#Ñ’?\Ö~\ÎT0tL«ƒkÇ”¦\ZÎ‚‘pó¤•y\ÓÀ|ª+‰jæ™€ŒId\">ÎŒq°¦Acú(Ô¤@uú–ª8C£®`\njnùo4ÿ~*‹‹¡ü|N1üÌ™\Í\ÚnòaO¤B\0aHG’H\Ú  “d“\â	\ÌlÌ¬BRÄŒkÃžOQ\Élˆ\è\nY0\ny\ÞB‚¢qÆ‚q	¦‚\ÕÁµcJSæ…‚Ÿ•üa\å\è`~\Ùò†+\Ï|\Í\ï&¿7®‚qp\æyø9V°(\ä÷³ùœ<®˜A°‡÷ci\â\ßÓ¦ \é~Ž\æù+X¼\å\í3\Æxð³ þ?AK*3# /\ÕÍ¹Cq¦r­\Õ…­™R<ö\Òap”\r…£bœ•CR\ÉL~O(fF3#X£:‹(<‚ŠR„ZBŠ™y\"< \'\ã\åó¾\à¹:h¦4\Õpˆ\Ðó´†(’\ã’/’Ÿc\Ô\ßW¡öwO~3\ï[‹û\Â^ÆŠše=y¬\'ó¸’y\\\æþ\Ì9où­ü\Þ\×Y®†\ál§rK×¿ÿ0o\r‹ž¹<~š~jŒù9œ–ž´rC€\\Š¥\â&˜„\ï³ú\Ó\raMV\Êcerœ/Ÿ\0W\Åx´VAS\Õh\ÔW1C\Òø¹tfB&-d6k½\\~7ŸBÑ¢˜ µ©ªQÝ¨L¥8\ím˜\n\Æ%˜\nV×Ž)M5¬\å£(\"7ŽRŠ²d\\\Å\Ú÷%/\ÛòS„\è«X=RËŠ¸¶lj‹¡)o l’ÿ*\Ï)BZJT\ÐZòœ­<G«\Êÿ‘pe±‚NkD/\îTˆ\êùoGCùü”0¼‘YµÕ™ca³T\Â\Ùç«ŒÛ˜¨Ù„	\ÞHKW[0\0\Ö\\Š*—	Ÿ?-\Å\ã`£õr2AóI.\É&™nlŒ\'Hk\Å´”Gc\Ù04”C=­¥\0f€W\éh7\åc\Î\nf”É…\ê\àS\Ã^5ŽJ7\Îr\æ³P\ÆX±š\ÒÁJdu\åC\ÑX1\Í\Ì\çVV¾ö£\á\ËWB\ËWF/‡•´³j¬U\ÑHKX]>ZµœK\ëk\ËAo†\'½…\î\Êee] ^\ËE%\Ë^hZ,Å¨\íEki(³7\Z\ãÁmÁ*Šg\n_UªÄ·öƒÚ¤º¬‡À‘I‹–\ÃZ¬”\â\êy-\Ýxœ,¥Ê„\ì%\'óÄQJM\'b”µc‚\nžøO5¼Œ`\ÍJw†8‹\è\Ê…–Ö‘?ö<f†\çœ|&X™w‚\Ä»»C\æ7\ÝN*\Å¢\Ø$ôcb\Ñ®8¤¼ˆÅ£eC\Ú@8“ûÁNÁJ<eB>›H’†Â•1\ÕEƒq¡jš«X>$†”2“ÀðG®E¼°\n;x\0\êz|\r³°Øš\Ëòõ\ÆxðzS?ù¿q>Œ	“\È\Ä*db¦ö¦\à(\Æ\á\Ã\á(ˆ\Ö\"Æ€y`Ë§(Š™Ð¥k)­d\Ñmp\å¼ˆrS)0q;‹Äšil\Égb\nym\äR¸\â\Ê1±=ˆ[\ã‰C¯B\ÑÁ§ŒT¦§_„ù/e@†›\\Š\å\"¬PóFˆ`‰j¼)b…Z\Â<––T	O*ùL«\é,\ÈÊ¶N\ÓZÖ«‘\åN5\âÉ¹G£¥tªia›{\Þ‡4\ê\åSè¥“•\Ðm\Ù4igË£¡<_oŒ¯·~[ù\à:.úñŒ™\ÒAŸ\',\ép|\í;,Î†ò}0l/¶¹«\Ñ;§\Ò\Ï\ï`71G\Ð{\Ë\Z\r[(=0CY¿¶‡†\ïüŠZº\r¶ð^Fšn¶ƒ>\ØúÝª\ÜTCžº\îUpþ\à,\æ\æ²ÿI1ü¤4g²ÖˆŒ³9}\èc\Ó/½…\âs÷ñx¸\Øô,H3µþ¾ƒ>o‡óû1veÙ­ƒ\æ„^8Y6‰\ÅÝ¬O‚ñ\à\'Áf©\ÒG¡9¿\'@7ôL\Ù šñ1f\ê}Eú\rw\ÐÁ\çŒ½\ÇIC`O­ Q\nTUCß‰\è\ËboÖ‚¿ú\Å\Ì\Õ@\Ä\Ø3‡¡±@:×‡ ±r%\ÃQ\']\Þ\îg\ÛHˆ‹\èë ƒ\Ï…#Q3„^]\Ëv\åX50Ä‘\ÔzO\Æº§õó–S]øñ\à5óÀ:þ›ë¨¯ªQ,\çRz¢¥…%}/Ÿsˆ\ÒnHŸg\ì þ÷:ø¼Q:õ±%°Ÿ‚¦\é\îš\ÈP‹V2ñb\Þ@œÉ¥‡w\ç\ÊÁ k\Äxðš˜¶§F\ÂÚ—&ZúUòiñJn…5cšz\ß[	o Ù«3\Ü[€\"\ì\àsNKi -aŠô1OAƒ¡\ìs+lE·r{1ƒq2k(NMCYxi\ä\Z1¼*sh;•¡¶¼ñ\Â;\è\àKCZE™g)sua\Ò\ËU0¼\ZŽ\îý\Ñ:ò+\î,¦ë ƒ/=h%£û¡aò·\Ðbùd5Æƒ>	\ZW\Þ(œË¥*ƒgM\ÖA_\Zs†õý:\êJ\ÊT¹.(ƒn|`<x%¬9üañ{Œ„­x¬‰üAC³n|Yh.º­Ò¶1jNcE™2™r1kÈ„ñ ‰úoÿ\Zˆ\êG)-`\å\Ô\É\ä\ÚÌŽ~¾¾\ä¤N‚«b2l\Ù2c8š+S„\åWKÙ˜µ\äñ 7M-bizË¨ô\Þ#Q]Ü‡?4-}½º :\è\à\ËF\Úxµ.zŒ³ža\Éhœ\ï\É\ãÑ£a›:—ò1kJ\Çxð22Æ£ZúH²F¢¾\ÏhØ‹‡Á&³Ù«&š/¬ƒ¾$¸\Ä0\åAmz…2¶Šqaò@œ\È×‘\×\ÖPc<x	“þ\r\'ð„²\ÈR•Ì„†s¹\á<…µÀP\ã…u\ÐÁ—…³•=i‡ñ}P“MA–MFS¯ñp¤÷’ú\á\Ñ\ßL£Œº\Ò0\Ô\ÑgA\è3!:fCt\ÐÁ5 +\Zt¥c<\è¡zô÷:\ØA\í¡\ì´Vú^»\ÆxP1cšƒ\ZEhü±:\è\à2=&¡\ÚRAI4Ö†ñ \"‡ñ_ô0Š¯c>`|b2‡£±t<\Z’\ÆSV\ãAE÷~@ú³\0;\æv\ÐÁµ‘9õe•Á>”•Ag\Äx°¾ôVÔ§òK™})>/÷SŸŽ$\èë ƒ.¥pP:F\rli.ý\Z\åu¹\Þ.; 8»ôÄ©‚^@A\ïKO¨‹¯c*R\\k\é@\ÕX/ú¡\æ%/;€!ÿôû\' «/l¥\î…z/\â-ÀvÐoz@c%­¡,R\\2u·R_^š»\ä\"€\ÊM\à—zŒto´a:qtpMÈ–-U\ã\Ü+|\Ç5¨”2»Ts—¼Q„R\r2(¡V\Æ6¸ƒ:¸F\n†£¥d¬ebú(¸\"{Pf—j\î’7\rÿüµ·›tK (Zd\éyÓ‰;è ƒkƒ\á›\ì±q¶Œ1a\é u\0ª¿ñ\Ê\í\n\"lL\âÇªÝd›1\Ù<\Å\Ø\ì\ÚA\\jcÚ±8Õƒ‚\ì=YYÆš¸~”\ÛD\è\ê\Ü¨\ï¡\ìXSBj:qtpmd\Êl“P\×k\\½©§2†y–\"\Ê\Í$Â¹+\0YÐ´L:\á‡Á¥vÀe0i2±t\ÐÁ5\á\È\ân”©˜W9µU9Î*J\Î B\×øª½\á\Ô¹9\Ã`\ÓY8\Åx\â:\è\àÚÝe\æ=rh©«ŠÁ°\å\Ó:Nþ%e\ç%Â†¨¡¨\íK\ë_dCó \ÛøÅŽI»t\Ð¬ec\ÐR:H¤kš;\Í\åý\Ñ\Ð_töñ~E\è\0›\ìŸ3†_ž ös·•x-\Þ\ÛÁe8KÆ´‹‹ ®„\á7ý\ÂtN?0]³Ž\é;—`º¦/Ž*jJºü\ä9kj‹‡£µŒÆ­\ë \ËE\èˆ[¿˜Ë„+\ì\á5c*x\×\ÓoúƒéœŸ&¦kú\á¬`\ZH\\X\Éç¬‘jk)E\Øý\ã!l‹0v¬8\æS±y\ã\à,{)¿l8q#û\è·\Ó9?O˜®Y\Çô>\ÆQ\Î\ç,Æ€b\àrF¢¡h(u5ñ¶„¿ŸW\â š\Éá¬½(\Âl\"\'½ÀMÍ®t\ÐÁ5\á(¥”Mc¤\×!w8šŠ‡¸Eóùö;•\Ý\"ü\ê/\àJ\Ì\0’ŠU\Ãk¨\ÚBš\ÒRŠ\Òp\â:\è\àÚ°Éœ[\ÙÅ©„\äCk\Ñ`¸Šù:e_ÿ¾&\Â\Ò†+{šKÁ)k\ë\'óC²ª°,\í\íe^;ðBFD´Ï’!W\Âø›~`:§?˜®Y\Çô\Ó5}™°Ñ˜¡HÒZ*k¡•i\Ã\à*£[zQ„\áü@þP4•ô‡½—4§\Ê{ŠP\æ@NÜ†¡`úƒ©\à\ê\ÓL\çô\Ó5ë˜¾£cº¦/­\Ê\nRK…\Ã\á,Gˆaß»\ÂÝön\Ên2…n\Úd{\àx*UD(&\Ôp\â4d_\Æv`*¸:\Æ\ßô\Ó9ýÁt\Í:¦\ïè˜®\éË„¡,\nLWTö4t\ÈÌ¤!J[.Kþ\Ç\"<™8\Öl-c lUL@º§j“Ã‰¿L\ØnŠ\'¡µ+¥\Æ\ÌSþ¶\ïßŽWù[\Ôü\äwÀý	­\ßû-NÿËaÿþÿ÷»Ÿ\Ïw ù_~|ŸŸù\îo`ÿ·ŸÁú¯ÿü\Ç\ÏaûÿE\Ëwùú\'¿A\Ówÿ€ÆŸþ­yü½lV€\Ý{Áõ¿B\Ã÷ÿü\Ëß€ÿœÿþG4ñ71\á{@x¹\Ú\ä¬L\íñu^\ã\Ô\Éb\\\å\Ì\è~S\Ð }R]\á\äŸ\îCõ\ï\0¾\Ékú\îÝ°ý\ã8õ“»\Ðø\Í«¢\Ñó6 S\\$\Ù\è²/\Îý\ïOq\â¿„óÛ·\ÃõO¼\æoþ®û\r\\\ßû)ðŸ¿\à=ýø\ÑÿÁö\í\Ãõm^ûþ\nø\Öÿ¢ú;¼‡oÿ-ÿsZ~v7\Î”	\á“x/\ã\à*bz\ÉLi!¬\ÃXˆ\Ö@¬@™X†‘hIÿL•Ë£®\è’JK²CV-Tu•=\ÖD÷@n%\Â3IƒaË‘?’\ÌA‹°°C„ ­¹\ÃP]4€¯™k¶\0gkg\Ðt­-\'\àÀ\Ô9Ï \Éu.\Ô1I\ë`E\rZ\ÐÀ÷\Î6\ìü\×»£p\Ù\á²6-\ê³-\ç\ßÅ““¾Ž\ËG\âl¯‰À‰Cü<\Ï\Ï\Ï7»\Îð¹\Ö\æS8>s:^N+µ\ç04V\Ð[IfaNŒúTffó.8Zs˜\é)<\Çñ÷š:4\á,¯®‘ç³¢\ÞyGV\Ì\Å™¨.g\É8­D\r\ë­g\0¯\Ý\Ö\Ê\ëk…\ÃÕ€z^›|¯¥µM5°:šxýÍ°Ù›Ôµ)šª\æz •\ß=}\ïý\ß\íø…­%ojd—¢<–£Š±˜‚/•26ö¼¡\n\È0ISš‘Rt—ˆPõ@x‰ðB\ÒP8e\Û3a\Ö ´R„`Á\ë!ÉŸ¤1H­\îJŠºGF³£•¨¦ü\Ð\âdY$v\Ò\Â\ÂIY[T¡uI!­%vwy¥\naop±Àòµ”c–]8y°¹*F\á±\à\"|(±\åeÓŒ\Ó\ÎF~\Ì\Æ\×vb\ÃKófaI·H¼“[†–>\ÌÈ¼¯Ò²Œ€“ß…\ÊfÁ\Î‹³Ñ´Œn+¿W\ç¬\áuò7ø¿ƒGÞš~?¶X‚ñVd-\é­8—7Z\×Ã‡y\í\î\Ïñ\n)<\êxŸ\Ô ß:•\×r/\Z\Í<«ÿµòúœ¬˜öÿ\ì7\ØRˆ\Æ,\nl\Ð\×\èv†3k \ì,W(æ½•Œ#g¬9ƒ\ÕßŒiþE\ÂK„ªoUD˜3¶$z\Ö\'3\Ód¤Œˆ	\ÔR\É/\ÊT&©ù\rÍ®_&\Z\âû¢¶Rjr¦M\Ä\Ô<ö$j›Xú¨?Al™hJÊ¤”QÑ–“r+\ÇÄŠ9x¤©f‘=\æº@\íÙ”@\Ä:ª/PÀ\Æ]–H,\r- `«y®¶ß¨!ç©Œ>˜µ\Ó-Ý±=8o•0Ž/¹\rµU#Q×™œGKË‚]8gCy½´¸®\n§ŽW\×\Äg\Zo—ÍŠWfN\Ã\\K6Ç§\ã~¼\ÇAß¤û\Ê\n÷\Èaõs\"@õ\\<H% rn\ä\Õó¼—\ë?\Ë#\Õ|V7/Zm\ä?N¶þÏ¯ð \ï\ãõ\Ð2•ë©šGþ\Ø3Å³\â\ïI\Å\è¤uüR\ÌWUÖže§d\ï—:“\î	©Œr#&¹7Œ±`þB´¦ˆ\å£:\å\Ãtšs¨¾|Q³v\Â/#tó\Z\èþAjîhy\ê\Ø\Û\n5¥„§\n,_\Ë1[\ÝN±zò÷s|!n§]>(nj+ÿ£K\Ç\Â+8~\×Jó3m\Äü®S\îH‡\Ó^\Ã\"\Î3órþZŠB,\ïk7\âÎ®\á˜Ù©6\Åe\àHTo¸h]ý\'£>¹þ\Ö\â1¨‹a\å\Ù\ê¸Tç‰—RM+ýÌ‚Yx¨S(¦w\nÂ‚n\Ñ8š\Ð\è6­ï¾‚öjþ®S9\Ôb}ElÊ„»xrSVž­•÷\â\âu;[\Ôõ‹\Å\Í^\à\ë:~g\Ý]wá·\ã°2(k’rpž.²UFˆTNv[\0)”\Ê\"Žd¡¤0MiþE\â\âýŽR^‹<‹7 ÷ödº£‹V\Ã\Òò·ip¥ð`>\Ý©\í†¹E(ý\â\Z\é¦õ\ËHþ84\Ê\Ú|º©\ãÃ\Ð*Õ³¨\ÒL°P‹ES…³Q\n©“…\×-1pnK\âÖ£X™F\nTDg—\ã4n\"Xù½ú\Ø9øVÌ·Daž%‚\ç³Å¿ñO\çøô‘³\Çù\æ¹\Õ+ñ—n\á˜†¹q\É\Øa\É`\\H\ËÒƒn_.­J±hbFgŒ§\Ä/úá•ªk¡Ž\\\'Þ¿\0S±6 ë»¦`C§4u\ë{ƒ\ç\ïŠZ\ëyÍ¼ºzÆüjcÿ•Š¦†¯y¢K·Ù”ƒ\â”\Òa¦\ßýû\Ûñ@·T,²\Äb^X‹(Àq‰|]	Ñ‘%¡]S\éƒ.gy3¥ù‰\"•O\ÉØ¶xZ“\Éò¹#)Bz/Îƒ¥\îŽ{€4,`m%Ê¥\Él¨”‘2üp‡\é>Ýª\n‹£6Ý‡“ÿñc<õ\ãÿ\Ã\Âÿ\Ûü#¬ý\á±\ïÿ‹‡¿ýlø\ß_Á\ÕPC²5vb\Öv–T–\ëSO¼Šÿ};þ¯Û±û»ÿ‡ÿùlü¯Ÿb\Ã÷~ˆe?ü–¥cu@¦±P\×)\ËR+*¥Õ¡\Ù!v·³(Ô…q¸?9\róº¤b\ç\"’†¹VUËŽ\ÃÙ~p´\ÖÀ)\"a\\)•€\\C£­\ç\Ï\Ä\ÔÀX\Üû£\ÓðQ¡Xk‰Á±šw\è±RPò¥&~¸•¿i·\ã\Äö\ÝXñ£Ÿa\ë‰Gü{\ìý\Î\Ïq\à¿~‹\ßÿvÿø·\Øÿ£ÿ\Æs?ù?\ìúÞ°\ë?Æªò\á\Ø`IÁV²&1;\Åâ‘¸Rœ å³•Mtw[ˆW!52”\Ë;½¿hˆEt¡;¤®$~÷ˆð\Ï‡¥\æ·a\r\Ïå·‰°¨M„¢\Þ\\\íd_RlÅ“T±öbÁ¡ûà¬¼¯òù\ï\ÑX\Î\Ø\êo#°¸k\ã ü28‰\ÖCZDCY”­b[\Ï\âØœ\ÙøS@$cº \Æd°¸{ ft\í„%–x\Ü…Ù–P\ÌŒÂŸ\ïI\Ëj“˜j¢žFœX—«‡g\Í\ÃK\æt\Ç_£øœ‰_„¦aFb>\êÅª¤‰\'ÁÑ©¿X­„dg\Ú$2¤®\äŸW-\ÇZÂ™]\â0»{\n–¤c¥¥\Z\Î|$—«¡ˆ–6‘Ö—–ø¯¿\Æ]ñ\á¸;°–\Å\ÆcA`(\æ„\à\Þ\Ãô\à`,\éJ×“÷¯ÿ¯qx¨k\"E\Èó3.üUl4¦òY„øxd!j$\Ü\éq$\ÓV\â\Å/\ÃBb\Þ\"”Žû6:R\Âù\ë;aÁ~†3t?eE(”LT­6?\Ü1EýSn„Â•êŠ‰j\ÉCi\Ø\Ò-³\Ãý-.³£Sh¥Y\Î\é\ÊI)fa®\ã?\î\Î	\ÞX¿šŠÁ´˜T,\rJÁŒ\ÌJ\Å\\Z¾…!\éx(\"™¢J¤°\Ó\àp\ÕRˆ´D<‡¸}êµ«\ï/Y†\ßS„+:\Ç`Ep$¦†`C÷\\º±1¸\')\ïöf%Z\Ì\Ø\ËÒ—nlú}i\îTn/_J÷ú’¹˜f¡x\"3°08B“0ƒÁù“oSV\åu\Ê?\Ê\Ût\ÚñÁ\ìñ{Vki\Ùöv\ÉÆš ,\ÌN\Ãú˜BŠ7÷G\ÅaYx6f\Ä\æ\ão±iX\ÃûK==6‹:\åbAt¦vÇŒ€\ìN+Ã‘ªÑ°öB\Èôd!T\rJ22«Œ–20\ìô8¤Ï³”î›¸Ø†<¹©\ry\é\è’Á?ùEøÿ‹³m\",¦5ôˆ\Ðð\å/#­…\î´q\Ê.¬L\Èx¿ž“p¶x(^O-Ç¦\Ð% ‡h\åfZh	ER’[´&M—ˆp¶%\ÚoÊ©Dp\Øð.\Ý\Ñ;)ôU–8¬¡ð–\Æ\Ó\ê\äR‰¸¯S8	\ÎÁñ ž!/\ÝP4Šm»\\„Sý\á[\Ë\ÂÿFG*K· {f\Åe\à\Î8~\'5s#)º€Tl¦\å›Of§ð\Ú\"±6,sc²\ßfªcó\Â30?<+\Ã\Óðxr	\ÎH‡})\ÓW„(1\Ïížº\ne°¶>DñÊ¤%Õ\'7W!\Ãþ\í¿P]\î\ÞÅ¬¡ò\Ü}Jˆ#f`õXB\é\ïJ·M\å$¸zLDS\Å¼•2›b²(À@\î(J°Ud\'ºº\í¡„u-N+š\ê/\àõ50kÀ$¬.9¹}1“q\ê}½Faf\Å0ü®¬\Ï+\Çòò!¨ú_8\å¤CYg¶„þˆðµ\ßÿ÷*+\Í\ëÀ´nqøS\ç0\Ü\Ù5³„\ã\ÏAñø;+Ÿ?¥cZr>_[°1(\ëhõvDõÂœ€dZ\Æ,,Ž\È\Ä\Ü\î±XE«øL‚[ˆ¶J±xcT?¢5CC0}\é²J?¢#ŸB­”Éœ/7\rW¡ó_D~ýÛ¨“y„’\0\Ò\"š?Î¶>\r\Õe\áijý’¢fFË²Ò¬,\ÞB®¤ÿ&«\ÑUŽ‡³h\n\Þ\É\éõ´\02F<\ÇxNÆº YŠ³Œ’iŸ¥QF\Î ÿIk,ªk¨J\\õ<ÒŠz-žCZ(ù«\Î:ª‡1\è¹F¼Á\ï7´ˆ_\ìTí—ŸT„¼ŸÆ†#@\Ó9\à\Äû°\×Ac\Ó15R¨¹F:ø\ÏS\ìü\Í\ã\á\Â\Î-˜ˆ¥Ñ˜NÁ-\â½,	\Ï\Ä<±†Œ—òž\Äc\r-\ê‰\ÅøP\Ê]\Ï)\Ê\0X\Ó±¢£ð¤9_•;þM\Í\â¹<On*¤\ÇAÐŽ\é\Û\rºnûŠp\â7\ÐX&\ä¤GŸp”Ž¢o\ÎQ\Êýø\Ë_F$-”\ë$¢“’7\Ü=¤OFIa)ž{¯‰x+¦ˆ.bN´œ‚„Q¥™¢i·%´6«¡nÒ²)\ÇD\Ò\åp\ÌÕ‚£\"4ù!\éÃ³·À\ÞÚ€s-„Í‰³r\r¢ÁvŠ°\ÞÎ¸¶­…WÁË’Ïˆ£+\Ï\ÇX\í4ª!n\r8þÂ£øM÷ \Ì\î†¼Ÿu	UŒ³° ˜q\"\ïwYd&–\Ò-]˜€\Õ!©\ØW€Z¦©½|’ZP\ÍÊ8PÊ¢p.–4¾<On*®\"BLüE8ü\Ð*…L†¨\å¹]/g\ÙX5^RV\Ö\Í\è—IAù\ï\Ò\ÊU<®\n‘¨†š,&lŸIp2®y-²\ê[e,I[	u:Yf\Û\'\ÂG+\ÏÀó0&„•E\ß#‰÷¨›5“ŽyQ_\Ê¿€¦JOF\Êð`{\ÜQ9§ü4ÿ—º\'þ¯\ëy\îzQ·üQ†\îñ³u\Ï<\Û\é–/¢»zO@Š\ÌÆ‚ $¬ˆ\Ê\ÂÊ˜Z\Åt\Å\Ê\èl,\æ=\Ï`\\ûtl)N•1­¥‘ñvk\Ú@\Ø2û3™¾²$„!On*®ŽþX\\n…]šŒ%\Öa\Ì\ã`\Í\ä\æHpüŒ\ÛkgI›\ã“))T¼¬\Zk˜ˆ2$K–¼hH£ [eà¶» ;Z[Xf\Û\'Bõ,È“\ÐAšù‡f I]´RV§\rTÇ¹¦Fe‰m+¿\ëVf»D\È\ï\ÙZ(¸&\áÃ‡\\‡¼gÑ¸•/jy@\Z¢<Žé¢°‹÷6G5\Î\äb>E(¢[›«¬\âÒ°L¬ˆAfav÷$,g\ÌøxR¥\êGl-+<G&\ã\Ã|z_„~Ä«‰p\è?À\â\è3Ù½tX½ÜEØª¦2uˆ²p+…(\"TÓ…ª&\Â^:FµšZÅ½\è1^\r“\æv5\è¡\á‚*ÀRP\í\ÖK»(>‘¥\ãN\n;ç¶–œ#5ü\ãy\å&:kû»|\Å\Ñ\"‘¢¼pún·iQ\å\è\ìò¼ŒLeˆ\ÐÕ–\×ÒŸ(\î±\êW|úI\ÌLÄ£¼Ÿ\åA	X‘‡¥XšŠ\åa\éX‡•\á9X˜Š\Å\ã\Ú\Ä2\Ìb|¸Œb|\"ªH\rq“. ˆ«–\Íôü\"ô#^E„Ž·\Ò•þ@OŸ \áø\Æ.-È…\ÃieD\r\ÝW{µ*ð¢	]5ñežÁ\ÛVaž%3ch\ÄR„f`^`.\ã£,\É\Ä\ì\ÈTÌ§UXeI§ld*¿(k™X·\êžÇ¡oÿ\ç\î¾/O¿/ý\áv<÷Ÿð\Ô/g\ïº/ÿ\åvº\ï<ñ\ß?f¼\Ø\ìŽyJ„\âNò\Â\ÞX<\Ó-!*>[’…%ÁI˜KV§iI\åºu¾ú\Ân<ûx\æö\ßbÿ\Ì\ÛñÌ½¿\Ç\ë÷ÞŽ\Ç\îú^ùû]xûžp`úýxò¡ûñ\Ò÷~‚\Ù9˜_„\éðhx9–ñ>}±24»%«;#~P:N\ZÕ¡1­â‘±LÊ¶\â}(\ë!\ãPË¥rü”\ÕÞ·tˆ°½\\›mWá¬ˆ³N5‚¬–gyu\ÙJ<’\ÄX+¿Š\Ã	ªüAK\ì–Aq\ÅaAD\ZV„fN¹g`´S„oÿõ¬,À,\Æow[\"0\Ç‰Õh\Å;\'bA·tlµ$ò|Ñ˜\Ú)[ó°–\çZ•‡\ÙQrþ\ËE\ç\Í*^\ÃÒ t’†\ÍQ9x.­\'ó\Ã&­ó\Úòžô––T]÷H”/@F¯\É\"l/7Z„\ÒÀ\"œ\ÂG\Ë\Öb!…¶\ÌŠ\é!qj´\ÌrôU]³°\"¢‹;ó¼±JU{F\r{k¯OSø‚ó±.$‹¢²°®K*6vMÇ’ˆ\\¬Œ-Áª„,LOHÁƒ\á±\ØD7s—%›-I\Ø–ƒ-YtC3}²*(«C³±*<kBÓ°…<[ˆ#Yý\Ð(1a)tKG\Â.s%¥ñ\È pG\Î0·µ4\ä\ÉME\ÏI\"B¾<M©^Í©ø\Æ&ú\áJÆ„—ˆ°±\Ò\ß\×hk\Åó—ó\ïñ\Ø\Ò=ž1]\Zv\æ\ãþ\Ðx\ÌeažŸRy±9˜\Z—Œ¿tÂ‰\æcnñµS„¯-‰\Û)úÕ´lKS²°14«»\Çac\Û\Ùñ™¬°4$\Z›’²\éN\æbs\ã¿ðdLK\Å}ÉŒ\r½Dçšò&\"\äù+/\íMÁ)x*±o\å\0úÞªÊ¤=[Æš\Ò:JûE‘X\Ç/@¢\Ðc|‡\ÛË¡\Ìd“\Ùy–¯ÀÒ€$¬\n‹\ÃÔ˜ºƒŒ¥ø~}·,\ÆVù\Ø\"­™X˜\Â/2Š¤˜\Ú+\Âs«\æcV—(¬\ë‹\Å\áQ\Ø‹±X“Œù¡qX™’‰EñiXœ”™¼®ùüÛ†\èLLŒÁ½QñXN+\íƒU¼waE(­+Å·$iÀô\Ù™]ñ…¨-\Z»,!_1Ž\é\Ì4!J­4’•‰ /Ï“›Š\Êq\îh{¹\á1aKœVšl\Í84g²„av@0þ\Zƒ¡©XG1m\Î\Ã\Ê\î™\ØÄ¸pc\ÂEéŽ¶œ£;*nŸŸÿ\ÑO±‚q\ßjK,c\Ï`,&\ËÈ‚®ñX\Ø)ž¯#i\rƒ±ˆq\é~f[Xöð|\Ð%}$º\Ð(<•aJ€\Ä\"\n+B3±,8OGe\ãT1\ÓvÀm\ÞxX3\Ã)£–\Êö¢«jÈ“›	iq\ïa;¹\á\"\äw|-}~\ï-^Šy]¢é¶…\ã¡Z\ÄHºŸ\Ñ\âšfaFp\Z–1žZŸŽitGm2#Q~¼\"<*!‹?9Õ’Q\rŽShj8\Îsº\ç\ß\Ë\\|;\ZˆÌ«?¼ý\"\æ§cÏ½¸K,VFdûdExŸ3±†–o\ãÌµ\á9Œ³(ÀZ\Å4º¾Qx:¹§K†ªm\Æ\ÔRŒUcÑ\'7\Ò\ê\Û!\Âvr£E(}Œ\Ò\å\ßÀßž¿–\'\n›Y0G06ì’Ž\éñt\ß\âò1‡VCú\Û1F¼\ß§Œé”‹h§\Ïò2”\Þ\Z€\ÓüC\ÛH8÷¹\å\Äò\Ú\ê„\Ã*+\ÐðC­\çñ£N!ØœRŽEqf\á\é\È0¶5\Ñ9\Ø›\ÑXšƒ•L“A$$‹‚#±–®í³±y¨‘5iT?\"\Ó9‡¢TC\Íùr³\à¡\á\\;¶¼¾°—À\éŠ0n<E\ÃX¬•ŸY:°¥@Ë„¦77®\Ç\ÜnIx88÷‡E\ã~\ÆPX\È6d\áöŒtl§g„\È4¥4œk:\ï\"F¶6¹!M®˜;ºaC`\"Ö‡§af¸t\îg\àŽ”<B+Ž¥bxŽdŠ\æ,.·¨Z[e\Å6¡oñ3·\íˆL\Ç\Ì\èHl\rOÀo\éÞž9þ*AF\ÙH4\ÉoÙœjaª—l4S+\"¬\Þ\ä·<¥º»[\n6²²™Ž\Õ´l>\Éò\Éú\È<3®K\Ãþ¤b|P<v\Ù\ëOV\È¢V0“þC\ÙeZ\Íý”†\Ù$†E*HCž}\Þ\èa{‘ÅŠd®a\nƒì‘´Œ\ÅZ¥ðòÁÄ£”ù/¯_‰¿3~\ÚÀ¸ijX\æ¤\æbKP\ÖQ0÷¤fac·d\Õa¿Ô’Ê‚\\GW’\Î^³[€\"b8kñú‚‡pWh¶\Ó}\Û–9Iª›\âÞ”ll±$`~0Ý¿\èL,\ìžÁo\Õ\ÑP\ÑTQÌŽYG”gr4¨\Ùù³y\rû:ga3ù\Î\î)¸‹\Ö§(«)×¬¬­¹¬¤sµ‡\Ô2*\à¬|A´rœ\Ãn\Þ\Óþ\àll!™„§s¹ðtÖ·¹¨ë£²°+>Ï§–\áxN÷\ä\ß\Â\îøP\'’â“‘Mªƒ_ò¦r\Ò\åùõ9¤C„\í¤y\ÐX5Yc\àJ\Ãb/³(j/“\ác.Z”7V/\Åý\Ýc\éN†czX,¥\äck`66Ñ’\ÍJ§\Ö)bÓ±2,‹ß£+)“r\ÕB¼\"c\îÖ³ø`Át<›ŠMŒ™¶…\æcUXŸ‹1?·[h}fEc^t*\î\äo þjkS$v4\Ûe\í6‘V#/Y‰û³°2 K£‹°–w\ZŒ>¢õ\ä5\Ë\èsQ\ÖyYw\ï­|\ãµˆTu“ZGD\îj9\Å{dŒZ€%\Ñù’Ix:fñyX\Ê4Š\Î\Ã\æ˜\\lŒ\Ì\àý¦©Æš£Y½\ÜûiJß¡\ì|Û¶š›¸©-Y²\ç+E¦!\Ï>oP„Zsi~s¦b\ZK\è•°\Î‡3{6\à\Ãm\ëñ\Ö\ÎMxg\ÛVœÛ¸gw\í\ÄË¿ù½š[·¾{2\æ\É8\ÑºŽ]v\ÊPKA¬¦G2¾J\Æ\é]«Ñ°{+j7oÆ™d\ë&T3¦|ñ¿Œ\é¡\ÉX\ÈB”‡eÁ…XÐ…\âK\ÎS\r!kr±!¹X\rŽnÚ½§wlÇ±\Ý[ð\îÎµxÿ&œÚ·\Ïÿò×¸\'4³s=œŠ\Ù	©øsd^^µ\0ooÛ€wvn\Ç[O>ŒS{ö\àý\çÁ{\îñÉ‰\'÷¡a\Ûv¼û\äNœÙ»Gv­Ã¢\0Æ§Œñ\Ä\ç©\ÆŸ06õ\ÅFV8›\"s)\Ä¬	KÁª\îq\Ø\Zœ‚\ç’Jð~Á\0Šo- -¡Ì‡•ùˆ\ÄY \Ë\í‹{zsô%vˆ°½\ÈÀ\íª)\ä i8\Þ,†}¹˜j	\Å_:E\áO\é/\Ë\ÄCiXHwt‹\åŠ\ËÂ¼„l>\ç\Ñ},dlFq¥cQW\é°\àþ\ìlü-2‘-÷„$\á¯A±¸/,J£K6Ä”`CB%–D•bEbŠ\ÍÀ\nŠ{}T–wNÀþæ‚Œ2ü¹{¼{\Æ`(\ág3±–\×1\Û„-\ê¶\à\ìg¡\Þ`\éŽU\É9ªX\Ì\ïþ]þn‰\Ã|þ–,]\èù\ì¹WK7\Ì‰\æ\ïfól\rHÂ–ˆt\åNú†÷\îƒMt»…õajâšdld|¸›–ñ‘„B4—G‹gI¡ô#R\"B«L6\å\Ù\çŒw´½\Äô¡4\nõ²X‘ˆ13\0/Z\ÒUA\ÜšƒÍŒi¤ \í¥û·=º\0‹Y8§\Çaf8-\"Ý«i](„ð\\õ7ù\ì\Ò\È4l¥ ö\Ò\âm\çq±r(qÍ¤ÿlu\ÏÁ\Ï\Éjib²1+X,h:vÅ•\ÒÒ¦ã±¸\nlfL¶¾s*t‹ÁÎˆ$¬\í\Í\Ò5\Z£°Œ\"_L\ÎOH\Ä\ê°8\Ü„¥ŒY\Ã0/4iy6…\Ä\Ó¥ù\ä©\Ø\\¼W€-¥\Õ6+Cb°-$\Û\éZ¯	Ç†È¼«\ã‰[7R€kCÒ”e|\é¶\è\\u|=½žXB×´ZoUµ\ì\ËL œanw´ü\æ\Ö\Ö!\Âö\Òc\Z*F\âD\Ñ\0´ô‘5z†\Ð=\Z‰w\ÒJ±\':«(¶¥,øód•´0º´v2µg!_/‹\ËÁÚ¤b% \Ý\Ò\Ô\Êù,h³»\Ä+Ámïž%c•\0·òý\Æº ´`si±–\Ð\Zl¢\Ë\'óóDÀbU¶ÐªÎ£u’þ\ÂõA©\ØGQ/H\ÄÂ¸5eI\ÆvJl5/3s3r±$(ó“ó±7¾‹\ÂS°=„B¦ø\æG%bS\×x\Ì\å5¯\r¢€}°˜×±–\ÂX\Ç{X–ŽUŒ\ÛV¥\çcMZ>F%©köMŽOd\ä\Ìºñ›\È6ŠvgL¡B*«uA<FÁ?—Xˆ\Óƒ\Ü\ÛPK‹¨L¶–¼‘VR\ïüú\Ò!\Âö\"\ËZW¦\ÕTQ„™a­Š\Ö~#\Ñ\Ðs\æDEaA$tx–§\æc&Å°6®ñŽ{¼¤¸›2)ž,¡\Ðˆ\Î\Æ\\[_ ú\'fc™jÄˆ\ÊÅŠ„Š0\Ëim(Ø¥tw\ÐBR\Ä¢\nXð³05Š–‘.®Œ\á\ÜSe)Uj‹ý]±/¨Kc)ü\Ø\"<\ZX\Ìø´ûBz`\r\ã\Ëí²°5œV6³Œ\Â\Ê\Ç\ê¬J¬,ôÉ’\È2V\Å\ØVE\Ë_„…ªOÎ³¹;­˜Qx:fñy\Ø)1a¶²~»x\ÂNþ\î\Öð|z¹\Êò\î‰J\Ç\Ûi•nkX5™q¢¬m\ên)5\æ\Ù\çŒ\Þ`Î³0Œ*\ÆÚ®\ÉX™©\âÀùA)˜\ß%Q­\á)\î¥/dv/dð³/L-Ž:k¯‚T¾0¹þ \Z]|°•\Þ\ÒrºF*3Æ¥T\àH\É¸$,(&\ã\Õ\Ô\'A\ÜS[¡ûY¶‘EÍ¤eÕgŸ6\"¼Á4—ŒÇ±¼¡x<¶Dh‘\åVÑ”Y\æ2™Uº$|ažŽIx:&\áé˜„§cžŽIXþ°…Bò…Ix:\"Ôô\Ä\ÍÞ›PŒ—\Ózª®qEi\Å5-ps\É\ÜD%\ÂKóê³¢C„7šâ‰ŒoÅ±‚a\ØMwS¦ê¬Ž\ÍÅšx\ÆL!iF\áé˜„§cžŽIx:\ëcúb}D¶OL.¤?leœ\ç‰}!B\ÜÁqG<aÅ¶‡\×ü\\LNg†K–&‘\Å	\Ú\æ#Šø.\ägEøqSi7€\Â	@\Ù$µ\Ê\á¼Ax8¶\0+“°±\á\Ò\ØL£ðtL\Â\Ó1	O\Ç\Ô÷¦\ã\Ý%\à\Äd¾x­=l£5ô\ÅNZ:_\ì`\\©\Zk\âƒ²R\Ù”Œ=¡x•qðñBw¿¡{M\Ý6T|÷|D÷Úº†<û”\é\á&¬\Ú\ZYj]g\Ï\É8V4û¥\á% K\Â\èš\Z„¥sù“K‘!]¾0	KGZ}±Q\n¶¶PH\íÁ$<\ÝQy¾‰ô4\Ö\Ð}¥\Üž]¬£e<˜\\†ºœh\Îm›|QˆnZ\ÕÚº†<û”\épGo8²r\Ø8dfx\ÉXµ|þ‰\â¡xŒqu—˜„§cžŽIx:¦8L\Ç\ä\"\êx7”xcrýagd¾OöDúDú^wEð³¼V\å~ZÄ‡\ã°—1\âNV2\ïgôÄ‰¬¾¨—\í\Ød\ã[qK£\Üû¯ó\ìÓ¥C„7»¬& \ä!¬\Ë\Ç+!\Ë„gEˆ,<¾XÃ‚\î\ãP0\r“°t¤¿\Í¦\Æ“°üÁ$<½\"4\ì‹)VB\Ü•ŒO(&E<žKqf\â\é\Ô\"¼ž^¡„Ø¢\\Sæ‹ŠÝ‹F™ò\ìÓ¦C„7˜¦\nŠ°œ5®L½‘L—ex¼µ|\êª\Æ…§cžŽIx:&\áé˜„§cžŽIXþ V\Ìû(0_\ì-\Æþ\Ø<W‚\'\âJñD<EWˆ±ùx8:{’rp0­döj³†’b	Ý3z^}VXP6 {d\Íu\ïŠã\í%`\Í\à«½nf\ÃûKŸ\0\ä06+›\0{\Õx4\âkÖŠe\ÃQ7\àV\Þ\ëp\ÔÇ¹¾¼wúT:-¥N\ÚP\ã9¯\'õe\ãñLx¾Z>B:\ï\×%aILŽ\êK\\\Zœ=–l‰+\ÆòÀ4<R„­R°*«s\Óó±($\Å\èbê¨¡pt\ÓV\Ë\ØK\Æp›\é®É \è\Í\éx4¢[Ä’\ÄW`[DuIT](kcñs[»¦`o\çt\ìï–…‡Có±_>›PŠ\í´6›s­\ËÇ’ x¬O°\ÞFk´#Œn`p.ö\å\ã^\ï\Ò\î)\ØClK¯\Â2~f}R	v\'U¨{y)°\Â±%>¯D”bcT66\Åf+­H\Ï\Å3YG\È»b\éz’\ÝL\ây<Ÿ\\Ž\'¢óñhX6^Œ/\Å\Éü¡°ËŒ‹Š),\çŒyr=±öœ›Œ\â\\9‘•ñ´È¢Æ²\ÏF–{qcKsv?\Ö\Î,¨²„kˆ\æü!8W5g{\rÃ‰!ü¢l\Ðqsd\àhœ\î\Ó6¶S‚r\ÕD\Í\×Ò©[B1¤\Ë|´I°Š\ÅJgm\É`¹º\Çp´\æ2‘ç¼žHVm\Îp¼[†\Í\Ý±ª{\"¶\Æ`ö\ÈB55I6!—\ên„x”…vy·$5\é`÷«½Ám‹•‚^HË™­:¶e«\ÄSÇ—cŸ%Ó±Š\Â\ßÇ˜*8w\ËÀv\nbcv	–\æbIf.%\Ê2‡²\ÈT¶„¦b/ý\ÅýFd	^\ÍÃ“ÁY8@\Ëz ±{hy6%\åbEL\Z^	.ÁK¢ªö§U`C@\n¶…fboF–Ä¥ó…\ØJ1¿\ZY†\Ç2+±›•\Ð>^\Ïr\Þ÷3\á<ot1žŠ)¹ˆ\ì]¡ó,+_¼B¡¾D¿U€\×ùþ£\Ä¨\Ïd0\ÏefCž\\O\Zi\Ðd»Y-®1½\ê\é;¤‚¯W.ˆðL¯±h\è9N\íG!VÐš![.\ÓBóBù75M\ä&¦¦d(š\Å\r¡u—M)eýÊŠ1¨\ï9\çúS”²Ü¿lôÒƒÖ¯ˆ¯Sú\Ã\Æ\Ä9ËŠ¨^Dj8\çõÄ•Gk\Ý\ãœ)\Zý\ÌòN\Ñj ò6ºS\ëÃ²ðTt!6D¤ck<cœ,eifw‹\Ã\\™¥võa_\Ò×¶!œ‚Š\ÊUcMe„‰S\Ã3°›VO~÷aZF7º9³X±\ßyÆ’Œm\á\é\ØÆ¿…¦Óº¥\Ñ*¦\àaŠ\ê€%Xb(°l¦\ßB\Ô3¯mgh\ÝDZ\Ú\ä\\,‹\â÷3ñ’%‡º\æ\âyº;)Ðµ12Ž5»C2°‰¿ñX—4\n¸{ñTHa\\÷,­\ç\ãqŒó4\Ä\ÝžL(Q<Mùâ™˜|<ŸX‚“\Ëð¿ÿ<\ïýmŠ÷BP.\ÍùrÝm\ç\é\í `8\ìYô6ef‡\ìT\\6J\íL\ìvGs\èŽe\Ó]\Ë\Z†\ê\nªVvM-™\è\ÞÒ¸h²*$73È£\å+c\'»¾2!‰=i\í˜©X\ï;o\ê·.ÀÀ\"\Í\ä±4&”¸·\Z\Ïy=A®Œì˜¨F\Ö|”3T\Õö›»¦\Ò=M\Âú®i\ÊjHWLsZM¬¥[º\'¡[ƒsðdT9L}o:»Y˜e¶[:´·\Æ\ä©ÁÐª9Ÿ–rS\\VE¥bmt]\Ð<\ìIW»\0/\îƒ¥\Ð\ZZ\Ê	•xz\è­x\ãG?\Ãû\ÓÀ»—\àõG\Ö\à\å§\Ö\ã\åG¶\ã\ÐÎx{\ÉB¼þ›?\à\é	_\ÇÞ´Jl·$`‡%/Ð~6¡J\Íu\\\ZžŒgKñ:]\ßG»$\à\Ñ\È4\ÕJüx\Z­`7º½¬v\Ä\æ*\×ô©`º\ÐüÎ“\áŠ§\"(\Î6žŽ,º\È´”¾xŽ\ÞÄ‹qex9©/P|\Ï\Ðj¿Vˆ\Ã	½P\Í2oÊ“\ë	Á\ßWí¿¨V—™%4™ý\ÑT\"\ål$,\rt\Ïjy\ÐY5u#\Û\Ö÷Ž3\â\Ë\Æ§?{\ëMM½¸š•_‡=“\î¶\ìþ*\Ë\"TŒF}\á0\\Z©{%\ì}nÃ™_\ãñ¢(ÿõñ#P<\Í)7þþ9· .m.\äŒÇ…²¯\à}Šò‘\Ðrlîœ‡m\Å\ØF«³‹Vd½%\r›\è¢n\Ë\ê…E)j¹A\éŒ7õ½\éÈ”¨´€\ã‰\è6Ð¢©e-(\Îý•X‘‚5\ßÆL¬ øVtIÁþ¡“ñ\ÖCSq\ê\ÅýhpÖ£E­>Óªpo#¯›\Ðh«Es“\rVÙ²M-aœ²\n@5jŽ¼‰_y¯ÿ\×Ï±02K-ax&¤\Ó-\\\Ê8‘V÷9ºÝ\Ç\ä\âYŠð\é\Ð¤8÷¥–\ãÍ¸^x©[vŒ›Œ\'™ž\n«P<\ÎJ¡g#}óLDž®¢E\ì¡8\È\×\ÏGT\â\å\Èx#ª·1O®\'È¹\ån\n\Ðû\á(bŸIa\æw7\nõ\ç\ßU?a\ßoðk\ã\Ä8–\ÓŽ¤¾pý8\ë\ÞZj\0\ÛMŽ£8u¯ýó·ñAv_\Ø{\Ñ\êK\r\Ä)ˆ“}&£\å‘mp4\êj\æF¸d\Õ0µ‘\Ãyó9¯7v\"»\ìºÚ–5C#Z]µhrV\ã_[\Õrg5hm>|ø*¦–Ubej	6¦Q”m­ŒWb-Ý½½‰eª¹]\ÉŒ\Íö%•«q¡º\Æcoh\æ‹K™\Òµ-\äÏœB“\ã,j[N¹—Øõ+d9}YCV\ìp\Ñ[\Û\Ëj\"W\'¯\ÉBÿ\Ð\Âwõü²¤¿÷ô\Æ!¼üÝŸas@>§u|)¤Œñg.-Ž\âIº\Þ\Ï\Ó\Ê\íL/Ã‹\Ñx/¨­;6ð·˜\'$}T\Z\Éö8n\\Ž>£\Z.ûy\Ø\ì\çx}|­®¶N³7ñMùq¹À|»Àÿ¬\Î\ãx\é¡ûðt¿1°–²\ì\å0JksG«{J£\ß\äCmoZ\nºb\çŠ&\ájQc—Å‚dÉ¼›—“5uX8|O­„Smo6^­\ØõAN?\ÔDPOd\Éz*\î2w„ß©#,Š\Æs^O\ZœM,\ß6Eƒ£\r´&R \å:d¹Yð	u¼0Ù“\Ð\Ê#\ç\Î\âŽ\ÎQŒ½\èª\Ò\"š„§#q\á>Šp3\ã¿MŒûOí±Ej\å\î\rIE\Ø7Ž9,\ì¶FV9\Íx·ù4¯…i\ÆGS³¬q\Ã:ò\'Q›\\d3ˆ@\ÏE\×ð:\ëøY¡J]6«[N´œ\ãýðƒ\Îœœ¹O¤Á;–¼”X€—\é&¿”DW‘.öº\ä<\\€g)Tœ{\çb:]÷¶mWB.Y.·™Ÿõ¤©\à¾\\ŸM\ç¼~\à,A6t­o\Æ\ë¿þ36\Ð\Í>C÷T­‹Ó¶	ªEmùœÙ›1R_œ\ëKfGMöd^(3 †—*µ\Ú\Í+\â?\rP3\Ø\ßN\ë\Æô>ô\Í\'æ…³+\Ý\ï\ÝO»»\ä\ËP½\ÔúR°$·Lç»Ž´¶8Xc·½—\Ò\"…W~_^“#m¿•™(\Å\n\çŽ\áWÁ1j\íò\àx£ðtv\Ä\ã\á\ä\n\ì\Ï\Ã\ÃÒŸ\Æ\Øhž%\éž\â§w\Ð6´òV­hü³jBIùy_È¢\ÄB‹ªH¤à¹“Qv‘:+\'‘û‘{\ã\Ã\édU\×@\ëd§·qþ(^~x¶Xºã‰€D¼”RŽƒAt¡ó*ñ\Ë\âcŒ)­5oªü¸ˆ\ç\ât<iw%\ä‚<V\\ð¿\Ö\ï·\É[ùyq\×\Þû fvMÁ\Ë]ra\Ë\Z[)õ¦D˜7-em\Í÷Å²6\ÇPþ±!Í¿¤\ß\Íþ´\Ô_\Î{œi‰Ã¬°dŒ)\ÇQ\Ó9\à\Ûhgô\ØS,4V¥9UwÚ˜[V§rx>ó-£CDÈ—v§\Îsð>\"ð`D$c\ÝL™\àº3¼\0{ù¼G„‡-q9\ØOº\á\Ù\äþxœ®\ßúˆd\ÕE°¬r8.œ=\á¶jŸñ\ãœõm¼ù£_Qt¼—„\\I,FµŒ|‘¥d\ãÒ›ü\áp±\â±;U\Þ=q\ç}jƒ5a‰Œ\íKq,o<\rÄ„ù_lJm\í\áC–X<=!¹x>±Nñ>/08\ÇSi,•q/OJö¿D([£­\r\ËVSz\ÔXJ\éc$Û¢³±)&\ÄV`-Ì¦\ÔR\ìèœ\'ÿõ»,Œ‹><­\î÷34ž¦\ëqGW­Ák]Kpˆ÷²:9	OY\Òa=úZÛ‡nÞ‡{‘dw9|þ\ïÓ˜w‘X…\å±\éx)º7\Z\Ê\Æ|ñE\è~¸Eø %÷FcU\×$¬\Î\Æc±=p$ª\n8xRö{ðˆE¾ÙªšH>ó\ÇUD(\0/\nNƒL°•yuûâŠ°/¶»¥U42h]\ÖÇ³`w\ËÄ¡ÿü=¬\çN³@\Ð£k\Ø\âú<\È\Ð\ÉK¡¿\ÒBw¶\îC<‘gJz©˜\×ùþ\ëmŸ¹yNúbnC\0¼>m6\æuŽ\ÅÒ€\ÌbH±§S+Í¼/%t1	XÝ–0w‡\Ä`>cÃ™]\â±,(\ÏFÀõ\ä\ã¼Ww\å\ÞDE\ÜQ»Šm>ó\Ç%\"´]&Â‡‚1\'$E\í\é \ë\Õ\ÈZ,{¢ó±?*W±\'%;\Å\âÐ¸\ïð\\§ñ\Þ\èw±K\Ô&\ïgû°5²J` iý!N\áü+{ñª%\Z-i¨9r\Èý¡›ø!»i\Ù\éŽJ\áz}\ê,,\ê\ZÁÑ˜.«\Òu\ÊR\ÝM_\Z®*¥¶x¾…w~`\"¦vW›¨lHBÝ£ûhX3­\Ü\íi,¨²MµûŸ\í\ã*\"œžŠ™¡)˜š¬Æ’\Ên·\ÛÃ³•\0—\îˆ\àX<’X\nœ>Ž\ZZ9‘´GÀ!›»|ö\"”¤®\æU³r8yò]\ÌHÄ’ô\\¼iIEõ¹÷\Û>tó>D„ª\Õ\áÂ«÷NS\Û\Ö\É\âT3#â±­{.–1¯¾1¡ˆ°d$\ævN\Â\Ñ\î\å§\'cvX&fu‰À\ÉGvª–;)\"B\ÙEIJþ\ç\âþ/\á\å\î\è\Ü\È\ÌOÃ¬Z\ÄÀ,¦e”5:w\Ñ==@‹(±Õ©Ý›icJ\ËŸ\Ô}\Ñ\â;¤\ï3~œ”$ø>VcJ°\Ì\Ò«-¡¸÷c;sXþzS?d[;÷\æ>.¼v\çT,dH$\"|(2›e»ó\Ì/¾U­OQ­\ä½\É`\Ó\Âek2\Ú\à\Ì\ËÂ½]CpôÑüK:oXD¨új\'†\Ïþq.ˆ\ÈÀ\\V*²”¢q>Q;\Ý\Ò\"\îd%sü»w\àdýquW\ê\Úò´¦M²AŒ\Ú\ç\â³}Ô¹.°r¨\ÃvK¦Z¢°%)\ë“\è¦\Ñ%}\ëðsmŸºy\"Be	˜\Ôo\Ü=M-Q)‹-?€õA¹j\âö^„\î{ ‡©d§…&`ýð9R€Yý% ÇžØ­,ƒ|XbB«²„Œ˜>û2zU\ÊbQó(Â¹\á)´ˆ¬XÂ“±Lö•NRë­¼ñ\á{À‰w\íxœq\Ò\ì\Øx\Â\'.H\ÉøŒNœÇ‚\Ä\ÞX`I\ÆZº\Ï\rÁ\â»a–ljó\ámŸºy[B\à­{§»£’Ô¾’\ëCóÕ¾ýdFu¯€l\'U:ŽŠ[p¤\Ç?³v²\â¿[o“}}\ädndD3_\É„Z§t \Ë\ê74¤ ·¢\ÑQC§˜%›_t\Ø\ÜÑ–\Ðbm…­\Õ\Êò%Ÿ6?$–kjjBµš’°]<·X§_«v>Ÿ¨ö?\ÆB(é»,‘X\Ó%I\í±€\ãþ\à8\Ü\ß)\'Ý¥K¾ \"”\Í4¯\Õ=,¿ ­\nTI\r¿\'i$Ù¥H~\Ûûz¼ñ¤É•P\×\ÐÊ«³6Ó›d\×x?\nŒf¡¥\ÅëšŠUÝ¢q·8\Ì\Î\Ã\â¸Re7v‰WOÇŠõjþ€\\mJZG2\ÍeK´\ãö444\à#¾–¡i6k\Z\ß~\'·oÃ»\æ\âõ©÷\âù»ÿˆ\×\î{\0nÙˆ\Ú\Ão©B\å4\ê\Æ%M5®”¿ÁgI«•?h—_lF“\ã<–\çUª\ÇWÇ°@\Æ\çcc`&6ZRð³®Ápœ|I}§=À\År\È\'\åxKb\Úm|’¡€\Ì\ãk\Èà³­¼~i&\çÉŽòš[ø\Â\Ù\â\Þ\ã\êLµlzwi~zC;\Ó|%#¢{`\Z\î’qÀ\É\Ø\"\Ó\ÊR\ÕÚ²dDC/T:®2Š±j2šÿ?Õ$\ÍôOG÷\ÅnkR¸³­•—#½ \ïySÊ½™ð˜«ŽŸ=\rG?\Ï\ÐE\ØJ!\Ë{U\Å_\á\áakó)¾“T\ào\Èùi\r.þŽjb—\ßóA5ƒ cg°`\à8<˜ŒÅâ°¬k¢ZJ~\ã)oZy~DxR>+c$¤ðòY\íhC­­ŽÚ—\ëÖ®\Å-OœD†µ6\Ã\Ö|¶÷_\Ã_2‹± 2³ƒ\ÒX›&bZP\æ²Vœ9©\ØBK?½S^™3“¿q•O_#-x\êþ™\0\ÍM¸\àj\äð½X\Ìsu8=o\rž€{£²q_\çh\Üm\éŽ{»=d	Áß“³ðwº‘³a^\\þ\éN4ž;ª6=\Ê|“Š¼¹‘\é\"YÅ¬·H^VŸÃ²±_Áq˜\Æ\ÊqiDf…¥ªªö„`zb6œ/<lN8úŸeT,}4\0\Ò ¥L‡Û«<¤ô¡F®¿	µžò\Þ$ù*e\é\ã\àI|Q\Ë\Ï×²²B;|\Ý\Ñ\Øblì”†5\Ý%|ˆU+\êY3õe`\î ŠpP6\ç2‡\à…)\ß\Ä\Ò·`S¿[°¶\çx¬\é1k{MÀº\Þ\Õóz>o\î?«+F`\Å+­k*\Æa]?W9\Z\ËK`qa/V\Ü2ˆ–ÿk\"´9xN¾’7Wx8“566bAnO¬(\ÌsŽ\Å\ê²ñXY\â~^]>\Z+J†©\ßõ\Åô\á±ók\ßÂƒ)%˜–\åQ¹X\ÊŸ\Þ-‰¢Lm·Ÿ¾û>ðul\ï1	KMR×¹¹|–÷v§—\éštV—ú\æ\ÎòX\Òo,V\r™Œ™ýGb\ë¨\Ûð \ã\n½5¬kB\è\Ú0\\Vˆ\é]\éŽFg(7ô¯–0\Õ\"z\Õ\ïùlƒtWð!¢³[q\Þ!-%LƒS5xþÿ¦ö­øƒ\ÅB78\"d:U\Ö\Åa{B¶šo¸‚BZIk¼†bœ\Î\Ï\Ý…\íú)Z\\\ï+\Ñ55\Ðñw\\ô\Ë\êe @s\r¶\ßòÏŒ°$4+Â³X©d\âÁ\àD,`)£\î¡;ºf\n\Ë^ùŸ¬)\í“9\ÃF\á…Õ«\éyñ\ä&\é\é¨y b\0®¥#ø£xò+?Â–,\ëƒ\'\ã‘~·bOñ,/µ<¶¥j‚O\ÖWÁ¢\ÊaX;l\æ§\È`ù8\ìb%³6&sX¹EXù8y±­²¡†Lb\í!S&\âh\á`L¯\â—b\éŸG2¢1\ê\Ý-‘tk¯(\Ìë’Œy]0·s\ætJ\äûT,ìž†ùü\Ì,õ™\0\\8z’%\Ûq‰y\ÞhÕ\Ðöðˆðžcv\'º_\ÝRù;Œ{\èªÈ³´t\Î\æ\rÉ³/n·+({ñ\ÝO·gfH:\æ„\ç`VP\ã§\Âv‹ð\Õ?ßŽe\á¹XH\×pª´T²`-´Ä«“$}L×¤3¯“of1-—¤a9\Ï/{\Ñ/’}y\ß2\ÏOv\é]\Ò-F‰p~Pe`nTŠšøW\æZ¯¡õ“\é\Ü`mqgo[\n©Œ\Ý\Ï\Çw\'þ\ZŠ¿EFbN|\n–±\Ð,ŽMcZF\ão\Ý#ðwy\î‚\ÅÁñ\Ø\Z•…\í1t±¢Ò°€\Ç\ç2\Ý\çXº\â\èœõ<—Ñ†³\Ò4{\á¶¼\rK‚)\æ \Æ\çiXA«.û.Nc…\"ûöo‰\Èg\Ù	\Ç\ÝÝ£±¨KJ»¸¯KÞœN@D\'Yl—\Ümaƒ¶«=Zê°šXÀr7Æ¦.i\Ê]ž)s.»§c¹%\É\'²:\ÂRz,‹\ÂuW«Èº8²‘Îƒ\Ñ)n:rFÀž=-¥\ÃÐ’\ÛŽ¬¾€L6\Ì\èOANÀ¶\Ô<ž t\Ã¡Œ?\"\âU‡÷=Á1x0\"EµòL‹¤K™Œ\é\Ñ\é˜›\Î\çd<‰ûB‚q\ê}º¬…\\L\îÔ«¶7ºðô\×‡C\Å$wajDf\Ä0ó#\Óñ ýhy~ˆ…mjx¼zöÅ¶°÷dØ„b<\ÄD|¯gR4uK\Ã\ìÀ¬v‹pÿ¿\Ã\Ãq/]‹¿e\çbv,…À55† (\ÆxM:\Ó#}3“q\ëÔ€(\Ì‹\Ç\Êp­÷¢øBL£û67¡»\Ä\Ð\Âóž:3¾ˆ\ä}»+\Í\å=Š\Çqµ\ã3U$%\éE„L‰x\ê_xN.R«Yù<÷ò€TU!¬‰*\Ä\ê\ØR,\Ï\Ã*\ÈM!ùê·§…§\àø4,\Í(À\nr+\êòÀ2Y¼\Z\'[\Ä*\×\á\á\ïüHU$2wq^¬\ì‡‡¥tsgGe¨\Íl\æ°R_\ÄX7<›c\n1—eª=le\Z\Ö.Y®òS\æ0RPùz­\"¼€¸§²fK+t|\Æb±„\01\ÉX‘&ð$ûdE\×X,”uxX\Ù\'«	Ö²\Õ\Û\nŠrCF™»uTM\í)&C¿\Æxp_tÇ†Q•@Z?´ôƒ7“Ê°¥s/‹\éŠ\È	VFd+\Ëû…\Ý	Ý»\Å)JõjË­n\á,8þ\Î¼kw&K>º%ô¶~ž‡G„\Ó,\è\Íó²f“ýø¤†\ãó¢\ît]º1A\äw¯Œdö\\Z\å\å9˜‘‹y1E,\ÄÅ˜Ö…•­{{ExhÚŒ‰\Â\Ôõ,L\Ìq/%A«-#X\ä˜\éšt–^3#(ž\ÂNuXºœs¢³p_ \ãÚ•Ö²‹\Ót\ìÕ¼¿º‡cf§X¼ôý\ß\É\í\\õ\árJl\Ï{—¤\ç\r[\í64;jqhþ<\ÜÁû\ÚL7wm@6–v–…3°*¸\0«Ã‹±$0Ÿ\Ö \rº\åó\Úrq\\>¦\'`~ \ì0‡™]“0#!‡éŸ„?†$\â\Äò¥\ØùÓŸ0†,PËƒ\èAE%b-ƒ\ì±8?6\ë¢óUù™œ„¡,¬<\×*V:¾\n\Ö3\é$–7¨\ÒCE\é~rÁ\Ñòqy»\â\ÃU‹e\å\Ã\éu¸\×\çYM/cC\ÅE‹/\ro\r£\Ð}°2.«\ãix²m\Üj•\æ*\æ§,Ž¥D\ØXÁx0©j‹†À–2€±\áP4ô`-š;\n \ß+\ÛŸ\Í„§ãŠ°œb›)5/cŽ¹a™\n©¡gK\Ç7E\"…Bö×›\æ\Þ?ýÁ®Á8ööû,Ü¢6õ¿BÅ„ò‚U“.<“E$³\Èy\çebV\0\ÝI>Ï¡{93P\nbšO–DÐ•Ff\ØLfª¸¡Kc\n0½$\"¹\Ý\"|c\ÞTºd1t£hùX\Ø°ðIM?“‰,}‘¦kÒ™O·\Ì‡”°`SÐ²¶E† ñžCÉ¶i»»\å\Ðj0$ˆ\Îe…”ŽU<6#4Ó»\Ç\ã\ß=Àx\ì\ê¹Ku\ïby\Ã-\ÒzÈ¸\í\É?ü‰¡H4kó\\Ì !®üÔ€\åúŠ\å\ËnQ\\~Á¼I*Â–¨,\ï\Ä{f:/N)eÁ+c\ÌG‘D¦2^e…G—u!?ÿ`\çX¬Š–Š3\Õr\Ò\Íò\0\Óm\ÓK66\ÝÅ¼I\ÊSVu)\Ýú\å²\îŽV„eû\ä!K]±T	P‰P¬ŸÃª\Z‡T‹ð\Õ®F,+Eƒ\Çƒ•\Ëú’V~I9Ê^JAúbM|‘ªeÊ•,Ã«cs±61c2Ž–e--µU2‡p(0\ä\ë\ÝZ\Â	8^Fw´p<\ìeb_WÝ‚\Ú^“ñdz\å³?H—afH6D(1H+\Ý\ì@š\ë\à\Ì\ÍÁ¼\Ðt\Ì`°þ`\×0·\Åök\"”\ÚV\ZfœŒ®$B»\Ý\î¡%T‰mk\Ï9A\Ùa¶z!\ÎdÁ\áûBº!¦‡1^\ãgD©k\\J+>³k…\Õn¾<õZ\Â5õA\ÖÞ«xm2Xz…\"˜®Ig~°o–\àNºiO+¡Å¡EŠ\Ì\Ãýtyg° ,c¼.›ŽÎ‰\äo†\ç³v¥X\ã\éªwOÀ‹?¿[5_\í!-\ÜbT	\å\rË“8ð³_`%\ãþø’\È,Z&\ÆDÁ	\Ì\ßx,\"KBC’t%—Pô³b±œM<¤9,°2ws.­ã¢ˆ¬ŒI\Â\æ\Ø,,\áù¤y^\Ö\ÇYÁkMa.\âóZ\Ì\Õ\É\Å\Ø\Æt\ÛÀt”–\Ñû\ã\Ü[m/gyòÅŠ°\\Ÿ\Üm\éŒ7–.T½%J„’©N.XÏ¡Z\ÍÒ¿Ê£¹[+¦0-²°*¡\Ëi\íg1[—E/ ••	\ï\Ù«\è1l\n.ÄŽP©¨ŠX2hE\×2—uŽr‹P&úD\ÖG”µH\Ë\Ç\ÃV2\Z‡+±Š\"œÚ•˜þö´\Ît«¢|òg1Q$\îšG3;Dš­-8{ø\ØEŠ*\"¼J)bõ\ÔCÞŠ\ã\îþšj\êð E2—qŽ\nlY\Ó\Ïc\"\Ïi\êÅš™¬‹ŽÉº\è<h	\Â\Ù\'e\ì(ÿK©ak-b!®þ8<\ã^º<\Ø\ÂZ[\â³-Á\éjG\Üùt•\Å÷_¦\â¨+#q–/\Ö¨Ž\ì%twZu¦¯Œ’™Ù¿\Ç\Êey—l\ÆV\Ò\Ð§2vytï‰•ß¯`ÁS\Å\Îç£…ÿ9Z[`o”¾,\à,qØ›Ñºm\'n\ïEKM!&cY<\Ó?\"M5NH\å0/’…‘…jÃƒùÁŒ•h1ç±²˜\ÅB&\ãY%[L7li\ÝX,e\Zù@ZN\ÛÃ’NAxu\É,\Þ3W²•^™§Ò¹z\êða³cmÏ±,óqt\'e©\É¬£¸D±’\à=\ê5›ðÞ \Ç™ýrU:sùC€2¾¯šˆ³…#ðTb©Š\ÑDˆ³™kÍ ¥z {2¦‰Õ¢\çR„SY}\ÑE¸Îø]\ç0,Œ\È\Â]\Ñ)ª\Ñh]{¤1&³U£Ã•+\æ‹\ÅRh]–±\ËõÎ£‹»„±\É\ÅB\Ì8mk\\±R‹\éö\É\ÂMs\è?÷_RT\"+\ßõ‰\ÑY\"¥ÿŒC¢%\Þÿ\Ë/\áï¥½qo—`\Ì\î‰U\â°.–>’.0c\ÐEÁ™,\à)XNE\Ý,Zi)œ\ë®£5[Cq®\äu\è‚3ažŽIXþð…¡¬\Ì\íÊ‚¹e\ã\á\è1	§KG)!®dœ ± \ÄS’0•ñ‰\Ä³C\è6Fbz§€/¼\ÞÿWº\Ì1ªc¨tU¬¦»µD\â€\î™LŸÌ Uñ\Åô8,‰\ãýJl\Åxd!‘†\r\Ù\ìeqWZ(ŠpND†\ÚjmN·(Ì 3~\\;ü+LÆ«w„\Õ3\æQ\"T±’ôgK‹§­µ\ï\Å>Z\áu™xˆ\î×QIø{·5`XiV+hý\Ä]\Íøl%C’U\Ý\èju\Ï\Â\æ <º`%Fa\éÈ°-_˜„\å7‰).¨±¤2¦´`(l¹C\à”\å{NVñµør,`ü1‹¨Y	¬\ÙeÊŒ XL\ïŠY¿ð\"|nÖ¸·s8–&c]¶™tC\ÐKÁbVR\ëi)|¡†iù`\Ór­\ÛR\Æ\Ø2MIº\Ô>±˜G\Ïc­\Î\ìº¶ü\Û\ÆeS\Ã•\å| £‚7R£ZŸõh\ï‡t\\+Š\Ñ\äm\Ë=7¸$N¤*\rh9ü6üû÷p§%Z\r>\Þ[®\Z…$aC4ó!:•nf0^\äu,\É\ÃÒ¸B\Ì\Ëbº\Ä_&:oLÂ»ž|þE(\Ã\Ö\ÂÓ±KLXN«X<\nÖœÁ°Ë’ù\åT«isÁpµR²L™\Û-Q	q\ãe	»EÐ	þÂ‹ð\Ý9waN—p,f¶ >U‰f­\Å\ÂÀ¬\éCW1\É\'®‚lÄ¹.4+»%¸÷ˆ\ÊS5¼4\áO\í‡•´ˆ3¬¦k\'S´¦F%c\ÊÝ	À‰w.ŠðJBlqòŽE„V\æJƒÜ½¤»\Ãþl\ë9|Dk*C\Ð\ZŽ¾‹\íÿúÆ¿qXm‰À†.nñ‰¤°­\åuÉ´œ9Ý“T»À\ì¸<,Ìª0\nC\Ç\ÛrycúŽ?|\Ö\"ôÞªÎ›6^\î‚\ê4ftoS1(\Ãc|]B$F$\ç*G\ãù¤\n¬\è\Z\Ï©fzK\í¸P„ø%\á\ãú9ftŽf\áÅƒ±©¼i)Œ\ÇtÛ˜&óX`}1ÿ*ü¾kþ\Ô)Z¹û0}e¤’´(J!XžZ¨6Y™\Í`M@º\Â\ÌXÆ‹A£%µ+©g_BliiRŸ±¶´º\Çóò#rß² ´(ªñ¤--,ŒLZ\È\Öú“xe\Ý\n¬óU^\ÅF÷{cÃ¥\â¶vM\Çö\Ð|l,Pn–T\n&aè˜„w=ùü‹ðZbÂ¼!jGS—\ê3K!Ž\èš*d»¯òñ8_8JU\ç²ôQ\Í\rORMÙ³:…~\áEx´\é0Ž®Z‡«\Ö\ãõ\Ý[ph\ã:|°}+^ßºG7nÆ¡\Ý|ò\ÖNßœÚ³µ\ÛvÃ±föOþ&¦Egaq­_—H\Õ:/ŠiÁ¸l-Å°žn\ê\Üø¬g,)–y\ç¤IJ`>…È·rD¬Ÿg‰ú\ê\Z\Ô\Õ5¸\ïÿH¼¨>\'iÄ¢+7öF5K\æ\Âü\Øû\Í\àÎ˜lü\Æ\Ò3XQ\È\Ê\ß\Ûx]2\Æ\Ô$<5\è\Ã&aù\Ãg-B\ï­\ê.\ãZDˆò±°ÉœCŠ\Ñ)»É”w7\ÖÈŽ2e#aK\é\Ç\ÏL\Ä\Ù°7¥BY»Ebfwi˜	ùÂ‹P\Íx«a@E³!Ö£¡\É=^³Un‚.ž;«} 3B|pÁ3ƒ¤¡{þó§øSX2\Ç\ç©\ÑB\Û\ârUŸÕ²ø|¬¡5Z\Ãøpa|®Zct-­\è_ƒ\Ã.ŠðŠB\äM\Ê}6ò\æe©š4&\ÚbD¾S/å®¤ó¿Ž÷\Õ(a5ñ¼\çV›¬R^Ë„xgg\ÌÆ–!#q_\×`\Üo\é„\ÅA\áFaè˜„§cúŽ?|1Dx5\Ä:Š{J7\ÕU>¯\Çc]³\éÌ€»CCQ}ø¸ûn™\ï’ù’¿2”[\éŒC>Eh	\Ä\Ü\î\ÑXÌ˜gA`:\æ\Ð\Õ\r\ÊP+Œ\ÉZ1Þ¢òf!]3_<\ÄóŸ}ró‡?\Ê\ët‹/Z¥\ÉB.\ä³}\ÈHºÉ²SOý\àg˜kIt\Ï”&~™f(x:ûþ\í{Œ\re\Üf3Nó.U\Ô\×\Âôg,ø\ß7\Ùe\é^·\î\Ôo9˜ðm\éY \èj~D¾+3•ù®\ëÝ“xú3qw\ÉºÔ mN¦û\Í|‹JS.³(XÑ‰JÑ½^‘‰Uñê½Œ}\ÐŒmñ%ª%\Ø2\ì\Ë\Ë\é¼¶xŽûžx£)ƒ|!nöµ<\ÚD¸†\"\\áž‹º!$GuºoŽ`A/\Ä2Œ\Ñ²\Ñj»E([AKË©lÄž“\Ô·\Çéš¬O\Ä=–\Î\í\á4Z*E|\×_„Ý¿\Ð\"\\eI\Ç\Ém›q–¶¬Q\îK=\Z²\æf™š\íT\"”QBâ¨»U?Ø†LÈ½Ú£-\ë$\Ýj­hl¥\åkb:\ÏZqò\à6\ìžüULg>®¤›¼&¶\0+,	tWÏ¦ccB±ºN™U±2*W­>¶A\rõ¢%‘n0ß˜„§³\Ü\â¡<x]\×C„Cs?_\"´#ˆ»Õ´r<l•\ãp¢pžK)\ÅK·\ë\"\Ây1—ˆP:ŠE„‚{j‚3až\Î]„»e\ã\×taq\â#µ·ˆ,‘¡b<b””W¿A.>$L¸\ì ù!³\Ì\åsò\ÑV\Ýq‡{Ö¹¤£€ó2§g_<ˆ\åEC°\Úƒ\'c*±4$Õ½Ã‹¥Ý’\ÕóVZ¾%|-Û€oM)Wù&\áé˜„§s£D¸4\"C‰p\Ó\Ø&\áé´‰\Ð\íJ~bd|)\ÝQé¾\Ø\ÑV<\nŠ±Ž{ºsòupGi	)Bº)2_N3/Ò…‘­0£|±ð*\Ü\ì\"45v\è,I.b\Z†aƒlw\ì$\ÏbÇ¹šCwF¸\Ï/?¤=d	\nµ \ï5\Ü~[\Ö*\á\ÊX`¹VI\Ã=fc\É7uM­8\'ªw5\ãØ´yLó¬´\ÄbcZ™O¸†ù¹’•\ë\ÖZ@\Æû²\ÅöÚ˜|5\Û\Þ$<“ðt\Ú-B¦Ãº^ã°¶[<\ÖF&c+]`·Df`=\Ýh_H“/¤«ý\"”x°b,…\Ã\Ý-©¹Ò¯8Ü‚\Ó!¥\×Ác^P¬¡ˆ¯C„þ‰P¦}\ì1wXº`abðÎ‡8Ž\Z\ã]\Úl\Õ5¡º\'<y\ÐöF4e5¯ò8\ï”ù¼J¹P\Ég[\Ûs\Û!i\Ìq\Õòš\Ç¦n­b\ÍKOae\å,“y¼F±€«YÁ.\ë”Hë«\ÜÐ¥<.\Ý/&a\éx7„xs#D¸),\Ë\"3•eWŸ„§\Ó&B³›y­¸²©n\éÂ†—/NBc`y»EøE8?0VeŠ¸¡\â’Ê°,\åž\Ê0®P²ue\Ó}ð\Å\Ý}4µ7¿‹âž³\"ûu÷\à±\Çy\Ò\nB¬SÛÐ’Ù¤/°\í­\Ðz\r“‚\ÏÙšx–¶ü“\'9E#ÿ‘­­d}æ£¸§j÷©\ZF¥®\n³ö÷\ßÁ\æaÿ€{:E`>\ã+‰\rY\â•eo\r#\Æ\å\Ã$<“ðt\Ú-B‡\ë{Çº\î	X%“Ä³.Špk­\"\Ã2\Ú\×%&DŽŒ+{‘,5ŽB\Ç÷c€¬1h\ì\\\ÜnJ7Ç‚ 8%BŸG„²6I‡¯.B©¸\ÖwMW{\Õ/\Í\ÊWcK§ZBqø\ç\0\Î¹\Ó	\ÒY/+\á\É[É‘k›o\ç~’\ÆY‰O\æ#ªG\ÛIš\í\ÒP\ã\àK\Ù\ï\Ñ\Ê\Ã<g=9]Z\ÞÕ1SpO@V$¨ù2\Éw\r-¡´®Ž+0\nKG\âG_\Ün\Ï\Çò¨,%\Â\Í\á9>1	O\çúˆ°d¬\Ú^FÖ´–„]F\Õ\ä\ÑEM‰\æN\"l\ïC® =\"\\”«,\àúD\Ê.QX¥\Ñî¹K›\íÙ¶Niû!Š¦µE	I\ÒCõ^\í!\Ï&Ûž°€ñ<e–^[#,³™vÏ½R™JWù\rþ#“ðòx01K\r—\ë\Ý™‡­q\Åî±¥t\ÕL\Â\Ó1	O\çK!B\éžPó\róøB+\ãDG1…™7­K\Ðtø¨–¬:©n[2[v\ä\äÿR\à\åY\Zä° \âyÁ§\Ö\"\Â ºRtGY\à\Ü-¤i\êY†D-NT¯Ûƒ­;u`‡*D\ê7\å\Z\äJv\Õ\Úwµ‡:–*Ui—\ÈWx)²ÜŸ\Za\Ò.xI&^ù\Õ\ÝX\Ú-:gb+ 9a\áÆ¾3\Ø`±`}d\n^ÿ\Í\Ï\á:ö\ZóD¶w®s¯\Ð\Íß–\í+¤Ž”\á¥\êZ<\×\Ã\ç\Æ\Æf4Z\ëùYcU°«Ý†\Õ\ß\Å ^\Ëjf|¼÷Ú‹¸¿sª\Ú\Ôô@b–¦d\á@@\Æ\ä›ýu¤³\Û\']¢ñæ¢¹\îkbrJV©ü¥«}M•,o~sq\ØFWyk˜[„\"ò\Õì‘‡\Å55KG\ÆúúB¶´»A\"\äß®&B>®M„7V„\Û%Âl¤ù\×lW}q,™2,CÝ­´D\Êb±í¡žW$…[Vý\Úùó_\á\Î.qX˜†õI9x(%\Ù\Øb\è\Ós203.	\Ó,˜\Ù)OŽþ°õa\ÞSjÎº3I2N\Ä\×öRú\Ï\Ûe1b>XH­j”P\Ûøhj´\Â\Ú\Ì÷WO>e\å]µðò\Ï%´\ÌB\â°9(»Cs±(þzˆ0òºˆp;\ÓF¡ÌšŠ%ó\ÅV±\ì¾\àgn:.\n¦\0éªˆe:z\Ý\Ú+BµŒ_S5¿[\Ç\ï\Ò.\ÖÑµk\â1Y:Á\É\ãR6Ûƒr\îj€“\ï\áÉŸÿB\Í”eV$\à¡\îFaùÃ²¼\",\ÉTû\Ù\ï\ê’I÷-¦‹~b!öü\ÓwðÚ®\Íh<ú6\ïG\ÌZ#œ.iÌ¡™wN\í6\ÄÃ’±\Ød{u¾–dk 	­c¾^\í\Ñ\"1©,vúˆšu_Pž–\åezR®±\ïMg}D¶O\Ú-B†L[zŽ¿(B\Ùñjcd\á#|m–Æ¶¨|\ßð3!\Ô|‰°\åzˆ°K ª—F\ÒJ7…X0>/	§Udl¤†9µƒöŠð¥_üŸZ’~¦%\n§`¡…\×j‰V\ë¬\Ì%\Ë\éîµ‡e]“ñ ­”L]š\Û%3,Áª£{^z.¦W–…\å»-\éj-Í…´°K\ã\ì\Ì\é‰\íqEtSc°“÷±Ï‹iy—\åkxn\×jœiùˆU\Íy8š\èl·4¡š–_\å¦$•d°<ó@“Z\éZ\Õ\">z\rñŠ\ïú\ÔþXÅ»/u\ËS]³“.\ïwó\Æ\Ô\ì¯s=E¸†À[„\Û\"s|²=*\×\';\é²Þ”\"”\å–P„‹Â’\Û^r\Ú+Â·Ý‡\Âd±\ß\ÌH¦°#R±48‰®T&–EÉˆ\ìv±3&«º\ÇCvY\Úš\Ý]Ó°³s\Z\ÖY ›‹˜š\íýAö\È{&k ö¤Va>þ\â\ÐdlO*À\Î8ºiC°#:d/K+Z„ú\Þzmt5óP†|;\Ñ,-«­\'#•\0UŽû~ð#5Lu­¬ô.ê”ˆay\Ø(E%\Ð\"2|±‘.©/®‡·öš€•wD\ä`ST!V\Å0Mø\Ú$<\Ñy>\ÙÍ¸ðs\ïŽ\Î\ìD\áÑ¢D¦·µf¸;r\é–I‘\×í¡½\"|ú\ï¿S3\Ú%sdŠe‰XÍ˜fM\\Ž\Úo`IlZ»eñ6„¦bK¤4ß³Ò¡ W\Ò¬Š\Í\ÅJºo&aùƒ\ì´¬]?\nzÝ»Uñ9˜.«\éEcI|\ZV¤\æ`n`4wf­Ý‘EX&+ƒ\Ó\Ê\Ë¦\Ão‡õƒw˜h6\Ô×«Ñ©h”\Åj(Bçµ¬\0\Î$––Ô¦fw»\êÂ®\éXœ†­ô*–\Å&RH\æþ7¦\Æ\ë)\Â\íi—‰P\Ò\Ä»¢\n|²‡\çº)D(K\ì\é\"”\Â\"\"\\B\Ý[Tþ\Ò^¾p÷\ïY(\ãq0TV\ÈÀ\Ú\ÎIX\ßUv\Ì\ÍÀFZµA=\Û\ÅÔ¤,\Ê,Â’¤<\È\ÊÞ²¨ì¯¸#4û»e›\íýaUWºmQt?“*°4._\íu¸,š$Z†”%¹wý/\Æ\î\è|¬î–¨føoŠ\ÌÆ–\Ø<¬¡7òû®Ax\äÿ}xó}f¨»«¢ž\\-!©šH}?TI\à—š ñd#¶ô§–\nY›ŠM¬L\Íþ:¦\Æ\ë%Â]˜m\"\Ü]¤–ø¸\"\ÜûE¡z\Ý\Ú+\Â\ç—<ˆ\ÄZu§ Y€\Ó}TKÿ%ÐdÁ]\Û.v0n\èB¡0\î\\”‰5‰¤œ;>›b)MPŸ„\éa\éj\Ûð\ratAY‘lï–½‘%\ØW†%\ÝR\ÔF-ó\èb/ŽHW+Io\ä\ïnf\Úoe\\º“•Á3´ú2ªéŠÀ±³°\Ú\Ü3òO7\\`r^]„’\Þ8\×\n\Ù8\Íx\åP“’\ç$%\ÒõŽ4\nO\Ç$<\ë!\Âm½\'^¡\Äp>\Ê×»\"(4ˆ¥ó\Å>ž\ë‰ðúõ\ÎfL\"Í®d!q†K™A\îŽhY((\åb§ô\'E6.9û\Èõ“rRlTCÝ®F\\\íñÂ´û±Ä’¬& J({\r\ÈF2RVÉ–!X¾0µø\é˜\\H\ãDQ\rY\ÕZv\0\ÚFÁ\îîžŽü\Î\Ò\ä|µÚž\èrl¤[%£TvF”aL/l\Ès‹\ÍÀ‚ðhÞ‡yô¿‡Mi=°…ñ\êöN±\Ø0r4\ìM§˜¡L\Íj•5ôýPi]\ï^\ï”þ+ž¹\ç/\Ø,³óii¥B0¹ :&Tg½”w.`y\âµð§\ÜC˜\Ë|/›P]\í!]DO•NÀ®€^-!Å·=¡…0Mc2Ô¶\ä\Â\î¨\Åz:û÷\é\ìÉ¿\ÈÃ±ŠÏ½%œMKxcE\Ø.¾<\ãA,£WG1F‹\Î\ÄFZCYžP\n€,Ã®†bù@–\rô…©ƒ]\Ç$<E´\Ê[h1¤)üKödWaO@žŽ“E˜Äº\Ñ\Ê&©Þ«sñxöl-…lW½1Z(›\Å\çamd!v%b[\çhµ\ËP\Ík/¸ó¯I,\â\ÕK¹²J\rm\\­x\éÞ»hõ#ùÛ™\ØL«\ëeù¼1Y¿Kh§\é&?]6»S):ZBVh;\Êðxhž¡G|\Þ\"\Ü\Ëx]x˜\Âóð…\' ðt:D\ØN¾4}*VP„2DJ‰nÚ¢ðU@D$«\"i\Í|°:*\Û7÷]“ðtd¶\ÉZZ@‰Q—¤\äc^cV\Õuˆ­	yjU¸u|Þ’Ê˜0,ó;\'«†‡‡*°•\î¯Ix—”K\ça‡l\nDkø\ÎÂ¥\î„a‚Z¥?ñ*(þ«\Zy\Äw‡\î¾k(\Âutý¶E^&:oL}s:\ía¯ID¸‡\"\Ü›Ž]´\Ð\"\Â\'Bx\Ï1™\Ø™Ã¸Ž¢k\Ã\Ûòy„\ç-ÀG\ã\n/BR@\íÀ—¯G\Å\ÕD(\Ç\ÚC{Eøâ´¿\Ñ\Æ\Ó5\Ì\ÄJZ@Ù±gax¢Z‹dYp*¯[3º2²S/L£DtL\Â\Ó\Ùœ¥vvÚœP¢VÉ–­žøÖ¿cjR\n\Öv‰Å“I%XE«\'‹ùnŽ-\Â\Ò Š6”5z\\%¶\æû\Þtö„cnxv…%\ãñ\Èb¼ú—û\Õ\ì•\××~j©þ¥C>Zñ\Æoþ\È\ë‰Âº°Tl‰+ÁVºù¾0u\èø¡Ueº\ïG3¯é™²I\ØH+H}oã¼„r<š¯DhŸ\îrˆ\ÎÇ£1]\Å^\äñ¸\"E‡\Û)\ÂWgü…F¶0£eŠNc|”Š%Iª€¬“\Åme\Îß•Y!û\Öù@üõ…Ix:ûY@ö\Óe±\ÜoIÄ£¿ù\rÝ¿\Ã8±n1\æÄ¤\Óõ‹Æ“‘%\ØœƒÕ²\ì­Ç¦\È|µšö6ZC“ðt‰(\ÇBº¡»\"(\â\Î)8½h5\ê[e;j>Ô€S\ßÕ©Á‚ \é/£qžý·`M\çXµ­\Ø&\Æ^Þ¢ó\Æ$<öŠ°…÷|ùd\ìg\å´+.û\â°7±C°;&\ë2WS·v\Ê\â]Ax\ÂñÅŠw´\"<4{*\Öu¢û\ÉXaC\\vF¦cEt*vE\ç¨²¸«/60~ð\ÅFº¤¾0	OgEt\"vR|«,ixñ÷w¢©\é\ïAXK\r\Þ_º\Ëh½d\ÓÏµÝº\Î	tA\évQ¸bó±.±ø’F»\ÂK°-£[BpŸ%xóM\Ô\ÛU›\'W¡²„R0Xœ¶\ì\ì;º\'b´ž\Ö{G\Ý>˜ºt\Ú\ëŽ\Ê`„*nÁ z™\ØW€ý‰•x6´{c³•¥óeížˆqó$½á©¸\â\Ë\èa;Eø\ÚC÷ª¥\Z$†‘™\×R—„Ç«\r$W3>”†\Z_l\n\Ëö\ÉFº¤¾0	Og^P0Ö¤\æ\á©\ïý˜7\'ƒ®¨ol€£V¢0¬»\ÅÜ‘“ð\ç xlM.Â£‰\ØI¼•lul¦Qx:\ÒÙ¿3¹\ë[\îžxKùYZ¦&“ðZ\æ#ª˜P\nF­\Î\æZ,a… Á\Ó1EXKkažŽIx:\í¡|ö¥Š)x4˜V•\ì#Œ\á$Uá¹°\"¾Ï¹¢ø<\Ö\Î#>]€OÇ—\\B‡\Û)\Âg\ï½-¡X‡¥Œ­:…cn\×0¬\ë\Z‡Å£°\Ô\é“e–8Ÿ,\é\í“ðt6t\r\Â\Ö\ïü¯ô<Z\Í\ê%jœ.\\h–HŒV\ë\Âi¼u\Ç_1›•\È\\‹»CñpR.6\'±\"0OgUXžZIDˆ{pºå¨œQöZZGÕ‚‹’\è\çXB\Zª1\Ú.\Æ\Ó/Æ•a5¶¬¡\êSßœ\Îõ\ác\áþø\ì+Š\Ð$@\á)V&O\ÇRxmdœ«óL|\é¡\ÖOø\áIÞ‰kU´\ÛD\è.\Ü\×\"\Ây–`¬\rOÁ\Úi\èHÇªð\n2›Lƒt\à›ú\ÎtL\Ô:‹ºE\à\Âc»\ÕO\Êº‡?òExu	G\ÖlÅ»K\×\á\Õ9Kñ\Ò\ÌExy\Öb¼2{	^œ±\ÏM›‡g¦\Îi?°‡¦.\Âkó–\à\å9+ñü\ß\á\à\Ü%x\â§?ÁfV 2ùumz‘Zˆv­\Ù\Ãñ²Akw¬‰NÀK–ÿ\å\àL½ûÞš\á0}%Zœ\îûÁ¨{·ñ\è›\ï\ã¥_Þ¹Ñ…jC\Ïº\ÓeŽg\ìG75*‰–%Y±9\"k\Ãb±*4\Z³-\Ø\ÕkjVn\à9l´´À	þB\r\Ø\"\ç\åC&oË”%y\Èæ¯j1)y´Ô¸\'ø\Âi\Å;Sga3\ã\×WBŠT¿\ÜÊ”Lµ	© î½°›nÿ%h\Ýz×€°.õ\ã–]¼D~@ý\ïžùO\ìN÷\ï^\å\Ñ\ÌR*\"|*$\Æ\ç(‘=šX…\"Jp€ÀS\"4<O¡]o	\Û-\Â@¬‰øX„²õ°\ì‘wýD\Ö.\ÂÁ¬¬´*-Œµd¼¤¼–g™\Ò\äùû\'†\Ô(Œ\ç”)?\ê[qxóJ\n-	»\é\Î\ì\nÊ„,;¿ˆñß²\ÈD`\á[Á¸\ê\Ýoý\08Y\ãN\èVšepž†\È2ž‡;\íY\ç·\ÐEµóºk\Î\áÄ†õXþ\íï¨¡kK:\Ç\ÒÚ‡c-þrŠs=\ÝÅ	Ex8³\n\×30~…¿!³)ìš¨I=R\nP„\ç¡<‹\0/®¦À§“NÊ•Vz\×\ÄÁFK2žŒ/Ãž”\"l	M¾(>o\î‰\Ís\ãC€Y´˜?ôIEØªDøth\ÏUn¥ˆð\Å\ÈR<\Êk4	O\çZº«qS‰pyˆ\ì\0ôùasV\\œzfV«E­(&\r\Ìhy-o2›\Ð\ÆZ\í¸À_`\áá…Š‹ôüª9¸‡®\ãš@TZCiµÛVB¤\Ó\ÍMÆ¡þŠPBž€\\\\KFÞŠ5ªg…Á÷M\r¼z÷o\Õðz«y\î:\Ò\È_;\Ó\Âø®ú0\êO¾³ï¾ˆ¯Ä™·žGÓ‰·Y:Oóû5hu\É\Ìz÷\Äc9S«ˆMN\Ì`ƒ;=ô<D€žcR\äwmo½\Åa\Ø\ÅkßšÊ¸0³º¤ø´t\n\Ý2\Z¥½\"låµ½\\y+†|,\Â\Ç{\\\áÁxº˜>0‰\ÎŠj¾D¨º(\Ú)\Âù‚°62Uµ$\ê\"”\Ñ+¢2Œ\Â\Ó1	O§Ý–ŸWô \ï¯#*\Íx-6[=\\6\éP“„iÁñUË±¾SV\ÇgbUJ.VtŽÁ–t\ì\n,Âÿø™š­.0Jd\âjz˜± ]–8lfl‘•d¤©^\í@¡òCn¡¡ŽVMöš´d\Ê\ZKž5ó€ &óòÿ&‘b-3\'˜\îŸà¿ôÜƒ¸/}ˆeô¬-$\Ój\âs#žý\éo±²s\nžŠ*\Æjæ·„ Rð}Y9…—ø<CÁ<x‹°Y¼	?D(­£¯VÞ†gBsñT|žŠ\ëD„/G•\áñ\Ôb<“À¸\Î&\ÑysÓ‰pMddˆ˜G„&aùC{E¨\nk?)N’¿r“‚|Yð¼ÿ„\Øä¼­<1]P%Y©¬¡	§X°6[\"°$9›\Ò\n±3˜.iP.vLù&¯Gfúñk\Äsòtv´2\Õy\nÁ\Þ$\æJ\Þðµ•¿!/\å”#§e‰÷¥¨ô‘ˆ<\É\Ç\Z\å…|G> ?&ù\Þ\æ°ó2­*>ô<DxVº¡že=úÀ®}XŸ\\¡Æ‚ÈªÄŽÀ\ì\êš\ÄøV8›-œ_#Q„öŠP¼ŽC•_Ás¡`B¾jLy*©\'^‹*Ç“©%x.¡\Ô\'/&”]•Ï½;º s°¡t†\Ë00]„2L\Ì$,h¯\ë\é\Þ\È\êar/7”YHIµ6ªu\âðúÕŒ\Ï\"0\'(\Zw\ÏÀ3‘\Å\Ø4\å6†V\Çù9º‡\â~òIs¹—‰Ed\áS\çP\ç\áCýÑ©f¸\ËwZ­Œ\áø7ùžü~3\Û$Q¤\Äz.Š¯­¬x\äo\çY	\ÉgÕƒÍŒ_%\å ·Sñµ´\Ði\åu\\òh>‹G‡MÁvŠecl&6¦\ä\à™,¼Qˆ‰¹f\áQ\\®\Ö:\Ù^wTf‚ˆ_Ë§e+À³´\\“z\áõ\è\n<•VŠ\ç\Ë|b77…\×E¥]\áÚ¨|¬a\Í(]\"B\ï%\î¼1	O§½\"”\Õ\Åd^¸ô‰y÷žcž×ŸO\Z\ÕQ†\çùNzwd&ûÑ­±¢k,6\Æ\ç`?\Ú:K4¶Nœ\ÂRvÖ™v·`«eLê¤›\È4•4†ƒ_–û“\æy—Û•”÷öf\n\É\ê\Î\É#1„b\Å$•\×RX\å¸ü]\\Mqb\å˜\ço‚t5\È»d\r\Zþ¦”s±¦`ø\Ð\ÝPeMM\r\Z\ïú»\Z2÷$Ý½mQ\éj|\æ³9^M®\Äúø\ì‹\Î\Û\Ê=_\ä\Æ >\ÏH\ázˆðÍª¯\â¥ð<—XH÷±\Ï$÷\ÆÑ•x&­/%–·›¶7&l¢­’\Ú]§•\Ù+ˆ\ë\åý7‘	p‚‹b’÷\r¼@ºŽ\'W®¢ð\"\ÔHmt‹¶3]öG—ay\Ñ`\à\ÄI0;ª¶ï± ³‘²iÓ¤}?#¢V÷\Î\ìõM°\×Õ»óG~K¹ŽD–?”x\ÔÚ†C¾\í)\Ì<\ÔX‡F[5E\Ù\Ès6òr\Ý[°])ýDŒ.\\À»ï¾«˜Q=•D\Åd\ã™\Ä<<–†Ç’Š\Õþ‹>¨‰\Ð$À\ë%Â·z|\í>—t½E(‹÷\n\Åc>\Æ ¶+\Ñ*\Ë\ß\Ë\ëBž#\ìù#€²	@\Æ´Z\n\à|÷#w;3\Î\ÕÌªQA`\Ì\Ð\âgK«O%\îñ\àle¡©Á\Ò\Î\áXœ¤\Ö\ì_–£ËŽ´²œ\Ì\ì6\rj\Ö1Žü\×Xh	FÍ£{%½Ý—¢J§\\§,Z«]Û•Ð¯ù“Àûô…X¥B‰\Ùx9’bb¥Ž/^‚-\Ý\â°/(²l\Þ\ÆOÛ™6,ñØ’S…\æ?\ÈOQ—h§”\ïÈ™D2Y¹‰¢–[U¢”ƒ¥h+§ò\Ï!i\Ì\ÔñG]Y~V\ê	\ÙwB¬\ç\Å8Rþi\á/Ë¹\ä\àYþœª\ZÐºy)ó2\ì¢;y%—\Ò\Ô\ì¯c\êw\Ó\Ù\Î\Øò\Â\ÌE\îk\ßVEh±\í¼.iœ’\n\Æ5v¼Rz>ˆ¬À\Ù2\â¥‡£zã•¸J<™VŽ—)\"_¼’T\á“Wn”K\Ç™a\ç\"4g\Êó¾¥\04¸lLIwY—‚\ÑH·\ÈS\Ù7µ¹H’w­t™j\Z\Z)\ÂP%BYRA&\ÊzD(3®‡W†\Æ\ã\ÜûP-û\ê± JKƒZE:œeNœ\Ë\'\"\Óö ÷\ë‰¥»À\ÚÚŒº\ÚfÐ¯P.\'V\Óv‰Æž¦E\ï%6{\"°Ï’†Í´.[À#¿ùœ‘\Ò\'*idª¶È°µ]\\)”²ñ‹qQ\Å\ÕÜ®µ{6„G£òÁ\íÕ¸\ÝRiU»K¼\Éñ\âMµ[YT~ù,?«v5–kùûbµ\ÈÑ¶Ô¬«\ÆtÞ¢ó\Æ\ÔÚ¨s0ª\ËÖªk=ÏŸ-\Ê}I—ŒÜ›\\§O¬V,ŸŒw‚Šðtj&”\àÃ”x9©¦7fžŽIxÞ´[„Ö²1pŽr‹°€\ïD„\ã€ì‘°”Áz¤F©J2Q\n¸J¯U9h{­\Þ\ËkIy¦j[ù\Õe]Â°>$ù†‰p™¥¬û÷¹¯…G~¾Eâ§¶kö\\\Û‘/´\Ó95\Äó“\Þ\0U ø^,|­v\árl·„C\Ö(\Ù\Åt¡[*Ã´žì’G\è‚mèš‚EQ\Ø\Ðs\ÞZ³†·&{\Ð7Ó¸Ê¼\Ù‚‹	¡\ÙiI•~\ÎZf‚¬¥¦\\RA\Z\\dacñ\Ä÷¸\ÛGX´kxœ)GõDõg\Ò\ÓQŸ\áÅ¿\Óz\ZG¥\Êu]À›?ù5VX\âðZl%^‹¯¸¢ø<î¤©\ïM\Ç$<§™FŽY+\ÔýŠ¥ö¤cC«\ÛÇc¾h\â½<?ü8\ZU‰‹°?4\Ï\Ò\n\Êˆw3z…§c\Îk)U\"BŠI`<w\Æu×Š½l\ãBÆƒJˆ#\Ñ\Â\ÑY\Â\×9\Ã\á«D\Í\Ñójµ±-rS’\ï¢> ¼–\Â!\Ø\Ûp\å/´\Ø\Ï_\áfŠND(û…\Ë~\"B\éÀ\×g$˜0M¿\Ñ\Ùš„–\Ç÷£¹¾õ5­ª¶”‚.(-øž\ëºžký¤x\îÿJÈ YDW\nLÕŽ\ëPgkBõò\Ø’‚½ÁY\Ø“‡M	ù\Ø\Ê49Ä¸* O\ça\Ój}`öD”\â\ÕøÎ½ø…\"}<\å ðdÃ–þˆjwJƒŠdV[A¤QD+Ñ¥§±H,Ÿô\Ê\ßd¸*°²EšO¾,~(Eigøá¶¥t?÷o\Ç\Ú\ä\\l¶„\â…Üž\ØË¼<’2\Ô8ÀY\äl\ê{\Ó1	O\çp·B\Ø¯ÁiGÞ“¾V\åO;Q\Í\ÊAòº\í6¯\È)\Û)\ì\ê5o3M\ßIe[†qx>»/>JbE’H!ù\àu~\Æ\'i=¯ù\Ã\Ü\",\Z¥Dh+¦5·4®\\\ïg†Krg¦šc&K\â©M\ä5ÿÄ—,q»2òž¯\ã|3–w\rÇ†\Ð%ÂyE(\Ó|®‡§Yº v\ïfþ&/¤Y\Ü#Á\×V^›\\‹\\ßD\î\Õ’&ª…‘V}\\¼.ø\ãsfb1\ã\Ù=]R±\é²+±[\ãdEg™\é-\Ø5-Ÿ’A\Ìô\"ª\ã\Ñxt\ÐWqz÷n\æ«E›\î‡TŠò+ò—\\^­¶&JŽ”¿?\Ì¸­³X*-ZU\é#‰ŠU¹\Ö<ó,\Þû×Ÿ`?­ß«tßžK\É\ÆnºÑ¯¦õÁÔ¾W\Ü,›Sß›Ž©\É_\ç)\Æ\Èu3\æ²Â‘\nžwg\å=+øšI©Ê¢/5xi\ÔWñB·T¼\ÉJ\áPj?<–\ÔO¦U\àýð<¼ž@¡ù\àP\"­¦/²ú´\ßu”Ž3—–0Ÿ\ïyž&\n²Eö¯§kŠ”ÁÀ\Ë/½ƒ\ÚSo\ã\Ô\ÉC¨9ý6ê¾\ê_EÃ‰·qþ££¨9vµGŽ£\æðQþ\íšBÝ‡Gq\æ\Ð;—‰p=o|#™ˆPD&\Ñ¦‘ÿ:÷$G\áõm\á<w8yÇ¾ˆ\ã§_D\Ý{/¡\î­7\Ñð\ÑqŸ4}t¢]4ñM¯\á\ä/ þÔ«À\é÷`=ý!\Îy\r\ÏÍ¸‹Šsðhx!‰,R+w\É#nˆ/ÀzZGq\Ç÷¦É„\Þ\Õ\×v »·Z·eµ%«\Òza\Óý\Ç>z\ç\Ï…µ‘6M,¡TŒ%\ÖSi<$…µMs\n%D)Àò7\å\Î\Ø\Ð\Ô,þ¿(•\Ù{Gð\ÎÝ³°v\Ô?\ãa†$»-Ix7¶¯òºžM\Ê\Åù½q€\×û\é\Â\Ó\Å\'<K™ú\ÞtL\Â\ÓÙ˜‰·\î¿-,¨9~Õ¯?ŠÓ¯„\ãý#¨=þ¦OðÂ‹øp\èmx‰iû\"\Ý\ßwú«í¾ŸN«\Ä)ž\ß(,7’ª|òfN¿ö‹\ÐY6ö6Cc¡tWð<™\ÃñN§|<\Ý-›q@4¦\Ë\Ö\×ô\Ñ\ç\Ó%™m	\Ä<y\ÝÅ‚…\Ý\Ú\èlÁ¾_ÞÏ,üŒ+ºE(n¡\èdÆ·G„YÈ®‡Ÿ²¨¾¶…–dl±$by—¬Žv÷»‰\åX\Êkò\Å\n^o{X\Ésøb\ã»5‰\Ø\ÏFK*VQH;º%\ãYKw\ìeATK\ç…\ÑúE`g\ÅHÁm¡%\×.£›\ÂR±¡s,\ËÆ¾ô\n¬O/\Æ\î€,¼eIc\\™€\Çcz\à±ÿ†~ö}û\á:ñ!5V\Ïÿh-\Åv¹Q\Ï2:\Ö\ÙJH\áÖ·ƒó\ìûp>z\0§sö‡½t\Ýv\Í\Åû‘U¸`)\Ä;Yý±%&O„\ä\àPL¹\Z†ö0ã«—\")6‘Np\á9lS“¾?œ´d\à\ÅÀ|ì—†•.RP–\ê\ny$8\ÏYX)X2}òX\á`<\Ú=Mu<—Q\ãt¡_\ë\çÒªð!\Óù\n\Ío&Rh>x+Àõ¡#‡î¨ˆ°tœa}!\ß\Ëyr\è¢VL@m\Ñ <ž˜…5\á\Ñ\Ø“@÷(\Ãb°5>Y5²lŽ*pCm“‚]Œma¬É»¦*nd!ºQ\"|2<‹S2±\"(¯0v\Ú™€aÁ\Ø\Ú5\Êòv\áù>‘©\ÛÃ¾\ß\ì\rOÇ¾\ä<\ZŸ„ç‚’\Õ*_\ÒO*}§\ÏG¸\ê•d}—\âªðDt)¶‡d3^\ÌÁ“|} 4‹±U1¤9ý‘¤\"þ=¯D\àE¦\åctS‹I£UJ\Ã~¦ñž 4\ìÌ @s°\'0{ñ\Ì\Øoâ•¯ÿ\'\Þý\áopø\Æ{?ù#^ü\æ\ã\áÿ€-•c\Ô\æ-\Ð\Ò\íê”¨¶k\Û›Ž\'’³ð|r6^I\Ì\Ä3x:*/F—\á\é¤\ÞVo¼\ß¯\Å\Êõ¸G \èx\Ä÷<$˜„\åo\ÑM{ˆ¿{*¶\Þa™y\">‘ñZ>ªC{á”\"Ÿ¼\\Ž¢+ðRAö°<|\ÑG’†áœþxŸe\Ð$<“ðt\Þ.Hö½\rv\éh/\ZG\áÐ,\Z[¥¼¦ˆ\n(NƒðüBvò\åùjJ†ÓŒ`m@¢r%eýU\àjfü:\n@|\Ý\Â8N–ñ\ÏR+@¯gŒ³1Ž/¤e\ÐÒ‡\Öô½\äLl\Êö‰g>\Ü\ÕðžªsV$žAÌ¦\Ìúp.ž.€+u\è\r#&¡ =\È~\r\ÊS˜ú\ætžK’\Î\í+cr1u^H*÷‰©ER\Ç\ÔX¢s(\Þ7&aùƒ\ÉE\Õy»pE8à«—ˆP\â9¡\êû»\",Gþ%\î“EC•Ÿ¿®[\nV¦)!ŠPDLj+\æ¡ZcE\â/\Ñy\ã-:oL\Âò‹HóRzL\Â\Ó\Ñ\ç\Â]ñ]\ë|9Ïˆ’+qµ~8“ðt\ÒeôðLT\ÙEž.W¼@\ë\å“ðtLqœŽÉºé˜„§cžŽIx:&aùƒIx:\ï•§‡ý£»oOö™§eØ™­|\ì\ÇðÞ¢ò—Ò‘°\æ†³`$\Ðc\nªG*—J„¨,b|¡\ÛZ\Öøk\è\ÉH¸\Ä\Òx¯¸\ì\É\ÅÔ‘\Õ\Ã\Ú]__ÈŽE¾ð,\n\ë‹+	MÁtð\Ì$0\Í&Ð‡s™¸’ø<ýpzë¤‰X_daòð](“ðtL\ÖM\Ç$<“ðtL\Â\Ó1	O\Ç$<“°®\'‡{¡\Ç}-E\Ò\Å ]£`-\Z[c=Z.w|xi—„¿\Ø(B‡4\Ô\ä1>\Ì\ÏsN\ÂŠ^Z¿\Ä5]Kñ1®Y•©ž\åý&^iV\ßL«(ô\íÁ{	<ñ\ÞO\Î“5\Ó\Ñ\æ]x\ç\Ê	^\âóv7ua™Ð­š©Î»uÒ›\çb)–8\Ægmˆ(/\Å,>&\á\é¼$Bó©ƒ[\Ç$,cßœ†\É:\é˜Z4ýÁ\ê|\Ô\"Exë¿£¡TZ7\Å%;\Å\'}6NIûE\ØHTõC\æ‘tiÀ¡{ÞŠ…CT\ÃÀÆ°µ~\æJYc“\"\ÜŸ§ö!\Ø‘…²%Xv»0	\Ë¼÷“ó\Æ$(ÝŠù\Â\Û\Ây¸\Ú|9E»ºU\Ó\Åu±\àj\Ä+ž‹Aºy>Ž\âj\Ãd½tL\ÖK\Çd½tL\Â\Ó1õ\Í]‚Ax:&\áé˜„\åoSh¾\îþñû¨/§ø$.,p•¾?å¢–0Nôv/ý¤•\âV\Ã\Ú\n(h¢´¢ò¸Äˆ\ç\nSˆ\Å\Ø%-ž¡Y\Ê\ÝW€­,\\²‚Œ°7ºˆ\Z\Æ8NCf´\ÓvV:&\á\é\è\âò\Å%\Â\ãý_\ë|9Ýº™Ð…§‹O	\"Ñ»Lx,Ú•D¥Î„IX:2€\Ù&\áè˜„s	\ÉU>1Y\'·’z´‹w}ó\á„¢ÿõ¿PWI±\ä\Ðbµ	DD(\â¹\"”82š†¯i\ÅÍ•Q\ZkP>G³†\á•\Ä^>®õa\î™-,ˆJd!b\É.žŽIx:&aùƒIx:&«¦£7’\\\r\Ý\ÂyO\Õ\Ñ\Åw‰¥ks+¯\Ä\Õú\ádjŽ/tÁ½L\Ë#¼’\\yý\ï&L\ÖK\Ç\äBê˜„§cŠ³tL\Â\Ó1	O\Ç$,0	O\ç£øEø­£\ÖK„vŠE‰°Œ®£.¨OB\Å-J\ÌbY›Š‡ÁZ\"VF\Ôðüy\Ã\à¨ü*Ž\çŒP}Z›\Ä\Z†g©\Îf\ét\Þ\Ù&F˜„§c–?\è{É™0	O\Ç[hW\Â(Àk˜/§[6—¸–\Ä#>O?Ü‹´6¾ð¶„‚IlW\Â$<£©a´n\Z&\áé˜„§cžŽIXþ`žÎ±ÿ÷CXì¿¿H›\0Ž§ø\ÇQ-¥Œ\Ýh½T‹¦IX×“Ì\êX4–VúvÆˆ\ÛY\ØvÄ•a]HŽz¿#”\ÇB\Ò\Õ\Ê\Ì[‚S\Õ\êÖ²OœÚ’+2\Ë\';\Ú0õ\É	¾Z\'õ†\Þ.¤gt_K¡û’>-Ç„©\ï\Í/¼\ZB¼1õ½\é˜\\H“õ\Ò1µ8ê˜„\ã¦8\ëR*\ÚÅ»z{ø ¥\'Þ¡\Å~7\Ï\é=ñ&+žS{\á£\äž8œ‹Sÿý+Xœ·ÿ\"‹7n¨´`Gk­\ã¸OE„\Ã\Ô\ì|™—x¾t$^J©\Â\Ù!€B£¥¯\Í#\ÓöˆL·¸( qb\r\Í\âó ‹O¸D€\Ò\çK€\äªû\ËDx­¼z,\Ñ\'E·`&L\ÖK\Ç$<“ðtL\Â\Ó1	\Ë\Ì\Â\Ó1‹\ëZ1	\Ë®&\Â3¿ø\ÝÑ»§©2lm‚{\n]Dk¹ôŽ‚\ã\Óa\åXó†¸ozLA\rSv¼‘‰©be‰A,ŸˆN\íGñ\\%Ÿ}á½“\êe–/\Êw?œGx\Þ¼\è>^ÁúyD§\ãÞ“	%1Í‘\Ó1	\ËL\Â\Ó1	O\Ç$<“ðtL\Â\Ó1	\ËÞ¡\Ë\çù\Ì\'ç½¤ªvq˜\"T‚¤$µY\Â\ß\ßEN›\rk\Ê(¸J&\ÂEk$\Ã\Ì\åâ–Ž„½H\ZTDˆ7Gqnñ\çò}\ÎÕ…Q?/2\è\ßšŽm\Ñ\Ùjð\ï\æ\Øll§ò••¸\è¦\ê–Í„Qxº\ÅóŸ\ÞJ\éq7}	Í³\ëŽSŸœ½Á\ä`B©\Â4GN\Ç$,0õ½\é˜\â4“°tL%:¦8N\ÇÔ¬\ïf\á\é˜\Åu­˜„\å¾Ÿ\ê¡X×\ÚDøF-\áß¦S„– 1‰\îg\é$ Œ\"\È\ZW%\ÅH\Úüœ[øIhÁ—\Ó‹e\ê“±\ç­8W2\Ï\Ð\ÒìŽ E£º)<›¢2±=>»e£\ÆHŠ+$\ãq™¸\Ú&ŽW´pš¥óžn\Ùd\Ã+õË™º\Ü]\ÒXreL\Ö\ËL\ÖK\Ç$<Sc\É%° ú\Â$<“°üÁ,<³¸®•÷“{´q;\ß\ç}Š[*B|‡iv$¥ŽQ„o\æ¢z\ÑrŠ°\\H\ZJ!Lv‹!crE„V%B\Íu¼H¡ZM\æÊ¨\Z\Ç[hkŠ†©\Ýy\ÌW3›\Ã\è¢\Æ\ä¨\ÝR\Õæ—¡Y—X5&ñ\é–\îJ\î¢Ð®f\á|O.<%>\n@05–è˜„\å¦¾7“ptLÂ¹C‹£Ž©\ÅQ\ÇÔ¢\èï²û¦ª]˜„\åbñ> \Û,\"Tña›\'ºE(úS\"<›HTyE8HTQŒt	m2\Ò\ÅK4\×qym…m\Ë$²\×Ô–?ôb?â¹œax7©ž!†gª¡j,	Ë¾Äª™\Ð\ã9“\Å3‰\Ï»©ø­M|º\0/q+Ex\Ä\Ó§÷\Éyw\è]Lq\Øõ\Ä\äBê˜„§cŠ\ÃtL\Â\Ó1	O\Ç$,0O\Ç,®k\Å$,ðˆP\ÜR\á{\á\Ñd·eÉŒ‹\"<H\ëW5\Å-Â´\0\ã4|:\"”9ˆ\"À\æ\â‘h®»T\0å´†Ã€lVtM)Ä—ie÷V‰ó”%Q…\ç\\&:o|	P¡I€\ÂU]L/®$>o¾@WO0	\çzbt!5Œ\ÖM\Ã$<“ðtL\Â\Ó1	\Ë\Ì\Â\Ó1‹\ëZñX°OŠ¸\×$BXz£±d¬eýQ[BAª¹„Œ\×Júš…ó)\"K(¶ŽÀ…üÁ*°=H‹´W\Z\\(Ä½©%Jh\"¦\'£)¤Z\Çº¨Œ#÷\'\â‘ÌŠK,™	S·€Ž±\ïM\Ã4=G\Ç\äb\ê˜ú\ætLqœŽÉº\é˜Z$uL\Âòs·ÀÇ¼‘\Ì\ßðÞœÿI05†øÃ‡´V\íA\ZY|ñ.ó°6g8^b…ðvR?´&Å›=ñFA%š-Ñ—ŠPúmeƒP_J\ë#­¢,üÍ¥ý.Å§MK\Ö@¸h%\í\ãp¾pVD\Ð\ZRˆ²D\Â#	´^‰´J	¥j‹e%\Ä\È\\÷¸Ë”R£ðtL\Â\Ó1µ8ê˜„§cŠ\ÓtL\ÖK\Ç$<“ðtL\Â\Ó1	\ËL\Â\Ó1	O\Ç$,0	\Ë\ÄBµ“ðt> ·s>k^eøNJ_4$\ÄûY}ðF^\ÎYb>ak7µB«S>\Ø\ÝQŸ?\ÈŽ\ÖrZEƒ0>Mœ23_*…Ê‰¼ž18™;ˆ±J9žŒ¢¤$\ãñ$º<&\rŸ=U \ZSÄ½\Ô]I¦¾9“ðtL\ÖM\Ç$<“ðtL\Â\Ó1	O\Ç$<“°üÁ\Ü\"ù1o%Wú\Ä$0\Åaþ`–?˜„§s˜qõ©Œþ8\Ä\×\ï§ôÁù¸>8–3\0o\åT\àp§\äEx.k<ùx8Ê†ªI¸6™Q‘M\ËX)ø¸;\á3A\Zlò‡Á%\ãLie\ÖM\ÉHfp%e«XO\ÆXJ#‰j…¤‹(Sož‰.R«/{\ÇpÞ˜ú\ætL\Â\Ó1	O\Ç\Ô7§c\ê\Ð1	K\ÇÔ˜¢cŠótL\Íþþ`žŽIx:&aùƒIXþ`–?˜„§#1\á\Ñ\Ô\Þj´Ì‡©}p\"¾\Î\æ\Æ[\é•x3¹\äcžÿ]öqp•\rƒ\Ì!l\Î\Ñ&B¾7	\ã\ÓD\ä\r…=k€{‘aVÎª	¨\Î‚\ã+•ûù‘n‰\Åª9o1Œ×¢‹/i(1a\ê›\Ó1Y/“õ\Ò1Y/“ðtL)—`žŽIx:&aùƒIx—ryß›ŽIþ\à\Ý\â/&\áøÃ‘´\Þ>9•\ØKù ­\ßSˆ¬8«³+/\âƒ\á·|,\Âú_ß«D\ç”É½E\ã\Ñ(}v9£`-—÷|ýY’/³;ˆL2.\Z®\âC±ˆV\nT\ÖÃ‘%ô^Œ¢kž¯º1¤5S,¢LÃ‘>F\ïJoL\ÖK\Ç$<“°tL}s:&\áè˜„s	\É\æVI¦IS‹£?˜[$?\Æd½tL\Âò“°üÁ$,0	O\ç\\R|H+øQj%Ž\Ñú½ŸVš´x=ª5?ý\Í\Ç\"\ì	\ÜSŒòÇ¡A–@Ì£E,w\Ô ŒO“i­¥\0\é&ƒn¨«p\ì2\è[˜\ÓjW\ç\ÇÑ”~x%¶OG¨Æ–gD@´\"ªÀk~œ7&\ë\å&\ë¥cr!uL\Â\ÓñŽÁ¼1	O\Ç$<“°üÁ$<“ðtL\Âò±2\íÁ$8š\Þ\Ç\'\ÕI}ña?—RNV\àýœ*\Ô%öÅ«ÁEÀâ¥—Š°%ª·[„y¡ìª”?M\Å\ÒRjÆ§‰&/¡%,WY\Ä8J¹¨²nM+}k\éG¬\Ë©:ô%T\éIex–5\Ïó)²8\Ñ\ås\ätL\Âò“ðtŒ.¤†Ñºi˜„§cžŽIx:&aùƒIx:&\áé˜¬“?˜„\å&aùƒIx:µIýp8·/Ž§”á¸ˆ0¿\'jb{\á\å\î…J€—ˆ–>h®˜¤:\ì\ÏS¹H…•—„ñ9Â‘7Š\î\éX´\Ð*ž\Ì€—)\ÂÇ£rðdRž\Ë\íYøöùdº†\é=ð\nýr\ÕÿFwUfˆ¿–\Ú\Ã\èBê˜¬—Ž©\ÅQ\Ç$05ûë˜šýu¼§\æxcjö÷“°t>¸\n¦¾70¹ˆ:\ÇRz\ßPŽ§öñ\É;™=P\×\ï\äÀ»iUh,Æ›i%8nÉ»\\„®T‰\Å\"Â±°–\Ðê¤Ž@µXCÁÿ\\!«g<;5\Ã\0÷R{Œw\ïþúlb)^¢EÊ³jp‰uw=¨\å\Z\Â\Ó1	O\Ç$<“°üÁ$<“ðtL\Â\Ó1	\ËL\Â\Ó1	O\Ç\Ô\â\è&\áé˜„s=1	O\çpnoœ¡\å{7³-ao\\ˆ+\Å\éô^8\ZC/\Î[„¶ùµšÜ«¦3õžø\é\Í\'l/jIÆ°e\Ò\Å2µE\Ãp8£^‰+\Ä3Yn—1ù\ãõPD€\ÏÆ¸G\Â\È{“ðtL\Â\Ó1	O\Ç$,0·8~Œ©\Ù_\Ç\Ô\"©cŽ?˜\â4“õ\Ò1	\ËL\Â\Ó1	\çzbž\ÎÉ‚þ8\Ë{M\í‹Ú¬Áø ½u±=qü\Ö\\.Â¦…+ðÁ\î9„U\ã\ÑÚ“[ö’ð\î2ø¼!«¸	² Tù¸*Æ£¡h8Ž¤ôÀ¡\È|¼\ïn…|E\Za¤\ëB¬ (aš„¥cj,\Ñ1\Åq:¦f}0	O\Ç$<“ðtL\Âò“ðtL\Â\Ó1	\ËL\Â\Ó9–\Ö\ç†r<ñžN\æ\Ð\êQ€Ç“ú¢9k(^/¬¢+šó3\æ].BÁ\Z9¶\ÜapÉ²õýÇ¹\çø™\nþ\ç‰\ÂÑ€.È£-S¯*Ç»×¬\ÉŒ³©=ñ­É¡\Ø2¼UŒ—¢‹ñ2\Ý%.Æƒo\Ð-05–\\ª/L\Â\Ó1	\ËLÂ»³¸®“püÁ\ÔX¢cŽŽI8þ`j,\Ñ1	\çzbž\Î\á\Ô2œ\Ë‚óñýPŸ5‡\n.Y’(·uw©«¾{úP´òË¶Þ´,jU\îÑŸs(<M“#KdŒ [\Ê\ë®`R2\nÖ‚aªz?V1š\â‹.Á«qexƒVRøfFo£p.Á\Ð\â¨cjq\Ô1µ(úƒ©\ÅQ\ÇdtL3tL\Âò“ðtL\Â\Ó1	\ËL\Â\Ó9‘\Ö÷†r2½ŸO\ÞO*Rm51}qF\Ü\Ñ\Ì^x\ÆA\×\Ý%\"\Äþ¤ºG§HŸœZk\ÆXð??H¿¡ ‹EIg¾\\·\êÆg¾¯\Ë‰Sñ…øFL™Š\Ó\Þd\áK(û…›\â0“ðtL\Â\Ó1	\ËL\Â\Ó1	O\Ç$<oQù‹©\Ù_\Ç$“püÁ\Ô- c\Îõ\Ä$<\Ã\å¨\É„\Úð^8œ3§¢+q\ê;?¦Ü®$Â‡–\0),\Ìj.\ßP\Ôõøü‹\ÐV4\Õ(\â#\Ò\×)#k\Ú\Äi/Ÿ¤„(ñÝ¸J¼)\r&´p\â’\Ê\ØM“ðtL\Â\Ó1	O\Ç$,0	O\Ç$<“ðtL\Ö\ËL\Â\Ó1	O\Ç$,0	O\Ç$œ\ë‰Ix:\Çóz©Q3µ!=ðv\Þ\0\\(-¦Ü®$Br2°(§cz¢¥Ç­—ú›i°)ƒ\æÜ¡8\ÉBûvT!^\ÌÃ¡„¼—\Ù‡2èª’7\Ò{\à\Í\Ô*¼Më¨š\ï\ã\Ëñ]WS·€Ž©[@\ÇÔ¬\ï&aùƒ©1\ÄL\ÂÑ‘	ª¾0µ(úƒ©\ÅQ\ç\äU8E¡ø\âDF?Ÿœ\Ê\ä\ç\ÚÁÉœ\á8^6\\\í\Ér,±g¢úPf—j\î’7Bõ?ÿˆªb[\î˜\Ëõ\ÍF¡¸¬£ÔŠ\âµYqŒþøûLŒ·\ËðfR\Ý\ÒJ\Å)„¢‘%\éD„²ˆ`žŽ·\è¼1	\ËL\ÂòS\æ&\áé˜„§c–?˜„§cžŽIx:&\á\éœ\É`,\×>`h\ç\Ê…w\âJ\Ð\×§&ýev©\æ.ys‘\î+§\0™£\Íûf¢m%q\éó”Aß²•÷Ùœ¬\å)º\Ø\"º¥eŠ\×\Û8Dõ­©[@\æÉ1uè˜„\á¦8\ÌL\Âò“ðtL\Â\Ó1	\ËL\Â\Ó1	O\Ç$¼K\È\èï“³™ý\Ú\Å,kˆ„\ÓIt-ù”\×\åz»\ì€\Ð:\è›@‚4tL \ÒÀq33Š–p„\Zk*‹H9+Æ ‰1\ä©\Ì\Þø ^ö2§ø\âKñ\Zk*á¸R%Bi¾/\Å,<“ðtL\Âò“°üÁ$,0	OGVó…©Y\ßL\Íþ:Faiœf\\\æ“ðt\Îeöig3 %y0½\ËaxYQ3\è\í²\Z:\Ñ%-—\åñMû&¢lŸ\Å\ZR„E#Ôˆ \Ùs£!o\ÎfôV]\ÜN\ß\ë1\Å8[‚7\ã\Ë(0ºƒi²„¹Y|syß›ŽIþ`jñ“püÁ\Ô¢#V}a–?˜„§cžŽIx:g(4_œ\Ï\ê\Û.Zâ™†\åô\Ä,å¨›¾ˆÒº\\k—ðp®ô8r©\\“‹w3Q>Q5\Î(—4Ÿ‘Ïže%N¿_\n“,\Ðúfl\éEŠSK—{µFz\ãm¹¼1	\ËL\Âò“°üÁ[tÞ˜\\HS‹¢?˜ZuL\Â\Ò1	K\ç\\\Æ\0ŸTó3\í	½ñ|~Ô¥Ò«4\èL0¬–\ÂÉš\ÞX°o*Ú†´\ÉsþH5\"H6DU{_”ŒEuþ0œ\Î¨jmYŽN„øy¡©\Ù\ßL\ÂñS³¿Ž)N\Ó1	\ËL\Â\Ó1	O\Ç$<“ðtL\ÂòWf¼Uû¬e”•YkÆƒ‰­ô*\Ð7\Î\Ü\á|¦\0e\Ã\Ó\Â\Ñp\äP„\Ù\ÒJ–Žg|8Z	Q,¢XC\é–ðˆðí´Žùr&\áé˜„§c–?˜„§cžŽIx:&\á\é\Ô2¦kytI#.\ï–\Ð1¼K&Ž‰–Þ“\ì‰8&»e/ûŠah,ª¸¬\Ð\ßtTò¾ŠÇ !k\êGüP\Ze\ËðvJ\Þ\Í`\ÌG\ë\è\ÓaJA,”Áš¦\ç\è˜ú\ÞüÁ\ä\"\ê˜\\À\ë‰IX:¦8L\Ç\Ç\é\è\Ý&L}o:§³(6˜¬“?H·–/ª\Ã\Êp¸œ\ÞT\Î8Ó†\ãhÁ 8Se•B†;ƒñQWz“&]i\ê8ÿñ»°\ÇÑ·-žˆ³U#xþø\Ðñ°¦ðäŸ‡™÷\í¥mKpO?\âÉŒ>´\0´p)´„¢t\ÚKW….By-\Â!š„§cjqô“ðtLÂ¹ž˜„§cžŽIx:&\á\é˜ú\ÞtL\Ý:5´F\íÁ[tÞ¸r‡\â|L%\Îô\Z\ZY¹>|^<µÉ½`\íV„\Æ\ïý22kËƒñ\àeÄŒF“¸uüQ\äô¡Ÿ\Û\rýis¤õtô\Í\r\ãD\Ò\Z\Ê6\á2\rJúEˆ²z²ˆP\Ä\æ‰\Ï<B”\×\Ê]ô²\\Þ˜„\å&\áé˜„s=1	O\Ç$<“‹©c\ê\Ð1	K\ç\\]J˜„\å&\á\é\Ô3e˜§¬FQ\Çr\Ó0`jº\àÐ€Qh\îTLùô\ä…ñ 75W¡!°\'Ðƒ¢£Q8T-)ò¯³ {u	\Ül\È\Þüò,;RUŒƒ½l\ê‡Ð•\éƒc©Œ\ëD€´„Ay\ÇJÞ¢ó\Æ[TþbžŽ©Yÿzb²^:¦8L\Ç\Çé˜„§c\ê{\Ó1u\è\Ô\Ð%mµ\ÙtI}p¡p\0š*\ÄÞ¨-‚\ã\ÔI\ÞXœ²\ä\Ã>}\åcÖ”Žñ ‘Ý†\Ø* ÿ·EL†\Ö_½¼P\ßtˆ\r”2Î•¤Š\é\Ë2\Þ\ÍŒÚ¼j9\é€öôI!4	G\Ç$\ÐILx‹\æz\ã-:oL\ÂóSc‰ŽIX:²ûù\Ä$\ë\æk¿‰8‘G\ã4­\ÅC\áJŒ:1XS~N\ÙtdÀxðJ4öÿ\'œ¡\âI}>_U‹+]¼›	YYNuaŒ¾8¼Mú¥/Q8™\Ù_6ž.FOg´Ix:&aùƒIx:&\ïzb²^:&\á\èœM÷©ER\Ç\ÔX¢cr!uL.¤?\ÔeòÉ…”~h©\Z‡#½)Àhˆ¡¡we\ÐÏ•0ô\Å[a½q¾\×$º¤m+v{\ê›\r­Ñ•7Bu\è‹\Õ\ßJ\Æ\â|\îœebK“±‡ª%º÷ž3	G\Ç$Ð»L˜„s=ñ7&\áé˜„§cžŽIx:&\áè˜„\ãõ9ƒ}r&º+ò)8‘\Ë\ë)óA|oÐ/Œ¯\ÆÙ€h¡©Gþg¿uZ»‘þB¡M„j3y/\ËfPœµ²-[\ÞPŸxD(\Ë\ï_£Ax:&aùƒIx:&\á\\OL\Â\Ó1	O\Ç$<“ðtL}o:u\"4_„\å&\á\é \ç4d\Òò\ÅÅ‘ð\n\ÊÃ¬_^º¹\Ëp^–\Ê§{³\àöš\0k\ÑxXK#¦\ßdLªF¡º\×@¤ÒH‹Øœ5gef@|\'V\Ð%­¢z©\ÆÛ±\ÆH™ý\"9.\r:¦GS‹£Žif€Ž©ER\Ç\Ô\ì¯c\ê{ó‡s<‡/L\ÖK\Çd½t¤ÿ¶=4föIKöŸ\ØúÁ\Îó4³Â«¯††^c\è\æ\Âù”¨‚FôŠ\ØqhºÿÊ£b|a<xM\Ü5¥ð¤Ÿ-œ&¸j\nšóF\ÃU1-•tñd§ß²\Ï~kµvS\ê\îG”ª\êY3JÁ:).…â“™\ém}b•<\"”\×\"L¢Ix:&\áé˜„§cžŽIx:¦¾7ð7¦8M\Ç$<“°üÁ$<“ðtjúMBS\"Iþp8\Òû\âBZO\Øû²b.\âñ\\zLA¥8š\Í\ëœöñ\êiþb<x­œ}h¾\Z\Þ0ù[¨.\nÐkN\ï	W\å(\Ôö\á&~ö›Œ¶—‹ñañ8JÇ µh$jr±€÷\ÆGI•ø0‘.i[C4\àx\n·¼V-Œ\áé˜„§cžŽIx—@k\ãSß›?œ\Ï\ì\ïo\ÑycžŽIXþ`žŽIx:\â2·¸\Ö<\Z”„>4.\Ãq²€ùœEa¦Ž\"G¡uÖ¥\ËUø‹ñ ?\Ø\ç­A“¥7PFT¶Rc\Æ4eöP.œ\Ú\Ý\é².›™‡(+·yú]\åc\ÐR4L5Ÿf­x8I,\â¥\"”U\ÞMþ\Þ\Èw|a–†w“¿7&\á\é˜ú\Þü¡š.©/L}o:¦n†\n±4\æRˆ>ýL|T†Uù2\Þx0l#\Ñ\È{B6C°þ_\Å\Ýa}`e`\ÖÆµb<ø‰\èD«—6\reTm!k¢ø0)X(«’—±\Ö#2\ÑV<-CÑ”7ø2\Ë\åiÌ~š5½Ix:&\áé˜„§cžŽ©±D\Ç\Ô÷\æµ¬t}b–Ž©\ïM\Ç$,0	O\Ç$<k\ÏI@÷^h\é9\Í\â\íe±<¤Œ€#Î¿n_~b)º´ñ¨\éC‹‘4\0=\Ýñ\ÔMLl.§¶aóô\n\âž\n\Ò}q†n“O\è-DO+\ã•ð´2^	“°tL\Â\Ò1µ8\ê˜\ZKüÁ\Ôby	^\î¥7¦I¦œ!\íBøò…5w˜O\ßŒ˜\0Gp%+\ã¯À\ÆûŽ¤M\åÿb<\Ø.¾ö; fN¡{ú˜\ì*{Q€Ò‘/¸\äot·eÿ‹ú\Â¨\ÉŠs,Pb™N0\Î<ñšIx:&\áé˜„§cžŽIx:&aùC}\æ@Ÿ˜„¥cjö\×1	\ËL\Â\Ó1	O§%­ŸÚªý\Äø¯á¬¥\0˜ø¿,\æ†r\ßŒÛ‹c\Ú|@\æPe|6m\'\Ë\'£h”\0\Û{+–ŒSóEˆX`Dt\Çeq£¤ž\êY	\ÒKtÞ˜„§cžŽIx:&\á\é­—˜„§cžŽIx:&aùƒIx:&\á\é`À­h\éR\0{÷\n`\Ùros™oÆƒ×‹ÿ8\Î\à~h\Ì\Z\Ö2ºª²ÁL\Zƒ\ÝüAªû\Â.ñc:\Å\Ê÷¨\àßªX\àKYû\ä„#_<Í¥nZ\äY\Æu2N³ŽFk,s\Ï\ï\äi\0òPHè´¹W\Ä <¿(g\Ì@1\Êlý:)Ø´€Ò…q\"\Ì`\Ü\×\Öª‹\Î/Šk\ê{\Ó1Í‘\Ó1µHê˜¬—Ž\ÉE\Ô1µ8\ê˜ZuL-Ž:¹¾‘IØ¾@ª”¡p\Ê\Ø\Íþ^\ÏK\äµ-0\êR¥¡å‚’¿\ì,S²õ_C\éPÔ—Ñƒ\É†¦Â±pH?w\æP\ØSû3\îc¥@‘\Å<\n\è‹\æ\ïý‘\Å\Ù\\Æ¯Æƒ×!\ßA}çž¨Î§5ý\Ï,¸Œy£Ž~cP\×cd¸»RvW*c¡®º\è9¶2<ŽG¶>“¡eJT,øÅ²1¨4Œúx”‹\ÏÏ¨“ðtL\Âò‡÷\ØS\î&…N\nöYÕ BRˆz7‚n¹d.Á\Ô÷¦c\êÐ¹À‚\âS·€ŽIx:&\á\éx‹\Î“ðtL\Â\Ó1}G§™xC!-j\Ñ \Ô\ÒúDS\î\0Ø²À\ÅJ,;,+]\æ`Þ“ 6ƒ\Õ\0G\ÖpXù\Ù4Š®\çW¡\ß@S\ÏÉ¬LY¡†|²0þb<x\Ã(¢\0-½\á\È…V™\×®Aÿ\0k¯)¨g\ì\Õ@«ÖšÇ‚Cq¤SP‰C\ÑT0H%tk6©\Ý\ìC öP°v£<\\\".\å.Šx5Á\ÜD\èD\ÜTkÁ41>”Lö\Ñ\ä:z\è\Æ,.¦9r:&\áé˜„§£Î„Ix:&\áé˜„£cr!ud²µ/ltym«´X[+F£¹j4\Z+F¢¶d(.PœG\èU¤E”nñ \Ü-ö<–¿l)+¬¬«ø^*ÿHZVK/–Á¯\03oŒ\ëi\ÂxðFÒ°d\ZŠn£›\ÊZªòkŒRl´f’(e´€\å“\Õ(•\Ä`UÀóˆ¸j—(~¶x(œt\'\ì¥$ß«¥\éªzP\Ý\n¼»®3´\ËrŠ\ê=O\Üéº>°si½.‹Á.\Ã\Ð÷¦c\ê\Ðñ\îwóS·Ž©\Ù_\Ç\Ô\ì¯cjö\×i¾\ZK|q–°ºx\ê\éb6£0eC£Ap¤ôW³}Zz\Ðû¢0Q\Î2$­\ÚôX\ì¬(ŠXY2Ä‘\ï\ÙC*a³T ±\Ï?±ˆš\Ë\í\ÄxðÓ¢\î\Öÿ‚FQ©ƒ\Õ\è™Tk¯¤›\É\Ú\å£P]6ÂXe\Ã\Ñ\\\Æ\ã³SöÊ\åLpZC\âÒªE~Û„)x‹\æz#ªD(5ªô\'Rˆ6^Cc”z‰\Éh\r.°P\çYk{\Ä\çÀl–Ž÷ü8o\êh\r}a–Ž©oN\Ç$<“ðtL\Âó£05\Ér\à!›ù\Ç|OHÖ›­¤\ÕcZ#¥\Ý\ËRœ*ê†^ü{=¤”A@÷r8‚ú\ßù?Gsý40ü,8÷­\ãc¾\æh&J}ô,\n«„…º7ýô^_«j\n\Å7NMº—Ô–7\Ö\\\'.ÕƒŒeõP:^¹‰¾0º˜~p\É\Ô\'+\Ì\×jn\"ÿVŸ3ut»$‘¿\Õq!}\0Î§Q€Ä»¡\Ä“©cœ9 ar1uL-–:&Q\Ç\Ô\â¨cjqÔ‘_˜òL¹\âEñYµ0\ÏóGÃž9u)Œ©z\àt²\ì«\"ys+;g:\áƒ\Ôþhù\Î\ÏX\ì\Ìeñ\Ó\Æxð3g\Æ\n`\âOú\éŠ²+k³Pº­qŒ3\Ú\n|%¼}yÙ³Þƒg\ëlA2…˜2NG«\\ŒIy.žûœüý¶J 1o8\ZX˜DŒ!zDx.õ\Æ\Ï20	K\Ç\Ô- cžŽIx:&\áé˜„§£D\æƒ÷*†\âXùp\\(‰f¦¿3›•bª\Ì~€\ÖØ¾p°ü4%NDÍ­ÿ‹Ú©Y¼\å\í3\ÆxðóJ\ËþŒ–¯|­,ô­Á¥°Z²`M\ìw[R…=yÀEtÁ™0	\Ë/\Ú\âW\åJË¢\Â\ÒZ+\"TcioQd	\r\ÙC\ÕvÉµ´†ipµñù\Úui¿›7&\ë¦cžŽIx:&\áé˜„§cžŽIx:&\á\é4\'ôñ	,¥nºV©]¦mc¿üú÷ÀªÏ§\àL\Þ\Ô,Z\rL\×ƒ\ãW~ö\'\à‡¿†\ë›ÿ\r|å»´°\ßFÿ0\ì\átœ}&+\\²Z\0c]^%\ãq+Û‹jµ-;]S\éG¬N—8Ž¢\0®\Å\Ò\é˜\ÄcžŽ\ÞRi\Î\Õþ\ÞJ\î“°t.¶dŽP]Jö\Ò1°•3=*ZTŽ‡µ÷D\Øû\ß×¯\Ã5\â°û&l·ý\ßü\àû¿„ó„ýÿ\î\0nÿ»\ÊW\Ìgþšòý¦–ÿg\àp\Ð\0÷\å3\0\0\0\0IEND®B`‚','2 ÐºÐ²Ð°Ñ€Ñ‚Ð°Ð»Ñƒ'),(16,NULL,NULL,NULL,NULL,'12'),(17,NULL,NULL,NULL,NULL,'12'),(18,NULL,NULL,NULL,NULL,'12'),(19,'test2','testa','test 2','‰PNG\r\n\Z\n\0\0\0\rIHDR\0\0\0\á\0\0\0\á\0\0\0>³\Òz\0\0\0sRGB\0®\Î\é\0\0\0gAMA\0\0±üa\0\0\0	pHYs\0\0\Ã\0\0\Ã\Ço¨d\0\0\0tEXtSoftware\0paint.net 4.0.173nŸc\0\0 \ÊIDATx^\í [Ç•þe|\Ì\Ì\Ìlffˆ“\ÂBw»ÿm»…\ív»[\Ür›´\r¶‰ã˜™™™‡F‡Á1óc~ÿïŒžœ±<–­<;‰“§\ägI÷IW÷\Î\Ì7\çœA€/óÁú·i¨ÿ\ÓÝ¸ð\ë;€\ïýø\ÎO€ýðµ\ïþ0âŸA_ƒ«\ßm@\ÉX\ß\î =˜\ÒT§\çd \Ï`ð×€\Ñ\ß\0¦|ø\Ç\ï\ßd~}ûp\áD\íoÿ‚Æ¿þ\röi³€\ÅË˜Í†|¿‰1ü\Üò»\éÀmU\Ñ?¡\Ãx¤7Ž\Åõ\Ç\Éø8“05ICÑœ4ö\äQ@\Ê2§\ËG\â9_:5%#QW4…#Ñ’?\Ö~\ÎT0tL«ƒkÇ”¦\ZÎ‚‘pó¤•y\ÓÀ|ª+‰jæ™€ŒId\">ÎŒq°¦Acú(Ô¤@uú–ª8C£®`\njnùo4ÿ~*‹‹¡ü|N1üÌ™\Í\ÚnòaO¤B\0aHG’H\Ú  “d“\â	\ÌlÌ¬BRÄŒkÃžOQ\Élˆ\è\nY0\ny\ÞB‚¢qÆ‚q	¦‚\ÕÁµcJSæ…‚Ÿ•üa\å\è`~\Ùò†+\Ï|\Í\ï&¿7®‚qp\æyø9V°(\ä÷³ùœ<®˜A°‡÷ci\â\ßÓ¦ \é~Ž\æù+X¼\å\í3\Æxð³ þ?AK*3# /\ÕÍ¹Cq¦r­\Õ…­™R<ö\Òap”\r…£bœ•CR\ÉL~O(fF3#X£:‹(<‚ŠR„ZBŠ™y\"< \'\ã\åó¾\à¹:h¦4\Õpˆ\Ðó´†(’\ã’/’Ÿc\Ô\ßW¡öwO~3\ï[‹û\Â^ÆŠše=y¬\'ó¸’y\\\æþ\Ì9où­ü\Þ\×Y®†\ál§rK×¿ÿ0o\r‹ž¹<~š~jŒù9œ–ž´rC€\\Š¥\â&˜„\ï³ú\Ó\raMV\Êcerœ/Ÿ\0W\Åx´VAS\Õh\ÔW1C\Òø¹tfB&-d6k½\\~7ŸBÑ¢˜ µ©ªQÝ¨L¥8\ím˜\n\Æ%˜\nV×Ž)M5¬\å£(\"7ŽRŠ²d\\\Å\Ú÷%/\ÛòS„\è«X=RËŠ¸¶lj‹¡)o l’ÿ*\Ï)BZJT\ÐZòœ­<G«\Êÿ‘pe±‚NkD/\îTˆ\êùoGCùü”0¼‘YµÕ™ca³T\Â\Ùç«ŒÛ˜¨Ù„	\ÞHKW[0\0\Ö\\Š*—	Ÿ?-\Å\ã`£õr2AóI.\É&™nlŒ\'Hk\Å´”Gc\Ù04”C=­¥\0f€W\éh7\åc\Î\nf”É…\ê\àS\Ã^5ŽJ7\Îr\æ³P\ÆX±š\ÒÁJdu\åC\ÑX1\Í\Ì\çVV¾ö£\á\ËWB\ËWF/‡•´³j¬U\ÑHKX]>ZµœK\ëk\ËAo†\'½…\î\Êee] ^\ËE%\Ë^hZ,Å¨\íEki(³7\Z\ãÁmÁ*Šg\n_UªÄ·öƒÚ¤º¬‡À‘I‹–\ÃZ¬”\â\êy-\Ýxœ,¥Ê„\ì%\'óÄQJM\'b”µc‚\nžøO5¼Œ`\ÍJw†8‹\è\Ê…–Ö‘?ö<f†\çœ|&X™w‚\Ä»»C\æ7\ÝN*\Å¢\Ø$ôcb\Ñ®8¤¼ˆÅ£eC\Ú@8“ûÁNÁJ<eB>›H’†Â•1\ÕEƒq¡jš«X>$†”2“ÀðG®E¼°\n;x\0\êz|\r³°Øš\Ëòõ\ÆxðzS?ù¿q>Œ	“\È\Ä*db¦ö¦\à(\Æ\á\Ã\á(ˆ\Ö\"Æ€y`Ë§(Š™Ð¥k)­d\Ñmp\å¼ˆrS)0q;‹Äšil\Égb\nym\äR¸\â\Ê1±=ˆ[\ã‰C¯B\ÑÁ§ŒT¦§_„ù/e@†›\\Š\å\"¬PóFˆ`‰j¼)b…Z\Â<––T	O*ùL«\é,\ÈÊ¶N\ÓZÖ«‘\åN5\âÉ¹G£¥tªia›{\Þ‡4\ê\åSè¥“•\Ðm\Ù4igË£¡<_oŒ¯·~[ù\à:.úñŒ™\ÒAŸ\',\ép|\í;,Î†ò}0l/¶¹«\Ñ;§\Ò\Ï\ï`71G\Ð{\Ë\Z\r[(=0CY¿¶‡†\ïüŠZº\r¶ð^Fšn¶ƒ>\ØúÝª\ÜTCžº\îUpþ\à,\æ\æ²ÿI1ü¤4g²ÖˆŒ³9}\èc\Ó/½…\âs÷ñx¸\Øô,H3µþ¾ƒ>o‡óû1veÙ­ƒ\æ„^8Y6‰\ÅÝ¬O‚ñ\à\'Áf©\ÒG¡9¿\'@7ôL\Ù šñ1f\ê}Eú\rw\ÐÁ\çŒ½\ÇIC`O­ Q\nTUCß‰\è\ËboÖ‚¿ú\Å\Ì\Õ@\Ä\Ø3‡¡±@:×‡ ±r%\ÃQ\']\Þ\îg\ÛHˆ‹\èë ƒ\Ï…#Q3„^]\Ëv\åX50Ä‘\ÔzO\Æº§õó–S]øñ\à5óÀ:þ›ë¨¯ªQ,\çRz¢¥…%}/Ÿsˆ\ÒnHŸg\ì þ÷:ø¼Q:õ±%°Ÿ‚¦\é\îš\ÈP‹V2ñb\Þ@œÉ¥‡w\ç\ÊÁ k\Äxðš˜¶§F\ÂÚ—&ZúUòiñJn…5cšz\ß[	o Ù«3\Ü[€\"\ì\àsNKi -aŠô1OAƒ¡\ìs+lE·r{1ƒq2k(NMCYxi\ä\Z1¼*sh;•¡¶¼ñ\Â;\è\àKCZE™g)sua\Ò\ËU0¼\ZŽ\îý\Ñ:ò+\î,¦ë ƒ/=h%£û¡aò·\Ðbùd5Æƒ>	\ZW\Þ(œË¥*ƒgM\ÖA_\Zs†õý:\êJ\ÊT¹.(ƒn|`<x%¬9üañ{Œ„­x¬‰üAC³n|Yh.º­Ò¶1jNcE™2™r1kÈ„ñ ‰úoÿ\Zˆ\êG)-`\å\Ô\É\ä\ÚÌŽ~¾¾\ä¤N‚«b2l\Ù2c8š+S„\åWKÙ˜µ\äñ 7M-bizË¨ô\Þ#Q]Ü‡?4-}½º :\è\à\ËF\Úxµ.zŒ³ža\Éhœ\ï\É\ãÑ£a›:—ò1kJ\Çxð22Æ£ZúH²F¢¾\ÏhØ‹‡Á&³Ù«&š/¬ƒ¾$¸\Ä0\åAmz…2¶Šqaò@œ\È×‘\×\ÖPc<x	“þ\r\'ð„²\ÈR•Ì„†s¹\á<…µÀP\ã…u\ÐÁ—…³•=i‡ñ}P“MA–MFS¯ñp¤÷’ú\á\Ñ\ßL£Œº\Ò0\Ô\ÑgA\è3!:fCt\ÐÁ5 +\Zt¥c<\è¡zô÷:\ØA\í¡\ì´Vú^»\ÆxP1cšƒ\ZEhü±:\è\à2=&¡\ÚRAI4Ö†ñ \"‡ñ_ô0Š¯c>`|b2‡£±t<\Z’\ÆSV\ãAE÷~@ú³\0;\æv\ÐÁµ‘9õe•Á>”•Ag\Äx°¾ôVÔ§òK™})>/÷SŸŽ$\èë ƒ.¥pP:F\rli.ý\Z\åu¹\Þ.; 8»ôÄ©‚^@A\ïKO¨‹¯c*R\\k\é@\ÕX/ú¡\æ%/;€!ÿôû\' «/l¥\î…z/\â-ÀvÐoz@c%­¡,R\\2u·R_^š»\ä\"€\ÊM\à—zŒto´a:qtpMÈ–-U\ã\Ü+|\Ç5¨”2»Ts—¼Q„R\r2(¡V\Æ6¸ƒ:¸F\n†£¥d¬ebú(¸\"{Pf—j\î’7\rÿüµ·›tK (Zd\éyÓ‰;è ƒkƒ\á›\ì±q¶Œ1a\é u\0ª¿ñ\Ê\í\n\"lL\âÇªÝd›1\Ù<\Å\Ø\ì\ÚA\\jcÚ±8Õƒ‚\ì=YYÆš¸~”\ÛD\è\ê\Ü¨\ï¡\ìXSBj:qtpmd\Êl“P\×k\\½©§2†y–\"\Ê\Í$Â¹+\0YÐ´L:\á‡Á¥vÀe0i2±t\ÐÁ5\á\È\ân”©˜W9µU9Î*J\Î B\×øª½\á\Ô¹9\Ã`\ÓY8\Åx\â:\è\àÚÝe\æ=rh©«ŠÁ°\å\Ó:Nþ%e\ç%Â†¨¡¨\íK\ë_dCó \ÛøÅŽI»t\Ð¬ec\ÐR:H¤kš;\Í\åý\Ñ\Ð_töñ~E\è\0›\ìŸ3†_ž ös·•x-\Þ\ÛÁe8KÆ´‹‹ ®„\á7ý\ÂtN?0]³Ž\é;—`º¦/Ž*jJºü\ä9kj‹‡£µŒÆ­\ë \ËE\èˆ[¿˜Ë„+\ì\á5c*x\×\ÓoúƒéœŸ&¦kú\á¬`\ZH\\X\Éç¬‘jk)E\Øý\ã!l‹0v¬8\æS±y\ã\à,{)¿l8q#û\è·\Ó9?O˜®Y\Çô>\ÆQ\Î\ç,Æ€b\àrF¢¡h(u5ñ¶„¿ŸW\â š\Éá¬½(\Âl\"\'½ÀMÍ®t\ÐÁ5\á(¥”Mc¤\×!w8šŠ‡¸Eóùö;•\Ý\"ü\ê/\àJ\Ì\0’ŠU\Ãk¨\ÚBš\ÒRŠ\Òp\â:\è\àÚ°Éœ[\ÙÅ©„\äCk\Ñ`¸Šù:e_ÿ¾&\Â\Ò†+{šKÁ)k\ë\'óC²ª°,\í\íe^;ðBFD´Ï’!W\Âø›~`:§?˜®Y\Çô\Ó5}™°Ñ˜¡HÒZ*k¡•i\Ã\à*£[zQ„\áü@þP4•ô‡½—4§\Ê{ŠP\æ@NÜ†¡`úƒ©\à\ê\ÓL\çô\Ó5ë˜¾£cº¦/­\Ê\nRK…\Ã\á,Gˆaß»\ÂÝön\Ên2…n\Úd{\àx*UD(&\Ôp\â4d_\Æv`*¸:\Æ\ßô\Ó9ýÁt\Í:¦\ïè˜®\éË„¡,\nLWTö4t\ÈÌ¤!J[.Kþ\Ç\"<™8\Öl-c lUL@º§j“Ã‰¿L\ØnŠ\'¡µ+¥\Æ\ÌSþ¶\ïßŽWù[\Ôü\äwÀý	­\ßû-NÿËaÿþÿ÷»Ÿ\Ïw ù_~|ŸŸù\îo`ÿ·ŸÁú¯ÿü\Ç\ÏaûÿE\Ëwùú\'¿A\Ówÿ€ÆŸþ­yü½lV€\Ý{Áõ¿B\Ã÷ÿü\Ëß€ÿœÿþG4ñ71\á{@x¹\Ú\ä¬L\íñu^\ã\Ô\Éb\\\å\Ì\è~S\Ð }R]\á\äŸ\îCõ\ï\0¾\Ékú\îÝ°ý\ã8õ“»\Ðø\Í«¢\Ñó6 S\\$\Ù\è²/\Îý\ïOq\â¿„óÛ·\ÃõO¼\æoþ®û\r\\\ßû)ðŸ¿\à=ýø\ÑÿÁö\í\Ãõm^ûþ\nø\Öÿ¢ú;¼‡oÿ-ÿsZ~v7\Î”	\á“x/\ã\à*bz\ÉLi!¬\ÃXˆ\Ö@¬@™X†‘hIÿL•Ë£®\è’JK²CV-Tu•=\ÖD÷@n%\Â3IƒaË‘?’\ÌA‹°°C„ ­¹\ÃP]4€¯™k¶\0gkg\Ðt­-\'\àÀ\Ô9Ï \Éu.\Ô1I\ë`E\rZ\ÐÀ÷\Î6\ìü\×»£p\Ù\á²6-\ê³-\ç\ßÅ““¾Ž\ËG\âl¯‰À‰Cü<\Ï\Ï\Ï7»\Îð¹\Ö\æS8>s:^N+µ\ç04V\Ð[IfaNŒúTffó.8Zs˜\é)<\Çñ÷š:4\á,¯®‘ç³¢\ÞyGV\Ì\Å™¨.g\É8­D\r\ë­g\0¯\Ý\Ö\Ê\ëk…\ÃÕ€z^›|¯¥µM5°:šxýÍ°Ù›Ôµ)šª\æz •\ß=}\ïý\ß\íø…­%ojd—¢<–£Š±˜‚/•26ö¼¡\n\È0ISš‘Rt—ˆPõ@x‰ðB\ÒP8e\Û3a\Ö ´R„`Á\ë!ÉŸ¤1H­\îJŠºGF³£•¨¦ü\Ð\âdY$v\Ò\Â\ÂIY[T¡uI!­%vwy¥\naop±Àòµ”c–]8y°¹*F\á±\à\"|(±\åeÓŒ\Ó\ÎF~\Ì\Æ\×vb\ÃKófaI·H¼“[†–>\ÌÈ¼¯Ò²Œ€“ß…\ÊfÁ\Î‹³Ñ´Œn+¿W\ç¬\áuò7ø¿ƒGÞš~?¶X‚ñVd-\é­8—7Z\×Ã‡y\í\î\Ïñ\n)<\êxŸ\Ô ß:•\×r/\Z\Í<«ÿµòúœ¬˜öÿ\ì7\ØRˆ\Æ,\nl\Ð\×\èv†3k \ì,W(æ½•Œ#g¬9ƒ\ÕßŒiþE\ÂK„ªoUD˜3¶$z\Ö\'3\Ód¤Œˆ	\ÔR\É/\ÊT&©ù\rÍ®_&\Z\âû¢¶Rjr¦M\Ä\Ô<ö$j›Xú¨?Al™hJÊ¤”QÑ–“r+\ÇÄŠ9x¤©f‘=\æº@\íÙ”@\Ä:ª/PÀ\Æ]–H,\r- `«y®¶ß¨!ç©Œ>˜µ\Ó-Ý±=8o•0Ž/¹\rµU#Q×™œGKË‚]8gCy½´¸®\n§ŽW\×\Äg\Zo—ÍŠWfN\Ã\\K6Ç§\ã~¼\ÇAß¤û\Ê\n÷\Èaõs\"@õ\\<H% rn\ä\Õó¼—\ë?\Ë#\Õ|V7/Zm\ä?N¶þÏ¯ð \ï\ãõ\Ð2•ë©šGþ\Ø3Å³\â\ïI\Å\è¤uüR\ÌWUÖže§d\ï—:“\î	©Œr#&¹7Œ±`þB´¦ˆ\å£:\å\Ãtšs¨¾|Q³v\Â/#tó\Z\èþAjîhy\ê\Ø\Û\n5¥„§\n,_\Ë1[\ÝN±zò÷s|!n§]>(nj+ÿ£K\Ç\Â+8~\×Jó3m\Äü®S\îH‡\Ó^\Ã\"\Î3órþZŠB,\ïk7\âÎ®\á˜Ù©6\Åe\àHTo¸h]ý\'£>¹þ\Ö\â1¨‹a\å\Ù\ê¸Tç‰—RM+ýÌ‚Yx¨S(¦w\nÂ‚n\Ñ8š\Ð\è6­ï¾‚öjþ®S9\Ôb}ElÊ„»xrSVž­•÷\â\âu;[\Ôõ‹\Å\Í^\à\ë:~g\Ý]wá·\ã°2(k’rpž.²UFˆTNv[\0)”\Ê\"Žd¡¤0MiþE\â\âýŽR^‹<‹7 ÷ödº£‹V\Ã\Òò·ip¥ð`>\Ý©\í†¹E(ý\â\Z\é¦õ\ËHþ84\Ê\Ú|º©\ãÃ\Ð*Õ³¨\ÒL°P‹ES…³Q\n©“…\×-1pnK\âÖ£X™F\nTDg—\ã4n\"Xù½ú\Ø9øVÌ·Daž%‚\ç³Å¿ñO\çøô‘³\Çù\æ¹\Õ+ñ—n\á˜†¹q\É\Øa\É`\\H\ËÒƒn_.­J±hbFgŒ§\Ä/úá•ªk¡Ž\\\'Þ¿\0S±6 ë»¦`C§4u\ë{ƒ\ç\ïŠZ\ëyÍ¼ºzÆüjcÿ•Š¦†¯y¢K·Ù”ƒ\â”\Òa¦\ßýû\Ûñ@·T,²\Äb^X‹(Àq‰|]	Ñ‘%¡]S\éƒ.gy3¥ù‰\"•O\ÉØ¶xZ“\Éò¹#)Bz/Îƒ¥\îŽ{€4,`m%Ê¥\Él¨”‘2üp‡\é>Ýª\n‹£6Ý‡“ÿñc<õ\ãÿ\Ã\Âÿ\Ûü#¬ý\á±\ïÿ‹‡¿ýlø\ß_Á\ÕPC²5vb\Öv–T–\ëSO¼Šÿ};þ¯Û±û»ÿ‡ÿùlü¯Ÿb\Ã÷~ˆe?ü–¥cu@¦±P\×)\ËR+*¥Õ¡\Ù!v·³(Ô…q¸?9\róº¤b\ç\"’†¹VUËŽ\ÃÙ~p´\ÖÀ)\"a\\)•€\\C£­\ç\Ï\Ä\ÔÀX\Üû£\ÓðQ¡Xk‰Á±šw\è±RPò¥&~¸•¿i·\ã\Äö\ÝXñ£Ÿa\ë‰Gü{\ìý\Î\Ïq\à¿~‹\ßÿvÿø·\Øÿ£ÿ\Æs?ù?\ìúÞ°\ë?Æªò\á\Ø`IÁV²&1;\Åâ‘¸Rœ å³•Mtw[ˆW!52”\Ë;½¿hˆEt¡;¤®$~÷ˆð\Ï‡¥\æ·a\r\Ïå·‰°¨M„¢\Þ\\\íd_RlÅ“T±öbÁ¡ûà¬¼¯òù\ï\ÑX\Î\Ø\êo#°¸k\ã ü28‰\ÖCZDCY”­b[\Ï\âØœ\ÙøS@$cº \Æd°¸{ ft\í„%–x\Ü…Ù–P\ÌŒÂŸ\ïI\Ëj“˜j¢žFœX—«‡g\Í\ÃK\æt\Ç_£øœ‰_„¦aFb>\êÅª¤‰\'ÁÑ©¿X­„dg\Ú$2¤®\äŸW-\ÇZÂ™]\â0»{\n–¤c¥¥\Z\Î|$—«¡ˆ–6‘Ö—–ø¯¿\Æ]ñ\á¸;°–\Å\ÆcA`(\æ„\à\Þ\Ãô\à`,\éJ×“÷¯ÿ¯qx¨k\"E\Èó3.üUl4¦òY„øxd!j$\Ü\éq$\ÓV\â\Å/\ÃBb\Þ\"”Žû6:R\Âù\ë;aÁ~†3t?eE(”LT­6?\Ü1EýSn„Â•êŠ‰j\ÉCi\Ø\Ò-³\Ãý-.³£Sh¥Y\Î\é\ÊI)fa®\ã?\î\Î	\ÞX¿šŠÁ´˜T,\rJÁŒ\ÌJ\Å\\Z¾…!\éx(\"™¢J¤°\Ó\àp\ÕRˆ´D<‡¸}êµ«\ï/Y†\ßS„+:\Ç`Ep$¦†`C÷\\º±1¸\')\ïöf%Z\Ì\Ø\ËÒ—nlú}i\îTn/_J÷ú’¹˜f¡x\"3°08B“0ƒÁù“oSV\åu\Ê?\Ê\Ût\ÚñÁ\ìñ{Vki\Ùöv\ÉÆš ,\ÌN\Ãú˜BŠ7÷G\ÅaYx6f\Ä\æ\ão±iX\ÃûK==6‹:\åbAt¦vÇŒ€\ìN+Ã‘ªÑ°öB\Èôd!T\rJ22«Œ–20\ìô8¤Ï³”î›¸Ø†<¹©\ry\é\è’Á?ùEøÿ‹³m\",¦5ôˆ\Ðð\å/#­…\î´q\Ê.¬L\Èx¿ž“p¶x(^O-Ç¦\Ð% ‡h\åfZh	ER’[´&M—ˆp¶%\ÚoÊ©Dp\Øð.\Ý\Ñ;)ôU–8¬¡ð–\Æ\Ó\ê\äR‰¸¯S8	\ÎÁñ ž!/\ÝP4Šm»\\„Sý\á[\Ë\ÂÿFG*K· {f\Åe\à\Î8~\'5s#)º€Tl¦\å›Of§ð\Ú\"±6,sc²\ßfªcó\Â30?<+\Ã\Óðxr	\ÎH‡})\ÓW„(1\Ïížº\ne°¶>DñÊ¤%Õ\'7W!\Ãþ\í¿P]\î\ÞÅ¬¡ò\Ü}Jˆ#f`õXB\é\ïJ·M\å$¸zLDS\Å¼•2›b²(À@\î(J°Ud\'ºº\í¡„u-N+š\ê/\àõ50kÀ$¬.9¹}1“q\ê}½Faf\Å0ü®¬\Ï+\Çòò!¨ú_8\å¤CYg¶„þˆðµ\ßÿ÷*+\Í\ëÀ´nqøS\ç0\Ü\Ù5³„\ã\ÏAñø;+Ÿ?¥cZr>_[°1(\ëhõvDõÂœ€dZ\Æ,,Ž\È\Ä\Ü\î±XE«øL‚[ˆ¶J±xcT?¢5CC0}\é²J?¢#ŸB­”Éœ/7\rW¡ó_D~ýÛ¨“y„’\0\Ò\"š?Î¶>\r\Õe\áijý’¢fFË²Ò¬,\ÞB®¤ÿ&«\ÑUŽ‡³h\n\Þ\É\éõ´\02F<\ÇxNÆº YŠ³Œ’iŸ¥QF\Î ÿIk,ªk¨J\\õ<ÒŠz-žCZ(ù«\Î:ª‡1\è¹F¼Á\ï7´ˆ_\ìTí—ŸT„¼ŸÆ†#@\Ó9\à\Äû°\×Ac\Ó15R¨¹F:ø\ÏS\ìü\Í\ã\á\Â\Î-˜ˆ¥Ñ˜NÁ-\â½,	\Ï\Ä<±†Œ—òž\Äc\r-\ê‰\ÅøP\Ê]\Ï)\Ê\0X\Ó±¢£ð¤9_•;þM\Í\â¹<On*¤\ÇAÐŽ\é\Û\rºnûŠp\â7\ÐX&\ä¤GŸp”Ž¢o\ÎQ\Êýø\Ë_F$-”\ë$¢“’7\Ü=¤OFIa)ž{¯‰x+¦ˆ.bN´œ‚„Q¥™¢i·%´6«¡nÒ²)\ÇD\Ò\åp\ÌÕ‚£\"4ù!\éÃ³·À\ÞÚ€s-„Í‰³r\r¢ÁvŠ°\ÞÎ¸¶­…WÁË’Ïˆ£+\Ï\ÇX\í4ª!n\r8þÂ£øM÷ \Ì\î†¼Ÿu	UŒ³° ˜q\"\ïwYd&–\Ò-]˜€\Õ!©\ØW€Z¦©½|’ZP\ÍÊ8PÊ¢p.–4¾<On*®\"BLüE8ü\Ð*…L†¨\å¹]/g\ÙX5^RV\Ö\Í\è—IAù\ï\Ò\ÊU<®\n‘¨†š,&lŸIp2®y-²\ê[e,I[	u:Yf\Û\'\ÂG+\ÏÀó0&„•E\ß#‰÷¨›5“ŽyQ_\Ê¿€¦JOF\Êð`{\ÜQ9§ü4ÿ—º\'þ¯\ëy\îzQ·üQ†\îñ³u\Ï<\Û\é–/¢»zO@Š\ÌÆ‚ $¬ˆ\Ê\ÂÊ˜Z\Åt\Å\Ê\èl,\æ=\Ï`\\ûtl)N•1­¥‘ñvk\Ú@\Ø2û3™¾²$„!On*®ŽþX\\n…]šŒ%\Öa\Ì\ã`\Í\ä\æHpüŒ\ÛkgI›\ã“))T¼¬\Zk˜ˆ2$K–¼hH£ [eà¶» ;Z[Xf\Û\'Bõ,È“\ÐAšù‡f I]´RV§\rTÇ¹¦Fe‰m+¿\ëVf»D\È\ï\ÙZ(¸&\áÃ‡\\‡¼gÑ¸•/jy@\Z¢<Žé¢°‹÷6G5\Î\äb>E(¢[›«¬\âÒ°L¬ˆAfav÷$,g\ÌøxR¥\êGl-+<G&\ã\Ã|z_„~Ä«‰p\è?À\â\è3Ù½tX½ÜEØª¦2uˆ²p+…(\"TÓ…ª&\Â^:FµšZÅ½\è1^\r“\æv5\è¡\á‚*ÀRP\í\ÖK»(>‘¥\ãN\n;ç¶–œ#5ü\ãy\å&:kû»|\Å\Ñ\"‘¢¼pún·iQ\å\è\ìò¼ŒLeˆ\ÐÕ–\×ÒŸ(\î±\êW|úI\ÌLÄ£¼Ÿ\åA	X‘‡¥XšŠ\åa\éX‡•\á9X˜Š\Å\ã\Ú\Ä2\Ìb|¸Œb|\"ªH\rq“. ˆ«–\Íôü\"ô#^E„Ž·\Ò•þ@OŸ \áø\Æ.-È…\ÃieD\r\ÝW{µ*ð¢	]5ñežÁ\ÛVaž%3ch\ÄR„f`^`.\ã£,\É\Ä\ì\ÈTÌ§UXeI§ld*¿(k™X·\êžÇ¡oÿ\ç\î¾/O¿/ý\áv<÷Ÿð\Ô/g\ïº/ÿ\åvº\ï<ñ\ß?f¼\Ø\ìŽyJ„\âNò\Â\ÞX<\Ó-!*>[’…%ÁI˜KV§iI\åºu¾ú\Ân<ûx\æö\ßbÿ\Ì\ÛñÌ½¿\Ç\ë÷ÞŽ\Ç\îú^ùû]xûžp`úýxò¡ûñ\Ò÷~‚\Ù9˜_„\éðhx9–ñ>}±24»%«;#~P:N\ZÕ¡1­â‘±LÊ¶\â}(\ë!\ãPË¥rü”\ÕÞ·tˆ°½\\›mWá¬ˆ³N5‚¬–gyu\ÙJ<’\ÄX+¿Š\Ã	ªüAK\ì–Aq\ÅaAD\ZV„fN¹g`´S„oÿõ¬,À,\Æow[\"0\Ç‰Õh\Å;\'bA·tlµ$ò|Ñ˜\Ú)[ó°–\çZ•‡\ÙQrþ\ËE\ç\Í*^\ÃÒ t’†\ÍQ9x.­\'ó\Ã&­ó\Úòžô––T]÷H”/@F¯\É\"l/7Z„\ÒÀ\"œ\ÂG\Ë\Öb!…¶\ÌŠ\é!qj´\ÌrôU]³°\"¢‹;ó¼±JU{F\r{k¯OSø‚ó±.$‹¢²°®K*6vMÇ’ˆ\\¬Œ-Áª„,LOHÁƒ\á±\ØD7s—%›-I\Ø–ƒ-YtC3}²*(«C³±*<kBÓ°…<[ˆ#Yý\Ð(1a)tKG\Â.s%¥ñ\È pG\Î0·µ4\ä\ÉME\ÏI\"B¾<M©^Í©ø\Æ&ú\áJÆ„—ˆ°±\Ò\ß\×hk\Åó—ó\ïñ\Ø\Ò=ž1]\Zv\æ\ãþ\Ðx\ÌeažŸRy±9˜\Z—Œ¿tÂ‰\æcnñµS„¯-‰\Û)úÕ´lKS²°14«»\Çac\Û\Ùñ™¬°4$\Z›’²\éN\æbs\ã¿ðdLK\Å}ÉŒ\r½Dçšò&\"\äù+/\íMÁ)x*±o\å\0úÞªÊ¤=[Æš\Ò:JûE‘X\Ç/@¢\Ðc|‡\ÛË¡\Ìd“\Ùy–¯ÀÒ€$¬\n‹\ÃÔ˜ºƒŒ¥ø~}·,\ÆVù\Ø\"­™X˜\Â/2Š¤˜\Ú+\Âs«\æcV—(¬\ë‹\Å\áQ\Ø‹±X“Œù¡qX™’‰EñiXœ”™¼®ùüÛ†\èLLŒÁ½QñXN+\íƒU¼waE(­+Å·$iÀô\Ù™]ñ…¨-\Z»,!_1Ž\é\Ì4!J­4’•‰ /Ï“›Š\Êq\îh{¹\á1aKœVšl\Í84g²„av@0þ\Zƒ¡©XG1m\Î\Ã\Ê\î™\ØÄ¸pc\ÂEéŽ¶œ£;*nŸŸÿ\ÑO±‚q\ßjK,c\Ï`,&\ËÈ‚®ñX\Ø)ž¯#i\rƒ±ˆq\é~f[Xöð|\Ð%}$º\Ð(<•aJ€\Ä\"\n+B3±,8OGe\ãT1\ÓvÀm\ÞxX3\Ã)£–\Êö¢«jÈ“›	iq\ïa;¹\á\"\äw|-}~\ï-^Šy]¢é¶…\ã¡Z\ÄHºŸ\Ñ\âšfaFp\Z–1žZŸŽitGm2#Q~¼\"<*!‹?9Õ’Q\rŽShj8\Îsº\ç\ß\Ë\\|;\ZˆÌ«?¼ý\"\æ§cÏ½¸K,VFdûdExŸ3±†–o\ãÌµ\á9Œ³(ÀZ\Å4º¾Qx:¹§K†ªm\Æ\ÔRŒUcÑ\'7\Ò\ê\Û!\Âvr£E(}Œ\Ò\å\ßÀßž¿–\'\n›Y0G06ì’Ž\éñt\ß\âò1‡VCú\Û1F¼\ß§Œé”‹h§\Ïò2”\Þ\Z€\ÓüC\ÛH8÷¹\å\Äò\Ú\ê„\Ã*+\ÐðC­\çñ£N!ØœRŽEqf\á\é\È0¶5\Ñ9\Ø›\ÑXšƒ•L“A$$‹‚#±–®í³±y¨‘5iT?\"\Ó9‡¢TC\Íùr³\à¡\á\\;¶¼¾°—À\éŠ0n<E\ÃX¬•ŸY:°¥@Ë„¦77®\Ç\ÜnIx88÷‡E\ã~\ÆPX\È6d\áöŒtl§g„\È4¥4œk:\ï\"F¶6¹!M®˜;ºaC`\"Ö‡§af¸t\îg\àŽ”<B+Ž¥bxŽdŠ\æ,.·¨Z[e\Å6¡oñ3·\íˆL\Ç\Ì\èHl\rOÀo\éÞž9þ*AF\ÙH4\ÉoÙœjaª—l4S+\"¬\Þ\ä·<¥º»[\n6²²™Ž\Õ´l>\Éò\Éú\È<3®K\Ãþ¤b|P<v\Ù\ëOV\È¢V0“þC\ÙeZ\Íý”†\Ù$†E*HCž}\Þ\èa{‘ÅŠd®a\nƒì‘´Œ\ÅZ¥ðòÁÄ£”ù/¯_‰¿3~\ÚÀ¸ijX\æ¤\æbKP\ÖQ0÷¤fac·d\Õa¿Ô’Ê‚\\GW’\Î^³[€\"b8kñú‚‡pWh¶\Ó}\Û–9Iª›\âÞ”ll±$`~0Ý¿\èL,\ìžÁo\Õ\ÑP\ÑTQÌŽYG”gr4¨\Ùù³y\rû:ga3ù\Î\î)¸‹\Ö§(«)×¬¬­¹¬¤sµ‡\Ô2*\à¬|A´rœ\Ãn\Þ\Óþ\àll!™„§s¹ðtÖ·¹¨ë£²°+>Ï§–\áxN÷\ä\ß\Â\îøP\'’â“‘Mªƒ_ò¦r\Ò\åùõ9¤C„\í¤y\ÐX5Yc\àJ\Ãb/³(j/“\ác.Z”7V/\Åý\Ýc\éN†czX,¥\äck`66Ñ’\ÍJ§\Ö)bÓ±2,‹ß£+)“r\ÕB¼\"c\îÖ³ø`Át<›ŠMŒ™¶…\æcUXŸ‹1?·[h}fEc^t*\î\äo þjkS$v4\Ûe\í6‘V#/Y‰û³°2 K£‹°–w\ZŒ>¢õ\ä5\Ë\èsQ\ÖyYw\ï­|\ãµˆTu“ZGD\îj9\Å{dŒZ€%\Ñù’Ix:fñyX\Ê4Š\Î\Ã\æ˜\\lŒ\Ì\àý¦©Æš£Y½\ÜûiJß¡\ì|Û¶š›¸©-Y²\ç+E¦!\Ï>oP„Zsi~s¦b\ZK\è•°\Î‡3{6\à\Ãm\ëñ\Ö\ÎMxg\ÛVœÛ¸gw\í\ÄË¿ù½š[·¾{2\æ\É8\ÑºŽ]v\ÊPKA¬¦G2¾J\Æ\é]«Ñ°{+j7oÆ™d\ë&T3¦|ñ¿Œ\é¡\ÉX\ÈB”‡eÁ…XÐ…\âK\ÎS\r!kr±!¹X\rŽnÚ½§wlÇ±\Ý[ð\îÎµxÿ&œÚ·\Ïÿò×¸\'4³s=œŠ\Ù	©øsd^^µ\0ooÛ€wvn\Ç[O>ŒS{ö\àý\çÁ{\îñÉ‰\'÷¡a\Ûv¼û\äNœÙ»Gv­Ã¢\0Æ§Œñ\Ä\ç©\ÆŸ06õ\ÅFV8›\"s)\Ä¬	KÁª\îq\Ø\Zœ‚\ç’Jð~Á\0Šo- -¡Ì‡•ùˆ\ÄY \Ë\í‹{zsô%vˆ°½\ÈÀ\íª)\ä i8\Þ,†}¹˜j	\Å_:E\áO\é/\Ë\ÄCiXHwt‹\åŠ\ËÂ¼„l>\ç\Ñ},dlFq¥cQW\é°\àþ\ìlü-2‘-÷„$\á¯A±¸/,J£K6Ä”`CB%–D•bEbŠ\ÍÀ\nŠ{}T–wNÀþæ‚Œ2ü¹{¼{\Æ`(\ág3±–\×1\Û„-\ê¶\à\ìg¡\Þ`\éŽU\É9ªX\Ì\ïþ]þn‰\Ã|þ–,]\èù\ì¹WK7\Ì‰\æ\ïfól\rHÂ–ˆt\åNú†÷\îƒMt»…õajâšdld|¸›–ñ‘„B4—G‹gI¡ô#R\"B«L6\å\Ù\çŒw´½\Äô¡4\nõ²X‘ˆ13\0/Z\ÒUA\ÜšƒÍŒi¤ \í¥û·=º\0‹Y8§\Çaf8-\"Ý«i](„ð\\õ7ù\ì\Ò\È4l¥ ö\Ò\âm\çq±r(qÍ¤ÿlu\ÏÁ\Ï\Éjib²1+X,h:vÅ•\ÒÒ¦ã±¸\nlfL¶¾s*t‹ÁÎˆ$¬\í\Í\Ò5\Z£°Œ\"_L\ÎOH\Ä\ê°8\Ü„¥ŒY\Ã0/4iy6…\Ä\Ó¥ù\ä©\Ø\\¼W€-¥\Õ6+Cb°-$\Û\éZ¯	Ç†È¼«\ã‰[7R€kCÒ”e|\é¶\è\\u|=½žXB×´ZoUµ\ì\ËL œanw´ü\æ\Ö\Ö!\Âö\Òc\Z*F\âD\Ñ\0´ô‘5z†\Ð=\Z‰w\ÒJ±\':«(¶¥,øód•´0º´v2µg!_/‹\ËÁÚ¤b% \Ý\Ò\Ô\Êù,h³»\Ä+Ámïž%c•\0·òý\Æº ´`si±–\Ð\Zl¢\Ë\'óóDÀbU¶ÐªÎ£u’þ\ÂõA©\ØGQ/H\ÄÂ¸5eI\ÆvJl5/3s3r±$(ó“ó±7¾‹\ÂS°=„B¦ø\æG%bS\×x\Ì\å5¯\r¢€}°˜×±–\ÂX\Ç{X–ŽUŒ\ÛV¥\çcMZ>F%©köMŽOd\ä\Ìºñ›\È6ŠvgL¡B*«uA<FÁ?—Xˆ\Óƒ\Ü\ÛPK‹¨L¶–¼‘VR\ïüú\Ò!\Âö\"\ËZW¦\ÕTQ„™a­Š\Ö~#\Ñ\Ðs\æDEaA$tx–§\æc&Å°6®ñŽ{¼¤¸›2)ž,¡\Ðˆ\Î\Æ\\[_ ú\'fc™jÄˆ\ÊÅŠ„Š0\Ëim(Ø¥tw\ÐBR\Ä¢\nXð³05Š–‘.®Œ\á\ÜSe)Uj‹ý]±/¨Kc)ü\Ø\"<\ZX\Ìø´ûBz`\r\ã\Ëí²°5œV6³Œ\Â\Ê\Ç\ê¬J¬,ôÉ’\È2V\Å\ØVE\Ë_„…ªOÎ³¹;­˜Qx:fñy\Ø)1a¶²~»x\ÂNþ\î\Öð|z¹\Êò\î‰J\Ç\Ûi•nkX5™q¢¬m\ên)5\æ\Ù\çŒ\Þ`Î³0Œ*\ÆÚ®\ÉX™©\âÀùA)˜\ß%Q­\á)\î¥/dv/dð³/L-Ž:k¯‚T¾0¹þ \Z]|°•\Þ\ÒrºF*3Æ¥T\àH\É¸$,(&\ã\Õ\Ô\'A\ÜS[¡ûY¶‘EÍ¤eÕgŸ6\"¼Á4—ŒÇ±¼¡x<¶Dh‘\åVÑ”Y\æ2™Uº$|ažŽIx:&\áé˜„§cžŽIXþ°…Bò…Ix:\"Ôô\Ä\ÍÞ›PŒ—\Ózª®qEi\Å5-ps\É\ÜD%\ÂKóê³¢C„7šâ‰ŒoÅ±‚a\ØMwS¦ê¬Ž\ÍÅšx\ÆL!iF\áé˜„§cžŽIx:\ëcúb}D¶OL.¤?leœ\ç‰}!B\ÜÁqG<aÅ¶‡\×ü\\LNg†K–&‘\Å	\Ú\æ#Šø.\ägEøqSi7€\Â	@\Ù$µ\Ê\á¼Ax8¶\0+“°±\á\Ò\ØL£ðtL\Â\Ó1	O\Ç\Ô÷¦\ã\Ý%\à\Äd¾x­=l£5ô\ÅNZ:_\ì`\\©\Zk\âƒ²R\Ù”Œ=¡x•qðñBw¿¡{M\Ý6T|÷|D÷Úº†<û”\é\á&¬\Ú\ZYj]g\Ï\É8V4û¥\á% K\Â\èš\Z„¥sù“K‘!]¾0	KGZ}±Q\n¶¶PH\íÁ$<\ÝQy¾‰ô4\Ö\Ð}¥\Üž]¬£e<˜\\†ºœh\Îm›|QˆnZ\ÕÚº†<û”\épGo8²r\Ø8dfx\ÉXµ|þ‰\â¡xŒqu—˜„§cžŽIx:¦8L\Ç\ä\"\êx7”xcrýagd¾OöDúDú^wEð³¼V\å~ZÄ‡\ã°—1\âNV2\ïgôÄ‰¬¾¨—\í\Ød\ã[qK£\Üû¯ó\ìÓ¥C„7»¬& \ä!¬\Ë\Ç+!\Ë„gEˆ,<¾XÃ‚\î\ãP0\r“°t¤¿\Í¦\Æ“°üÁ$<½\"4\ì‹)VB\Ü•ŒO(&E<žKqf\â\é\Ô\"¼ž^¡„Ø¢\\Sæ‹ŠÝ‹F™ò\ìÓ¦C„7˜¦\nŠ°œ5®L½‘L—ex¼µ|\êª\Æ…§cžŽIx:&\áé˜„§cžŽIXþ V\Ìû(0_\ì-\Æþ\Ø<W‚\'\âJñD<EWˆ±ùx8:{’rp0­döj³†’b	Ý3z^}VXP6 {d\Íu\ïŠã\í%`\Í\à«½nf\ÃûKŸ\0\ä06+›\0{\Õx4\âkÖŠe\ÃQ7\àV\Þ\ëp\ÔÇ¹¾¼wúT:-¥N\ÚP\ã9¯\'õe\ãñLx¾Z>B:\ï\×%aILŽ\êK\\\Zœ=–l‰+\ÆòÀ4<R„­R°*«s\Óó±($\Å\èbê¨¡pt\ÓV\Ë\ØK\Æp›\é®É \è\Í\éx4¢[Ä’\ÄW`[DuIT](kcñs[»¦`o\çt\ìï–…‡Có±_>›PŠ\í´6›s­\ËÇ’ x¬O°\ÞFk´#Œn`p.ö\å\ã^\ï\Ò\î)\ØClK¯\Â2~f}R	v\'U¨{y)°\Â±%>¯D”bcT66\Åf+­H\Ï\Å3YG\È»b\éz’\ÝL\ây<Ÿ\\Ž\'¢óñhX6^Œ/\Å\Éü¡°ËŒ‹Š),\çŒyr=±öœ›Œ\â\\9‘•ñ´È¢Æ²\ÏF–{qcKsv?\Ö\Î,¨²„kˆ\æü!8W5g{\rÃ‰!ü¢l\Ðqsd\àhœ\î\Ó6¶S‚r\ÕD\Í\×Ò©[B1¤\Ë|´I°Š\ÅJgm\É`¹º\Çp´\æ2‘ç¼žHVm\Îp¼[†\Í\Ý±ª{\"¶\Æ`ö\ÈB55I6!—\ên„x”…vy·$5\é`÷«½Ám‹•‚^HË™­:¶e«\ÄSÇ—cŸ%Ó±Š\Â\ßÇ˜*8w\ËÀv\nbcv	–\æbIf.%\Ê2‡²\ÈT¶„¦b/ý\ÅýFd	^\ÍÃ“ÁY8@\Ëz ±{hy6%\åbEL\Z^	.ÁK¢ªö§U`C@\n¶…fboF–Ä¥ó…\ØJ1¿\ZY†\Ç2+±›•\Ð>^\Ïr\Þ÷3\á<ot1žŠ)¹ˆ\ì]¡ó,+_¼B¡¾D¿U€\×ùþ£\Ä¨\Ïd0\ÏefCž\\O\Zi\Ðd»Y-®1½\ê\é;¤‚¯W.ˆðL¯±h\è9N\íG!VÐš![.\ÓBóBù75M\ä&¦¦d(š\Å\r¡u—M)eýÊŠ1¨\ï9\çúS”²Ü¿lôÒƒÖ¯ˆ¯Sú\Ã\Æ\Ä9ËŠ¨^Dj8\çõÄ•Gk\Ý\ãœ)\Zý\ÌòN\Ñj ò6ºS\ëÃ²ðTt!6D¤ck<cœ,eifw‹\Ã\\™¥võa_\Ò×¶!œ‚Š\ÊUcMe„‰S\Ã3°›VO~÷aZF7º9³X±\ßyÆ’Œm\á\é\ØÆ¿…¦Óº¥\Ñ*¦\àaŠ\ê€%Xb(°l¦\ßB\Ô3¯mgh\ÝDZ\Ú\ä\\,‹\â÷3ñ’%‡º\æ\âyº;)Ðµ12Ž5»C2°‰¿ñX—4\n¸{ñTHa\\÷,­\ç\ãqŒó4\Ä\ÝžL(Q<Mùâ™˜|<ŸX‚“\Ëð¿ÿ<\ïýmŠ÷BP.\ÍùrÝm\ç\é\í `8\ìYô6ef‡\ìT\\6J\íL\ìvGs\èŽe\Ó]\Ë\Z†\ê\nªVvM-™\è\ÞÒ¸h²*$73È£\å+c\'»¾2!‰=i\í˜©X\ï;o\ê·.ÀÀ\"\Í\ä±4&”¸·\Z\Ïy=A®Œì˜¨F\Ö|”3T\Õö›»¦\Ò=M\Âú®i\ÊjHWLsZM¬¥[º\'¡[ƒsðdT9L}o:»Y˜e¶[:´·\Æ\ä©ÁÐª9Ÿ–rS\\VE¥bmt]\Ð<\ìIW»\0/\îƒ¥\Ð\ZZ\Ê	•xz\è­x\ãG?\Ãû\ÓÀ»—\àõG\Ö\à\å§\Ö\ã\åG¶\ã\ÐÎx{\ÉB¼þ›?\à\é	_\ÇÞ´Jl·$`‡%/Ð~6¡J\Íu\\\ZžŒgKñ:]\ßG»$\à\Ñ\È4\ÕJüx\Z­`7º½¬v\Ä\æ*\×ô©`º\ÐüÎ“\áŠ§\"(\Î6žŽ,º\È´”¾xŽ\ÞÄ‹qex9©/P|\Ï\Ðj¿Vˆ\Ã	½P\Í2oÊ“\ë	Á\ßWí¿¨V—™%4™ý\ÑT\"\ål$,\rt\Ïjy\ÐY5u#\Û\Ö÷Ž3\â\Ë\Æ§?{\ëMM½¸š•_‡=“\î¶\ìþ*\Ë\"TŒF}\á0\\Z©{%\ì}nÃ™_\ãñ¢(ÿõñ#P<\Í)7þþ9· .m.\äŒÇ…²¯\à}Šò‘\Ðrlîœ‡m\Å\ØF«³‹Vd½%\r›\è¢n\Ë\ê…E)j¹A\éŒ7õ½\éÈ”¨´€\ã‰\è6Ð¢©e-(\Îý•X‘‚5\ßÆL¬ øVtIÁþ¡“ñ\ÖCSq\ê\ÅýhpÖ£E­>Óªpo#¯›\Ðh«Es“\rVÙ²M-aœ²\n@5jŽ¼‰_y¯ÿ\×Ï±02K-ax&¤\Ó-\\\Ê8‘V÷9ºÝ\Ç\ä\âYŠð\é\Ð¤8÷¥–\ãÍ¸^x©[vŒ›Œ\'™ž\n«P<\ÎJ¡g#}óLDž®¢E\ì¡8\È\×\ÏGT\â\å\Èx#ª·1O®\'È¹\ån\n\Ðû\á(bŸIa\æw7\nõ\ç\ßU?a\ßoðk\ã\Ä8–\ÓŽ¤¾pý8\ë\ÞZj\0\ÛMŽ£8u¯ýó·ñAv_\Ø{\Ñ\êK\r\Ä)ˆ“}&£\å‘mp4\êj\æF¸d\Õ0µ‘\Ãyó9¯7v\"»\ìºÚ–5C#Z]µhrV\ã_[\Õrg5hm>|ø*¦–Ubej	6¦Q”m­ŒWb-Ý½½‰eª¹]\ÉŒ\Íö%•«q¡º\Æcoh\æ‹K™\Òµ-\äÏœB“\ã,j[N¹—Øõ+d9}YCV\ìp\Ñ[\Û\Ëj\"W\'¯\ÉBÿ\Ð\Âwõü²¤¿÷ô\Æ!¼üÝŸas@>§u|)¤Œñg.-Ž\âIº\Þ\Ï\Ó\Ê\íL/Ã‹\Ñx/¨­;6ð·˜\'$}T\Z\Éö8n\\Ž>£\Z.ûy\Ø\ì\çx}|­®¶N³7ñMùq¹À|»Àÿ¬\Î\ãx\é¡ûðt¿1°–²\ì\å0JksG«{J£\ß\äCmoZ\nºb\çŠ&\ájQc—Å‚dÉ¼›—“5uX8|O­„Smo6^­\ØõAN?\ÔDPOd\Éz*\î2w„ß©#,Š\Æs^O\ZœM,\ß6Eƒ£\r´&R \å:d¹Yð	u¼0Ù“\Ð\Ê#\ç\Î\âŽ\ÎQŒ½\èª\Ò\"š„§#q\á>Šp3\ã¿MŒûOí±Ej\å\î\rIE\Ø7Ž9,\ì¶FV9\Íx·ù4¯…i\ÆGS³¬q\Ã:ò\'Q›\\d3ˆ@\ÏE\×ð:\ëøY¡J]6«[N´œ\ãýðƒ\Îœœ¹O¤Á;–¼”X€—\é&¿”DW‘.öº\ä<\\€g)Tœ{\çb:]÷¶mWB.Y.·™Ÿõ¤©\à¾\\ŸM\ç¼~\à,A6t­o\Æ\ë¿þ36\Ð\Í>C÷T­‹Ó¶	ªEmùœÙ›1R_œ\ëKfGMöd^(3 †—*µ\Ú\Í+\â?\rP3\Ø\ßN\ë\Æô>ô\Í\'æ…³+\Ý\ï\ÝO»»\ä\ËP½\ÔúR°$·Lç»Ž´¶8Xc·½—\Ò\"…W~_^“#m¿•™(\Å\n\çŽ\áWÁ1j\íò\àx£ðtv\Ä\ã\á\ä\n\ì\Ï\Ã\ÃÒŸ\Æ\Øhž%\éž\â§w\Ð6´òV­hü³jBIùy_È¢\ÄB‹ªH¤à¹“Qv‘:+\'‘û‘{\ã\Ã\édU\×@\ëd§·qþ(^~x¶Xºã‰€D¼”RŽƒAt¡ó*ñ\Ë\âcŒ)­5oªü¸ˆ\ç\ât<iw%\ä‚<V\\ð¿\Ö\ï·\É[ùyq\×\Þû fvMÁ\Ë]ra\Ë\Z[)õ¦D˜7-em\Í÷Å²6\ÇPþ±!Í¿¤\ß\Íþ´\Ô_\Î{œi‰Ã¬°dŒ)\ÇQ\Ó9\à\Ûhgô\ØS,4V¥9UwÚ˜[V§rx>ó-£CDÈ—v§\Îsð>\"ð`D$c\ÝL™\àº3¼\0{ù¼G„‡-q9\ØOº\á\Ù\äþxœ®\ßúˆd\ÕE°¬r8.œ=\á¶jŸñ\ãœõm¼ù£_Qt¼—„\\I,FµŒ|‘¥d\ãÒ›ü\áp±\â±;U\Þ=q\ç}jƒ5a‰Œ\íKq,o<\rÄ„ù_lJm\í\áC–X<=!¹x>±Nñ>/08\ÇSi,•q/OJö¿D([£­\r\ËVSz\ÔXJ\éc$Û¢³±)&\ÄV`-Ì¦\ÔR\ìèœ\'ÿõ»,Œ‹><­\î÷34ž¦\ëqGW­Ák]Kpˆ÷²:9	OY\Òa=úZÛ‡nÞ‡{‘dw9|þ\ïÓ˜w‘X…\å±\éx)º7\Z\Ê\Æ|ñE\è~¸Eø %÷FcU\×$¬\Î\Æc±=p$ª\n8xRö{ðˆE¾ÙªšH>ó\ÇUD(\0/\nNƒL°•yuûâŠ°/¶»¥U42h]\ÖÇ³`w\ËÄ¡ÿü=¬\çN³@\Ð£k\Ø\âú<\È\Ð\ÉK¡¿\ÒBw¶\îC<‘gJz©˜\×ùþ\ëmŸ¹yNúbnC\0¼>m6\æuŽ\ÅÒ€\ÌbH±§S+Í¼/%t1	XÝ–0w‡\Ä`>cÃ™]\â±,(\ÏFÀõ\ä\ã¼Ww\å\ÞDE\ÜQ»Šm>ó\Ç%\"´]&Â‡‚1\'$E\í\é \ë\Õ\ÈZ,{¢ó±?*W±\'%;\Å\âÐ¸\ïð\\§ñ\Þ\èw±K\Ô&\ïgû°5²J` iý!N\áü+{ñª%\Z-i¨9r\Èý¡›ø!»i\Ù\éŽJ\áz}\ê,,\ê\ZÁÑ˜.«\Òu\ÊR\ÝM_\Z®*¥¶x¾…w~`\"¦vW›¨lHBÝ£ûhX3­\Ü\íi,¨²MµûŸ\í\ã*\"œžŠ™¡)˜š¬Æ’\Ên·\ÛÃ³•\0—\îˆ\àX<’X\nœ>Ž\ZZ9‘´GÀ!›»|ö\"”¤®\æU³r8yò]\ÌHÄ’ô\\¼iIEõ¹÷\Û>tó>D„ª\Õ\áÂ«÷NS\Û\Ö\É\âT3#â±­{.–1¯¾1¡ˆ°d$\ævN\Â\Ñ\î\å§\'cvX&fu‰À\ÉGvª–;)\"B\ÙEIJþ\ç\âþ/\á\å\î\è\Ü\È\ÌOÃ¬Z\ÄÀ,¦e”5:w\Ñ==@‹(±Õ©Ý›icJ\ËŸ\Ô}\Ñ\â;¤\ï3~œ”$ø>VcJ°\Ì\Ò«-¡¸÷c;sXþzS?d[;÷\æ>.¼v\çT,dH$\"|(2›e»ó\Ì/¾U­OQ­\ä½\É`\Ó\Âek2\Ú\à\Ì\ËÂ½]CpôÑüK:oXD¨új\'†\Ïþq.ˆ\ÈÀ\\V*²”¢q>Q;\Ý\Ò\"\îd%sü»w\àdýquW\ê\Úò´¦M²AŒ\Ú\ç\â³}Ô¹.°r¨\ÃvK¦Z¢°%)\ë“\è¦\Ñ%}\ëðsmŸºy\"Be	˜\Ôo\Ü=M-Q)‹-?€õA¹j\âö^„\î{ ‡©d§…&`ýð9R€Yý% ÇžØ­,ƒ|XbB«²„Œ˜>û2zU\ÊbQó(Â¹\á)´ˆ¬XÂ“±Lö•NRë­¼ñ\á{À‰w\íxœq\Ò\ì\Øx\Â\'.H\ÉøŒNœÇ‚\Ä\ÞX`I\ÆZº\Ï\rÁ\â»a–ljó\ámŸºy[B\à­{§»£’Ô¾’\ëCóÕ¾ýdFu¯€l\'U:ŽŠ[p¤\Ç?³v²\â¿[o“}}\ädndD3_\É„Z§t \Ë\ê74¤ ·¢\ÑQC§˜%›_t\Ø\ÜÑ–\Ðbm…­\Õ\Êò%Ÿ6?$–kjjBµš’°]<·X§_«v>Ÿ¨ö?\ÆB(é»,‘X\Ó%I\í±€\ãþ\à8\Ü\ß)\'Ý¥K¾ \"”\Í4¯\Õ=,¿ ­\nTI\r¿\'i$Ù¥H~\Ûûz¼ñ¤É•P\×\ÐÊ«³6Ó›d\×x?\nŒf¡¥\ÅëšŠUÝ¢q·8\Ì\Î\Ã\â¸Re7v‰WOÇŠõjþ€\\mJZG2\ÍeK´\ãö444\à#¾–¡i6k\Z\ß~\'·oÃ»\æ\âõ©÷\âù»ÿˆ\×\î{\0nÙˆ\Ú\Ão©B\å4\ê\Æ%M5®”¿ÁgI«•?h—_lF“\ã<–\çUª\ÇWÇ°@\Æ\çcc`&6ZRð³®Ápœ|I}§=À\År\È\'\åxKb\Úm|’¡€\Ì\ãk\Èà³­¼~i&\çÉŽòš[ø\Â\Ù\â\Þ\ã\êLµlzwi~zC;\Ó|%#¢{`\Z\î’qÀ\É\Ø\"\Ó\ÊR\ÕÚ²dDC/T:®2Š±j2šÿ?Õ$\ÍôOG÷\ÅnkR¸³­•—#½ \ïySÊ½™ð˜«ŽŸ=\rG?\Ï\ÐE\ØJ!\Ë{U\Å_\á\áakó)¾“T\ào\Èùi\r.þŽjb—\ßóA5ƒ cg°`\à8<˜ŒÅâ°¬k¢ZJ~\ã)oZy~DxR>+c$¤ðòY\íhC­­ŽÚ—\ëÖ®\Å-OœD†µ6\Ã\Ö|¶÷_\Ã_2‹± 2³ƒ\ÒX›&bZP\æ²Vœ9©\ØBK?½S^™3“¿q•O_#-x\êþ™\0\ÍM¸\àj\äð½X\Ìsu8=o\rž€{£²q_\çh\Üm\éŽ{»=d	Áß“³ðwº‘³a^\\þ\éN4ž;ª6=\Ê|“Š¼¹‘\é\"YÅ¬·H^VŸÃ²±_Áq˜\Æ\ÊqiDf…¥ªªö„`zb6œ/<lN8úŸeT,}4\0\Ò ¥L‡Û«<¤ô¡F®¿	µžò\Þ$ù*e\é\ã\àI|Q\Ë\Ï×²²B;|\Ý\Ñ\Øblì”†5\Ý%|ˆU+\êY3õe`\î ŠpP6\ç2‡\à…)\ß\Ä\Ò·`S¿[°¶\çx¬\é1k{MÀº\Þ\Õóz>o\î?«+F`\Å+­k*\Æa]?W9\Z\ËK`qa/V\Ü2ˆ–ÿk\"´9xN¾’7Wx8“566bAnO¬(\ÌsŽ\Å\ê²ñXY\â~^]>\Z+J†©\ßõ\Åô\á±ók\ßÂƒ)%˜–\åQ¹X\ÊŸ\Þ-‰¢Lm·Ÿ¾û>ðul\ï1	KMR×¹¹|–÷v§—\éštV—ú\æ\ÎòX\Òo,V\r™Œ™ýGb\ë¨\Ûð \ã\n½5¬kB\è\Ú0\\Vˆ\é]\éŽFg(7ô¯–0\Õ\"z\Õ\ïùlƒtWð!¢³[q\Þ!-%LƒS5xþÿ¦ö­øƒ\ÅB78\"d:U\Ö\Åa{B¶šo¸‚BZIk¼†bœ\Î\Ï\Ý…\íú)Z\\\ï+\Ñ55\Ðñw\\ô\Ë\êe @s\r¶\ßòÏŒ°$4+Â³X©d\âÁ\àD,`)£\î¡;ºf\n\Ë^ùŸ¬)\í“9\ÃF\á…Õ«\éyñ\ä&\é\é¨y b\0®¥#ø£xò+?Â–,\ëƒ\'\ã‘~·bOñ,/µ<¶¥j‚O\ÖWÁ¢\ÊaX;l\æ§\È`ù8\ìb%³6&sX¹EXù8y±­²¡†Lb\í!S&\âh\á`L¯\â—b\éŸG2¢1\ê\Ý-‘tk¯(\Ìë’Œy]0·s\ætJ\äûT,ìž†ùü\Ì,õ™\0\\8z’%\Ûq‰y\ÞhÕ\Ðöðˆðžcv\'º_\ÝRù;Œ{\èªÈ³´t\Î\æ\rÉ³/n·+({ñ\ÝO·gfH:\æ„\ç`VP\ã§\Âv‹ð\Õ?ßŽe\á¹XH\×pª´T²`-´Ä«“$}L×¤3¯“of1-—¤a9\Ï/{\Ñ/’}y\ß2\ÏOv\é]\Ò-F‰p~Pe`nTŠšøW\æZ¯¡õ“\é\Ü`mqgo[\n©Œ\Ý\Ï\Çw\'þ\ZŠ¿EFbN|\n–±\Ð,ŽMcZF\ão\Ý#ðwy\î‚\ÅÁñ\Ø\Z•…\í1t±¢Ò°€\Ç\ç2\Ý\çXº\â\èœõ<—Ñ†³\Ò4{\á¶¼\rK‚)\æ \Æ\çiXA«.û.Nc…\"ûöo‰\Èg\Ù	\Ç\ÝÝ£±¨KJ»¸¯KÞœN@D\'Yl—\Ümaƒ¶«=Zê°šXÀr7Æ¦.i\Ê]ž)s.»§c¹%\É\'²:\ÂRz,‹\ÂuW«Èº8²‘Îƒ\Ñ)n:rFÀž=-¥\ÃÐ’\ÛŽ¬¾€L6\Ì\èOANÀ¶\Ô<ž t\Ã¡Œ?\"\âU‡÷=Á1x0\"EµòL‹¤K™Œ\é\Ñ\é˜›\Î\çd<‰ûB‚q\ê}º¬…\\L\îÔ«¶7ºðô\×‡C\Å$wajDf\Ä0ó#\Óñ ýhy~ˆ…mjx¼zöÅ¶°÷dØ„b<\ÄD|¯gR4uK\Ã\ìÀ¬v‹pÿ¿\Ã\Ãq/]‹¿e\çbv,…À55† (\ÆxM:\Ó#}3“q\ëÔ€(\Ì‹\Ç\Êp­÷¢øBL£û67¡»\Ä\Ð\Âóž:3¾ˆ\ä}»+\Í\å=Š\Çqµ\ã3U$%\éE„L‰x\ê_xN.R«Yù<÷ò€TU!¬‰*\Ä\ê\ØR,\Ï\Ã*\ÈM!ùê·§…§\àø4,\Í(À\nr+\êòÀ2Y¼\Z\'[\Ä*\×\á\á\ïüHU$2wq^¬\ì‡‡¥tsgGe¨\Íl\æ°R_\ÄX7<›c\n1—eª=le\Z\Ö.Y®òS\æ0RPùz­\"¼€¸§²fK+t|\Æb±„\01\ÉX‘&ð$ûdE\×X,”uxX\Ù\'«	Ö²\Õ\Û\nŠrCF™»uTM\í)&C¿\Æxp_tÇ†Q•@Z?´ôƒ7“Ê°¥s/‹\éŠ\È	VFd+\Ëû…\Ý	Ý»\Å)JõjË­n\á,8þ\Î¼kw&K>º%ô¶~ž‡G„\Ó,\è\Íó²f“ýø¤†\ãó¢\ît]º1A\äw¯Œdö\\Z\å\å9˜‘‹y1E,\ÄÅ˜Ö…•­{{ExhÚŒ‰\Â\Ôõ,L\Ìq/%A«-#X\ä˜\éšt–^3#(ž\ÂNuXºœs¢³p_ \ãÚ•Ö²‹\Ót\ìÕ¼¿º‡cf§X¼ôý\ß\É\í\\õ\árJl\Ï{—¤\ç\r[\í64;jqhþ<\ÜÁû\ÚL7wm@6–v–…3°*¸\0«Ã‹±$0Ÿ\Ö \rº\åó\Úrq\\>¦\'`~ \ì0‡™]“0#!‡éŸ„?†$\â\Äò¥\ØùÓŸ0†,PËƒ\èAE%b-ƒ\ì±8?6\ë¢óUù™œ„¡,¬<\×*V:¾\n\Ö3\é$–7¨\ÒCE\é~rÁ\Ñòqy»\â\ÃU‹e\å\Ã\éu¸\×\çYM/cC\ÅE‹/\ro\r£\Ð}°2.«\ãix²m\Üj•\æ*\æ§,Ž¥D\ØXÁx0©j‹†À–2€±\áP4ô`-š;\n \ß+\ÛŸ\Í„§ãŠ°œb›)5/cŽ¹a™\n©¡gK\Ç7E\"…Bö×›\æ\Þ?ýÁ®Á8ööû,Ü¢6õ¿BÅ„ò‚U“.<“E$³\Èy\çebV\0\ÝI>Ï¡{93P\nbšO–DÐ•Ff\ØLfª¸¡Kc\n0½$\"¹\Ý\"|c\ÞTºd1t£hùX\Ø°ðIM?“‰,}‘¦kÒ™O·\Ì‡”°`SÐ²¶E† ñžCÉ¶i»»\å\Ðj0$ˆ\Îe…”ŽU<6#4Ó»\Ç\ã\ß=Àx\ì\ê¹Ku\ïby\Ã-\ÒzÈ¸\í\É?ü‰¡H4kó\\Ì !®üÔ€\åúŠ\å\ËnQ\\~Á¼I*Â–¨,\ï\Ä{f:/N)eÁ+c\ÌG‘D¦2^e…G—u!?ÿ`\çX¬Š–Š3\Õr\Ò\Íò\0\Óm\ÓK66\ÝÅ¼I\ÊSVu)\Ýú\å²\îŽV„eû\ä!K]±T	P‰P¬ŸÃª\Z‡T‹ð\Õ®F,+Eƒ\Çƒ•\Ëú’V~I9Ê^JAúbM|‘ªeÊ•,Ã«cs±61c2Ž–e--µU2‡p(0\ä\ë\ÝZ\Â	8^Fw´p<\ìeb_WÝ‚\Ú^“ñdz\å³?H—afH6D(1H+\Ý\ì@š\ë\à\Ì\ÍÁ¼\Ðt\Ì`°þ`\×0·\Åök\"”\ÚV\ZfœŒ®$B»\Ý\î¡%T‰mk\Ï9A\Ùa¶z!\ÎdÁ\áûBº!¦‡1^\ãgD©k\\J+>³k…\Õn¾<õZ\Â5õA\ÖÞ«xm2Xz…\"˜®Ig~°o–\àNºiO+¡Å¡EŠ\Ì\Ãýtyg° ,c¼.›ŽÎ‰\äo†\ç³v¥X\ã\éªwOÀ‹?¿[5_\í!-\ÜbT	\å\rË“8ð³_`%\ãþø’\È,Z&\ÆDÁ	\Ì\ßx,\"KBC’t%—Pô³b±œM<¤9,°2ws.­ã¢ˆ¬ŒI\Â\æ\Ø,,\áù¤y^\Ö\ÇYÁkMa.\âóZ\Ì\Õ\É\Å\Ø\Æt\ÛÀt”–\Ñû\ã\Ü[m/gyòÅŠ°\\Ÿ\Üm\éŒ7–.T½%J„’©N.XÏ¡Z\ÍÒ¿Ê£¹[+¦0-²°*¡\Ëi\íg1[—E/ ••	\ï\Ù«\è1l\n.ÄŽP©¨ŠX2hE\×2—uŽr‹P&úD\ÖG”µH\Ë\Ç\ÃV2\Z‡+±Š\"œÚ•˜þö´\Ît«¢|òg1Q$\îšG3;Dš­-8{ø\ØEŠ*\"¼J)bõ\ÔCÞŠ\ã\îþšj\êð E2—qŽ\nlY\Ó\Ïc\"\Ïi\êÅš™¬‹ŽÉº\è<h	\Â\Ù\'e\ì(ÿK©ak-b!®þ8<\ã^º<\Ø\ÂZ[\â³-Á\éjG\Üùt•\Å÷_¦\â¨+#q–/\Ö¨Ž\ì%twZu¦¯Œ’™Ù¿\Ç\Êey—l\ÆV\Ò\Ð§2vytï‰•ß¯`ÁS\Å\Îç£…ÿ9Z[`o”¾,\à,qØ›Ñºm\'n\ïEKM!&cY<\Ó?\"M5NH\å0/’…‘…jÃƒùÁŒ•h1ç±²˜\ÅB&\ãY%[L7li\ÝX,e\Zù@ZN\ÛÃ’NAxu\É,\Þ3W²•^™§Ò¹z\êða³cmÏ±,óqt\'e©\É¬£¸D±’\à=\ê5›ðÞ \Ç™ýrU:sùC€2¾¯šˆ³…#ðTb©Š\ÑDˆ³™kÍ ¥z {2¦‰Õ¢\çR„SY}\ÑE¸Îø]\ç0,Œ\È\Â]\Ñ)ª\Ñh]{¤1&³U£Ã•+\æ‹\ÅRh]–±\ËõÎ£‹»„±\É\ÅB\Ì8mk\\±R‹\éö\É\ÂMs\è?÷_RT\"+\ßõ‰\ÑY\"¥ÿŒC¢%\Þÿ\Ë/\áï¥½qo—`\Ì\î‰U\â°.–>’.0c\ÐEÁ™,\à)XNE\Ý,Zi)œ\ë®£5[Cq®\äu\è‚3ažŽIXþð…¡¬\Ì\íÊ‚¹e\ã\á\è1	§KG)!®dœ ± \ÄS’0•ñ‰\Ä³C\è6Fbz§€/¼\ÞÿWº\Ì1ªc¨tU¬¦»µD\â€\î™LŸÌ Uñ\Åô8,‰\ãýJl\Åxd!‘†\r\Ù\ìeqWZ(ŠpND†\ÚjmN·(Ì 3~\\;ü+LÆ«w„\Õ3\æQ\"T±’ôgK‹§­µ\ï\Å>Z\áu™xˆ\î×QIø{·5`XiV+hý\Ä]\Íøl%C’U\Ý\èju\Ï\Â\æ <º`%Fa\éÈ°-_˜„\å7‰).¨±¤2¦´`(l¹C\à”\å{NVñµør,`ü1‹¨Y	¬\ÙeÊŒ XL\ïŠY¿ð\"|nÖ¸·s8–&c]¶™tC\ÐKÁbVR\ëi)|¡†iù`\Ór­\ÛR\Æ\Ø2MIº\Ô>±˜G\Ïc­\Î\ìº¶ü\Û\ÆeS\Ã•\å| £‚7R£ZŸõh\ï‡t\\+Š\Ñ\äm\Ë=7¸$N¤*\rh9ü6üû÷p§%Z\r>\Þ[®\Z…$aC4ó!:•nf0^\äu,\É\ÃÒ¸B\Ì\Ëbº\Ä_&:oLÂ»ž|þE(\Ã\Ö\ÂÓ±KLXN«X<\nÖœÁ°Ë’ù\åT«isÁpµR²L™\Û-Q	q\ãe	»EÐ	þÂ‹ð\Ý9waN—p,f¶ >U‰f­\Å\ÂÀ¬\éCW1\É\'®‚lÄ¹.4+»%¸÷ˆ\ÊS5¼4\áO\í‡•´ˆ3¬¦k\'S´¦F%c\ÊÝ	À‰w.ŠðJBlqòŽE„V\æJƒÜ½¤»\Ãþl\ë9|Dk*C\Ð\ZŽ¾‹\íÿúÆ¿qXm‰À†.nñ‰¤°­\åuÉ´œ9Ý“T»À\ì¸<,Ìª0\nC\Ç\ÛrycúŽ?|\Ö\"ôÞªÎ›6^\î‚\ê4ftoS1(\Ãc|]B$F$\ç*G\ãù¤\n¬\è\Z\Ï©fzK\í¸P„ø%\á\ãú9ftŽf\áÅƒ±©¼i)Œ\ÇtÛ˜&óX`}1ÿ*ü¾kþ\Ô)Z¹û0}e¤’´(J!XžZ¨6Y™\Í`M@º\Â\ÌXÆ‹A£%µ+©g_BliiRŸ±¶´º\Çóò#rß² ´(ªñ¤--,ŒLZ\È\Öú“xe\Ý\n¬óU^\ÅF÷{cÃ¥\â¶vM\Çö\Ð|l,Pn–T\n&aè˜„w=ùü‹ðZbÂ¼!jGS—\ê3K!Ž\èš*d»¯òñ8_8JU\ç²ôQ\Í\rORMÙ³:…~\áEx´\é0Ž®Z‡«\Ö\ãõ\Ý[ph\ã:|°}+^ßºG7nÆ¡\Ý|ò\ÖNßœÚ³µ\ÛvÃ±föOþ&¦Egaq­_—H\Õ:/ŠiÁ¸l-Å°žn\ê\Üø¬g,)–y\ç¤IJ`>…È·rD¬Ÿg‰ú\ê\Z\Ô\Õ5¸\ïÿH¼¨>\'iÄ¢+7öF5K\æ\Âü\Øû\Í\àÎ˜lü\Æ\Ò3XQ\È\Ê\ß\Ûx]2\Æ\Ô$<5\è\Ã&aù\Ãg-B\ï­\ê.\ãZDˆò±°ÉœCŠ\Ñ)»É”w7\ÖÈŽ2e#aK\é\Ç\ÏL\Ä\Ù°7¥BY»Ebfwi˜	ùÂ‹P\Íx«a@E³!Ö£¡\É=^³Un‚.ž;«} 3B|pÁ3ƒ¤¡{þó§øSX2\Ç\ç©\ÑB\Û\ârUŸÕ²ø|¬¡5Z\Ãøpa|®Zct-­\è_ƒ\Ã.ŠðŠB\äM\Ê}6ò\æe©š4&\ÚbD¾S/å®¤ó¿Ž÷\Õ(a5ñ¼\çV›¬R^Ë„xgg\ÌÆ–!#q_\×`\Üo\é„\ÅA\áFaè˜„§cúŽ?|1Dx5\Ä:Š{J7\ÕU>¯\Çc]³\éÌ€»CCQ}ø¸ûn™\ï’ù’¿2”[\éŒC>Eh	\Ä\Ü\î\ÑXÌ˜gA`:\æ\Ð\Õ\r\ÊP+Œ\ÉZ1Þ¢òf!]3_<\ÄóŸ}ró‡?\Ê\ët‹/Z¥\ÉB.\ä³}\ÈHºÉ²SOý\àg˜kIt\Ï”&~™f(x:ûþ\í{Œ\re\Üf3Nó.U\Ô\×\Âôg,ø\ß7\Ùe\é^·\î\Ôo9˜ðm\éY \èj~D¾+3•ù®\ëÝ“xú3qw\ÉºÔ mN¦û\Í|‹JS.³(XÑ‰JÑ½^‘‰Uñê½Œ}\ÐŒmñ%ª%\Ø2\ì\Ë\Ë\é¼¶xŽûžx£)ƒ|!nöµ<\ÚD¸†\"\\áž‹º!$GuºoŽ`A/\Ä2Œ\Ñ²\Ñj»E([AKË©lÄž“\Ô·\Çéš¬O\Ä=–\Î\í\á4Z*E|\×_„Ý¿\Ð\"\\eI\Ç\Ém›q–¶¬Q\îK=\Z²\æf™š\íT\"”QBâ¨»U?Ø†LÈ½Ú£-\ë$\Ýj­hl¥\åkb:\ÏZqò\à6\ìžüULg>®¤›¼&¶\0+,	tWÏ¦ccB±ºN™U±2*W­>¶A\rõ¢%‘n0ß˜„§³\Ü\â¡<x]\×C„Cs?_\"´#ˆ»Õ´r<l•\ãp¢pžK)\ÅK·\ë\"\Ây1—ˆP:ŠE„‚{j‚3až\Î]„»e\ã\×taq\â#µ·ˆ,‘¡b<b””W¿A.>$L¸\ì ù!³\Ì\åsò\ÑV\Ýq‡{Ö¹¤£€ó2§g_<ˆ\åEC°\Úƒ\'c*±4$Õ½Ã‹¥Ý’\ÕóVZ¾%|-Û€oM)Wù&\áé˜„§s£D¸4\"C‰p\Ó\Ø&\áé´‰\Ð\íJ~bd|)\ÝQé¾\Ø\ÑV<\nŠ±Ž{ºsòupGi	)Bº)2_N3/Ò…‘­0£|±ð*\Ü\ì\"45v\è,I.b\Z†aƒlw\ì$\ÏbÇ¹šCwF¸\Ï/?¤=d	\nµ \ï5\Ü~[\Ö*\á\ÊX`¹VI\Ã=fc\É7uM­8\'ªw5\ãØ´yLó¬´\ÄbcZ™O¸†ù¹’•\ë\ÖZ@\Æû²\ÅöÚ˜|5\Û\Þ$<“ðt\Ú-B¦Ãº^ã°¶[<\ÖF&c+]`·Df`=\Ýh_H“/¤«ý\"”x°b,…\Ã\Ý-©¹Ò¯8Ü‚\Ó!¥\×Ác^P¬¡ˆ¯C„þ‰P¦}\ì1wXº`abðÎ‡8Ž\Z\ã]\Úl\Õ5¡º\'<y\ÐöF4e5¯ò8\ï”ù¼J¹P\Ég[\Ûs\Û!i\Ìq\Õòš\Ç¦n­b\ÍKOae\å,“y¼F±€«YÁ.\ë”Hë«\ÜÐ¥<.\Ý/&a\éx7„xs#D¸),\Ë\"3•eWŸ„§\Ó&B³›y­¸²©n\éÂ†—/NBc`y»EøE8?0VeŠ¸¡\â’Ê°,\åž\Ê0®P²ue\Ó}ð\Å\Ý}4µ7¿‹âž³\"ûu÷\à±\Çy\Ò\nB¬SÛÐ’Ù¤/°\í­\Ðz\r“‚\ÏÙšx–¶ü“\'9E#ÿ‘­­d}æ£¸§j÷©\ZF¥®\n³ö÷\ßÁ\æaÿ€{:E`>\ã+‰\rY\â•eo\r#\Æ\å\Ã$<“ðt\Ú-B‡\ë{Çº\î	X%“Ä³.Špk­\"\Ã2\Ú\×%&DŽŒ+{‘,5ŽB\Ç÷c€¬1h\ì\\\ÜnJ7Ç‚ 8%BŸG„²6I‡¯.B©¸\ÖwMW{\Õ/\Í\ÊWcK§ZBqø\ç\0\Î¹\Ó	\ÒY/+\á\É[É‘k›o\ç~’\ÆY‰O\æ#ªG\ÛIš\í\ÒP\ã\àK\Ù\ï\Ñ\Ê\Ã<g=9]Z\ÞÕ1SpO@V$¨ù2\Éw\r-¡´®Ž+0\nKG\âG_\Ün\Ï\Çò¨,%\Â\Í\á9>1	O\çúˆ°d¬\Ú^FÖ´–„]F\Õ\ä\ÑEM‰\æN\"l\ïC® =\"\\”«,\àúD\Ê.QX¥\Ñî¹K›\íÙ¶Niû!Š¦µE	I\ÒCõ^\í!\Ï&Ûž°€ñ<e–^[#,³™vÏ½R™JWù\rþ#“ðòx01K\r—\ë\Ý™‡­q\Åî±¥t\ÕL\Â\Ó1	O\çK!B\éžPó\róøB+\ãDG1…™7­K\Ðtø¨–¬:©n[2[v\ä\äÿR\à\åY\Zä° \âyÁ§\Ö\"\Â ºRtGY\à\Ü-¤i\êY†D-NT¯Ûƒ­;u`‡*D\ê7\å\Z\äJv\Õ\Úwµ‡:–*Ui—\ÈWx)²ÜŸ\Za\Ò.xI&^ù\Õ\ÝX\Ú-:gb+ 9a\áÆ¾3\Ø`±`}d\n^ÿ\Í\Ï\á:ö\ZóD¶w®s¯\Ð\Íß–\í+¤Ž”\á¥\êZ<\×\Ã\ç\Æ\Æf4Z\ëùYcU°«Ý†\Õ\ß\Å ^\Ëjf|¼÷Ú‹¸¿sª\Ú\Ôô@b–¦d\á@@\Æ\ä›ýu¤³\Û\']¢ñæ¢¹\îkbrJV©ü¥«}M•,o~sq\ØFWyk˜[„\"ò\Õì‘‡\Å55KG\ÆúúB¶´»A\"\äß®&B>®M„7V„\Û%Âl¤ù\×lW}q,™2,CÝ­´D\Êb±í¡žW$…[Vý\Úùó_\á\Î.qX˜†õI9x(%\Ù\Øb\è\Ós203.	\Ó,˜\Ù)OŽþ°õa\ÞSjÎº3I2N\Ä\×öRú\Ï\Ûe1b>XH­j”P\Ûøhj´\Â\Ú\Ì÷WO>e\å]µðò\Ï%´\ÌB\â°9(»Cs±(þzˆ0òºˆp;\ÓF¡ÌšŠ%ó\ÅV±\ì¾\àgn:.\n¦\0éªˆe:z\Ý\Ú+BµŒ_S5¿[\Ç\ï\Ò.\ÖÑµk\â1Y:Á\É\ãR6Ûƒr\îj€“\ï\áÉŸÿB\Í”eV$\à¡\îFaùÃ²¼\",\ÉTû\Ù\ï\ê’I÷-¦‹~b!öü\ÓwðÚ®\Íh<ú6\ïG\ÌZ#œ.iÌ¡™wN\í6\ÄÃ’±\Ød{u¾–dk 	­c¾^\í\Ñ\"1©,vúˆšu_Pž–\åezR®±\ïMg}D¶O\Ú-B†L[zŽ¿(B\Ùñjcd\á#|m–Æ¶¨|\ßð3!\Ô|‰°\åzˆ°K ª—F\ÒJ7…X0>/	§Udl¤†9µƒöŠð¥_üŸZ’~¦%\n§`¡…\×j‰V\ë¬\Ì%\Ë\éîµ‡e]“ñ ­”L]š\Û%3,Áª£{^z.¦W–…\å»-\éj-Í…´°K\ã\ì\Ì\é‰\íqEtSc°“÷±Ï‹iy—\åkxn\×jœiùˆU\Íy8š\èl·4¡š–_\å¦$•d°<ó@“Z\éZ\Õ\">z\rñŠ\ïú\ÔþXÅ»/u\ËS]³“.\ïwó\Æ\Ô\ì¯s=E¸†À[„\Û\"s|²=*\×\';\é²Þ”\"”\å–P„‹Â’\Û^r\Ú+Â·Ý‡\Âd±\ß\ÌH¦°#R±48‰®T&–EÉˆ\ìv±3&«º\ÇCvY\Úš\Ý]Ó°³s\Z\ÖY ›‹˜š\íýAö\È{&k ö¤Va>þ\â\ÐdlO*À\Î8ºiC°#:d/K+Z„ú\Þzmt5óP†|;\Ñ,-«­\'#•\0UŽû~ð#5Lu­¬ô.ê”ˆay\Ø(E%\Ð\"2|±‘.©/®‡·öš€•wD\ä`ST!V\Å0Mø\Ú$<\Ñy>\ÙÍ¸ðs\ïŽ\Î\ìD\áÑ¢D¦·µf¸;r\é–I‘\×í¡½\"|ú\ï¿S3\Ú%sdŠe‰XÍ˜fM\\Ž\Úo`IlZ»eñ6„¦bK¤4ß³Ò¡ W\Ò¬Š\Í\ÅJºo&aùƒ\ì´¬]?\nzÝ»Uñ9˜.«\éEcI|\ZV¤\æ`n`4wf­Ý‘EX&+ƒ\Ó\Ê\Ë¦\Ão‡õƒw˜h6\Ô×«Ñ©h”\Åj(Bçµ¬\0\Î$––Ô¦fw»\êÂ®\éXœ†­ô*–\Å&RH\æþ7¦\Æ\ë)\Â\íi—‰P\Ò\Ä»¢\n|²‡\çº)D(K\ì\é\"”\Â\"\"\\B\Ý[Tþ\Ò^¾p÷\ïY(\ãq0TV\ÈÀ\Ú\ÎIX\ßUv\Ì\ÍÀFZµA=\Û\ÅÔ¤,\Ê,Â’¤<\È\ÊÞ²¨ì¯¸#4û»e›\íýaUWºmQt?“*°4._\íu¸,š$Z†”%¹wý/\Æ\î\è|¬î–¨føoŠ\ÌÆ–\Ø<¬¡7òû®Ax\äÿ}xó}f¨»«¢ž\\-!©šH}?TI\à—š ñd#¶ô§–\nY›ŠM¬L\Íþ:¦\Æ\ë%Â]˜m\"\Ü]¤–ø¸\"\ÜûE¡z\Ý\Ú+\Â\ç—<ˆ\ÄZu§ Y€\Ó}TKÿ%ÐdÁ]\Û.v0n\èB¡0\î\\”‰5‰¤œ;>›b)MPŸ„\éa\éj\Ûð\ratAY‘lï–½‘%\ØW†%\ÝR\ÔF-ó\èb/ŽHW+Io\ä\ïnf\Úoe\\º“•Á3´ú2ªéŠÀ±³°\Ú\Ü3òO7\\`r^]„’\Þ8\×\n\Ù8\Íx\åP“’\ç$%\ÒõŽ4\nO\Ç$<\ë!\Âm½\'^¡\Äp>\Ê×»\"(4ˆ¥ó\Å>ž\ë‰ðúõ\ÎfL\"Í®d!q†K™A\îŽhY((\åb§ô\'E6.9û\Èõ“rRlTCÝ®F\\\íñÂ´û±Ä’¬& J({\r\ÈF2RVÉ–!X¾0µø\é˜\\H\ãDQ\rY\ÕZv\0\ÚFÁ\îîžŽü\Î\Ò\ä|µÚž\èrl¤[%£TvF”aL/l\Ès‹\ÍÀ‚ðhÞ‡yô¿‡Mi=°…ñ\êöN±\Ø0r4\ìM§˜¡L\Íj•5ôýPi]\ï^\ï”þ+ž¹\ç/\Ø,³óii¥B0¹ :&Tg½”w.`y\âµð§\ÜC˜\Ë|/›P]\í!]DO•NÀ®€^-!Å·=¡…0Mc2Ô¶\ä\Â\î¨\Åz:û÷\é\ìÉ¿\ÈÃ±ŠÏ½%œMKxcE\Ø.¾<\ãA,£WG1F‹\Î\ÄFZCYžP\n€,Ã®†bù@–\rô…©ƒ]\Ç$<E´\Ê[h1¤)üKödWaO@žŽ“E˜Äº\Ñ\Ê&©Þ«sñxöl-…lW½1Z(›\Å\çamd!v%b[\çhµ\ËP\Ík/¸ó¯I,\â\ÕK¹²J\rm\\­x\éÞ»hõ#ùÛ™\ØL«\ëeù¼1Y¿Kh§\é&?]6»S):ZBVh;\Êðxhž¡G|\Þ\"\Ü\Ëx]x˜\Âóð…\' ðt:D\ØN¾4}*VP„2DJ‰nÚ¢ðU@D$«\"i\Í|°:*\Û7÷]“ðtd¶\ÉZZ@‰Q—¤\äc^cV\Õuˆ­	yjU¸u|Þ’Ê˜0,ó;\'«†‡‡*°•\î¯Ix—”K\ça‡l\nDkø\ÎÂ¥\î„a‚Z¥?ñ*(þ«\Zy\Äw‡\î¾k(\Âutý¶E^&:oL}s:\ía¯ID¸‡\"\Ü›Ž]´\Ð\"\Â\'Bx\Ï1™\Ø™Ã¸Ž¢k\Ã\Ûòy„\ç-ÀG\ã\n/BR@\íÀ—¯G\Å\ÕD(\Ç\ÚC{Eøâ´¿\Ñ\Æ\Ó5\Ì\ÄJZ@Ù±gax¢Z‹dYp*¯[3º2²S/L£DtL\Â\Ó\Ùœ¥vvÚœP¢VÉ–­žøÖ¿cjR\n\Öv‰Å“I%XE«\'‹ùnŽ-\Â\Ò Š6”5z\\%¶\æû\Þtö„cnxv…%\ãñ\Èb¼ú—û\Õ\ì•\××~j©þ¥C>Zñ\Æoþ\È\ë‰Âº°Tl‰+ÁVºù¾0u\èø¡Ueº\ïG3¯é™²I\ØH+H}oã¼„r<š¯DhŸ\îrˆ\ÎÇ£1]\Å^\äñ¸\"E‡\Û)\ÂWgü…F¶0£eŠNc|”Š%Iª€¬“\Åme\Îß•Y!û\Öù@üõ…Ix:ûY@ö\Óe±\ÜoIÄ£¿ù\rÝ¿\Ã8±n1\æÄ¤\Óõ‹Æ“‘%\ØœƒÕ²\ì­Ç¦\È|µšö6ZC“ðt‰(\ÇBº¡»\"(\â\Î)8½h5\ê[e;j>Ô€S\ßÕ©Á‚ \é/£qžý·`M\çXµ­\Ø&\Æ^Þ¢ó\Æ$<öŠ°…÷|ùd\ìg\å´+.û\â°7±C°;&\ë2WS·v\Ê\â]Ax\ÂñÅŠw´\"<4{*\Öu¢û\ÉXaC\\vF¦cEt*vE\ç¨²¸«/60~ð\ÅFº¤¾0	OgEt\"vR|«,ixñ÷w¢©\é\ïAXK\r\Þ_º\Ëh½d\ÓÏµÝº\Î	tA\évQ¸bó±.±ø’F»\ÂK°-£[BpŸ%xóM\Ô\ÛU›\'W¡²„R0Xœ¶\ì\ì;º\'b´ž\Ö{G\Ý>˜ºt\Ú\ëŽ\Ê`„*nÁ z™\ØW€ý‰•x6´{c³•¥óeížˆqó$½á©¸\â\Ë\èa;Eø\ÚC÷ª¥\Z$†‘™\×R—„Ç«\r$W3>”†\Z_l\n\Ëö\ÉFº¤¾0	Og^P0Ö¤\æ\á©\ïý˜7\'ƒ®¨ol€£V¢0¬»\ÅÜ‘“ð\ç xlM.Â£‰\ØI¼•lul¦Qx:\ÒÙ¿3¹\ë[\îžxKùYZ¦&“ðZ\æ#ª˜P\nF­\Î\æZ,a… Á\Ó1EXKkažŽIx:\í¡|ö¥Š)x4˜V•\ì#Œ\á$Uá¹°\"¾Ï¹¢ø<\Ö\Î#>]€OÇ—\\B‡\Û)\Âg\ï½-¡X‡¥Œ­:…cn\×0¬\ë\Z‡Å£°\Ô\é“e–8Ÿ,\é\í“ðt6t\r\Â\Ö\ïü¯ô<Z\Í\ê%jœ.\\h–HŒV\ë\Âi¼u\Ç_1›•\È\\‹»CñpR.6\'±\"0OgUXžZIDˆ{pºå¨œQöZZGÕ‚‹’\è\çXB\Zª1\Ú.\Æ\Ó/Æ•a5¶¬¡\êSßœ\Îõ\ác\áþø\ì+Š\Ð$@\á)V&O\ÇRxmdœ«óL|\é¡\ÖOø\áIÞ‰kU´\ÛD\è.\Ü\×\"\Ây–`¬\rOÁ\Úi\èHÇªð\n2›Lƒt\à›ú\ÎtL\Ô:‹ºE\à\Âc»\ÕO\Êº‡?òExu	G\ÖlÅ»K\×\á\Õ9Kñ\Ò\ÌExy\Öb¼2{	^œ±\ÏM›‡g¦\Îi?°‡¦.\Âkó–\à\å9+ñü\ß\á\à\Ü%x\â§?ÁfV 2ùumz‘Zˆv­\Ù\Ãñ²Akw¬‰NÀK–ÿ\å\àL½ûÞš\á0}%Zœ\îûÁ¨{·ñ\è›\ï\ã¥_Þ¹Ñ…jC\Ïº\ÓeŽg\ìG75*‰–%Y±9\"k\Ãb±*4\Z³-\Ø\ÕkjVn\à9l´´À	þB\r\Ø\"\ç\åC&oË”%y\Èæ¯j1)y´Ô¸\'ø\Âi\Å;Sga3\ã\×WBŠT¿\ÜÊ”Lµ	© î½°›nÿ%h\Ýz×€°.õ\ã–]¼D~@ý\ïžùO\ìN÷\ï^\å\Ñ\ÌR*\"|*$\Æ\ç(‘=šX…\"Jp€ÀS\"4<O¡]o	\Û-\Â@¬‰øX„²õ°\ì‘wýD\Ö.\ÂÁ¬¬´*-Œµd¼¤¼–g™\Ò\äùû\'†\Ô(Œ\ç”)?\ê[qxóJ\n-	»\é\Î\ì\nÊ„,;¿ˆñß²\ÈD`\á[Á¸\ê\Ýoý\08Y\ãN\èVšepž†\È2ž‡;\íY\ç·\ÐEµóºk\Î\áÄ†õXþ\íï¨¡kK:\Ç\ÒÚ‡c-þrŠs=\ÝÅ	Ex8³\n\×30~…¿!³)ìš¨I=R\nP„\ç¡<‹\0/®¦À§“NÊ•Vz\×\ÄÁFK2žŒ/Ãž”\"l	M¾(>o\î‰\Ís\ãC€Y´˜?ôIEØªDøth\ÏUn¥ˆð\Å\ÈR<\Êk4	O\çZº«qS‰pyˆ\ì\0ôùasV\\œzfV«E­(&\r\Ìhy-o2›\Ð\ÆZ\í¸À_`\áá…Š‹ôüª9¸‡®\ãš@TZCiµÛVB¤\Ó\ÍMÆ¡þŠPBž€\\\\KFÞŠ5ªg…Á÷M\r¼z÷o\Õðz«y\î:\Ò\È_;\Ó\Âø®ú0\êO¾³ï¾ˆ¯Ä™·žGÓ‰·Y:Oóû5hu\É\Ìz÷\Äc9S«ˆMN\Ì`ƒ;=ô<D€žcR\äwmo½\Åa\Ø\ÅkßšÊ¸0³º¤ø´t\n\Ý2\Z¥½\"låµ½\\y+†|,\Â\Ç{\\\áÁxº˜>0‰\ÎŠj¾D¨º(\Ú)\Âù‚°62Uµ$\ê\"”\Ñ+¢2Œ\Â\Ó1	O§Ý–ŸWô \ï¯#*\Íx-6[=\\6\éP“„iÁñUË±¾SV\ÇgbUJ.VtŽÁ–t\ì\n,Âÿø™š­.0Jd\âjz˜± ]–8lfl‘•d¤©^\í@¡òCn¡¡ŽVMöš´d\Ê\ZKž5ó€ &óòÿ&‘b-3\'˜\îŸà¿ôÜƒ¸/}ˆeô¬-$\Ój\âs#žý\éo±²s\nžŠ*\Æjæ·„ Rð}Y9…—ø<CÁ<x‹°Y¼	?D(­£¯VÞ†gBsñT|žŠ\ëD„/G•\áñ\Ôb<“À¸\Î&\ÑysÓ‰pMddˆ˜G„&aùC{E¨\nk?)N’¿r“‚|Yð¼ÿ„\Øä¼­<1]P%Y©¬¡	§X°6[\"°$9›\Ò\n±3˜.iP.vLù&¯Gfúñk\Äsòtv´2\Õy\nÁ\Þ$\æJ\Þðµ•¿!/\å”#§e‰÷¥¨ô‘ˆ<\É\Ç\Z\å…|G> ?&ù\Þ\æ°ó2­*>ô<DxVº¡že=úÀ®}XŸ\\¡Æ‚ÈªÄŽÀ\ì\êš\ÄøV8›-œ_#Q„öŠP¼ŽC•_Ás¡`B¾jLy*©\'^‹*Ç“©%x.¡\Ô\'/&”]•Ï½;º s°¡t†\Ë00]„2L\Ì$,h¯\ë\é\Þ\È\êar/7”YHIµ6ªu\âðúÕŒ\Ï\"0\'(\Zw\ÏÀ3‘\Å\Ø4\å6†V\Çù9º‡\â~òIs¹—‰Ed\áS\çP\ç\áCýÑ©f¸\ËwZ­Œ\áø7ùžü~3\Û$Q¤\Äz.Š¯­¬x\äo\çY	\ÉgÕƒÍŒ_%\å ·Sñµ´\Ði\åu\\òh>‹G‡MÁvŠecl&6¦\ä\à™,¼Qˆ‰¹f\áQ\\®\Ö:\Ù^wTf‚ˆ_Ë§e+À³´\\“z\áõ\è\n<•VŠ\ç\Ë|b77…\×E¥]\áÚ¨|¬a\Í(]\"B\ï%\î¼1	O§½\"”\Õ\Åd^¸ô‰y÷žcž×ŸO\Z\ÕQ†\çùNzwd&ûÑ­±¢k,6\Æ\ç`?\Ú:K4¶Nœ\ÂRvÖ™v·`«eLê¤›\È4•4†ƒ_–û“\æy—Û•”÷öf\n\É\ê\Î\É#1„b\Å$•\×RX\å¸ü]\\Mqb\å˜\ço‚t5\È»d\r\Zþ¦”s±¦`ø\Ð\ÝPeMM\r\Z\ïú»\Z2÷$Ý½mQ\éj|\æ³9^M®\Äúø\ì‹\Î\Û\Ê=_\ä\Æ >\ÏH\ázˆðÍª¯\â¥ð<—XH÷±\Ï$÷\ÆÑ•x&­/%–·›¶7&l¢­’\Ú]§•\Ù+ˆ\ë\åý7‘	p‚‹b’÷\r¼@ºŽ\'W®¢ð\"\ÔHmt‹¶3]öG—ay\Ñ`\à\ÄI0;ª¶ï± ³‘²iÓ¤}?#¢V÷\Î\ìõM°\×Õ»óG~K¹ŽD–?”x\ÔÚ†C¾\í)\Ì<\ÔX‡F[5E\Ù\Ès6òr\Ý[°])ýDŒ.\\À»ï¾«˜Q=•D\Åd\ã™\Ä<<–†Ç’Š\Õþ‹>¨‰\Ð$À\ë%Â·z|\í>—t½E(‹÷\n\Åc>\Æ ¶+\Ñ*\Ë\ß\Ë\ëBž#\ìù#€²	@\Æ´Z\n\à|÷#w;3\Î\ÕÌªQA`\Ì\Ð\âgK«O%\îñ\àle¡©Á\Ò\Î\áXœ¤\Ö\ì_–£ËŽ´²œ\Ì\ì6\rj\Ö1Žü\×Xh	FÍ£{%½Ý—¢J§\\§,Z«]Û•Ð¯ù“Àûô…X¥B‰\Ùx9’bb¥Ž/^‚-\Ý\â°/(²l\Þ\ÆOÛ™6,ñØ’S…\æ?\ÈOQ—h§”\ïÈ™D2Y¹‰¢–[U¢”ƒ¥h+§ò\Ï!i\Ì\ÔñG]Y~V\ê	\ÙwB¬\ç\Å8Rþi\á/Ë¹\ä\àYþœª\ZÐºy)ó2\ì¢;y%—\Ò\Ô\ì¯c\êw\Ó\Ù\Î\Øò\Â\ÌE\îk\ßVEh±\í¼.iœ’\n\Æ5v¼Rz>ˆ¬À\Ù2\â¥‡£zã•¸J<™VŽ—)\"_¼’T\á“Wn”K\Ç™a\ç\"4g\Êó¾¥\04¸lLIwY—‚\ÑH·\ÈS\Ù7µ¹H’w­t™j\Z\Z)\ÂP%BYRA&\ÊzD(3®‡W†\Æ\ã\ÜûP-û\ê± JKƒZE:œeNœ\Ë\'\"\Óö ÷\ë‰¥»À\ÚÚŒº\ÚfÐ¯P.\'V\Óv‰Æž¦E\ï%6{\"°Ï’†Í´.[À#¿ùœ‘\Ò\'*idª¶È°µ]\\)”²ñ‹qQ\Å\ÕÜ®µ{6„G£òÁ\íÕ¸\ÝRiU»K¼\Éñ\âMµ[YT~ù,?«v5–kùûbµ\ÈÑ¶Ô¬«\ÆtÞ¢ó\Æ\ÔÚ¨s0ª\ËÖªk=ÏŸ-\Ê}I—ŒÜ›\\§O¬V,ŸŒw‚Šðtj&”\àÃ”x9©¦7fžŽIxÞ´[„Ö²1pŽr‹°€\ïD„\ã€ì‘°”Áz¤F©J2Q\n¸J¯U9h{­\Þ\ËkIy¦j[ù\Õe]Â°>$ù†‰p™¥¬û÷¹¯…G~¾Eâ§¶kö\\\Û‘/´\Ó95\Äó“\Þ\0U ø^,|­v\árl·„C\Ö(\Ù\Åt¡[*Ã´žì’G\è‚mèš‚EQ\Ø\Ðs\ÞZ³†·&{\Ð7Ó¸Ê¼\Ù‚‹	¡\ÙiI•~\ÎZf‚¬¥¦\\RA\Z\\dacñ\Ä÷¸\ÛGX´kxœ)GõDõg\Ò\ÓQŸ\áÅ¿\Óz\ZG¥\Êu]À›?ù5VX\âðZl%^‹¯¸¢ø<î¤©\ïM\Ç$<§™FŽY+\ÔýŠ¥ö¤cC«\ÛÇc¾h\â½<?ü8\ZU‰‹°?4\Ï\Ò\n\Êˆw3z…§c\Îk)U\"BŠI`<w\Æu×Š½l\ãBÆƒJˆ#\Ñ\Â\ÑY\Â\×9\Ã\á«D\Í\Ñójµ±-rS’\ï¢> ¼–\Â!\Ø\Ûp\å/´\Ø\Ï_\áfŠND(û…\Ë~\"B\éÀ\×g$˜0M¿\Ñ\Ùš„–\Ç÷£¹¾õ5­ª¶”‚.(-øž\ëºžký¤x\îÿJÈ YDW\nLÕŽ\ëPgkBõò\Ø’‚½ÁY\Ø“‡M	ù\Ø\Ê49Ä¸* O\ça\Ój}`öD”\â\ÕøÎ½ø…\"}<\å ðdÃ–þˆjwJƒŠdV[A¤QD+Ñ¥§±H,Ÿô\Ê\ßd¸*°²EšO¾,~(Eigøá¶¥t?÷o\Ç\Ú\ä\\l¶„\â…Üž\ØË¼<’2\Ô8ÀY\äl\ê{\Ó1	O\çp·B\Ø¯ÁiGÞ“¾V\åO;Q\Í\ÊAòº\í6¯\È)\Û)\ì\ê5o3M\ßIe[†qx>»/>JbE’H!ù\àu~\Æ\'i=¯ù\Ã\Ü\",\Z¥Dh+¦5·4®\\\ïg†Krg¦šc&K\â©M\ä5ÿÄ—,q»2òž¯\ã|3–w\rÇ†\Ð%ÂyE(\Ó|®‡§Yº v\ïfþ&/¤Y\Ü#Á\×V^›\\‹\\ßD\î\Õ’&ª…‘V}\\¼.ø\ãsfb1\ã\Ù=]R±\é²+±[\ãdEg™\é-\Ø5-Ÿ’A\Ìô\"ª\ã\Ñxt\ÐWqz÷n\æ«E›\î‡TŠò+ò—\\^­¶&JŽ”¿?\Ì¸­³X*-ZU\é#‰ŠU¹\Ö<ó,\Þû×Ÿ`?­ß«tßžK\É\ÆnºÑ¯¦õÁÔ¾W\Ü,›Sß›Ž©\É_\ç)\Æ\Èu3\æ²Â‘\nžwg\å=+øšI©Ê¢/5xi\ÔWñB·T¼\ÉJ\áPj?<–\ÔO¦U\àýð<¼ž@¡ù\àP\"­¦/²ú´\ßu”Ž3—–0Ÿ\ïyž&\n²Eö¯§kŠ”ÁÀ\Ë/½ƒ\ÚSo\ã\Ô\ÉC¨9ý6ê¾\ê_EÃ‰·qþ££¨9vµGŽ£\æðQþ\íšBÝ‡Gq\æ\Ð;—‰p=o|#™ˆPD&\Ñ¦‘ÿ:÷$G\áõm\á<w8yÇ¾ˆ\ã§_D\Ý{/¡\î­7\Ñð\ÑqŸ4}t¢]4ñM¯\á\ä/ þÔ«À\é÷`=ý!\Îy\r\ÏÍ¸‹Šsðhx!‰,R+w\É#nˆ/ÀzZGq\Ç÷¦É„\Þ\Õ\×v »·Z·eµ%«\Òza\Óý\Ç>z\ç\Ï…µ‘6M,¡TŒ%\ÖSi<$…µMs\n%D)Àò7\å\Î\Ø\Ð\Ô,þ¿(•\Ù{Gð\ÎÝ³°v\Ô?\ãa†$»-Ix7¶¯òºžM\Ê\Åù½q€\×û\é\Â\Ó\Å\'<K™ú\ÞtL\Â\ÓÙ˜‰·\î¿-,¨9~Õ¯?ŠÓ¯„\ãý#¨=þ¦OðÂ‹øp\èmx‰iû\"\Ý\ßwú«í¾ŸN«\Ä)ž\ß(,7’ª|òfN¿ö‹\ÐY6ö6Cc¡tWð<™\ÃñN§|<\Ý-›q@4¦\Ë\Ö\×ô\Ñ\ç\Ó%™m	\Ä<y\ÝÅ‚…\Ý\Ú\èlÁ¾_ÞÏ,üŒ+ºE(n¡\èdÆ·G„YÈ®‡Ÿ²¨¾¶…–dl±$by—¬Žv÷»‰\åX\Êkò\Å\n^o{X\Ésøb\ã»5‰\Ø\ÏFK*VQH;º%\ãYKw\ìeATK\ç…\ÑúE`g\ÅHÁm¡%\×.£›\ÂR±¡s,\ËÆ¾ô\n¬O/\Æ\î€,¼eIc\\™€\Çcz\à±ÿ†~ö}û\á:ñ!5V\Ïÿh-\Åv¹Q\Ï2:\Ö\ÙJH\áÖ·ƒó\ìûp>z\0§sö‡½t\Ýv\Í\Åû‘U¸`)\Ä;Yý±%&O„\ä\àPL¹\Z†ö0ã«—\")6‘Np\á9lS“¾?œ´d\à\ÅÀ|ì—†•.RP–\ê\ny$8\ÏYX)X2}òX\á`<\Ú=Mu<—Q\ãt¡_\ë\çÒªð!\Óù\n\Ío&Rh>x+Àõ¡#‡î¨ˆ°tœa}!\ß\Ëyr\è¢VL@m\Ñ <ž˜…5\á\Ñ\Ø“@÷(\Ãb°5>Y5²lŽ*pCm“‚]Œma¬É»¦*nd!ºQ\"|2<‹S2±\"(¯0v\Ú™€aÁ\Ø\Ú5\Êòv\áù>‘©\ÛÃ¾\ß\ì\rOÇ¾\ä<\ZŸ„ç‚’\Õ*_\ÒO*}§\ÏG¸\ê•d}—\âªðDt)¶‡d3^\ÌÁ“|} 4‹±U1¤9ý‘¤\"þ=¯D\àE¦\åctS‹I£UJ\Ã~¦ñž 4\ìÌ @s°\'0{ñ\Ì\Øoâ•¯ÿ\'\Þý\áopø\Æ{?ù#^ü\æ\ã\áÿ€-•c\Ô\æ-\Ð\Ò\íê”¨¶k\Û›Ž\'’³ð|r6^I\Ì\Ä3x:*/F—\á\é¤\ÞVo¼\ß¯\Å\Êõ¸G \èx\Ä÷<$˜„\åo\ÑM{ˆ¿{*¶\Þa™y\">‘ñZ>ªC{á”\"Ÿ¼\\Ž¢+ðRAö°<|\ÑG’†áœþxŸe\Ð$<“ðt\Þ.Hö½\rv\éh/\ZG\áÐ,\Z[¥¼¦ˆ\n(NƒðüBvò\åùjJ†ÓŒ`m@¢r%eýU\àjfü:\n@|\Ý\Â8N–ñ\ÏR+@¯gŒ³1Ž/¤e\ÐÒ‡\Öô½\äLl\Êö‰g>\Ü\ÕðžªsV$žAÌ¦\Ìúp.ž.€+u\è\r#&¡ =\È~\r\ÊS˜ú\ætžK’\Î\í+cr1u^H*÷‰©ER\Ç\ÔX¢s(\Þ7&aùƒ\ÉE\Õy»pE8à«—ˆP\â9¡\êû»\",Gþ%\î“EC•Ÿ¿®[\nV¦)!ŠPDLj+\æ¡ZcE\â/\Ñy\ã-:oL\Âò‹HóRzL\Â\Ó\Ñ\ç\Â]ñ]\ë|9Ïˆ’+qµ~8“ðt\ÒeôðLT\ÙEž.W¼@\ë\å“ðtLqœŽÉºé˜„§cžŽIx:&aùƒIx:\ï•§‡ý£»oOö™§eØ™­|\ì\ÇðÞ¢ò—Ò‘°\æ†³`$\Ðc\nªG*—J„¨,b|¡\ÛZ\Öøk\è\ÉH¸\Ä\Òx¯¸\ì\É\ÅÔ‘\Õ\Ã\Ú]__ÈŽE¾ð,\n\ë‹+	MÁtð\Ì$0\Í&Ð‡s™¸’ø<ýpzë¤‰X_daòð](“ðtL\ÖM\Ç$<“ðtL\Â\Ó1	O\Ç$<“°®\'‡{¡\Ç}-E\Ò\Å ]£`-\Z[c=Z.w|xi—„¿\Ø(B‡4\Ô\ä1>\Ì\ÏsN\ÂŠ^Z¿\Ä5]Kñ1®Y•©ž\åý&^iV\ßL«(ô\íÁ{	<ñ\ÞO\Î“5\Ó\Ñ\æ]x\ç\Ê	^\âóv7ua™Ð­š©Î»uÒ›\çb)–8\Ægmˆ(/\Å,>&\á\é¼$Bó©ƒ[\Ç$,cßœ†\É:\é˜Z4ýÁ\ê|\Ô\"Exë¿£¡TZ7\Å%;\Å\'}6NIûE\ØHTõC\æ‘tiÀ¡{ÞŠ…CT\ÃÀÆ°µ~\æJYc“\"\ÜŸ§ö!\Ø‘…²%Xv»0	\Ë¼÷“ó\Æ$(ÝŠù\Â\Û\Ây¸\Ú|9E»ºU\Ó\Åu±\àj\Ä+ž‹Aºy>Ž\âj\Ãd½tL\ÖK\Çd½tL\Â\Ó1õ\Í]‚Ax:&\áé˜„\åoSh¾\îþñû¨/§ø$.,p•¾?å¢–0Nôv/ý¤•\âV\Ã\Ú\n(h¢´¢ò¸Äˆ\ç\nSˆ\Å\Ø%-ž¡Y\Ê\ÝW€­,\\²‚Œ°7ºˆ\Z\Æ8NCf´\ÓvV:&\á\é\è\âò\Å%\Â\ãý_\ë|9Ýº™Ð…§‹O	\"Ñ»Lx,Ú•D¥Î„IX:2€\Ù&\áè˜„s	\ÉU>1Y\'·’z´‹w}ó\á„¢ÿõ¿PWI±\ä\Ðbµ	DD(\â¹\"”82š†¯i\ÅÍ•Q\ZkP>G³†\á•\Ä^>®õa\î™-,ˆJd!b\É.žŽIx:&aùƒIx:&«¦£7’\\\r\Ý\ÂyO\Õ\Ñ\Åw‰¥ks+¯\Ä\Õú\ádjŽ/tÁ½L\Ë#¼’\\yý\ï&L\ÖK\Ç\äBê˜„§cŠ³tL\Â\Ó1	O\Ç$,0	O\ç£øEø­£\ÖK„vŠE‰°Œ®£.¨OB\Å-J\ÌbY›Š‡ÁZ\"VF\Ôðüy\Ã\à¨ü*Ž\çŒP}Z›\Ä\Z†g©\Îf\ét\Þ\Ù&F˜„§c–?\è{É™0	O\Ç[hW\Â(Àk˜/§[6—¸–\Ä#>O?Ü‹´6¾ð¶„‚IlW\Â$<£©a´n\Z&\áé˜„§cžŽIXþ`žÎ±ÿ÷CXì¿¿H›\0Ž§ø\ÇQ-¥Œ\Ýh½T‹¦IX×“Ì\êX4–VúvÆˆ\ÛY\ØvÄ•a]HŽz¿#”\ÇB\Ò\Õ\Ê\Ì[‚S\Õ\êÖ²OœÚ’+2\Ë\';\Ú0õ\É	¾Z\'õ†\Þ.¤gt_K¡û’>-Ç„©\ï\Í/¼\ZB¼1õ½\é˜\\H“õ\Ò1µ8ê˜„\ã¦8\ëR*\ÚÅ»z{ø ¥\'Þ¡\Å~7\Ï\é=ñ&+žS{\á£\äž8œ‹Sÿý+Xœ·ÿ\"‹7n¨´`Gk­\ã¸OE„\Ã\Ô\ì|™—x¾t$^J©\Â\Ù!€B£¥¯\Í#\ÓöˆL·¸( qb\r\Í\âó ‹O¸D€\Ò\çK€\äªû\ËDx­¼z,\Ñ\'E·`&L\ÖK\Ç$<“ðtL\Â\Ó1	\Ë\Ì\Â\Ó1‹\ëZ1	\Ë®&\Â3¿ø\ÝÑ»§©2lm‚{\n]Dk¹ôŽ‚\ã\Óa\åXó†¸ozLA\rSv¼‘‰©be‰A,ŸˆN\íGñ\\%Ÿ}á½“\êe–/\Êw?œGx\Þ¼\è>^ÁúyD§\ãÞ“	%1Í‘\Ó1	\ËL\Â\Ó1	O\Ç$<“ðtL\Â\Ó1	\ËÞ¡\Ë\çù\Ì\'ç½¤ªvq˜\"T‚¤$µY\Â\ß\ßEN›\rk\Ê(¸J&\ÂEk$\Ã\Ì\åâ–Ž„½H\ZTDˆ7Gqnñ\çò}\ÎÕ…Q?/2\è\ßšŽm\Ñ\Ùjð\ï\æ\Øll§ò••¸\è¦\ê–Í„Qxº\ÅóŸ\ÞJ\éq7}	Í³\ëŽSŸœ½Á\ä`B©\Â4GN\Ç$,0õ½\é˜\â4“°tL%:¦8N\ÇÔ¬\ïf\á\é˜\Åu­˜„\å¾Ÿ\ê¡X×\ÚDøF-\áß¦S„– 1‰\îg\é$ Œ\"\È\ZW%\ÅH\Úüœ[øIhÁ—\Ó‹e\ê“±\ç­8W2\Ï\Ð\ÒìŽ E£º)<›¢2±=>»e£\ÆHŠ+$\ãq™¸\Ú&ŽW´pš¥óžn\Ùd\Ã+õË™º\Ü]\ÒXreL\Ö\ËL\ÖK\Ç$<Sc\É%° ú\Â$<“°üÁ,<³¸®•÷“{´q;\ß\ç}Š[*B|‡iv$¥ŽQ„o\æ¢z\ÑrŠ°\\H\ZJ!Lv‹!crE„V%B\Íu¼H¡ZM\æÊ¨\Z\Ç[hkŠ†©\Ýy\ÌW3›\Ã\è¢\Æ\ä¨\ÝR\Õæ—¡Y—X5&ñ\é–\îJ\î¢Ð®f\á|O.<%>\n@05–è˜„\å¦¾7“ptLÂ¹C‹£Ž©\ÅQ\ÇÔ¢\èï²û¦ª]˜„\åbñ> \Û,\"Tña›\'ºE(úS\"<›HTyE8HTQŒt	m2\Ò\ÅK4\×qym…m\Ë$²\×Ô–?ôb?â¹œax7©ž!†gª¡j,	Ë¾Äª™\Ð\ã9“\Å3‰\Ï»©ø­M|º\0/q+Ex\Ä\Ó§÷\Éyw\è]Lq\Øõ\Ä\äBê˜„§cŠ\ÃtL\Â\Ó1	O\Ç$,0O\Ç,®k\Å$,ðˆP\ÜR\á{\á\Ñd·eÉŒ‹\"<H\ëW5\Å-Â´\0\ã4|:\"”9ˆ\"À\æ\â‘h®»T\0å´†Ã€lVtM)Ä—ie÷V‰ó”%Q…\ç\\&:o|	P¡I€\ÂU]L/®$>o¾@WO0	\çzbt!5Œ\ÖM\Ã$<“ðtL\Â\Ó1	\Ë\Ì\Â\Ó1‹\ëZñX°OŠ¸\×$BXz£±d¬eýQ[BAª¹„Œ\×Júš…ó)\"K(¶ŽÀ…üÁ*°=H‹´W\Z\\(Ä½©%Jh\"¦\'£)¤Z\Çº¨Œ#÷\'\â‘ÌŠK,™	S·€Ž±\ïM\Ã4=G\Ç\äb\ê˜ú\ætLqœŽÉº\é˜Z$uL\Âòs·ÀÇ¼‘\Ì\ßðÞœÿI05†øÃ‡´V\íA\ZY|ñ.ó°6g8^b…ðvR?´&Å›=ñFA%š-Ñ—ŠPúmeƒP_J\ë#­¢,üÍ¥ý.Å§MK\Ö@¸h%\í\ãp¾pVD\Ð\ZRˆ²D\Â#	´^‰´J	¥j‹e%\Ä\È\\÷¸Ë”R£ðtL\Â\Ó1µ8ê˜„§cŠ\ÓtL\ÖK\Ç$<“ðtL\Â\Ó1	\ËL\Â\Ó1	O\Ç$,0	\Ë\ÄBµ“ðt> ·s>k^eøNJ_4$\ÄûY}ðF^\ÎYb>ak7µB«S>\Ø\ÝQŸ?\ÈŽ\ÖrZEƒ0>Mœ23_*…Ê‰¼ž18™;ˆ±J9žŒ¢¤$\ãñ$º<&\rŸ=U \ZSÄ½\Ô]I¦¾9“ðtL\ÖM\Ç$<“ðtL\Â\Ó1	O\Ç$<“°üÁ\Ü\"ù1o%Wú\Ä$0\Åaþ`–?˜„§s˜qõ©Œþ8\Ä\×\ï§ôÁù¸>8–3\0o\åT\àp§\äEx.k<ùx8Ê†ªI¸6™Q‘M\ËX)ø¸;\á3A\Zlò‡Á%\ãLie\ÖM\ÉHfp%e«XO\ÆXJ#‰j…¤‹(Sož‰.R«/{\ÇpÞ˜ú\ætL\Â\Ó1	O\Ç\Ô7§c\ê\Ð1	K\ÇÔ˜¢cŠótL\Íþþ`žŽIx:&aùƒIXþ`–?˜„§#1\á\Ñ\Ô\Þj´Ì‡©}p\"¾\Î\æ\Æ[\é•x3¹\äcžÿ]öqp•\rƒ\Ì!l\Î\Ñ&B¾7	\ã\ÓD\ä\r…=k€{‘aVÎª	¨\Î‚\ã+•ûù‘n‰\Åª9o1Œ×¢‹/i(1a\ê›\Ó1Y/“õ\Ò1Y/“ðtL)—`žŽIx:&aùƒIx—ryß›ŽIþ\à\Ý\â/&\áøÃ‘´\Þ>9•\ØKù ­\ßSˆ¬8«³+/\âƒ\á·|,\Âú_ß«D\ç”É½E\ã\Ñ(}v9£`-—÷|ýY’/³;ˆL2.\Z®\âC±ˆV\nT\ÖÃ‘%ô^Œ¢kž¯º1¤5S,¢LÃ‘>F\ïJoL\ÖK\Ç$<“°tL}s:&\áè˜„s	\É\æVI¦IS‹£?˜[$?\Æd½tL\Âò“°üÁ$,0	O\ç\\R|H+øQj%Ž\Ñú½ŸVš´x=ª5?ý\Í\Ç\"\ì	\ÜSŒòÇ¡A–@Ì£E,w\Ô ŒO“i­¥\0\é&ƒn¨«p\ì2\è[˜\ÓjW\ç\ÇÑ”~x%¶OG¨Æ–gD@´\"ªÀk~œ7&\ë\å&\ë¥cr!uL\Â\ÓñŽÁ¼1	O\Ç$<“°üÁ$<“ðtL\Âò±2\íÁ$8š\Þ\Ç\'\ÕI}ña?—RNV\àýœ*\Ô%öÅ«ÁEÀâ¥—Š°%ª·[„y¡ìª”?M\Å\ÒRjÆ§‰&/¡%,WY\Ä8J¹¨²nM+}k\éG¬\Ë©:ô%T\éIex–5\Ïó)²8\Ñ\ås\ätL\Âò“ðtŒ.¤†Ñºi˜„§cžŽIx:&aùƒIx:&\áé˜¬“?˜„\å&aùƒIx:µIýp8·/Ž§”á¸ˆ0¿\'jb{\á\å\î…J€—ˆ–>h®˜¤:\ì\ÏS¹H…•—„ñ9Â‘7Š\î\éX´\Ð*ž\Ì€—)\ÂÇ£rðdRž\Ë\íYøöùdº†\é=ð\nýr\ÕÿFwUfˆ¿–\Ú\Ã\èBê˜¬—Ž©\ÅQ\Ç$05ûë˜šýu¼§\æxcjö÷“°t>¸\n¦¾70¹ˆ:\ÇRz\ßPŽ§öñ\É;™=P\×\ï\äÀ»iUh,Æ›i%8nÉ»\\„®T‰\Å\"Â±°–\Ðê¤Ž@µXCÁÿ\\!«g<;5\Ã\0÷R{Œw\ïþúlb)^¢EÊ³jp‰uw=¨\å\Z\Â\Ó1	O\Ç$<“°üÁ$<“ðtL\Â\Ó1	\ËL\Â\Ó1	O\Ç\Ô\â\è&\áé˜„s=1	O\çpnoœ¡\å{7³-ao\\ˆ+\Å\éô^8\ZC/\Î[„¶ùµšÜ«¦3õžø\é\Í\'l/jIÆ°e\Ò\Å2µE\Ãp8£^‰+\Ä3Yn—1ù\ãõPD€\ÏÆ¸G\Â\È{“ðtL\Â\Ó1	O\Ç$,0·8~Œ©\Ù_\Ç\Ô\"©cŽ?˜\â4“õ\Ò1	\ËL\Â\Ó1	\çzbž\ÎÉ‚þ8\Ë{M\í‹Ú¬Áø ½u±=qü\Ö\\.Â¦…+ðÁ\î9„U\ã\ÑÚ“[ö’ð\î2ø¼!«¸	² Tù¸*Æ£¡h8Ž¤ôÀ¡\È|¼\ïn…|E\Za¤\ëB¬ (aš„¥cj,\Ñ1\Åq:¦f}0	O\Ç$<“ðtL\Âò“ðtL\Â\Ó1	\ËL\Â\Ó9–\Ö\ç†r<ñžN\æ\Ð\êQ€Ç“ú¢9k(^/¬¢+šó3\æ].BÁ\Z9¶\ÜapÉ²õýÇ¹\çø™\nþ\ç‰\ÂÑ€.È£-S¯*Ç»×¬\ÉŒ³©=ñ­É¡\Ø2¼UŒ—¢‹ñ2\Ý%.Æƒo\Ð-05–\\ª/L\Â\Ó1	\ËLÂ»³¸®“püÁ\ÔX¢cŽŽI8þ`j,\Ñ1	\çzbž\Î\á\Ô2œ\Ë‚óñýPŸ5‡\n.Y’(·uw©«¾{úP´òË¶Þ´,jU\îÑŸs(<M“#KdŒ [\Ê\ë®`R2\nÖ‚aªz?V1š\â‹.Á«qexƒVRøfFo£p.Á\Ð\â¨cjq\Ô1µ(úƒ©\ÅQ\ÇdtL3tL\Âò“ðtL\Â\Ó1	\ËL\Â\Ó9‘\Ö÷†r2½ŸO\ÞO*Rm51}qF\Ü\Ñ\Ì^x\ÆA\×\Ý%\"\Äþ¤ºG§HŸœZk\ÆXð??H¿¡ ‹EIg¾\\·\êÆg¾¯\Ë‰Sñ…øFL™Š\Ó\Þd\áK(û…›\â0“ðtL\Â\Ó1	\ËL\Â\Ó1	O\Ç$<oQù‹©\Ù_\Ç$“püÁ\Ô- c\Îõ\Ä$<\Ã\å¨\É„\Úð^8œ3§¢+q\ê;?¦Ü®$Â‡–\0),\Ìj.\ßP\Ôõøü‹\ÐV4\Õ(\â#\Ò\×)#k\Ú\Äi/Ÿ¤„(ñÝ¸J¼)\r&´p\â’\Ê\ØM“ðtL\Â\Ó1	O\Ç$,0	O\Ç$<“ðtL\Ö\ËL\Â\Ó1	O\Ç$,0	O\Ç$œ\ë‰Ix:\Çóz©Q3µ!=ðv\Þ\0\\(-¦Ü®$Br2°(§cz¢¥Ç­—ú›i°)ƒ\æÜ¡8\ÉBûvT!^\ÌÃ¡„¼—\Ù‡2èª’7\Ò{\à\Í\Ô*¼Më¨š\ï\ã\Ëñ]WS·€Ž©[@\ÇÔ¬\ï&aùƒ©1\ÄL\ÂÑ‘	ª¾0µ(úƒ©\ÅQ\ç\äU8E¡ø\âDF?Ÿœ\Ê\ä\ç\ÚÁÉœ\á8^6\\\í\Ér,±g¢úPf—j\î’7Bõ?ÿˆªb[\î˜\Ëõ\ÍF¡¸¬£ÔŠ\âµYqŒþøûLŒ·\ËðfR\Ý\ÒJ\Å)„¢‘%\éD„²ˆ`žŽ·\è¼1	\ËL\ÂòS\æ&\áé˜„§c–?˜„§cžŽIx:&\á\éœ\É`,\×>`h\ç\Ê…w\âJ\Ð\×§&ýev©\æ.ys‘\î+§\0™£\Íûf¢m%q\éó”Aß²•÷Ùœ¬\å)º\Ø\"º¥eŠ\×\Û8Dõ­©[@\æÉ1uè˜„\á¦8\ÌL\Âò“ðtL\Â\Ó1	\ËL\Â\Ó1	O\Ç$¼K\È\èï“³™ý\Ú\Å,kˆ„\ÓIt-ù”\×\åz»\ì€\Ð:\è›@‚4tL \ÒÀq33Š–p„\Zk*‹H9+Æ ‰1\ä©\Ì\Þø ^ö2§ø\âKñ\Zk*á¸R%Bi¾/\Å,<“ðtL\Âò“°üÁ$,0	OGVó…©Y\ßL\Íþ:Faiœf\\\æ“ðt\Îeöig3 %y0½\ËaxYQ3\è\í²\Z:\Ñ%-—\åñMû&¢lŸ\Å\ZR„E#Ôˆ \Ùs£!o\ÎfôV]\ÜN\ß\ë1\Å8[‚7\ã\Ë(0ºƒi²„¹Y|syß›ŽIþ`jñ“püÁ\Ô¢#V}a–?˜„§cžŽIx:g(4_œ\Ï\ê\Û.Zâ™†\åô\Ä,å¨›¾ˆÒº\\k—ðp®ô8r©\\“‹w3Q>Q5\Î(—4Ÿ‘Ïže%N¿_\n“,\Ðúfl\éEŠSK—{µFz\ãm¹¼1	\ËL\Âò“°üÁ[tÞ˜\\HS‹¢?˜ZuL\Â\Ò1	K\ç\\\Æ\0ŸTó3\í	½ñ|~Ô¥Ò«4\èL0¬–\ÂÉš\ÞX°o*Ú†´\ÉsþH5\"H6DU{_”ŒEuþ0œ\Î¨jmYŽN„øy¡©\Ù\ßL\ÂñS³¿Ž)N\Ó1	\ËL\Â\Ó1	O\Ç$<“ðtL\ÂòWf¼Uû¬e”•YkÆƒ‰­ô*\Ð7\Î\Ü\á|¦\0e\Ã\Ó\Â\Ñp\äP„\Ù\ÒJ–Žg|8Z	Q,¢XC\é–ðˆðí´Žùr&\áé˜„§c–?˜„§cžŽIx:&\á\é\Ô2¦kytI#.\ï–\Ð1¼K&Ž‰–Þ“\ì‰8&»e/ûŠah,ª¸¬\Ð\ßtTò¾ŠÇ !k\êGüP\Ze\ËðvJ\Þ\Í`\ÌG\ë\è\ÓaJA,”Áš¦\ç\è˜ú\ÞüÁ\ä\"\ê˜\\À\ë‰IX:¦8L\Ç\Ç\é\è\Ý&L}o:§³(6˜¬“?H·–/ª\Ã\Êp¸œ\ÞT\Î8Ó†\ãhÁ 8Se•B†;ƒñQWz“&]i\ê8ÿñ»°\ÇÑ·-žˆ³U#xþø\Ðñ°¦ðäŸ‡™÷\í¥mKpO?\âÉŒ>´\0´p)´„¢t\ÚKW….By-\Â!š„§cjqô“ðtLÂ¹ž˜„§cžŽIx:&\á\é˜ú\ÞtL\Ý:5´F\íÁ[tÞ¸r‡\â|L%\Îô\Z\ZY¹>|^<µÉ½`\íV„\Æ\ïý22kËƒñ\àeÄŒF“¸uüQ\äô¡Ÿ\Û\rýis¤õtô\Í\r\ãD\Ò\Z\Ê6\á2\rJúEˆ²z²ˆP\Ä\æ‰\Ï<B”\×\Ê]ô²\\Þ˜„\å&\áé˜„s=1	O\Ç$<“‹©c\ê\Ð1	K\ç\\]J˜„\å&\á\é\Ô3e˜§¬FQ\Çr\Ó0`jº\àÐ€Qh\îTLùô\ä…ñ 75W¡!°\'Ðƒ¢£Q8T-)ò¯³ {u	\Ül\È\Þüò,;RUŒƒ½l\ê‡Ð•\éƒc©Œ\ëD€´„Ay\ÇJÞ¢ó\Æ[TþbžŽ©Yÿzb²^:¦8L\Ç\Çé˜„§c\ê{\Ó1u\è\Ô\Ð%mµ\ÙtI}p¡p\0š*\ÄÞ¨-‚\ã\ÔI\ÞXœ²\ä\Ã>}\åcÖ”Žñ ‘Ý†\Ø* ÿ·EL†\Ö_½¼P\ßtˆ\r”2Î•¤Š\é\Ë2\Þ\ÍŒÚ¼j9\é€öôI!4	G\Ç$\ÐILx‹\æz\ã-:oL\ÂóSc‰ŽIX:²ûù\Ä$\ë\æk¿‰8‘G\ã4­\ÅC\áJŒ:1XS~N\ÙtdÀxðJ4öÿ\'œ¡\âI}>_U‹+]¼›	YYNuaŒ¾8¼Mú¥/Q8™\Ù_6ž.FOg´Ix:&aùƒIx:&\ïzb²^:&\á\èœM÷©ER\Ç\ÔX¢cr!uL.¤?\ÔeòÉ…”~h©\Z‡#½)Àhˆ¡¡we\ÐÏ•0ô\Å[a½q¾\×$º¤m+v{\ê›\r­Ñ•7Bu\è‹\Õ\ßJ\Æ\â|\îœebK“±‡ª%º÷ž3	G\Ç$Ð»L˜„s=ñ7&\áé˜„§cžŽIx:&\áè˜„\ãõ9ƒ}r&º+ò)8‘\Ë\ë)óA|oÐ/Œ¯\ÆÙ€h¡©Gþg¿uZ»‘þB¡M„j3y/\ËfPœµ²-[\ÞPŸxD(\Ë\ï_£Ax:&aùƒIx:&\á\\OL\Â\Ó1	O\Ç$<“ðtL}o:u\"4_„\å&\á\é \ç4d\Òò\ÅÅ‘ð\n\ÊÃ¬_^º¹\Ëp^–\Ê§{³\àöš\0k\ÑxXK#¦\ßdLªF¡º\×@¤ÒH‹Øœ5gef@|\'V\Ð%­¢z©\ÆÛ±\ÆH™ý\"9.\r:¦GS‹£Žif€Ž©ER\Ç\Ô\ì¯c\ê{ó‡s<‡/L\ÖK\Çd½t¤ÿ¶=4föIKöŸ\ØúÁ\Îó4³Â«¯††^c\è\æ\Âù”¨‚FôŠ\ØqhºÿÊ£b|a<xM\Ü5¥ð¤Ÿ-œ&¸j\nšóF\ÃU1-•tñd§ß²\Ï~kµvS\ê\îG”ª\êY3JÁ:).…â“™\ém}b•<\"”\×\"L¢Ix:&\áé˜„§cžŽIx:¦¾7ð7¦8M\Ç$<“°üÁ$<“ðtjúMBS\"Iþp8\Òû\âBZO\Øû²b.\âñ\\zLA¥8š\Í\ëœöñ\êiþb<x­œ}h¾\Z\Þ0ù[¨.\nÐkN\ï	W\å(\Ôö\á&~ö›Œ¶—‹ñañ8JÇ µh$jr±€÷\ÆGI•ø0‘.i[C4\àx\n·¼V-Œ\áé˜„§cžŽIx—@k\ãSß›?œ\Ï\ì\ïo\ÑycžŽIXþ`žŽIx:\â2·¸\Ö<\Z”„>4.\Ãq²€ùœEa¦Ž\"G¡uÖ¥\ËUø‹ñ ?\Ø\ç­A“¥7PFT¶Rc\Æ4eöP.œ\Ú\Ý\é².›™‡(+·yú]\åc\ÐR4L5Ÿf­x8I,\â¥\"”U\ÞMþ\Þ\Èw|a–†w“¿7&\á\é˜ú\Þü¡š.©/L}o:¦n†\n±4\æRˆ>ýL|T†Uù2\Þx0l#\Ñ\È{B6C°þ_\Å\Ýa}`e`\ÖÆµb<ø‰\èD«—6\reTm!k¢ø0)X(«’—±\Ö#2\ÑV<-CÑ”7ø2\Ë\åiÌ~š5½Ix:&\áé˜„§cžŽ©±D\Ç\Ô÷\æµ¬t}b–Ž©\ïM\Ç$,0	O\Ç$<k\ÏI@÷^h\é9\Í\â\íe±<¤Œ€#Î¿n_~b)º´ñ¨\éC‹‘4\0=\Ýñ\ÔMLl.§¶aóô\n\âž\n\Ò}q†n“O\è-DO+\ã•ð´2^	“°tL\Â\Ò1µ8\ê˜\ZKüÁ\Ôby	^\î¥7¦I¦œ!\íBøò…5w˜O\ßŒ˜\0Gp%+\ã¯À\ÆûŽ¤M\åÿb<\Ø.¾ö; fN¡{ú˜\ì*{Q€Ò‘/¸\äot·eÿ‹ú\Â¨\ÉŠs,Pb™N0\Î<ñšIx:&\áé˜„§cžŽIx:&aùC}\æ@Ÿ˜„¥cjö\×1	\ËL\Â\Ó1	O§%­ŸÚªý\Äø¯á¬¥\0˜ø¿,\æ†r\ßŒÛ‹c\Ú|@\æPe|6m\'\Ë\'£h”\0\Û{+–ŒSóEˆX`Dt\Çeq£¤ž\êY	\ÒKtÞ˜„§cžŽIx:&\á\é­—˜„§cžŽIx:&aùƒIx:&\á\é`À­h\éR\0{÷\n`\Ùros™oÆƒ×‹ÿ8\Î\à~h\Ì\Z\Ö2ºª²ÁL\Zƒ\ÝüAªû\Â.ñc:\Å\Ê÷¨\àßªX\àKYû\ä„#_<Í¥nZ\äY\Æu2N³ŽFk,s\Ï\ï\äi\0òPHè´¹W\Ä <¿(g\Ì@1\Êlý:)Ø´€Ò…q\"\Ì`\Ü\×\Öª‹\Î/Šk\ê{\Ó1Í‘\Ó1µHê˜¬—Ž\ÉE\Ô1µ8\ê˜ZuL-Ž:¹¾‘IØ¾@ª”¡p\Ê\Ø\Íþ^\ÏK\äµ-0\êR¥¡å‚’¿\ì,S²õ_C\éPÔ—Ñƒ\É†¦Â±pH?w\æP\ØSû3\îc¥@‘\Å<\n\è‹\æ\ïý‘\Å\Ù\\Æ¯Æƒ×!\ßA}çž¨Î§5ý\Ï,¸Œy£Ž~cP\×cd¸»RvW*c¡®º\è9¶2<ŽG¶>“¡eJT,øÅ²1¨4Œúx”‹\ÏÏ¨“ðtL\Âò‡÷\ØS\î&…N\nöYÕ BRˆz7‚n¹d.Á\Ô÷¦c\êÐ¹À‚\âS·€ŽIx:&\á\éx‹\Î“ðtL\Â\Ó1}G§™xC!-j\Ñ \Ô\ÒúDS\î\0Ø²À\ÅJ,;,+]\æ`Þ“ 6ƒ\Õ\0G\ÖpXù\Ù4Š®\çW¡\ß@S\ÏÉ¬LY¡†|²0þb<x\Ã(¢\0-½\á\È…V™\×®Aÿ\0k¯)¨g\ì\Õ@«ÖšÇ‚Cq¤SP‰C\ÑT0H%tk6©\Ý\ìC öP°v£<\\\".\å.Šx5Á\ÜD\èD\ÜTkÁ41>”Lö\Ñ\ä:z\è\Æ,.¦9r:&\áé˜„§£Î„Ix:&\áé˜„£cr!ud²µ/ltym«´X[+F£¹j4\Z+F¢¶d(.PœG\èU¤E”nñ \Ü-ö<–¿l)+¬¬«ø^*ÿHZVK/–Á¯\03oŒ\ëi\ÂxðFÒ°d\ZŠn£›\ÊZªòkŒRl´f’(e´€\å“\Õ(•\Ä`UÀóˆ¸j—(~¶x(œt\'\ì¥$ß«¥\éªzP\Ý\n¼»®3´\ËrŠ\ê=O\Üéº>°si½.‹Á.\Ã\Ð÷¦c\ê\Ðñ\îwóS·Ž©\Ù_\Ç\Ô\ì¯cjö\×i¾\ZK|q–°ºx\ê\éb6£0eC£Ap¤ôW³}Zz\Ðû¢0Q\Î2$­\ÚôX\ì¬(ŠXY2Ä‘\ï\ÙC*a³T ±\Ï?±ˆš\Ë\í\ÄxðÓ¢\î\Öÿ‚FQ©ƒ\Õ\è™Tk¯¤›\É\Ú\å£P]6ÂXe\Ã\Ñ\\\Æ\ã³SöÊ\åLpZC\âÒªE~Û„)x‹\æz#ªD(5ªô\'Rˆ6^Cc”z‰\Éh\r.°P\çYk{\Ä\çÀl–Ž÷ü8o\êh\r}a–Ž©oN\Ç$<“ðtL\Âó£05\Ér\à!›ù\Ç|OHÖ›­¤\ÕcZ#¥\Ý\ËRœ*ê†^ü{=¤”A@÷r8‚ú\ßù?Gsý40ü,8÷­\ãc¾\æh&J}ô,\n«„…º7ýô^_«j\n\Å7NMº—Ô–7\Ö\\\'.ÕƒŒeõP:^¹‰¾0º˜~p\É\Ô\'+\Ì\×jn\"ÿVŸ3ut»$‘¿\Õq!}\0Î§Q€Ä»¡\Ä“©cœ9 ar1uL-–:&Q\Ç\Ô\â¨cjqÔ‘_˜òL¹\âEñYµ0\ÏóGÃž9u)Œ©z\àt²\ì«\"ys+;g:\áƒ\Ôþhù\Î\ÏX\ì\Ìeñ\Ó\Æxð3g\Æ\n`\âOú\éŠ²+k³Pº­qŒ3\Ú\n|%¼}yÙ³Þƒg\ëlA2…˜2NG«\\ŒIy.žûœüý¶J 1o8\ZX˜DŒ!zDx.õ\Æ\Ï20	K\Ç\Ô- cžŽIx:&\áé˜„§£D\æƒ÷*†\âXùp\\(‰f¦¿3›•bª\Ì~€\ÖØ¾p°ü4%NDÍ­ÿ‹Ú©Y¼\å\í3\ÆxðóJ\ËþŒ–¯|­,ô­Á¥°Z²`M\ìw[R…=yÀEtÁ™0	\Ë/\Ú\âW\åJË¢\Â\ÒZ+\"TcioQd	\r\ÙC\ÕvÉµ´†ipµñù\Úui¿›7&\ë¦cžŽIx:&\áé˜„§cžŽIx:&\á\é4\'ôñ	,¥nºV©]¦mc¿üú÷ÀªÏ§\àL\Þ\Ô,Z\rL\×ƒ\ãW~ö\'\à‡¿†\ë›ÿ\r|å»´°\ßFÿ0\ì\átœ}&+\\²Z\0c]^%\ãq+Û‹jµ-;]S\éG¬N—8Ž¢\0®\Å\Ò\é˜\ÄcžŽ\ÞRi\Î\Õþ\ÞJ\î“°t.¶dŽP]Jö\Ò1°•3=*ZTŽ‡µ÷D\Øû\ß×¯\Ã5\â°û&l·ý\ßü\àû¿„ó„ýÿ\î\0nÿ»\ÊW\Ìgþšòý¦–ÿg\àp\Ð\0÷\å3\0\0\0\0IEND®B`‚','12');
/*!40000 ALTER TABLE `company` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `company_dynamic`
--

DROP TABLE IF EXISTS `company_dynamic`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `company_dynamic` (
  `id_company` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(30) DEFAULT NULL,
  `tiker` varchar(30) DEFAULT NULL,
  `market_price` int(30) DEFAULT NULL,
  `p_e` double(10,2) DEFAULT NULL,
  `p_s` double(10,2) DEFAULT NULL,
  `p_bv` double(10,2) DEFAULT NULL,
  `ev_ebitda` double(10,2) DEFAULT NULL,
  `ev_s` double(10,2) DEFAULT NULL,
  `debt_ebita` double(10,2) DEFAULT NULL,
  `roe` int(30) DEFAULT NULL,
  PRIMARY KEY (`id_company`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `company_dynamic`
--

LOCK TABLES `company_dynamic` WRITE;
/*!40000 ALTER TABLE `company_dynamic` DISABLE KEYS */;
INSERT INTO `company_dynamic` VALUES (1,'Ð“Ð°Ð·Ð¿Ñ€Ð¾Ð¼','GAZP',35691111,3.49,0.49,0.29,5.12,1.24,3.64,10),(2,'Ð›ÑƒÐºÐ¾Ð¹Ð»','LKON',3569000,3.49,0.49,0.29,5.12,1.24,3.64,10),(3,'Ð Ð¾ÑÐ½ÐµÑ„Ñ‚ÑŒ','ROSNEFT',3569000,3.49,0.49,0.29,5.12,1.24,3.64,10);
/*!40000 ALTER TABLE `company_dynamic` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dataaboutbalance`
--

DROP TABLE IF EXISTS `dataaboutbalance`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dataaboutbalance` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_main` int(11) DEFAULT NULL,
  `name` varchar(30) DEFAULT NULL,
  `tiker` varchar(30) DEFAULT NULL,
  `cash` double(10,3) DEFAULT NULL,
  `currentAssets` double(10,3) DEFAULT NULL,
  `nonCurrentAssets` double(10,3) DEFAULT NULL,
  `totalAssets` double(10,3) DEFAULT NULL,
  `shortTermLiabilities` double(10,3) DEFAULT NULL,
  `longTermLiabilities` double(10,3) DEFAULT NULL,
  `totalLiabilities` double(10,3) DEFAULT NULL,
  `totalCapital` double(10,3) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `id_main` (`id_main`),
  CONSTRAINT `dataaboutbalance_ibfk_1` FOREIGN KEY (`id_main`) REFERENCES `company` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dataaboutbalance`
--

LOCK TABLES `dataaboutbalance` WRITE;
/*!40000 ALTER TABLE `dataaboutbalance` DISABLE KEYS */;
INSERT INTO `dataaboutbalance` VALUES (1,1,'Ð“Ð°Ð·Ð¿Ñ€Ð¾Ð¼','GAZP',1220.111,12220.111,10.111,10.111,10.111,10.111,10.111,10.111),(2,2,'Ð›ÑƒÐºÐ¾Ð¹Ð»','LKON',11.111,11.111,11.111,11.111,11.111,11.111,11.111,11.111),(3,3,'Ð Ð¾ÑÐ½ÐµÑ„Ñ‚ÑŒ','ROSNEFT',12.111,12.111,12.111,12.111,12.111,12.111,12.111,12.111);
/*!40000 ALTER TABLE `dataaboutbalance` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dataaboutbalance2012`
--

DROP TABLE IF EXISTS `dataaboutbalance2012`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dataaboutbalance2012` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_main` int(11) DEFAULT NULL,
  `name` varchar(30) DEFAULT NULL,
  `tiker` varchar(30) DEFAULT NULL,
  `cash` double(10,3) DEFAULT NULL,
  `currentAssets` double(10,3) DEFAULT NULL,
  `nonCurrentAssets` double(10,3) DEFAULT NULL,
  `totalAssets` double(10,3) DEFAULT NULL,
  `shortTermLiabilities` double(10,3) DEFAULT NULL,
  `longTermLiabilities` double(10,3) DEFAULT NULL,
  `totalLiabilities` double(10,3) DEFAULT NULL,
  `totalCapital` double(10,3) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `id_main` (`id_main`),
  CONSTRAINT `dataaboutbalance2012_ibfk_1` FOREIGN KEY (`id_main`) REFERENCES `company` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dataaboutbalance2012`
--

LOCK TABLES `dataaboutbalance2012` WRITE;
/*!40000 ALTER TABLE `dataaboutbalance2012` DISABLE KEYS */;
INSERT INTO `dataaboutbalance2012` VALUES (1,1,'Ð“Ð°Ð·Ð¿Ñ€Ð¾Ð¼','GAZP',1.000,13330.111,10.111,10.111,10.111,10.111,10.111,10.111),(2,2,'Ð›ÑƒÐºÐ¾Ð¹Ð»','LKON',11.111,11.111,11.111,11.111,11.111,11.111,11.111,11.111),(3,3,'Ð Ð¾ÑÐ½ÐµÑ„Ñ‚ÑŒ','ROSNEFT',22.000,12.111,12.111,1.000,12.111,12.111,12.111,12.111),(4,15,'Test','test',2.000,1.000,1.000,4.000,7.000,1.000,1.000,1.000),(6,19,'test2','testa',2.000,1.000,1.000,1.000,1.000,1.000,1.000,1.000);
/*!40000 ALTER TABLE `dataaboutbalance2012` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dataaboutbalance2013`
--

DROP TABLE IF EXISTS `dataaboutbalance2013`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dataaboutbalance2013` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_main` int(11) DEFAULT NULL,
  `name` varchar(30) DEFAULT NULL,
  `tiker` varchar(30) DEFAULT NULL,
  `cash` decimal(25,3) DEFAULT NULL,
  `currentAssets` decimal(25,3) DEFAULT NULL,
  `nonCurrentAssets` decimal(25,3) DEFAULT NULL,
  `totalAssets` decimal(25,3) DEFAULT NULL,
  `shortTermLiabilities` decimal(25,3) DEFAULT NULL,
  `longTermLiabilities` decimal(25,3) DEFAULT NULL,
  `totalLiabilities` decimal(25,3) DEFAULT NULL,
  `totalCapital` decimal(25,3) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `id_main` (`id_main`),
  CONSTRAINT `dataaboutbalance2013_ibfk_1` FOREIGN KEY (`id_main`) REFERENCES `company` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dataaboutbalance2013`
--

LOCK TABLES `dataaboutbalance2013` WRITE;
/*!40000 ALTER TABLE `dataaboutbalance2013` DISABLE KEYS */;
INSERT INTO `dataaboutbalance2013` VALUES (1,15,'Test','test',2.000,2.000,2.000,4.000,7.000,2.000,2.000,2.000),(7,3,'Ð Ð¾ÑÐ½ÐµÑ„Ñ‚ÑŒ','ROSNEFT',22.000,NULL,NULL,1.000,NULL,NULL,NULL,NULL),(8,19,'test2','testa',2.000,2.000,2.000,2.000,2.000,2.000,2.000,2.000),(11,1,'Ð“Ð°Ð·Ð¿Ñ€Ð¾Ð¼','GAZP',1.000,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE `dataaboutbalance2013` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dataaboutbalance2014`
--

DROP TABLE IF EXISTS `dataaboutbalance2014`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dataaboutbalance2014` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_main` int(11) DEFAULT NULL,
  `name` varchar(30) DEFAULT NULL,
  `tiker` varchar(30) DEFAULT NULL,
  `cash` decimal(25,3) DEFAULT NULL,
  `currentAssets` decimal(25,3) DEFAULT NULL,
  `nonCurrentAssets` decimal(25,3) DEFAULT NULL,
  `totalAssets` decimal(25,3) DEFAULT NULL,
  `shortTermLiabilities` decimal(25,3) DEFAULT NULL,
  `longTermLiabilities` decimal(25,3) DEFAULT NULL,
  `totalLiabilities` decimal(25,3) DEFAULT NULL,
  `totalCapital` decimal(25,3) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `id_main` (`id_main`),
  CONSTRAINT `dataaboutbalance2014_ibfk_1` FOREIGN KEY (`id_main`) REFERENCES `company` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dataaboutbalance2014`
--

LOCK TABLES `dataaboutbalance2014` WRITE;
/*!40000 ALTER TABLE `dataaboutbalance2014` DISABLE KEYS */;
INSERT INTO `dataaboutbalance2014` VALUES (1,15,'Test','test',2.000,3.000,3.000,4.000,7.000,3.000,3.000,3.000),(6,3,'Ð Ð¾ÑÐ½ÐµÑ„Ñ‚ÑŒ','ROSNEFT',22.000,NULL,NULL,1.000,NULL,NULL,NULL,NULL),(7,19,'test2','testa',2.000,3.000,3.000,3.000,3.000,3.000,3.000,3.000),(10,1,'Ð“Ð°Ð·Ð¿Ñ€Ð¾Ð¼','GAZP',1.000,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE `dataaboutbalance2014` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dataaboutbalance2015`
--

DROP TABLE IF EXISTS `dataaboutbalance2015`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dataaboutbalance2015` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_main` int(11) DEFAULT NULL,
  `name` varchar(30) DEFAULT NULL,
  `tiker` varchar(30) DEFAULT NULL,
  `cash` decimal(25,3) DEFAULT NULL,
  `currentAssets` decimal(25,3) DEFAULT NULL,
  `nonCurrentAssets` decimal(25,3) DEFAULT NULL,
  `totalAssets` decimal(25,3) DEFAULT NULL,
  `shortTermLiabilities` decimal(25,3) DEFAULT NULL,
  `longTermLiabilities` decimal(25,3) DEFAULT NULL,
  `totalLiabilities` decimal(25,3) DEFAULT NULL,
  `totalCapital` decimal(25,3) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `id_main` (`id_main`),
  CONSTRAINT `dataaboutbalance2015_ibfk_1` FOREIGN KEY (`id_main`) REFERENCES `company` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dataaboutbalance2015`
--

LOCK TABLES `dataaboutbalance2015` WRITE;
/*!40000 ALTER TABLE `dataaboutbalance2015` DISABLE KEYS */;
INSERT INTO `dataaboutbalance2015` VALUES (1,15,'Test','test',2.000,4.000,4.000,4.000,7.000,4.000,4.000,4.000),(6,3,'Ð Ð¾ÑÐ½ÐµÑ„Ñ‚ÑŒ','ROSNEFT',22.000,NULL,NULL,1.000,NULL,NULL,NULL,NULL),(7,19,'test2','testa',2.000,4.000,4.000,4.000,44.000,4.000,4.000,4.000),(10,1,'Ð“Ð°Ð·Ð¿Ñ€Ð¾Ð¼','GAZP',1.000,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE `dataaboutbalance2015` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dataaboutbalance2016`
--

DROP TABLE IF EXISTS `dataaboutbalance2016`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dataaboutbalance2016` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_main` int(11) DEFAULT NULL,
  `name` varchar(30) DEFAULT NULL,
  `tiker` varchar(30) DEFAULT NULL,
  `cash` decimal(25,3) DEFAULT NULL,
  `currentAssets` decimal(25,3) DEFAULT NULL,
  `nonCurrentAssets` decimal(25,3) DEFAULT NULL,
  `totalAssets` decimal(25,3) DEFAULT NULL,
  `shortTermLiabilities` decimal(25,3) DEFAULT NULL,
  `longTermLiabilities` decimal(25,3) DEFAULT NULL,
  `totalLiabilities` decimal(25,3) DEFAULT NULL,
  `totalCapital` decimal(25,3) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `id_main` (`id_main`),
  CONSTRAINT `dataaboutbalance2016_ibfk_1` FOREIGN KEY (`id_main`) REFERENCES `company` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dataaboutbalance2016`
--

LOCK TABLES `dataaboutbalance2016` WRITE;
/*!40000 ALTER TABLE `dataaboutbalance2016` DISABLE KEYS */;
INSERT INTO `dataaboutbalance2016` VALUES (1,15,'Test','test',2.000,5.000,5.000,4.000,7.000,5.000,5.000,5.000),(6,3,'Ð Ð¾ÑÐ½ÐµÑ„Ñ‚ÑŒ','ROSNEFT',22.000,NULL,NULL,1.000,NULL,NULL,NULL,NULL),(7,19,'test2','testa',2.000,6.000,6.000,6.000,6.000,6.000,6.000,6.000),(10,1,'Ð“Ð°Ð·Ð¿Ñ€Ð¾Ð¼','GAZP',1.000,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE `dataaboutbalance2016` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dataaboutbalance2017`
--

DROP TABLE IF EXISTS `dataaboutbalance2017`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dataaboutbalance2017` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_main` int(11) DEFAULT NULL,
  `name` varchar(30) DEFAULT NULL,
  `tiker` varchar(30) DEFAULT NULL,
  `cash` decimal(25,3) DEFAULT NULL,
  `currentAssets` decimal(25,3) DEFAULT NULL,
  `nonCurrentAssets` decimal(25,3) DEFAULT NULL,
  `totalAssets` decimal(25,3) DEFAULT NULL,
  `shortTermLiabilities` decimal(25,3) DEFAULT NULL,
  `longTermLiabilities` decimal(25,3) DEFAULT NULL,
  `totalLiabilities` decimal(25,3) DEFAULT NULL,
  `totalCapital` decimal(25,3) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `id_main` (`id_main`),
  CONSTRAINT `dataaboutbalance2017_ibfk_1` FOREIGN KEY (`id_main`) REFERENCES `company` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dataaboutbalance2017`
--

LOCK TABLES `dataaboutbalance2017` WRITE;
/*!40000 ALTER TABLE `dataaboutbalance2017` DISABLE KEYS */;
INSERT INTO `dataaboutbalance2017` VALUES (1,15,'Test','test',2.000,6.000,6.000,4.000,7.000,6.000,6.000,6.000),(6,3,'Ð Ð¾ÑÐ½ÐµÑ„Ñ‚ÑŒ','ROSNEFT',22.000,NULL,NULL,1.000,NULL,NULL,NULL,NULL),(7,19,'test2','testa',2.000,7.000,7.000,7.000,7.000,7.000,7.000,7.000),(10,1,'Ð“Ð°Ð·Ð¿Ñ€Ð¾Ð¼','GAZP',1.000,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE `dataaboutbalance2017` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dataaboutbalance2018`
--

DROP TABLE IF EXISTS `dataaboutbalance2018`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dataaboutbalance2018` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_main` int(11) DEFAULT NULL,
  `name` varchar(30) DEFAULT NULL,
  `tiker` varchar(30) DEFAULT NULL,
  `cash` decimal(25,3) DEFAULT NULL,
  `currentAssets` decimal(25,3) DEFAULT NULL,
  `nonCurrentAssets` decimal(25,3) DEFAULT NULL,
  `totalAssets` decimal(25,3) DEFAULT NULL,
  `shortTermLiabilities` decimal(25,3) DEFAULT NULL,
  `longTermLiabilities` decimal(25,3) DEFAULT NULL,
  `totalLiabilities` decimal(25,3) DEFAULT NULL,
  `totalCapital` decimal(25,3) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `id_main` (`id_main`),
  CONSTRAINT `dataaboutbalance2018_ibfk_1` FOREIGN KEY (`id_main`) REFERENCES `company` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dataaboutbalance2018`
--

LOCK TABLES `dataaboutbalance2018` WRITE;
/*!40000 ALTER TABLE `dataaboutbalance2018` DISABLE KEYS */;
INSERT INTO `dataaboutbalance2018` VALUES (1,1,'Ð“Ð°Ð·Ð¿Ñ€Ð¾Ð¼','GAZP',1.000,1111.000,10.111,10.111,10.111,10.111,10.111,10.111),(2,2,'Ð›ÑƒÐºÐ¾Ð¹Ð»','LKON',11.111,11.111,11.111,11.111,11.111,11.111,11.111,11.111),(3,3,'Ð Ð¾ÑÐ½ÐµÑ„Ñ‚ÑŒ','ROSNEFT',22.000,12.111,12.111,1.000,12.111,12.111,12.111,12.111),(10,10,'ÐœÐ¾ÑÑÐ½ÐµÑ€Ð³Ð¾ÑÐ±Ñ‹Ñ‚','MSENRG',555.000,113.111,13.111,13.111,13.111,13.111,13.111,13.111),(11,11,'ÐžÐ“Ðš-2','OGK',5140926000.000,29808432000.000,186251352000.000,216059784000.000,21504680000.000,73542506000.000,95047186000.000,121012598000.000),(14,15,'Test','test',2.000,7.000,7.000,4.000,7.000,7.000,7.000,7.000),(15,19,'test2','testa',2.000,8.000,8.000,8.000,8.000,8.000,8.000,8.000);
/*!40000 ALTER TABLE `dataaboutbalance2018` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `financialdata`
--

DROP TABLE IF EXISTS `financialdata`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `financialdata` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_main` int(11) DEFAULT NULL,
  `name` varchar(30) DEFAULT NULL,
  `tiker` varchar(30) DEFAULT NULL,
  `revenue` double(10,3) DEFAULT NULL,
  `operatingProfit` double(10,3) DEFAULT NULL,
  `proofitBeforTax` double(10,3) DEFAULT NULL,
  `clearnProfit` double(10,3) DEFAULT NULL,
  `financealIncome` double(10,3) DEFAULT NULL,
  `financealExpenses` double(10,3) DEFAULT NULL,
  `depreciation` double(10,3) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `id_main` (`id_main`),
  CONSTRAINT `financialdata_ibfk_1` FOREIGN KEY (`id_main`) REFERENCES `company` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `financialdata`
--

LOCK TABLES `financialdata` WRITE;
/*!40000 ALTER TABLE `financialdata` DISABLE KEYS */;
INSERT INTO `financialdata` VALUES (1,1,'Ð“Ð°Ð·Ð¿Ñ€Ð¾Ð¼','GAZP',22.111,10.111,10.111,10.111,10.111,10.111,10.111),(2,2,'Ð›ÑƒÐºÐ¾Ð¹Ð»','LKON',22.111,11.111,11.111,11.111,11.111,11.111,11.111),(3,3,'Ð Ð¾ÑÐ½ÐµÑ„Ñ‚ÑŒ','ROSNEFT',33.111,12.111,12.111,12.111,12.111,12.111,12.111);
/*!40000 ALTER TABLE `financialdata` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `financialdata2012`
--

DROP TABLE IF EXISTS `financialdata2012`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `financialdata2012` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_main` int(11) DEFAULT NULL,
  `name` varchar(30) DEFAULT NULL,
  `tiker` varchar(30) DEFAULT NULL,
  `revenue` double(10,3) DEFAULT NULL,
  `operatingProfit` double(10,3) DEFAULT NULL,
  `proofitBeforTax` double(10,3) DEFAULT NULL,
  `clearnProfit` double(10,3) DEFAULT NULL,
  `financealIncome` double(10,3) DEFAULT NULL,
  `financealExpenses` double(10,3) DEFAULT NULL,
  `depreciation` double(10,3) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `id_main` (`id_main`),
  CONSTRAINT `financialdata2012_ibfk_1` FOREIGN KEY (`id_main`) REFERENCES `company` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `financialdata2012`
--

LOCK TABLES `financialdata2012` WRITE;
/*!40000 ALTER TABLE `financialdata2012` DISABLE KEYS */;
INSERT INTO `financialdata2012` VALUES (1,1,'Ð“Ð°Ð·Ð¿Ñ€Ð¾Ð¼','GAZP',10.111,10.111,10.111,10.111,10.111,10.111,10.111),(4,2,'Ð›ÑƒÐºÐ¾Ð¹Ð»','LKON',11.111,11.111,11.111,11.111,11.111,11.111,11.111),(5,3,'Ð Ð¾ÑÐ½ÐµÑ„Ñ‚ÑŒ','ROSNEFT',12.111,12.111,12.111,12.111,12.111,12.111,12.111),(6,15,'Test','test',2.000,2.000,1.000,8.000,1.000,1.000,1.000),(7,19,'test2','testa',1.000,1.000,1.000,1.000,1.000,1.000,3.000);
/*!40000 ALTER TABLE `financialdata2012` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `financialdata2013`
--

DROP TABLE IF EXISTS `financialdata2013`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `financialdata2013` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_main` int(11) DEFAULT NULL,
  `name` varchar(30) DEFAULT NULL,
  `tiker` varchar(30) DEFAULT NULL,
  `revenue` decimal(25,3) DEFAULT NULL,
  `operatingProfit` decimal(25,3) DEFAULT NULL,
  `proofitBeforTax` decimal(25,3) DEFAULT NULL,
  `clearnProfit` decimal(25,3) DEFAULT NULL,
  `financealIncome` decimal(25,3) DEFAULT NULL,
  `financealExpenses` decimal(25,3) DEFAULT NULL,
  `depreciation` decimal(25,3) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `id_main` (`id_main`),
  CONSTRAINT `financialdata2013_ibfk_1` FOREIGN KEY (`id_main`) REFERENCES `company` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `financialdata2013`
--

LOCK TABLES `financialdata2013` WRITE;
/*!40000 ALTER TABLE `financialdata2013` DISABLE KEYS */;
INSERT INTO `financialdata2013` VALUES (1,15,'Test','test',2.000,2.000,2.000,8.000,2.000,2.000,2.000),(2,19,'test2','testa',2.000,2.000,2.000,2.000,2.000,2.000,3.000);
/*!40000 ALTER TABLE `financialdata2013` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `financialdata2014`
--

DROP TABLE IF EXISTS `financialdata2014`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `financialdata2014` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_main` int(11) DEFAULT NULL,
  `name` varchar(30) DEFAULT NULL,
  `tiker` varchar(30) DEFAULT NULL,
  `revenue` decimal(25,3) DEFAULT NULL,
  `operatingProfit` decimal(25,3) DEFAULT NULL,
  `proofitBeforTax` decimal(25,3) DEFAULT NULL,
  `clearnProfit` decimal(25,3) DEFAULT NULL,
  `financealIncome` decimal(25,3) DEFAULT NULL,
  `financealExpenses` decimal(25,3) DEFAULT NULL,
  `depreciation` decimal(25,3) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `id_main` (`id_main`),
  CONSTRAINT `financialdata2014_ibfk_1` FOREIGN KEY (`id_main`) REFERENCES `company` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `financialdata2014`
--

LOCK TABLES `financialdata2014` WRITE;
/*!40000 ALTER TABLE `financialdata2014` DISABLE KEYS */;
INSERT INTO `financialdata2014` VALUES (1,15,'Test','test',2.000,2.000,3.000,8.000,3.000,3.000,3.000),(2,19,'test2','testa',3.000,3.000,3.000,3.000,3.000,3.000,3.000);
/*!40000 ALTER TABLE `financialdata2014` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `financialdata2015`
--

DROP TABLE IF EXISTS `financialdata2015`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `financialdata2015` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_main` int(11) DEFAULT NULL,
  `name` varchar(30) DEFAULT NULL,
  `tiker` varchar(30) DEFAULT NULL,
  `revenue` decimal(25,3) DEFAULT NULL,
  `operatingProfit` decimal(25,3) DEFAULT NULL,
  `proofitBeforTax` decimal(25,3) DEFAULT NULL,
  `clearnProfit` decimal(25,3) DEFAULT NULL,
  `financealIncome` decimal(25,3) DEFAULT NULL,
  `financealExpenses` decimal(25,3) DEFAULT NULL,
  `depreciation` decimal(25,3) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `id_main` (`id_main`),
  CONSTRAINT `financialdata2015_ibfk_1` FOREIGN KEY (`id_main`) REFERENCES `company` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `financialdata2015`
--

LOCK TABLES `financialdata2015` WRITE;
/*!40000 ALTER TABLE `financialdata2015` DISABLE KEYS */;
INSERT INTO `financialdata2015` VALUES (1,15,'Test','test',2.000,2.000,4.000,8.000,4.000,4.000,4.000),(2,19,'test2','testa',4.000,4.000,4.000,4.000,4.000,4.000,3.000);
/*!40000 ALTER TABLE `financialdata2015` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `financialdata2016`
--

DROP TABLE IF EXISTS `financialdata2016`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `financialdata2016` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_main` int(11) DEFAULT NULL,
  `name` varchar(30) DEFAULT NULL,
  `tiker` varchar(30) DEFAULT NULL,
  `revenue` decimal(25,3) DEFAULT NULL,
  `operatingProfit` decimal(25,3) DEFAULT NULL,
  `proofitBeforTax` decimal(25,3) DEFAULT NULL,
  `clearnProfit` decimal(25,3) DEFAULT NULL,
  `financealIncome` decimal(25,3) DEFAULT NULL,
  `financealExpenses` decimal(25,3) DEFAULT NULL,
  `depreciation` decimal(25,3) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `id_main` (`id_main`),
  CONSTRAINT `financialdata2016_ibfk_1` FOREIGN KEY (`id_main`) REFERENCES `company` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `financialdata2016`
--

LOCK TABLES `financialdata2016` WRITE;
/*!40000 ALTER TABLE `financialdata2016` DISABLE KEYS */;
INSERT INTO `financialdata2016` VALUES (1,15,'Test','test',2.000,2.000,5.000,8.000,5.000,5.000,5.000),(2,19,'test2','testa',6.000,6.000,6.000,6.000,6.000,6.000,3.000);
/*!40000 ALTER TABLE `financialdata2016` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `financialdata2017`
--

DROP TABLE IF EXISTS `financialdata2017`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `financialdata2017` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_main` int(11) DEFAULT NULL,
  `name` varchar(30) DEFAULT NULL,
  `tiker` varchar(30) DEFAULT NULL,
  `revenue` decimal(25,3) DEFAULT NULL,
  `operatingProfit` decimal(25,3) DEFAULT NULL,
  `proofitBeforTax` decimal(25,3) DEFAULT NULL,
  `clearnProfit` decimal(25,3) DEFAULT NULL,
  `financealIncome` decimal(25,3) DEFAULT NULL,
  `financealExpenses` decimal(25,3) DEFAULT NULL,
  `depreciation` decimal(25,3) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `id_main` (`id_main`),
  CONSTRAINT `financialdata2017_ibfk_1` FOREIGN KEY (`id_main`) REFERENCES `company` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `financialdata2017`
--

LOCK TABLES `financialdata2017` WRITE;
/*!40000 ALTER TABLE `financialdata2017` DISABLE KEYS */;
INSERT INTO `financialdata2017` VALUES (1,15,'Test','test',2.000,2.000,6.000,8.000,6.000,6.000,6.000),(2,19,'test2','testa',7.000,7.000,7.000,7.000,7.000,7.000,3.000);
/*!40000 ALTER TABLE `financialdata2017` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `financialdata2018`
--

DROP TABLE IF EXISTS `financialdata2018`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `financialdata2018` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_main` int(11) DEFAULT NULL,
  `name` varchar(30) DEFAULT NULL,
  `tiker` varchar(30) DEFAULT NULL,
  `revenue` decimal(25,3) DEFAULT NULL,
  `operatingProfit` decimal(25,3) DEFAULT NULL,
  `proofitBeforTax` decimal(25,3) DEFAULT NULL,
  `clearnProfit` decimal(25,3) DEFAULT NULL,
  `financealIncome` decimal(25,3) DEFAULT NULL,
  `financealExpenses` decimal(25,3) DEFAULT NULL,
  `depreciation` decimal(25,3) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `id_main` (`id_main`),
  CONSTRAINT `financialdata2018_ibfk_1` FOREIGN KEY (`id_main`) REFERENCES `company` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `financialdata2018`
--

LOCK TABLES `financialdata2018` WRITE;
/*!40000 ALTER TABLE `financialdata2018` DISABLE KEYS */;
INSERT INTO `financialdata2018` VALUES (1,1,'Ð“Ð°Ð·Ð¿Ñ€Ð¾Ð¼','GAZP',10.111,10.111,10.111,10.111,10.111,10.111,10.111),(2,2,'Ð›ÑƒÐºÐ¾Ð¹Ð»','LKON',11.111,11.111,11.111,11.111,11.111,11.111,11.111),(3,3,'Ð Ð¾ÑÐ½ÐµÑ„Ñ‚ÑŒ','ROSNEFT',12.111,12.111,12.111,12.111,12.111,12.111,12.111),(10,10,'ÐœÐ¾ÑÑÐ½ÐµÑ€Ð³Ð¾ÑÐ±Ñ‹Ñ‚','MSENRG',13.111,13.111,13.111,13.111,13.111,13.111,13.111),(11,11,'ÐžÐ“Ðš-2','OGK',141307552000.000,15551354000.000,10147714000.000,7200861000.000,731604000.000,6135244000.000,11265422000.000),(14,15,'Test','test',2.000,2.000,7.000,8.000,7.000,7.000,7.000),(15,19,'test2','testa',8.000,8.000,8.000,8.000,8.000,8.000,3.000);
/*!40000 ALTER TABLE `financialdata2018` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `industry`
--

DROP TABLE IF EXISTS `industry`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `industry` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(20) DEFAULT NULL,
  `test_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `test_id` (`test_id`),
  CONSTRAINT `industry_ibfk_1` FOREIGN KEY (`test_id`) REFERENCES `company` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `industry`
--

LOCK TABLES `industry` WRITE;
/*!40000 ALTER TABLE `industry` DISABLE KEYS */;
INSERT INTO `industry` VALUES (1,'gaz',1),(2,'oil',2),(3,'oil',3),(10,'electric',10),(11,'electric',11),(14,'it',15),(15,NULL,16),(16,NULL,17),(17,NULL,18),(18,'invest',19);
/*!40000 ALTER TABLE `industry` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `marketdata`
--

DROP TABLE IF EXISTS `marketdata`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `marketdata` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_main` int(11) DEFAULT NULL,
  `name` varchar(30) DEFAULT NULL,
  `tiker` varchar(30) DEFAULT NULL,
  `numberAO` int(11) DEFAULT NULL,
  `priceAO` int(11) DEFAULT NULL,
  `numberAP` int(11) DEFAULT NULL,
  `priceAP` int(11) DEFAULT NULL,
  `capitalization` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `id_main` (`id_main`),
  CONSTRAINT `marketdata_ibfk_1` FOREIGN KEY (`id_main`) REFERENCES `company` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `marketdata`
--

LOCK TABLES `marketdata` WRITE;
/*!40000 ALTER TABLE `marketdata` DISABLE KEYS */;
INSERT INTO `marketdata` VALUES (1,1,'Ð“Ð°Ð·Ð¿Ñ€Ð¾Ð¼','GAZP',10000,100,1000,10,100100),(2,2,'Ð›ÑƒÐºÐ¾Ð¹Ð»','LKON',20000,200,2000,20,200200),(3,3,'Ð Ð¾ÑÐ½ÐµÑ„Ñ‚ÑŒ','ROSNEFT',20000,200,2000,20,200200);
/*!40000 ALTER TABLE `marketdata` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `marketdata2012`
--

DROP TABLE IF EXISTS `marketdata2012`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `marketdata2012` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_main` int(11) DEFAULT NULL,
  `name` varchar(30) DEFAULT NULL,
  `tiker` varchar(30) DEFAULT NULL,
  `numberAO` int(11) DEFAULT NULL,
  `priceAO` int(11) DEFAULT NULL,
  `numberAP` int(11) DEFAULT NULL,
  `priceAP` int(11) DEFAULT NULL,
  `capitalization` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `id_main` (`id_main`),
  CONSTRAINT `marketdata2012_ibfk_1` FOREIGN KEY (`id_main`) REFERENCES `company` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `marketdata2012`
--

LOCK TABLES `marketdata2012` WRITE;
/*!40000 ALTER TABLE `marketdata2012` DISABLE KEYS */;
INSERT INTO `marketdata2012` VALUES (1,1,'Ð“Ð°Ð·Ð¿Ñ€Ð¾Ð¼','GAZP',10000,100,1000,10,100100),(2,2,'Ð›ÑƒÐºÐ¾Ð¹Ð»','LKON',20000,200,2000,20,200200),(3,3,'Ð Ð¾ÑÐ½ÐµÑ„Ñ‚ÑŒ','ROSNEFT',20000,200,2000,20,200200),(4,15,'Test','test',1,3,1,1,NULL),(5,19,'test2','testa',9,1,1,1,NULL);
/*!40000 ALTER TABLE `marketdata2012` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `marketdata2013`
--

DROP TABLE IF EXISTS `marketdata2013`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `marketdata2013` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_main` int(11) DEFAULT NULL,
  `name` varchar(30) DEFAULT NULL,
  `tiker` varchar(30) DEFAULT NULL,
  `numberAO` decimal(25,3) DEFAULT NULL,
  `priceAO` decimal(25,3) DEFAULT NULL,
  `numberAP` decimal(25,3) DEFAULT NULL,
  `priceAP` decimal(25,3) DEFAULT NULL,
  `capitalization` decimal(25,3) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `id_main` (`id_main`),
  CONSTRAINT `marketdata2013_ibfk_1` FOREIGN KEY (`id_main`) REFERENCES `company` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `marketdata2013`
--

LOCK TABLES `marketdata2013` WRITE;
/*!40000 ALTER TABLE `marketdata2013` DISABLE KEYS */;
INSERT INTO `marketdata2013` VALUES (1,15,'Test','test',2.000,3.000,2.000,2.000,NULL),(2,19,'test2','testa',9.000,1.000,2.000,2.000,NULL);
/*!40000 ALTER TABLE `marketdata2013` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `marketdata2014`
--

DROP TABLE IF EXISTS `marketdata2014`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `marketdata2014` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_main` int(11) DEFAULT NULL,
  `name` varchar(30) DEFAULT NULL,
  `tiker` varchar(30) DEFAULT NULL,
  `numberAO` decimal(25,3) DEFAULT NULL,
  `priceAO` decimal(25,3) DEFAULT NULL,
  `numberAP` decimal(25,3) DEFAULT NULL,
  `priceAP` decimal(25,3) DEFAULT NULL,
  `capitalization` decimal(25,3) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `id_main` (`id_main`),
  CONSTRAINT `marketdata2014_ibfk_1` FOREIGN KEY (`id_main`) REFERENCES `company` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `marketdata2014`
--

LOCK TABLES `marketdata2014` WRITE;
/*!40000 ALTER TABLE `marketdata2014` DISABLE KEYS */;
INSERT INTO `marketdata2014` VALUES (1,15,'Test','test',3.000,3.000,3.000,3.000,NULL),(2,19,'test2','testa',9.000,1.000,3.000,3.000,NULL);
/*!40000 ALTER TABLE `marketdata2014` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `marketdata2015`
--

DROP TABLE IF EXISTS `marketdata2015`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `marketdata2015` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_main` int(11) DEFAULT NULL,
  `name` varchar(30) DEFAULT NULL,
  `tiker` varchar(30) DEFAULT NULL,
  `numberAO` decimal(25,3) DEFAULT NULL,
  `priceAO` decimal(25,3) DEFAULT NULL,
  `numberAP` decimal(25,3) DEFAULT NULL,
  `priceAP` decimal(25,3) DEFAULT NULL,
  `capitalization` decimal(25,3) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `id_main` (`id_main`),
  CONSTRAINT `marketdata2015_ibfk_1` FOREIGN KEY (`id_main`) REFERENCES `company` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `marketdata2015`
--

LOCK TABLES `marketdata2015` WRITE;
/*!40000 ALTER TABLE `marketdata2015` DISABLE KEYS */;
INSERT INTO `marketdata2015` VALUES (1,15,'Test','test',4.000,3.000,4.000,4.000,NULL),(2,19,'test2','testa',9.000,1.000,4.000,4.000,NULL);
/*!40000 ALTER TABLE `marketdata2015` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `marketdata2016`
--

DROP TABLE IF EXISTS `marketdata2016`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `marketdata2016` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_main` int(11) DEFAULT NULL,
  `name` varchar(30) DEFAULT NULL,
  `tiker` varchar(30) DEFAULT NULL,
  `numberAO` decimal(25,3) DEFAULT NULL,
  `priceAO` decimal(25,3) DEFAULT NULL,
  `numberAP` decimal(25,3) DEFAULT NULL,
  `priceAP` decimal(25,3) DEFAULT NULL,
  `capitalization` decimal(25,3) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `id_main` (`id_main`),
  CONSTRAINT `marketdata2016_ibfk_1` FOREIGN KEY (`id_main`) REFERENCES `company` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `marketdata2016`
--

LOCK TABLES `marketdata2016` WRITE;
/*!40000 ALTER TABLE `marketdata2016` DISABLE KEYS */;
INSERT INTO `marketdata2016` VALUES (1,15,'Test','test',5.000,3.000,5.000,5.000,NULL),(2,19,'test2','testa',9.000,1.000,6.000,6.000,NULL);
/*!40000 ALTER TABLE `marketdata2016` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `marketdata2017`
--

DROP TABLE IF EXISTS `marketdata2017`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `marketdata2017` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_main` int(11) DEFAULT NULL,
  `name` varchar(30) DEFAULT NULL,
  `tiker` varchar(30) DEFAULT NULL,
  `numberAO` decimal(25,3) DEFAULT NULL,
  `priceAO` decimal(25,3) DEFAULT NULL,
  `numberAP` decimal(25,3) DEFAULT NULL,
  `priceAP` decimal(25,3) DEFAULT NULL,
  `capitalization` decimal(25,3) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `id_main` (`id_main`),
  CONSTRAINT `marketdata2017_ibfk_1` FOREIGN KEY (`id_main`) REFERENCES `company` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `marketdata2017`
--

LOCK TABLES `marketdata2017` WRITE;
/*!40000 ALTER TABLE `marketdata2017` DISABLE KEYS */;
INSERT INTO `marketdata2017` VALUES (1,15,'Test','test',6.000,3.000,6.000,6.000,NULL),(2,19,'test2','testa',9.000,1.000,7.000,7.000,NULL);
/*!40000 ALTER TABLE `marketdata2017` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `marketdata2018`
--

DROP TABLE IF EXISTS `marketdata2018`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `marketdata2018` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_main` int(11) DEFAULT NULL,
  `name` varchar(30) DEFAULT NULL,
  `tiker` varchar(30) DEFAULT NULL,
  `numberAO` decimal(25,3) DEFAULT NULL,
  `priceAO` decimal(25,6) DEFAULT NULL,
  `numberAP` decimal(25,3) DEFAULT NULL,
  `priceAP` decimal(25,6) DEFAULT NULL,
  `capitalization` decimal(25,3) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `id_main` (`id_main`),
  CONSTRAINT `marketdata2018_ibfk_1` FOREIGN KEY (`id_main`) REFERENCES `company` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `marketdata2018`
--

LOCK TABLES `marketdata2018` WRITE;
/*!40000 ALTER TABLE `marketdata2018` DISABLE KEYS */;
INSERT INTO `marketdata2018` VALUES (1,1,'Ð“Ð°Ð·Ð¿Ñ€Ð¾Ð¼','GAZP',10000.000,100.000000,1000.000,10.000000,100100.000),(2,2,'Ð›ÑƒÐºÐ¾Ð¹Ð»','LKON',20000.000,200.000000,2000.000,20.000000,200200.000),(3,3,'Ð Ð¾ÑÐ½ÐµÑ„Ñ‚ÑŒ','ROSNEFT',30000.000,300.000000,20003.000,30.000000,200200.000),(10,10,'ÐœÐ¾ÑÑÐ½ÐµÑ€Ð³Ð¾ÑÐ±Ñ‹Ñ‚','MSENRG',40000.000,400.000000,20004.000,40.000000,NULL),(11,11,'ÐžÐ“Ðš-2','OGK',110441160870.000,0.336600,0.000,0.000000,NULL),(14,15,'Test','test',7.000,3.000000,7.000,7.000000,NULL),(15,19,'test2','testa',9.000,1.000000,8.000,8.000000,NULL);
/*!40000 ALTER TABLE `marketdata2018` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `test`
--

DROP TABLE IF EXISTS `test`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `test` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `test`
--

LOCK TABLES `test` WRITE;
/*!40000 ALTER TABLE `test` DISABLE KEYS */;
INSERT INTO `test` VALUES (1,'asd'),(2,'asd'),(3,'asd'),(4,'asd'),(5,'test');
/*!40000 ALTER TABLE `test` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `id_users` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(20) NOT NULL,
  `password` varchar(20) NOT NULL,
  `role` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id_users`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'admin','123','admin'),(2,'test','123','user'),(3,'test1','123','user');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping events for database 'monitoring'
--

--
-- Dumping routines for database 'monitoring'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-02-08 15:47:28
