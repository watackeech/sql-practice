--7-main
CREATE TABLE TenpoShohin
(tenpo_id  CHAR(4)       NOT NULL,
 tenpo_mei  VARCHAR(200) NOT NULL,
 shohin_id CHAR(4)       NOT NULL,
 suryo     INTEGER       NOT NULL,
 PRIMARY KEY (tenpo_id, shohin_id));
 --SQL Server、PostgreSQL
BEGIN TRANSACTION;

INSERT INTO TenpoShohin (tenpo_id, tenpo_mei, shohin_id, suryo) VALUES ('000A',	'東京',		'0001',	30);
INSERT INTO TenpoShohin (tenpo_id, tenpo_mei, shohin_id, suryo) VALUES ('000A',	'東京',		'0002',	50);
INSERT INTO TenpoShohin (tenpo_id, tenpo_mei, shohin_id, suryo) VALUES ('000A',	'東京',		'0003',	15);
INSERT INTO TenpoShohin (tenpo_id, tenpo_mei, shohin_id, suryo) VALUES ('000B',	'名古屋',	'0002',	30);
INSERT INTO TenpoShohin (tenpo_id, tenpo_mei, shohin_id, suryo) VALUES ('000B',	'名古屋',	'0003',	120);
INSERT INTO TenpoShohin (tenpo_id, tenpo_mei, shohin_id, suryo) VALUES ('000B',	'名古屋',	'0004',	20);
INSERT INTO TenpoShohin (tenpo_id, tenpo_mei, shohin_id, suryo) VALUES ('000B',	'名古屋',	'0006',	10);
INSERT INTO TenpoShohin (tenpo_id, tenpo_mei, shohin_id, suryo) VALUES ('000B',	'名古屋',	'0007',	40);
INSERT INTO TenpoShohin (tenpo_id, tenpo_mei, shohin_id, suryo) VALUES ('000C',	'大阪',		'0003',	20);
INSERT INTO TenpoShohin (tenpo_id, tenpo_mei, shohin_id, suryo) VALUES ('000C',	'大阪',		'0004',	50);
INSERT INTO TenpoShohin (tenpo_id, tenpo_mei, shohin_id, suryo) VALUES ('000C',	'大阪',		'0006',	90);
INSERT INTO TenpoShohin (tenpo_id, tenpo_mei, shohin_id, suryo) VALUES ('000C',	'大阪',		'0007',	70);
INSERT INTO TenpoShohin (tenpo_id, tenpo_mei, shohin_id, suryo) VALUES ('000D',	'福岡',		'0001',	100);

COMMIT;

select ts.tenpo_id, ts.tenpo_mei, ts.shohin_id, s.shohin_mei, s.hanbai_tanka
from tenposhohin as ts inner join shohin as s
on ts.shohin_id = s.shohin_id
ORDER BY tenpo_id, shohin_id;

select ts.tenpo_id, ts.tenpo_mei, ts.shohin_id, s.shohin_mei, s.hanbai_tanka
from tenposhohin as ts right outer join shohin as s
on ts.shohin_id = s.shohin_id
ORDER BY tenpo_id, shohin_id;

DDL：テーブル作成
CREATE TABLE ZaikoShohin
( souko_id		CHAR(4)      NOT NULL,
  shohin_id     CHAR(4)      NOT NULL,
  zaiko_suryo	INTEGER      NOT NULL,
  PRIMARY KEY (souko_id, shohin_id));

--DML：データ登録
BEGIN TRANSACTION;

INSERT INTO ZaikoShohin (souko_id, shohin_id, zaiko_suryo) VALUES ('S001',	'0001',	0);
INSERT INTO ZaikoShohin (souko_id, shohin_id, zaiko_suryo) VALUES ('S001',	'0002',	120);
INSERT INTO ZaikoShohin (souko_id, shohin_id, zaiko_suryo) VALUES ('S001',	'0003',	200);
INSERT INTO ZaikoShohin (souko_id, shohin_id, zaiko_suryo) VALUES ('S001',	'0004',	3);
INSERT INTO ZaikoShohin (souko_id, shohin_id, zaiko_suryo) VALUES ('S001',	'0005',	0);
INSERT INTO ZaikoShohin (souko_id, shohin_id, zaiko_suryo) VALUES ('S001',	'0006',	99);
INSERT INTO ZaikoShohin (souko_id, shohin_id, zaiko_suryo) VALUES ('S001',	'0007',	999);
INSERT INTO ZaikoShohin (souko_id, shohin_id, zaiko_suryo) VALUES ('S001',	'0008',	200);
INSERT INTO ZaikoShohin (souko_id, shohin_id, zaiko_suryo) VALUES ('S002',	'0001',	10);
INSERT INTO ZaikoShohin (souko_id, shohin_id, zaiko_suryo) VALUES ('S002',	'0002',	25);
INSERT INTO ZaikoShohin (souko_id, shohin_id, zaiko_suryo) VALUES ('S002',	'0003',	34);
INSERT INTO ZaikoShohin (souko_id, shohin_id, zaiko_suryo) VALUES ('S002',	'0004',	19);
INSERT INTO ZaikoShohin (souko_id, shohin_id, zaiko_suryo) VALUES ('S002',	'0005',	99);
INSERT INTO ZaikoShohin (souko_id, shohin_id, zaiko_suryo) VALUES ('S002',	'0006',	0);
INSERT INTO ZaikoShohin (souko_id, shohin_id, zaiko_suryo) VALUES ('S002',	'0007',	0);
INSERT INTO ZaikoShohin (souko_id, shohin_id, zaiko_suryo) VALUES ('S002',	'0008',	18);

COMMIT;

select ts.tenpo_id, ts.tenpo_mei, ts.shohin_id, s.shohin_mei, s.hanbai_tanka
from tenposhohin as ts
inner join shohin as s
on ts.shohin_id = s.shohin_id
inner join zaikoshohin as zs
on ts.shohin_id = zs.shohin_id
ORDER BY tenpo_id, shohin_id;

select * from zaikoshohin;