DROP VIEW IF EXISTS view_peralatan_mesin_awayan;



CREATE VIEW view_peralatan_mesin_awayan AS

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

string_agg(asal_usul.asal_usul, ' : ') asal_usul,
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

AND skpd.id = 34



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



GRANT ALL PRIVILEGES ON view_peralatan_mesin_awayan TO lap_awayan;
REVOKE INSERT, UPDATE, DELETE ON view_peralatan_mesin_awayan FROM lap_awayan;

GRANT ALL PRIVILEGES ON skpd, sub_skpd TO lap_awayan;
REVOKE INSERT, UPDATE, DELETE ON skpd, sub_skpd FROM lap_awayan;
DROP VIEW IF EXISTS view_peralatan_mesin_bappeda;



CREATE VIEW view_peralatan_mesin_bappeda AS

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

string_agg(asal_usul.asal_usul, ' : ') asal_usul,
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

AND skpd.id = 21



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



GRANT ALL PRIVILEGES ON view_peralatan_mesin_bappeda TO lap_bappeda;
REVOKE INSERT, UPDATE, DELETE ON view_peralatan_mesin_bappeda FROM lap_bappeda;

GRANT ALL PRIVILEGES ON skpd, sub_skpd TO lap_bappeda;
REVOKE INSERT, UPDATE, DELETE ON skpd, sub_skpd FROM lap_bappeda;
DROP VIEW IF EXISTS view_peralatan_mesin_batumandi;



CREATE VIEW view_peralatan_mesin_batumandi AS

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

string_agg(asal_usul.asal_usul, ' : ') asal_usul,
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

AND skpd.id = 32



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



GRANT ALL PRIVILEGES ON view_peralatan_mesin_batumandi TO lap_batumandi;
REVOKE INSERT, UPDATE, DELETE ON view_peralatan_mesin_batumandi FROM lap_batumandi;

GRANT ALL PRIVILEGES ON skpd, sub_skpd TO lap_batumandi;
REVOKE INSERT, UPDATE, DELETE ON skpd, sub_skpd FROM lap_batumandi;
DROP VIEW IF EXISTS view_peralatan_mesin_batupiring;



CREATE VIEW view_peralatan_mesin_batupiring AS

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

string_agg(asal_usul.asal_usul, ' : ') asal_usul,
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

AND skpd.id = 37



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



GRANT ALL PRIVILEGES ON view_peralatan_mesin_batupiring TO lap_batupiring;
REVOKE INSERT, UPDATE, DELETE ON view_peralatan_mesin_batupiring FROM lap_batupiring;

GRANT ALL PRIVILEGES ON skpd, sub_skpd TO lap_batupiring;
REVOKE INSERT, UPDATE, DELETE ON skpd, sub_skpd FROM lap_batupiring;
DROP VIEW IF EXISTS view_peralatan_mesin_bkd;



CREATE VIEW view_peralatan_mesin_bkd AS

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

string_agg(asal_usul.asal_usul, ' : ') asal_usul,
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

AND skpd.id = 19



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



GRANT ALL PRIVILEGES ON view_peralatan_mesin_bkd TO lap_bkd;
REVOKE INSERT, UPDATE, DELETE ON view_peralatan_mesin_bkd FROM lap_bkd;

GRANT ALL PRIVILEGES ON skpd, sub_skpd TO lap_bkd;
REVOKE INSERT, UPDATE, DELETE ON skpd, sub_skpd FROM lap_bkd;
DROP VIEW IF EXISTS view_peralatan_mesin_bkppd;



CREATE VIEW view_peralatan_mesin_bkppd AS

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

string_agg(asal_usul.asal_usul, ' : ') asal_usul,
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

AND skpd.id = 26



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



GRANT ALL PRIVILEGES ON view_peralatan_mesin_bkppd TO lap_bkppd;
REVOKE INSERT, UPDATE, DELETE ON view_peralatan_mesin_bkppd FROM lap_bkppd;

GRANT ALL PRIVILEGES ON skpd, sub_skpd TO lap_bkppd;
REVOKE INSERT, UPDATE, DELETE ON skpd, sub_skpd FROM lap_bkppd;
DROP VIEW IF EXISTS view_peralatan_mesin_bpbd;



