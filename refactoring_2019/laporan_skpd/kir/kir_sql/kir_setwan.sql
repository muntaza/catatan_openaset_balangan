DROP VIEW IF EXISTS view_kir_setwan;

CREATE VIEW view_kir_setwan AS

SELECT
*

FROM
view_kir

WHERE
1 = 1  AND
id_skpd = 1;

GRANT ALL PRIVILEGES ON view_kir_setwan TO lap_setwan;
REVOKE INSERT, UPDATE, DELETE ON view_kir_setwan FROM lap_setwan;

GRANT ALL PRIVILEGES ON skpd, sub_skpd, kode_barang TO lap_setwan;
REVOKE INSERT, UPDATE, DELETE ON skpd, sub_skpd, kode_barang FROM lap_setwan;

GRANT ALL PRIVILEGES ON asal_usul, ruangan, provinsi, kabupaten, lokasi_bidang  TO lap_setwan;
REVOKE INSERT, UPDATE, DELETE ON asal_usul, ruangan, provinsi, kabupaten, lokasi_bidang FROM lap_setwan;
