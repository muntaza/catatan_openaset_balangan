DROP VIEW IF EXISTS view_jalan_irigasi_jaringan_setwan;

CREATE VIEW view_jalan_irigasi_jaringan_setwan AS

SELECT
*

FROM
view_jalan_irigasi_jaringan_kabupaten

WHERE
1 = 1  AND
id_skpd = 1;

GRANT ALL PRIVILEGES ON view_jalan_irigasi_jaringan_setwan TO lap_setwan;
REVOKE INSERT, UPDATE, DELETE ON view_jalan_irigasi_jaringan_setwan FROM lap_setwan;
