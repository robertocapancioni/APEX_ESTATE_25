select classifica,
       nome,
       nazione,
       settore,
       revenue_2020,
       anno_inizio
  from d08_classifica_ft;
  
select classifica,
       nome,
       nazione,
       settore,
       revenue_2020,
       anno_inizio
  from d08_classifica_ft
 where nazione = 'Italy';
 
  select classifica,
         nome,
         nazione,
         settore,
         revenue_2020,
         anno_inizio
    from d08_classifica_ft
   where nazione = 'Italy'
order by classifica
   fetch next 3 rows only; 

   select nazione,
          count(*) as numero
     from d08_classifica_ft
 group by nazione;
 
    select nazione,
          count(*) as numero,
          sum(revenue_2020) as tot_revenue_2020
     from d08_classifica_ft
 group by nazione;
  
   select count(*) as numero,
          count(web) as numero_web,
          count(distinct nazione) numero_nazioni
     from d08_classifica_ft;

    select nazione,
           count(*) as numero,
           sum(revenue_2020) as tot_revenue_2020,
           avg(revenue_2020) as media_revenue_2020
      from d08_classifica_ft
  group by nazione
  order by tot_revenue_2020 desc
fetch next 3 rows only;

    select nazione,
           count(*) as numero,
           sum(revenue_2020) as tot_revenue_2020,
           avg(revenue_2020) as media_revenue_2020
      from d08_classifica_ft
  group by nazione
  order by sum(revenue_2020) desc
fetch next 3 rows only;

select nazione,
           count(*) as numero,
           sum(revenue_2020) as tot_revenue_2020,
           avg(revenue_2020) as media_revenue_2020
      from d08_classifica_ft
  group by nazione
    having sum(revenue_2020) >180000000
  order by tot_revenue_2020 desc;

   select nazione,
           count(*)                   as numero,
           count(distinct NOME)       as num_aziende,
           sum(revenue_2020)          as tot_revenue_2020,
           max(revenue_2020)          as max_revenue_2020,
           round(avg(revenue_2020),2) as media_revenue_2020
      from d08_classifica_ft
     where settore = 'Technology'
  group by nazione
    having sum(revenue_2020) >180000000
  order by tot_revenue_2020 desc
     fetch next 3 rows only;