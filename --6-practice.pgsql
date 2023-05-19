--6-practice
select shohin_mei, shiire_tanka
from shohin
where shiire_tanka NOT IN (500, 2800, 5000);

select shohin_mei, shiire_tanka
from shohin
where shiire_tanka NOT IN (500, 2800, 5000, NULL);

select hanbai_tanka from shohin;

select count(CASE when hanbai_tanka <= 1000 then hanbai_tanka end) as low_price,
    count(case when hanbai_tanka BETWEEN 1001 and 3000 then hanbai_tanka end) as middle_price,
    count(case when hanbai_tanka >3000 then hanbai_tanka end) as high_price
from shohin