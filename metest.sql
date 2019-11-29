/*
Navicat MySQL Data Transfer

Source Server         : localhost_3306
Source Server Version : 50716
Source Host           : localhost:3306
Source Database       : metest

Target Server Type    : MYSQL
Target Server Version : 50716
File Encoding         : 65001

Date: 2019-06-20 22:30:51
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for author
-- ----------------------------
DROP TABLE IF EXISTS `author`;
CREATE TABLE `author` (
  `ID` int(10) NOT NULL AUTO_INCREMENT,
  `Author` varchar(100) CHARACTER SET utf8 NOT NULL,
  `Nation` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `authorBrief` longtext CHARACTER SET utf8,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of author
-- ----------------------------
INSERT INTO `author` VALUES ('1', '贵志佑介', '日本', '好');
INSERT INTO `author` VALUES ('2', '埃莱娜·费兰特', '意大利', '好');
INSERT INTO `author` VALUES ('14', '约翰·威廉斯', '美', '好');
INSERT INTO `author` VALUES ('15', '埃默·托尔斯', '日本', '好');
INSERT INTO `author` VALUES ('16', '是枝裕和/佐野晶', '日本', '好');
INSERT INTO `author` VALUES ('17', '北山猛邦', '日本', '好');
INSERT INTO `author` VALUES ('18', '伊塔洛·卡尔维诺', '意大利', null);
INSERT INTO `author` VALUES ('19', '麦家', '中国', null);
INSERT INTO `author` VALUES ('20', 'S·A·阿列克谢耶维奇', '白俄罗斯', null);
INSERT INTO `author` VALUES ('21', '马塞尔·普鲁斯特/ 斯泰凡·厄埃', '法', null);
INSERT INTO `author` VALUES ('22', '安东尼·马拉 ', '美', null);
INSERT INTO `author` VALUES ('23', '刘慈欣', '中国', null);
INSERT INTO `author` VALUES ('30', '测试作者', '日', null);

-- ----------------------------
-- Table structure for books
-- ----------------------------
DROP TABLE IF EXISTS `books`;
CREATE TABLE `books` (
  `ID` int(10) NOT NULL AUTO_INCREMENT,
  `Type` varchar(100) CHARACTER SET utf8 NOT NULL,
  `Title` varchar(100) CHARACTER SET utf8 NOT NULL,
  `Pages` int(255) DEFAULT NULL,
  `Price` double(50,0) NOT NULL,
  `Brief` longtext CHARACTER SET utf8,
  `authorid` int(10) DEFAULT NULL,
  `pressid` int(10) DEFAULT NULL,
  PRIMARY KEY (`ID`,`Title`),
  KEY `author` (`authorid`),
  KEY `press` (`pressid`),
  CONSTRAINT `author` FOREIGN KEY (`authorid`) REFERENCES `author` (`ID`),
  CONSTRAINT `press` FOREIGN KEY (`pressid`) REFERENCES `press` (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=30 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of books
-- ----------------------------
INSERT INTO `books` VALUES ('1', '文学', '失踪的孩子', '480', '62', '“我的整个生命，只是一场为了提升社会地位的低俗斗争。”\r\n全球畅销近千万册被翻译成40多种语言\r\n《我的天才女友》《新名字的故事》《离开的，留下的》——\r\n那不勒斯四部曲NO.4令人欲罢不能的大结局\r\n穷尽友谊对一个人最极致的塑造\r\n《失踪的孩子》是“那不勒斯四部曲”的第四部，小说聚焦了莉拉和埃莱娜（“我”）的壮年和晚年，为她们持续了五十多年的友谊划上了一个令人心碎的句号。\r\n“我”为了爱情和写作，离开丈夫带着两个女儿回到了那不勒斯，不可避免地与莉拉，还有我曾想要逃离的城区再度变得亲密。“我”和莉拉甚至在同一年怀孕、生子，并经历了恐怖残暴的那不勒斯大地震，一切都分崩离析，一切又将被重建。\r\n“我”在不自觉中卷入莉拉秘密的企图——她希望利用我的名声和写作技巧来对抗城区陈腐而猖獗的恶势力。但在经历了生命最恐怖的打击之后，莉拉选择以一种怪异夸张的方式在城区彻底将自己流放。\r\n而“我”也将以惊人的韧性和诚实面对写作、爱情、家庭的失败。在经历了多年的自我怀疑之后，“我”决定忤逆（罔顾？）莉拉的告诫，将“我”和她一生的友谊写成一本小说，却招来了最深的背叛……', '2', '13');
INSERT INTO `books` VALUES ('2', '历史', '奥古斯都', '374', '56', '不同于《斯通纳》在蒙尘50年后才重回大众视野，《奥古斯都》一面世即获美国国家图书奖，时隔40多年仍然受赞誉，且因《斯通纳》的畅销而为更多读者所了解和喜爱，是一部经时间洗礼而魅力有增无减的佳作。如果说《斯通纳》 是每一段人生的镜子，那么《奥古斯都》就是每一个灵魂的肖像。', '14', '14');
INSERT INTO `books` VALUES ('3', '文学', '莫斯科绅士', '592', '80', '1922年，罗斯托夫伯爵被认定为不悔罪的贵族，被判软禁在克里姆林宫对面的大都会酒店。这位此前从未工作过一天，人生要务唯有追求智慧与学识的绅士，自此只能栖身于这家五星级酒店的阁楼，以独特的视角观望俄国在历史车轮下展开的巨变。他的人生也开启了崭新篇章。神秘的女演员、古灵精怪的少女、性格各异的主厨与侍者……种种邂逅与交往，让他体会到多样、微妙又丰厚的情感。酒店这一受限的空间，却让他的精神得以进入一个更为广阔的天地。', '15', '15');
INSERT INTO `books` VALUES ('4', '文学', '如父如子', '304', '50', '当意识到孩 子也在注视着自 己时，那一瞬间，便懂得了什么是如父如子。\r\n至今为止都过着一帆风顺的人生的野野宮良多，是大型建筑公司里的精英社员。他和妻子绿结婚多年，感情十分要好，两人共同养育着聪明乖巧的儿子庆多。本以为平静生活将一直持续的三人没有想到的是，一通来自庆多出生医院的 电话将这个小家庭卷到了风口浪尖。面对命中注定的血缘与日夜相伴的亲情，良多骄傲又脆弱的内心摇摆不定。两个家庭站在了人生的十字路口前。分分秒秒，经年累月积淀下来的父子亲情，早已超越了血缘的羁绊。', '16', '15');
INSERT INTO `books` VALUES ('5', '科幻', '来自新世界', '1075', '88', '“离开小町回头去看，有一件事我看得清清楚楚——我们的小町，很扭曲。\r\n\r\n为了维持小町的安定和秩序，不断杀害孩子们的小町，还能称之为人类的社会吗？人类从涂满鲜血的历史中走过，才抵达如今的状态。然而即使是和过去最黑暗的时代相比，今天的小町也是并不值得自豪的替代品。\r\n\r\n我们已经无法在神栖六十六町活下去了。小町不许我们活下去。只要被打上了失格的烙印，便无法再回到当初了。这不是对待人类的方式，而是和甄选不良品一样的做法，你不觉得吗？当烧瓷窖开启的时候，走型的、有裂纹的瓷器，等待它们的就是被敲碎的命运。”', '1', '1');
INSERT INTO `books` VALUES ('6', '推理', '我们偷走星座的理由', '288', '69', '事情變成這樣，\r\n或許全是因為我許下了不該許的願望……\r\n膽小倔強的單戀少女、無人島上的失憶妖精、\r\n操弄死者手機的寂寞詐欺師、苦等偵探出現的男孩、\r\n每日到醫院探望女孩的深情少年，\r\n他們都在內心珍藏著閃閃發光的小小心願：\r\n──想要暗戀的學長看自己一眼。\r\n──想離開時間永遠不會前進的魔法島嶼。\r\n──想逃離日復一日的失敗人生。\r\n──想化為石像的青梅竹馬回到自己身邊。\r\n──想為心儀的女孩摘下掛在夜空中的星星。\r\n他們的願望一一實現，\r\n但可別忘了，這個世界上不曾存在奇蹟，\r\n噩夢來臨前，他們才明白惡魔取走了什麼作為代價……\r\n【五則童話般美麗純淨，又似現實般無情殘忍的黑暗物語】\r\n\r\n', '17', '16');
INSERT INTO `books` VALUES ('7', '文学', '如果在冬夜，一个旅人', '300', '35', '卡尔维诺用小说搭起迷宫，与读者你一起做文字和思想的游戏，正如情欲开放了男人和女人的时空，阅读，也让读者、作者和作品碎成万花筒里的玻璃，自由变幻着世界。繁华镜像之间，你是否看见了卡尔维诺的狡黠？在大陆，王小波、苏童、阿城、止庵是他的忠实粉丝\r\n\r\n在台湾，朱天文，唐诺是卡尔维诺不余遗力的传播者\r\n\r\n在香港，梁文道说他一直在准备谈卡尔维诺，可是一直没准备好', '18', '17');
INSERT INTO `books` VALUES ('8', '科幻', '三体', '302', '23', '文化大革命如火如荼进行的同时。军方探寻外星文明的绝秘计划“红岸工程”取得了突破性进展。但在按下发射键的那一刻，历经劫难的叶文洁没有意识到，她彻底改变了人类的命运。地球文明向宇宙发出的第一声啼鸣，以太阳为中心，以光速向宇宙深处飞驰……\r\n四光年外，“三体文明”正苦苦挣扎——三颗无规则运行的太阳主导下的百余次毁灭与重生逼迫他们逃离母星。而恰在此时。他们接收到了地球发来的信息。在运用超技术锁死地球人的基础科学之后。三体人庞大的宇宙舰队开始向地球进发……\r\n人类的末日悄然来临。', '23', '18');
INSERT INTO `books` VALUES ('9', '小说', '人生海海', '345', '55', '“他是全村最出奇古怪的人，古怪的名目要扳着指头一个一个数：\r\n第一，他当过国民党军队的上校，是革命群众要斗争的对象。但大家一边斗争他，一边又巴结讨好他，家里出什么事都去找他拿主意。\r\n第二，都说他是太监，可我们小孩子经常偷看他那个地方，好像还是满当当的，有模有样的。\r\n第三， 他向来不出工，不干农活，天天空在家里看报纸，嗑瓜子，可日子过得比谁家都舒坦。还像养孩子一样养着一对猫，宝贝得不得了，简直神经病！”\r\n·\r\n《人生海海》讲述了一个人在时代中穿行缠斗的一生，离奇的故事里藏着让人叹息的人生况味,既有日常滋生的残酷，也有时间带来的仁慈。\r\n=========\r\n人生如海，总有阴冷暴虐的水域，也有轻柔温暖的洋流。\r\n·\r\n“生活摧残了他，但也让他穿越了生死恐惧和世态炎凉， 变得大彻大悟， 笑傲江湖。 ”\r\n他知道怎样在风光处耀目，也知道怎么在卑贱中自处。', '19', '19');
INSERT INTO `books` VALUES ('10', '文学', '切尔诺贝利的祭祷', '200', '15', '1986年4月26日，前苏联治下的乌克兰境内，切尔诺贝利核电站发生爆炸，这是人类史上最惨烈的技术悲剧之一。上万平民因放射性物质长期受到感染或致命；数万亩土地被污染，切尔诺贝利一夜之间化为废城。\r\n事故后十年，著名记者阿列克谢耶维奇冒着核辐射危险，深入事故发生现场，历时数年，访问了超过500位幸存者，用普通个体的声音平贴出时代的全景，书写了一部人类的启示录。在这里，平凡人物的真实经历比小说更惊人。每个人的声音都透视着历史的崩塌、国家机器的隐瞒、俄罗斯人的价值观，以及人们的愤怒、恐惧、勇敢、同情和爱。\r\n「切尔诺贝利核爆是二十世纪最重大的灾害事件，时至今日我还是不解，我所见证的究竟是过去还是未来？……一不小心，就会陷入恐惧的窠臼。」——阿列克谢耶维奇', '20', '20');
INSERT INTO `books` VALUES ('11', '文学', '追寻逝去的时光·第一卷：去斯万家那边 ', '224', '160', '这部漫画是在马塞尔·普鲁斯特的著名小说《追寻逝去的时光》基础上改编而成，对话与旁白均摘自小说原文，无一字增删。原著小说共分七卷，讲了叙述者的童年记忆、出入上流社会的经历、友谊、爱情和回忆。它讲了上流社会和半上流社会的浮华和众生相，精确地描述了“一战”前夕法国的社会、经济与阶层。', '21', '21');
INSERT INTO `books` VALUES ('12', '小说', '我们一无所有 ', '332', '50', '一部堪比米兰·昆德拉《笑忘书》的伟大作品。\r\n──《纽约时报》\r\n大时代、小人物的命运悲歌\r\n横扫欧美各大书评人榜单的畅销书作家安东尼·马拉作品\r\n用厚重而文艺的笔触控诉我们这个时代的罪恶\r\n诺贝尔文学奖得主奥尔罕·帕慕克盛赞\r\n《纽约时报》年度好书、《华盛顿邮报》年度好书、科克斯书评年度最佳小说、美国国家书评人年度最佳、美国艺术与文学学院文学奖、美国国家杂志年度小说奖\r\n这是一部回忆之书，由多个故事串联而成。全书在列宁格勒的地底隧道揭开序幕，在太阳系的边境谱下终曲。\r\n二十世纪三十年代，一位不成材的肖像画家受到苏联当局指派，删除官方照片和艺术作品之中的异议份子，而头一个对象就是他的弟弟。于是，他做出了“将自己弟弟的脸孔画入每一幅经他审查的图片中”的决定，其后的数十年，因为这一决定引出了无数串联的故事。\r\n一幅名为“午后空旷的牧野”的油画和一位肖像画家，一位传奇芭蕾女伶和她的曾孙女，一位失明的文物修护师，一位金盆洗手的帮派份子，一位在因地雷爆炸痛失妻儿的鳏夫，还有一位在战争中葬身在画中同一片牧野上的士兵……\r\n有多少人的生命，会因为一幅画而改变？在破碎而悲怆的生命最后一刻，要怎么说，我们曾经拥有过一切。', '22', '22');
INSERT INTO `books` VALUES ('29', '历史', '测试用书', '12', '222', 'ssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssss', '30', '29');

-- ----------------------------
-- Table structure for books_copy
-- ----------------------------
DROP TABLE IF EXISTS `books_copy`;
CREATE TABLE `books_copy` (
  `ID` int(10) NOT NULL AUTO_INCREMENT,
  `Type` varchar(100) CHARACTER SET utf8 NOT NULL,
  `Title` varchar(100) CHARACTER SET utf8 NOT NULL,
  `Author` varchar(100) CHARACTER SET utf8 NOT NULL,
  `Press` varchar(100) CHARACTER SET utf8 NOT NULL,
  `Pages` int(255) DEFAULT NULL,
  `Price` double(50,0) NOT NULL,
  `Nation` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `Brief` longtext CHARACTER SET utf8,
  `authorid` int(10) DEFAULT NULL,
  `pressid` int(10) DEFAULT NULL,
  PRIMARY KEY (`ID`,`Title`),
  KEY `author` (`authorid`),
  KEY `press` (`pressid`),
  CONSTRAINT `books_copy_ibfk_1` FOREIGN KEY (`authorid`) REFERENCES `author` (`ID`),
  CONSTRAINT `books_copy_ibfk_2` FOREIGN KEY (`pressid`) REFERENCES `press` (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of books_copy
-- ----------------------------
INSERT INTO `books_copy` VALUES ('1', '文学', '失踪的孩子', '埃莱娜·费兰特', '人民文学出版社', '480', '62', '意', '“我的整个生命，只是一场为了提升社会地位的低俗斗争。”\r\n全球畅销近千万册被翻译成40多种语言\r\n《我的天才女友》《新名字的故事》《离开的，留下的》——\r\n那不勒斯四部曲NO.4令人欲罢不能的大结局\r\n穷尽友谊对一个人最极致的塑造\r\n《失踪的孩子》是“那不勒斯四部曲”的第四部，小说聚焦了莉拉和埃莱娜（“我”）的壮年和晚年，为她们持续了五十多年的友谊划上了一个令人心碎的句号。\r\n“我”为了爱情和写作，离开丈夫带着两个女儿回到了那不勒斯，不可避免地与莉拉，还有我曾想要逃离的城区再度变得亲密。“我”和莉拉甚至在同一年怀孕、生子，并经历了恐怖残暴的那不勒斯大地震，一切都分崩离析，一切又将被重建。\r\n“我”在不自觉中卷入莉拉秘密的企图——她希望利用我的名声和写作技巧来对抗城区陈腐而猖獗的恶势力。但在经历了生命最恐怖的打击之后，莉拉选择以一种怪异夸张的方式在城区彻底将自己流放。\r\n而“我”也将以惊人的韧性和诚实面对写作、爱情、家庭的失败。在经历了多年的自我怀疑之后，“我”决定忤逆（罔顾？）莉拉的告诫，将“我”和她一生的友谊写成一本小说，却招来了最深的背叛……', '2', '13');
INSERT INTO `books_copy` VALUES ('2', '历史', '奥古斯都', '约翰·威廉斯', '上海人民出版社', '374', '56', '美', '不同于《斯通纳》在蒙尘50年后才重回大众视野，《奥古斯都》一面世即获美国国家图书奖，时隔40多年仍然受赞誉，且因《斯通纳》的畅销而为更多读者所了解和喜爱，是一部经时间洗礼而魅力有增无减的佳作。如果说《斯通纳》 是每一段人生的镜子，那么《奥古斯都》就是每一个灵魂的肖像。', '14', '14');
INSERT INTO `books_copy` VALUES ('3', '文学', '莫斯科绅士', '埃默·托尔斯', '湖南文艺出版社', '592', '80', '日', '1922年，罗斯托夫伯爵被认定为不悔罪的贵族，被判软禁在克里姆林宫对面的大都会酒店。这位此前从未工作过一天，人生要务唯有追求智慧与学识的绅士，自此只能栖身于这家五星级酒店的阁楼，以独特的视角观望俄国在历史车轮下展开的巨变。他的人生也开启了崭新篇章。神秘的女演员、古灵精怪的少女、性格各异的主厨与侍者……种种邂逅与交往，让他体会到多样、微妙又丰厚的情感。酒店这一受限的空间，却让他的精神得以进入一个更为广阔的天地。', '15', '15');
INSERT INTO `books_copy` VALUES ('4', '文学', '如父如子', '是枝裕和/佐野晶', '湖南文艺出版社', '304', '50', '日', '当意识到孩 子也在注视着自 己时，那一瞬间，便懂得了什么是如父如子。\r\n至今为止都过着一帆风顺的人生的野野宮良多，是大型建筑公司里的精英社员。他和妻子绿结婚多年，感情十分要好，两人共同养育着聪明乖巧的儿子庆多。本以为平静生活将一直持续的三人没有想到的是，一通来自庆多出生医院的 电话将这个小家庭卷到了风口浪尖。面对命中注定的血缘与日夜相伴的亲情，良多骄傲又脆弱的内心摇摆不定。两个家庭站在了人生的十字路口前。分分秒秒，经年累月积淀下来的父子亲情，早已超越了血缘的羁绊。', '16', '15');
INSERT INTO `books_copy` VALUES ('5', '科幻', '来自新世界', '贵志佑介', '上海译文出版社', '1075', '88', '日', '“离开小町回头去看，有一件事我看得清清楚楚——我们的小町，很扭曲。\r\n\r\n为了维持小町的安定和秩序，不断杀害孩子们的小町，还能称之为人类的社会吗？人类从涂满鲜血的历史中走过，才抵达如今的状态。然而即使是和过去最黑暗的时代相比，今天的小町也是并不值得自豪的替代品。\r\n\r\n我们已经无法在神栖六十六町活下去了。小町不许我们活下去。只要被打上了失格的烙印，便无法再回到当初了。这不是对待人类的方式，而是和甄选不良品一样的做法，你不觉得吗？当烧瓷窖开启的时候，走型的、有裂纹的瓷器，等待它们的就是被敲碎的命运。”', '1', '1');
INSERT INTO `books_copy` VALUES ('6', '推理', '我们偷走星座的理由', '北山猛邦', '独步文化', '288', '69', '日', '事情變成這樣，\r\n或許全是因為我許下了不該許的願望……\r\n膽小倔強的單戀少女、無人島上的失憶妖精、\r\n操弄死者手機的寂寞詐欺師、苦等偵探出現的男孩、\r\n每日到醫院探望女孩的深情少年，\r\n他們都在內心珍藏著閃閃發光的小小心願：\r\n──想要暗戀的學長看自己一眼。\r\n──想離開時間永遠不會前進的魔法島嶼。\r\n──想逃離日復一日的失敗人生。\r\n──想化為石像的青梅竹馬回到自己身邊。\r\n──想為心儀的女孩摘下掛在夜空中的星星。\r\n他們的願望一一實現，\r\n但可別忘了，這個世界上不曾存在奇蹟，\r\n噩夢來臨前，他們才明白惡魔取走了什麼作為代價……\r\n【五則童話般美麗純淨，又似現實般無情殘忍的黑暗物語】\r\n\r\n', '17', '16');
INSERT INTO `books_copy` VALUES ('7', '文学', '如果在冬夜，一个旅人', '伊塔洛·卡尔维诺', '译林出版社', '300', '35', '意', '卡尔维诺用小说搭起迷宫，与读者你一起做文字和思想的游戏，正如情欲开放了男人和女人的时空，阅读，也让读者、作者和作品碎成万花筒里的玻璃，自由变幻着世界。繁华镜像之间，你是否看见了卡尔维诺的狡黠？在大陆，王小波、苏童、阿城、止庵是他的忠实粉丝\r\n\r\n在台湾，朱天文，唐诺是卡尔维诺不余遗力的传播者\r\n\r\n在香港，梁文道说他一直在准备谈卡尔维诺，可是一直没准备好', '18', '17');
INSERT INTO `books_copy` VALUES ('8', '科幻', '三体', '刘慈欣', '重庆出版社', '302', '23', '中', '文化大革命如火如荼进行的同时。军方探寻外星文明的绝秘计划“红岸工程”取得了突破性进展。但在按下发射键的那一刻，历经劫难的叶文洁没有意识到，她彻底改变了人类的命运。地球文明向宇宙发出的第一声啼鸣，以太阳为中心，以光速向宇宙深处飞驰……\r\n四光年外，“三体文明”正苦苦挣扎——三颗无规则运行的太阳主导下的百余次毁灭与重生逼迫他们逃离母星。而恰在此时。他们接收到了地球发来的信息。在运用超技术锁死地球人的基础科学之后。三体人庞大的宇宙舰队开始向地球进发……\r\n人类的末日悄然来临。', '23', '18');
INSERT INTO `books_copy` VALUES ('9', '小说', '人生海海', '麦家', '北京十月出版社', '345', '55', '中', '“他是全村最出奇古怪的人，古怪的名目要扳着指头一个一个数：\r\n第一，他当过国民党军队的上校，是革命群众要斗争的对象。但大家一边斗争他，一边又巴结讨好他，家里出什么事都去找他拿主意。\r\n第二，都说他是太监，可我们小孩子经常偷看他那个地方，好像还是满当当的，有模有样的。\r\n第三， 他向来不出工，不干农活，天天空在家里看报纸，嗑瓜子，可日子过得比谁家都舒坦。还像养孩子一样养着一对猫，宝贝得不得了，简直神经病！”\r\n·\r\n《人生海海》讲述了一个人在时代中穿行缠斗的一生，离奇的故事里藏着让人叹息的人生况味,既有日常滋生的残酷，也有时间带来的仁慈。\r\n=========\r\n人生如海，总有阴冷暴虐的水域，也有轻柔温暖的洋流。\r\n·\r\n“生活摧残了他，但也让他穿越了生死恐惧和世态炎凉， 变得大彻大悟， 笑傲江湖。 ”\r\n他知道怎样在风光处耀目，也知道怎么在卑贱中自处。', '19', '19');
INSERT INTO `books_copy` VALUES ('10', '文学', '切尔诺贝利的祭祷', 'S·A·阿列克谢耶维奇', '中信出版社 ', '200', '15', '白俄罗斯', '1986年4月26日，前苏联治下的乌克兰境内，切尔诺贝利核电站发生爆炸，这是人类史上最惨烈的技术悲剧之一。上万平民因放射性物质长期受到感染或致命；数万亩土地被污染，切尔诺贝利一夜之间化为废城。\r\n事故后十年，著名记者阿列克谢耶维奇冒着核辐射危险，深入事故发生现场，历时数年，访问了超过500位幸存者，用普通个体的声音平贴出时代的全景，书写了一部人类的启示录。在这里，平凡人物的真实经历比小说更惊人。每个人的声音都透视着历史的崩塌、国家机器的隐瞒、俄罗斯人的价值观，以及人们的愤怒、恐惧、勇敢、同情和爱。\r\n「切尔诺贝利核爆是二十世纪最重大的灾害事件，时至今日我还是不解，我所见证的究竟是过去还是未来？……一不小心，就会陷入恐惧的窠臼。」——阿列克谢耶维奇', '20', '20');
INSERT INTO `books_copy` VALUES ('11', '文学', '追寻逝去的时光·第一卷：去斯万家那边 ', '马塞尔·普鲁斯特/ 斯泰凡·厄埃', '后浪丨湖南美术出版社', '224', '160', '法', '这部漫画是在马塞尔·普鲁斯特的著名小说《追寻逝去的时光》基础上改编而成，对话与旁白均摘自小说原文，无一字增删。原著小说共分七卷，讲了叙述者的童年记忆、出入上流社会的经历、友谊、爱情和回忆。它讲了上流社会和半上流社会的浮华和众生相，精确地描述了“一战”前夕法国的社会、经济与阶层。', '21', '21');
INSERT INTO `books_copy` VALUES ('12', '小说', '我们一无所有 ', '安东尼·马拉 ', ' 江苏凤凰文艺出版社', '332', '50', '美', '一部堪比米兰·昆德拉《笑忘书》的伟大作品。\r\n──《纽约时报》\r\n大时代、小人物的命运悲歌\r\n横扫欧美各大书评人榜单的畅销书作家安东尼·马拉作品\r\n用厚重而文艺的笔触控诉我们这个时代的罪恶\r\n诺贝尔文学奖得主奥尔罕·帕慕克盛赞\r\n《纽约时报》年度好书、《华盛顿邮报》年度好书、科克斯书评年度最佳小说、美国国家书评人年度最佳、美国艺术与文学学院文学奖、美国国家杂志年度小说奖\r\n这是一部回忆之书，由多个故事串联而成。全书在列宁格勒的地底隧道揭开序幕，在太阳系的边境谱下终曲。\r\n二十世纪三十年代，一位不成材的肖像画家受到苏联当局指派，删除官方照片和艺术作品之中的异议份子，而头一个对象就是他的弟弟。于是，他做出了“将自己弟弟的脸孔画入每一幅经他审查的图片中”的决定，其后的数十年，因为这一决定引出了无数串联的故事。\r\n一幅名为“午后空旷的牧野”的油画和一位肖像画家，一位传奇芭蕾女伶和她的曾孙女，一位失明的文物修护师，一位金盆洗手的帮派份子，一位在因地雷爆炸痛失妻儿的鳏夫，还有一位在战争中葬身在画中同一片牧野上的士兵……\r\n有多少人的生命，会因为一幅画而改变？在破碎而悲怆的生命最后一刻，要怎么说，我们曾经拥有过一切。', '22', '22');

-- ----------------------------
-- Table structure for messages
-- ----------------------------
DROP TABLE IF EXISTS `messages`;
CREATE TABLE `messages` (
  `messageid` int(10) NOT NULL AUTO_INCREMENT,
  `mbookid` int(10) DEFAULT NULL,
  `musername` varchar(45) DEFAULT NULL,
  `text` longtext CHARACTER SET utf8,
  PRIMARY KEY (`messageid`),
  KEY `mess` (`musername`),
  KEY `mbookid` (`mbookid`),
  CONSTRAINT `mbookid` FOREIGN KEY (`mbookid`) REFERENCES `books` (`ID`),
  CONSTRAINT `mess` FOREIGN KEY (`musername`) REFERENCES `user` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of messages
-- ----------------------------
INSERT INTO `messages` VALUES ('1', '1', 'jack', '这书真好看');
INSERT INTO `messages` VALUES ('2', '2', 'admin', '真好看');
INSERT INTO `messages` VALUES ('3', '6', 'jack', 'aaaa');
INSERT INTO `messages` VALUES ('4', '7', 'jack', 'adesfsg');
INSERT INTO `messages` VALUES ('5', '10', 'jack', 'awfsdf');
INSERT INTO `messages` VALUES ('6', '1', 'jack', 'wojijida');

-- ----------------------------
-- Table structure for orders
-- ----------------------------
DROP TABLE IF EXISTS `orders`;
CREATE TABLE `orders` (
  `orderid` int(10) NOT NULL AUTO_INCREMENT,
  `bookid` int(10) DEFAULT NULL,
  `orderusername` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`orderid`),
  KEY `order` (`orderusername`),
  KEY `orderbookid` (`bookid`),
  CONSTRAINT `order` FOREIGN KEY (`orderusername`) REFERENCES `user` (`username`),
  CONSTRAINT `orderbookid` FOREIGN KEY (`bookid`) REFERENCES `books` (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of orders
-- ----------------------------
INSERT INTO `orders` VALUES ('2', '2', 'jack');
INSERT INTO `orders` VALUES ('3', '1', 'alice');
INSERT INTO `orders` VALUES ('4', '3', 'jack');
INSERT INTO `orders` VALUES ('6', '1', 'jack');
INSERT INTO `orders` VALUES ('8', '5', 'alice');
INSERT INTO `orders` VALUES ('9', '7', 'jack');
INSERT INTO `orders` VALUES ('10', '2', 'admin');
INSERT INTO `orders` VALUES ('11', '6', 'admin');
INSERT INTO `orders` VALUES ('12', '6', 'jack');
INSERT INTO `orders` VALUES ('13', '10', 'jack');
INSERT INTO `orders` VALUES ('26', '1', 'admin');
INSERT INTO `orders` VALUES ('28', '7', 'admin');

-- ----------------------------
-- Table structure for press
-- ----------------------------
DROP TABLE IF EXISTS `press`;
CREATE TABLE `press` (
  `ID` int(10) NOT NULL AUTO_INCREMENT,
  `Press` varchar(100) CHARACTER SET utf8 NOT NULL,
  `authorBrief` longtext CHARACTER SET utf8,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=30 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of press
-- ----------------------------
INSERT INTO `press` VALUES ('1', '上海译文出版社', '好');
INSERT INTO `press` VALUES ('13', '人民文学出版社', null);
INSERT INTO `press` VALUES ('14', '上海人民出版社', null);
INSERT INTO `press` VALUES ('15', '湖南文艺出版社', null);
INSERT INTO `press` VALUES ('16', '独步文化', null);
INSERT INTO `press` VALUES ('17', '译林出版社', null);
INSERT INTO `press` VALUES ('18', '重庆出版社', null);
INSERT INTO `press` VALUES ('19', '北京十月出版社', null);
INSERT INTO `press` VALUES ('20', '中信出版社 ', null);
INSERT INTO `press` VALUES ('21', '后浪丨湖南美术出版社', null);
INSERT INTO `press` VALUES ('22', ' 江苏凤凰文艺出版社', null);
INSERT INTO `press` VALUES ('29', '测试出版社', null);

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `id` varchar(36) NOT NULL,
  `username` varchar(45) DEFAULT NULL,
  `password` varchar(36) DEFAULT NULL,
  `age` int(11) DEFAULT NULL,
  KEY `username` (`username`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES ('11b0946c-8210-11e9-aa28-f8597135d4b8', 'jack', '123456', '18');
INSERT INTO `user` VALUES ('d5033d56-82a7-11e9-9560-f8597135d4b8', 'alice', '2017', '88');
INSERT INTO `user` VALUES ('e67fdd4a-82a7-11e9-9560-f8597135d4b8', 'zhuhao', '889988', '88');
INSERT INTO `user` VALUES ('1e391016-8db8-11e9-99ae-f8597135d4b8', 'admin', 'admin', '12');
INSERT INTO `user` VALUES ('162f2146-90b0-11e9-881e-f8597135d4b8', 'jjj', 'jjj', '77');

-- ----------------------------
-- Table structure for userinfo
-- ----------------------------
DROP TABLE IF EXISTS `userinfo`;
CREATE TABLE `userinfo` (
  `iid` int(10) NOT NULL AUTO_INCREMENT,
  `iusername` varchar(45) DEFAULT NULL,
  `isex` varchar(10) CHARACTER SET utf8 DEFAULT NULL,
  `iage` int(11) DEFAULT NULL,
  `iphone` int(11) DEFAULT NULL,
  `irealname` varchar(35) CHARACTER SET utf8 DEFAULT NULL,
  `iaddress` varchar(150) CHARACTER SET utf8 DEFAULT NULL,
  PRIMARY KEY (`iid`),
  KEY `info` (`iusername`),
  CONSTRAINT `info` FOREIGN KEY (`iusername`) REFERENCES `user` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of userinfo
-- ----------------------------
INSERT INTO `userinfo` VALUES ('1', 'jack', '女', '21', '110', '李四', '浙江省杭州市asdfasf');
INSERT INTO `userinfo` VALUES ('6', 'alice', '男', '19', '119444', '李四', '浙江农林大学');
INSERT INTO `userinfo` VALUES ('7', 'admin', '男', '20', '19191919', '管理员二号', '浙江农林大学');
INSERT INTO `userinfo` VALUES ('8', 'jjj', '男', '0', '9999', '徐卓群', '浙江农林大学');

-- ----------------------------
-- Procedure structure for addnewbook
-- ----------------------------
DROP PROCEDURE IF EXISTS `addnewbook`;
DELIMITER ;;
CREATE DEFINER=`skip-grants user`@`skip-grants host` PROCEDURE `addnewbook`(IN `iType` varchar(100),IN `iTitle` varchar(100),IN `iPages` int,IN `iPrice` double,IN `iBrief` longtext,IN `iAuthor` varchar(100),IN `iNation` varchar(100),IN `iPress` varchar(100))
BEGIN
	#Routine body goes here...
	#SELECT iType,iTitle, iPages,iPrice,iBrief,iAuthor,iNation,iPress;
	DECLARE aid int;
	DECLARE pid int;
	IF((SELECT count(*) FROM author WHERE Author=iAuthor) =1 )THEN
		IF((SELECT count(*) FROM press WHERE Press=iPress) =1 )THEN
			# 出版社和作者都存在的情况
			SET aid= (SELECT ID FROM author WHERE Author=iAuthor);
			SET pid= (SELECT ID FROM press WHERE Press=iPress);
			SELECT aid,pid;
			INSERT INTO books (Type,Title,Pages,Price,Brief,authorid,pressid)VALUES(iType,iTitle, iPages,iPrice,iBrief,aid,pid);
		ELSE
			# 作者存在，出版社不存在的情况
			INSERT INTO press(Press)VALUES(iPress);
			SET aid= (SELECT ID FROM author WHERE Author=iAuthor);
			SET pid= (SELECT ID FROM press WHERE Press=iPress);
			SELECT aid,pid;
			INSERT INTO books (Type,Title,Pages,Price,Brief,authorid,pressid)VALUES(iType,iTitle, iPages,iPrice,iBrief,aid,pid);
		END IF;
	ELSE
		INSERT INTO author(Author,Nation)VALUES(iAuthor,iNation);
		IF((SELECT count(*) FROM press WHERE Press=iPress) =1 )THEN
			# 出版社存在
			SET aid= (SELECT ID FROM author WHERE Author=iAuthor);
			SET pid= (SELECT ID FROM press WHERE Press=iPress);
			SELECT aid,pid;
			INSERT INTO books (Type,Title,Pages,Price,Brief,authorid,pressid)VALUES(iType,iTitle, iPages,iPrice,iBrief,aid,pid);
		ELSE
			# 都不存在
			INSERT INTO press(Press)VALUES(iPress);
			SET aid= (SELECT ID FROM author WHERE Author=iAuthor);
			SET pid= (SELECT ID FROM press WHERE Press=iPress);
			SELECT aid,pid;
			INSERT INTO books (Type,Title,Pages,Price,Brief,authorid,pressid)VALUES(iType,iTitle, iPages,iPrice,iBrief,aid,pid);
		END IF;
	END IF;
END
;;
DELIMITER ;
DROP TRIGGER IF EXISTS `tri_addorder`;
DELIMITER ;;
CREATE TRIGGER `tri_addorder` AFTER INSERT ON `orders` FOR EACH ROW begin
if  (new.bookid = 1) then
delete from orders where orderid=new.orderid;
end if;
end
;;
DELIMITER ;
