DROP VIEW IF EXISTS view_tanah_108_awayan;

CREATE VIEW view_tanah_108_awayan AS

SELECT
*

FROM
view_tanah_108_kabupaten

WHERE
1 = 1  AND
id_skpd = 34;

GRANT ALL PRIVILEGES ON view_tanah_108_awayan TO lap_awayan;
REVOKE INSERT, UPDATE, DELETE ON view_tanah_108_awayan FROM lap_awayan;

GRANT ALL PRIVILEGES ON skpd, sub_skpd TO lap_awayan;
REVOKE INSERT, UPDATE, DELETE ON skpd, sub_skpd FROM lap_awayan;



DROP VIEW IF EXISTS view_tanah_108_bappeda;

CREATE VIEW view_tanah_108_bappeda AS

SELECT
*

FROM
view_tanah_108_kabupaten

WHERE
1 = 1  AND
id_skpd = 21;

GRANT ALL PRIVILEGES ON view_tanah_108_bappeda TO lap_bappeda;
REVOKE INSERT, UPDATE, DELETE ON view_tanah_108_bappeda FROM lap_bappeda;

GRANT ALL PRIVILEGES ON skpd, sub_skpd TO lap_bappeda;
REVOKE INSERT, UPDATE, DELETE ON skpd, sub_skpd FROM lap_bappeda;



DROP VIEW IF EXISTS view_tanah_108_batumandi;

CREATE VIEW view_tanah_108_batumandi AS

SELECT
*

FROM
view_tanah_108_kabupaten

WHERE
1 = 1  AND
id_skpd = 32;

GRANT ALL PRIVILEGES ON view_tanah_108_batumandi TO lap_batumandi;
REVOKE INSERT, UPDATE, DELETE ON view_tanah_108_batumandi FROM lap_batumandi;

GRANT ALL PRIVILEGES ON skpd, sub_skpd TO lap_batumandi;
REVOKE INSERT, UPDATE, DELETE ON skpd, sub_skpd FROM lap_batumandi;



DROP VIEW IF EXISTS view_tanah_108_batupiring;

CREATE VIEW view_tanah_108_batupiring AS

SELECT
*

FROM
view_tanah_108_kabupaten

WHERE
1 = 1  AND
id_skpd = 37;

GRANT ALL PRIVILEGES ON view_tanah_108_batupiring TO lap_batupiring;
REVOKE INSERT, UPDATE, DELETE ON view_tanah_108_batupiring FROM lap_batupiring;

GRANT ALL PRIVILEGES ON skpd, sub_skpd TO lap_batupiring;
REVOKE INSERT, UPDATE, DELETE ON skpd, sub_skpd FROM lap_batupiring;



DROP VIEW IF EXISTS view_tanah_108_bkd;

CREATE VIEW view_tanah_108_bkd AS

SELECT
*

FROM
view_tanah_108_kabupaten

WHERE
1 = 1  AND
id_skpd = 19;

GRANT ALL PRIVILEGES ON view_tanah_108_bkd TO lap_bkd;
REVOKE INSERT, UPDATE, DELETE ON view_tanah_108_bkd FROM lap_bkd;

GRANT ALL PRIVILEGES ON skpd, sub_skpd TO lap_bkd;
REVOKE INSERT, UPDATE, DELETE ON skpd, sub_skpd FROM lap_bkd;



DROP VIEW IF EXISTS view_tanah_108_bkppd;

CREATE VIEW view_tanah_108_bkppd AS

SELECT
*

FROM
view_tanah_108_kabupaten

WHERE
1 = 1  AND
id_skpd = 26;

GRANT ALL PRIVILEGES ON view_tanah_108_bkppd TO lap_bkppd;
REVOKE INSERT, UPDATE, DELETE ON view_tanah_108_bkppd FROM lap_bkppd;

GRANT ALL PRIVILEGES ON skpd, sub_skpd TO lap_bkppd;
REVOKE INSERT, UPDATE, DELETE ON skpd, sub_skpd FROM lap_bkppd;



DROP VIEW IF EXISTS view_tanah_108_bpbd;

