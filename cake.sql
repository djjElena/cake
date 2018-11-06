SET NAMES UTF8;
DROP DATABASE IF EXISTS cake;
CREATE DATABASE cake CHARSET UTF8;
USE cake;
/**网站信息**/
CREATE TABLE cake_site_info(
  site_name  VARCHAR(16),   #网站名称
  logo VARCHAR(64),         #图标
  admin_email VARCHAR(64),  #email
  icp VARCHAR(32),          #ICP
  copyright VARCHAR(64)     #版权
)ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8;

INSERT INTO cake_site_info VALUES('我的蛋糕网站','img/logo.gif','admin@calfaye.com',' 冀ICP备123456789号-1','版权所有：北京凯菲 技术支持：依诺网');

/**导航条信息**/
CREATE TABLE cake_navbar_info(
  nid INT PRIMARY KEY AUTO_INCREMENT,
  name VARCHAR(16),    #名称
  url VARCHAR(128),    #地址
  title VARCHAR(32),   #标题
  parent INT           #设置二级菜单
)ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8;

INSERT INTO cake_navbar_info VALUES('1','产品目录','xxx.html','产品名称列表','NULL');
INSERT INTO cake_navbar_info VALUES('2','首页','xxx.html','首页','NULL');
INSERT INTO cake_navbar_info VALUES('3','新闻资讯','xxx.html','新闻资讯','NULL');
INSERT INTO cake_navbar_info VALUES('4','关于凯菲','xxx.html','关于凯菲','NULL');
INSERT INTO cake_navbar_info VALUES('5','烘焙课堂','xxx.html','烘焙课堂','NULL');
INSERT INTO cake_navbar_info VALUES('6','我要试吃','xxx.html','我要试吃','NULL');
INSERT INTO cake_navbar_info VALUES('7','我的卡券','xxx.html','我的卡券','NULL');
INSERT INTO cake_navbar_info VALUES('8','积分兑换','xxx.html','积分兑换','NULL');

/**轮播图**/
CREATE TABLE cake_carousel_item(
  cid INT PRIMARY KEY AUTO_INCREMENT,
  pic VARCHAR(128),    #图片
  url VARCHAR(128),    #地址
  title VARCHAR(32)    #标题
)ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8;

INSERT INTO cake_carousel_item VALUES('1','img/banner1.jpg','xxx.html','轮播1');
INSERT INTO cake_carousel_item VALUES('2','img/banner2.jpg','xxx.html','轮播2');

/**系列分类**/
CREATE TABLE cake_xilie_item(
  xlid INT PRIMARY KEY AUTO_INCREMENT,
  xiliehao  VARCHAR(16), #系列号
  title VARCHAR(32),	 #标题
  etitle VARCHAR(32),     #英文标题
  details VARCHAR(128),  #详情
  href 	varchar(128)     #链接
)ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8;

INSERT INTO cake_xilie_item VALUES('1','101','慕斯系列','Mousse Series','慕斯蛋糕最早出现在美食之都法国巴黎，是一种奶冻式的甜点，与布丁一样属于甜点的一种，其性质较布丁更柔软，入口即化。','proDetail.html');
INSERT INTO cake_xilie_item VALUES('2','102','芝士系列','Cheese Series','芝士是动物乳经乳酸菌发酵或加酶后凝固，并除去乳清制成的浓缩乳制品。主要由蛋白质、脂类等营养成分，经过发酵养份更易被人体吸收。','proDetail.html');
INSERT INTO cake_xilie_item VALUES('3','103','鲜果系列','Fresh fruit Series','浓浓的奶香味与清新甜蜜的水果相搭配出来的浓郁甜美气息，恰到好处的口味与口感的结合，让您的感官与知觉完全得到满足。','proDetail.html');
INSERT INTO cake_xilie_item VALUES('4','104','巧克力系列','Cheese Series','巧克力蛋糕起源于墨西哥，盛行于西方国家的巧克力，历来被人们视为“幸福食品”。巧克力中含多酚物质，对人体健康有益。','proDetail.html');
INSERT INTO cake_xilie_item VALUES('5','105','冰淇淋系列','Cheese Series','冰淇淋与蛋糕的巧妙结合，同时满足我们的两种需求，味道香甜可口，品色上乘，冷冻室保存后，拿出来室温下放5分钟口感最佳。','proDetail.html');

