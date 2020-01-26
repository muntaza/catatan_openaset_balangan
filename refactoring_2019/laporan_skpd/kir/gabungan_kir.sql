DROP VIEW IF EXISTS view_kir_awayan;

CREATE VIEW view_kir_awayan AS

SELECT
*

FROM
view_kir

WHERE
1 = 1  AND
id_skpd = 34;

GRANT ALL PRIVILEGES ON view_kir_awayan TO lap_awayan;
REVOKE INSERT, UPDATE, DELETE ON view_kir_awayan FROM lap_awayan;

GRANT ALL PRIVILEGES ON skpd, sub_skpd, kode_barang TO lap_awayan;
REVOKE INSERT, UPDATE, DELETE ON skpd, sub_skpd, kode_barang FROM lap_awayan;

GRANT ALL PRIVILEGES ON asal_usul, ruangan, provinsi, kabupaten, lokasi_bidang  TO lap_awayan;
REVOKE INSERT, UPDATE, DELETE ON asal_usul, ruangan, provinsi, kabupaten, lokasi_bidang FROM lap_awayan;
DROP VIEW IF EXISTS view_kir_bappeda;

CREATE VIEW view_kir_bappeda AS

SELECT
*

FROM
view_kir

WHERE
1 = 1  AND
id_skpd = 21;

GRANT ALL PRIVILEGES ON view_kir_bappeda TO lap_bappeda;
REVOKE INSERT, UPDATE, DELETE ON view_kir_bappeda FROM lap_bappeda;

GRANT ALL PRIVILEGES ON skpd, sub_skpd, kode_barang TO lap_bappeda;
REVOKE INSERT, UPDATE, DELETE ON skpd, sub_skpd, kode_barang FROM lap_bappeda;

GRANT ALL PRIVILEGES ON asal_usul, ruangan, provinsi, kabupaten, lokasi_bidang  TO lap_bappeda;
REVOKE INSERT, UPDATE, DELETE ON asal_usul, ruangan, provinsi, kabupaten, lokasi_bidang FROM lap_bappeda;
DROP VIEW IF EXISTS view_kir_batumandi;

CREATE VIEW view_kir_batumandi AS

SELECT
*

FROM
view_kir

WHERE
1 = 1  AND
id_skpd = 32;

GRANT ALL PRIVILEGES ON view_kir_batumandi TO lap_batumandi;
REVOKE INSERT, UPDATE, DELETE ON view_kir_batumandi FROM lap_batumandi;

GRANT ALL PRIVILEGES ON skpd, sub_skpd, kode_barang TO lap_batumandi;
REVOKE INSERT, UPDATE, DELETE ON skpd, sub_skpd, kode_barang FROM lap_batumandi;

GRANT ALL PRIVILEGES ON asal_usul, ruangan, provinsi, kabupaten, lokasi_bidang  TO lap_batumandi;
REVOKE INSERT, UPDATE, DELETE ON asal_usul, ruangan, provinsi, kabupaten, lokasi_bidang FROM lap_batumandi;
DROP VIEW IF EXISTS view_kir_batupiring;

CREATE VIEW view_kir_batupiring AS

SELECT
*

FROM
view_kir

WHERE
1 = 1  AND
id_skpd = 37;

GRANT ALL PRIVILEGES ON view_kir_batupiring TO lap_batupiring;
REVOKE INSERT, UPDATE, DELETE ON view_kir_batupiring FROM lap_batupiring;

GRANT ALL PRIVILEGES ON skpd, sub_skpd, kode_barang TO lap_batupiring;
REVOKE INSERT, UPDATE, DELETE ON skpd, sub_skpd, kode_barang FROM lap_batupiring;

GRANT ALL PRIVILEGES ON asal_usul, ruangan, provinsi, kabupaten, lokasi_bidang  TO lap_batupiring;
REVOKE INSERT, UPDATE, DELETE ON asal_usul, ruangan, provinsi, kabupaten, lokasi_bidang FROM lap_batupiring;
DROP VIEW IF EXISTS view_kir_bkd;

CREATE VIEW view_kir_bkd AS

SELECT
*

FROM
view_kir

WHERE
1 = 1  AND
id_skpd = 19;

GRANT ALL PRIVILEGES ON view_kir_bkd TO lap_bkd;
REVOKE INSERT, UPDATE, DELETE ON view_kir_bkd FROM lap_bkd;

GRANT ALL PRIVILEGES ON skpd, sub_skpd, kode_barang TO lap_bkd;
REVOKE INSERT, UPDATE, DELETE ON skpd, sub_skpd, kode_barang FROM lap_bkd;

GRANT ALL PRIVILEGES ON asal_usul, ruangan, provinsi, kabupaten, lokasi_bidang  TO lap_bkd;
REVOKE INSERT, UPDATE, DELETE ON asal_usul, ruangan, provinsi, kabupaten, lokasi_bidang FROM lap_bkd;
DROP VIEW IF EXISTS view_kir_bkppd;

CREATE VIEW view_kir_bkppd AS

SELECT
*

FROM
view_kir

WHERE
1 = 1  AND
id_skpd = 26;

GRANT ALL PRIVILEGES ON view_kir_bkppd TO lap_bkppd;
REVOKE INSERT, UPDATE, DELETE ON view_kir_bkppd FROM lap_bkppd;

GRANT ALL PRIVILEGES ON skpd, sub_skpd, kode_barang TO lap_bkppd;
REVOKE INSERT, UPDATE, DELETE ON skpd, sub_skpd, kode_barang FROM lap_bkppd;

GRANT ALL PRIVILEGES ON asal_usul, ruangan, provinsi, kabupaten, lokasi_bidang  TO lap_bkppd;
REVOKE INSERT, UPDATE, DELETE ON asal_usul, ruangan, provinsi, kabupaten, lokasi_bidang FROM lap_bkppd;
DROP VIEW IF EXISTS view_kir_bpbd;

