DROP VIEW IF EXISTS view_buku_inventaris_aset_tetap_l2_setwan;

CREATE VIEW view_buku_inventaris_aset_tetap_l2_setwan AS

SELECT
*

FROM
view_buku_inventaris_aset_tetap_l2

WHERE
1 = 1  AND
id_skpd = 1;

GRANT ALL PRIVILEGES ON view_buku_inventaris_aset_tetap_l2_setwan TO lap_setwan;
REVOKE INSERT, UPDATE, DELETE ON view_buku_inventaris_aset_tetap_l2_setwan FROM lap_setwan;
