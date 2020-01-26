DROP VIEW IF EXISTS view_daftar_pengadaan_l2_awayan;

CREATE VIEW view_daftar_pengadaan_l2_awayan AS

SELECT
*

FROM
view_daftar_pengadaan_l2_kabupaten

WHERE
1 = 1  AND
id_skpd = 34;

GRANT ALL PRIVILEGES ON view_kode_level_2 TO lap_awayan;
REVOKE INSERT, UPDATE, DELETE ON view_kode_level_2 FROM lap_awayan;

GRANT ALL PRIVILEGES ON view_daftar_pengadaan_l2_awayan TO lap_awayan;
REVOKE INSERT, UPDATE, DELETE ON view_daftar_pengadaan_l2_awayan FROM lap_awayan;

GRANT ALL PRIVILEGES ON tahun, skpd, sub_skpd, kode_barang TO lap_awayan;
REVOKE INSERT, UPDATE, DELETE ON tahun, skpd, sub_skpd, kode_barang FROM lap_awayan;

GRANT ALL PRIVILEGES ON asal_usul, tahun, golongan_barang TO lap_awayan;
REVOKE INSERT, UPDATE, DELETE ON asal_usul, tahun, golongan_barang FROM lap_awayan;
DROP VIEW IF EXISTS view_daftar_pengadaan_l2_bappeda;

CREATE VIEW view_daftar_pengadaan_l2_bappeda AS

SELECT
*

FROM
view_daftar_pengadaan_l2_kabupaten

WHERE
1 = 1  AND
id_skpd = 21;

GRANT ALL PRIVILEGES ON view_kode_level_2 TO lap_bappeda;
REVOKE INSERT, UPDATE, DELETE ON view_kode_level_2 FROM lap_bappeda;

GRANT ALL PRIVILEGES ON view_daftar_pengadaan_l2_bappeda TO lap_bappeda;
REVOKE INSERT, UPDATE, DELETE ON view_daftar_pengadaan_l2_bappeda FROM lap_bappeda;

GRANT ALL PRIVILEGES ON tahun, skpd, sub_skpd, kode_barang TO lap_bappeda;
REVOKE INSERT, UPDATE, DELETE ON tahun, skpd, sub_skpd, kode_barang FROM lap_bappeda;

GRANT ALL PRIVILEGES ON asal_usul, tahun, golongan_barang TO lap_bappeda;
REVOKE INSERT, UPDATE, DELETE ON asal_usul, tahun, golongan_barang FROM lap_bappeda;
DROP VIEW IF EXISTS view_daftar_pengadaan_l2_batumandi;

CREATE VIEW view_daftar_pengadaan_l2_batumandi AS

SELECT
*

FROM
view_daftar_pengadaan_l2_kabupaten

WHERE
1 = 1  AND
id_skpd = 32;

GRANT ALL PRIVILEGES ON view_kode_level_2 TO lap_batumandi;
REVOKE INSERT, UPDATE, DELETE ON view_kode_level_2 FROM lap_batumandi;

GRANT ALL PRIVILEGES ON view_daftar_pengadaan_l2_batumandi TO lap_batumandi;
REVOKE INSERT, UPDATE, DELETE ON view_daftar_pengadaan_l2_batumandi FROM lap_batumandi;

GRANT ALL PRIVILEGES ON tahun, skpd, sub_skpd, kode_barang TO lap_batumandi;
REVOKE INSERT, UPDATE, DELETE ON tahun, skpd, sub_skpd, kode_barang FROM lap_batumandi;

GRANT ALL PRIVILEGES ON asal_usul, tahun, golongan_barang TO lap_batumandi;
REVOKE INSERT, UPDATE, DELETE ON asal_usul, tahun, golongan_barang FROM lap_batumandi;
DROP VIEW IF EXISTS view_daftar_pengadaan_l2_batupiring;

CREATE VIEW view_daftar_pengadaan_l2_batupiring AS

SELECT
*

FROM
view_daftar_pengadaan_l2_kabupaten

WHERE
1 = 1  AND
id_skpd = 37;

GRANT ALL PRIVILEGES ON view_kode_level_2 TO lap_batupiring;
REVOKE INSERT, UPDATE, DELETE ON view_kode_level_2 FROM lap_batupiring;

GRANT ALL PRIVILEGES ON view_daftar_pengadaan_l2_batupiring TO lap_batupiring;
REVOKE INSERT, UPDATE, DELETE ON view_daftar_pengadaan_l2_batupiring FROM lap_batupiring;

GRANT ALL PRIVILEGES ON tahun, skpd, sub_skpd, kode_barang TO lap_batupiring;
REVOKE INSERT, UPDATE, DELETE ON tahun, skpd, sub_skpd, kode_barang FROM lap_batupiring;

GRANT ALL PRIVILEGES ON asal_usul, tahun, golongan_barang TO lap_batupiring;
REVOKE INSERT, UPDATE, DELETE ON asal_usul, tahun, golongan_barang FROM lap_batupiring;
DROP VIEW IF EXISTS view_daftar_pengadaan_l2_bkd;

CREATE VIEW view_daftar_pengadaan_l2_bkd AS

SELECT
*

FROM
view_daftar_pengadaan_l2_kabupaten

WHERE
1 = 1  AND
id_skpd = 19;

GRANT ALL PRIVILEGES ON view_kode_level_2 TO lap_bkd;
REVOKE INSERT, UPDATE, DELETE ON view_kode_level_2 FROM lap_bkd;

GRANT ALL PRIVILEGES ON view_daftar_pengadaan_l2_bkd TO lap_bkd;
REVOKE INSERT, UPDATE, DELETE ON view_daftar_pengadaan_l2_bkd FROM lap_bkd;

GRANT ALL PRIVILEGES ON tahun, skpd, sub_skpd, kode_barang TO lap_bkd;
REVOKE INSERT, UPDATE, DELETE ON tahun, skpd, sub_skpd, kode_barang FROM lap_bkd;

GRANT ALL PRIVILEGES ON asal_usul, tahun, golongan_barang TO lap_bkd;
REVOKE INSERT, UPDATE, DELETE ON asal_usul, tahun, golongan_barang FROM lap_bkd;
DROP VIEW IF EXISTS view_daftar_pengadaan_l2_bkppd;

CREATE VIEW view_daftar_pengadaan_l2_bkppd AS

SELECT
*

FROM
view_daftar_pengadaan_l2_kabupaten

WHERE
1 = 1  AND
id_skpd = 26;

GRANT ALL PRIVILEGES ON view_kode_level_2 TO lap_bkppd;
REVOKE INSERT, UPDATE, DELETE ON view_kode_level_2 FROM lap_bkppd;

GRANT ALL PRIVILEGES ON view_daftar_pengadaan_l2_bkppd TO lap_bkppd;
REVOKE INSERT, UPDATE, DELETE ON view_daftar_pengadaan_l2_bkppd FROM lap_bkppd;

GRANT ALL PRIVILEGES ON tahun, skpd, sub_skpd, kode_barang TO lap_bkppd;
REVOKE INSERT, UPDATE, DELETE ON tahun, skpd, sub_skpd, kode_barang FROM lap_bkppd;

GRANT ALL PRIVILEGES ON asal_usul, tahun, golongan_barang TO lap_bkppd;
REVOKE INSERT, UPDATE, DELETE ON asal_usul, tahun, golongan_barang FROM lap_bkppd;
DROP VIEW IF EXISTS view_daftar_pengadaan_l2_bpbd;

