-- 2-34
SELECT shohin_mei, shohin_bunrui
FROM shohin
WHERE shohin_bunrui = 'キッチン用品'
OR hanbai_tanka >= 3000;