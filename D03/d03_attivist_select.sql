select * 
  from D03_ATTIVITA;

select ID,
       PROGETTO,
       ATTIVITA,
       DATA_INIZIO,
       DATA_FINE,
       STATO,
       ASSEGNATO_A,
       COSTO,
       BUDGET
  from D03_ATTIVITA;

select PROGETTO,
       ATTIVITA,
       DATA_INIZIO,
       DATA_FINE
  from D03_ATTIVITA;

select PROGETTO,
       ATTIVITA,
       DATA_INIZIO,
       DATA_FINE,
       DATA_FINE - DATA_INIZIO as GIORNI
  from D03_ATTIVITA A;

select A.*
  from D03_ATTIVITA A
 where PROGETTO = 'Sito Web pubblico';

select A.*
  from D03_ATTIVITA A
 where ATTIVITA like 'Co%';

select A.*
  from D03_ATTIVITA A
 where ATTIVITA like '%to';


select A.*
  from D03_ATTIVITA A
 where ATTIVITA like '%comp%';

select A.*
  from D03_ATTIVITA A
 where COSTO > BUDGET;

select A.*
  from D03_ATTIVITA A
 where COSTO <> BUDGET;

select A.*
  from D03_ATTIVITA A
 where COSTO between 2000 and 3500;

select A.*
  from D03_ATTIVITA A
 where BUDGET is null;

select A.*
  from D03_ATTIVITA A
 where BUDGET is not null;
