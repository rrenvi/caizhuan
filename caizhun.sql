SET NAMES UTF8;
DROP DATABASE IF EXISTS fp;
CREATE DATABASE fp CHARSET=UTF8;
USE fp;
/*用户登录*/
CREATE TABLE fp_login(
   lid INT PRIMARY KEY AUTO_INCREMENT,
   lname VARCHAR(50),
   lpwd  VARCHAR(32)
);
INSERT INTO fp_login VALUES(null,'tom',md5('123'));
INSERT INTO fp_login VALUES(null,'jerry',md5('123'));
INSERT INTO fp_login VALUES(null, 'dingding', md5('123456'));
INSERT INTO fp_login VALUES(null, 'dangdang', md5('123456'));
INSERT INTO fp_login VALUES(null, 'doudou', md5('123456'));
INSERT INTO fp_login VALUES(null, 'yaya', md5('123456'));

/*家具表*/
CREATE TABLE fp(
    fp_id INT PRIMARY KEY AUTO_INCREMENT,
    family_id INT,
    fp_name VARCHAR(32), /*家具名称*/
    price DECIMAL(10,2), /*家具价格*/
    detail VARCHAR(1024)/*家具简介*/
);
INSERT INTO fp VALUES
(null,1,'单人布艺沙发',2999,'【单人布艺沙发-北欧风格，限时抢购】'),
(null,1,'落地灯',299,'【几何元素设计，精致工艺打造】'),
(null,1,'休闲座椅',155,'【简单舒适的单人休闲座椅】'),
(null,1,'单人沙发',2999,'【北欧风单人沙发，简单舒适】'),
(null,1,'边桌',399,'【小巧便携，简易式边桌】'),
(null,1,'单人沙发G',2499,'【北欧风单人沙发，简单舒适】'),
(null,1,'真皮沙发',2499,'【北欧风单人沙发，简单舒适】'),
(null,1,'落地灯',325,'【简约流线型落地灯，独具风格】'),
(null,2,'扶手椅',59,'【简约流线设计扶手椅，采用全新环保材料，坚硬耐用】'),
(null,2,'台灯',219,'【节能型台灯】'),
(null,2,'双层边桌',289,'【小巧便携，简易式边桌】'),
(null,2,'背靠椅',559,'【便携·舒适·单人--背靠椅】'),
(null,2,'实木抽屉柜',1650,'【中国风实木抽屉柜,真材实料】'),
(null,3,'餐厅桌椅',499,'【简易式餐厅凳，简约派】'),
(null,3,'休闲椅',89,'【简约便携休闲椅，火热促销中】'),
(null,4,'黑色置物架',255,'【轻巧便携设计置物架，采用优质环保材料，坚硬耐用】'),
(null,4,'收纳盆',38,'【大口简约收纳盆，采用优质耐用环保材料，合理储物】'),
(null,4,'门把手',8,'【门把手，坚固耐用】'),
(null,4,'木质置物架',275,'【精选原木设计，纯工艺打造】'),
(null,5,'洁具套件',366,'【超值精选全套洁具套件，限时抢购】'),
(null,5,'单门镜柜',895,'【简约派风格-单门镜柜，一柜多用，火热促销中】'),
(null,5,'化妆镜',69,'【可折叠圆形化妆镜，照亮你的美】'),
(null,5,'衣物收纳袋',88,'【长筒型布艺收纳袋，给闲置衣服一个家】'),
(null,5,'置物挂件',79,'【多功能浴室置物挂件，一物多用，超划算】'),
(null,5,'置物架',49,'【可折叠伸缩式置物架，超值优惠】');
/*家具图片表*/
CREATE TABLE fp_pic(
    pid INT PRIMARY KEY AUTO_INCREMENT,
    fun_id INT, /*所属家具编号*/
    fun_family_id INT,
    spec VARCHAR(32),
    md  VARCHAR(128)
);
INSERT INTO fp_pic VALUES
(null,1,1,'灰色','../assets/imgs/product_list5.jpg'),
(null,1,1,'绿色','../assets/imgs/drbysf_detail2.jpg'),
(null,1,1,'蓝色','../assets/imgs/drbysf_detail3.jpg'),
(null,2,1,'黑色','../assets/imgs/product_list12.jpg'),
(null,3,1,'绿色','../assets/imgs/xxzy-md1.jpg'),
(null,4,1,'棕色','../assets/imgs/drsf-md1.jpg'),
(null,5,1,'银色','../assets/imgs/bz-md1.jpg'),
(null,6,1,'墨绿色','../assets/imgs/drsfG-md1.jpg'),
(null,7,1,'墨绿色','../assets/imgs/zpsf.jpg'),
(null,8,1,'黑色','../assets/imgs/lddf.jpg'),
(null,9,2,'橙色','../assets/imgs/fsy-md1.jpg'),
(null,9,2,'白色','../assets/imgs/fsy-detail.jpg'),
(null,9,2,'灰色','../assets/imgs/fsy-detail2.jpg'),
(null,10,2,'黑色','../assets/imgs/td-md1.jpg'),
(null,11,2,'黑棕色','../assets/imgs/scbz-md1.jpg'),
(null,12,2,'米色','../assets/imgs/bky-md1.jpg'),
(null,13,2,'原木色','../assets/imgs/ctg.jpg'),
(null,14,3,'米色','../assets/imgs/ctzy-md1.jpg'),
(null,15,3,'白色','../assets/imgs/product_vip2.jpg'),
(null,16,4,'黑色','../assets/imgs/product_list2.jpg'),
(null,16,4,'白色','../assets/imgs/hszwj_detail.jpg'),
(null,16,4,'绿色','../assets/imgs/hszwj_detail3.jpg'),
(null,17,4,'白色','../assets/imgs/product_list3.jpg'),
(null,17,4,'黄色','../assets/imgs/snp_detail1.jpg'),
(null,17,4,'蓝色','../assets/imgs/snp_detail2.jpg'),
(null,18,4,'黑色','../assets/imgs/product_list10.jpg'),
(null,19,4,'原色','../assets/imgs/product_list11.jpg'),
(null,20,5,'黑色','../assets/imgs/product_list4.jpg'),
(null,21,5,'黑色','../assets/imgs/product_list6.jpg'),
(null,22,5,'白色','../assets/imgs/product_list7.jpg'),
(null,23,5,'黑色','../assets/imgs/product_list8.jpg'),
(null,24,5,'白色','../assets/imgs/product_list9.jpg'),
(null,25,5,'黑色','../assets/imgs/zwj-md1.jpg');
/*类别表*/
CREATE TABLE f(
    fid INT PRIMARY KEY AUTO_INCREMENT,
    ftitle VARCHAR(64),
    fsub_title VARCHAR(64),
    fbg VARCHAR(128)
);
INSERT INTO f VALUES
(null,'客厅','装扮你梦想中的客厅','../assets/imgs/product/livingroom-bg.jpg'),
(null,'卧室','专为家里最爱的房间打造','../assets/imgs/product/diningroom-bg.jpg'),
(null,'餐厅','分享美食与欢聚时刻','../assets/imgs/product/bedroom-bg.jpg'),
(null,'厨房','迎接全新的厨房吧','../assets/imgs/product/kitchenroom-bg.jpg'),
(null,'浴室','找到一间浴室，让你的晨间时光清新愉悦','../assets/imgs/product/showerroom-bg.jpg');
/**用户信息**/
CREATE TABLE user(
  sid INT PRIMARY KEY AUTO_INCREMENT,
  uname VARCHAR(32),
  upwd VARCHAR(32),
  email VARCHAR(64),
  phone VARCHAR(16)
);
INSERT INTO user VALUES
(NULL, 'dingding', '123456', 'ding@qq.com', '13501234567'),
(NULL, 'dangdang', '123456', 'dang@qq.com', '13501234568'),
(NULL, 'doudou', '123456', 'dou@qq.com', '13501234569'),
(NULL, 'yaya', '123456', 'ya@qq.com', '13501234560');
/*购物车表*/
CREATE TABLE shoppingcart(
   iid INT PRIMARY KEY AUTO_INCREMENT,
   sid int(11),
   fp_id int(11),
   count int(11),
   is_checked tinyint(1)
);
INSERT INTO shoppingcart VALUES ('1', '10', '17', '1', '0');
INSERT INTO shoppingcart VALUES ('2', '11', '11', '1', '0');
INSERT INTO shoppingcart VALUES ('3', '12', '1', '1', '1');
INSERT INTO shoppingcart VALUES ('4', '13', '3', '9', '0');
INSERT INTO shoppingcart VALUES ('5', '14', '1', '1', '0');
INSERT INTO shoppingcart VALUES ('13', '20', '1', '1', '1');
INSERT INTO shoppingcart VALUES ('14', '22', '17', '11', '1');
INSERT INTO shoppingcart VALUES ('15', '20', '28', '1', '0');
INSERT INTO shoppingcart VALUES ('16', '25', '2', '1', '1');
INSERT INTO shoppingcart VALUES ('17', '3', '28', '1', '1');
INSERT INTO shoppingcart VALUES ('18', '3', '14', '1', '1');
INSERT INTO shoppingcart VALUES ('19', '28', '1', '99997', '0');
INSERT INTO shoppingcart VALUES ('20', '29', '31', '1', '1');