CREATE VIEW view_tanah_108_bpbd AS

SELECT
*

FROM
view_tanah_108_kabupaten

WHERE
1 = 1  AND
id_skpd = 39;

GRANT ALL PRIVILEGES ON view_tanah_108_bpbd TO lap_bpbd;
REVOKE INSERT, UPDATE, DELETE ON view_tanah_108_bpbd FROM lap_bpbd;

GRANT ALL PRIVILEGES ON skpd, sub_skpd TO lap_bpbd;
REVOKE INSERT, UPDATE, DELETE ON skpd, sub_skpd FROM lap_bpbd;



DROP VIEW IF EXISTS view_tanah_108_bppd;

CREATE VIEW view_tanah_108_bppd AS

SELECT
*

FROM
view_tanah_108_kabupaten

WHERE
1 = 1  AND
id_skpd = 48;

GRANT ALL PRIVILEGES ON view_tanah_108_bppd TO lap_bppd;
REVOKE INSERT, UPDATE, DELETE ON view_tanah_108_bppd FROM lap_bppd;

GRANT ALL PRIVILEGES ON skpd, sub_skpd TO lap_bppd;
REVOKE INSERT, UPDATE, DELETE ON skpd, sub_skpd FROM lap_bppd;



DROP VIEW IF EXISTS view_tanah_108_dinkes;

CREATE VIEW view_tanah_108_dinkes AS

SELECT
*

FROM
view_tanah_108_kabupaten

WHERE
1 = 1  AND
id_skpd = 5;

GRANT ALL PRIVILEGES ON view_tanah_108_dinkes TO lap_dinkes;
REVOKE INSERT, UPDATE, DELETE ON view_tanah_108_dinkes FROM lap_dinkes;

GRANT ALL PRIVILEGES ON skpd, sub_skpd TO lap_dinkes;
REVOKE INSERT, UPDATE, DELETE ON skpd, sub_skpd FROM lap_dinkes;



DROP VIEW IF EXISTS view_tanah_108_disdik;

CREATE VIEW view_tanah_108_disdik AS

SELECT
*

FROM
view_tanah_108_kabupaten

WHERE
1 = 1  AND
id_skpd = 7;

GRANT ALL PRIVILEGES ON view_tanah_108_disdik TO lap_disdik;
REVOKE INSERT, UPDATE, DELETE ON view_tanah_108_disdik FROM lap_disdik;

GRANT ALL PRIVILEGES ON skpd, sub_skpd TO lap_disdik;
REVOKE INSERT, UPDATE, DELETE ON skpd, sub_skpd FROM lap_disdik;



DROP VIEW IF EXISTS view_tanah_108_dishub;

CREATE VIEW view_tanah_108_dishub AS

SELECT
*

FROM
view_tanah_108_kabupaten

WHERE
1 = 1  AND
id_skpd = 4;

GRANT ALL PRIVILEGES ON view_tanah_108_dishub TO lap_dishub;
REVOKE INSERT, UPDATE, DELETE ON view_tanah_108_dishub FROM lap_dishub;

GRANT ALL PRIVILEGES ON skpd, sub_skpd TO lap_dishub;
REVOKE INSERT, UPDATE, DELETE ON skpd, sub_skpd FROM lap_dishub;



DROP VIEW IF EXISTS view_tanah_108_disnakertrans;

CREATE VIEW view_tanah_108_disnakertrans AS

SELECT
*

FROM
view_tanah_108_kabupaten

WHERE
1 = 1  AND
id_skpd = 41;

GRANT ALL PRIVILEGES ON view_tanah_108_disnakertrans TO lap_disnakertrans;
REVOKE INSERT, UPDATE, DELETE ON view_tanah_108_disnakertrans FROM lap_disnakertrans;

GRANT ALL PRIVILEGES ON skpd, sub_skpd TO lap_disnakertrans;
REVOKE INSERT, UPDATE, DELETE ON skpd, sub_skpd FROM lap_disnakertrans;



DROP VIEW IF EXISTS view_tanah_108_distamben;

