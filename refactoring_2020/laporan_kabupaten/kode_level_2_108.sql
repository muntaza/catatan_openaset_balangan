DROP VIEW IF EXISTS view_kode_level_2;

CREATE VIEW view_kode_level_2 AS

SELECT
left(kode_barang_108,5) as kode,
right(kode_barang_108,(length(kode_barang_108)-12)) as nama_bidang_barang

FROM
kode_barang_108

WHERE
kode_barang_108 LIKE '%*.*.*%' AND
kode_barang_108 NOT LIKE '%GOLONGAN%';



GRANT ALL PRIVILEGES ON view_kode_level_2 TO lap_kabupaten;
REVOKE INSERT, UPDATE, DELETE ON view_kode_level_2 FROM lap_kabupaten;
