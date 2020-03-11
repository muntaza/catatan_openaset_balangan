DROP VIEW IF EXISTS view_kir CASCADE;


CREATE VIEW view_kir AS


SELECT
gedung_bangunan.id_sub_skpd,

ruangan.nama_ruangan,
ruangan.kode_ruangan,
peralatan_mesin.id_ruangan,

ruangan.id_gedung_bangunan,
gedung_bangunan.nama_barang as nama_gedung,

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
SUM(harga_peralatan_mesin.harga_bertambah) - SUM(harga_peralatan_mesin.harga_berkurang) harga,
peralatan_mesin.keterangan



FROM
peralatan_mesin as peralatan_mesin, harga_peralatan_mesin as harga_peralatan_mesin, kode_barang,
mutasi_berkurang, asal_usul, keadaan_barang, satuan_barang, golongan_barang,
sub_skpd, skpd, lokasi_bidang, kabupaten, provinsi, ruangan, gedung_bangunan


WHERE
1 = 1  AND
harga_peralatan_mesin.id_peralatan_mesin = peralatan_mesin.id AND
harga_peralatan_mesin.id_asal_usul = asal_usul.id AND

peralatan_mesin.id_kode_barang = kode_barang.id AND
peralatan_mesin.id_mutasi_berkurang = mutasi_berkurang.id AND

peralatan_mesin.id_keadaan_barang = keadaan_barang.id AND
peralatan_mesin.id_satuan_barang = satuan_barang.id AND
peralatan_mesin.id_golongan_barang = golongan_barang.id AND

peralatan_mesin.id_ruangan = ruangan.id AND
ruangan.id_gedung_bangunan = gedung_bangunan.id AND

gedung_bangunan.id_sub_skpd = sub_skpd.id AND
sub_skpd.id_skpd = skpd.id AND
skpd.id_lokasi_bidang = lokasi_bidang.id AND
lokasi_bidang.id_kabupaten = kabupaten.id AND
kabupaten.id_provinsi = provinsi.id



GROUP BY
gedung_bangunan.id_sub_skpd,

ruangan.nama_ruangan,
ruangan.kode_ruangan,
peralatan_mesin.id_ruangan,

ruangan.id_gedung_bangunan,
nama_gedung,

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
peralatan_mesin.keterangan





UNION ALL


SELECT
gedung_bangunan.id_sub_skpd,

ruangan.nama_ruangan,
ruangan.kode_ruangan,
atl.id_ruangan,

ruangan.id_gedung_bangunan,
gedung_bangunan.nama_barang as nama_gedung,

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
atl.keterangan



FROM
atl as atl, harga_atl as harga_atl, kode_barang,
mutasi_berkurang, asal_usul, keadaan_barang, satuan_barang, golongan_barang,
sub_skpd, skpd, lokasi_bidang, kabupaten, provinsi, ruangan, gedung_bangunan


WHERE
1 = 1  AND
harga_atl.id_atl = atl.id AND
harga_atl.id_asal_usul = asal_usul.id AND

atl.id_kode_barang = kode_barang.id AND
atl.id_mutasi_berkurang = mutasi_berkurang.id AND

atl.id_keadaan_barang = keadaan_barang.id AND
atl.id_satuan_barang = satuan_barang.id AND
atl.id_golongan_barang = golongan_barang.id AND

atl.id_ruangan = ruangan.id AND
ruangan.id_gedung_bangunan = gedung_bangunan.id AND

gedung_bangunan.id_sub_skpd = sub_skpd.id AND
sub_skpd.id_skpd = skpd.id AND
skpd.id_lokasi_bidang = lokasi_bidang.id AND
lokasi_bidang.id_kabupaten = kabupaten.id AND
kabupaten.id_provinsi = provinsi.id


GROUP BY
gedung_bangunan.id_sub_skpd,

ruangan.nama_ruangan,
ruangan.kode_ruangan,
atl.id_ruangan,

ruangan.id_gedung_bangunan,
nama_gedung,

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
atl.keterangan


;


GRANT ALL PRIVILEGES ON view_kir TO lap_kabupaten;
REVOKE INSERT, UPDATE, DELETE ON view_kir FROM lap_kabupaten;

GRANT ALL PRIVILEGES ON skpd, sub_skpd, kode_barang TO lap_kabupaten;
REVOKE INSERT, UPDATE, DELETE ON skpd, sub_skpd, kode_barang FROM lap_kabupaten;

GRANT ALL PRIVILEGES ON asal_usul, ruangan, provinsi, kabupaten, lokasi_bidang  TO lap_kabupaten;
REVOKE INSERT, UPDATE, DELETE ON asal_usul, ruangan, provinsi, kabupaten, lokasi_bidang FROM lap_kabupaten;
