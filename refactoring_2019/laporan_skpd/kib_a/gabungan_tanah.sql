DROP VIEW IF EXISTS view_tanah_awayan;

CREATE VIEW view_tanah_awayan AS

SELECT
*

FROM
view_tanah_kabupaten

WHERE
1 = 1  AND
id_skpd = 34;

GRANT ALL PRIVILEGES ON view_tanah_awayan TO lap_awayan;
REVOKE INSERT, UPDATE, DELETE ON view_tanah_awayan FROM lap_awayan;

GRANT ALL PRIVILEGES ON skpd, sub_skpd TO lap_awayan;
REVOKE INSERT, UPDATE, DELETE ON skpd, sub_skpd FROM lap_awayan;



DROP VIEW IF EXISTS view_tanah_bappeda;

CREATE VIEW view_tanah_bappeda AS

SELECT
*

FROM
view_tanah_kabupaten

WHERE
1 = 1  AND
id_skpd = 21;

GRANT ALL PRIVILEGES ON view_tanah_bappeda TO lap_bappeda;
REVOKE INSERT, UPDATE, DELETE ON view_tanah_bappeda FROM lap_bappeda;

GRANT ALL PRIVILEGES ON skpd, sub_skpd TO lap_bappeda;
REVOKE INSERT, UPDATE, DELETE ON skpd, sub_skpd FROM lap_bappeda;



DROP VIEW IF EXISTS view_tanah_batumandi;

CREATE VIEW view_tanah_batumandi AS

SELECT
*

FROM
view_tanah_kabupaten

WHERE
1 = 1  AND
id_skpd = 32;

GRANT ALL PRIVILEGES ON view_tanah_batumandi TO lap_batumandi;
REVOKE INSERT, UPDATE, DELETE ON view_tanah_batumandi FROM lap_batumandi;

GRANT ALL PRIVILEGES ON skpd, sub_skpd TO lap_batumandi;
REVOKE INSERT, UPDATE, DELETE ON skpd, sub_skpd FROM lap_batumandi;



DROP VIEW IF EXISTS view_tanah_batupiring;

CREATE VIEW view_tanah_batupiring AS

SELECT
*

FROM
view_tanah_kabupaten

WHERE
1 = 1  AND
id_skpd = 37;

GRANT ALL PRIVILEGES ON view_tanah_batupiring TO lap_batupiring;
REVOKE INSERT, UPDATE, DELETE ON view_tanah_batupiring FROM lap_batupiring;

GRANT ALL PRIVILEGES ON skpd, sub_skpd TO lap_batupiring;
REVOKE INSERT, UPDATE, DELETE ON skpd, sub_skpd FROM lap_batupiring;



DROP VIEW IF EXISTS view_tanah_bkd;

CREATE VIEW view_tanah_bkd AS

SELECT
*

FROM
view_tanah_kabupaten

WHERE
1 = 1  AND
id_skpd = 19;

GRANT ALL PRIVILEGES ON view_tanah_bkd TO lap_bkd;
REVOKE INSERT, UPDATE, DELETE ON view_tanah_bkd FROM lap_bkd;

GRANT ALL PRIVILEGES ON skpd, sub_skpd TO lap_bkd;
REVOKE INSERT, UPDATE, DELETE ON skpd, sub_skpd FROM lap_bkd;



DROP VIEW IF EXISTS view_tanah_bkppd;

CREATE VIEW view_tanah_bkppd AS

SELECT
*

FROM
view_tanah_kabupaten

WHERE
1 = 1  AND
id_skpd = 26;

GRANT ALL PRIVILEGES ON view_tanah_bkppd TO lap_bkppd;
REVOKE INSERT, UPDATE, DELETE ON view_tanah_bkppd FROM lap_bkppd;

GRANT ALL PRIVILEGES ON skpd, sub_skpd TO lap_bkppd;
REVOKE INSERT, UPDATE, DELETE ON skpd, sub_skpd FROM lap_bkppd;