CREATE VIEW view_tanah_108_distamben AS

SELECT
*

FROM
view_tanah_108_kabupaten

WHERE
1 = 1  AND
id_skpd = 17;

GRANT ALL PRIVILEGES ON view_tanah_108_distamben TO lap_distamben;
REVOKE INSERT, UPDATE, DELETE ON view_tanah_108_distamben FROM lap_distamben;

GRANT ALL PRIVILEGES ON skpd, sub_skpd TO lap_distamben;
REVOKE INSERT, UPDATE, DELETE ON skpd, sub_skpd FROM lap_distamben;



DROP VIEW IF EXISTS view_tanah_108_dko;

CREATE VIEW view_tanah_108_dko AS

SELECT
*

FROM
view_tanah_108_kabupaten

WHERE
1 = 1  AND
id_skpd = 23;

GRANT ALL PRIVILEGES ON view_tanah_108_dko TO lap_dko;
REVOKE INSERT, UPDATE, DELETE ON view_tanah_108_dko FROM lap_dko;

GRANT ALL PRIVILEGES ON skpd, sub_skpd TO lap_dko;
REVOKE INSERT, UPDATE, DELETE ON skpd, sub_skpd FROM lap_dko;



DROP VIEW IF EXISTS view_tanah_108_dkp;

CREATE VIEW view_tanah_108_dkp AS

SELECT
*

FROM
view_tanah_108_kabupaten

WHERE
1 = 1  AND
id_skpd = 15;

GRANT ALL PRIVILEGES ON view_tanah_108_dkp TO lap_dkp;
REVOKE INSERT, UPDATE, DELETE ON view_tanah_108_dkp FROM lap_dkp;

GRANT ALL PRIVILEGES ON skpd, sub_skpd TO lap_dkp;
REVOKE INSERT, UPDATE, DELETE ON skpd, sub_skpd FROM lap_dkp;



DROP VIEW IF EXISTS view_tanah_108_dkukmp;

CREATE VIEW view_tanah_108_dkukmp AS

SELECT
*

FROM
view_tanah_108_kabupaten

WHERE
1 = 1  AND
id_skpd = 16;

GRANT ALL PRIVILEGES ON view_tanah_108_dkukmp TO lap_dkukmp;
REVOKE INSERT, UPDATE, DELETE ON view_tanah_108_dkukmp FROM lap_dkukmp;

GRANT ALL PRIVILEGES ON skpd, sub_skpd TO lap_dkukmp;
REVOKE INSERT, UPDATE, DELETE ON skpd, sub_skpd FROM lap_dkukmp;



DROP VIEW IF EXISTS view_tanah_108_dlh;

CREATE VIEW view_tanah_108_dlh AS

SELECT
*

FROM
view_tanah_108_kabupaten

WHERE
1 = 1  AND
id_skpd = 22;

GRANT ALL PRIVILEGES ON view_tanah_108_dlh TO lap_dlh;
REVOKE INSERT, UPDATE, DELETE ON view_tanah_108_dlh FROM lap_dlh;

GRANT ALL PRIVILEGES ON skpd, sub_skpd TO lap_dlh;
REVOKE INSERT, UPDATE, DELETE ON skpd, sub_skpd FROM lap_dlh;



DROP VIEW IF EXISTS view_tanah_108_dpkp;

CREATE VIEW view_tanah_108_dpkp AS

SELECT
*

FROM
view_tanah_108_kabupaten

WHERE
1 = 1  AND
id_skpd = 40;

GRANT ALL PRIVILEGES ON view_tanah_108_dpkp TO lap_dpkp;
REVOKE INSERT, UPDATE, DELETE ON view_tanah_108_dpkp FROM lap_dpkp;

GRANT ALL PRIVILEGES ON skpd, sub_skpd TO lap_dpkp;
REVOKE INSERT, UPDATE, DELETE ON skpd, sub_skpd FROM lap_dpkp;



DROP VIEW IF EXISTS view_tanah_108_dpmd;

CREATE VIEW view_tanah_108_dpmd AS

SELECT
*

