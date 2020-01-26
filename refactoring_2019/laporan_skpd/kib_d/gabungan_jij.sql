DROP VIEW IF EXISTS view_jalan_irigasi_jaringan_awayan;

CREATE VIEW view_jalan_irigasi_jaringan_awayan AS

SELECT
*

FROM
view_jalan_irigasi_jaringan_kabupaten

WHERE
1 = 1  AND
id_skpd = 34;

GRANT ALL PRIVILEGES ON view_jalan_irigasi_jaringan_awayan TO lap_awayan;
REVOKE INSERT, UPDATE, DELETE ON view_jalan_irigasi_jaringan_awayan FROM lap_awayan;
DROP VIEW IF EXISTS view_jalan_irigasi_jaringan_bappeda;

CREATE VIEW view_jalan_irigasi_jaringan_bappeda AS

SELECT
*

FROM
view_jalan_irigasi_jaringan_kabupaten

WHERE
1 = 1  AND
id_skpd = 21;

GRANT ALL PRIVILEGES ON view_jalan_irigasi_jaringan_bappeda TO lap_bappeda;
REVOKE INSERT, UPDATE, DELETE ON view_jalan_irigasi_jaringan_bappeda FROM lap_bappeda;
DROP VIEW IF EXISTS view_jalan_irigasi_jaringan_batumandi;

CREATE VIEW view_jalan_irigasi_jaringan_batumandi AS

SELECT
*

FROM
view_jalan_irigasi_jaringan_kabupaten

WHERE
1 = 1  AND
id_skpd = 32;

GRANT ALL PRIVILEGES ON view_jalan_irigasi_jaringan_batumandi TO lap_batumandi;
REVOKE INSERT, UPDATE, DELETE ON view_jalan_irigasi_jaringan_batumandi FROM lap_batumandi;
DROP VIEW IF EXISTS view_jalan_irigasi_jaringan_batupiring;

CREATE VIEW view_jalan_irigasi_jaringan_batupiring AS

SELECT
*

FROM
view_jalan_irigasi_jaringan_kabupaten

WHERE
1 = 1  AND
id_skpd = 37;

GRANT ALL PRIVILEGES ON view_jalan_irigasi_jaringan_batupiring TO lap_batupiring;
REVOKE INSERT, UPDATE, DELETE ON view_jalan_irigasi_jaringan_batupiring FROM lap_batupiring;
DROP VIEW IF EXISTS view_jalan_irigasi_jaringan_bkd;

CREATE VIEW view_jalan_irigasi_jaringan_bkd AS

SELECT
*

FROM
view_jalan_irigasi_jaringan_kabupaten

WHERE
1 = 1  AND
id_skpd = 19;

GRANT ALL PRIVILEGES ON view_jalan_irigasi_jaringan_bkd TO lap_bkd;
REVOKE INSERT, UPDATE, DELETE ON view_jalan_irigasi_jaringan_bkd FROM lap_bkd;
DROP VIEW IF EXISTS view_jalan_irigasi_jaringan_bkppd;

CREATE VIEW view_jalan_irigasi_jaringan_bkppd AS

SELECT
*

FROM
view_jalan_irigasi_jaringan_kabupaten

WHERE
1 = 1  AND
id_skpd = 26;

GRANT ALL PRIVILEGES ON view_jalan_irigasi_jaringan_bkppd TO lap_bkppd;
REVOKE INSERT, UPDATE, DELETE ON view_jalan_irigasi_jaringan_bkppd FROM lap_bkppd;
DROP VIEW IF EXISTS view_jalan_irigasi_jaringan_bpbd;

CREATE VIEW view_jalan_irigasi_jaringan_bpbd AS

SELECT
*

FROM
view_jalan_irigasi_jaringan_kabupaten

WHERE
1 = 1  AND
id_skpd = 39;

