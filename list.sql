-- MySQL dump 10.13  Distrib 5.7.23, for Linux (x86_64)
--
-- Host: localhost    Database: db
-- ------------------------------------------------------
-- Server version	5.7.23-0ubuntu0.16.04.1

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
-- Table structure for table `airports`
--

DROP TABLE IF EXISTS `airports`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `airports` (
  `airportCode` varchar(3) NOT NULL,
  `airportName` varchar(20) NOT NULL,
  `airportLocation` varchar(100) NOT NULL,
  `cityId` int(4) DEFAULT NULL,
  `cityLocation` varchar(100) DEFAULT NULL,
  `cityName` varchar(20) DEFAULT NULL,
  `countryName` varchar(20) DEFAULT NULL,
  `continentName` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`airportCode`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `airports`
--

LOCK TABLES `airports` WRITE;
/*!40000 ALTER TABLE `airports` DISABLE KEYS */;
INSERT INTO `airports` VALUES ('AAN','艾因国际机场','24.2616997,55.6091995',194,'24.466884,54.366338',NULL,'阿联酋','亚洲'),('ADL','阿德莱德机场','-34.946156,138.533238',4,'-34.929865,138.600374',NULL,'澳大利亚','大洋洲'),('ADS','艾迪生机场','32.9686012,-96.8364029',52,'32.776204,-96.796936',NULL,'美国','北美洲'),('AKL','奥克兰国际机场','-37.0080986,174.7920074',14,'-36.849305,174.763479',NULL,'新西兰','大洋洲'),('AMS','阿姆斯特丹机场','52.3086014,4.7638898',153,'52.370262,4.895353',NULL,'荷兰','欧洲'),('ANR','安特卫普机场','51.1893997,4.4602799',122,'50.849394,4.351486',NULL,'比利时','欧洲'),('ARN','斯德哥尔摩阿兰达国际机场','59.649762,17.923781',159,'59.328656,18.068695',NULL,'瑞典','欧洲'),('ATH','雅典国际机场（埃勒弗瑟里奥斯 韦尼泽罗斯','37.935647,23.948416',173,'37.983768,23.729370',NULL,'希腊','欧洲'),('ATL','亚特兰大国际机场','33.640728,-84.4277',59,'33.748624,-84.388160',NULL,'美国','北美洲'),('AUH','阿布扎比国际机场','24.4330006,54.6511002',194,'24.466884,54.366338',NULL,'阿联酋','亚洲'),('AVN','阿维尼翁-曹姆机场','43.907299,4.9018302',145,'43.95,4.81',NULL,'法国','欧洲'),('AVV','阿瓦伦机场','-38.0393982,144.4689941',3,'-37.815053,144.962908',NULL,'澳大利亚','大洋洲'),('BCN','巴塞罗那机场','41.297445,2.083294',168,'41.385002,2.173294',NULL,'西班牙','欧洲'),('BER','勃兰登堡机场','52.366697,13.521702',131,'52.519804,13.404945',NULL,'德国','欧洲'),('BGY','贝加莫机场','45.6739006,9.7041702',180,'45.465082,9.186144',NULL,'意大利','欧洲'),('BHX','伯明翰国际机场','52.452382,-1.743507',189,'52.486245,-1.890518',NULL,'英国','欧洲'),('BKK','素万那普国际机场','13.689999,100.750112',230,'13.756137,100.501747',NULL,'泰国','亚洲'),('BLQ','博洛尼亚机场','44.5344725,11.2903236',947,'44.492203,11.343527',NULL,'意大利','欧洲'),('BNE','布里斯班机场','-27.394214,153.12183',5,'-27.473661,153.023459',NULL,'澳大利亚','大洋洲'),('BOD','波尔多机场','44.8283005,-0.715556',305,'44.836749,-0.580062',NULL,'法国','欧洲'),('BOS','洛干国际机场','42.365613,-71.00956',50,'42.360093,-71.059013',NULL,'美国','北美洲'),('BRU','布鲁塞尔机场','50.900992,4.485585',122,'50.849394,4.351486',NULL,'比利时','欧洲'),('BUD','布达佩斯机场','47.438459,19.252296',177,'47.497898,19.040159',NULL,'匈牙利','欧洲'),('BUF','布法罗机场','42.9404984,-78.7322006',653,'42.888077,-78.869753',NULL,'美国','北美洲'),('BUR','伯班克机场','34.2006989,-118.3590012',42,'34.0687808,-117.9385944',NULL,'美国','北美洲'),('BVA','博瓦伊提勒机场','49.4543991,2.1127801',138,'48.856381,2.352135',NULL,'法国','欧洲'),('BWI','巴尔的摩机场（巴尔的摩华盛顿国际机场）','39.1753998,-76.6682968',49,'38.907047,-77.036947',NULL,'美国','北美洲'),('CBR','堪培拉机场','-35.3069,149.1950073',273,'-35.283866,149.125892',NULL,'澳大利亚','大洋洲'),('CDG','戴高乐国际机场','49.009670,2.547860',138,'48.856381,2.352135',NULL,'法国','欧洲'),('CFE','奥尔纳特机场','45.7900531,3.15982459999998',852,'45.7779298,3.0769756',NULL,'法国','欧洲'),('CGH','孔戈尼亚斯国际机场','-23.5100742,-46.6404864',112,'-23.5501998,-46.6328542',NULL,'巴西','南美洲'),('CGN','科隆机场','50.8658981,7.1427398',270,'50.937237,6.960477',NULL,'德国','欧洲'),('CHC','克赖斯特彻奇机场','-43.486398,172.53687',32,'-43.532119,172.635941',NULL,'新西兰','大洋洲'),('CIA','西阿姆皮诺机场','41.800381,12.240035',181,'41.901511,12.496859',NULL,'意大利','欧洲'),('CJU','济州国际机场','33.510414,126.491353',205,'33.500237,126.531235',NULL,'韩国','亚洲'),('CNS','凯恩斯机场','-16.877763,145.749935',7,'-16.920387,145.771101',NULL,'澳大利亚','大洋洲'),('CNX','清迈国际机场','18.7667999,98.9626007',232,'18.705996,98.981819',NULL,'泰国','亚洲'),('CPH','哥本哈根机场','55.618006,12.650731',125,'55.676178,12.568023',NULL,'丹麦','欧洲'),('CPT','开普敦机场','-33.9694444444,18.5972222222',82,'-33.925670,18.425690',NULL,'南非','非洲'),('CRL','查勒罗伊南机场','50.4592018,4.4538202',122,'50.849394,4.351486',NULL,'比利时','欧洲'),('CTS','新千岁机场','42.792594,141.670478',224,'43.040445,141.337112',NULL,'日本','亚洲'),('DAL','爱田机场','32.8470993,-96.851799',52,'32.776204,-96.796936',NULL,'美国','北美洲'),('DCA','里根国家机场','38.851242,-77.040231',49,'38.907047,-77.036947',NULL,'美国','北美洲'),('DEN','丹佛国际机场','39.856096,-104.673738',63,'39.738966,-104.990574',NULL,'美国','北美洲'),('DFW','达拉斯-沃思堡国际机场','32.898530,-97.042390',52,'32.776204,-96.796936',NULL,'美国','北美洲'),('DMC','阿勒马克图姆机场','24.8966667,55.1613889',193,'25.204788,55.271875',NULL,'阿联酋','亚洲'),('DME','德莫杰多沃国际机场','55.410289,37.902333',133,'55.755782,37.618762',NULL,'俄罗斯','欧洲'),('DPS','登巴萨国际机场','-8.7481699,115.1669998',248,'-8.347551,115.148009',NULL,'印度尼西亚','亚洲'),('DTW','大都会国际机场','42.2123985,-83.3534012',72,'42.331331,-83.045668',NULL,'美国','北美洲'),('DUB','都柏林机场','53.421299,-6.2700701',116,'53.349111,-6.260544',NULL,'爱尔兰','欧洲'),('DUS','杜塞尔多夫机场','51.282778,6.762291',130,'51.225825,6.772808',NULL,'德国','欧洲'),('DXB','迪拜国际机场','25.253175,55.365673',193,'25.204788,55.271875',NULL,'阿联酋','亚洲'),('EDI','爱丁堡机场','55.9500008,-3.3724999',192,'55.9435,-3.1849',NULL,'英国','欧洲'),('EWR','纽瓦克机场','40.6925011,-74.1687012',43,'40.712792,-74.005929',NULL,'美国','北美洲'),('FAB','法恩堡机场','51.2757988,-0.776333',187,'51.507291,-0.127777',NULL,'英国','欧洲'),('FCO','费尤米西诺机场','41.799887,12.246238',181,'41.901511,12.496859',NULL,'意大利','欧洲'),('FLR','佛罗伦萨机场','43.8100014,11.2051001',183,'43.769143,11.255653',NULL,'意大利','欧洲'),('FRA','法兰克福机场','50.037947,8.562152',128,'50.112124,8.678599',NULL,'德国','欧洲'),('FUK','福冈机场','33.590314,130.446709',228,'33.568397,130.358389',NULL,'日本','亚洲'),('GIG','加利昂国际机场','-22.813717,-43.250099',113,'-22.9068027,-43.1728115',NULL,'巴西','南美洲'),('GMP','金浦国际机场','37.558654,126.794474',204,'37.566418,126.978102',NULL,'韩国','亚洲'),('GOT','哥德堡－兰德维特机场','57.6627998,12.2798004',160,'57.7086726,11.9767835',NULL,'瑞典','欧洲'),('GRU','瓜鲁尔霍斯国际机场','-23.434553,-46.478126',112,'-23.5501998,-46.6328542',NULL,'巴西','南美洲'),('GVA','日内瓦-考因特林机场','46.23701,6.109156',162,'46.198064,6.142479',NULL,'瑞士','欧洲'),('HAM','汉堡机场','53.633558,9.997445',132,'53.551077,9.993568',NULL,'德国','欧洲'),('HHN','哈恩机场','49.9487,7.2638898',128,'50.112124,8.678599',NULL,'德国','欧洲'),('HKG','香港国际机场','22.3079504,113.9184552',1269,'22.2794809,114.1756388',NULL,'中国香港','亚洲'),('HKT','普吉国际机场','8.1132002,98.3169022',235,'7.983022,98.331605',NULL,'泰国','亚洲'),('HND','羽田国际机场','35.549441,139.779791',217,'35.708853,139.732661',NULL,'日本','亚洲'),('HNL','火奴鲁鲁机场','21.3329135,-157.9211229',46,'21.306459,-157.858816',NULL,'美国','北美洲'),('HNM','哈纳机场 ','20.795905,-156.015847',284,'20.8029957,-156.3379827',NULL,'美国','北美洲'),('HOU','威廉·P·霍比机场','29.654107,-95.276614',58,'29.760138,-95.369749',NULL,'美国','北美洲'),('HUN','花莲机场','24.0230999,121.6179962',281,'23.949992,121.551082',NULL,'中国台湾','亚洲'),('IAD','杜勒斯国际机场','38.953116,-77.456539',49,'38.907047,-77.036947',NULL,'美国','北美洲'),('IAH','乔治布什国际机场','29.99022,-95.336783',58,'29.760138,-95.369749',NULL,'美国','北美洲'),('IBR','茨城机场','36.1810989,140.4149933',217,'35.708853,139.732661',NULL,'日本','亚洲'),('ICN','仁川国际机场','37.460191,126.440696',204,'37.566418,126.978102',NULL,'韩国','亚洲'),('IST','阿塔蒂尔克国际机场','40.9819809,28.8178879',165,'41.004965,28.976989',NULL,'土耳其','欧洲'),('ITM','伊丹机场','34.78958,135.43809',218,'34.691889,135.499999',NULL,'日本','亚洲'),('JFK','肯尼迪机场','40.641311,-73.778139',43,'40.712792,-74.005929',NULL,'美国','北美洲'),('JHM','卡帕卢阿机场','20.962807,-156.673130',284,'20.8029957,-156.3379827',NULL,'美国','北美洲'),('JNB','约翰内斯堡国际机场','-26.136673,28.241146',78,'-26.205820,28.047063',NULL,'南非','非洲'),('KEF','雷克雅未克国际机场','63.9850006,-22.6056004',124,'64.1316,-21.8827',NULL,'冰岛','欧洲'),('KHH','高雄国际机场','22.5771008,120.3499985',277,'22.638270,120.302411',NULL,'中国台湾','亚洲'),('KIX','关西国际机场','34.432002,135.230394',218,'34.691889,135.499999',NULL,'日本','亚洲'),('KTM','特里布胡凡机场','27.69809,85.359223',213,'27.699822,85.333343',NULL,'尼泊尔','亚洲'),('KUL','吉隆坡国际机场','2.75419,101.70474',211,'3.138146,101.684624',NULL,'马来西亚','亚洲'),('LAS','麦克卡兰国际机场','36.084,-115.153739',45,'36.198402,-115.117365',NULL,'美国','北美洲'),('LAX','洛杉矶机场','33.941589,-118.40853',42,'34.0687808,-117.9385944',NULL,'美国','北美洲'),('LBG','布尔歇机场','48.9693985,2.44139',138,'48.856381,2.352135',NULL,'法国','欧洲'),('LCY','伦敦城市机场','51.504650,0.049261',187,'51.507291,-0.127777',NULL,'英国','欧洲'),('LED','圣彼得堡机场','59.8003006,30.2625008',134,'59.933618,30.333297',NULL,'俄罗斯','欧洲'),('LGA','拉瓜迪机场','40.776927,-73.873966',43,'40.712792,-74.005929',NULL,'美国','北美洲'),('LGW','盖特威克机场','51.153588,-0.182063',187,'51.507291,-0.127777',NULL,'英国','欧洲'),('LHR','希斯罗机场','51.470022,-0.454296',187,'51.507291,-0.127777',NULL,'英国','欧洲'),('LIL','里尔-莱斯坎机场','50.5619011,3.0894401',302,'50.6297257,3.0571831',NULL,'法国','欧洲'),('LIN','利纳特机场','45.443672,9.271708',180,'45.465082,9.186144',NULL,'意大利','欧洲'),('LIS','里斯本机场','38.775594,-9.135367',158,'38.722168,-9.139197',NULL,'葡萄牙','欧洲'),('LPA','大加那利机场','27.9393546,-15.3874452',168,'41.385002,2.173294',NULL,'西班牙','欧洲'),('LTN','卢顿机场','51.876182,-0.372125',187,'51.507291,-0.127777',NULL,'英国','欧洲'),('LWM','劳伦斯市政机场','42.7166667,-71.1166667',50,'42.360093,-71.059013',NULL,'美国','北美洲'),('LYS','里昂萨托拉斯机场','45.720355,5.079496',142,'45.764033,4.835550',NULL,'法国','欧洲'),('MAD','马德里机场','40.483936,-3.567952',167,'40.416109,-3.703119',NULL,'西班牙','欧洲'),('MAN','曼彻斯特机场 ','53.358803,-2.27273',188,'53.480719,-2.242652',NULL,'英国','欧洲'),('MCO','奥兰多国际机场','28.431158,-81.308083',62,'28.537654,-81.379350',NULL,'美国','北美洲'),('MDW','米德威机场','41.786776,-87.752188',47,'41.878475,-87.629470',NULL,'美国','北美洲'),('MEB','埃森多恩机场','-37.7280998,144.9019928',3,'-37.815053,144.962908',NULL,'澳大利亚','大洋洲'),('MEL','墨尔本国际机场（图拉马莱恩机场）','-37.6733017,144.8430023',3,'-37.815053,144.962908',NULL,'澳大利亚','大洋洲'),('MIA','迈阿密国际机场','25.795865,-80.287046',51,'25.761590,-80.191684',NULL,'美国','北美洲'),('MPL','迈迪特雷尼机场','43.5790361542844,3.96453583071898',858,'43.6088584,3.8745945',NULL,'法国','欧洲'),('MRS','马赛普罗旺斯机场','43.438401,5.214371',140,'43.296510,5.369519',NULL,'法国','欧洲'),('MUC','弗朗茨约瑟夫机场','48.353655,11.775060',129,'48.135052,11.582080',NULL,'德国','欧洲'),('MXP','马尔彭萨机场','45.630062,8.725531',180,'45.465082,9.186144',NULL,'意大利','欧洲'),('NAP','那不勒斯机场','40.8833333333,14.2888888889',944,'40.8416,14.2894',NULL,'意大利','欧洲'),('NCE','尼斯机场','43.6584015,7.2158699',139,'43.710000,7.261958',NULL,'法国','欧洲'),('NGO','中部国际机场','34.859094,136.8146',223,'35.181371,136.906552',NULL,'日本','亚洲'),('NRT','成田国际机场','35.771987,140.39285',217,'35.708853,139.732661',NULL,'日本','亚洲'),('NUE','纽伦堡机场','49.4986992,11.0669003',312,'49.451951,11.076609',NULL,'德国','欧洲'),('OGG','卡胡路伊机场','20.896567,-156.432916',284,'20.8029957,-156.3379827',NULL,'美国','北美洲'),('OKA','那霸机场','26.1958008,127.6460037',222,'26.210891,127.685613',NULL,'日本','亚洲'),('OOL','黄金海岸机场','-28.165645,153.509074',6,'-28.017385,153.425434',NULL,'澳大利亚','大洋洲'),('OPO','波尔图机场','41.2481003,-8.6813898',286,'41.156973,-8.629209',NULL,'葡萄牙','欧洲'),('ORD','奥黑尔国际机场','41.979796,-87.907708',47,'41.878475,-87.629470',NULL,'美国','北美洲'),('ORY','奥利机场','48.726236,2.365258',138,'48.856381,2.352135',NULL,'法国','欧洲'),('OSF','奥斯塔夫耶沃','55.511250,37.506986',133,'55.755782,37.618762',NULL,'俄罗斯','欧洲'),('OSL','奥斯陆国际机场','60.1939011,11.1004',157,'59.913826,10.752222',NULL,'挪威','欧洲'),('PHL','费城国际机场','39.874396,-75.242423',66,'39.952399,-75.165240',NULL,'美国','北美洲'),('PNH','金边机场','11.546111,104.84778',209,'11.543963,104.892247',NULL,'柬埔寨','亚洲'),('PRG','布拉格鲁兹耶内机场（布拉格瓦茨拉夫・哈维','50.1007996,14.2600002',154,'50.0757462,14.4381684',NULL,'捷克','欧洲'),('QEF','埃格尔斯巴赫机场','49.9599991,8.645833',128,'50.112124,8.678599',NULL,'德国','欧洲'),('REP','暹粒机场','13.4106998,103.8130035',290,'13.368629,103.844866',NULL,'柬埔寨','亚洲'),('RKV','雷克雅未克国内机场','64.1299973,-21.9405994',124,'64.1316,-21.8827',NULL,'冰岛','欧洲'),('RMQ','清泉岗机场','24.2646999,120.6210022',279,'24.141804,120.665595',NULL,'中国台湾','亚洲'),('SAN','圣迭戈国际机场','32.7336006,-117.1900024',262,'32.8245525,-117.0951632',NULL,'美国','北美洲'),('SAO','孔戈尼亚斯国际机场','-23.627335,-46.656670',112,'-23.5501998,-46.6328542',NULL,'巴西','南美洲'),('SAW','萨比哈哥克赛恩机场','40.8986015,29.3092003',165,'41.004965,28.976989',NULL,'土耳其','欧洲'),('SDU','圣杜蒙特机场','-22.911154,-43.164962',113,'-22.9068027,-43.1728115',NULL,'巴西','南美洲'),('SEA','西雅图塔克马国际机场','47.450250,-122.308696',48,'47.606067,-122.332001',NULL,'美国','北美洲'),('SEN','绍森德机场','51.5713997,0.695556',187,'51.507291,-0.127777',NULL,'英国','欧洲'),('SFB','桑福德机场','28.7775993,-81.2375031',62,'28.537654,-81.379350',NULL,'美国','北美洲'),('SFO','旧金山机场','37.621313,-122.378955',44,'37.774764,-122.418825',NULL,'美国','北美洲'),('SIN','樟宜国际机场','1.36442,103.991531',239,'1.278752,103.851246',NULL,'新加坡','亚洲'),('SLC','盐湖城国际机场','40.7883987,-111.9779968',628,'40.760556,-111.891068',NULL,'美国','北美洲'),('STN','斯坦斯特德机场','51.885606,0.238776',187,'51.507291,-0.127777',NULL,'英国','欧洲'),('STR','斯图加特机场','48.6895454,9.19298070000002',1090,'48.775990,9.182936',NULL,'德国','欧洲'),('SVO','谢诺梅杰沃机场 ','55.973648,37.412471',133,'55.755782,37.618762',NULL,'俄罗斯','欧洲'),('SVQ','塞维利亚机场','37.4179993,-5.8931098',287,'37.3828,-5.9732',NULL,'西班牙','欧洲'),('SXB','斯特拉斯堡恩特扎姆机场','48.54444,7.62757959999999',870,'48.5726956,7.7538209',NULL,'法国','欧洲'),('SXF','舍讷费尔德机场（肖尔内菲尔德机场）','52.385389,13.521572',131,'52.519804,13.404945',NULL,'德国','欧洲'),('SYD','金斯福德·史密斯国际机场','-33.939923,151.175276',1,'-33.869788,151.206017',NULL,'澳大利亚','大洋洲'),('SZB','苏尔坦机场','3.1305799,101.5490036',211,'3.138146,101.684624',NULL,'马来西亚','亚洲'),('TLS','图卢兹机场','43.6291008,1.36382',301,'43.604431,1.443995',NULL,'法国','欧洲'),('TNN','台南机场','22.9503994,120.2060013',278,'22.990954,120.206824',NULL,'中国台湾','亚洲'),('TPE','桃园机场','25.0776997,121.2330017',276,'25.032691,121.519745',NULL,'中国台湾','亚洲'),('TRN','都灵机场','45.070139,7.6700892',185,'45.070428,7.687022',NULL,'意大利','欧洲'),('TSA','松山机场','25.0694008,121.552002',276,'25.032691,121.519745',NULL,'中国台湾','亚洲'),('TXL','泰格尔机场','52.558826,13.288405',131,'52.519804,13.404945',NULL,'德国','欧洲'),('UKY','京都机场','35.0166667,135.7666667',227,'34.985087,135.756680',NULL,'日本','亚洲'),('USM','苏梅岛机场','9.5477896,100.0619965',234,'9.5011335,100.0014125',NULL,'泰国','亚洲'),('VCE','马可波罗机场','45.5052986,12.3519001',182,'45.440474,12.315310',NULL,'意大利','欧洲'),('VCP','坎皮纳斯','-22.859166,-47.109817',112,'-23.5501998,-46.6328542',NULL,'巴西','南美洲'),('VIE','维也纳机场','48.1102982,16.5697002',117,'48.206958,16.360834',NULL,'奥地利','欧洲'),('VKO','伏努科沃机场 ','55.599642,37.271213',133,'55.755782,37.618762',NULL,'俄罗斯','欧洲'),('WAW','萧邦机场','52.165699,20.9671001',298,'52.229994,21.012957',NULL,'波兰','欧洲'),('XFW','芬肯维尔德机场','53.538493,9.831417',132,'53.551077,9.993568',NULL,'德国','欧洲'),('XSP','实里达机场','1.41695,103.8679962',239,'1.278752,103.851246',NULL,'新加坡','亚洲'),('YMX','米拉贝尔机场','36.1314873,-80.2198444',38,'45.501853,-73.566729',NULL,'加拿大','北美洲'),('YOW','渥太华国际机场','45.319212,-75.669165',41,'45.421492,-75.696960',NULL,'加拿大','北美洲'),('YUL','特鲁德国际机场','45.469738,-73.74492',38,'45.501853,-73.566729',NULL,'加拿大','北美洲'),('YVR','温哥华机场','49.196691,-123.181512',36,'49.282786,-123.120867',NULL,'加拿大','北美洲'),('YXX','阿伯兹福德机场','49.0252991,-122.3610001',36,'49.282786,-123.120867',NULL,'加拿大','北美洲'),('YYC','卡尔加里国际机场','51.125061,-114.016889',40,'51.048500,-114.070958',NULL,'加拿大','北美洲'),('YYJ','维多利亚国际机场','48.6469002,-123.4260025',258,'48.4266797,-123.3584175',NULL,'加拿大','北美洲'),('ZQN','弗兰克敦机场','-45.0210991,168.7389984',33,'-45.031086,168.662544',NULL,'新西兰','大洋洲'),('ZRH','苏黎世机场','47.4508733,8.5662762',163,'47.368736,8.544955',NULL,'瑞士','欧洲');
/*!40000 ALTER TABLE `airports` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `carType`
--

DROP TABLE IF EXISTS `carType`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `carType` (
  `carTypeId` int(10) NOT NULL,
  `carDesc` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `carType`
--

LOCK TABLES `carType` WRITE;
/*!40000 ALTER TABLE `carType` DISABLE KEYS */;
INSERT INTO `carType` VALUES (100005,'紧凑5座'),(100007,'紧凑7座'),(100009,'经济9座'),(100012,'经济12座'),(200005,'舒适5座'),(200007,'舒适7座'),(200009,'舒适9座'),(200012,'舒适12座'),(300005,'豪华5座'),(300007,'豪华7座'),(300009,'豪华9座'),(300012,'豪华12座'),(400005,'奢华5座'),(400007,'奢华7座'),(400009,'奢华9座'),(400012,'奢华12座'),(100005,'紧凑5座'),(100007,'紧凑7座'),(100009,'经济9座'),(100012,'经济12座'),(200005,'舒适5座'),(200007,'舒适7座'),(200009,'舒适9座'),(200012,'舒适12座'),(300005,'豪华5座'),(300007,'豪华7座'),(300009,'豪华9座'),(300012,'豪华12座'),(400005,'奢华5座'),(400007,'奢华7座'),(400009,'奢华9座'),(400012,'奢华12座'),(100005,'紧凑5座'),(100007,'紧凑7座'),(100009,'经济9座'),(100012,'经济12座'),(200005,'舒适5座'),(200007,'舒适7座'),(200009,'舒适9座'),(200012,'舒适12座'),(300005,'豪华5座'),(300007,'豪华7座'),(300009,'豪华9座'),(300012,'豪华12座'),(400005,'奢华5座'),(400007,'奢华7座'),(400009,'奢华9座'),(400012,'奢华12座'),(100005,'紧凑5座'),(100007,'紧凑7座'),(100009,'经济9座'),(100012,'经济12座'),(200005,'舒适5座'),(200007,'舒适7座'),(200009,'舒适9座'),(200012,'舒适12座'),(300005,'豪华5座'),(300007,'豪华7座'),(300009,'豪华9座'),(300012,'豪华12座'),(400005,'奢华5座'),(400007,'奢华7座'),(400009,'奢华9座'),(400012,'奢华12座');
/*!40000 ALTER TABLE `carType` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cities`
--

DROP TABLE IF EXISTS `cities`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cities` (
  `cityId` int(4) NOT NULL,
  `cityLocation` varchar(100) NOT NULL,
  `cityName` varchar(100) NOT NULL,
  `countryName` varchar(100) NOT NULL,
  `continentName` varchar(50) NOT NULL,
  `intownTip` varchar(200) DEFAULT NULL,
  `outtownTip` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`cityId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cities`
--

LOCK TABLES `cities` WRITE;
/*!40000 ALTER TABLE `cities` DISABLE KEYS */;
INSERT INTO `cities` VALUES (1,'-33.869788,151.206017','悉尼','澳大利亚','大洋洲',NULL,NULL),(3,'-37.815053,144.962908','墨尔本','澳大利亚','大洋洲',NULL,NULL),(4,'-34.929865,138.600374','阿德莱德','澳大利亚','大洋洲',NULL,NULL),(5,'-27.473661,153.023459','布里斯班','澳大利亚','大洋洲',NULL,NULL),(6,'-28.017385,153.425434','黄金海岸','澳大利亚','大洋洲',NULL,NULL),(7,'-16.920387,145.771101','凯恩斯','澳大利亚','大洋洲',NULL,NULL),(14,'-36.849305,174.763479','奥克兰','新西兰','大洋洲',NULL,NULL),(32,'-43.532119,172.635941','基督城','新西兰','大洋洲',NULL,NULL),(33,'-45.031086,168.662544','皇后镇','新西兰','大洋洲',NULL,NULL),(36,'49.282786,-123.120867','温哥华','加拿大','北美洲',NULL,NULL),(38,'45.501853,-73.566729','蒙特利尔','加拿大','北美洲',NULL,NULL),(40,'51.048500,-114.070958','卡尔加里','加拿大','北美洲',NULL,NULL),(41,'45.421492,-75.696960','渥太华','加拿大','北美洲',NULL,NULL),(42,'34.0687808,-117.9385944','洛杉矶','美国','北美洲',NULL,NULL),(43,'40.712792,-74.005929','纽约','美国','北美洲',NULL,NULL),(44,'37.774764,-122.418825','旧金山','美国','北美洲',NULL,NULL),(45,'36.198402,-115.117365','拉斯维加斯','美国','北美洲',NULL,NULL),(46,'21.306459,-157.858816','夏威夷欧胡岛（檀香山）','美国','北美洲',NULL,NULL),(47,'41.878475,-87.629470','芝加哥','美国','北美洲',NULL,NULL),(48,'47.606067,-122.332001','西雅图','美国','北美洲',NULL,NULL),(49,'38.907047,-77.036947','华盛顿','美国','北美洲',NULL,NULL),(50,'42.360093,-71.059013','波士顿','美国','北美洲',NULL,NULL),(51,'25.761590,-80.191684','迈阿密','美国','北美洲',NULL,NULL),(52,'32.776204,-96.796936','达拉斯','美国','北美洲',NULL,NULL),(58,'29.760138,-95.369749','休斯敦','美国','北美洲',NULL,NULL),(59,'33.748624,-84.388160','亚特兰大','美国','北美洲',NULL,NULL),(62,'28.537654,-81.379350','奥兰多','美国','北美洲',NULL,NULL),(63,'39.738966,-104.990574','丹佛','美国','北美洲',NULL,NULL),(66,'39.952399,-75.165240','费城','美国','北美洲',NULL,NULL),(72,'42.331331,-83.045668','底特律','美国','北美洲',NULL,NULL),(78,'-26.205820,28.047063','约翰内斯堡','南非','非洲',NULL,NULL),(82,'-33.925670,18.425690','开普敦','南非','非洲',NULL,NULL),(112,'-23.5501998,-46.6328542','圣保罗','巴西','南美洲',NULL,NULL),(113,'-22.9068027,-43.1728115','里约热内卢','巴西','南美洲',NULL,NULL),(116,'53.349111,-6.260544','都柏林','爱尔兰','欧洲',NULL,NULL),(117,'48.206958,16.360834','维也纳','奥地利','欧洲',NULL,NULL),(122,'50.849394,4.351486','布鲁塞尔','比利时','欧洲',NULL,NULL),(124,'64.1316,-21.8827','雷克雅未克','冰岛','欧洲',NULL,NULL),(125,'55.676178,12.568023','哥本哈根','丹麦','欧洲',NULL,NULL),(128,'50.112124,8.678599','法兰克福','德国','欧洲',NULL,NULL),(129,'48.135052,11.582080','慕尼黑','德国','欧洲',NULL,NULL),(130,'51.225825,6.772808','杜塞尔多夫','德国','欧洲',NULL,NULL),(131,'52.519804,13.404945','柏林','德国','欧洲',NULL,NULL),(132,'53.551077,9.993568','汉堡','德国','欧洲',NULL,NULL),(133,'55.755782,37.618762','莫斯科','俄罗斯','欧洲',NULL,NULL),(134,'59.933618,30.333297','圣彼得堡','俄罗斯','欧洲',NULL,NULL),(138,'48.856381,2.352135','巴黎','法国','欧洲',NULL,NULL),(139,'43.710000,7.261958','尼斯','法国','欧洲',NULL,NULL),(140,'43.296510,5.369519','马赛','法国','欧洲',NULL,NULL),(142,'45.764033,4.835550','里昂','法国','欧洲',NULL,NULL),(145,'43.95,4.81','阿维尼翁','法国','欧洲',NULL,NULL),(153,'52.370262,4.895353','阿姆斯特丹','荷兰','欧洲',NULL,NULL),(154,'50.0757462,14.4381684','布拉格','捷克','欧洲',NULL,NULL),(157,'59.913826,10.752222','奥斯陆','挪威','欧洲',NULL,NULL),(158,'38.722168,-9.139197','里斯本','葡萄牙','欧洲',NULL,NULL),(159,'59.328656,18.068695','斯德哥尔摩','瑞典','欧洲',NULL,NULL),(160,'57.7086726,11.9767835','哥德堡','瑞典','欧洲',NULL,NULL),(162,'46.198064,6.142479','日内瓦','瑞士','欧洲',NULL,NULL),(163,'47.368736,8.544955','苏黎世','瑞士','欧洲',NULL,NULL),(165,'41.004965,28.976989','伊斯坦布尔','土耳其','欧洲',NULL,NULL),(167,'40.416109,-3.703119','马德里','西班牙','欧洲',NULL,NULL),(168,'41.385002,2.173294','巴塞罗那','西班牙','欧洲',NULL,NULL),(173,'37.983768,23.729370','雅典','希腊','欧洲',NULL,NULL),(177,'47.497898,19.040159','布达佩斯','匈牙利','欧洲',NULL,NULL),(180,'45.465082,9.186144','米兰','意大利','欧洲',NULL,NULL),(181,'41.901511,12.496859','罗马','意大利','欧洲',NULL,NULL),(182,'45.440474,12.315310','威尼斯','意大利','欧洲',NULL,NULL),(183,'43.769143,11.255653','佛罗伦萨','意大利','欧洲',NULL,NULL),(185,'45.070428,7.687022','都灵','意大利','欧洲',NULL,NULL),(187,'51.507291,-0.127777','伦敦','英国','欧洲',NULL,NULL),(188,'53.480719,-2.242652','曼彻斯特','英国','欧洲',NULL,NULL),(189,'52.486245,-1.890518','伯明翰','英国','欧洲',NULL,NULL),(192,'55.9435,-3.1849','爱丁堡','英国','欧洲',NULL,NULL),(193,'25.204788,55.271875','迪拜','阿联酋','亚洲',NULL,NULL),(194,'24.466884,54.366338','阿布扎比','阿联酋','亚洲',NULL,NULL),(204,'37.566418,126.978102','首尔','韩国','亚洲',NULL,NULL),(205,'33.500237,126.531235','济州岛','韩国','亚洲',NULL,NULL),(209,'11.543963,104.892247','金边','柬埔寨','亚洲',NULL,NULL),(211,'3.138146,101.684624','吉隆坡','马来西亚','亚洲',NULL,NULL),(213,'27.699822,85.333343','加德满都','尼泊尔','亚洲',NULL,NULL),(217,'35.708853,139.732661','东京','日本','亚洲',NULL,NULL),(218,'34.691889,135.499999','大阪','日本','亚洲',NULL,NULL),(222,'26.210891,127.685613','冲绳--那霸','日本','亚洲',NULL,NULL),(223,'35.181371,136.906552','名古屋','日本','亚洲',NULL,NULL),(224,'43.040445,141.337112','北海道--札幌','日本','亚洲',NULL,NULL),(227,'34.985087,135.756680','京都','日本','亚洲',NULL,NULL),(228,'33.568397,130.358389','福冈','日本','亚洲',NULL,NULL),(230,'13.756137,100.501747','曼谷','泰国','亚洲',NULL,NULL),(232,'18.705996,98.981819','清迈','泰国','亚洲',NULL,NULL),(234,'9.5011335,100.0014125','苏梅岛','泰国','亚洲',NULL,NULL),(235,'7.983022,98.331605','普吉岛','泰国','亚洲',NULL,NULL),(239,'1.278752,103.851246','新加坡','新加坡','亚洲',NULL,NULL),(248,'-8.347551,115.148009','巴厘岛','印度尼西亚','亚洲',NULL,NULL),(258,'48.4266797,-123.3584175','维多利亚','加拿大','北美洲',NULL,NULL),(262,'32.8245525,-117.0951632','圣地亚哥','美国','北美洲',NULL,NULL),(270,'50.937237,6.960477','科隆','德国','欧洲',NULL,NULL),(273,'-35.283866,149.125892','堪培拉','澳大利亚','大洋洲',NULL,NULL),(276,'25.032691,121.519745','台北','中国台湾','亚洲',NULL,NULL),(277,'22.638270,120.302411','高雄','中国台湾','亚洲',NULL,NULL),(278,'22.990954,120.206824','台南','中国台湾','亚洲',NULL,NULL),(279,'24.141804,120.665595','台中','中国台湾','亚洲',NULL,NULL),(281,'23.949992,121.551082','花莲','中国台湾','亚洲',NULL,NULL),(284,'20.8029957,-156.3379827','夏威夷茂宜岛','美国','北美洲',NULL,NULL),(286,'41.156973,-8.629209','波尔图','葡萄牙','欧洲',NULL,NULL),(287,'37.3828,-5.9732','塞维利亚','西班牙','欧洲',NULL,NULL),(290,'13.368629,103.844866','暹粒','柬埔寨','亚洲',NULL,NULL),(298,'52.229994,21.012957','华沙','波兰','欧洲',NULL,NULL),(301,'43.604431,1.443995','图卢兹','法国','欧洲',NULL,NULL),(302,'50.6297257,3.0571831','里尔','法国','欧洲',NULL,NULL),(305,'44.836749,-0.580062','波尔多','法国','欧洲',NULL,NULL),(312,'49.451951,11.076609','纽伦堡','德国','欧洲',NULL,NULL),(628,'40.760556,-111.891068','盐湖城','美国','北美洲',NULL,NULL),(653,'42.888077,-78.869753','布法罗','美国','北美洲',NULL,NULL),(852,'45.7779298,3.0769756','克莱蒙费朗','法国','欧洲',NULL,NULL),(858,'43.6088584,3.8745945','蒙彼利埃','法国','欧洲',NULL,NULL),(870,'48.5726956,7.7538209','斯特拉斯堡','法国','欧洲',NULL,NULL),(944,'40.8416,14.2894','那不勒斯','意大利','欧洲',NULL,NULL),(947,'44.492203,11.343527','博洛尼亚','意大利','欧洲',NULL,NULL),(1090,'48.775990,9.182936','斯图加特','德国','欧洲',NULL,NULL),(1269,'22.2794809,114.1756388','香港','中国香港','亚洲',NULL,NULL);
/*!40000 ALTER TABLE `cities` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-10-11 22:48:43