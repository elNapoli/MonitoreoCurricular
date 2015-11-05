/*==============================================================*/
/* DBMS name:      Microsoft SQL Server 2008                    */
/* Created on:     28/05/2015 10:55:03                          */
/*==============================================================*/


if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('ASIGNATURAS') and o.name = 'FK_ASIGNATU_REFERENCE_INSTITUT')
alter table ASIGNATURAS
   drop constraint FK_ASIGNATU_REFERENCE_INSTITUT
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('CARRERAS') and o.name = 'FK_CARRERAS_REFERENCE_ESCUELAS')
alter table CARRERAS
   drop constraint FK_CARRERAS_REFERENCE_ESCUELAS
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('ESCUELAS') and o.name = 'FK_ESCUELAS_REFERENCE_FACULTAD')
alter table ESCUELAS
   drop constraint FK_ESCUELAS_REFERENCE_FACULTAD
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('HISTORIAL_CURRICULAR') and o.name = 'FK_HISTORIA_REFERENCE_PLAN_ASI')
alter table HISTORIAL_CURRICULAR
   drop constraint FK_HISTORIA_REFERENCE_PLAN_ASI
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('PLANESTUDIO') and o.name = 'FK_PLANESTU_REFERENCE_CARRERAS')
alter table PLANESTUDIO
   drop constraint FK_PLANESTU_REFERENCE_CARRERAS
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('PLAN_ASIGNATURA') and o.name = 'FK_PLAN_ASI_REFERENCE_ASIGNATU')
alter table PLAN_ASIGNATURA
   drop constraint FK_PLAN_ASI_REFERENCE_ASIGNATU
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('PLAN_ASIGNATURA') and o.name = 'FK_PLAN_ASI_REFERENCE_PLANESTU')
alter table PLAN_ASIGNATURA
   drop constraint FK_PLAN_ASI_REFERENCE_PLANESTU
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('PLAN_ASIG_REQUISITOS') and o.name = 'FK_PLAN_ASI_REFERENCE_PLAN_ASI')
alter table PLAN_ASIG_REQUISITOS
   drop constraint FK_PLAN_ASI_REFERENCE_PLAN_ASI
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('RESITRO') and o.name = 'FK_RESITRO_REFERENCE_USUARIO')
alter table RESITRO
   drop constraint FK_RESITRO_REFERENCE_USUARIO
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('RESITRO') and o.name = 'FK_RESITRO_REFERENCE_HISTORIA')
alter table RESITRO
   drop constraint FK_RESITRO_REFERENCE_HISTORIA
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('RESOLUCIONES') and o.name = 'FK_RESOLUCI_REFERENCE_HISTORIA')
alter table RESOLUCIONES
   drop constraint FK_RESOLUCI_REFERENCE_HISTORIA
go

if exists (select 1
            from  sysobjects
           where  id = object_id('ASIGNATURAS')
            and   type = 'U')
   drop table ASIGNATURAS
go

if exists (select 1
            from  sysobjects
           where  id = object_id('CARRERAS')
            and   type = 'U')
   drop table CARRERAS
go

if exists (select 1
            from  sysobjects
           where  id = object_id('ESCUELAS')
            and   type = 'U')
   drop table ESCUELAS
go

if exists (select 1
            from  sysobjects
           where  id = object_id('FACULTAD')
            and   type = 'U')
   drop table FACULTAD
go

if exists (select 1
            from  sysobjects
           where  id = object_id('HISTORIAL_CURRICULAR')
            and   type = 'U')
   drop table HISTORIAL_CURRICULAR
go

if exists (select 1
            from  sysobjects
           where  id = object_id('INSTITUTOS')
            and   type = 'U')
   drop table INSTITUTOS
go

if exists (select 1
            from  sysobjects
           where  id = object_id('PLANESTUDIO')
            and   type = 'U')
   drop table PLANESTUDIO
go