GRANT ALL PRIVILEGES ON view_jalan_irigasi_jaringan_bpbd TO lap_bpbd;
REVOKE INSERT, UPDATE, DELETE ON view_jalan_irigasi_jaringan_bpbd FROM lap_bpbd;
DROP VIEW IF EXISTS view_jalan_irigasi_jaringan_bppd;

CREATE VIEW view_jalan_irigasi_jaringan_bppd AS

SELECT
*

FROM
view_jalan_irigasi_jaringan_kabupaten

WHERE
1 = 1  AND
id_skpd = 48;

GRANT ALL PRIVILEGES ON view_jalan_irigasi_jaringan_bppd TO lap_bppd;
REVOKE INSERT, UPDATE, DELETE ON view_jalan_irigasi_jaringan_bppd FROM lap_bppd;
DROP VIEW IF EXISTS view_jalan_irigasi_jaringan_dinkes;

CREATE VIEW view_jalan_irigasi_jaringan_dinkes AS

SELECT
*

FROM
view_jalan_irigasi_jaringan_kabupaten

WHERE
1 = 1  AND
id_skpd = 5;

GRANT ALL PRIVILEGES ON view_jalan_irigasi_jaringan_dinkes TO lap_dinkes;
REVOKE INSERT, UPDATE, DELETE ON view_jalan_irigasi_jaringan_dinkes FROM lap_dinkes;
DROP VIEW IF EXISTS view_jalan_irigasi_jaringan_disdik;

CREATE VIEW view_jalan_irigasi_jaringan_disdik AS

SELECT
*

FROM
view_jalan_irigasi_jaringan_kabupaten

WHERE
1 = 1  AND
id_skpd = 7;

GRANT ALL PRIVILEGES ON view_jalan_irigasi_jaringan_disdik TO lap_disdik;
REVOKE INSERT, UPDATE, DELETE ON view_jalan_irigasi_jaringan_disdik FROM lap_disdik;
DROP VIEW IF EXISTS view_jalan_irigasi_jaringan_dishub;

CREATE VIEW view_jalan_irigasi_jaringan_dishub AS

SELECT
*

FROM
view_jalan_irigasi_jaringan_kabupaten

WHERE
1 = 1  AND
id_skpd = 4;

GRANT ALL PRIVILEGES ON view_jalan_irigasi_jaringan_dishub TO lap_dishub;
REVOKE INSERT, UPDATE, DELETE ON view_jalan_irigasi_jaringan_dishub FROM lap_dishub;
DROP VIEW IF EXISTS view_jalan_irigasi_jaringan_disnakertrans;

CREATE VIEW view_jalan_irigasi_jaringan_disnakertrans AS

SELECT
*

FROM
view_jalan_irigasi_jaringan_kabupaten

WHERE
1 = 1  AND
id_skpd = 41;

GRANT ALL PRIVILEGES ON view_jalan_irigasi_jaringan_disnakertrans TO lap_disnakertrans;
REVOKE INSERT, UPDATE, DELETE ON view_jalan_irigasi_jaringan_disnakertrans FROM lap_disnakertrans;
DROP VIEW IF EXISTS view_jalan_irigasi_jaringan_distamben;

CREATE VIEW view_jalan_irigasi_jaringan_distamben AS

SELECT
*

FROM
view_jalan_irigasi_jaringan_kabupaten

WHERE
1 = 1  AND
id_skpd = 17;

GRANT ALL PRIVILEGES ON view_jalan_irigasi_jaringan_distamben TO lap_distamben;
REVOKE INSERT, UPDATE, DELETE ON view_jalan_irigasi_jaringan_distamben FROM lap_distamben;
DROP VIEW IF EXISTS view_jalan_irigasi_jaringan_dko;

CREATE VIEW view_jalan_irigasi_jaringan_dko AS

SELECT
*

FROM
view_jalan_irigasi_jaringan_kabupaten

WHERE
1 = 1  AND
id_skpd = 23;

