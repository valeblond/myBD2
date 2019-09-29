set echo on 
set linesize 300 
set pagesize 500 
spool BD2A05_TEST.LIS 


select * from uczestnicy;
select * from oferty;
select * from produkty;
select * from ilosci;

select count(*) from oferty; 
select count(*) from produkty; 

select u.name, u.surname, o.OKRES_OBOWIAZYWANIA  
from uczestnicy u join oferty o
on u.id_uczestnika = o.UCZESTNICY_ID_UCZESTNIKA
order by 1,3;

select u.name, u.surname, o.OKRES_OBOWIAZYWANIA  
from uczestnicy u join oferty o
on u.id_uczestnika = o.UCZESTNICY_ID_UCZESTNIKA
where o.OKRES_OBOWIAZYWANIA < sysdate
order by 1,3;

select i.ilosc, o.cena_wywolawcza, u.name, p.name as produkt_name
from ilosci i join oferty o 
on o.id_oferty = i.oferty_id
join uczestnicy u on o.uczestnicy_id_uczestnika = u.id_uczestnika
join produkty p on i.produkt_kod_produktu = p.kod_produktu
order by 1;

--pokazuje cene ze wszystkich ofert podanego uczestnika
select  u.name, sum(o.cena_wywolawcza) as all_price
from ilosci i join oferty o 
on o.id_oferty = i.oferty_id
join uczestnicy u on o.uczestnicy_id_uczestnika = u.id_uczestnika
group by u.name
order by 1;

--pokazuje jakie uczestniki maja oferty
select name
from uczestnicy
where name in (
select u.name
from uczestnicy u join oferty o
on u.id_uczestnika = o.UCZESTNICY_ID_UCZESTNIKA)
order by 1;



spool off 