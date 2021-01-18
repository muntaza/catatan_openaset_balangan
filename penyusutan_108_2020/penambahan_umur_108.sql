DROP VIEW IF EXISTS view_penambahan_umur_108 CASCADE;


CREATE VIEW view_penambahan_umur_108 AS




SELECT
kelompok_barang_108.kode_kelompok_barang,
kelompok_barang_108.nama_kelompok_barang,
penambahan_umur_108.umur,
penambahan_umur_108.persen


FROM
kelompok_barang_108, penambahan_umur_108

WHERE
1 = 1  AND
penambahan_umur_108.id_kelompok_barang_108 = kelompok_barang_108.id

;


GRANT ALL PRIVILEGES ON view_penambahan_umur_108 TO lap_kabupaten;
REVOKE INSERT, UPDATE, DELETE ON view_penambahan_umur_108 FROM lap_kabupaten;
