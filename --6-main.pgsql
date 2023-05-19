--6-main
-- begin transaction;
--     create table practice5
--     (id integer NOT NULL primary key,
--     z integer NOT NULL,
--     f float);

--     select * from practice5;

--     INSERT INTO practice5 VALUES(1, 10, 1.3);
--     INSERT INTO practice5 VALUES(2, -20, -2.4);
--     INSERT INTO practice5 VALUES(3, 30, -3.5);
--     INSERT INTO practice5 VALUES(4, -40, 4.6);
--     INSERT INTO practice5 VALUES(5, 50, -5.7);
--     select * from practice5;
-- commit;

-- select id, MOD(z, 3) from practice5;
-- select id, ROUND(f, 1) from practice5;

-- select CURRENT_TIMESTAMP,
-- EXTRACT(YEAR FROM CURRENT_TIMESTAMP) AS year,
-- EXTRACT(MONTH FROM CURRENT_TIMESTAMP) AS month,
-- EXTRACT(DAY FROM CURRENT_TIMESTAMP) AS day,
-- EXTRACT(HOUR FROM CURRENT_TIMESTAMP) AS hour,
-- EXTRACT(MINUTE FROM CURRENT_TIMESTAMP) AS minute,
-- EXTRACT(SECOND FROM CURRENT_TIMESTAMP) AS second;

-- BEGIN TRANSACTION;
--     CREATE TABLE SampleLike
--     ( strcol VARCHAR(6) NOT NULL,
--     PRIMARY KEY (strcol));

--     INSERT INTO SampleLike (strcol) VALUES ('abcddd');
--     INSERT INTO SampleLike (strcol) VALUES ('dddabc');
--     INSERT INTO SampleLike (strcol) VALUES ('abdddc');
--     INSERT INTO SampleLike (strcol) VALUES ('abcdd');
--     INSERT INTO SampleLike (strcol) VALUES ('ddabc');
--     INSERT INTO SampleLike (strcol) VALUES ('abddc');

-- COMMIT;

-- SELECT *
-- from samplelike
-- where strcol like '%ddd%';

select shohin_mei, shiire_tanka
from shohin
where shiire_tanka IN (320, 500, 5000)
-- where shiire_tanka = 320
-- OR shiire_tanka = 500
-- OR shiire_tanka = 5000;

select shohin_mei,
case when shohin_bunrui = '衣服'
then 'A:' || shohin_bunrui
when shohin_bunrui = '事務用品'
then 'B:' || shohin_bunrui
when shohin_bunrui = 'キッチン用品'
then 'C:' || shohin_bunrui
else NULL

END AS abc_shohin_bunrui
from shohin;