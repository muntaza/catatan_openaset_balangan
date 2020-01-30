CREATE OR REPLACE VIEW view_atl_108_kabupaten AS

SELECT
atl.id_sub_skpd,

sub_skpd.nama_sub_skpd,
sub_skpd.id_skpd,

skpd.nama_skpd,
skpd.id_lokasi_bidang,

lokasi_bidang.nama_lokasi_bidang,
lokasi_bidang.id_kabupaten,

kabupaten.nama_kabupaten,
kabupaten.id_provinsi,

provinsi.nama_provinsi,

atl.id_mutasi_berkurang,
mutasi_berkurang.mutasi_berkurang,

keadaan_barang.keadaan_barang,
satuan_barang.satuan_barang,
golongan_barang.golongan_barang,

atl.nama_barang,
LEFT(kode_barang_108.kode_barang_108, 18) kode_barang_108,
atl.id register,

atl.judul_pencipta_buku,
atl.spesifikasi_buku,

atl.asal_daerah_barang_seni,
atl.pencipta_barang_seni,
atl.bahan_barang_seni,

atl.jenis_hewan_tumbuhan,
atl.ukuran_hewan_tumbuhan,

atl.tahun,

array_to_string(array_unique(array_agg(asal_usul.asal_usul)), ', ') asal_usul,
SUM(harga_atl.harga_bertambah) - SUM(harga_atl.harga_berkurang) harga,
atl.keterangan


FROM
atl as atl, harga_atl as harga_atl, kode_barang_108,
mutasi_berkurang, asal_usul, keadaan_barang, satuan_barang, golongan_barang,
sub_skpd, skpd, lokasi_bidang, kabupaten, provinsi


WHERE
1 = 1  AND
harga_atl.id_atl = atl.id AND
harga_atl.id_asal_usul = asal_usul.id AND

atl.id_kode_barang_108 = kode_barang_108.id AND
atl.id_mutasi_berkurang = mutasi_berkurang.id AND

atl.id_keadaan_barang = keadaan_barang.id AND
atl.id_satuan_barang = satuan_barang.id AND
atl.id_golongan_barang = golongan_barang.id AND

atl.id_sub_skpd = sub_skpd.id AND
sub_skpd.id_skpd = skpd.id AND
skpd.id_lokasi_bidang = lokasi_bidang.id AND
lokasi_bidang.id_kabupaten = kabupaten.id AND
kabupaten.id_provinsi = provinsi.id


GROUP BY
atl.id_sub_skpd,
sub_skpd.nama_sub_skpd,
sub_skpd.id_skpd,
skpd.nama_skpd,
skpd.id_lokasi_bidang,
lokasi_bidang.nama_lokasi_bidang,
lokasi_bidang.id_kabupaten,
kabupaten.nama_kabupaten,
kabupaten.id_provinsi,
provinsi.nama_provinsi,
atl.id_mutasi_berkurang,
mutasi_berkurang.mutasi_berkurang,
keadaan_barang.keadaan_barang,
satuan_barang.satuan_barang,
golongan_barang.golongan_barang,
atl.nama_barang,
kode_barang_108,
register,

atl.judul_pencipta_buku,
atl.spesifikasi_buku,

atl.asal_daerah_barang_seni,
atl.pencipta_barang_seni,
atl.bahan_barang_seni,

atl.jenis_hewan_tumbuhan,
atl.ukuran_hewan_tumbuhan,

atl.tahun,
atl.keterangan

ORDER BY id_skpd, kode_barang_108;




GRANT ALL PRIVILEGES ON view_atl_108_kabupaten TO lap_kabupaten;
REVOKE INSERT, UPDATE, DELETE ON view_atl_108_kabupaten FROM lap_kabupaten;
CREATE OR REPLACE VIEW view_atl_108_awayan AS

SELECT
*

FROM
view_atl_108_kabupaten

WHERE
1 = 1  AND
id_skpd = 34;

GRANT ALL PRIVILEGES ON view_atl_108_awayan TO lap_awayan;
REVOKE INSERT, UPDATE, DELETE ON view_atl_108_awayan FROM lap_awayan;

GRANT ALL PRIVILEGES ON skpd, sub_skpd TO lap_awayan;
REVOKE INSERT, UPDATE, DELETE ON skpd, sub_skpd FROM lap_awayan;



CREATE OR REPLACE VIEW view_atl_108_bappeda AS

SELECT
*

FROM
view_atl_108_kabupaten

WHERE
1 = 1  AND
id_skpd = 21;

GRANT ALL PRIVILEGES ON view_atl_108_bappeda TO lap_bappeda;
REVOKE INSERT, UPDATE, DELETE ON view_atl_108_bappeda FROM lap_bappeda;

GRANT ALL PRIVILEGES ON skpd, sub_skpd TO lap_bappeda;
REVOKE INSERT, UPDATE, DELETE ON skpd, sub_skpd FROM lap_bappeda;



CREATE OR REPLACE VIEW view_atl_108_batumandi AS

SELECT
*

FROM
view_atl_108_kabupaten

WHERE
1 = 1  AND
id_skpd = 32;

GRANT ALL PRIVILEGES ON view_atl_108_batumandi TO lap_batumandi;
REVOKE INSERT, UPDATE, DELETE ON view_atl_108_batumandi FROM lap_batumandi;

GRANT ALL PRIVILEGES ON skpd, sub_skpd TO lap_batumandi;
REVOKE INSERT, UPDATE, DELETE ON skpd, sub_skpd FROM lap_batumandi;



CREATE OR REPLACE VIEW view_atl_108_batupiring AS

SELECT
*

FROM
view_atl_108_kabupaten

WHERE
1 = 1  AND
id_skpd = 37;

GRANT ALL PRIVILEGES ON view_atl_108_batupiring TO lap_batupiring;
REVOKE INSERT, UPDATE, DELETE ON view_atl_108_batupiring FROM lap_batupiring;

GRANT ALL PRIVILEGES ON skpd, sub_skpd TO lap_batupiring;
REVOKE INSERT, UPDATE, DELETE ON skpd, sub_skpd FROM lap_batupiring;



CREATE OR REPLACE VIEW view_atl_108_bkd AS

SELECT
*

FROM
view_atl_108_kabupaten

WHERE
1 = 1  AND
id_skpd = 19;

GRANT ALL PRIVILEGES ON view_atl_108_bkd TO lap_bkd;
REVOKE INSERT, UPDATE, DELETE ON view_atl_108_bkd FROM lap_bkd;

GRANT ALL PRIVILEGES ON skpd, sub_skpd TO lap_bkd;
REVOKE INSERT, UPDATE, DELETE ON skpd, sub_skpd FROM lap_bkd;



CREATE OR REPLACE VIEW view_atl_108_bkppd AS

SELECT
*

FROM
view_atl_108_kabupaten

WHERE
1 = 1  AND
id_skpd = 26;

GRANT ALL PRIVILEGES ON view_atl_108_bkppd TO lap_bkppd;
REVOKE INSERT, UPDATE, DELETE ON view_atl_108_bkppd FROM lap_bkppd;

GRANT ALL PRIVILEGES ON skpd, sub_skpd TO lap_bkppd;
REVOKE INSERT, UPDATE, DELETE ON skpd, sub_skpd FROM lap_bkppd;



CREATE OR REPLACE VIEW view_atl_108_bpbd AS

SELECT
*

FROM
view_atl_108_kabupaten

WHERE
1 = 1  AND
id_skpd = 39;

GRANT ALL PRIVILEGES ON view_atl_108_bpbd TO lap_bpbd;
REVOKE INSERT, UPDATE, DELETE ON view_atl_108_bpbd FROM lap_bpbd;

GRANT ALL PRIVILEGES ON skpd, sub_skpd TO lap_bpbd;
REVOKE INSERT, UPDATE, DELETE ON skpd, sub_skpd FROM lap_bpbd;



CREATE OR REPLACE VIEW view_atl_108_bppd AS

SELECT
*

FROM
view_atl_108_kabupaten

WHERE
1 = 1  AND
id_skpd = 48;

GRANT ALL PRIVILEGES ON view_atl_108_bppd TO lap_bppd;
REVOKE INSERT, UPDATE, DELETE ON view_atl_108_bppd FROM lap_bppd;

GRANT ALL PRIVILEGES ON skpd, sub_skpd TO lap_bppd;
REVOKE INSERT, UPDATE, DELETE ON skpd, sub_skpd FROM lap_bppd;



CREATE OR REPLACE VIEW view_atl_108_dinkes AS

SELECT
*

FROM
view_atl_108_kabupaten

WHERE
1 = 1  AND
id_skpd = 5;

GRANT ALL PRIVILEGES ON view_atl_108_dinkes TO lap_dinkes;
REVOKE INSERT, UPDATE, DELETE ON view_atl_108_dinkes FROM lap_dinkes;

GRANT ALL PRIVILEGES ON skpd, sub_skpd TO lap_dinkes;
REVOKE INSERT, UPDATE, DELETE ON skpd, sub_skpd FROM lap_dinkes;



CREATE OR REPLACE VIEW view_atl_108_disdik AS

SELECT
*

FROM
view_atl_108_kabupaten

WHERE
1 = 1  AND
id_skpd = 7;

GRANT ALL PRIVILEGES ON view_atl_108_disdik TO lap_disdik;
REVOKE INSERT, UPDATE, DELETE ON view_atl_108_disdik FROM lap_disdik;

GRANT ALL PRIVILEGES ON skpd, sub_skpd TO lap_disdik;
REVOKE INSERT, UPDATE, DELETE ON skpd, sub_skpd FROM lap_disdik;



CREATE OR REPLACE VIEW view_atl_108_dishub AS

SELECT
*

FROM
view_atl_108_kabupaten

WHERE
1 = 1  AND
id_skpd = 4;

GRANT ALL PRIVILEGES ON view_atl_108_dishub TO lap_dishub;
REVOKE INSERT, UPDATE, DELETE ON view_atl_108_dishub FROM lap_dishub;

GRANT ALL PRIVILEGES ON skpd, sub_skpd TO lap_dishub;
REVOKE INSERT, UPDATE, DELETE ON skpd, sub_skpd FROM lap_dishub;



CREATE OR REPLACE VIEW view_atl_108_disnakertrans AS

SELECT
*

FROM
view_atl_108_kabupaten

WHERE
1 = 1  AND
id_skpd = 41;

GRANT ALL PRIVILEGES ON view_atl_108_disnakertrans TO lap_disnakertrans;
REVOKE INSERT, UPDATE, DELETE ON view_atl_108_disnakertrans FROM lap_disnakertrans;

GRANT ALL PRIVILEGES ON skpd, sub_skpd TO lap_disnakertrans;
REVOKE INSERT, UPDATE, DELETE ON skpd, sub_skpd FROM lap_disnakertrans;



CREATE OR REPLACE VIEW view_atl_108_distamben AS

SELECT
*

FROM
view_atl_108_kabupaten

WHERE
1 = 1  AND
id_skpd = 17;

GRANT ALL PRIVILEGES ON view_atl_108_distamben TO lap_distamben;
REVOKE INSERT, UPDATE, DELETE ON view_atl_108_distamben FROM lap_distamben;

GRANT ALL PRIVILEGES ON skpd, sub_skpd TO lap_distamben;
REVOKE INSERT, UPDATE, DELETE ON skpd, sub_skpd FROM lap_distamben;



CREATE OR REPLACE VIEW view_atl_108_dko AS

SELECT
*

FROM
view_atl_108_kabupaten

WHERE
1 = 1  AND
id_skpd = 23;

GRANT ALL PRIVILEGES ON view_atl_108_dko TO lap_dko;
REVOKE INSERT, UPDATE, DELETE ON view_atl_108_dko FROM lap_dko;

GRANT ALL PRIVILEGES ON skpd, sub_skpd TO lap_dko;
REVOKE INSERT, UPDATE, DELETE ON skpd, sub_skpd FROM lap_dko;



CREATE OR REPLACE VIEW view_atl_108_dkp AS

SELECT
*

FROM
view_atl_108_kabupaten

WHERE
1 = 1  AND
id_skpd = 15;

GRANT ALL PRIVILEGES ON view_atl_108_dkp TO lap_dkp;
REVOKE INSERT, UPDATE, DELETE ON view_atl_108_dkp FROM lap_dkp;

GRANT ALL PRIVILEGES ON skpd, sub_skpd TO lap_dkp;
REVOKE INSERT, UPDATE, DELETE ON skpd, sub_skpd FROM lap_dkp;



CREATE OR REPLACE VIEW view_atl_108_dkukmp AS

SELECT
*

FROM
view_atl_108_kabupaten

WHERE
1 = 1  AND
id_skpd = 16;

GRANT ALL PRIVILEGES ON view_atl_108_dkukmp TO lap_dkukmp;
REVOKE INSERT, UPDATE, DELETE ON view_atl_108_dkukmp FROM lap_dkukmp;

GRANT ALL PRIVILEGES ON skpd, sub_skpd TO lap_dkukmp;
REVOKE INSERT, UPDATE, DELETE ON skpd, sub_skpd FROM lap_dkukmp;



CREATE OR REPLACE VIEW view_atl_108_dlh AS

SELECT
*

FROM
view_atl_108_kabupaten

WHERE
1 = 1  AND
id_skpd = 22;

GRANT ALL PRIVILEGES ON view_atl_108_dlh TO lap_dlh;
REVOKE INSERT, UPDATE, DELETE ON view_atl_108_dlh FROM lap_dlh;

GRANT ALL PRIVILEGES ON skpd, sub_skpd TO lap_dlh;
REVOKE INSERT, UPDATE, DELETE ON skpd, sub_skpd FROM lap_dlh;



CREATE OR REPLACE VIEW view_atl_108_dpkp AS

SELECT
*

FROM
view_atl_108_kabupaten

WHERE
1 = 1  AND
id_skpd = 40;

GRANT ALL PRIVILEGES ON view_atl_108_dpkp TO lap_dpkp;
REVOKE INSERT, UPDATE, DELETE ON view_atl_108_dpkp FROM lap_dpkp;

GRANT ALL PRIVILEGES ON skpd, sub_skpd TO lap_dpkp;
REVOKE INSERT, UPDATE, DELETE ON skpd, sub_skpd FROM lap_dpkp;



CREATE OR REPLACE VIEW view_atl_108_dpmd AS

SELECT
*

FROM
view_atl_108_kabupaten

WHERE
1 = 1  AND
id_skpd = 10;

GRANT ALL PRIVILEGES ON view_atl_108_dpmd TO lap_dpmd;
REVOKE INSERT, UPDATE, DELETE ON view_atl_108_dpmd FROM lap_dpmd;

GRANT ALL PRIVILEGES ON skpd, sub_skpd TO lap_dpmd;
REVOKE INSERT, UPDATE, DELETE ON skpd, sub_skpd FROM lap_dpmd;



CREATE OR REPLACE VIEW view_atl_108_dpmptsp AS

SELECT
*

FROM
view_atl_108_kabupaten

WHERE
1 = 1  AND
id_skpd = 18;

GRANT ALL PRIVILEGES ON view_atl_108_dpmptsp TO lap_dpmptsp;
REVOKE INSERT, UPDATE, DELETE ON view_atl_108_dpmptsp FROM lap_dpmptsp;

GRANT ALL PRIVILEGES ON skpd, sub_skpd TO lap_dpmptsp;
REVOKE INSERT, UPDATE, DELETE ON skpd, sub_skpd FROM lap_dpmptsp;



CREATE OR REPLACE VIEW view_atl_108_dppkb AS

SELECT
*

FROM
view_atl_108_kabupaten

WHERE
1 = 1  AND
id_skpd = 42;

GRANT ALL PRIVILEGES ON view_atl_108_dppkb TO lap_dppkb;
REVOKE INSERT, UPDATE, DELETE ON view_atl_108_dppkb FROM lap_dppkb;

GRANT ALL PRIVILEGES ON skpd, sub_skpd TO lap_dppkb;
REVOKE INSERT, UPDATE, DELETE ON skpd, sub_skpd FROM lap_dppkb;



CREATE OR REPLACE VIEW view_atl_108_dpppa AS

SELECT
*

FROM
view_atl_108_kabupaten

WHERE
1 = 1  AND
id_skpd = 11;

GRANT ALL PRIVILEGES ON view_atl_108_dpppa TO lap_dpppa;
REVOKE INSERT, UPDATE, DELETE ON view_atl_108_dpppa FROM lap_dpppa;

GRANT ALL PRIVILEGES ON skpd, sub_skpd TO lap_dpppa;
REVOKE INSERT, UPDATE, DELETE ON skpd, sub_skpd FROM lap_dpppa;



CREATE OR REPLACE VIEW view_atl_108_dpupr AS

SELECT
*

FROM
view_atl_108_kabupaten

WHERE
1 = 1  AND
id_skpd = 3;

GRANT ALL PRIVILEGES ON view_atl_108_dpupr TO lap_dpupr;
REVOKE INSERT, UPDATE, DELETE ON view_atl_108_dpupr FROM lap_dpupr;

GRANT ALL PRIVILEGES ON skpd, sub_skpd TO lap_dpupr;
REVOKE INSERT, UPDATE, DELETE ON skpd, sub_skpd FROM lap_dpupr;



CREATE OR REPLACE VIEW view_atl_108_dukcatpil AS

SELECT
*

FROM
view_atl_108_kabupaten

WHERE
1 = 1  AND
id_skpd = 12;

GRANT ALL PRIVILEGES ON view_atl_108_dukcatpil TO lap_dukcatpil;
REVOKE INSERT, UPDATE, DELETE ON view_atl_108_dukcatpil FROM lap_dukcatpil;

GRANT ALL PRIVILEGES ON skpd, sub_skpd TO lap_dukcatpil;
REVOKE INSERT, UPDATE, DELETE ON skpd, sub_skpd FROM lap_dukcatpil;



CREATE OR REPLACE VIEW view_atl_108_halong AS

SELECT
*

FROM
view_atl_108_kabupaten

WHERE
1 = 1  AND
id_skpd = 35;

GRANT ALL PRIVILEGES ON view_atl_108_halong TO lap_halong;
REVOKE INSERT, UPDATE, DELETE ON view_atl_108_halong FROM lap_halong;

GRANT ALL PRIVILEGES ON skpd, sub_skpd TO lap_halong;
REVOKE INSERT, UPDATE, DELETE ON skpd, sub_skpd FROM lap_halong;



CREATE OR REPLACE VIEW view_atl_108_inspektorat AS

SELECT
*

FROM
view_atl_108_kabupaten

WHERE
1 = 1  AND
id_skpd = 20;

GRANT ALL PRIVILEGES ON view_atl_108_inspektorat TO lap_inspektorat;
REVOKE INSERT, UPDATE, DELETE ON view_atl_108_inspektorat FROM lap_inspektorat;

