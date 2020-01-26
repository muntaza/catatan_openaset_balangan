DROP VIEW IF EXISTS view_mutasi_dari_skpd_lain_extracomptable CASCADE;


CREATE VIEW view_mutasi_dari_skpd_lain_extracomptable AS

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
harga < 1000000


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
harga < 5000000





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
harga < 500000

;


GRANT ALL PRIVILEGES ON view_mutasi_dari_skpd_lain_extracomptable TO lap_kabupaten;
REVOKE INSERT, UPDATE, DELETE ON view_mutasi_dari_skpd_lain_extracomptable FROM lap_kabupaten;

GRANT ALL PRIVILEGES ON skpd, sub_skpd, kode_barang TO lap_kabupaten;
REVOKE INSERT, UPDATE, DELETE ON skpd, sub_skpd, kode_barang FROM lap_kabupaten;

GRANT ALL PRIVILEGES ON asal_usul, keadaan_barang TO lap_kabupaten;
REVOKE INSERT, UPDATE, DELETE ON asal_usul, keadaan_barang FROM lap_kabupaten;
