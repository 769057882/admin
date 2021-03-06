DROP TABLE IF EXISTS `province`;
CREATE TABLE `province` (
  `province_id` int(11) NOT NULL COMMENT '省份id',
  `province_name` varchar(50) NOT NULL COMMENT '省份名称',
  `first_character` varchar(2) NOT NULL COMMENT '首字母大写',
  `pinyin` varchar(50) NOT NULL COMMENT '拼音',
  `province_type` tinyint(1) NOT NULL COMMENT '1直辖市 2 省份 3 自治区 4特别行政区',
  `capitalcityId` int(11) NOT NULL COMMENT '省会城市id',
  `province_sample` varchar(10) NOT NULL COMMENT '省份简称',
  PRIMARY KEY (`province_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
--  Records of `province`
-- ----------------------------
BEGIN;
INSERT INTO `province` VALUES ('110000', '北京', 'B', 'beijing', '1', '110100', '京  '), ('120000', '天津', 'T', 'tianjin', '1', '120100', '津  '), ('130000', '河北', 'H', 'hebei', '0', '130100', '冀  '), ('140000', '山西', 'S', 'shanxi', '0', '140100', '晋  '), ('150000', '内蒙古', 'N', 'namenggu', '0', '150100', '蒙  '), ('210000', '辽宁', 'L', 'liaoning', '0', '210100', '辽  '), ('220000', '吉林', 'J', 'jilin', '0', '220100', '吉  '), ('230000', '黑龙江', 'H', 'heilongjiang', '0', '230100', '黑  '), ('310000', '上海', 'S', 'shanghai', '1', '310100', '沪  '), ('320000', '江苏', 'J', 'jiangsu', '0', '320100', '苏  '), ('330000', '浙江', 'Z', 'zhejiang', '0', '330100', '浙  '), ('340000', '安徽', 'A', 'anhui', '0', '340100', '皖  '), ('350000', '福建', 'F', 'fujian', '0', '350100', '闽  '), ('360000', '江西', 'J', 'jiangxi', '0', '360100', '赣  '), ('370000', '山东', 'S', 'shandong', '0', '370100', '鲁  '), ('410000', '河南', 'H', 'henan', '0', '410100', '豫  '), ('420000', '湖北', 'H', 'hubei', '0', '420100', '鄂  '), ('430000', '湖南', 'H', 'hunan', '0', '430100', '湘  '), ('440000', '广东', 'G', 'guangdong', '0', '440100', '粤 '), ('450000', '广西', 'G', 'guangxi', '0', '450100', '桂  '), ('460000', '海南', 'H', 'hainan', '0', '460100', '琼 '), ('500000', '重庆', 'C', 'chongqing', '1', '500100', '渝  '), ('510000', '四川', 'S', 'sichuan', '0', '510100', '川  '), ('520000', '贵州', 'G', 'guizhou', '0', '520100', '贵  '), ('530000', '云南', 'Y', 'yunnan', '0', '530100', '云  '), ('540000', '西藏', 'X', 'xizang', '0', '540100', '藏  '), ('610000', '陕西', 'S', 'shan_xi', '0', '610100', '陕  '), ('620000', '甘肃', 'G', 'gansu', '0', '620100', '甘  '), ('630000', '青海', 'Q', 'qinghai', '0', '630100', '青  '), ('640000', '宁夏', 'N', 'ningxia', '0', '640100', '宁  '), ('650000', '新疆', 'X', 'xinjiang', '0', '650100', '新  '), ('710000', '台湾', 'T', 'taiwan', '0', '710100', '台'), ('810000', '香港', 'X', 'xianggang', '0', '810100', '港'), ('820000', '澳门', 'A', 'aomen', '0', '820100', '澳');
COMMIT;