GRANT ALL PRIVILEGES ON skpd, sub_skpd TO lap_inspektorat;
REVOKE INSERT, UPDATE, DELETE ON skpd, sub_skpd FROM lap_inspektorat;



CREATE OR REPLACE VIEW view_atl_108_juai AS

SELECT
*

FROM
view_atl_108_kabupaten

WHERE
1 = 1  AND
id_skpd = 33;

GRANT ALL PRIVILEGES ON view_atl_108_juai TO lap_juai;
REVOKE INSERT, UPDATE, DELETE ON view_atl_108_juai FROM lap_juai;

GRANT ALL PRIVILEGES ON skpd, sub_skpd TO lap_juai;
REVOKE INSERT, UPDATE, DELETE ON skpd, sub_skpd FROM lap_juai;



CREATE OR REPLACE VIEW view_atl_108_kearsipan AS

SELECT
*

FROM
view_atl_108_kabupaten

WHERE
1 = 1  AND
id_skpd = 44;

GRANT ALL PRIVILEGES ON view_atl_108_kearsipan TO lap_kearsipan;
REVOKE INSERT, UPDATE, DELETE ON view_atl_108_kearsipan FROM lap_kearsipan;

GRANT ALL PRIVILEGES ON skpd, sub_skpd TO lap_kearsipan;
REVOKE INSERT, UPDATE, DELETE ON skpd, sub_skpd FROM lap_kearsipan;



CREATE OR REPLACE VIEW view_atl_108_kehutanan AS

SELECT
*

FROM
view_atl_108_kabupaten

WHERE
1 = 1  AND
id_skpd = 14;

GRANT ALL PRIVILEGES ON view_atl_108_kehutanan TO lap_kehutanan;
REVOKE INSERT, UPDATE, DELETE ON view_atl_108_kehutanan FROM lap_kehutanan;

GRANT ALL PRIVILEGES ON skpd, sub_skpd TO lap_kehutanan;
REVOKE INSERT, UPDATE, DELETE ON skpd, sub_skpd FROM lap_kehutanan;



CREATE OR REPLACE VIEW view_atl_108_kesbangpol AS

SELECT
*

FROM
view_atl_108_kabupaten

WHERE
1 = 1  AND
id_skpd = 24;

GRANT ALL PRIVILEGES ON view_atl_108_kesbangpol TO lap_kesbangpol;
REVOKE INSERT, UPDATE, DELETE ON view_atl_108_kesbangpol FROM lap_kesbangpol;

GRANT ALL PRIVILEGES ON skpd, sub_skpd TO lap_kesbangpol;
REVOKE INSERT, UPDATE, DELETE ON skpd, sub_skpd FROM lap_kesbangpol;



CREATE OR REPLACE VIEW view_atl_108_kominfo AS

SELECT
*

FROM
view_atl_108_kabupaten

WHERE
1 = 1  AND
id_skpd = 43;

GRANT ALL PRIVILEGES ON view_atl_108_kominfo TO lap_kominfo;
REVOKE INSERT, UPDATE, DELETE ON view_atl_108_kominfo FROM lap_kominfo;

GRANT ALL PRIVILEGES ON skpd, sub_skpd TO lap_kominfo;
REVOKE INSERT, UPDATE, DELETE ON skpd, sub_skpd FROM lap_kominfo;



CREATE OR REPLACE VIEW view_atl_108_korpri AS

SELECT
*

FROM
view_atl_108_kabupaten

WHERE
1 = 1  AND
id_skpd = 27;

GRANT ALL PRIVILEGES ON view_atl_108_korpri TO lap_korpri;
REVOKE INSERT, UPDATE, DELETE ON view_atl_108_korpri FROM lap_korpri;

GRANT ALL PRIVILEGES ON skpd, sub_skpd TO lap_korpri;
REVOKE INSERT, UPDATE, DELETE ON skpd, sub_skpd FROM lap_korpri;



CREATE OR REPLACE VIEW view_atl_108_lampihong AS

SELECT
*

FROM
view_atl_108_kabupaten

WHERE
1 = 1  AND
id_skpd = 31;

GRANT ALL PRIVILEGES ON view_atl_108_lampihong TO lap_lampihong;
REVOKE INSERT, UPDATE, DELETE ON view_atl_108_lampihong FROM lap_lampihong;

GRANT ALL PRIVILEGES ON skpd, sub_skpd TO lap_lampihong;
REVOKE INSERT, UPDATE, DELETE ON skpd, sub_skpd FROM lap_lampihong;



CREATE OR REPLACE VIEW view_atl_108_paringin AS

SELECT
*

FROM
view_atl_108_kabupaten

WHERE
1 = 1  AND
id_skpd = 28;

GRANT ALL PRIVILEGES ON view_atl_108_paringin TO lap_paringin;
REVOKE INSERT, UPDATE, DELETE ON view_atl_108_paringin FROM lap_paringin;

GRANT ALL PRIVILEGES ON skpd, sub_skpd TO lap_paringin;
REVOKE INSERT, UPDATE, DELETE ON skpd, sub_skpd FROM lap_paringin;



CREATE OR REPLACE VIEW view_atl_108_paringinkota AS

SELECT
*

FROM
view_atl_108_kabupaten

WHERE
1 = 1  AND
id_skpd = 29;

GRANT ALL PRIVILEGES ON view_atl_108_paringinkota TO lap_paringinkota;
REVOKE INSERT, UPDATE, DELETE ON view_atl_108_paringinkota FROM lap_paringinkota;

GRANT ALL PRIVILEGES ON skpd, sub_skpd TO lap_paringinkota;
REVOKE INSERT, UPDATE, DELETE ON skpd, sub_skpd FROM lap_paringinkota;



CREATE OR REPLACE VIEW view_atl_108_paringinselatan AS

SELECT
*

FROM
view_atl_108_kabupaten

WHERE
1 = 1  AND
id_skpd = 36;

GRANT ALL PRIVILEGES ON view_atl_108_paringinselatan TO lap_paringinselatan;
REVOKE INSERT, UPDATE, DELETE ON view_atl_108_paringinselatan FROM lap_paringinselatan;

GRANT ALL PRIVILEGES ON skpd, sub_skpd TO lap_paringinselatan;
REVOKE INSERT, UPDATE, DELETE ON skpd, sub_skpd FROM lap_paringinselatan;



CREATE OR REPLACE VIEW view_atl_108_paringintimur AS

SELECT
*

FROM
view_atl_108_kabupaten

WHERE
1 = 1  AND
id_skpd = 30;

GRANT ALL PRIVILEGES ON view_atl_108_paringintimur TO lap_paringintimur;
REVOKE INSERT, UPDATE, DELETE ON view_atl_108_paringintimur FROM lap_paringintimur;

GRANT ALL PRIVILEGES ON skpd, sub_skpd TO lap_paringintimur;
REVOKE INSERT, UPDATE, DELETE ON skpd, sub_skpd FROM lap_paringintimur;



CREATE OR REPLACE VIEW view_atl_108_pariwisata AS

SELECT
*

FROM
view_atl_108_kabupaten

WHERE
1 = 1  AND
id_skpd = 46;

GRANT ALL PRIVILEGES ON view_atl_108_pariwisata TO lap_pariwisata;
REVOKE INSERT, UPDATE, DELETE ON view_atl_108_pariwisata FROM lap_pariwisata;

GRANT ALL PRIVILEGES ON skpd, sub_skpd TO lap_pariwisata;
REVOKE INSERT, UPDATE, DELETE ON skpd, sub_skpd FROM lap_pariwisata;



CREATE OR REPLACE VIEW view_atl_108_perdagangan AS

SELECT
*

FROM
view_atl_108_kabupaten

WHERE
1 = 1  AND
id_skpd = 47;

GRANT ALL PRIVILEGES ON view_atl_108_perdagangan TO lap_perdagangan;
REVOKE INSERT, UPDATE, DELETE ON view_atl_108_perdagangan FROM lap_perdagangan;

GRANT ALL PRIVILEGES ON skpd, sub_skpd TO lap_perdagangan;
REVOKE INSERT, UPDATE, DELETE ON skpd, sub_skpd FROM lap_perdagangan;



CREATE OR REPLACE VIEW view_atl_108_perikanan AS

SELECT
*

FROM
view_atl_108_kabupaten

WHERE
1 = 1  AND
id_skpd = 45;

GRANT ALL PRIVILEGES ON view_atl_108_perikanan TO lap_perikanan;
REVOKE INSERT, UPDATE, DELETE ON view_atl_108_perikanan FROM lap_perikanan;

GRANT ALL PRIVILEGES ON skpd, sub_skpd TO lap_perikanan;
REVOKE INSERT, UPDATE, DELETE ON skpd, sub_skpd FROM lap_perikanan;



CREATE OR REPLACE VIEW view_atl_108_perpustakaan AS

SELECT
*

FROM
view_atl_108_kabupaten

WHERE
1 = 1  AND
id_skpd = 8;

GRANT ALL PRIVILEGES ON view_atl_108_perpustakaan TO lap_perpustakaan;
REVOKE INSERT, UPDATE, DELETE ON view_atl_108_perpustakaan FROM lap_perpustakaan;

GRANT ALL PRIVILEGES ON skpd, sub_skpd TO lap_perpustakaan;
REVOKE INSERT, UPDATE, DELETE ON skpd, sub_skpd FROM lap_perpustakaan;



CREATE OR REPLACE VIEW view_atl_108_pertanian AS

SELECT
*

FROM
view_atl_108_kabupaten

WHERE
1 = 1  AND
id_skpd = 13;

GRANT ALL PRIVILEGES ON view_atl_108_pertanian TO lap_pertanian;
REVOKE INSERT, UPDATE, DELETE ON view_atl_108_pertanian FROM lap_pertanian;

GRANT ALL PRIVILEGES ON skpd, sub_skpd TO lap_pertanian;
REVOKE INSERT, UPDATE, DELETE ON skpd, sub_skpd FROM lap_pertanian;



CREATE OR REPLACE VIEW view_atl_108_rsud AS

SELECT
*

FROM
view_atl_108_kabupaten

WHERE
1 = 1  AND
id_skpd = 6;

GRANT ALL PRIVILEGES ON view_atl_108_rsud TO lap_rsud;
REVOKE INSERT, UPDATE, DELETE ON view_atl_108_rsud FROM lap_rsud;

GRANT ALL PRIVILEGES ON skpd, sub_skpd TO lap_rsud;
REVOKE INSERT, UPDATE, DELETE ON skpd, sub_skpd FROM lap_rsud;



CREATE OR REPLACE VIEW view_atl_108_satpolpp AS

SELECT
*

FROM
view_atl_108_kabupaten

WHERE
1 = 1  AND
id_skpd = 25;

GRANT ALL PRIVILEGES ON view_atl_108_satpolpp TO lap_satpolpp;
REVOKE INSERT, UPDATE, DELETE ON view_atl_108_satpolpp FROM lap_satpolpp;

GRANT ALL PRIVILEGES ON skpd, sub_skpd TO lap_satpolpp;
REVOKE INSERT, UPDATE, DELETE ON skpd, sub_skpd FROM lap_satpolpp;



CREATE OR REPLACE VIEW view_atl_108_setda AS

SELECT
*

FROM
view_atl_108_kabupaten

WHERE
1 = 1  AND
id_skpd = 2;

GRANT ALL PRIVILEGES ON view_atl_108_setda TO lap_setda;
REVOKE INSERT, UPDATE, DELETE ON view_atl_108_setda FROM lap_setda;

GRANT ALL PRIVILEGES ON skpd, sub_skpd TO lap_setda;
REVOKE INSERT, UPDATE, DELETE ON skpd, sub_skpd FROM lap_setda;



CREATE OR REPLACE VIEW view_atl_108_setwan AS

SELECT
*

FROM
view_atl_108_kabupaten

WHERE
1 = 1  AND
id_skpd = 1;

GRANT ALL PRIVILEGES ON view_atl_108_setwan TO lap_setwan;
REVOKE INSERT, UPDATE, DELETE ON view_atl_108_setwan FROM lap_setwan;

GRANT ALL PRIVILEGES ON skpd, sub_skpd TO lap_setwan;
REVOKE INSERT, UPDATE, DELETE ON skpd, sub_skpd FROM lap_setwan;



CREATE OR REPLACE VIEW view_atl_108_sosial AS

SELECT
*

FROM
view_atl_108_kabupaten

WHERE
1 = 1  AND
id_skpd = 9;

GRANT ALL PRIVILEGES ON view_atl_108_sosial TO lap_sosial;
REVOKE INSERT, UPDATE, DELETE ON view_atl_108_sosial FROM lap_sosial;

GRANT ALL PRIVILEGES ON skpd, sub_skpd TO lap_sosial;
REVOKE INSERT, UPDATE, DELETE ON skpd, sub_skpd FROM lap_sosial;



CREATE OR REPLACE VIEW view_atl_108_tebingtinggi AS

SELECT
*

FROM
view_atl_108_kabupaten

WHERE
1 = 1  AND
id_skpd = 38;

GRANT ALL PRIVILEGES ON view_atl_108_tebingtinggi TO lap_tebingtinggi;
REVOKE INSERT, UPDATE, DELETE ON view_atl_108_tebingtinggi FROM lap_tebingtinggi;

GRANT ALL PRIVILEGES ON skpd, sub_skpd TO lap_tebingtinggi;
REVOKE INSERT, UPDATE, DELETE ON skpd, sub_skpd FROM lap_tebingtinggi;



CREATE OR REPLACE VIEW view_gedung_bangunan_108_awayan AS

SELECT
*

FROM
view_gedung_bangunan_108_kabupaten

WHERE
1 = 1  AND
id_skpd = 34;

GRANT ALL PRIVILEGES ON view_gedung_bangunan_108_awayan TO lap_awayan;
REVOKE INSERT, UPDATE, DELETE ON view_gedung_bangunan_108_awayan FROM lap_awayan;

GRANT ALL PRIVILEGES ON skpd, sub_skpd TO lap_awayan;
REVOKE INSERT, UPDATE, DELETE ON skpd, sub_skpd FROM lap_awayan;



CREATE OR REPLACE VIEW view_gedung_bangunan_108_bappeda AS

SELECT
*

FROM
view_gedung_bangunan_108_kabupaten

WHERE
1 = 1  AND
id_skpd = 21;

GRANT ALL PRIVILEGES ON view_gedung_bangunan_108_bappeda TO lap_bappeda;
REVOKE INSERT, UPDATE, DELETE ON view_gedung_bangunan_108_bappeda FROM lap_bappeda;

GRANT ALL PRIVILEGES ON skpd, sub_skpd TO lap_bappeda;
REVOKE INSERT, UPDATE, DELETE ON skpd, sub_skpd FROM lap_bappeda;



CREATE OR REPLACE VIEW view_gedung_bangunan_108_batumandi AS

SELECT
*

FROM
view_gedung_bangunan_108_kabupaten

WHERE
1 = 1  AND
id_skpd = 32;

GRANT ALL PRIVILEGES ON view_gedung_bangunan_108_batumandi TO lap_batumandi;
REVOKE INSERT, UPDATE, DELETE ON view_gedung_bangunan_108_batumandi FROM lap_batumandi;

GRANT ALL PRIVILEGES ON skpd, sub_skpd TO lap_batumandi;
REVOKE INSERT, UPDATE, DELETE ON skpd, sub_skpd FROM lap_batumandi;



CREATE OR REPLACE VIEW view_gedung_bangunan_108_batupiring AS

SELECT
*

FROM
view_gedung_bangunan_108_kabupaten

WHERE
1 = 1  AND
id_skpd = 37;

GRANT ALL PRIVILEGES ON view_gedung_bangunan_108_batupiring TO lap_batupiring;
REVOKE INSERT, UPDATE, DELETE ON view_gedung_bangunan_108_batupiring FROM lap_batupiring;

GRANT ALL PRIVILEGES ON skpd, sub_skpd TO lap_batupiring;
REVOKE INSERT, UPDATE, DELETE ON skpd, sub_skpd FROM lap_batupiring;



CREATE OR REPLACE VIEW view_gedung_bangunan_108_bkd AS

SELECT
*

FROM
view_gedung_bangunan_108_kabupaten

WHERE
1 = 1  AND
id_skpd = 19;

GRANT ALL PRIVILEGES ON view_gedung_bangunan_108_bkd TO lap_bkd;
REVOKE INSERT, UPDATE, DELETE ON view_gedung_bangunan_108_bkd FROM lap_bkd;

GRANT ALL PRIVILEGES ON skpd, sub_skpd TO lap_bkd;
REVOKE INSERT, UPDATE, DELETE ON skpd, sub_skpd FROM lap_bkd;



CREATE OR REPLACE VIEW view_gedung_bangunan_108_bkppd AS

SELECT
*

FROM
view_gedung_bangunan_108_kabupaten

WHERE
1 = 1  AND
id_skpd = 26;

GRANT ALL PRIVILEGES ON view_gedung_bangunan_108_bkppd TO lap_bkppd;
REVOKE INSERT, UPDATE, DELETE ON view_gedung_bangunan_108_bkppd FROM lap_bkppd;

GRANT ALL PRIVILEGES ON skpd, sub_skpd TO lap_bkppd;
REVOKE INSERT, UPDATE, DELETE ON skpd, sub_skpd FROM lap_bkppd;



CREATE OR REPLACE VIEW view_gedung_bangunan_108_bpbd AS

SELECT
*

FROM
view_gedung_bangunan_108_kabupaten

WHERE
1 = 1  AND
id_skpd = 39;

GRANT ALL PRIVILEGES ON view_gedung_bangunan_108_bpbd TO lap_bpbd;
REVOKE INSERT, UPDATE, DELETE ON view_gedung_bangunan_108_bpbd FROM lap_bpbd;

GRANT ALL PRIVILEGES ON skpd, sub_skpd TO lap_bpbd;
REVOKE INSERT, UPDATE, DELETE ON skpd, sub_skpd FROM lap_bpbd;



CREATE OR REPLACE VIEW view_gedung_bangunan_108_bppd AS

SELECT
*

FROM
view_gedung_bangunan_108_kabupaten

WHERE
1 = 1  AND
id_skpd = 48;

GRANT ALL PRIVILEGES ON view_gedung_bangunan_108_bppd TO lap_bppd;
REVOKE INSERT, UPDATE, DELETE ON view_gedung_bangunan_108_bppd FROM lap_bppd;

GRANT ALL PRIVILEGES ON skpd, sub_skpd TO lap_bppd;
REVOKE INSERT, UPDATE, DELETE ON skpd, sub_skpd FROM lap_bppd;



CREATE OR REPLACE VIEW view_gedung_bangunan_108_dinkes AS

SELECT
*

