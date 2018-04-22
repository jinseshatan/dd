alter table dd_address
   drop constraint FK_DD_ADDRE_FK_USER_A_DD_USER;

alter table dd_category
   drop constraint FK_DD_CATEG_REFERENCE_DD_CATEG;

alter table dd_item
   drop constraint FK_DD_ITEM_REFERENCE_DD_PRODU;

alter table dd_item
   drop constraint FK_DD_ITEM_REFERENCE_DD_ORDER;

alter table dd_order
   drop constraint FK_DD_ORDER_REFERENCE_DD_USER;

alter table dd_order
   drop constraint FK_DD_ORDER_REFERENCE_DD_ADDRE;

alter table dd_product
   drop constraint FK_DD_PRODU_REFERENCE_DD_CATEG;

drop table dd_address cascade constraints;

drop table dd_category cascade constraints;

drop table dd_item cascade constraints;

drop table dd_order cascade constraints;

drop table dd_product cascade constraints;

drop table dd_user cascade constraints;

/*==============================================================*/
/* Table: dd_address                                            */
/*==============================================================*/
create table dd_address  (
   address_id           NUMBER(10)                      not null,
   user_id              NUMBER(10),
   address_detail       VARCHAR2(255),
   address_zipcode      NUMBER(6),
   address_name         VARCHAR2(50),
   address_phone        VARCHAR2(11),
   address_mobile       VARCHAR2(11),
   constraint PK_DD_ADDRESS primary key (address_id)
);
drop table dd_address cascade constraint;
select * from dd_address;

create sequence dd_address_id_seq increment by 1 start with 1000;

/*==============================================================*/
/* Table: dd_category                                           */
/*==============================================================*/
create table dd_category  (
   category_id          NUMBER(10)                      not null,
   category_name        VARCHAR2(50),
   category_parent_id   NUMBER(10),
   category_count       NUMBER(10),
   constraint PK_DD_CATEGORY primary key (category_id)
);
drop table dd_category cascade constraint;
select * from dd_category;
insert into dd_category values(1,'小说',null,16);
insert into dd_category values(2,'当代小说',1,12);
insert into dd_category values(3,'近现代小说',1,4);
insert into dd_category values(4,'古典小说',1,0);
insert into dd_category values(5,'四大名著',1,0);
insert into dd_category values(6,'世界名著',1,0);
insert into dd_category values(7,'青春',null,0);
insert into dd_category values(8,'爱情/情感',7,0);
insert into dd_category values(9,'叛逆/成长',7,0);
insert into dd_category values(10,'玄幻',7,0);
insert into dd_category values(11,'原创',7,0);
insert into dd_category values(12,'人文社科',null,0);
insert into dd_category values(13,'政治',12,0);
insert into dd_category values(14,'经济',12,0);
insert into dd_category values(15,'法律',12,0);
insert into dd_category values(16,'哲学',12,0);
insert into dd_category values(17,'历史',12,0);
insert into dd_category values(19,'管理学',null,0);
insert into dd_category values(20,'战略管理',19,0);
insert into dd_category values(21,'市场营销',19,0);
insert into dd_category values(22,'商业史传',19,0);
insert into dd_category values(23,'电子商务',19,0);
insert into dd_category values(24,'少儿',null,0);
insert into dd_category values(25,'0~2岁',24,0);
insert into dd_category values(26,'3~6岁',24,0);
insert into dd_category values(27,'7~10岁',24,0);
insert into dd_category values(28,'11~14岁',24,0);
insert into dd_category values(29,'儿童文学',24,0);
insert into dd_category values(30,'外语',null,0);
insert into dd_category values(31,'英语',30,0);
insert into dd_category values(32,'日语',30,0);
insert into dd_category values(33,'韩语',30,0);
insert into dd_category values(34,'俄语',30,0);
insert into dd_category values(35,'德语',30,0);
insert into dd_category values(36,'计算机',null,0);
insert into dd_category values(37,'计算机理论',36,0);
insert into dd_category values(38,'数据库',36,0);
insert into dd_category values(39,'程序设计',36,0);
insert into dd_category values(40,'人工智能',36,0);
insert into dd_category values(41,'计算机考试',36,0);

delete from dd_category where category_id = 1;
/*==============================================================*/
/* Table: dd_item                                               */
/*==============================================================*/
create table dd_item  (
   item_id              NUMBER(10)                      not null,
   product_id           NUMBER(10),
   item_count           NUMBER(10),
   item_price           NUMBER(10,2),
   order_id             NUMBER(10),
   constraint PK_DD_ITEM primary key (item_id)
);

create sequence dd_item_id_seq increment by 1 start with 1000;

/*==============================================================*/
/* Table: dd_order                                              */
/*==============================================================*/
create table dd_order  (
   order_id             NUMBER(10)                      not null,
   order_time           DATE,
   order_status         VARCHAR2(1),
   order_totalprice     NUMBER(10,2),
   address_id           NUMBER(10),
   user_id              NUMBER(10),
   constraint PK_DD_ORDER primary key (order_id)
);

