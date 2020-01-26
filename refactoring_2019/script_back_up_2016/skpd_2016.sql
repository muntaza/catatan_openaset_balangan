CREATE TABLE skpd_2016 AS select * from  skpd;
GRANT ALL PRIVILEGES ON skpd_2016 TO lap_kabupaten;
REVOKE INSERT, UPDATE, DELETE ON skpd_2016 FROM lap_kabupaten;