FROM
view_gedung_bangunan_108_kabupaten

WHERE
1 = 1  AND
id_skpd = 5;

GRANT ALL PRIVILEGES ON view_gedung_bangunan_108_dinkes TO lap_dinkes;
REVOKE INSERT, UPDATE, DELETE ON view_gedung_bangunan_108_dinkes FROM lap_dinkes;

GRANT ALL PRIVILEGES ON skpd, sub_skpd TO lap_dinkes;
REVOKE INSERT, UPDATE, DELETE ON skpd, sub_skpd FROM lap_dinkes;



CREATE OR REPLACE VIEW view_gedung_bangunan_108_disdik AS

SELECT
*

FROM
view_gedung_bangunan_108_kabupaten

WHERE
1 = 1  AND
id_skpd = 7;

GRANT ALL PRIVILEGES ON view_gedung_bangunan_108_disdik TO lap_disdik;
REVOKE INSERT, UPDATE, DELETE ON view_gedung_bangunan_108_disdik FROM lap_disdik;

GRANT ALL PRIVILEGES ON skpd, sub_skpd TO lap_disdik;
REVOKE INSERT, UPDATE, DELETE ON skpd, sub_skpd FROM lap_disdik;



CREATE OR REPLACE VIEW view_gedung_bangunan_108_dishub AS

SELECT
*

FROM
view_gedung_bangunan_108_kabupaten

WHERE
1 = 1  AND
id_skpd = 4;

GRANT ALL PRIVILEGES ON view_gedung_bangunan_108_dishub TO lap_dishub;
REVOKE INSERT, UPDATE, DELETE ON view_gedung_bangunan_108_dishub FROM lap_dishub;

GRANT ALL PRIVILEGES ON skpd, sub_skpd TO lap_dishub;
REVOKE INSERT, UPDATE, DELETE ON skpd, sub_skpd FROM lap_dishub;



CREATE OR REPLACE VIEW view_gedung_bangunan_108_disnakertrans AS

SELECT
*

FROM
view_gedung_bangunan_108_kabupaten

WHERE
1 = 1  AND
id_skpd = 41;

GRANT ALL PRIVILEGES ON view_gedung_bangunan_108_disnakertrans TO lap_disnakertrans;
REVOKE INSERT, UPDATE, DELETE ON view_gedung_bangunan_108_disnakertrans FROM lap_disnakertrans;

GRANT ALL PRIVILEGES ON skpd, sub_skpd TO lap_disnakertrans;
REVOKE INSERT, UPDATE, DELETE ON skpd, sub_skpd FROM lap_disnakertrans;



CREATE OR REPLACE VIEW view_gedung_bangunan_108_distamben AS

SELECT
*

FROM
view_gedung_bangunan_108_kabupaten

WHERE
1 = 1  AND
id_skpd = 17;

GRANT ALL PRIVILEGES ON view_gedung_bangunan_108_distamben TO lap_distamben;
REVOKE INSERT, UPDATE, DELETE ON view_gedung_bangunan_108_distamben FROM lap_distamben;

GRANT ALL PRIVILEGES ON skpd, sub_skpd TO lap_distamben;
REVOKE INSERT, UPDATE, DELETE ON skpd, sub_skpd FROM lap_distamben;



CREATE OR REPLACE VIEW view_gedung_bangunan_108_dko AS

SELECT
*

FROM
view_gedung_bangunan_108_kabupaten

WHERE
1 = 1  AND
id_skpd = 23;

GRANT ALL PRIVILEGES ON view_gedung_bangunan_108_dko TO lap_dko;
REVOKE INSERT, UPDATE, DELETE ON view_gedung_bangunan_108_dko FROM lap_dko;

GRANT ALL PRIVILEGES ON skpd, sub_skpd TO lap_dko;
REVOKE INSERT, UPDATE, DELETE ON skpd, sub_skpd FROM lap_dko;



CREATE OR REPLACE VIEW view_gedung_bangunan_108_dkp AS

SELECT
*

FROM
view_gedung_bangunan_108_kabupaten

WHERE
1 = 1  AND
id_skpd = 15;

GRANT ALL PRIVILEGES ON view_gedung_bangunan_108_dkp TO lap_dkp;
REVOKE INSERT, UPDATE, DELETE ON view_gedung_bangunan_108_dkp FROM lap_dkp;

GRANT ALL PRIVILEGES ON skpd, sub_skpd TO lap_dkp;
REVOKE INSERT, UPDATE, DELETE ON skpd, sub_skpd FROM lap_dkp;



CREATE OR REPLACE VIEW view_gedung_bangunan_108_dkukmp AS

SELECT
*

FROM
view_gedung_bangunan_108_kabupaten

WHERE
1 = 1  AND
id_skpd = 16;

GRANT ALL PRIVILEGES ON view_gedung_bangunan_108_dkukmp TO lap_dkukmp;
REVOKE INSERT, UPDATE, DELETE ON view_gedung_bangunan_108_dkukmp FROM lap_dkukmp;

GRANT ALL PRIVILEGES ON skpd, sub_skpd TO lap_dkukmp;
REVOKE INSERT, UPDATE, DELETE ON skpd, sub_skpd FROM lap_dkukmp;



CREATE OR REPLACE VIEW view_gedung_bangunan_108_dlh AS

SELECT
*

FROM
view_gedung_bangunan_108_kabupaten

WHERE
1 = 1  AND
id_skpd = 22;

GRANT ALL PRIVILEGES ON view_gedung_bangunan_108_dlh TO lap_dlh;
REVOKE INSERT, UPDATE, DELETE ON view_gedung_bangunan_108_dlh FROM lap_dlh;

GRANT ALL PRIVILEGES ON skpd, sub_skpd TO lap_dlh;
REVOKE INSERT, UPDATE, DELETE ON skpd, sub_skpd FROM lap_dlh;



CREATE OR REPLACE VIEW view_gedung_bangunan_108_dpkp AS

SELECT
*

FROM
view_gedung_bangunan_108_kabupaten

WHERE
1 = 1  AND
id_skpd = 40;

GRANT ALL PRIVILEGES ON view_gedung_bangunan_108_dpkp TO lap_dpkp;
REVOKE INSERT, UPDATE, DELETE ON view_gedung_bangunan_108_dpkp FROM lap_dpkp;

GRANT ALL PRIVILEGES ON skpd, sub_skpd TO lap_dpkp;
REVOKE INSERT, UPDATE, DELETE ON skpd, sub_skpd FROM lap_dpkp;



CREATE OR REPLACE VIEW view_gedung_bangunan_108_dpmd AS

SELECT
*

FROM
view_gedung_bangunan_108_kabupaten

WHERE
1 = 1  AND
id_skpd = 10;

GRANT ALL PRIVILEGES ON view_gedung_bangunan_108_dpmd TO lap_dpmd;
REVOKE INSERT, UPDATE, DELETE ON view_gedung_bangunan_108_dpmd FROM lap_dpmd;

GRANT ALL PRIVILEGES ON skpd, sub_skpd TO lap_dpmd;
REVOKE INSERT, UPDATE, DELETE ON skpd, sub_skpd FROM lap_dpmd;



CREATE OR REPLACE VIEW view_gedung_bangunan_108_dpmptsp AS

SELECT
*

FROM
view_gedung_bangunan_108_kabupaten

WHERE
1 = 1  AND
id_skpd = 18;

GRANT ALL PRIVILEGES ON view_gedung_bangunan_108_dpmptsp TO lap_dpmptsp;
REVOKE INSERT, UPDATE, DELETE ON view_gedung_bangunan_108_dpmptsp FROM lap_dpmptsp;

GRANT ALL PRIVILEGES ON skpd, sub_skpd TO lap_dpmptsp;
REVOKE INSERT, UPDATE, DELETE ON skpd, sub_skpd FROM lap_dpmptsp;



CREATE OR REPLACE VIEW view_gedung_bangunan_108_dppkb AS

SELECT
*

FROM
view_gedung_bangunan_108_kabupaten

WHERE
1 = 1  AND
id_skpd = 42;

GRANT ALL PRIVILEGES ON view_gedung_bangunan_108_dppkb TO lap_dppkb;
REVOKE INSERT, UPDATE, DELETE ON view_gedung_bangunan_108_dppkb FROM lap_dppkb;

GRANT ALL PRIVILEGES ON skpd, sub_skpd TO lap_dppkb;
REVOKE INSERT, UPDATE, DELETE ON skpd, sub_skpd FROM lap_dppkb;



CREATE OR REPLACE VIEW view_gedung_bangunan_108_dpppa AS

SELECT
*

FROM
view_gedung_bangunan_108_kabupaten

WHERE
1 = 1  AND
id_skpd = 11;

GRANT ALL PRIVILEGES ON view_gedung_bangunan_108_dpppa TO lap_dpppa;
REVOKE INSERT, UPDATE, DELETE ON view_gedung_bangunan_108_dpppa FROM lap_dpppa;

GRANT ALL PRIVILEGES ON skpd, sub_skpd TO lap_dpppa;
REVOKE INSERT, UPDATE, DELETE ON skpd, sub_skpd FROM lap_dpppa;



CREATE OR REPLACE VIEW view_gedung_bangunan_108_dpupr AS

SELECT
*

FROM
view_gedung_bangunan_108_kabupaten

WHERE
1 = 1  AND
id_skpd = 3;

GRANT ALL PRIVILEGES ON view_gedung_bangunan_108_dpupr TO lap_dpupr;
REVOKE INSERT, UPDATE, DELETE ON view_gedung_bangunan_108_dpupr FROM lap_dpupr;

GRANT ALL PRIVILEGES ON skpd, sub_skpd TO lap_dpupr;
REVOKE INSERT, UPDATE, DELETE ON skpd, sub_skpd FROM lap_dpupr;



CREATE OR REPLACE VIEW view_gedung_bangunan_108_dukcatpil AS

SELECT
*

FROM
view_gedung_bangunan_108_kabupaten

WHERE
1 = 1  AND
id_skpd = 12;

GRANT ALL PRIVILEGES ON view_gedung_bangunan_108_dukcatpil TO lap_dukcatpil;
REVOKE INSERT, UPDATE, DELETE ON view_gedung_bangunan_108_dukcatpil FROM lap_dukcatpil;

GRANT ALL PRIVILEGES ON skpd, sub_skpd TO lap_dukcatpil;
REVOKE INSERT, UPDATE, DELETE ON skpd, sub_skpd FROM lap_dukcatpil;



CREATE OR REPLACE VIEW view_gedung_bangunan_108_halong AS

SELECT
*

FROM
view_gedung_bangunan_108_kabupaten

WHERE
1 = 1  AND
id_skpd = 35;

GRANT ALL PRIVILEGES ON view_gedung_bangunan_108_halong TO lap_halong;
REVOKE INSERT, UPDATE, DELETE ON view_gedung_bangunan_108_halong FROM lap_halong;

GRANT ALL PRIVILEGES ON skpd, sub_skpd TO lap_halong;
REVOKE INSERT, UPDATE, DELETE ON skpd, sub_skpd FROM lap_halong;



CREATE OR REPLACE VIEW view_gedung_bangunan_108_inspektorat AS

SELECT
*

FROM
view_gedung_bangunan_108_kabupaten

WHERE
1 = 1  AND
id_skpd = 20;

GRANT ALL PRIVILEGES ON view_gedung_bangunan_108_inspektorat TO lap_inspektorat;
REVOKE INSERT, UPDATE, DELETE ON view_gedung_bangunan_108_inspektorat FROM lap_inspektorat;

GRANT ALL PRIVILEGES ON skpd, sub_skpd TO lap_inspektorat;
REVOKE INSERT, UPDATE, DELETE ON skpd, sub_skpd FROM lap_inspektorat;



CREATE OR REPLACE VIEW view_gedung_bangunan_108_juai AS

SELECT
*

FROM
view_gedung_bangunan_108_kabupaten

WHERE
1 = 1  AND
id_skpd = 33;

GRANT ALL PRIVILEGES ON view_gedung_bangunan_108_juai TO lap_juai;
REVOKE INSERT, UPDATE, DELETE ON view_gedung_bangunan_108_juai FROM lap_juai;

GRANT ALL PRIVILEGES ON skpd, sub_skpd TO lap_juai;
REVOKE INSERT, UPDATE, DELETE ON skpd, sub_skpd FROM lap_juai;



CREATE OR REPLACE VIEW view_gedung_bangunan_108_kearsipan AS

SELECT
*

FROM
view_gedung_bangunan_108_kabupaten

WHERE
1 = 1  AND
id_skpd = 44;

GRANT ALL PRIVILEGES ON view_gedung_bangunan_108_kearsipan TO lap_kearsipan;
REVOKE INSERT, UPDATE, DELETE ON view_gedung_bangunan_108_kearsipan FROM lap_kearsipan;

GRANT ALL PRIVILEGES ON skpd, sub_skpd TO lap_kearsipan;
REVOKE INSERT, UPDATE, DELETE ON skpd, sub_skpd FROM lap_kearsipan;



CREATE OR REPLACE VIEW view_gedung_bangunan_108_kehutanan AS

SELECT
*

FROM
view_gedung_bangunan_108_kabupaten

WHERE
1 = 1  AND
id_skpd = 14;

GRANT ALL PRIVILEGES ON view_gedung_bangunan_108_kehutanan TO lap_kehutanan;
REVOKE INSERT, UPDATE, DELETE ON view_gedung_bangunan_108_kehutanan FROM lap_kehutanan;

GRANT ALL PRIVILEGES ON skpd, sub_skpd TO lap_kehutanan;
REVOKE INSERT, UPDATE, DELETE ON skpd, sub_skpd FROM lap_kehutanan;



CREATE OR REPLACE VIEW view_gedung_bangunan_108_kesbangpol AS

SELECT
*

FROM
view_gedung_bangunan_108_kabupaten

WHERE
1 = 1  AND
id_skpd = 24;

GRANT ALL PRIVILEGES ON view_gedung_bangunan_108_kesbangpol TO lap_kesbangpol;
REVOKE INSERT, UPDATE, DELETE ON view_gedung_bangunan_108_kesbangpol FROM lap_kesbangpol;

GRANT ALL PRIVILEGES ON skpd, sub_skpd TO lap_kesbangpol;
REVOKE INSERT, UPDATE, DELETE ON skpd, sub_skpd FROM lap_kesbangpol;



CREATE OR REPLACE VIEW view_gedung_bangunan_108_kominfo AS

SELECT
*

FROM
view_gedung_bangunan_108_kabupaten

WHERE
1 = 1  AND
id_skpd = 43;

GRANT ALL PRIVILEGES ON view_gedung_bangunan_108_kominfo TO lap_kominfo;
REVOKE INSERT, UPDATE, DELETE ON view_gedung_bangunan_108_kominfo FROM lap_kominfo;

GRANT ALL PRIVILEGES ON skpd, sub_skpd TO lap_kominfo;
REVOKE INSERT, UPDATE, DELETE ON skpd, sub_skpd FROM lap_kominfo;



CREATE OR REPLACE VIEW view_gedung_bangunan_108_korpri AS

SELECT
*

FROM
view_gedung_bangunan_108_kabupaten

WHERE
1 = 1  AND
id_skpd = 27;

GRANT ALL PRIVILEGES ON view_gedung_bangunan_108_korpri TO lap_korpri;
REVOKE INSERT, UPDATE, DELETE ON view_gedung_bangunan_108_korpri FROM lap_korpri;

GRANT ALL PRIVILEGES ON skpd, sub_skpd TO lap_korpri;
REVOKE INSERT, UPDATE, DELETE ON skpd, sub_skpd FROM lap_korpri;



CREATE OR REPLACE VIEW view_gedung_bangunan_108_lampihong AS

SELECT
*

FROM
view_gedung_bangunan_108_kabupaten

WHERE
1 = 1  AND
id_skpd = 31;

GRANT ALL PRIVILEGES ON view_gedung_bangunan_108_lampihong TO lap_lampihong;
REVOKE INSERT, UPDATE, DELETE ON view_gedung_bangunan_108_lampihong FROM lap_lampihong;

GRANT ALL PRIVILEGES ON skpd, sub_skpd TO lap_lampihong;
REVOKE INSERT, UPDATE, DELETE ON skpd, sub_skpd FROM lap_lampihong;



CREATE OR REPLACE VIEW view_gedung_bangunan_108_paringin AS

SELECT
*

FROM
view_gedung_bangunan_108_kabupaten

WHERE
1 = 1  AND
id_skpd = 28;

GRANT ALL PRIVILEGES ON view_gedung_bangunan_108_paringin TO lap_paringin;
REVOKE INSERT, UPDATE, DELETE ON view_gedung_bangunan_108_paringin FROM lap_paringin;

GRANT ALL PRIVILEGES ON skpd, sub_skpd TO lap_paringin;
REVOKE INSERT, UPDATE, DELETE ON skpd, sub_skpd FROM lap_paringin;



CREATE OR REPLACE VIEW view_gedung_bangunan_108_paringinkota AS

SELECT
*

FROM
view_gedung_bangunan_108_kabupaten

WHERE
1 = 1  AND
id_skpd = 29;

GRANT ALL PRIVILEGES ON view_gedung_bangunan_108_paringinkota TO lap_paringinkota;
REVOKE INSERT, UPDATE, DELETE ON view_gedung_bangunan_108_paringinkota FROM lap_paringinkota;

GRANT ALL PRIVILEGES ON skpd, sub_skpd TO lap_paringinkota;
REVOKE INSERT, UPDATE, DELETE ON skpd, sub_skpd FROM lap_paringinkota;



CREATE OR REPLACE VIEW view_gedung_bangunan_108_paringinselatan AS

SELECT
*

FROM
view_gedung_bangunan_108_kabupaten

WHERE
1 = 1  AND
id_skpd = 36;

GRANT ALL PRIVILEGES ON view_gedung_bangunan_108_paringinselatan TO lap_paringinselatan;
REVOKE INSERT, UPDATE, DELETE ON view_gedung_bangunan_108_paringinselatan FROM lap_paringinselatan;

GRANT ALL PRIVILEGES ON skpd, sub_skpd TO lap_paringinselatan;
REVOKE INSERT, UPDATE, DELETE ON skpd, sub_skpd FROM lap_paringinselatan;



CREATE OR REPLACE VIEW view_gedung_bangunan_108_paringintimur AS

SELECT
*

FROM
view_gedung_bangunan_108_kabupaten

WHERE
1 = 1  AND
id_skpd = 30;

GRANT ALL PRIVILEGES ON view_gedung_bangunan_108_paringintimur TO lap_paringintimur;
REVOKE INSERT, UPDATE, DELETE ON view_gedung_bangunan_108_paringintimur FROM lap_paringintimur;