FROM
view_tanah_108_kabupaten

WHERE
1 = 1  AND
id_skpd = 10;

GRANT ALL PRIVILEGES ON view_tanah_108_dpmd TO lap_dpmd;
REVOKE INSERT, UPDATE, DELETE ON view_tanah_108_dpmd FROM lap_dpmd;

GRANT ALL PRIVILEGES ON skpd, sub_skpd TO lap_dpmd;
REVOKE INSERT, UPDATE, DELETE ON skpd, sub_skpd FROM lap_dpmd;



DROP VIEW IF EXISTS view_tanah_108_dpmptsp;

CREATE VIEW view_tanah_108_dpmptsp AS

SELECT
*

FROM
view_tanah_108_kabupaten

WHERE
1 = 1  AND
id_skpd = 18;

GRANT ALL PRIVILEGES ON view_tanah_108_dpmptsp TO lap_dpmptsp;
REVOKE INSERT, UPDATE, DELETE ON view_tanah_108_dpmptsp FROM lap_dpmptsp;

GRANT ALL PRIVILEGES ON skpd, sub_skpd TO lap_dpmptsp;
REVOKE INSERT, UPDATE, DELETE ON skpd, sub_skpd FROM lap_dpmptsp;



DROP VIEW IF EXISTS view_tanah_108_dppkb;

CREATE VIEW view_tanah_108_dppkb AS

SELECT
*

FROM
view_tanah_108_kabupaten

WHERE
1 = 1  AND
id_skpd = 42;

GRANT ALL PRIVILEGES ON view_tanah_108_dppkb TO lap_dppkb;
REVOKE INSERT, UPDATE, DELETE ON view_tanah_108_dppkb FROM lap_dppkb;

GRANT ALL PRIVILEGES ON skpd, sub_skpd TO lap_dppkb;
REVOKE INSERT, UPDATE, DELETE ON skpd, sub_skpd FROM lap_dppkb;



DROP VIEW IF EXISTS view_tanah_108_dpppa;

CREATE VIEW view_tanah_108_dpppa AS

SELECT
*

FROM
view_tanah_108_kabupaten

WHERE
1 = 1  AND
id_skpd = 11;

GRANT ALL PRIVILEGES ON view_tanah_108_dpppa TO lap_dpppa;
REVOKE INSERT, UPDATE, DELETE ON view_tanah_108_dpppa FROM lap_dpppa;

GRANT ALL PRIVILEGES ON skpd, sub_skpd TO lap_dpppa;
REVOKE INSERT, UPDATE, DELETE ON skpd, sub_skpd FROM lap_dpppa;



DROP VIEW IF EXISTS view_tanah_108_dpupr;

CREATE VIEW view_tanah_108_dpupr AS

SELECT
*

FROM
view_tanah_108_kabupaten

WHERE
1 = 1  AND
id_skpd = 3;

GRANT ALL PRIVILEGES ON view_tanah_108_dpupr TO lap_dpupr;
REVOKE INSERT, UPDATE, DELETE ON view_tanah_108_dpupr FROM lap_dpupr;

GRANT ALL PRIVILEGES ON skpd, sub_skpd TO lap_dpupr;
REVOKE INSERT, UPDATE, DELETE ON skpd, sub_skpd FROM lap_dpupr;



DROP VIEW IF EXISTS view_tanah_108_dukcatpil;

CREATE VIEW view_tanah_108_dukcatpil AS

SELECT
*

FROM
view_tanah_108_kabupaten

WHERE
1 = 1  AND
id_skpd = 12;

GRANT ALL PRIVILEGES ON view_tanah_108_dukcatpil TO lap_dukcatpil;
REVOKE INSERT, UPDATE, DELETE ON view_tanah_108_dukcatpil FROM lap_dukcatpil;

GRANT ALL PRIVILEGES ON skpd, sub_skpd TO lap_dukcatpil;
REVOKE INSERT, UPDATE, DELETE ON skpd, sub_skpd FROM lap_dukcatpil;



DROP VIEW IF EXISTS view_tanah_108_halong;

