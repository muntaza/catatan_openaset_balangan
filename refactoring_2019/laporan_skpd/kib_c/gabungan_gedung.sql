DROP VIEW IF EXISTS view_gedung_bangunan_awayan;



CREATE VIEW view_gedung_bangunan_awayan AS

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
kabupaten.id_provinsi = provinsi.id AND

skpd.id = 34

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



GRANT ALL PRIVILEGES ON view_gedung_bangunan_awayan TO lap_awayan;
REVOKE INSERT, UPDATE, DELETE ON view_gedung_bangunan_awayan FROM lap_awayan;




DROP VIEW IF EXISTS view_gedung_bangunan_bappeda;



CREATE VIEW view_gedung_bangunan_bappeda AS

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
kabupaten.id_provinsi = provinsi.id AND

skpd.id = 21

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



GRANT ALL PRIVILEGES ON view_gedung_bangunan_bappeda TO lap_bappeda;
REVOKE INSERT, UPDATE, DELETE ON view_gedung_bangunan_bappeda FROM lap_bappeda;




DROP VIEW IF EXISTS view_gedung_bangunan_batumandi;



CREATE VIEW view_gedung_bangunan_batumandi AS

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
kabupaten.id_provinsi = provinsi.id AND

skpd.id = 32

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



GRANT ALL PRIVILEGES ON view_gedung_bangunan_batumandi TO lap_batumandi;
REVOKE INSERT, UPDATE, DELETE ON view_gedung_bangunan_batumandi FROM lap_batumandi;




DROP VIEW IF EXISTS view_gedung_bangunan_batupiring;



CREATE VIEW view_gedung_bangunan_batupiring AS

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
kabupaten.id_provinsi = provinsi.id AND

skpd.id = 37

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



GRANT ALL PRIVILEGES ON view_gedung_bangunan_batupiring TO lap_batupiring;
REVOKE INSERT, UPDATE, DELETE ON view_gedung_bangunan_batupiring FROM lap_batupiring;




DROP VIEW IF EXISTS view_gedung_bangunan_bkd;



CREATE VIEW view_gedung_bangunan_bkd AS

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
kabupaten.id_provinsi = provinsi.id AND

skpd.id = 19

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



GRANT ALL PRIVILEGES ON view_gedung_bangunan_bkd TO lap_bkd;
REVOKE INSERT, UPDATE, DELETE ON view_gedung_bangunan_bkd FROM lap_bkd;




DROP VIEW IF EXISTS view_gedung_bangunan_bkppd;



CREATE VIEW view_gedung_bangunan_bkppd AS

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
kabupaten.id_provinsi = provinsi.id AND

skpd.id = 26

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



GRANT ALL PRIVILEGES ON view_gedung_bangunan_bkppd TO lap_bkppd;
REVOKE INSERT, UPDATE, DELETE ON view_gedung_bangunan_bkppd FROM lap_bkppd;




DROP VIEW IF EXISTS view_gedung_bangunan_bpbd;



CREATE VIEW view_gedung_bangunan_bpbd AS

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
kabupaten.id_provinsi = provinsi.id AND

skpd.id = 39

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



GRANT ALL PRIVILEGES ON view_gedung_bangunan_bpbd TO lap_bpbd;
REVOKE INSERT, UPDATE, DELETE ON view_gedung_bangunan_bpbd FROM lap_bpbd;




DROP VIEW IF EXISTS view_gedung_bangunan_bppd;



CREATE VIEW view_gedung_bangunan_bppd AS

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
kabupaten.id_provinsi = provinsi.id AND

skpd.id = 48

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



GRANT ALL PRIVILEGES ON view_gedung_bangunan_bppd TO lap_bppd;
REVOKE INSERT, UPDATE, DELETE ON view_gedung_bangunan_bppd FROM lap_bppd;




DROP VIEW IF EXISTS view_gedung_bangunan_dinkes;



CREATE VIEW view_gedung_bangunan_dinkes AS

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
kabupaten.id_provinsi = provinsi.id AND

skpd.id = 5

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



GRANT ALL PRIVILEGES ON view_gedung_bangunan_dinkes TO lap_dinkes;
REVOKE INSERT, UPDATE, DELETE ON view_gedung_bangunan_dinkes FROM lap_dinkes;




DROP VIEW IF EXISTS view_gedung_bangunan_disdik;



CREATE VIEW view_gedung_bangunan_disdik AS

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
kabupaten.id_provinsi = provinsi.id AND

skpd.id = 7

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



