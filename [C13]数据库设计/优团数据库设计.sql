/*==============================================================*/
/* DBMS name:      MySQL 5.0                                    */
/* Created on:     2021/6/24 16:42:44                           */
/*==============================================================*/


drop table if exists ���׾��ױ�;

drop table if exists ��ע��;

drop table if exists ��̬��;

drop table if exists �Ź���;

drop table if exists �ҵ�������;

drop table if exists Ͷ�߱�;

drop table if exists �ջ����;

drop table if exists ���ޱ�;

drop table if exists �û���;

drop table if exists ���߱�;

drop table if exists ������;

drop table if exists ����Ա�û���;

drop table if exists ϵͳ֪ͨ��;

drop table if exists ������;

drop table if exists ���۱�;

/*==============================================================*/
/* Table: ���׾��ױ�                                                 */
/*==============================================================*/
create table ���׾��ױ�
(
   ���ױ��                 varchar(8) not null,
   ���׷�1�û����             varchar(8),
   ���׷�2�û����             varchar(8),
   ��������                 int,
   ����״̬                 int,
   ����ԭ��                 varchar(200),
   ���׽��                 varchar(200),
   primary key (���ױ��)
);

alter table ���׾��ױ� comment '���׾��ױ�';

/*==============================================================*/
/* Table: ��ע��                                                   */
/*==============================================================*/
create table ��ע��
(
   �û���_�û����             varchar(8) not null,
   �û����                 varchar(8) not null,
   primary key (�û���_�û����, �û����)
);

alter table ��ע�� comment '��ע��';

/*==============================================================*/
/* Table: ��̬��                                                   */
/*==============================================================*/
create table ��̬��
(
   ��̬���                 varchar(8) not null,
   �û����                 varchar(8),
   ��̬��Ƶ��ͼƬ��Դ            longblob,
   ��̬����                 varchar(20),
   ��̬����                 varchar(200),
   ��̬������                int,
   ��̬�����                int,
   ��̬������                int,
   ��̬״̬��                int,
   primary key (��̬���)
);

alter table ��̬�� comment '��̬��';

/*==============================================================*/
/* Table: �Ź���                                                   */
/*==============================================================*/
create table �Ź���
(
   �Ź����                 varchar(8) not null,
   �û����                 varchar(8),
   �ջ�����                varchar(8),
   �������                 varchar(8),
   �Ź�����                 varchar(50),
   �Ź�����                 varchar(50),
   �Ź�����ͼƬ               longblob,
   �Ź��۸�                 float,
   �Ź�״̬��                int,
   ��������                 int,
   ȡ��ʱ��                 varchar(50),
   ����ʱ��                 varchar(50),
   ���Ź�����                int,
   �Ѿ�������Ź�����            int,
   primary key (�Ź����)
);

alter table �Ź��� comment '�Ź���';

/*==============================================================*/
/* Table: �ҵ�������                                                 */
/*==============================================================*/
create table �ҵ�������
(
   �û����                 varchar(8) not null,
   �������                 varchar(8) not null,
   primary key (�û����, �������)
);

alter table �ҵ������� comment '�ҵ�������';

/*==============================================================*/
/* Table: Ͷ�߱�                                                   */
/*==============================================================*/
create table Ͷ�߱�
(
   �û����                 varchar(8),
   Ͷ�߱��                 varchar(8) not null,
   ���ٱ����û����             varchar(8),
   Ͷ������                 varchar(8),
   Ͷ������                 int,
   ����״̬                 int,
   Ͷ������                 varchar(200),
   Ͷ�ߴ���                 int,
   primary key (Ͷ�߱��)
);

alter table Ͷ�߱� comment 'Ͷ�߱�';

/*==============================================================*/
/* Table: �ջ����                                                  */
/*==============================================================*/
create table �ջ����
(
   �ջ�����                varchar(8) not null,
   �ջ�������                varchar(50),
   �ջ����ַ��Ϣ              varchar(100),
   �ջ������                bool,
   primary key (�ջ�����)
);

alter table �ջ���� comment '�ջ����';

/*==============================================================*/
/* Table: ���ޱ�                                                   */
/*==============================================================*/
create table ���ޱ�
(
   ��̬���                 varchar(8) not null,
   �û����                 varchar(8) not null,
   primary key (��̬���, �û����)
);

alter table ���ޱ� comment '���ޱ�';

/*==============================================================*/
/* Table: �û���                                                   */
/*==============================================================*/
create table �û���
(
   �û����                 varchar(8) not null,
   �������                 varchar(8),
   �û���                  varchar(50),
   ����                   varchar(50),
   �ǳ�                   varchar(50),
   ���֤����                varchar(18),
   ͷ��                   longblob,
   �˺�״̬                 int,
   �Ƿ���֤                 bool,
   primary key (�û����)
);

alter table �û��� comment '�û���';

/*==============================================================*/
/* Table: ���߱�                                                   */
/*==============================================================*/
create table ���߱�
(
   ���߱��                 varchar(8) not null,
   �û����                 varchar(8),
   Ͷ�߱��                 varchar(8),
   ��������                 varchar(8),
   ��Դ���                 int,
   ����״̬                 int,
   ��������                 varchar(200),
   primary key (���߱��)
);

alter table ���߱� comment '���߱�';

/*==============================================================*/
/* Table: ������                                                   */
/*==============================================================*/
create table ������
(
   �������                 varchar(8) not null,
   ��������                 varchar(50),
   ����λ��                 varchar(50),
   primary key (�������)
);