GRANT ALL PRIVILEGES ON view_jalan_irigasi_jaringan_dko TO lap_dko;
REVOKE INSERT, UPDATE, DELETE ON view_jalan_irigasi_jaringan_dko FROM lap_dko;
DROP VIEW IF EXISTS view_jalan_irigasi_jaringan_dkp;

CREATE VIEW view_jalan_irigasi_jaringan_dkp AS

SELECT
*

FROM
view_jalan_irigasi_jaringan_kabupaten

WHERE
1 = 1  AND
id_skpd = 15;

GRANT ALL PRIVILEGES ON view_jalan_irigasi_jaringan_dkp TO lap_dkp;
REVOKE INSERT, UPDATE, DELETE ON view_jalan_irigasi_jaringan_dkp FROM lap_dkp;
DROP VIEW IF EXISTS view_jalan_irigasi_jaringan_dkukmp;

CREATE VIEW view_jalan_irigasi_jaringan_dkukmp AS

SELECT
*

FROM
view_jalan_irigasi_jaringan_kabupaten

WHERE
1 = 1  AND
id_skpd = 16;

GRANT ALL PRIVILEGES ON view_jalan_irigasi_jaringan_dkukmp TO lap_dkukmp;
REVOKE INSERT, UPDATE, DELETE ON view_jalan_irigasi_jaringan_dkukmp FROM lap_dkukmp;
DROP VIEW IF EXISTS view_jalan_irigasi_jaringan_dlh;

CREATE VIEW view_jalan_irigasi_jaringan_dlh AS

SELECT
*

FROM
view_jalan_irigasi_jaringan_kabupaten

WHERE
1 = 1  AND
id_skpd = 22;

GRANT ALL PRIVILEGES ON view_jalan_irigasi_jaringan_dlh TO lap_dlh;
REVOKE INSERT, UPDATE, DELETE ON view_jalan_irigasi_jaringan_dlh FROM lap_dlh;
DROP VIEW IF EXISTS view_jalan_irigasi_jaringan_dpkp;

CREATE VIEW view_jalan_irigasi_jaringan_dpkp AS

SELECT
*

FROM
view_jalan_irigasi_jaringan_kabupaten

WHERE
1 = 1  AND
id_skpd = 40;

GRANT ALL PRIVILEGES ON view_jalan_irigasi_jaringan_dpkp TO lap_dpkp;
REVOKE INSERT, UPDATE, DELETE ON view_jalan_irigasi_jaringan_dpkp FROM lap_dpkp;
DROP VIEW IF EXISTS view_jalan_irigasi_jaringan_dpmd;

CREATE VIEW view_jalan_irigasi_jaringan_dpmd AS

SELECT
*

FROM
view_jalan_irigasi_jaringan_kabupaten

WHERE
1 = 1  AND
id_skpd = 10;

GRANT ALL PRIVILEGES ON view_jalan_irigasi_jaringan_dpmd TO lap_dpmd;
REVOKE INSERT, UPDATE, DELETE ON view_jalan_irigasi_jaringan_dpmd FROM lap_dpmd;
DROP VIEW IF EXISTS view_jalan_irigasi_jaringan_dpmptsp;

CREATE VIEW view_jalan_irigasi_jaringan_dpmptsp AS

SELECT
*

FROM
view_jalan_irigasi_jaringan_kabupaten

WHERE
1 = 1  AND
id_skpd = 18;

GRANT ALL PRIVILEGES ON view_jalan_irigasi_jaringan_dpmptsp TO lap_dpmptsp;
REVOKE INSERT, UPDATE, DELETE ON view_jalan_irigasi_jaringan_dpmptsp FROM lap_dpmptsp;
DROP VIEW IF EXISTS view_jalan_irigasi_jaringan_dppkb;

CREATE VIEW view_jalan_irigasi_jaringan_dppkb AS

SELECT
*

FROM
view_jalan_irigasi_jaringan_kabupaten

WHERE
1 = 1  AND
id_skpd = 42;