CREATE VIEW view_kir_bpbd AS

SELECT
*

FROM
view_kir

WHERE
1 = 1  AND
id_skpd = 39;

GRANT ALL PRIVILEGES ON view_kir_bpbd TO lap_bpbd;
REVOKE INSERT, UPDATE, DELETE ON view_kir_bpbd FROM lap_bpbd;

GRANT ALL PRIVILEGES ON skpd, sub_skpd, kode_barang TO lap_bpbd;
REVOKE INSERT, UPDATE, DELETE ON skpd, sub_skpd, kode_barang FROM lap_bpbd;

GRANT ALL PRIVILEGES ON asal_usul, ruangan, provinsi, kabupaten, lokasi_bidang  TO lap_bpbd;
REVOKE INSERT, UPDATE, DELETE ON asal_usul, ruangan, provinsi, kabupaten, lokasi_bidang FROM lap_bpbd;
DROP VIEW IF EXISTS view_kir_bppd;

CREATE VIEW view_kir_bppd AS

SELECT
*

FROM
view_kir

WHERE
1 = 1  AND
id_skpd = 48;

GRANT ALL PRIVILEGES ON view_kir_bppd TO lap_bppd;
REVOKE INSERT, UPDATE, DELETE ON view_kir_bppd FROM lap_bppd;

GRANT ALL PRIVILEGES ON skpd, sub_skpd, kode_barang TO lap_bppd;
REVOKE INSERT, UPDATE, DELETE ON skpd, sub_skpd, kode_barang FROM lap_bppd;

GRANT ALL PRIVILEGES ON asal_usul, ruangan, provinsi, kabupaten, lokasi_bidang  TO lap_bppd;
REVOKE INSERT, UPDATE, DELETE ON asal_usul, ruangan, provinsi, kabupaten, lokasi_bidang FROM lap_bppd;
DROP VIEW IF EXISTS view_kir_dinkes;

CREATE VIEW view_kir_dinkes AS

SELECT
*

FROM
view_kir

WHERE
1 = 1  AND
id_skpd = 5;

GRANT ALL PRIVILEGES ON view_kir_dinkes TO lap_dinkes;
REVOKE INSERT, UPDATE, DELETE ON view_kir_dinkes FROM lap_dinkes;

GRANT ALL PRIVILEGES ON skpd, sub_skpd, kode_barang TO lap_dinkes;
REVOKE INSERT, UPDATE, DELETE ON skpd, sub_skpd, kode_barang FROM lap_dinkes;

GRANT ALL PRIVILEGES ON asal_usul, ruangan, provinsi, kabupaten, lokasi_bidang  TO lap_dinkes;
REVOKE INSERT, UPDATE, DELETE ON asal_usul, ruangan, provinsi, kabupaten, lokasi_bidang FROM lap_dinkes;
DROP VIEW IF EXISTS view_kir_disdik;

CREATE VIEW view_kir_disdik AS

SELECT
*

FROM
view_kir

WHERE
1 = 1  AND
id_skpd = 7;

GRANT ALL PRIVILEGES ON view_kir_disdik TO lap_disdik;
REVOKE INSERT, UPDATE, DELETE ON view_kir_disdik FROM lap_disdik;

GRANT ALL PRIVILEGES ON skpd, sub_skpd, kode_barang TO lap_disdik;
REVOKE INSERT, UPDATE, DELETE ON skpd, sub_skpd, kode_barang FROM lap_disdik;

GRANT ALL PRIVILEGES ON asal_usul, ruangan, provinsi, kabupaten, lokasi_bidang  TO lap_disdik;
REVOKE INSERT, UPDATE, DELETE ON asal_usul, ruangan, provinsi, kabupaten, lokasi_bidang FROM lap_disdik;
DROP VIEW IF EXISTS view_kir_dishub;

CREATE VIEW view_kir_dishub AS

SELECT
*

FROM
view_kir

WHERE
1 = 1  AND
id_skpd = 4;

GRANT ALL PRIVILEGES ON view_kir_dishub TO lap_dishub;
REVOKE INSERT, UPDATE, DELETE ON view_kir_dishub FROM lap_dishub;

GRANT ALL PRIVILEGES ON skpd, sub_skpd, kode_barang TO lap_dishub;
REVOKE INSERT, UPDATE, DELETE ON skpd, sub_skpd, kode_barang FROM lap_dishub;

GRANT ALL PRIVILEGES ON asal_usul, ruangan, provinsi, kabupaten, lokasi_bidang  TO lap_dishub;
REVOKE INSERT, UPDATE, DELETE ON asal_usul, ruangan, provinsi, kabupaten, lokasi_bidang FROM lap_dishub;
DROP VIEW IF EXISTS view_kir_disnakertrans;

CREATE VIEW view_kir_disnakertrans AS

SELECT
*

FROM
view_kir

WHERE
1 = 1  AND
id_skpd = 41;

GRANT ALL PRIVILEGES ON view_kir_disnakertrans TO lap_disnakertrans;
REVOKE INSERT, UPDATE, DELETE ON view_kir_disnakertrans FROM lap_disnakertrans;

GRANT ALL PRIVILEGES ON skpd, sub_skpd, kode_barang TO lap_disnakertrans;
REVOKE INSERT, UPDATE, DELETE ON skpd, sub_skpd, kode_barang FROM lap_disnakertrans;

GRANT ALL PRIVILEGES ON asal_usul, ruangan, provinsi, kabupaten, lokasi_bidang  TO lap_disnakertrans;
REVOKE INSERT, UPDATE, DELETE ON asal_usul, ruangan, provinsi, kabupaten, lokasi_bidang FROM lap_disnakertrans;
DROP VIEW IF EXISTS view_kir_distamben;