alter table ������ comment '������';

/*==============================================================*/
/* Table: ����Ա�û���                                                */
/*==============================================================*/
create table ����Ա�û���
(
   ����Ա�û����              varchar(8) not null,
   ����Ա����                varchar(8),
   ����Ա����                varchar(18),
   ����Ա�ǳ�                varchar(10),
   ����Աͷ��                longblob,
   �ϴε�¼ʱ��               varchar(12),
   ��¼���                 int,
   primary key (����Ա�û����)
);

alter table ����Ա�û��� comment '����Ա�û���';

/*==============================================================*/
/* Table: ϵͳ֪ͨ��                                                 */
/*==============================================================*/
create table ϵͳ֪ͨ��
(
   ֪ͨ���                 varchar(8) not null,
   ����Ա�û����              varchar(8),
   ֪ͨʱ��                 varchar(12),
   ֪ͨ����                 varchar(100),
   primary key (֪ͨ���)
);

alter table ϵͳ֪ͨ�� comment 'ϵͳ֪ͨ��';

/*==============================================================*/
/* Table: ������                                                   */
/*==============================================================*/
create table ������
(
   �û����                 varchar(8),
   �������                 varchar(8) not null,
   �ջ�����                varchar(8),
   �Ź����                 varchar(8),
   �����۸�                 float,
   ���������ջ���              longblob,
   primary key (�������)
);

alter table ������ comment '������';

/*==============================================================*/
/* Table: ���۱�                                                   */
/*==============================================================*/
create table ���۱�
(
   �û����                 varchar(8) not null,
   ��̬���                 varchar(8) not null,
   ���۱��                 varchar(8) not null,
   ��������                 varchar(100),
   primary key (�û����, ��̬���, ���۱��)
);

alter table ���۱� comment '���۱�';

alter table ���׾��ױ� add constraint FK_���׷�1 foreign key (���׷�2�û����)
      references �û��� (�û����) on delete restrict on update restrict;

alter table ���׾��ױ� add constraint FK_���׷�2 foreign key (���׷�1�û����)
      references �û��� (�û����) on delete restrict on update restrict;

alter table ��ע�� add constraint FK_�û���ע foreign key (�û���_�û����)
      references �û��� (�û����) on delete restrict on update restrict;

alter table ��ע�� add constraint FK_����ע foreign key (�û����)
      references �û��� (�û����) on delete restrict on update restrict;

alter table ��̬�� add constraint FK_������̬ foreign key (�û����)
      references �û��� (�û����) on delete restrict on update restrict;

alter table �Ź��� add constraint FK_�����Ź� foreign key (�û����)
      references �û��� (�û����) on delete restrict on update restrict;

alter table �Ź��� add constraint FK_�Ź����ڵ����� foreign key (�������)
      references ������ (�������) on delete restrict on update restrict;

alter table �Ź��� add constraint FK_ָ�����ջ����� foreign key (�ջ�����)
      references �ջ���� (�ջ�����) on delete restrict on update restrict;

alter table �ҵ������� add constraint FK_�û��ղص����� foreign key (�������)
      references ������ (�������) on delete restrict on update restrict;

alter table �ҵ������� add constraint FK_�û�ѡ���ղص����� foreign key (�û����)
      references �û��� (�û����) on delete restrict on update restrict;

alter table Ͷ�߱� add constraint FK_�û�Ͷ�� foreign key (�û����)
      references �û��� (�û����) on delete restrict on update restrict;

alter table Ͷ�߱� add constraint FK_���ٱ� foreign key (���ٱ����û����)
      references �û��� (�û����) on delete restrict on update restrict;

alter table ���ޱ� add constraint FK_�Զ�̬���� foreign key (��̬���)
      references ��̬�� (��̬���) on delete restrict on update restrict;

alter table ���ޱ� add constraint FK_�û����� foreign key (�û����)
      references �û��� (�û����) on delete restrict on update restrict;

alter table �û��� add constraint FK_�û��������� foreign key (�������)
      references ������ (�������) on delete restrict on update restrict;

alter table ���߱� add constraint FK_�û����� foreign key (�û����)
      references �û��� (�û����) on delete restrict on update restrict;

alter table ���߱� add constraint FK_����Ͷ�߽�� foreign key (Ͷ�߱��)
      references Ͷ�߱� (Ͷ�߱��) on delete restrict on update restrict;

alter table ϵͳ֪ͨ�� add constraint FK_����Ա����֪ͨ foreign key (����Ա�û����)
      references ����Ա�û��� (����Ա�û����) on delete restrict on update restrict;

alter table ������ add constraint FK_�Ź����ɶ��� foreign key (�Ź����)
      references �Ź��� (�Ź����) on delete restrict on update restrict;

alter table ������ add constraint FK_�û��µ� foreign key (�û����)
      references �û��� (�û����) on delete restrict on update restrict;

alter table ������ add constraint FK_ѡ�� foreign key (�ջ�����)
      references �ջ���� (�ջ�����) on delete restrict on update restrict;

alter table ���۱� add constraint FK_�Զ�̬���� foreign key (��̬���)
      references ��̬�� (��̬���) on delete restrict on update restrict;

alter table ���۱� add constraint FK_�û��������� foreign key (�û����)
      references �û��� (�û����) on delete restrict on update restrict;