CREATE VIEW view_daftar_pengadaan_l2_bpbd AS

SELECT
*

FROM
view_daftar_pengadaan_l2_kabupaten

WHERE
1 = 1  AND
id_skpd = 39;

GRANT ALL PRIVILEGES ON view_kode_level_2 TO lap_bpbd;
REVOKE INSERT, UPDATE, DELETE ON view_kode_level_2 FROM lap_bpbd;

GRANT ALL PRIVILEGES ON view_daftar_pengadaan_l2_bpbd TO lap_bpbd;
REVOKE INSERT, UPDATE, DELETE ON view_daftar_pengadaan_l2_bpbd FROM lap_bpbd;

GRANT ALL PRIVILEGES ON tahun, skpd, sub_skpd, kode_barang TO lap_bpbd;
REVOKE INSERT, UPDATE, DELETE ON tahun, skpd, sub_skpd, kode_barang FROM lap_bpbd;

GRANT ALL PRIVILEGES ON asal_usul, tahun, golongan_barang TO lap_bpbd;
REVOKE INSERT, UPDATE, DELETE ON asal_usul, tahun, golongan_barang FROM lap_bpbd;
DROP VIEW IF EXISTS view_daftar_pengadaan_l2_bppd;

CREATE VIEW view_daftar_pengadaan_l2_bppd AS

SELECT
*

FROM
view_daftar_pengadaan_l2_kabupaten

WHERE
1 = 1  AND
id_skpd = 48;

GRANT ALL PRIVILEGES ON view_kode_level_2 TO lap_bppd;
REVOKE INSERT, UPDATE, DELETE ON view_kode_level_2 FROM lap_bppd;

GRANT ALL PRIVILEGES ON view_daftar_pengadaan_l2_bppd TO lap_bppd;
REVOKE INSERT, UPDATE, DELETE ON view_daftar_pengadaan_l2_bppd FROM lap_bppd;

GRANT ALL PRIVILEGES ON tahun, skpd, sub_skpd, kode_barang TO lap_bppd;
REVOKE INSERT, UPDATE, DELETE ON tahun, skpd, sub_skpd, kode_barang FROM lap_bppd;

GRANT ALL PRIVILEGES ON asal_usul, tahun, golongan_barang TO lap_bppd;
REVOKE INSERT, UPDATE, DELETE ON asal_usul, tahun, golongan_barang FROM lap_bppd;
DROP VIEW IF EXISTS view_daftar_pengadaan_l2_dinkes;

CREATE VIEW view_daftar_pengadaan_l2_dinkes AS

SELECT
*

FROM
view_daftar_pengadaan_l2_kabupaten

WHERE
1 = 1  AND
id_skpd = 5;

GRANT ALL PRIVILEGES ON view_kode_level_2 TO lap_dinkes;
REVOKE INSERT, UPDATE, DELETE ON view_kode_level_2 FROM lap_dinkes;

GRANT ALL PRIVILEGES ON view_daftar_pengadaan_l2_dinkes TO lap_dinkes;
REVOKE INSERT, UPDATE, DELETE ON view_daftar_pengadaan_l2_dinkes FROM lap_dinkes;

GRANT ALL PRIVILEGES ON tahun, skpd, sub_skpd, kode_barang TO lap_dinkes;
REVOKE INSERT, UPDATE, DELETE ON tahun, skpd, sub_skpd, kode_barang FROM lap_dinkes;

GRANT ALL PRIVILEGES ON asal_usul, tahun, golongan_barang TO lap_dinkes;
REVOKE INSERT, UPDATE, DELETE ON asal_usul, tahun, golongan_barang FROM lap_dinkes;
DROP VIEW IF EXISTS view_daftar_pengadaan_l2_disdik;

CREATE VIEW view_daftar_pengadaan_l2_disdik AS

SELECT
*

FROM
view_daftar_pengadaan_l2_kabupaten

WHERE
1 = 1  AND
id_skpd = 7;

GRANT ALL PRIVILEGES ON view_kode_level_2 TO lap_disdik;
REVOKE INSERT, UPDATE, DELETE ON view_kode_level_2 FROM lap_disdik;

GRANT ALL PRIVILEGES ON view_daftar_pengadaan_l2_disdik TO lap_disdik;
REVOKE INSERT, UPDATE, DELETE ON view_daftar_pengadaan_l2_disdik FROM lap_disdik;

GRANT ALL PRIVILEGES ON tahun, skpd, sub_skpd, kode_barang TO lap_disdik;
REVOKE INSERT, UPDATE, DELETE ON tahun, skpd, sub_skpd, kode_barang FROM lap_disdik;

GRANT ALL PRIVILEGES ON asal_usul, tahun, golongan_barang TO lap_disdik;
REVOKE INSERT, UPDATE, DELETE ON asal_usul, tahun, golongan_barang FROM lap_disdik;
DROP VIEW IF EXISTS view_daftar_pengadaan_l2_dishub;

CREATE VIEW view_daftar_pengadaan_l2_dishub AS

SELECT
*

FROM
view_daftar_pengadaan_l2_kabupaten

WHERE
1 = 1  AND
id_skpd = 4;

GRANT ALL PRIVILEGES ON view_kode_level_2 TO lap_dishub;
REVOKE INSERT, UPDATE, DELETE ON view_kode_level_2 FROM lap_dishub;

GRANT ALL PRIVILEGES ON view_daftar_pengadaan_l2_dishub TO lap_dishub;
REVOKE INSERT, UPDATE, DELETE ON view_daftar_pengadaan_l2_dishub FROM lap_dishub;

GRANT ALL PRIVILEGES ON tahun, skpd, sub_skpd, kode_barang TO lap_dishub;
REVOKE INSERT, UPDATE, DELETE ON tahun, skpd, sub_skpd, kode_barang FROM lap_dishub;

GRANT ALL PRIVILEGES ON asal_usul, tahun, golongan_barang TO lap_dishub;
REVOKE INSERT, UPDATE, DELETE ON asal_usul, tahun, golongan_barang FROM lap_dishub;
DROP VIEW IF EXISTS view_daftar_pengadaan_l2_disnakertrans;

CREATE VIEW view_daftar_pengadaan_l2_disnakertrans AS

SELECT
*

FROM
view_daftar_pengadaan_l2_kabupaten

WHERE
1 = 1  AND
id_skpd = 41;

GRANT ALL PRIVILEGES ON view_kode_level_2 TO lap_disnakertrans;
REVOKE INSERT, UPDATE, DELETE ON view_kode_level_2 FROM lap_disnakertrans;

GRANT ALL PRIVILEGES ON view_daftar_pengadaan_l2_disnakertrans TO lap_disnakertrans;
REVOKE INSERT, UPDATE, DELETE ON view_daftar_pengadaan_l2_disnakertrans FROM lap_disnakertrans;

GRANT ALL PRIVILEGES ON tahun, skpd, sub_skpd, kode_barang TO lap_disnakertrans;
REVOKE INSERT, UPDATE, DELETE ON tahun, skpd, sub_skpd, kode_barang FROM lap_disnakertrans;

GRANT ALL PRIVILEGES ON asal_usul, tahun, golongan_barang TO lap_disnakertrans;
REVOKE INSERT, UPDATE, DELETE ON asal_usul, tahun, golongan_barang FROM lap_disnakertrans;
DROP VIEW IF EXISTS view_daftar_pengadaan_l2_distamben;

