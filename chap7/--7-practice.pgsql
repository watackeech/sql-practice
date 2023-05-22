--7-practice

-- select *
--     from shohin
-- union
-- select *
--     from shohin
-- intersect
-- select *
--     from shohin
-- order by shohin_id;

select
    -- case when ts.tenpo_id IS NULL then '不明' ELSE ts.tenpo_id end as tenpo_id,
    COALESCE(ts.tenpo_id, '不明') as tenpo_id,
    -- case when ts.tenpo_mei IS NULL then '不明' ELSE ts.tenpo_id end as tenpo_mei,
    COALESCE(ts.tenpo_mei, '不明') as tenpo_mei,
    ts.shohin_id, s.shohin_mei, s.hanbai_tanka
from tenposhohin as ts right outer join shohin as s
on ts.shohin_id = s.shohin_id
ORDER BY tenpo_id, shohin_id;