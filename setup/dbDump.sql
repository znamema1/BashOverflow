-- MySQL dump 10.13  Distrib 5.7.18, for Linux (x86_64)
--
-- Host: localhost    Database: bashoverflow
-- ------------------------------------------------------
-- Server version	5.7.18-0ubuntu0.16.04.1

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
-- Table structure for table `qa_blobs`
--

DROP TABLE IF EXISTS `qa_blobs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `qa_blobs` (
  `blobid` bigint(20) unsigned NOT NULL,
  `format` varchar(20) CHARACTER SET ascii NOT NULL,
  `content` mediumblob,
  `filename` varchar(255) DEFAULT NULL,
  `userid` int(10) unsigned DEFAULT NULL,
  `cookieid` bigint(20) unsigned DEFAULT NULL,
  `createip` int(10) unsigned DEFAULT NULL,
  `created` datetime DEFAULT NULL,
  PRIMARY KEY (`blobid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `qa_blobs`
--

LOCK TABLES `qa_blobs` WRITE;
/*!40000 ALTER TABLE `qa_blobs` DISABLE KEYS */;
INSERT INTO `qa_blobs` VALUES (8176947708305497241,'jpeg','ÿ\Øÿ\à\0JFIF\0\0`\0`\0\0ÿş\0;CREATOR: gd-jpeg v1.0 (using IJG JPEG v80), quality = 90\nÿ\Û\0C\0\n\n\n\r\rÿ\Û\0C		\r\rÿÀ\0,\"\0ÿ\Ä\0\0\0\0\0\0\0\0\0\0\0	\nÿ\Ä\0µ\0\0\0}\0!1AQa\"q2‘¡#B±ÁR\Ñğ$3br‚	\n\Z%&\'()*456789:CDEFGHIJSTUVWXYZcdefghijstuvwxyzƒ„…†‡ˆ‰Š’“”•–—˜™š¢£¤¥¦§¨©ª²³´µ¶·¸¹º\Â\Ã\Ä\Å\Æ\Ç\È\É\Ê\Ò\Ó\Ô\Õ\Ö\×\Ø\Ù\Ú\á\â\ã\ä\å\æ\ç\è\é\êñòóôõö÷øùúÿ\Ä\0\0\0\0\0\0\0\0	\nÿ\Ä\0µ\0\0w\0!1AQaq\"2B‘¡±Á	#3Rğbr\Ñ\n$4\á%ñ\Z&\'()*56789:CDEFGHIJSTUVWXYZcdefghijstuvwxyz‚ƒ„…†‡ˆ‰Š’“”•–—˜™š¢£¤¥¦§¨©ª²³´µ¶·¸¹º\Â\Ã\Ä\Å\Æ\Ç\È\É\Ê\Ò\Ó\Ô\Õ\Ö\×\Ø\Ù\Ú\â\ã\ä\å\æ\ç\è\é\êòóôõö÷øùúÿ\Ú\0\0\0?\0ñõB=iÁ#õ©–2§ùCğşuò‡¯b$\ëıi\ŞX»T\ë?^¿JSÁö\Å±\Ïjw†Ø•À$ô\È\ÍT²\İ,nÉ\ÇŞ©Z=\Å\Ö\â\äF:Ö˜!´óS¹J\É\éhs\Z‚‚1¤Š©öŸ5\Çc\Íjk6\Ïz@\nzY\Æ\Ã\ÊA–$óÁ\ï]Kc·{\ïD÷.6œ\'Z\î¼#n\Ën£\ã-\Íp¸c8i\íšôŸÀ<‚y¢«´Ng¹ª!\íÒ•b\É\È\éŞ´m\ìšwEF\ãÜ€+¥±øo\â›…ò´›«¨\\´1–­ĞŒuü+‘&Å¶§\'gf’\Ìò€ñ¸‘]]—Â­{Sfµ¶û]›\æ¹2{r±¯`øQû/\êúÖµZİ•ÎŸc!Ü—E\Ò3ûÀ~uõ×†|\á„v\ÒI¶Ö­&>k™Da¸õ\'ñœ\×],<§«\ÑJ¢Z-\Ï\Ï]_\àßˆô(¢{«I\"ŠugŠcş­”\0F[ \'$s†°ÿ\0\á\Õl\î3\ÚO gk!{\ã¿c_¥öş5ğ\çˆ@’«K\ËQ“ˆ%h\Ütú¯4\Ûû__E#_[i\ŞQ\Ê wL“Œ•Q:gó\é\Ílğ‹£#\Ú>¨ü\Õÿ\0„Z\í\ã\r\ä\Êy!Š‚Hœã¸®·\á¯\Â\Í[Æ\'¶\Ñ\Ö\ÜÈ“#Ì²¯\ÜÂ©\'\'±\éÁ\ÇQšû£JğgÃ­ac²¶\Óm\íæ„ñ&üJ	\Ï\İ99\èr\Åvz…ô=>\è^\éö0[\ÎÇº4€\ã# \âˆ\àõWz\nUl¶?:\çø_¨R\ïFh‰\Õm\'\ØTŸ5	ñÁ*G±>•\Ï\êZå¶Ÿo\æD\É4A–X±óDwq¸v¯\Ò\ë\ß\èvš‹\ß-­¸\Õ^3\ÉÀ‘ğ3\×;Ep> ø3\á½[\Äğn†=5.º\Ú\Üı\Ö\ÏPX\ç¦XF¶j\Üü÷š\Î[p#(\Î1P²2G=ñ_Eü`øiŸ5\äöV,t\Í=\Ì\Ïp>l†|OboC^	4\r$’:‚\\{W\à\à\ìnÑ‚>´\É\àşUe£\àaJO(rü@\Ê\ê™\0“\í]/…ôGºN\Üúæ²¬,š\â\áT•\í^\0ğ—1³(9\Å&Ñ½9\È\Üğ…ü´S³\0qÒ»¥\Ó\Æ\Üzñ[ú‡\Öu;0q\ØTú•ºÄ‡h\æ¦*ç²½\Õc¼x\íS<)õ\ÇJ\à<]xÒ£8ô\"ºŸ^y(\ã\îñô\Íyu\ïˆ\ĞJ\ÑË‚=\ë9Ó•?\ŞS8j\Éq\â=RH\ïvÍK~·\Ì\r.ò \ÉU$ô¨<K£Á«C\æ!ùº‚;\Z\Õğ¤\ì~\Ë/\ßAµ\î+YUŠŸcÊ«}NK|^|ÀœqZ ¼@©\ÎxŸª\èM¤k.»O’\ß2\ÜU]T–„)éš™ZU\ã$%=9L!8\Çÿ\0Z‚˜\é=\êÀ@A\È\Æi\Æ?\ËÖ½\Z)yy\çO¥5¡\È$g$U¶Œ\0xÁ=})#¦qùS ¦\È3‚;ö¨3Š½\å\äQP²\äÒ˜Z<“\é\íQ`\àöõ«a\ÔóÓŠ‰£\ç?˜\Å\0C·¦G¸\ÍtÓ–\êw.U#ƒX\Ë,¼u\éŠ\ë<?dñ.G$\nÊ´”`\Åmu:Å†UŒT\ã9ûU{¿E(‡×ŸJ\Å\Õ\æ–)T\î$*ŠÀ¼¾y\ÑÓ¿«Ç§„•isOc½Ö8Zõ\Ív[\Ù\Î0G®+•Kr@9\ëWŒGos\Ïz‰\ã\0\æ½\ØASVG&\å«2\å\ê9ªrÇ“‘\Ï\ãZòÅ‘\ÆsU&Œxâ¬‹\ä*˜)\Ú8\é\ïB®	\È\0\ÓÀ9ôşµ\ê\Ç\ÇÒ›>nƒ¾*pvªº™X\à`<œñ@Ö¬\ç¯\"’PXd)9È«w¢\Î\Ğ,pGLQu1û2¨\Ï9\à\Õsm%\Êe¾QŒb®*\çkvE]FúG#w\áX7\İ\ÊL…(\ç§\ÒÎ’Z\ÄB\"’ašÆŠ\ê\î\îôZ¤e\Ù\Èû¼\×DQ\Ï\'¥Ù›§´2†Œ±\È_­}Yğ{\à·\ãx\â6šm\æ\ÉT\ÅÃR\ç^û5~\Ç\Ú|3¥\â½.{($\Ã\Ã5¼¥\È9\É\Ê\àq\ë_g\èúg†ş\è\èzcÃ§Zª“¶Q­’F:u®µG\Úk->U5÷Oğ\ß\ì•\á½/M·\Ô<@\ïoyn¥\ç	 òÊq:c¯J\í<)ªx3\Âp>\á&…%‡÷’C\"I9Œ1\ä|¹UúgùVüI¢\\\èQ\é–ò_\êò›‘n_\í9`pv:0:n¸®cW‘´mRxô\é´ù‰ô\Ø&‘¦”«|Áy\ÜFq¸œsÀªŒağ¢l\åñ3\Ñ\îüi¨K©\Ó.ôûw…—ÎŠ\àıš9U‰\è²\0\Ê}<úŠ\ãõ¸-¼I¾\Ï\Ä\Ğ\rFĞ\ßb}\×j\Ìs,\ä\äq“\ÎG¥y¥…»]\ÛñªX^I¹\ßP¸´sLpJ±Rœõ\èy\ês‡}¥hv\Ò\rF\ËÄk­\ÏòGxû¡¼ş\ìc\î‚\0Tt\Ç\0\Õs6W\"[\ëúFƒğ\ïP½‹@\Ó\ïg³¸y^\îymö\ÆO\Üó\Ö\"«·¶[p*küq¨\ÜO-Åœ·s o´\\ZNd{¤\n TœHF\ĞAe^8\ÏZ¥6¥?‡\áŠ!pu(Ëm//.\'ŒƒÅ˜`H\Ç\Ş\ç?K¾\Ò/¢Û _\Ü\é÷‘ƒ¹X´\Ö\á\Èœ\rÃ¨\Éb:Ñ µG!§x\Û\ÄzT\Úˆ-¦w}=å™HgG,\Ëò£±=A\ês]Ï‡ÿ\0i­SÃš¼—7úÆgwv\ï\×\î\Ê‰b\Øn\Çaµ\Êø›\ÃzmœW2\ŞÄ¢\ÕÅ¼ˆ\È\ç?3ªò§\'«\Å\ïl\ï<m-µµ\Ã_h\Ó\ê1Ondpdµ,²#8”x \æš\Ób[>Í¹øö–\ZF¡}¨0f‡T‚D»\"\î@›\Õ9¤`~5\Óø“ã®ƒw¡\è;µ+x®b™m\îYNJ³>s\Ô\æ+\á¿]jz×u\ë«g–%²9ò\çR<³½N\îŸ*¨9\ãæ¼›Ã<ñ¦§p\ÖGO¾½—P·HÀ	/ÚŠnÈŠ#\É\È=J÷ŒŠ«²l~·é¡x\Ó\í–K!û\Är\Ï,m¢+†\Ü:óÒ¾zø¹ğÿ\0Jğ¦Ÿmw`­0\Ô¡·‰’€>~o|ø\Õ\ïüh´›N°–òÙ´m^õ!2Y\Âÿ\0»\Û\"&cc\Ô\Çô\ĞõõUç…¼;¬\"I=°¸š\é¬Š9@Ã½qÁÿ\0=k\Z´•E¡QŸ+\Ôü\ä½Ò¥´»š”\ë‘\ÛÖ«\Ët\à\Zú#\ãÀMS\ÃOu¨i­-Îˆ$œ\n±şwÇ­x\\.\×+¡C\ßp\Æ+Çœš:•¥ª7|¡}ª\â6q’OzúOÀ\ŞQ½yw\Ã\í*y¯~ğ\åº\ÚÛ©\Ç=:u¬·=j0å‰´-\Ò\Ş\ßŠ\å<C8§¦k¢\Ô.‡’p\Ø#©¯9ñ^¬°FÀ¶8\éZB&²•‘\ç~7\ÔT—¹\ç8¯Ö®‰•›9#ß­w>,\Õ¯\'\'\0œ\ãšóË±\çJOnæµ–ŠÇ—V\\Ì³§\ß>õC\È\'œ\×g†ğB·°ò\à;Š\àœ2õ5\é\×\Öò\Ç\ìrœ†•\âÖ¤\éËu0“mY‘k°\Ûj:#>\àn#\Ğ÷÷\æw\î%u\è?Zïµ½6k%2+Ÿ-ø`\ë\\\Ìa\'cùS\ÃFõ®sÁ]²“GŒ\çŸ`(1\09üj\ÈQ·#Ÿ­)ÿ\0½Šô\ÍlUx\Ç\Óğ¦ù$÷\Çjµ\å\ä\ß¥(\ÚH¥eV§³W!£:Hù òG½W(Á­\Õ\Óf¼|D‡§R*\ä>\r–XC±lO ÷«SVM“§Sx÷z\ÔF&\' \Ï^kª“Ã‘\Ç\'.\Ê€Ä5§7\Ãë‹˜\"h1&ôóCü9\Ç?5Q=…¡\Ä[Û–ûg\0\ZõOZ$\Ö\ë\0\ÇS\\Å·‡ü¦T•X7M¸÷®³K³š\Â\Ù\Ø#$*Ì»°@\êsùşU\çÖ“¬\ì‰1üqb±\\dp}k…šÙ¡›ó®¿Ä··S\Ä22Ÿ»òA\Í`\ÜÀ\Ïj.Ÿ(¹\æ\ìÀg•zSŒR\\\ÉÙŒ€x4\Ç\\ıq’*\Û\ÄÑAr1Q8\ÜHc9­\Åb„¨\0 òj¬\Ñu½hH¼·j«${	8æ˜¬TA\Ó\ëŞ€[$\Z\Æ>†«Á\'­`z\0 \íš\Í×—6ù\ÏNÂµ\0 c}ñYúœbB£óƒ\Í- ¯#\"Ñ˜ ù\ÑÔµKr\æ\è„(Q\Ğô©\îLq¬q!Àn\ë\Ít^ğí¹¬®¡\äl¶{gi­`®Î™\èTğ„u\ïø\Â\Ò\ÇL’\ì\Í Q\Æ\Ô÷\É ŒW\èÿ\0\Â\ßÙ§\Â^\Ñlµ\rkÃ–²\êÊœ¥\Æ\ÙU¹\Æ\ãOı>xw\Ã~­tYn±ûË¹¾ %G\è+¥ø£\ãc¢ZIjF\×\ËB]m›²—\'¾¤\ã§\á^­8(GšG•Rr©.DAã‹PøU\×O¶\Ó\Ò;q\î\ØÈ±¼‡(²	u8\âWV\é\â\íF\âojcAµ’®f²¸¾2º\Æ©i7€ˆ€\0“‚Ox7\ÄO‹—v>$¿t\İ\Ü\îÎœ\Í!\é\ÄFv;Ÿ\æÀÀ\ç§\å#ñŠ/ô\ÙYE\ÓtùÇŸ)ºr“\Ş782–v£8\É<Ù¹ó;±¨¨h}ñ¿\Ç\ïh÷¿Ù\Ô#\Ô1öx\Õ@	\Æ\æ(z\Ä÷=N;+\ÏuŒšôGWmOR\×üG+¬G§Jñ%¹\àœ\Ü1-‘\Ü\rÀp8\'\àú‡ˆ¼ConKñ·aå­¶›n#\r‘÷Kcô¬e¼Iv»\Ôn\â{\ØS‰¯ú:’s‘\Ì\ÇQ3(\ÜGµh_<E©\Ş%÷öEş¥d¬\Úò¡D\Ï\ŞùÊ“&9\Æ\î{\æ§\Ô5{\Ï^%Ü—\ÖvÒ¸+\ä\\\\“!=Tm;ùq_<k<ÿ\0„…#[ie\Ô|±ó;(ô	\Zª=³T-_\Ä\ïs\ÛG&\rD—e\É\n?\0=\ÍRBgÔ²}¯G\"´\Ôdhd M2 .ıù]¤¨>ù?Ji¶\Ö/#H´Y¦¿N\ëH.B—9ÿ\0yP\ÏJó\İI%\Â\\j——«*|,2–‘ˆ\ìñ¨#ù\Zô»;µ\n\ÓZ\İı¤+\Ş[¶\Ù\É\èõªI37&‹ş\r\Õum.ò[;²4Â²\ßkbPn<\Êy\Ïnı«{W¬\'OŸKÓµh§b’Icp\á ±RF\Ó\ìSu¬3\Ç\Ó5\Û\Ú\ê5ªÆ§ı\"\ä?\İ\ê>u\âºo	øWB\Õu\Ñw«\éšm\Í\Ûd·3;!m	”q¹#hşõ;]h5%}L¤ğõÆ¯¤\Í¶\Ñ]iŸd’pAL)‰dn78\É9\à÷¼#\áÇŒ<ÿ\0t\×]&\Ò\íôØ¥ˆ\Ş[[›o$±1y¡·~ğ…‘@›™‚ó\éôG\Å\Ï\'„m/´iW\Z\í¥\Ã*õn\Ùâ¹Ÿ\î¾0¹Û“\É$qŒÿ\0„4ñ¤\ë¾7×´ic\ÔV\Îk9-$ò\æ;™\n,?¼e¤SµöpG$@^C’êŠ\0´\×<Gªx…Ç‡õ´K³ÍŠo2\â	\Ö!+1*©g@¤cw}·\à\ï\ÅmK\ÂúÖ—:™–{+…·\'|–O)d8ôÊœ€8¯—/ş/j\n·oY\Çq}\áû8\'µ±k\Ø\ÃEyx\ìw\Ë3,¤€\ÎÏ”*Œrz\ï\0üJÑ¼Kğ’/w\ÂÁcšk³À…”ù 3 1F\Ê\ä­Ï·4Ÿ\ZZø\ÏE’\ÍF·?¾x\ÚIze<t\Íy\ÇÄŸ‚\íe©jÀ™´\ÙH$ƒ\ß\è+\Ê~x–¼†+k‰’\\–7O“\Ëa…,\Ãøºøõ¯§¾\Zø—\ÄZDz\åœZ­¼qƒ@³/@¹<g\Øf¹*AOFu\ÂV\Ö\'\à\İa†<«,ƒ¨#µzm¦#·Qœûšôô›ä¶½ş\ÈH\åu\ÃGµW`=I\ê\Ùğ\æ—*³%º2\È\Üf°X9th\éúô#ºg’jrfb\Û@\È©&¼s\Çz›\'š§9^8â¾ª?\rô‡•š_5\Ãtñıkšñ7À/k,e’k›Gc\Ë Á\È\Æ0G½j°\Õ\"ˆ2œ´GÁZ\î¢\ÒLT¤ñT\áµclN\0\îk\ë?ş\Æ\Ú!X\î,u\Ùm]\Ö}¥ASô\ÇJ\ç<{û+\êzš5\r&c«K°Š0\ßp;\×5JU\î¶1Œ\ã.§\Í\ŞQ<£½Kks%“nC·\Û5³¨hú…­Ì}”\ĞN¬D±˜\Ï{bªK`\Ï˜±0l\à€8®F“ÑšršöÚ¼º•™\É\'§Ö¹-FK‰AÀ!»Ö¾Ÿ#\ÛJbl 8\äƒ\Å&­f\Ïy!	‰z\Z\å¥I\É#+M£‹%ºdúÕ„Ÿ•kY\è\Âg]á±Œ\ä\Ôw\ÖF	œl(¹\àµÔ¥}\r\\{™†<)5gF\Ğ\å\Ôn$œ%¿Æ¶´o=\à\è\Ä€\nöxK&\Óu¸ü\è#ığ\ç÷H£\ê\ãıœ\â¹\êBUš„¥e©\Ä\è»\Õ¥² § 0\É9\Ú_›‚{s\é^ñ¢ü$³M7@œ\Û\Ç3ª[\'%±“Œœ\Ä}\Ğ:*Oj\Z±Ñµ\İA\Ù$jl\ÂÍ´$G†v\î0K¡\'°=ñ^_\à_\Ú/X\Õ<cm:]Ü‘\ÜBWM´¶e‘\Ñ8*­µC1*¿ì°¯f†\nW¬\ç“oD{¿ì·¢¼‚+·\İ\Ğ^T8ve9\rƒ\Ç\0‘\ï¸ş==Ç€<¥\ÙÃ¦ykn\Ìñ\Ç\ZÆ…¤\ã,Š\Ø÷\\ÿ\0À}y‡ñC\ÇZÖ©\á\ín\Ø\Ø\èV\ĞycP´Ÿm\Æİ²y’’Ä³>ñ³r…\Éa\ÎV§m¬k7V\ÖWº\åÍ\ÉVòxC‡gm\ÑEi¸\0lT/\Ø§\İ\Z4¢½Ø™r·»={ş7‚¯¥7LDl­)*\Ëdó·¹9\Çn\é^kŸt¤M!¢…\Â\Ü\ÇQ¸Š±VfIn7sÑ†{W©]\Ùi±\ÜÇ©\\\ÙXAid\Í5¥\Å\×\É\êb“•\Şp¾v\ÆUñŠó™<-¤|Gc®½>Š÷	$p\ÅfS!;]$ó\Ğ V}Àª)r\Ì\Ù\Ï©R§†(iw=¬x;\á¯\Ä\íOX\Òôø%[ø¦\İ\ÜpŸy°¤\n€I\nCšóÏˆ³v\áØ¬£ş\Òyt‹62Hñ¼±y³\Î\ìrT`dW/ Áª|0±‚YüCxnh–Ôˆ{y0ˆò£	·x \ä¶3µI\ÆXV\Íæ¯ø@ğ\åŞŸvúÍ¦©#4\ßk•Lñ\Å\ÃHĞ°8\Ãd¯=A\Î)Jœd¶Ô¥¦\ÏC›ñÁ-O\Ãw\ZÖƒ¨¶«yk¹¹·Šİ£M²*°(e\è9œWˆ\ê\ZTúk<W˜›?td\0{“\í_Nü:\×m<=\ã\él5ûŸ³\Äò-¤C(u\È\n†\àc\",‘I\ã š\ê|{ğGGñ¦“ö›qk¡K\ÌHa*\Ò\Ä6‚Àc e‰ãƒ‘\ë\\\Õ(_X•t‰en8\ë\íUdˆğ?>+\Ø>$|\Ôü¤C©\É*]\éò-\Ìdv,\Ü’z\0ô¯)\"‚˜\'¦¸e¢I\ìd\ãÒ´’OCM_N•*0\Ï\ëX  z\æ³u	°\ÎO9\ÎkTwô¦Ï¦ y\ãÖ¥»\ÑW–†<]\İÇ½\ÄqY\É\à\núo\à‡£\Ûj—7p\í·(I\ç 1=Š\'@=\Ï\'¶k\Ì>x-õK\Ø^+A°‘‹«µ\Ì	\î¨9vô_^x2\Ú[É²ÁbŒ¨7NORŠ«µIüıë²”mf:ûµÿ\0	Å­”0iv[\ÙÂ»š[¶ò\Ô\'÷ˆ\íô\êk\å?ÿ\0!t¾ŸQ\ÕÎ¦\Ë+4\ë|E\0\ë‚B“3×œñ^\ãÿ\0%…„\×0\Ú\Ü% Ü°\ÚcÍ–ññ÷œòqÓ\Ğp:\×Ì6Óµ­r4{›\âPL‹‘˜\Æ\æ\ÏU‡½vJNG\"Š†¨ğ­\âoˆí£–-K_\Û\É)f6ˆÙ½¼\Ş_¿­r:QÔµ\İZir..q¸Lûec«|•\0w¯¡l¾\0XKw!‘t›T‰¤|ÿ\0­™óÂ¢õ\Î?\È\×!\ã-oB\Ò\Ö\çJğÕ‡öfœ¨I\æùä˜¬ò%­5¢3nú!¯x¨xyneK†ÔµÙ· ó·:@‡€£<{±úv¯>O“\ÄS\\]k7®ñ¡\İ4Œ\Ùß \0\è+\Ñ.|=>·®§Ø­ü\ØXŒJW·9\êy¥Ö¼!´*—÷h\Âs\Z0Úƒ\×[¢c\Ïd\Õl\ã\ÊiÖ©i\n q—\'¡b{“ù\n\Öğú\Ëu2´\×Wc¥\Ìg?\\j‚÷\ìğ\É\ä\ÄhrA\Éú\Õ-2]÷-<l½$‘õâ¤}\àoK¦\Î\"¹¸K˜Xm`§cû|\Ù¯¢<\â/TLI¦\Ãqo\Æ\ë`‘G÷ƒ®3~k\æx:ö\ê$\Õ\Ô\ËõsDcn\ÅúñŸO\ÌWĞ¾ğ\î±5¢Ã©ZZÎ aN›!DR:‚¸\ç•¤¹\Ë6j²»ğV¯e.—q}©E¥\Üm\ÈùR²;ù†}ø®#\â\'\ÃùôŸ\ë\ZŞ‘\Ê\Ş0Ÿf!»¼y³„\áNÀ@,UpF\Ş\ä\×¯\éR\ØZ½\Â]\\[ ,\ßi²½?\ì\í+\ÏL~=\ëÉ\ÄMg]\Ôí´ˆ\æ\Õb\Ó\ì$i¦‰œ\ÆÑ \\»\È6üÍ·$p\0ª¤úlˆ\í\Ó^\ÖFŸ8´»‡N˜\á\Î)g·Fõ\äzx\æ»\Íö…½\Öum+Á:^¤Ã±\İ¾\Ô^?%d¸F\ÒKm\r’\ÌN\æ\Èæ¼£Fñ:ø†\Îş\â\×P\Ôo. ¹‰,é¶™¥v(¤(\ç\åRXû“•\Æ^Í¦|8±D\Ğo>\İ\åOi2, \Ëk+ü\Ä\äğp6\ï#¡\Âô˜Q¹£•‘«ñ²{ÿ\0i\Ú…i}s6±[Ekn­´4N	b@À\É%\'\Ôş¼;¨Ÿ\n\éz\Êji\æı¾\î\ë¤\Ó1‘Yº\0=³\\\"izŸ‡4Ky®¯…\ïˆo•™®GŒ\á“ò± ’qô­Õ´¾\Ğ5;9m´×¼—VÍºP<\İüœu9úæ©«+\'v}™ğPÕ®4_[\è\Úl\×VÄ±i\ÓD=wzq×§jûFñ‡´_,úœÅ®l\Õfû4\Êb`\àó±¸\Ê\ä{÷¯¾*øoLÒ¯SI\Úym•/$:~%Œ,²ƒ\Ç,6\ãœpkÖµ«‹\ÍCB¿6røš¯\Ò\Î+[œ«ù\í—r®Xó‚0{u5\Ç\'©\è\Æ>î§«Zü\\Ó®.¬ò·Q5\ÑT[w÷(!p\ì»w/\'\ã½-\Ï\Å;Kk\Ù\ç¶U\á\ÓbÅ”cF\ädv\Íx›ø\Ú]\ÄWpxƒKº¾¸\İM«m<\ç µ‹Œ\Ï\Ë\ĞV~›©¼\ÚÎ™u­\Ã}6›¥«\Ü\İ\Û\Ë\Ğ\\U\0\ízŒ9)\'#ÒŸ<»‚¥Ç¶jŸµ\én+-1;vY&•\\)û¸y=1Y÷×ºÜš>«|·\Í\rµ¢\\\ÂÓ»2÷\äÁ\'< ğ1\Æ\0¯Ğ¾5§‹//\ï­4û§\Ñô™\ç–\ãSUbŒX>#‘¶€q±J\äqŸ\Ä\èj~/\Ó-­\ï.\â¼x[RCkim™c™ğ\Zu9<\Ş(\Ü03G-¹nRŒc±\ë>ø¨j÷Ú\ÕÎŸmk$ª*\åK8\'ª€\Üz\â´\äø‡w¤iú•Ş¡ ¶òÒ«,ŸgA»$0¹\Ç=k\ç[ÿ\0x\Îÿ\0D·°\Óõ¨kŸg‹{w1—¼¨ù—´p¿{¥gk~2‡\Ä\Ô4}nH ×š„i‘;ªşıG”ä‘•#\Ín~¼T+ô-¨ö>‘Ó¾#h¾)·óü»=V\Ø[\Äñ\Û|§fc\Ã\å†\0 ƒ\Ô\Öı‹øzÍ¼OG\Ó\ìX‚J}˜`‘\Ëc¾¼+Áô¨4K;5¶‚öf’{{M’%·P¡K€T†,À{pq\Åw\ÚˆV\êfÓ›N[[p#š\ê÷W¹	+$q\ämNY²3œ`\0¥4¬\îL£\êû\áG|Cp…ôK6ixn\ä†O\"±¼Cû1x\'^†$\Ş\ãOhò7[K÷³\êk¶ñİ£\êşº°6I¼]\ÜÊ±Ç €ù=ºó]Ÿ…üAo-¥±k¨\Ş\êv7Ñ•YK#\æ\Æ[I9\ÎG\0qŠµ\ZR\Ş(\çt\åu#ˆ\Ôd(­\ÙN—­‘q\å\ÜGŒ¨\Îk’»ı”üM%ù„µ¬°\İ\ç‡\ê}0k\é[\Ï\Û\Ùh²Ş°DòĞ€\î\Ù@ûI>œc5–¾3:\æa,:«JR9¢V&A+ù`v†#¾@\íQ,-î®„§[fxŞ‹û:\ë6\Û~Ö‘An‹ºF cŒu\ägò®Wâ·Æ\ámOL\Ğõgµ’\Ív£G\çš5a’ .F\à¥r\Î0s\ß\Ó<Wñ:ûI\×<ä¼¸û4oxb	¹›ˆ€ÅŒœòp:ñòGÄ¯[K\ã‹\İ~úÅÁf\í¬\Æ\æ\Ş\Ø\Ê$bCÕ¶G,™\ê»Fa…*4!Iûƒ•÷‘\Ä\ÏñQñO…õ\Ë(5¨.\Ì\æ{t—\Â\×\ì\ê\ÂFF\ß+…Q–*rI\\\ç$‡ø\Ç[ğ7‚%Ö¤\Ô ñ\rŒ—&\ÊóL\ØoX\Ú!µ\Æ\ì:‚\ïİ°€X`n\Åy\êkQx;\â×‡/alÎµ{\ZÜ¤\ì\ï)Œ·”&m\Çi’\ám\Ù‰=\0&¾‚±µğ†½ı¡\â\İN\îóM¾\Õlš\Ö?.u‰\É<¸Á\ê¨VÀ\ä qÙ±–\á>¯â¿‹%\Ñt\Í/M´\Õ/¡¸Y£\×P\ä\r\Ûc`]w¬L\×J¡ÁûŒ\Ûy\ÈõŸ\rxZo†\Úñÿ\0\Äj·¬	¼\Ş\"\Ê\İûG¸,N€ó\äm\ä“^CuûFø3\áƒo4o\ê:Î««™#I.,mü\Ï/fğP¶\Î\ÌKpry\î\Ùñ\Ù5G\âu\Ôw:†§¨[\Ä\\\ÜF.cı\Ù .\Ğø1\Ï½(½¶\Zs\ìOˆ^Ô¼Iö‹_\í\×zryImö¼<o¹‹¶r\ŞM\Ø )\ÆŞ¸‹\Ö´%¥µ•\ÕÎ™itDFh¤Ğ•E9%z\ÊKœ•P½~\\ò+\ãj\ZFªŸ³øŠ[™`0µ¼\Ú\È\Ò 6\Äq»\\\äö®[\Æ^9\Õu}Ft:Å¶©§É¹æ³…\âhv‚\ß\ŞK\Ã2q»€s\Í\Ì9Qô¯Šÿ\0h¸oü\İ(\Ç,&¢\Ò\É²M>6™#m¤›\Ô\äq]¥§©k‘\ê:f¡4[k;¯!`d)1ó!“\ËP\Ç\åSów\ëÈ¯|)©i\í\êÖ’47‘‚!·¼‘K)\Ç\İuIQ†9\\p=cá‡‹o¼¯\Ï\ì\Z\Ì-\'†\æS™<\ÅfX7g%†dpi\'©V>Š\Ô5\Ï\èş\"–\ãNÓ®$‰\å†h/b\İG©Ù±Ú›Áº8\ã¿Ì¤gš\ëş\ê6Ÿ.¤{ƒ<òÙ±…m–VE…\Æ~\èeÊ‘·—8\'*FxùEø¹q«i{|?<\ÒZ\Øj0ªE§@6rY’,\î$l\Æ¼00¼\í\Øü_¼×´ùu\ë;k—\í\Ö+\ìDP.ó \Ş3¸\ÛF\Ò~cœ\í&®\æg\Ôÿ\0\îoüe¦\Şh\Ã,-\ËBRØ»\ÊSr²\Äz6\ï— t8\Í|“ã¿„úÎ’m\Ş;)®\átÿ\0ˆ\ã\'\Í$ÿ\0t.õ\é\ï_UÇ¬\Û|C\Ğ\Â\éw©Ax‰(˜º1\r#h\İO\ÌT\çyê¹«z†±s¥\é:~™k¦9÷0ˆÂª\r‡r@Á\ã°¬kRS\Öã„¹t?9q\É\Éªe\Ç\È\Ô*q\É*HşQ“^)\Órl\0§ø®Á°¬×±Fö\Âé¾a7ª\ã½sm	upE–=u¾²“YO³\Ûy\ÖöJOw\Õ\Û\Øvô©İ£·½\Ö\Ï|ğ†­¡4qCk\r¼°`I$p\r®\ß\ì\î\'ùW©\Ùj/©[¤±\\Ã§X•$™;Ÿ\'LgÚ¼H·l–úd	›o\×q.\Ò\ÈOV#\ïs\ØW¨øcá–¡z\ï©j=!\rofƒ\æ0O?(ôQ]Ğ¸§dƒ\Ä÷«m0š\Ú\Ü\Ê\É\ru\'\"1œ\áT¦¼¯\Ä~,\Ô4öXà°ŒŞ¸.nî¶³ ?Ü„p»=+¨ñN‡©iV›uKË•‡v\ä‰\0±=À<œz×’ø‚\æ\î\Ö[˜\ìme’\é|\é˜.\ĞOVnÀ\n\èMœ\Ïcñ-\Å\Õô¶¡rLÒ«\"\Â0\Ò9<rF8\äñõõ®Tğ¾c%Ñ›P½Ÿ\n¶±g\ìGnŸÒ½NMFh£µš9\Ù\î\Ë2Œ\îm —>§œÂ¹­kJ²\Òn\æ›1±…O™6v”z³\ï×\İ+Uœ\ÎGŸj–V:ˆ!\áR6\Æ2P6ö½H\àW\Ï^)ñ\ÛM$6–\é,\ÎH3R}O­w_¾ G}¶zt’\Çj …ŠÔ¿¯.\İHö\â\êo\çœOs\Ìù\Ç\Î\0v\0ÕªÔ…¡£ac}<\æk¯–B¾¹Q\ï[vº¼`Ò¼v\Ñc&\ã¦~ƒ­Q\Óõ›˜\çUUauUÀ¯OĞ­\à\Õ\Ò$\ZzI34²9\n?CAMØ¯\à´ğ½\Ú\\Ù¢İ„\ë/ÏŸ\ê?JúFø£³ ù	¬f9¸\Í\È\å\åP0[>õ\âúW„´&OµjV1\İ,j\n\ÃaG\Ğ]¦“­´0­Æ‹¡\ÛT\ë{$¶©ıp+X]\Ówf·y\á¹#\Îÿ\0Xei~[\'ŠO\ŞĞ±÷\\‘\Åx×Œõ»}\Û^·¸\î\æ2Ø“og>\Õ;…òw:‡\Ü	=OZ±ñÇ±]^\İOö¿.@«ŸÙ–Y\Ët*fg}8\Ï\å^%f’xó\ÆW\Ú,:œ\ÒEr\Â}Bi°…W#h\ÉO©F)\Ú\ì”\ì†x[\ÇQ\Üx\Ş&(´›{N«¥\á9|²[ø€fùÁ\0œœwª0¹\Òt?øv\ÇJ‘M5\ã®\Ó,ç«\Çõ\Ïz\Åøi¡ió$zå¬­‚*\\\Éò›·\åöö\àwÀ\É\ë\\”i¨x\Ó\ÄM$Pµ\Í\Ô\í\Äi\Ô\àvü«D‘\r\Û_\İx“V”\ÄÎƒî‰PXu$§“Ïµ}Qğo\Â7÷úNˆúˆš2C\â²d\ÄÀn\r·88>\Õ\çÿ\0>¦²\Şf£‹,Ob€3¹ô+üXúœ\×\Ò\ß\n,/4Oˆ0\ès½\ãéˆ­:Íª\å-$#>Y‰\ÈöÓ®2’4¦®\Íûïˆ¾$m]²Ì¾´\ÂY\Çg‘\äŠ94r¿)R\'’1\ë^ƒ7\Å8¼5uus÷š¼·\Z_\Û,.\î‘ù]\çx%Ca·\à0	^•·\à›\Ø<\r\áÿ\0\ìzóşur\×\íss±-g·Ú¡£?\'€À³\ëXw\×ú\'\Ä-_LÓµCª\éVön\ÖWr?’ö°ù‡fR \Ë\É;½\0®=\ÏJ\í:\ëw\Ş7ø{¢\ëZõ±¸{Ä¼œù\nF\n\ê@\09\ÜŒtóT|m}mg­^H4øN{§\Æ\î\ê\ãp‹\r‡™\Ë`(,\à\ä÷ÁÁoÀ_.´\ïj:^•<úÔ–vşuİ yR]*¥\È;÷£/\'9=+^\ëC›I:ò^]jCE\Ò\ËÄ¶\ì‰µÅ»—\åKk?.Jõ\İE‚ı\ï\Ë„¼§µ{¹\0Yu»rd\Ê,acuE\Æ\í\î\ÒŒ\à†\ç5\á\Ö?<M‡,4yô›k{_´,ó\Û,O’„€\î\ê[w”pW\æ	sšúŠ\ãÀ©¯xJ\İ>\Ã›n`\é6¨\Ì\ì§k\áTÈ 7@	\Æx\Ç-£\èw!ñV· \Ñ\"\Öl¡“\Îd\Ó\Ò(cb‰c·d’G\"A’p\Äa\ØW<nóÄº\ç4[-OWMÏ‰\ï\Ú;(\ì\0A§.K»°\Ë*65®\Ñ\Ü\n³ğ\Ë\ÆZ-¯.¯<Y¤®­­‰¤ºµš\Ö7-\Ò\ê±K¸ª\îQ\äò¨\'ƒŸZñW\í\íô\İOÄ·wS\Ø\İ,mo,o\å´6ö»•L\çrõT±\áG\ÍÀ®z+Ë¸KÒ´½-õ\Ùì¬¡´µK+9K\Åi[7;[äŒ²¨\ä;[–\ìIo©¿ko§júı•øk$\Ï\ŞjZÈ­2	2\ÊÍµˆF`y*Á!G\Êq“©ø¶ì–¾¹´¿´M@\Æm¯\ï\æ_´Ü¢0\å€¤*ûcUş%ø\Æ9, ¸“QmZ\É\Æ\â\Ê7Oq3ÌŒWi‹\nK9\à!`+C\Ä\Z®–ó\è¾\Ó\Şe\Ú<öx\Æla1«\0¬HbpTpF89V-JûZ\×\Ä{¿\ÛI¨\ßjW7 GQ\ØM\Z˜\Òv¤£$yœ¦\îIÌ¾\ÄWw¡øL¸\Ğ\ì\îœ5¯ˆ%u4\í6¥ƒnB6ÿ\0Àc–À\ç\×\Í:~¯}¡]!4\ï\í	mn\Ö\æ\Ù\æe½‚ª³FB\ãhó\ç\'\' <\nš\×â†»¦i\Z>‹ Ig¨^\ê\í\Ü\Ü\È\'Ÿc\Ê_\æ#%ƒ\Úx\Æ8§asß¯|L›F¼#¾½½™›MĞŒ\ßhe\0.YÙˆPTŒcœŒgŠ\Ê\×b_\é:Œ¦ÿ\0û+R¸ò§]<Ks(0r\Ù=	,6Œ\ãŠò;»tÒ´k¸¬.m®5¨.\r¬S\\‘\ç\İK#,ªª»³µF\àr9\0\äóX^*ø§­\Û\ß>…ªG7\Ùl.¼™a+\ç\Ä\ë\"e\Ù0BdH¹\ç\æ‘ƒ@®z_ˆõ˜4m\Z\Æ\ØO‰¯¤\ÜÈ­:EòrK}\ì€\ê0§<b¾oı 5[Vñ¨°‰­\íšĞ‹™´ù®š8$‚$Š\0Šù\Ã6Xs‘\ìV\"¹¶Ù­È‹u`ñ\\\Ş2…»w‰™Š[¨c‚T¬`\çŒdô¯’¾;ø»\ì¥}Bş<\ÚEm©öf-\ämı\ä1¾N\Çû\Ê[$G})«˜V‘\Ìü‹Sñ¯oõ;„[i¶,\æ3\è^H­\Ö\Ú2Bœ)I£^s\í\nü7 †\×\Å\Ş _\r\é°]=İ³LT##F¤V\0d\ã\0õ>¤\×\Ïÿ\0¥‹JñÜ–w­ö•vVd‰•#RÛ¶\ä2°\Ø\Ãp\àñ»¨#ô\ïƒôum^H¼K4q\êP\Î-#·š)LeŒpğ“\0¼gh+[I]˜E\Ù§©|\Zµğ.¹£\İ\é°Å¯iOœ÷¶wiÛƒƒŸ˜1c\0\çø°9şœ\çş%ºeµ±o0®©\\I>@\Ú\êÿ\0w;sˆ9+ºƒÅ‰g¨ıˆ]\Åf\Z\nZG™BFT¯ß¹\à\ç¸5\Úh\Ö6F\Æ\Ó\ír\Íul’3[\äª `ˆø8Ÿ—§<ô\Í>TLğX¾iVz~¡}gò\'DŒG5¦\È\Ñ÷olH¬Xı\Ü`\çóšñÏŸ´\rM,\î­\İt¿“\Ê0ZC$€2ğr@Q dŸ”Œ‚k\êß‰.K»l\ã[P#¶‡÷ˆ\ÇøKªôõ89\éŠù§T\×ô³\İÃ«\Å}:\Æ\ßz(±0\ÏQ€q»\Üf¢VEE½Ï\íü,Vsk¥^\Ü\Ãt1\äÏ¨m€;€vˆÀ$“\Ï½;ñ\í¿\0ş\'jrø¾?x’C‹­[ˆ&óQb+&x™;H/\Ô3õ\åú\İ\Ù\Ö58²¼<ö6Œ\ÅustL\Ç\ï\Ü\Ù9üOÓŠ³¨\ë1\è\Z¢£¼w–®\Â\ã\ìÒ»n€È¡\ÈB¸eû\İT\ã¦A\Æ*Uõgss§j\ã«H§}GL–\ÏWOq\äJ\é9\äÂ·#\åO \é\Ô\×[\à]N=\Åb\Â{¤¶\Ç*\Í\è\æ\rÑ±</b\îA÷\ä¶s\Îk‡ñÅ¦±¬ø\Êoh®\Øjj/\'·r\\Á+r\ë Bv¸nyœƒ³L}bş\ëO\Ôl,\ç{{»ôû\\]\Øo–\ÑX¯ñ9\ÚNA\Ü\ÓKR%¶§½ü ñ\\ş\ß\Ğ\í\'³\Î;‰\äW’\İv\Î\é+Då‹Œ¯\î£%@\ãÃ·ğo\Ä/_Ÿ/S\Õa¶ñ”\é\âu·[¯‘\\\ìŒ71®3˜&¼\á§Ä‡\Ô&\Ñ\íu$·³mV\Ò4»µkq\ç\Ìh‹ü€ˆ÷K·©úgA»\Z¤÷I6½´9.\ZyR\\|À\í\Î[\Æ$ƒÕµriŸ%©=\ÍN„FN\rWR8\à\ä\Zš>¹\Î3\Ü×‚_1a4ˆ•òx\æ½Á÷“j2ÁjŒ©iÈ‰ \ã«5y\ÜA]°\\\"L˜®\ÏBÕ®l4ñ‰[H¦l4 fF³Z\Èö¨û´‘\ëV·†[û^ş\è\Í\ZœÁjbBG§ó­M\â\Õ\íÂ»™1»gqy¢\\}+Ë¥\×-¯‚À$kƒ3\\\ÜÉ•­S}lIm¢\ÚF¶®fºXÀfo\\ö\æ» \Ì\ê™ª\ß\Ü\ßXù“47e9\ÅóIŸrNyÎ§¢µ\Íø»\Õõ.¹M:HA\ëóv\ÏÖ \è¾\Z¤ò£ \Ê>ø“\\F©\âS®’Wš\Ö\È\äGoòƒ’x\ÉûÆº\â\Ò8§v›Uñµœ2i:3K\0M\Å\Òù\å²ø\äı8¯ñ‰¬5hg¶Š\ŞD\ÓU\Î\Öwi$¸o\ï;¹<ã ®†ö\ÖAn–\Ze¼\Î\éòIQ\ìI<ÿ\0ŸJÄ»ğ|\Å3©]¥ºcqŠ.6Š\Ò\ì\å<S\Ävğ\Ú3I$1#\ì\Ü\ßıaXvÚ„r	\ŞX\ç\ä\n\0\×ø\Úÿ\0E\Ó^Ai(TL©‘‰;µpv\Z\İ\í\Õ\Ë}–\ÉeŒü¡ö[­‰[V‘a«k\Í\å\ÛÛ’\ã\äZõü\Ö\î|²÷£KB\İH-ú\×\r\á\İ;Q±(\æW·¸˜aR\'9Aô\ë\Û|¬Xøvö\Ëë›¶R1-\é\Í4»•;¥¡§£ü¶²q>©©IzªE$ù\Õ_‰š\ÄZF6ùxÇ—kn>U\' <u?¥wW_ì†š\Æ\ÛOŒ\Ì\ã\ï\î\ŞV¼/\Å\ÖÚ—‹õY\Z\æs$)\Û\Z7V\ì\rU\Ò\Ñº½Y\âº×‰?³\ÓPºŒ¬»¿r§û\Í\ßg\Ğzz×‘\\x´«Ë¶´‡\ì­t¥7g¨O#ø¯hø­à¹¼)\á±%\ìö\Ñ\ŞK h­am\Æ4?x¹\ë“\Ç¾z\ÕeûMÔ*´+X\É/\ïg\Ô\"’fx¢c\Ü\í_Tş\Íÿ\0-t»dÔ\Ö;\íM¡ûS<®`¶\Ò\Ãnr9¯ø/ğ~ûâ¦«4V¥\ìÀI¶RUd\0ò»¾•÷ÿ\0Á\ßxŸI\Ôbº{\İ\Ãúu§\ÙD\ĞH›$—?(=\Û\ë\É\è[\Ğ[²O†:§?‹ô\ï\ì-\ÊY®|w\\\È\ã†b¡Hn¸\ã\0gñ¯g´ğ\'‰\ì<\'m¦®¸š¼\'•–Hˆ^o˜“\æ0p9=/ü7	 \ê\×\ÆY\Ş±}‰pYP((2\rÀ\È9®÷W´û^±¨<\Ö:\Ä3Zm[x\ã˜1·\n\ÆP˜Ä‹‘´’sEqT|\ÌôhÇ‘jrğçˆ´\ßG*XJ!‘$ò\Ë\æî•”\ï9\ä&o\Ê?½\Ô×¬x–\Ş[E¼°\×U\á{\ÛX­\İ\ÚÑ\Ã5S\ÆF\ÃsO±¿§\êšÖ­r.\â\éVH·\ç@©çŒ€\ë\Zn|›‡ø<\0]\â-7Uğå¤–q\İG%\ÓL\â]q<o\ÏV\èÀ\ç óŒAdm³\Åôø§V\Ö.t½Qñ4·\Û\Å}\Ñ\Ç¶‹	”d™Ø¶… ğù\'\Ó\ÓõD,º\Ôo\í-\î´\Ë{F[;mÁ6nH*Á¹V\ØzB9®g\Ã\ZE¼\Ú\ÓG®\ÙK£ø†\Ä`0Í¶>b%	\Ìg\Í ;”:ŒdV\ï„RûP½:g‰5\r9|C¡\\\'™%´!¼\ë2\îcIt\Ü\0Ì¿{<dŠi	²Õ•¬\Z¶™t5K(\Ğ\ßİ­ô®¬ö\ÛQ\ÎĞ£?»\Â\ät*1Ò›†\ì,´³ggoŒå§¡s2H«¬¸Ë‘\å¶\0ş\Ø\äW_ªYZ\ê\ÚÈ†V•\ã´\ß0’\İq\å’±Œ”;\Ï=1\Ç$ó\Îj\Öz”zÖ‡©\Ü5¶l-‹3_ºIó»†a \\Ê¤(#»±9!Av\ÎvûL\Óot/h\ZU„ZÄ±\ÆaûD‘\í[©‡.À.Clg\'=\0Kq….™o§\è1½í†©¦\Ík\n\"Emvb’+Š\ØWqT\È\\\çt‡ŸN£E\Òu}j\îò\Â\Ú+-\'\ÈC4z”6\çı#rù0§7¡\Ü\ÎX’N0rµ_\n>¾4{MbñcşyR\é\æ\ÄsL\Û\Ñ\ãrT(\0\0Š –\0ƒ·šWğ¾\çRmOU¸\Ó/\ä¿šK&X­Ì’ˆ\Ñ\ÔBa¥# \0v±İ†\0e\Úø]ô\r3U\Ô|Kı£ac{uØ´Ä’[\ÉD,\áaa\Z²Æ€±\' \ÊrG&½f÷ÃšWƒ´+3\Ã\ÂúHÀ¶ŠYr$g‘½\Ü,0ª#\ã·3\\—\Ä?‡÷{|[>§=¦…o\äAl8K¼ Æ›\Øl\'il‘™\Ìw\ÅM‡sÎ¯ô­ô\èo¿µ\Zò\ê\Êg1\Åƒ\Ì\"fehü\â\à.\äP[\n¹$}\ŞK\â>Ÿie5¾š\"6Z¤{ãº»¶\æ+\Ùı\æ\Æm‡\äm«»¾N\Ò>­£ü:Ô´‹o\ÛxsV›F\Ö.Œr%ƒ8X¥ˆ°‘Ä¦a\Æ\î>^6\ä‘Áªºıö™\á}j…Ó®y’\\jwv÷\Â3+\ë\"´r¼\È$ŒŒ`M†\Ù\âúœú~!\Ó\à±y¤º\Ê[˜ã¼‡td‰2HqT\0\Ü\0¼\ä\à\âj>+\Ó4(mu\rj9 ·µk›#\ä—go0¢	$;¶Ò©\ç·´|Q®øW\Ä^»Ô´¦—¨öÓƒy\"2‚\ë\Î\Ö $r8\äóÇ‰|A\Ö\"¹ğE\ä÷	\r\Äbx§Á6\ç¶u;$(û\ÌOÁŒ\ÓJ\ì‰;›\ã0øm\îoõ[{\ÔÚ¶¡ß·›$°P\rÊˆ¼c«u\ä\Zù·\ã\ÌrK©XZ\ÚLot«~\ç\Ê\Ä\r\Ì	$\ã\å<gŒt\Íj\ÛDu-\ïû6\æV\á\×\í1\é\Ö\Ñ3\É\n\ï\Ã\åGnrq\ì2\Ç\Ş\Z‡ÂºL\Z·\Û<¯xfŠY9`_Lz¸?‡\×D™\Ë9]y\áOÿ\0c\Í$VšEšJ\æ\'Y¶¼†&C»w\ÌÇ¸\ç\åã‘Šû3\á—Æ­#\Å\Z¿¨x\Êh \Öl\í$62Úˆ\Ôj*ñ\áFŒ3\åÅ•0-×€~E\ÇE\Ó%T—úlùe\Ü\ë¹K`p¤\È~e\äs[ºg\"Öš\ÏPÒ¯]¥´s\çÁ(!“•(\ÊpÀ¶\àxN\ÜMl\Ò1¿C\ëoj××¥\ÔZkc¦\êA®Z\Îô3\\!o¾É\nd|»€®	®»\ÅûX\Ñ \Ôôûæ³‡yt,<§Xø¬ ¨À\äNk\ç\ßx‘ü\âYô\Íq\äÔ¼<ˆ“[<\Ës8mÜ»X®I`OÍ´ğ:†|tñ•win<3~\Ö\Û2\Ëj;¸ù“\0¦YGF#\Îv-;³Í†i.\r½\È\'\r\'Í‰Û¸aÔŸpp?»Ş´F­-À\Î\ë’\àb(‘ü°¸ÀÂ€Wô¯4¿Š^$¶„\Õ\ä\ÃG\'5½\'\Ä=QÑµ	\Õclgëµ›‹Fñ\ÏUø«I,\Ï\İ\Ãi\êX)I/g#\Äô\Ï@*ó^=FòY!¿iŸ\0\Ş&\ÜU@Q\Ïs€+-\în®|ö/.FN\æ\ÉZ³„\Ä|°‰¿9q\ZdN{TóÀ\Òj—Z\ÄY\ÜIºR\"E?z6=\ä\0Œ{t\ÇQ\ë¶÷v\ZúV©,v÷š+›L\\$SI: r\Äm?0.1\×kz¼ŸÁZİ¦•®i—¬ˆ°@w^n<ùi\Ë=8÷ükª\Õü_¥rò\ãP_2\ÆietpwˆŸ\æ\n8\r´®:\àI¦…%s²ğNšş \×l¯eûE\ÕõÚ¥Ì—sùl\É$ŠUÁ\07\ï\Æ\ã\ê\0ûY<g¦Á¬\İ\Üxš{­\é­\"\ÚE‘YòF\íª$°;†xò\ïÁo¯\Ü[A§Ù·—`$‰J®\ÓÀ8df0(Å‡§À¯lñv±·†ÿ\0³®À¿\Ñ\ïoSQ†r†CµÀ\nIÁ\\ª\îî“Œ|¤\rˆ\å{\Øù\Í8\ÍXAÏ¡\éP(\Ú{s\íÒ¦^\ãÚ¾x\Ñ+»\Z0´Vñ‰bS}\Ñ\î}jk»»‹µK´\îŒ~U=üŒ\â$Œ•­nÿ\0¹Eœ•Œ.õ>‰¥¢»\ZzR\ÚùJ.6\Çl‡-?|ú±ş”\ï|U6š\Zh\ZJ·D¦°œb°µ‹6‘B\Ír-\Ëô\ÏR>‚¹ø´ñwwoc£\ï\Ú÷®0dc\ÙG¥uE\èrÏ²=WÀ~´\Õ\í\å–Kl,x2\Ï;–\É\ë…Î¶\ï¼§%ğVıë˜À²À/j\ÛÒ´«\Ù\Ú\Ù\Ü\\–\Ş2|ˆx2>2\ÎÇ¿<Kq©Å©–´\Ó\ì\ÈC\È3JO¡?t{\×|R[œ8ë–š\r¨\Ä\Ú6\Î\áÔŸo©¯ñ?ö¿‰\Ş=ğ\Û\ÈÀl-Á‡ÿ\0­^ı7\Ãw\Ô/‚¢‹\Ù\áÿ\0X%\æuş¦¹\Ù\Ûx| Æ’\'	¿£µJ\Ñjsyğ\Ş\ÛsªJ$\Â \î@ô÷5\É\ë~\"¶\Ğ\äQ§À\Ç	\ê~•\Øø·Yû|Ì¾|—RÛ²!…úVÇ€şM¬L³j:e¶[\æd_Rkx™I\Ø\Ïøq\à½s\Æ\ëı¡;\Éi	û¨Œ¹ÿ\0µê–Ÿâ±µB$o3©\Ùü+\Ñ<7§h~±†\Ñm\ãxŠ#\ÉúÖ•ùº¾·\ÓZ\0•¯*Fnrgš§…&[t\Ò+‘µcU\æ²u\"=M¹nY3“.\ÜmôkÒµ[[\Ì\ÆqŸ\Ä~µ\Î\ë\Ö\ïk¤J‰TòÀ\çµM‰n\ç\Éÿ\0gV¹š\Ö\Ú\Ù\î,™\Æn\äõóş¢>\Ó|\â,¶>Q€Oµ};\ãõR’{s1·-»\ÍT\à¹\ì+Ê´‡\Ò^k\Övú[´“\Ê\ë\Zc’y8\ïÖ®@Õ§?d¯„šÁğVø#-o€–\æ\é\Ô3\"0ª9\Îr­}m¨\è\Ñø+\Â\Z„ôiš\Ò\à\Â5)u+‹v`$<)r¹q\Î5Â¿‡>ğŸƒ<; j\Ò\Û\ÇöS\æ?\ÈœÀp\ä€GA\èrEz&“\Ç^(\èºMÍ¶”e1\ÜjD\\|\Åzå€@89\ãƒ\Ær©>ˆ\é£NË™£\àß†ö[kG\ÌÔª\Å6¨D³\à(8\Èm¡°W<“\Åu\Zg†´›MI/ub¥\n\Â\'(=A<p8\È0+bşù,¢–\İnp-£ÄX\Ü\èÀ$®6‘qƒ\ì+€ñ%\İ\Û\Ü\Äm\ïY\î·\È.÷-E\n°\Ü\Ì©\è\ØR `ŠVQ-^]Møa²\Z½¦™=ÄŸhµ`Ñ¤¤³0U!w\ä\Äzõ\àó\Ôs¾%\Ònôÿ\0j\ÖZ£\è\×6\Ş@¸\n–\ï(\Ë?u\ÃH\Ï{ñY>6²P4\ëO\í+›X­£–In’UvB\Ø£F%X`…*2B·y\È\Ñu\ë\Äğ\ëi:†­m6‚ho\áM\Â1\Äxl‘\Î@r¸@›•mš/-Œ\Z”Ú…¯6Ÿso¹\ä$)E\Ö/3\æ!‹F]Pyıy}\Z\ÌE«^\İY\ÛDt›‹\ß\ì\é55³1UdŒŒdT}ÁÁ,\çÒº½&k\İF{‰œii!4.^\à¸Rm\äóÑş\á# &\Ùhğ°\Ğ~\Â,4\Å,W³\Âg`¬:\í?\ê\Øö\êx\ç—`;ô\Ök“Kt\â8Í¤SM±?t±\âAó‚rW†qÒ¸Oˆfÿ\0X\Ô?³\à‰¯Ù¾Ğ·j¢úúçc8U@d\Ş\Å\É\È\Ç®\Å\ã\Zı½õ©7Ö‹>XUR¹Œ\ÈÀ$ePg\ä`\â«\\\Ûx;Q·\çQ’Y’	‚Cr†i¶ÀqŒ\0¹\Ü\Ù8\Èp¼`\Z§®\ä­6)®”\Ö\Z|Z‹[\ë9SªJ%€c\Î\ĞÄ±=\îI\ç\Îø\ÃNÕ¯4k¤°Š!0»‰ó:%á²¤”\00a´\îù¸:W^#¼‚\ÇDusmv“=ş¡\è\ãl€¡}KGC\É=3®¤¸}\Ú\×LS¬5œa\å	7\0\ì\Ø\ß.FTNpH\Ç|Ş†«]\Ì\Ğt;™,uh\íå¶›BXV\åg¹’İƒ\0\à O )|¨\ËA\ÍCs§_\Ü\ŞDÖºi\×b+‹TF‘n—\ÂÏ½R«µ\Ëer¡F_#=4!=œ:S\èWw6q¸¹·–k?)\à¸RYd¬ÀôÀ2	\ã?\Ş\Æ\Ò>\ß\â`¾¹\àû\Øõ6%˜«\Æ\Ë	#s(\Ãvm\Ùªü\Ç\0g+`zšÒµ¥\Ğmÿ\0·!‡T¾°-7Vw@\Îó6\æ\Ò\ÈÊ‚0\Í\Ñò	<¶+„øƒ\ã˜5}j_x¿Oˆ˜Dq}‚\Ê\Ó\ílX§\ï7møl	\íÉ¯OñÎ§¦xzòm6	­\ív}–\'m\í~Ub˜œ\î\Ús2EyŠ|+ªøcQ—_\×&¸\Õ\ïo\í\Z\Ò$x$L0\'Í¼\'\Ş\ìI,A\äP\ì-OÖ´«]\rõ\Ø\â“C»›TŠ\Ö\×K··Y!… ˆ\åYI\ËB7pq·Ÿ¼ExÏtXo/\'\Zv›¥­\ì\\\Ü\ÚÀ\ë#\Ü\rÀŸ˜±T€ \nx\ç\ë?\àñUß‹4¯²(\Ódy#ò´(\çY%G\Ü\Ï\æ\ÈA\æpXrr9¥\Õ~ë¥šk-z›»\×òï ¼´Ù¸\"#r”—…\ä\ä¶EMÉ±ñ~µ \İ$ğ¸¸\É#~\êMÒ¨+\È%x \Ôsô®‹Oñ}¬\ío¨³¼÷ğ2¹¸\Ç\×j‚\Ä\ão\Êq\ç¿\é?­4±\á5H5}ıo`Œ/ù\ÜÀœ®\Ç\\1ü¼œ\æ¾y}m4VsÙº‚V\ÃD‹€§!Cz\ë\Ôfº\àù‘\Ç5\Ê\ìoZkZuÖ—©\\\êMò°\ŞJ¡ÌŒ¬]v/n\0\çvÕ‡\Ú\ÌV\æ\éõek‹=ETùğ¦b·˜Ç˜£\î€\ÄÁ\Æ:\×\âK”\Ô\îğ«À\Æ%\n˜Àl·¿9\Ç\×\Òømo¬\ï#Ø²G+\Ë6\ä&ˆ\çvW€\Ã\î\æµ\èd{†‡my	e–\æ\ê\ãKo,ù3nv·İ¸›H”)\É<dg’F*OøY\ãxõ-6\Ú\ÜF$[‹c`Ûª¶KaŒdõVƒŒqX¶V\Éo©iš¥›\İA¾]¦\èG\Ş\Î0I\Î+\Ó4\ëG´»‚$°`¬x\è¯ \Ï\İ$g\æ\àõ\ï}NM–°ø7{{s;!‚ŒK[\È\Ì:üŒ3Ø	ª·ZšT\æ8š&‰›lroy¯±-&‚d·µÔ¬\ÚödBc)\Äc;g¹ÿ\0|ğ´·R^¨X]º™@\'±\è>ÿ\0Ÿ4™´&–\ç\Î\ZeœŠ™ec\íÊ¡\ëş~}2˜Y˜\Ër	{A„lw`z§\å]®¿\áI<3q‚ñMl\ÌLI±föÛŸÖ§\Ñ\îtûaöy&Ø\ï\"}\Çh\Æ#¡Á¬Î´ú£Š¹0Xˆ\ÕsO\å\íf”—’q€\0\ÇnôÙ¼3}\ã\íş\Ã2Izv¢Z¶Cpx\Ù\È\Èû q\Û5êº‡Ã»kø\Ò\ëK¶\çÌˆº@\åA\ÈnÎªxWÁLº º’&İŸ.4¸„¤¡»‘\Øğ=ir½\Ù.¢¶‡wğ\é5kV—¶\Ò\É@ˆ.L2ò­¹9\Î	ô\äzWÔ¾ñ5§,5}ò\Â8¯\"F¹·°2€\ìÁ‰†P\Ãø—;Oy<ô>3\á»syg¶E‚\ë\Ê\n\ÍÃ§}\áó\09=qùWW\à\él_Y±–\ÚI-®–Bd\ØD‡\r°	\0S“\È\Æ3Ø¤\ì\ìakN€g\ëNi–’0}\r{\ìô\àª)\Ï\'šò_ˆşµğş«öhşöpÀ\Zğ\ê\'İ‹u\Î6;:cœÀ‘Òµmeû#†r\Z­k¦	dW-‘õ\ê+Bö1\á‡lÒˆ\Ù#¾wrl\çµ\è¯5\ÛÂ°o}\ÇrHô¯¢?gß„wW\Ã>©h-\ã\ØÎœ“ø\Õƒ^\Ñô=:\ãRºh&¸&IV?@+³¾ø*Xy±\İlGÂ¯¶k¢œ/©Ir£\Õnşi‹kqök\Ô2’K\ç$ŸOş°®9ş\Üør\Ş\ímK\Ü\Ü\ÈròHyn:j\ä,ş7\ZG¿\ÔnZU\à<)9\è\å^¹£üG·\Õô‹-BO*8\ç\ÈD\Ï.O ö®\å\Ğó\å$ôgkZ…ö§MhQb’NeAÁbzWüEğ\İı\Äğ‰u.\ì€I*µõ/¬›\í±\İG’YKòx\ä·ö·ZÖ±$q©\å\Ü,“c…°ö©\ëb\Z\Ò\çšø_\á~Ÿ¡B·\×H\'¼\ÇÉ¹~H\É\êq\Ü\Õ/|H£ih/.\Û\å\n\0\Ï\Ôÿ\0…t¿|S…öª\ìşJ\à\í\îŞƒÖ¼¯Ã·°ñ¨ZªK!ÜŠ\Ã/\í“])\ÛDsI7«=›\á¤ú½Å”7\Zœj·s\0\Ü\0X~\é—w\×8H¢fòÀË³u¯ğÎ ò_}£Ì’!ı\Âø?¯D‚[»ü ±c%‰\ÇoZ×›C\È5«©®¦Ì€*\çimı\0\êk€ñ½ı\Å\ÌB\Ş¸€G?(\Õø‡\ìV¶ğ«\\L£s»1*?\n\âuMriw¿\Î\Ëó}\Ú\Í\É\r#\Êu¯‡³M#4òù=\Í{7\ì¿ğŠK\ßi—wC-•ƒ¹w8I\\\' FsÀ\Æ{×—k\ZŞ­v\ì\ì\â7~\ç>€W\Úß³¦o\á­\Úk¿,\Ïr‚\å\ã—\n¥#\Î\ŞFO\éJ2µ\Íi-†‹\â}O]õ—µ²·’:\ÊG…Ê¬gû¨›¼\Æ‰\ã\ß\ï\Ş\Ğ\í<?ez\×\ßgSnP4¡VH¢\ê\ZC‚2q»q»§j\Çğ¦•jšÉ–ûX\Ô\à\Ü\Í\0\rmknpLhTğ \0¹ G§5£®ø\ÏNk\å\Ñ!g\Õ-\ÈquŸ±\ÖÜˆË¸6x\è\äsQ­\Ù\Ù)ide\é\Ú\Õ×Œc\Ö ¸Šm>\'PŸm°Zi\n’³69\ä%xö¯?ûa†ÿ\0Q›PñTñZi°‹h·B<\Çß’\ZWU!Op2F\â@Á\Åv:º\Óô>\Î\é X wIe¶šYQQƒ/ú¶‰I\';w·zsã·¶³éº¤º¶—£K¹b²\İ$²\\½\ãlİ½R7*¯ \ï##œòn5¡»¯\ê2Yk6úÕ´\ì‹<\î\r\ì\áV\è¹V’2#\"1½wS\å8\ÍA{\âûß§™´)™nm„!RF-œ«,{ˆ!]Jñ\Æ\ÒA“\á+G]Y\ïõM—q¬°Â©`b•C¸\n~`1\È9À\ÓøKB\Ë\Â\Ğn»’\Êñ.ˆ¶»»œ\0\\@\ç°\îjâŒ›-i\Ë6™©\Ç$7	)\Ò.¤y.o%Fyg•\n 106\í;n5/ˆu\İUÓ¢º\Ö-[XK«Ey­\í.$E·f\\ğ+d\ÛWŒ×x\Î\r2-r\Ş\ãM\Ó¬ql#>TbHA™ùX?”zM\ë\Çq|·°K¥%ú4\Zd»­”¨\Õm§\Ù\ä8&\ì4¯©\êš/‹59ü	r4b°j\È\ßkògpc‘v¬l\Ç\n¸c\êI\ë\Îy\â—\Ş#ñ\rö¹qs\Ş|‹Y!³]b‹{¤ÛŠFI\Æa\é\\†›\âhü9¡\Û\Ø\êWqBğ\'•³Kx6DŒI\É|œOR}8»-\Ê\êï¬›‹k\Û\"¦¥4y\àm\Âó	8Qƒ†ô¡y‰\ï iZ\Úx«P\Õ\ä7W–z^•r\Ïo\"ùxa( \ã;¸\à\ämÁ\é]¶¯¡ø»T\ÒlµGŠñ#·\ÇnÊVÙ°á¶\êwg‘\Ó\"¸/\nY¼zdš\æ»ys«Ï¨È‘´zœ\Â	7Mò¹\ÈdEx\n	\æ¶/\äÓ¯cÔ£’\Êk+\è‘%’úñSÉ‰pÁ\É\ÈXø\ç4š\Ô\Ñ3 °\Ö5-&\èK®‹«y^?µ,Vr–\Ú\Ä)mÜ€\Â\ägfqÒ´\îo´\ïxaR\çWş\×ñ¯$F\ÚòúLJ\Ñ›\ÌWp\á†J›{1¬\ãšff[Y\éĞ‰ {Y\ZYo¿xF\Ğ[ï€€x\'<‘vô­\é¥Yf›\Ä[·\Úºmh[{U\èo”œ„\İ\Î7Tñ™ğŞ¼lõ9.!†iŒ‹t°•‰Ù€5]\Ùfœûó^¹ø“u‡®m¦\Õ\îl¥\İş\Ç\â³r\Ø\ãºŸ4\ì\å@Tœ+·ñ_\Ä)\âñF‘¥Î’xzK¿\ÚoDA&\ÒRm\ê6¸Â‘\ÑI\äõ®w\â²h62ı¾\ßZ³\Ò`X˜¡ŠWI¾Óµ„m+¯\ŞRx ğI,2H+œ¡\àM+á¾¦š\ÉÑ¥¾\ÓREH§Ó¤Ysü¯)—x;»À\çiû½°<{\âiu\ïª\Ø\ÛAemË½’M{\å\\H»xrªIM\äH\å¸#i¯Fğ\Ú5•»M¥Ì—\Ëx]¡š\Ò\íí¤“;q÷ˆ,qóü¥˜œ‚¼{\âf­¯\é[;%¹\Ó\ä*Y¢Ôœ\Ë>ü.\å€Ë•`UAÁ*0sœJW	;-*\ß\Ãö^,\Öf–\r?_ğıÎ\Û\Év\"ds·\æ\'\ŞF#Ÿ¥|y\ãBğÿ\0ˆuXáµ¼ˆ3»\Ã-Ëƒ¼‘¹YGrúñ^ñ\â\í-§\ÓdûÒ´wö‹ùQ[©òW\É\ë0g$\åº\0\rx¯Å»†ñÇ‰µrú\á\â.¡\"„ Ü›B€§õÿ\0=+ªš³8\ê;œ~—k\'‰%€˜\Ò¨7\0›nOc\Ív\ŞÓµŸı¦\Å4\èU´\è\Ú\æ\Ş\Ö\í1,ˆ\Î1\ÉÁf\ç\åzuıÅ‘‘!¢I…vd\é^\Ãğ\ê\Ú=C\Ãó\ê®\Ëu5›ùaW;\İ¡\ÇR\Ã<ö\Î\Ïc\Ñş[Yk\Ò]Zt\Øec,\ë\Î\Öb¸Ç§ßŸZú\Â\rã»´[y®­\'\\…¶¸’Ø˜\äL|\0:ğz\×\rğ\ím\ïü)j–öÑ¥”“’-£O&Dm¸;±Án;õ\Êşşƒwqeiæ›¨^<É„\İ›~Rr\ïü†¼$²÷ˆ¾Ë¤C%²\é\r2¹\")\í¸	\ìH\É\ëN1\éŞ¼ÆŞ¦ñ9·\ÕII%%!€2~m\êx\çk\ì=/\ÆW\ïlmõH÷JŠ\ßiI\Ó-\0=s\ëU|Sğ\Ó\Ãş7\îøÄ©\Z¬bN½{u\Ç8\ÎA\é\ÅS‚{f\âõ>\0½\Òo4”d–vbACùpÌ¼ıE2\Ù\Íİ¸™R)Ûª\È\Ñ\å”ñ\Ã½ˆÈ¯eø“\àÁzœE3\ép.\èšEó>¾\Ù\ÈÏ©\Íp\Ï—se$š…¯\Ø\æ\Ú\Ûm\×ı[n\çrg8\är¹ô¬9]\ìw*‰\Æ\ãt½q4\Óke+Gn³¿\î\â\Şc Fô|ü¬\ÈÁ\Ï5\İZkm¥47\ïesj¬m¦™„© q\Ï\Ì{w:ğs£Šñ\ëŸ\ëZŒ\Íu¦\Ë§b‘«\ÍED\Û÷— u\Ç^\â½3\áOö«Ğµx\ëK¸†EŠrC\í\ë´|\Ìr\ÃğF è“±\Í)&\î{¯ƒ¤ğßŠ,\â½Ò¯\ŞK\É¤e\á\nI;\Ï\Î:>\Õ4\Ú»Aqyn’¥\ËH\Æ •A%öƒ\êr0z\à×…Xc\ál±\ê6±½Î”I¹‘\ìˆhd(yeFk\ÕIIa_Nhú­¯4]3Y\ÑbAs%²\\\Ï|¾b’Ht\Ùù‡l\Ã&”—™iò\Z¿´Wö|’\Ã5\É3WfzV-ö¿/Šo\ì\îXº:ş5ó¡\Ò\î<Y­\Û^\Å1‘\àŠú\Â6U¤\Òu\\õ\ábVW>Ÿ\rğJM°i\á-Õ„™=@\ëš\æüW©¼óGi	 /SŠ\êu[c§Dv9\Ø<ñ^{¬Nb´¼¼nª§õ¨†Äµ\ïX\ç|cûA?†4ô\Ğl\ço8€h\Íu¿\î5ˆğ){‰Yü»˜\ã>Â¼/\à‚¬ş)üS¹}QƒÂ’ğ®zó_¢¾ğ…<\rˆ´x\Öç€\0:u8\ë¥\ZqQ[#\æ­7.‡-¢ü\nÕ¯c+‚÷/2;¹Êÿ\0e]x\Ö\ç\Ã>$]2\æ\ÚQEa…Àù\0\èp=I¯Q\Öş.G¤¼–\Ñ\Ïƒ\Æ\ì\ã\'\ØUXxw\âf§$Sˆ\Ş\å0\æR\0Qÿ\0×¡O¡R¤ºg…¬›\\\Ğ\Zg“-·\n‡œc°®\Å\n¾²œ(X®$pQÊ©ş¦½·ÁšzN­˜‡m³–\Ù!\Ïübğ\Z\éw\És\åy«\'LŒŒ\ç­v\Õı\Ö|›a\à\çñ>µ=ş²¥mS\æŠ>\æ¸/h÷kRÅ¦Ç‰‚+`b5¯ª\ï¼-o}¦8·,’ucOù\â¹]\á¹\Ô.^e‡£\çsucX©6\\©\ØóøWû ¯šŸh¸Dó:õ5\Ù\ÍgpÊŠI¾>Hë¼À\Í`\Ù=½\éË¥\Åe¾It§‚µ‹\ë&a(µ¢G–k\Z±+Â’Ÿ5À$z~5\Ç\ßøVB^cÁ\'¦kß¬ü>5kv¡n¬{{V¤¿t\ÅBˆ\ÂiG-·\×\Ûó¬\çQ=!EŸ8xG\á¤ş#×¬\ìB‰¥Pı|f¾Ø²\×!ğŸ…\Ú\Ê\çMa\åŠ;Hj`C±e\È%X„÷®K\à\ß\Â\Ô:\Å\Õ\åÄ‚\Ê\Ş\Ø4\Şa@\äc\Ğ§z\Óñ\Êjz¤òC:\Êò ¶ghb™™ƒGópr8ùB€¼œ÷ª\ëÔ¾NW©\è¾µ¹¹\Ñ\ßZ].\â\ÂöFŞ–¨ªğ¼x\Âğ¤\ãO\çŞ¼O\â6³\â­\'P¸»{a\Õ\ÜeT, F\ê~÷Î„c<Œ±9úš\Ìñ\×\í\ão„\Z¿…|?mm©Ë1\ê{—fn„$~-™9SÁÿ\0ô7‡\Â:\î7…¼fÑ¼†QUgÊ”f\ÇCŸ›é™¼\\E*rksšğOŒ¯\ïô«\ë}~	õ«©ñ¬wJ\ì\r\Ûh\0sò½†x\Î+±ñµõ´7ñiŸiÒ¾\Ó\nl${¨`P[t{FJƒ‚	Á\í*\í­4\Ï®•[‰t¥’Yb–\"¤\Ìx8;ºa\ËcŒ\È\È\é\Ğ\èğC}`ñ]É¸¬{¥šBv…£C#û¥‹½\îj¬ŒµZ3WÁZi–v¶ö–\Ëo3\\GD¹Hp\êyT\Âõ\0x\ç\"º\í?\ÃW\Ñ/K\ãu¨\Ù\Ì\Â\×7	¼¾Á¼Ÿ›\ïqz<?\áB\ïL¸¼µ\Ôfš;®\'A‰3\Øğ0NNA}+b\Å\çb\è!´\Ò`“É‰¦s\å€†”`› =³M=Ö§\ŞŠ\ç^ÓµÛ1~Ò¦K†KË‘µ‚¦™!±ü^»Ed]h#E˜Gò\ŞZZªE#2mhe!b<*®X1#ƒƒÀ¯NñTS\Ü\éw`j0Z8hD/\Z+²FH&?ÔÆ¸K\ß\rj\Z¬7Fÿ\0Q‰<Â³\Û\Ù\ÚX¤@C/<’¼^*7e\écÉ¼G\ès<<Q9µ˜Ü)•Xó `\â¦Lm=\Æy­©<-q i¯¬\ß$—p[\Ç \Úl3	%?uñ‘\ÏE \Æı•¹Ü—·>^³\Ë\ËA\"6\í=ÁÊÀer\ÜdóÀ\ëXzæ³±,Y–‘\Ãä‹”\Ä\×0\à\ÂÄ•\ÚŒ–\'·2\ëb\åş§{lb¸¾Ó¡•’\è4\È\İdòÑˆ\É1”©8`NGnür~µµ›\Ä\Z•o\Ò	\Z\ïW\Ô$f\å\Î0«™cƒ’sœ+k\Ä\ßg‹P’\İ\îşÏ¨[#AÌ³4 7Í‘\ÈØ¡\Ìx\Ï ry8\å“Qw{X®,m-¼\Û;[`\ZŸ!CN\Ü\rÄÇ“•(\É8¥¸\ïc¾ğ—…¤ÑªÇ¬jö·ñd\Ú\Ã5\ÔH·6W*\Ä00\éó$÷\Äz~™b\'k\Ë)\ãy§\íErnI\Ü\çs—V\æ\Üs…\Åx_Šõû\ÙZš\æME\ÍÀyM•±–7@¬›\\1.Ë´1%ˆ\ì5¡a\âÛ½U´óz—§\ÛI1\Û;¡’ 3û\ÇH\Ú6’}p+9ô§Š¼O ø†8$–W}D$ğ$–\ÊY\ìR5\ä“\å` 01\Õ@\í^#¡iV.ñ$WOwme¥\\JZ\r>m,ˆ\ä]\Ç>`$\äc\'ŒU}#ÇšÖ©¬\\\é+zööK9/*\È6\Üe•œa@&23\Ô\È÷«>+\ÔR;½F\énš(«iÿ\0eA\'Ë¹¶2\çhqŒş½U›\'™\"¶©¦>˜um7\ís*\é\\ùfV9de¬€‚6\årejZ5şƒ\â­\â\Ç[Ğ­\ÔgL\Ü0\İ\å© Ÿ\\ıò@\ãEz·€uûiôh¯õ˜n|Aas)–u&h#\Î\ÃcaF\âG\'€·\Ñ\ãñ·\Ä_\ë\Ş¼·–\ÂBV%\Ú\Òh;\ne@bs·ƒ\ê›X¤\î|©ñ³\Â1\İk¶¶\ÚMı\Ç\Ú`eš;)ºB\ça-\ÎA<\ãñ<W\â_\Ãy%\íî­«3\ßIk´\Ãr§öœÀ\ä{vÀü=\ã\Æ_-®­<\É/­`ñ5¬’:Hw[M¾6$£%†i\Æ9#Ò¸\rkNº\Ö4-8]\é\éo,nomU›\ÌQ–;ºŒƒø\ÇJ\Ú-\Ó]OŸ´‡öñ\êkc~ciƒ,—\n…Šªq€r3Ó¯>\Õ\Ôx_\Â7šM\Ì\ße[˜!¹Cû\Ô\à¼•İœt\Ï\èk¶\Õtû]\æ5X k‡1\æh\Æ\à\ÅY×«sƒ€k¾ğ—ƒG°»kˆŠ–\\3\0ƒ ã··¥ivÌ¶/|<ºÔ¼!\å]Ál³\ÆUn¥\â9B\íù¹\áO#òúW¤xn\Ê\ë\\º¸Š\Ö\ì#Mh\ĞÉ™#8\Ë(\ë\ÇŠ›\áì¨ˆ,\îÿ\0t±1ˆ»!#ddc 9\Ï•¼úe¼Z\Ôú–mw ˜º‘ˆ\Î\í\à®;gr:óT¡tEÎ£\á\à„Ej\èÎ¬#{{\Ä\Æ\á\Ğ\ãw®Lô\ë\ë\Öx¦\àh1…°”^=º6\è¸f‹8$8\êy¡\äZñ\ÏµûhW,–^\\©!-D6\à6\Ê[cq\È\È\ïÖº?|E\Z\ï‡\ä\Ò\î\ï²µ˜\Ób%\Ø•†2p\n’;\àûôªK ›\êp\ß¼möYä¾Š¸†xÙ¼–Qó0\\\É{õ¯\'¼\Ğ,<gº¯†eXş|\\i³®Á¼«2°û †œŒz\í©ñC\Å:‡†<Qw·gšó–w&[lòÈ¼œŒòpy\æ¡ğŠ.ü3¯&±¥\É¯¤\Ï3™ã·œ(h¦AÀu%ğ\Ã\ï‘\ÏiÔ«»hQ¾ğ\íŞŸvš—4úu\í½\Êù+¹—³¾`~^p6F>õv^\Zñ|\ZôÉ§k6kmw\æ²Ô cG#c\"B›˜q•\æºû\ÕÓ’\ç\\“Jı\Úy‹¶Wh_\ŞD\ë Á\×(3Ñ”s\×µ…b¿Ö„0JÛ­A„G.U–]\Ã\Ëp;}\á‘ş×µL•¶]÷=›Ã³[xª\Æ\â\ÛP²rLl\ï\á@RO1—\Î07›ö\à“\Ï\ß uÿ\0	4¾ø.×šE•\ÃGº!‰#ˆ `®½˜d‘\Øñƒ\Î+\Íş\ØÉ¥\ë¶s\İ\"<eÅ¾\nüÁ€\"s\èzpô\Ğ\Ñ\íu½û9<\ÛÛ¥ò$Ş¹THªıÄ…0A\ëòƒ×®i\ßSVš?.>\Û\\Og\æ\İ\Äw\ì:J÷H-ó4b\ÓÒ¸o‡ş¹\Ó\"6†X\Â\äŸZô½N+²\äºğ¹¯˜©5R«’>\ÅC\ÙĞŒ^\å]vi\Ç}\æ\ë\ÏQ\\¿t\ä‹A–&\0†S’F\rw³\èov\ép\ÊT\ç8\Îs^}ñ\ß]‡\Ã~\rº˜y›J¨\Ï#\Óñ¥{µ…£)Ë¡ó†¼l~x–ò\ê%\Ù\É\n ş\İEûTj\Ş!\Õ\î™\á\n»U”\çÿ\0\Õ_8^]I{s$Ò±grI&¬\Ø\\\Ç~q_Qì•µ\Üù	TnM\Çc\İuÿ\0ŠzŞ¿v“Gy †6\Ë1~6ÿ\0{¯Á\ïŒW7¶·Q±…6B\Ïv5òF…©[Ş«B\Ì6\ç!N\0Ï½{Ã‹\Íô2\É2I‚	8…s\Î1†‘”™ûğ\'X\Òü{\áøg“tgqÁ&½+\Åşƒ\Äúc@·\nH¯>x\êÿ\0E¼µKi\ÒGÊ¼b¾õğ\'‹?´´\È\rÌ \ÈÀd“\\\êQ¿,¶6jV\ç‰óÆ±\àû\ß^\É®\ÄBÏ±X¼µ$Zö‘l\â\Ò\Òòæ¾›ñ„,|e¥µ¥\Òz¤˜\åO­|ŸñÁÚ¿€ufYm­\Üü·(>R;V5a*Ë¹\ÕN¬k-w7ÿ\0²\Ööœ6Ø½úW\ãi\íôõò\â“,º:\Óu?\\,YF\Æ4a’\äúW\ry©½ü›¤95\É:·\Ñ1¦·,E«O¸\0\ìs…5\ê>\0QtgC’y÷¯,Ñ¬¡w\Zò\ÎkŞ¼¥‹+d\0aºñ\\œ\îö[ô©\'yKdtÚ®Ÿ\ás,ªc2›0\Ë\å\ÈT|¹\È\êGı+/À¾¹\Ôõ\É%X\ímwLó]!3\"\î-€ \0!°s‡·i{¢.¹+G\'›k.dHF\çVÁò\Æ\àx\ã$ÿ\0]-NõN—ªAe5Åµ§ö|–V\Ğ\\\ídóVAŒgz×½Ê½ËúŸ™¿i->j“jšSÏ¿W8–“M²¸\Ìb	m¨Š t\ç8\Ï4\ÏşÑ·ş1ø\É\á\Étx [»)e–\êöga,°÷J$r~f\È\à\ãk\Ä?h\ëzW\ÄMj{}&\êHı¤\â3\å‡?7\Êsõÿ\0<W¶~\Âµdñ„\Ş.ñš\Ù\ÚAX\è.\ß1\Ê\0?y¸-\Ç\0ªóÖ¶¦šŠ\æz\r§*–†ÿ\0‘÷ŠxZ\'Ô®5©”-\Åô²¾N\æ9\ã’\Ï\Ô~#GÂ¶š4Rˆ\çC$oc\Æ3óf9\È\Ü\Í\Ï=kV\êu³ğ½æ $[cÄ›T\Üñ“¿Ö¸½kÄš\Ã\ß=ó,Š/cÍœ¡Õ†\èF@\'\å9\èGZRØ™[®±ñCOøq\r\ÌZ½\ÃZ•„Ì©–PÀ#‘\Ó\æ¾/ø\Ëûuk~(\Ò\îô?\Ã,3@D \Û(1\ïÁdüÇœt¬\ïiş øİ¯\İ?Û¾Ë¡*$?h\Ü\äË´.UFy^¼{× x\àç‡¼\ri\Ñ1F®#ùƒn\Î9#¯QZjsJZ\è|\á\á‹|?g{ywwyv%Š2²K1’s°ò9ô\Çjõ„µæ­¤ê¨¾!‚5¥‰\ç’\Ïk@\Æ\âG\È¢½\ÛY0ıŠ[M>\Ç0\í-ş¬(*p1‚:qú\×\Ë?<oe\íõˆ6w#k¬Vÿ\0q\n?+Eõ2rq>\Ó\Ó|i¤üFóB\Ö\ï,$‘ã¹š\îH|¬œüÁ\0©\Æ{W7\âˆo\Ş\Âim`\Ô/oD—S\ØH·˜¿#dÿ\0‚?º5óÁ/\Ú&óEºƒI\Ô\'·[O´¥¼.\à1:ü\Ç\n¸8\Ü\'¹â¾Œ¼ñ\r¬úzCk¬\ÜZ_–1\ß)he@A%NF0	#+\'tk¤‹\ï«E\á\í>İ¥‰\ŞõdT·ŠñX3©\Ãl;²U‰³d>•À|FñÌ¦-I¾\İ{\Ğ,0ZÁpZ6\ÆH<r2rH\Ã8\É\Ì\Ú\çˆ@k´2H\Û|P\\ùaŒ–e8\Üqñ\ŞÂ¼\Ùõ\ë›:%\ßs\æ \åD V\Â\Âğ1’@\ç\æš3”’(\ê\Z\Í\ç†\ïâ´µ’-M\ä\İ¶³\Èrv|\ä`õ\ê\Ü\×)\á­Nùük7öU±Ò•w\Â\ÆuRJ\çŸNüñ»\áN\Û[\Ö\'Ku‰me•\äš(ù9\Î\Æ‰,9\Ç=\ëµ\Ö5\ß|3µûR”rv-°ò·\'==s\ï\ÍP”[Z¶\ê1cºŒ\Ûa–Kü¶À\äƒü$Ğ‘Ï§\Üx†\Îx\í÷\Ãÿ\0gn–13j6gtN3ó\0Aô\0u\çœW)§şÖ¾\Zµ1¿\êºk(_´\É˜¨¿\íóÀ\ç©«¬|@\Ò\î¢\Z¿‡o\í/£x\Ú\Ñ$aØœ(\ç€zÕµbym«:{\Íqmk-õ\Ô\Ñ}š$‚\çOµa»¶\0V‰cÁ!\Æq¼3×¡¯7\Ñõ6\Óş!\Ã\â.W²³\Ô.ö£\Û\r\Ş|jN\àÑJ•#\n\ÛpHc‘¸\×U\á\İB\æh£µû\Zt¥-\Ğn(\Æ\ÂD$\Ç\îq\Ô`|]\Ñ%±ø®³\ÜM4\Z¥\ÌV³ÁkbÁZ%¬¢\Í\Ë|£\îg©Í®\æ‰\ßc7\ãG†>\Ç\â\İgR·º‚[¶»[\ÆAûµ\Ê0\ØA72““8\ÇA\åwZ\åş\à\Ø-\ïfi¦$´*ˆ)÷±·€x\É5ôÇuh\ï\ã\Òô\ä-vªVò\æ\ïywa]G\İqÀ\Ú{’+\Ç|k\á¹Tb.Æ¬Û€ˆº¢¶\Ò\ÇnF\0\àzş\âe3²Ò °¼‚\Õõw„\ì\Ù=³8ı\æm-\Ï\Ş\ÆGô«ñ\r¶‹{+\İ\\#\Û$­•^\Ü\äó\"³üušğ[ 1°P­\Ğ|¡K\çœƒ^k\â}\"m:\æ+\Æ[K•GF%I\à‘\×Ö‡+2Tn}c®¤~=³\ßyM|\á6gˆ_n=ı¾•µş‹ñ\î\Ö\êhT_%\ÈR\Ê\n¾ß»\Ïbg\É\çĞŠñ\ß\ê\Z„\Í\Ê\Ã\æ\İY\İY²]û€·€¯_ñ–³–§SkWKXVu¹3D\åştúÇ¿P:\ÖĞ’fRağ÷\ì%–1¬\è\Ò\ækW†Fl¬bÆ¥\'˜€syª?¼¤C¤\rB\İEù\Ò\ã[¸N\Æe·ùwò¸@\èHú\Ö€mÎ¤\êñI^\Â\Î\Ë(\ËO	*\ÊÀd€G~\Ì;Š\Òñ)²\Ñ.»\È~\Äúok(`T\Ç$Ad±ñ\Ï õ\0WJwZ˜5g¡\à?|5o\âM\î#†[ˆD	ö\'IWŒ~uI1á¿…òG¶<.\×Io	x\Ä6[lâ”‹•T-¶2\ä\ÊxÀ\à‘Ø¯±®\ÃXñ}\æ{¢³\İM<hóZ\\3œ¿xÛ‹Œœ\áJ~k\ë]·\à\Õ\×m/n-’)\ï#T•.•O\ÎC«c\ïesô?N>{•|¾\ï2;o†0?Š-\Ş\Úıd´º\ÔZ\r\àcc!\Ç\ŞRIÁ\äƒ\ÔxnÁµ),5_³µ)I·œŸ\ã\Ø\Ç\á@Á\ì8\å>Y\Ì\×VšC/\Ìd¶Š_™|\ã²”8\'®z\à•ï–ºD‹¦Ox\Ú\Ê5Y®›\0¬›]w\äŒxúƒU){·µ5\ît;}\n‹¥…\'%Q˜\ãò“Ÿ^\éš\è´E À—„[6»D7\ÉE±®Xw\0\08\çŠ\Èñ¡d\Ï9xØŒmÍµ€‘‘W.\ç·\\\Ö\'Œ/\Z\ÃA\Ñ-®Šı¡[\É$Œ«*\0ªz·\ÈNp\Ï¼ùT\åm£Ğ;¥s„ÁQ\èv2\îOŸ8$z\ÖL1Em!TÀ\È\É\É\ë^\Ï\â})n!q·\nO¥x¶­µº¸ö…\à_1‡½\Ùö¸\ä£¤_·\Úú\\ò\áz\nùö¤\Õ$¿\Òü¤bQ$\ä\ÇZú7SñSiš[\Ç6¸=\ë\åßŒJ‹†\æ½\Z\ZURg›Y^‹‘ó²\Â|²\ÄqQ\Õ\é\äò\ÃG3TOS_TÏŒ’\å\ĞrH\ÈÀ«}«\Ú>\rx”I:Eq!\İk\ÅGZ\êş\êb\Ö\Ó-€\ÜsYÔŠ”B.\Ìıøe\â;e¹ŠE“(\á‰\ãò¯²¾x‰.¬ sw¹ø\r“Á¯Ë­\Ä\Íc,n“d\×\Ñ¾2Ii\å8<\'8¯&¤y‘\ßN\\¯Sõ_G\'\Ó\àtp\êTsš]WH³\Ö\ì\Ş\Úö\î!q‚®3_8ü0ø•¨K\İ# `µ\ï:g‹\í.\âdÏ¥tÒ­_gQT£(¾hñ‹öuò¬\å\Ô4ÎŠ	h3’>µóeÖ™sg X™8 ñŠı°Ô­õ8˜\Æ\Ê\àpEq>9ø/¢x½\ZA\Û\İuƒ\×%l\'2ç£·c®+•òUûÏ•|\r¡ye“¯\'ŠöM2Ä©‚ ƒƒĞŸÎ›}ğ\æ\ï\Âi±£Üƒ\"Œ‚*ÖŒ†\"\ï¾4e\áC¶3ÜÇ¥yt`ıºO¡\ïÕ©\á¤\â\ïs¬\Õõ;?øV\æóVs$Ä•O\0¯<n$ÿ\0?JòûË»\ë©ô…\ÕAß¾}F8\ÉÀ$’ù—<`ñÁ\ä\Z­ñ\Ç\Åw\Ö÷Z¡V(\äšb§º\çGNù9\ï\\\"x÷U²·h´4]©ò¾\ÏrÅœ†#œ+S–À\Ï;rH\Í{\ës\æÓ²0u¦»p—2[\Åi–`\ê\Ø “Ô±\\¨\ã \Ï\ëÀ¹¡\İ\è>€/–\î\ï~%İœ.\0\0\äğrO\0zW˜ø\ÓÇ—\ÚR\\\\jCk‰Eg¹™\0À®\â]³–“I\ïÀø\Çñx\Äj¸\ÔcÒ²4‰*nrO\Í\ç>\Ã\ÅiÈ…\ZòS\îÈ¯¥´ğ÷†l&·im5›¹\'pPyi+\å†\Î	û¹\Û\á¿\"\Äÿ\0®¬Q¼½\ÉKQ2&rsÀ<’=û×¬øoÆšlºŞyfd{=0;™AÌ¥±fV\é\Îq\Ø\à{W†x[[›\é\ïg—K#N›ŠÇ“\Éy\éO—c7;İšo}¦\èšm…„F%…V%ø.:\ÛŠ-¼G&I,±\æW\çq\Ç¯\ÕüSq\é4“m\r’£\Ğú}1T\ãÖ¥·_9nYœ0\'ò\ã½l£sŸšÇ°k8V|\Êe(»¤.ƒO\è+‚ñ±k«\ÚD$ˆ–rW\ÊD\È#©\ãëµÆŸ\Ïhİ¸n\â<ö¦\é—÷tf`²±l°v\Æ}\0«I·s\Æ|y\áiü\âñº	m£”„·”²ùoÙ\Ï\íôNñ!/|\Z\ŞDou\Èa\"I\"\\y\'\0¾\Ùü\Üd\àõ$s\Åa\ëz]·ˆ´Ë¸®aóXŸ0,Ë»h\à×“Ò°<5i\Û\î¬f¼Šú4²ó\Ù\ÈE*0Á\ÛÓ¨\ïš\ÎJ\åE´_›QûM¼‰\Å\ã$I@¹;@7%[û­\È>\çñ.›?Š¯ÿ\0³¢óH˜#a”\åCF\r\ïÏµbxoP´´)\0Ÿ1\Í0[\'\Ì’	\\òF@\àõô¯Rğ•¬ÖšÉ”‰!KeE†\Ü\Ê>|ƒ–8©\'ƒ\Ï56°\ã\ïH\ã§Ñ´ï†ºE\íı\ÂL’Â\ë&22}‡\'œW?‹t3\Åwş0v¼×¼¥ºH ‰n\Ï6‚O«ÿ\0²{w\ÄyÆ§r’\Û\Ü-¼‘\Å$˜“+¹À=09$ñÏ­|7ñb\Úò{\ÛM^A/›öt‚\ê	AB\ê0	œ\ßÚª•\ßS¦ª\Ñ.‡\Ñş#ø\ï\à‰\Zmö›ukÿ\0ş¡jR\â\ÎğF]\äf`§˜\Ó\0\ÌÍ»\0\ãœ\ŞxÀ·W?4ıGIºû=\Â\ê,ñœ*\í\nÀ£\îm\È\é\Ø`ö¯ƒ´;\Ãu¨yvñ<·7bX\ã\êxÀñ\îkôŸ\à~ƒ>™ğ•´\rm\Ô\ÚnŠb\ï>ef\ŞÀt\0€u\Æx\ëK™¹\ŞBi(4Œm#\Ä\Ñ\Æ÷\Ó\ŞÃ§iª*¬!fh”IAŒ€vF3À\éŸBøƒ¡\Ó<±I·R\Ñ]õ4\ÓŠª\à\É\0Œ®ğÊ†|\Çg>\Û\éVf\çMŞ‘I½‹1Uƒd“ó\ÚAon#¶@­\ÈZ\îÿ\0\Â\è³uc<\Ñ[Á\Ë\æm*€.\0ûŒC}\Òx\rŠ\Z\Ô\çM¥c@\Öÿ\0\ây©k1\Ë\"\Ë4›L\ÓÆ¯\æ†\ç#\Ôc=sõ­_ˆ–z|²Zß­´²E[e¸O\İ\ïv„ô>Ÿ¥6ûC¿M1 Ñ´\Ë\àñA\\:öŸÀÖ¿&™ªG–m+,ğ,S3©<¾\Î98úıx£a7tx‰õ¤\Ş\Ù\ì\ÍÅš6÷q \ÚÀ›¡\Îr}k\Öt\×Q„…Š(E\\ \ã\'Ù¯M\×<c—S¤$X\Ù:&\ç`¤dgñ\Æ@\çµsiyšQ\è‰J\Â\n9*[\Çñ\Ç\áXÌ¸ù?\Â}+\Ë[\È´V\r eGO\é]®§\áA¨\è\Z¾œ\É\"¼¶\è[\í–ôÁ\ã¥gü!Š„4£v8fn:µ\ìÚ€—Q‹‹Fu,§ÅŒøŠ´ùPœ\\‡ğÄ·r\Û%¶\ï³<\ÖşdK4a\Ò\Ú\á[!ş\Ç\×5\×|H\Ò#ñ:%š\ÚAm)‹tP\Æv\0=>ğA\Æ1øñ‡a¢®x\ÒXŒ\Ò!€¬?ú\àõô©\â\Ø\æ\Öü\×Ps}¥†#¡\'\n˜\ç±=ù­)\Õ\Ş,™\Ò\ÚHø¿]ø{©^_i’As©^³`lš	#7;³Ô¢)>¸\æ½7\áŒšS\Åw13eû4±\Ê2®|²H\éóg¯®Z\ít/]j~+“Yy´Ó¤¬J:18GñLöÀ\ì+­ºğm–›IÆ‘\È\Æfî¬[$œ3XT•­#zQm\Ø4-\Ä7†\Ä›O–+\Èaş-½}~úœş9\â½+\Ä6Í¤\ë/k3F–X¹Ue$?0\é\ÇŒ\Ù\â¹7²{oi\æfS\'\Ù\â…g\ÉC<e\0^OÇµjx÷\ÄBò\Úú\Ê\å˜n\Î\Ü\Í\å¹ıÜƒôVJ\ÉÕ´Z}Î…Is&K^»G°\Ôl­3$vò%\Ä(@¬Ñ¶>„Î¹½~\å\ïlt\Ù\Ën1[ı’LŒ¤°ı*w˜cóf\Ş¼¦ƒ\ÆIX}[\Ø\Õv\'³™\åË¬¹\ìx ş$‘ùW•)\\ô#\Ñ\âj[W\äÖ¾mñf¸¦òRX1şJöO]ƒ§L’˜¯¾i×¯\ÖÅ®I;œ\ç\0Š\ä\Â\ÅY\îc&\åex§T\Ê\æ\íUñ¯	ñ½\ã\\\Ç&#&»}[k\İ\àü¤pEy‰.|\Ò\èq^­:vg“)\Ş\'\êmrqÖ³˜`\ÖıôyLµJ\×A¾\Ô\ÒI- yQ:+ÙŒ’ZŸ?Vú•=\ÓYÎ’¡ÁSš…Ñ£r¬\n°8 ö¤­·9OOğÏ‹eÔ¤3»x\ã­}\rğ\âøG\å\ÈË‚;ƒş}«\å«E]{WÑ»an€€œgƒ\\S‚OCxÉµ©õg…ş+]Y[-½´Hz¾•ñ\Â\áa†		\Ü\Í\Ï?S_$x[Zû+»»¼\n\ÒO½¥Ô\Ûö`Ö¹¥tÂ¬‘÷\×\Âo‹sª1\î·k\Å{—\ì\îB°“\0ñ\Å~qü(ñó\Ãms –n…¸\Å{Wƒ<wqr\ÎI\à†&²‹”6:aWW¹öS\ÜZ\ê±ùgË•Xtc^iñÂ§FŒ]\Ù\Û)¤òËùô®?Cøğ\Ì!‘ğWl+\Ğu_{\Ã	€b˜a´õ\Çz\ÑN5\äµ#’t“Qz3\ç‰÷)¨ø;R:Š$}Ğ‡Î”\ÎYH\Âçœ;Jùnó\Ä\Ó\Ë\âÉ´û=\"f‚\Ú¥Ó«ykóoÁ\03\É!€\íÒ¾¿ø²b\r\ìgù\"X\îW\\€\Ì[h\Î\'¯¡¯˜¦\Ôağ?‡¾\Ùy\×ú\å\Øóª\Â\ŞH8c‹÷Cv\Ü9ùˆ\ÇZèµw+˜º>ƒ.÷jw‡û_P“dv\Í6\ÉE#÷e£8gl¦X°ô\í\à½Á\Õtù\Ş\ÒhõK—ÿ\0Fdr’œœB\åd\ë€\Ì	\ç“\Å\'„uy­o-õ}j\îú\îóRb- ó>Ha#;y\àg©\ÆAéŸ³şü¿‘N¦÷w\ÌÊ²4S9uqŒ9;˜I\Èõ\Õ\'m•¯©\ç·ó/Â¯’Mgö=BùÅ‘·\\*Fs—)½òŒ~8\í_1\Üø–{\É\å—ã ¯£ÿ\0à¢¾-ƒ\ÃşğÇ‡¢•¥šÉš\é\Õñ\×RHßµ~nø»\âtˆ¢qzˆûœ\Õ-Bz-Vñ?Šbšo50ÄŸr1\Åc\é^5¤+#68\É\Ç>õ\à—\Ş.7s$¥¤;<c\ëW ñœ3\î4…±?1Ö´1=\â]e2\é1ß•#J\ï¼?x’Y\åöÆƒ\0•]\ä\ï_6\è\Ş\'\İcv\Ên9T^9÷®\ãDñş\ÛYdPŒü\Ç\Ó8\ç­4K=3W\Öã±‚mö\äE–_ ©WK³ş\Ñ\Ò5f\Ö\â8´¸aa4NŸ7°9\Ç\Êy\ç\ë^wªø¥|A¶ŠY•³òF:ßŠõÿ\0xxyˆ¹Gk‚$<®2\ç#Õœ·)=0ğÆ§\ræ¹¥[ªiZC>DËµZ\01\ÆüòGò®ö÷\â<>!¹³É\Ñü¨\Ù\Ô\å\Ø\Ï=‡^¾•\å:F¡o¢j÷\\\\:\ØÄ¤Ç¸`\"œ?ˆ\àô$ö\Ïz\æ/¼k¨\ê\×÷vVB\àÁ$¥%\ä\Î\Ö\0\äzÿ\0õE®R—+¹ô|zõ—m\ä‚)ŒwH™!\à°\Æx5\Èx·\á\ä\Ú\Ä\ékz>\Õd¨²$\Æ-\ìªW$nş8÷\åº$ºî›«B^\Şf™\Èb|Ü®\ßî²•\êzô¯gğ¹©\êS>=\âÚº Ú²/\ï‘÷pA\Ç\Ôô¨\äw:=¶†\Ãƒ\ZV¹¶ú~J›|‘€1\Ï\'#<`şG¥}„\Ì\Úr\rFtXSr£-¤’«¬ªX„\É\ãƒ\\½–¡•\Ü\ßE£‚\Ì\åhŒ\áJòÈ·n89\r‚ys¤¾2—Åš4–öW¶\ÓDÊ²K¹B\Çn\n„O˜’s\Æ\ïQÈ­yTu\êd\æ\æ\í\Ğéµ­,O¥	ZûO3\ÛY¼e&¶eŒ¡]¸U\à‡)ƒ“‘Ğƒ\ÍyG…<Gqw\âM\Z\ÛR[K¹%3Fc\0Gpd»\æ(QO§~+±\Ó^\ïDŠL‰w¢\Û)H\Ã m\ÈŒ\ìf\É<¶o…<3eˆo/§31¼\Û\'\åmò\äßµHl€\×w=;qI\"%¹\Õ\é¬ú¿‰/\Ò\ìKlZ_.Gı\æ\ÆIğ=\Ï5›\"Áa\å\Û[Àg¹·\Ô¤ÀÁ\ã\'ŸZ·fEî•¶F¹»–é¥2QUA<óò¨<üs\ãv·\Ôm\Ä\'Êš\êFµ¸.\Çj¹ùUÁ\ïÀ#ğ÷¦ÄFö\Ú\Ò\ÎR–Ñ…-»Í´œ\îù\'¡<õ\Æ}ºU­3Ã¶:œsÚ˜$B\Åq»~™\Æ>•\Åz\Ä\ÖWw/-†)$#÷\Ê6\çŒğxb	şµ[A·†\Ò\ãP•\î|\èaX\×i@0d`/\ät÷¬dh™Ÿ®\ê–ş\Ğ\ìY–q }\Ü×¸øk{Ÿ%\Ä7\Æ\åÕ‰Lr¾Â¾Wø\×\â\Í\Z\Ål-K%\Â\Ëó`’r\İ0=ø¯`ı›|q,:DzUİ¢\Ã\ÜD\Ä\äÓ’º*œ­#\ÑõûA«i²\ËA¸\àñAş¢ª|/»qui8ó ¹Ê•Xñœğ~¼“[¶QZ\ë7–¿ò\Í\Ğ\ï\0òA«\Ïl\ç\nxŒ\"3m•ùÿ\0t\Zó\Ü\İ:ŠLô¹H4vV“\Û\è^)–\Îx\ÔÅ¸sßª¾}r?gø\âµ a…V`§8Œ¸Fpz@5¦Mj\Æ\Êú\×o™q¾!\è\ìŒN¡\è9\ëŠ\ÄmZhô˜·1[Å¼›‡8|•ßœ~TªT½\âö:v÷–\å\ßk\ÃYÒ´‹°\Â2lPNÀ¸~„‘QkšÀ¾°”\\y¢¶ˆ$§©W}\Ø\'¾8\ë\ê:b¹H.6@‰ Ş¤y›{g\ã\"’\ãPûM³#…YX\ä2œ|£øHôé¥rº\Ü\éP±Y\æ&$E\ÈP;÷\äŸ\êjH\ÜHn¢•W÷<â”¨>Õ©¡\ã-fFı\Û6\n‚2\r|\ß\ãQF¥ WùGZõOˆ:ú\ÛFÈ²†qÁ¯\×\î\ZyF$“\Ík‡–§£‰’œg\\¿c9\ØG<d\×¯)„o\ÎI®‡Q“2–¥sz\Ì\Â\à@<^”7G“Wcœ»”º\Zú·öløuk?…\Z[\ØÌ«üCÖ¾c\Ò4–\Õu›;D]\ÆI\08ô¯\Ğ?†ú\"\è²·\Ú\Ø	ºœ°QFt ¥;³\ä_\Ú\áü#zœ—\Ö1b&9`xAƒmÁ\ÏLW\é\Ä\ï	C\âmUhÃ¸k\åù>\ÙÁª2\Í­Ş´\Â\â}\ŞY˜ºŸ4N[á·„eû/Ú¤L\Ï\"½kKòmÂ£¸»\Õ\í.\Æ\Ş\Ò\Í-\áQ€1\Çz\Ü\Óü.ñ)\È¬§\Î\Î5.\0H³2s[v\Úm¹8~§ø›úR\Øh#NªğqÁ5·a¦\Şa!\È\èOAøTj\Ş.XP¶x8\Íwñ”³\Ù*Åº9\Ós\ÍbÃ§­\Ö¢.«\ÔúÖ†Ÿ±˜y6\å~3šÍ£xÉ¦z\ï\ÃMz\ç]½h®¤d‘†õ¯iµÕ¯4[9`\r\ç†8\Ü\İGù\â¾iğk\\\Şk(!f…ó·8\ÆkÔ¯/u}2\æ§f{PFIÊ¹´Jôu6<A`e\Ò/¥’Y™c\"uM\Ça|r¿¡\à\Zù\Ó\â\ÍÁÿ\0„R\Òi\Ğ\Ç	\Ûkl\èÁü‚\Í\Óq\í‚\à÷\ä{5ôˆ¤W·ˆo)k4EdU\'#× ÿ\0<\×\Ïÿ\0¼\'³§\Üiµ”s$q\Ê$l°\'#\n½0y\ÏS^¤\Õ\Ñ\ä\ÔV“Ağ—\Ã÷:\î•†\âm:\ØÃ§#®Á,XÊ…\Ìy\îz’GCú1 Á…<9ˆnX\ÛFg=HuL\çò=ºW\ÂZTğ\ê\Ê\Ş\Ş·K‘\ZK\ÆlA›$\ä‘ÀõÀ®»ö…ı ®üû+x·\Ä\Ğ\ê2j7—C§G9-™N	$p>PG¯½ûF\Ïs\â\ï\Û/\ãµ\Ï\Äojºğm¥”\Ç\Z©û‘©Âøu¯5ıM®\';g£`§§µnø\Ã\ÄZ¾¾\æ\ê\ê\İR9>b¨s€k„f*I\ri¥¨ªI½\Z.%ô«O0•\ÇCR\Û_:•Pp\êk;vE×š\Ò\Æ\'Vş&‘§M\Ø\'½‡½_Ä²8Er¬xÚ½¸4¨\àU»˜L‡\ç#\"‹\Ì÷?„\Út\ÚŞ¯\\O*¬cw˜N\0\Ç<ŸJûÀ6ov°\Í/wo$|Ê»QH\Î6\ç$\à*ùƒà­»\Î\É\å 2§\î°=E}U\à¯9Ğ¾Ù§H¶‡\ÌM¬ê¨±\î\Éc\ÈÂxú÷¬šÔ®—8ü!7\×÷q[Æ¨nt\r	8c\0ş\ÓN•\ã^!ğ¤¾\Ô\âx¡2\ßÃ˜˜\\.y\à3ƒ’88\'Šû\ÓKğ\Ì6f\é¤&\ác\Ë>Àr£“?\Zò?\ã»\Ò.\ï¬]`ºi÷±‘ƒ$£ |v\ã99;ñU\Ê+\á\ï\Ş\\\é7–Ú¬­x€¾\Z4eî¢±#{\r\Ë\êp¥\×n\â5\0\ïeÑ§—÷lzaYŸ \ç?uG#\0×™x\ÒK›\Ş?#K¾»¼\É»*\Èl‚\Ş\Î>ñ9\Ï^k£ğÿ\0†S_¥\ÍxÌŠVl~¸\Â÷$¼ö\ÌVY\ê:}­—ˆ¡¹½R\ê—WR;C\0ù$\Î\ĞJ¶GQœó\ÏLÖ§„c†\ËR·¼½Œ\Ú\Ş]¯ü`Iƒ„y	Sœ¼\àN+\Ãş\Z\Û\ê¶Úˆ²’¶[™}%Ã¡*Š\0;g~¼õæ½—\Åzeï†¼=\r¸ù\åš\á\Ò4„cl~`¶ƒ€z\ÏZMs¯Z\Û\Ù6\î-T*On¬@¼Ü°\äû\ã5 ¼]7\ÂS\ŞI3Zµü0¯—6\æd`X\ä•>˜\àÿ\0w½S¾ğ\ßög\Ãû­QG\Ú.\ØT–fc\ÃqŒ’¹Á\Ï^}*ŒöŸğŠGui$’_¼@Is/\Í8ô\'\0şC½±;Œ/yj÷V÷±›Ò¨\Ê@\Øf@p\Ù\Ï\0g\Ò\é“[\ßÁ<w+]\Ü816\ã÷Àõ\'>Ã­cø:2’E\Ø\Ïm\\d«\ÎGp@üpy«76Q…±ò•Ìe!Hcq´tôüªYH‡XO9ô\Û+•1B¬\Ò,±\ä8\Ú\Äb{\Øö¦Ş½¦‡¦_²”†B¬0\Îsƒ:­f@\ÓKl\Í\å\Ü\Çp7F\Ä\á¨\è}\ç\ë“\\7\Ç\Çm\Â\Ğ\Ö5k\éL Çœ:Œóô \n‹]—²>pø´·ş(\Zv§eˆ-˜¸P½}Ç¯ÿ\0^¶~üW\Ô\ì5\r.\Æı\å\Ú\âmŠ\İ\Õ{ƒ\éX:u¿ˆc¶½–iš]>É²‘\ÆÛ¶\çŸÖ¡‚\Ê;]\Ñõ\ròIiqpZLŒlõúV½Zpx»Z¿\Òu?W6º\Ó\Ş$BP\ä\ãH­½Gú\Â\×\\…À72‘\Ê\ç®\\—ô[\ÍO´{\àe€\ÜO.§\îñŞ»½>Fˆ&Ÿ,\Å\Ä{\Â)\ç\éŠ\à­k	\èaJ\ÌtH\àÈ’;‚\î„ğœ\r\Ç=úÿ\0\ê¬k\İZMCj\ÎZMƒs\È^\Ãô£¬+i·\Ö\Äşó`!¿º2õ?aH¯*n\Úñ]F\É.F„Q\Ğÿ\0C¸\ï\È<Ô1ÔŒûv¦0üOcY–.\İ\éN<‚Onô\Õlvô\ïK´¨õ4\á^:¿fvm\ä\ä\äœ×jwhaÁ\ãJ\íµEûc1q»k\×tñ\n)g½uÅ¥£:¤›\Õuª;ù¬G\İ\'Ò±.D¬[\İ\rvZªº·\Ê0=k\Ô\ã#~:9®\Ø;}Dw_³÷†?\á ñ¢M³tp\à~&¾\İXÅ¼I\0m\0`W‚~\Ê~û&‘&¡*a¤ù?¥}:\í\'Šóñæ™¥hÜƒO•†G¥p~8øx—±=Íªa\Ç?(\æ»ø\×\æô©«`€Á„[‰¬¢¦¬Ï4½,\Ú\İyw*U\ÇNµ\İi\è\ĞD6¥ox\Ç\Â1Ü†¹ƒ\åa’@\Ì\ér˜$ü0=\Çz\ï„Ü\Z­>FnYh\Ív\ÆG;I\îMj\Ù\é>S•b\Ğ~U6ˆ\ÂvV\İÓ½t\Ñ\é\ë<£\ËÁ=2+{˜¨š\Şğüw0`2O\'\Şx{\á\Ä7„’€\ç\ÎhvòYˆ\Æwg¨õ¯lğ„&;Eg\ÎHŒ\çc¶œ\Üò\íwÂ¯\áÉ„¶ªCILÕ¼Stú\\Bd,\ê¼\Æ+\Şõ?\r[j¶N\ì¾8¼g\Ä’\ãQkeVòÁô\Õ\É\Íw©\ÙnU¡/‡\îŸÄš`´GpP8÷ú×x†\ä.®,­“\í%Ü»¸!üDyÁ\í“\Í{¾‡¢\ÚizbZ\Ç20H<šò‹>ŸI\\B¯l¡AœCøWu\n‰û§\"›·9‡\á\Í&\ÇQ\Õd]ORi3‰PD‹\ZÕ™˜1+›ø¡\á=7Äñ_‡ZY\î\î&	qeòŠI!\Û 9#\Å]x\î{öÓ°\ÕõH¤\äF\n’J\àqùuü+Ï¾2k7¶·±\ë6\×RD\ĞH„\Ç0H9\àğ sš\îr\Ğ\àŠi\Üù«\Å>²\Ô\ì\Ò\â‰€Šñ\Ïü>»\Òb{\Ø\"-\0û\Ê z×¹ø\ãÀz‡5ˆü[\r½\Ô^Ö—\í\ä\å-¦\Ç\Ï‘\ì}ª\İ÷ˆ´h<\ËI÷#m†s\Çz¸¾S¢ITG\É\'Šµif³\Ï*D?Ú©u´‹ûZ\èÛ§—˜\ÅPÿ\0\ÏJs^. À \"8.¹\ËWUô¹Ág{B\È\Û>`:\Z»¦\Ú\İ\ÜIû˜ü\Â9\Û\ë]>›\áå‰§ù#\ÆA5\Óh÷ún‡g>\Ï/\ívJ\äzVN¥¶7T—\Ú=‹öKµ“\Å_n‘!h\Ú\Ğl;N\Ò\ë\í_xx6\Å4k‘\Ív›DñÈ›‚¸¼û¤\ç\ã_(ş\Éöğxy®®c’\İõ	\ZwºECv\ÎF{Ç‹~9\é~D´½7•\ã#c`®AÇ¿NÔ¹º\ãec¢ñ‹„\Öò\Íh|\Ø\æ)%¿,Ì‡>™Áç“ƒ\Æ9®;\Ä~.>!Qmsqº;o61§t–x\ÕÔ©˜q\È<=«\Õ|_«ø¦\ä\Çl\Æ$ •¿6\ÒW8õ+\\¦£\àıC[š\Ò;ë¦µ½H€\íGrs\È#®>´”\Ù¦\Æ/\è\Úõõ¬\Úc®d\İ\ç\0©\n!r6:dr	\îI¯>ğóø‡G\Öl\å\Öc[¯°±AR\Ê\Ñpr6H‘0zb½/R\Òo\×X¶m\Ü[]£G,i¹$ŠC•\Ø\Ä‡\nA\ã¸\Ísš\\it\Ò\É4\ÒG4On\Şj©\äœ)=p~o¼?»\Îj\\†‘\ßx2;o\ÏÔ­·\Ä\Ì\év£\å\Ã0‚„\äcñú\×i&½7Š\ÛN\Ô\îD6Z“-\Ê\âHñ†%r9\0÷‡C^gğ÷D¾ğú\ê(óL±I	Œ\îl…<üÁ»\0ªO‡Úº-\'X’}N\Ş¡›œ\"!ù\ß\Ã\ã8\àO\ëR˜\Ú;Ë\Í\rŒ:i‰¦Œ·˜\áVA\È^\Ã`cÇ°¬=KQMcV¶bÿ\0kŠ\á7\Énz\à\0¸Ûƒ\ë’=i÷—¬\éòN!ş\àG)i•MÅ†sqŸOÂ …\â\Û& \Ä\Û,V÷¶®\Ğzs9¦%¡\ÑY.Hd2”\Ş#„–~F#ò;jŞ¡%\ÄQ›nXT%°\Ù\ÆFGl}\ë/@¶’Ñ®rª¼eV7|³pHÿ\0d¨=O|Ua­ÿ\0i\İ@–\Ö\îwùŠ„pœ~½½)7d4µ\Z\×2K*\ä»l·ğIo\\t¯\nı¢~(\Ï\âı?H¶º\Û¶#g\'1<\íüñ^™ñ{\Æ\ãÀŸÊ‹}\Ó\'Ùƒ\îÁN>S·\é\Ç\å_.I¤O­\épk×L\æv\æ6\êş\éÛ¥W\Ôr\ìAğlË¤OA\ÕT[¸‚\æ6\å”`ò{õ«k®\é\é§jú–\Í*<¨¶÷(\'‘\Éµp¿ğŠ\Şù\Ğ]Q\ím’\â@T€\ç\\\àWS\å&™c;\ÉOn‰å‹µ«cõ\ëZiA®\Úÿ\0k\éi¤\í\å\ZI!œ{W\Ã\ÄrI©Ne»\Î@\æN1Â×½|\áı»‡´»T‰Z{¨\å\'Ïœ‚T»Glt\ÏZ\í¼940[Gu4Œó\İ,w*~U*zY\É\Z\ÂV>¸ñö™+¤\ZŒ0‚—i—\×=sü«‡QÁóÓ¥j|ø„4°‚\ì€V\Ñ\Ì\Å?q\Óv*\çŒ4–µÕ¤dP‘9\İ0k\Ç\ÄS\å|\Èö(Ï™X\ç\ÙrG\ÅN\Ã\å\ÆiH\àcõ\Ètöv8¥\0õ*ƒÛ­;nO­\0|\àf—Ù¬I5\Ïx¢\áM²…e\ïŠÑ±\Ô#\Ş\0<r;\Ö±p·\ìokH\íR¼F\éšeeÇ¿Nµ\Êj\Ïq}\r²ò\Ò8_Î»Iœ,Q’\ç\ïTü)¦>©ñ\Â\ÚD!’\\²‘\é]pv\Ôà«±öo\Â-t_\ÚFk2Œv®¦d\É<÷\Ï5&—f,t‹X\ãj”\â>lŒı+\ê\îh´I\Ä\'8\éƒ\Ğ\nvÂƒ U¤NGS\éI´q\Í‰\Ú#(\Ê0}k€ñ/‡şË¨‡U!O§Jô\Ø#¡f\éMyïŠ¼]ju\á¿=mO{u\Òq»%\Ò-\Ş£¯«¨\Òo\ä‚@H$\Õ\ÊZ\ë±ycs|¾¦º-ò;\æPp9\ë],ó\â\ì\Î÷JÕ‹\Ï8\nƒ\0W¤\è\Ş\'7E!„…\0œñ^[o@Š02:\n\ŞÓ¯WMu\àŒõ\Ë#Ò\ïú$\ÒK\Z©õ\ç‘[W^µ–\Û\Í\Úv¸_İ½\Ì(\Ï&\Üú×§\é¨/\"XÕ‰\çšÁ\èt\îq7šö\î$\àœYúç„¿\á+\Ğn\àŸDRÑ\àŠõ›\ëx\ÖÁ¨ûW5klMÂ¡ş6\Æ=«57&†¢§n\à¹\Òõj\Ë\ZF]‘·Æ¤\ç¯‡\âış]-\Äv½\Ä•¢Ü d\ÛOS€{w¯~øõğö}ü\êV\Ğo8\Èc\Ğ7Ó¥x¥µô†\Ï\ì\Ó;9s‡nŠÄN;p\r{ğ|\Èğ¥Wc­ø[ hş5øeq¡jö\Ğ\ê˜f¶)Hø\ÈUE\á}}k\äoß³İŸ‡\'ºL[˜-7eaG\0çkê\Z¢xo\Äz–‡wrª·­˜wÇ“ü\éÒµ~\'hpjñ\Ü\Ë,{K!\Ü\çÏµl\Õ\âš9Y´\ÏÊ\áÌ¾ahm\äR\ÌzŠ©€\ç¶1\Ë‰@9 ğß}q\â?C$Ò¨C´1RXq\îMq7`h\Æ\Ö#i1şA¬ı«Z3gª<OR¶Öµ«¬E« Qƒ´`\ã\ë]€~\n\Éy$\Z\ì‰\ä\ÄG—\Z120\ì:W¡i^…\\°IÁ\0^•\İh6Ú˜¥\Â\í ¾„9ÿ\0=\é{G²‚İ²mgP½²ğ\ëC£\É&”¶\Ñ\ìUVû\ÃóÖ¾5ñ_‹u›½nº¹™ã·›ıÓq_W|Cñ]½…˜(v%qœ|İ¹ô\ã\èŸÊ·\ÖM\âz\î\ì®\ÖIl`Ó‘\ëŸOj\Ò«9§\ÙKüñ\Ü\Z¨K\r^öXQ‰&\Ã0±•l\éøW§k–K<)\ß\Úntô’KiVS‡\ä‚ÇŸB9\ï^\rğ\çHJµ·¹ŠBn‘Â‚\ã\îv\Çğœş•\éQ\ê§QV’\äŠ\áDVLCÔ°lg¡?˜ô¨\æ\èKB\ê\ëñ-ô÷2®WË’x62…À\Ï^O?`\éªÑ¤2\É.LM€\ä\äm‹s\Ç\ã\Írş(\Ô\'¸¼0™%Ú­™J¹¸[ŸÇ\æº\êV\Ò\èvòHVirVGU\Û<®G;±¹¸¥¸ZÈ“\Ãş4š\Ë\Äö3\Å$¶7R2YI$ó\Ét\äxÏ½uZV§\é-¾D3E\Z•–¼\rÍœlc?Jós\æGBö\Åo”\n\0\ç\ÕFsÚ¯x[K’\êib¼Ë›©€–@J®\0P\0#Œü\Ä~~µw°¬z^—ú!‚x^\"\ì\ä·\ß*3€\îN	ö\ĞkVö¶v\rge9k•Da!BE\ÎI¡s\ï\í\\Ç†\á¼Ó¯\'‘¦ûLPŸ5·p`Ÿ]¤gŸ­7X\Û\êit[j˜s:[q|ª`w\É>ıè¾‚KS_P\Õ~\Åic*°²”——³e\áŒ`p=É­\ß\Ë=\å¾\Å1¬…\äò\Ü#U ƒœ\ç\Ğg\Ø\×5kn|Hn\ÌAd†\0v\"}\á’pI\ëŸs\\¯Å‰Kğÿ\0\Âg³‘_T¸·ùš#‚‰\Îq\ÇN>´µ“+Hœ\í	\â\Ûÿ\0x\éV\Ó*[)1´›s\ÊõÏ©\ä+FÔ¬¬|;{<H\'’\Ü\î!\á;\älzg¡\í^}¢x¢K©\Ìúœ²\Íkóª;².z;Š\Óğ]\ß\Ú,5«_´yºj·\åS,\Ê3·ô\ç®‹YXÍ³cMø“sÈµÕ­¦ŠRsŒ¦N\ã\ÔS\ÒüE§Ikqy=Õ»\ËòH\\„\Û\Ô\äµZ$[™­å¹Š\Ş\î‹\Zÿ\02\ç°úU\İC6—\"Oeµ®ğ#¶ÿ\0Z`WñDË«]\Ù\Ü\"±Û•Upƒ\Ü{×¡øW\Å–z\ÄD\Ñy\0‹pİÜ“\Ã5À]<¾×®­\îS\í,XC÷q]›™µ\İ<¼6Ÿ<Y–”‘\ß#½ G£ø\'\Åm\àÿ\0I¨\Æÿ\0iÒ¯tğ¢ñ#+\èOø²\ß\â/‡\î`Ù¶K4Ü®:•\í_\"x7\ÅZ…¬óGö/µÀ¿/–\é‚¯pøU«\Ø\éú\ä‹	‘<õ%ºœ\ìö®:‘½\Ñ\ßJVw:\Ç_/;³ôõ¤\ÛÀ\İ\Å_\Õ\íE­\Ùòÿ\0\Õ9\È•L`ö\Ï\ã5gfz\É\ßaŠ8©„C×‘\ßŞ‘A\È\Ç\ãS¢qƒ\Ğ\Ğ3\ã\ëFh­‹±\Î8\ÅixwÁş,•\rºl\Î?ZÇ´VH\İ1–ƒ_G|\rµŠ?	O\r\ÜA%—QÊŸZ\ìq\æ“BöœG{ğ\ïöJğ\Û\é6“]8“P|\'øù\Íp>5ı™\íüñV\ÛY\Ó&ûM•\Ê\ä„\ä#\Ïò¯\\\Ñ<c6‘¢\İ\é73*\İ\"œ\Ü\Çù\â¤\Ò>%\Ø_k\Ó\Ø<JĞ˜@Ry!ñ\Éü\Í[§e¡\Ï\í´‘ƒrv(Oî¸5P\àjmQ–;¹Ÿ—q\Ç\çTE\Ç<•\Ät\Ü\ĞL\ÜgÖ¥Š=\Çß½QY½:f®\ÛÎ¨…\É\n\0\É5D7s7Æš\âhº4\ÌX)+\ë_x¯\ÆS\Üø…\î#rQ_\0Ú½O\ãÇYƒ\Ù\Ã\'\Ş\È<\çŠù\Â\æyv»2’\ÍÒº\éFË™œ“|\Î\ÇÒŸµ¨üCi÷;€Á\ëz‚\ÍAR:õ¯Š|\ã©|?ª’M¨N95ôï…¼S©M\Ê\à€kYF\È\ã\ÚG¶\é—\È~b\ç¢·q,\é <ƒÔ+ƒÒ¯DÁp\Üz†\ë]=¬\0¦Y\Â÷®9#²=s\Ã~$ Œ,œzõ\Ïj\Ç–<\' W\ËV\Z€‚t‰Xõ\è+\Ùô]P\Ùih\Ë&•sÉ®yÇ©\×	_C\Ö\îu½ºX\"m\Å\Î1\í\ëWl´Æ‹R„¸\É\Ï\È|?™®e’\îS¼(\â½H\Ô#¾šY\Èp;\×<cy+šNN1vC<}\á»_\èR\ØN€±L«wµ|!ñ\Ãw¿º·¹WH`6Œ`óŠûòú\åC³\Æ+È¾#øLñ<2Au\n³Ÿ\ãQ\ÍzŠ§+<\ÕNñ±ñ\r\î¬\ĞIi\â[_1õ=ˆ\ÔwÀ\0\ã=N?\nô\â?<gs4ñÅ©¬jó[†\'=Hı}\rsÿ\0¾j>Ô¦¹\Òšİ¾f\ß÷p9Á¯KıX7¶“5£H\ì\Ó\Û/ñô\ä\Ì\×\\+\'¡\É*n,ô¯X¼3\å£Çšşaô\ç&¸‹\ë(R@\Û>H\Ã\0Ls\éZSø\à\ß\\%Ì’2‚20:Ø¬½gUòmMÄŒ1\Ï~ÿ\09;‚l‚\Ş\Ë÷®\è2H-³±\àtªú¦µa i\Ïy:\Ç1+³û\Í\ÎG\ÓùW\âOŠ+¡Z•†÷8À\nx\0Ÿğ&¼g_\Õõoj†i\'wFrn@$~t\ãƒ“fŸ‹<xş-¿vªñZ©\Ëo÷\ÇÇ¾T~b®xkÂ­ ¶\êD$c$’FGÓ‘\Ådx[C[k\Øe0—òˆ\ï´úñù×¥\èÒ‹%¿·T\ÉòK	_¸\á¹÷\ç•T¥mš7´{/\ì–rd•m#p€1\äc!ü\ëQ\ê:ğ[k›µFT¸l² û\ß\áÀ¦j\Z “L2\Âû7\Æ7‚2Yˆ<úÿ\0A\éXjSı˜d€EF y\äŸóÖ²*\Æ\å\æ\Ø\âiÄµü\Ï3©\Îq\È=ºWA\r\Ì\Zš“)2™N\å—şyı®ü)š¢,ö\Å#O066?Nƒ ?—\éN’\Æ8ô+`±ù­#Û‚`ò=ù\Ï>\â®\àÑ¡\à›\í7\\\Õ#µi”\Ë.\âò\ËüY=8\Ï?J\îô˜m´\ÖuE%oQ\×$\ÉÁ$uû\ß_–¼²K\Ó\î C‘¶N$±Á“\Ï\\*\ë|?zĞ¬2F\Å\Ó`\ß(9\Æ\0v\ãñõW%£¥¹½Q}\æ¼K\ç	µF\å {g<ñÚ³õ\Ş¦C;1™\ÕAùé¸œó\×ò§jšÅ§†´÷ºV‰v_\å\ËI®\0¯Ò¼Vÿ\0â®¡­µô\â4‚\Ú\0°ùZW\èç‘’4\Òr\Ò=Æ¿ ğ¦€4.Q\r\İÛ²¼Ü‚§ŒW…\\x†I¯£º\Ôn¢»\åV8¥e?ˆı*­ª‹û[»¼†Bß½r»\ç=?\Z‰¢Š\á\à¼øÓ‚ò¶Xr?‡ ú\n\èŒlŒ›\êik:>¢dŠ\Ótq\î2‹’[¹°ç¡®ƒÀQ\Ëof Š\Ç’’\Ì\Ê9\à\àóY\Z}¦Ÿöm@jÑ›8‡™\ZE6oC¿J~‹=Í•”\'L&’y326q‘\Î*„tV-5[ˆ\Ğ\Ço&\í°Ä‘†dô8=óŞ®E\ákı_GšKò÷[X1$~‹ ª]\Û\êwµ™XG;,›\Õ\0\ãv{ó\Æ+\Ğmµ\Ù/…\İ\Ê&só\'“#s\ä€z}\0gKf<C µŠ\çù)¶\æ\å\Õq\Ğ56\Î	ü+vaˆ¦¡©¢^\â1ºA\ïW`.ö©s\r\ÄSÁf\à‰™HY#~dğ*¤V·V¾#¸¹X®\à`­-¼£\\\ã4o„¼C¨\éúÁ{™\ã…&\ã)\èzsŞ»¯	k£Ãš·Ÿox·\Ó=\È\"py®÷U¸¸Ğš‚¸G\İ.FğŞµ½¿™m4\é\â[;Ù_rÒ±’7ƒ>Ó¿¿\Z•œ\Ñ,}j¤g*ùNz\æ²>\Z^Nş	\Z}\ìE.\áû²0\çnzÖ¼iŒ“\êMxõ•¦{¥xÜ•O8ƒÓµn\àÿ\0*¯E\ØN*\î\í¡T~5\É\Í\Í+!¶\Û\Ğø£U¾š;ÔŠ\Ú2\ÆFÚ»y$šú“ÀzE\î…\à»mFñ\Õdµ‡{Z“ó?\çŸşFº¼~\"ñ\0H´\ÛTf‹\Ì\è\ì+øñºC\ây\ÚO³Ø¬d$\Â\ëÒ½ˆFú£š¬úOŒü^šŒ6†\ÂByO™&\ì<~€5ùÿ\0¶ŒšIa?|w×\Ùø\Ìj6DÉ¹-0=NzW²ü\×\í/õ\å‚=½”¿\\bOv&ıù#\Ù.5M\Ìs\ïÖ¡[}\ê‹\Íóy­Oceu¨H1³g¡õ¯1œ‹\é8c\ÔY\Ş2ñ*\è:+¶ğ\ÒI\ïZ³h\Z“ó][¼jw‘^\rñ[\Ä7:¥\ãZA¹\ÕNü+H\Æ\ì\ÆN\È\áoc›\ÅÚ¤·7\ç ‰\â\r*tdxqÒºKO:\ÊİRõÈ¬\Ë\Õ3‡yw\ëuw/\"\ã£\æxçˆ¢’\Ş]\Èv÷=+\Ñşøõ¡™m.nÁÀÉ®W\Äv\È\Î\êÉ®.‰4mA\'Š\àó^„m8ò}h´ù¿¼3\â4\Â\"°\ê=+¼±\×C.tõ¯˜şx²-GK‰\Ş\\¸Q^±c\âMªœZ\àœyXFG¬\Ø\ŞºÍš\ïmµiŒQ+>\Õ\ã5\âş\Ö\Û†s\Ûÿ\0¯]T:\ä\ÒO[#<\Ö\r]\Æv>¬ğ®³™\áµù†í¾µ\ÔxoWØ»Qò[’kÄ´?+XA\Ü‚kĞ¼%t^|\ï\ã®3\Ísò{\È\ìr÷OB\ÔoC–É®3RI¦pW†nA5¥¨\ím‡\ëE¤O3y›A\n:7\Ö\Ê7—*0\æ\å38Ÿ\é\"\çOÃ£>x\'¶+\æÿ\0x+›©\äXöO,+\é\Ï\Z\ë°C\å\n\ìFµxÇ‰¼GebIy\"\àe•\Øu¯V4Uµ<™\ÕmŸ6k:%Àe•[?®s\×÷3\Ä\ìò\Æ\Í\Æ\îy5\éş-Õ¬\ï\äyr±Ç»\ï%y_ŒüY¥é±·i½F1ƒŸÒ“§mŒ\Ô\Û<\×\Ä\Ğ\é\Ó\Ï 0\n\Ù8\ï\É8ÿ\0>•‹öK9!¸$aX·x;ûõ¬¿xóGŠ\ì;ù„\ç!^õ\Î\\x\Ò\ÂfÁbC¨\ÚyÇ©¦©\Ê\Ú\æz›}k`\æd>`\0\ã\×\äş•R\ë\Äfå Š&\Â•Š[$óô® \ë\ÖöĞ—’\ì|\ÙÂ©\Î+%üp±r¡ˆ#\0ÿ\0şº91ó£\Õ!\×\ŞBª\ãs)PÀ\İ*;û\ç¿0PacS\ÂúÖ¼ÿ\0Kñı·\ï¼\Ò\ä–\Âõ?\ç\İC\âqi[B¸exr=ût\Í\nœ¯°s#\Ò,w\İG\Ü\Ê\Ñ,D\ã#!FoQ],\Ş/¶\Óe†\ÊFGt,<1=°ON\Çñ¯\çñş±uÇ\äBIl*õüqT\äÔ¯/u6½iZf:wÿ\0dg\ØV\Éõ%\Íñ©k\Éx\É,‹j7³CAõüi\íñ?Ağ\Â\Ü\Úšo%FØ¢M\Øn§’q’q\Íxu\î¨\Ñ\Çlcr]r0\Ü¹çš\í\å¼r#>c¸%·d\ã\×Öš¥Ü—3¤ñ\Ä-GÅ—\Ò\\\ÛÁ\ä\Ç»\ÆP\ÈX*üİ†N\ã\ĞzW-\á\è.5Ÿ%g6‘|»\Ü\äl\ëÒ·\ìeº\Åmc±Yf¸X\ã“`”/\\~•z-\"\ĞjS!¹s\n\Â\rİ³ƒÓ¸9ü«ed¬ˆf}\î—e¢º5Ä¯.ğ1\É÷ˆ#©Àô¦\Ö\î\Å\à/lM³¹\ÂEŒ¯¦O¿ZÒº\ÔmlÎ©ö¿kº†R7Ê…™xÂ€§09¥jr41ˆ%„,m<†W\Â\çnTp3Ÿñ¦!m¼.°\Ù\Ën“€\×0´®gŒ‘\Ì9w­9&š\ê\Î+I\"eµ\Óc\ÄwV\Ğl2g©\Ïn¼W?¹ª\Ç\Ù\ê7Œme1ˆ\È\ç ñ»¨\á]MÇ‚\ïô‹u\î\â+{¨U\Ú-\ÙI¨+»\ß\ÛÖ†2(\Ò[„¸šóna\ÃiRÀ?\Å\Ï5&Ÿ<š\å«J¶»m\íØ¨Vs÷@$´ä¿³½\Ñ4\Í9mZk­8?”“\áI\É\éúf¹©F¡d.¡½Uµ’P\r¨`\àœR¸Î³I¹´¼•!µšk@-·²<¢\îOz]B\íbD3ıœ…d–E$\äÿ\0	>½ëŸ°\ÑÄ«=\ËjKöU·\ß N\ÄtQõ5³g5Õ¥¼p\Ä\Ê\Å\ã8U!°©õ¤2+´\r>Á--Ìº¼d«7™Ã¯·\ãZ\íw¯{!û6¡j\ë½$l†\\õ£\è2\êWb;©\Ş=BSû „¨:;U½6\Òdñ¬¤È­ûµ|apL#¡õg\Ã.³=ŞŸt\É$\á0²\Ä88®°J‚\ç,~µ\â\0Lv\Z¥Í¢/˜\Ä\îNx>†½–+„7M\È$sÖ¼\\Z\Ôô!>X\ZğH#CØŸÒ¤Œ–S“\×Òª–S°©\ã=Oj!\ï\ï\ÍsS‡\"±\Õ\rU\Îö•V\Ôi\ZCù\ZPM\ß\'¯¶+\âŸjn`°O´°\\U\"¿Sş+şÏ–ò\è3=µÈ¸‘##Àİjøo\â\ì\ëp5(\î2‘Á`¸?{4§pW„\ïsÁ<0n/\î-´\Ô\áPXzœ\×\ÑôK\í?\Æ­m&\â˜Q´\àŒu®[\Ã	/4»¨g\n\rÅ¼ ä£5ö\ßÀ\ìÙ®cşÑ±íŠ›|\Â<Vu\ï%¡Xi(\Ê\ÌÀ\Ó~\ß\Ï\Z\Ïp\ë\Z¼ƒ\Ïk}~Ï¥\ÃP¥G.Jö?øD_©»´%#U*Ttö¯ñ·‡\æ\Ó4\ã\É“’\Äô\Ç£Ñ“²1ücñb#\Z\ÙDc¸Œ\rÇ·\Ğ×‘k\Ş†o7R·D‰,¸\àW)\ã]}mu¶¶²GxTe›sZÿ\0uK½^\Ú{Y³±ºo\äZT‹Pl\Â\æš†#Ô¢ mö*=GÀpÁc.\ìÁ=:W£húH\Òl±\Ã9\ç¾)ñ\Ùgtl•`v¯%T›v‹>‰Q‚Šr>|ñ\æö;©1\é^a{n÷wIygv\Ú\0¯aø…©A}1(ÀÁ5ğ»Á\'Ä0·`7Â¯œZ÷(Tj\Ò<,]8©r\Ä\ï¼ğúóAğ\â^6äŒ =:\×Y¦j\àVn•{¦¡\á8\á†\Î$•9u¯õ\ïF\Õ\Z&VÁn\reó½N)\Ó\å\Øõ]\Ö4\Úr{\n\ì4\rB]Zö ÿ\0*;ó^?¦Hbˆlûú\×q\ámqbuşnµ-t3N\ÇÑš\Ê Œ–\Üµz…¼L†p@Ö¼K\Â\Z±–6,\Ùù{\×m\á;˜\Åø9\nsùÔ¸\ßS¡OKõg›´óY‡©úW•üø\ßôw±\Ñ\ï 7»?y–$ÊµüE\â\Ù4\í!¼©Wv1ŒcŠù;\â;&§ªMsu­p\ä\á•IÇ \Èÿ\0\n˜\ÎÓ².p¼.\Ï/ñ·Å¯øº\ìCo­MŒ—B\é\Íy&·\â-^6ÿ\0M\Öd‰Tı\Ñp\ä6{·W¢j·3Á¤\\¬\â+w.\Ø`YG\Ğ\àŸ¦kÃµoˆZm\ë\İY±–+wpñ|¤ô\Çv_¨¯Vœ\Ôó\'$‹sZk·—^tZ¤–VNp»e-¸r¥ˆ—©›\Â\Æİ™¯D‹\Ä\ÆQ¸ñƒ Ÿ`jm?\Ãv\Ğhª_lŠ\ÈI¶	&¹;O\'h\\‘\Ø\äwªšpÄ¥Z\Î§¹a\Âñ\ĞıÑ´t\Ï\á]\n\';g(–rI4\É\"ù\×·2HöÁş•M\ì\Ìş|¬F02¬¤ »‹ki\Èm µ’n<\Ö`\Íô\0dŸ_j©.‡s³\Çr&\Ø7\ï®P\å»ıI«¹78l‚ \Æ^ü©·ûı*T\Ò%–7|·\ïm^•\×/†.õKx¯c€N°\áL¨†nÀ\ã?\ç™©,²\İm®#ş¹Ó³Q\Ç\ëN\ìF\ZÛ²I\ZIÂ… ¯¹­MÎ¶—W\îv‡=¶ñšÙ†=\Z\Ú\ÕU®\Ä\Ì\ãpm¯¹Xñƒ‘Çœš\ßÓ´)/\ì–]&õu+¨úÁ5ÀŒ«7m\î ¤\Â\ç4 ÷+k\Ä\\²mh‘÷Õ¡6‰©¯\Ù\í#¶\ÜT$9\äû1O\Z5í–ªğ\Ü,‘\Ü\È\ç\Íh[ıZ\É\ê@ükWQğµ´\Ú`±]BşIy¤v\n¡{=Iõ\â˜n\í–\×JR\ÚrÌ¬^I‹H¸=N)¡V±Ê‘\ß4¿2¥¸\Â\äô°­\éu¶³Kf³¶¾G€\ÆDa»A>¹\Ò\êZ·‡ô é«‡–ı\01´Qd#œ‘Ó½H/\íDÖ±\Ú\Ü\ì\È\áid„«C\ÔúgV¬­R\ÒF³\Óbš\æ\Û! 9\rÀ$ıH\êk>=B\ÃÄš‡\Ù\îô;¹-\àR\Î\Ğ\Î”øe<82\ëÇ¶všüW~u\ìE˜-´\èC¨\n3\Ç\ä)XeR\Òk\é%\Ôd13¤Å§x†\Åv\ÎN2p•`j\ZÍ®ª¨\Ğ\Ûjdf˜©óFyô\ÇÖ»\r\"\ëQ\×\ÅòYO\r´\æCgp1¸0\åc\É<\ã=ûV¸¶úl\Ğ\ÛEı§©M1\ßoœ À\Â\ÜúœbšS\ëVnÖºcO¨:†\Ô*4(«Ô’9s\×Ö·ü+i¬jº–&\Î\Ş[›VE\ì8\ÉP¹\çN\Õ\Éé·šı\äI§\Ëg,Rû4/‡|ƒ\Ã\Ğ\0:\ÔZu®©¢\ß;\Ï%¥õ³…\Ø;7™\'Àdz\çšÑ¿©¥ójy\Õn\Ò\Òş_İ‘yENI\ÇaV^\Ú\Òm1-\Òú\ÚX¢Gn’F\çÿ\0\Ëğ¤\Ğ\î$Ğ­#U»ûB˜\Û),xh\ÜsÔ=«J\×\ç—H\Ô\înŠı…fm»#R\Ó6x\Æ\0R)\ZL³Mıš±En—p\á˜\ç2\é\ï\Å;O¹°¶sPHò;\ìo8\á•Gñ\n\ÏN-¢»ûM\Ô7^_œcü\ç=²ûVv‘«™$¹¾ M€L¤z;s\ëH†ı\Åæ£¤j\Şu¨ól¢$4ˆ›Ê‚8«GI·µñE\ÛI\ç”#lÌ&7}+Ã¾)61@×˜s#\áÑ£Án\Ùô©“I[Ë™5++uµ‘d\n\ÛC§jE£\ÔşjC\Ã^&X-eb›öm\ê\Ğ×¯%\ì²\ê\ÒÜ¹>•\å¾\Æ\å,–\âûv\âzÿ\0*õˆ@ş\Ô;qG\áf	û­p³V:ûF\"ıj\ä2`‚?\n\ÎFÛ€§°\íSG\'NA”v=¢>\Ú\×|	ö™B\Ë<~F\ÂF~Sô®C]ø)/‹¢Š4\Ó#\èv	”€O\×\ÔWe¦]Í©L’M+\Ò\ÊWu\á\ÍVho.l\Ô\'‘\ZU\ÇC]\ê˜\Êsj=Ïš\íÿ\0b«‰\å]J¨„ü®‡ŸÆ»Möfÿ\0„`\Âğ72ü¬Ş¢½sWñ\ä†(Ãˆ\ÕÙ•¶t­³ª\á¥y\Ç\ß9­.¤ùQ\Ëgó´+ñ„/-¼940\Å\"JXí¯‡>>øƒZğ¼˜\å¹BO\nkõ6W\Ü\ÅJ©\Ç\"¸¿|,ğ¯‹-emOF¶Á\Ünj½—.Ãi\î´~ø«\Æz½\Å\êA\åRSó;¿\é^Ÿğ\Ù\î,-¢f-&Fwõú1\ã?\Ùá–·«}ª}¤¡@ıÔ›G\åŠ\áO\ìõ\àı\"\ÏP[[{ˆ\Öı\ØóF\é\\\Õ\ï(\Ù†\nœ®õ>a\Ô|\\¶gqÁƒŞ¼\ÇÚª£–q…•r¯³u\Õ-®\Ét¥X²P1\Ïûµ\å\Z¾	øn\Ú\Í-\"IQ—R$\Æz\í®*tÕ”ñ/\áG\Ä:\Ú\Ü\İNF\Ö·\Ë×šú[ökğ2\é¶K}p§w\ŞŠ\ï|-û<xGQğ´]\É2Ã¼9”dİ¯i·øs£h?l®l\ã–9v‘\ãŸÒ»ª\'\Ëdy.\\Ò»0\áNAú\Zóÿ\0ˆ~K\Ø\ÚxTo‚½E´h\Ù\\h=GøVl\ÖQH…¹\ÇušIs#\æ‰V[Gò\Ê\à¯­\nb“ \Î5\ßüBğ–Ÿ‚TF\ÎA*zş•\ÃCf–sFcg\ç\Ô\×^û{V=KE¾’\Ú\Ú6\\\ã3Ï½z7‡.\Ç\0œÂ¼—O\Ë*e f»-+\Ä×še¤I8-½—\æ\ã·ZoE¡PZ\êhøó\Çrø~p/NûXŒ²6\æ ú¥xŸ‹üC¦ø‡U¹—M¸’	Ê²A¸•\È•üzô\Şx“\Äó\ê—S\Ãski\"\Ïl\ÒJLg.F\ìgŸjù—â¦•†´·YV\îú\ËÌ’S+¹Um«´=z\nt©!Õ¨Ù©\â}Fò\ê\Â\æ\æ(\åXR#¯¡™€\èT`±\ãy¯7“\áí¡`·O§¸Y\Z(ÀPdp\0\0¨\å@\'’rx¯@ğ®‰c\Ã(o\Z5ÉŒJòK+¶ö;y#v3\î1XúÆ‹gj#¾XC\\\Ï\"\Ü$ùŠ;n\Î\ÜôúW¥MYXóç®§Ã­x¾\Æ=N6¼Ò­.F¶#j²\ç$cú\Ò\é/x\"k›46³­\Ë>KV\Ïø\n\Ûø\ÏiµÆ\Ğ\æ-ñ1`œs\é\Ğ}Gğ¯Ãº~«¬X¥\ì\ê\'·ó\Ş9	\Ã0®;`\n\êVµ\Ù\ÎôĞ¹\àÿ\0Ks“^YıªfŒ1Ÿ÷½3]A\äõ ö®šú+½E­\à½\Ó\ítøÉ¥¸–Vó1ü(	\ÇN™¯9ñõ\ÇöwO\Ø#M<£)Vµ\Èz‚½—\Æ7¯¦|;C\Z¤³\İÛ‚÷\rò\"•\'§?¥f\Ö\Í\r´\æ+{·ÒŒv¶\ì\åA–\Î\Ã\î\ä©<}q\ïV¤ğ\r\ì3\Û\\i¶óKg*Hò[\ŞÎ±I!\è\Ûq\É#“\Æj§ü\'c\æi·™“\í\Èv–AbA\ÆzZ\Ğø‘c‰z,\ái$Hc7\äs½\ØM´dŒq€?:mXDZU®w2(\î-\ÉfX¥BŒnc¸\ä‡¸=qUµ\rÁult\ØDh¸‘\ï–EÊ¸3¸`^‹\İT¼6ñGqm˜»‰$€wÇ°\ÇZ¬š“ø“D®¢…¬±\Í\nB»Q\Ï\Ë\È#<\àæ•µ°\\\Ï\Â\ï¦Ş¤–w\ÏfşAšoµ\äu8QŒ€ŒŒç¸ª)¬\êgWe\ÓR\ïUŒ–)%Qİ‚P”\0~ø5.ª=ÿ\0ü%\×\Å¹…cKQ\æcpxõ«\Şšxü)£\Ì.$-7˜Ì­‚ ‚\0¼u\ëLy\Ì\Z¾º\"»\Òb\Ó!´…L\ĞYÀ\Í,a¾¤’rG$\Õ\ÉüY\à\ï\ì›;XtË­N\ê\Şi‚¼±…tópXv²\äq\ë[\Ş··½\×u©¯-ã½š\Ö!p’Mœ–+¸†\0€TØªúÆ‰i²\Îö¾\È\ÒH“¡û˜\ã9<n8æ•5\ï\njP]\é»n\Z\â5Õ’.\ç\É²õ=€ú\ÕıJ\ê\×[8-tù…«(-\ç‡BÇ†;¹\Ê\ätúÔºM\å\Ü\×\Ò\Í%\ä\îğ:\0w»,rN_¦+_Ö®¬u\ÉLoû\Ü\í\ï\0ó\×\Û&\ÊcÄ¶\Ó]µ¼0$±ÀW ~ğ¹\è§\Ï\Ô\Õ]\'Tº\ÑP\ê±ÀÙ†R#I…qÕ\Şüœ\ä\İ*…\äQ\é£U–\Ú5Šdt‘dO§§ZuŒ¥–\Ö)‡\ÚD —i‰,r=\n,Û½OûFø\êsÜ›¥s™Lq•\ØOg\Ò\è&\Ú\ã\Ä7\Ç\r\ÄV…AËºRy\äŸÖ¦¸Ö\à–··Š0\Ë#B20y<òk3Á×³_ø‚a<†O.2\ês‚)­­\\[¶¯”IË…’?.$³O¿j\Õ\Ğt²š\\\rö¥±ıôxƒ’\0\ïZ\Ğğ\æ·-\ëë–²C\0‹`™v¡ÜŒF	9j…½Ì·š­¦\ï¶Ü–c°\0s\ÇøQ\Ò\ÃDÚ³jZ¦¹s4—Ágrmp`W\á’\ïOq\è2J‡÷`‘´¯f\ã9\â³\åT¾Šk™#Uš\ß1«&F\à¿©\Ïz»o¨\ÜYX\Í>ø\î^1 “8\é\éRR0uôÔ¼;\åHd³º¶!‡i\ë¢\Ğ^eÑ£.cµ‰Gl‡­Eun–zÁ‹!d,¬‡•#\éZ:Œ)s¥F\î£r\Æ\Æ\0¥\äR=À\Úkiú­µ\Ä$\\\Ø\Ïó1Œı\ÏA^ñlQ®°™A¯ş\Z_\ËnR\Ùœ)$dõ¯£-­RT‘r[`\ês•\æb\à¥ö;(«\ÊÆ¨—9\Ç>•,r\ã9\Ç|\Öpv\Üy\éS#óÚ¼ó\ÔkCÿ\Ù',NULL,4,NULL,3261898502,'2017-05-25 15:00:02');
/*!40000 ALTER TABLE `qa_blobs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `qa_cache`
--

DROP TABLE IF EXISTS `qa_cache`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `qa_cache` (
  `type` char(8) CHARACTER SET ascii NOT NULL,
  `cacheid` bigint(20) unsigned NOT NULL DEFAULT '0',
  `content` mediumblob NOT NULL,
  `created` datetime NOT NULL,
  `lastread` datetime NOT NULL,
  PRIMARY KEY (`type`,`cacheid`),
  KEY `lastread` (`lastread`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `qa_cache`
--

LOCK TABLES `qa_cache` WRITE;
/*!40000 ALTER TABLE `qa_cache` DISABLE KEYS */;
INSERT INTO `qa_cache` VALUES ('i_20',8176947708305497241,'ÿ\Øÿ\à\0JFIF\0\0`\0`\0\0ÿş\0;CREATOR: gd-jpeg v1.0 (using IJG JPEG v80), quality = 90\nÿ\Û\0C\0\n\n\n\r\rÿ\Û\0C		\r\rÿÀ\0\0\0\"\0ÿ\Ä\0\0\0\0\0\0\0\0\0\0\0	\nÿ\Ä\0µ\0\0\0}\0!1AQa\"q2‘¡#B±ÁR\Ñğ$3br‚	\n\Z%&\'()*456789:CDEFGHIJSTUVWXYZcdefghijstuvwxyzƒ„…†‡ˆ‰Š’“”•–—˜™š¢£¤¥¦§¨©ª²³´µ¶·¸¹º\Â\Ã\Ä\Å\Æ\Ç\È\É\Ê\Ò\Ó\Ô\Õ\Ö\×\Ø\Ù\Ú\á\â\ã\ä\å\æ\ç\è\é\êñòóôõö÷øùúÿ\Ä\0\0\0\0\0\0\0\0	\nÿ\Ä\0µ\0\0w\0!1AQaq\"2B‘¡±Á	#3Rğbr\Ñ\n$4\á%ñ\Z&\'()*56789:CDEFGHIJSTUVWXYZcdefghijstuvwxyz‚ƒ„…†‡ˆ‰Š’“”•–—˜™š¢£¤¥¦§¨©ª²³´µ¶·¸¹º\Â\Ã\Ä\Å\Æ\Ç\È\É\Ê\Ò\Ó\Ô\Õ\Ö\×\Ø\Ù\Ú\â\ã\ä\å\æ\ç\è\é\êòóôõö÷øùúÿ\Ú\0\0\0?\0\Ç\Ñ\í<@t\Í:\çÀŸg¶–h5+¦*¹1\æÌ£tK\Z8“€Ú™\Ç$×¨|g¾\Óü#ğ\ï}½¶Ÿ\â]_K³#\ì\Ğ#Û——9yv \å›%@\ÈcÌ¾[CğŸ\Çú·.©e7ˆ­\ãV¹Y–H\Ë\ä£<*Ì§	\"€Wøx\à\äW\Ïv¿†u\rM`’óÄ’‰.V=KR#tª\ì1¸@\\c…÷\ê6ù4\ã\Z‘\åkcÑ¬\İ6\ßs\é\r\åñ2^O©x2\Íf†\à\Ã³šM‚=ªË§np\Ü\âŠ\çşø\âOxB\Öş\îg[˜É· Àb¸ù±\îÏ¾h®yÖ„$\ãÉ±¤hsEK›ğ?ÿ\Ù','2017-05-25 15:05:49','2017-05-25 15:07:34'),('i_200',8176947708305497241,'ÿ\Øÿ\à\0JFIF\0\0`\0`\0\0ÿş\0;CREATOR: gd-jpeg v1.0 (using IJG JPEG v80), quality = 90\nÿ\Û\0C\0\n\n\n\r\rÿ\Û\0C		\r\rÿÀ\0\0–\0\È\"\0ÿ\Ä\0\0\0\0\0\0\0\0\0\0\0	\nÿ\Ä\0µ\0\0\0}\0!1AQa\"q2‘¡#B±ÁR\Ñğ$3br‚	\n\Z%&\'()*456789:CDEFGHIJSTUVWXYZcdefghijstuvwxyzƒ„…†‡ˆ‰Š’“”•–—˜™š¢£¤¥¦§¨©ª²³´µ¶·¸¹º\Â\Ã\Ä\Å\Æ\Ç\È\É\Ê\Ò\Ó\Ô\Õ\Ö\×\Ø\Ù\Ú\á\â\ã\ä\å\æ\ç\è\é\êñòóôõö÷øùúÿ\Ä\0\0\0\0\0\0\0\0	\nÿ\Ä\0µ\0\0w\0!1AQaq\"2B‘¡±Á	#3Rğbr\Ñ\n$4\á%ñ\Z&\'()*56789:CDEFGHIJSTUVWXYZcdefghijstuvwxyz‚ƒ„…†‡ˆ‰Š’“”•–—˜™š¢£¤¥¦§¨©ª²³´µ¶·¸¹º\Â\Ã\Ä\Å\Æ\Ç\È\É\Ê\Ò\Ó\Ô\Õ\Ö\×\Ø\Ù\Ú\â\ã\ä\å\æ\ç\è\é\êòóôõö÷øùúÿ\Ú\0\0\0?\0ò5€\ã§\çS0:\n±xüjIÀŠn8k\åa#”Xg¼¿“‚#L\ã\×µ…}©u E>P\ç>µ\Ó\Ğ\\3Ã–¯~œ\Ö>­’TYd—{œE\ã=…oL\ëÃ¼Ÿ­3ò[¾Mz†Ÿ\á\Û\ÍM€µ´š~p|¨\Ëcòük\Ú?fØºúş\Òx\Â\á-4;˜V[x)<„ö!—üı\r}2‘xÀŠ<3£i6©oÁL“’T’Œ? \ç89®‡A\Í\İ\è5\Ï]>~\ÉÚ§,\Úû_VĞ´¥b\ZiN\É\Ç÷\ätô\ëÖ»û\ïØ·@»\Ìú?Œ#ğS\ÏPTŒrw\Ó=ó\ë]^½ñ:óR´F¹²Š\æ\ÙÀ2Z]Şª)LcSŒ“÷F\Òv“œ’kÈ¯5“q{\äX\Ík¤Ã»ri\ÖÁce=q\ãwV\á\à3š\Ú4i¥k\\†\å\Ô\î|\'ûE&©guw\âK»‘±\Ú\äùŠŞ¹#O\Çğ¥ñ7\ìnö°Iı™ªC4\Í)‡cep…‡–I\é¸t>\Üó^\r¨xó\Å?n¡k;ûˆ\áS\æ\Ê\Şs¶\ÇU\Ú“ \íeP2§¨\êy5wXı³µ¿\n\ŞGc=¤—vš°e˜¦\æÈ‘Ø°\0‚\Ç*«\Î3\ë\È^Â“V±7’{˜\Ş7ğß‚uw°¹;\Ø}\Ö\0\á€\à‘£ ŒûW6`#Šû:\ßI\Òş>x^\é,¥Ó†£nƒo\ä\r§p¬6…³\Øg\æ¯|=Ô¼\â	t½B\Ò[i7…\Ç\Ê\ë’S\Ü{ıkÏ­I\Òw\èos\Şğ¤ºş«\Z„%†N+\ê}ÁI£\é	•\nBúW-ğ3ÁñZÁ\Ò õ$×ªx\ÃSŠ\ÆÁ€Âª¯Z\åK™\Í{8]/\ã\İr+möŒ\â%n3^3ac)\×.\àM\ÑN™ŠL\çš\Ûø‘¬Fı\ÂõKÁ¦¹ä¶»r²c0·£v¬+§OX\í\Õuv¦\ÙË¼2\Ø\Ù\İ\ÚÎ˜‘Xƒš\Äq]ßä¸|\")6…ö±\Ğ\×+öpy§CT\äú³‘^KS)­øéš‚H8­¿³‚y\â…\Ğ\î®\Øù0³\\q]\êö#”\æ$„ƒÒ´¼;e\æ\êQ³&ôS’=kF?	\ß\İyTFA’¨rk¢ğV‘&›~\'–-Ê«ó/qõ¬\ê\ÔJ:n\Éh‡Rñ!±\ß)\å0\ãõ\Ä\ê3M+K3f\çš\ê¼QWšÌ‘#\0zW=$8\àğ}(\ÃÑ5Ì–¬©\ÎS\Ñ\ìs·V½h­+˜s8¢º\ÌyJŠ¹\0­G¨&\ë)uaŠ²€7ZK›i\'€ˆñ\Ç$šÁ¤ä‘“¦\éSjWq\ØB\ê\Ï!’q\Ïa_z~ÏŸ³Æ‡ğ‡ÁòxŸ\Ä\í¹yp‹,PM4V\çƒò\ïQ–\ã¯\é\ÅxW\ì\áğİ¦\ÖSYºò!†\'\Zhw©cœÏµz÷\í\rñJö\ãGm*\Ä\Éu*¡;T1‰F\0S´\01ÔÀô\é\È\Ï}¢¹\á^òv[—\Å/Ú®\×Q\Õ.b¹³ŸSµ´‘öY©Q€p7:\Çr;ƒ¸ñ_9x£ö\×uK\É\åU\Ò@É‘‘D6`©Œ	q§™\Ó8\í\Ìø—\áş»j‘\ê^%\Õ\Ú\Ö\ÕNm\ìšbec‚~Hø¯¿À×‹kz¥®I,²©}:İˆH˜•…Û»1\'\æ\'®,WZ¼·9]º°ÿ\0/\çAk<ú‡ˆ­Ë‡,…G\Í\ÆH!p:\ËãƒÒ½@\Öbñ°ùö…\'Ì±¯^\Î?#õ¯!‘\í5ü\ÇI@lyq\r‰Ÿ@:~˜¯¬>j:\Ø	-¥x\Ê,‘‰TÀ°\İ\Ç\çß¥j–¶2›²¹\èş\'Q´ƒN\Óç¶¿\İ)ŒATõ>W\Ğdõ\àc\Å\r¹\×<}¢iš4–’^inµ\î¬\ÚhcX\Èa±\È\nv\ìİ˜œ’¼¿|UÓ­¬Æ¬h]ô\è\Ğ\Ù\ÜX¾\Ç\Ü/©Ú»‰ÀÂG#•ğeø“}\ám/\Ï\Ò\ï\Ş->ø#_\İ} y“D\ÉEd> p\Î’\Üz!)]j{\Ï\Ã?ŠV\Ö\â·\Óõ‰\á\×\"¶¹ºw»e‰&ˆP)@Ü“´œŒ.O\0ú?\Ã> Ò¾4i0Z\ëv\Í\ç¹©[ƒ(‰À$n\0ğH\Æ:ƒ_—QkW7\"¸\×$µ¸¶Ô¦X#P\î\ïaƒ÷\É(ú\0pK>\Éu\áo%\Ú\Î./dµöy£ya‹lCa¸¶I\nr=«*‘V³4¤\Û\Ø÷\r|,—D´ò º†@\0\0”e\È\Ç…ã¯…#\×4\Ù\ÌÚ¬\n¼\Ø\ÈõéŠ£\'ÆG\ånc7?h\Ø\ë$\r\0Lp1–À$\à;\ÖQø\Ãg­\Ù\Ízš´·¶®$şpˆ*\íe”\rşRr~`¸\Îp9ı•%²g_µ®Õ›GŠë¿³t\éo\î®ôŸ>;uM´\Ë)*{…\'\éŠó‡\Ó\'µ•°²G\"g\ï)¾ŸgÓ´öŒMxn#ŠGkÀ±E4¬¼²W9e\ÂqÓš\ë¼3\ãË‹Åõa-\Ù\Â‰\æ£1-ÁÀ$t–À\Î\"¹\åEI\è-R\Ôø\çR2jZ|l\ì\Ï,gi\Ï\ãY«¥M\r¿˜\ã\å\'÷}µÏ‚¼T\ïmw\á.w•D’:\Å\r#¤°\Ü@$t\'SZø+ğ\Ò\êE;I-\ä*%[\\•¹\Æ>rqY\Ç	(¯u£.]$<ğ\î\ç\Åğ‚Œ›i!W :ö\íOğoÃ©t¨u‰–ö\ïW\ÂB°\'›³l€g\ã$Ô‘ôª¿µ\ßü<ğ\Üö^\Z3Z\ÜN\Ïmq4ò\ë\Ãó«&0\ÏI\Çl\ã\å\ïI?Œu+‹™õ@º\æ”Z\ÑL·mq!dr—\nQòx\"¶¡…Œ_=Evg7}µ\íü_\àı:Á¦ğÿ\0‚\ÃM+µ¼‹}ˆ\å[¹||½Ha÷¹\ëƒT¼A\ãk],>ğ¦‚º¥\ÎU¡¹e\ß/@T\Ú\æ\ÏS>\îG8ŸŠ\Zƒ\î\íæ·¼x\Şg[‰|‹\ä–xùB2°9v\Ëv\È<\Õyÿ\0k-W@\Ò~\×µ¼\ÒJ\á\ã±d‘\É\ã_q<pÀ\0^ŠŒOÀËöıKWĞ¼a¡Ìš—‚-‡ˆ\Ä~d‹`lC*\ìÊ¡;Ô–L·C†<W®ü¶ñş.±á¸­\ìµ+rğ\Ü\é¢B72où\É*H\Çy\Æ@\ËW—ø\ã]ÿ\0ˆ5ˆ\æ\×/$š\Î\é\Ót\ÖòöX†p\íŒ\'i\0Œ+zšõO\r|i\Ò\"\Õ`º7·\Z…‹\ï¹k\É ¸\Ä\Ê1…m¼•9\'œ“2„&µEZÇƒx«\ÂZŸ…/Í–«g%•\Î\Õ-\Çğ„ÁÖŠû\âO€4¿Šj÷×·\Ó\íòG\Ù\ï\àS\"¸.6ª¯\İ=A\È99±\É\\¡%+#H¸µ©ğ¼g­¯D\Òj°\í\Ìe ¬`_\ÔsÀ\ç¥bBy\ë¥ğuØ¶\Ô|\É„@e\Ö?¼ø\è::uâ¸™×‡÷§\è}?ğ\ïY\Õ.\"K[m5nF\Ñ\æbbŒ\èz\í ‚\Ç5G\âW‰/m^M\Ñ\ÜX9\äÆ E\0ó\Ç¯½q:O® º\r2ñ ‹’°\Ä\Í$’\ÈG<úø\n©\ãi÷q\Æ&eº»µ°œş\'#~${\Zô)½\n«£8\Ïx}\ï£7—\Ç2Ÿ“Î¹%ñ\Ç\ÌqüGğÀ¯–ş/ø\Ê«Ø´ı)@!°\Ë\n£±#ğ\Ç8\íÚ½\Û\Ç\Z\î³\âH•J°Xÿ\0r‹\Ùqë§¯Jù§Ä¯Ÿ®yr…·r–£xÏ¯\áŠì=½C\Âz\r¦°\Æ%•\İÁ\ÉY%\Ï\Ôõ«\èo…j>¶’\Ó\íPZ\ÛJ¿5¼r³‘Ğœ(\éõ\'ğ®\áo†t»û\È_YK•\Ç-$“ùj½ÀÀ\æ½S\ÆÍ¤xc\Ã\Íg\á¸V{›¡‚Ñ†<óË³œu\Åm53¨úeñ[\âj\É|ºv™km%ôò5´\ÄËºL«\Ü› 0S\0\0ñŞ¾q\×<W{e\è’G¡¨}µ%{o™q‘¹c\ÛÀ\åeG8\È÷w\ÅËOD\Õbµ¹-os\ZùŠ˜“vr}A\Ç\ãÓ½z\'\ì™ğ–ÿ\0\Å~\'‡\\»\Ó\å¸YCg» ef@K¶\æùP(–é•²]Nvúû:ü0¼}J\ÃX\ÖS©:Âƒ†\â\à\êz<\ÆXk\í+-SF²Šh¼On\ê8\Õ-o¢’F‚\\A1\ïP»dÀ!v¯=IÃ¯…úG‡$}i®\Õ\æ}¶\Ë†±\Ñ\Øyj6·\ÉÁ,ï‘šö\ÏøJ\rÃ—ö\Ös\Íw›\åX¯\×jL§v…\ê>b[ßœ\är\ÏŞ–‡m5\Éõ<¤j\Z¾§ Y\Ëya$WS\ÛD\Ó^3‰”Ê‰\"É¹\Û\ï&…Šó÷ORs6ğ&·¨j:Y±\Ôg\Ób¸m\ã†\Ò&õeÌ›€™~E\Ï\Ê\Ö9<=\ÂZT6–ñ\Ûùw2Owt^7»”9=\Ì\"”:®•‚°9òù<\0:\ë\í,£f{t½(¿\Ú1¿9.0ø\Ş\ç\æç°CG3\äùüªøo\ÄvM6¤Mµ K‹KK\ÛqvÒ“ÕŠg%Ù„Œ¿/\É÷y=z[\é\î\í$Ô­eû6Ÿ*Tl«µ\Äò€›Y0\Ã\çiX\àuõıOL’\î\×\í0iß¾ò\Ú\Úx\Ñ!K€„°.\n´ƒx dd\ã>u«x.\ïG\Ğ`G‹ûNóNYœ16qI,N\Ï\Ë\r²\02¹,sA—Ô¬b\è¿¿²\ïf{\Ù&”4l‰i$2\Í*Í¼•\ÇV\Ë(\0\ëƒ\ĞQ×¾/ıš‰u„•flB‡tpJ\áÃ†u\Æaú *\à\ç\ë¾\ró´gûd	£«ù+3\Èp£\0§%·³9Ù\ÏñxG<Yÿ\0\Ò]\ÜZK¦\İ\î¶û|2Ú¤IP€C(9Z‚?Â’@\åc¡ı£|s…\Úg·µ¹¸·CMQ\Ä6³g9\Æ\âKp¤œsŠñ?€VvúŞŸb÷V\ï¨Lon\å½\Õ\ÓG\rÃ³)ı\ã¯o•pòCzñ?¼K\ãŸ´\ÛG´0\ÆM\ÜR—i³ŒœÛŠ~^€\Ö/\Âø“\áı\ã%ˆ¶Õ“>šdU‰‡8m€Jf\ÇuÈ®˜\Ç\İ8§?z\ç\èe§€t\rr[ˆ4\ÄK;q!c\0)²Â©¾ş8ş#\ß©Ç•|jğ¿†,ôùt8\á\Ó\Ú	#\æk…h\Ñ\\1n9Ü½O¦+‹´ø©g¥xS’v\İä»†\Ò\Ú\ïËe\İó2AL‚F8tâ¼³Nı£´É¢s•\â»uBT\äısı;\ĞÖš ‹m\èG\àıWş=z-OOºxmm®U&U2-½\Ôg;£!€%H\Ş	Á\àô¯Dğõ\ËXx\é­\à»-\èx\åd2ıªu@\èT…ù²€`ÿ\0Nõ\áZ\ç‰\åñ-\ä²Miˆ\ä|ƒ3’\Üg6\çµzOõk]@ó^ò3uö•\Ûö–&8ñ‡G\Çl8S\èv\ã*\Ò\Óhû\àÿ\0ˆ¤ñ§G¦kW0\ÚZ±X\íp7\Î€N\ÖU»–cŠ+\à$\Í\ájzµ½Â™.‘]ge!©¬Ç‚@)\ÎFHb9\0V]Lš\ÑY£kv\'\ß\n1XÀ\ço5±\â_‡Z¿„ô¿¶\Ş–=ÁA\rMrö6ó\ÇL\ßx©=\ë\çš÷¬\Ï[\r¹5¹©}\âMKM·’\ÇO\Ù\ç_%¤Lœ2ª½€Ï½z‡†4\Û\r\Ş\Ş{kqz1¹\0\î\İp\0\ï\Ôóß¾*\Â\Ïi\Z\rİ¿Š|Evn\'™L©`„\0=Xÿ\0…{¨ø\Æ°°…4»\Øc-µ%Pœn# \'&»\è\Å\Ú\æuš\Øùs\Ç\ŞÔµ+)æ¿\Øé‘¢8\Æ7v<=xJğ{Ÿ\r¶·«7\Ãv\ë¬~{²¾cr\Ã8öõ\×Å¿	ÿ\0h–Ó¦šy@a\n~^¿™ı2MxÏ‰¯-|1,zƒ,Zt\İ&ºA’‰\'¹\í\ÍvÁt\ÓH\è<%ğsJÑ´H…\ëKT	™[,\ä1\Æ{|¿JŸYğ¬vVòÿ\0£´N‘‰ldzgúWI\à=of„¶\È\×8\ÂùŒùw÷<w¬/\Zß†\â	®DE\È:¶q\ê3úV\í¤s\ê÷>\'ø¯\ák\Ío\ÄÁm±:\É.\ÜF\0a\Ï\n£9=q\Í~‘|\rø5o\à\èºEWYºµŠ\Ó\ä\Ë4y\Úó*ª\ã`\ÜW,H<zâ¿³\ßÃ\Å?­\çû;­¥Œ‹pò\Êxl7\Ê÷l~f¿C|\á»/\ÚË¨\İ\\´—HDl´ÛB\îÁô \àgh\êN\ĞD9¶’F\Ô\à¯\ÌÎ–};Iğ}ºÁhnZ\Ü*\í’B\íÁ\Ç\'-“\ÉÁ\'\ë\\Ö¯\âquy¦\ÜÙµ³4R$wvî¡—r/\ÈO\Ş\\÷\ÇQß§7\ã\íj}>\â\Î\'_\İ@Å®$\Ì	V\Ü\ÊÌˆ…Aù™zc¯”\Ó<\ß\\ù\Ò\Û\Üg],“´9\nÏ‚\rF\Ó#•\0œ\ç3¾\Æö²\Ô\ë\çÓ“T¾Ó¤Q¹.Ì¯ +\æI…\Æ\îÚ¥X«tû ƒ\Ç_¯Û¾­¦›y\îL:|²‡–\ì8S†rHcşı	\ãO\ã\'³’\ïJ@Ğ™H&_\ß\Â\ĞõÊ„Ns’Àõ<>_\rZ\ËO\âyg’\Ú%2Xùû˜ö¶\Ñ\Ğü\Ø$\àS¿Ay‡«\Ëgug=¬>z¯\Ùò\ËS!v@\ÇnÌ–\È|\åxH\Ï\\ğ7:Œ¶\æ\Úô\È`{¶\Ã\ìµfF)‹,d+³Hc\Î)h:­\Ì:ts\\y\Zvóå¶º‰‘w3G¸\rÈ£\0\å°\'89\Û\Òõ;Ã¾£nVX§¸\ÈT7Bñ¹ğn@\èH\ãƒ,Ó¡\Æøü^i\Z¦§­ÔD\ß\Ëx\àx0È¥ğ¹$ †@a_(x\Ë\Ã/â—¿²¶\Ò\î–+Wò,†F9,\ê‹`¨\ny^W\Ò~0¹{«}DÅ«\Ç6™ip\ê\Ö\á7h\Ûkı\î\áò\àrÉ‘’:‚G›x\İ!ğ\ï†n¥´V²Ó®Ñƒ\Ù\Ù\Û#\á\ÛBÉ´R6¹\ã\ÉÛŠ–N‡\Ã-²ÿ\0…g¯hn!ûÊ’„\0ô\Èùƒ\èC\\•§‰\çƒ^²+˜[\îA(RD¹\Ï.¹\Ãd=Nz\æ½ã¾«oªøv¡´³û]­\Û\ËX\Ôü’\Îw\n…!@\\·9 \×È¾¼Z¾ –\Í\æùŒ\×d\n$E\ç	ùq»ô\èq]\Ú\ì\à–úÁ \é\Ñ\ëv2ZM¨GP²£o# lpqœc\Ït\ØX\Ô?g\"Ó–]x^Uo\ß\Û\Ë`1œ\ÈşU\ï?<%a¡i¶oz‰ª$°¬*.\Ça‘Áù†6‘\Üs¸¯Lñ\ÇÁ»_i¬\Şº6ò…\Ï\Ù.!û§q\Ïğx>ªÍ S\åg\ÃVş6³µ…\ë\Çn\ë\Ãy§¿nı>•©\'Ã›\éoâ³ºƒÍ²™”fTmõ\r\Ü\àúµ\×\ëŸ@Õ®lfi-$€0h®Ôª\äwV\äcƒ\É\0}9­?\êÚ”ºª\é\ík5±\â\Òw|LA\0gI\ã=²x“Ÿ-÷:\åR\ËCÛ¾™¼ ¶\Öp\Îf\Ò\ïe>0\Ê\Ãk\í\È\Ç]§\ÊòUÿ\0‡úÍ·Œ­$\Ó\ï,b\Óõ\ÛHÄ’Z¢7\ïU†<\ÈòN\î¹üx\è\r\Z­Œ\ï§ˆxc\âOˆ~!\ÜMk¨;6ƒÈ“\Ü\Ö\çŠ\ç6Mlªbùs!øG&±¾øzm;Ã–6r#™|\î\ã\r‘Ö·üq\éş\Öuß’\à,ÿ\0»Šğ“›húG\Ëù÷\ìû¡øŸ\ãıÇ‰5MVZ\Êmb¶y%\à`g­}&|¤O{g¥xCVºÁ”	\r\Ã€8O_|\×\åŞ‰ñ‡\Ä:›\r+Q’\ÃIóŒ¢\Ø9\æ½_\á/\Ä]wş¨u5&–gVfy:{zW¸\é\Ê+\ÈùµR-´õ?Q<I\à›\É|·\Ñ vƒÈšN»I\ÆXW\Ï>&ø5=\ä6öV\è^i\ä3Kvœ\Èş¼öÀü«\ì\Ï\Ù\ï\â6“ñ/Á©¥\ê6Š.\Ö!òğ¼uú\ÖOÄ\Şü3cw§\Ãö­\Ø~ı\É$Y\ê¤öõ\Ï6ş%±¼9_º÷>n\Ò>I¢Ø­©So\ë\Ã\Ôúš‚÷\áºú¼±*ˆ†@.\Øü‡­z\'Œ¼ca-˜·´3ºÒ·c\ÜÒ“\á]Î£ªù\ÎÅ¡O\ïs\Ír\Ï–ˆê§„\çağ“À|/ğ}\æ¯¼¢ûPs…T}Ñ€WÇ§\Ìq2s\Ûw\Ä|/\â±„­u\Ûı\'\Ä\Ö\ì\"1\\B\"†{£\Õ@6:\àqŸ~kÕ®ô£\Ôâ¼™\Ñm¢\ÄQ)\0\Ë\"[9( \\\ä3_–¾ñ§\Ä\ßüs‹\Â1‹ˆ¡ş\ÙI®®’\Ô!DŠM\æBûGu\Ï>şõ\ßNú8\Åè¹<=¤İ¶úu\Õ\ã]\ÜÃ¾\ß\ÏÜ¢L¨;”|\Ù\Ü\ì>ğ\Æ\Üğq^½\á¿EieiÅ¬¢)\"(‹Ÿ”©\à0 \í\'<‘\êk‘»Oğ\Ä\Ñ\Ş\È\"†4‰î¦¸~ª ·rÃ¿¸ğüPøñz\â}#\Â×­\á_	¯™\ê%³qp„\ã\äq\Æs\Æ}úÖ«{#%Ï£|G\á›}:I\"±\Ó\ä–\áó9œl@_N\ì\ÔÆ½A\Ïnõ\åÿ\0a·µ»-$s¿\Úı™#¼–*\ÍÙ”\îS‚qòFNÎºÿ\0‡üqğN\Ş\ÓT\Ñ<q©kq\Ø’H/	do¼N\Ò\Ä\ç®?\Zõÿ\0\n|b²ø£\á1{m|jJqx›\r\Ù?({N_\æ‘ŸQ‚\ÖÔe\'cG\Ä\Å5hB.Z>\ãmi÷†p6‘…\äÀP˜HÅƒ\ân“ğXG¦2IU\â.ò\Ç\0n©\Ï 	¬¿xå£µkg0@cl4hH\\\rœôc\Ş\Ã\0u\è|¦\ßOşÜ=ZMn-3I³¸2™ğ#Q€6¹ç“\àô\ãÕ¥ry\ì{ñ?m|d\Ñj\ÓC\Ğ\ÛMû\èš3•‚üÄ‘&HùH\É\à—A\Ğ\n\Î\Õ<>°&‘sa=¾ š‰0ÿ\0d\É\n\Ë\'A}\à19E=6ó\Û<æ¬øT\éw«§x\ßS\î‘\â\Ğ:ƒ\Ëg\rM\â‹\ÛÛ­L\ÕÄ²Nl¯b;\Ü\İ\î·±¢À\0\Ã\æQ•#ˆ”ŸS\æ\ïx:Î­q5Š!ºx Y\á\àm\nÀ+€\İøÁ\Øp¾øK\ê±Áo\Z	b\ÄĞ°\Ü6“\Ôğ>¤ñ+é¯Š~0jú¥ş‘p\ê³3¬‘Gœ#É‡p\Ê[,Ã¦FFGÒ¼£Y\×\çğ…\ï›ef²¥¤›ƒolm<) çŒŞµ¢vZ˜I]\èzÿ\0ƒ<,l´<­\ã\ÜY«\á­3µ\Ó<9\\rLõ¯L\Ğückb“h«[]\Û\Ş0*dn~Q»wƒß·zñ\Ï\nx‚=_F¸\Ô%2Bö÷K{\Z\å\ÕvùŠ{sÀ\ägƒ^\ÒuY5o·ö¬Ó´‹€òÆ¡ rH\É`0ød\Î}@d\Z\èŠOcWG\Í~,ñ¯‰|_wgªokdœ¥\Ä~K	\í›8óUxlg$‚?–e‹\Ã>Ô£şÌ9\âB³[p\Ğ\ÊC| »Gqš\äüQim\ãR[ı:\ØÃ«Yi\í,AMü`tştÂr}\Ë\áo‡\Û\Ä>Ó®\ä^‰w.X²\ìbs\Æw>óJd\Ó5\åwG¥ü\'\Ñ[\Ä+o«Xµ­1Ã£	%\\ƒƒı\ì¶ÜƒA<g®’]E<4÷SØ˜\ãğ$\Ø\\²#’:Ÿ\Ğ\Ñ\\\Ş1Ñj„¨óoør/\Ë\nÁ¬*6©ık\çÿ\0\ÚK^Š÷ÀSi\ĞI‰²c\ê+Û¾;x¦U’,«	\Ïu¯¾*x”jQJ‰Rõ¯\rMµ}v.¢ö“G\Î Œ…\'¿Öº‡º\äšŠ,¦V\Â3…e\'ƒYw–Iu²\ÚF<…A“Tš)*\êr¡¯«\ÒQ±ñ2N?Qÿ\0f\ïöš¥ogw„ó865úM\àÏˆZOtT,ªŠ\è£›XcùW\àwÀ\Ï\Ü<\Ëqp\å\äSÁ#®:W\Ù>ø\ë©h60±Ô¤Eo“fxU\çrÊœ®”\ã5ilüTı™\ìüM#jşx\ífq—´\Ï\î\Üú©\íô¬?xFo	4vW0´®d`\Ö?Á¿\ÚE\ä\Ğ\ì\àšO=¦,ÿ\01\é\ÏJö{Ÿ\é<\Ñ.‡	{e‘\Ô©¦q\\s£NrRZ?ÀôiW©J-=S[õG–ø÷\â%”~ ¸\Ò\ä;(\Â!X7\Ìû“vğpN	$t\Ú9\äW\Íú‡\ÅBñ<\Öö±ÿ\0j\\>—8£¿\0¤û‡œu­\ï\Ú\ÆEñ5›=ø¶‚+H\înn„J\Îc\ä…Á\ë—}¼ú\ç\\\ß\Â?„–Ÿµ[Hl\å—\ì\ï¼\ÃK1\r\æHI\Æö\äŒŒñ\Ó\éEw<÷6š\åg¬üXÖ¬õ\nYÛ›”¹‚I\ÑX)Ê˜\â‰F7q”gr\Ø\é\ÔZñ‰~)¤&8aTŠ0h\0P?\ÏaT?kß‰_|t¾\àKm¡XClœ™\n\ï|\ãŒ\îl§jù>Ÿl\Õ\Zeu‘€Nw\ÖÑŠ1œÏ§õ¯ˆï¯·’\ÌdI\Ù&vô\ë\Ü\×\á\Í6\çÀ>&¾m*UM?W\\y-‚«\'98=ø\\p@\ç¥r>\rø“h³‡A–Sò\ç?Oz\ê´\rM¼_¬]¬\n³\Ú[\Û3«¯\Ì\è£#¶O#Ò®KCõ6<9l<Pö\é4„\Ã#ªN‘À/\ÌO=}¸ô\â¾;\ëğ\á :U¬7v–²Š\ŞD\Ìg‘€?3¨€1\ç¶M§\ÄI<-¤¢,Ø¼š\ç\îF»˜…] \í\'I==8®Gñ5Ÿ\ÄX\Ö\ÏW°;¹\Ëf\nUd\Ç!X6\ë\ÔV:§t\à\ã\Ê\Ó#ıœ¼e}ñ³\ÅÚ´úİ¥»M™4g\Ù\ÎòÛ£\ŞÀ\à)\0€:\çŠ÷GO·\Õômj\Ët¯o\È\ÌÊ¡\\H1À\ÚXÀÀ\Ï~Ù¿¼;\á¿\é’\Ø\Ã\n	¥\Ò\ß¶\Ú\ÛNWñô<ö:\Ú\ï\Ú5_F–\Ò3f\Â@n\â’L£\ÚCd’[•\02H\ÇV}I”“\Õ”\ß\Øw\Ö7[±Y\Ó\Ï\\³*§=`ô$cÖ¼c\Äœ\İ\ÜG¨\É\Z–\Ë\Äp1…$œWÓ¯C^õt\å\Ç@eógl3\í}¬\0\Ç+ú\æ¹?\ìÁo­´°5¹8R]£n\ì\ã°À=2Z™\ìJ\Ş\æ¯Ã¿Cªø&F’~\é£tYzû6?\Z\í4ˆ§ƒÀ÷zMøk\É „³DHÌˆ¸,\\#ğ†8/…ş8³ƒ\â¥Ş†ó\Â`\Ëmfò\ß\Çú×¥\ê\×\'Dñ\r†¡\"\0©+ApA\àŸ»\Ó\Üqù\ÖRª\é4úB’ªŸsÃ¼ğ}´\íYµ\ëut1\Ì\Å|\ãË 9W\'©9-Olc¥{¶‹®ƒ ê©°[´W$\ÅDlnb§\Ó#\0öù3YÚ¶©?k\ÓdPö÷ñº\07+!s\ì?OÂ¹›Ÿ\Ëp·#2\â%WSÑˆM¹ú\çb¹jb,İ\Êt4W+jú™¼ó—\æG´ <\0°ÿ\0\âh¬6,\àz~W˜\ä\ÙŞ¢‘\å\ß|Vn¦x÷8l“œ\ãÚ¾^ñM\ß\ÚVr\Ç\æ\Ï\Ë\Íz×$\î{‹•\å±¯ñ«Û»¶\í\Ù\É\ÛA(¤±\r\Ê\íõ=öSğZ\ëş3½\Ô\ï!Ym­!òÀq•,\ÕS\ã¯À9,|g%Î©•\ão\ÚGÊ§¾+İ¿f¯	Ÿü4·º‘6\\_±ø\ç§\é^«x~\×\ÄVOkw`\Ù\Ú\İ\ÔúŠ—ˆ”+9#‘\ĞU)r½Ï™|\à\'\Ñlm­\ì•g•Ty„ú÷¯N\ÑôYJ¢\Í™:zW`ğ\ëøSPkY\ä\'÷sâ»@Š\â’5\Üù\î~õu*œúSƒ‹\å)\è	}¥\Ş$‘\\yV\ÄmØªsQ_A|2ñt\ÖzJ\ës$ˆ\æ?µ©\ÎAõÖ¢øo\á+\rM\áŠ\æ\Ø\Zü\Ù\Ğx»À×¾¶œ\åm\î\ÆÕŠ>™®j“W²=\n1i]\ìql\å¸\Ò.\ã³Ei^\İ\ânşò“Á c>œ\ß\Ö|ñŞ‰ğ7Á~)\Ô5ee»\Ót\éu	\Ép|¸â˜ Á\Éûª1ƒÛ½Rñ\ç‡o­<%kt\Í\çM¯\ÚN=9\ãÿ\0\Ô+Ê¼_ªé¶¿\Ù%\ÜO\æÁ>2Y\á‘\n¿,}\ã\ß\é^…*ŠQ¹\çÔ‹Œ\ì\Ï\Ï_5‰~5\Õ5›\Ùf–[\éšfyARI$“Cšót¼‘Hf8÷¯¡<[\àz\çS‡Tˆh—v\ÈdI\"q²UV=\ë\çÕ·H®eI\\¡*£œ9\Î85\Ûš1©\ÍKO\İy¸2·\Ìy9\äW\Ùÿ\0³/öd\Åo%\Ñm\Ò\ÈU†ö\Æ0A¿˜¯4<³¤—·c	²z\ã¯¿D?fÒ¼ğ§LÔµ«Ôµ¹ò‹<“\0¡K°\ã\×v ò)6„r5«)|SøÑ®õ»D7ñ–—\Ë^J¨$ü½‰\Ï\éøg\Ät\Ï^\Ü\ßeUÔ¤·\n­ö·ËŸ˜\ànõ\Î8\Éü3_Gx«\â¥ş£öˆô\ëY\ï\í¤\n„6#YyQ\Éü¸#kÀ¼Q¤\ÏM ›O¸’`]`\â&\Ú†e?{øO_\ïdv¨mtL\ë|¯[N›[\Z\\Ö±Y0À\ìÌ¨FĞ£\æ\çq\Ä0y\Æx\ë\İ\ß\ÙI¾\êZ\Ï(\àñpÁs\ÎY¶«=9öó\Ï\nk2A£\ÙEsZ=\Ét a\Z@\ÃH\åp7zóßŠ\ê5\rB\æø¤Fc4#Ç¹W<~Y\äe±SqÛ¡\Ò\Ú]¼¶6\×+\nò¤I¹;‰ ƒÑ°\Äş^õŸ\â9¿°ôM[XÚ²hº‘\Ê\àl\Ûõ\ÏÒ› °XF®Z)el¢©;\Ìú\çük\Å>;ø\â\ê\Ö\Ò\n\é“<—S šûn@Xƒ)>¹\çğ\ëRõv\Z\Ñmªj6+‡\ÄVs]\ÙO;\Æn£›\n®*Àşık\íRµ\Ö\å¿\"\éo-\î„r*‰y‘\ê;gŒ{WÅºF­z–‚İ­E¬6\Êñ‰e\Û&\è˜1\ØH\ê\0aócÒº¿‡7ŸHÖ£šP\ÜD\ép\é÷c\å\0§<\ÓßšU\"¥3ZS\ä•Ï£µ{™#“\È\ÜTªùr\'c´3ùV4…‰\äô®‹Q’\Ó\Ä\Úd^#\Ód2Z\İm;1\ê9lûßb´a³ô¯¤\\d\Ó=\È4\âš+(©\Ä]\Å™gËº\Õ\êË¦0W\äŒvö¯1Ô´\×\Ô\î¬\í€b\×¤!±\Ç&½Ÿá¿„ ñ¶¿…Ó´V\ë;c¹‰í•õ¡ğÿ\0á¦¥ hºriV\ÚUôSE$w;\Öe\ÎCzô9>\â»\á\ÚJŠI.¦V¤¦‘¡iö(¡V0>•p[€8\àö§\İ\ÌvRzT\Öò£°\É\0I®k\\/cŸñ¥µ’i15\ä‹›\Æ\Â\İME\áë˜’H£·Ÿ\æ\ì+\Â?h¿‰M¨\ëÉ¦\Ù\Ê\ÂC–dşğ®‡\à·Ä«=j\Æ5¯\Û\âù_q\äû\×d\"\ÔO2¶²º>¶ğ®¹s¦8\İ&#b7\çÚ¾‰ğ›A­\é\Ê$ˆHY~M\ç&¾G\Ñõ—»6*œsœ×¶|/ñ¼qi\ê3ƒ\\sL\ì§$ÕRÕ¼l¬\Ö\Ò5½\Êx\ÏNx¯•|}\à÷ğŞ¯¨\è\Zš\Èc;¶\î·ş|W\Øş=r8n\æm¯+\îIş\\g\íğ\ê\ß\Çwm\"[j°¨ç¤ƒ²µ^\Z|·¾\ÆxˆóY-Ï“üoğ\ÓEø¯ğ‡Lk«H?¶4ô{36Á\æ S¬\İqŒÆ¾#\×~\0E§\ß\Êê…‰<Á¾¶\Ô|C\â†Z\İÅ­öŸ+Z]f;»pp’7\0L§¹À™®S\ÄZ–~ó\\@û£\rÑ—%O\\W«Îš¼Y\ç\Ç\İ÷d\rğÁ«{­Z+\İ\\½\á\\I›\äÀé‘q\ÇOö\Ô%¼¹\Ól,o\æi#8hbr#ÀÁh\àcj\êü[ñR\ÃÃ‘4\ØMş¢\à®À\È\Ëq“\î=«\Îü7a?ˆu©kn¸yd\â\Æxôÿ\0\Zš÷™2i\èføw\â9Ïƒ-¬µX\Ò{I7~ñ—‚IÁ €G¬Á®Ãª\ë\Ò\ÆA\å)b\î\ç\çl\Çß>x{ª&Ÿ\0µ·r±\ì.¬£#\'€~˜\ÈükŸ¶¶š\Ò\â\é\ãtwXw,¬9Sœ~9\ãß¥J•÷#”\ìt/\ßÁ<v\Ä­\Æ@›ø(£$†\Æ=+\Ğ-/\Ö\ÓEf{r¿tYød^A :óøLWšxCWk]¶÷6ñı¦69œ.>‡š›\Æ4\Óü8¹‹\İ\Î\Ö8y\Ú1–bG¿\ÎkK¾„Û¹\ß_ø²/\Ù\Ükwò˜´\Ëhƒ+)ÿ\0Y·jıqÇšùšO7‰|[s«—/q©y»Vf\ËBep3¹\'‘\éøVOŒş \ê>.\Ô2ª[\Ûm[{Q»j&%{œ’rG\ãU´¹\r¶¯\rô\Ë\æF%-P‡v\ÚGC\Ğc’+h\Æ\ËR\èûIµ;¦H¥¹7Hw\"\Ë2‘µH9\èALv­\ï\Ü\Ïk«j71¾\İK’\Û‹€GQ\î3Ç ¬ı\n\Ê\Ù.-õh‘IF¯ò>ş…û s?J\Øx$·¸X\ß\íO(hiÚ‡\'p^s\È?0\ÉÀ\â¨G¼|ñ\ä‹,?h\ÙwN\ë5¬\ÈWilò¬s‘¸g§5\èóÀa™\ãnªq\ìk\ä\Ä\èn\"š{—ˆ‰¡••¾Wc‚™\Î$wı+\ë+[\ã«YY_C\\À®\è\Ã ûŠò±P\êz\Øiô%Š {QV\íS‚\ÍÓµ\ç-v;yğd–ÿ\0ô™üQ¯\Ìñ\Ë|\ŞM•–v²¨\ç\Í#\Ó8À\ïY\Şø†<_\ã)…Ø…¥e!A<\áOAõk ı¯>øÁ5y\ï#±\âP¿$M•Hó÷W\0\n\å¿f‚·z·ˆl£\Ô\îŸL¹th\ŞTÊ”\0‚¾Æ½weN\ës\Îmº¶‘\î\î[™Â¨idc\ÑFI¬¯øšxz\âI\"’+\ÉA4*Cg\é^\Ë\â/Â¿‚Wµ´i¦M\Ã6wŒ\é_=k\ß?\á:ñºn¢Ä¨Y!dX\ØÆ¸T4»;d\Õ\í\Üğ­R\Î;›WyT½\äÄ´’8¯,µ\×.¼\r\âÈµ˜ƒ\âD‚+\ëo@\Òôm%\'\Ô\"UšU\Æ\é_.x«\Ã?\Ûş0MÓ‡™ö‰\Â\r=kl5x\ÊM\Z\âp®\î}gğû\â:_i6÷e\Ù\"†\0šö\nøµ!·.³!-|Û¯xO…öš\\vˆò[”;u»\×e\á³Oo\ï²,‚Pµ2JZ£\ÎNPvg\ßşñy¹{¢a²8\Õ\0G­uZ¬\ãW˜\Ä¸\ë\ÕóüT\ê\ÖOUYœks\ã‡Å›¿\røRk„Z\Êm{¶bj{©\ë©\Ò\æä®‡|g\Ñô}BR.dŒˆ\Ç\Ì[¨5òm,43rñ^\Ç\r²®X\0:ñßŠ^*¸Y–}O\\¹’\î\ä¦\âW\Äv=\Õ\æ7FI(\ÛÍ\ê\èy‰N\Î]}®\0=°9­{¦¤¶<y¶\çA®ø¯I]Bfól\ŞP\ÜqÁŒ\ãğ¬\ë¿Cmn™’#%c  ÿ\0A\\]Ç†\')’\ÚtfıòÏ¦I\ç8\ç<+>µ¬BI\âp•€~qNy\éùV\Ê$ó³ÑŸ\â\ÖYŸPXdÆ£scüâ£·øÁ]>\ŞYefUi%\à•\Ù>‚¸\Í/\Â\ßi”ª´w-³w—‰tÀ\É?@)öš#¼3·\Ùd’E\Õ_k\0Xm ’zMRŠ;:ù~-\ß[\É4–p\Çö²G\Ï\'\ÏÁ\0\ã¾?*\ç.m\ïuıF+û«¹.ev\Ì\ÂAåŒx;œzÖ•¾Ï›7ö…µ´„_5\È\ÙÜ}\Ï<[\ÂûO·su%\ÔK:Â’\í>f€\Ê\íû¹=j”Tv%¶÷9–±¶YœDJ\á†Ô·B\ÅN\ì\äõ\è}¸=qZš\\b\æ	g8Š4Î¤\í+\É*\É\Ü3…[\Ö-KÙµ\Ü2¶—&G‘óX6>NI\'9\ã\ïFŸ©,W0Î‘\Í1’	©q\Ê\0$¹ûğ\0µ\ĞHš\è‹7c¤h÷º@Ÿ1mªX\Ä\à)8\Ú>¸­+;\É.mDwVû#aœ\Äs¸g\0^\â©5Õ½»ƒ>ó-\Ê;ºLw:\0\ì<dŒg;Uo\íAm=¸‘dl•fU8 \Ç9ü\êKF¶ó\ËK¦µ+H#Xø\0¸p2\îŸÆ¾¯øs\â+s\Â7n¦1\Ğó’ „÷ú\×È¶W\Ë?•$$\Ş\Âòd±‘ˆh\Æ3•#8\ãJú\ášHšq¥Â›s8‘#Lş\ì’¤•ÁŒÒ“gU\Ó\Ğöøœ’¨µF\Ú}G \Å\å\Æ\É+ªvG\Ûñx#@ñœ\ÒCuj\éo3ma\Ã\ã ôv¤\Ñ>ü?\Òõo*\ËG’;\Ï\ÚòA\ëEé¤’8j·\Î×‘‹ñ\ãöqºñ÷‡$‡B\×F‘t‘*¸ü?Â¾‹ö9ñw‚¼[uw\âm?P˜D\Èd\091\ÍT\ÕIE¤k…nmJ[œ÷\ÅO‡\Ş!]òi/lš82(g\É$sòûW5ğ?ö{»±ñ3øŠú\î\Ò\äCj.£Œ$dU\ë\ÍW-8¥M\Ø\ï¯9JI6{—ˆ´%Ö´Ç´¹Á†U¿ºk\Åot¼9®5»L²\Ø`®zQE*]*Ç³øVòfA!s\Z&pMp¼i¨\ØG,ƒË¼\ÓòÒ˜\æ\ÊÊ›GXg³/§N´Q]1I\ÏSÚ†‡x—I:Õ½•ş¡w+qj³ˆL…\róg\îxq\Ï|q^F¶Z”>3>µ»@\Âl\Ç+¯+¼&ß›“òñõõ¢Šõ\é-,y•7:\ï	n \×\ì.\îF\ÑÔ´¬œñ\Ó#$c¯\0j{(¡¼\Ñg\Ô.\í\Ñ$2d;0zó\Ç=óEw#¡j\î\Ò¶IFP‚`\é¨\r•\Ï%rô\Ï`1É¬\Ñ@Z%³\ÍcŠ÷?¹m\Çj\É\å\ã\å‘‡ü\n)¡*ö\ÓG“R…¬š;©Y§¶&\Ñ ÷F\n1\Ûğ\Êöv¶³\ÏkCes\'\Ío°¸sß©3J(¡Œ\å—P»’ö%yB\İ.æ£\0*üûW·8Ç§a\éSLL:İ„R?,ó\ïf)Õ¹\r’I8<QE!¡OŠ\Îe½‘¼\ãp]U6mm\áNHnG\ËV\àH^ö\è\İ	&ó·¾\ã!\'O¯^£¿_j(©e¡t\ë9a¸¹¹yC\Í^Q\0m´ğIúc +\è\ïƒ.’\èlĞ¦\Å%ddnBœ…>:(®LBN›¹\ÓG\âGª\ÅtI¢Š+\Æ=†ÿ\Ù','2017-05-25 15:00:10','2017-05-25 15:00:47'),('i_30',8176947708305497241,'ÿ\Øÿ\à\0JFIF\0\0`\0`\0\0ÿş\0;CREATOR: gd-jpeg v1.0 (using IJG JPEG v80), quality = 90\nÿ\Û\0C\0\n\n\n\r\rÿ\Û\0C		\r\rÿÀ\0\0\0\"\0ÿ\Ä\0\0\0\0\0\0\0\0\0\0\0	\nÿ\Ä\0µ\0\0\0}\0!1AQa\"q2‘¡#B±ÁR\Ñğ$3br‚	\n\Z%&\'()*456789:CDEFGHIJSTUVWXYZcdefghijstuvwxyzƒ„…†‡ˆ‰Š’“”•–—˜™š¢£¤¥¦§¨©ª²³´µ¶·¸¹º\Â\Ã\Ä\Å\Æ\Ç\È\É\Ê\Ò\Ó\Ô\Õ\Ö\×\Ø\Ù\Ú\á\â\ã\ä\å\æ\ç\è\é\êñòóôõö÷øùúÿ\Ä\0\0\0\0\0\0\0\0	\nÿ\Ä\0µ\0\0w\0!1AQaq\"2B‘¡±Á	#3Rğbr\Ñ\n$4\á%ñ\Z&\'()*56789:CDEFGHIJSTUVWXYZcdefghijstuvwxyz‚ƒ„…†‡ˆ‰Š’“”•–—˜™š¢£¤¥¦§¨©ª²³´µ¶·¸¹º\Â\Ã\Ä\Å\Æ\Ç\È\É\Ê\Ò\Ó\Ô\Õ\Ö\×\Ø\Ù\Ú\â\ã\ä\å\æ\ç\è\é\êòóôõö÷øùúÿ\Ú\0\0\0?\0\å$k?x\"Oiöv\ZÇ‰\Ì\â{}B4V\èpŒ\ìs\Ëd\0¼œ×§|\rñF±ñG\Çpj¾mWGĞ„Fö\é‚F‰~B¿—c\îü\Ù`w1kÆ¾|S†o‰úß†5ı.óTø};˜mµ{(Nø¯cX\É}ªÀI\è0p\ÇŒ_ø±ñ\ÃBıì¡°‚uû.£\"¥£y.\ŞeÁMó\Î\Ã;€ı\ä*r6°ò<ŠQN*\rnzuo·}‹¿\ï|/\à(.µ¿GªEw%Ád´—\Ëx\å,G\ÊeL\0Á\ázqš\àôox\âF½y¢\Ú[Ï¥g\'™Åœ†x¦\\\ÜK´\çsu \ïEo\ë7_4{Eñ+k»)ÙƒF\Ø\ŞC—\åSœ’s\Ğb¶<<4k9\ã\×mü­Eo,¡†$…J¨£’\Ø\ä¶@=0ES¥F”o$e\ïU•¢®s~>ğ?ˆ>\n\ÛøkD´ŸK¶Ô®/R\á\Õd’)A¸1|\ì\à6\æs`ppûTüj´ñ7€ü³xr\Ş_L¤ùJlVF!_iBK}\îx\ë\Î{V’ö¶:«·\ì\Ó\ê\×\ê|\Ñ?|DtË‹G»Kh¤ECfv@1·s„u\î}k\Úÿ\0f¿\É{¦\ê¶R©{kvG‰Iû¥³»óÀ¢Š\ë\Ä\Å*L\âÃ·\íÿ\Ù','2017-05-25 15:00:45','2017-06-07 13:46:34');
/*!40000 ALTER TABLE `qa_cache` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `qa_categories`
--

DROP TABLE IF EXISTS `qa_categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `qa_categories` (
  `categoryid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `parentid` int(10) unsigned DEFAULT NULL,
  `title` varchar(80) NOT NULL,
  `tags` varchar(200) NOT NULL,
  `content` varchar(800) NOT NULL DEFAULT '',
  `qcount` int(10) unsigned NOT NULL DEFAULT '0',
  `position` smallint(5) unsigned NOT NULL,
  `backpath` varchar(804) NOT NULL DEFAULT '',
  PRIMARY KEY (`categoryid`),
  UNIQUE KEY `parentid` (`parentid`,`tags`),
  UNIQUE KEY `parentid_2` (`parentid`,`position`),
  KEY `backpath` (`backpath`(200))
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `qa_categories`
--

LOCK TABLES `qa_categories` WRITE;
/*!40000 ALTER TABLE `qa_categories` DISABLE KEYS */;
/*!40000 ALTER TABLE `qa_categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `qa_categorymetas`
--

DROP TABLE IF EXISTS `qa_categorymetas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `qa_categorymetas` (
  `categoryid` int(10) unsigned NOT NULL,
  `title` varchar(40) NOT NULL,
  `content` varchar(8000) NOT NULL,
  PRIMARY KEY (`categoryid`,`title`),
  CONSTRAINT `qa_categorymetas_ibfk_1` FOREIGN KEY (`categoryid`) REFERENCES `qa_categories` (`categoryid`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `qa_categorymetas`
--

LOCK TABLES `qa_categorymetas` WRITE;
/*!40000 ALTER TABLE `qa_categorymetas` DISABLE KEYS */;
/*!40000 ALTER TABLE `qa_categorymetas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `qa_contentwords`
--

DROP TABLE IF EXISTS `qa_contentwords`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `qa_contentwords` (
  `postid` int(10) unsigned NOT NULL,
  `wordid` int(10) unsigned NOT NULL,
  `count` tinyint(3) unsigned NOT NULL,
  `type` enum('Q','A','C','NOTE') NOT NULL,
  `questionid` int(10) unsigned NOT NULL,
  KEY `postid` (`postid`),
  KEY `wordid` (`wordid`),
  CONSTRAINT `qa_contentwords_ibfk_1` FOREIGN KEY (`postid`) REFERENCES `qa_posts` (`postid`) ON DELETE CASCADE,
  CONSTRAINT `qa_contentwords_ibfk_2` FOREIGN KEY (`wordid`) REFERENCES `qa_words` (`wordid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `qa_contentwords`
--

LOCK TABLES `qa_contentwords` WRITE;
/*!40000 ALTER TABLE `qa_contentwords` DISABLE KEYS */;
INSERT INTO `qa_contentwords` VALUES (1,4,1,'Q',1),(1,5,1,'Q',1),(1,6,1,'Q',1),(1,7,1,'Q',1),(1,8,1,'Q',1),(1,9,1,'Q',1),(1,10,1,'Q',1),(1,11,1,'Q',1),(1,12,1,'Q',1),(1,13,2,'Q',1),(1,14,1,'Q',1),(1,15,1,'Q',1),(1,16,2,'Q',1),(1,17,2,'Q',1),(1,18,3,'Q',1),(1,19,1,'Q',1),(1,20,1,'Q',1),(1,21,1,'Q',1),(1,22,1,'Q',1),(1,23,1,'Q',1),(1,24,1,'Q',1),(1,25,1,'Q',1),(1,26,2,'Q',1),(1,27,1,'Q',1),(1,28,2,'Q',1),(1,29,1,'Q',1),(1,30,2,'Q',1),(1,31,1,'Q',1),(1,32,1,'Q',1),(1,33,4,'Q',1),(1,34,1,'Q',1),(1,3,4,'Q',1),(1,35,2,'Q',1),(1,36,1,'Q',1),(1,37,4,'Q',1),(1,38,1,'Q',1),(1,39,1,'Q',1),(1,40,1,'Q',1),(1,41,1,'Q',1),(1,42,1,'Q',1),(1,43,1,'Q',1),(1,44,1,'Q',1),(1,45,1,'Q',1),(1,46,1,'Q',1),(1,47,1,'Q',1),(1,48,1,'Q',1),(1,49,1,'Q',1),(1,50,1,'Q',1),(1,51,2,'Q',1),(1,52,1,'Q',1),(1,53,2,'Q',1),(1,54,2,'Q',1),(1,55,1,'Q',1),(1,56,1,'Q',1),(1,57,1,'Q',1),(1,58,1,'Q',1),(1,59,1,'Q',1),(1,60,5,'Q',1),(1,61,1,'Q',1),(1,62,1,'Q',1),(1,63,2,'Q',1),(1,64,1,'Q',1),(1,65,1,'Q',1),(1,66,1,'Q',1),(1,67,1,'Q',1),(1,68,2,'Q',1),(1,69,1,'Q',1),(1,70,1,'Q',1),(1,71,1,'Q',1),(1,72,1,'Q',1),(1,73,1,'Q',1),(1,74,1,'Q',1),(1,75,1,'Q',1),(1,76,1,'Q',1),(1,77,1,'Q',1),(1,78,1,'Q',1),(1,79,1,'Q',1),(1,80,1,'Q',1),(1,81,1,'Q',1),(1,82,1,'Q',1),(1,83,1,'Q',1),(1,84,1,'Q',1),(1,85,1,'Q',1),(1,86,4,'Q',1),(1,87,1,'Q',1),(1,88,1,'Q',1),(1,89,1,'Q',1),(1,90,1,'Q',1),(1,91,1,'Q',1),(1,92,1,'Q',1),(1,93,1,'Q',1),(1,94,1,'Q',1),(1,95,2,'Q',1),(1,96,1,'Q',1),(1,97,1,'Q',1),(1,98,1,'Q',1),(1,99,1,'Q',1),(1,100,1,'Q',1),(1,101,1,'Q',1),(1,102,1,'Q',1),(1,103,1,'Q',1),(1,104,2,'Q',1),(1,105,1,'Q',1),(1,106,1,'Q',1),(1,107,1,'Q',1),(1,108,1,'Q',1),(1,109,1,'Q',1),(1,110,1,'Q',1),(1,111,1,'Q',1),(1,112,1,'Q',1),(1,113,1,'Q',1),(1,114,1,'Q',1),(1,115,1,'Q',1),(1,116,1,'Q',1),(1,117,1,'Q',1),(1,118,1,'Q',1),(1,119,1,'Q',1),(1,120,1,'Q',1),(1,121,1,'Q',1),(1,122,1,'Q',1),(1,123,1,'Q',1),(1,124,1,'Q',1),(1,125,1,'Q',1),(1,126,1,'Q',1),(1,127,1,'Q',1),(3,141,1,'Q',3),(3,142,1,'Q',3),(3,79,1,'Q',3),(3,80,1,'Q',3),(3,81,1,'Q',3),(3,143,1,'Q',3),(3,18,1,'Q',3),(3,144,2,'Q',3),(3,145,1,'Q',3),(3,146,1,'Q',3),(3,147,1,'Q',3),(3,94,1,'Q',3),(3,148,1,'Q',3),(3,109,1,'Q',3),(3,149,1,'Q',3),(3,150,2,'Q',3),(3,151,2,'Q',3),(3,152,1,'Q',3),(3,153,1,'Q',3),(3,130,1,'Q',3),(3,154,1,'Q',3),(3,155,1,'Q',3),(3,123,1,'Q',3),(3,156,1,'Q',3),(3,157,1,'Q',3),(3,158,1,'Q',3),(3,132,1,'Q',3),(3,159,1,'Q',3),(3,160,1,'Q',3),(3,161,1,'Q',3),(3,162,1,'Q',3),(3,163,1,'Q',3),(3,104,1,'Q',3),(3,164,1,'Q',3),(4,150,1,'A',3),(4,151,1,'A',3),(4,109,1,'A',3),(4,166,1,'A',3),(4,4,1,'A',3),(4,167,1,'A',3),(4,124,1,'A',3),(4,168,1,'A',3),(4,33,1,'A',3),(4,169,1,'A',3),(4,170,1,'A',3),(4,171,1,'A',3),(4,172,1,'A',3),(4,173,1,'A',3),(4,174,1,'A',3),(4,175,1,'A',3),(4,176,1,'A',3),(6,168,1,'A',1),(6,109,1,'A',1),(6,183,1,'A',1),(6,184,1,'A',1),(6,124,1,'A',1),(6,81,1,'A',1),(6,185,1,'A',1),(6,186,1,'A',1),(6,187,1,'A',1),(6,26,1,'A',1),(6,188,1,'A',1),(6,189,1,'A',1),(6,60,1,'A',1),(6,190,1,'A',1),(6,191,1,'A',1),(6,170,1,'A',1),(6,171,1,'A',1),(6,172,1,'A',1),(6,173,1,'A',1),(6,174,1,'A',1),(6,181,1,'A',1),(6,192,1,'A',1),(2,48,1,'A',1),(2,21,1,'A',1),(2,193,1,'A',1),(2,194,1,'A',1),(2,124,1,'A',1),(2,81,1,'A',1),(2,185,1,'A',1),(2,195,1,'A',1),(2,46,1,'A',1),(2,86,1,'A',1),(2,170,1,'A',1),(2,171,1,'A',1),(2,172,1,'A',1),(2,173,1,'A',1),(2,174,1,'A',1),(2,181,1,'A',1),(2,182,1,'A',1),(2,196,1,'A',1),(2,197,1,'A',1),(8,202,1,'C',1),(8,22,1,'C',1),(8,33,1,'C',1),(8,203,1,'C',1),(8,204,1,'C',1),(8,205,1,'C',1),(7,198,1,'C',1),(7,199,1,'C',1),(7,142,1,'C',1),(7,200,1,'C',1),(7,22,1,'C',1),(7,201,1,'C',1),(7,126,1,'C',1),(7,17,1,'C',1);
/*!40000 ALTER TABLE `qa_contentwords` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `qa_cookies`
--

DROP TABLE IF EXISTS `qa_cookies`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `qa_cookies` (
  `cookieid` bigint(20) unsigned NOT NULL,
  `created` datetime NOT NULL,
  `createip` int(10) unsigned NOT NULL,
  `written` datetime DEFAULT NULL,
  `writeip` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`cookieid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `qa_cookies`
--

LOCK TABLES `qa_cookies` WRITE;
/*!40000 ALTER TABLE `qa_cookies` DISABLE KEYS */;
/*!40000 ALTER TABLE `qa_cookies` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `qa_iplimits`
--

DROP TABLE IF EXISTS `qa_iplimits`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `qa_iplimits` (
  `ip` int(10) unsigned NOT NULL,
  `action` char(1) CHARACTER SET ascii NOT NULL,
  `period` int(10) unsigned NOT NULL,
  `count` smallint(5) unsigned NOT NULL,
  UNIQUE KEY `ip` (`ip`,`action`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `qa_iplimits`
--

LOCK TABLES `qa_iplimits` WRITE;
/*!40000 ALTER TABLE `qa_iplimits` DISABLE KEYS */;
INSERT INTO `qa_iplimits` VALUES (780629030,'C',415471,1),(780629030,'L',415474,1),(1504765146,'A',415431,1),(1504765146,'L',415461,2),(1504765146,'R',415431,1),(1504765146,'V',415431,1),(1521598002,'A',415475,1),(1521598002,'C',415475,2),(1521598002,'L',415477,2),(1521598002,'M',415477,1),(1521598002,'Q',415431,2),(1521598002,'R',415431,1),(1521598002,'V',415475,1),(2468368296,'L',415788,6),(2468407442,'L',415476,3),(3261898502,'M',415477,1),(3261898502,'R',415476,1),(3261898502,'U',415477,1),(3261898502,'V',415477,2);
/*!40000 ALTER TABLE `qa_iplimits` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `qa_messages`
--

DROP TABLE IF EXISTS `qa_messages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `qa_messages` (
  `messageid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `type` enum('PUBLIC','PRIVATE') NOT NULL DEFAULT 'PRIVATE',
  `fromuserid` int(10) unsigned NOT NULL,
  `touserid` int(10) unsigned NOT NULL,
  `fromhidden` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `tohidden` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `content` varchar(8000) NOT NULL,
  `format` varchar(20) CHARACTER SET ascii NOT NULL,
  `created` datetime NOT NULL,
  PRIMARY KEY (`messageid`),
  KEY `type` (`type`,`fromuserid`,`touserid`,`created`),
  KEY `touserid` (`touserid`,`type`,`created`),
  KEY `fromhidden` (`fromhidden`),
  KEY `tohidden` (`tohidden`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `qa_messages`
--

LOCK TABLES `qa_messages` WRITE;
/*!40000 ALTER TABLE `qa_messages` DISABLE KEYS */;
INSERT INTO `qa_messages` VALUES (1,'PRIVATE',4,1,0,0,'Ahoj martine :))','','2017-05-25 15:05:49'),(2,'PRIVATE',1,4,0,0,'Ahoj :-)','','2017-05-25 15:07:42');
/*!40000 ALTER TABLE `qa_messages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `qa_options`
--

DROP TABLE IF EXISTS `qa_options`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `qa_options` (
  `title` varchar(40) NOT NULL,
  `content` varchar(8000) NOT NULL,
  PRIMARY KEY (`title`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `qa_options`
--

LOCK TABLES `qa_options` WRITE;
/*!40000 ALTER TABLE `qa_options` DISABLE KEYS */;
INSERT INTO `qa_options` VALUES ('adsense_publisher_id',''),('allow_change_usernames','1'),('allow_close_questions','1'),('allow_login_email_only','0'),('allow_multi_answers','1'),('allow_private_messages','1'),('allow_self_answer','1'),('allow_user_walls','0'),('allow_view_q_bots','1'),('approve_user_required','0'),('avatar_allow_gravatar','1'),('avatar_allow_upload','1'),('avatar_default_blobid',''),('avatar_default_height',''),('avatar_default_show','0'),('avatar_default_width',''),('avatar_message_list_size','20'),('avatar_profile_size','200'),('avatar_q_list_size','0'),('avatar_q_page_a_size','40'),('avatar_q_page_c_size','20'),('avatar_q_page_q_size','50'),('avatar_store_size','400'),('avatar_users_size','30'),('bashoverflow_create_points','10'),('bashoverflow_edit_points','5'),('bashoverflow_max_linked_scripts','5'),('bashoverflow_script_comm_max_len','40'),('bashoverflow_script_comm_min_len','6'),('bashoverflow_script_comm_msg_max_len','150'),('bashoverflow_script_comm_msg_min_len','3'),('bashoverflow_script_desc_max_len','500'),('bashoverflow_script_desc_min_len','0'),('bashoverflow_script_example_max_len','400'),('bashoverflow_script_example_min_len','0'),('bashoverflow_script_file_max_len','150'),('bashoverflow_script_file_min_len','1'),('bashoverflow_script_git_regex','/^https:\\/\\/([a-z0-9|-]+\\.)*[a-z0-9|-]+\\.[a-zA-Z]{2,3}\\/\\S{1,39}\\/\\S{1,100}\\.git/'),('bashoverflow_script_git_template','https://server.domain/user/repo.git'),('bashoverflow_script_name_max_len','40'),('bashoverflow_script_name_min_len','3'),('bashoverflow_script_tag_max_count','5'),('bashoverflow_script_tag_max_len','15'),('bashoverflow_script_tag_min_count','0'),('bashoverflow_script_tag_min_len','2'),('bashoverflow_server_url','localhost:8181/Executor-1.0/runner'),('block_bad_words',''),('block_ips_write',''),('cache_acount','3'),('cache_ccount','2'),('cache_flaggedcount',''),('cache_qcount','2'),('cache_queuedcount',''),('cache_tagcount','6'),('cache_uapprovecount','3'),('cache_unaqcount','0'),('cache_unselqcount','0'),('cache_unupaqcount','0'),('cache_userpointscount','4'),('captcha_module','reCAPTCHA'),('captcha_on_anon_post','1'),('captcha_on_register','1'),('captcha_on_reset_password','1'),('captcha_on_unapproved','0'),('captcha_on_unconfirmed','0'),('columns_tags','3'),('columns_users','2'),('comment_on_as','1'),('comment_on_qs','0'),('confirm_user_emails','0'),('confirm_user_required','0'),('custom_answer',''),('custom_ask',''),('custom_comment',''),('custom_footer',''),('custom_header',''),('custom_home_content',''),('custom_home_heading',''),('custom_in_head',''),('custom_register',''),('custom_sidebar','<p>VÃ­tejte na BashOverflow, kde najdete Å™eÅ¡enÃ­ svÃ½ch problÃ©mÅ¯ s formÃ¡tovÃ¡nÃ­m textovÃ½ch dat.\n<br/><hr/>\n\nSkripty Å™eÅ¡Ã­cÃ­ tyto problÃ©my zde mÅ¯Å¾ete spravovat, sdÃ­let a spouÅ¡tÄ›t.</p>'),('custom_sidepanel',''),('custom_welcome',''),('db_version','59'),('do_ask_check_qs','0'),('do_close_on_select','0'),('do_complete_tags','0'),('do_count_q_views','1'),('do_example_tags','0'),('editor_for_as','WYSIWYG Editor'),('editor_for_cs','WYSIWYG Editor'),('editor_for_qs','WYSIWYG Editor'),('email_privacy','Privacy: Your email address will not be shared or sold to third parties.'),('event_logger_to_database',''),('event_logger_to_files',''),('extra_field_active','0'),('extra_field_display','0'),('extra_field_label',''),('extra_field_prompt',''),('facebook_app_id',''),('facebook_app_secret',''),('feedback_email','martin@martin.cz'),('feedback_enabled','0'),('feed_for_activity','1'),('feed_for_hot','0'),('feed_for_qa','1'),('feed_for_questions','1'),('feed_for_search','0'),('feed_for_tag_qs','0'),('feed_for_unanswered','0'),('feed_full_text','1'),('feed_number_items','50'),('feed_per_category','1'),('flagging_hide_after','5'),('flagging_notify_every','2'),('flagging_notify_first','1'),('flagging_of_posts','1'),('follow_on_as','1'),('form_security_salt','seahuhukl3xm12zeo7dr2x945o8wzo0l'),('from_email','no-reply@bashoverflow.cz'),('home_description',''),('hot_weight_answers','100'),('hot_weight_a_age','100'),('hot_weight_q_age','100'),('hot_weight_views','100'),('hot_weight_votes','100'),('links_in_new_window','1'),('logo_height',''),('logo_show','0'),('logo_url',''),('logo_width',''),('mailing_body','\n\n\n--\nBashOverflow\nhttp://130.193.15.100/'),('mailing_enabled',''),('mailing_from_email','no-reply@bashoverflow.cz'),('mailing_from_name','BashOverflow'),('mailing_last_userid',''),('mailing_per_minute','500'),('mailing_subject','A message from BashOverflow'),('match_ask_check_qs','3'),('match_example_tags','3'),('max_copy_user_updates','10'),('max_len_q_title','120'),('max_num_q_tags','5'),('max_rate_ip_as','50'),('max_rate_ip_cs','40'),('max_rate_ip_flags','10'),('max_rate_ip_logins','20'),('max_rate_ip_messages','10'),('max_rate_ip_qs','20'),('max_rate_ip_registers','5'),('max_rate_ip_uploads','20'),('max_rate_ip_votes','600'),('max_rate_user_as','25'),('max_rate_user_cs','20'),('max_rate_user_flags','5'),('max_rate_user_messages','5'),('max_rate_user_qs','10'),('max_rate_user_uploads','10'),('max_rate_user_votes','300'),('max_store_user_updates','50'),('min_len_a_content','5'),('min_len_c_content','12'),('min_len_q_content','0'),('min_len_q_title','5'),('min_num_q_tags','0'),('moderate_anon_post','0'),('moderate_by_points','0'),('moderate_edited_again','0'),('moderate_notify_admin','1'),('moderate_points_limit','150'),('moderate_unapproved','0'),('moderate_unconfirmed','0'),('moderate_update_time','1'),('moderate_users','0'),('mouseover_content_on',''),('nav_activity','0'),('nav_ask','1'),('nav_categories',''),('nav_home',''),('nav_hot','0'),('nav_qa_is_home','0'),('nav_questions','1'),('nav_tags','1'),('nav_unanswered','0'),('nav_users','1'),('neat_urls','1'),('notice_visitor',''),('notice_welcome',''),('notify_admin_q_post','0'),('notify_users_default','0'),('pages_prev_next','3'),('page_size_activity','20'),('page_size_ask_check_qs','5'),('page_size_ask_tags','5'),('page_size_home','20'),('page_size_hot_qs','20'),('page_size_pms','10'),('page_size_qs','20'),('page_size_q_as','10'),('page_size_search','10'),('page_size_tags','30'),('page_size_tag_qs','20'),('page_size_una_qs','20'),('page_size_users','30'),('page_size_wall','10'),('permit_anon_view_ips','70'),('permit_anon_view_ips_points',''),('permit_close_q','70'),('permit_close_q_points',''),('permit_delete_hidden','40'),('permit_delete_hidden_points',''),('permit_edit_a','100'),('permit_edit_a_points',''),('permit_edit_c','70'),('permit_edit_c_points',''),('permit_edit_q','70'),('permit_edit_q_points',''),('permit_edit_silent','40'),('permit_edit_silent_points',''),('permit_flag','110'),('permit_flag_points',''),('permit_hide_show','70'),('permit_hide_show_points',''),('permit_moderate','100'),('permit_moderate_points',''),('permit_post_a','150'),('permit_post_a_points',''),('permit_post_c','150'),('permit_post_c_points',''),('permit_post_q','150'),('permit_post_q_points',''),('permit_post_wall','110'),('permit_retag_cat','70'),('permit_retag_cat_points',''),('permit_select_a','100'),('permit_select_a_points',''),('permit_view_q_page','150'),('permit_view_voters_flaggers','20'),('permit_view_voters_flaggers_points',''),('permit_vote_a','120'),('permit_vote_a_points',''),('permit_vote_down','120'),('permit_vote_down_points',''),('permit_vote_q','120'),('permit_vote_q_points',''),('points_a_selected','30'),('points_a_voted_max_gain','20'),('points_a_voted_max_loss','5'),('points_base','100'),('points_multiple','1'),('points_per_a_voted',''),('points_per_a_voted_down','2'),('points_per_a_voted_up','2'),('points_per_q_voted',''),('points_per_q_voted_down','1'),('points_per_q_voted_up','1'),('points_post_a','4'),('points_post_q','2'),('points_q_voted_max_gain','10'),('points_q_voted_max_loss','3'),('points_select_a','3'),('points_to_titles',''),('points_vote_down_a','1'),('points_vote_down_q','1'),('points_vote_on_a',''),('points_vote_on_q',''),('points_vote_up_a','1'),('points_vote_up_q','1'),('q_urls_remove_accents','0'),('q_urls_title_length','50'),('recaptcha_private_key',''),('recaptcha_public_key',''),('register_notify_admin','0'),('register_terms','I agree to the BashOverflow Terms &amp; Conditions and Privacy Policy'),('search_module',''),('show_a_c_links','1'),('show_a_form_immediate','if_no_as'),('show_custom_answer','0'),('show_custom_ask','0'),('show_custom_comment','0'),('show_custom_footer','0'),('show_custom_header','0'),('show_custom_home','0'),('show_custom_in_head','0'),('show_custom_register','0'),('show_custom_sidebar','1'),('show_custom_sidepanel','0'),('show_custom_welcome','0'),('show_c_reply_buttons','1'),('show_fewer_cs_count','5'),('show_fewer_cs_from','10'),('show_full_date_days','7'),('show_home_description','0'),('show_message_history','1'),('show_notice_visitor','0'),('show_notice_welcome','0'),('show_post_update_meta','1'),('show_register_terms','0'),('show_selected_first','1'),('show_url_links','1'),('show_user_points','1'),('show_user_titles','1'),('show_view_counts','0'),('show_view_count_q_page','1'),('show_when_created','1'),('site_language',''),('site_maintenance','0'),('site_text_direction','ltr'),('site_theme','SnowFlat'),('site_theme_mobile','SnowFlat'),('site_title','BashOverflow'),('site_url','http://130.193.15.100/'),('smtp_active','0'),('smtp_address',''),('smtp_authenticate','0'),('smtp_password',''),('smtp_port','25'),('smtp_secure',''),('smtp_username',''),('sort_answers_by','created'),('suspend_register_users','0'),('tags_or_categories','t'),('tag_separator_comma','0'),('votes_separated','0'),('voting_on_as','1'),('voting_on_qs','1'),('voting_on_q_page_only','1'),('wysiwyg_editor_upload_images','');
/*!40000 ALTER TABLE `qa_options` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `qa_pages`
--

DROP TABLE IF EXISTS `qa_pages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `qa_pages` (
  `pageid` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(80) NOT NULL,
  `nav` char(1) CHARACTER SET ascii NOT NULL,
  `position` smallint(5) unsigned NOT NULL,
  `flags` tinyint(3) unsigned NOT NULL,
  `permit` tinyint(3) unsigned DEFAULT NULL,
  `tags` varchar(200) NOT NULL,
  `heading` varchar(800) DEFAULT NULL,
  `content` mediumtext,
  PRIMARY KEY (`pageid`),
  UNIQUE KEY `position` (`position`),
  KEY `tags` (`tags`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `qa_pages`
--

LOCK TABLES `qa_pages` WRITE;
/*!40000 ALTER TABLE `qa_pages` DISABLE KEYS */;
/*!40000 ALTER TABLE `qa_pages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `qa_postmetas`
--

DROP TABLE IF EXISTS `qa_postmetas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `qa_postmetas` (
  `postid` int(10) unsigned NOT NULL,
  `title` varchar(40) NOT NULL,
  `content` varchar(8000) NOT NULL,
  PRIMARY KEY (`postid`,`title`),
  CONSTRAINT `qa_postmetas_ibfk_1` FOREIGN KEY (`postid`) REFERENCES `qa_posts` (`postid`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `qa_postmetas`
--

LOCK TABLES `qa_postmetas` WRITE;
/*!40000 ALTER TABLE `qa_postmetas` DISABLE KEYS */;
/*!40000 ALTER TABLE `qa_postmetas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `qa_posts`
--

DROP TABLE IF EXISTS `qa_posts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `qa_posts` (
  `postid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `type` enum('Q','A','C','Q_HIDDEN','A_HIDDEN','C_HIDDEN','Q_QUEUED','A_QUEUED','C_QUEUED','NOTE') NOT NULL,
  `parentid` int(10) unsigned DEFAULT NULL,
  `categoryid` int(10) unsigned DEFAULT NULL,
  `catidpath1` int(10) unsigned DEFAULT NULL,
  `catidpath2` int(10) unsigned DEFAULT NULL,
  `catidpath3` int(10) unsigned DEFAULT NULL,
  `acount` smallint(5) unsigned NOT NULL DEFAULT '0',
  `amaxvote` smallint(5) unsigned NOT NULL DEFAULT '0',
  `selchildid` int(10) unsigned DEFAULT NULL,
  `closedbyid` int(10) unsigned DEFAULT NULL,
  `userid` int(10) unsigned DEFAULT NULL,
  `cookieid` bigint(20) unsigned DEFAULT NULL,
  `createip` int(10) unsigned DEFAULT NULL,
  `lastuserid` int(10) unsigned DEFAULT NULL,
  `lastip` int(10) unsigned DEFAULT NULL,
  `upvotes` smallint(5) unsigned NOT NULL DEFAULT '0',
  `downvotes` smallint(5) unsigned NOT NULL DEFAULT '0',
  `netvotes` smallint(6) NOT NULL DEFAULT '0',
  `lastviewip` int(10) unsigned DEFAULT NULL,
  `views` int(10) unsigned NOT NULL DEFAULT '0',
  `hotness` float DEFAULT NULL,
  `flagcount` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `format` varchar(20) CHARACTER SET ascii NOT NULL DEFAULT '',
  `created` datetime NOT NULL,
  `updated` datetime DEFAULT NULL,
  `updatetype` char(1) CHARACTER SET ascii DEFAULT NULL,
  `title` varchar(800) DEFAULT NULL,
  `content` varchar(8000) DEFAULT NULL,
  `tags` varchar(800) DEFAULT NULL,
  `name` varchar(40) DEFAULT NULL,
  `notify` varchar(80) DEFAULT NULL,
  PRIMARY KEY (`postid`),
  KEY `type` (`type`,`created`),
  KEY `type_2` (`type`,`acount`,`created`),
  KEY `type_4` (`type`,`netvotes`,`created`),
  KEY `type_5` (`type`,`views`,`created`),
  KEY `type_6` (`type`,`hotness`),
  KEY `type_7` (`type`,`amaxvote`,`created`),
  KEY `parentid` (`parentid`,`type`),
  KEY `userid` (`userid`,`type`,`created`),
  KEY `selchildid` (`selchildid`,`type`,`created`),
  KEY `closedbyid` (`closedbyid`),
  KEY `catidpath1` (`catidpath1`,`type`,`created`),
  KEY `catidpath2` (`catidpath2`,`type`,`created`),
  KEY `catidpath3` (`catidpath3`,`type`,`created`),
  KEY `categoryid` (`categoryid`,`type`,`created`),
  KEY `createip` (`createip`,`created`),
  KEY `updated` (`updated`,`type`),
  KEY `flagcount` (`flagcount`,`created`,`type`),
  KEY `catidpath1_2` (`catidpath1`,`updated`,`type`),
  KEY `catidpath2_2` (`catidpath2`,`updated`,`type`),
  KEY `catidpath3_2` (`catidpath3`,`updated`,`type`),
  KEY `categoryid_2` (`categoryid`,`updated`,`type`),
  KEY `lastuserid` (`lastuserid`,`updated`,`type`),
  KEY `lastip` (`lastip`,`updated`,`type`),
  CONSTRAINT `qa_posts_ibfk_1` FOREIGN KEY (`userid`) REFERENCES `qa_users` (`userid`) ON DELETE SET NULL,
  CONSTRAINT `qa_posts_ibfk_2` FOREIGN KEY (`parentid`) REFERENCES `qa_posts` (`postid`),
  CONSTRAINT `qa_posts_ibfk_3` FOREIGN KEY (`categoryid`) REFERENCES `qa_categories` (`categoryid`) ON DELETE SET NULL,
  CONSTRAINT `qa_posts_ibfk_4` FOREIGN KEY (`closedbyid`) REFERENCES `qa_posts` (`postid`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `qa_posts`
--

LOCK TABLES `qa_posts` WRITE;
/*!40000 ALTER TABLE `qa_posts` DISABLE KEYS */;
INSERT INTO `qa_posts` VALUES (1,'Q',NULL,NULL,NULL,NULL,NULL,2,1,6,NULL,3,NULL,1521598002,NULL,NULL,3,0,3,2468368296,7,46750100000,0,'','2017-05-23 17:22:04',NULL,NULL,'FormÃ¡tovÃ¡nÃ­ telefonnÃ­ch ÄÃ­sel','Jako pracovnice HR mÃ¡m za Ãºkol pÅ™epracovat agendu vÅ¡ech zamÄ›stnancÅ¯ firmy ze souboru (CSV) do novÃ©ho integrovanÃ©ho systÃ©mu. To nenÃ­ aÅ¾ takovÃ½ problÃ©m, neboÅ¥ systÃ©m podporuje import dat, skuteÄnÃ½ problÃ©m je formÃ¡t ÄÃ­sel. PÅ™i Å¡patnÃ©m formÃ¡tu ÄÃ­sel systÃ©m import odmÃ­tÃ¡, nastavenÃ­ nelze zmÄ›nit.\n\nPÅ™i nÃ¡stupu jednotlivÃ½ch zamÄ›stnancÅ¯ kaÅ¾dÃ½ poskytl telefonnÃ­ ÄÃ­slo v libovolnÃ©m formÃ¡tu, tj. s pÅ™edvolbou uvozenou znakem +, uvozenou dvÄ›ma nulami, ÃºplnÄ› bez pÅ™edvolby a jeÅ¡tÄ› s mezerami na rÅ¯znÃ½ch mÃ­stech. NapÅ™:\n\n00420 777 666 555\n+420 777 66 65 55\n777666555\n\nCo bych chtÄ›la je nÄ›jakÃ½ nÃ¡stroj, kterÃ½ dokÃ¡Å¾e takto rÅ¯znÄ› formÃ¡tovanÃ¡ ÄÃ­sla vloÅ¾it do jednotnÃ©ho formÃ¡tu, konkrÃ©tnÄ› do formÃ¡tu:\n\npÅ™edvolba_trojÄÃ­slÃ­_trojÄÃ­slÃ­_trojÄÃ­slÃ­\n\nkde podtrÅ¾Ã­tka jsou mezery a pÅ™edvolba je uvozenÃ¡ znakem +.\n\nJe zaruÄena ÄeskÃ¡ pÅ™edvolba a sprÃ¡vnost telefonnÃ­ho ÄÃ­sla, tedy sloÅ¾enÃ­ pouze z ÄÃ­sel, mezer a pÅ™Ã­padnÄ› poÄÃ¡teÄnÃ­ho znaku +.\nJsem schopnÃ¡ zÃ­skat samotnÃ¡ ÄÃ­sla z CSV souboru pomocÃ­ jinÃ©ho nÃ¡stroje a pak uÅ¾ jen pÅ™edloÅ¾it ÄÃ­sla po jednom na kaÅ¾dÃ©m Å™Ã¡dku.\nSkript bude zpracovÃ¡vat tisÃ­ce ÄÃ­sel.','telefonnÃ­,ÄÃ­slo,formÃ¡t,tel_ÄÃ­sla',NULL,NULL),(2,'A',1,NULL,NULL,NULL,NULL,0,0,NULL,NULL,2,NULL,1504765146,2,1521598002,1,0,1,NULL,0,NULL,0,'html','2017-05-23 17:26:29','2017-05-25 13:56:35','E',NULL,'<p>V systÃ©mu jiÅ¾ existuje skript, kterÃ½ umÃ­ formÃ¡tovat telefonnÃ­ ÄÃ­sla:&nbsp;<a target=\"_blank\" rel=\"nofollow\" href=\"http://130.193.15.100/script/4\">http://130.193.15.100/script/4</a>, nestaÄÃ­ ti?</p>',NULL,NULL,NULL),(3,'Q',NULL,NULL,NULL,NULL,NULL,1,2,4,NULL,2,NULL,1521598002,NULL,NULL,1,0,1,2468368296,3,46684500000,0,'','2017-05-23 17:27:43',NULL,NULL,'PevnÃ¡ mezera','Ahoj,\n\npotÅ™ebuji nÄ›jakÃ½ nÃ¡stroj, kterÃ½ mi do mÃ©ho textu pÅ™idÃ¡ pevnÃ© mezery.\nZkouÅ¡el jsem nainstalovat program Vlna, ale ovlÃ¡dÃ¡ se pÅ™es pÅ™Ã­kazovou Å™Ã¡dku, coÅ¾ neumÃ­m.\n\nIdeÃ¡lnÃ­ by bylo, kdybych mohl program Vlna spustit pÅ™Ã­mo z mÃ©ho prohlÃ­Å¾eÄe...','latex,vlna',NULL,NULL),(4,'A',3,NULL,NULL,NULL,NULL,0,0,NULL,NULL,1,NULL,1521598002,2,1521598002,2,0,2,NULL,0,NULL,0,'html','2017-05-23 17:33:17','2017-05-23 17:37:47','S',NULL,'<p>Program Vlna jsem pÅ™idal jako spustitelnÃ½ skript.<br>Zde je odkaz:<br><br><a target=\"_blank\" rel=\"nofollow\" href=\"http://130.193.15.100/run/3\">http://130.193.15.100/run/3</a></p>',NULL,NULL,NULL),(6,'A',1,NULL,NULL,NULL,NULL,0,0,NULL,NULL,2,NULL,1521598002,3,1521598002,1,0,1,NULL,0,NULL,0,'html','2017-05-25 13:55:31','2017-05-25 13:57:20','S',NULL,'<p>Zde jsem vytvoÅ™il zÅ™etÄ›zenÃ½ skript, kterÃ½ umÃ­ vyÅ™eÅ¡it tvÅ¯j problÃ©m, vyzkouÅ¡ej ho a dej vÄ›dÄ›t.<br><a target=\"_blank\" rel=\"nofollow\" href=\"http://130.193.15.100/script/5\">http://130.193.15.100/script/5</a><br>&nbsp;</p>',NULL,NULL,NULL),(7,'C',2,NULL,NULL,NULL,NULL,0,0,NULL,NULL,3,NULL,1521598002,NULL,NULL,0,0,0,NULL,0,NULL,0,'','2017-05-25 13:57:19',NULL,NULL,NULL,'BohuÅ¾el opravdu potÅ™ebuji aby to umÄ›lo zpracovÃ¡vat CSV.',NULL,NULL,NULL),(8,'C',6,NULL,NULL,NULL,NULL,0,0,NULL,NULL,3,NULL,1521598002,NULL,NULL,0,0,0,NULL,0,NULL,0,'','2017-05-25 13:57:37',NULL,NULL,NULL,'Ano, to je pÅ™esnÄ› ono! DÄ›kuju',NULL,NULL,NULL);
/*!40000 ALTER TABLE `qa_posts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `qa_posttags`
--

DROP TABLE IF EXISTS `qa_posttags`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `qa_posttags` (
  `postid` int(10) unsigned NOT NULL,
  `wordid` int(10) unsigned NOT NULL,
  `postcreated` datetime NOT NULL,
  KEY `postid` (`postid`),
  KEY `wordid` (`wordid`,`postcreated`),
  CONSTRAINT `qa_posttags_ibfk_1` FOREIGN KEY (`postid`) REFERENCES `qa_posts` (`postid`) ON DELETE CASCADE,
  CONSTRAINT `qa_posttags_ibfk_2` FOREIGN KEY (`wordid`) REFERENCES `qa_words` (`wordid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `qa_posttags`
--

LOCK TABLES `qa_posttags` WRITE;
/*!40000 ALTER TABLE `qa_posttags` DISABLE KEYS */;
INSERT INTO `qa_posttags` VALUES (1,34,'2017-05-23 17:22:04'),(1,46,'2017-05-23 17:22:04'),(1,47,'2017-05-23 17:22:04'),(1,128,'2017-05-23 17:22:04'),(3,151,'2017-05-23 17:27:43'),(3,165,'2017-05-23 17:27:43');
/*!40000 ALTER TABLE `qa_posttags` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `qa_repos`
--

DROP TABLE IF EXISTS `qa_repos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `qa_repos` (
  `repoid` int(11) NOT NULL AUTO_INCREMENT,
  `git` varchar(300) NOT NULL,
  `file_path` varchar(400) NOT NULL,
  `comm` varchar(100) NOT NULL,
  `r_order` int(11) NOT NULL,
  PRIMARY KEY (`repoid`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `qa_repos`
--

LOCK TABLES `qa_repos` WRITE;
/*!40000 ALTER TABLE `qa_repos` DISABLE KEYS */;
INSERT INTO `qa_repos` VALUES (1,'https://gitlab.fit.cvut.cz/castisam/csv_cutter.git','csv_cutter.sh','6609b8162ea8165f3171c08993d6044ac9a1ac8b',1),(2,'https://github.com/znamema1/script.git','script.sh','2d1bfe8a5898758d0346f8d3c461f95c27145afb',1),(3,'https://github.com/znamema1/vlna.git','67995ef7f4bf96b9a9cb5ac9935a6860be1f0e5d','script.sh',1),(4,'https://github.com/znamema1/vlna.git','script.sh','67995ef7f4bf96b9a9cb5ac9935a6860be1f0e5d',1),(5,'https://github.com/inkassso/PhoneNoFormatter.git','compileAndRun.sh','4b547199076a0ec409e675d21f3412c7ffba6232',1),(6,'https://github.com/inkassso/PhoneNoFormatter.git','compileAndRun.sh','4b547199076a0ec409e675d21f3412c7ffba6232',2),(7,'https://github.com/inkassso/PhoneNoFormatter.git','compileAndRun.sh','0046805bdbb78c187f4a4182f7f6434f789accca',1),(8,'https://github.com/inkassso/PhoneNoFormatter.git','compileAndRun.sh','0046805bdbb78c187f4a4182f7f6434f789accca',2);
/*!40000 ALTER TABLE `qa_repos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `qa_scripts`
--

DROP TABLE IF EXISTS `qa_scripts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `qa_scripts` (
  `scriptid` int(11) NOT NULL AUTO_INCREMENT,
  `userid` int(10) unsigned NOT NULL,
  `last_version` int(11) DEFAULT NULL,
  `score` int(11) NOT NULL DEFAULT '0',
  `run_count` int(11) NOT NULL DEFAULT '0',
  `accessibility` char(1) NOT NULL,
  PRIMARY KEY (`scriptid`),
  KEY `userid` (`userid`),
  CONSTRAINT `qa_scripts_ibfk_1` FOREIGN KEY (`userid`) REFERENCES `qa_users` (`userid`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `qa_scripts`
--

LOCK TABLES `qa_scripts` WRITE;
/*!40000 ALTER TABLE `qa_scripts` DISABLE KEYS */;
INSERT INTO `qa_scripts` VALUES (1,2,1,-1,14,'A'),(2,1,1,0,8,'A'),(3,1,2,2,12,'N'),(4,2,2,0,20,'A'),(5,2,5,2,26,'A');
/*!40000 ALTER TABLE `qa_scripts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `qa_sharedevents`
--

DROP TABLE IF EXISTS `qa_sharedevents`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `qa_sharedevents` (
  `entitytype` char(1) CHARACTER SET ascii NOT NULL,
  `entityid` int(10) unsigned NOT NULL,
  `questionid` int(10) unsigned NOT NULL,
  `lastpostid` int(10) unsigned NOT NULL,
  `updatetype` char(1) CHARACTER SET ascii DEFAULT NULL,
  `lastuserid` int(10) unsigned DEFAULT NULL,
  `updated` datetime NOT NULL,
  KEY `entitytype` (`entitytype`,`entityid`,`updated`),
  KEY `questionid` (`questionid`,`entitytype`,`entityid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `qa_sharedevents`
--

LOCK TABLES `qa_sharedevents` WRITE;
/*!40000 ALTER TABLE `qa_sharedevents` DISABLE KEYS */;
INSERT INTO `qa_sharedevents` VALUES ('U',3,1,1,NULL,3,'2017-05-23 17:22:05'),('T',47,1,1,NULL,3,'2017-05-23 17:22:05'),('T',34,1,1,NULL,3,'2017-05-23 17:22:05'),('T',46,1,1,NULL,3,'2017-05-23 17:22:05'),('T',128,1,1,NULL,3,'2017-05-23 17:22:05'),('U',2,1,2,NULL,2,'2017-05-23 17:26:30'),('Q',3,3,3,NULL,2,'2017-05-23 17:27:43'),('U',2,3,3,NULL,2,'2017-05-23 17:27:43'),('T',165,3,3,NULL,2,'2017-05-23 17:27:43'),('T',151,3,3,NULL,2,'2017-05-23 17:27:43'),('Q',3,3,4,NULL,1,'2017-05-23 17:33:17'),('U',1,3,4,NULL,1,'2017-05-23 17:33:17'),('Q',3,3,4,'E',1,'2017-05-23 17:34:52'),('U',1,3,4,'E',1,'2017-05-23 17:34:52'),('Q',3,3,4,'S',2,'2017-05-23 17:37:47'),('U',2,3,4,'S',2,'2017-05-23 17:37:47'),('U',2,1,5,'N',2,'2017-05-25 09:14:47'),('U',2,1,5,'H',2,'2017-05-25 13:43:41'),('Q',1,1,6,NULL,2,'2017-05-25 13:55:31'),('U',2,1,6,NULL,2,'2017-05-25 13:55:31'),('Q',1,1,2,'E',2,'2017-05-25 13:56:35'),('U',2,1,2,'E',2,'2017-05-25 13:56:35'),('Q',1,1,7,'N',3,'2017-05-25 13:57:19'),('U',3,1,7,'N',3,'2017-05-25 13:57:19'),('Q',1,1,6,'S',3,'2017-05-25 13:57:20'),('U',3,1,6,'S',3,'2017-05-25 13:57:20'),('Q',1,1,8,'N',3,'2017-05-25 13:57:37'),('U',3,1,8,'N',3,'2017-05-25 13:57:37');
/*!40000 ALTER TABLE `qa_sharedevents` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `qa_stags`
--

DROP TABLE IF EXISTS `qa_stags`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `qa_stags` (
  `stagid` int(11) NOT NULL AUTO_INCREMENT,
  `stag` varchar(100) NOT NULL,
  PRIMARY KEY (`stagid`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `qa_stags`
--

LOCK TABLES `qa_stags` WRITE;
/*!40000 ALTER TABLE `qa_stags` DISABLE KEYS */;
INSERT INTO `qa_stags` VALUES (1,'csv'),(2,'oÅ™ez'),(3,'tÅ™etÃ­'),(4,'sloupec'),(5,'stÅ™ednÃ­k'),(6,'text'),(7,'capslock'),(8,'velkÃ¡'),(9,'malÃ¡'),(10,'latex'),(11,'vlna'),(12,'tilda'),(13,'telefon'),(14,'ÄÃ­slo'),(15,'formÃ¡t'),(16,'formÃ¡tovÃ¡nÃ­'),(17,'tel_ÄÃ­slo');
/*!40000 ALTER TABLE `qa_stags` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `qa_svotes`
--

DROP TABLE IF EXISTS `qa_svotes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `qa_svotes` (
  `userid` int(10) unsigned NOT NULL,
  `scriptid` int(11) NOT NULL,
  `vote` tinyint(4) NOT NULL,
  PRIMARY KEY (`userid`,`scriptid`),
  KEY `scriptid` (`scriptid`),
  CONSTRAINT `qa_svotes_ibfk_1` FOREIGN KEY (`userid`) REFERENCES `qa_users` (`userid`),
  CONSTRAINT `qa_svotes_ibfk_2` FOREIGN KEY (`scriptid`) REFERENCES `qa_scripts` (`scriptid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `qa_svotes`
--

LOCK TABLES `qa_svotes` WRITE;
/*!40000 ALTER TABLE `qa_svotes` DISABLE KEYS */;
INSERT INTO `qa_svotes` VALUES (1,1,-1),(1,5,1),(2,3,1),(3,5,1),(4,3,1);
/*!40000 ALTER TABLE `qa_svotes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `qa_tagmetas`
--

DROP TABLE IF EXISTS `qa_tagmetas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `qa_tagmetas` (
  `tag` varchar(80) NOT NULL,
  `title` varchar(40) NOT NULL,
  `content` varchar(8000) NOT NULL,
  PRIMARY KEY (`tag`,`title`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `qa_tagmetas`
--

LOCK TABLES `qa_tagmetas` WRITE;
/*!40000 ALTER TABLE `qa_tagmetas` DISABLE KEYS */;
/*!40000 ALTER TABLE `qa_tagmetas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `qa_tagwords`
--

DROP TABLE IF EXISTS `qa_tagwords`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `qa_tagwords` (
  `postid` int(10) unsigned NOT NULL,
  `wordid` int(10) unsigned NOT NULL,
  KEY `postid` (`postid`),
  KEY `wordid` (`wordid`),
  CONSTRAINT `qa_tagwords_ibfk_1` FOREIGN KEY (`postid`) REFERENCES `qa_posts` (`postid`) ON DELETE CASCADE,
  CONSTRAINT `qa_tagwords_ibfk_2` FOREIGN KEY (`wordid`) REFERENCES `qa_words` (`wordid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `qa_tagwords`
--

LOCK TABLES `qa_tagwords` WRITE;
/*!40000 ALTER TABLE `qa_tagwords` DISABLE KEYS */;
INSERT INTO `qa_tagwords` VALUES (1,46),(1,47),(1,34),(1,128),(3,165),(3,151);
/*!40000 ALTER TABLE `qa_tagwords` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `qa_titlewords`
--

DROP TABLE IF EXISTS `qa_titlewords`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `qa_titlewords` (
  `postid` int(10) unsigned NOT NULL,
  `wordid` int(10) unsigned NOT NULL,
  KEY `postid` (`postid`),
  KEY `wordid` (`wordid`),
  CONSTRAINT `qa_titlewords_ibfk_1` FOREIGN KEY (`postid`) REFERENCES `qa_posts` (`postid`) ON DELETE CASCADE,
  CONSTRAINT `qa_titlewords_ibfk_2` FOREIGN KEY (`wordid`) REFERENCES `qa_words` (`wordid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `qa_titlewords`
--

LOCK TABLES `qa_titlewords` WRITE;
/*!40000 ALTER TABLE `qa_titlewords` DISABLE KEYS */;
INSERT INTO `qa_titlewords` VALUES (1,1),(1,2),(1,3),(3,139),(3,140);
/*!40000 ALTER TABLE `qa_titlewords` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `qa_userevents`
--

DROP TABLE IF EXISTS `qa_userevents`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `qa_userevents` (
  `userid` int(10) unsigned NOT NULL,
  `entitytype` char(1) CHARACTER SET ascii NOT NULL,
  `entityid` int(10) unsigned NOT NULL,
  `questionid` int(10) unsigned NOT NULL,
  `lastpostid` int(10) unsigned NOT NULL,
  `updatetype` char(1) CHARACTER SET ascii DEFAULT NULL,
  `lastuserid` int(10) unsigned DEFAULT NULL,
  `updated` datetime NOT NULL,
  KEY `userid` (`userid`,`updated`),
  KEY `questionid` (`questionid`,`userid`),
  CONSTRAINT `qa_userevents_ibfk_1` FOREIGN KEY (`userid`) REFERENCES `qa_users` (`userid`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `qa_userevents`
--

LOCK TABLES `qa_userevents` WRITE;
/*!40000 ALTER TABLE `qa_userevents` DISABLE KEYS */;
INSERT INTO `qa_userevents` VALUES (3,'-',0,1,2,NULL,2,'2017-05-23 17:26:30'),(2,'-',0,3,4,NULL,1,'2017-05-23 17:33:17'),(1,'-',0,3,4,'S',2,'2017-05-23 17:37:47'),(2,'-',0,1,5,'H',2,'2017-05-25 13:43:10'),(2,'-',0,1,5,'H',1,'2017-05-25 13:44:46'),(3,'-',0,1,6,NULL,2,'2017-05-25 13:55:31'),(2,'-',0,1,7,'N',3,'2017-05-25 13:57:19'),(2,'-',0,1,6,'S',3,'2017-05-25 13:57:20'),(2,'-',0,1,8,'N',3,'2017-05-25 13:57:37'),(4,'T',165,3,3,NULL,2,'2017-05-23 17:27:43'),(4,'T',151,3,3,NULL,2,'2017-05-23 17:27:43');
/*!40000 ALTER TABLE `qa_userevents` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `qa_userfavorites`
--

DROP TABLE IF EXISTS `qa_userfavorites`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `qa_userfavorites` (
  `userid` int(10) unsigned NOT NULL,
  `entitytype` char(1) CHARACTER SET ascii NOT NULL,
  `entityid` int(10) unsigned NOT NULL,
  `nouserevents` tinyint(3) unsigned NOT NULL,
  PRIMARY KEY (`userid`,`entitytype`,`entityid`),
  KEY `userid` (`userid`,`nouserevents`),
  KEY `entitytype` (`entitytype`,`entityid`,`nouserevents`),
  CONSTRAINT `qa_userfavorites_ibfk_1` FOREIGN KEY (`userid`) REFERENCES `qa_users` (`userid`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `qa_userfavorites`
--

LOCK TABLES `qa_userfavorites` WRITE;
/*!40000 ALTER TABLE `qa_userfavorites` DISABLE KEYS */;
INSERT INTO `qa_userfavorites` VALUES (4,'T',151,0),(4,'T',165,0);
/*!40000 ALTER TABLE `qa_userfavorites` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `qa_userfields`
--

DROP TABLE IF EXISTS `qa_userfields`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `qa_userfields` (
  `fieldid` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(40) NOT NULL,
  `content` varchar(40) DEFAULT NULL,
  `position` smallint(5) unsigned NOT NULL,
  `flags` tinyint(3) unsigned NOT NULL,
  `permit` tinyint(3) unsigned DEFAULT NULL,
  PRIMARY KEY (`fieldid`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `qa_userfields`
--

LOCK TABLES `qa_userfields` WRITE;
/*!40000 ALTER TABLE `qa_userfields` DISABLE KEYS */;
INSERT INTO `qa_userfields` VALUES (1,'name',NULL,1,0,NULL),(2,'location',NULL,2,0,NULL),(3,'website',NULL,3,2,NULL),(4,'about',NULL,4,1,NULL);
/*!40000 ALTER TABLE `qa_userfields` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `qa_userlevels`
--

DROP TABLE IF EXISTS `qa_userlevels`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `qa_userlevels` (
  `userid` int(10) unsigned NOT NULL,
  `entitytype` char(1) CHARACTER SET ascii NOT NULL,
  `entityid` int(10) unsigned NOT NULL,
  `level` tinyint(3) unsigned DEFAULT NULL,
  UNIQUE KEY `userid` (`userid`,`entitytype`,`entityid`),
  KEY `entitytype` (`entitytype`,`entityid`),
  CONSTRAINT `qa_userlevels_ibfk_1` FOREIGN KEY (`userid`) REFERENCES `qa_users` (`userid`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `qa_userlevels`
--

LOCK TABLES `qa_userlevels` WRITE;
/*!40000 ALTER TABLE `qa_userlevels` DISABLE KEYS */;
/*!40000 ALTER TABLE `qa_userlevels` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `qa_userlimits`
--

DROP TABLE IF EXISTS `qa_userlimits`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `qa_userlimits` (
  `userid` int(10) unsigned NOT NULL,
  `action` char(1) CHARACTER SET ascii NOT NULL,
  `period` int(10) unsigned NOT NULL,
  `count` smallint(5) unsigned NOT NULL,
  UNIQUE KEY `userid` (`userid`,`action`),
  CONSTRAINT `qa_userlimits_ibfk_1` FOREIGN KEY (`userid`) REFERENCES `qa_users` (`userid`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `qa_userlimits`
--

LOCK TABLES `qa_userlimits` WRITE;
/*!40000 ALTER TABLE `qa_userlimits` DISABLE KEYS */;
INSERT INTO `qa_userlimits` VALUES (1,'A',415431,1),(1,'M',415477,1),(1,'V',415431,2),(2,'A',415475,1),(2,'C',415471,1),(2,'Q',415431,1),(2,'V',415431,2),(3,'C',415475,2),(3,'Q',415431,1),(3,'V',415475,1),(4,'M',415477,1),(4,'U',415477,1),(4,'V',415477,2);
/*!40000 ALTER TABLE `qa_userlimits` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `qa_userlogins`
--

DROP TABLE IF EXISTS `qa_userlogins`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `qa_userlogins` (
  `userid` int(10) unsigned NOT NULL,
  `source` varchar(16) CHARACTER SET ascii NOT NULL,
  `identifier` varbinary(1024) NOT NULL,
  `identifiermd5` binary(16) NOT NULL,
  KEY `source` (`source`,`identifiermd5`),
  KEY `userid` (`userid`),
  CONSTRAINT `qa_userlogins_ibfk_1` FOREIGN KEY (`userid`) REFERENCES `qa_users` (`userid`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `qa_userlogins`
--

LOCK TABLES `qa_userlogins` WRITE;
/*!40000 ALTER TABLE `qa_userlogins` DISABLE KEYS */;
/*!40000 ALTER TABLE `qa_userlogins` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `qa_usermetas`
--

DROP TABLE IF EXISTS `qa_usermetas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `qa_usermetas` (
  `userid` int(10) unsigned NOT NULL,
  `title` varchar(40) NOT NULL,
  `content` varchar(8000) NOT NULL,
  PRIMARY KEY (`userid`,`title`),
  CONSTRAINT `qa_usermetas_ibfk_1` FOREIGN KEY (`userid`) REFERENCES `qa_users` (`userid`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `qa_usermetas`
--

LOCK TABLES `qa_usermetas` WRITE;
/*!40000 ALTER TABLE `qa_usermetas` DISABLE KEYS */;
/*!40000 ALTER TABLE `qa_usermetas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `qa_usernotices`
--

DROP TABLE IF EXISTS `qa_usernotices`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `qa_usernotices` (
  `noticeid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `userid` int(10) unsigned NOT NULL,
  `content` varchar(8000) NOT NULL,
  `format` varchar(20) CHARACTER SET ascii NOT NULL,
  `tags` varchar(200) DEFAULT NULL,
  `created` datetime NOT NULL,
  PRIMARY KEY (`noticeid`),
  KEY `userid` (`userid`,`created`),
  CONSTRAINT `qa_usernotices_ibfk_1` FOREIGN KEY (`userid`) REFERENCES `qa_users` (`userid`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `qa_usernotices`
--

LOCK TABLES `qa_usernotices` WRITE;
/*!40000 ALTER TABLE `qa_usernotices` DISABLE KEYS */;
/*!40000 ALTER TABLE `qa_usernotices` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `qa_userpoints`
--

DROP TABLE IF EXISTS `qa_userpoints`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `qa_userpoints` (
  `userid` int(10) unsigned NOT NULL,
  `points` int(11) NOT NULL DEFAULT '0',
  `qposts` mediumint(9) NOT NULL DEFAULT '0',
  `aposts` mediumint(9) NOT NULL DEFAULT '0',
  `cposts` mediumint(9) NOT NULL DEFAULT '0',
  `aselects` mediumint(9) NOT NULL DEFAULT '0',
  `aselecteds` mediumint(9) NOT NULL DEFAULT '0',
  `qupvotes` mediumint(9) NOT NULL DEFAULT '0',
  `qdownvotes` mediumint(9) NOT NULL DEFAULT '0',
  `aupvotes` mediumint(9) NOT NULL DEFAULT '0',
  `adownvotes` mediumint(9) NOT NULL DEFAULT '0',
  `qvoteds` int(11) NOT NULL DEFAULT '0',
  `avoteds` int(11) NOT NULL DEFAULT '0',
  `upvoteds` int(11) NOT NULL DEFAULT '0',
  `downvoteds` int(11) NOT NULL DEFAULT '0',
  `bonus` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`userid`),
  KEY `points` (`points`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `qa_userpoints`
--

LOCK TABLES `qa_userpoints` WRITE;
/*!40000 ALTER TABLE `qa_userpoints` DISABLE KEYS */;
INSERT INTO `qa_userpoints` VALUES (1,172,0,1,0,0,1,2,0,0,0,0,4,2,0,32),(2,196,1,2,0,1,1,1,0,1,0,1,4,3,0,46),(3,115,1,0,2,1,0,0,0,2,0,3,0,3,0,5),(4,102,0,0,0,0,0,1,0,1,0,0,0,0,0,0);
/*!40000 ALTER TABLE `qa_userpoints` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `qa_userprofile`
--

DROP TABLE IF EXISTS `qa_userprofile`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `qa_userprofile` (
  `userid` int(10) unsigned NOT NULL,
  `title` varchar(40) NOT NULL,
  `content` varchar(8000) NOT NULL,
  UNIQUE KEY `userid` (`userid`,`title`),
  CONSTRAINT `qa_userprofile_ibfk_1` FOREIGN KEY (`userid`) REFERENCES `qa_users` (`userid`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `qa_userprofile`
--

LOCK TABLES `qa_userprofile` WRITE;
/*!40000 ALTER TABLE `qa_userprofile` DISABLE KEYS */;
INSERT INTO `qa_userprofile` VALUES (3,'about',''),(3,'location',''),(3,'name',''),(3,'website',''),(4,'about',''),(4,'location',''),(4,'name',''),(4,'website','');
/*!40000 ALTER TABLE `qa_userprofile` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `qa_users`
--

DROP TABLE IF EXISTS `qa_users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `qa_users` (
  `userid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `created` datetime NOT NULL,
  `createip` int(10) unsigned NOT NULL,
  `email` varchar(80) NOT NULL,
  `handle` varchar(20) NOT NULL,
  `avatarblobid` bigint(20) unsigned DEFAULT NULL,
  `avatarwidth` smallint(5) unsigned DEFAULT NULL,
  `avatarheight` smallint(5) unsigned DEFAULT NULL,
  `passsalt` binary(16) DEFAULT NULL,
  `passcheck` binary(20) DEFAULT NULL,
  `level` tinyint(3) unsigned NOT NULL,
  `loggedin` datetime NOT NULL,
  `loginip` int(10) unsigned NOT NULL,
  `written` datetime DEFAULT NULL,
  `writeip` int(10) unsigned DEFAULT NULL,
  `emailcode` char(8) CHARACTER SET ascii NOT NULL DEFAULT '',
  `sessioncode` char(8) CHARACTER SET ascii NOT NULL DEFAULT '',
  `sessionsource` varchar(16) CHARACTER SET ascii DEFAULT '',
  `flags` smallint(5) unsigned NOT NULL DEFAULT '0',
  `wallposts` mediumint(9) NOT NULL DEFAULT '0',
  PRIMARY KEY (`userid`),
  KEY `email` (`email`),
  KEY `handle` (`handle`),
  KEY `level` (`level`),
  KEY `created` (`created`,`level`,`flags`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `qa_users`
--

LOCK TABLES `qa_users` WRITE;
/*!40000 ALTER TABLE `qa_users` DISABLE KEYS */;
INSERT INTO `qa_users` VALUES (1,'2017-05-23 17:19:37',1521598002,'martin@martin.cz','martin',NULL,NULL,NULL,'n34n4ih07ocf0h1u','\"g2J‡\ÒP4\"šŠIÊ…!',120,'2017-06-07 14:15:24',2468368296,'2017-05-25 15:07:42',1521598002,'','6pur6qnf',NULL,0,0),(2,'2017-05-23 17:20:40',1504765146,'cecil@cecil.cz','cecil',NULL,NULL,NULL,'xn5ee63o4dhgd7o3','`\ë[\×ó–Ğ¦-Mn<ğµ©\ë\Çc',0,'2017-06-07 14:55:40',2468368296,'2017-05-25 13:56:35',1521598002,'t747b5gw','343sj12i',NULL,0,0),(3,'2017-05-23 17:20:40',1521598002,'jarmila@jarmila.cz','jarmila',NULL,NULL,NULL,'7z4soxyc1l8hko4g','h4sõW\É\í\r“Â¾\í\Ò÷³÷Ø­',0,'2017-05-25 14:58:38',1521598002,'2017-05-25 14:58:57',1521598002,'9m7wnoen','7q1e929w',NULL,0,0),(4,'2017-05-25 14:58:49',3261898502,'srogojan@fit.cvut.cz','jana',8176947708305497241,400,300,'sgsbrpoxou3yxvyc','(’Y0\Ğ=±h©\Æ{KwD\ÚH<ş\Î\0',0,'2017-05-25 15:00:39',1521598002,'2017-05-25 15:11:13',3261898502,'','6q2jwgj0',NULL,4,0);
/*!40000 ALTER TABLE `qa_users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `qa_uservotes`
--

DROP TABLE IF EXISTS `qa_uservotes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `qa_uservotes` (
  `postid` int(10) unsigned NOT NULL,
  `userid` int(10) unsigned NOT NULL,
  `vote` tinyint(4) NOT NULL,
  `flag` tinyint(4) NOT NULL,
  UNIQUE KEY `userid` (`userid`,`postid`),
  KEY `postid` (`postid`),
  CONSTRAINT `qa_uservotes_ibfk_1` FOREIGN KEY (`postid`) REFERENCES `qa_posts` (`postid`) ON DELETE CASCADE,
  CONSTRAINT `qa_uservotes_ibfk_2` FOREIGN KEY (`userid`) REFERENCES `qa_users` (`userid`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `qa_uservotes`
--

LOCK TABLES `qa_uservotes` WRITE;
/*!40000 ALTER TABLE `qa_uservotes` DISABLE KEYS */;
INSERT INTO `qa_uservotes` VALUES (1,1,1,0),(3,1,1,0),(1,2,1,0),(4,2,1,0),(2,3,1,0),(6,3,1,0),(1,4,1,0),(4,4,1,0);
/*!40000 ALTER TABLE `qa_uservotes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `qa_version_repos`
--

DROP TABLE IF EXISTS `qa_version_repos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `qa_version_repos` (
  `scriptid` int(11) NOT NULL,
  `versionid` int(11) NOT NULL,
  `repoid` int(11) NOT NULL,
  PRIMARY KEY (`scriptid`,`versionid`,`repoid`),
  KEY `versionid` (`versionid`),
  KEY `repoid` (`repoid`),
  CONSTRAINT `qa_version_repos_ibfk_1` FOREIGN KEY (`versionid`) REFERENCES `qa_versions` (`versionid`) ON DELETE CASCADE,
  CONSTRAINT `qa_version_repos_ibfk_2` FOREIGN KEY (`scriptid`) REFERENCES `qa_versions` (`scriptid`) ON DELETE CASCADE,
  CONSTRAINT `qa_version_repos_ibfk_3` FOREIGN KEY (`repoid`) REFERENCES `qa_repos` (`repoid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `qa_version_repos`
--

LOCK TABLES `qa_version_repos` WRITE;
/*!40000 ALTER TABLE `qa_version_repos` DISABLE KEYS */;
INSERT INTO `qa_version_repos` VALUES (1,1,1),(2,1,2),(3,1,3),(4,1,5),(5,1,1),(5,1,6),(3,2,4),(4,2,7),(5,2,1),(5,2,6),(5,3,1),(5,3,6),(5,4,1),(5,4,8),(5,5,1),(5,5,8);
/*!40000 ALTER TABLE `qa_version_repos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `qa_version_stags`
--

DROP TABLE IF EXISTS `qa_version_stags`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `qa_version_stags` (
  `versionid` int(11) NOT NULL,
  `scriptid` int(11) NOT NULL,
  `stagid` int(11) NOT NULL,
  PRIMARY KEY (`versionid`,`scriptid`,`stagid`),
  KEY `scriptid` (`scriptid`),
  KEY `stagid` (`stagid`),
  CONSTRAINT `qa_version_stags_ibfk_1` FOREIGN KEY (`versionid`) REFERENCES `qa_versions` (`versionid`) ON DELETE CASCADE,
  CONSTRAINT `qa_version_stags_ibfk_2` FOREIGN KEY (`scriptid`) REFERENCES `qa_versions` (`scriptid`) ON DELETE CASCADE,
  CONSTRAINT `qa_version_stags_ibfk_3` FOREIGN KEY (`stagid`) REFERENCES `qa_stags` (`stagid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `qa_version_stags`
--

LOCK TABLES `qa_version_stags` WRITE;
/*!40000 ALTER TABLE `qa_version_stags` DISABLE KEYS */;
INSERT INTO `qa_version_stags` VALUES (1,1,1),(1,1,2),(1,1,3),(1,1,4),(1,1,5),(1,2,6),(1,2,7),(1,2,8),(1,2,9),(1,3,10),(1,3,11),(1,3,12),(2,3,10),(2,3,11),(2,3,12),(1,4,13),(1,4,14),(1,4,15),(2,4,13),(2,4,14),(2,4,15),(1,5,1),(1,5,16),(1,5,17),(2,5,1),(2,5,16),(2,5,17),(3,5,1),(3,5,16),(3,5,17),(4,5,1),(4,5,16),(4,5,17),(5,5,1),(5,5,16),(5,5,17);
/*!40000 ALTER TABLE `qa_version_stags` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `qa_versions`
--

DROP TABLE IF EXISTS `qa_versions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `qa_versions` (
  `versionid` int(11) NOT NULL AUTO_INCREMENT,
  `scriptid` int(11) NOT NULL,
  `created` datetime NOT NULL,
  `editorid` int(10) unsigned NOT NULL,
  `description` varchar(3000) NOT NULL,
  `example` varchar(500) NOT NULL,
  `commitmsg` varchar(150) DEFAULT NULL,
  `name` varchar(150) NOT NULL,
  PRIMARY KEY (`versionid`,`scriptid`),
  KEY `scriptid` (`scriptid`),
  KEY `editorid` (`editorid`),
  FULLTEXT KEY `search` (`name`,`description`),
  CONSTRAINT `qa_versions_ibfk_1` FOREIGN KEY (`scriptid`) REFERENCES `qa_scripts` (`scriptid`) ON DELETE CASCADE,
  CONSTRAINT `qa_versions_ibfk_2` FOREIGN KEY (`editorid`) REFERENCES `qa_users` (`userid`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `qa_versions`
--

LOCK TABLES `qa_versions` WRITE;
/*!40000 ALTER TABLE `qa_versions` DISABLE KEYS */;
INSERT INTO `qa_versions` VALUES (1,1,'2017-05-23 17:25:15',2,'JednoduchÃ½ skript, kterÃ½ oÅ™Ã­zne zbyteÄnÃ© sloupeÄky z CSV.\nV aktuÃ¡lnÃ­m nastavenÃ­ oÅ™Ã­zne vÅ¡e aÅ¾ na 3. sloupeÄek.\nFunguje pouze s daty oddÄ›lenÃ½mi stÅ™ednÃ­kem - ;','Bohumila;BartoÅˆovÃ¡;Bartonova.Bohumila@seznam.cz;Å¾ena;+420 723 555 415;\nKvido;Picek;Picek.Kvido@seznam.cz;muÅ¾;+420 603 467 716;\nRobin;Sekanina;Sekanina.Robin@seznam.cz;muÅ¾;+420 775 810 188;\nBedÅ™ich;Kindl;Kindl.Bedrich@seznam.cz;muÅ¾;+420 725 892 634;\nLibÄ›na;MadÄ›rovÃ¡;Maderova.Libena@seznam.cz;Å¾ena;+420 737 264 734;',NULL,'OÅ™ez CSV'),(1,2,'2017-05-23 17:28:48',1,'JednoduchÃ½ skript na prohozenÃ­ velkÃ½ch a malÃ½ch pÃ­smen v libovolnÃ©m textu a teoreticky i jazyce.','TOTO je VELKY text\nA toto JE maly',NULL,'ProhazovaÄ velkÃ½ch a malÃ½ch pÃ­smen'),(1,3,'2017-05-23 17:30:47',1,'Program od pana OlÅ¡Ã¡ka na pÅ™idÃ¡nÃ­ pevnÃ½ch mezer v jazyce Latex.\n\nProgram vlna je spouÅ¡tÄ›n bez pÅ™epÃ­naÄÅ¯.','K domu, s kÃ½m, o kom...',NULL,'OlÅ¡Ã¡kova Vlna'),(1,4,'2017-05-24 23:14:01',2,'JednoduchÃ½ program v C++ na formÃ¡tovÃ¡nÃ­ telefonnÃ­ch ÄÃ­sel.\nNa vstupu se oÄekÃ¡vajÃ­ Å™Ã¡dky, kaÅ¾dÃ¡ s jednÃ­m telefonnÃ­m ÄÃ­slem.\nProgram si dokÃ¡Å¾e poradit s bÃ­lÃ½mi znaky, avÅ¡ak skonÄÃ­ s chybou v pÅ™Ã­padÄ› jinÃ©ho znaku. VÃ½jimkou je pouze znak + na zaÄÃ¡tku jako souÄÃ¡st pÅ™edvolby.\n\nProgram dokÃ¡Å¾e pÅ™eÄÃ­st nÃ¡sledujÃ­cÃ­ vstup:\n+420 777 666  555\n    +  420 777 66    65 55\n7 77    6       6655 5\n00420777666555\n\nNa vÃ½stup vypÃ­Å¡e ÄÃ­slo ve formÃ¡tu:\n+420 777 666 555','+420 777 666    555\n        + 420 777 66    65 55\n7 77    6       6655 5\n00420777666555\n00420    7776   665 55',NULL,'FormÃ¡tovaÄ telefonnÃ­ch ÄÃ­sel'),(1,5,'2017-05-25 13:49:10',2,'Skript, kterÃ½ umÃ­ vybrat telefonnÃ­ ÄÃ­sla z tÅ™etÃ­ho sloupce CSV a nÃ¡slednÄ› je zformÃ¡tovat do jednotnÃ©ho formÃ¡tu +420 777 666 555','Bohumila;BartoÅˆovÃ¡;Bartonova.Bohumila@seznam.cz;Å¾ena;723 555 415;\nKvido;Picek;Picek.Kvido@seznam.cz;muÅ¾;00603 467 716;\nRobin;Sekanina;Sekanina.Robin@seznam.cz;muÅ¾;775 810 188;\nBedÅ™ich;Kindl;Kindl.Bedrich@seznam.cz;muÅ¾;+420 725 892 634;\nLibÄ›na;MadÄ›rovÃ¡;Maderova.Libena@seznam.cz;Å¾ena;737764734;',NULL,'FormÃ¡tovaÄ telefonnÃ­ch ÄÃ­sel z CSV'),(2,3,'2017-05-23 17:39:46',1,'Program od pana OlÅ¡Ã¡ka na pÅ™idÃ¡nÃ­ pevnÃ½ch mezer v jazyce Latex.\n\nProgram vlna je spouÅ¡tÄ›n bez pÅ™epÃ­naÄÅ¯.','K domu, s kÃ½m, o kom...','Ãºprava odkazÅ¯','OlÅ¡Ã¡kova Vlna'),(2,4,'2017-05-25 14:26:00',2,'JednoduchÃ½ program v C++ na formÃ¡tovÃ¡nÃ­ telefonnÃ­ch ÄÃ­sel.\nNa vstupu se oÄekÃ¡vajÃ­ Å™Ã¡dky, kaÅ¾dÃ¡ s jednÃ­m telefonnÃ­m ÄÃ­slem.\nProgram si dokÃ¡Å¾e poradit s bÃ­lÃ½mi znaky, avÅ¡ak skonÄÃ­ s chybou v pÅ™Ã­padÄ› jinÃ©ho znaku. VÃ½jimkou je pouze znak + na zaÄÃ¡tku jako souÄÃ¡st pÅ™edvolby.\n\nProgram dokÃ¡Å¾e pÅ™eÄÃ­st nÃ¡sledujÃ­cÃ­ vstup:\n+420 777 666  555\n    +  420 777 66    65 55\n7 77    6       6655 5\n00420777666555\n\nNa vÃ½stup vypÃ­Å¡e ÄÃ­slo ve formÃ¡tu:\n+420 777 666 555','+420 777 666    555\n        + 420 777 66    65 55\n7 77    6       6655 5\n00420777666555\n00420    7776   665 55','pÅ™idÃ¡na opravenÃ¡ verze fungujÃ­cÃ­ s prÃ¡zdnou Å™Ã¡dkou','FormÃ¡tovaÄ telefonnÃ­ch ÄÃ­sel'),(2,5,'2017-05-25 13:50:58',2,'Skript, kterÃ½ umÃ­ vybrat telefonnÃ­ ÄÃ­sla z tÅ™etÃ­ho sloupce CSV a nÃ¡slednÄ› je zformÃ¡tovat do jednotnÃ©ho formÃ¡tu +420 777 666 555','Bohumila;BartoÅˆovÃ¡;723 555 415;Bartonova.Bohumila@seznam.cz;Å¾ena;\nKvido;Picek;00603 467 716;Picek.Kvido@seznam.cz;muÅ¾;\nRobin;Sekanina;775 810 188;Sekanina.Robin@seznam.cz;muÅ¾;\nBedÅ™ich;Kindl;+420 725 892 634;Kindl.Bedrich@seznam.cz;muÅ¾;\nLibÄ›na;MadÄ›rovÃ¡;737764734;Maderova.Libena@seznam.cz;Å¾ena;','Ãºprava vzorovÃ½ch dat','FormÃ¡tovaÄ telefonnÃ­ch ÄÃ­sel z CSV'),(3,5,'2017-05-25 14:00:51',3,'Skript, kterÃ½ umÃ­ vybrat telefonnÃ­ ÄÃ­sla z tÅ™etÃ­ho sloupce CSV a nÃ¡slednÄ› je zformÃ¡tovat do jednotnÃ©ho formÃ¡tu +420 777 666 555','Bohumila;BartoÅˆovÃ¡;723 555 415;Bartonova.Bohumila@seznam.cz;Å¾ena;\nKvido;Picek;00 420 603 467 716;Picek.Kvido@seznam.cz;muÅ¾;\nRobin;Sekanina;775 810 188;Sekanina.Robin@seznam.cz;muÅ¾;\nBedÅ™ich;Kindl;+420 725 892 634;Kindl.Bedrich@seznam.cz;muÅ¾;\nLibÄ›na;MadÄ›rovÃ¡;737764734;Maderova.Libena@seznam.cz;Å¾ena;','Ãºprava vzorovÃ½ch dat','FormÃ¡tovaÄ telefonnÃ­ch ÄÃ­sel z CSV'),(4,5,'2017-05-25 14:26:50',2,'Skript, kterÃ½ umÃ­ vybrat telefonnÃ­ ÄÃ­sla z tÅ™etÃ­ho sloupce CSV a nÃ¡slednÄ› je zformÃ¡tovat do jednotnÃ©ho formÃ¡tu +420 777 666 555','Bohumila;BartoÅˆovÃ¡;723 555 415;Bartonova.Bohumila@seznam.cz;Å¾ena;\nKvido;Picek;00 420 603 467 716;Picek.Kvido@seznam.cz;muÅ¾;\nRobin;Sekanina;775 810 188;Sekanina.Robin@seznam.cz;muÅ¾;\nBedÅ™ich;Kindl;+420 725 892 634;Kindl.Bedrich@seznam.cz;muÅ¾;\nLibÄ›na;MadÄ›rovÃ¡;737764734;Maderova.Libena@seznam.cz;Å¾ena;','pÅ™idÃ¡na novÃ¡ verze formÃ¡tovaÄe','FormÃ¡tovaÄ telefonnÃ­ch ÄÃ­sel z CSV'),(5,5,'2017-06-07 14:15:45',1,'Skript, kterÃ½ umÃ­ vybrat telefonnÃ­ ÄÃ­sla z tÅ™etÃ­ho sloupce CSV a nÃ¡slednÄ› je zformÃ¡tovat do jednotnÃ©ho formÃ¡tu +420 777 666 555\ntest zmÄ›ny','Bohumila;BartoÅˆovÃ¡;723 555 415;Bartonova.Bohumila@seznam.cz;Å¾ena;\nKvido;Picek;00 420 603 467 716;Picek.Kvido@seznam.cz;muÅ¾;\nRobin;Sekanina;775 810 188;Sekanina.Robin@seznam.cz;muÅ¾;\nBedÅ™ich;Kindl;+420 725 892 634;Kindl.Bedrich@seznam.cz;muÅ¾;\nLibÄ›na;MadÄ›rovÃ¡;737764734;Maderova.Libena@seznam.cz;Å¾ena;','upraven popis','FormÃ¡tovaÄ telefonnÃ­ch ÄÃ­sel z CSV');
/*!40000 ALTER TABLE `qa_versions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `qa_widgets`
--

DROP TABLE IF EXISTS `qa_widgets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `qa_widgets` (
  `widgetid` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `place` char(2) CHARACTER SET ascii NOT NULL,
  `position` smallint(5) unsigned NOT NULL,
  `tags` varchar(800) CHARACTER SET ascii NOT NULL,
  `title` varchar(80) NOT NULL,
  PRIMARY KEY (`widgetid`),
  UNIQUE KEY `position` (`position`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `qa_widgets`
--

LOCK TABLES `qa_widgets` WRITE;
/*!40000 ALTER TABLE `qa_widgets` DISABLE KEYS */;
/*!40000 ALTER TABLE `qa_widgets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `qa_words`
--

DROP TABLE IF EXISTS `qa_words`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `qa_words` (
  `wordid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `word` varchar(80) NOT NULL,
  `titlecount` int(10) unsigned NOT NULL DEFAULT '0',
  `contentcount` int(10) unsigned NOT NULL DEFAULT '0',
  `tagwordcount` int(10) unsigned NOT NULL DEFAULT '0',
  `tagcount` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`wordid`),
  KEY `word` (`word`),
  KEY `tagcount` (`tagcount`)
) ENGINE=InnoDB AUTO_INCREMENT=206 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `qa_words`
--

LOCK TABLES `qa_words` WRITE;
/*!40000 ALTER TABLE `qa_words` DISABLE KEYS */;
INSERT INTO `qa_words` VALUES (1,'formÃ¡tovÃ¡nÃ­',1,0,0,0),(2,'telefonnÃ­ch',1,0,0,0),(3,'ÄÃ­sel',1,1,0,0),(4,'jako',0,2,0,0),(5,'pracovnice',0,1,0,0),(6,'hr',0,1,0,0),(7,'mÃ¡m',0,1,0,0),(8,'za',0,1,0,0),(9,'Ãºkol',0,1,0,0),(10,'pÅ™epracovat',0,1,0,0),(11,'agendu',0,1,0,0),(12,'vÅ¡ech',0,1,0,0),(13,'zamÄ›stnancÅ¯',0,1,0,0),(14,'firmy',0,1,0,0),(15,'ze',0,1,0,0),(16,'souboru',0,1,0,0),(17,'csv',0,2,0,0),(18,'do',0,2,0,0),(19,'novÃ©ho',0,1,0,0),(20,'integrovanÃ©ho',0,1,0,0),(21,'systÃ©mu',0,2,0,0),(22,'to',0,3,0,0),(23,'nenÃ­',0,1,0,0),(24,'aÅ¾',0,1,0,0),(25,'takovÃ½',0,1,0,0),(26,'problÃ©m',0,2,0,0),(27,'neboÅ¥',0,1,0,0),(28,'systÃ©m',0,1,0,0),(29,'podporuje',0,1,0,0),(30,'import',0,1,0,0),(31,'dat',0,1,0,0),(32,'skuteÄnÃ½',0,1,0,0),(33,'je',0,3,0,0),(34,'formÃ¡t',0,1,1,1),(35,'pÅ™i',0,1,0,0),(36,'Å¡patnÃ©m',0,1,0,0),(37,'formÃ¡tu',0,1,0,0),(38,'odmÃ­tÃ¡',0,1,0,0),(39,'nastavenÃ­',0,1,0,0),(40,'nelze',0,1,0,0),(41,'zmÄ›nit',0,1,0,0),(42,'nÃ¡stupu',0,1,0,0),(43,'jednotlivÃ½ch',0,1,0,0),(44,'kaÅ¾dÃ½',0,1,0,0),(45,'poskytl',0,1,0,0),(46,'telefonnÃ­',0,2,1,1),(47,'ÄÃ­slo',0,1,1,1),(48,'v',0,2,0,0),(49,'libovolnÃ©m',0,1,0,0),(50,'tj',0,1,0,0),(51,'s',0,1,0,0),(52,'pÅ™edvolbou',0,1,0,0),(53,'uvozenou',0,1,0,0),(54,'znakem',0,1,0,0),(55,'dvÄ›ma',0,1,0,0),(56,'nulami',0,1,0,0),(57,'ÃºplnÄ›',0,1,0,0),(58,'bez',0,1,0,0),(59,'pÅ™edvolby',0,1,0,0),(60,'a',0,2,0,0),(61,'jeÅ¡tÄ›',0,1,0,0),(62,'mezerami',0,1,0,0),(63,'na',0,1,0,0),(64,'rÅ¯znÃ½ch',0,1,0,0),(65,'mÃ­stech',0,1,0,0),(66,'napÅ™',0,1,0,0),(67,'00420',0,1,0,0),(68,'777',0,1,0,0),(69,'666',0,1,0,0),(70,'555',0,1,0,0),(71,'420',0,1,0,0),(72,'66',0,1,0,0),(73,'65',0,1,0,0),(74,'55',0,1,0,0),(75,'777666555',0,1,0,0),(76,'co',0,1,0,0),(77,'bych',0,1,0,0),(78,'chtÄ›la',0,1,0,0),(79,'nÄ›jakÃ½',0,2,0,0),(80,'nÃ¡stroj',0,2,0,0),(81,'kterÃ½',0,4,0,0),(82,'dokÃ¡Å¾e',0,1,0,0),(83,'takto',0,1,0,0),(84,'rÅ¯znÄ›',0,1,0,0),(85,'formÃ¡tovanÃ¡',0,1,0,0),(86,'ÄÃ­sla',0,2,0,0),(87,'vloÅ¾it',0,1,0,0),(88,'jednotnÃ©ho',0,1,0,0),(89,'konkrÃ©tnÄ›',0,1,0,0),(90,'pÅ™edvolba_trojÄÃ­slÃ­_trojÄÃ­slÃ­_trojÄÃ­slÃ­',0,1,0,0),(91,'kde',0,1,0,0),(92,'podtrÅ¾Ã­tka',0,1,0,0),(93,'jsou',0,1,0,0),(94,'mezery',0,2,0,0),(95,'pÅ™edvolba',0,1,0,0),(96,'uvozenÃ¡',0,1,0,0),(97,'zaruÄena',0,1,0,0),(98,'ÄeskÃ¡',0,1,0,0),(99,'sprÃ¡vnost',0,1,0,0),(100,'telefonnÃ­ho',0,1,0,0),(101,'tedy',0,1,0,0),(102,'sloÅ¾enÃ­',0,1,0,0),(103,'pouze',0,1,0,0),(104,'z',0,2,0,0),(105,'mezer',0,1,0,0),(106,'pÅ™Ã­padnÄ›',0,1,0,0),(107,'poÄÃ¡teÄnÃ­ho',0,1,0,0),(108,'znaku',0,1,0,0),(109,'jsem',0,4,0,0),(110,'schopnÃ¡',0,1,0,0),(111,'zÃ­skat',0,1,0,0),(112,'samotnÃ¡',0,1,0,0),(113,'pomocÃ­',0,1,0,0),(114,'jinÃ©ho',0,1,0,0),(115,'nÃ¡stroje',0,1,0,0),(116,'pak',0,1,0,0),(117,'uÅ¾',0,1,0,0),(118,'jen',0,1,0,0),(119,'pÅ™edloÅ¾it',0,1,0,0),(120,'po',0,1,0,0),(121,'jednom',0,1,0,0),(122,'kaÅ¾dÃ©m',0,1,0,0),(123,'Å™Ã¡dku',0,2,0,0),(124,'skript',0,4,0,0),(125,'bude',0,1,0,0),(126,'zpracovÃ¡vat',0,2,0,0),(127,'tisÃ­ce',0,1,0,0),(128,'tel_ÄÃ­sla',0,0,1,1),(129,'podÃ­vÃ¡m',0,0,0,0),(130,'se',0,1,0,0),(131,'nemÄ›lo',0,0,0,0),(132,'by',0,1,0,0),(133,'bÃ½t',0,0,0,0),(134,'tÄ›Å¾kÃ©',0,0,0,0),(135,'budu',0,0,0,0),(136,'mÃ­t',0,0,0,0),(137,'pÃ¡r',0,0,0,0),(138,'dnÃ­',0,0,0,0),(139,'pevnÃ¡',1,0,0,0),(140,'mezera',1,0,0,0),(141,'ahoj',0,1,0,0),(142,'potÅ™ebuji',0,2,0,0),(143,'mi',0,1,0,0),(144,'mÃ©ho',0,1,0,0),(145,'textu',0,1,0,0),(146,'pÅ™idÃ¡',0,1,0,0),(147,'pevnÃ©',0,1,0,0),(148,'zkouÅ¡el',0,1,0,0),(149,'nainstalovat',0,1,0,0),(150,'program',0,2,0,0),(151,'vlna',0,2,1,1),(152,'ale',0,1,0,0),(153,'ovlÃ¡dÃ¡',0,1,0,0),(154,'pÅ™es',0,1,0,0),(155,'pÅ™Ã­kazovou',0,1,0,0),(156,'coÅ¾',0,1,0,0),(157,'neumÃ­m',0,1,0,0),(158,'ideÃ¡lnÃ­',0,1,0,0),(159,'bylo',0,1,0,0),(160,'kdybych',0,1,0,0),(161,'mohl',0,1,0,0),(162,'spustit',0,1,0,0),(163,'pÅ™Ã­mo',0,1,0,0),(164,'prohlÃ­Å¾eÄe',0,1,0,0),(165,'latex',0,0,1,1),(166,'pÅ™idal',0,1,0,0),(167,'spustitelnÃ½',0,1,0,0),(168,'zde',0,2,0,0),(169,'odkaz',0,1,0,0),(170,'http',0,3,0,0),(171,'130',0,3,0,0),(172,'193',0,3,0,0),(173,'15',0,3,0,0),(174,'100',0,3,0,0),(175,'run',0,1,0,0),(176,'3',0,1,0,0),(177,'www',0,0,0,0),(178,'dokonÄeno',0,0,0,0),(179,'mÅ¯Å¾eÅ¡',0,0,0,0),(180,'vyzkouÅ¡et',0,0,0,0),(181,'script',0,2,0,0),(182,'4',0,1,0,0),(183,'vytvoÅ™il',0,1,0,0),(184,'zÅ™etÄ›zenÃ½',0,1,0,0),(185,'umÃ­',0,2,0,0),(186,'vyÅ™eÅ¡it',0,1,0,0),(187,'tvÅ¯j',0,1,0,0),(188,'vyzkouÅ¡ej',0,1,0,0),(189,'ho',0,1,0,0),(190,'dej',0,1,0,0),(191,'vÄ›dÄ›t',0,1,0,0),(192,'5',0,1,0,0),(193,'jiÅ¾',0,1,0,0),(194,'existuje',0,1,0,0),(195,'formÃ¡tovat',0,1,0,0),(196,'nestaÄÃ­',0,1,0,0),(197,'ti',0,1,0,0),(198,'bohuÅ¾el',0,1,0,0),(199,'opravdu',0,1,0,0),(200,'aby',0,1,0,0),(201,'umÄ›lo',0,1,0,0),(202,'ano',0,1,0,0),(203,'pÅ™esnÄ›',0,1,0,0),(204,'ono',0,1,0,0),(205,'dÄ›kuju',0,1,0,0);
/*!40000 ALTER TABLE `qa_words` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2017-06-13 18:19:21