CREATE VIEW view_tanah_108_halong AS

SELECT
*

FROM
view_tanah_108_kabupaten

WHERE
1 = 1  AND
id_skpd = 35;

GRANT ALL PRIVILEGES ON view_tanah_108_halong TO lap_halong;
REVOKE INSERT, UPDATE, DELETE ON view_tanah_108_halong FROM lap_halong;

GRANT ALL PRIVILEGES ON skpd, sub_skpd TO lap_halong;
REVOKE INSERT, UPDATE, DELETE ON skpd, sub_skpd FROM lap_halong;



DROP VIEW IF EXISTS view_tanah_108_inspektorat;

CREATE VIEW view_tanah_108_inspektorat AS

SELECT
*

FROM
view_tanah_108_kabupaten

WHERE
1 = 1  AND
id_skpd = 20;

GRANT ALL PRIVILEGES ON view_tanah_108_inspektorat TO lap_inspektorat;
REVOKE INSERT, UPDATE, DELETE ON view_tanah_108_inspektorat FROM lap_inspektorat;

GRANT ALL PRIVILEGES ON skpd, sub_skpd TO lap_inspektorat;
REVOKE INSERT, UPDATE, DELETE ON skpd, sub_skpd FROM lap_inspektorat;



DROP VIEW IF EXISTS view_tanah_108_juai;

CREATE VIEW view_tanah_108_juai AS

SELECT
*

FROM
view_tanah_108_kabupaten

WHERE
1 = 1  AND
id_skpd = 33;

GRANT ALL PRIVILEGES ON view_tanah_108_juai TO lap_juai;
REVOKE INSERT, UPDATE, DELETE ON view_tanah_108_juai FROM lap_juai;

GRANT ALL PRIVILEGES ON skpd, sub_skpd TO lap_juai;
REVOKE INSERT, UPDATE, DELETE ON skpd, sub_skpd FROM lap_juai;



DROP VIEW IF EXISTS view_tanah_108_kearsipan;

CREATE VIEW view_tanah_108_kearsipan AS

SELECT
*

FROM
view_tanah_108_kabupaten

WHERE
1 = 1  AND
id_skpd = 44;

GRANT ALL PRIVILEGES ON view_tanah_108_kearsipan TO lap_kearsipan;
REVOKE INSERT, UPDATE, DELETE ON view_tanah_108_kearsipan FROM lap_kearsipan;

GRANT ALL PRIVILEGES ON skpd, sub_skpd TO lap_kearsipan;
REVOKE INSERT, UPDATE, DELETE ON skpd, sub_skpd FROM lap_kearsipan;



DROP VIEW IF EXISTS view_tanah_108_kehutanan;

CREATE VIEW view_tanah_108_kehutanan AS

SELECT
*

FROM
view_tanah_108_kabupaten

WHERE
1 = 1  AND
id_skpd = 14;

GRANT ALL PRIVILEGES ON view_tanah_108_kehutanan TO lap_kehutanan;
REVOKE INSERT, UPDATE, DELETE ON view_tanah_108_kehutanan FROM lap_kehutanan;

GRANT ALL PRIVILEGES ON skpd, sub_skpd TO lap_kehutanan;
REVOKE INSERT, UPDATE, DELETE ON skpd, sub_skpd FROM lap_kehutanan;



DROP VIEW IF EXISTS view_tanah_108_kesbangpol;

CREATE VIEW view_tanah_108_kesbangpol AS

SELECT
*

FROM
view_tanah_108_kabupaten

WHERE
1 = 1  AND
id_skpd = 24;

GRANT ALL PRIVILEGES ON view_tanah_108_kesbangpol TO lap_kesbangpol;
REVOKE INSERT, UPDATE, DELETE ON view_tanah_108_kesbangpol FROM lap_kesbangpol;

GRANT ALL PRIVILEGES ON skpd, sub_skpd TO lap_kesbangpol;
REVOKE INSERT, UPDATE, DELETE ON skpd, sub_skpd FROM lap_kesbangpol;



DROP VIEW IF EXISTS view_tanah_108_kominfo;