CREATE VIEW view_peralatan_mesin_bpbd AS

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

string_agg(asal_usul.asal_usul, ' : ') asal_usul,
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

AND skpd.id = 39



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



GRANT ALL PRIVILEGES ON view_peralatan_mesin_bpbd TO lap_bpbd;
REVOKE INSERT, UPDATE, DELETE ON view_peralatan_mesin_bpbd FROM lap_bpbd;

GRANT ALL PRIVILEGES ON skpd, sub_skpd TO lap_bpbd;
REVOKE INSERT, UPDATE, DELETE ON skpd, sub_skpd FROM lap_bpbd;
DROP VIEW IF EXISTS view_peralatan_mesin_bppd;



CREATE VIEW view_peralatan_mesin_bppd AS

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

string_agg(asal_usul.asal_usul, ' : ') asal_usul,
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

AND skpd.id = 48



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



GRANT ALL PRIVILEGES ON view_peralatan_mesin_bppd TO lap_bppd;
REVOKE INSERT, UPDATE, DELETE ON view_peralatan_mesin_bppd FROM lap_bppd;

GRANT ALL PRIVILEGES ON skpd, sub_skpd TO lap_bppd;
REVOKE INSERT, UPDATE, DELETE ON skpd, sub_skpd FROM lap_bppd;
DROP VIEW IF EXISTS view_peralatan_mesin_dinkes;



CREATE VIEW view_peralatan_mesin_dinkes AS

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

string_agg(asal_usul.asal_usul, ' : ') asal_usul,
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

AND skpd.id = 5



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



GRANT ALL PRIVILEGES ON view_peralatan_mesin_dinkes TO lap_dinkes;
REVOKE INSERT, UPDATE, DELETE ON view_peralatan_mesin_dinkes FROM lap_dinkes;

GRANT ALL PRIVILEGES ON skpd, sub_skpd TO lap_dinkes;
REVOKE INSERT, UPDATE, DELETE ON skpd, sub_skpd FROM lap_dinkes;
DROP VIEW IF EXISTS view_peralatan_mesin_disdik;



CREATE VIEW view_peralatan_mesin_disdik AS

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

string_agg(asal_usul.asal_usul, ' : ') asal_usul,
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

AND skpd.id = 7



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



GRANT ALL PRIVILEGES ON view_peralatan_mesin_disdik TO lap_disdik;
REVOKE INSERT, UPDATE, DELETE ON view_peralatan_mesin_disdik FROM lap_disdik;

GRANT ALL PRIVILEGES ON skpd, sub_skpd TO lap_disdik;
REVOKE INSERT, UPDATE, DELETE ON skpd, sub_skpd FROM lap_disdik;
DROP VIEW IF EXISTS view_peralatan_mesin_dishub;



CREATE VIEW view_peralatan_mesin_dishub AS

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

string_agg(asal_usul.asal_usul, ' : ') asal_usul,
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

AND skpd.id = 4



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



GRANT ALL PRIVILEGES ON view_peralatan_mesin_dishub TO lap_dishub;
REVOKE INSERT, UPDATE, DELETE ON view_peralatan_mesin_dishub FROM lap_dishub;

GRANT ALL PRIVILEGES ON skpd, sub_skpd TO lap_dishub;
REVOKE INSERT, UPDATE, DELETE ON skpd, sub_skpd FROM lap_dishub;
DROP VIEW IF EXISTS view_peralatan_mesin_disnakertrans;



CREATE VIEW view_peralatan_mesin_disnakertrans AS

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

string_agg(asal_usul.asal_usul, ' : ') asal_usul,
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

AND skpd.id = 41



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



GRANT ALL PRIVILEGES ON view_peralatan_mesin_disnakertrans TO lap_disnakertrans;
REVOKE INSERT, UPDATE, DELETE ON view_peralatan_mesin_disnakertrans FROM lap_disnakertrans;

GRANT ALL PRIVILEGES ON skpd, sub_skpd TO lap_disnakertrans;
REVOKE INSERT, UPDATE, DELETE ON skpd, sub_skpd FROM lap_disnakertrans;
DROP VIEW IF EXISTS view_peralatan_mesin_distamben;