CREATE VIEW view_kir_distamben AS

SELECT
*

FROM
view_kir

WHERE
1 = 1  AND
id_skpd = 17;

GRANT ALL PRIVILEGES ON view_kir_distamben TO lap_distamben;
REVOKE INSERT, UPDATE, DELETE ON view_kir_distamben FROM lap_distamben;

GRANT ALL PRIVILEGES ON skpd, sub_skpd, kode_barang TO lap_distamben;
REVOKE INSERT, UPDATE, DELETE ON skpd, sub_skpd, kode_barang FROM lap_distamben;

GRANT ALL PRIVILEGES ON asal_usul, ruangan, provinsi, kabupaten, lokasi_bidang  TO lap_distamben;
REVOKE INSERT, UPDATE, DELETE ON asal_usul, ruangan, provinsi, kabupaten, lokasi_bidang FROM lap_distamben;
DROP VIEW IF EXISTS view_kir_dko;

CREATE VIEW view_kir_dko AS

SELECT
*

FROM
view_kir

WHERE
1 = 1  AND
id_skpd = 23;

GRANT ALL PRIVILEGES ON view_kir_dko TO lap_dko;
REVOKE INSERT, UPDATE, DELETE ON view_kir_dko FROM lap_dko;

GRANT ALL PRIVILEGES ON skpd, sub_skpd, kode_barang TO lap_dko;
REVOKE INSERT, UPDATE, DELETE ON skpd, sub_skpd, kode_barang FROM lap_dko;

GRANT ALL PRIVILEGES ON asal_usul, ruangan, provinsi, kabupaten, lokasi_bidang  TO lap_dko;
REVOKE INSERT, UPDATE, DELETE ON asal_usul, ruangan, provinsi, kabupaten, lokasi_bidang FROM lap_dko;
DROP VIEW IF EXISTS view_kir_dkp;

CREATE VIEW view_kir_dkp AS

SELECT
*

FROM
view_kir

WHERE
1 = 1  AND
id_skpd = 15;

GRANT ALL PRIVILEGES ON view_kir_dkp TO lap_dkp;
REVOKE INSERT, UPDATE, DELETE ON view_kir_dkp FROM lap_dkp;

GRANT ALL PRIVILEGES ON skpd, sub_skpd, kode_barang TO lap_dkp;
REVOKE INSERT, UPDATE, DELETE ON skpd, sub_skpd, kode_barang FROM lap_dkp;

GRANT ALL PRIVILEGES ON asal_usul, ruangan, provinsi, kabupaten, lokasi_bidang  TO lap_dkp;
REVOKE INSERT, UPDATE, DELETE ON asal_usul, ruangan, provinsi, kabupaten, lokasi_bidang FROM lap_dkp;
DROP VIEW IF EXISTS view_kir_dkukmp;

CREATE VIEW view_kir_dkukmp AS

SELECT
*

FROM
view_kir

WHERE
1 = 1  AND
id_skpd = 16;

GRANT ALL PRIVILEGES ON view_kir_dkukmp TO lap_dkukmp;
REVOKE INSERT, UPDATE, DELETE ON view_kir_dkukmp FROM lap_dkukmp;

GRANT ALL PRIVILEGES ON skpd, sub_skpd, kode_barang TO lap_dkukmp;
REVOKE INSERT, UPDATE, DELETE ON skpd, sub_skpd, kode_barang FROM lap_dkukmp;

GRANT ALL PRIVILEGES ON asal_usul, ruangan, provinsi, kabupaten, lokasi_bidang  TO lap_dkukmp;
REVOKE INSERT, UPDATE, DELETE ON asal_usul, ruangan, provinsi, kabupaten, lokasi_bidang FROM lap_dkukmp;
DROP VIEW IF EXISTS view_kir_dlh;

CREATE VIEW view_kir_dlh AS

SELECT
*

FROM
view_kir

WHERE
1 = 1  AND
id_skpd = 22;

GRANT ALL PRIVILEGES ON view_kir_dlh TO lap_dlh;
REVOKE INSERT, UPDATE, DELETE ON view_kir_dlh FROM lap_dlh;

GRANT ALL PRIVILEGES ON skpd, sub_skpd, kode_barang TO lap_dlh;
REVOKE INSERT, UPDATE, DELETE ON skpd, sub_skpd, kode_barang FROM lap_dlh;

GRANT ALL PRIVILEGES ON asal_usul, ruangan, provinsi, kabupaten, lokasi_bidang  TO lap_dlh;
REVOKE INSERT, UPDATE, DELETE ON asal_usul, ruangan, provinsi, kabupaten, lokasi_bidang FROM lap_dlh;
DROP VIEW IF EXISTS view_kir_dpkp;

CREATE VIEW view_kir_dpkp AS

SELECT
*

FROM
view_kir

WHERE
1 = 1  AND
id_skpd = 40;

GRANT ALL PRIVILEGES ON view_kir_dpkp TO lap_dpkp;
REVOKE INSERT, UPDATE, DELETE ON view_kir_dpkp FROM lap_dpkp;

GRANT ALL PRIVILEGES ON skpd, sub_skpd, kode_barang TO lap_dpkp;
REVOKE INSERT, UPDATE, DELETE ON skpd, sub_skpd, kode_barang FROM lap_dpkp;

GRANT ALL PRIVILEGES ON asal_usul, ruangan, provinsi, kabupaten, lokasi_bidang  TO lap_dpkp;
REVOKE INSERT, UPDATE, DELETE ON asal_usul, ruangan, provinsi, kabupaten, lokasi_bidang FROM lap_dpkp;
DROP VIEW IF EXISTS view_kir_dpmd;

CREATE VIEW view_kir_dpmd AS