DROP VIEW IF EXISTS view_tanah_bpbd;

CREATE VIEW view_tanah_bpbd AS

SELECT
*

FROM
view_tanah_kabupaten

WHERE
1 = 1  AND
id_skpd = 39;

GRANT ALL PRIVILEGES ON view_tanah_bpbd TO lap_bpbd;
REVOKE INSERT, UPDATE, DELETE ON view_tanah_bpbd FROM lap_bpbd;

GRANT ALL PRIVILEGES ON skpd, sub_skpd TO lap_bpbd;
REVOKE INSERT, UPDATE, DELETE ON skpd, sub_skpd FROM lap_bpbd;



DROP VIEW IF EXISTS view_tanah_bppd;

CREATE VIEW view_tanah_bppd AS

SELECT
*

FROM
view_tanah_kabupaten

WHERE
1 = 1  AND
id_skpd = 48;

GRANT ALL PRIVILEGES ON view_tanah_bppd TO lap_bppd;
REVOKE INSERT, UPDATE, DELETE ON view_tanah_bppd FROM lap_bppd;

GRANT ALL PRIVILEGES ON skpd, sub_skpd TO lap_bppd;
REVOKE INSERT, UPDATE, DELETE ON skpd, sub_skpd FROM lap_bppd;



DROP VIEW IF EXISTS view_tanah_dinkes;

CREATE VIEW view_tanah_dinkes AS

SELECT
*

FROM
view_tanah_kabupaten

WHERE
1 = 1  AND
id_skpd = 5;

GRANT ALL PRIVILEGES ON view_tanah_dinkes TO lap_dinkes;
REVOKE INSERT, UPDATE, DELETE ON view_tanah_dinkes FROM lap_dinkes;

GRANT ALL PRIVILEGES ON skpd, sub_skpd TO lap_dinkes;
REVOKE INSERT, UPDATE, DELETE ON skpd, sub_skpd FROM lap_dinkes;



DROP VIEW IF EXISTS view_tanah_disdik;

CREATE VIEW view_tanah_disdik AS

SELECT
*

FROM
view_tanah_kabupaten

WHERE
1 = 1  AND
id_skpd = 7;

GRANT ALL PRIVILEGES ON view_tanah_disdik TO lap_disdik;
REVOKE INSERT, UPDATE, DELETE ON view_tanah_disdik FROM lap_disdik;

GRANT ALL PRIVILEGES ON skpd, sub_skpd TO lap_disdik;
REVOKE INSERT, UPDATE, DELETE ON skpd, sub_skpd FROM lap_disdik;



DROP VIEW IF EXISTS view_tanah_dishub;

CREATE VIEW view_tanah_dishub AS

SELECT
*

FROM
view_tanah_kabupaten

WHERE
1 = 1  AND
id_skpd = 4;

GRANT ALL PRIVILEGES ON view_tanah_dishub TO lap_dishub;
REVOKE INSERT, UPDATE, DELETE ON view_tanah_dishub FROM lap_dishub;

GRANT ALL PRIVILEGES ON skpd, sub_skpd TO lap_dishub;
REVOKE INSERT, UPDATE, DELETE ON skpd, sub_skpd FROM lap_dishub;



DROP VIEW IF EXISTS view_tanah_disnakertrans;

CREATE VIEW view_tanah_disnakertrans AS

SELECT
*

FROM
view_tanah_kabupaten

WHERE
1 = 1  AND
id_skpd = 41;

GRANT ALL PRIVILEGES ON view_tanah_disnakertrans TO lap_disnakertrans;
REVOKE INSERT, UPDATE, DELETE ON view_tanah_disnakertrans FROM lap_disnakertrans;

GRANT ALL PRIVILEGES ON skpd, sub_skpd TO lap_disnakertrans;
REVOKE INSERT, UPDATE, DELETE ON skpd, sub_skpd FROM lap_disnakertrans;



