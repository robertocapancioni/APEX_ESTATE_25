create table "D05_PERSONA" (
    "ID"          number generated by default on null as identity,
    "NOME"        varchar2(50 char) not null,
    "COGNOME"     varchar2(50 char) not null,
    "DATA_NASCITA"date not null,
    "EMAIL"       varchar2(50 char),
    "REDDITO"     number(16,2) default 0 not null,
    constraint "D05_PERSONA_PK" primary key ( "ID" )
);

comment on table "D05_PERSONA" is 'Tabella di persone';

comment on column "D05_PERSONA"."REDDITO" is 'Reddito Annuale Lordo';