SELECT
*

FROM
view_kir

WHERE
1 = 1  AND
id_skpd = 10;

GRANT ALL PRIVILEGES ON view_kir_dpmd TO lap_dpmd;
REVOKE INSERT, UPDATE, DELETE ON view_kir_dpmd FROM lap_dpmd;

GRANT ALL PRIVILEGES ON skpd, sub_skpd, kode_barang TO lap_dpmd;
REVOKE INSERT, UPDATE, DELETE ON skpd, sub_skpd, kode_barang FROM lap_dpmd;

GRANT ALL PRIVILEGES ON asal_usul, ruangan, provinsi, kabupaten, lokasi_bidang  TO lap_dpmd;
REVOKE INSERT, UPDATE, DELETE ON asal_usul, ruangan, provinsi, kabupaten, lokasi_bidang FROM lap_dpmd;
DROP VIEW IF EXISTS view_kir_dpmptsp;

CREATE VIEW view_kir_dpmptsp AS

SELECT
*

FROM
view_kir

WHERE
1 = 1  AND
id_skpd = 18;

GRANT ALL PRIVILEGES ON view_kir_dpmptsp TO lap_dpmptsp;
REVOKE INSERT, UPDATE, DELETE ON view_kir_dpmptsp FROM lap_dpmptsp;

GRANT ALL PRIVILEGES ON skpd, sub_skpd, kode_barang TO lap_dpmptsp;
REVOKE INSERT, UPDATE, DELETE ON skpd, sub_skpd, kode_barang FROM lap_dpmptsp;

GRANT ALL PRIVILEGES ON asal_usul, ruangan, provinsi, kabupaten, lokasi_bidang  TO lap_dpmptsp;
REVOKE INSERT, UPDATE, DELETE ON asal_usul, ruangan, provinsi, kabupaten, lokasi_bidang FROM lap_dpmptsp;
DROP VIEW IF EXISTS view_kir_dppkb;

CREATE VIEW view_kir_dppkb AS

SELECT
*

FROM
view_kir

WHERE
1 = 1  AND
id_skpd = 42;

GRANT ALL PRIVILEGES ON view_kir_dppkb TO lap_dppkb;
REVOKE INSERT, UPDATE, DELETE ON view_kir_dppkb FROM lap_dppkb;

GRANT ALL PRIVILEGES ON skpd, sub_skpd, kode_barang TO lap_dppkb;
REVOKE INSERT, UPDATE, DELETE ON skpd, sub_skpd, kode_barang FROM lap_dppkb;

GRANT ALL PRIVILEGES ON asal_usul, ruangan, provinsi, kabupaten, lokasi_bidang  TO lap_dppkb;
REVOKE INSERT, UPDATE, DELETE ON asal_usul, ruangan, provinsi, kabupaten, lokasi_bidang FROM lap_dppkb;
DROP VIEW IF EXISTS view_kir_dpppa;

CREATE VIEW view_kir_dpppa AS

SELECT
*

FROM
view_kir

WHERE
1 = 1  AND
id_skpd = 11;

GRANT ALL PRIVILEGES ON view_kir_dpppa TO lap_dpppa;
REVOKE INSERT, UPDATE, DELETE ON view_kir_dpppa FROM lap_dpppa;

GRANT ALL PRIVILEGES ON skpd, sub_skpd, kode_barang TO lap_dpppa;
REVOKE INSERT, UPDATE, DELETE ON skpd, sub_skpd, kode_barang FROM lap_dpppa;

GRANT ALL PRIVILEGES ON asal_usul, ruangan, provinsi, kabupaten, lokasi_bidang  TO lap_dpppa;
REVOKE INSERT, UPDATE, DELETE ON asal_usul, ruangan, provinsi, kabupaten, lokasi_bidang FROM lap_dpppa;
DROP VIEW IF EXISTS view_kir_dpupr;

CREATE VIEW view_kir_dpupr AS

SELECT
*

FROM
view_kir

WHERE
1 = 1  AND
id_skpd = 3;

GRANT ALL PRIVILEGES ON view_kir_dpupr TO lap_dpupr;
REVOKE INSERT, UPDATE, DELETE ON view_kir_dpupr FROM lap_dpupr;

GRANT ALL PRIVILEGES ON skpd, sub_skpd, kode_barang TO lap_dpupr;
REVOKE INSERT, UPDATE, DELETE ON skpd, sub_skpd, kode_barang FROM lap_dpupr;

GRANT ALL PRIVILEGES ON asal_usul, ruangan, provinsi, kabupaten, lokasi_bidang  TO lap_dpupr;
REVOKE INSERT, UPDATE, DELETE ON asal_usul, ruangan, provinsi, kabupaten, lokasi_bidang FROM lap_dpupr;
DROP VIEW IF EXISTS view_kir_dukcatpil;

CREATE VIEW view_kir_dukcatpil AS

SELECT
*

FROM
view_kir

WHERE
1 = 1  AND
id_skpd = 12;

GRANT ALL PRIVILEGES ON view_kir_dukcatpil TO lap_dukcatpil;
REVOKE INSERT, UPDATE, DELETE ON view_kir_dukcatpil FROM lap_dukcatpil;

GRANT ALL PRIVILEGES ON skpd, sub_skpd, kode_barang TO lap_dukcatpil;
REVOKE INSERT, UPDATE, DELETE ON skpd, sub_skpd, kode_barang FROM lap_dukcatpil;

GRANT ALL PRIVILEGES ON asal_usul, ruangan, provinsi, kabupaten, lokasi_bidang  TO lap_dukcatpil;
REVOKE INSERT, UPDATE, DELETE ON asal_usul, ruangan, provinsi, kabupaten, lokasi_bidang FROM lap_dukcatpil;
DROP VIEW IF EXISTS view_kir_halong;