DROP VIEW IF EXISTS view_tanah_distamben;

CREATE VIEW view_tanah_distamben AS

SELECT
*

FROM
view_tanah_kabupaten

WHERE
1 = 1  AND
id_skpd = 17;

GRANT ALL PRIVILEGES ON view_tanah_distamben TO lap_distamben;
REVOKE INSERT, UPDATE, DELETE ON view_tanah_distamben FROM lap_distamben;

GRANT ALL PRIVILEGES ON skpd, sub_skpd TO lap_distamben;
REVOKE INSERT, UPDATE, DELETE ON skpd, sub_skpd FROM lap_distamben;



DROP VIEW IF EXISTS view_tanah_dko;

CREATE VIEW view_tanah_dko AS

SELECT
*

FROM
view_tanah_kabupaten

WHERE
1 = 1  AND
id_skpd = 23;

GRANT ALL PRIVILEGES ON view_tanah_dko TO lap_dko;
REVOKE INSERT, UPDATE, DELETE ON view_tanah_dko FROM lap_dko;

GRANT ALL PRIVILEGES ON skpd, sub_skpd TO lap_dko;
REVOKE INSERT, UPDATE, DELETE ON skpd, sub_skpd FROM lap_dko;



DROP VIEW IF EXISTS view_tanah_dkp;

CREATE VIEW view_tanah_dkp AS

SELECT
*

FROM
view_tanah_kabupaten

WHERE
1 = 1  AND
id_skpd = 15;

GRANT ALL PRIVILEGES ON view_tanah_dkp TO lap_dkp;
REVOKE INSERT, UPDATE, DELETE ON view_tanah_dkp FROM lap_dkp;

GRANT ALL PRIVILEGES ON skpd, sub_skpd TO lap_dkp;
REVOKE INSERT, UPDATE, DELETE ON skpd, sub_skpd FROM lap_dkp;



DROP VIEW IF EXISTS view_tanah_dkukmp;

CREATE VIEW view_tanah_dkukmp AS

SELECT
*

FROM
view_tanah_kabupaten

WHERE
1 = 1  AND
id_skpd = 16;

GRANT ALL PRIVILEGES ON view_tanah_dkukmp TO lap_dkukmp;
REVOKE INSERT, UPDATE, DELETE ON view_tanah_dkukmp FROM lap_dkukmp;

GRANT ALL PRIVILEGES ON skpd, sub_skpd TO lap_dkukmp;
REVOKE INSERT, UPDATE, DELETE ON skpd, sub_skpd FROM lap_dkukmp;



DROP VIEW IF EXISTS view_tanah_dlh;

CREATE VIEW view_tanah_dlh AS

SELECT
*

FROM
view_tanah_kabupaten

WHERE
1 = 1  AND
id_skpd = 22;

GRANT ALL PRIVILEGES ON view_tanah_dlh TO lap_dlh;
REVOKE INSERT, UPDATE, DELETE ON view_tanah_dlh FROM lap_dlh;

GRANT ALL PRIVILEGES ON skpd, sub_skpd TO lap_dlh;
REVOKE INSERT, UPDATE, DELETE ON skpd, sub_skpd FROM lap_dlh;



DROP VIEW IF EXISTS view_tanah_dpkp;

CREATE VIEW view_tanah_dpkp AS

SELECT
*

FROM
view_tanah_kabupaten

WHERE
1 = 1  AND
id_skpd = 40;

GRANT ALL PRIVILEGES ON view_tanah_dpkp TO lap_dpkp;
REVOKE INSERT, UPDATE, DELETE ON view_tanah_dpkp FROM lap_dpkp;

GRANT ALL PRIVILEGES ON skpd, sub_skpd TO lap_dpkp;
REVOKE INSERT, UPDATE, DELETE ON skpd, sub_skpd FROM lap_dpkp;



DROP VIEW IF EXISTS view_tanah_dpmd;

CREATE VIEW view_tanah_dpmd AS