if exists (select 1
            from  sysobjects
           where  id = object_id('PLAN_ASIGNATURA')
            and   type = 'U')
   drop table PLAN_ASIGNATURA
go

if exists (select 1
            from  sysobjects
           where  id = object_id('PLAN_ASIG_REQUISITOS')
            and   type = 'U')
   drop table PLAN_ASIG_REQUISITOS
go

if exists (select 1
            from  sysobjects
           where  id = object_id('RESITRO')
            and   type = 'U')
   drop table RESITRO
go

if exists (select 1
            from  sysobjects
           where  id = object_id('RESOLUCIONES')
            and   type = 'U')
   drop table RESOLUCIONES
go

if exists (select 1
            from  sysobjects
           where  id = object_id('USUARIO')
            and   type = 'U')
   drop table USUARIO
go

/*==============================================================*/
/* Table: ASIGNATURAS                                           */
/*==============================================================*/
create table ASIGNATURAS (
   IDASIGNATURA         char(10)             not null,
   NOMASIGNATURA        varchar(200)         not null,
   PARASIGTIPO          smallint             not null default  0,
   DESCASIGNATURA       varchar(255)         not null,
   AGNOINICIO           smallint             not null default  0,
   AGNOTERMINO          smallint             not null default  0,
   PARASIGREG           smallint             not null default  0,
   IDINSTITUTO          smallint             not null default  0,
   TIPOASIGNATURA       char(1)              not null default 'I',
   CREDITOS             smallint             not null default  0,
   PARASIGTIPASIG       smallint             not null default  0,
   HORASTEORICAS        smallint             not null default  0,
   HORASPRACTICAS       smallint             not null default  0,
   PARTIPOAPRENDIZAJE   tinyint              not null default  0,
   NIVELCODIGO          tinyint              not null default  0,
   CREDITOSTRANSFERIBLES tinyint              not null default  0,
   HORASNOPRESENCIALES  tinyint              not null default  0,
   USAUAPRENDIZAJE      bit                  not null default  0,
   REGINTERNO           smallint             not null default  0,
   constraint PK_ASIGNATURAS primary key (IDASIGNATURA)
)
go

/*==============================================================*/
/* Table: CARRERAS                                              */
/*==============================================================*/
create table CARRERAS (
   IDCARRERA            int                  not null default  0,
   NOMCARRERA           varchar(250)         not null,
   AGNOCREACION         smallint             not null default  0,
   AGNOTERMINO          smallint             not null default  0,
   IDESCUELA            smallint             not null default  0,
   CODTIPCARRERA        smallint             not null default  0,
   CODTIPPLAN           smallint             not null default  0,
   CARCODMINISTERIO     int                  not null default  0,
   EMAIL                varchar(100)         null,
   CODDEMRE             int                  null default 0,
   CODAREA              smallint             null default 0,
   REGACADAFECTA        tinyint              null default 0,
   AGNOAFECTAINI        smallint             null default 0,
   constraint PK_CARRERAS primary key (IDCARRERA)
)
go

/*==============================================================*/
/* Table: ESCUELAS                                              */
/*==============================================================*/
create table ESCUELAS (
   IDESCUELA            smallint             not null default  0,
   NOMESCUELA           varchar(250)         not null,
   FONO                 char(15)             not null,
   ESCFAX               char(15)             not null,
   AGNOCREACION         smallint             not null default  0,
   AGNOTERMINO          smallint             not null default  0,
   CAMCODIGO            smallint             not null default  0,
   IDFACULTAD           smallint             not null default  0,
   TIPOESCUELA          char(1)              not null default 'C',
   COMCODIGO            smallint             null default  0,
   constraint PK_ESCUELAS primary key (IDESCUELA)
)
go

/*==============================================================*/
/* Table: FACULTAD                                              */
/*==============================================================*/
create table FACULTAD (
   IDFACULTAD           smallint             not null default  0,
   NOMFACULTAD          varchar(60)          not null,
   FONO                 char(15)             not null,
   CAMCODIGO            smallint             not null default  0,
   AGNOCREACION         smallint             not null default  0,
   AGNOTERMINO          smallint             not null default  0,
   constraint PK_FACULTAD primary key (IDFACULTAD)
)
go