GRANT ALL PRIVILEGES ON view_gedung_bangunan_disdik TO lap_disdik;
REVOKE INSERT, UPDATE, DELETE ON view_gedung_bangunan_disdik FROM lap_disdik;




DROP VIEW IF EXISTS view_gedung_bangunan_dishub;



CREATE VIEW view_gedung_bangunan_dishub AS

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
kabupaten.id_provinsi = provinsi.id AND

skpd.id = 4

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



GRANT ALL PRIVILEGES ON view_gedung_bangunan_dishub TO lap_dishub;
REVOKE INSERT, UPDATE, DELETE ON view_gedung_bangunan_dishub FROM lap_dishub;




DROP VIEW IF EXISTS view_gedung_bangunan_disnakertrans;



CREATE VIEW view_gedung_bangunan_disnakertrans AS

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
kabupaten.id_provinsi = provinsi.id AND

skpd.id = 41

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



GRANT ALL PRIVILEGES ON view_gedung_bangunan_disnakertrans TO lap_disnakertrans;
REVOKE INSERT, UPDATE, DELETE ON view_gedung_bangunan_disnakertrans FROM lap_disnakertrans;




DROP VIEW IF EXISTS view_gedung_bangunan_distamben;



CREATE VIEW view_gedung_bangunan_distamben AS

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
kabupaten.id_provinsi = provinsi.id AND

skpd.id = 17

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



GRANT ALL PRIVILEGES ON view_gedung_bangunan_distamben TO lap_distamben;
REVOKE INSERT, UPDATE, DELETE ON view_gedung_bangunan_distamben FROM lap_distamben;




DROP VIEW IF EXISTS view_gedung_bangunan_dko;



CREATE VIEW view_gedung_bangunan_dko AS

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
kabupaten.id_provinsi = provinsi.id AND

skpd.id = 23

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



GRANT ALL PRIVILEGES ON view_gedung_bangunan_dko TO lap_dko;
REVOKE INSERT, UPDATE, DELETE ON view_gedung_bangunan_dko FROM lap_dko;




DROP VIEW IF EXISTS view_gedung_bangunan_dkp;



CREATE VIEW view_gedung_bangunan_dkp AS

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
kabupaten.id_provinsi = provinsi.id AND

skpd.id = 15

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



GRANT ALL PRIVILEGES ON view_gedung_bangunan_dkp TO lap_dkp;
REVOKE INSERT, UPDATE, DELETE ON view_gedung_bangunan_dkp FROM lap_dkp;




DROP VIEW IF EXISTS view_gedung_bangunan_dkukmp;



CREATE VIEW view_gedung_bangunan_dkukmp AS

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
kabupaten.id_provinsi = provinsi.id AND

skpd.id = 16

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



GRANT ALL PRIVILEGES ON view_gedung_bangunan_dkukmp TO lap_dkukmp;
REVOKE INSERT, UPDATE, DELETE ON view_gedung_bangunan_dkukmp FROM lap_dkukmp;




DROP VIEW IF EXISTS view_gedung_bangunan_dlh;



CREATE VIEW view_gedung_bangunan_dlh AS

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
kabupaten.id_provinsi = provinsi.id AND

skpd.id = 22

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



GRANT ALL PRIVILEGES ON view_gedung_bangunan_dlh TO lap_dlh;
REVOKE INSERT, UPDATE, DELETE ON view_gedung_bangunan_dlh FROM lap_dlh;




DROP VIEW IF EXISTS view_gedung_bangunan_dpkp;



CREATE VIEW view_gedung_bangunan_dpkp AS

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
kabupaten.id_provinsi = provinsi.id AND

skpd.id = 40

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



GRANT ALL PRIVILEGES ON view_gedung_bangunan_dpkp TO lap_dpkp;
REVOKE INSERT, UPDATE, DELETE ON view_gedung_bangunan_dpkp FROM lap_dpkp;




DROP VIEW IF EXISTS view_gedung_bangunan_dpmd;



CREATE VIEW view_gedung_bangunan_dpmd AS

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
kabupaten.id_provinsi = provinsi.id AND

skpd.id = 10

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



GRANT ALL PRIVILEGES ON view_gedung_bangunan_dpmd TO lap_dpmd;
REVOKE INSERT, UPDATE, DELETE ON view_gedung_bangunan_dpmd FROM lap_dpmd;




DROP VIEW IF EXISTS view_gedung_bangunan_dpmptsp;