SELECT
*

FROM
view_tanah_kabupaten

WHERE
1 = 1  AND
id_skpd = 10;

GRANT ALL PRIVILEGES ON view_tanah_dpmd TO lap_dpmd;
REVOKE INSERT, UPDATE, DELETE ON view_tanah_dpmd FROM lap_dpmd;

GRANT ALL PRIVILEGES ON skpd, sub_skpd TO lap_dpmd;
REVOKE INSERT, UPDATE, DELETE ON skpd, sub_skpd FROM lap_dpmd;



DROP VIEW IF EXISTS view_tanah_dpmptsp;

CREATE VIEW view_tanah_dpmptsp AS

SELECT
*

FROM
view_tanah_kabupaten

WHERE
1 = 1  AND
id_skpd = 18;

GRANT ALL PRIVILEGES ON view_tanah_dpmptsp TO lap_dpmptsp;
REVOKE INSERT, UPDATE, DELETE ON view_tanah_dpmptsp FROM lap_dpmptsp;

GRANT ALL PRIVILEGES ON skpd, sub_skpd TO lap_dpmptsp;
REVOKE INSERT, UPDATE, DELETE ON skpd, sub_skpd FROM lap_dpmptsp;



DROP VIEW IF EXISTS view_tanah_dppkb;

CREATE VIEW view_tanah_dppkb AS

SELECT
*

FROM
view_tanah_kabupaten

WHERE
1 = 1  AND
id_skpd = 42;

GRANT ALL PRIVILEGES ON view_tanah_dppkb TO lap_dppkb;
REVOKE INSERT, UPDATE, DELETE ON view_tanah_dppkb FROM lap_dppkb;

GRANT ALL PRIVILEGES ON skpd, sub_skpd TO lap_dppkb;
REVOKE INSERT, UPDATE, DELETE ON skpd, sub_skpd FROM lap_dppkb;



DROP VIEW IF EXISTS view_tanah_dpppa;

CREATE VIEW view_tanah_dpppa AS

SELECT
*

FROM
view_tanah_kabupaten

WHERE
1 = 1  AND
id_skpd = 11;

GRANT ALL PRIVILEGES ON view_tanah_dpppa TO lap_dpppa;
REVOKE INSERT, UPDATE, DELETE ON view_tanah_dpppa FROM lap_dpppa;

GRANT ALL PRIVILEGES ON skpd, sub_skpd TO lap_dpppa;
REVOKE INSERT, UPDATE, DELETE ON skpd, sub_skpd FROM lap_dpppa;



DROP VIEW IF EXISTS view_tanah_dpupr;

CREATE VIEW view_tanah_dpupr AS

SELECT
*

FROM
view_tanah_kabupaten

WHERE
1 = 1  AND
id_skpd = 3;

GRANT ALL PRIVILEGES ON view_tanah_dpupr TO lap_dpupr;
REVOKE INSERT, UPDATE, DELETE ON view_tanah_dpupr FROM lap_dpupr;

GRANT ALL PRIVILEGES ON skpd, sub_skpd TO lap_dpupr;
REVOKE INSERT, UPDATE, DELETE ON skpd, sub_skpd FROM lap_dpupr;



DROP VIEW IF EXISTS view_tanah_dukcatpil;

CREATE VIEW view_tanah_dukcatpil AS

SELECT
*

FROM
view_tanah_kabupaten

WHERE
1 = 1  AND
id_skpd = 12;

GRANT ALL PRIVILEGES ON view_tanah_dukcatpil TO lap_dukcatpil;
REVOKE INSERT, UPDATE, DELETE ON view_tanah_dukcatpil FROM lap_dukcatpil;

GRANT ALL PRIVILEGES ON skpd, sub_skpd TO lap_dukcatpil;
REVOKE INSERT, UPDATE, DELETE ON skpd, sub_skpd FROM lap_dukcatpil;



DROP VIEW IF EXISTS view_tanah_halong;

