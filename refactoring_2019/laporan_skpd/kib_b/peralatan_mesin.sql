CREATE OR REPLACE VIEW view_peralatan_mesin_kabupaten AS

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
LEFT(kode_barang.kode_barang, 14) kode_barang,
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
peralatan_mesin as peralatan_mesin, harga_peralatan_mesin as harga_peralatan_mesin, kode_barang,
mutasi_berkurang, asal_usul, keadaan_barang, satuan_barang, golongan_barang,
sub_skpd, skpd, lokasi_bidang, kabupaten, provinsi


WHERE
1 = 1  AND
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
peralatan_mesin.nama_barang,
kode_barang,
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



ORDER BY id_skpd, kode_barang;



GRANT ALL PRIVILEGES ON view_peralatan_mesin_kabupaten TO lap_kabupaten;
REVOKE INSERT, UPDATE, DELETE ON view_peralatan_mesin_kabupaten FROM lap_kabupaten;

GRANT ALL PRIVILEGES ON skpd, sub_skpd TO lap_kabupaten;
REVOKE INSERT, UPDATE, DELETE ON skpd, sub_skpd FROM lap_kabupaten;