CREATE VIEW view_kir_halong AS

SELECT
*

FROM
view_kir

WHERE
1 = 1  AND
id_skpd = 35;

GRANT ALL PRIVILEGES ON view_kir_halong TO lap_halong;
REVOKE INSERT, UPDATE, DELETE ON view_kir_halong FROM lap_halong;

GRANT ALL PRIVILEGES ON skpd, sub_skpd, kode_barang TO lap_halong;
REVOKE INSERT, UPDATE, DELETE ON skpd, sub_skpd, kode_barang FROM lap_halong;

GRANT ALL PRIVILEGES ON asal_usul, ruangan, provinsi, kabupaten, lokasi_bidang  TO lap_halong;
REVOKE INSERT, UPDATE, DELETE ON asal_usul, ruangan, provinsi, kabupaten, lokasi_bidang FROM lap_halong;
DROP VIEW IF EXISTS view_kir_inspektorat;

CREATE VIEW view_kir_inspektorat AS

SELECT
*

FROM
view_kir

WHERE
1 = 1  AND
id_skpd = 20;

GRANT ALL PRIVILEGES ON view_kir_inspektorat TO lap_inspektorat;
REVOKE INSERT, UPDATE, DELETE ON view_kir_inspektorat FROM lap_inspektorat;

GRANT ALL PRIVILEGES ON skpd, sub_skpd, kode_barang TO lap_inspektorat;
REVOKE INSERT, UPDATE, DELETE ON skpd, sub_skpd, kode_barang FROM lap_inspektorat;

GRANT ALL PRIVILEGES ON asal_usul, ruangan, provinsi, kabupaten, lokasi_bidang  TO lap_inspektorat;
REVOKE INSERT, UPDATE, DELETE ON asal_usul, ruangan, provinsi, kabupaten, lokasi_bidang FROM lap_inspektorat;
DROP VIEW IF EXISTS view_kir_juai;

CREATE VIEW view_kir_juai AS

SELECT
*

FROM
view_kir

WHERE
1 = 1  AND
id_skpd = 33;

GRANT ALL PRIVILEGES ON view_kir_juai TO lap_juai;
REVOKE INSERT, UPDATE, DELETE ON view_kir_juai FROM lap_juai;

GRANT ALL PRIVILEGES ON skpd, sub_skpd, kode_barang TO lap_juai;
REVOKE INSERT, UPDATE, DELETE ON skpd, sub_skpd, kode_barang FROM lap_juai;

GRANT ALL PRIVILEGES ON asal_usul, ruangan, provinsi, kabupaten, lokasi_bidang  TO lap_juai;
REVOKE INSERT, UPDATE, DELETE ON asal_usul, ruangan, provinsi, kabupaten, lokasi_bidang FROM lap_juai;
DROP VIEW IF EXISTS view_kir_kearsipan;

CREATE VIEW view_kir_kearsipan AS

SELECT
*

FROM
view_kir

WHERE
1 = 1  AND
id_skpd = 44;

GRANT ALL PRIVILEGES ON view_kir_kearsipan TO lap_kearsipan;
REVOKE INSERT, UPDATE, DELETE ON view_kir_kearsipan FROM lap_kearsipan;

GRANT ALL PRIVILEGES ON skpd, sub_skpd, kode_barang TO lap_kearsipan;
REVOKE INSERT, UPDATE, DELETE ON skpd, sub_skpd, kode_barang FROM lap_kearsipan;

GRANT ALL PRIVILEGES ON asal_usul, ruangan, provinsi, kabupaten, lokasi_bidang  TO lap_kearsipan;
REVOKE INSERT, UPDATE, DELETE ON asal_usul, ruangan, provinsi, kabupaten, lokasi_bidang FROM lap_kearsipan;
DROP VIEW IF EXISTS view_kir_kehutanan;

CREATE VIEW view_kir_kehutanan AS

SELECT
*

FROM
view_kir

WHERE
1 = 1  AND
id_skpd = 14;

GRANT ALL PRIVILEGES ON view_kir_kehutanan TO lap_kehutanan;
REVOKE INSERT, UPDATE, DELETE ON view_kir_kehutanan FROM lap_kehutanan;

GRANT ALL PRIVILEGES ON skpd, sub_skpd, kode_barang TO lap_kehutanan;
REVOKE INSERT, UPDATE, DELETE ON skpd, sub_skpd, kode_barang FROM lap_kehutanan;

GRANT ALL PRIVILEGES ON asal_usul, ruangan, provinsi, kabupaten, lokasi_bidang  TO lap_kehutanan;
REVOKE INSERT, UPDATE, DELETE ON asal_usul, ruangan, provinsi, kabupaten, lokasi_bidang FROM lap_kehutanan;
DROP VIEW IF EXISTS view_kir_kesbangpol;

CREATE VIEW view_kir_kesbangpol AS

SELECT
*

FROM
view_kir

WHERE
1 = 1  AND
id_skpd = 24;

GRANT ALL PRIVILEGES ON view_kir_kesbangpol TO lap_kesbangpol;
REVOKE INSERT, UPDATE, DELETE ON view_kir_kesbangpol FROM lap_kesbangpol;

GRANT ALL PRIVILEGES ON skpd, sub_skpd, kode_barang TO lap_kesbangpol;
REVOKE INSERT, UPDATE, DELETE ON skpd, sub_skpd, kode_barang FROM lap_kesbangpol;

GRANT ALL PRIVILEGES ON asal_usul, ruangan, provinsi, kabupaten, lokasi_bidang  TO lap_kesbangpol;
REVOKE INSERT, UPDATE, DELETE ON asal_usul, ruangan, provinsi, kabupaten, lokasi_bidang FROM lap_kesbangpol;
DROP VIEW IF EXISTS view_kir_kominfo;

