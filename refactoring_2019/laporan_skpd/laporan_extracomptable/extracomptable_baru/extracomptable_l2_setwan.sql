DROP VIEW IF EXISTS view_extracomptable_l2_setwan;

CREATE VIEW view_extracomptable_l2_setwan AS

SELECT
*

FROM
view_extracomptable_l2

WHERE
1 = 1  AND
id_skpd = 1;

GRANT ALL PRIVILEGES ON view_extracomptable_l2_setwan TO lap_setwan;
REVOKE INSERT, UPDATE, DELETE ON view_extracomptable_l2_setwan FROM lap_setwan;
