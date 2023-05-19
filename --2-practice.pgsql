--2-practice
SELECT shohin_mei, torokubi
FROM shohin
WHERE torokubi > '2009-4-28';

SELECT *
FROM shohin
WHERE shiire_tanka IS NULL;

SELECT shohin_mei, hanbai_tanka, shiire_tanka
FROM shohin
WHERE NOT hanbai_tanka - shiire_tanka < 500;

SELECT shohin_mei, hanbai_tanka * 0.9  - shiire_tanka AS "10％引き利益"
FROM shohin
WHERE hanbai_tanka * 0.9  - shiire_tanka > 100
AND (shohin_bunrui = '事務用品'
OR shohin_bunrui = 'キッチン用品');