CREATE VIEW view_gedung_bangunan_dpmptsp AS

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
kabupaten.id_provinsi = provinsi.id AND

skpd.id = 18

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



GRANT ALL PRIVILEGES ON view_gedung_bangunan_dpmptsp TO lap_dpmptsp;
REVOKE INSERT, UPDATE, DELETE ON view_gedung_bangunan_dpmptsp FROM lap_dpmptsp;




DROP VIEW IF EXISTS view_gedung_bangunan_dppkb;



CREATE VIEW view_gedung_bangunan_dppkb AS

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
kabupaten.id_provinsi = provinsi.id AND

skpd.id = 42

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



GRANT ALL PRIVILEGES ON view_gedung_bangunan_dppkb TO lap_dppkb;
REVOKE INSERT, UPDATE, DELETE ON view_gedung_bangunan_dppkb FROM lap_dppkb;




DROP VIEW IF EXISTS view_gedung_bangunan_dpppa;



CREATE VIEW view_gedung_bangunan_dpppa AS

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
kabupaten.id_provinsi = provinsi.id AND

skpd.id = 11

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



GRANT ALL PRIVILEGES ON view_gedung_bangunan_dpppa TO lap_dpppa;
REVOKE INSERT, UPDATE, DELETE ON view_gedung_bangunan_dpppa FROM lap_dpppa;




DROP VIEW IF EXISTS view_gedung_bangunan_dpupr;



CREATE VIEW view_gedung_bangunan_dpupr AS

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
kabupaten.id_provinsi = provinsi.id AND

skpd.id = 3

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



GRANT ALL PRIVILEGES ON view_gedung_bangunan_dpupr TO lap_dpupr;
REVOKE INSERT, UPDATE, DELETE ON view_gedung_bangunan_dpupr FROM lap_dpupr;




DROP VIEW IF EXISTS view_gedung_bangunan_dukcatpil;



CREATE VIEW view_gedung_bangunan_dukcatpil AS

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
kabupaten.id_provinsi = provinsi.id AND

skpd.id = 12

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



GRANT ALL PRIVILEGES ON view_gedung_bangunan_dukcatpil TO lap_dukcatpil;
REVOKE INSERT, UPDATE, DELETE ON view_gedung_bangunan_dukcatpil FROM lap_dukcatpil;




DROP VIEW IF EXISTS view_gedung_bangunan_halong;



CREATE VIEW view_gedung_bangunan_halong AS

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
kabupaten.id_provinsi = provinsi.id AND

skpd.id = 35

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



GRANT ALL PRIVILEGES ON view_gedung_bangunan_halong TO lap_halong;
REVOKE INSERT, UPDATE, DELETE ON view_gedung_bangunan_halong FROM lap_halong;




DROP VIEW IF EXISTS view_gedung_bangunan_inspektorat;



CREATE VIEW view_gedung_bangunan_inspektorat AS

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
kabupaten.id_provinsi = provinsi.id AND

skpd.id = 20

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



GRANT ALL PRIVILEGES ON view_gedung_bangunan_inspektorat TO lap_inspektorat;
REVOKE INSERT, UPDATE, DELETE ON view_gedung_bangunan_inspektorat FROM lap_inspektorat;




DROP VIEW IF EXISTS view_gedung_bangunan_juai;



CREATE VIEW view_gedung_bangunan_juai AS

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
kabupaten.id_provinsi = provinsi.id AND

skpd.id = 33

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



GRANT ALL PRIVILEGES ON view_gedung_bangunan_juai TO lap_juai;
REVOKE INSERT, UPDATE, DELETE ON view_gedung_bangunan_juai FROM lap_juai;




DROP VIEW IF EXISTS view_gedung_bangunan_kearsipan;



CREATE VIEW view_gedung_bangunan_kearsipan AS

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
kabupaten.id_provinsi = provinsi.id AND

skpd.id = 44

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



GRANT ALL PRIVILEGES ON view_gedung_bangunan_kearsipan TO lap_kearsipan;
REVOKE INSERT, UPDATE, DELETE ON view_gedung_bangunan_kearsipan FROM lap_kearsipan;




DROP VIEW IF EXISTS view_gedung_bangunan_kehutanan;



CREATE VIEW view_gedung_bangunan_kehutanan AS

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
kabupaten.id_provinsi = provinsi.id AND

skpd.id = 14

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



GRANT ALL PRIVILEGES ON view_gedung_bangunan_kehutanan TO lap_kehutanan;
REVOKE INSERT, UPDATE, DELETE ON view_gedung_bangunan_kehutanan FROM lap_kehutanan;




