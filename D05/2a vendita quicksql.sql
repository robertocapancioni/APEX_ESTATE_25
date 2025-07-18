Passa a contenuto principale
Home Oracle APEX
SQL Workshop
UtilityQuick SQL	
Messaggio di operazione riuscita
Script "d051 2a vendita" salvato
Quick SQL
12389101112131415475616
prodotto
  prodotto vc50 /nn

cliente
  cliente vc50 /nn
  zona_cliente vc10 /nn

vendita
  data d /nn
  prodotto_id num /nn /fk prodotto
  cliente_id num /nn /fk cliente
  quantita num /nn
  importo num /nn


# settings = {"apex":"Y","auditcols":true,"db":"19c","prefix":"d051","pk":"identity"}
SQL
Diagramma
1516171819202122232425261314111210896745231
-- create tables

create table d051_prodotto (
    id            number generated by default on null as identity
                  constraint d051_prodotto_id_pk primary key,
    prodotto      varchar2(50 char) not null,
    created       date not null,
    created_by    varchar2(255 char) not null,
    updated       date not null,
    updated_by    varchar2(255 char) not null
);



create table d051_cliente (
    id              number generated by default on null as identity
                    constraint d051_cliente_id_pk primary key,
    cliente         varchar2(50 char) not null,
    zona_cliente    varchar2(10 char) not null,
    created         date not null,
    created_by      varchar2(255 char) not null,
    updated         date not null,
    updated_by      varchar2(255 char) not null
);



create table d051_vendita (
    id             number generated by default on null as identity
                   constraint d051_vendita_id_pk primary key,
    prodotto_id    number                   constraint d051_vendita_prodotto_id_fk
                   references d051_prodotto not null,
    cliente_id     number                   constraint d051_vendita_cliente_id_fk
                   references d051_cliente not null,
    data           date not null,
    quantita       number not null,
    importo        number not null,
    created        date not null,
    created_by     varchar2(255 char) not null,
    updated        date not null,
    updated_by     varchar2(255 char) not null
);

-- table index
create index d051_vendita_i1 on d051_vendita (prodotto_id);

create index d051_vendita_i2 on d051_vendita (cliente_id);



-- triggers
create or replace trigger d051_prodotto_biu
    before insert or update
    on d051_prodotto
    for each row
begin
    if inserting then
        :new.created := sysdate;
        :new.created_by := coalesce(sys_context('APEX$SESSION','APP_USER'),user);
    end if;
    :new.updated := sysdate;
    :new.updated_by := coalesce(sys_context('APEX$SESSION','APP_USER'),user);
end d051_prodotto_biu;
/


create or replace trigger d051_cliente_biu
    before insert or update
    on d051_cliente
    for each row
begin
    if inserting then
        :new.created := sysdate;
        :new.created_by := coalesce(sys_context('APEX$SESSION','APP_USER'),user);
    end if;
    :new.updated := sysdate;
    :new.updated_by := coalesce(sys_context('APEX$SESSION','APP_USER'),user);
end d051_cliente_biu;
/


create or replace trigger d051_vendita_biu
    before insert or update
    on d051_vendita
    for each row
begin
    if inserting then
        :new.created := sysdate;
        :new.created_by := coalesce(sys_context('APEX$SESSION','APP_USER'),user);
    end if;
    :new.updated := sysdate;
    :new.updated_by := coalesce(sys_context('APEX$SESSION','APP_USER'),user);
end d051_vendita_biu;
/


-- Generated by Quick SQL 1.2.9 08/07/2025, 11:41:06

/*
prodotto
  prodotto vc50 /nn

cliente
  cliente vc50 /nn
  zona_cliente vc10 /nn

vendita
  data d /nn
  prodotto_id num /nn /fk prodotto
  cliente_id num /nn /fk cliente
  quantita num /nn
  importo num /nn





 Non-default options:
# settings = {"apex":"Y","auditcols":true,"db":"19c","prefix":"d051","pk":"identity"}

*/
Utente
AT30 
Area di lavoro
AT30 
Lingua
it	Copyright © 1999-2024, Oracle e/o relative consociate.	Oracle APEX 24.2.6
