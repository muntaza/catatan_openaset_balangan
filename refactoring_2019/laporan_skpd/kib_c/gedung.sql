DROP VIEW IF EXISTS view_gedung_bangunan_kabupaten;



CREATE VIEW view_gedung_bangunan_kabupaten AS

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
LEFT(kode_barang.kode_barang, 14) kode_barang,
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

string_agg(asal_usul.asal_usul, ' : ') asal_usul,
SUM(harga_gedung_bangunan.harga_bertambah) - SUM(harga_gedung_bangunan.harga_berkurang) harga,

gedung_bangunan.keterangan


FROM
gedung_bangunan as gedung_bangunan, harga_gedung_bangunan as harga_gedung_bangunan, kode_barang,
mutasi_berkurang, asal_usul, keadaan_barang, satuan_barang, golongan_barang,
status_tingkat, status_beton,
sub_skpd, skpd, lokasi_bidang, kabupaten, provinsi, view_tanah_tanpa_harga_kabupaten


WHERE
1 = 1  AND
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
gedung_bangunan.nama_barang,
kode_barang,
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





ORDER BY id_skpd, kode_barang;



GRANT ALL PRIVILEGES ON view_gedung_bangunan_kabupaten TO lap_kabupaten;
REVOKE INSERT, UPDATE, DELETE ON view_gedung_bangunan_kabupaten FROM lap_kabupaten;