CREATE VIEW view_peralatan_mesin_distamben AS

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

string_agg(asal_usul.asal_usul, ' : ') asal_usul,
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

AND skpd.id = 17



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



GRANT ALL PRIVILEGES ON view_peralatan_mesin_distamben TO lap_distamben;
REVOKE INSERT, UPDATE, DELETE ON view_peralatan_mesin_distamben FROM lap_distamben;

GRANT ALL PRIVILEGES ON skpd, sub_skpd TO lap_distamben;
REVOKE INSERT, UPDATE, DELETE ON skpd, sub_skpd FROM lap_distamben;
DROP VIEW IF EXISTS view_peralatan_mesin_dko;



CREATE VIEW view_peralatan_mesin_dko AS

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

string_agg(asal_usul.asal_usul, ' : ') asal_usul,
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

AND skpd.id = 23



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



GRANT ALL PRIVILEGES ON view_peralatan_mesin_dko TO lap_dko;
REVOKE INSERT, UPDATE, DELETE ON view_peralatan_mesin_dko FROM lap_dko;

GRANT ALL PRIVILEGES ON skpd, sub_skpd TO lap_dko;
REVOKE INSERT, UPDATE, DELETE ON skpd, sub_skpd FROM lap_dko;
DROP VIEW IF EXISTS view_peralatan_mesin_dkp;



CREATE VIEW view_peralatan_mesin_dkp AS

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

string_agg(asal_usul.asal_usul, ' : ') asal_usul,
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

AND skpd.id = 15



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



GRANT ALL PRIVILEGES ON view_peralatan_mesin_dkp TO lap_dkp;
REVOKE INSERT, UPDATE, DELETE ON view_peralatan_mesin_dkp FROM lap_dkp;

GRANT ALL PRIVILEGES ON skpd, sub_skpd TO lap_dkp;
REVOKE INSERT, UPDATE, DELETE ON skpd, sub_skpd FROM lap_dkp;
DROP VIEW IF EXISTS view_peralatan_mesin_dkukmp;



CREATE VIEW view_peralatan_mesin_dkukmp AS

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

string_agg(asal_usul.asal_usul, ' : ') asal_usul,
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

AND skpd.id = 16



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



GRANT ALL PRIVILEGES ON view_peralatan_mesin_dkukmp TO lap_dkukmp;
REVOKE INSERT, UPDATE, DELETE ON view_peralatan_mesin_dkukmp FROM lap_dkukmp;

GRANT ALL PRIVILEGES ON skpd, sub_skpd TO lap_dkukmp;
REVOKE INSERT, UPDATE, DELETE ON skpd, sub_skpd FROM lap_dkukmp;
DROP VIEW IF EXISTS view_peralatan_mesin_dlh;



CREATE VIEW view_peralatan_mesin_dlh AS

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

string_agg(asal_usul.asal_usul, ' : ') asal_usul,
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

AND skpd.id = 22



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



GRANT ALL PRIVILEGES ON view_peralatan_mesin_dlh TO lap_dlh;
REVOKE INSERT, UPDATE, DELETE ON view_peralatan_mesin_dlh FROM lap_dlh;

GRANT ALL PRIVILEGES ON skpd, sub_skpd TO lap_dlh;
REVOKE INSERT, UPDATE, DELETE ON skpd, sub_skpd FROM lap_dlh;
DROP VIEW IF EXISTS view_peralatan_mesin_dpkp;



CREATE VIEW view_peralatan_mesin_dpkp AS

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

string_agg(asal_usul.asal_usul, ' : ') asal_usul,
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

AND skpd.id = 40



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



GRANT ALL PRIVILEGES ON view_peralatan_mesin_dpkp TO lap_dpkp;
REVOKE INSERT, UPDATE, DELETE ON view_peralatan_mesin_dpkp FROM lap_dpkp;

GRANT ALL PRIVILEGES ON skpd, sub_skpd TO lap_dpkp;
REVOKE INSERT, UPDATE, DELETE ON skpd, sub_skpd FROM lap_dpkp;
DROP VIEW IF EXISTS view_peralatan_mesin_dpmd;



CREATE VIEW view_peralatan_mesin_dpmd AS

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