CREATE VIEW view_kir_kominfo AS

SELECT
*

FROM
view_kir

WHERE
1 = 1  AND
id_skpd = 43;

GRANT ALL PRIVILEGES ON view_kir_kominfo TO lap_kominfo;
REVOKE INSERT, UPDATE, DELETE ON view_kir_kominfo FROM lap_kominfo;

GRANT ALL PRIVILEGES ON skpd, sub_skpd, kode_barang TO lap_kominfo;
REVOKE INSERT, UPDATE, DELETE ON skpd, sub_skpd, kode_barang FROM lap_kominfo;

GRANT ALL PRIVILEGES ON asal_usul, ruangan, provinsi, kabupaten, lokasi_bidang  TO lap_kominfo;
REVOKE INSERT, UPDATE, DELETE ON asal_usul, ruangan, provinsi, kabupaten, lokasi_bidang FROM lap_kominfo;
DROP VIEW IF EXISTS view_kir_korpri;

CREATE VIEW view_kir_korpri AS

SELECT
*

FROM
view_kir

WHERE
1 = 1  AND
id_skpd = 27;

GRANT ALL PRIVILEGES ON view_kir_korpri TO lap_korpri;
REVOKE INSERT, UPDATE, DELETE ON view_kir_korpri FROM lap_korpri;

GRANT ALL PRIVILEGES ON skpd, sub_skpd, kode_barang TO lap_korpri;
REVOKE INSERT, UPDATE, DELETE ON skpd, sub_skpd, kode_barang FROM lap_korpri;

GRANT ALL PRIVILEGES ON asal_usul, ruangan, provinsi, kabupaten, lokasi_bidang  TO lap_korpri;
REVOKE INSERT, UPDATE, DELETE ON asal_usul, ruangan, provinsi, kabupaten, lokasi_bidang FROM lap_korpri;
DROP VIEW IF EXISTS view_kir_lampihong;

CREATE VIEW view_kir_lampihong AS

SELECT
*

FROM
view_kir

WHERE
1 = 1  AND
id_skpd = 31;

GRANT ALL PRIVILEGES ON view_kir_lampihong TO lap_lampihong;
REVOKE INSERT, UPDATE, DELETE ON view_kir_lampihong FROM lap_lampihong;

GRANT ALL PRIVILEGES ON skpd, sub_skpd, kode_barang TO lap_lampihong;
REVOKE INSERT, UPDATE, DELETE ON skpd, sub_skpd, kode_barang FROM lap_lampihong;

GRANT ALL PRIVILEGES ON asal_usul, ruangan, provinsi, kabupaten, lokasi_bidang  TO lap_lampihong;
REVOKE INSERT, UPDATE, DELETE ON asal_usul, ruangan, provinsi, kabupaten, lokasi_bidang FROM lap_lampihong;
DROP VIEW IF EXISTS view_kir_paringin;

CREATE VIEW view_kir_paringin AS

SELECT
*

FROM
view_kir

WHERE
1 = 1  AND
id_skpd = 28;

GRANT ALL PRIVILEGES ON view_kir_paringin TO lap_paringin;
REVOKE INSERT, UPDATE, DELETE ON view_kir_paringin FROM lap_paringin;

GRANT ALL PRIVILEGES ON skpd, sub_skpd, kode_barang TO lap_paringin;
REVOKE INSERT, UPDATE, DELETE ON skpd, sub_skpd, kode_barang FROM lap_paringin;

GRANT ALL PRIVILEGES ON asal_usul, ruangan, provinsi, kabupaten, lokasi_bidang  TO lap_paringin;
REVOKE INSERT, UPDATE, DELETE ON asal_usul, ruangan, provinsi, kabupaten, lokasi_bidang FROM lap_paringin;
DROP VIEW IF EXISTS view_kir_paringinkota;

CREATE VIEW view_kir_paringinkota AS

SELECT
*

FROM
view_kir

WHERE
1 = 1  AND
id_skpd = 29;

GRANT ALL PRIVILEGES ON view_kir_paringinkota TO lap_paringinkota;
REVOKE INSERT, UPDATE, DELETE ON view_kir_paringinkota FROM lap_paringinkota;

GRANT ALL PRIVILEGES ON skpd, sub_skpd, kode_barang TO lap_paringinkota;
REVOKE INSERT, UPDATE, DELETE ON skpd, sub_skpd, kode_barang FROM lap_paringinkota;

GRANT ALL PRIVILEGES ON asal_usul, ruangan, provinsi, kabupaten, lokasi_bidang  TO lap_paringinkota;
REVOKE INSERT, UPDATE, DELETE ON asal_usul, ruangan, provinsi, kabupaten, lokasi_bidang FROM lap_paringinkota;
DROP VIEW IF EXISTS view_kir_paringinselatan;

CREATE VIEW view_kir_paringinselatan AS

SELECT
*

FROM
view_kir

WHERE
1 = 1  AND
id_skpd = 36;

GRANT ALL PRIVILEGES ON view_kir_paringinselatan TO lap_paringinselatan;
REVOKE INSERT, UPDATE, DELETE ON view_kir_paringinselatan FROM lap_paringinselatan;

GRANT ALL PRIVILEGES ON skpd, sub_skpd, kode_barang TO lap_paringinselatan;
REVOKE INSERT, UPDATE, DELETE ON skpd, sub_skpd, kode_barang FROM lap_paringinselatan;

GRANT ALL PRIVILEGES ON asal_usul, ruangan, provinsi, kabupaten, lokasi_bidang  TO lap_paringinselatan;
REVOKE INSERT, UPDATE, DELETE ON asal_usul, ruangan, provinsi, kabupaten, lokasi_bidang FROM lap_paringinselatan;
DROP VIEW IF EXISTS view_kir_paringintimur;

