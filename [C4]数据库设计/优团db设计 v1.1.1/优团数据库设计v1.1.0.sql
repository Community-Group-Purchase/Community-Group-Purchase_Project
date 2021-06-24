/*==============================================================*/
/* DBMS name:      MySQL 5.0                                    */
/* Created on:     2021/6/24 16:42:44                           */
/*==============================================================*/


drop table if exists 交易纠纷表;

drop table if exists 关注表;

drop table if exists 动态表;

drop table if exists 团购表;

drop table if exists 我的社区表;

drop table if exists 投诉表;

drop table if exists 收货点表;

drop table if exists 点赞表;

drop table if exists 用户表;

drop table if exists 申诉表;

drop table if exists 社区表;

drop table if exists 管理员用户表;

drop table if exists 系统通知表;

drop table if exists 订单表;

drop table if exists 评论表;

/*==============================================================*/
/* Table: 交易纠纷表                                                 */
/*==============================================================*/
create table 交易纠纷表
(
   纠纷编号                 varchar(8) not null,
   纠纷方1用户编号             varchar(8),
   纠纷方2用户编号             varchar(8),
   纠纷类型                 int,
   介入状态                 int,
   纠纷原因                 varchar(200),
   纠纷结果                 varchar(200),
   primary key (纠纷编号)
);

alter table 交易纠纷表 comment '交易纠纷表';

/*==============================================================*/
/* Table: 关注表                                                   */
/*==============================================================*/
create table 关注表
(
   用户表_用户编号             varchar(8) not null,
   用户编号                 varchar(8) not null,
   primary key (用户表_用户编号, 用户编号)
);

alter table 关注表 comment '关注表';

/*==============================================================*/
/* Table: 动态表                                                   */
/*==============================================================*/
create table 动态表
(
   动态编号                 varchar(8) not null,
   用户编号                 varchar(8),
   动态视频或图片资源            longblob,
   动态标题                 varchar(20),
   动态描述                 varchar(200),
   动态点赞数                int,
   动态浏览数                int,
   动态评论数                int,
   动态状态字                int,
   primary key (动态编号)
);

alter table 动态表 comment '动态表';

/*==============================================================*/
/* Table: 团购表                                                   */
/*==============================================================*/
create table 团购表
(
   团购编号                 varchar(8) not null,
   用户编号                 varchar(8),
   收货点编号                varchar(8),
   社区编号                 varchar(8),
   团购名称                 varchar(50),
   团购描述                 varchar(50),
   团购详情图片               longblob,
   团购价格                 float,
   团购状态字                int,
   货物数量                 int,
   取货时段                 varchar(50),
   截至时间                 varchar(50),
   总团购人数                int,
   已经参与的团购人数            int,
   primary key (团购编号)
);

alter table 团购表 comment '团购表';

/*==============================================================*/
/* Table: 我的社区表                                                 */
/*==============================================================*/
create table 我的社区表
(
   用户编号                 varchar(8) not null,
   社区编号                 varchar(8) not null,
   primary key (用户编号, 社区编号)
);

alter table 我的社区表 comment '我的社区表';

/*==============================================================*/
/* Table: 投诉表                                                   */
/*==============================================================*/
create table 投诉表
(
   用户编号                 varchar(8),
   投诉编号                 varchar(8) not null,
   被举报的用户编号             varchar(8),
   投诉名称                 varchar(8),
   投诉类型                 int,
   处理状态                 int,
   投诉内容                 varchar(200),
   投诉处理                 int,
   primary key (投诉编号)
);

alter table 投诉表 comment '投诉表';

/*==============================================================*/
/* Table: 收货点表                                                  */
/*==============================================================*/
create table 收货点表
(
   收货点编号                varchar(8) not null,
   收货点名称                varchar(50),
   收货点地址信息              varchar(100),
   收货点可用                bool,
   primary key (收货点编号)
);

alter table 收货点表 comment '收货点表';

/*==============================================================*/
/* Table: 点赞表                                                   */
/*==============================================================*/
create table 点赞表
(
   动态编号                 varchar(8) not null,
   用户编号                 varchar(8) not null,
   primary key (动态编号, 用户编号)
);

alter table 点赞表 comment '点赞表';

/*==============================================================*/
/* Table: 用户表                                                   */
/*==============================================================*/
create table 用户表
(
   用户编号                 varchar(8) not null,
   社区编号                 varchar(8),
   用户名                  varchar(50),
   密码                   varchar(50),
   昵称                   varchar(50),
   身份证号码                varchar(18),
   头像                   longblob,
   账号状态                 int,
   是否认证                 bool,
   primary key (用户编号)
);

alter table 用户表 comment '用户表';

/*==============================================================*/
/* Table: 申诉表                                                   */
/*==============================================================*/
create table 申诉表
(
   申诉编号                 varchar(8) not null,
   用户编号                 varchar(8),
   投诉编号                 varchar(8),
   申诉名称                 varchar(8),
   针对处理                 int,
   处理状态                 int,
   申诉内容                 varchar(200),
   primary key (申诉编号)
);

alter table 申诉表 comment '申诉表';

/*==============================================================*/
/* Table: 社区表                                                   */
/*==============================================================*/
create table 社区表
(
   社区编号                 varchar(8) not null,
   社区名称                 varchar(50),
   社区位置                 varchar(50),
   primary key (社区编号)
);