GRANT ALL PRIVILEGES ON skpd, sub_skpd TO lap_paringintimur;
REVOKE INSERT, UPDATE, DELETE ON skpd, sub_skpd FROM lap_paringintimur;



CREATE OR REPLACE VIEW view_gedung_bangunan_108_pariwisata AS

SELECT
*

FROM
view_gedung_bangunan_108_kabupaten

WHERE
1 = 1  AND
id_skpd = 46;

GRANT ALL PRIVILEGES ON view_gedung_bangunan_108_pariwisata TO lap_pariwisata;
REVOKE INSERT, UPDATE, DELETE ON view_gedung_bangunan_108_pariwisata FROM lap_pariwisata;

GRANT ALL PRIVILEGES ON skpd, sub_skpd TO lap_pariwisata;
REVOKE INSERT, UPDATE, DELETE ON skpd, sub_skpd FROM lap_pariwisata;



CREATE OR REPLACE VIEW view_gedung_bangunan_108_perdagangan AS

SELECT
*

FROM
view_gedung_bangunan_108_kabupaten

WHERE
1 = 1  AND
id_skpd = 47;

GRANT ALL PRIVILEGES ON view_gedung_bangunan_108_perdagangan TO lap_perdagangan;
REVOKE INSERT, UPDATE, DELETE ON view_gedung_bangunan_108_perdagangan FROM lap_perdagangan;

GRANT ALL PRIVILEGES ON skpd, sub_skpd TO lap_perdagangan;
REVOKE INSERT, UPDATE, DELETE ON skpd, sub_skpd FROM lap_perdagangan;



CREATE OR REPLACE VIEW view_gedung_bangunan_108_perikanan AS

SELECT
*

FROM
view_gedung_bangunan_108_kabupaten

WHERE
1 = 1  AND
id_skpd = 45;

GRANT ALL PRIVILEGES ON view_gedung_bangunan_108_perikanan TO lap_perikanan;
REVOKE INSERT, UPDATE, DELETE ON view_gedung_bangunan_108_perikanan FROM lap_perikanan;

GRANT ALL PRIVILEGES ON skpd, sub_skpd TO lap_perikanan;
REVOKE INSERT, UPDATE, DELETE ON skpd, sub_skpd FROM lap_perikanan;



CREATE OR REPLACE VIEW view_gedung_bangunan_108_perpustakaan AS

SELECT
*

FROM
view_gedung_bangunan_108_kabupaten

WHERE
1 = 1  AND
id_skpd = 8;

GRANT ALL PRIVILEGES ON view_gedung_bangunan_108_perpustakaan TO lap_perpustakaan;
REVOKE INSERT, UPDATE, DELETE ON view_gedung_bangunan_108_perpustakaan FROM lap_perpustakaan;

GRANT ALL PRIVILEGES ON skpd, sub_skpd TO lap_perpustakaan;
REVOKE INSERT, UPDATE, DELETE ON skpd, sub_skpd FROM lap_perpustakaan;



CREATE OR REPLACE VIEW view_gedung_bangunan_108_pertanian AS

SELECT
*

FROM
view_gedung_bangunan_108_kabupaten

WHERE
1 = 1  AND
id_skpd = 13;

GRANT ALL PRIVILEGES ON view_gedung_bangunan_108_pertanian TO lap_pertanian;
REVOKE INSERT, UPDATE, DELETE ON view_gedung_bangunan_108_pertanian FROM lap_pertanian;

GRANT ALL PRIVILEGES ON skpd, sub_skpd TO lap_pertanian;
REVOKE INSERT, UPDATE, DELETE ON skpd, sub_skpd FROM lap_pertanian;



CREATE OR REPLACE VIEW view_gedung_bangunan_108_rsud AS

SELECT
*

FROM
view_gedung_bangunan_108_kabupaten

WHERE
1 = 1  AND
id_skpd = 6;

GRANT ALL PRIVILEGES ON view_gedung_bangunan_108_rsud TO lap_rsud;
REVOKE INSERT, UPDATE, DELETE ON view_gedung_bangunan_108_rsud FROM lap_rsud;

GRANT ALL PRIVILEGES ON skpd, sub_skpd TO lap_rsud;
REVOKE INSERT, UPDATE, DELETE ON skpd, sub_skpd FROM lap_rsud;



CREATE OR REPLACE VIEW view_gedung_bangunan_108_satpolpp AS

SELECT
*

FROM
view_gedung_bangunan_108_kabupaten

WHERE
1 = 1  AND
id_skpd = 25;

GRANT ALL PRIVILEGES ON view_gedung_bangunan_108_satpolpp TO lap_satpolpp;
REVOKE INSERT, UPDATE, DELETE ON view_gedung_bangunan_108_satpolpp FROM lap_satpolpp;

GRANT ALL PRIVILEGES ON skpd, sub_skpd TO lap_satpolpp;
REVOKE INSERT, UPDATE, DELETE ON skpd, sub_skpd FROM lap_satpolpp;



CREATE OR REPLACE VIEW view_gedung_bangunan_108_setda AS

SELECT
*

FROM
view_gedung_bangunan_108_kabupaten

WHERE
1 = 1  AND
id_skpd = 2;

GRANT ALL PRIVILEGES ON view_gedung_bangunan_108_setda TO lap_setda;
REVOKE INSERT, UPDATE, DELETE ON view_gedung_bangunan_108_setda FROM lap_setda;

GRANT ALL PRIVILEGES ON skpd, sub_skpd TO lap_setda;
REVOKE INSERT, UPDATE, DELETE ON skpd, sub_skpd FROM lap_setda;



CREATE OR REPLACE VIEW view_gedung_bangunan_108_setwan AS

SELECT
*

FROM
view_gedung_bangunan_108_kabupaten

WHERE
1 = 1  AND
id_skpd = 1;

GRANT ALL PRIVILEGES ON view_gedung_bangunan_108_setwan TO lap_setwan;
REVOKE INSERT, UPDATE, DELETE ON view_gedung_bangunan_108_setwan FROM lap_setwan;

GRANT ALL PRIVILEGES ON skpd, sub_skpd TO lap_setwan;
REVOKE INSERT, UPDATE, DELETE ON skpd, sub_skpd FROM lap_setwan;



CREATE OR REPLACE VIEW view_gedung_bangunan_108_sosial AS

SELECT
*

FROM
view_gedung_bangunan_108_kabupaten

WHERE
1 = 1  AND
id_skpd = 9;

GRANT ALL PRIVILEGES ON view_gedung_bangunan_108_sosial TO lap_sosial;
REVOKE INSERT, UPDATE, DELETE ON view_gedung_bangunan_108_sosial FROM lap_sosial;

GRANT ALL PRIVILEGES ON skpd, sub_skpd TO lap_sosial;
REVOKE INSERT, UPDATE, DELETE ON skpd, sub_skpd FROM lap_sosial;



CREATE OR REPLACE VIEW view_gedung_bangunan_108_tebingtinggi AS

SELECT
*

FROM
view_gedung_bangunan_108_kabupaten

WHERE
1 = 1  AND
id_skpd = 38;

GRANT ALL PRIVILEGES ON view_gedung_bangunan_108_tebingtinggi TO lap_tebingtinggi;
REVOKE INSERT, UPDATE, DELETE ON view_gedung_bangunan_108_tebingtinggi FROM lap_tebingtinggi;

GRANT ALL PRIVILEGES ON skpd, sub_skpd TO lap_tebingtinggi;
REVOKE INSERT, UPDATE, DELETE ON skpd, sub_skpd FROM lap_tebingtinggi;



CREATE OR REPLACE VIEW view_jalan_irigasi_jaringan_108_awayan AS

SELECT
*

FROM
view_jalan_irigasi_jaringan_108_kabupaten

WHERE
1 = 1  AND
id_skpd = 34;

GRANT ALL PRIVILEGES ON view_jalan_irigasi_jaringan_108_awayan TO lap_awayan;
REVOKE INSERT, UPDATE, DELETE ON view_jalan_irigasi_jaringan_108_awayan FROM lap_awayan;

GRANT ALL PRIVILEGES ON skpd, sub_skpd TO lap_awayan;
REVOKE INSERT, UPDATE, DELETE ON skpd, sub_skpd FROM lap_awayan;



CREATE OR REPLACE VIEW view_jalan_irigasi_jaringan_108_bappeda AS

SELECT
*

FROM
view_jalan_irigasi_jaringan_108_kabupaten

WHERE
1 = 1  AND
id_skpd = 21;

GRANT ALL PRIVILEGES ON view_jalan_irigasi_jaringan_108_bappeda TO lap_bappeda;
REVOKE INSERT, UPDATE, DELETE ON view_jalan_irigasi_jaringan_108_bappeda FROM lap_bappeda;

GRANT ALL PRIVILEGES ON skpd, sub_skpd TO lap_bappeda;
REVOKE INSERT, UPDATE, DELETE ON skpd, sub_skpd FROM lap_bappeda;



CREATE OR REPLACE VIEW view_jalan_irigasi_jaringan_108_batumandi AS

SELECT
*

FROM
view_jalan_irigasi_jaringan_108_kabupaten

WHERE
1 = 1  AND
id_skpd = 32;

GRANT ALL PRIVILEGES ON view_jalan_irigasi_jaringan_108_batumandi TO lap_batumandi;
REVOKE INSERT, UPDATE, DELETE ON view_jalan_irigasi_jaringan_108_batumandi FROM lap_batumandi;

GRANT ALL PRIVILEGES ON skpd, sub_skpd TO lap_batumandi;
REVOKE INSERT, UPDATE, DELETE ON skpd, sub_skpd FROM lap_batumandi;



CREATE OR REPLACE VIEW view_jalan_irigasi_jaringan_108_batupiring AS

SELECT
*

FROM
view_jalan_irigasi_jaringan_108_kabupaten

WHERE
1 = 1  AND
id_skpd = 37;

GRANT ALL PRIVILEGES ON view_jalan_irigasi_jaringan_108_batupiring TO lap_batupiring;
REVOKE INSERT, UPDATE, DELETE ON view_jalan_irigasi_jaringan_108_batupiring FROM lap_batupiring;

GRANT ALL PRIVILEGES ON skpd, sub_skpd TO lap_batupiring;
REVOKE INSERT, UPDATE, DELETE ON skpd, sub_skpd FROM lap_batupiring;



CREATE OR REPLACE VIEW view_jalan_irigasi_jaringan_108_bkd AS

SELECT
*

FROM
view_jalan_irigasi_jaringan_108_kabupaten

WHERE
1 = 1  AND
id_skpd = 19;

GRANT ALL PRIVILEGES ON view_jalan_irigasi_jaringan_108_bkd TO lap_bkd;
REVOKE INSERT, UPDATE, DELETE ON view_jalan_irigasi_jaringan_108_bkd FROM lap_bkd;

GRANT ALL PRIVILEGES ON skpd, sub_skpd TO lap_bkd;
REVOKE INSERT, UPDATE, DELETE ON skpd, sub_skpd FROM lap_bkd;



CREATE OR REPLACE VIEW view_jalan_irigasi_jaringan_108_bkppd AS

SELECT
*

FROM
view_jalan_irigasi_jaringan_108_kabupaten

WHERE
1 = 1  AND
id_skpd = 26;

GRANT ALL PRIVILEGES ON view_jalan_irigasi_jaringan_108_bkppd TO lap_bkppd;
REVOKE INSERT, UPDATE, DELETE ON view_jalan_irigasi_jaringan_108_bkppd FROM lap_bkppd;

GRANT ALL PRIVILEGES ON skpd, sub_skpd TO lap_bkppd;
REVOKE INSERT, UPDATE, DELETE ON skpd, sub_skpd FROM lap_bkppd;



CREATE OR REPLACE VIEW view_jalan_irigasi_jaringan_108_bpbd AS

SELECT
*

FROM
view_jalan_irigasi_jaringan_108_kabupaten

WHERE
1 = 1  AND
id_skpd = 39;

GRANT ALL PRIVILEGES ON view_jalan_irigasi_jaringan_108_bpbd TO lap_bpbd;
REVOKE INSERT, UPDATE, DELETE ON view_jalan_irigasi_jaringan_108_bpbd FROM lap_bpbd;

GRANT ALL PRIVILEGES ON skpd, sub_skpd TO lap_bpbd;
REVOKE INSERT, UPDATE, DELETE ON skpd, sub_skpd FROM lap_bpbd;



CREATE OR REPLACE VIEW view_jalan_irigasi_jaringan_108_bppd AS

SELECT
*

FROM
view_jalan_irigasi_jaringan_108_kabupaten

WHERE
1 = 1  AND
id_skpd = 48;

GRANT ALL PRIVILEGES ON view_jalan_irigasi_jaringan_108_bppd TO lap_bppd;
REVOKE INSERT, UPDATE, DELETE ON view_jalan_irigasi_jaringan_108_bppd FROM lap_bppd;

GRANT ALL PRIVILEGES ON skpd, sub_skpd TO lap_bppd;
REVOKE INSERT, UPDATE, DELETE ON skpd, sub_skpd FROM lap_bppd;



CREATE OR REPLACE VIEW view_jalan_irigasi_jaringan_108_dinkes AS

SELECT
*

FROM
view_jalan_irigasi_jaringan_108_kabupaten

WHERE
1 = 1  AND
id_skpd = 5;

GRANT ALL PRIVILEGES ON view_jalan_irigasi_jaringan_108_dinkes TO lap_dinkes;
REVOKE INSERT, UPDATE, DELETE ON view_jalan_irigasi_jaringan_108_dinkes FROM lap_dinkes;

GRANT ALL PRIVILEGES ON skpd, sub_skpd TO lap_dinkes;
REVOKE INSERT, UPDATE, DELETE ON skpd, sub_skpd FROM lap_dinkes;



CREATE OR REPLACE VIEW view_jalan_irigasi_jaringan_108_disdik AS

SELECT
*

FROM
view_jalan_irigasi_jaringan_108_kabupaten

WHERE
1 = 1  AND
id_skpd = 7;

GRANT ALL PRIVILEGES ON view_jalan_irigasi_jaringan_108_disdik TO lap_disdik;
REVOKE INSERT, UPDATE, DELETE ON view_jalan_irigasi_jaringan_108_disdik FROM lap_disdik;

GRANT ALL PRIVILEGES ON skpd, sub_skpd TO lap_disdik;
REVOKE INSERT, UPDATE, DELETE ON skpd, sub_skpd FROM lap_disdik;



CREATE OR REPLACE VIEW view_jalan_irigasi_jaringan_108_dishub AS

SELECT
*

FROM
view_jalan_irigasi_jaringan_108_kabupaten

WHERE
1 = 1  AND
id_skpd = 4;

GRANT ALL PRIVILEGES ON view_jalan_irigasi_jaringan_108_dishub TO lap_dishub;
REVOKE INSERT, UPDATE, DELETE ON view_jalan_irigasi_jaringan_108_dishub FROM lap_dishub;

GRANT ALL PRIVILEGES ON skpd, sub_skpd TO lap_dishub;
REVOKE INSERT, UPDATE, DELETE ON skpd, sub_skpd FROM lap_dishub;



CREATE OR REPLACE VIEW view_jalan_irigasi_jaringan_108_disnakertrans AS

SELECT
*

FROM
view_jalan_irigasi_jaringan_108_kabupaten

WHERE
1 = 1  AND
id_skpd = 41;

GRANT ALL PRIVILEGES ON view_jalan_irigasi_jaringan_108_disnakertrans TO lap_disnakertrans;
REVOKE INSERT, UPDATE, DELETE ON view_jalan_irigasi_jaringan_108_disnakertrans FROM lap_disnakertrans;

GRANT ALL PRIVILEGES ON skpd, sub_skpd TO lap_disnakertrans;
REVOKE INSERT, UPDATE, DELETE ON skpd, sub_skpd FROM lap_disnakertrans;



CREATE OR REPLACE VIEW view_jalan_irigasi_jaringan_108_distamben AS

SELECT
*

FROM
view_jalan_irigasi_jaringan_108_kabupaten

WHERE
1 = 1  AND
id_skpd = 17;

GRANT ALL PRIVILEGES ON view_jalan_irigasi_jaringan_108_distamben TO lap_distamben;
REVOKE INSERT, UPDATE, DELETE ON view_jalan_irigasi_jaringan_108_distamben FROM lap_distamben;

GRANT ALL PRIVILEGES ON skpd, sub_skpd TO lap_distamben;
REVOKE INSERT, UPDATE, DELETE ON skpd, sub_skpd FROM lap_distamben;



CREATE OR REPLACE VIEW view_jalan_irigasi_jaringan_108_dko AS

SELECT
*

FROM
view_jalan_irigasi_jaringan_108_kabupaten

WHERE
1 = 1  AND
id_skpd = 23;

GRANT ALL PRIVILEGES ON view_jalan_irigasi_jaringan_108_dko TO lap_dko;
REVOKE INSERT, UPDATE, DELETE ON view_jalan_irigasi_jaringan_108_dko FROM lap_dko;

GRANT ALL PRIVILEGES ON skpd, sub_skpd TO lap_dko;
REVOKE INSERT, UPDATE, DELETE ON skpd, sub_skpd FROM lap_dko;



CREATE OR REPLACE VIEW view_jalan_irigasi_jaringan_108_dkp AS

SELECT
*

FROM
view_jalan_irigasi_jaringan_108_kabupaten

WHERE
1 = 1  AND
id_skpd = 15;

GRANT ALL PRIVILEGES ON view_jalan_irigasi_jaringan_108_dkp TO lap_dkp;
REVOKE INSERT, UPDATE, DELETE ON view_jalan_irigasi_jaringan_108_dkp FROM lap_dkp;

GRANT ALL PRIVILEGES ON skpd, sub_skpd TO lap_dkp;
REVOKE INSERT, UPDATE, DELETE ON skpd, sub_skpd FROM lap_dkp;



CREATE OR REPLACE VIEW view_jalan_irigasi_jaringan_108_dkukmp AS

SELECT
*

FROM
view_jalan_irigasi_jaringan_108_kabupaten

WHERE
1 = 1  AND
id_skpd = 16;

GRANT ALL PRIVILEGES ON view_jalan_irigasi_jaringan_108_dkukmp TO lap_dkukmp;
REVOKE INSERT, UPDATE, DELETE ON view_jalan_irigasi_jaringan_108_dkukmp FROM lap_dkukmp;

GRANT ALL PRIVILEGES ON skpd, sub_skpd TO lap_dkukmp;
REVOKE INSERT, UPDATE, DELETE ON skpd, sub_skpd FROM lap_dkukmp;



CREATE OR REPLACE VIEW view_jalan_irigasi_jaringan_108_dlh AS

SELECT
*

FROM
view_jalan_irigasi_jaringan_108_kabupaten

WHERE
1 = 1  AND
id_skpd = 22;

