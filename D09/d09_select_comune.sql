select c.comune,
       c.provincia_cod,
       p.provincia_cod,
       p.provincia
  from d09_comune c
  join d09_provincia p
    on c.provincia_cod = p.provincia_cod;
    
delete 
  from d09_comune 
 where provincia_cod in ('BG','BS','CO');

delete 
  from d09_provincia 
 where provincia_cod in ('MN','PV','SO','VA');

select c.comune,
       c.provincia_cod,
       p.provincia_cod,
       p.provincia
  from d09_comune c
  left
  join d09_provincia p
    on c.provincia_cod = p.provincia_cod;

select c.comune,
       c.provincia_cod,
       p.provincia_cod,
       p.provincia
  from d09_comune c
  left
  join d09_provincia p
    on c.provincia_cod = p.provincia_cod;

select c.comune,
       c.provincia_cod,
       p.provincia_cod,
       p.provincia
  from d09_comune c
 right
  join d09_provincia p
    on c.provincia_cod = p.provincia_cod;

select c.comune,
       c.provincia_cod,
       p.provincia_cod,
       p.provincia
  from d09_comune c
  full
  join d09_provincia p
    on c.provincia_cod = p.provincia_cod;

insert 
  into d09_comune 
       (comune,provincia_cod)
values ('Arese','MI');

insert 
  into d09_provincia
       (provincia_cod,provincia)
values ('MI','Milano (doppio)');