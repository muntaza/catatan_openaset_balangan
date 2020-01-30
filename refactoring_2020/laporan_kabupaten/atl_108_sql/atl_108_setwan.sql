DROP VIEW IF EXISTS view_atl_108_setwan;

CREATE VIEW view_atl_108_setwan AS

SELECT
*

FROM
view_atl_108_kabupaten

WHERE
1 = 1  AND
id_skpd = 1;

GRANT ALL PRIVILEGES ON view_atl_108_setwan TO lap_setwan;
REVOKE INSERT, UPDATE, DELETE ON view_atl_108_setwan FROM lap_setwan;

GRANT ALL PRIVILEGES ON skpd, sub_skpd TO lap_setwan;
REVOKE INSERT, UPDATE, DELETE ON skpd, sub_skpd FROM lap_setwan;