CREATE VIEW view_daftar_pengadaan_l2_distamben AS

SELECT
*

FROM
view_daftar_pengadaan_l2_kabupaten

WHERE
1 = 1  AND
id_skpd = 17;

GRANT ALL PRIVILEGES ON view_kode_level_2 TO lap_distamben;
REVOKE INSERT, UPDATE, DELETE ON view_kode_level_2 FROM lap_distamben;

GRANT ALL PRIVILEGES ON view_daftar_pengadaan_l2_distamben TO lap_distamben;
REVOKE INSERT, UPDATE, DELETE ON view_daftar_pengadaan_l2_distamben FROM lap_distamben;

GRANT ALL PRIVILEGES ON tahun, skpd, sub_skpd, kode_barang TO lap_distamben;
REVOKE INSERT, UPDATE, DELETE ON tahun, skpd, sub_skpd, kode_barang FROM lap_distamben;

GRANT ALL PRIVILEGES ON asal_usul, tahun, golongan_barang TO lap_distamben;
REVOKE INSERT, UPDATE, DELETE ON asal_usul, tahun, golongan_barang FROM lap_distamben;
DROP VIEW IF EXISTS view_daftar_pengadaan_l2_dko;

CREATE VIEW view_daftar_pengadaan_l2_dko AS

SELECT
*

FROM
view_daftar_pengadaan_l2_kabupaten

WHERE
1 = 1  AND
id_skpd = 23;

GRANT ALL PRIVILEGES ON view_kode_level_2 TO lap_dko;
REVOKE INSERT, UPDATE, DELETE ON view_kode_level_2 FROM lap_dko;

GRANT ALL PRIVILEGES ON view_daftar_pengadaan_l2_dko TO lap_dko;
REVOKE INSERT, UPDATE, DELETE ON view_daftar_pengadaan_l2_dko FROM lap_dko;

GRANT ALL PRIVILEGES ON tahun, skpd, sub_skpd, kode_barang TO lap_dko;
REVOKE INSERT, UPDATE, DELETE ON tahun, skpd, sub_skpd, kode_barang FROM lap_dko;

GRANT ALL PRIVILEGES ON asal_usul, tahun, golongan_barang TO lap_dko;
REVOKE INSERT, UPDATE, DELETE ON asal_usul, tahun, golongan_barang FROM lap_dko;
DROP VIEW IF EXISTS view_daftar_pengadaan_l2_dkp;

CREATE VIEW view_daftar_pengadaan_l2_dkp AS

SELECT
*

FROM
view_daftar_pengadaan_l2_kabupaten

WHERE
1 = 1  AND
id_skpd = 15;

GRANT ALL PRIVILEGES ON view_kode_level_2 TO lap_dkp;
REVOKE INSERT, UPDATE, DELETE ON view_kode_level_2 FROM lap_dkp;

GRANT ALL PRIVILEGES ON view_daftar_pengadaan_l2_dkp TO lap_dkp;
REVOKE INSERT, UPDATE, DELETE ON view_daftar_pengadaan_l2_dkp FROM lap_dkp;

GRANT ALL PRIVILEGES ON tahun, skpd, sub_skpd, kode_barang TO lap_dkp;
REVOKE INSERT, UPDATE, DELETE ON tahun, skpd, sub_skpd, kode_barang FROM lap_dkp;

GRANT ALL PRIVILEGES ON asal_usul, tahun, golongan_barang TO lap_dkp;
REVOKE INSERT, UPDATE, DELETE ON asal_usul, tahun, golongan_barang FROM lap_dkp;
DROP VIEW IF EXISTS view_daftar_pengadaan_l2_dkukmp;

CREATE VIEW view_daftar_pengadaan_l2_dkukmp AS

SELECT
*

FROM
view_daftar_pengadaan_l2_kabupaten

WHERE
1 = 1  AND
id_skpd = 16;

GRANT ALL PRIVILEGES ON view_kode_level_2 TO lap_dkukmp;
REVOKE INSERT, UPDATE, DELETE ON view_kode_level_2 FROM lap_dkukmp;

GRANT ALL PRIVILEGES ON view_daftar_pengadaan_l2_dkukmp TO lap_dkukmp;
REVOKE INSERT, UPDATE, DELETE ON view_daftar_pengadaan_l2_dkukmp FROM lap_dkukmp;

GRANT ALL PRIVILEGES ON tahun, skpd, sub_skpd, kode_barang TO lap_dkukmp;
REVOKE INSERT, UPDATE, DELETE ON tahun, skpd, sub_skpd, kode_barang FROM lap_dkukmp;

GRANT ALL PRIVILEGES ON asal_usul, tahun, golongan_barang TO lap_dkukmp;
REVOKE INSERT, UPDATE, DELETE ON asal_usul, tahun, golongan_barang FROM lap_dkukmp;
DROP VIEW IF EXISTS view_daftar_pengadaan_l2_dlh;

CREATE VIEW view_daftar_pengadaan_l2_dlh AS

SELECT
*

FROM
view_daftar_pengadaan_l2_kabupaten

WHERE
1 = 1  AND
id_skpd = 22;

GRANT ALL PRIVILEGES ON view_kode_level_2 TO lap_dlh;
REVOKE INSERT, UPDATE, DELETE ON view_kode_level_2 FROM lap_dlh;

GRANT ALL PRIVILEGES ON view_daftar_pengadaan_l2_dlh TO lap_dlh;
REVOKE INSERT, UPDATE, DELETE ON view_daftar_pengadaan_l2_dlh FROM lap_dlh;

GRANT ALL PRIVILEGES ON tahun, skpd, sub_skpd, kode_barang TO lap_dlh;
REVOKE INSERT, UPDATE, DELETE ON tahun, skpd, sub_skpd, kode_barang FROM lap_dlh;

GRANT ALL PRIVILEGES ON asal_usul, tahun, golongan_barang TO lap_dlh;
REVOKE INSERT, UPDATE, DELETE ON asal_usul, tahun, golongan_barang FROM lap_dlh;
DROP VIEW IF EXISTS view_daftar_pengadaan_l2_dpkp;

CREATE VIEW view_daftar_pengadaan_l2_dpkp AS

SELECT
*

FROM
view_daftar_pengadaan_l2_kabupaten

WHERE
1 = 1  AND
id_skpd = 40;

GRANT ALL PRIVILEGES ON view_kode_level_2 TO lap_dpkp;
REVOKE INSERT, UPDATE, DELETE ON view_kode_level_2 FROM lap_dpkp;

GRANT ALL PRIVILEGES ON view_daftar_pengadaan_l2_dpkp TO lap_dpkp;
REVOKE INSERT, UPDATE, DELETE ON view_daftar_pengadaan_l2_dpkp FROM lap_dpkp;

GRANT ALL PRIVILEGES ON tahun, skpd, sub_skpd, kode_barang TO lap_dpkp;
REVOKE INSERT, UPDATE, DELETE ON tahun, skpd, sub_skpd, kode_barang FROM lap_dpkp;

GRANT ALL PRIVILEGES ON asal_usul, tahun, golongan_barang TO lap_dpkp;
REVOKE INSERT, UPDATE, DELETE ON asal_usul, tahun, golongan_barang FROM lap_dpkp;
DROP VIEW IF EXISTS view_daftar_pengadaan_l2_dpmd;

CREATE VIEW view_daftar_pengadaan_l2_dpmd AS

SELECT
*

FROM
view_daftar_pengadaan_l2_kabupaten