/**时刻图片**/
CREATE TABLE cake_shike_item(
  skid INT PRIMARY KEY AUTO_INCREMENT,
  pic VARCHAR(128)  #图片
)ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8;

INSERT INTO cake_shike_item VALUES('1','img/p_1.jpg');
INSERT INTO cake_shike_item VALUES('2','img/1.jpg');
INSERT INTO cake_shike_item VALUES('3','img/p_7.jpg');
INSERT INTO cake_shike_item VALUES('4','img/p_3.jpg');
INSERT INTO cake_shike_item VALUES('5','img/2.jpg');
INSERT INTO cake_shike_item VALUES('6','img/3.jpg');
INSERT INTO cake_shike_item VALUES('7','img/p_2.jpg');
INSERT INTO cake_shike_item VALUES('8','img/kingcake.JPG');
INSERT INTO cake_shike_item VALUES('9','img/class.jpg');
INSERT INTO cake_shike_item VALUES('10','img/class1.jpg');
INSERT INTO cake_shike_item VALUES('11','img/class2.jpg');

/**产品详情**/
CREATE TABLE cake_detail(
  id INT PRIMARY KEY AUTO_INCREMENT,
  family_id INT,              #所属系列
  title VARCHAR(128),         #主标题
  subtitle VARCHAR(128),      #副标题
  price DECIMAL(10,2),        #价格
  msale VARCHAR(64),          #月销量
  praise VARCHAR(32),         #累计评价
  spec VARCHAR(64),           #规格/磅数
  lname VARCHAR(32)           #适用人数
)ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8;

INSERT INTO cake_detail VALUES('1','101','慕斯系列','这是慕斯系列产品这是焦糖系列的产品，使得焦糖和咖啡的完美融合，口味最佳，慕斯是一种奶冻式的甜点，与布丁一样属于甜点的一种，其性质较布丁更柔软，入口即化。','118元','10','100','1.3磅','5-8人');
INSERT INTO cake_detail VALUES('2','101','慕斯系列','这是焦糖系列的产品，使得焦糖和咖啡的完美融合，口味最佳，慕斯是一种奶冻式的甜点，与布丁一样属于甜点的一种，其性质较布丁更柔软，入口即化。','118元','10','100','2.3磅','5-8人');
INSERT INTO cake_detail VALUES('3','101','慕斯系列','这是焦糖系列的产品，使得焦糖和咖啡的完美融合，口味最佳，慕斯是一种奶冻式的甜点，与布丁一样属于甜点的一种，其性质较布丁更柔软，入口即化。','118元','10','100','3.5磅','5-8人');
INSERT INTO cake_detail VALUES('4','101','慕斯系列','这是焦糖系列的产品，使得焦糖和咖啡的完美融合，口味最佳，慕斯是一种奶冻式的甜点，与布丁一样属于甜点的一种，其性质较布丁更柔软，入口即化。','118元','10','100','5.5磅','5-8人');

INSERT INTO cake_detail VALUES('5','102','芝士系列','芝士是动物乳经乳酸菌发酵或加酶后凝固，并除去乳清制成的浓缩乳制品。主要由蛋白质、脂类等营养成分，经过发酵养份更易被人体吸收。','188','20','200','1.3磅','5-8人');
INSERT INTO cake_detail VALUES('6','102','芝士系列','芝士是动物乳经乳酸菌发酵或加酶后凝固，并除去乳清制成的浓缩乳制品。主要由蛋白质、脂类等营养成分，经过发酵养份更易被人体吸收。','188元','20','200','2.3磅','5-8人');
INSERT INTO cake_detail VALUES('7','102','芝士系列','芝士是动物乳经乳酸菌发酵或加酶后凝固，并除去乳清制成的浓缩乳制品。主要由蛋白质、脂类等营养成分，经过发酵养份更易被人体吸收。','188元','20','200','3.5磅','5-8人');
INSERT INTO cake_detail VALUES('8','102','芝士系列','芝士是动物乳经乳酸菌发酵或加酶后凝固，并除去乳清制成的浓缩乳制品。主要由蛋白质、脂类等营养成分，经过发酵养份更易被人体吸收。','188元','20','200','5.5磅','5-8人');