GRANT ALL PRIVILEGES ON view_jalan_irigasi_jaringan_108_dlh TO lap_dlh;
REVOKE INSERT, UPDATE, DELETE ON view_jalan_irigasi_jaringan_108_dlh FROM lap_dlh;

GRANT ALL PRIVILEGES ON skpd, sub_skpd TO lap_dlh;
REVOKE INSERT, UPDATE, DELETE ON skpd, sub_skpd FROM lap_dlh;



CREATE OR REPLACE VIEW view_jalan_irigasi_jaringan_108_dpkp AS

SELECT
*

FROM
view_jalan_irigasi_jaringan_108_kabupaten

WHERE
1 = 1  AND
id_skpd = 40;

GRANT ALL PRIVILEGES ON view_jalan_irigasi_jaringan_108_dpkp TO lap_dpkp;
REVOKE INSERT, UPDATE, DELETE ON view_jalan_irigasi_jaringan_108_dpkp FROM lap_dpkp;

GRANT ALL PRIVILEGES ON skpd, sub_skpd TO lap_dpkp;
REVOKE INSERT, UPDATE, DELETE ON skpd, sub_skpd FROM lap_dpkp;



CREATE OR REPLACE VIEW view_jalan_irigasi_jaringan_108_dpmd AS

SELECT
*

FROM
view_jalan_irigasi_jaringan_108_kabupaten

WHERE
1 = 1  AND
id_skpd = 10;

GRANT ALL PRIVILEGES ON view_jalan_irigasi_jaringan_108_dpmd TO lap_dpmd;
REVOKE INSERT, UPDATE, DELETE ON view_jalan_irigasi_jaringan_108_dpmd FROM lap_dpmd;

GRANT ALL PRIVILEGES ON skpd, sub_skpd TO lap_dpmd;
REVOKE INSERT, UPDATE, DELETE ON skpd, sub_skpd FROM lap_dpmd;



CREATE OR REPLACE VIEW view_jalan_irigasi_jaringan_108_dpmptsp AS

SELECT
*

FROM
view_jalan_irigasi_jaringan_108_kabupaten

WHERE
1 = 1  AND
id_skpd = 18;

GRANT ALL PRIVILEGES ON view_jalan_irigasi_jaringan_108_dpmptsp TO lap_dpmptsp;
REVOKE INSERT, UPDATE, DELETE ON view_jalan_irigasi_jaringan_108_dpmptsp FROM lap_dpmptsp;

GRANT ALL PRIVILEGES ON skpd, sub_skpd TO lap_dpmptsp;
REVOKE INSERT, UPDATE, DELETE ON skpd, sub_skpd FROM lap_dpmptsp;



CREATE OR REPLACE VIEW view_jalan_irigasi_jaringan_108_dppkb AS

SELECT
*

FROM
view_jalan_irigasi_jaringan_108_kabupaten

WHERE
1 = 1  AND
id_skpd = 42;

GRANT ALL PRIVILEGES ON view_jalan_irigasi_jaringan_108_dppkb TO lap_dppkb;
REVOKE INSERT, UPDATE, DELETE ON view_jalan_irigasi_jaringan_108_dppkb FROM lap_dppkb;

GRANT ALL PRIVILEGES ON skpd, sub_skpd TO lap_dppkb;
REVOKE INSERT, UPDATE, DELETE ON skpd, sub_skpd FROM lap_dppkb;



CREATE OR REPLACE VIEW view_jalan_irigasi_jaringan_108_dpppa AS

SELECT
*

FROM
view_jalan_irigasi_jaringan_108_kabupaten

WHERE
1 = 1  AND
id_skpd = 11;

GRANT ALL PRIVILEGES ON view_jalan_irigasi_jaringan_108_dpppa TO lap_dpppa;
REVOKE INSERT, UPDATE, DELETE ON view_jalan_irigasi_jaringan_108_dpppa FROM lap_dpppa;

GRANT ALL PRIVILEGES ON skpd, sub_skpd TO lap_dpppa;
REVOKE INSERT, UPDATE, DELETE ON skpd, sub_skpd FROM lap_dpppa;



CREATE OR REPLACE VIEW view_jalan_irigasi_jaringan_108_dpupr AS

SELECT
*

FROM
view_jalan_irigasi_jaringan_108_kabupaten

WHERE
1 = 1  AND
id_skpd = 3;

GRANT ALL PRIVILEGES ON view_jalan_irigasi_jaringan_108_dpupr TO lap_dpupr;
REVOKE INSERT, UPDATE, DELETE ON view_jalan_irigasi_jaringan_108_dpupr FROM lap_dpupr;

GRANT ALL PRIVILEGES ON skpd, sub_skpd TO lap_dpupr;
REVOKE INSERT, UPDATE, DELETE ON skpd, sub_skpd FROM lap_dpupr;



CREATE OR REPLACE VIEW view_jalan_irigasi_jaringan_108_dukcatpil AS

SELECT
*

FROM
view_jalan_irigasi_jaringan_108_kabupaten

WHERE
1 = 1  AND
id_skpd = 12;

GRANT ALL PRIVILEGES ON view_jalan_irigasi_jaringan_108_dukcatpil TO lap_dukcatpil;
REVOKE INSERT, UPDATE, DELETE ON view_jalan_irigasi_jaringan_108_dukcatpil FROM lap_dukcatpil;

GRANT ALL PRIVILEGES ON skpd, sub_skpd TO lap_dukcatpil;
REVOKE INSERT, UPDATE, DELETE ON skpd, sub_skpd FROM lap_dukcatpil;



CREATE OR REPLACE VIEW view_jalan_irigasi_jaringan_108_halong AS

SELECT
*

FROM
view_jalan_irigasi_jaringan_108_kabupaten

WHERE
1 = 1  AND
id_skpd = 35;

GRANT ALL PRIVILEGES ON view_jalan_irigasi_jaringan_108_halong TO lap_halong;
REVOKE INSERT, UPDATE, DELETE ON view_jalan_irigasi_jaringan_108_halong FROM lap_halong;

GRANT ALL PRIVILEGES ON skpd, sub_skpd TO lap_halong;
REVOKE INSERT, UPDATE, DELETE ON skpd, sub_skpd FROM lap_halong;



CREATE OR REPLACE VIEW view_jalan_irigasi_jaringan_108_inspektorat AS

SELECT
*

FROM
view_jalan_irigasi_jaringan_108_kabupaten

WHERE
1 = 1  AND
id_skpd = 20;

GRANT ALL PRIVILEGES ON view_jalan_irigasi_jaringan_108_inspektorat TO lap_inspektorat;
REVOKE INSERT, UPDATE, DELETE ON view_jalan_irigasi_jaringan_108_inspektorat FROM lap_inspektorat;

GRANT ALL PRIVILEGES ON skpd, sub_skpd TO lap_inspektorat;
REVOKE INSERT, UPDATE, DELETE ON skpd, sub_skpd FROM lap_inspektorat;



CREATE OR REPLACE VIEW view_jalan_irigasi_jaringan_108_juai AS

SELECT
*

FROM
view_jalan_irigasi_jaringan_108_kabupaten

WHERE
1 = 1  AND
id_skpd = 33;

GRANT ALL PRIVILEGES ON view_jalan_irigasi_jaringan_108_juai TO lap_juai;
REVOKE INSERT, UPDATE, DELETE ON view_jalan_irigasi_jaringan_108_juai FROM lap_juai;

GRANT ALL PRIVILEGES ON skpd, sub_skpd TO lap_juai;
REVOKE INSERT, UPDATE, DELETE ON skpd, sub_skpd FROM lap_juai;



CREATE OR REPLACE VIEW view_jalan_irigasi_jaringan_108_kearsipan AS

SELECT
*

FROM
view_jalan_irigasi_jaringan_108_kabupaten

WHERE
1 = 1  AND
id_skpd = 44;

GRANT ALL PRIVILEGES ON view_jalan_irigasi_jaringan_108_kearsipan TO lap_kearsipan;
REVOKE INSERT, UPDATE, DELETE ON view_jalan_irigasi_jaringan_108_kearsipan FROM lap_kearsipan;

GRANT ALL PRIVILEGES ON skpd, sub_skpd TO lap_kearsipan;
REVOKE INSERT, UPDATE, DELETE ON skpd, sub_skpd FROM lap_kearsipan;



CREATE OR REPLACE VIEW view_jalan_irigasi_jaringan_108_kehutanan AS

SELECT
*

FROM
view_jalan_irigasi_jaringan_108_kabupaten

WHERE
1 = 1  AND
id_skpd = 14;

GRANT ALL PRIVILEGES ON view_jalan_irigasi_jaringan_108_kehutanan TO lap_kehutanan;
REVOKE INSERT, UPDATE, DELETE ON view_jalan_irigasi_jaringan_108_kehutanan FROM lap_kehutanan;

GRANT ALL PRIVILEGES ON skpd, sub_skpd TO lap_kehutanan;
REVOKE INSERT, UPDATE, DELETE ON skpd, sub_skpd FROM lap_kehutanan;



CREATE OR REPLACE VIEW view_jalan_irigasi_jaringan_108_kesbangpol AS

SELECT
*

FROM
view_jalan_irigasi_jaringan_108_kabupaten

WHERE
1 = 1  AND
id_skpd = 24;

GRANT ALL PRIVILEGES ON view_jalan_irigasi_jaringan_108_kesbangpol TO lap_kesbangpol;
REVOKE INSERT, UPDATE, DELETE ON view_jalan_irigasi_jaringan_108_kesbangpol FROM lap_kesbangpol;

GRANT ALL PRIVILEGES ON skpd, sub_skpd TO lap_kesbangpol;
REVOKE INSERT, UPDATE, DELETE ON skpd, sub_skpd FROM lap_kesbangpol;



CREATE OR REPLACE VIEW view_jalan_irigasi_jaringan_108_kominfo AS

SELECT
*

FROM
view_jalan_irigasi_jaringan_108_kabupaten

WHERE
1 = 1  AND
id_skpd = 43;

GRANT ALL PRIVILEGES ON view_jalan_irigasi_jaringan_108_kominfo TO lap_kominfo;
REVOKE INSERT, UPDATE, DELETE ON view_jalan_irigasi_jaringan_108_kominfo FROM lap_kominfo;

GRANT ALL PRIVILEGES ON skpd, sub_skpd TO lap_kominfo;
REVOKE INSERT, UPDATE, DELETE ON skpd, sub_skpd FROM lap_kominfo;



CREATE OR REPLACE VIEW view_jalan_irigasi_jaringan_108_korpri AS

SELECT
*

FROM
view_jalan_irigasi_jaringan_108_kabupaten

WHERE
1 = 1  AND
id_skpd = 27;

GRANT ALL PRIVILEGES ON view_jalan_irigasi_jaringan_108_korpri TO lap_korpri;
REVOKE INSERT, UPDATE, DELETE ON view_jalan_irigasi_jaringan_108_korpri FROM lap_korpri;

GRANT ALL PRIVILEGES ON skpd, sub_skpd TO lap_korpri;
REVOKE INSERT, UPDATE, DELETE ON skpd, sub_skpd FROM lap_korpri;



CREATE OR REPLACE VIEW view_jalan_irigasi_jaringan_108_lampihong AS

SELECT
*

FROM
view_jalan_irigasi_jaringan_108_kabupaten

WHERE
1 = 1  AND
id_skpd = 31;

GRANT ALL PRIVILEGES ON view_jalan_irigasi_jaringan_108_lampihong TO lap_lampihong;
REVOKE INSERT, UPDATE, DELETE ON view_jalan_irigasi_jaringan_108_lampihong FROM lap_lampihong;

GRANT ALL PRIVILEGES ON skpd, sub_skpd TO lap_lampihong;
REVOKE INSERT, UPDATE, DELETE ON skpd, sub_skpd FROM lap_lampihong;



CREATE OR REPLACE VIEW view_jalan_irigasi_jaringan_108_paringin AS

SELECT
*

FROM
view_jalan_irigasi_jaringan_108_kabupaten

WHERE
1 = 1  AND
id_skpd = 28;

GRANT ALL PRIVILEGES ON view_jalan_irigasi_jaringan_108_paringin TO lap_paringin;
REVOKE INSERT, UPDATE, DELETE ON view_jalan_irigasi_jaringan_108_paringin FROM lap_paringin;

GRANT ALL PRIVILEGES ON skpd, sub_skpd TO lap_paringin;
REVOKE INSERT, UPDATE, DELETE ON skpd, sub_skpd FROM lap_paringin;



CREATE OR REPLACE VIEW view_jalan_irigasi_jaringan_108_paringinkota AS

SELECT
*

FROM
view_jalan_irigasi_jaringan_108_kabupaten

WHERE
1 = 1  AND
id_skpd = 29;

GRANT ALL PRIVILEGES ON view_jalan_irigasi_jaringan_108_paringinkota TO lap_paringinkota;
REVOKE INSERT, UPDATE, DELETE ON view_jalan_irigasi_jaringan_108_paringinkota FROM lap_paringinkota;

GRANT ALL PRIVILEGES ON skpd, sub_skpd TO lap_paringinkota;
REVOKE INSERT, UPDATE, DELETE ON skpd, sub_skpd FROM lap_paringinkota;



CREATE OR REPLACE VIEW view_jalan_irigasi_jaringan_108_paringinselatan AS

SELECT
*

FROM
view_jalan_irigasi_jaringan_108_kabupaten

WHERE
1 = 1  AND
id_skpd = 36;

GRANT ALL PRIVILEGES ON view_jalan_irigasi_jaringan_108_paringinselatan TO lap_paringinselatan;
REVOKE INSERT, UPDATE, DELETE ON view_jalan_irigasi_jaringan_108_paringinselatan FROM lap_paringinselatan;

GRANT ALL PRIVILEGES ON skpd, sub_skpd TO lap_paringinselatan;
REVOKE INSERT, UPDATE, DELETE ON skpd, sub_skpd FROM lap_paringinselatan;



CREATE OR REPLACE VIEW view_jalan_irigasi_jaringan_108_paringintimur AS

SELECT
*

FROM
view_jalan_irigasi_jaringan_108_kabupaten

WHERE
1 = 1  AND
id_skpd = 30;

GRANT ALL PRIVILEGES ON view_jalan_irigasi_jaringan_108_paringintimur TO lap_paringintimur;
REVOKE INSERT, UPDATE, DELETE ON view_jalan_irigasi_jaringan_108_paringintimur FROM lap_paringintimur;

GRANT ALL PRIVILEGES ON skpd, sub_skpd TO lap_paringintimur;
REVOKE INSERT, UPDATE, DELETE ON skpd, sub_skpd FROM lap_paringintimur;



CREATE OR REPLACE VIEW view_jalan_irigasi_jaringan_108_pariwisata AS

SELECT
*

FROM
view_jalan_irigasi_jaringan_108_kabupaten

WHERE
1 = 1  AND
id_skpd = 46;

GRANT ALL PRIVILEGES ON view_jalan_irigasi_jaringan_108_pariwisata TO lap_pariwisata;
REVOKE INSERT, UPDATE, DELETE ON view_jalan_irigasi_jaringan_108_pariwisata FROM lap_pariwisata;

GRANT ALL PRIVILEGES ON skpd, sub_skpd TO lap_pariwisata;
REVOKE INSERT, UPDATE, DELETE ON skpd, sub_skpd FROM lap_pariwisata;



CREATE OR REPLACE VIEW view_jalan_irigasi_jaringan_108_perdagangan AS

SELECT
*

FROM
view_jalan_irigasi_jaringan_108_kabupaten

WHERE
1 = 1  AND
id_skpd = 47;

GRANT ALL PRIVILEGES ON view_jalan_irigasi_jaringan_108_perdagangan TO lap_perdagangan;
REVOKE INSERT, UPDATE, DELETE ON view_jalan_irigasi_jaringan_108_perdagangan FROM lap_perdagangan;

GRANT ALL PRIVILEGES ON skpd, sub_skpd TO lap_perdagangan;
REVOKE INSERT, UPDATE, DELETE ON skpd, sub_skpd FROM lap_perdagangan;



CREATE OR REPLACE VIEW view_jalan_irigasi_jaringan_108_perikanan AS

SELECT
*

FROM
view_jalan_irigasi_jaringan_108_kabupaten

WHERE
1 = 1  AND
id_skpd = 45;

GRANT ALL PRIVILEGES ON view_jalan_irigasi_jaringan_108_perikanan TO lap_perikanan;
REVOKE INSERT, UPDATE, DELETE ON view_jalan_irigasi_jaringan_108_perikanan FROM lap_perikanan;

GRANT ALL PRIVILEGES ON skpd, sub_skpd TO lap_perikanan;
REVOKE INSERT, UPDATE, DELETE ON skpd, sub_skpd FROM lap_perikanan;



CREATE OR REPLACE VIEW view_jalan_irigasi_jaringan_108_perpustakaan AS

SELECT
*

FROM
view_jalan_irigasi_jaringan_108_kabupaten

WHERE
1 = 1  AND
id_skpd = 8;

GRANT ALL PRIVILEGES ON view_jalan_irigasi_jaringan_108_perpustakaan TO lap_perpustakaan;
REVOKE INSERT, UPDATE, DELETE ON view_jalan_irigasi_jaringan_108_perpustakaan FROM lap_perpustakaan;

GRANT ALL PRIVILEGES ON skpd, sub_skpd TO lap_perpustakaan;
REVOKE INSERT, UPDATE, DELETE ON skpd, sub_skpd FROM lap_perpustakaan;



CREATE OR REPLACE VIEW view_jalan_irigasi_jaringan_108_pertanian AS

SELECT
*

FROM
view_jalan_irigasi_jaringan_108_kabupaten

WHERE
1 = 1  AND
id_skpd = 13;

GRANT ALL PRIVILEGES ON view_jalan_irigasi_jaringan_108_pertanian TO lap_pertanian;
REVOKE INSERT, UPDATE, DELETE ON view_jalan_irigasi_jaringan_108_pertanian FROM lap_pertanian;

GRANT ALL PRIVILEGES ON skpd, sub_skpd TO lap_pertanian;
REVOKE INSERT, UPDATE, DELETE ON skpd, sub_skpd FROM lap_pertanian;



CREATE OR REPLACE VIEW view_jalan_irigasi_jaringan_108_rsud AS

SELECT
*

FROM
view_jalan_irigasi_jaringan_108_kabupaten

WHERE
1 = 1  AND
id_skpd = 6;

GRANT ALL PRIVILEGES ON view_jalan_irigasi_jaringan_108_rsud TO lap_rsud;
REVOKE INSERT, UPDATE, DELETE ON view_jalan_irigasi_jaringan_108_rsud FROM lap_rsud;