CREATE VIEW view_tanah_108_kominfo AS

SELECT
*

FROM
view_tanah_108_kabupaten

WHERE
1 = 1  AND
id_skpd = 43;

GRANT ALL PRIVILEGES ON view_tanah_108_kominfo TO lap_kominfo;
REVOKE INSERT, UPDATE, DELETE ON view_tanah_108_kominfo FROM lap_kominfo;

GRANT ALL PRIVILEGES ON skpd, sub_skpd TO lap_kominfo;
REVOKE INSERT, UPDATE, DELETE ON skpd, sub_skpd FROM lap_kominfo;



DROP VIEW IF EXISTS view_tanah_108_korpri;

CREATE VIEW view_tanah_108_korpri AS

SELECT
*

FROM
view_tanah_108_kabupaten

WHERE
1 = 1  AND
id_skpd = 27;

GRANT ALL PRIVILEGES ON view_tanah_108_korpri TO lap_korpri;
REVOKE INSERT, UPDATE, DELETE ON view_tanah_108_korpri FROM lap_korpri;

GRANT ALL PRIVILEGES ON skpd, sub_skpd TO lap_korpri;
REVOKE INSERT, UPDATE, DELETE ON skpd, sub_skpd FROM lap_korpri;



DROP VIEW IF EXISTS view_tanah_108_lampihong;

CREATE VIEW view_tanah_108_lampihong AS

SELECT
*

FROM
view_tanah_108_kabupaten

WHERE
1 = 1  AND
id_skpd = 31;

GRANT ALL PRIVILEGES ON view_tanah_108_lampihong TO lap_lampihong;
REVOKE INSERT, UPDATE, DELETE ON view_tanah_108_lampihong FROM lap_lampihong;

GRANT ALL PRIVILEGES ON skpd, sub_skpd TO lap_lampihong;
REVOKE INSERT, UPDATE, DELETE ON skpd, sub_skpd FROM lap_lampihong;



DROP VIEW IF EXISTS view_tanah_108_paringin;

CREATE VIEW view_tanah_108_paringin AS

SELECT
*

FROM
view_tanah_108_kabupaten

WHERE
1 = 1  AND
id_skpd = 28;

GRANT ALL PRIVILEGES ON view_tanah_108_paringin TO lap_paringin;
REVOKE INSERT, UPDATE, DELETE ON view_tanah_108_paringin FROM lap_paringin;

GRANT ALL PRIVILEGES ON skpd, sub_skpd TO lap_paringin;
REVOKE INSERT, UPDATE, DELETE ON skpd, sub_skpd FROM lap_paringin;



DROP VIEW IF EXISTS view_tanah_108_paringinkota;

CREATE VIEW view_tanah_108_paringinkota AS

SELECT
*

FROM
view_tanah_108_kabupaten

WHERE
1 = 1  AND
id_skpd = 29;

GRANT ALL PRIVILEGES ON view_tanah_108_paringinkota TO lap_paringinkota;
REVOKE INSERT, UPDATE, DELETE ON view_tanah_108_paringinkota FROM lap_paringinkota;

GRANT ALL PRIVILEGES ON skpd, sub_skpd TO lap_paringinkota;
REVOKE INSERT, UPDATE, DELETE ON skpd, sub_skpd FROM lap_paringinkota;



DROP VIEW IF EXISTS view_tanah_108_paringinselatan;

CREATE VIEW view_tanah_108_paringinselatan AS

SELECT
*

FROM
view_tanah_108_kabupaten

WHERE
1 = 1  AND
id_skpd = 36;

GRANT ALL PRIVILEGES ON view_tanah_108_paringinselatan TO lap_paringinselatan;
REVOKE INSERT, UPDATE, DELETE ON view_tanah_108_paringinselatan FROM lap_paringinselatan;

GRANT ALL PRIVILEGES ON skpd, sub_skpd TO lap_paringinselatan;
REVOKE INSERT, UPDATE, DELETE ON skpd, sub_skpd FROM lap_paringinselatan;



DROP VIEW IF EXISTS view_tanah_108_paringintimur;

