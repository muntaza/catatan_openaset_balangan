CREATE OR REPLACE VIEW view_kode_level_2_108 AS

SELECT kode, nama_bidang_barang

FROM

(SELECT
left(kode_barang_108,8) as kode,
right(kode_barang_108,(length(kode_barang_108)-9)) as nama_bidang_barang

FROM
kode_barang_108

WHERE
1 = 1) AS view_kode_level_2_108_pertama

WHERE
nama_bidang_barang NOT LIKE '%.%'
AND kode NOT LIKE '%T%'
AND kode NOT LIKE '%E%'
AND kode NOT LIKE '%O%'
AND kode NOT LIKE ''
AND kode NOT LIKE '%A%';



GRANT ALL PRIVILEGES ON view_kode_level_2_108 TO lap_kabupaten;
REVOKE INSERT, UPDATE, DELETE ON view_kode_level_2_108 FROM lap_kabupaten;