WHERE
1 = 1  AND
id_skpd = 10;

GRANT ALL PRIVILEGES ON view_kode_level_2 TO lap_dpmd;
REVOKE INSERT, UPDATE, DELETE ON view_kode_level_2 FROM lap_dpmd;

GRANT ALL PRIVILEGES ON view_daftar_pengadaan_l2_dpmd TO lap_dpmd;
REVOKE INSERT, UPDATE, DELETE ON view_daftar_pengadaan_l2_dpmd FROM lap_dpmd;

GRANT ALL PRIVILEGES ON tahun, skpd, sub_skpd, kode_barang TO lap_dpmd;
REVOKE INSERT, UPDATE, DELETE ON tahun, skpd, sub_skpd, kode_barang FROM lap_dpmd;

GRANT ALL PRIVILEGES ON asal_usul, tahun, golongan_barang TO lap_dpmd;
REVOKE INSERT, UPDATE, DELETE ON asal_usul, tahun, golongan_barang FROM lap_dpmd;
DROP VIEW IF EXISTS view_daftar_pengadaan_l2_dpmptsp;

CREATE VIEW view_daftar_pengadaan_l2_dpmptsp AS

SELECT
*

FROM
view_daftar_pengadaan_l2_kabupaten

WHERE
1 = 1  AND
id_skpd = 18;

GRANT ALL PRIVILEGES ON view_kode_level_2 TO lap_dpmptsp;
REVOKE INSERT, UPDATE, DELETE ON view_kode_level_2 FROM lap_dpmptsp;

GRANT ALL PRIVILEGES ON view_daftar_pengadaan_l2_dpmptsp TO lap_dpmptsp;
REVOKE INSERT, UPDATE, DELETE ON view_daftar_pengadaan_l2_dpmptsp FROM lap_dpmptsp;

GRANT ALL PRIVILEGES ON tahun, skpd, sub_skpd, kode_barang TO lap_dpmptsp;
REVOKE INSERT, UPDATE, DELETE ON tahun, skpd, sub_skpd, kode_barang FROM lap_dpmptsp;

GRANT ALL PRIVILEGES ON asal_usul, tahun, golongan_barang TO lap_dpmptsp;
REVOKE INSERT, UPDATE, DELETE ON asal_usul, tahun, golongan_barang FROM lap_dpmptsp;
DROP VIEW IF EXISTS view_daftar_pengadaan_l2_dppkb;

CREATE VIEW view_daftar_pengadaan_l2_dppkb AS

SELECT
*

FROM
view_daftar_pengadaan_l2_kabupaten

WHERE
1 = 1  AND
id_skpd = 42;

GRANT ALL PRIVILEGES ON view_kode_level_2 TO lap_dppkb;
REVOKE INSERT, UPDATE, DELETE ON view_kode_level_2 FROM lap_dppkb;

GRANT ALL PRIVILEGES ON view_daftar_pengadaan_l2_dppkb TO lap_dppkb;
REVOKE INSERT, UPDATE, DELETE ON view_daftar_pengadaan_l2_dppkb FROM lap_dppkb;

GRANT ALL PRIVILEGES ON tahun, skpd, sub_skpd, kode_barang TO lap_dppkb;
REVOKE INSERT, UPDATE, DELETE ON tahun, skpd, sub_skpd, kode_barang FROM lap_dppkb;

GRANT ALL PRIVILEGES ON asal_usul, tahun, golongan_barang TO lap_dppkb;
REVOKE INSERT, UPDATE, DELETE ON asal_usul, tahun, golongan_barang FROM lap_dppkb;
DROP VIEW IF EXISTS view_daftar_pengadaan_l2_dpppa;

CREATE VIEW view_daftar_pengadaan_l2_dpppa AS

SELECT
*

FROM
view_daftar_pengadaan_l2_kabupaten

WHERE
1 = 1  AND
id_skpd = 11;

GRANT ALL PRIVILEGES ON view_kode_level_2 TO lap_dpppa;
REVOKE INSERT, UPDATE, DELETE ON view_kode_level_2 FROM lap_dpppa;

GRANT ALL PRIVILEGES ON view_daftar_pengadaan_l2_dpppa TO lap_dpppa;
REVOKE INSERT, UPDATE, DELETE ON view_daftar_pengadaan_l2_dpppa FROM lap_dpppa;

GRANT ALL PRIVILEGES ON tahun, skpd, sub_skpd, kode_barang TO lap_dpppa;
REVOKE INSERT, UPDATE, DELETE ON tahun, skpd, sub_skpd, kode_barang FROM lap_dpppa;

GRANT ALL PRIVILEGES ON asal_usul, tahun, golongan_barang TO lap_dpppa;
REVOKE INSERT, UPDATE, DELETE ON asal_usul, tahun, golongan_barang FROM lap_dpppa;
DROP VIEW IF EXISTS view_daftar_pengadaan_l2_dpupr;

CREATE VIEW view_daftar_pengadaan_l2_dpupr AS

SELECT
*

FROM
view_daftar_pengadaan_l2_kabupaten

WHERE
1 = 1  AND
id_skpd = 3;

GRANT ALL PRIVILEGES ON view_kode_level_2 TO lap_dpupr;
REVOKE INSERT, UPDATE, DELETE ON view_kode_level_2 FROM lap_dpupr;

GRANT ALL PRIVILEGES ON view_daftar_pengadaan_l2_dpupr TO lap_dpupr;
REVOKE INSERT, UPDATE, DELETE ON view_daftar_pengadaan_l2_dpupr FROM lap_dpupr;

GRANT ALL PRIVILEGES ON tahun, skpd, sub_skpd, kode_barang TO lap_dpupr;
REVOKE INSERT, UPDATE, DELETE ON tahun, skpd, sub_skpd, kode_barang FROM lap_dpupr;

GRANT ALL PRIVILEGES ON asal_usul, tahun, golongan_barang TO lap_dpupr;
REVOKE INSERT, UPDATE, DELETE ON asal_usul, tahun, golongan_barang FROM lap_dpupr;
DROP VIEW IF EXISTS view_daftar_pengadaan_l2_dukcatpil;

CREATE VIEW view_daftar_pengadaan_l2_dukcatpil AS

SELECT
*

FROM
view_daftar_pengadaan_l2_kabupaten

WHERE
1 = 1  AND
id_skpd = 12;

GRANT ALL PRIVILEGES ON view_kode_level_2 TO lap_dukcatpil;
REVOKE INSERT, UPDATE, DELETE ON view_kode_level_2 FROM lap_dukcatpil;

GRANT ALL PRIVILEGES ON view_daftar_pengadaan_l2_dukcatpil TO lap_dukcatpil;
REVOKE INSERT, UPDATE, DELETE ON view_daftar_pengadaan_l2_dukcatpil FROM lap_dukcatpil;

GRANT ALL PRIVILEGES ON tahun, skpd, sub_skpd, kode_barang TO lap_dukcatpil;
REVOKE INSERT, UPDATE, DELETE ON tahun, skpd, sub_skpd, kode_barang FROM lap_dukcatpil;

GRANT ALL PRIVILEGES ON asal_usul, tahun, golongan_barang TO lap_dukcatpil;
REVOKE INSERT, UPDATE, DELETE ON asal_usul, tahun, golongan_barang FROM lap_dukcatpil;
DROP VIEW IF EXISTS view_daftar_pengadaan_l2_halong;

CREATE VIEW view_daftar_pengadaan_l2_halong AS