DROP VIEW IF EXISTS view_gedung_bangunan_kesbangpol;



CREATE VIEW view_gedung_bangunan_kesbangpol AS

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
kabupaten.id_provinsi = provinsi.id AND

skpd.id = 24

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



GRANT ALL PRIVILEGES ON view_gedung_bangunan_kesbangpol TO lap_kesbangpol;
REVOKE INSERT, UPDATE, DELETE ON view_gedung_bangunan_kesbangpol FROM lap_kesbangpol;




DROP VIEW IF EXISTS view_gedung_bangunan_kominfo;



CREATE VIEW view_gedung_bangunan_kominfo AS

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
kabupaten.id_provinsi = provinsi.id AND

skpd.id = 43

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



GRANT ALL PRIVILEGES ON view_gedung_bangunan_kominfo TO lap_kominfo;
REVOKE INSERT, UPDATE, DELETE ON view_gedung_bangunan_kominfo FROM lap_kominfo;




DROP VIEW IF EXISTS view_gedung_bangunan_korpri;



CREATE VIEW view_gedung_bangunan_korpri AS

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
kabupaten.id_provinsi = provinsi.id AND

skpd.id = 27

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



GRANT ALL PRIVILEGES ON view_gedung_bangunan_korpri TO lap_korpri;
REVOKE INSERT, UPDATE, DELETE ON view_gedung_bangunan_korpri FROM lap_korpri;




DROP VIEW IF EXISTS view_gedung_bangunan_lampihong;



CREATE VIEW view_gedung_bangunan_lampihong AS

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
kabupaten.id_provinsi = provinsi.id AND

skpd.id = 31

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



GRANT ALL PRIVILEGES ON view_gedung_bangunan_lampihong TO lap_lampihong;
REVOKE INSERT, UPDATE, DELETE ON view_gedung_bangunan_lampihong FROM lap_lampihong;




DROP VIEW IF EXISTS view_gedung_bangunan_paringin;



CREATE VIEW view_gedung_bangunan_paringin AS

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
kabupaten.id_provinsi = provinsi.id AND

skpd.id = 28

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



GRANT ALL PRIVILEGES ON view_gedung_bangunan_paringin TO lap_paringin;
REVOKE INSERT, UPDATE, DELETE ON view_gedung_bangunan_paringin FROM lap_paringin;




DROP VIEW IF EXISTS view_gedung_bangunan_paringinkota;



CREATE VIEW view_gedung_bangunan_paringinkota AS

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
kabupaten.id_provinsi = provinsi.id AND

skpd.id = 29

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



GRANT ALL PRIVILEGES ON view_gedung_bangunan_paringinkota TO lap_paringinkota;
REVOKE INSERT, UPDATE, DELETE ON view_gedung_bangunan_paringinkota FROM lap_paringinkota;




DROP VIEW IF EXISTS view_gedung_bangunan_paringinselatan;



CREATE VIEW view_gedung_bangunan_paringinselatan AS

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
kabupaten.id_provinsi = provinsi.id AND

skpd.id = 36

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



GRANT ALL PRIVILEGES ON view_gedung_bangunan_paringinselatan TO lap_paringinselatan;
REVOKE INSERT, UPDATE, DELETE ON view_gedung_bangunan_paringinselatan FROM lap_paringinselatan;




DROP VIEW IF EXISTS view_gedung_bangunan_paringintimur;



CREATE VIEW view_gedung_bangunan_paringintimur AS

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
kabupaten.id_provinsi = provinsi.id AND

skpd.id = 30

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



GRANT ALL PRIVILEGES ON view_gedung_bangunan_paringintimur TO lap_paringintimur;
REVOKE INSERT, UPDATE, DELETE ON view_gedung_bangunan_paringintimur FROM lap_paringintimur;




DROP VIEW IF EXISTS view_gedung_bangunan_pariwisata;



CREATE VIEW view_gedung_bangunan_pariwisata AS

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
kabupaten.id_provinsi = provinsi.id AND

skpd.id = 46

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



GRANT ALL PRIVILEGES ON view_gedung_bangunan_pariwisata TO lap_pariwisata;
REVOKE INSERT, UPDATE, DELETE ON view_gedung_bangunan_pariwisata FROM lap_pariwisata;




DROP VIEW IF EXISTS view_gedung_bangunan_perdagangan;



CREATE VIEW view_gedung_bangunan_perdagangan AS

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
kabupaten.id_provinsi = provinsi.id AND