GRANT ALL PRIVILEGES ON view_jalan_irigasi_jaringan_dppkb TO lap_dppkb;
REVOKE INSERT, UPDATE, DELETE ON view_jalan_irigasi_jaringan_dppkb FROM lap_dppkb;
DROP VIEW IF EXISTS view_jalan_irigasi_jaringan_dpppa;

CREATE VIEW view_jalan_irigasi_jaringan_dpppa AS

SELECT
*

FROM
view_jalan_irigasi_jaringan_kabupaten

WHERE
1 = 1  AND
id_skpd = 11;

GRANT ALL PRIVILEGES ON view_jalan_irigasi_jaringan_dpppa TO lap_dpppa;
REVOKE INSERT, UPDATE, DELETE ON view_jalan_irigasi_jaringan_dpppa FROM lap_dpppa;
DROP VIEW IF EXISTS view_jalan_irigasi_jaringan_dpupr;

CREATE VIEW view_jalan_irigasi_jaringan_dpupr AS

SELECT
*

FROM
view_jalan_irigasi_jaringan_kabupaten

WHERE
1 = 1  AND
id_skpd = 3;

GRANT ALL PRIVILEGES ON view_jalan_irigasi_jaringan_dpupr TO lap_dpupr;
REVOKE INSERT, UPDATE, DELETE ON view_jalan_irigasi_jaringan_dpupr FROM lap_dpupr;
DROP VIEW IF EXISTS view_jalan_irigasi_jaringan_dukcatpil;

CREATE VIEW view_jalan_irigasi_jaringan_dukcatpil AS

SELECT
*

FROM
view_jalan_irigasi_jaringan_kabupaten

WHERE
1 = 1  AND
id_skpd = 12;

GRANT ALL PRIVILEGES ON view_jalan_irigasi_jaringan_dukcatpil TO lap_dukcatpil;
REVOKE INSERT, UPDATE, DELETE ON view_jalan_irigasi_jaringan_dukcatpil FROM lap_dukcatpil;
DROP VIEW IF EXISTS view_jalan_irigasi_jaringan_halong;

CREATE VIEW view_jalan_irigasi_jaringan_halong AS

SELECT
*

FROM
view_jalan_irigasi_jaringan_kabupaten

WHERE
1 = 1  AND
id_skpd = 35;

GRANT ALL PRIVILEGES ON view_jalan_irigasi_jaringan_halong TO lap_halong;
REVOKE INSERT, UPDATE, DELETE ON view_jalan_irigasi_jaringan_halong FROM lap_halong;
DROP VIEW IF EXISTS view_jalan_irigasi_jaringan_inspektorat;

CREATE VIEW view_jalan_irigasi_jaringan_inspektorat AS

SELECT
*

FROM
view_jalan_irigasi_jaringan_kabupaten

WHERE
1 = 1  AND
id_skpd = 20;

GRANT ALL PRIVILEGES ON view_jalan_irigasi_jaringan_inspektorat TO lap_inspektorat;
REVOKE INSERT, UPDATE, DELETE ON view_jalan_irigasi_jaringan_inspektorat FROM lap_inspektorat;
DROP VIEW IF EXISTS view_jalan_irigasi_jaringan_juai;

CREATE VIEW view_jalan_irigasi_jaringan_juai AS

SELECT
*

FROM
view_jalan_irigasi_jaringan_kabupaten

WHERE
1 = 1  AND
id_skpd = 33;

GRANT ALL PRIVILEGES ON view_jalan_irigasi_jaringan_juai TO lap_juai;
REVOKE INSERT, UPDATE, DELETE ON view_jalan_irigasi_jaringan_juai FROM lap_juai;
DROP VIEW IF EXISTS view_jalan_irigasi_jaringan_kearsipan;

CREATE VIEW view_jalan_irigasi_jaringan_kearsipan AS

SELECT
*

FROM
view_jalan_irigasi_jaringan_kabupaten

WHERE
1 = 1  AND
id_skpd = 44;