SELECT
*

FROM
view_daftar_pengadaan_l2_kabupaten

WHERE
1 = 1  AND
id_skpd = 35;

GRANT ALL PRIVILEGES ON view_kode_level_2 TO lap_halong;
REVOKE INSERT, UPDATE, DELETE ON view_kode_level_2 FROM lap_halong;

GRANT ALL PRIVILEGES ON view_daftar_pengadaan_l2_halong TO lap_halong;
REVOKE INSERT, UPDATE, DELETE ON view_daftar_pengadaan_l2_halong FROM lap_halong;

GRANT ALL PRIVILEGES ON tahun, skpd, sub_skpd, kode_barang TO lap_halong;
REVOKE INSERT, UPDATE, DELETE ON tahun, skpd, sub_skpd, kode_barang FROM lap_halong;

GRANT ALL PRIVILEGES ON asal_usul, tahun, golongan_barang TO lap_halong;
REVOKE INSERT, UPDATE, DELETE ON asal_usul, tahun, golongan_barang FROM lap_halong;
DROP VIEW IF EXISTS view_daftar_pengadaan_l2_inspektorat;

CREATE VIEW view_daftar_pengadaan_l2_inspektorat AS

SELECT
*

FROM
view_daftar_pengadaan_l2_kabupaten

WHERE
1 = 1  AND
id_skpd = 20;

GRANT ALL PRIVILEGES ON view_kode_level_2 TO lap_inspektorat;
REVOKE INSERT, UPDATE, DELETE ON view_kode_level_2 FROM lap_inspektorat;

GRANT ALL PRIVILEGES ON view_daftar_pengadaan_l2_inspektorat TO lap_inspektorat;
REVOKE INSERT, UPDATE, DELETE ON view_daftar_pengadaan_l2_inspektorat FROM lap_inspektorat;

GRANT ALL PRIVILEGES ON tahun, skpd, sub_skpd, kode_barang TO lap_inspektorat;
REVOKE INSERT, UPDATE, DELETE ON tahun, skpd, sub_skpd, kode_barang FROM lap_inspektorat;

GRANT ALL PRIVILEGES ON asal_usul, tahun, golongan_barang TO lap_inspektorat;
REVOKE INSERT, UPDATE, DELETE ON asal_usul, tahun, golongan_barang FROM lap_inspektorat;
DROP VIEW IF EXISTS view_daftar_pengadaan_l2_juai;

CREATE VIEW view_daftar_pengadaan_l2_juai AS

SELECT
*

FROM
view_daftar_pengadaan_l2_kabupaten

WHERE
1 = 1  AND
id_skpd = 33;

GRANT ALL PRIVILEGES ON view_kode_level_2 TO lap_juai;
REVOKE INSERT, UPDATE, DELETE ON view_kode_level_2 FROM lap_juai;

GRANT ALL PRIVILEGES ON view_daftar_pengadaan_l2_juai TO lap_juai;
REVOKE INSERT, UPDATE, DELETE ON view_daftar_pengadaan_l2_juai FROM lap_juai;

GRANT ALL PRIVILEGES ON tahun, skpd, sub_skpd, kode_barang TO lap_juai;
REVOKE INSERT, UPDATE, DELETE ON tahun, skpd, sub_skpd, kode_barang FROM lap_juai;

GRANT ALL PRIVILEGES ON asal_usul, tahun, golongan_barang TO lap_juai;
REVOKE INSERT, UPDATE, DELETE ON asal_usul, tahun, golongan_barang FROM lap_juai;
DROP VIEW IF EXISTS view_daftar_pengadaan_l2_kearsipan;

CREATE VIEW view_daftar_pengadaan_l2_kearsipan AS

SELECT
*

FROM
view_daftar_pengadaan_l2_kabupaten

WHERE
1 = 1  AND
id_skpd = 44;

GRANT ALL PRIVILEGES ON view_kode_level_2 TO lap_kearsipan;
REVOKE INSERT, UPDATE, DELETE ON view_kode_level_2 FROM lap_kearsipan;

GRANT ALL PRIVILEGES ON view_daftar_pengadaan_l2_kearsipan TO lap_kearsipan;
REVOKE INSERT, UPDATE, DELETE ON view_daftar_pengadaan_l2_kearsipan FROM lap_kearsipan;

GRANT ALL PRIVILEGES ON tahun, skpd, sub_skpd, kode_barang TO lap_kearsipan;
REVOKE INSERT, UPDATE, DELETE ON tahun, skpd, sub_skpd, kode_barang FROM lap_kearsipan;

GRANT ALL PRIVILEGES ON asal_usul, tahun, golongan_barang TO lap_kearsipan;
REVOKE INSERT, UPDATE, DELETE ON asal_usul, tahun, golongan_barang FROM lap_kearsipan;
DROP VIEW IF EXISTS view_daftar_pengadaan_l2_kehutanan;

CREATE VIEW view_daftar_pengadaan_l2_kehutanan AS

SELECT
*

FROM
view_daftar_pengadaan_l2_kabupaten

WHERE
1 = 1  AND
id_skpd = 14;

GRANT ALL PRIVILEGES ON view_kode_level_2 TO lap_kehutanan;
REVOKE INSERT, UPDATE, DELETE ON view_kode_level_2 FROM lap_kehutanan;

GRANT ALL PRIVILEGES ON view_daftar_pengadaan_l2_kehutanan TO lap_kehutanan;
REVOKE INSERT, UPDATE, DELETE ON view_daftar_pengadaan_l2_kehutanan FROM lap_kehutanan;

GRANT ALL PRIVILEGES ON tahun, skpd, sub_skpd, kode_barang TO lap_kehutanan;
REVOKE INSERT, UPDATE, DELETE ON tahun, skpd, sub_skpd, kode_barang FROM lap_kehutanan;

GRANT ALL PRIVILEGES ON asal_usul, tahun, golongan_barang TO lap_kehutanan;
REVOKE INSERT, UPDATE, DELETE ON asal_usul, tahun, golongan_barang FROM lap_kehutanan;
DROP VIEW IF EXISTS view_daftar_pengadaan_l2_kesbangpol;

CREATE VIEW view_daftar_pengadaan_l2_kesbangpol AS

SELECT
*

FROM
view_daftar_pengadaan_l2_kabupaten

WHERE
1 = 1  AND
id_skpd = 24;

GRANT ALL PRIVILEGES ON view_kode_level_2 TO lap_kesbangpol;
REVOKE INSERT, UPDATE, DELETE ON view_kode_level_2 FROM lap_kesbangpol;

GRANT ALL PRIVILEGES ON view_daftar_pengadaan_l2_kesbangpol TO lap_kesbangpol;
REVOKE INSERT, UPDATE, DELETE ON view_daftar_pengadaan_l2_kesbangpol FROM lap_kesbangpol;

GRANT ALL PRIVILEGES ON tahun, skpd, sub_skpd, kode_barang TO lap_kesbangpol;
REVOKE INSERT, UPDATE, DELETE ON tahun, skpd, sub_skpd, kode_barang FROM lap_kesbangpol;

GRANT ALL PRIVILEGES ON asal_usul, tahun, golongan_barang TO lap_kesbangpol;
REVOKE INSERT, UPDATE, DELETE ON asal_usul, tahun, golongan_barang FROM lap_kesbangpol;
DROP VIEW IF EXISTS view_daftar_pengadaan_l2_kominfo;

