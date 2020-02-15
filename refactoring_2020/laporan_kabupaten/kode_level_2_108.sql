CREATE OR REPLACE VIEW view_kode_level_2_108 AS

SELECT
left(kode_barang_108,8) as kode,
right(kode_barang_108,(length(kode_barang_108)-18)) as nama_bidang_barang

FROM
kode_barang_108

WHERE
1 = 1;



GRANT ALL PRIVILEGES ON view_kode_level_2_108 TO lap_kabupaten;
REVOKE INSERT, UPDATE, DELETE ON view_kode_level_2_108 FROM lap_kabupaten;