GRANT ALL PRIVILEGES ON skpd, sub_skpd TO lap_rsud;
REVOKE INSERT, UPDATE, DELETE ON skpd, sub_skpd FROM lap_rsud;



CREATE OR REPLACE VIEW view_jalan_irigasi_jaringan_108_satpolpp AS

SELECT
*

FROM
view_jalan_irigasi_jaringan_108_kabupaten

WHERE
1 = 1  AND
id_skpd = 25;

GRANT ALL PRIVILEGES ON view_jalan_irigasi_jaringan_108_satpolpp TO lap_satpolpp;
REVOKE INSERT, UPDATE, DELETE ON view_jalan_irigasi_jaringan_108_satpolpp FROM lap_satpolpp;

GRANT ALL PRIVILEGES ON skpd, sub_skpd TO lap_satpolpp;
REVOKE INSERT, UPDATE, DELETE ON skpd, sub_skpd FROM lap_satpolpp;



CREATE OR REPLACE VIEW view_jalan_irigasi_jaringan_108_setda AS

SELECT
*

FROM
view_jalan_irigasi_jaringan_108_kabupaten

WHERE
1 = 1  AND
id_skpd = 2;

GRANT ALL PRIVILEGES ON view_jalan_irigasi_jaringan_108_setda TO lap_setda;
REVOKE INSERT, UPDATE, DELETE ON view_jalan_irigasi_jaringan_108_setda FROM lap_setda;

GRANT ALL PRIVILEGES ON skpd, sub_skpd TO lap_setda;
REVOKE INSERT, UPDATE, DELETE ON skpd, sub_skpd FROM lap_setda;



CREATE OR REPLACE VIEW view_jalan_irigasi_jaringan_108_setwan AS

SELECT
*

FROM
view_jalan_irigasi_jaringan_108_kabupaten

WHERE
1 = 1  AND
id_skpd = 1;

GRANT ALL PRIVILEGES ON view_jalan_irigasi_jaringan_108_setwan TO lap_setwan;
REVOKE INSERT, UPDATE, DELETE ON view_jalan_irigasi_jaringan_108_setwan FROM lap_setwan;

GRANT ALL PRIVILEGES ON skpd, sub_skpd TO lap_setwan;
REVOKE INSERT, UPDATE, DELETE ON skpd, sub_skpd FROM lap_setwan;



CREATE OR REPLACE VIEW view_jalan_irigasi_jaringan_108_sosial AS

SELECT
*

FROM
view_jalan_irigasi_jaringan_108_kabupaten

WHERE
1 = 1  AND
id_skpd = 9;

GRANT ALL PRIVILEGES ON view_jalan_irigasi_jaringan_108_sosial TO lap_sosial;
REVOKE INSERT, UPDATE, DELETE ON view_jalan_irigasi_jaringan_108_sosial FROM lap_sosial;

GRANT ALL PRIVILEGES ON skpd, sub_skpd TO lap_sosial;
REVOKE INSERT, UPDATE, DELETE ON skpd, sub_skpd FROM lap_sosial;



CREATE OR REPLACE VIEW view_jalan_irigasi_jaringan_108_tebingtinggi AS

SELECT
*

FROM
view_jalan_irigasi_jaringan_108_kabupaten

WHERE
1 = 1  AND
id_skpd = 38;

GRANT ALL PRIVILEGES ON view_jalan_irigasi_jaringan_108_tebingtinggi TO lap_tebingtinggi;
REVOKE INSERT, UPDATE, DELETE ON view_jalan_irigasi_jaringan_108_tebingtinggi FROM lap_tebingtinggi;

GRANT ALL PRIVILEGES ON skpd, sub_skpd TO lap_tebingtinggi;
REVOKE INSERT, UPDATE, DELETE ON skpd, sub_skpd FROM lap_tebingtinggi;



CREATE OR REPLACE VIEW view_peralatan_mesin_108_awayan AS

SELECT
*

FROM
view_peralatan_mesin_108_kabupaten

WHERE
1 = 1  AND
id_skpd = 34;

GRANT ALL PRIVILEGES ON view_peralatan_mesin_108_awayan TO lap_awayan;
REVOKE INSERT, UPDATE, DELETE ON view_peralatan_mesin_108_awayan FROM lap_awayan;

GRANT ALL PRIVILEGES ON skpd, sub_skpd TO lap_awayan;
REVOKE INSERT, UPDATE, DELETE ON skpd, sub_skpd FROM lap_awayan;



CREATE OR REPLACE VIEW view_peralatan_mesin_108_bappeda AS

SELECT
*

FROM
view_peralatan_mesin_108_kabupaten

WHERE
1 = 1  AND
id_skpd = 21;

GRANT ALL PRIVILEGES ON view_peralatan_mesin_108_bappeda TO lap_bappeda;
REVOKE INSERT, UPDATE, DELETE ON view_peralatan_mesin_108_bappeda FROM lap_bappeda;

GRANT ALL PRIVILEGES ON skpd, sub_skpd TO lap_bappeda;
REVOKE INSERT, UPDATE, DELETE ON skpd, sub_skpd FROM lap_bappeda;



CREATE OR REPLACE VIEW view_peralatan_mesin_108_batumandi AS

SELECT
*

FROM
view_peralatan_mesin_108_kabupaten

WHERE
1 = 1  AND
id_skpd = 32;

GRANT ALL PRIVILEGES ON view_peralatan_mesin_108_batumandi TO lap_batumandi;
REVOKE INSERT, UPDATE, DELETE ON view_peralatan_mesin_108_batumandi FROM lap_batumandi;

GRANT ALL PRIVILEGES ON skpd, sub_skpd TO lap_batumandi;
REVOKE INSERT, UPDATE, DELETE ON skpd, sub_skpd FROM lap_batumandi;



CREATE OR REPLACE VIEW view_peralatan_mesin_108_batupiring AS

SELECT
*

FROM
view_peralatan_mesin_108_kabupaten

WHERE
1 = 1  AND
id_skpd = 37;

GRANT ALL PRIVILEGES ON view_peralatan_mesin_108_batupiring TO lap_batupiring;
REVOKE INSERT, UPDATE, DELETE ON view_peralatan_mesin_108_batupiring FROM lap_batupiring;

GRANT ALL PRIVILEGES ON skpd, sub_skpd TO lap_batupiring;
REVOKE INSERT, UPDATE, DELETE ON skpd, sub_skpd FROM lap_batupiring;



CREATE OR REPLACE VIEW view_peralatan_mesin_108_bkd AS

SELECT
*

FROM
view_peralatan_mesin_108_kabupaten

WHERE
1 = 1  AND
id_skpd = 19;

GRANT ALL PRIVILEGES ON view_peralatan_mesin_108_bkd TO lap_bkd;
REVOKE INSERT, UPDATE, DELETE ON view_peralatan_mesin_108_bkd FROM lap_bkd;

GRANT ALL PRIVILEGES ON skpd, sub_skpd TO lap_bkd;
REVOKE INSERT, UPDATE, DELETE ON skpd, sub_skpd FROM lap_bkd;



CREATE OR REPLACE VIEW view_peralatan_mesin_108_bkppd AS

SELECT
*

FROM
view_peralatan_mesin_108_kabupaten

WHERE
1 = 1  AND
id_skpd = 26;

GRANT ALL PRIVILEGES ON view_peralatan_mesin_108_bkppd TO lap_bkppd;
REVOKE INSERT, UPDATE, DELETE ON view_peralatan_mesin_108_bkppd FROM lap_bkppd;

GRANT ALL PRIVILEGES ON skpd, sub_skpd TO lap_bkppd;
REVOKE INSERT, UPDATE, DELETE ON skpd, sub_skpd FROM lap_bkppd;



CREATE OR REPLACE VIEW view_peralatan_mesin_108_bpbd AS

SELECT
*

FROM
view_peralatan_mesin_108_kabupaten

WHERE
1 = 1  AND
id_skpd = 39;

GRANT ALL PRIVILEGES ON view_peralatan_mesin_108_bpbd TO lap_bpbd;
REVOKE INSERT, UPDATE, DELETE ON view_peralatan_mesin_108_bpbd FROM lap_bpbd;

GRANT ALL PRIVILEGES ON skpd, sub_skpd TO lap_bpbd;
REVOKE INSERT, UPDATE, DELETE ON skpd, sub_skpd FROM lap_bpbd;



CREATE OR REPLACE VIEW view_peralatan_mesin_108_bppd AS

SELECT
*

FROM
view_peralatan_mesin_108_kabupaten

WHERE
1 = 1  AND
id_skpd = 48;

GRANT ALL PRIVILEGES ON view_peralatan_mesin_108_bppd TO lap_bppd;
REVOKE INSERT, UPDATE, DELETE ON view_peralatan_mesin_108_bppd FROM lap_bppd;

GRANT ALL PRIVILEGES ON skpd, sub_skpd TO lap_bppd;
REVOKE INSERT, UPDATE, DELETE ON skpd, sub_skpd FROM lap_bppd;



CREATE OR REPLACE VIEW view_peralatan_mesin_108_dinkes AS

SELECT
*

FROM
view_peralatan_mesin_108_kabupaten

WHERE
1 = 1  AND
id_skpd = 5;

GRANT ALL PRIVILEGES ON view_peralatan_mesin_108_dinkes TO lap_dinkes;
REVOKE INSERT, UPDATE, DELETE ON view_peralatan_mesin_108_dinkes FROM lap_dinkes;

GRANT ALL PRIVILEGES ON skpd, sub_skpd TO lap_dinkes;
REVOKE INSERT, UPDATE, DELETE ON skpd, sub_skpd FROM lap_dinkes;



CREATE OR REPLACE VIEW view_peralatan_mesin_108_disdik AS

SELECT
*

FROM
view_peralatan_mesin_108_kabupaten

WHERE
1 = 1  AND
id_skpd = 7;

GRANT ALL PRIVILEGES ON view_peralatan_mesin_108_disdik TO lap_disdik;
REVOKE INSERT, UPDATE, DELETE ON view_peralatan_mesin_108_disdik FROM lap_disdik;

GRANT ALL PRIVILEGES ON skpd, sub_skpd TO lap_disdik;
REVOKE INSERT, UPDATE, DELETE ON skpd, sub_skpd FROM lap_disdik;



CREATE OR REPLACE VIEW view_peralatan_mesin_108_dishub AS

SELECT
*

FROM
view_peralatan_mesin_108_kabupaten

WHERE
1 = 1  AND
id_skpd = 4;

GRANT ALL PRIVILEGES ON view_peralatan_mesin_108_dishub TO lap_dishub;
REVOKE INSERT, UPDATE, DELETE ON view_peralatan_mesin_108_dishub FROM lap_dishub;

GRANT ALL PRIVILEGES ON skpd, sub_skpd TO lap_dishub;
REVOKE INSERT, UPDATE, DELETE ON skpd, sub_skpd FROM lap_dishub;



CREATE OR REPLACE VIEW view_peralatan_mesin_108_disnakertrans AS

SELECT
*

FROM
view_peralatan_mesin_108_kabupaten

WHERE
1 = 1  AND
id_skpd = 41;

GRANT ALL PRIVILEGES ON view_peralatan_mesin_108_disnakertrans TO lap_disnakertrans;
REVOKE INSERT, UPDATE, DELETE ON view_peralatan_mesin_108_disnakertrans FROM lap_disnakertrans;

GRANT ALL PRIVILEGES ON skpd, sub_skpd TO lap_disnakertrans;
REVOKE INSERT, UPDATE, DELETE ON skpd, sub_skpd FROM lap_disnakertrans;



CREATE OR REPLACE VIEW view_peralatan_mesin_108_distamben AS

SELECT
*

FROM
view_peralatan_mesin_108_kabupaten

WHERE
1 = 1  AND
id_skpd = 17;

GRANT ALL PRIVILEGES ON view_peralatan_mesin_108_distamben TO lap_distamben;
REVOKE INSERT, UPDATE, DELETE ON view_peralatan_mesin_108_distamben FROM lap_distamben;

GRANT ALL PRIVILEGES ON skpd, sub_skpd TO lap_distamben;
REVOKE INSERT, UPDATE, DELETE ON skpd, sub_skpd FROM lap_distamben;



CREATE OR REPLACE VIEW view_peralatan_mesin_108_dko AS

SELECT
*

FROM
view_peralatan_mesin_108_kabupaten

WHERE
1 = 1  AND
id_skpd = 23;

GRANT ALL PRIVILEGES ON view_peralatan_mesin_108_dko TO lap_dko;
REVOKE INSERT, UPDATE, DELETE ON view_peralatan_mesin_108_dko FROM lap_dko;

GRANT ALL PRIVILEGES ON skpd, sub_skpd TO lap_dko;
REVOKE INSERT, UPDATE, DELETE ON skpd, sub_skpd FROM lap_dko;



CREATE OR REPLACE VIEW view_peralatan_mesin_108_dkp AS

SELECT
*

FROM
view_peralatan_mesin_108_kabupaten

WHERE
1 = 1  AND
id_skpd = 15;

GRANT ALL PRIVILEGES ON view_peralatan_mesin_108_dkp TO lap_dkp;
REVOKE INSERT, UPDATE, DELETE ON view_peralatan_mesin_108_dkp FROM lap_dkp;

GRANT ALL PRIVILEGES ON skpd, sub_skpd TO lap_dkp;
REVOKE INSERT, UPDATE, DELETE ON skpd, sub_skpd FROM lap_dkp;



CREATE OR REPLACE VIEW view_peralatan_mesin_108_dkukmp AS

SELECT
*

FROM
view_peralatan_mesin_108_kabupaten

WHERE
1 = 1  AND
id_skpd = 16;

GRANT ALL PRIVILEGES ON view_peralatan_mesin_108_dkukmp TO lap_dkukmp;
REVOKE INSERT, UPDATE, DELETE ON view_peralatan_mesin_108_dkukmp FROM lap_dkukmp;

GRANT ALL PRIVILEGES ON skpd, sub_skpd TO lap_dkukmp;
REVOKE INSERT, UPDATE, DELETE ON skpd, sub_skpd FROM lap_dkukmp;



CREATE OR REPLACE VIEW view_peralatan_mesin_108_dlh AS

SELECT
*

FROM
view_peralatan_mesin_108_kabupaten

WHERE
1 = 1  AND
id_skpd = 22;

GRANT ALL PRIVILEGES ON view_peralatan_mesin_108_dlh TO lap_dlh;
REVOKE INSERT, UPDATE, DELETE ON view_peralatan_mesin_108_dlh FROM lap_dlh;

GRANT ALL PRIVILEGES ON skpd, sub_skpd TO lap_dlh;
REVOKE INSERT, UPDATE, DELETE ON skpd, sub_skpd FROM lap_dlh;



CREATE OR REPLACE VIEW view_peralatan_mesin_108_dpkp AS

SELECT
*

FROM
view_peralatan_mesin_108_kabupaten

WHERE
1 = 1  AND
id_skpd = 40;

GRANT ALL PRIVILEGES ON view_peralatan_mesin_108_dpkp TO lap_dpkp;
REVOKE INSERT, UPDATE, DELETE ON view_peralatan_mesin_108_dpkp FROM lap_dpkp;

GRANT ALL PRIVILEGES ON skpd, sub_skpd TO lap_dpkp;
REVOKE INSERT, UPDATE, DELETE ON skpd, sub_skpd FROM lap_dpkp;



CREATE OR REPLACE VIEW view_peralatan_mesin_108_dpmd AS

SELECT
*

FROM
view_peralatan_mesin_108_kabupaten

WHERE
1 = 1  AND
id_skpd = 10;

GRANT ALL PRIVILEGES ON view_peralatan_mesin_108_dpmd TO lap_dpmd;
REVOKE INSERT, UPDATE, DELETE ON view_peralatan_mesin_108_dpmd FROM lap_dpmd;

GRANT ALL PRIVILEGES ON skpd, sub_skpd TO lap_dpmd;
REVOKE INSERT, UPDATE, DELETE ON skpd, sub_skpd FROM lap_dpmd;



CREATE OR REPLACE VIEW view_peralatan_mesin_108_dpmptsp AS

SELECT
*

FROM
view_peralatan_mesin_108_kabupaten

WHERE
1 = 1  AND
id_skpd = 18;

GRANT ALL PRIVILEGES ON view_peralatan_mesin_108_dpmptsp TO lap_dpmptsp;
REVOKE INSERT, UPDATE, DELETE ON view_peralatan_mesin_108_dpmptsp FROM lap_dpmptsp;

GRANT ALL PRIVILEGES ON skpd, sub_skpd TO lap_dpmptsp;
REVOKE INSERT, UPDATE, DELETE ON skpd, sub_skpd FROM lap_dpmptsp;



CREATE OR REPLACE VIEW view_peralatan_mesin_108_dppkb AS

SELECT
*

FROM
view_peralatan_mesin_108_kabupaten

WHERE
1 = 1  AND
id_skpd = 42;

GRANT ALL PRIVILEGES ON view_peralatan_mesin_108_dppkb TO lap_dppkb;
REVOKE INSERT, UPDATE, DELETE ON view_peralatan_mesin_108_dppkb FROM lap_dppkb;

GRANT ALL PRIVILEGES ON skpd, sub_skpd TO lap_dppkb;
REVOKE INSERT, UPDATE, DELETE ON skpd, sub_skpd FROM lap_dppkb;



CREATE OR REPLACE VIEW view_peralatan_mesin_108_dpppa AS

SELECT
*

FROM
view_peralatan_mesin_108_kabupaten

WHERE
1 = 1  AND
id_skpd = 11;

GRANT ALL PRIVILEGES ON view_peralatan_mesin_108_dpppa TO lap_dpppa;
REVOKE INSERT, UPDATE, DELETE ON view_peralatan_mesin_108_dpppa FROM lap_dpppa;

GRANT ALL PRIVILEGES ON skpd, sub_skpd TO lap_dpppa;
REVOKE INSERT, UPDATE, DELETE ON skpd, sub_skpd FROM lap_dpppa;



CREATE OR REPLACE VIEW view_peralatan_mesin_108_dpupr AS

SELECT
*

FROM
view_peralatan_mesin_108_kabupaten

WHERE
1 = 1  AND
id_skpd = 3;

GRANT ALL PRIVILEGES ON view_peralatan_mesin_108_dpupr TO lap_dpupr;
REVOKE INSERT, UPDATE, DELETE ON view_peralatan_mesin_108_dpupr FROM lap_dpupr;

GRANT ALL PRIVILEGES ON skpd, sub_skpd TO lap_dpupr;
REVOKE INSERT, UPDATE, DELETE ON skpd, sub_skpd FROM lap_dpupr;



CREATE OR REPLACE VIEW view_peralatan_mesin_108_dukcatpil AS

SELECT
*

FROM
view_peralatan_mesin_108_kabupaten

WHERE
1 = 1  AND
id_skpd = 12;

