DROP VIEW IF EXISTS view_daftar_pengadaan_108_kabupaten_kabupaten CASCADE;




CREATE VIEW view_daftar_pengadaan_108_kabupaten_kabupaten AS

SELECT
tanah.id_sub_skpd,
sub_skpd.nama_sub_skpd,

tanah.id as register,

sub_skpd.id_skpd,
skpd.nama_skpd,

skpd.id_lokasi_bidang,
lokasi_bidang.nama_lokasi_bidang,

lokasi_bidang.id_kabupaten,
kabupaten.nama_kabupaten,

kabupaten.id_provinsi,
provinsi.nama_provinsi,

tanah.id_golongan_barang,
golongan_barang.golongan_barang,
LEFT(kode_barang_108.kode_barang_108, 8) kode_l2,
LEFT(kode_barang_108.kode_barang_108, 18) kode_barang_108,

tanah.nama_barang,

kontrak_tanah.tanggal_kontrak,
kontrak_tanah.nomor_kontrak,

kontrak_tanah.tanggal_sp2d,
kontrak_tanah.nomor_sp2d,

kontrak_tanah.tanggal_bku,
kontrak_tanah.nomor_bku,

harga_tanah.tahun,
asal_usul.asal_usul,

harga_tanah.harga_bertambah - harga_tanah.harga_berkurang AS harga,
harga_tanah.catatan as keterangan


FROM
tanah as tanah, harga_tanah as harga_tanah,
asal_usul, golongan_barang, kontrak_tanah,
kode_barang_108,
sub_skpd, skpd, lokasi_bidang, kabupaten, provinsi


WHERE
1 = 1  AND
harga_tanah.id_tanah = tanah.id AND
harga_tanah.id_asal_usul = asal_usul.id AND

tanah.id_golongan_barang = golongan_barang.id AND
tanah.id_kode_barang_108 = kode_barang_108.id AND

harga_tanah.id_kontrak = kontrak_tanah.id AND

tanah.id_sub_skpd = sub_skpd.id AND
sub_skpd.id_skpd = skpd.id AND
skpd.id_lokasi_bidang = lokasi_bidang.id AND
lokasi_bidang.id_kabupaten = kabupaten.id AND
kabupaten.id_provinsi = provinsi.id


UNION ALL


SELECT
peralatan_mesin.id_sub_skpd,
sub_skpd.nama_sub_skpd,

peralatan_mesin.id as register,

sub_skpd.id_skpd,
skpd.nama_skpd,

skpd.id_lokasi_bidang,
lokasi_bidang.nama_lokasi_bidang,

lokasi_bidang.id_kabupaten,
kabupaten.nama_kabupaten,

kabupaten.id_provinsi,
provinsi.nama_provinsi,

peralatan_mesin.id_golongan_barang,
golongan_barang.golongan_barang,
LEFT(kode_barang_108.kode_barang_108, 8) kode_l2,
LEFT(kode_barang_108.kode_barang_108, 18) kode_barang_108,

peralatan_mesin.nama_barang,

kontrak_peralatan_mesin.tanggal_kontrak,
kontrak_peralatan_mesin.nomor_kontrak,

kontrak_peralatan_mesin.tanggal_sp2d,
kontrak_peralatan_mesin.nomor_sp2d,

kontrak_peralatan_mesin.tanggal_bku,
kontrak_peralatan_mesin.nomor_bku,

harga_peralatan_mesin.tahun,
asal_usul.asal_usul,

harga_peralatan_mesin.harga_bertambah - harga_peralatan_mesin.harga_berkurang AS harga,
harga_peralatan_mesin.catatan as keterangan


FROM
peralatan_mesin as peralatan_mesin, harga_peralatan_mesin as harga_peralatan_mesin,
asal_usul, golongan_barang, kontrak_peralatan_mesin,
kode_barang_108,
sub_skpd, skpd, lokasi_bidang, kabupaten, provinsi


WHERE
1 = 1  AND
harga_peralatan_mesin.id_peralatan_mesin = peralatan_mesin.id AND
harga_peralatan_mesin.id_asal_usul = asal_usul.id AND

peralatan_mesin.id_golongan_barang = golongan_barang.id AND
peralatan_mesin.id_kode_barang_108 = kode_barang_108.id AND

