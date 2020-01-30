CREATE OR REPLACE VIEW view_atl_108_kabupaten AS

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
LEFT(kode_barang_108.kode_barang_108, 18) kode_barang_108,
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
atl.keterangan


FROM
atl as atl, harga_atl as harga_atl, kode_barang_108,
mutasi_berkurang, asal_usul, keadaan_barang, satuan_barang, golongan_barang,
sub_skpd, skpd, lokasi_bidang, kabupaten, provinsi


WHERE
1 = 1  AND
harga_atl.id_atl = atl.id AND
harga_atl.id_asal_usul = asal_usul.id AND

atl.id_kode_barang_108 = kode_barang_108.id AND
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
kode_barang_108,
register,

atl.judul_pencipta_buku,
atl.spesifikasi_buku,

atl.asal_daerah_barang_seni,
atl.pencipta_barang_seni,
atl.bahan_barang_seni,

atl.jenis_hewan_tumbuhan,
atl.ukuran_hewan_tumbuhan,

atl.tahun,
atl.keterangan

ORDER BY id_skpd, kode_barang_108;




GRANT ALL PRIVILEGES ON view_atl_108_kabupaten TO lap_kabupaten;
REVOKE INSERT, UPDATE, DELETE ON view_atl_108_kabupaten FROM lap_kabupaten;
CREATE OR REPLACE VIEW view_gedung_bangunan_108_kabupaten AS

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
LEFT(kode_barang_108.kode_barang_108, 18) kode_barang_108,
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

array_to_string(array_unique(array_agg(asal_usul.asal_usul)), ', ') asal_usul,
SUM(harga_gedung_bangunan.harga_bertambah) - SUM(harga_gedung_bangunan.harga_berkurang) harga,

gedung_bangunan.keterangan


FROM
gedung_bangunan as gedung_bangunan, harga_gedung_bangunan as harga_gedung_bangunan, kode_barang_108,
mutasi_berkurang, asal_usul, keadaan_barang, satuan_barang, golongan_barang,
status_tingkat, status_beton,
sub_skpd, skpd, lokasi_bidang, kabupaten, provinsi, view_tanah_tanpa_harga_kabupaten


WHERE
1 = 1  AND
harga_gedung_bangunan.id_gedung_bangunan = gedung_bangunan.id AND
harga_gedung_bangunan.id_asal_usul = asal_usul.id AND

gedung_bangunan.id_kode_barang_108 = kode_barang_108.id AND
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
kode_barang_108,
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





ORDER BY id_skpd, kode_barang_108;



GRANT ALL PRIVILEGES ON view_gedung_bangunan_108_kabupaten TO lap_kabupaten;
REVOKE INSERT, UPDATE, DELETE ON view_gedung_bangunan_108_kabupaten FROM lap_kabupaten;




CREATE OR REPLACE VIEW view_jalan_irigasi_jaringan_108_kabupaten AS

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
LEFT(kode_barang_108.kode_barang_108, 18) kode_barang_108,
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

array_to_string(array_unique(array_agg(asal_usul.asal_usul)), ', ') asal_usul,
SUM(harga_jalan_irigasi_jaringan.harga_bertambah) - SUM(harga_jalan_irigasi_jaringan.harga_berkurang) harga,

jalan_irigasi_jaringan.keterangan as ket


FROM
jalan_irigasi_jaringan as jalan_irigasi_jaringan, harga_jalan_irigasi_jaringan as harga_jalan_irigasi_jaringan, kode_barang_108,
mutasi_berkurang, asal_usul, keadaan_barang, satuan_barang, golongan_barang,
sub_skpd, skpd, lokasi_bidang, kabupaten, provinsi, view_tanah_tanpa_harga_kabupaten


WHERE
1 = 1  AND
harga_jalan_irigasi_jaringan.id_jalan_irigasi_jaringan = jalan_irigasi_jaringan.id AND
harga_jalan_irigasi_jaringan.id_asal_usul = asal_usul.id AND

jalan_irigasi_jaringan.id_kode_barang_108 = kode_barang_108.id AND
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
kode_barang_108,
register,
jalan_irigasi_jaringan.tahun,
letak_lokasi,
jalan_irigasi_jaringan.tanggal_dokumen,
jalan_irigasi_jaringan.nomor_dokumen,
view_tanah_tanpa_harga_kabupaten.status_tanah,
nomor_kode_tanah,
ket




ORDER BY id_skpd, kode_barang_108;



GRANT ALL PRIVILEGES ON view_jalan_irigasi_jaringan_108_kabupaten TO lap_kabupaten;
REVOKE INSERT, UPDATE, DELETE ON view_jalan_irigasi_jaringan_108_kabupaten FROM lap_kabupaten;



CREATE OR REPLACE VIEW view_peralatan_mesin_108_kabupaten AS

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
LEFT(kode_barang_108.kode_barang_108, 18) kode_barang_108,
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
peralatan_mesin as peralatan_mesin, harga_peralatan_mesin as harga_peralatan_mesin, kode_barang_108,
mutasi_berkurang, asal_usul, keadaan_barang, satuan_barang, golongan_barang,
sub_skpd, skpd, lokasi_bidang, kabupaten, provinsi


WHERE
1 = 1  AND
harga_peralatan_mesin.id_peralatan_mesin = peralatan_mesin.id AND
harga_peralatan_mesin.id_asal_usul = asal_usul.id AND

peralatan_mesin.id_kode_barang_108 = kode_barang_108.id AND
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
kode_barang_108,
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



ORDER BY id_skpd, kode_barang_108;



GRANT ALL PRIVILEGES ON view_peralatan_mesin_108_kabupaten TO lap_kabupaten;
REVOKE INSERT, UPDATE, DELETE ON view_peralatan_mesin_108_kabupaten FROM lap_kabupaten;

GRANT ALL PRIVILEGES ON skpd, sub_skpd TO lap_kabupaten;
REVOKE INSERT, UPDATE, DELETE ON skpd, sub_skpd FROM lap_kabupaten;
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