GRANT ALL PRIVILEGES ON view_jalan_irigasi_jaringan_kearsipan TO lap_kearsipan;
REVOKE INSERT, UPDATE, DELETE ON view_jalan_irigasi_jaringan_kearsipan FROM lap_kearsipan;
DROP VIEW IF EXISTS view_jalan_irigasi_jaringan_kehutanan;

CREATE VIEW view_jalan_irigasi_jaringan_kehutanan AS

SELECT
*

FROM
view_jalan_irigasi_jaringan_kabupaten

WHERE
1 = 1  AND
id_skpd = 14;

GRANT ALL PRIVILEGES ON view_jalan_irigasi_jaringan_kehutanan TO lap_kehutanan;
REVOKE INSERT, UPDATE, DELETE ON view_jalan_irigasi_jaringan_kehutanan FROM lap_kehutanan;
DROP VIEW IF EXISTS view_jalan_irigasi_jaringan_kesbangpol;

CREATE VIEW view_jalan_irigasi_jaringan_kesbangpol AS

SELECT
*

FROM
view_jalan_irigasi_jaringan_kabupaten

WHERE
1 = 1  AND
id_skpd = 24;

GRANT ALL PRIVILEGES ON view_jalan_irigasi_jaringan_kesbangpol TO lap_kesbangpol;
REVOKE INSERT, UPDATE, DELETE ON view_jalan_irigasi_jaringan_kesbangpol FROM lap_kesbangpol;
DROP VIEW IF EXISTS view_jalan_irigasi_jaringan_kominfo;

CREATE VIEW view_jalan_irigasi_jaringan_kominfo AS

SELECT
*

FROM
view_jalan_irigasi_jaringan_kabupaten

WHERE
1 = 1  AND
id_skpd = 43;

GRANT ALL PRIVILEGES ON view_jalan_irigasi_jaringan_kominfo TO lap_kominfo;
REVOKE INSERT, UPDATE, DELETE ON view_jalan_irigasi_jaringan_kominfo FROM lap_kominfo;
DROP VIEW IF EXISTS view_jalan_irigasi_jaringan_korpri;

CREATE VIEW view_jalan_irigasi_jaringan_korpri AS

SELECT
*

FROM
view_jalan_irigasi_jaringan_kabupaten

WHERE
1 = 1  AND
id_skpd = 27;

GRANT ALL PRIVILEGES ON view_jalan_irigasi_jaringan_korpri TO lap_korpri;
REVOKE INSERT, UPDATE, DELETE ON view_jalan_irigasi_jaringan_korpri FROM lap_korpri;
DROP VIEW IF EXISTS view_jalan_irigasi_jaringan_lampihong;

CREATE VIEW view_jalan_irigasi_jaringan_lampihong AS

SELECT
*

FROM
view_jalan_irigasi_jaringan_kabupaten

WHERE
1 = 1  AND
id_skpd = 31;

GRANT ALL PRIVILEGES ON view_jalan_irigasi_jaringan_lampihong TO lap_lampihong;
REVOKE INSERT, UPDATE, DELETE ON view_jalan_irigasi_jaringan_lampihong FROM lap_lampihong;
DROP VIEW IF EXISTS view_jalan_irigasi_jaringan_paringin;

CREATE VIEW view_jalan_irigasi_jaringan_paringin AS

SELECT
*

FROM
view_jalan_irigasi_jaringan_kabupaten

WHERE
1 = 1  AND
id_skpd = 28;

GRANT ALL PRIVILEGES ON view_jalan_irigasi_jaringan_paringin TO lap_paringin;
REVOKE INSERT, UPDATE, DELETE ON view_jalan_irigasi_jaringan_paringin FROM lap_paringin;
DROP VIEW IF EXISTS view_jalan_irigasi_jaringan_paringinkota;

CREATE VIEW view_jalan_irigasi_jaringan_paringinkota AS

SELECT
*

