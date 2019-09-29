set echo on 
spool BD2A05_DML.LIS 

set serveroutput on;

insert into uczestnicy values (ucz_seq.nextval, 'Konrad', 'Piszczek');
commit;

insert into uczestnicy values (ucz_seq.nextval, 'Rafal', 'Celkowski');
commit;

delete from uczestnicy where surname = 'Piszczek';
commit;

insert into oferty values (1515, 3, 
                          3000,(select TO_DATE('07-09-2024', 'dd/mm/yyyy') from dual),
                          (select id_uczestnika from uczestnicy where surname = 'Celkowski'));
commit;

insert into oferty values (7345, 5, 
                          200,(select TO_DATE('17-11-2004', 'dd/mm/yyyy') from dual),
                          (select id_uczestnika from uczestnicy where surname = 'Mroz'));
commit;


spool off 