DROP VIEW IF EXISTS view_aset_tetap_usul_hapus_l2 CASCADE;


CREATE VIEW view_aset_tetap_usul_hapus_l2 AS

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
string_agg(asal_usul.asal_usul, ' : ') asal_usul,
tanah.tahun,
CONCAT(SUM(harga_tanah.luas), ' m2') ukuran_barang,
SUM(harga_tanah.harga_bertambah) - SUM(harga_tanah.harga_berkurang) harga,
tahun_berkurang_usul_hapus_tanah.tahun_berkurang,
tanah.keterangan


FROM
tanah as tanah, harga_tanah as harga_tanah, kode_barang,
mutasi_berkurang, asal_usul, keadaan_barang, satuan_barang, golongan_barang,
hak_tanah, sub_skpd, skpd, lokasi_bidang, kabupaten, provinsi, tahun_berkurang_usul_hapus_tanah


WHERE
1 = 1  AND
tanah.id = tahun_berkurang_usul_hapus_tanah.id_tanah AND
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
tanah.tahun,
tahun_berkurang_usul_hapus_tanah.tahun_berkurang,
tanah.keterangan) AS QUERY_TANAH


WHERE
tahun_berkurang >= 2015


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
string_agg(asal_usul.asal_usul, ' : ') asal_usul,
peralatan_mesin.tahun,
peralatan_mesin.ukuran_cc as ukuran_barang,
SUM(harga_peralatan_mesin.harga_bertambah) - SUM(harga_peralatan_mesin.harga_berkurang) as harga,
tahun_berkurang_usul_hapus_pm.tahun_berkurang,
peralatan_mesin.keterangan



FROM
peralatan_mesin as peralatan_mesin, harga_peralatan_mesin as harga_peralatan_mesin, kode_barang,
mutasi_berkurang, asal_usul, keadaan_barang, satuan_barang, golongan_barang,
sub_skpd, skpd, lokasi_bidang, kabupaten, provinsi, tahun_berkurang_usul_hapus_pm


WHERE
1 = 1  AND
peralatan_mesin.id = tahun_berkurang_usul_hapus_pm.id_peralatan_mesin AND
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
ukuran_barang,
tahun_berkurang_usul_hapus_pm.tahun_berkurang,
peralatan_mesin.keterangan) AS QUERY_PERALATAN_MESIN

WHERE
harga >= 1000000 AND
tahun_berkurang >= 2015


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
string_agg(asal_usul.asal_usul, ' : ') asal_usul,
gedung_bangunan.tahun,
CONCAT(SUM(harga_gedung_bangunan.luas_lantai), ' m2') as ukuran_barang,
SUM(harga_gedung_bangunan.harga_bertambah) - SUM(harga_gedung_bangunan.harga_berkurang) as harga,
tahun_berkurang_usul_hapus_gedung.tahun_berkurang,
gedung_bangunan.keterangan



FROM
gedung_bangunan as gedung_bangunan, harga_gedung_bangunan as harga_gedung_bangunan, kode_barang,
mutasi_berkurang, asal_usul, keadaan_barang, satuan_barang, golongan_barang,
status_tingkat, status_beton,
sub_skpd, skpd, lokasi_bidang, kabupaten, provinsi, view_tanah_tanpa_harga_kabupaten, tahun_berkurang_usul_hapus_gedung


WHERE
1 = 1  AND
gedung_bangunan.id = tahun_berkurang_usul_hapus_gedung.id_gedung_bangunan AND
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
tahun_berkurang_usul_hapus_gedung.tahun_berkurang,
gedung_bangunan.keterangan) AS QUERY_GEDUNG_BANGUNAN


WHERE
harga >= 5000000 AND
tahun_berkurang >= 2015





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
string_agg(asal_usul.asal_usul, ' : ') asal_usul,
jalan_irigasi_jaringan.tahun,
jalan_irigasi_jaringan.konstruksi as ukuran_barang,
SUM(harga_jalan_irigasi_jaringan.harga_bertambah) - SUM(harga_jalan_irigasi_jaringan.harga_berkurang) as harga,
tahun_berkurang_usul_hapus_jij.tahun_berkurang,
jalan_irigasi_jaringan.keterangan



FROM
jalan_irigasi_jaringan as jalan_irigasi_jaringan, harga_jalan_irigasi_jaringan as harga_jalan_irigasi_jaringan, kode_barang,
mutasi_berkurang, asal_usul, keadaan_barang, satuan_barang, golongan_barang,
sub_skpd, skpd, lokasi_bidang, kabupaten, provinsi, view_tanah_tanpa_harga_kabupaten, tahun_berkurang_usul_hapus_jij


WHERE
1 = 1  AND
jalan_irigasi_jaringan.id = tahun_berkurang_usul_hapus_jij.id_jalan_irigasi_jaringan AND
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
ukuran_barang,
tahun_berkurang_usul_hapus_jij.tahun_berkurang,
jalan_irigasi_jaringan.keterangan) AS QUERY_JALAN_IRIGASI_JARINGAN


WHERE
harga >= 1 AND
tahun_berkurang >= 2015





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
string_agg(asal_usul.asal_usul, ' : ') asal_usul,
atl.tahun,
atl.ukuran_hewan_tumbuhan as ukuran_barang,
SUM(harga_atl.harga_bertambah) - SUM(harga_atl.harga_berkurang) harga,
tahun_berkurang_usul_hapus_atl.tahun_berkurang,
atl.keterangan



FROM
atl as atl, harga_atl as harga_atl, kode_barang,
mutasi_berkurang, asal_usul, keadaan_barang, satuan_barang, golongan_barang,
sub_skpd, skpd, lokasi_bidang, kabupaten, provinsi, tahun_berkurang_usul_hapus_atl


WHERE
1 = 1  AND
atl.id = tahun_berkurang_usul_hapus_atl.id_atl AND
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
ukuran_barang,
tahun_berkurang_usul_hapus_atl.tahun_berkurang,
atl.keterangan) AS QUERY_ASET_TETAP_LAINNYA

WHERE
harga >= 500000 AND
tahun_berkurang >= 2015

;


GRANT ALL PRIVILEGES ON view_aset_tetap_usul_hapus_l2 TO lap_kabupaten;
REVOKE INSERT, UPDATE, DELETE ON view_aset_tetap_usul_hapus_l2 FROM lap_kabupaten;

GRANT ALL PRIVILEGES ON skpd, sub_skpd, kode_barang TO lap_kabupaten;
REVOKE INSERT, UPDATE, DELETE ON skpd, sub_skpd, kode_barang FROM lap_kabupaten;

GRANT ALL PRIVILEGES ON asal_usul, keadaan_barang TO lap_kabupaten;
REVOKE INSERT, UPDATE, DELETE ON asal_usul, keadaan_barang FROM lap_kabupaten;
