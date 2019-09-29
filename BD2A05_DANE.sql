--drop table ilosci;
--drop table oferty;
--drop table produkty;
--drop table uczestnicy;
--drop sequence ucz_seq;

set serveroutput on;

insert into uczestnicy values (ucz_seq.nextval, 'Michal', 'Kopocik');
commit;
insert into uczestnicy values (ucz_seq.nextval, 'Sebastian', 'Prokopczuk');
commit;
insert into uczestnicy values (ucz_seq.nextval, 'Wojciech', 'Bochenek');
commit;
insert into uczestnicy values (ucz_seq.nextval, 'Krzysztof', 'Mroz');
commit;
insert into uczestnicy values (ucz_seq.nextval, 'Karol', 'Rzepka');
commit;
insert into uczestnicy values (ucz_seq.nextval, 'Lukasz', 'Switaj');
commit;
insert into uczestnicy values (ucz_seq.nextval, 'Sylwia', 'Kulesza');
commit;
insert into uczestnicy values (ucz_seq.nextval, 'Gabriel', 'Rebacz');
commit;
insert into uczestnicy values (ucz_seq.nextval, 'Piotr', 'Ogrodnik');
commit;
insert into uczestnicy values (ucz_seq.nextval, 'Agata', 'Szulc');
commit;

insert into oferty values (0155, 2.5, 
                          100,(select TO_DATE('09-04-2019', 'dd/mm/yyyy') from dual),
                          (select id_uczestnika from uczestnicy where surname = 'Bochenek'));
commit;
insert into oferty values (1207, 3, 
                          650,(select TO_DATE('30-09-2023', 'dd/mm/yyyy') from dual),
                          (select id_uczestnika from uczestnicy where surname = 'Mroz'));
commit;
insert into oferty values (8057, 2, 
                          50,(select TO_DATE('05-10-2020', 'dd/mm/yyyy') from dual),
                          (select id_uczestnika from uczestnicy where surname = 'Szulc'));
commit;
insert into oferty values (0040, 2, 
                          30,(select TO_DATE('12-12-2015', 'dd/mm/yyyy') from dual),
                          (select id_uczestnika from uczestnicy where surname = 'Bochenek'));
commit;
insert into oferty values (7301, 4, 
                          1100,(select TO_DATE('27-05-2013', 'dd/mm/yyyy') from dual),
                          (select id_uczestnika from uczestnicy where surname = 'Szulc'));
commit;
insert into oferty values (0130, 17.5, 
                          250,(select TO_DATE('17-10-2030', 'dd/mm/yyyy') from dual),
                          (select id_uczestnika from uczestnicy where surname = 'Bochenek'));
commit;
insert into oferty values (3056, 40.0, 
                          400,(select TO_DATE('19-11-2022', 'dd/mm/yyyy') from dual),
                          (select id_uczestnika from uczestnicy where surname = 'Rebacz'));
commit;
insert into oferty values (4156, 3, 
                          1175,(select TO_DATE('30-07-2024', 'dd/mm/yyyy') from dual),
                          (select id_uczestnika from uczestnicy where surname = 'Ogrodnik'));
commit;

insert into produkty values (013543, 'mleko');
insert into produkty values (018643, 'benzyna');
insert into produkty values (013592, 'krem');
insert into produkty values (012541, 'czajnik');
insert into produkty values (023343, 'telefon');
insert into produkty values (013598, 'skarpety');
insert into produkty values (033567, 'futro');
insert into produkty values (033669, 'ksiazka');
insert into produkty values (063565, 'drzwi');
insert into produkty values (073567, 'dywan');
insert into produkty values (093568, 'lemon');
insert into produkty values (083574, 'pilka');

insert into ilosci values (3, 1207,
                          (select kod_produktu from produkty where name = 'ksiazka'));
insert into ilosci values (5, 1207,
                          (select kod_produktu from produkty where name = 'pilka'));
insert into ilosci values (1, 7301,
                          (select kod_produktu from produkty where name = 'drzwi'));
insert into ilosci values (10, 4156,
                          (select kod_produktu from produkty where name = 'lemon'));
insert into ilosci values (5, 0040,
                          (select kod_produktu from produkty where name = 'czajnik'));
insert into ilosci values (3, 8057,
                          (select kod_produktu from produkty where name = 'telefon'));


--select * from uczestnicy;
--select * from oferty;
--select * from produkty;
--select * from ilosci;
--delete from uczestnicy;
--delete from oferty;

commit;