CREATE VIEW view_tanah_108_paringintimur AS

SELECT
*

FROM
view_tanah_108_kabupaten

WHERE
1 = 1  AND
id_skpd = 30;

GRANT ALL PRIVILEGES ON view_tanah_108_paringintimur TO lap_paringintimur;
REVOKE INSERT, UPDATE, DELETE ON view_tanah_108_paringintimur FROM lap_paringintimur;

GRANT ALL PRIVILEGES ON skpd, sub_skpd TO lap_paringintimur;
REVOKE INSERT, UPDATE, DELETE ON skpd, sub_skpd FROM lap_paringintimur;



DROP VIEW IF EXISTS view_tanah_108_pariwisata;

CREATE VIEW view_tanah_108_pariwisata AS

SELECT
*

FROM
view_tanah_108_kabupaten

WHERE
1 = 1  AND
id_skpd = 46;

GRANT ALL PRIVILEGES ON view_tanah_108_pariwisata TO lap_pariwisata;
REVOKE INSERT, UPDATE, DELETE ON view_tanah_108_pariwisata FROM lap_pariwisata;

GRANT ALL PRIVILEGES ON skpd, sub_skpd TO lap_pariwisata;
REVOKE INSERT, UPDATE, DELETE ON skpd, sub_skpd FROM lap_pariwisata;



DROP VIEW IF EXISTS view_tanah_108_perdagangan;

CREATE VIEW view_tanah_108_perdagangan AS

SELECT
*

FROM
view_tanah_108_kabupaten

WHERE
1 = 1  AND
id_skpd = 47;

GRANT ALL PRIVILEGES ON view_tanah_108_perdagangan TO lap_perdagangan;
REVOKE INSERT, UPDATE, DELETE ON view_tanah_108_perdagangan FROM lap_perdagangan;

GRANT ALL PRIVILEGES ON skpd, sub_skpd TO lap_perdagangan;
REVOKE INSERT, UPDATE, DELETE ON skpd, sub_skpd FROM lap_perdagangan;



DROP VIEW IF EXISTS view_tanah_108_perikanan;

CREATE VIEW view_tanah_108_perikanan AS

SELECT
*

FROM
view_tanah_108_kabupaten

WHERE
1 = 1  AND
id_skpd = 45;

GRANT ALL PRIVILEGES ON view_tanah_108_perikanan TO lap_perikanan;
REVOKE INSERT, UPDATE, DELETE ON view_tanah_108_perikanan FROM lap_perikanan;

GRANT ALL PRIVILEGES ON skpd, sub_skpd TO lap_perikanan;
REVOKE INSERT, UPDATE, DELETE ON skpd, sub_skpd FROM lap_perikanan;



DROP VIEW IF EXISTS view_tanah_108_perpustakaan;

CREATE VIEW view_tanah_108_perpustakaan AS

SELECT
*

FROM
view_tanah_108_kabupaten

WHERE
1 = 1  AND
id_skpd = 8;

GRANT ALL PRIVILEGES ON view_tanah_108_perpustakaan TO lap_perpustakaan;
REVOKE INSERT, UPDATE, DELETE ON view_tanah_108_perpustakaan FROM lap_perpustakaan;

GRANT ALL PRIVILEGES ON skpd, sub_skpd TO lap_perpustakaan;
REVOKE INSERT, UPDATE, DELETE ON skpd, sub_skpd FROM lap_perpustakaan;



DROP VIEW IF EXISTS view_tanah_108_pertanian;

CREATE VIEW view_tanah_108_pertanian AS

SELECT
*

FROM
view_tanah_108_kabupaten

WHERE
1 = 1  AND
id_skpd = 13;

GRANT ALL PRIVILEGES ON view_tanah_108_pertanian TO lap_pertanian;
REVOKE INSERT, UPDATE, DELETE ON view_tanah_108_pertanian FROM lap_pertanian;

GRANT ALL PRIVILEGES ON skpd, sub_skpd TO lap_pertanian;
REVOKE INSERT, UPDATE, DELETE ON skpd, sub_skpd FROM lap_pertanian;



