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