alter table 社区表 comment '社区表';

/*==============================================================*/
/* Table: 管理员用户表                                                */
/*==============================================================*/
create table 管理员用户表
(
   管理员用户编号              varchar(8) not null,
   管理员工号                varchar(8),
   管理员密码                varchar(18),
   管理员昵称                varchar(10),
   管理员头像                longblob,
   上次登录时间               varchar(12),
   登录情况                 int,
   primary key (管理员用户编号)
);

alter table 管理员用户表 comment '管理员用户表';

/*==============================================================*/
/* Table: 系统通知表                                                 */
/*==============================================================*/
create table 系统通知表
(
   通知编号                 varchar(8) not null,
   管理员用户编号              varchar(8),
   通知时间                 varchar(12),
   通知内容                 varchar(100),
   primary key (通知编号)
);

alter table 系统通知表 comment '系统通知表';

/*==============================================================*/
/* Table: 订单表                                                   */
/*==============================================================*/
create table 订单表
(
   用户编号                 varchar(8),
   订单编号                 varchar(8) not null,
   收货点编号                varchar(8),
   团购编号                 varchar(8),
   订单价格                 float,
   订单产生收货码              longblob,
   primary key (订单编号)
);

alter table 订单表 comment '订单表';

/*==============================================================*/
/* Table: 评论表                                                   */
/*==============================================================*/
create table 评论表
(
   用户编号                 varchar(8) not null,
   动态编号                 varchar(8) not null,
   评论编号                 varchar(8) not null,
   评论内容                 varchar(100),
   primary key (用户编号, 动态编号, 评论编号)
);

alter table 评论表 comment '评论表';

alter table 交易纠纷表 add constraint FK_纠纷方1 foreign key (纠纷方2用户编号)
      references 用户表 (用户编号) on delete restrict on update restrict;

alter table 交易纠纷表 add constraint FK_纠纷方2 foreign key (纠纷方1用户编号)
      references 用户表 (用户编号) on delete restrict on update restrict;

alter table 关注表 add constraint FK_用户关注 foreign key (用户表_用户编号)
      references 用户表 (用户编号) on delete restrict on update restrict;

alter table 关注表 add constraint FK_被关注 foreign key (用户编号)
      references 用户表 (用户编号) on delete restrict on update restrict;

alter table 动态表 add constraint FK_发布动态 foreign key (用户编号)
      references 用户表 (用户编号) on delete restrict on update restrict;

alter table 团购表 add constraint FK_发布团购 foreign key (用户编号)
      references 用户表 (用户编号) on delete restrict on update restrict;

alter table 团购表 add constraint FK_团购所在的社区 foreign key (社区编号)
      references 社区表 (社区编号) on delete restrict on update restrict;

alter table 团购表 add constraint FK_指定的收货点编号 foreign key (收货点编号)
      references 收货点表 (收货点编号) on delete restrict on update restrict;

alter table 我的社区表 add constraint FK_用户收藏的社区 foreign key (社区编号)
      references 社区表 (社区编号) on delete restrict on update restrict;

alter table 我的社区表 add constraint FK_用户选择收藏的社区 foreign key (用户编号)
      references 用户表 (用户编号) on delete restrict on update restrict;

alter table 投诉表 add constraint FK_用户投诉 foreign key (用户编号)
      references 用户表 (用户编号) on delete restrict on update restrict;

alter table 投诉表 add constraint FK_被举报 foreign key (被举报的用户编号)
      references 用户表 (用户编号) on delete restrict on update restrict;

alter table 点赞表 add constraint FK_对动态点赞 foreign key (动态编号)
      references 动态表 (动态编号) on delete restrict on update restrict;

alter table 点赞表 add constraint FK_用户点赞 foreign key (用户编号)
      references 用户表 (用户编号) on delete restrict on update restrict;

alter table 用户表 add constraint FK_用户所在社区 foreign key (社区编号)
      references 社区表 (社区编号) on delete restrict on update restrict;

alter table 申诉表 add constraint FK_用户申诉 foreign key (用户编号)
      references 用户表 (用户编号) on delete restrict on update restrict;

alter table 申诉表 add constraint FK_申诉投诉结果 foreign key (投诉编号)
      references 投诉表 (投诉编号) on delete restrict on update restrict;

alter table 系统通知表 add constraint FK_管理员发布通知 foreign key (管理员用户编号)
      references 管理员用户表 (管理员用户编号) on delete restrict on update restrict;

alter table 订单表 add constraint FK_团购生成订单 foreign key (团购编号)
      references 团购表 (团购编号) on delete restrict on update restrict;

alter table 订单表 add constraint FK_用户下单 foreign key (用户编号)
      references 用户表 (用户编号) on delete restrict on update restrict;

alter table 订单表 add constraint FK_选择 foreign key (收货点编号)
      references 收货点表 (收货点编号) on delete restrict on update restrict;

alter table 评论表 add constraint FK_对动态评论 foreign key (动态编号)
      references 动态表 (动态编号) on delete restrict on update restrict;

alter table 评论表 add constraint FK_用户发表评论 foreign key (用户编号)
      references 用户表 (用户编号) on delete restrict on update restrict;