create sequence dd_order_id_seq increment by 1 start with 1000;

/*==============================================================*/
/* Table: dd_product                                            */
/*==============================================================*/
create table dd_product  (
   product_id           NUMBER(10)                      not null,
   product_name         VARCHAR2(50),
   product_author       VARCHAR2(50),
   product_publish      VARCHAR2(50),
   product_publish_time DATE,
   product_edition      NUMBER(10),
   product_printing_time DATE,
   product_impression   NUMBER(10),
   product_isbn         VARCHAR2(50),
   product_word         NUMBER(10),
   product_page         NUMBER(10),
   product_size         VARCHAR2(50),
   product_paper        VARCHAR2(50),
   product_pack         VARCHAR2(50),
   product_price        NUMBER(10,2),
   product_dprice       NUMBER(10,2),
   product_pic          VARCHAR2(100),
   product_recommend    VARCHAR2(1000),
   product_content_intro VARCHAR2(1000),
   product_author_intro VARCHAR2(1000),
   product_catalog      VARCHAR2(50),
   product_comment      VARCHAR2(1000),
   product_sales_volume NUMBER(10),
   product_release_time DATE,
   product_inventory    NUMBER(10),
   category_id          NUMBER(10),
   product_score       NUMBER(10),
   product_pv          NUMBER(10),
   constraint PK_DD_PRODUCT primary key (product_id)
);

insert into dd_product values (
1,'上课的事情','我','新华社',to_date('2017-10-9','yyyy-mm-dd'),
1,to_date('2017-10-9','yyyy-mm-dd'),1,'123456',1000,
222,'16开','A4','精装',200,
180,'1.jpg','编辑推荐','我是内容简介','我是作者简介',
'我是目录','我是评论',100,to_date('2017-10-9','yyyy-mm-dd'),100,
2,10,30);
insert into dd_product values (
2,'上课的事情','我','新华社',to_date('2017-10-10','yyyy-mm-dd'),
1,to_date('2017-10-10','yyyy-mm-dd'),1,'123456',20000,
222,'16开','A4','精装',200,
180,'2.jpg','编辑推荐','我是内容简介','我是作者简介',
'我是目录','我是评论',200,to_date('2017-10-10','yyyy-mm-dd'),100,
2,10,30);
insert into dd_product values (
3,'上课的事情','我','新华社',to_date('2017-10-11','yyyy-mm-dd'),
1,to_date('2017-10-11','yyyy-mm-dd'),1,'123456',100000,
222,'16开','A4','精装',200,
180,'3.jpg','编辑推荐','我是内容简介','我是作者简介',
'我是目录','我是评论',300,to_date('2017-10-11','yyyy-mm-dd'),100,
2,10,30);
insert into dd_product values (
4,'上课的事情','我','新华社',to_date('2017-10-12','yyyy-mm-dd'),
1,to_date('2017-10-12','yyyy-mm-dd'),1,'123456',110000,
222,'16开','A4','精装',200,
180,'4.jpg','编辑推荐','我是内容简介','我是作者简介',
'我是目录','我是评论',400,to_date('2017-10-12','yyyy-mm-dd'),100,
2,10,30);
insert into dd_product values (
5,'上课的事情','我','新华社',to_date('2017-10-13','yyyy-mm-dd'),
1,to_date('2017-10-13','yyyy-mm-dd'),1,'123456',200,
222,'16开','A4','精装',200,
180,'5.jpg','编辑推荐','我是内容简介','我是作者简介',
'我是目录','我是评论',200,to_date('2017-10-13','yyyy-mm-dd'),100,
2,10,30);
insert into dd_product values (
6,'上课的事情','我','新华社',to_date('2017-10-14','yyyy-mm-dd'),
1,to_date('2017-10-14','yyyy-mm-dd'),1,'123456',5000,
222,'16开','A4','精装',200,
180,'6.jpg','编辑推荐','我是内容简介','我是作者简介',
'我是目录','我是评论',500,to_date('2017-10-14','yyyy-mm-dd'),100,
2,10,30);
insert into dd_product values (
7,'上课的事情','我','新华社',to_date('2017-10-15','yyyy-mm-dd'),
1,to_date('2017-10-15','yyyy-mm-dd'),1,'123456',8000,
222,'16开','A4','精装',200,
180,'7.jpg','编辑推荐','我是内容简介','我是作者简介',
'我是目录','我是评论',600,to_date('2017-10-15','yyyy-mm-dd'),100,
2,10,30);
insert into dd_product values (
8,'上课的事情','我','新华社',to_date('2017-10-8','yyyy-mm-dd'),
1,to_date('2017-10-9','yyyy-mm-dd'),1,'123456',1000,
222,'16开','A4','精装',200,
180,'8.jpg','编辑推荐','我是内容简介','我是作者简介',
'我是目录','我是评论',700,to_date('2017-10-12','yyyy-mm-dd'),100,
2,10,30);
insert into dd_product values (
9,'上课的事情','我','新华社',to_date('2017-10-9','yyyy-mm-dd'),
1,to_date('2017-10-9','yyyy-mm-dd'),1,'123456',10000,
222,'16开','A4','精装',200,
180,'9.jpg','编辑推荐','我是内容简介','我是作者简介',
'我是目录','我是评论',300,to_date('2017-10-15','yyyy-mm-dd'),100,
2,10,30);
insert into dd_product values (
10,'上课的事情','我','新华社',to_date('2017-10-15','yyyy-mm-dd'),
1,to_date('2017-10-9','yyyy-mm-dd'),1,'123456',50000,
222,'16开','A4','精装',200,
180,'11.jpg','编辑推荐','我是内容简介','我是作者简介',
'我是目录','我是评论',700,to_date('2017-10-14','yyyy-mm-dd'),100,
2,10,30);
insert into dd_product values (
11,'上课的事情','我','新华社',to_date('2017-10-9','yyyy-mm-dd'),
1,to_date('2017-10-9','yyyy-mm-dd'),1,'123456',200000,
222,'16开','A4','精装',200,
180,'12.jpg','编辑推荐','我是内容简介','我是作者简介',
'我是目录','我是评论',800,to_date('2017-10-14','yyyy-mm-dd'),100,
2,10,30);
insert into dd_product values (
12,'上课的事情','我','新华社',to_date('2017-10-9','yyyy-mm-dd'),
1,to_date('2017-10-9','yyyy-mm-dd'),1,'123456',500000,
222,'16开','A4','精装',200,
180,'13.jpg','编辑推荐','我是内容简介','我是作者简介',
'我是目录','我是评论',700,to_date('2017-10-9','yyyy-mm-dd'),100,
2,10,30);
insert into dd_product values (
13,'上课的事情','我','新华社',to_date('2017-10-9','yyyy-mm-dd'),
1,to_date('2017-10-9','yyyy-mm-dd'),1,'123456',1000000,
222,'16开','A4','精装',200,
180,'14.jpg','编辑推荐','我是内容简介','我是作者简介',
'我是目录','我是评论',500,to_date('2017-10-9','yyyy-mm-dd'),100,
3,10,30);
insert into dd_product values (
14,'上课的事情','我','新华社',to_date('2017-10-11','yyyy-mm-dd'),
1,to_date('2017-10-9','yyyy-mm-dd'),1,'123456',200,
222,'16开','A4','精装',200,
180,'15.jpg','编辑推荐','我是内容简介','我是作者简介',
'我是目录','我是评论',200,to_date('2017-10-9','yyyy-mm-dd'),100,
3,10,30);
insert into dd_product values (
15,'上课的事情','我','新华社',to_date('2017-10-9','yyyy-mm-dd'),
1,to_date('2017-10-9','yyyy-mm-dd'),1,'123456',300,
222,'16开','A4','精装',200,
180,'16.jpg','编辑推荐','我是内容简介','我是作者简介',
'我是目录','我是评论',800,to_date('2017-10-9','yyyy-mm-dd'),100,
3,10,30);
insert into dd_product values (
16,'上课的事情','我','新华社',to_date('2017-10-9','yyyy-mm-dd'),
1,to_date('2017-10-9','yyyy-mm-dd'),1,'123456',15000,
222,'16开','A4','精装',200,
180,'7.jpg','编辑推荐','我是内容简介','我是作者简介',
'我是目录','我是评论',1000,to_date('2017-10-9','yyyy-mm-dd'),100,
3,10,30);

