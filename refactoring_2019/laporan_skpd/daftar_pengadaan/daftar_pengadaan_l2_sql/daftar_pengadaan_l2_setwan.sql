DROP VIEW IF EXISTS view_daftar_pengadaan_l2_setwan;

CREATE VIEW view_daftar_pengadaan_l2_setwan AS

SELECT
*

FROM
view_daftar_pengadaan_l2_kabupaten

WHERE
1 = 1  AND
id_skpd = 1;

GRANT ALL PRIVILEGES ON view_kode_level_2 TO lap_setwan;
REVOKE INSERT, UPDATE, DELETE ON view_kode_level_2 FROM lap_setwan;

GRANT ALL PRIVILEGES ON view_daftar_pengadaan_l2_setwan TO lap_setwan;
REVOKE INSERT, UPDATE, DELETE ON view_daftar_pengadaan_l2_setwan FROM lap_setwan;

GRANT ALL PRIVILEGES ON tahun, skpd, sub_skpd, kode_barang TO lap_setwan;
REVOKE INSERT, UPDATE, DELETE ON tahun, skpd, sub_skpd, kode_barang FROM lap_setwan;

GRANT ALL PRIVILEGES ON asal_usul, tahun, golongan_barang TO lap_setwan;
REVOKE INSERT, UPDATE, DELETE ON asal_usul, tahun, golongan_barang FROM lap_setwan;