CREATE VIEW view_kir_paringintimur AS

SELECT
*

FROM
view_kir

WHERE
1 = 1  AND
id_skpd = 30;

GRANT ALL PRIVILEGES ON view_kir_paringintimur TO lap_paringintimur;
REVOKE INSERT, UPDATE, DELETE ON view_kir_paringintimur FROM lap_paringintimur;

GRANT ALL PRIVILEGES ON skpd, sub_skpd, kode_barang TO lap_paringintimur;
REVOKE INSERT, UPDATE, DELETE ON skpd, sub_skpd, kode_barang FROM lap_paringintimur;

GRANT ALL PRIVILEGES ON asal_usul, ruangan, provinsi, kabupaten, lokasi_bidang  TO lap_paringintimur;
REVOKE INSERT, UPDATE, DELETE ON asal_usul, ruangan, provinsi, kabupaten, lokasi_bidang FROM lap_paringintimur;
DROP VIEW IF EXISTS view_kir_pariwisata;

CREATE VIEW view_kir_pariwisata AS

SELECT
*

FROM
view_kir

WHERE
1 = 1  AND
id_skpd = 46;

GRANT ALL PRIVILEGES ON view_kir_pariwisata TO lap_pariwisata;
REVOKE INSERT, UPDATE, DELETE ON view_kir_pariwisata FROM lap_pariwisata;

GRANT ALL PRIVILEGES ON skpd, sub_skpd, kode_barang TO lap_pariwisata;
REVOKE INSERT, UPDATE, DELETE ON skpd, sub_skpd, kode_barang FROM lap_pariwisata;

GRANT ALL PRIVILEGES ON asal_usul, ruangan, provinsi, kabupaten, lokasi_bidang  TO lap_pariwisata;
REVOKE INSERT, UPDATE, DELETE ON asal_usul, ruangan, provinsi, kabupaten, lokasi_bidang FROM lap_pariwisata;
DROP VIEW IF EXISTS view_kir_perdagangan;

CREATE VIEW view_kir_perdagangan AS

SELECT
*

FROM
view_kir

WHERE
1 = 1  AND
id_skpd = 47;

GRANT ALL PRIVILEGES ON view_kir_perdagangan TO lap_perdagangan;
REVOKE INSERT, UPDATE, DELETE ON view_kir_perdagangan FROM lap_perdagangan;

GRANT ALL PRIVILEGES ON skpd, sub_skpd, kode_barang TO lap_perdagangan;
REVOKE INSERT, UPDATE, DELETE ON skpd, sub_skpd, kode_barang FROM lap_perdagangan;

GRANT ALL PRIVILEGES ON asal_usul, ruangan, provinsi, kabupaten, lokasi_bidang  TO lap_perdagangan;
REVOKE INSERT, UPDATE, DELETE ON asal_usul, ruangan, provinsi, kabupaten, lokasi_bidang FROM lap_perdagangan;
DROP VIEW IF EXISTS view_kir_perikanan;

CREATE VIEW view_kir_perikanan AS

SELECT
*

FROM
view_kir

WHERE
1 = 1  AND
id_skpd = 45;

GRANT ALL PRIVILEGES ON view_kir_perikanan TO lap_perikanan;
REVOKE INSERT, UPDATE, DELETE ON view_kir_perikanan FROM lap_perikanan;

GRANT ALL PRIVILEGES ON skpd, sub_skpd, kode_barang TO lap_perikanan;
REVOKE INSERT, UPDATE, DELETE ON skpd, sub_skpd, kode_barang FROM lap_perikanan;

GRANT ALL PRIVILEGES ON asal_usul, ruangan, provinsi, kabupaten, lokasi_bidang  TO lap_perikanan;
REVOKE INSERT, UPDATE, DELETE ON asal_usul, ruangan, provinsi, kabupaten, lokasi_bidang FROM lap_perikanan;
DROP VIEW IF EXISTS view_kir_perpustakaan;

CREATE VIEW view_kir_perpustakaan AS

SELECT
*

FROM
view_kir

WHERE
1 = 1  AND
id_skpd = 8;

GRANT ALL PRIVILEGES ON view_kir_perpustakaan TO lap_perpustakaan;
REVOKE INSERT, UPDATE, DELETE ON view_kir_perpustakaan FROM lap_perpustakaan;

GRANT ALL PRIVILEGES ON skpd, sub_skpd, kode_barang TO lap_perpustakaan;
REVOKE INSERT, UPDATE, DELETE ON skpd, sub_skpd, kode_barang FROM lap_perpustakaan;

GRANT ALL PRIVILEGES ON asal_usul, ruangan, provinsi, kabupaten, lokasi_bidang  TO lap_perpustakaan;
REVOKE INSERT, UPDATE, DELETE ON asal_usul, ruangan, provinsi, kabupaten, lokasi_bidang FROM lap_perpustakaan;
DROP VIEW IF EXISTS view_kir_pertanian;

CREATE VIEW view_kir_pertanian AS

SELECT
*

FROM
view_kir

WHERE
1 = 1  AND
id_skpd = 13;

GRANT ALL PRIVILEGES ON view_kir_pertanian TO lap_pertanian;
REVOKE INSERT, UPDATE, DELETE ON view_kir_pertanian FROM lap_pertanian;

GRANT ALL PRIVILEGES ON skpd, sub_skpd, kode_barang TO lap_pertanian;
REVOKE INSERT, UPDATE, DELETE ON skpd, sub_skpd, kode_barang FROM lap_pertanian;

GRANT ALL PRIVILEGES ON asal_usul, ruangan, provinsi, kabupaten, lokasi_bidang  TO lap_pertanian;
REVOKE INSERT, UPDATE, DELETE ON asal_usul, ruangan, provinsi, kabupaten, lokasi_bidang FROM lap_pertanian;
DROP VIEW IF EXISTS view_kir_rsud;