FROM
view_jalan_irigasi_jaringan_kabupaten

WHERE
1 = 1  AND
id_skpd = 29;

GRANT ALL PRIVILEGES ON view_jalan_irigasi_jaringan_paringinkota TO lap_paringinkota;
REVOKE INSERT, UPDATE, DELETE ON view_jalan_irigasi_jaringan_paringinkota FROM lap_paringinkota;
DROP VIEW IF EXISTS view_jalan_irigasi_jaringan_paringinselatan;

CREATE VIEW view_jalan_irigasi_jaringan_paringinselatan AS

SELECT
*

FROM
view_jalan_irigasi_jaringan_kabupaten

WHERE
1 = 1  AND
id_skpd = 36;

GRANT ALL PRIVILEGES ON view_jalan_irigasi_jaringan_paringinselatan TO lap_paringinselatan;
REVOKE INSERT, UPDATE, DELETE ON view_jalan_irigasi_jaringan_paringinselatan FROM lap_paringinselatan;
DROP VIEW IF EXISTS view_jalan_irigasi_jaringan_paringintimur;

CREATE VIEW view_jalan_irigasi_jaringan_paringintimur AS

SELECT
*

FROM
view_jalan_irigasi_jaringan_kabupaten

WHERE
1 = 1  AND
id_skpd = 30;

GRANT ALL PRIVILEGES ON view_jalan_irigasi_jaringan_paringintimur TO lap_paringintimur;
REVOKE INSERT, UPDATE, DELETE ON view_jalan_irigasi_jaringan_paringintimur FROM lap_paringintimur;
DROP VIEW IF EXISTS view_jalan_irigasi_jaringan_pariwisata;

CREATE VIEW view_jalan_irigasi_jaringan_pariwisata AS

SELECT
*

FROM
view_jalan_irigasi_jaringan_kabupaten

WHERE
1 = 1  AND
id_skpd = 46;

GRANT ALL PRIVILEGES ON view_jalan_irigasi_jaringan_pariwisata TO lap_pariwisata;
REVOKE INSERT, UPDATE, DELETE ON view_jalan_irigasi_jaringan_pariwisata FROM lap_pariwisata;
DROP VIEW IF EXISTS view_jalan_irigasi_jaringan_perdagangan;

CREATE VIEW view_jalan_irigasi_jaringan_perdagangan AS

SELECT
*

FROM
view_jalan_irigasi_jaringan_kabupaten

WHERE
1 = 1  AND
id_skpd = 47;

GRANT ALL PRIVILEGES ON view_jalan_irigasi_jaringan_perdagangan TO lap_perdagangan;
REVOKE INSERT, UPDATE, DELETE ON view_jalan_irigasi_jaringan_perdagangan FROM lap_perdagangan;
DROP VIEW IF EXISTS view_jalan_irigasi_jaringan_perikanan;

CREATE VIEW view_jalan_irigasi_jaringan_perikanan AS

SELECT
*

FROM
view_jalan_irigasi_jaringan_kabupaten

WHERE
1 = 1  AND
id_skpd = 45;

GRANT ALL PRIVILEGES ON view_jalan_irigasi_jaringan_perikanan TO lap_perikanan;
REVOKE INSERT, UPDATE, DELETE ON view_jalan_irigasi_jaringan_perikanan FROM lap_perikanan;
DROP VIEW IF EXISTS view_jalan_irigasi_jaringan_perpustakaan;

CREATE VIEW view_jalan_irigasi_jaringan_perpustakaan AS

SELECT
*

FROM
view_jalan_irigasi_jaringan_kabupaten

WHERE
1 = 1  AND
id_skpd = 8;

GRANT ALL PRIVILEGES ON view_jalan_irigasi_jaringan_perpustakaan TO lap_perpustakaan;
REVOKE INSERT, UPDATE, DELETE ON view_jalan_irigasi_jaringan_perpustakaan FROM lap_perpustakaan;
DROP VIEW IF EXISTS view_jalan_irigasi_jaringan_pertanian;

