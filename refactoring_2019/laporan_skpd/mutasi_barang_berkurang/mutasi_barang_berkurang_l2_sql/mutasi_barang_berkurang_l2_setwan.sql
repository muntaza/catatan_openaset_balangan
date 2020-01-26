DROP VIEW IF EXISTS view_mutasi_barang_berkurang_l2_setwan;

CREATE VIEW view_mutasi_barang_berkurang_l2_setwan AS

SELECT
*

FROM
view_mutasi_barang_berkurang_l2

WHERE
1 = 1  AND
id_skpd = 1;

GRANT ALL PRIVILEGES ON view_mutasi_barang_berkurang_l2_setwan TO lap_setwan;
REVOKE INSERT, UPDATE, DELETE ON view_mutasi_barang_berkurang_l2_setwan FROM lap_setwan;

GRANT ALL PRIVILEGES ON mutasi_berkurang TO lap_setwan;
REVOKE INSERT, UPDATE, DELETE ON mutasi_berkurang FROM lap_setwan;