string_agg(asal_usul.asal_usul, ' : ') asal_usul,
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

AND skpd.id = 10



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



GRANT ALL PRIVILEGES ON view_peralatan_mesin_dpmd TO lap_dpmd;
REVOKE INSERT, UPDATE, DELETE ON view_peralatan_mesin_dpmd FROM lap_dpmd;

GRANT ALL PRIVILEGES ON skpd, sub_skpd TO lap_dpmd;
REVOKE INSERT, UPDATE, DELETE ON skpd, sub_skpd FROM lap_dpmd;
DROP VIEW IF EXISTS view_peralatan_mesin_dpmptsp;



CREATE VIEW view_peralatan_mesin_dpmptsp AS

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

string_agg(asal_usul.asal_usul, ' : ') asal_usul,
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

AND skpd.id = 18



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



GRANT ALL PRIVILEGES ON view_peralatan_mesin_dpmptsp TO lap_dpmptsp;
REVOKE INSERT, UPDATE, DELETE ON view_peralatan_mesin_dpmptsp FROM lap_dpmptsp;

GRANT ALL PRIVILEGES ON skpd, sub_skpd TO lap_dpmptsp;
REVOKE INSERT, UPDATE, DELETE ON skpd, sub_skpd FROM lap_dpmptsp;
DROP VIEW IF EXISTS view_peralatan_mesin_dppkb;



CREATE VIEW view_peralatan_mesin_dppkb AS

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

string_agg(asal_usul.asal_usul, ' : ') asal_usul,
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

AND skpd.id = 42



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



GRANT ALL PRIVILEGES ON view_peralatan_mesin_dppkb TO lap_dppkb;
REVOKE INSERT, UPDATE, DELETE ON view_peralatan_mesin_dppkb FROM lap_dppkb;

GRANT ALL PRIVILEGES ON skpd, sub_skpd TO lap_dppkb;
REVOKE INSERT, UPDATE, DELETE ON skpd, sub_skpd FROM lap_dppkb;
DROP VIEW IF EXISTS view_peralatan_mesin_dpppa;



CREATE VIEW view_peralatan_mesin_dpppa AS

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

string_agg(asal_usul.asal_usul, ' : ') asal_usul,
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

AND skpd.id = 11



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



GRANT ALL PRIVILEGES ON view_peralatan_mesin_dpppa TO lap_dpppa;
REVOKE INSERT, UPDATE, DELETE ON view_peralatan_mesin_dpppa FROM lap_dpppa;

GRANT ALL PRIVILEGES ON skpd, sub_skpd TO lap_dpppa;
REVOKE INSERT, UPDATE, DELETE ON skpd, sub_skpd FROM lap_dpppa;
DROP VIEW IF EXISTS view_peralatan_mesin_dpupr;



CREATE VIEW view_peralatan_mesin_dpupr AS

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

string_agg(asal_usul.asal_usul, ' : ') asal_usul,
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

AND skpd.id = 3



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



GRANT ALL PRIVILEGES ON view_peralatan_mesin_dpupr TO lap_dpupr;
REVOKE INSERT, UPDATE, DELETE ON view_peralatan_mesin_dpupr FROM lap_dpupr;

GRANT ALL PRIVILEGES ON skpd, sub_skpd TO lap_dpupr;
REVOKE INSERT, UPDATE, DELETE ON skpd, sub_skpd FROM lap_dpupr;
DROP VIEW IF EXISTS view_peralatan_mesin_dukcatpil;



CREATE VIEW view_peralatan_mesin_dukcatpil AS

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

string_agg(asal_usul.asal_usul, ' : ') asal_usul,
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

AND skpd.id = 12



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



GRANT ALL PRIVILEGES ON view_peralatan_mesin_dukcatpil TO lap_dukcatpil;
REVOKE INSERT, UPDATE, DELETE ON view_peralatan_mesin_dukcatpil FROM lap_dukcatpil;

GRANT ALL PRIVILEGES ON skpd, sub_skpd TO lap_dukcatpil;
REVOKE INSERT, UPDATE, DELETE ON skpd, sub_skpd FROM lap_dukcatpil;
DROP VIEW IF EXISTS view_peralatan_mesin_halong;



