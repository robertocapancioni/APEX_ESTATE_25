--Revenue 2020 (Mil. Eur) per settore
select settore,
           sum(revenue_2020/1000000)
                     as revenue_2020
      from d08_classifica_ft
  group by settore
  order by revenue_2020 desc

--Revenue 2020 (Mil. Eur) per nazione
select NAZIONE,
         sum(REVENUE_2020/1000000)
                   as REVENUE_2020
    from d08_classifica_ft
group by NAZIONE
order by REVENUE_2020 desc

 --Top 5 Nazioni 2020
  select NAZIONE,
         sum(REVENUE_2020/1000000)as REVENUE_2020
    from d08_classifica_ft
group by NAZIONE
order by REVENUE_2020 desc nulls last
   FETCH NEXT 5 ROWS ONLY

--Companies
 select id,
        classifica,
        web,
        nome,
        nazione,
        settore,
        agr_perc,
        cagr_perc,
        revenue_2020,
        revenue_2017,
        anno_inizio
   from d08_classifica_ft

--Num Companies per Country
    select count(*) as num,
           NAZIONE
      from d08_classifica_ft
  group by NAZIONE
  order by NAZIONE
