DROP VIEW IF EXISTS view_mutasi_dari_skpd_lain_aset CASCADE;


CREATE VIEW view_mutasi_dari_skpd_lain_aset AS

SELECT * FROM

(SELECT
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
tanah.id_golongan_barang,

tanah.nama_barang,
LEFT(kode_barang.kode_barang, 14) kode_barang,
LEFT(kode_barang.kode_barang, 5) kode_l2,
tanah.id register,

'' as merk_type,
tanah.nomor_sertifikat as no_no,
'' as bahan,
tanah.tahun,
asal_usul.asal_usul,
CONCAT(SUM(harga_tanah.luas), ' m2') ukuran_barang,
SUM(harga_tanah.harga_bertambah) - SUM(harga_tanah.harga_berkurang) harga,
skpd_asal_tanah.id_skpd as id_skpd_asal,
harga_tanah.tahun_mutasi,
tanah.keterangan


FROM
tanah as tanah, harga_tanah as harga_tanah, kode_barang,
mutasi_berkurang, asal_usul, keadaan_barang, satuan_barang, golongan_barang,
hak_tanah, sub_skpd, skpd, lokasi_bidang, kabupaten, provinsi, skpd_asal_tanah


WHERE
1 = 1  AND
asal_usul.id = 7 AND
tanah.id = skpd_asal_tanah.id_tanah AND
harga_tanah.id_tanah = tanah.id AND
harga_tanah.id_asal_usul = asal_usul.id AND

tanah.id_kode_barang = kode_barang.id AND
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
tanah.id_golongan_barang,
tanah.nama_barang,

kode_barang,
kode_l2,
register,

merk_type,
no_no,
bahan,
asal_usul.asal_usul,
tanah.tahun,
id_skpd_asal,
harga_tanah.tahun_mutasi,
tanah.keterangan) AS QUERY_TANAH




UNION ALL

SELECT * FROM

(SELECT
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
peralatan_mesin.id_golongan_barang,

peralatan_mesin.nama_barang,
LEFT(kode_barang.kode_barang, 14) kode_barang,
LEFT(kode_barang.kode_barang, 5) kode_l2,
peralatan_mesin.id register,

peralatan_mesin.merk_type,
peralatan_mesin.nomor_polisi as no_no,
peralatan_mesin.bahan,
peralatan_mesin.tahun,
asal_usul.asal_usul,
peralatan_mesin.ukuran_cc as ukuran_barang,
SUM(harga_peralatan_mesin.harga_bertambah) - SUM(harga_peralatan_mesin.harga_berkurang) as harga,
skpd_asal_peralatan_mesin.id_skpd as id_skpd_asal,
harga_peralatan_mesin.tahun_mutasi,
peralatan_mesin.keterangan



FROM
peralatan_mesin as peralatan_mesin, harga_peralatan_mesin as harga_peralatan_mesin, kode_barang,
mutasi_berkurang, asal_usul, keadaan_barang, satuan_barang, golongan_barang,
sub_skpd, skpd, lokasi_bidang, kabupaten, provinsi, skpd_asal_peralatan_mesin


WHERE
1 = 1  AND
asal_usul.id = 7 AND
peralatan_mesin.id = skpd_asal_peralatan_mesin.id_peralatan_mesin AND
harga_peralatan_mesin.id_peralatan_mesin = peralatan_mesin.id AND
harga_peralatan_mesin.id_asal_usul = asal_usul.id AND

peralatan_mesin.id_kode_barang = kode_barang.id AND
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
peralatan_mesin.id_golongan_barang,
peralatan_mesin.nama_barang,

kode_barang,
kode_l2,
register,

peralatan_mesin.merk_type,
no_no,
peralatan_mesin.bahan,
peralatan_mesin.tahun,
asal_usul.asal_usul,
ukuran_barang,
id_skpd_asal,
harga_peralatan_mesin.tahun_mutasi,
peralatan_mesin.keterangan) AS QUERY_PERALATAN_MESIN

WHERE
harga >= 1000000


UNION ALL


SELECT * FROM

(SELECT
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
gedung_bangunan.id_golongan_barang,

gedung_bangunan.nama_barang,
LEFT(kode_barang.kode_barang, 14) kode_barang,
LEFT(kode_barang.kode_barang, 5) kode_l2,
gedung_bangunan.id register,

'' as merk_type,
gedung_bangunan.nomor_dokumen_gedung as no_no,
'' as bahan,
gedung_bangunan.tahun,
asal_usul.asal_usul,
CONCAT(SUM(harga_gedung_bangunan.luas_lantai), ' m2') as ukuran_barang,
SUM(harga_gedung_bangunan.harga_bertambah) - SUM(harga_gedung_bangunan.harga_berkurang) as harga,
skpd_asal_gedung_bangunan.id_skpd as id_skpd_asal,
harga_gedung_bangunan.tahun_mutasi,
gedung_bangunan.keterangan



FROM
gedung_bangunan as gedung_bangunan, harga_gedung_bangunan as harga_gedung_bangunan, kode_barang,
mutasi_berkurang, asal_usul, keadaan_barang, satuan_barang, golongan_barang,
status_tingkat, status_beton,
sub_skpd, skpd, lokasi_bidang, kabupaten, provinsi, view_tanah_tanpa_harga_kabupaten, skpd_asal_gedung_bangunan


WHERE
1 = 1  AND
asal_usul.id = 7 AND
gedung_bangunan.id = skpd_asal_gedung_bangunan.id_gedung_bangunan AND
harga_gedung_bangunan.id_gedung_bangunan = gedung_bangunan.id AND
harga_gedung_bangunan.id_asal_usul = asal_usul.id AND

gedung_bangunan.id_kode_barang = kode_barang.id AND
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
gedung_bangunan.id_golongan_barang,
gedung_bangunan.nama_barang,

kode_barang,
kode_l2,
register,

merk_type,
no_no,
bahan,
gedung_bangunan.tahun,
asal_usul.asal_usul,
id_skpd_asal,
harga_gedung_bangunan.tahun_mutasi,
gedung_bangunan.keterangan) AS QUERY_GEDUNG_BANGUNAN


