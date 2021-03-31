set hive.exec.mode.local.auto=true;

select concat('a','b');

select concat('a','b',null);

select concat('a','b',2);

select concat('a','b''null');

select concat('a','-','b');

select concat_ws('a','b');

select concat_ws('-','a','b','c');

select split('abcdef', 'c');

select concat_ws('=',split('abdef','d'));

--select concat_ws(2,'a','b','c');
drop table if exists stud;
create table stud(name string,area string,course string,score int);

insert into table stud values('zhang3','bj','math',88);

insert into table stud values('zhang3','bj','math',88);
insert into table stud values('li4','bj','math',99);
insert into table stud values('wang5','sh','chinese',92);
insert into table stud values('zhao6','sh','chinese',54);
insert into table stud values('tian7','bj','chinese',91);

select * from stud;

select * from stud order by area;

select sum(score) from stud group by area;


select course, collect_set(area), avg(score) from stud group by course;

select str_to_map('1001=2020-06-14,1002=2020-06-14',  ','  ,  '=');

select nvl(1,0);