CREATE VIEW view_kir_rsud AS

SELECT
*

FROM
view_kir

WHERE
1 = 1  AND
id_skpd = 6;

GRANT ALL PRIVILEGES ON view_kir_rsud TO lap_rsud;
REVOKE INSERT, UPDATE, DELETE ON view_kir_rsud FROM lap_rsud;

GRANT ALL PRIVILEGES ON skpd, sub_skpd, kode_barang TO lap_rsud;
REVOKE INSERT, UPDATE, DELETE ON skpd, sub_skpd, kode_barang FROM lap_rsud;

GRANT ALL PRIVILEGES ON asal_usul, ruangan, provinsi, kabupaten, lokasi_bidang  TO lap_rsud;
REVOKE INSERT, UPDATE, DELETE ON asal_usul, ruangan, provinsi, kabupaten, lokasi_bidang FROM lap_rsud;
DROP VIEW IF EXISTS view_kir_satpolpp;

CREATE VIEW view_kir_satpolpp AS

SELECT
*

FROM
view_kir

WHERE
1 = 1  AND
id_skpd = 25;

GRANT ALL PRIVILEGES ON view_kir_satpolpp TO lap_satpolpp;
REVOKE INSERT, UPDATE, DELETE ON view_kir_satpolpp FROM lap_satpolpp;

GRANT ALL PRIVILEGES ON skpd, sub_skpd, kode_barang TO lap_satpolpp;
REVOKE INSERT, UPDATE, DELETE ON skpd, sub_skpd, kode_barang FROM lap_satpolpp;

GRANT ALL PRIVILEGES ON asal_usul, ruangan, provinsi, kabupaten, lokasi_bidang  TO lap_satpolpp;
REVOKE INSERT, UPDATE, DELETE ON asal_usul, ruangan, provinsi, kabupaten, lokasi_bidang FROM lap_satpolpp;
DROP VIEW IF EXISTS view_kir_setda;

CREATE VIEW view_kir_setda AS

SELECT
*

FROM
view_kir

WHERE
1 = 1  AND
id_skpd = 2;

GRANT ALL PRIVILEGES ON view_kir_setda TO lap_setda;
REVOKE INSERT, UPDATE, DELETE ON view_kir_setda FROM lap_setda;

GRANT ALL PRIVILEGES ON skpd, sub_skpd, kode_barang TO lap_setda;
REVOKE INSERT, UPDATE, DELETE ON skpd, sub_skpd, kode_barang FROM lap_setda;

GRANT ALL PRIVILEGES ON asal_usul, ruangan, provinsi, kabupaten, lokasi_bidang  TO lap_setda;
REVOKE INSERT, UPDATE, DELETE ON asal_usul, ruangan, provinsi, kabupaten, lokasi_bidang FROM lap_setda;
DROP VIEW IF EXISTS view_kir_setwan;

CREATE VIEW view_kir_setwan AS

SELECT
*

FROM
view_kir

WHERE
1 = 1  AND
id_skpd = 1;

GRANT ALL PRIVILEGES ON view_kir_setwan TO lap_setwan;
REVOKE INSERT, UPDATE, DELETE ON view_kir_setwan FROM lap_setwan;

GRANT ALL PRIVILEGES ON skpd, sub_skpd, kode_barang TO lap_setwan;
REVOKE INSERT, UPDATE, DELETE ON skpd, sub_skpd, kode_barang FROM lap_setwan;

GRANT ALL PRIVILEGES ON asal_usul, ruangan, provinsi, kabupaten, lokasi_bidang  TO lap_setwan;
REVOKE INSERT, UPDATE, DELETE ON asal_usul, ruangan, provinsi, kabupaten, lokasi_bidang FROM lap_setwan;
DROP VIEW IF EXISTS view_kir_sosial;

CREATE VIEW view_kir_sosial AS

SELECT
*

FROM
view_kir

WHERE
1 = 1  AND
id_skpd = 9;

GRANT ALL PRIVILEGES ON view_kir_sosial TO lap_sosial;
REVOKE INSERT, UPDATE, DELETE ON view_kir_sosial FROM lap_sosial;

GRANT ALL PRIVILEGES ON skpd, sub_skpd, kode_barang TO lap_sosial;
REVOKE INSERT, UPDATE, DELETE ON skpd, sub_skpd, kode_barang FROM lap_sosial;

GRANT ALL PRIVILEGES ON asal_usul, ruangan, provinsi, kabupaten, lokasi_bidang  TO lap_sosial;
REVOKE INSERT, UPDATE, DELETE ON asal_usul, ruangan, provinsi, kabupaten, lokasi_bidang FROM lap_sosial;
DROP VIEW IF EXISTS view_kir_tebingtinggi;

CREATE VIEW view_kir_tebingtinggi AS

SELECT
*

FROM
view_kir

WHERE
1 = 1  AND
id_skpd = 38;

GRANT ALL PRIVILEGES ON view_kir_tebingtinggi TO lap_tebingtinggi;
REVOKE INSERT, UPDATE, DELETE ON view_kir_tebingtinggi FROM lap_tebingtinggi;

GRANT ALL PRIVILEGES ON skpd, sub_skpd, kode_barang TO lap_tebingtinggi;
REVOKE INSERT, UPDATE, DELETE ON skpd, sub_skpd, kode_barang FROM lap_tebingtinggi;

GRANT ALL PRIVILEGES ON asal_usul, ruangan, provinsi, kabupaten, lokasi_bidang  TO lap_tebingtinggi;
REVOKE INSERT, UPDATE, DELETE ON asal_usul, ruangan, provinsi, kabupaten, lokasi_bidang FROM lap_tebingtinggi;
