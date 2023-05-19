--5-main
create VIEW ShohinSum (shohin_bunrui, count_shohin)
AS
SELECT shohin_bunrui, count(*)
from shohin
GROUP BY shohin_bunrui;
SELECT * FROM ShohinSum;

select shohin_bunrui, avg( hanbai_tanka)
from shohin
group by shohin_bunrui;