/*==============================================================*/
/* Table: HISTORIAL_CURRICULAR                                  */
/*==============================================================*/
create table HISTORIAL_CURRICULAR (
   IDHISTORIALCURRICULAR smallint             not null,
   IDPLAN               smallint             null default  0,
   IDCARRERA            int                  null,
   IDASIGNATURA         char(10)             null,
   FECHARESOLUCION      date                 null,
   HITO                 varchar(30)          null,
   DESCRIPCIONCAMBIO    varchar(45)          null,
   ANTES                varchar(200)         null,
   DESPUES              char(10)             null,
   constraint PK_HISTORIAL_CURRICULAR primary key (IDHISTORIALCURRICULAR)
)
go

/*==============================================================*/
/* Table: INSTITUTOS                                            */
/*==============================================================*/
create table INSTITUTOS (
   IDINSTITUTO          smallint             not null default  0,
   NOMINSTITUTO         varchar(50)          not null,
   FONO                 char(15)             not null,
   AGNOCREACION         smallint             not null default  0,
   AGNOTERMINO          smallint             not null default  0,
   CAMCODIGO            smallint             not null default  0,
   IDFACTULTAD          smallint             not null default  0,
   TIPOINSTITUTO        char(1)              not null default 'I',
   constraint PK_INSTITUTOS primary key (IDINSTITUTO)
)
go

/*==============================================================*/
/* Table: PLANESTUDIO                                           */
/*==============================================================*/
create table PLANESTUDIO (
   IDPLAN               smallint             not null default  0,
   IDCARRERA            int                  not null default  0,
   PARASIGREG           smallint             not null default  2,
   DURACION             tinyint              not null default  0,
   AGNOINICIO           smallint             not null default  0,
   AGNOTERMINO          smallint             not null default  0,
   NOMTITULO            varchar(200)         not null,
   NOMGRADO             varchar(200)         not null,
   PLANMENSIRVE         char(1)              not null,
   PLANREQGRA           varchar(250)         not null,
   PLANREQTIT           varchar(250)         not null,
   REGTIPO              tinyint              not null default  0,
   PARCODTIT            smallint             not null default  0,
   PLANNOMBACHICHERATO  varchar(255)         not null,
   BACHILLERATO         tinyint              not null default  0,
   PLANREQBACHILLERATO  varchar(250)         not null,
   USACREDPLANOPT       tinyint              null default 0,
   MINCREDPLANOPT       smallint             null default 0,
   MAXCREDPLANOPT       smallint             null default 0,
   constraint PK_PLANESTUDIO primary key (IDPLAN, IDCARRERA)
)
go

/*==============================================================*/
/* Table: PLAN_ASIGNATURA                                       */
/*==============================================================*/
create table PLAN_ASIGNATURA (
   IDPLAN               smallint             not null default  0,
   IDCARRERA            int                  not null,
   IDASIGNATURA         char(10)             not null,
   NIVELPLAN            tinyint              not null default  0,
   TIPOPLAN             char(1)              not null default 'R',
   ASIGSIRVEPLAN        char(1)              not null default 'E',
   AFECTAPROM           char(1)              not null default 'S',
   ASIGBACHILLERATO     tinyint              not null default  0,
   constraint PK_PLAN_ASIGNATURA primary key (IDPLAN, IDCARRERA, IDASIGNATURA)
)
go

/*==============================================================*/
/* Table: PLAN_ASIG_REQUISITOS                                  */
/*==============================================================*/
create table PLAN_ASIG_REQUISITOS (
   IDPLAN               smallint             not null default  0,
   IDCARRERA            int                  not null default  0,
   IDASIGNATURA         char(10)             not null,
   IDASIGNATURAREQ      char(10)             not null,
   NIVEL                tinyint              not null default  0,
   NIVELREQ             tinyint              not null default  0
)
go