select * from dd_product;
delete from dd_product where product_id between 1 and 16;
/*==============================================================*/
/* Table: dd_user                                               */
/*==============================================================*/
create table dd_user  (
   user_id              NUMBER(10)                      not null,
   user_email           varchar2(30)                    not null,
   user_nikcname        varchar2(30),
   user_password        varchar2(255),
   user_status          Varchar2(1),
   user_registertime      DATE,
   user_salt            varchar2(255),
   constraint PK_DD_USER primary key (user_id)
);

create sequence dd_user_id_seq increment by 1 start with 1;

alter table dd_address
   add constraint FK_DD_ADDRE_FK_USER_A_DD_USER foreign key (user_id)
      references dd_user (user_id);

alter table dd_category
   add constraint FK_DD_CATEG_REFERENCE_DD_CATEG foreign key (category_parent_id)
      references dd_category (category_id);

alter table dd_item
   add constraint FK_DD_ITEM_REFERENCE_DD_PRODU foreign key (product_id)
      references dd_product (product_id);

alter table dd_item
   add constraint FK_DD_ITEM_REFERENCE_DD_ORDER foreign key (order_id)
      references dd_order (order_id);

alter table dd_order
   add constraint FK_DD_ORDER_REFERENCE_DD_USER foreign key (user_id)
      references dd_user (user_id);

alter table dd_order
   add constraint FK_DD_ORDER_REFERENCE_DD_ADDRE foreign key (address_id)
      references dd_address (address_id);

alter table dd_product
   add constraint FK_DD_PRODU_REFERENCE_DD_CATEG foreign key (category_id)
      references dd_category (category_id);