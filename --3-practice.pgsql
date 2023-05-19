--3-practice
SELECT shohin_bunrui, MAX(shohin_mei)
FROM shohin
WHERE torokubi > '2009-09-01'
GROUP BY shohin_bunrui;

SELECT shohin_bunrui, SUM(hanbai_tanka), SUM(shiire_tanka)
FROM shohin
GROUP BY shohin_bunrui
HAVING SUM(hanbai_tanka) > SUM(shiire_tanka) * 1.5;


SELECT *
FROM shohin
ORDER BY torokubi DESC, hanbai_tanka DESC;