skpd.id = 47

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



GRANT ALL PRIVILEGES ON view_gedung_bangunan_perdagangan TO lap_perdagangan;
REVOKE INSERT, UPDATE, DELETE ON view_gedung_bangunan_perdagangan FROM lap_perdagangan;




DROP VIEW IF EXISTS view_gedung_bangunan_perikanan;



CREATE VIEW view_gedung_bangunan_perikanan AS

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
kabupaten.id_provinsi = provinsi.id AND

skpd.id = 45

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



GRANT ALL PRIVILEGES ON view_gedung_bangunan_perikanan TO lap_perikanan;
REVOKE INSERT, UPDATE, DELETE ON view_gedung_bangunan_perikanan FROM lap_perikanan;




DROP VIEW IF EXISTS view_gedung_bangunan_perpustakaan;



CREATE VIEW view_gedung_bangunan_perpustakaan AS

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
kabupaten.id_provinsi = provinsi.id AND

skpd.id = 8

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



GRANT ALL PRIVILEGES ON view_gedung_bangunan_perpustakaan TO lap_perpustakaan;
REVOKE INSERT, UPDATE, DELETE ON view_gedung_bangunan_perpustakaan FROM lap_perpustakaan;




DROP VIEW IF EXISTS view_gedung_bangunan_pertanian;



CREATE VIEW view_gedung_bangunan_pertanian AS

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
kabupaten.id_provinsi = provinsi.id AND

skpd.id = 13

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



GRANT ALL PRIVILEGES ON view_gedung_bangunan_pertanian TO lap_pertanian;
REVOKE INSERT, UPDATE, DELETE ON view_gedung_bangunan_pertanian FROM lap_pertanian;




DROP VIEW IF EXISTS view_gedung_bangunan_rsud;



CREATE VIEW view_gedung_bangunan_rsud AS

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
kabupaten.id_provinsi = provinsi.id AND

skpd.id = 6

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



GRANT ALL PRIVILEGES ON view_gedung_bangunan_rsud TO lap_rsud;
REVOKE INSERT, UPDATE, DELETE ON view_gedung_bangunan_rsud FROM lap_rsud;




DROP VIEW IF EXISTS view_gedung_bangunan_satpolpp;



CREATE VIEW view_gedung_bangunan_satpolpp AS

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
kabupaten.id_provinsi = provinsi.id AND

skpd.id = 25

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



GRANT ALL PRIVILEGES ON view_gedung_bangunan_satpolpp TO lap_satpolpp;
REVOKE INSERT, UPDATE, DELETE ON view_gedung_bangunan_satpolpp FROM lap_satpolpp;




DROP VIEW IF EXISTS view_gedung_bangunan_setda;



CREATE VIEW view_gedung_bangunan_setda AS

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
kabupaten.id_provinsi = provinsi.id AND

skpd.id = 2

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



GRANT ALL PRIVILEGES ON view_gedung_bangunan_setda TO lap_setda;
REVOKE INSERT, UPDATE, DELETE ON view_gedung_bangunan_setda FROM lap_setda;




DROP VIEW IF EXISTS view_gedung_bangunan_setwan;



CREATE VIEW view_gedung_bangunan_setwan AS

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
kabupaten.id_provinsi = provinsi.id AND

skpd.id = 1

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



GRANT ALL PRIVILEGES ON view_gedung_bangunan_setwan TO lap_setwan;
REVOKE INSERT, UPDATE, DELETE ON view_gedung_bangunan_setwan FROM lap_setwan;




DROP VIEW IF EXISTS view_gedung_bangunan_sosial;



CREATE VIEW view_gedung_bangunan_sosial AS

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
kabupaten.id_provinsi = provinsi.id AND

skpd.id = 9

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



GRANT ALL PRIVILEGES ON view_gedung_bangunan_sosial TO lap_sosial;
REVOKE INSERT, UPDATE, DELETE ON view_gedung_bangunan_sosial FROM lap_sosial;




DROP VIEW IF EXISTS view_gedung_bangunan_tebingtinggi;



CREATE VIEW view_gedung_bangunan_tebingtinggi AS

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
kabupaten.id_provinsi = provinsi.id AND

skpd.id = 38

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



GRANT ALL PRIVILEGES ON view_gedung_bangunan_tebingtinggi TO lap_tebingtinggi;
REVOKE INSERT, UPDATE, DELETE ON view_gedung_bangunan_tebingtinggi FROM lap_tebingtinggi;




