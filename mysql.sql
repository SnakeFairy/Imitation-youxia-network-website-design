CREATE DATABASE HuaGuo;

USE HuaGuo;

SET FOREIGN_KEY_CHECKS=0;

CREATE TABLE `GamesView` (
  `ID` int(255) unsigned NOT NULL AUTO_INCREMENT, /*序号*/
  `ZhName` varchar(255) NOT NULL, /*中文游戏名*/
  `EnName` varchar(255) NOT NULL, /*英文游戏名*/
  `Type` varchar(255) NOT NULL, /*游戏类型*/
  `Developer` varchar(255) NOT NULL, /*开发商*/
  `Date` date NOT NULL, /*日期（年月日）*/
  `Year` VARCHAR(255) NOT NULL, /*年份*/
  `Size` double(5,1) NOT NULL, /*游戏大小*/
  `Popularity` int(255) unsigned NOT NULL, /*受欢迎度*/
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8;

INSERT INTO `GamesView` VALUES ('1','艾尔登法环','Elden Ring','角色扮演RPG','FromSoftware','2022-02-25','2022','47.8','4569');
INSERT INTO `GamesView` VALUES ('2','双人成行','It Takes Two','动作游戏ACT','Hazelight','2021-03-27','2021','43.3','381');
INSERT INTO `GamesView` VALUES ('3','只狼：影逝二度','Sekiro Shadows Die Twice','动作游戏ACT','FromSoftware','2019-03-21','2019','14.6','3493');
INSERT INTO `GamesView` VALUES ('4','最后生还者Part2','The Last of Us 2','动作游戏ACT','Naughty Dog','2020-06-19','2020','0','0');
INSERT INTO `GamesView` VALUES ('5','战神4','God of War','动作游戏ACT','SIE Santa Monica Studio','2022-01-15','2022','38.4','2250');
INSERT INTO `GamesView` VALUES ('6','塞尔达传说：旷野之息','The Legend of Zelda Breath of the Wild','动作游戏ACT','Nintendo','2017-03-03','2017','6.4','2632');
INSERT INTO `GamesView` VALUES ('7','守望先锋','Overwatch','第一人称射击FPS','Blizzard','2016-05-24','2016','22.2','1254');
INSERT INTO `GamesView` VALUES ('8','巫师3：狂猎','The Witcher 3 Wild Hunt','角色扮演RPG','CD Projekt','2015-05-19','2015','45.5','2133');
INSERT INTO `GamesView` VALUES ('9','荒野大镖客：救赎2','Red Dead Redemption 2','第三人称射击TPS','Rockstar','2019-11-05','2019','119.5','4799');
INSERT INTO `GamesView` VALUES ('10','看门狗：军团','Watch Dogs Legion','动作游戏ACT','Ubisoft','2020-10-29','2020','61.1','704');
INSERT INTO `GamesView` VALUES ('11','迷失','Stray','冒险游戏AVG','BlueTwelve Studio','2022-07-20','2022','6.3','118');
INSERT INTO `GamesView` VALUES ('12','最终幻想7：重制版','Final Fantasy VII Remake','角色扮演RPG','Square Enix','2021-12-16','2021','94.3','2176');
INSERT INTO `GamesView` VALUES ('13','使命召唤19：现代战争2','Call of Duty Modern Warfare II','第一人称FPS','Activision, Inc.','2022-10-28','2022','17.4','187');
INSERT INTO `GamesView` VALUES ('14','漫威蜘蛛侠','Spiderman Remastered','动作游戏ACT','Insomniac Games','2022-08-12','2022','55.3','432');
INSERT INTO `GamesView` VALUES ('15','最后生还者重制版','The Last of Us Part 1','动作游戏ACT','Naughty Dog','2022-09-02','2022','0','169');
INSERT INTO `GamesView` VALUES ('16','师父','SIFU','动作游戏ACT','Sloclap','2022-02-08','2022','17.1','602');
INSERT INTO `GamesView` VALUES ('17','黑道圣徒：重启版','Saints Row','第三人称射击TPS','Volition Inc','2022-02-08','2022','17.1','151');
INSERT INTO `GamesView` VALUES ('18','生化危机2：重制版','Resident Evil 2 Remake','冒险游戏AVG','Capcom','2019-01-25','2019','17.3','4406');
INSERT INTO `GamesView` VALUES ('19','采石场惊魂','The Quarry','冒险游戏AVG','Supermassive Games','2022-06-10','2022','45.8','37');
INSERT INTO `GamesView` VALUES ('20','刺客信条：英灵殿','Assassin''s Creed Valhalla','动作游戏ACT','Ubisoft','2020-11-09','2020','58.2','1276');
INSERT INTO `GamesView` VALUES ('21','孤岛惊魂6','Far Cry 6','第一人称射击FPS','Ubisoft','2021-10-07','2021','79.3','880');
INSERT INTO `GamesView` VALUES ('22','死亡搁浅：导演剪辑版','DEATH STRANDING DIRECTOR''S CUT','动作游戏ACT','Hideo Kojima','2022-03-30','2022','69.1','697');
INSERT INTO `GamesView` VALUES ('23','底特律：我欲为人','Detroit Become Human','冒险游戏AVG','Quantic Dream','2019-12-12','2019','55.6','764');
INSERT INTO `GamesView` VALUES ('24','卧龙：苍天陨落','Wo Long Fallen Dynasty','冒险游戏AVG','Supermassive Games','2023-03-23','2023','0','10');
INSERT INTO `GamesView` VALUES ('25','消逝的光芒2','Dying Light2','冒险游戏AVG','Techland','2022-02-04','2022','39','996');
INSERT INTO `GamesView` VALUES ('26','地平线：零之曙光','Horizon Zero Dawn Complete Edition','角色扮演RPG','Guerrilla','2020-08-07','2020','56.1','1698');
INSERT INTO `GamesView` VALUES ('27','地平线：西之绝境','Horizon Forbidden West','角色扮演RPG','Guerrilla','2022-02-18','2022','0','283');
INSERT INTO `GamesView` VALUES ('28','暖雪','Warm Snow','角色扮演RPG','BadMudStudio','2022-01-19','2022','1.1','363');
INSERT INTO `GamesView` VALUES ('29','德军总部：新血脉','Wolfenstein Youngblood','第一人称射击FPS','Bethesda','2019-07-26','2019','39.8','383');
INSERT INTO `GamesView` VALUES ('30','文明6','Sid Meier''s Civilization VI','策略战棋SLG','2K Games','2016-10-21','2016','12.5','868');
INSERT INTO `GamesView` VALUES ('31','文明6：迭起兴衰','Sid Meier''s Civilization VI Rise and Fall','策略战棋SLG','2K Games','2018-02-08','2018','0','662');
INSERT INTO `GamesView` VALUES ('32','狙击精英4','Sniper Elite 4','第三人称射击TPS','Rebellion','2017-02-14','2017','52.8','1164');
INSERT INTO `GamesView` VALUES ('33','灵媒','The Medium','冒险游戏AVG','Bloober Team SA','2021-01-28','2021','38.9','67');
INSERT INTO `GamesView` VALUES ('34','神秘海域：盗贼传奇合辑','UNCHARTED Legacy of Thieves Collection','冒险游戏AVG','Naughty Dog','2022-10-19','2022','67.4','1797');
INSERT INTO `GamesView` VALUES ('35','怪物猎人：世界','Monster Hunter World','动作游戏ACT','Capcom','2018-08-10','2018','98.3','2531');
INSERT INTO `GamesView` VALUES ('36','如龙7：光与暗的行踪','Yakuza 7','角色扮演RPG','SEGA','2020-11-10','2020','40.5','205');
INSERT INTO `GamesView` VALUES ('37','量子破碎','Quantum Break','第三人称射击TPS','Remedy','2016-04-05','2016','42.2','292');
INSERT INTO `GamesView` VALUES ('38','彩虹六号：围攻','Rainbow Six Siege','第一人称射击FPS','Ubisoft','2015-11-28','2015','18.2','321');
INSERT INTO `GamesView` VALUES ('39','极限竞速：地平线4','Forza Horizon 4','赛车竞速RAC','Playground Games','2018-10-02','2018','91.3','1773');
INSERT INTO `GamesView` VALUES ('40','极限竞速：地平线5','Forza Horizon 5','赛车竞速RAC','Playground Games','2021-11-09','2021','117','328');
INSERT INTO `GamesView` VALUES ('41','NBA 2K23','NBA 2K23','体育竞技SPG','2K Sports','2022-09-09','2022','131.6','579');
INSERT INTO `GamesView` VALUES ('42','戴森球计划','Dyson Sphere Program','模拟经营SIM','Youthcat Studio','2021-01-21','2021','1.3','379');
INSERT INTO `GamesView` VALUES ('43','双点学院','Two Point Campus','模拟经营SIM','Two Point Studios','2022-08-09','2022','3.1','84');
INSERT INTO `GamesView` VALUES ('44','双点医院','Two Point Hospital','模拟经营SIM','Two Point Studios','2018-08-30','2018','4.1','921');
INSERT INTO `GamesView` VALUES ('45','拳皇15','The King Of Fighters 15','格斗游戏FTG','SNK','2022-02-17','2022','36.2','296');
INSERT INTO `GamesView` VALUES ('46','光环：无限','Halo Infinite','第一人称射击FPS','343 Industries','2021-12-08','2021','45.6','240');
INSERT INTO `GamesView` VALUES ('47','光环：士官长合集','Halo The Master Chief Collection','动作射击STG','343 Industries','2019-12-04','2019','27.7','470');
INSERT INTO `GamesView` VALUES ('48','星之卡比：探索发现','Kirby and the Forgotten Land','休闲益智PUZ','Nintendo','2022-03-25','2022','0','127');
INSERT INTO `GamesView` VALUES ('49','乐高DC超级反派','LEGO DC Super-Villains','动作游戏ACT','TT Games','2018-10-17','2018','18.4','47');
INSERT INTO `GamesView` VALUES ('50','生化危机：村庄','Resident Evil Village','冒险游戏AVG','Capcom','2021-05-07','2021','19.8','1397');
INSERT INTO `GamesView` VALUES ('51','茶杯头','Cuphead','动作游戏ACT','Studio MDHR','2017-09-29','2017','4.7','479');
INSERT INTO `GamesView` VALUES ('52','赛博朋克2077','Cyberpunk 2077','角色扮演RPG','CD Projekt RED','2020-12-10','2020','113.5','2077');
INSERT INTO `GamesView` VALUES ('53','鬼泣5','Devil May Cry V','动作游戏ACT','Capcom','2019-03-08','2019','24.3','2027');
INSERT INTO `GamesView` VALUES ('54','耻辱2','Dishonored 2','动作游戏ACT','Arkane','2016-11-10','2016','38.9','730');
INSERT INTO `GamesView` VALUES ('55','黑相集：灰冥界','The Dark Pictures Anthology House Of Ashes','冒险游戏AVG','Supermassive Games','2021-10-12','2021','25.9','321');
INSERT INTO `GamesView` VALUES ('56','镜之边缘：催化剂','Mirror''s Edge Catalyst','动作游戏ACT','EA DICE','2016-06-07','2016','20.6','247');
INSERT INTO `GamesView` VALUES ('57','黑暗之魂3','Dark Souls III','动作游戏ACT','FromSoftware','2016-04-12','2016','24.6','1450');
INSERT INTO `GamesView` VALUES ('58','对马岛之魂导演剪辑版','Ghost of Tsushima Directors Cut','动作游戏ACT','Sucker Punch','2021-08-20','2021','0','1457');
INSERT INTO `GamesView` VALUES ('59','四海兄弟3：决定版','Mafia III Definitive Edition','第三人称射击TPS','Hangar','2020-05-20','2020','61.5','994');
INSERT INTO `GamesView` VALUES ('60','质量效应：传奇版','Mass Effect Legendary Edition','角色扮演RPG','Bioware','2021-05-15','2021','106.5','132');
INSERT INTO `GamesView` VALUES ('61','瘟疫传说：无罪','A Plague Tale Innocence','冒险游戏AVG','Asobo Studio','2019-05-14','2019','34.5','307');
INSERT INTO `GamesView` VALUES ('62','往日不再','Days Gone','动作游戏ACT','Bend','2021-05-18','2021','57.1','812');
INSERT INTO `GamesView` VALUES ('63','死亡循环','Deathloop','第一人称射击FPS','Arkane','2021-09-14','2021','29.5','131');
INSERT INTO `GamesView` VALUES ('64','最终幻想15','Final Fantasy XV','角色扮演RPG','Square Enix','2018-03-07','2018','168','2334');
INSERT INTO `GamesView` VALUES ('65','合金装备5：终极体验版','Metal Gear Solid V The Definitive Experience','动作游戏ACT','Konami','2016-10-11','2016','31.5','453');
INSERT INTO `GamesView` VALUES ('66','地铁：离去','Metro Exodus','第一人称射击FPS','4A Games','2019-02-15','2019','74.9','983');
INSERT INTO `GamesView` VALUES ('67','奥日与鬼火意志','Ori and the Will of the Wisps','动作游戏ACT','Microsoft','2020-03-11','2020','4.3','399');
INSERT INTO `GamesView` VALUES ('68','煮糊了2','Overcooked 2','休闲益智PUZ','Ghost Town','2018-08-08','2018','6.1','192');
INSERT INTO `GamesView` VALUES ('69','杀手3','Hitman 3','第三人称射击TPS','Io Interactive','2021-01-20','2021','62','562');
INSERT INTO `GamesView` VALUES ('70','漫威银河护卫队','Marvels Guardians of the Galaxy','动作游戏ACT','Eidos','2021-10-27','2021','40.2','808');
INSERT INTO `GamesView` VALUES ('71','侠盗猎车手三部曲：终极版','Grand Theft Auto The Trilogy – The Definitive Edition','动作游戏ACT','Rockstar','2021-11-11','2021','29.9','334');

INSERT INTO `GamesView` VALUES ('72','刺客信条：奥德赛','Assassin''s Creed Odyssey','动作游戏ACT','Ubisoft','2018-10-05','2018','57.8','1946');
INSERT INTO `GamesView` VALUES ('73','刺客信条：起源','Assassin''s Creed Origins','动作游戏ACT','Ubisoft','2017-10-27','2017','67.2','1946');
INSERT INTO `GamesView` VALUES ('74','看门狗2','Watch Dogs 2','动作游戏ACT','Ubisoft','2016-11-29','2016','42','1220');
INSERT INTO `GamesView` VALUES ('75','孤岛惊魂5','Far Cry 5','第一人称射击FPS','Ubisoft','2018-03-27','2018','73.7','2616');
INSERT INTO `GamesView` VALUES ('76','刺客信条：枭雄','Assassin''s Creed Syndicate','动作游戏ACT','Ubisoft','2015-11-17','2015','59.8','1127');
INSERT INTO `GamesView` VALUES ('77','孤岛惊魂：原始杀戮','Far Cry Primal','动作游戏ACT','Ubisoft','2016-03-01','2016','15','546');
INSERT INTO `GamesView` VALUES ('78','微软模拟飞行','Microsoft Flight Simulator','模拟经营SIM','Asobo Studio','2020-08-18','2020','75.9','327');
INSERT INTO `GamesView` VALUES ('79','奥日与迷失森林','Ori and the Blind Forest','动作游戏ACT','Microsoft','2015-03-11','2015','4.6','862');
INSERT INTO `GamesView` VALUES ('80','如龙6：生命诗篇','Yakuza 6','动作游戏ACT','SEGA','2021-03-26','2021','34.1','253');
INSERT INTO `GamesView` VALUES ('81','如龙5：梦想的实现者','Yakuza 5','动作游戏ACT','SEGA','2021-01-28','2021','27.1','175');
INSERT INTO `GamesView` VALUES ('82','如龙4：传说继承者','Yakuza 4','动作游戏ACT','SEGA','2019-01-17','2019','34.1','253');
INSERT INTO `GamesView` VALUES ('83','如龙3','Yakuza 3','动作游戏ACT','SEGA','2021-01-28','2021','21.8','73');
INSERT INTO `GamesView` VALUES ('84','如龙：极2','Yakuza Kiwami 2','动作游戏ACT','SEGA','2019-05-09','2019','30.6','425');
INSERT INTO `GamesView` VALUES ('85','如龙：极','Yakuza Kiwami','动作游戏ACT','SEGA','2019-02-19','2019','21.16','347');
INSERT INTO `GamesView` VALUES ('86','如龙0：誓约的场所','Yakuza 0','动作游戏ACT','SEGA','2018-08-01','2018','14','410');
INSERT INTO `GamesView` VALUES ('87','丧尸围城 4','Dead Rising 4','角色扮演RPG','Capcom','2017-03-15','2017','14','806');
INSERT INTO `GamesView` VALUES ('88','如龙：维新极','Like a Dragon Ishin','动作游戏ACT','SEGA','2023-02-22','2023','0','1060');
INSERT INTO `GamesView` VALUES ('89','审判之眼：死神遗言重制版','Judgment Remastered','动作游戏ACT','SEGA','2022-09-14','2022','29.9','227');

insert into gamesview values (null,'刺客信条：叛变','Assassin''s Creed Rogue','动作游戏ACT','Ubisoft','2015-03-07','2015','8.1','353');
insert into gamesview values (null,'使命召唤18：先锋','Call of Duty Vanguard','第一人称射击FPS','Activision','2015-03-07','2015','8.1','353');
insert into gamesview values (null,'使命召唤17：黑色行动','Call of Duty Black Ops Cold War','第一人称射击FPS','Activision','2020-11-13','2020','82.5','1022');
insert into gamesview values (null,'使命召唤16：现代战争','Call of Duty Modern Warfare','第一人称射击FPS','Activision','2019-10-25','2019','164.3','892');
insert into gamesview values (null,'使命召唤15：黑色行动4','Call of Duty Black Ops 4','第一人称射击FPS','Activision','2018-10-12','2018','57','2033');
insert into gamesview values (null,'使命召唤14：二战','Call of Duty WWII','第一人称射击FPS','Activision','2017-11-03','2017','63','4023');
insert into gamesview values (null,'使命召唤13：无限战争','Call Of Duty Infinite Warfare','第一人称射击FPS','Activision','2016-11-04','2016','57.1','2111');
insert into gamesview values (null,'使命召唤12：黑色行动3','Call of Duty Black Ops 3','第一人称射击FPS','Activision','2015-11-06','2015','93.7','1689');
insert into gamesview values (null,'使命召唤11：高级战争','Call of Duty Advanced Warfare','第一人称射击FPS','Activision','2014-11-03','2014','64.1','1527');
insert into gamesview values (null,'使命召唤10：幽灵','Call of Duty Ghosts','第一人称射击FPS','Activision','2013-11-05','2013','47.2','1527');
insert into gamesview values (null,'黑相集：棉兰号','The Dark Pictures Man of Medan','冒险游戏AVG','Supermassive Games','2019-08-30','2019','27.5','188');
insert into gamesview values (null,'黑相集：希望渺茫','The Dark Pictures Little Hope','冒险游戏AVG','Supermassive Games','2020-10-30','2020','31.9','241');
insert into gamesview values (null,'黑相集：心中魔','The Dark Pictures The Devil in Me','冒险游戏AVG','Supermassive Games','2022-11-18','2022','38.6','543');

create table `admin` (
    `username` varchar(255) not null,
    `password` varchar(255) not null,
	`level` VARCHAR(255) not null,
    PRIMARY KEY (`username`)
)ENGINE=InnoDB DEFAULT CHARSET=utf8;

insert into `admin` values ('test','test123','Lv2');