/*==============================================================*/
/* Table: RESITRO                                               */
/*==============================================================*/
create table RESITRO (
   IDREGISTRO           smallint             not null,
   IDHISTORIALCURRICULAR smallint             null,
   RUT                  int                  null,
   FECHA                datetime             null,
   DESCRIPCION          varchar(250)         null,
   constraint PK_RESITRO primary key (IDREGISTRO)
)
go

/*==============================================================*/
/* Table: RESOLUCIONES                                          */
/*==============================================================*/
create table RESOLUCIONES (
   ID_RESOLUCION        smallint             not null,
   IDHISTORIALCURRICULAR smallint             null,
   NOMBRERESOLUCION     varchar(50)          null,
   PATH_RESOLUCION      varchar(200)         null,
   constraint PK_RESOLUCIONES primary key (ID_RESOLUCION)
)
go

/*==============================================================*/
/* Table: USUARIO                                               */
/*==============================================================*/
create table USUARIO (
   RUT                  int                  not null,
   NOMBRE               varchar(45)          null,
   APELLIDOPATERNO      varchar(45)          null,
   APELLIDOMATERNO      varchar(45)          null,
   ROL                  varchar(45)          null,
   PASSWORD             varchar(255)         null,
   constraint PK_USUARIO primary key (RUT)
)
go

alter table ASIGNATURAS
   add constraint FK_ASIGNATU_REFERENCE_INSTITUT foreign key (IDINSTITUTO)
      references INSTITUTOS (IDINSTITUTO)
go

alter table CARRERAS
   add constraint FK_CARRERAS_REFERENCE_ESCUELAS foreign key (IDESCUELA)
      references ESCUELAS (IDESCUELA)
go

alter table ESCUELAS
   add constraint FK_ESCUELAS_REFERENCE_FACULTAD foreign key (IDFACULTAD)
      references FACULTAD (IDFACULTAD)
go

alter table HISTORIAL_CURRICULAR
   add constraint FK_HISTORIA_REFERENCE_PLAN_ASI foreign key (IDPLAN, IDCARRERA, IDASIGNATURA)
      references PLAN_ASIGNATURA (IDPLAN, IDCARRERA, IDASIGNATURA)
go

alter table PLANESTUDIO
   add constraint FK_PLANESTU_REFERENCE_CARRERAS foreign key (IDCARRERA)
      references CARRERAS (IDCARRERA)
go

alter table PLAN_ASIGNATURA
   add constraint FK_PLAN_ASI_REFERENCE_ASIGNATU foreign key (IDASIGNATURA)
      references ASIGNATURAS (IDASIGNATURA)
go

alter table PLAN_ASIGNATURA
   add constraint FK_PLAN_ASI_REFERENCE_PLANESTU foreign key (IDPLAN, IDCARRERA)
      references PLANESTUDIO (IDPLAN, IDCARRERA)
go

alter table PLAN_ASIG_REQUISITOS
   add constraint FK_PLAN_ASI_REFERENCE_PLAN_ASI foreign key (IDPLAN, IDCARRERA, IDASIGNATURA)
      references PLAN_ASIGNATURA (IDPLAN, IDCARRERA, IDASIGNATURA)
go

alter table RESITRO
   add constraint FK_RESITRO_REFERENCE_USUARIO foreign key (RUT)
      references USUARIO (RUT)
go

alter table RESITRO
   add constraint FK_RESITRO_REFERENCE_HISTORIA foreign key (IDHISTORIALCURRICULAR)
      references HISTORIAL_CURRICULAR (IDHISTORIALCURRICULAR)
go

alter table RESOLUCIONES
   add constraint FK_RESOLUCI_REFERENCE_HISTORIA foreign key (IDHISTORIALCURRICULAR)
      references HISTORIAL_CURRICULAR (IDHISTORIALCURRICULAR)
go