GRANT ALL PRIVILEGES ON view_peralatan_mesin_108_dukcatpil TO lap_dukcatpil;
REVOKE INSERT, UPDATE, DELETE ON view_peralatan_mesin_108_dukcatpil FROM lap_dukcatpil;

GRANT ALL PRIVILEGES ON skpd, sub_skpd TO lap_dukcatpil;
REVOKE INSERT, UPDATE, DELETE ON skpd, sub_skpd FROM lap_dukcatpil;



CREATE OR REPLACE VIEW view_peralatan_mesin_108_halong AS

SELECT
*

FROM
view_peralatan_mesin_108_kabupaten

WHERE
1 = 1  AND
id_skpd = 35;

GRANT ALL PRIVILEGES ON view_peralatan_mesin_108_halong TO lap_halong;
REVOKE INSERT, UPDATE, DELETE ON view_peralatan_mesin_108_halong FROM lap_halong;

GRANT ALL PRIVILEGES ON skpd, sub_skpd TO lap_halong;
REVOKE INSERT, UPDATE, DELETE ON skpd, sub_skpd FROM lap_halong;



CREATE OR REPLACE VIEW view_peralatan_mesin_108_inspektorat AS

SELECT
*

FROM
view_peralatan_mesin_108_kabupaten

WHERE
1 = 1  AND
id_skpd = 20;

GRANT ALL PRIVILEGES ON view_peralatan_mesin_108_inspektorat TO lap_inspektorat;
REVOKE INSERT, UPDATE, DELETE ON view_peralatan_mesin_108_inspektorat FROM lap_inspektorat;

GRANT ALL PRIVILEGES ON skpd, sub_skpd TO lap_inspektorat;
REVOKE INSERT, UPDATE, DELETE ON skpd, sub_skpd FROM lap_inspektorat;



CREATE OR REPLACE VIEW view_peralatan_mesin_108_juai AS

SELECT
*

FROM
view_peralatan_mesin_108_kabupaten

WHERE
1 = 1  AND
id_skpd = 33;

GRANT ALL PRIVILEGES ON view_peralatan_mesin_108_juai TO lap_juai;
REVOKE INSERT, UPDATE, DELETE ON view_peralatan_mesin_108_juai FROM lap_juai;

GRANT ALL PRIVILEGES ON skpd, sub_skpd TO lap_juai;
REVOKE INSERT, UPDATE, DELETE ON skpd, sub_skpd FROM lap_juai;



CREATE OR REPLACE VIEW view_peralatan_mesin_108_kearsipan AS

SELECT
*

FROM
view_peralatan_mesin_108_kabupaten

WHERE
1 = 1  AND
id_skpd = 44;

GRANT ALL PRIVILEGES ON view_peralatan_mesin_108_kearsipan TO lap_kearsipan;
REVOKE INSERT, UPDATE, DELETE ON view_peralatan_mesin_108_kearsipan FROM lap_kearsipan;

GRANT ALL PRIVILEGES ON skpd, sub_skpd TO lap_kearsipan;
REVOKE INSERT, UPDATE, DELETE ON skpd, sub_skpd FROM lap_kearsipan;



CREATE OR REPLACE VIEW view_peralatan_mesin_108_kehutanan AS

SELECT
*

FROM
view_peralatan_mesin_108_kabupaten

WHERE
1 = 1  AND
id_skpd = 14;

GRANT ALL PRIVILEGES ON view_peralatan_mesin_108_kehutanan TO lap_kehutanan;
REVOKE INSERT, UPDATE, DELETE ON view_peralatan_mesin_108_kehutanan FROM lap_kehutanan;

GRANT ALL PRIVILEGES ON skpd, sub_skpd TO lap_kehutanan;
REVOKE INSERT, UPDATE, DELETE ON skpd, sub_skpd FROM lap_kehutanan;



CREATE OR REPLACE VIEW view_peralatan_mesin_108_kesbangpol AS

SELECT
*

FROM
view_peralatan_mesin_108_kabupaten

WHERE
1 = 1  AND
id_skpd = 24;

GRANT ALL PRIVILEGES ON view_peralatan_mesin_108_kesbangpol TO lap_kesbangpol;
REVOKE INSERT, UPDATE, DELETE ON view_peralatan_mesin_108_kesbangpol FROM lap_kesbangpol;

GRANT ALL PRIVILEGES ON skpd, sub_skpd TO lap_kesbangpol;
REVOKE INSERT, UPDATE, DELETE ON skpd, sub_skpd FROM lap_kesbangpol;



CREATE OR REPLACE VIEW view_peralatan_mesin_108_kominfo AS

SELECT
*

FROM
view_peralatan_mesin_108_kabupaten

WHERE
1 = 1  AND
id_skpd = 43;

GRANT ALL PRIVILEGES ON view_peralatan_mesin_108_kominfo TO lap_kominfo;
REVOKE INSERT, UPDATE, DELETE ON view_peralatan_mesin_108_kominfo FROM lap_kominfo;

GRANT ALL PRIVILEGES ON skpd, sub_skpd TO lap_kominfo;
REVOKE INSERT, UPDATE, DELETE ON skpd, sub_skpd FROM lap_kominfo;



CREATE OR REPLACE VIEW view_peralatan_mesin_108_korpri AS

SELECT
*

FROM
view_peralatan_mesin_108_kabupaten

WHERE
1 = 1  AND
id_skpd = 27;

GRANT ALL PRIVILEGES ON view_peralatan_mesin_108_korpri TO lap_korpri;
REVOKE INSERT, UPDATE, DELETE ON view_peralatan_mesin_108_korpri FROM lap_korpri;

GRANT ALL PRIVILEGES ON skpd, sub_skpd TO lap_korpri;
REVOKE INSERT, UPDATE, DELETE ON skpd, sub_skpd FROM lap_korpri;



CREATE OR REPLACE VIEW view_peralatan_mesin_108_lampihong AS

SELECT
*

FROM
view_peralatan_mesin_108_kabupaten

WHERE
1 = 1  AND
id_skpd = 31;

GRANT ALL PRIVILEGES ON view_peralatan_mesin_108_lampihong TO lap_lampihong;
REVOKE INSERT, UPDATE, DELETE ON view_peralatan_mesin_108_lampihong FROM lap_lampihong;

GRANT ALL PRIVILEGES ON skpd, sub_skpd TO lap_lampihong;
REVOKE INSERT, UPDATE, DELETE ON skpd, sub_skpd FROM lap_lampihong;



CREATE OR REPLACE VIEW view_peralatan_mesin_108_paringin AS

SELECT
*

FROM
view_peralatan_mesin_108_kabupaten

WHERE
1 = 1  AND
id_skpd = 28;

GRANT ALL PRIVILEGES ON view_peralatan_mesin_108_paringin TO lap_paringin;
REVOKE INSERT, UPDATE, DELETE ON view_peralatan_mesin_108_paringin FROM lap_paringin;

GRANT ALL PRIVILEGES ON skpd, sub_skpd TO lap_paringin;
REVOKE INSERT, UPDATE, DELETE ON skpd, sub_skpd FROM lap_paringin;



CREATE OR REPLACE VIEW view_peralatan_mesin_108_paringinkota AS

SELECT
*

FROM
view_peralatan_mesin_108_kabupaten

WHERE
1 = 1  AND
id_skpd = 29;

GRANT ALL PRIVILEGES ON view_peralatan_mesin_108_paringinkota TO lap_paringinkota;
REVOKE INSERT, UPDATE, DELETE ON view_peralatan_mesin_108_paringinkota FROM lap_paringinkota;

GRANT ALL PRIVILEGES ON skpd, sub_skpd TO lap_paringinkota;
REVOKE INSERT, UPDATE, DELETE ON skpd, sub_skpd FROM lap_paringinkota;



CREATE OR REPLACE VIEW view_peralatan_mesin_108_paringinselatan AS

SELECT
*

FROM
view_peralatan_mesin_108_kabupaten

WHERE
1 = 1  AND
id_skpd = 36;

GRANT ALL PRIVILEGES ON view_peralatan_mesin_108_paringinselatan TO lap_paringinselatan;
REVOKE INSERT, UPDATE, DELETE ON view_peralatan_mesin_108_paringinselatan FROM lap_paringinselatan;

GRANT ALL PRIVILEGES ON skpd, sub_skpd TO lap_paringinselatan;
REVOKE INSERT, UPDATE, DELETE ON skpd, sub_skpd FROM lap_paringinselatan;



CREATE OR REPLACE VIEW view_peralatan_mesin_108_paringintimur AS

SELECT
*

FROM
view_peralatan_mesin_108_kabupaten

WHERE
1 = 1  AND
id_skpd = 30;

GRANT ALL PRIVILEGES ON view_peralatan_mesin_108_paringintimur TO lap_paringintimur;
REVOKE INSERT, UPDATE, DELETE ON view_peralatan_mesin_108_paringintimur FROM lap_paringintimur;

GRANT ALL PRIVILEGES ON skpd, sub_skpd TO lap_paringintimur;
REVOKE INSERT, UPDATE, DELETE ON skpd, sub_skpd FROM lap_paringintimur;



CREATE OR REPLACE VIEW view_peralatan_mesin_108_pariwisata AS

SELECT
*

FROM
view_peralatan_mesin_108_kabupaten

WHERE
1 = 1  AND
id_skpd = 46;

GRANT ALL PRIVILEGES ON view_peralatan_mesin_108_pariwisata TO lap_pariwisata;
REVOKE INSERT, UPDATE, DELETE ON view_peralatan_mesin_108_pariwisata FROM lap_pariwisata;

GRANT ALL PRIVILEGES ON skpd, sub_skpd TO lap_pariwisata;
REVOKE INSERT, UPDATE, DELETE ON skpd, sub_skpd FROM lap_pariwisata;



CREATE OR REPLACE VIEW view_peralatan_mesin_108_perdagangan AS

SELECT
*

FROM
view_peralatan_mesin_108_kabupaten

WHERE
1 = 1  AND
id_skpd = 47;

GRANT ALL PRIVILEGES ON view_peralatan_mesin_108_perdagangan TO lap_perdagangan;
REVOKE INSERT, UPDATE, DELETE ON view_peralatan_mesin_108_perdagangan FROM lap_perdagangan;

GRANT ALL PRIVILEGES ON skpd, sub_skpd TO lap_perdagangan;
REVOKE INSERT, UPDATE, DELETE ON skpd, sub_skpd FROM lap_perdagangan;



CREATE OR REPLACE VIEW view_peralatan_mesin_108_perikanan AS

SELECT
*

FROM
view_peralatan_mesin_108_kabupaten

WHERE
1 = 1  AND
id_skpd = 45;

GRANT ALL PRIVILEGES ON view_peralatan_mesin_108_perikanan TO lap_perikanan;
REVOKE INSERT, UPDATE, DELETE ON view_peralatan_mesin_108_perikanan FROM lap_perikanan;

GRANT ALL PRIVILEGES ON skpd, sub_skpd TO lap_perikanan;
REVOKE INSERT, UPDATE, DELETE ON skpd, sub_skpd FROM lap_perikanan;



CREATE OR REPLACE VIEW view_peralatan_mesin_108_perpustakaan AS

SELECT
*

FROM
view_peralatan_mesin_108_kabupaten

WHERE
1 = 1  AND
id_skpd = 8;

GRANT ALL PRIVILEGES ON view_peralatan_mesin_108_perpustakaan TO lap_perpustakaan;
REVOKE INSERT, UPDATE, DELETE ON view_peralatan_mesin_108_perpustakaan FROM lap_perpustakaan;

GRANT ALL PRIVILEGES ON skpd, sub_skpd TO lap_perpustakaan;
REVOKE INSERT, UPDATE, DELETE ON skpd, sub_skpd FROM lap_perpustakaan;



CREATE OR REPLACE VIEW view_peralatan_mesin_108_pertanian AS

SELECT
*

FROM
view_peralatan_mesin_108_kabupaten

WHERE
1 = 1  AND
id_skpd = 13;

GRANT ALL PRIVILEGES ON view_peralatan_mesin_108_pertanian TO lap_pertanian;
REVOKE INSERT, UPDATE, DELETE ON view_peralatan_mesin_108_pertanian FROM lap_pertanian;

GRANT ALL PRIVILEGES ON skpd, sub_skpd TO lap_pertanian;
REVOKE INSERT, UPDATE, DELETE ON skpd, sub_skpd FROM lap_pertanian;



CREATE OR REPLACE VIEW view_peralatan_mesin_108_rsud AS

SELECT
*

FROM
view_peralatan_mesin_108_kabupaten

WHERE
1 = 1  AND
id_skpd = 6;

GRANT ALL PRIVILEGES ON view_peralatan_mesin_108_rsud TO lap_rsud;
REVOKE INSERT, UPDATE, DELETE ON view_peralatan_mesin_108_rsud FROM lap_rsud;

GRANT ALL PRIVILEGES ON skpd, sub_skpd TO lap_rsud;
REVOKE INSERT, UPDATE, DELETE ON skpd, sub_skpd FROM lap_rsud;



CREATE OR REPLACE VIEW view_peralatan_mesin_108_satpolpp AS

SELECT
*

FROM
view_peralatan_mesin_108_kabupaten

WHERE
1 = 1  AND
id_skpd = 25;

GRANT ALL PRIVILEGES ON view_peralatan_mesin_108_satpolpp TO lap_satpolpp;
REVOKE INSERT, UPDATE, DELETE ON view_peralatan_mesin_108_satpolpp FROM lap_satpolpp;

GRANT ALL PRIVILEGES ON skpd, sub_skpd TO lap_satpolpp;
REVOKE INSERT, UPDATE, DELETE ON skpd, sub_skpd FROM lap_satpolpp;



CREATE OR REPLACE VIEW view_peralatan_mesin_108_setda AS

SELECT
*

FROM
view_peralatan_mesin_108_kabupaten

WHERE
1 = 1  AND
id_skpd = 2;

GRANT ALL PRIVILEGES ON view_peralatan_mesin_108_setda TO lap_setda;
REVOKE INSERT, UPDATE, DELETE ON view_peralatan_mesin_108_setda FROM lap_setda;

GRANT ALL PRIVILEGES ON skpd, sub_skpd TO lap_setda;
REVOKE INSERT, UPDATE, DELETE ON skpd, sub_skpd FROM lap_setda;



CREATE OR REPLACE VIEW view_peralatan_mesin_108_setwan AS

SELECT
*

FROM
view_peralatan_mesin_108_kabupaten

WHERE
1 = 1  AND
id_skpd = 1;

GRANT ALL PRIVILEGES ON view_peralatan_mesin_108_setwan TO lap_setwan;
REVOKE INSERT, UPDATE, DELETE ON view_peralatan_mesin_108_setwan FROM lap_setwan;

GRANT ALL PRIVILEGES ON skpd, sub_skpd TO lap_setwan;
REVOKE INSERT, UPDATE, DELETE ON skpd, sub_skpd FROM lap_setwan;



CREATE OR REPLACE VIEW view_peralatan_mesin_108_sosial AS

SELECT
*

FROM
view_peralatan_mesin_108_kabupaten

WHERE
1 = 1  AND
id_skpd = 9;

GRANT ALL PRIVILEGES ON view_peralatan_mesin_108_sosial TO lap_sosial;
REVOKE INSERT, UPDATE, DELETE ON view_peralatan_mesin_108_sosial FROM lap_sosial;

GRANT ALL PRIVILEGES ON skpd, sub_skpd TO lap_sosial;
REVOKE INSERT, UPDATE, DELETE ON skpd, sub_skpd FROM lap_sosial;



CREATE OR REPLACE VIEW view_peralatan_mesin_108_tebingtinggi AS

SELECT
*

FROM
view_peralatan_mesin_108_kabupaten

WHERE
1 = 1  AND
id_skpd = 38;

GRANT ALL PRIVILEGES ON view_peralatan_mesin_108_tebingtinggi TO lap_tebingtinggi;
REVOKE INSERT, UPDATE, DELETE ON view_peralatan_mesin_108_tebingtinggi FROM lap_tebingtinggi;

GRANT ALL PRIVILEGES ON skpd, sub_skpd TO lap_tebingtinggi;
REVOKE INSERT, UPDATE, DELETE ON skpd, sub_skpd FROM lap_tebingtinggi;



CREATE OR REPLACE VIEW view_tanah_108_awayan AS

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



CREATE OR REPLACE VIEW view_tanah_108_bappeda AS

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



CREATE OR REPLACE VIEW view_tanah_108_batumandi AS

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



CREATE OR REPLACE VIEW view_tanah_108_batupiring AS

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



CREATE OR REPLACE VIEW view_tanah_108_bkd AS

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



CREATE OR REPLACE VIEW view_tanah_108_bkppd AS

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



CREATE OR REPLACE VIEW view_tanah_108_bpbd AS

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



CREATE OR REPLACE VIEW view_tanah_108_bppd AS

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



CREATE OR REPLACE VIEW view_tanah_108_dinkes AS

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



CREATE OR REPLACE VIEW view_tanah_108_disdik AS

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



CREATE OR REPLACE VIEW view_tanah_108_dishub AS

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



CREATE OR REPLACE VIEW view_tanah_108_disnakertrans AS

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



CREATE OR REPLACE VIEW view_tanah_108_distamben AS

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



CREATE OR REPLACE VIEW view_tanah_108_dko AS

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



CREATE OR REPLACE VIEW view_tanah_108_dkp AS

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



CREATE OR REPLACE VIEW view_tanah_108_dkukmp AS

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



CREATE OR REPLACE VIEW view_tanah_108_dlh AS

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



CREATE OR REPLACE VIEW view_tanah_108_dpkp AS

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



CREATE OR REPLACE VIEW view_tanah_108_dpmd AS

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



CREATE OR REPLACE VIEW view_tanah_108_dpmptsp AS

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



CREATE OR REPLACE VIEW view_tanah_108_dppkb AS

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



CREATE OR REPLACE VIEW view_tanah_108_dpppa AS

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



CREATE OR REPLACE VIEW view_tanah_108_dpupr AS

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



CREATE OR REPLACE VIEW view_tanah_108_dukcatpil AS

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



CREATE OR REPLACE VIEW view_tanah_108_halong AS

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



CREATE OR REPLACE VIEW view_tanah_108_inspektorat AS

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



CREATE OR REPLACE VIEW view_tanah_108_juai AS

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



CREATE OR REPLACE VIEW view_tanah_108_kearsipan AS

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



CREATE OR REPLACE VIEW view_tanah_108_kehutanan AS

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



CREATE OR REPLACE VIEW view_tanah_108_kesbangpol AS

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



CREATE OR REPLACE VIEW view_tanah_108_kominfo AS

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



CREATE OR REPLACE VIEW view_tanah_108_korpri AS

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