CREATE VIEW view_tanah_halong AS

SELECT
*

FROM
view_tanah_kabupaten

WHERE
1 = 1  AND
id_skpd = 35;

GRANT ALL PRIVILEGES ON view_tanah_halong TO lap_halong;
REVOKE INSERT, UPDATE, DELETE ON view_tanah_halong FROM lap_halong;

GRANT ALL PRIVILEGES ON skpd, sub_skpd TO lap_halong;
REVOKE INSERT, UPDATE, DELETE ON skpd, sub_skpd FROM lap_halong;



DROP VIEW IF EXISTS view_tanah_inspektorat;

CREATE VIEW view_tanah_inspektorat AS

SELECT
*

FROM
view_tanah_kabupaten

WHERE
1 = 1  AND
id_skpd = 20;

GRANT ALL PRIVILEGES ON view_tanah_inspektorat TO lap_inspektorat;
REVOKE INSERT, UPDATE, DELETE ON view_tanah_inspektorat FROM lap_inspektorat;

GRANT ALL PRIVILEGES ON skpd, sub_skpd TO lap_inspektorat;
REVOKE INSERT, UPDATE, DELETE ON skpd, sub_skpd FROM lap_inspektorat;



DROP VIEW IF EXISTS view_tanah_juai;

CREATE VIEW view_tanah_juai AS

SELECT
*

FROM
view_tanah_kabupaten

WHERE
1 = 1  AND
id_skpd = 33;

GRANT ALL PRIVILEGES ON view_tanah_juai TO lap_juai;
REVOKE INSERT, UPDATE, DELETE ON view_tanah_juai FROM lap_juai;

GRANT ALL PRIVILEGES ON skpd, sub_skpd TO lap_juai;
REVOKE INSERT, UPDATE, DELETE ON skpd, sub_skpd FROM lap_juai;



DROP VIEW IF EXISTS view_tanah_kearsipan;

CREATE VIEW view_tanah_kearsipan AS

SELECT
*

FROM
view_tanah_kabupaten

WHERE
1 = 1  AND
id_skpd = 44;

GRANT ALL PRIVILEGES ON view_tanah_kearsipan TO lap_kearsipan;
REVOKE INSERT, UPDATE, DELETE ON view_tanah_kearsipan FROM lap_kearsipan;

GRANT ALL PRIVILEGES ON skpd, sub_skpd TO lap_kearsipan;
REVOKE INSERT, UPDATE, DELETE ON skpd, sub_skpd FROM lap_kearsipan;



DROP VIEW IF EXISTS view_tanah_kehutanan;

CREATE VIEW view_tanah_kehutanan AS

SELECT
*

FROM
view_tanah_kabupaten

WHERE
1 = 1  AND
id_skpd = 14;

GRANT ALL PRIVILEGES ON view_tanah_kehutanan TO lap_kehutanan;
REVOKE INSERT, UPDATE, DELETE ON view_tanah_kehutanan FROM lap_kehutanan;

GRANT ALL PRIVILEGES ON skpd, sub_skpd TO lap_kehutanan;
REVOKE INSERT, UPDATE, DELETE ON skpd, sub_skpd FROM lap_kehutanan;



DROP VIEW IF EXISTS view_tanah_kesbangpol;

CREATE VIEW view_tanah_kesbangpol AS

SELECT
*

FROM
view_tanah_kabupaten

WHERE
1 = 1  AND
id_skpd = 24;

GRANT ALL PRIVILEGES ON view_tanah_kesbangpol TO lap_kesbangpol;
REVOKE INSERT, UPDATE, DELETE ON view_tanah_kesbangpol FROM lap_kesbangpol;

GRANT ALL PRIVILEGES ON skpd, sub_skpd TO lap_kesbangpol;
REVOKE INSERT, UPDATE, DELETE ON skpd, sub_skpd FROM lap_kesbangpol;



DROP VIEW IF EXISTS view_tanah_kominfo;