CREATE VIEW view_peralatan_mesin_halong AS

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

string_agg(asal_usul.asal_usul, ' : ') asal_usul,
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

AND skpd.id = 35



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



GRANT ALL PRIVILEGES ON view_peralatan_mesin_halong TO lap_halong;
REVOKE INSERT, UPDATE, DELETE ON view_peralatan_mesin_halong FROM lap_halong;

GRANT ALL PRIVILEGES ON skpd, sub_skpd TO lap_halong;
REVOKE INSERT, UPDATE, DELETE ON skpd, sub_skpd FROM lap_halong;
DROP VIEW IF EXISTS view_peralatan_mesin_inspektorat;



CREATE VIEW view_peralatan_mesin_inspektorat AS

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

string_agg(asal_usul.asal_usul, ' : ') asal_usul,
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

AND skpd.id = 20



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



GRANT ALL PRIVILEGES ON view_peralatan_mesin_inspektorat TO lap_inspektorat;
REVOKE INSERT, UPDATE, DELETE ON view_peralatan_mesin_inspektorat FROM lap_inspektorat;

GRANT ALL PRIVILEGES ON skpd, sub_skpd TO lap_inspektorat;
REVOKE INSERT, UPDATE, DELETE ON skpd, sub_skpd FROM lap_inspektorat;
DROP VIEW IF EXISTS view_peralatan_mesin_juai;



CREATE VIEW view_peralatan_mesin_juai AS

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

string_agg(asal_usul.asal_usul, ' : ') asal_usul,
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

AND skpd.id = 33



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



GRANT ALL PRIVILEGES ON view_peralatan_mesin_juai TO lap_juai;
REVOKE INSERT, UPDATE, DELETE ON view_peralatan_mesin_juai FROM lap_juai;

GRANT ALL PRIVILEGES ON skpd, sub_skpd TO lap_juai;
REVOKE INSERT, UPDATE, DELETE ON skpd, sub_skpd FROM lap_juai;
DROP VIEW IF EXISTS view_peralatan_mesin_kearsipan;



CREATE VIEW view_peralatan_mesin_kearsipan AS

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

string_agg(asal_usul.asal_usul, ' : ') asal_usul,
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

AND skpd.id = 44



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



GRANT ALL PRIVILEGES ON view_peralatan_mesin_kearsipan TO lap_kearsipan;
REVOKE INSERT, UPDATE, DELETE ON view_peralatan_mesin_kearsipan FROM lap_kearsipan;

GRANT ALL PRIVILEGES ON skpd, sub_skpd TO lap_kearsipan;
REVOKE INSERT, UPDATE, DELETE ON skpd, sub_skpd FROM lap_kearsipan;
DROP VIEW IF EXISTS view_peralatan_mesin_kehutanan;



CREATE VIEW view_peralatan_mesin_kehutanan AS

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

string_agg(asal_usul.asal_usul, ' : ') asal_usul,
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

AND skpd.id = 14



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



GRANT ALL PRIVILEGES ON view_peralatan_mesin_kehutanan TO lap_kehutanan;
REVOKE INSERT, UPDATE, DELETE ON view_peralatan_mesin_kehutanan FROM lap_kehutanan;

GRANT ALL PRIVILEGES ON skpd, sub_skpd TO lap_kehutanan;
REVOKE INSERT, UPDATE, DELETE ON skpd, sub_skpd FROM lap_kehutanan;
DROP VIEW IF EXISTS view_peralatan_mesin_kesbangpol;



CREATE VIEW view_peralatan_mesin_kesbangpol AS

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

string_agg(asal_usul.asal_usul, ' : ') asal_usul,
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

AND skpd.id = 24



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



GRANT ALL PRIVILEGES ON view_peralatan_mesin_kesbangpol TO lap_kesbangpol;
REVOKE INSERT, UPDATE, DELETE ON view_peralatan_mesin_kesbangpol FROM lap_kesbangpol;

GRANT ALL PRIVILEGES ON skpd, sub_skpd TO lap_kesbangpol;
REVOKE INSERT, UPDATE, DELETE ON skpd, sub_skpd FROM lap_kesbangpol;
DROP VIEW IF EXISTS view_peralatan_mesin_kominfo;



