DROP VIEW IF EXISTS view_tanah_setwan;

CREATE VIEW view_tanah_setwan AS

SELECT
*

FROM
view_tanah_kabupaten

WHERE
1 = 1  AND
id_skpd = 1;

GRANT ALL PRIVILEGES ON view_tanah_setwan TO lap_setwan;
REVOKE INSERT, UPDATE, DELETE ON view_tanah_setwan FROM lap_setwan;

GRANT ALL PRIVILEGES ON skpd, sub_skpd TO lap_setwan;
REVOKE INSERT, UPDATE, DELETE ON skpd, sub_skpd FROM lap_setwan;



