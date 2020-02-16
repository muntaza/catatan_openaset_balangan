CREATE OR REPLACE VIEW view_daftar_pengadaan_108_setwan AS

SELECT
*

FROM
view_daftar_pengadaan_108_kabupaten

WHERE
1 = 1  AND
id_skpd = 1;

GRANT ALL PRIVILEGES ON view_daftar_pengadaan_108_setwan TO lap_setwan;
REVOKE INSERT, UPDATE, DELETE ON view_daftar_pengadaan_108_setwan FROM lap_setwan;

GRANT ALL PRIVILEGES ON skpd, view_kode_level_2_108, sub_skpd TO lap_setwan;
REVOKE INSERT, UPDATE, DELETE ON skpd, view_kode_level_2_108, sub_skpd FROM lap_setwan;