CREATE VIEW view_daftar_pengadaan_l2_kominfo AS

SELECT
*

FROM
view_daftar_pengadaan_l2_kabupaten

WHERE
1 = 1  AND
id_skpd = 43;

GRANT ALL PRIVILEGES ON view_kode_level_2 TO lap_kominfo;
REVOKE INSERT, UPDATE, DELETE ON view_kode_level_2 FROM lap_kominfo;

GRANT ALL PRIVILEGES ON view_daftar_pengadaan_l2_kominfo TO lap_kominfo;
REVOKE INSERT, UPDATE, DELETE ON view_daftar_pengadaan_l2_kominfo FROM lap_kominfo;

GRANT ALL PRIVILEGES ON tahun, skpd, sub_skpd, kode_barang TO lap_kominfo;
REVOKE INSERT, UPDATE, DELETE ON tahun, skpd, sub_skpd, kode_barang FROM lap_kominfo;

GRANT ALL PRIVILEGES ON asal_usul, tahun, golongan_barang TO lap_kominfo;
REVOKE INSERT, UPDATE, DELETE ON asal_usul, tahun, golongan_barang FROM lap_kominfo;
DROP VIEW IF EXISTS view_daftar_pengadaan_l2_korpri;

CREATE VIEW view_daftar_pengadaan_l2_korpri AS

SELECT
*

FROM
view_daftar_pengadaan_l2_kabupaten

WHERE
1 = 1  AND
id_skpd = 27;

GRANT ALL PRIVILEGES ON view_kode_level_2 TO lap_korpri;
REVOKE INSERT, UPDATE, DELETE ON view_kode_level_2 FROM lap_korpri;

GRANT ALL PRIVILEGES ON view_daftar_pengadaan_l2_korpri TO lap_korpri;
REVOKE INSERT, UPDATE, DELETE ON view_daftar_pengadaan_l2_korpri FROM lap_korpri;

GRANT ALL PRIVILEGES ON tahun, skpd, sub_skpd, kode_barang TO lap_korpri;
REVOKE INSERT, UPDATE, DELETE ON tahun, skpd, sub_skpd, kode_barang FROM lap_korpri;

GRANT ALL PRIVILEGES ON asal_usul, tahun, golongan_barang TO lap_korpri;
REVOKE INSERT, UPDATE, DELETE ON asal_usul, tahun, golongan_barang FROM lap_korpri;
DROP VIEW IF EXISTS view_daftar_pengadaan_l2_lampihong;

CREATE VIEW view_daftar_pengadaan_l2_lampihong AS

SELECT
*

FROM
view_daftar_pengadaan_l2_kabupaten

WHERE
1 = 1  AND
id_skpd = 31;

GRANT ALL PRIVILEGES ON view_kode_level_2 TO lap_lampihong;
REVOKE INSERT, UPDATE, DELETE ON view_kode_level_2 FROM lap_lampihong;

GRANT ALL PRIVILEGES ON view_daftar_pengadaan_l2_lampihong TO lap_lampihong;
REVOKE INSERT, UPDATE, DELETE ON view_daftar_pengadaan_l2_lampihong FROM lap_lampihong;

GRANT ALL PRIVILEGES ON tahun, skpd, sub_skpd, kode_barang TO lap_lampihong;
REVOKE INSERT, UPDATE, DELETE ON tahun, skpd, sub_skpd, kode_barang FROM lap_lampihong;

GRANT ALL PRIVILEGES ON asal_usul, tahun, golongan_barang TO lap_lampihong;
REVOKE INSERT, UPDATE, DELETE ON asal_usul, tahun, golongan_barang FROM lap_lampihong;
DROP VIEW IF EXISTS view_daftar_pengadaan_l2_paringin;

CREATE VIEW view_daftar_pengadaan_l2_paringin AS

SELECT
*

FROM
view_daftar_pengadaan_l2_kabupaten

WHERE
1 = 1  AND
id_skpd = 28;

GRANT ALL PRIVILEGES ON view_kode_level_2 TO lap_paringin;
REVOKE INSERT, UPDATE, DELETE ON view_kode_level_2 FROM lap_paringin;

GRANT ALL PRIVILEGES ON view_daftar_pengadaan_l2_paringin TO lap_paringin;
REVOKE INSERT, UPDATE, DELETE ON view_daftar_pengadaan_l2_paringin FROM lap_paringin;

GRANT ALL PRIVILEGES ON tahun, skpd, sub_skpd, kode_barang TO lap_paringin;
REVOKE INSERT, UPDATE, DELETE ON tahun, skpd, sub_skpd, kode_barang FROM lap_paringin;

GRANT ALL PRIVILEGES ON asal_usul, tahun, golongan_barang TO lap_paringin;
REVOKE INSERT, UPDATE, DELETE ON asal_usul, tahun, golongan_barang FROM lap_paringin;
DROP VIEW IF EXISTS view_daftar_pengadaan_l2_paringinkota;

CREATE VIEW view_daftar_pengadaan_l2_paringinkota AS

SELECT
*

FROM
view_daftar_pengadaan_l2_kabupaten

WHERE
1 = 1  AND
id_skpd = 29;

GRANT ALL PRIVILEGES ON view_kode_level_2 TO lap_paringinkota;
REVOKE INSERT, UPDATE, DELETE ON view_kode_level_2 FROM lap_paringinkota;

GRANT ALL PRIVILEGES ON view_daftar_pengadaan_l2_paringinkota TO lap_paringinkota;
REVOKE INSERT, UPDATE, DELETE ON view_daftar_pengadaan_l2_paringinkota FROM lap_paringinkota;

GRANT ALL PRIVILEGES ON tahun, skpd, sub_skpd, kode_barang TO lap_paringinkota;
REVOKE INSERT, UPDATE, DELETE ON tahun, skpd, sub_skpd, kode_barang FROM lap_paringinkota;

GRANT ALL PRIVILEGES ON asal_usul, tahun, golongan_barang TO lap_paringinkota;
REVOKE INSERT, UPDATE, DELETE ON asal_usul, tahun, golongan_barang FROM lap_paringinkota;
DROP VIEW IF EXISTS view_daftar_pengadaan_l2_paringinselatan;

CREATE VIEW view_daftar_pengadaan_l2_paringinselatan AS

SELECT
*

FROM
view_daftar_pengadaan_l2_kabupaten

WHERE
1 = 1  AND
id_skpd = 36;

GRANT ALL PRIVILEGES ON view_kode_level_2 TO lap_paringinselatan;
REVOKE INSERT, UPDATE, DELETE ON view_kode_level_2 FROM lap_paringinselatan;

GRANT ALL PRIVILEGES ON view_daftar_pengadaan_l2_paringinselatan TO lap_paringinselatan;
REVOKE INSERT, UPDATE, DELETE ON view_daftar_pengadaan_l2_paringinselatan FROM lap_paringinselatan;

GRANT ALL PRIVILEGES ON tahun, skpd, sub_skpd, kode_barang TO lap_paringinselatan;
REVOKE INSERT, UPDATE, DELETE ON tahun, skpd, sub_skpd, kode_barang FROM lap_paringinselatan;

GRANT ALL PRIVILEGES ON asal_usul, tahun, golongan_barang TO lap_paringinselatan;
REVOKE INSERT, UPDATE, DELETE ON asal_usul, tahun, golongan_barang FROM lap_paringinselatan;
DROP VIEW IF EXISTS view_daftar_pengadaan_l2_paringintimur;