CREATE VIEW view_tanah_kominfo AS

SELECT
*

FROM
view_tanah_kabupaten

WHERE
1 = 1  AND
id_skpd = 43;

GRANT ALL PRIVILEGES ON view_tanah_kominfo TO lap_kominfo;
REVOKE INSERT, UPDATE, DELETE ON view_tanah_kominfo FROM lap_kominfo;

GRANT ALL PRIVILEGES ON skpd, sub_skpd TO lap_kominfo;
REVOKE INSERT, UPDATE, DELETE ON skpd, sub_skpd FROM lap_kominfo;



DROP VIEW IF EXISTS view_tanah_korpri;

CREATE VIEW view_tanah_korpri AS

SELECT
*

FROM
view_tanah_kabupaten

WHERE
1 = 1  AND
id_skpd = 27;

GRANT ALL PRIVILEGES ON view_tanah_korpri TO lap_korpri;
REVOKE INSERT, UPDATE, DELETE ON view_tanah_korpri FROM lap_korpri;

GRANT ALL PRIVILEGES ON skpd, sub_skpd TO lap_korpri;
REVOKE INSERT, UPDATE, DELETE ON skpd, sub_skpd FROM lap_korpri;



DROP VIEW IF EXISTS view_tanah_lampihong;

CREATE VIEW view_tanah_lampihong AS

SELECT
*

FROM
view_tanah_kabupaten

WHERE
1 = 1  AND
id_skpd = 31;

GRANT ALL PRIVILEGES ON view_tanah_lampihong TO lap_lampihong;
REVOKE INSERT, UPDATE, DELETE ON view_tanah_lampihong FROM lap_lampihong;

GRANT ALL PRIVILEGES ON skpd, sub_skpd TO lap_lampihong;
REVOKE INSERT, UPDATE, DELETE ON skpd, sub_skpd FROM lap_lampihong;



DROP VIEW IF EXISTS view_tanah_paringin;

CREATE VIEW view_tanah_paringin AS

SELECT
*

FROM
view_tanah_kabupaten

WHERE
1 = 1  AND
id_skpd = 28;

GRANT ALL PRIVILEGES ON view_tanah_paringin TO lap_paringin;
REVOKE INSERT, UPDATE, DELETE ON view_tanah_paringin FROM lap_paringin;

GRANT ALL PRIVILEGES ON skpd, sub_skpd TO lap_paringin;
REVOKE INSERT, UPDATE, DELETE ON skpd, sub_skpd FROM lap_paringin;



DROP VIEW IF EXISTS view_tanah_paringinkota;

CREATE VIEW view_tanah_paringinkota AS

SELECT
*

FROM
view_tanah_kabupaten

WHERE
1 = 1  AND
id_skpd = 29;

GRANT ALL PRIVILEGES ON view_tanah_paringinkota TO lap_paringinkota;
REVOKE INSERT, UPDATE, DELETE ON view_tanah_paringinkota FROM lap_paringinkota;

GRANT ALL PRIVILEGES ON skpd, sub_skpd TO lap_paringinkota;
REVOKE INSERT, UPDATE, DELETE ON skpd, sub_skpd FROM lap_paringinkota;



DROP VIEW IF EXISTS view_tanah_paringinselatan;

CREATE VIEW view_tanah_paringinselatan AS

SELECT
*

FROM
view_tanah_kabupaten

WHERE
1 = 1  AND
id_skpd = 36;

GRANT ALL PRIVILEGES ON view_tanah_paringinselatan TO lap_paringinselatan;
REVOKE INSERT, UPDATE, DELETE ON view_tanah_paringinselatan FROM lap_paringinselatan;

GRANT ALL PRIVILEGES ON skpd, sub_skpd TO lap_paringinselatan;
REVOKE INSERT, UPDATE, DELETE ON skpd, sub_skpd FROM lap_paringinselatan;



DROP VIEW IF EXISTS view_tanah_paringintimur;