CREATE VIEW view_peralatan_mesin_kominfo AS

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

string_agg(asal_usul.asal_usul, ' : ') asal_usul,
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

AND skpd.id = 43



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



GRANT ALL PRIVILEGES ON view_peralatan_mesin_kominfo TO lap_kominfo;
REVOKE INSERT, UPDATE, DELETE ON view_peralatan_mesin_kominfo FROM lap_kominfo;

GRANT ALL PRIVILEGES ON skpd, sub_skpd TO lap_kominfo;
REVOKE INSERT, UPDATE, DELETE ON skpd, sub_skpd FROM lap_kominfo;
DROP VIEW IF EXISTS view_peralatan_mesin_korpri;



CREATE VIEW view_peralatan_mesin_korpri AS

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

string_agg(asal_usul.asal_usul, ' : ') asal_usul,
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

AND skpd.id = 27



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



GRANT ALL PRIVILEGES ON view_peralatan_mesin_korpri TO lap_korpri;
REVOKE INSERT, UPDATE, DELETE ON view_peralatan_mesin_korpri FROM lap_korpri;

GRANT ALL PRIVILEGES ON skpd, sub_skpd TO lap_korpri;
REVOKE INSERT, UPDATE, DELETE ON skpd, sub_skpd FROM lap_korpri;
DROP VIEW IF EXISTS view_peralatan_mesin_lampihong;



CREATE VIEW view_peralatan_mesin_lampihong AS

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

string_agg(asal_usul.asal_usul, ' : ') asal_usul,
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

AND skpd.id = 31



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



GRANT ALL PRIVILEGES ON view_peralatan_mesin_lampihong TO lap_lampihong;
REVOKE INSERT, UPDATE, DELETE ON view_peralatan_mesin_lampihong FROM lap_lampihong;

GRANT ALL PRIVILEGES ON skpd, sub_skpd TO lap_lampihong;
REVOKE INSERT, UPDATE, DELETE ON skpd, sub_skpd FROM lap_lampihong;
DROP VIEW IF EXISTS view_peralatan_mesin_paringin;



CREATE VIEW view_peralatan_mesin_paringin AS

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

string_agg(asal_usul.asal_usul, ' : ') asal_usul,
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

AND skpd.id = 28



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



GRANT ALL PRIVILEGES ON view_peralatan_mesin_paringin TO lap_paringin;
REVOKE INSERT, UPDATE, DELETE ON view_peralatan_mesin_paringin FROM lap_paringin;

GRANT ALL PRIVILEGES ON skpd, sub_skpd TO lap_paringin;
REVOKE INSERT, UPDATE, DELETE ON skpd, sub_skpd FROM lap_paringin;
DROP VIEW IF EXISTS view_peralatan_mesin_paringinkota;



CREATE VIEW view_peralatan_mesin_paringinkota AS

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

string_agg(asal_usul.asal_usul, ' : ') asal_usul,
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

AND skpd.id = 29



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



GRANT ALL PRIVILEGES ON view_peralatan_mesin_paringinkota TO lap_paringinkota;
REVOKE INSERT, UPDATE, DELETE ON view_peralatan_mesin_paringinkota FROM lap_paringinkota;

GRANT ALL PRIVILEGES ON skpd, sub_skpd TO lap_paringinkota;
REVOKE INSERT, UPDATE, DELETE ON skpd, sub_skpd FROM lap_paringinkota;
DROP VIEW IF EXISTS view_peralatan_mesin_paringinselatan;



CREATE VIEW view_peralatan_mesin_paringinselatan AS

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

string_agg(asal_usul.asal_usul, ' : ') asal_usul,
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

AND skpd.id = 36



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



GRANT ALL PRIVILEGES ON view_peralatan_mesin_paringinselatan TO lap_paringinselatan;
REVOKE INSERT, UPDATE, DELETE ON view_peralatan_mesin_paringinselatan FROM lap_paringinselatan;

GRANT ALL PRIVILEGES ON skpd, sub_skpd TO lap_paringinselatan;
REVOKE INSERT, UPDATE, DELETE ON skpd, sub_skpd FROM lap_paringinselatan;
DROP VIEW IF EXISTS view_peralatan_mesin_paringintimur;