CREATE VIEW view_daftar_pengadaan_l2_paringintimur AS

SELECT
*

FROM
view_daftar_pengadaan_l2_kabupaten

WHERE
1 = 1  AND
id_skpd = 30;

GRANT ALL PRIVILEGES ON view_kode_level_2 TO lap_paringintimur;
REVOKE INSERT, UPDATE, DELETE ON view_kode_level_2 FROM lap_paringintimur;

GRANT ALL PRIVILEGES ON view_daftar_pengadaan_l2_paringintimur TO lap_paringintimur;
REVOKE INSERT, UPDATE, DELETE ON view_daftar_pengadaan_l2_paringintimur FROM lap_paringintimur;

GRANT ALL PRIVILEGES ON tahun, skpd, sub_skpd, kode_barang TO lap_paringintimur;
REVOKE INSERT, UPDATE, DELETE ON tahun, skpd, sub_skpd, kode_barang FROM lap_paringintimur;

GRANT ALL PRIVILEGES ON asal_usul, tahun, golongan_barang TO lap_paringintimur;
REVOKE INSERT, UPDATE, DELETE ON asal_usul, tahun, golongan_barang FROM lap_paringintimur;
DROP VIEW IF EXISTS view_daftar_pengadaan_l2_pariwisata;

CREATE VIEW view_daftar_pengadaan_l2_pariwisata AS

SELECT
*

FROM
view_daftar_pengadaan_l2_kabupaten

WHERE
1 = 1  AND
id_skpd = 46;

GRANT ALL PRIVILEGES ON view_kode_level_2 TO lap_pariwisata;
REVOKE INSERT, UPDATE, DELETE ON view_kode_level_2 FROM lap_pariwisata;

GRANT ALL PRIVILEGES ON view_daftar_pengadaan_l2_pariwisata TO lap_pariwisata;
REVOKE INSERT, UPDATE, DELETE ON view_daftar_pengadaan_l2_pariwisata FROM lap_pariwisata;

GRANT ALL PRIVILEGES ON tahun, skpd, sub_skpd, kode_barang TO lap_pariwisata;
REVOKE INSERT, UPDATE, DELETE ON tahun, skpd, sub_skpd, kode_barang FROM lap_pariwisata;

GRANT ALL PRIVILEGES ON asal_usul, tahun, golongan_barang TO lap_pariwisata;
REVOKE INSERT, UPDATE, DELETE ON asal_usul, tahun, golongan_barang FROM lap_pariwisata;
DROP VIEW IF EXISTS view_daftar_pengadaan_l2_perdagangan;

CREATE VIEW view_daftar_pengadaan_l2_perdagangan AS

SELECT
*

FROM
view_daftar_pengadaan_l2_kabupaten

WHERE
1 = 1  AND
id_skpd = 47;

GRANT ALL PRIVILEGES ON view_kode_level_2 TO lap_perdagangan;
REVOKE INSERT, UPDATE, DELETE ON view_kode_level_2 FROM lap_perdagangan;

GRANT ALL PRIVILEGES ON view_daftar_pengadaan_l2_perdagangan TO lap_perdagangan;
REVOKE INSERT, UPDATE, DELETE ON view_daftar_pengadaan_l2_perdagangan FROM lap_perdagangan;

GRANT ALL PRIVILEGES ON tahun, skpd, sub_skpd, kode_barang TO lap_perdagangan;
REVOKE INSERT, UPDATE, DELETE ON tahun, skpd, sub_skpd, kode_barang FROM lap_perdagangan;

GRANT ALL PRIVILEGES ON asal_usul, tahun, golongan_barang TO lap_perdagangan;
REVOKE INSERT, UPDATE, DELETE ON asal_usul, tahun, golongan_barang FROM lap_perdagangan;
DROP VIEW IF EXISTS view_daftar_pengadaan_l2_perikanan;

CREATE VIEW view_daftar_pengadaan_l2_perikanan AS

SELECT
*

FROM
view_daftar_pengadaan_l2_kabupaten

WHERE
1 = 1  AND
id_skpd = 45;

GRANT ALL PRIVILEGES ON view_kode_level_2 TO lap_perikanan;
REVOKE INSERT, UPDATE, DELETE ON view_kode_level_2 FROM lap_perikanan;

GRANT ALL PRIVILEGES ON view_daftar_pengadaan_l2_perikanan TO lap_perikanan;
REVOKE INSERT, UPDATE, DELETE ON view_daftar_pengadaan_l2_perikanan FROM lap_perikanan;

GRANT ALL PRIVILEGES ON tahun, skpd, sub_skpd, kode_barang TO lap_perikanan;
REVOKE INSERT, UPDATE, DELETE ON tahun, skpd, sub_skpd, kode_barang FROM lap_perikanan;

GRANT ALL PRIVILEGES ON asal_usul, tahun, golongan_barang TO lap_perikanan;
REVOKE INSERT, UPDATE, DELETE ON asal_usul, tahun, golongan_barang FROM lap_perikanan;
DROP VIEW IF EXISTS view_daftar_pengadaan_l2_perpustakaan;

CREATE VIEW view_daftar_pengadaan_l2_perpustakaan AS

SELECT
*

FROM
view_daftar_pengadaan_l2_kabupaten

WHERE
1 = 1  AND
id_skpd = 8;

GRANT ALL PRIVILEGES ON view_kode_level_2 TO lap_perpustakaan;
REVOKE INSERT, UPDATE, DELETE ON view_kode_level_2 FROM lap_perpustakaan;

GRANT ALL PRIVILEGES ON view_daftar_pengadaan_l2_perpustakaan TO lap_perpustakaan;
REVOKE INSERT, UPDATE, DELETE ON view_daftar_pengadaan_l2_perpustakaan FROM lap_perpustakaan;

GRANT ALL PRIVILEGES ON tahun, skpd, sub_skpd, kode_barang TO lap_perpustakaan;
REVOKE INSERT, UPDATE, DELETE ON tahun, skpd, sub_skpd, kode_barang FROM lap_perpustakaan;

GRANT ALL PRIVILEGES ON asal_usul, tahun, golongan_barang TO lap_perpustakaan;
REVOKE INSERT, UPDATE, DELETE ON asal_usul, tahun, golongan_barang FROM lap_perpustakaan;
DROP VIEW IF EXISTS view_daftar_pengadaan_l2_pertanian;

CREATE VIEW view_daftar_pengadaan_l2_pertanian AS

SELECT
*

FROM
view_daftar_pengadaan_l2_kabupaten

WHERE
1 = 1  AND
id_skpd = 13;

GRANT ALL PRIVILEGES ON view_kode_level_2 TO lap_pertanian;
REVOKE INSERT, UPDATE, DELETE ON view_kode_level_2 FROM lap_pertanian;

GRANT ALL PRIVILEGES ON view_daftar_pengadaan_l2_pertanian TO lap_pertanian;
REVOKE INSERT, UPDATE, DELETE ON view_daftar_pengadaan_l2_pertanian FROM lap_pertanian;

GRANT ALL PRIVILEGES ON tahun, skpd, sub_skpd, kode_barang TO lap_pertanian;
REVOKE INSERT, UPDATE, DELETE ON tahun, skpd, sub_skpd, kode_barang FROM lap_pertanian;

GRANT ALL PRIVILEGES ON asal_usul, tahun, golongan_barang TO lap_pertanian;
REVOKE INSERT, UPDATE, DELETE ON asal_usul, tahun, golongan_barang FROM lap_pertanian;
DROP VIEW IF EXISTS view_daftar_pengadaan_l2_rsud;