WHERE
harga >= 5000000





UNION ALL



SELECT * FROM

(SELECT
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
jalan_irigasi_jaringan.id_golongan_barang,

jalan_irigasi_jaringan.nama_barang,
LEFT(kode_barang.kode_barang, 14) kode_barang,
LEFT(kode_barang.kode_barang, 5) kode_l2,
jalan_irigasi_jaringan.id register,

'' as merk_type,
jalan_irigasi_jaringan.nomor_dokumen as no_no,
'' as bahan,
jalan_irigasi_jaringan.tahun,
asal_usul.asal_usul,
jalan_irigasi_jaringan.konstruksi as ukuran_barang,
SUM(harga_jalan_irigasi_jaringan.harga_bertambah) - SUM(harga_jalan_irigasi_jaringan.harga_berkurang) as harga,
skpd_asal_jalan_irigasi_jaringan.id_skpd as id_skpd_asal,
harga_jalan_irigasi_jaringan.tahun_mutasi,
jalan_irigasi_jaringan.keterangan



FROM
jalan_irigasi_jaringan as jalan_irigasi_jaringan, harga_jalan_irigasi_jaringan as harga_jalan_irigasi_jaringan, kode_barang,
mutasi_berkurang, asal_usul, keadaan_barang, satuan_barang, golongan_barang,
sub_skpd, skpd, lokasi_bidang, kabupaten, provinsi, view_tanah_tanpa_harga_kabupaten, skpd_asal_jalan_irigasi_jaringan


WHERE
1 = 1  AND
asal_usul.id = 7 AND
jalan_irigasi_jaringan.id = skpd_asal_jalan_irigasi_jaringan.id_jalan_irigasi_jaringan AND
harga_jalan_irigasi_jaringan.id_jalan_irigasi_jaringan = jalan_irigasi_jaringan.id AND
harga_jalan_irigasi_jaringan.id_asal_usul = asal_usul.id AND

jalan_irigasi_jaringan.id_kode_barang = kode_barang.id AND
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
jalan_irigasi_jaringan.id_golongan_barang,
jalan_irigasi_jaringan.nama_barang,

kode_barang,
kode_l2,
register,

merk_type,
no_no,
bahan,
jalan_irigasi_jaringan.tahun,
asal_usul.asal_usul,
ukuran_barang,
id_skpd_asal,
harga_jalan_irigasi_jaringan.tahun_mutasi,
jalan_irigasi_jaringan.keterangan) AS QUERY_JALAN_IRIGASI_JARINGAN


WHERE
harga >= 1





UNION ALL


SELECT * FROM

(SELECT
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
atl.id_golongan_barang,

atl.nama_barang,
LEFT(kode_barang.kode_barang, 14) kode_barang,
LEFT(kode_barang.kode_barang, 5) kode_l2,
atl.id register,

'' as merk_type,
'' as no_no,
atl.judul_pencipta_buku as bahan,
atl.tahun,
asal_usul.asal_usul,
atl.ukuran_hewan_tumbuhan as ukuran_barang,
SUM(harga_atl.harga_bertambah) - SUM(harga_atl.harga_berkurang) harga,
skpd_asal_atl.id_skpd as id_skpd_asal,
harga_atl.tahun_mutasi,
atl.keterangan



FROM
atl as atl, harga_atl as harga_atl, kode_barang,
mutasi_berkurang, asal_usul, keadaan_barang, satuan_barang, golongan_barang,
sub_skpd, skpd, lokasi_bidang, kabupaten, provinsi, skpd_asal_atl


WHERE
1 = 1  AND
asal_usul.id = 7 AND
atl.id = skpd_asal_atl.id_atl AND
harga_atl.id_atl = atl.id AND
harga_atl.id_asal_usul = asal_usul.id AND

atl.id_kode_barang = kode_barang.id AND
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
atl.id_golongan_barang,
atl.nama_barang,

kode_barang,
kode_l2,
register,

merk_type,
no_no,
bahan,
atl.tahun,
asal_usul.asal_usul,
ukuran_barang,
id_skpd_asal,
harga_atl.tahun_mutasi,
atl.keterangan) AS QUERY_ASET_TETAP_LAINNYA

WHERE
harga >= 500000

;


GRANT ALL PRIVILEGES ON view_mutasi_dari_skpd_lain_aset TO lap_kabupaten;
REVOKE INSERT, UPDATE, DELETE ON view_mutasi_dari_skpd_lain_aset FROM lap_kabupaten;

GRANT ALL PRIVILEGES ON skpd, sub_skpd, kode_barang TO lap_kabupaten;
REVOKE INSERT, UPDATE, DELETE ON skpd, sub_skpd, kode_barang FROM lap_kabupaten;

GRANT ALL PRIVILEGES ON asal_usul, keadaan_barang TO lap_kabupaten;
REVOKE INSERT, UPDATE, DELETE ON asal_usul, keadaan_barang FROM lap_kabupaten;
