CREATE TABLE table_tanah_kabupaten_2016 AS SELECT * FROM  view_tanah_kabupaten;
CREATE TABLE table_peralatan_mesin_kabupaten_2016 AS SELECT * FROM  view_peralatan_mesin_kabupaten;
CREATE TABLE table_gedung_bangunan_kabupaten_2016 AS SELECT * FROM  view_gedung_bangunan_kabupaten;
CREATE TABLE table_jalan_irigasi_jaringan_kabupaten_2016 AS SELECT * FROM  view_jalan_irigasi_jaringan_kabupaten;
CREATE TABLE table_atl_kabupaten_2016 AS SELECT * FROM  view_atl_kabupaten;


GRANT ALL PRIVILEGES ON table_tanah_kabupaten_2016 TO lap_kabupaten;
GRANT ALL PRIVILEGES ON table_peralatan_mesin_kabupaten_2016 TO lap_kabupaten;
GRANT ALL PRIVILEGES ON table_gedung_bangunan_kabupaten_2016 TO lap_kabupaten;
GRANT ALL PRIVILEGES ON table_jalan_irigasi_jaringan_kabupaten_2016 TO lap_kabupaten;
GRANT ALL PRIVILEGES ON table_atl_kabupaten_2016 TO lap_kabupaten;


REVOKE INSERT, UPDATE, DELETE ON table_tanah_kabupaten_2016 FROM lap_kabupaten;
REVOKE INSERT, UPDATE, DELETE ON table_peralatan_mesin_kabupaten_2016 FROM lap_kabupaten;
REVOKE INSERT, UPDATE, DELETE ON table_gedung_bangunan_kabupaten_2016 FROM lap_kabupaten;
REVOKE INSERT, UPDATE, DELETE ON table_jalan_irigasi_jaringan_kabupaten_2016 FROM lap_kabupaten;
REVOKE INSERT, UPDATE, DELETE ON table_atl_kabupaten_2016 FROM lap_kabupaten;
