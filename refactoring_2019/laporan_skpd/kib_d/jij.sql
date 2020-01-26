DROP VIEW IF EXISTS view_jalan_irigasi_jaringan_kabupaten;



CREATE VIEW view_jalan_irigasi_jaringan_kabupaten AS

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
LEFT(kode_barang.kode_barang, 14) kode_barang,
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

string_agg(asal_usul.asal_usul, ' : ') asal_usul,
SUM(harga_jalan_irigasi_jaringan.harga_bertambah) - SUM(harga_jalan_irigasi_jaringan.harga_berkurang) harga,

jalan_irigasi_jaringan.keterangan as ket


FROM
jalan_irigasi_jaringan as jalan_irigasi_jaringan, harga_jalan_irigasi_jaringan as harga_jalan_irigasi_jaringan, kode_barang,
mutasi_berkurang, asal_usul, keadaan_barang, satuan_barang, golongan_barang,
sub_skpd, skpd, lokasi_bidang, kabupaten, provinsi, view_tanah_tanpa_harga_kabupaten


WHERE
1 = 1  AND
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
jalan_irigasi_jaringan.nama_barang,
kode_barang,
register,
jalan_irigasi_jaringan.tahun,
letak_lokasi,
jalan_irigasi_jaringan.tanggal_dokumen,
jalan_irigasi_jaringan.nomor_dokumen,
view_tanah_tanpa_harga_kabupaten.status_tanah,
nomor_kode_tanah,
ket




ORDER BY id_skpd, kode_barang;



GRANT ALL PRIVILEGES ON view_jalan_irigasi_jaringan_kabupaten TO lap_kabupaten;
REVOKE INSERT, UPDATE, DELETE ON view_jalan_irigasi_jaringan_kabupaten FROM lap_kabupaten;



