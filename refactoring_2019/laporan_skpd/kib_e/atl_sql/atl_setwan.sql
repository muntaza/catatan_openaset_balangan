DROP VIEW IF EXISTS view_atl_setwan;

CREATE VIEW view_atl_setwan AS

SELECT
*

FROM
view_atl_kabupaten

WHERE
1 = 1  AND
id_skpd = 1;

GRANT ALL PRIVILEGES ON view_atl_setwan TO lap_setwan;
REVOKE INSERT, UPDATE, DELETE ON view_atl_setwan FROM lap_setwan;