harga_peralatan_mesin.id_kontrak_peralatan_mesin = kontrak_peralatan_mesin.id AND

peralatan_mesin.id_sub_skpd = sub_skpd.id AND
sub_skpd.id_skpd = skpd.id AND
skpd.id_lokasi_bidang = lokasi_bidang.id AND
lokasi_bidang.id_kabupaten = kabupaten.id AND
kabupaten.id_provinsi = provinsi.id




UNION ALL


SELECT
gedung_bangunan.id_sub_skpd,
sub_skpd.nama_sub_skpd,

gedung_bangunan.id as register,

sub_skpd.id_skpd,
skpd.nama_skpd,

skpd.id_lokasi_bidang,
lokasi_bidang.nama_lokasi_bidang,

lokasi_bidang.id_kabupaten,
kabupaten.nama_kabupaten,

kabupaten.id_provinsi,
provinsi.nama_provinsi,

gedung_bangunan.id_golongan_barang,
golongan_barang.golongan_barang,
LEFT(kode_barang_108.kode_barang_108, 8) kode_l2,
LEFT(kode_barang_108.kode_barang_108, 18) kode_barang_108,

gedung_bangunan.nama_barang,

kontrak_gedung_bangunan.tanggal_kontrak,
kontrak_gedung_bangunan.nomor_kontrak,

kontrak_gedung_bangunan.tanggal_sp2d,
kontrak_gedung_bangunan.nomor_sp2d,

kontrak_gedung_bangunan.tanggal_bku,
kontrak_gedung_bangunan.nomor_bku,

harga_gedung_bangunan.tahun,
asal_usul.asal_usul,

harga_gedung_bangunan.harga_bertambah - harga_gedung_bangunan.harga_berkurang AS harga,
harga_gedung_bangunan.catatan as keterangan


FROM
gedung_bangunan as gedung_bangunan, harga_gedung_bangunan as harga_gedung_bangunan,
asal_usul, golongan_barang, kontrak_gedung_bangunan,
kode_barang_108,
sub_skpd, skpd, lokasi_bidang, kabupaten, provinsi


WHERE
1 = 1  AND
harga_gedung_bangunan.id_gedung_bangunan = gedung_bangunan.id AND
harga_gedung_bangunan.id_asal_usul = asal_usul.id AND

gedung_bangunan.id_golongan_barang = golongan_barang.id AND
gedung_bangunan.id_kode_barang_108 = kode_barang_108.id AND

harga_gedung_bangunan.id_kontrak_gedung_bangunan = kontrak_gedung_bangunan.id AND

gedung_bangunan.id_sub_skpd = sub_skpd.id AND
sub_skpd.id_skpd = skpd.id AND
skpd.id_lokasi_bidang = lokasi_bidang.id AND
lokasi_bidang.id_kabupaten = kabupaten.id AND
kabupaten.id_provinsi = provinsi.id




UNION ALL


SELECT
jalan_irigasi_jaringan.id_sub_skpd,
sub_skpd.nama_sub_skpd,

jalan_irigasi_jaringan.id as register,

sub_skpd.id_skpd,
skpd.nama_skpd,

skpd.id_lokasi_bidang,
lokasi_bidang.nama_lokasi_bidang,

lokasi_bidang.id_kabupaten,
kabupaten.nama_kabupaten,

kabupaten.id_provinsi,
provinsi.nama_provinsi,

jalan_irigasi_jaringan.id_golongan_barang,
golongan_barang.golongan_barang,
LEFT(kode_barang_108.kode_barang_108, 8) kode_l2,
LEFT(kode_barang_108.kode_barang_108, 18) kode_barang_108,

jalan_irigasi_jaringan.nama_barang,

kontrak_jalan_irigasi_jaringan.tanggal_kontrak,
kontrak_jalan_irigasi_jaringan.nomor_kontrak,

kontrak_jalan_irigasi_jaringan.tanggal_sp2d,
kontrak_jalan_irigasi_jaringan.nomor_sp2d,

kontrak_jalan_irigasi_jaringan.tanggal_bku,
kontrak_jalan_irigasi_jaringan.nomor_bku,

harga_jalan_irigasi_jaringan.tahun,
asal_usul.asal_usul,

