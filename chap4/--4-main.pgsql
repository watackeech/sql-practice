--4-main
INSERT INTO shohin
(shohin_id, shohin_mei, shohin_bunrui, hanbai_tanka, shiire_tanka, torokubi)
VALUES ('009', 'Tシャツ', '衣服', 1000, 500, '2009-09-20');

DELETE from shohincopy
WHERE hanbai_tanka >= 4000;
SELECT * from shohincopy;

SELECT * FROM shohin;
UPDATE shohin
SET shohin_id = '0009'
WHERE shohin_id = '009';

select * from shohin;