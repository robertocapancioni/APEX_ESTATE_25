create or replace view d09_prodotto_vw as
select 
       p.id,
      tp.tipo_prodotto,
       p.prodotto,
       p.prezzo_acquisto,
       p.prezzo_vendita
  from d09_prodotto p
  join d09_tipo_prodotto tp
    on p.tipo_prodotto_id = tp.id;


create or replace view d09_vendita_vw as
select v.id,
       v.cliente_id,
       c.cliente,
       c.zona,
       v.prodotto_id,
       p.prodotto,
       p.tipo_prodotto_id,
       tp.tipo_prodotto,
       v.data,
       v.quantita,
       v.importo
  from d09_vendita v
  join d09_cliente c on v.cliente_id = c.id 
  join d09_prodotto p on v.prodotto_id = p.id
  join d09_tipo_prodotto tp on p.tipo_prodotto_id = tp.id;

create or replace view d09_acquisto_vw as
select a.id,
       a.fornitore_id,
       f.fornitore,
       f.zona,  
       a.prodotto_id,
       p.prodotto,
       p.tipo_prodotto_id,
       tp.tipo_prodotto,
       a.data,
       a.quantita,
       a.quantita * p.prezzo_acquisto valore
  from d09_acquisto a
  join d09_fornitore f      on a.fornitore_id     = f.id
  join d09_prodotto p       on a.prodotto_id      = p.id
  join d09_tipo_prodotto tp on p.tipo_prodotto_id = tp.id;