CREATE VIEW view_jalan_irigasi_jaringan_pertanian AS

SELECT
*

FROM
view_jalan_irigasi_jaringan_kabupaten

WHERE
1 = 1  AND
id_skpd = 13;

GRANT ALL PRIVILEGES ON view_jalan_irigasi_jaringan_pertanian TO lap_pertanian;
REVOKE INSERT, UPDATE, DELETE ON view_jalan_irigasi_jaringan_pertanian FROM lap_pertanian;
DROP VIEW IF EXISTS view_jalan_irigasi_jaringan_rsud;

CREATE VIEW view_jalan_irigasi_jaringan_rsud AS

SELECT
*

FROM
view_jalan_irigasi_jaringan_kabupaten

WHERE
1 = 1  AND
id_skpd = 6;

GRANT ALL PRIVILEGES ON view_jalan_irigasi_jaringan_rsud TO lap_rsud;
REVOKE INSERT, UPDATE, DELETE ON view_jalan_irigasi_jaringan_rsud FROM lap_rsud;
DROP VIEW IF EXISTS view_jalan_irigasi_jaringan_satpolpp;

CREATE VIEW view_jalan_irigasi_jaringan_satpolpp AS

SELECT
*

FROM
view_jalan_irigasi_jaringan_kabupaten

WHERE
1 = 1  AND
id_skpd = 25;

GRANT ALL PRIVILEGES ON view_jalan_irigasi_jaringan_satpolpp TO lap_satpolpp;
REVOKE INSERT, UPDATE, DELETE ON view_jalan_irigasi_jaringan_satpolpp FROM lap_satpolpp;
DROP VIEW IF EXISTS view_jalan_irigasi_jaringan_setda;

CREATE VIEW view_jalan_irigasi_jaringan_setda AS

SELECT
*

FROM
view_jalan_irigasi_jaringan_kabupaten

WHERE
1 = 1  AND
id_skpd = 2;

GRANT ALL PRIVILEGES ON view_jalan_irigasi_jaringan_setda TO lap_setda;
REVOKE INSERT, UPDATE, DELETE ON view_jalan_irigasi_jaringan_setda FROM lap_setda;
DROP VIEW IF EXISTS view_jalan_irigasi_jaringan_setwan;

CREATE VIEW view_jalan_irigasi_jaringan_setwan AS

SELECT
*

FROM
view_jalan_irigasi_jaringan_kabupaten

WHERE
1 = 1  AND
id_skpd = 1;

GRANT ALL PRIVILEGES ON view_jalan_irigasi_jaringan_setwan TO lap_setwan;
REVOKE INSERT, UPDATE, DELETE ON view_jalan_irigasi_jaringan_setwan FROM lap_setwan;
DROP VIEW IF EXISTS view_jalan_irigasi_jaringan_sosial;

CREATE VIEW view_jalan_irigasi_jaringan_sosial AS

SELECT
*

FROM
view_jalan_irigasi_jaringan_kabupaten

WHERE
1 = 1  AND
id_skpd = 9;

GRANT ALL PRIVILEGES ON view_jalan_irigasi_jaringan_sosial TO lap_sosial;
REVOKE INSERT, UPDATE, DELETE ON view_jalan_irigasi_jaringan_sosial FROM lap_sosial;
DROP VIEW IF EXISTS view_jalan_irigasi_jaringan_tebingtinggi;

CREATE VIEW view_jalan_irigasi_jaringan_tebingtinggi AS

SELECT
*

FROM
view_jalan_irigasi_jaringan_kabupaten

WHERE
1 = 1  AND
id_skpd = 38;

GRANT ALL PRIVILEGES ON view_jalan_irigasi_jaringan_tebingtinggi TO lap_tebingtinggi;
REVOKE INSERT, UPDATE, DELETE ON view_jalan_irigasi_jaringan_tebingtinggi FROM lap_tebingtinggi;