INSERT INTO cake_detail VALUES('9','103','鲜果系列','浓浓的奶香味与清新甜蜜的水果相搭配出来的浓郁甜美气息，恰到好处的口味与口感的结合，让您的感官与知觉完全得到满足。','218元','30','300','1.3磅','5-8人');
INSERT INTO cake_detail VALUES('10','103','鲜果系列','浓浓的奶香味与清新甜蜜的水果相搭配出来的浓郁甜美气息，恰到好处的口味与口感的结合，让您的感官与知觉完全得到满足。','218元','30','300','2.3磅','5-8人');
INSERT INTO cake_detail VALUES('11','103','鲜果系列','浓浓的奶香味与清新甜蜜的水果相搭配出来的浓郁甜美气息，恰到好处的口味与口感的结合，让您的感官与知觉完全得到满足。','218元','30','300','3.5磅','5-8人');
INSERT INTO cake_detail VALUES('12','103','鲜果系列','浓浓的奶香味与清新甜蜜的水果相搭配出来的浓郁甜美气息，恰到好处的口味与口感的结合，让您的感官与知觉完全得到满足。','218元','30','300','5.5磅','5-8人');

INSERT INTO cake_detail VALUES('13','104','巧克力系列','巧克力蛋糕起源于墨西哥，盛行于西方国家的巧克力，历来被人们视为“幸福食品”。巧克力中含多酚物质，对人体健康有益。','238元','40','400','1.3磅','5-8人');
INSERT INTO cake_detail VALUES('14','104','巧克力系列','巧克力蛋糕起源于墨西哥，盛行于西方国家的巧克力，历来被人们视为“幸福食品”。巧克力中含多酚物质，对人体健康有益。','238元','40','400','2.3磅','5-8人');
INSERT INTO cake_detail VALUES('15','104','巧克力系列','巧克力蛋糕起源于墨西哥，盛行于西方国家的巧克力，历来被人们视为“幸福食品”。巧克力中含多酚物质，对人体健康有益。','238元','40','400','3.5磅','5-8人');
INSERT INTO cake_detail VALUES('16','104','巧克力系列','巧克力蛋糕起源于墨西哥，盛行于西方国家的巧克力，历来被人们视为“幸福食品”。巧克力中含多酚物质，对人体健康有益。','238元','40','400','5.5磅','5-8人');

INSERT INTO cake_detail VALUES('17','105','冰淇淋系列','冰淇淋与蛋糕的巧妙结合，同时满足我们的两种需求，味道香甜可口，品色上乘，冷冻室保存后，拿出来室温下放5分钟口感最佳。','118元','50','500','1.3磅','5-8人');
INSERT INTO cake_detail VALUES('18','105','冰淇淋系列','冰淇淋与蛋糕的巧妙结合，同时满足我们的两种需求，味道香甜可口，品色上乘，冷冻室保存后，拿出来室温下放5分钟口感最佳。','118元','50','500','2.3磅','5-8人');
INSERT INTO cake_detail VALUES('19','105','冰淇淋系列','冰淇淋与蛋糕的巧妙结合，同时满足我们的两种需求，味道香甜可口，品色上乘，冷冻室保存后，拿出来室温下放5分钟口感最佳。','118元','50','500','3.5磅','5-8人');
INSERT INTO cake_detail VALUES('20','105','冰淇淋系列','冰淇淋与蛋糕的巧妙结合，同时满足我们的两种需求，味道香甜可口，品色上乘，冷冻室保存后，拿出来室温下放5分钟口感最佳。','118元','50','500','5.5磅','5-8人');

/**用户信息**/
CREATE TABLE cake_user(
  uid INT PRIMARY KEY AUTO_INCREMENT,
  uname VARCHAR(32),    #用户名
  upwd VARCHAR(32),     #密码
  email VARCHAR(32),    #邮箱
  phone VARCHAR(16)     #验证手机
)ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8;

INSERT INTO cake_user VALUES('1', 'dingding', '123456','ding@qq.com', '13501234567');
INSERT INTO cake_user VALUES('2', 'dangdang', '123456','dang@qq.com', '13501234568');
INSERT INTO cake_user VALUES('3', 'doudou', '123456','dou@qq.com', '13501234569');
INSERT INTO cake_user VALUES('4', 'yaya', '123456','ya@qq.com', '13501234560');

