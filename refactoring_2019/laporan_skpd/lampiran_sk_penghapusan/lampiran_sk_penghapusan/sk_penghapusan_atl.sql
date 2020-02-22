DROP VIEW IF EXISTS view_sk_penghapusan_atl_kabupaten;


CREATE VIEW view_sk_penghapusan_atl_kabupaten AS

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
LEFT(kode_barang.kode_barang, 14) kode_barang,
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

penghapusan_atl.id_sk_penghapusan,
sk_penghapusan.nomor_sk_penghapusan,
sk_penghapusan.tanggal_sk_penghapusan,
tahun_berkurang_atl.tahun_berkurang as tahun_penghapusan,
tahun_berkurang_usul_hapus_atl.tahun_berkurang as tahun_usul_hapus,

atl.keterangan


FROM
atl as atl, harga_atl as harga_atl, kode_barang,
mutasi_berkurang, asal_usul, keadaan_barang, satuan_barang, golongan_barang,
sub_skpd, skpd, lokasi_bidang, kabupaten, provinsi,
tahun_berkurang_usul_hapus_atl,
tahun_berkurang_atl, penghapusan_atl, sk_penghapusan


WHERE
1 = 1  AND
atl.id = tahun_berkurang_atl.id_atl AND
atl.id = tahun_berkurang_usul_hapus_atl.id_atl AND
atl.id = penghapusan_atl.id_atl AND
penghapusan_atl.id_sk_penghapusan = sk_penghapusan.id AND

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
atl.nama_barang,
kode_barang,
register,

atl.judul_pencipta_buku,
atl.spesifikasi_buku,

atl.asal_daerah_barang_seni,
atl.pencipta_barang_seni,
atl.bahan_barang_seni,

atl.jenis_hewan_tumbuhan,
atl.ukuran_hewan_tumbuhan,

atl.tahun,

id_sk_penghapusan,
nomor_sk_penghapusan,
tanggal_sk_penghapusan,
tahun_penghapusan,
tahun_usul_hapus,

atl.keterangan

ORDER BY id_skpd, kode_barang;




GRANT ALL PRIVILEGES ON view_sk_penghapusan_atl_kabupaten TO lap_kabupaten;
REVOKE INSERT, UPDATE, DELETE ON view_sk_penghapusan_atl_kabupaten FROM lap_kabupaten;
