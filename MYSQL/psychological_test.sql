/*
Navicat MySQL Data Transfer

Source Server         : localhost_3306
Source Server Version : 80032
Source Host           : localhost:3306
Source Database       : psychological_test

Target Server Type    : MYSQL
Target Server Version : 80032
File Encoding         : 65001

Date: 2023-07-03 14:38:48
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `nine_personality_test`
-- ----------------------------
DROP TABLE IF EXISTS `nine_personality_test`;
CREATE TABLE `nine_personality_test` (
  `Id` tinyint NOT NULL AUTO_INCREMENT,
  `describe` varchar(255) NOT NULL,
  `type` varchar(10) NOT NULL,
  `typeId` tinyint NOT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=109 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of nine_personality_test
-- ----------------------------
INSERT INTO `nine_personality_test` VALUES ('1', '我很容易迷惑', '调停型', '9');
INSERT INTO `nine_personality_test` VALUES ('2', '我不想成为一个喜欢批评别人的人，但很难做到', '完美型', '1');
INSERT INTO `nine_personality_test` VALUES ('3', '我喜欢研究宇宙的道理、哲理', '观察型', '5');
INSERT INTO `nine_personality_test` VALUES ('4', '我很注意自己是否年轻，因为那是找乐子的本钱', '享乐型', '7');
INSERT INTO `nine_personality_test` VALUES ('5', '我喜欢独立自主，一切都靠自己', '领导型', '8');
INSERT INTO `nine_personality_test` VALUES ('6', '当我有困难时，我会试着不让人知道', '给予型', '2');
INSERT INTO `nine_personality_test` VALUES ('7', '被人误解对我而言是一件十分痛苦的事', '浪漫型', '4');
INSERT INTO `nine_personality_test` VALUES ('8', '施比受会给我更大的满足感', '给予型', '2');
INSERT INTO `nine_personality_test` VALUES ('9', '我常常设想最糟的结果而使自己陷入苦恼中', '怀疑型', '6');
INSERT INTO `nine_personality_test` VALUES ('10', '我常常试探或考验朋友、伴侣的忠诚', '怀疑型', '6');
INSERT INTO `nine_personality_test` VALUES ('11', '我看不起那些不像我一样坚强的人，有时我会用种种方式羞辱他们', '领导型', '8');
INSERT INTO `nine_personality_test` VALUES ('12', '身体上的舒适对我非常重要', '调停型', '9');
INSERT INTO `nine_personality_test` VALUES ('13', '我能触碰生活中的悲伤和不幸', '浪漫型', '4');
INSERT INTO `nine_personality_test` VALUES ('14', '别人不能完成他的分内事，会令我失望和愤怒', '完美型', '1');
INSERT INTO `nine_personality_test` VALUES ('15', '我时常拖延问题，不去解决', '调停型', '9');
INSERT INTO `nine_personality_test` VALUES ('16', '我喜欢戏剧性、多彩多姿的生活', '享乐型', '7');
INSERT INTO `nine_personality_test` VALUES ('17', '我认为自己的性格非常的不完善', '浪漫型', '4');
INSERT INTO `nine_personality_test` VALUES ('18', '我对感官的需求特别强烈，喜欢美食、服装、身体的触觉刺激，并纵情享乐', '享乐型', '7');
INSERT INTO `nine_personality_test` VALUES ('19', '当别人请教我一些问题，我会巨细无遗地给他分析得很清楚', '观察型', '5');
INSERT INTO `nine_personality_test` VALUES ('20', '我习惯推销自己，从不觉得难为情', '实干型', '3');
INSERT INTO `nine_personality_test` VALUES ('21', '有时我会放纵和做出僭越的事', '享乐型', '7');
INSERT INTO `nine_personality_test` VALUES ('22', '帮助不到别人会让我觉得痛苦', '给予型', '2');
INSERT INTO `nine_personality_test` VALUES ('23', '我不喜欢人家问我关于广泛、笼统的问题', '观察型', '5');
INSERT INTO `nine_personality_test` VALUES ('24', '在某方面我有放纵的倾向（例如食物、药物等）', '领导型', '8');
INSERT INTO `nine_personality_test` VALUES ('25', '我宁愿适应别人，包括我的伴侣，也不会反抗他们', '调停型', '9');
INSERT INTO `nine_personality_test` VALUES ('26', '我最不喜欢的一件事就是虚伪', '怀疑型', '6');
INSERT INTO `nine_personality_test` VALUES ('27', '我知错能改，但由于执著好强，周围的人还是感觉到压力', '领导型', '8');
INSERT INTO `nine_personality_test` VALUES ('28', '我常觉得很多事情都很好玩，很有趣，人生真是快乐', '享乐型', '7');
INSERT INTO `nine_personality_test` VALUES ('29', '我有时很欣赏自己充满权威，有时却又优柔寡断，依赖别人', '怀疑型', '6');
INSERT INTO `nine_personality_test` VALUES ('30', '我习惯付出多于接受', '给予型', '2');
INSERT INTO `nine_personality_test` VALUES ('31', '面对威胁时，我一边变得焦虑，一边对抗迎面而来的危险', '怀疑型', '6');
INSERT INTO `nine_personality_test` VALUES ('32', '我通常是等别人来接近我，而不是我去接近他们', '观察型', '5');
INSERT INTO `nine_personality_test` VALUES ('33', '我喜欢当主角，希望得到大家的注意', '实干型', '3');
INSERT INTO `nine_personality_test` VALUES ('34', '别人批评我，我也不会回应和辩解，因为我不想发生任何争执与冲突', '调停型', '9');
INSERT INTO `nine_personality_test` VALUES ('35', '我有时期待别人的指导，有时却忽略别人的忠告径直去做我想做的事', '怀疑型', '6');
INSERT INTO `nine_personality_test` VALUES ('36', '我经常忘记自己的需要', '调停型', '9');
INSERT INTO `nine_personality_test` VALUES ('37', '在重大危机中，我通常能克服我对自己的质疑和内心的焦虑', '怀疑型', '6');
INSERT INTO `nine_personality_test` VALUES ('38', '我是一个天生的推销员，说服别人对我来说是一件轻易的事', '实干型', '3');
INSERT INTO `nine_personality_test` VALUES ('39', '我不会相信一个我一直都无法了解的人', '调停型', '9');
INSERT INTO `nine_personality_test` VALUES ('40', '我喜欢依惯例行事，不大喜欢改变', '领导型', '8');
INSERT INTO `nine_personality_test` VALUES ('41', '我很在乎家人，在家中表现得忠诚和包容', '调停型', '9');
INSERT INTO `nine_personality_test` VALUES ('42', '我被动而优柔寡断', '观察型', '5');
INSERT INTO `nine_personality_test` VALUES ('43', '我很有包容力，彬彬有礼，但跟人的感情互动不深', '观察型', '5');
INSERT INTO `nine_personality_test` VALUES ('44', '我沉默寡言，好像不会关心别人似的', '领导型', '8');
INSERT INTO `nine_personality_test` VALUES ('45', '当沉浸在工作或我擅长的领域时，别人会觉得我冷酷无情', '怀疑型', '6');
INSERT INTO `nine_personality_test` VALUES ('46', '我常常保持警觉', '怀疑型', '6');
INSERT INTO `nine_personality_test` VALUES ('47', '我不喜欢要对人尽义务的感觉', '观察型', '5');
INSERT INTO `nine_personality_test` VALUES ('48', '如果不能完美地表现，我宁愿不说', '观察型', '5');
INSERT INTO `nine_personality_test` VALUES ('49', '我的计划比我实际完成的还要多', '享乐型', '7');
INSERT INTO `nine_personality_test` VALUES ('50', '我野心勃勃，喜欢挑战和登上高峰的经验', '领导型', '8');
INSERT INTO `nine_personality_test` VALUES ('51', '我倾向于独断专行并自己解决问题', '观察型', '5');
INSERT INTO `nine_personality_test` VALUES ('52', '我很多时候感到被遗弃', '浪漫型', '4');
INSERT INTO `nine_personality_test` VALUES ('53', '我常常表现得十分忧郁的样子，充满痛苦而且内向', '浪漫型', '4');
INSERT INTO `nine_personality_test` VALUES ('54', '初见陌生人时，我会表现得很冷漠、高傲', '浪漫型', '4');
INSERT INTO `nine_personality_test` VALUES ('55', '我的面部表情严肃而生硬', '完美型', '1');
INSERT INTO `nine_personality_test` VALUES ('56', '我情绪飘忽不定，常常不知自己下一刻想要做什么', '浪漫型', '4');
INSERT INTO `nine_personality_test` VALUES ('57', '我常对自己挑剔，期望不断改善自己的缺点，以成为一个完美的人', '完美型', '1');
INSERT INTO `nine_personality_test` VALUES ('58', '我感受特别深刻，并怀疑那些总是很快乐的人', '浪漫型', '4');
INSERT INTO `nine_personality_test` VALUES ('59', '我做事有效率，也会找捷径，模仿力特强', '实干型', '3');
INSERT INTO `nine_personality_test` VALUES ('60', '我讲理、重实用', '完美型', '1');
INSERT INTO `nine_personality_test` VALUES ('61', '我有很强的创造天分和想象力，喜欢将事情重新整合', '浪漫型', '4');
INSERT INTO `nine_personality_test` VALUES ('62', '我不要求得到很多的注意力', '调停型', '9');
INSERT INTO `nine_personality_test` VALUES ('63', '我喜欢每件事都井然有序，但别人会认为我过分执著', '完美型', '1');
INSERT INTO `nine_personality_test` VALUES ('64', '我渴望拥有完美的心灵伴侣', '浪漫型', '4');
INSERT INTO `nine_personality_test` VALUES ('65', '我常夸耀自己，对自己的能力十分有信心', '实干型', '3');
INSERT INTO `nine_personality_test` VALUES ('66', '如果周遭的人行为太过分时，我准会让他难堪', '领导型', '8');
INSERT INTO `nine_personality_test` VALUES ('67', '我外向、精力充沛，喜欢不断追求成就，这使我的自我感觉良好', '实干型', '3');
INSERT INTO `nine_personality_test` VALUES ('68', '我是一位忠实的朋友和伙伴', '怀疑型', '6');
INSERT INTO `nine_personality_test` VALUES ('69', '我知道如何让别人喜欢我', '给予型', '2');
INSERT INTO `nine_personality_test` VALUES ('70', '我很少看到别人的功劳和好处', '实干型', '3');
INSERT INTO `nine_personality_test` VALUES ('71', '我很容易知道别人的功劳和好处', '给予型', '2');
INSERT INTO `nine_personality_test` VALUES ('72', '我嫉妒心强，喜欢跟别人比较', '实干型', '3');
INSERT INTO `nine_personality_test` VALUES ('73', '我对别人做的事总是不放心，批评一番后，自己会动手再做', '完美型', '1');
INSERT INTO `nine_personality_test` VALUES ('74', '别人会说我常戴着面具做人', '实干型', '3');
INSERT INTO `nine_personality_test` VALUES ('75', '有时我会激怒对方，引来莫名其妙的吵架，其实是想试探对方爱不爱我', '怀疑型', '6');
INSERT INTO `nine_personality_test` VALUES ('76', '我会极力保护我所爱的人', '领导型', '8');
INSERT INTO `nine_personality_test` VALUES ('77', '我常常刻意保持兴奋的情绪', '实干型', '3');
INSERT INTO `nine_personality_test` VALUES ('78', '我只喜欢与有趣的人为友，对一些闷蛋却懒得交往，即使他们看来很有深度', '享乐型', '7');
INSERT INTO `nine_personality_test` VALUES ('79', '我常往外跑，四处帮助别人', '给予型', '2');
INSERT INTO `nine_personality_test` VALUES ('80', '有时我会讲求效率而牺牲完美和原则', '实干型', '3');
INSERT INTO `nine_personality_test` VALUES ('81', '我似乎不太懂得幽默，没有弹性', '完美型', '1');
INSERT INTO `nine_personality_test` VALUES ('82', '我待人热情而有耐性', '给予型', '2');
INSERT INTO `nine_personality_test` VALUES ('83', '在人群中我时常感到害羞和不安', '观察型', '5');
INSERT INTO `nine_personality_test` VALUES ('84', '我喜欢效率，讨厌拖泥带水', '领导型', '8');
INSERT INTO `nine_personality_test` VALUES ('85', '帮助别人达至快乐和成功是我重要的成就', '给予型', '2');
INSERT INTO `nine_personality_test` VALUES ('86', '付出时，别人若不欣然接纳，我便会有挫折感', '给予型', '2');
INSERT INTO `nine_personality_test` VALUES ('87', '我的肢体硬邦邦的，不习惯别人热情地付出', '完美型', '1');
INSERT INTO `nine_personality_test` VALUES ('88', '我对大部分的社交集会不太有兴趣，除非那是我熟识的和喜爱的人', '观察型', '5');
INSERT INTO `nine_personality_test` VALUES ('89', '很多时候我会有强烈的寂寞感', '给予型', '2');
INSERT INTO `nine_personality_test` VALUES ('90', '人们很乐意向我表白他们所遭遇的问题', '给予型', '2');
INSERT INTO `nine_personality_test` VALUES ('91', '我不但不会说甜言蜜语，而且别人也会觉得我唠叨不停', '完美型', '1');
INSERT INTO `nine_personality_test` VALUES ('92', '我常担心自由被剥夺，因此不爱作承诺', '享乐型', '7');
INSERT INTO `nine_personality_test` VALUES ('93', '我喜欢告诉别人所做的事和所知的一切', '实干型', '3');
INSERT INTO `nine_personality_test` VALUES ('94', '我很容易认同别人所做的事和所知的一切', '调停型', '9');
INSERT INTO `nine_personality_test` VALUES ('95', '我要求光明正大，为此不惜与人发生冲突', '领导型', '8');
INSERT INTO `nine_personality_test` VALUES ('96', '我很有正义感，有时会支持不利的一方', '领导型', '8');
INSERT INTO `nine_personality_test` VALUES ('97', '我因注重小节而效率不高', '完美型', '1');
INSERT INTO `nine_personality_test` VALUES ('98', '我容易感到沮丧和麻木更多于愤怒', '调停型', '9');
INSERT INTO `nine_personality_test` VALUES ('99', '我不喜欢那些侵略性或过度情绪化的人', '观察型', '5');
INSERT INTO `nine_personality_test` VALUES ('100', '我非常情绪化，一天的喜怒哀乐多变', '浪漫型', '4');
INSERT INTO `nine_personality_test` VALUES ('101', '我不想别人知道我的感受与想法，除非我告诉他们', '观察型', '5');
INSERT INTO `nine_personality_test` VALUES ('102', '我喜欢刺激和紧张的关系，而不是稳定和依赖的关系', '完美型', '1');
INSERT INTO `nine_personality_test` VALUES ('103', '我很少用心去听别人的谈话，只喜欢说俏皮话和笑话', '享乐型', '7');
INSERT INTO `nine_personality_test` VALUES ('104', '我是循规蹈矩的人，秩序对我十分有意义', '完美型', '1');
INSERT INTO `nine_personality_test` VALUES ('105', '我很难找到一种我真正感到被爱的关系', '浪漫型', '4');
INSERT INTO `nine_personality_test` VALUES ('106', '假如我想要结束一段关系，我不是直接告诉对方就是激怒他让他离开我', '完美型', '1');
INSERT INTO `nine_personality_test` VALUES ('107', '我温和平静，不自夸，不爱与人竞争', '调停型', '9');
INSERT INTO `nine_personality_test` VALUES ('108', '我有时善良可爱，有时又粗野暴躁，很难捉摸', '调停型', '9');