harga_jalan_irigasi_jaringan.harga_bertambah - harga_jalan_irigasi_jaringan.harga_berkurang AS harga,
harga_jalan_irigasi_jaringan.catatan as keterangan


FROM
jalan_irigasi_jaringan as jalan_irigasi_jaringan, harga_jalan_irigasi_jaringan as harga_jalan_irigasi_jaringan,
asal_usul, golongan_barang, kontrak_jalan_irigasi_jaringan,
kode_barang_108,
sub_skpd, skpd, lokasi_bidang, kabupaten, provinsi


WHERE
1 = 1  AND
harga_jalan_irigasi_jaringan.id_jalan_irigasi_jaringan = jalan_irigasi_jaringan.id AND
harga_jalan_irigasi_jaringan.id_asal_usul = asal_usul.id AND

jalan_irigasi_jaringan.id_golongan_barang = golongan_barang.id AND
jalan_irigasi_jaringan.id_kode_barang_108 = kode_barang_108.id AND

harga_jalan_irigasi_jaringan.id_kontrak_jalan_irigasi_jaringan = kontrak_jalan_irigasi_jaringan.id AND

jalan_irigasi_jaringan.id_sub_skpd = sub_skpd.id AND
sub_skpd.id_skpd = skpd.id AND
skpd.id_lokasi_bidang = lokasi_bidang.id AND
lokasi_bidang.id_kabupaten = kabupaten.id AND
kabupaten.id_provinsi = provinsi.id




UNION ALL


SELECT
atl.id_sub_skpd,
sub_skpd.nama_sub_skpd,

atl.id as register,

sub_skpd.id_skpd,
skpd.nama_skpd,

skpd.id_lokasi_bidang,
lokasi_bidang.nama_lokasi_bidang,

lokasi_bidang.id_kabupaten,
kabupaten.nama_kabupaten,

kabupaten.id_provinsi,
provinsi.nama_provinsi,

atl.id_golongan_barang,
golongan_barang.golongan_barang,
LEFT(kode_barang_108.kode_barang_108, 8) kode_l2,
LEFT(kode_barang_108.kode_barang_108, 18) kode_barang_108,

atl.nama_barang,

kontrak_atl.tanggal_kontrak,
kontrak_atl.nomor_kontrak,

kontrak_atl.tanggal_sp2d,
kontrak_atl.nomor_sp2d,

kontrak_atl.tanggal_bku,
kontrak_atl.nomor_bku,

harga_atl.tahun,
asal_usul.asal_usul,

harga_atl.harga_bertambah - harga_atl.harga_berkurang AS harga,
harga_atl.catatan as keterangan


FROM
atl as atl, harga_atl as harga_atl,
asal_usul, golongan_barang, kontrak_atl,
kode_barang_108,
sub_skpd, skpd, lokasi_bidang, kabupaten, provinsi


WHERE
1 = 1  AND
harga_atl.id_atl = atl.id AND
harga_atl.id_asal_usul = asal_usul.id AND

atl.id_golongan_barang = golongan_barang.id AND
atl.id_kode_barang_108 = kode_barang_108.id AND

harga_atl.id_kontrak_atl = kontrak_atl.id AND

atl.id_sub_skpd = sub_skpd.id AND
sub_skpd.id_skpd = skpd.id AND
skpd.id_lokasi_bidang = lokasi_bidang.id AND
lokasi_bidang.id_kabupaten = kabupaten.id AND
kabupaten.id_provinsi = provinsi.id

;




GRANT ALL PRIVILEGES ON view_daftar_pengadaan_108_kabupaten_kabupaten TO lap_kabupaten;
REVOKE INSERT, UPDATE, DELETE ON view_daftar_pengadaan_108_kabupaten_kabupaten FROM lap_kabupaten;

GRANT ALL PRIVILEGES ON skpd, sub_skpd, kode_barang_108 TO lap_kabupaten;
REVOKE INSERT, UPDATE, DELETE ON skpd, sub_skpd, kode_barang_108 FROM lap_kabupaten;

GRANT ALL PRIVILEGES ON asal_usul TO lap_kabupaten;
REVOKE INSERT, UPDATE, DELETE ON asal_usul FROM lap_kabupaten;
