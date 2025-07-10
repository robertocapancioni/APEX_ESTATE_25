select * 
  from D06_ATTIVITA;

select ID,
       PROGETTO,
       ATTIVITA,
       DATA_INIZIO,
       DATA_FINE,
       STATO,
       ASSEGNATO_A,
       COSTO,
       BUDGET
  from D06_ATTIVITA;

select PROGETTO,
       ATTIVITA,
       DATA_INIZIO,
       DATA_FINE
  from D06_ATTIVITA;

select PROGETTO,
       ATTIVITA,
       DATA_INIZIO,
       DATA_FINE,
       DATA_FINE - DATA_INIZIO as GIORNI
  from D06_ATTIVITA A;

select A.*
  from D06_ATTIVITA A
 where PROGETTO = 'Sito Web pubblico';

select A.*
  from D06_ATTIVITA A
 where ATTIVITA like 'Co%';

select A.*
  from D06_ATTIVITA A
 where ATTIVITA like '%to';


select A.*
  from D06_ATTIVITA A
 where ATTIVITA like '%comp%';

select A.*
  from D06_ATTIVITA A
 where COSTO > BUDGET;

select A.*
  from D06_ATTIVITA A
 where COSTO <> BUDGET;

select A.*
  from D06_ATTIVITA A
 where COSTO between 2000 and 3500;

select A.*
  from D06_ATTIVITA A
 where BUDGET is null;

select A.*
  from D06_ATTIVITA A
 where BUDGET is not null;

select A.*
  from D06_ATTIVITA A
 where BUDGET = 500

select A.*
  from D06_ATTIVITA A
 where BUDGET <> 500

select A.*
  from D06_ATTIVITA A
 where BUDGET <> 500
   and BUDGET is null

select A.*
  from D06_ATTIVITA A
 where NVL(BUDGET,0) <> 500

select A.*
  from D06_ATTIVITA A
 where NVL(BUDGET,0)<> 500
   and BUDGET is null

SELECT A.*
  FROM D06_ATTIVITA A
 WHERE DATA_INIZIO > DATE'2023-01-03';

 SELECT A.*
  FROM D06_ATTIVITA A
 WHERE DATA_INIZIO > TO_DATE('01/03/2023','DD/MM/YYYY')

 SELECT A.*
  FROM D06_ATTIVITA A
 WHERE DATA_INIZIO > TO_DATE('01/03/2023 13:00:00','DD/MM/YYYY hh24:MI:SS');

SELECT A.DATA_INIZIO,
       A.DATA_INIZIO + 1 GIORNO_SUCCESSIVO,
       A.DATA_FINE - A.DATA_INIZIO GIORNI_ATTIVITA
  FROM D06_ATTIVITA A

select A.*
    from D06_ATTIVITA A
order by PROGETTO

select A.*
    from D06_ATTIVITA A
order by PROGETTO ASC

select A.*
    from D06_ATTIVITA A
order by PROGETTO DESC

select A.*
    from D06_ATTIVITA A
order by BUDGET DESC NULLS LAST

select A.*
    from D06_ATTIVITA A
order by BUDGET ASC NULLS FIRST

select A.*
    from D06_ATTIVITA A
order by PROGETTO, ATTIVITA DESC

select A.*
    from D06_ATTIVITA A
order by BUDGET
   fetch first 5 rows only

select A.*
    from D06_ATTIVITA A
order by BUDGET
   fetch next 5 rows only

select A.*
    from D06_ATTIVITA A
order by BUDGET ASC NULLS FIRST
   fetch first row only

select A.*
    from D06_ATTIVITA A
order by BUDGET
  offset 2 rows
   fetch next 5 rows only

select A.*
    from D06_ATTIVITA A
order by BUDGET
  offset 1 row
   fetch next row only

select 
       a.id as attivita_id,
       a.progetto,
       a.attivita,
       a.data_inizio,
       a.data_fine,
       /* 
          altri dati 
          da mostrare
       */
       a.stato,
       a.assegnato_a,
       a.costo,
       a.budget
  from D06_attivita a
 where progetto ='Bug Tracker'
 order by BUDGET DESC NULLS LAST
offset 2 rows --salta 2 righe
 fetch next 5 rows only

select A.*
    from D06_ATTIVITA A
      -- io sono un commento a riga singola
order by PROGETTO

select A.*
    from D06_ATTIVITA A -- io sono un commento a riga singola
order by PROGETTO ASC

select A.*
      /*
         Io sono un commnento
         Multiriga
      */
    from D06_ATTIVITA A
order by PROGETTO DESC
