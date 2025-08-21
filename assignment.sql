create database data ;
use data ;
create table vk (
  id INT,
  name VARCHAR(20),
  run_start_date DATE
);
select * from vk;
INSERT INTO vk (id, name, run_start_date)
VALUES (1, 'huli', '1905-02-08'),
(2,'charan','2024-02-08'),
(3,'keerthi','2014-02-08'),
(4,'murali','1998-02-08'),
(5,'vijay','2018-02-08');
select * from vk;
select b.name
from vk a, vk b
where a.run_start_date = (
    select max(c.run_start_date)
    from vk c
    where c.run_start_date < (
        select max(run_start_date)
        from vk))
and b.id = (
    select max(d.id)
    from vk d
    where d.run_start_date < a.run_start_date
);
