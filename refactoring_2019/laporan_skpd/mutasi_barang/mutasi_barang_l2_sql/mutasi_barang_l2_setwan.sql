DROP VIEW IF EXISTS view_mutasi_barang_l2_setwan;

CREATE VIEW view_mutasi_barang_l2_setwan AS

SELECT
*

FROM
view_mutasi_barang_l2_kabupaten

WHERE
1 = 1  AND
id_skpd = 1;

GRANT ALL PRIVILEGES ON view_mutasi_barang_l2_setwan TO lap_setwan;
REVOKE INSERT, UPDATE, DELETE ON view_mutasi_barang_l2_setwan FROM lap_setwan;

GRANT ALL PRIVILEGES ON keadaan_barang TO lap_setwan;
REVOKE INSERT, UPDATE, DELETE ON keadaan_barang FROM lap_setwan;