CREATE VIEW view_tanah_paringintimur AS

SELECT
*

FROM
view_tanah_kabupaten

WHERE
1 = 1  AND
id_skpd = 30;

GRANT ALL PRIVILEGES ON view_tanah_paringintimur TO lap_paringintimur;
REVOKE INSERT, UPDATE, DELETE ON view_tanah_paringintimur FROM lap_paringintimur;

GRANT ALL PRIVILEGES ON skpd, sub_skpd TO lap_paringintimur;
REVOKE INSERT, UPDATE, DELETE ON skpd, sub_skpd FROM lap_paringintimur;



DROP VIEW IF EXISTS view_tanah_pariwisata;

CREATE VIEW view_tanah_pariwisata AS

SELECT
*

FROM
view_tanah_kabupaten

WHERE
1 = 1  AND
id_skpd = 46;

GRANT ALL PRIVILEGES ON view_tanah_pariwisata TO lap_pariwisata;
REVOKE INSERT, UPDATE, DELETE ON view_tanah_pariwisata FROM lap_pariwisata;

GRANT ALL PRIVILEGES ON skpd, sub_skpd TO lap_pariwisata;
REVOKE INSERT, UPDATE, DELETE ON skpd, sub_skpd FROM lap_pariwisata;



DROP VIEW IF EXISTS view_tanah_perdagangan;

CREATE VIEW view_tanah_perdagangan AS

SELECT
*

FROM
view_tanah_kabupaten

WHERE
1 = 1  AND
id_skpd = 47;

GRANT ALL PRIVILEGES ON view_tanah_perdagangan TO lap_perdagangan;
REVOKE INSERT, UPDATE, DELETE ON view_tanah_perdagangan FROM lap_perdagangan;

GRANT ALL PRIVILEGES ON skpd, sub_skpd TO lap_perdagangan;
REVOKE INSERT, UPDATE, DELETE ON skpd, sub_skpd FROM lap_perdagangan;



DROP VIEW IF EXISTS view_tanah_perikanan;

CREATE VIEW view_tanah_perikanan AS

SELECT
*

FROM
view_tanah_kabupaten

WHERE
1 = 1  AND
id_skpd = 45;

GRANT ALL PRIVILEGES ON view_tanah_perikanan TO lap_perikanan;
REVOKE INSERT, UPDATE, DELETE ON view_tanah_perikanan FROM lap_perikanan;

GRANT ALL PRIVILEGES ON skpd, sub_skpd TO lap_perikanan;
REVOKE INSERT, UPDATE, DELETE ON skpd, sub_skpd FROM lap_perikanan;



DROP VIEW IF EXISTS view_tanah_perpustakaan;

CREATE VIEW view_tanah_perpustakaan AS

SELECT
*

FROM
view_tanah_kabupaten

WHERE
1 = 1  AND
id_skpd = 8;

GRANT ALL PRIVILEGES ON view_tanah_perpustakaan TO lap_perpustakaan;
REVOKE INSERT, UPDATE, DELETE ON view_tanah_perpustakaan FROM lap_perpustakaan;

GRANT ALL PRIVILEGES ON skpd, sub_skpd TO lap_perpustakaan;
REVOKE INSERT, UPDATE, DELETE ON skpd, sub_skpd FROM lap_perpustakaan;



DROP VIEW IF EXISTS view_tanah_pertanian;

CREATE VIEW view_tanah_pertanian AS

SELECT
*

FROM
view_tanah_kabupaten

WHERE
1 = 1  AND
id_skpd = 13;

GRANT ALL PRIVILEGES ON view_tanah_pertanian TO lap_pertanian;
REVOKE INSERT, UPDATE, DELETE ON view_tanah_pertanian FROM lap_pertanian;

GRANT ALL PRIVILEGES ON skpd, sub_skpd TO lap_pertanian;
REVOKE INSERT, UPDATE, DELETE ON skpd, sub_skpd FROM lap_pertanian;