CREATE VIEW view_daftar_pengadaan_l2_rsud AS

SELECT
*

FROM
view_daftar_pengadaan_l2_kabupaten

WHERE
1 = 1  AND
id_skpd = 6;

GRANT ALL PRIVILEGES ON view_kode_level_2 TO lap_rsud;
REVOKE INSERT, UPDATE, DELETE ON view_kode_level_2 FROM lap_rsud;

GRANT ALL PRIVILEGES ON view_daftar_pengadaan_l2_rsud TO lap_rsud;
REVOKE INSERT, UPDATE, DELETE ON view_daftar_pengadaan_l2_rsud FROM lap_rsud;

GRANT ALL PRIVILEGES ON tahun, skpd, sub_skpd, kode_barang TO lap_rsud;
REVOKE INSERT, UPDATE, DELETE ON tahun, skpd, sub_skpd, kode_barang FROM lap_rsud;

GRANT ALL PRIVILEGES ON asal_usul, tahun, golongan_barang TO lap_rsud;
REVOKE INSERT, UPDATE, DELETE ON asal_usul, tahun, golongan_barang FROM lap_rsud;
DROP VIEW IF EXISTS view_daftar_pengadaan_l2_satpolpp;

CREATE VIEW view_daftar_pengadaan_l2_satpolpp AS

SELECT
*

FROM
view_daftar_pengadaan_l2_kabupaten

WHERE
1 = 1  AND
id_skpd = 25;

GRANT ALL PRIVILEGES ON view_kode_level_2 TO lap_satpolpp;
REVOKE INSERT, UPDATE, DELETE ON view_kode_level_2 FROM lap_satpolpp;

GRANT ALL PRIVILEGES ON view_daftar_pengadaan_l2_satpolpp TO lap_satpolpp;
REVOKE INSERT, UPDATE, DELETE ON view_daftar_pengadaan_l2_satpolpp FROM lap_satpolpp;

GRANT ALL PRIVILEGES ON tahun, skpd, sub_skpd, kode_barang TO lap_satpolpp;
REVOKE INSERT, UPDATE, DELETE ON tahun, skpd, sub_skpd, kode_barang FROM lap_satpolpp;

GRANT ALL PRIVILEGES ON asal_usul, tahun, golongan_barang TO lap_satpolpp;
REVOKE INSERT, UPDATE, DELETE ON asal_usul, tahun, golongan_barang FROM lap_satpolpp;
DROP VIEW IF EXISTS view_daftar_pengadaan_l2_setda;

CREATE VIEW view_daftar_pengadaan_l2_setda AS

SELECT
*

FROM
view_daftar_pengadaan_l2_kabupaten

WHERE
1 = 1  AND
id_skpd = 2;

GRANT ALL PRIVILEGES ON view_kode_level_2 TO lap_setda;
REVOKE INSERT, UPDATE, DELETE ON view_kode_level_2 FROM lap_setda;

GRANT ALL PRIVILEGES ON view_daftar_pengadaan_l2_setda TO lap_setda;
REVOKE INSERT, UPDATE, DELETE ON view_daftar_pengadaan_l2_setda FROM lap_setda;

GRANT ALL PRIVILEGES ON tahun, skpd, sub_skpd, kode_barang TO lap_setda;
REVOKE INSERT, UPDATE, DELETE ON tahun, skpd, sub_skpd, kode_barang FROM lap_setda;

GRANT ALL PRIVILEGES ON asal_usul, tahun, golongan_barang TO lap_setda;
REVOKE INSERT, UPDATE, DELETE ON asal_usul, tahun, golongan_barang FROM lap_setda;
DROP VIEW IF EXISTS view_daftar_pengadaan_l2_setwan;

CREATE VIEW view_daftar_pengadaan_l2_setwan AS

SELECT
*

FROM
view_daftar_pengadaan_l2_kabupaten

WHERE
1 = 1  AND
id_skpd = 1;

GRANT ALL PRIVILEGES ON view_kode_level_2 TO lap_setwan;
REVOKE INSERT, UPDATE, DELETE ON view_kode_level_2 FROM lap_setwan;

GRANT ALL PRIVILEGES ON view_daftar_pengadaan_l2_setwan TO lap_setwan;
REVOKE INSERT, UPDATE, DELETE ON view_daftar_pengadaan_l2_setwan FROM lap_setwan;

GRANT ALL PRIVILEGES ON tahun, skpd, sub_skpd, kode_barang TO lap_setwan;
REVOKE INSERT, UPDATE, DELETE ON tahun, skpd, sub_skpd, kode_barang FROM lap_setwan;

GRANT ALL PRIVILEGES ON asal_usul, tahun, golongan_barang TO lap_setwan;
REVOKE INSERT, UPDATE, DELETE ON asal_usul, tahun, golongan_barang FROM lap_setwan;
DROP VIEW IF EXISTS view_daftar_pengadaan_l2_sosial;

CREATE VIEW view_daftar_pengadaan_l2_sosial AS

SELECT
*

FROM
view_daftar_pengadaan_l2_kabupaten

WHERE
1 = 1  AND
id_skpd = 9;

GRANT ALL PRIVILEGES ON view_kode_level_2 TO lap_sosial;
REVOKE INSERT, UPDATE, DELETE ON view_kode_level_2 FROM lap_sosial;

GRANT ALL PRIVILEGES ON view_daftar_pengadaan_l2_sosial TO lap_sosial;
REVOKE INSERT, UPDATE, DELETE ON view_daftar_pengadaan_l2_sosial FROM lap_sosial;

GRANT ALL PRIVILEGES ON tahun, skpd, sub_skpd, kode_barang TO lap_sosial;
REVOKE INSERT, UPDATE, DELETE ON tahun, skpd, sub_skpd, kode_barang FROM lap_sosial;

GRANT ALL PRIVILEGES ON asal_usul, tahun, golongan_barang TO lap_sosial;
REVOKE INSERT, UPDATE, DELETE ON asal_usul, tahun, golongan_barang FROM lap_sosial;
DROP VIEW IF EXISTS view_daftar_pengadaan_l2_tebingtinggi;

CREATE VIEW view_daftar_pengadaan_l2_tebingtinggi AS

SELECT
*

FROM
view_daftar_pengadaan_l2_kabupaten

WHERE
1 = 1  AND
id_skpd = 38;

GRANT ALL PRIVILEGES ON view_kode_level_2 TO lap_tebingtinggi;
REVOKE INSERT, UPDATE, DELETE ON view_kode_level_2 FROM lap_tebingtinggi;

GRANT ALL PRIVILEGES ON view_daftar_pengadaan_l2_tebingtinggi TO lap_tebingtinggi;
REVOKE INSERT, UPDATE, DELETE ON view_daftar_pengadaan_l2_tebingtinggi FROM lap_tebingtinggi;

GRANT ALL PRIVILEGES ON tahun, skpd, sub_skpd, kode_barang TO lap_tebingtinggi;
REVOKE INSERT, UPDATE, DELETE ON tahun, skpd, sub_skpd, kode_barang FROM lap_tebingtinggi;

GRANT ALL PRIVILEGES ON asal_usul, tahun, golongan_barang TO lap_tebingtinggi;
REVOKE INSERT, UPDATE, DELETE ON asal_usul, tahun, golongan_barang FROM lap_tebingtinggi;