CREATE VIEW view_peralatan_mesin_paringintimur AS

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

string_agg(asal_usul.asal_usul, ' : ') asal_usul,
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

AND skpd.id = 30



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



GRANT ALL PRIVILEGES ON view_peralatan_mesin_paringintimur TO lap_paringintimur;
REVOKE INSERT, UPDATE, DELETE ON view_peralatan_mesin_paringintimur FROM lap_paringintimur;

GRANT ALL PRIVILEGES ON skpd, sub_skpd TO lap_paringintimur;
REVOKE INSERT, UPDATE, DELETE ON skpd, sub_skpd FROM lap_paringintimur;
DROP VIEW IF EXISTS view_peralatan_mesin_pariwisata;



CREATE VIEW view_peralatan_mesin_pariwisata AS

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

string_agg(asal_usul.asal_usul, ' : ') asal_usul,
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

AND skpd.id = 46



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



GRANT ALL PRIVILEGES ON view_peralatan_mesin_pariwisata TO lap_pariwisata;
REVOKE INSERT, UPDATE, DELETE ON view_peralatan_mesin_pariwisata FROM lap_pariwisata;

GRANT ALL PRIVILEGES ON skpd, sub_skpd TO lap_pariwisata;
REVOKE INSERT, UPDATE, DELETE ON skpd, sub_skpd FROM lap_pariwisata;
DROP VIEW IF EXISTS view_peralatan_mesin_perdagangan;



CREATE VIEW view_peralatan_mesin_perdagangan AS

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

string_agg(asal_usul.asal_usul, ' : ') asal_usul,
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

AND skpd.id = 47



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



GRANT ALL PRIVILEGES ON view_peralatan_mesin_perdagangan TO lap_perdagangan;
REVOKE INSERT, UPDATE, DELETE ON view_peralatan_mesin_perdagangan FROM lap_perdagangan;

GRANT ALL PRIVILEGES ON skpd, sub_skpd TO lap_perdagangan;
REVOKE INSERT, UPDATE, DELETE ON skpd, sub_skpd FROM lap_perdagangan;
DROP VIEW IF EXISTS view_peralatan_mesin_perikanan;



CREATE VIEW view_peralatan_mesin_perikanan AS

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

string_agg(asal_usul.asal_usul, ' : ') asal_usul,
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

AND skpd.id = 45



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



GRANT ALL PRIVILEGES ON view_peralatan_mesin_perikanan TO lap_perikanan;
REVOKE INSERT, UPDATE, DELETE ON view_peralatan_mesin_perikanan FROM lap_perikanan;

GRANT ALL PRIVILEGES ON skpd, sub_skpd TO lap_perikanan;
REVOKE INSERT, UPDATE, DELETE ON skpd, sub_skpd FROM lap_perikanan;
DROP VIEW IF EXISTS view_peralatan_mesin_perpustakaan;



CREATE VIEW view_peralatan_mesin_perpustakaan AS

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

string_agg(asal_usul.asal_usul, ' : ') asal_usul,
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

AND skpd.id = 8



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



GRANT ALL PRIVILEGES ON view_peralatan_mesin_perpustakaan TO lap_perpustakaan;
REVOKE INSERT, UPDATE, DELETE ON view_peralatan_mesin_perpustakaan FROM lap_perpustakaan;

GRANT ALL PRIVILEGES ON skpd, sub_skpd TO lap_perpustakaan;
REVOKE INSERT, UPDATE, DELETE ON skpd, sub_skpd FROM lap_perpustakaan;
DROP VIEW IF EXISTS view_peralatan_mesin_pertanian;



CREATE VIEW view_peralatan_mesin_pertanian AS

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

string_agg(asal_usul.asal_usul, ' : ') asal_usul,
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

AND skpd.id = 13



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



GRANT ALL PRIVILEGES ON view_peralatan_mesin_pertanian TO lap_pertanian;
REVOKE INSERT, UPDATE, DELETE ON view_peralatan_mesin_pertanian FROM lap_pertanian;

GRANT ALL PRIVILEGES ON skpd, sub_skpd TO lap_pertanian;
REVOKE INSERT, UPDATE, DELETE ON skpd, sub_skpd FROM lap_pertanian;
DROP VIEW IF EXISTS view_peralatan_mesin_rsud;