CREATE OR REPLACE VIEW view_tanah_108_lampihong AS

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



CREATE OR REPLACE VIEW view_tanah_108_paringin AS

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



CREATE OR REPLACE VIEW view_tanah_108_paringinkota AS

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



CREATE OR REPLACE VIEW view_tanah_108_paringinselatan AS

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



CREATE OR REPLACE VIEW view_tanah_108_paringintimur AS

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



CREATE OR REPLACE VIEW view_tanah_108_pariwisata AS

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



CREATE OR REPLACE VIEW view_tanah_108_perdagangan AS

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



CREATE OR REPLACE VIEW view_tanah_108_perikanan AS

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



CREATE OR REPLACE VIEW view_tanah_108_perpustakaan AS

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



CREATE OR REPLACE VIEW view_tanah_108_pertanian AS

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



CREATE OR REPLACE VIEW view_tanah_108_rsud AS

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



CREATE OR REPLACE VIEW view_tanah_108_satpolpp AS

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



CREATE OR REPLACE VIEW view_tanah_108_setda AS

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



CREATE OR REPLACE VIEW view_tanah_108_setwan AS

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



CREATE OR REPLACE VIEW view_tanah_108_sosial AS

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



CREATE OR REPLACE VIEW view_tanah_108_tebingtinggi AS

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



CREATE OR REPLACE VIEW view_gedung_bangunan_108_kabupaten AS

SELECT
gedung_bangunan.id_sub_skpd,

sub_skpd.nama_sub_skpd,
sub_skpd.id_skpd,

skpd.nama_skpd,
skpd.id_lokasi_bidang,

lokasi_bidang.nama_lokasi_bidang,
lokasi_bidang.id_kabupaten,

kabupaten.nama_kabupaten,
kabupaten.id_provinsi,

provinsi.nama_provinsi,

gedung_bangunan.id_mutasi_berkurang,
mutasi_berkurang.mutasi_berkurang,

keadaan_barang.keadaan_barang,
satuan_barang.satuan_barang,
golongan_barang.golongan_barang,

gedung_bangunan.nama_barang,
LEFT(kode_barang_108.kode_barang_108, 18) kode_barang_108,
gedung_bangunan.id register,

status_tingkat.status_tingkat,
status_beton.status_beton,

SUM(harga_gedung_bangunan.luas_lantai) as luas_lantai,

gedung_bangunan.tahun,

view_tanah_tanpa_harga_kabupaten.letak_alamat,

gedung_bangunan.tanggal_dokumen_gedung,
gedung_bangunan.nomor_dokumen_gedung,

view_tanah_tanpa_harga_kabupaten.status_tanah,
view_tanah_tanpa_harga_kabupaten.luas as luas_tanah,

view_tanah_tanpa_harga_kabupaten.id_tanah as nomor_kode_tanah,

array_to_string(array_unique(array_agg(asal_usul.asal_usul)), ', ') asal_usul,
SUM(harga_gedung_bangunan.harga_bertambah) - SUM(harga_gedung_bangunan.harga_berkurang) harga,

gedung_bangunan.keterangan


FROM
gedung_bangunan as gedung_bangunan, harga_gedung_bangunan as harga_gedung_bangunan, kode_barang_108,
mutasi_berkurang, asal_usul, keadaan_barang, satuan_barang, golongan_barang,
status_tingkat, status_beton,
sub_skpd, skpd, lokasi_bidang, kabupaten, provinsi, view_tanah_tanpa_harga_kabupaten


WHERE
1 = 1  AND
harga_gedung_bangunan.id_gedung_bangunan = gedung_bangunan.id AND
harga_gedung_bangunan.id_asal_usul = asal_usul.id AND

gedung_bangunan.id_kode_barang_108 = kode_barang_108.id AND
gedung_bangunan.id_mutasi_berkurang = mutasi_berkurang.id AND

gedung_bangunan.id_keadaan_barang = keadaan_barang.id AND
gedung_bangunan.id_satuan_barang = satuan_barang.id AND
gedung_bangunan.id_golongan_barang = golongan_barang.id AND

gedung_bangunan.id_status_tingkat = status_tingkat.id AND
gedung_bangunan.id_status_beton = status_beton.id AND


gedung_bangunan.id_tanah = view_tanah_tanpa_harga_kabupaten.id_tanah AND


gedung_bangunan.id_sub_skpd = sub_skpd.id AND
sub_skpd.id_skpd = skpd.id AND
skpd.id_lokasi_bidang = lokasi_bidang.id AND
lokasi_bidang.id_kabupaten = kabupaten.id AND
kabupaten.id_provinsi = provinsi.id



GROUP BY
gedung_bangunan.id_sub_skpd,
sub_skpd.nama_sub_skpd,
sub_skpd.id_skpd,
skpd.nama_skpd,
skpd.id_lokasi_bidang,
lokasi_bidang.nama_lokasi_bidang,
lokasi_bidang.id_kabupaten,
kabupaten.nama_kabupaten,
kabupaten.id_provinsi,
provinsi.nama_provinsi,
gedung_bangunan.id_mutasi_berkurang,
mutasi_berkurang.mutasi_berkurang,
keadaan_barang.keadaan_barang,
satuan_barang.satuan_barang,
golongan_barang.golongan_barang,
gedung_bangunan.nama_barang,
kode_barang_108,
register,
status_tingkat.status_tingkat,
status_beton.status_beton,
gedung_bangunan.tahun,
view_tanah_tanpa_harga_kabupaten.letak_alamat,
gedung_bangunan.tanggal_dokumen_gedung,
gedung_bangunan.nomor_dokumen_gedung,
view_tanah_tanpa_harga_kabupaten.status_tanah,
luas_tanah,
nomor_kode_tanah,
gedung_bangunan.keterangan





ORDER BY id_skpd, kode_barang_108;



GRANT ALL PRIVILEGES ON view_gedung_bangunan_108_kabupaten TO lap_kabupaten;
REVOKE INSERT, UPDATE, DELETE ON view_gedung_bangunan_108_kabupaten FROM lap_kabupaten;




CREATE OR REPLACE VIEW view_jalan_irigasi_jaringan_108_kabupaten AS

SELECT
jalan_irigasi_jaringan.id_sub_skpd,

sub_skpd.nama_sub_skpd,
sub_skpd.id_skpd,

skpd.nama_skpd,
skpd.id_lokasi_bidang,

lokasi_bidang.nama_lokasi_bidang,
lokasi_bidang.id_kabupaten,

kabupaten.nama_kabupaten,
kabupaten.id_provinsi,

provinsi.nama_provinsi,

jalan_irigasi_jaringan.id_mutasi_berkurang,
mutasi_berkurang.mutasi_berkurang,

keadaan_barang.keadaan_barang,
satuan_barang.satuan_barang,
golongan_barang.golongan_barang,

jalan_irigasi_jaringan.nama_barang,
LEFT(kode_barang_108.kode_barang_108, 18) kode_barang_108,
jalan_irigasi_jaringan.id register,

jalan_irigasi_jaringan.konstruksi,
jalan_irigasi_jaringan.panjang,
jalan_irigasi_jaringan.lebar,
jalan_irigasi_jaringan.luas,

jalan_irigasi_jaringan.tahun,

view_tanah_tanpa_harga_kabupaten.letak_alamat as letak_lokasi,

jalan_irigasi_jaringan.tanggal_dokumen,
jalan_irigasi_jaringan.nomor_dokumen,

view_tanah_tanpa_harga_kabupaten.status_tanah,

view_tanah_tanpa_harga_kabupaten.id_tanah as nomor_kode_tanah,

array_to_string(array_unique(array_agg(asal_usul.asal_usul)), ', ') asal_usul,
SUM(harga_jalan_irigasi_jaringan.harga_bertambah) - SUM(harga_jalan_irigasi_jaringan.harga_berkurang) harga,

jalan_irigasi_jaringan.keterangan as ket


FROM
jalan_irigasi_jaringan as jalan_irigasi_jaringan, harga_jalan_irigasi_jaringan as harga_jalan_irigasi_jaringan, kode_barang_108,
mutasi_berkurang, asal_usul, keadaan_barang, satuan_barang, golongan_barang,
sub_skpd, skpd, lokasi_bidang, kabupaten, provinsi, view_tanah_tanpa_harga_kabupaten


WHERE
1 = 1  AND
harga_jalan_irigasi_jaringan.id_jalan_irigasi_jaringan = jalan_irigasi_jaringan.id AND
harga_jalan_irigasi_jaringan.id_asal_usul = asal_usul.id AND

jalan_irigasi_jaringan.id_kode_barang_108 = kode_barang_108.id AND
jalan_irigasi_jaringan.id_mutasi_berkurang = mutasi_berkurang.id AND

jalan_irigasi_jaringan.id_keadaan_barang = keadaan_barang.id AND
jalan_irigasi_jaringan.id_satuan_barang = satuan_barang.id AND
jalan_irigasi_jaringan.id_golongan_barang = golongan_barang.id AND

jalan_irigasi_jaringan.id_tanah = view_tanah_tanpa_harga_kabupaten.id_tanah AND

jalan_irigasi_jaringan.id_sub_skpd = sub_skpd.id AND
sub_skpd.id_skpd = skpd.id AND
skpd.id_lokasi_bidang = lokasi_bidang.id AND
lokasi_bidang.id_kabupaten = kabupaten.id AND
kabupaten.id_provinsi = provinsi.id



GROUP BY
jalan_irigasi_jaringan.id_sub_skpd,
sub_skpd.nama_sub_skpd,
sub_skpd.id_skpd,
skpd.nama_skpd,
skpd.id_lokasi_bidang,
lokasi_bidang.nama_lokasi_bidang,
lokasi_bidang.id_kabupaten,
kabupaten.nama_kabupaten,
kabupaten.id_provinsi,
provinsi.nama_provinsi,
jalan_irigasi_jaringan.id_mutasi_berkurang,
mutasi_berkurang.mutasi_berkurang,
keadaan_barang.keadaan_barang,
satuan_barang.satuan_barang,
golongan_barang.golongan_barang,
jalan_irigasi_jaringan.nama_barang,
kode_barang_108,
register,
jalan_irigasi_jaringan.tahun,
letak_lokasi,
jalan_irigasi_jaringan.tanggal_dokumen,
jalan_irigasi_jaringan.nomor_dokumen,
view_tanah_tanpa_harga_kabupaten.status_tanah,
nomor_kode_tanah,
ket




ORDER BY id_skpd, kode_barang_108;



GRANT ALL PRIVILEGES ON view_jalan_irigasi_jaringan_108_kabupaten TO lap_kabupaten;
REVOKE INSERT, UPDATE, DELETE ON view_jalan_irigasi_jaringan_108_kabupaten FROM lap_kabupaten;



CREATE OR REPLACE VIEW view_peralatan_mesin_108_kabupaten AS

SELECT
peralatan_mesin.id_sub_skpd,

sub_skpd.nama_sub_skpd,
sub_skpd.id_skpd,

skpd.nama_skpd,
skpd.id_lokasi_bidang,

lokasi_bidang.nama_lokasi_bidang,
lokasi_bidang.id_kabupaten,

kabupaten.nama_kabupaten,
kabupaten.id_provinsi,

provinsi.nama_provinsi,

peralatan_mesin.id_mutasi_berkurang,
mutasi_berkurang.mutasi_berkurang,

keadaan_barang.keadaan_barang,
satuan_barang.satuan_barang,
golongan_barang.golongan_barang,

peralatan_mesin.nama_barang,
LEFT(kode_barang_108.kode_barang_108, 18) kode_barang_108,
peralatan_mesin.id register,

peralatan_mesin.merk_type,
peralatan_mesin.ukuran_cc,
peralatan_mesin.bahan,
peralatan_mesin.tahun,

peralatan_mesin.nomor_pabrik,
peralatan_mesin.nomor_rangka,
peralatan_mesin.nomor_mesin,
peralatan_mesin.nomor_polisi,
peralatan_mesin.nomor_bpkb,

array_to_string(array_unique(array_agg(asal_usul.asal_usul)), ', ') asal_usul,
SUM(harga_peralatan_mesin.harga_bertambah) - SUM(harga_peralatan_mesin.harga_berkurang) harga,
peralatan_mesin.keterangan


FROM
peralatan_mesin as peralatan_mesin, harga_peralatan_mesin as harga_peralatan_mesin, kode_barang_108,
mutasi_berkurang, asal_usul, keadaan_barang, satuan_barang, golongan_barang,
sub_skpd, skpd, lokasi_bidang, kabupaten, provinsi


WHERE
1 = 1  AND
harga_peralatan_mesin.id_peralatan_mesin = peralatan_mesin.id AND
harga_peralatan_mesin.id_asal_usul = asal_usul.id AND

peralatan_mesin.id_kode_barang_108 = kode_barang_108.id AND
peralatan_mesin.id_mutasi_berkurang = mutasi_berkurang.id AND

peralatan_mesin.id_keadaan_barang = keadaan_barang.id AND
peralatan_mesin.id_satuan_barang = satuan_barang.id AND
peralatan_mesin.id_golongan_barang = golongan_barang.id AND

peralatan_mesin.id_sub_skpd = sub_skpd.id AND
sub_skpd.id_skpd = skpd.id AND
skpd.id_lokasi_bidang = lokasi_bidang.id AND
lokasi_bidang.id_kabupaten = kabupaten.id AND
kabupaten.id_provinsi = provinsi.id



GROUP BY
peralatan_mesin.id_sub_skpd,
sub_skpd.nama_sub_skpd,
sub_skpd.id_skpd,
skpd.nama_skpd,
skpd.id_lokasi_bidang,
lokasi_bidang.nama_lokasi_bidang,
lokasi_bidang.id_kabupaten,
kabupaten.nama_kabupaten,
kabupaten.id_provinsi,
provinsi.nama_provinsi,
peralatan_mesin.id_mutasi_berkurang,
mutasi_berkurang.mutasi_berkurang,
keadaan_barang.keadaan_barang,
satuan_barang.satuan_barang,
golongan_barang.golongan_barang,
peralatan_mesin.nama_barang,
kode_barang_108,
register,
peralatan_mesin.merk_type,
peralatan_mesin.ukuran_cc,
peralatan_mesin.bahan,
peralatan_mesin.tahun,
peralatan_mesin.nomor_pabrik,
peralatan_mesin.nomor_rangka,
peralatan_mesin.nomor_mesin,
peralatan_mesin.nomor_polisi,
peralatan_mesin.nomor_bpkb,
peralatan_mesin.keterangan



ORDER BY id_skpd, kode_barang_108;



GRANT ALL PRIVILEGES ON view_peralatan_mesin_108_kabupaten TO lap_kabupaten;
REVOKE INSERT, UPDATE, DELETE ON view_peralatan_mesin_108_kabupaten FROM lap_kabupaten;

GRANT ALL PRIVILEGES ON skpd, sub_skpd TO lap_kabupaten;
REVOKE INSERT, UPDATE, DELETE ON skpd, sub_skpd FROM lap_kabupaten;
CREATE OR REPLACE VIEW view_tanah_108_kabupaten AS

SELECT
tanah.id_sub_skpd,

sub_skpd.nama_sub_skpd,
sub_skpd.id_skpd,

skpd.nama_skpd,
skpd.id_lokasi_bidang,

lokasi_bidang.nama_lokasi_bidang,
lokasi_bidang.id_kabupaten,

kabupaten.nama_kabupaten,
kabupaten.id_provinsi,

provinsi.nama_provinsi,

tanah.id_mutasi_berkurang,
mutasi_berkurang.mutasi_berkurang,

keadaan_barang.keadaan_barang,
satuan_barang.satuan_barang,
golongan_barang.golongan_barang,

tanah.nama_barang,
LEFT(kode_barang_108.kode_barang_108, 18) kode_barang_108,
tanah.id register,
SUM(harga_tanah.luas) luas,
tanah.tahun,
tanah.letak_alamat,
hak_tanah.hak_tanah,
tanah.tanggal_sertifikat,
tanah.nomor_sertifikat,
tanah.penggunaan,
array_to_string(array_unique(array_agg(asal_usul.asal_usul)), ', ') asal_usul,
SUM(harga_tanah.harga_bertambah) - SUM(harga_tanah.harga_berkurang) harga,
tanah.keterangan


FROM
tanah as tanah, harga_tanah as harga_tanah, kode_barang_108,
mutasi_berkurang, asal_usul, keadaan_barang, satuan_barang, golongan_barang,
hak_tanah, sub_skpd, skpd, lokasi_bidang, kabupaten, provinsi


WHERE
1 = 1  AND
harga_tanah.id_tanah = tanah.id AND
harga_tanah.id_asal_usul = asal_usul.id AND

tanah.id_kode_barang_108 = kode_barang_108.id AND
tanah.id_hak_tanah = hak_tanah.id AND
tanah.id_mutasi_berkurang = mutasi_berkurang.id AND

tanah.id_keadaan_barang = keadaan_barang.id AND
tanah.id_satuan_barang = satuan_barang.id AND
tanah.id_golongan_barang = golongan_barang.id AND

tanah.id_sub_skpd = sub_skpd.id AND
sub_skpd.id_skpd = skpd.id AND
skpd.id_lokasi_bidang = lokasi_bidang.id AND
lokasi_bidang.id_kabupaten = kabupaten.id AND
kabupaten.id_provinsi = provinsi.id



GROUP BY
tanah.id_sub_skpd,
sub_skpd.nama_sub_skpd,
sub_skpd.id_skpd,
skpd.nama_skpd,
skpd.id_lokasi_bidang,
lokasi_bidang.nama_lokasi_bidang,
lokasi_bidang.id_kabupaten,
kabupaten.nama_kabupaten,
kabupaten.id_provinsi,
provinsi.nama_provinsi,
tanah.id_mutasi_berkurang,
mutasi_berkurang.mutasi_berkurang,
keadaan_barang.keadaan_barang,
satuan_barang.satuan_barang,
golongan_barang.golongan_barang,
tanah.nama_barang,
kode_barang_108,
register,
tanah.tahun,
tanah.letak_alamat,
hak_tanah.hak_tanah,
tanah.tanggal_sertifikat,
tanah.nomor_sertifikat,
tanah.penggunaan,
tanah.keterangan



ORDER BY id_skpd, kode_barang_108;



GRANT ALL PRIVILEGES ON view_tanah_108_kabupaten TO lap_kabupaten;
REVOKE INSERT, UPDATE, DELETE ON view_tanah_108_kabupaten FROM lap_kabupaten;

GRANT ALL PRIVILEGES ON skpd, sub_skpd, kode_barang_108 TO lap_kabupaten;
REVOKE INSERT, UPDATE, DELETE ON skpd, sub_skpd, kode_barang_108 FROM lap_kabupaten;