DROP VIEW IF EXISTS view_tanah_rsud;

CREATE VIEW view_tanah_rsud AS

SELECT
*

FROM
view_tanah_kabupaten

WHERE
1 = 1  AND
id_skpd = 6;

GRANT ALL PRIVILEGES ON view_tanah_rsud TO lap_rsud;
REVOKE INSERT, UPDATE, DELETE ON view_tanah_rsud FROM lap_rsud;

GRANT ALL PRIVILEGES ON skpd, sub_skpd TO lap_rsud;
REVOKE INSERT, UPDATE, DELETE ON skpd, sub_skpd FROM lap_rsud;



DROP VIEW IF EXISTS view_tanah_satpolpp;

CREATE VIEW view_tanah_satpolpp AS

SELECT
*

FROM
view_tanah_kabupaten

WHERE
1 = 1  AND
id_skpd = 25;

GRANT ALL PRIVILEGES ON view_tanah_satpolpp TO lap_satpolpp;
REVOKE INSERT, UPDATE, DELETE ON view_tanah_satpolpp FROM lap_satpolpp;

GRANT ALL PRIVILEGES ON skpd, sub_skpd TO lap_satpolpp;
REVOKE INSERT, UPDATE, DELETE ON skpd, sub_skpd FROM lap_satpolpp;



DROP VIEW IF EXISTS view_tanah_setda;

CREATE VIEW view_tanah_setda AS

SELECT
*

FROM
view_tanah_kabupaten

WHERE
1 = 1  AND
id_skpd = 2;

GRANT ALL PRIVILEGES ON view_tanah_setda TO lap_setda;
REVOKE INSERT, UPDATE, DELETE ON view_tanah_setda FROM lap_setda;

GRANT ALL PRIVILEGES ON skpd, sub_skpd TO lap_setda;
REVOKE INSERT, UPDATE, DELETE ON skpd, sub_skpd FROM lap_setda;



DROP VIEW IF EXISTS view_tanah_setwan;

CREATE VIEW view_tanah_setwan AS

SELECT
*

FROM
view_tanah_kabupaten

WHERE
1 = 1  AND
id_skpd = 1;

GRANT ALL PRIVILEGES ON view_tanah_setwan TO lap_setwan;
REVOKE INSERT, UPDATE, DELETE ON view_tanah_setwan FROM lap_setwan;

GRANT ALL PRIVILEGES ON skpd, sub_skpd TO lap_setwan;
REVOKE INSERT, UPDATE, DELETE ON skpd, sub_skpd FROM lap_setwan;



DROP VIEW IF EXISTS view_tanah_sosial;

CREATE VIEW view_tanah_sosial AS

SELECT
*

FROM
view_tanah_kabupaten

WHERE
1 = 1  AND
id_skpd = 9;

GRANT ALL PRIVILEGES ON view_tanah_sosial TO lap_sosial;
REVOKE INSERT, UPDATE, DELETE ON view_tanah_sosial FROM lap_sosial;

GRANT ALL PRIVILEGES ON skpd, sub_skpd TO lap_sosial;
REVOKE INSERT, UPDATE, DELETE ON skpd, sub_skpd FROM lap_sosial;



DROP VIEW IF EXISTS view_tanah_tebingtinggi;

CREATE VIEW view_tanah_tebingtinggi AS

SELECT
*

FROM
view_tanah_kabupaten

WHERE
1 = 1  AND
id_skpd = 38;

GRANT ALL PRIVILEGES ON view_tanah_tebingtinggi TO lap_tebingtinggi;
REVOKE INSERT, UPDATE, DELETE ON view_tanah_tebingtinggi FROM lap_tebingtinggi;

GRANT ALL PRIVILEGES ON skpd, sub_skpd TO lap_tebingtinggi;
REVOKE INSERT, UPDATE, DELETE ON skpd, sub_skpd FROM lap_tebingtinggi;