CREATE VIEW view_peralatan_mesin_rsud AS

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

string_agg(asal_usul.asal_usul, ' : ') asal_usul,
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

AND skpd.id = 6



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



GRANT ALL PRIVILEGES ON view_peralatan_mesin_rsud TO lap_rsud;
REVOKE INSERT, UPDATE, DELETE ON view_peralatan_mesin_rsud FROM lap_rsud;

GRANT ALL PRIVILEGES ON skpd, sub_skpd TO lap_rsud;
REVOKE INSERT, UPDATE, DELETE ON skpd, sub_skpd FROM lap_rsud;
DROP VIEW IF EXISTS view_peralatan_mesin_satpolpp;



CREATE VIEW view_peralatan_mesin_satpolpp AS

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

string_agg(asal_usul.asal_usul, ' : ') asal_usul,
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

AND skpd.id = 25



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



GRANT ALL PRIVILEGES ON view_peralatan_mesin_satpolpp TO lap_satpolpp;
REVOKE INSERT, UPDATE, DELETE ON view_peralatan_mesin_satpolpp FROM lap_satpolpp;

GRANT ALL PRIVILEGES ON skpd, sub_skpd TO lap_satpolpp;
REVOKE INSERT, UPDATE, DELETE ON skpd, sub_skpd FROM lap_satpolpp;
DROP VIEW IF EXISTS view_peralatan_mesin_setda;



CREATE VIEW view_peralatan_mesin_setda AS

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

string_agg(asal_usul.asal_usul, ' : ') asal_usul,
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

AND skpd.id = 2



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



GRANT ALL PRIVILEGES ON view_peralatan_mesin_setda TO lap_setda;
REVOKE INSERT, UPDATE, DELETE ON view_peralatan_mesin_setda FROM lap_setda;

GRANT ALL PRIVILEGES ON skpd, sub_skpd TO lap_setda;
REVOKE INSERT, UPDATE, DELETE ON skpd, sub_skpd FROM lap_setda;
DROP VIEW IF EXISTS view_peralatan_mesin_setwan;



CREATE VIEW view_peralatan_mesin_setwan AS

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

string_agg(asal_usul.asal_usul, ' : ') asal_usul,
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

AND skpd.id = 1



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



GRANT ALL PRIVILEGES ON view_peralatan_mesin_setwan TO lap_setwan;
REVOKE INSERT, UPDATE, DELETE ON view_peralatan_mesin_setwan FROM lap_setwan;

GRANT ALL PRIVILEGES ON skpd, sub_skpd TO lap_setwan;
REVOKE INSERT, UPDATE, DELETE ON skpd, sub_skpd FROM lap_setwan;
DROP VIEW IF EXISTS view_peralatan_mesin_sosial;



CREATE VIEW view_peralatan_mesin_sosial AS

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

string_agg(asal_usul.asal_usul, ' : ') asal_usul,
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

AND skpd.id = 9



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



GRANT ALL PRIVILEGES ON view_peralatan_mesin_sosial TO lap_sosial;
REVOKE INSERT, UPDATE, DELETE ON view_peralatan_mesin_sosial FROM lap_sosial;

GRANT ALL PRIVILEGES ON skpd, sub_skpd TO lap_sosial;
REVOKE INSERT, UPDATE, DELETE ON skpd, sub_skpd FROM lap_sosial;
DROP VIEW IF EXISTS view_peralatan_mesin_tebingtinggi;



CREATE VIEW view_peralatan_mesin_tebingtinggi AS

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

string_agg(asal_usul.asal_usul, ' : ') asal_usul,
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

AND skpd.id = 38



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



GRANT ALL PRIVILEGES ON view_peralatan_mesin_tebingtinggi TO lap_tebingtinggi;
REVOKE INSERT, UPDATE, DELETE ON view_peralatan_mesin_tebingtinggi FROM lap_tebingtinggi;

GRANT ALL PRIVILEGES ON skpd, sub_skpd TO lap_tebingtinggi;
REVOKE INSERT, UPDATE, DELETE ON skpd, sub_skpd FROM lap_tebingtinggi;