DROP VIEW IF EXISTS view_tanah_108_rsud;

CREATE VIEW view_tanah_108_rsud AS

SELECT
*

FROM
view_tanah_108_kabupaten

WHERE
1 = 1  AND
id_skpd = 6;

GRANT ALL PRIVILEGES ON view_tanah_108_rsud TO lap_rsud;
REVOKE INSERT, UPDATE, DELETE ON view_tanah_108_rsud FROM lap_rsud;

GRANT ALL PRIVILEGES ON skpd, sub_skpd TO lap_rsud;
REVOKE INSERT, UPDATE, DELETE ON skpd, sub_skpd FROM lap_rsud;



DROP VIEW IF EXISTS view_tanah_108_satpolpp;

CREATE VIEW view_tanah_108_satpolpp AS

SELECT
*

FROM
view_tanah_108_kabupaten

WHERE
1 = 1  AND
id_skpd = 25;

GRANT ALL PRIVILEGES ON view_tanah_108_satpolpp TO lap_satpolpp;
REVOKE INSERT, UPDATE, DELETE ON view_tanah_108_satpolpp FROM lap_satpolpp;

GRANT ALL PRIVILEGES ON skpd, sub_skpd TO lap_satpolpp;
REVOKE INSERT, UPDATE, DELETE ON skpd, sub_skpd FROM lap_satpolpp;



DROP VIEW IF EXISTS view_tanah_108_setda;

CREATE VIEW view_tanah_108_setda AS

SELECT
*

FROM
view_tanah_108_kabupaten

WHERE
1 = 1  AND
id_skpd = 2;

GRANT ALL PRIVILEGES ON view_tanah_108_setda TO lap_setda;
REVOKE INSERT, UPDATE, DELETE ON view_tanah_108_setda FROM lap_setda;

GRANT ALL PRIVILEGES ON skpd, sub_skpd TO lap_setda;
REVOKE INSERT, UPDATE, DELETE ON skpd, sub_skpd FROM lap_setda;



DROP VIEW IF EXISTS view_tanah_108_setwan;

CREATE VIEW view_tanah_108_setwan AS

SELECT
*

FROM
view_tanah_108_kabupaten

WHERE
1 = 1  AND
id_skpd = 1;

GRANT ALL PRIVILEGES ON view_tanah_108_setwan TO lap_setwan;
REVOKE INSERT, UPDATE, DELETE ON view_tanah_108_setwan FROM lap_setwan;

GRANT ALL PRIVILEGES ON skpd, sub_skpd TO lap_setwan;
REVOKE INSERT, UPDATE, DELETE ON skpd, sub_skpd FROM lap_setwan;



DROP VIEW IF EXISTS view_tanah_108_sosial;

CREATE VIEW view_tanah_108_sosial AS

SELECT
*

FROM
view_tanah_108_kabupaten

WHERE
1 = 1  AND
id_skpd = 9;

GRANT ALL PRIVILEGES ON view_tanah_108_sosial TO lap_sosial;
REVOKE INSERT, UPDATE, DELETE ON view_tanah_108_sosial FROM lap_sosial;

GRANT ALL PRIVILEGES ON skpd, sub_skpd TO lap_sosial;
REVOKE INSERT, UPDATE, DELETE ON skpd, sub_skpd FROM lap_sosial;



DROP VIEW IF EXISTS view_tanah_108_tebingtinggi;

CREATE VIEW view_tanah_108_tebingtinggi AS

SELECT
*

FROM
view_tanah_108_kabupaten

WHERE
1 = 1  AND
id_skpd = 38;

GRANT ALL PRIVILEGES ON view_tanah_108_tebingtinggi TO lap_tebingtinggi;
REVOKE INSERT, UPDATE, DELETE ON view_tanah_108_tebingtinggi FROM lap_tebingtinggi;

GRANT ALL PRIVILEGES ON skpd, sub_skpd TO lap_tebingtinggi;
REVOKE INSERT, UPDATE, DELETE ON skpd, sub_skpd FROM lap_tebingtinggi;



