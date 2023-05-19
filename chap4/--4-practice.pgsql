--4-practice
-- INSERT INTO shohin select * from shohin;

-- create table ShohinSaeki
-- (shohin_id CHAR(4) NOT NULL,
-- shohin_mei VARCHAR(100) NOT NULL,
-- hanbai_tanka INTEGER,
-- shiire_tanka integer,
-- saeki integer,
-- PRIMARY KEY(shohin_id));
BEGIN TRANSACTION;
    INSERT INTO shohinsaeki
    select shohin_id,
    shohin_mei,
    hanbai_tanka,
    shiire_tanka
    from shohin;
COMMIT;

begin transaction;
    UPDATE shohinsaeki
    set saeki = hanbai_tanka - shiire_tanka;

select * from shohinsaeki;
commit;
