--3-13
SELECT shohin_bunrui, COUNT(*)
FROM shohin
GROUP BY shohin_bunrui;


SELECT shohin_bunrui, COUNT(*)
FROM shohin
GROUP BY shohin_bunrui
HAVING COUNT(*) = 2;