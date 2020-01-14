DROP VIEW IF EXISTS view_penyusutan_gb_2016_a1 CASCADE;


CREATE VIEW view_penyusutan_gb_2016_a1 AS



SELECT * FROM

(SELECT
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
gedung_bangunan.id_golongan_barang,

gedung_bangunan.nama_barang,
LEFT(kode_barang.kode_barang, 14) kode_barang,
LEFT(kode_barang.kode_barang, 5) kode_l2,
gedung_bangunan.id register,

'' as merk_type,
gedung_bangunan.nomor_dokumen_gedung as no_no,
'' as bahan,
harga_gedung_bangunan.tahun,
CONCAT(SUM(harga_gedung_bangunan.luas_lantai), ' m2') as ukuran_barang,
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

harga_gedung_bangunan.tahun <= 2016 AND

gedung_bangunan.id_kode_barang = kode_barang.id AND
gedung_bangunan.id_mutasi_berkurang = mutasi_berkurang.id AND

gedung_bangunan.id_keadaan_barang = keadaan_barang.id AND
gedung_bangunan.id_satuan_barang = satuan_barang.id AND
gedung_bangunan.id_golongan_barang = golongan_barang.id AND

golongan_barang.id = 3 AND

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
gedung_bangunan.id_golongan_barang,
gedung_bangunan.nama_barang,

kode_barang,
kode_l2,
register,

merk_type,
no_no,
bahan,
harga_gedung_bangunan.tahun,
gedung_bangunan.keterangan) AS QUERY_GEDUNG_BANGUNAN


;


GRANT ALL PRIVILEGES ON view_penyusutan_gb_2016_a1 TO lap_kabupaten;
REVOKE INSERT, UPDATE, DELETE ON view_penyusutan_gb_2016_a1 FROM lap_kabupaten;
DROP VIEW IF EXISTS view_penyusutan_jij_2016_a1 CASCADE;


CREATE VIEW view_penyusutan_jij_2016_a1 AS


SELECT * FROM

(SELECT
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
jalan_irigasi_jaringan.id_golongan_barang,

jalan_irigasi_jaringan.nama_barang,
LEFT(kode_barang.kode_barang, 14) kode_barang,
LEFT(kode_barang.kode_barang, 5) kode_l2,
jalan_irigasi_jaringan.id register,

'' as merk_type,
jalan_irigasi_jaringan.nomor_dokumen as no_no,
'' as bahan,
harga_jalan_irigasi_jaringan.tahun,
jalan_irigasi_jaringan.konstruksi as ukuran_barang,
SUM(harga_jalan_irigasi_jaringan.harga_bertambah) - SUM(harga_jalan_irigasi_jaringan.harga_berkurang) harga,
jalan_irigasi_jaringan.keterangan



FROM
jalan_irigasi_jaringan as jalan_irigasi_jaringan, harga_jalan_irigasi_jaringan as harga_jalan_irigasi_jaringan, kode_barang,
mutasi_berkurang, asal_usul, keadaan_barang, satuan_barang, golongan_barang,
sub_skpd, skpd, lokasi_bidang, kabupaten, provinsi, view_tanah_tanpa_harga_kabupaten


WHERE
1 = 1  AND
harga_jalan_irigasi_jaringan.id_jalan_irigasi_jaringan = jalan_irigasi_jaringan.id AND
harga_jalan_irigasi_jaringan.id_asal_usul = asal_usul.id AND
harga_jalan_irigasi_jaringan.tahun <= 2016 AND

jalan_irigasi_jaringan.id_kode_barang = kode_barang.id AND
jalan_irigasi_jaringan.id_mutasi_berkurang = mutasi_berkurang.id AND

jalan_irigasi_jaringan.id_keadaan_barang = keadaan_barang.id AND
jalan_irigasi_jaringan.id_satuan_barang = satuan_barang.id AND
jalan_irigasi_jaringan.id_golongan_barang = golongan_barang.id AND

golongan_barang.id = 4 AND

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
jalan_irigasi_jaringan.id_golongan_barang,
jalan_irigasi_jaringan.nama_barang,

kode_barang,
kode_l2,
register,

merk_type,
no_no,
bahan,
harga_jalan_irigasi_jaringan.tahun,
ukuran_barang,
jalan_irigasi_jaringan.keterangan) AS QUERY_JALAN_IRIGASI_JARINGAN

;

GRANT ALL PRIVILEGES ON view_penyusutan_jij_2016_a1 TO lap_kabupaten;
REVOKE INSERT, UPDATE, DELETE ON view_penyusutan_jij_2016_a1 FROM lap_kabupaten;
DROP VIEW IF EXISTS view_penyusutan_pm_2016_a1 CASCADE;


CREATE VIEW view_penyusutan_pm_2016_a1 AS



SELECT * FROM

(SELECT
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
peralatan_mesin.id_golongan_barang,

peralatan_mesin.nama_barang,
LEFT(kode_barang.kode_barang, 14) kode_barang,
LEFT(kode_barang.kode_barang, 5) kode_l2,
peralatan_mesin.id register,

peralatan_mesin.merk_type,
peralatan_mesin.nomor_polisi as no_no,
peralatan_mesin.bahan,
harga_peralatan_mesin.tahun,
peralatan_mesin.ukuran_cc as ukuran_barang,
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
harga_peralatan_mesin.tahun <= 2016 AND

peralatan_mesin.id_kode_barang = kode_barang.id AND
peralatan_mesin.id_mutasi_berkurang = mutasi_berkurang.id AND

peralatan_mesin.id_keadaan_barang = keadaan_barang.id AND
peralatan_mesin.id_satuan_barang = satuan_barang.id AND
peralatan_mesin.id_golongan_barang = golongan_barang.id AND

golongan_barang.id = 2 AND

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
peralatan_mesin.id_golongan_barang,
peralatan_mesin.nama_barang,

kode_barang,
kode_l2,
register,

peralatan_mesin.merk_type,
no_no,
peralatan_mesin.bahan,
harga_peralatan_mesin.tahun,
ukuran_barang,
peralatan_mesin.keterangan) AS QUERY_PERALATAN_MESIN



;


GRANT ALL PRIVILEGES ON view_penyusutan_pm_2016_a1 TO lap_kabupaten;
REVOKE INSERT, UPDATE, DELETE ON view_penyusutan_pm_2016_a1 FROM lap_kabupaten;
DROP view if exists view_penyusutan_gb_2016_e2 CASCADE;

create view view_penyusutan_gb_2016_e2 as select
nama_skpd,
id_skpd,
nama_lokasi_bidang,
id_lokasi_bidang,
nama_kabupaten,
id_kabupaten,
nama_provinsi,
id_provinsi,
id_mutasi_berkurang,
mutasi_berkurang,
keadaan_barang,
nama_barang,

register,
harga,
sum (harga) over (partition by register order by tahun asc) as nilai_perolehan,
tahun,
view_penyusutan_gb_2016_a1.kode_barang,
left(view_penyusutan_gb_2016_a1.kode_barang, 8) as kode_umur,
rank() over (partition by register order by tahun asc) as rank,
lead(tahun, 1, 2017) over (partition by register order by tahun asc) as tahun_akhir,
umur as masa_manfaat,
0 as penambahan_umur,
umur as umur_awal,

CASE WHEN ((lead(tahun, 1, 2017) over (partition by register order by tahun asc)) - tahun) < umur
     THEN umur - ((lead(tahun, 1, 2017) over (partition by register order by tahun asc)) - tahun)
ELSE
     0
END as sisa_umur,

harga as nilai_buku_awal,

CASE WHEN ((lead(tahun, 1, 2017) over (partition by register order by tahun asc)) - tahun) < umur
     THEN round(((lead(tahun, 1, 2017) over (partition by register order by tahun asc)) - tahun) * harga / umur, 0)
ELSE
     harga
END as penyusutan,

CASE WHEN ((lead(tahun, 1, 2017) over (partition by register order by tahun asc)) - tahun) < umur
    THEN harga - (round(((lead(tahun, 1, 2017) over (partition by register order by tahun asc)) - tahun) * harga / umur, 0))
ELSE
     0
END as nilai_buku_akhir

from view_penyusutan_gb_2016_a1, kode_barang

where view_penyusutan_gb_2016_a1.kode_barang = left(kode_barang.kode_barang,14)

order by register, rank;


-- cek umur barang, apakah lebih dari umur ekonomis
-- bila lebih, berarti disusutkan seluruh nilainya.
-- kunci angka untuk baris pertama



DROP view if exists view_penyusutan_gb_2016_e3 CASCADE;

create view view_penyusutan_gb_2016_e3 as

select register,
nama_skpd,
id_skpd,
nama_lokasi_bidang,
id_lokasi_bidang,
nama_kabupaten,
id_kabupaten,
nama_provinsi,
id_provinsi,
id_mutasi_berkurang,
mutasi_berkurang,
keadaan_barang,
nama_barang,

harga,
nilai_perolehan,
tahun,
view_penyusutan_gb_2016_e2.kode_barang,
kode_umur,
rank,
tahun_akhir,


CASE WHEN rank > 1 AND lag(nilai_buku_akhir) over urutan > 0
          THEN round (100 * (harga / lag(nilai_buku_akhir) over urutan),2)
     WHEN rank > 1 AND lag(nilai_buku_akhir) over urutan <= 0
          THEN round(100,2)
     WHEN rank = 1
	  THEN 0
ELSE
     0
END as persen_awal,




CASE WHEN

  CASE WHEN rank > 1 AND lag(nilai_buku_akhir) over urutan > 0
	    THEN round (100 * (harga / lag(nilai_buku_akhir) over urutan),2)
      WHEN rank > 1 AND lag(nilai_buku_akhir) over urutan <= 0
	    THEN round(100,2)
      WHEN rank = 1
	    THEN 0
  ELSE
      0
  END

     > 75
     THEN 100


     WHEN

  CASE WHEN rank > 1 AND lag(nilai_buku_akhir) over urutan > 0
	    THEN round (100 * (harga / lag(nilai_buku_akhir) over urutan),2)
      WHEN rank > 1 AND lag(nilai_buku_akhir) over urutan <= 0
	    THEN round(100,2)
      WHEN rank = 1
	    THEN 0
  ELSE
      0
  END

     > 50
         THEN 75


     WHEN

  CASE WHEN rank > 1 AND lag(nilai_buku_akhir) over urutan > 0
	    THEN round (100 * (harga / lag(nilai_buku_akhir) over urutan),2)
      WHEN rank > 1 AND lag(nilai_buku_akhir) over urutan <= 0
	    THEN round(100,2)
      WHEN rank = 1
	    THEN 0
  ELSE
      0
  END

     > 25
         THEN 50


     WHEN

  CASE WHEN rank > 1 AND lag(nilai_buku_akhir) over urutan > 0
	    THEN round (100 * (harga / lag(nilai_buku_akhir) over urutan),2)
      WHEN rank > 1 AND lag(nilai_buku_akhir) over urutan <= 0
	    THEN round(100,2)
      WHEN rank = 1
	    THEN 0
  ELSE
      0
  END

     > 0
         THEN 25
ELSE
         0
END as persentasi,

masa_manfaat,
penambahan_umur,
umur_awal,
sisa_umur,
nilai_buku_awal,
penyusutan,
nilai_buku_akhir
 from
view_penyusutan_gb_2016_e2
 Window
urutan as (partition by register order by rank)


order by register, rank;


-- mengubah persen_awal menjadi persen yang dapat di link
-- ke table penambahan_umur
--
-- sisa_umur_temp di buat untuk mengakses sisa_umur
-- pada baris sebelumnya


-- xxxxx
-- akses penambahan_umur
-- terdapat bug pada query sql, yaitu ketika
-- link ke table penambahan_umur, maka tidak dilakukan
-- link seperti biasa, yaitu
-- persentasi = penambahan_umur.persen, tetapi
-- penambahan_umur.persen > 75 (tidak tahu kenapa)



DROP view if exists view_penyusutan_gb_2016_e4 CASCADE;

create view view_penyusutan_gb_2016_e4 as

select register,
nama_skpd,
id_skpd,
nama_lokasi_bidang,
id_lokasi_bidang,
nama_kabupaten,
id_kabupaten,
nama_provinsi,
id_provinsi,
id_mutasi_berkurang,
mutasi_berkurang,
keadaan_barang,
nama_barang,

harga,
nilai_perolehan,
tahun,
view_penyusutan_gb_2016_e3.kode_barang,
kode_umur,
rank,
tahun_akhir,
persen_awal,

persentasi,

masa_manfaat,
CASE WHEN rank > 1
          THEN penambahan_umur.umur
     WHEN rank = 1
	  THEN 0
ELSE
     0
END as penambahan_umur,


umur_awal,
sisa_umur,
nilai_buku_awal,
penyusutan,
nilai_buku_akhir


 from
view_penyusutan_gb_2016_e3, penambahan_umur

where
view_penyusutan_gb_2016_e3.kode_umur = penambahan_umur.kode_barang AND
view_penyusutan_gb_2016_e3.persentasi = penambahan_umur.persen

order by register, rank;




DROP view if exists view_penyusutan_gb_2016_e5 CASCADE;

create view view_penyusutan_gb_2016_e5 as

select register,
nama_skpd,
id_skpd,
nama_lokasi_bidang,
id_lokasi_bidang,
nama_kabupaten,
id_kabupaten,
nama_provinsi,
id_provinsi,
id_mutasi_berkurang,
mutasi_berkurang,
keadaan_barang,
nama_barang,

harga,
nilai_perolehan,
tahun,
kode_barang,
kode_umur,
rank,
tahun_akhir,
persen_awal,

persentasi,

masa_manfaat,
penambahan_umur,

CASE WHEN rank > 1 AND lag(sisa_umur,1,0) over urutan + penambahan_umur >= masa_manfaat
          THEN masa_manfaat
     WHEN rank = 1
	  THEN masa_manfaat
ELSE
     lag(sisa_umur,1,0) over urutan + penambahan_umur
END as umur_awal,

CASE WHEN rank > 1 AND lag(sisa_umur,1,0) over urutan + penambahan_umur - (tahun_akhir - tahun) > 0
          AND lag(sisa_umur,1,0) over urutan + penambahan_umur - (tahun_akhir - tahun) <= masa_manfaat
          THEN lag(sisa_umur,1,0) over urutan + penambahan_umur - (tahun_akhir - tahun)

     WHEN rank > 1 AND lag(sisa_umur,1,0) over urutan + penambahan_umur - (tahun_akhir - tahun) > 0
          AND lag(sisa_umur,1,0) over urutan + penambahan_umur - (tahun_akhir - tahun) > masa_manfaat
          AND masa_manfaat - (tahun_akhir - tahun) > 0
          THEN masa_manfaat - (tahun_akhir - tahun)

     WHEN rank = 1 AND masa_manfaat - (tahun_akhir - tahun) > 0
	  THEN masa_manfaat - (tahun_akhir - tahun)
ELSE
    0
END as sisa_umur,



COALESCE(lag(nilai_buku_akhir) over urutan, 0) + harga as nilai_buku_awal,



CASE WHEN (tahun_akhir - tahun) <

     CASE WHEN rank > 1 AND lag(sisa_umur,1,0) over urutan + penambahan_umur >= masa_manfaat
          THEN masa_manfaat
     WHEN rank = 1
	  THEN masa_manfaat
     ELSE
     lag(sisa_umur,1,0) over urutan + penambahan_umur
     END


     THEN round((tahun_akhir - tahun) * (COALESCE(lag(nilai_buku_akhir) over urutan, 0) + harga) /

     (CASE WHEN rank > 1 AND lag(sisa_umur,1,0) over urutan + penambahan_umur >= masa_manfaat
          THEN masa_manfaat
     WHEN rank = 1
	  THEN masa_manfaat
     ELSE
     lag(sisa_umur,1,0) over urutan + penambahan_umur
     END),

     0)
ELSE
     COALESCE(lag(nilai_buku_akhir) over urutan, 0) + harga
END as penyusutan,

CASE WHEN (tahun_akhir - tahun) <

     CASE WHEN rank > 1 AND lag(sisa_umur,1,0) over urutan + penambahan_umur >= masa_manfaat
          THEN masa_manfaat
     WHEN rank = 1
	  THEN masa_manfaat
     ELSE
     lag(sisa_umur,1,0) over urutan + penambahan_umur
     END


     THEN (COALESCE(lag(nilai_buku_akhir) over urutan, 0) + harga) -
     (round((tahun_akhir - tahun) * (COALESCE(lag(nilai_buku_akhir) over urutan, 0) + harga) /

     (CASE WHEN rank > 1 AND lag(sisa_umur,1,0) over urutan + penambahan_umur >= masa_manfaat
          THEN masa_manfaat
     WHEN rank = 1
	  THEN masa_manfaat
     ELSE
     lag(sisa_umur,1,0) over urutan + penambahan_umur
     END),

     0))
ELSE
     (COALESCE(lag(nilai_buku_akhir) over urutan, 0) + harga) - (COALESCE(lag(nilai_buku_akhir) over urutan, 0) + harga)
END as nilai_buku_akhir


 from
view_penyusutan_gb_2016_e4
 Window
urutan as (partition by register order by rank)

order by register, rank;




-------kunci angka baris ke 2

DROP view if exists view_penyusutan_gb_2016_e6 CASCADE;

create view view_penyusutan_gb_2016_e6 as

select register,
nama_skpd,
id_skpd,
nama_lokasi_bidang,
id_lokasi_bidang,
nama_kabupaten,
id_kabupaten,
nama_provinsi,
id_provinsi,
id_mutasi_berkurang,
mutasi_berkurang,
keadaan_barang,
nama_barang,

harga,
nilai_perolehan,
tahun,
view_penyusutan_gb_2016_e5.kode_barang,
kode_umur,
rank,
tahun_akhir,


CASE WHEN rank > 1 AND lag(nilai_buku_akhir) over urutan > 0
          THEN round (100 * (harga / lag(nilai_buku_akhir) over urutan),2)
     WHEN rank > 1 AND lag(nilai_buku_akhir) over urutan <= 0
          THEN round(100,2)
     WHEN rank = 1
	  THEN 0
ELSE
     0
END as persen_awal,




CASE WHEN

  CASE WHEN rank > 1 AND lag(nilai_buku_akhir) over urutan > 0
	    THEN round (100 * (harga / lag(nilai_buku_akhir) over urutan),2)
      WHEN rank > 1 AND lag(nilai_buku_akhir) over urutan <= 0
	    THEN round(100,2)
      WHEN rank = 1
	    THEN 0
  ELSE
      0
  END

     > 75
     THEN 100


     WHEN

  CASE WHEN rank > 1 AND lag(nilai_buku_akhir) over urutan > 0
	    THEN round (100 * (harga / lag(nilai_buku_akhir) over urutan),2)
      WHEN rank > 1 AND lag(nilai_buku_akhir) over urutan <= 0
	    THEN round(100,2)
      WHEN rank = 1
	    THEN 0
  ELSE
      0
  END

     > 50
         THEN 75


     WHEN

  CASE WHEN rank > 1 AND lag(nilai_buku_akhir) over urutan > 0
	    THEN round (100 * (harga / lag(nilai_buku_akhir) over urutan),2)
      WHEN rank > 1 AND lag(nilai_buku_akhir) over urutan <= 0
	    THEN round(100,2)
      WHEN rank = 1
	    THEN 0
  ELSE
      0
  END

     > 25
         THEN 50


     WHEN

  CASE WHEN rank > 1 AND lag(nilai_buku_akhir) over urutan > 0
	    THEN round (100 * (harga / lag(nilai_buku_akhir) over urutan),2)
      WHEN rank > 1 AND lag(nilai_buku_akhir) over urutan <= 0
	    THEN round(100,2)
      WHEN rank = 1
	    THEN 0
  ELSE
      0
  END

     > 0
         THEN 25
ELSE
         0
END as persentasi,

masa_manfaat,
penambahan_umur,
umur_awal,
sisa_umur,
nilai_buku_awal,
penyusutan,
nilai_buku_akhir
 from
view_penyusutan_gb_2016_e5
 Window
urutan as (partition by register order by rank)


order by register, rank;





DROP view if exists view_penyusutan_gb_2016_e7 CASCADE;

create view view_penyusutan_gb_2016_e7 as

select register,
nama_skpd,
id_skpd,
nama_lokasi_bidang,
id_lokasi_bidang,
nama_kabupaten,
id_kabupaten,
nama_provinsi,
id_provinsi,
id_mutasi_berkurang,
mutasi_berkurang,
keadaan_barang,
nama_barang,

harga,
nilai_perolehan,
tahun,
view_penyusutan_gb_2016_e6.kode_barang,
kode_umur,
rank,
tahun_akhir,
persen_awal,

persentasi,

masa_manfaat,
CASE WHEN rank > 1
          THEN penambahan_umur.umur
     WHEN rank = 1
	  THEN 0
ELSE
     0
END as penambahan_umur,


umur_awal,
sisa_umur,
nilai_buku_awal,
penyusutan,
nilai_buku_akhir


 from
view_penyusutan_gb_2016_e6, penambahan_umur

where
view_penyusutan_gb_2016_e6.kode_umur = penambahan_umur.kode_barang AND
view_penyusutan_gb_2016_e6.persentasi = penambahan_umur.persen

order by register, rank;




DROP view if exists view_penyusutan_gb_2016_e8 CASCADE;

create view view_penyusutan_gb_2016_e8 as

select register,
nama_skpd,
id_skpd,
nama_lokasi_bidang,
id_lokasi_bidang,
nama_kabupaten,
id_kabupaten,
nama_provinsi,
id_provinsi,
id_mutasi_berkurang,
mutasi_berkurang,
keadaan_barang,
nama_barang,

harga,
nilai_perolehan,
tahun,
kode_barang,
kode_umur,
rank,
tahun_akhir,
persen_awal,

persentasi,

masa_manfaat,
penambahan_umur,

CASE WHEN rank > 1 AND lag(sisa_umur,1,0) over urutan + penambahan_umur >= masa_manfaat
          THEN masa_manfaat
     WHEN rank = 1
	  THEN masa_manfaat
ELSE
     lag(sisa_umur,1,0) over urutan + penambahan_umur
END as umur_awal,

CASE WHEN rank > 1 AND lag(sisa_umur,1,0) over urutan + penambahan_umur - (tahun_akhir - tahun) > 0
          AND lag(sisa_umur,1,0) over urutan + penambahan_umur < masa_manfaat
          THEN lag(sisa_umur,1,0) over urutan + penambahan_umur - (tahun_akhir - tahun)

     WHEN rank > 1 AND lag(sisa_umur,1,0) over urutan + penambahan_umur - (tahun_akhir - tahun) > 0
          AND lag(sisa_umur,1,0) over urutan + penambahan_umur >= masa_manfaat
          AND masa_manfaat - (tahun_akhir - tahun) > 0
          THEN masa_manfaat - (tahun_akhir - tahun)

     WHEN rank = 1 AND masa_manfaat - (tahun_akhir - tahun) > 0
	  THEN masa_manfaat - (tahun_akhir - tahun)
ELSE
    0
END as sisa_umur,



COALESCE(lag(nilai_buku_akhir) over urutan, 0) + harga as nilai_buku_awal,



CASE WHEN (tahun_akhir - tahun) <

     CASE WHEN rank > 1 AND lag(sisa_umur,1,0) over urutan + penambahan_umur >= masa_manfaat
          THEN masa_manfaat
     WHEN rank = 1
	  THEN masa_manfaat
     ELSE
     lag(sisa_umur,1,0) over urutan + penambahan_umur
     END


     THEN round((tahun_akhir - tahun) * (COALESCE(lag(nilai_buku_akhir) over urutan, 0) + harga) /

     (CASE WHEN rank > 1 AND lag(sisa_umur,1,0) over urutan + penambahan_umur >= masa_manfaat
          THEN masa_manfaat
     WHEN rank = 1
	  THEN masa_manfaat
     ELSE
     lag(sisa_umur,1,0) over urutan + penambahan_umur
     END),

     0)
ELSE
     COALESCE(lag(nilai_buku_akhir) over urutan, 0) + harga
END as penyusutan,

CASE WHEN (tahun_akhir - tahun) <

     CASE WHEN rank > 1 AND lag(sisa_umur,1,0) over urutan + penambahan_umur >= masa_manfaat
          THEN masa_manfaat
     WHEN rank = 1
	  THEN masa_manfaat
     ELSE
     lag(sisa_umur,1,0) over urutan + penambahan_umur
     END


     THEN (COALESCE(lag(nilai_buku_akhir) over urutan, 0) + harga) -
     (round((tahun_akhir - tahun) * (COALESCE(lag(nilai_buku_akhir) over urutan, 0) + harga) /

     (CASE WHEN rank > 1 AND lag(sisa_umur,1,0) over urutan + penambahan_umur >= masa_manfaat
          THEN masa_manfaat
     WHEN rank = 1
	  THEN masa_manfaat
     ELSE
     lag(sisa_umur,1,0) over urutan + penambahan_umur
     END),

     0))
ELSE
     (COALESCE(lag(nilai_buku_akhir) over urutan, 0) + harga) - (COALESCE(lag(nilai_buku_akhir) over urutan, 0) + harga)
END as nilai_buku_akhir


 from
view_penyusutan_gb_2016_e7
 Window
urutan as (partition by register order by rank)

order by register, rank;



-- kunci angka baris ke 3




DROP view if exists view_penyusutan_gb_2016_e9 CASCADE;

create view view_penyusutan_gb_2016_e9 as

select register,
nama_skpd,
id_skpd,
nama_lokasi_bidang,
id_lokasi_bidang,
nama_kabupaten,
id_kabupaten,
nama_provinsi,
id_provinsi,
id_mutasi_berkurang,
mutasi_berkurang,
keadaan_barang,
nama_barang,

harga,
nilai_perolehan,
tahun,
view_penyusutan_gb_2016_e8.kode_barang,
kode_umur,
rank,
tahun_akhir,


CASE WHEN rank > 1 AND lag(nilai_buku_akhir) over urutan > 0
          THEN round (100 * (harga / lag(nilai_buku_akhir) over urutan),2)
     WHEN rank > 1 AND lag(nilai_buku_akhir) over urutan <= 0
          THEN round(100,2)
     WHEN rank = 1
	  THEN 0
ELSE
     0
END as persen_awal,




CASE WHEN

  CASE WHEN rank > 1 AND lag(nilai_buku_akhir) over urutan > 0
	    THEN round (100 * (harga / lag(nilai_buku_akhir) over urutan),2)
      WHEN rank > 1 AND lag(nilai_buku_akhir) over urutan <= 0
	    THEN round(100,2)
      WHEN rank = 1
	    THEN 0
  ELSE
      0
  END

     > 75
     THEN 100


     WHEN

  CASE WHEN rank > 1 AND lag(nilai_buku_akhir) over urutan > 0
	    THEN round (100 * (harga / lag(nilai_buku_akhir) over urutan),2)
      WHEN rank > 1 AND lag(nilai_buku_akhir) over urutan <= 0
	    THEN round(100,2)
      WHEN rank = 1
	    THEN 0
  ELSE
      0
  END

     > 50
         THEN 75


     WHEN

  CASE WHEN rank > 1 AND lag(nilai_buku_akhir) over urutan > 0
	    THEN round (100 * (harga / lag(nilai_buku_akhir) over urutan),2)
      WHEN rank > 1 AND lag(nilai_buku_akhir) over urutan <= 0
	    THEN round(100,2)
      WHEN rank = 1
	    THEN 0
  ELSE
      0
  END

     > 25
         THEN 50


     WHEN

  CASE WHEN rank > 1 AND lag(nilai_buku_akhir) over urutan > 0
	    THEN round (100 * (harga / lag(nilai_buku_akhir) over urutan),2)
      WHEN rank > 1 AND lag(nilai_buku_akhir) over urutan <= 0
	    THEN round(100,2)
      WHEN rank = 1
	    THEN 0
  ELSE
      0
  END

     > 0
         THEN 25
ELSE
         0
END as persentasi,

masa_manfaat,
penambahan_umur,
umur_awal,
sisa_umur,
nilai_buku_awal,
penyusutan,
nilai_buku_akhir
 from
view_penyusutan_gb_2016_e8
 Window
urutan as (partition by register order by rank)


order by register, rank;





DROP view if exists view_penyusutan_gb_2016_e10 CASCADE;

create view view_penyusutan_gb_2016_e10 as

select register,
nama_skpd,
id_skpd,
nama_lokasi_bidang,
id_lokasi_bidang,
nama_kabupaten,
id_kabupaten,
nama_provinsi,
id_provinsi,
id_mutasi_berkurang,
mutasi_berkurang,
keadaan_barang,
nama_barang,

harga,
nilai_perolehan,
tahun,
view_penyusutan_gb_2016_e9.kode_barang,
kode_umur,
rank,
tahun_akhir,
persen_awal,

persentasi,

masa_manfaat,
CASE WHEN rank > 1
          THEN penambahan_umur.umur
     WHEN rank = 1
	  THEN 0
ELSE
     0
END as penambahan_umur,


umur_awal,
sisa_umur,
nilai_buku_awal,
penyusutan,
nilai_buku_akhir


 from
view_penyusutan_gb_2016_e9, penambahan_umur

where
view_penyusutan_gb_2016_e9.kode_umur = penambahan_umur.kode_barang AND
view_penyusutan_gb_2016_e9.persentasi = penambahan_umur.persen

order by register, rank;




DROP view if exists view_penyusutan_gb_2016_e11 CASCADE;

create view view_penyusutan_gb_2016_e11 as

select register,
nama_skpd,
id_skpd,
nama_lokasi_bidang,
id_lokasi_bidang,
nama_kabupaten,
id_kabupaten,
nama_provinsi,
id_provinsi,
id_mutasi_berkurang,
mutasi_berkurang,
keadaan_barang,
nama_barang,

harga,
nilai_perolehan,
tahun,
kode_barang,
kode_umur,
rank,
tahun_akhir,
persen_awal,

persentasi,

masa_manfaat,
penambahan_umur,

CASE WHEN rank > 1 AND lag(sisa_umur,1,0) over urutan + penambahan_umur >= masa_manfaat
          THEN masa_manfaat
     WHEN rank = 1
	  THEN masa_manfaat
ELSE
     lag(sisa_umur,1,0) over urutan + penambahan_umur
END as umur_awal,

CASE WHEN rank > 1 AND lag(sisa_umur,1,0) over urutan + penambahan_umur - (tahun_akhir - tahun) > 0
          AND lag(sisa_umur,1,0) over urutan + penambahan_umur < masa_manfaat
          THEN lag(sisa_umur,1,0) over urutan + penambahan_umur - (tahun_akhir - tahun)

     WHEN rank > 1 AND lag(sisa_umur,1,0) over urutan + penambahan_umur - (tahun_akhir - tahun) > 0
          AND lag(sisa_umur,1,0) over urutan + penambahan_umur >= masa_manfaat
          AND masa_manfaat - (tahun_akhir - tahun) > 0
          THEN masa_manfaat - (tahun_akhir - tahun)

     WHEN rank = 1 AND masa_manfaat - (tahun_akhir - tahun) > 0
	  THEN masa_manfaat - (tahun_akhir - tahun)
ELSE
    0
END as sisa_umur,



COALESCE(lag(nilai_buku_akhir) over urutan, 0) + harga as nilai_buku_awal,



CASE WHEN (tahun_akhir - tahun) <

     CASE WHEN rank > 1 AND lag(sisa_umur,1,0) over urutan + penambahan_umur >= masa_manfaat
          THEN masa_manfaat
     WHEN rank = 1
	  THEN masa_manfaat
     ELSE
     lag(sisa_umur,1,0) over urutan + penambahan_umur
     END


     THEN round((tahun_akhir - tahun) * (COALESCE(lag(nilai_buku_akhir) over urutan, 0) + harga) /

     (CASE WHEN rank > 1 AND lag(sisa_umur,1,0) over urutan + penambahan_umur >= masa_manfaat
          THEN masa_manfaat
     WHEN rank = 1
	  THEN masa_manfaat
     ELSE
     lag(sisa_umur,1,0) over urutan + penambahan_umur
     END),

     0)
ELSE
     COALESCE(lag(nilai_buku_akhir) over urutan, 0) + harga
END as penyusutan,

CASE WHEN (tahun_akhir - tahun) <

     CASE WHEN rank > 1 AND lag(sisa_umur,1,0) over urutan + penambahan_umur >= masa_manfaat
          THEN masa_manfaat
     WHEN rank = 1
	  THEN masa_manfaat
     ELSE
     lag(sisa_umur,1,0) over urutan + penambahan_umur
     END


     THEN (COALESCE(lag(nilai_buku_akhir) over urutan, 0) + harga) -
     (round((tahun_akhir - tahun) * (COALESCE(lag(nilai_buku_akhir) over urutan, 0) + harga) /

     (CASE WHEN rank > 1 AND lag(sisa_umur,1,0) over urutan + penambahan_umur >= masa_manfaat
          THEN masa_manfaat
     WHEN rank = 1
	  THEN masa_manfaat
     ELSE
     lag(sisa_umur,1,0) over urutan + penambahan_umur
     END),

     0))
ELSE
     (COALESCE(lag(nilai_buku_akhir) over urutan, 0) + harga) - (COALESCE(lag(nilai_buku_akhir) over urutan, 0) + harga)
END as nilai_buku_akhir


 from
view_penyusutan_gb_2016_e10
 Window
urutan as (partition by register order by rank)

order by register, rank;



-- kunci angka baris ke 4



DROP view if exists view_penyusutan_gb_2016_e12 CASCADE;

create view view_penyusutan_gb_2016_e12 as

select register,
nama_skpd,
id_skpd,
nama_lokasi_bidang,
id_lokasi_bidang,
nama_kabupaten,
id_kabupaten,
nama_provinsi,
id_provinsi,
id_mutasi_berkurang,
mutasi_berkurang,
keadaan_barang,
nama_barang,

harga,
nilai_perolehan,
tahun,
view_penyusutan_gb_2016_e11.kode_barang,
kode_umur,
rank,
tahun_akhir,


CASE WHEN rank > 1 AND lag(nilai_buku_akhir) over urutan > 0
          THEN round (100 * (harga / lag(nilai_buku_akhir) over urutan),2)
     WHEN rank > 1 AND lag(nilai_buku_akhir) over urutan <= 0
          THEN round(100,2)
     WHEN rank = 1
	  THEN 0
ELSE
     0
END as persen_awal,




CASE WHEN

  CASE WHEN rank > 1 AND lag(nilai_buku_akhir) over urutan > 0
	    THEN round (100 * (harga / lag(nilai_buku_akhir) over urutan),2)
      WHEN rank > 1 AND lag(nilai_buku_akhir) over urutan <= 0
	    THEN round(100,2)
      WHEN rank = 1
	    THEN 0
  ELSE
      0
  END

     > 75
     THEN 100


     WHEN

  CASE WHEN rank > 1 AND lag(nilai_buku_akhir) over urutan > 0
	    THEN round (100 * (harga / lag(nilai_buku_akhir) over urutan),2)
      WHEN rank > 1 AND lag(nilai_buku_akhir) over urutan <= 0
	    THEN round(100,2)
      WHEN rank = 1
	    THEN 0
  ELSE
      0
  END

     > 50
         THEN 75


     WHEN

  CASE WHEN rank > 1 AND lag(nilai_buku_akhir) over urutan > 0
	    THEN round (100 * (harga / lag(nilai_buku_akhir) over urutan),2)
      WHEN rank > 1 AND lag(nilai_buku_akhir) over urutan <= 0
	    THEN round(100,2)
      WHEN rank = 1
	    THEN 0
  ELSE
      0
  END

     > 25
         THEN 50


     WHEN

  CASE WHEN rank > 1 AND lag(nilai_buku_akhir) over urutan > 0
	    THEN round (100 * (harga / lag(nilai_buku_akhir) over urutan),2)
      WHEN rank > 1 AND lag(nilai_buku_akhir) over urutan <= 0
	    THEN round(100,2)
      WHEN rank = 1
	    THEN 0
  ELSE
      0
  END

     > 0
         THEN 25
ELSE
         0
END as persentasi,

masa_manfaat,
penambahan_umur,
umur_awal,
sisa_umur,
nilai_buku_awal,
penyusutan,
nilai_buku_akhir
 from
view_penyusutan_gb_2016_e11
 Window
urutan as (partition by register order by rank)


order by register, rank;





DROP view if exists view_penyusutan_gb_2016_e13 CASCADE;

create view view_penyusutan_gb_2016_e13 as

select register,
nama_skpd,
id_skpd,
nama_lokasi_bidang,
id_lokasi_bidang,
nama_kabupaten,
id_kabupaten,
nama_provinsi,
id_provinsi,
id_mutasi_berkurang,
mutasi_berkurang,
keadaan_barang,
nama_barang,

harga,
nilai_perolehan,
tahun,
view_penyusutan_gb_2016_e12.kode_barang,
kode_umur,
rank,
tahun_akhir,
persen_awal,

persentasi,

masa_manfaat,
CASE WHEN rank > 1
          THEN penambahan_umur.umur
     WHEN rank = 1
	  THEN 0
ELSE
     0
END as penambahan_umur,


umur_awal,
sisa_umur,
nilai_buku_awal,
penyusutan,
nilai_buku_akhir


 from
view_penyusutan_gb_2016_e12, penambahan_umur

where
view_penyusutan_gb_2016_e12.kode_umur = penambahan_umur.kode_barang AND
view_penyusutan_gb_2016_e12.persentasi = penambahan_umur.persen

order by register, rank;




DROP view if exists view_penyusutan_gb_2016_e14 CASCADE;

create view view_penyusutan_gb_2016_e14 as

select register,
nama_skpd,
id_skpd,
nama_lokasi_bidang,
id_lokasi_bidang,
nama_kabupaten,
id_kabupaten,
nama_provinsi,
id_provinsi,
id_mutasi_berkurang,
mutasi_berkurang,
keadaan_barang,
nama_barang,

harga,
nilai_perolehan,
tahun,
kode_barang,
kode_umur,
rank,
tahun_akhir,
persen_awal,

persentasi,

masa_manfaat,
penambahan_umur,

CASE WHEN rank > 1 AND lag(sisa_umur,1,0) over urutan + penambahan_umur >= masa_manfaat
          THEN masa_manfaat
     WHEN rank = 1
	  THEN masa_manfaat
ELSE
     lag(sisa_umur,1,0) over urutan + penambahan_umur
END as umur_awal,

CASE WHEN rank > 1 AND lag(sisa_umur,1,0) over urutan + penambahan_umur - (tahun_akhir - tahun) > 0
          AND lag(sisa_umur,1,0) over urutan + penambahan_umur < masa_manfaat
          THEN lag(sisa_umur,1,0) over urutan + penambahan_umur - (tahun_akhir - tahun)

     WHEN rank > 1 AND lag(sisa_umur,1,0) over urutan + penambahan_umur - (tahun_akhir - tahun) > 0
          AND lag(sisa_umur,1,0) over urutan + penambahan_umur >= masa_manfaat
          AND masa_manfaat - (tahun_akhir - tahun) > 0
          THEN masa_manfaat - (tahun_akhir - tahun)

     WHEN rank = 1 AND masa_manfaat - (tahun_akhir - tahun) > 0
	  THEN masa_manfaat - (tahun_akhir - tahun)
ELSE
    0
END as sisa_umur,



COALESCE(lag(nilai_buku_akhir) over urutan, 0) + harga as nilai_buku_awal,



CASE WHEN (tahun_akhir - tahun) <

     CASE WHEN rank > 1 AND lag(sisa_umur,1,0) over urutan + penambahan_umur >= masa_manfaat
          THEN masa_manfaat
     WHEN rank = 1
	  THEN masa_manfaat
     ELSE
     lag(sisa_umur,1,0) over urutan + penambahan_umur
     END


     THEN round((tahun_akhir - tahun) * (COALESCE(lag(nilai_buku_akhir) over urutan, 0) + harga) /

     (CASE WHEN rank > 1 AND lag(sisa_umur,1,0) over urutan + penambahan_umur >= masa_manfaat
          THEN masa_manfaat
     WHEN rank = 1
	  THEN masa_manfaat
     ELSE
     lag(sisa_umur,1,0) over urutan + penambahan_umur
     END),

     0)
ELSE
     COALESCE(lag(nilai_buku_akhir) over urutan, 0) + harga
END as penyusutan,

CASE WHEN (tahun_akhir - tahun) <

     CASE WHEN rank > 1 AND lag(sisa_umur,1,0) over urutan + penambahan_umur >= masa_manfaat
          THEN masa_manfaat
     WHEN rank = 1
	  THEN masa_manfaat
     ELSE
     lag(sisa_umur,1,0) over urutan + penambahan_umur
     END


     THEN (COALESCE(lag(nilai_buku_akhir) over urutan, 0) + harga) -
     (round((tahun_akhir - tahun) * (COALESCE(lag(nilai_buku_akhir) over urutan, 0) + harga) /

     (CASE WHEN rank > 1 AND lag(sisa_umur,1,0) over urutan + penambahan_umur >= masa_manfaat
          THEN masa_manfaat
     WHEN rank = 1
	  THEN masa_manfaat
     ELSE
     lag(sisa_umur,1,0) over urutan + penambahan_umur
     END),

     0))
ELSE
     (COALESCE(lag(nilai_buku_akhir) over urutan, 0) + harga) - (COALESCE(lag(nilai_buku_akhir) over urutan, 0) + harga)
END as nilai_buku_akhir


 from
view_penyusutan_gb_2016_e13
 Window
urutan as (partition by register order by rank)

order by register, rank;



-- kunci angka baris ke 5




DROP view if exists view_penyusutan_gb_2016_e15 CASCADE;

create view view_penyusutan_gb_2016_e15 as

select register,
nama_skpd,
id_skpd,
nama_lokasi_bidang,
id_lokasi_bidang,
nama_kabupaten,
id_kabupaten,
nama_provinsi,
id_provinsi,
id_mutasi_berkurang,
mutasi_berkurang,
keadaan_barang,
nama_barang,

harga,
nilai_perolehan,
tahun,
view_penyusutan_gb_2016_e14.kode_barang,
kode_umur,
rank,
tahun_akhir,


CASE WHEN rank > 1 AND lag(nilai_buku_akhir) over urutan > 0
          THEN round (100 * (harga / lag(nilai_buku_akhir) over urutan),2)
     WHEN rank > 1 AND lag(nilai_buku_akhir) over urutan <= 0
          THEN round(100,2)
     WHEN rank = 1
	  THEN 0
ELSE
     0
END as persen_awal,




CASE WHEN

  CASE WHEN rank > 1 AND lag(nilai_buku_akhir) over urutan > 0
	    THEN round (100 * (harga / lag(nilai_buku_akhir) over urutan),2)
      WHEN rank > 1 AND lag(nilai_buku_akhir) over urutan <= 0
	    THEN round(100,2)
      WHEN rank = 1
	    THEN 0
  ELSE
      0
  END

     > 75
     THEN 100


     WHEN

  CASE WHEN rank > 1 AND lag(nilai_buku_akhir) over urutan > 0
	    THEN round (100 * (harga / lag(nilai_buku_akhir) over urutan),2)
      WHEN rank > 1 AND lag(nilai_buku_akhir) over urutan <= 0
	    THEN round(100,2)
      WHEN rank = 1
	    THEN 0
  ELSE
      0
  END

     > 50
         THEN 75


     WHEN

  CASE WHEN rank > 1 AND lag(nilai_buku_akhir) over urutan > 0
	    THEN round (100 * (harga / lag(nilai_buku_akhir) over urutan),2)
      WHEN rank > 1 AND lag(nilai_buku_akhir) over urutan <= 0
	    THEN round(100,2)
      WHEN rank = 1
	    THEN 0
  ELSE
      0
  END

     > 25
         THEN 50


     WHEN

  CASE WHEN rank > 1 AND lag(nilai_buku_akhir) over urutan > 0
	    THEN round (100 * (harga / lag(nilai_buku_akhir) over urutan),2)
      WHEN rank > 1 AND lag(nilai_buku_akhir) over urutan <= 0
	    THEN round(100,2)
      WHEN rank = 1
	    THEN 0
  ELSE
      0
  END

     > 0
         THEN 25
ELSE
         0
END as persentasi,

masa_manfaat,
penambahan_umur,
umur_awal,
sisa_umur,
nilai_buku_awal,
penyusutan,
nilai_buku_akhir
 from
view_penyusutan_gb_2016_e14
 Window
urutan as (partition by register order by rank)


order by register, rank;





DROP view if exists view_penyusutan_gb_2016_e16 CASCADE;

create view view_penyusutan_gb_2016_e16 as

select register,
nama_skpd,
id_skpd,
nama_lokasi_bidang,
id_lokasi_bidang,
nama_kabupaten,
id_kabupaten,
nama_provinsi,
id_provinsi,
id_mutasi_berkurang,
mutasi_berkurang,
keadaan_barang,
nama_barang,

harga,
nilai_perolehan,
tahun,
view_penyusutan_gb_2016_e15.kode_barang,
kode_umur,
rank,
tahun_akhir,
persen_awal,

persentasi,

masa_manfaat,
CASE WHEN rank > 1
          THEN penambahan_umur.umur
     WHEN rank = 1
	  THEN 0
ELSE
     0
END as penambahan_umur,


umur_awal,
sisa_umur,
nilai_buku_awal,
penyusutan,
nilai_buku_akhir


 from
view_penyusutan_gb_2016_e15, penambahan_umur

where
view_penyusutan_gb_2016_e15.kode_umur = penambahan_umur.kode_barang AND
view_penyusutan_gb_2016_e15.persentasi = penambahan_umur.persen

order by register, rank;




DROP view if exists view_penyusutan_gb_2016_e17 CASCADE;

create view view_penyusutan_gb_2016_e17 as

select register,
nama_skpd,
id_skpd,
nama_lokasi_bidang,
id_lokasi_bidang,
nama_kabupaten,
id_kabupaten,
nama_provinsi,
id_provinsi,
id_mutasi_berkurang,
mutasi_berkurang,
keadaan_barang,
nama_barang,

harga,
nilai_perolehan,
tahun,
kode_barang,
kode_umur,
rank,
tahun_akhir,
persen_awal,

persentasi,

masa_manfaat,
penambahan_umur,

CASE WHEN rank > 1 AND lag(sisa_umur,1,0) over urutan + penambahan_umur >= masa_manfaat
          THEN masa_manfaat
     WHEN rank = 1
	  THEN masa_manfaat
ELSE
     lag(sisa_umur,1,0) over urutan + penambahan_umur
END as umur_awal,

CASE WHEN rank > 1 AND lag(sisa_umur,1,0) over urutan + penambahan_umur - (tahun_akhir - tahun) > 0
          AND lag(sisa_umur,1,0) over urutan + penambahan_umur < masa_manfaat
          THEN lag(sisa_umur,1,0) over urutan + penambahan_umur - (tahun_akhir - tahun)

     WHEN rank > 1 AND lag(sisa_umur,1,0) over urutan + penambahan_umur - (tahun_akhir - tahun) > 0
          AND lag(sisa_umur,1,0) over urutan + penambahan_umur >= masa_manfaat
          AND masa_manfaat - (tahun_akhir - tahun) > 0
          THEN masa_manfaat - (tahun_akhir - tahun)

     WHEN rank = 1 AND masa_manfaat - (tahun_akhir - tahun) > 0
	  THEN masa_manfaat - (tahun_akhir - tahun)
ELSE
    0
END as sisa_umur,



COALESCE(lag(nilai_buku_akhir) over urutan, 0) + harga as nilai_buku_awal,



CASE WHEN (tahun_akhir - tahun) <

     CASE WHEN rank > 1 AND lag(sisa_umur,1,0) over urutan + penambahan_umur >= masa_manfaat
          THEN masa_manfaat
     WHEN rank = 1
	  THEN masa_manfaat
     ELSE
     lag(sisa_umur,1,0) over urutan + penambahan_umur
     END


     THEN round((tahun_akhir - tahun) * (COALESCE(lag(nilai_buku_akhir) over urutan, 0) + harga) /

     (CASE WHEN rank > 1 AND lag(sisa_umur,1,0) over urutan + penambahan_umur >= masa_manfaat
          THEN masa_manfaat
     WHEN rank = 1
	  THEN masa_manfaat
     ELSE
     lag(sisa_umur,1,0) over urutan + penambahan_umur
     END),

     0)
ELSE
     COALESCE(lag(nilai_buku_akhir) over urutan, 0) + harga
END as penyusutan,

CASE WHEN (tahun_akhir - tahun) <

     CASE WHEN rank > 1 AND lag(sisa_umur,1,0) over urutan + penambahan_umur >= masa_manfaat
          THEN masa_manfaat
     WHEN rank = 1
	  THEN masa_manfaat
     ELSE
     lag(sisa_umur,1,0) over urutan + penambahan_umur
     END


     THEN (COALESCE(lag(nilai_buku_akhir) over urutan, 0) + harga) -
     (round((tahun_akhir - tahun) * (COALESCE(lag(nilai_buku_akhir) over urutan, 0) + harga) /

     (CASE WHEN rank > 1 AND lag(sisa_umur,1,0) over urutan + penambahan_umur >= masa_manfaat
          THEN masa_manfaat
     WHEN rank = 1
	  THEN masa_manfaat
     ELSE
     lag(sisa_umur,1,0) over urutan + penambahan_umur
     END),

     0))
ELSE
     (COALESCE(lag(nilai_buku_akhir) over urutan, 0) + harga) - (COALESCE(lag(nilai_buku_akhir) over urutan, 0) + harga)
END as nilai_buku_akhir


 from
view_penyusutan_gb_2016_e16
 Window
urutan as (partition by register order by rank)

order by register, rank;



-- kunci angka baris ke 6





DROP view if exists view_penyusutan_gb_2016_e18 CASCADE;

create view view_penyusutan_gb_2016_e18 as

select register,
nama_skpd,
id_skpd,
nama_lokasi_bidang,
id_lokasi_bidang,
nama_kabupaten,
id_kabupaten,
nama_provinsi,
id_provinsi,
id_mutasi_berkurang,
mutasi_berkurang,
keadaan_barang,
nama_barang,

harga,
nilai_perolehan,
tahun,
view_penyusutan_gb_2016_e17.kode_barang,
kode_umur,
rank,
tahun_akhir,


CASE WHEN rank > 1 AND lag(nilai_buku_akhir) over urutan > 0
          THEN round (100 * (harga / lag(nilai_buku_akhir) over urutan),2)
     WHEN rank > 1 AND lag(nilai_buku_akhir) over urutan <= 0
          THEN round(100,2)
     WHEN rank = 1
	  THEN 0
ELSE
     0
END as persen_awal,




CASE WHEN

  CASE WHEN rank > 1 AND lag(nilai_buku_akhir) over urutan > 0
	    THEN round (100 * (harga / lag(nilai_buku_akhir) over urutan),2)
      WHEN rank > 1 AND lag(nilai_buku_akhir) over urutan <= 0
	    THEN round(100,2)
      WHEN rank = 1
	    THEN 0
  ELSE
      0
  END

     > 75
     THEN 100


     WHEN

  CASE WHEN rank > 1 AND lag(nilai_buku_akhir) over urutan > 0
	    THEN round (100 * (harga / lag(nilai_buku_akhir) over urutan),2)
      WHEN rank > 1 AND lag(nilai_buku_akhir) over urutan <= 0
	    THEN round(100,2)
      WHEN rank = 1
	    THEN 0
  ELSE
      0
  END

     > 50
         THEN 75


     WHEN

  CASE WHEN rank > 1 AND lag(nilai_buku_akhir) over urutan > 0
	    THEN round (100 * (harga / lag(nilai_buku_akhir) over urutan),2)
      WHEN rank > 1 AND lag(nilai_buku_akhir) over urutan <= 0
	    THEN round(100,2)
      WHEN rank = 1
	    THEN 0
  ELSE
      0
  END

     > 25
         THEN 50


     WHEN

  CASE WHEN rank > 1 AND lag(nilai_buku_akhir) over urutan > 0
	    THEN round (100 * (harga / lag(nilai_buku_akhir) over urutan),2)
      WHEN rank > 1 AND lag(nilai_buku_akhir) over urutan <= 0
	    THEN round(100,2)
      WHEN rank = 1
	    THEN 0
  ELSE
      0
  END

     > 0
         THEN 25
ELSE
         0
END as persentasi,

masa_manfaat,
penambahan_umur,
umur_awal,
sisa_umur,
nilai_buku_awal,
penyusutan,
nilai_buku_akhir
 from
view_penyusutan_gb_2016_e17
 Window
urutan as (partition by register order by rank)


order by register, rank;





DROP view if exists view_penyusutan_gb_2016_e19 CASCADE;

create view view_penyusutan_gb_2016_e19 as

select register,
nama_skpd,
id_skpd,
nama_lokasi_bidang,
id_lokasi_bidang,
nama_kabupaten,
id_kabupaten,
nama_provinsi,
id_provinsi,
id_mutasi_berkurang,
mutasi_berkurang,
keadaan_barang,
nama_barang,

harga,
nilai_perolehan,
tahun,
view_penyusutan_gb_2016_e18.kode_barang,
kode_umur,
rank,
tahun_akhir,
persen_awal,

persentasi,

masa_manfaat,
CASE WHEN rank > 1
          THEN penambahan_umur.umur
     WHEN rank = 1
	  THEN 0
ELSE
     0
END as penambahan_umur,


umur_awal,
sisa_umur,
nilai_buku_awal,
penyusutan,
nilai_buku_akhir


 from
view_penyusutan_gb_2016_e18, penambahan_umur

where
view_penyusutan_gb_2016_e18.kode_umur = penambahan_umur.kode_barang AND
view_penyusutan_gb_2016_e18.persentasi = penambahan_umur.persen

order by register, rank;




DROP view if exists view_penyusutan_gb_2016_e20 CASCADE;

create view view_penyusutan_gb_2016_e20 as

select register,
nama_skpd,
id_skpd,
nama_lokasi_bidang,
id_lokasi_bidang,
nama_kabupaten,
id_kabupaten,
nama_provinsi,
id_provinsi,
id_mutasi_berkurang,
mutasi_berkurang,
keadaan_barang,
nama_barang,

harga,
nilai_perolehan,
tahun,
kode_barang,
kode_umur,
rank,
tahun_akhir,
persen_awal,

persentasi,

masa_manfaat,
penambahan_umur,

CASE WHEN rank > 1 AND lag(sisa_umur,1,0) over urutan + penambahan_umur >= masa_manfaat
          THEN masa_manfaat
     WHEN rank = 1
	  THEN masa_manfaat
ELSE
     lag(sisa_umur,1,0) over urutan + penambahan_umur
END as umur_awal,

CASE WHEN rank > 1 AND lag(sisa_umur,1,0) over urutan + penambahan_umur - (tahun_akhir - tahun) > 0
          AND lag(sisa_umur,1,0) over urutan + penambahan_umur < masa_manfaat
          THEN lag(sisa_umur,1,0) over urutan + penambahan_umur - (tahun_akhir - tahun)

     WHEN rank > 1 AND lag(sisa_umur,1,0) over urutan + penambahan_umur - (tahun_akhir - tahun) > 0
          AND lag(sisa_umur,1,0) over urutan + penambahan_umur >= masa_manfaat
          AND masa_manfaat - (tahun_akhir - tahun) > 0
          THEN masa_manfaat - (tahun_akhir - tahun)

     WHEN rank = 1 AND masa_manfaat - (tahun_akhir - tahun) > 0
	  THEN masa_manfaat - (tahun_akhir - tahun)
ELSE
    0
END as sisa_umur,



COALESCE(lag(nilai_buku_akhir) over urutan, 0) + harga as nilai_buku_awal,



CASE WHEN (tahun_akhir - tahun) <

     CASE WHEN rank > 1 AND lag(sisa_umur,1,0) over urutan + penambahan_umur >= masa_manfaat
          THEN masa_manfaat
     WHEN rank = 1
	  THEN masa_manfaat
     ELSE
     lag(sisa_umur,1,0) over urutan + penambahan_umur
     END


     THEN round((tahun_akhir - tahun) * (COALESCE(lag(nilai_buku_akhir) over urutan, 0) + harga) /

     (CASE WHEN rank > 1 AND lag(sisa_umur,1,0) over urutan + penambahan_umur >= masa_manfaat
          THEN masa_manfaat
     WHEN rank = 1
	  THEN masa_manfaat
     ELSE
     lag(sisa_umur,1,0) over urutan + penambahan_umur
     END),

     0)
ELSE
     COALESCE(lag(nilai_buku_akhir) over urutan, 0) + harga
END as penyusutan,

CASE WHEN (tahun_akhir - tahun) <

     CASE WHEN rank > 1 AND lag(sisa_umur,1,0) over urutan + penambahan_umur >= masa_manfaat
          THEN masa_manfaat
     WHEN rank = 1
	  THEN masa_manfaat
     ELSE
     lag(sisa_umur,1,0) over urutan + penambahan_umur
     END


     THEN (COALESCE(lag(nilai_buku_akhir) over urutan, 0) + harga) -
     (round((tahun_akhir - tahun) * (COALESCE(lag(nilai_buku_akhir) over urutan, 0) + harga) /

     (CASE WHEN rank > 1 AND lag(sisa_umur,1,0) over urutan + penambahan_umur >= masa_manfaat
          THEN masa_manfaat
     WHEN rank = 1
	  THEN masa_manfaat
     ELSE
     lag(sisa_umur,1,0) over urutan + penambahan_umur
     END),

     0))
ELSE
     (COALESCE(lag(nilai_buku_akhir) over urutan, 0) + harga) - (COALESCE(lag(nilai_buku_akhir) over urutan, 0) + harga)
END as nilai_buku_akhir


 from
view_penyusutan_gb_2016_e19
 Window
urutan as (partition by register order by rank)

order by register, rank;



-- kunci angka baris ke 7







DROP view if exists view_penyusutan_gb_2016_e21 CASCADE;

create view view_penyusutan_gb_2016_e21 as

select register,
nama_skpd,
id_skpd,
nama_lokasi_bidang,
id_lokasi_bidang,
nama_kabupaten,
id_kabupaten,
nama_provinsi,
id_provinsi,
id_mutasi_berkurang,
mutasi_berkurang,
keadaan_barang,
nama_barang,

harga,
nilai_perolehan,
tahun,
view_penyusutan_gb_2016_e20.kode_barang,
kode_umur,
rank,
tahun_akhir,


CASE WHEN rank > 1 AND lag(nilai_buku_akhir) over urutan > 0
          THEN round (100 * (harga / lag(nilai_buku_akhir) over urutan),2)
     WHEN rank > 1 AND lag(nilai_buku_akhir) over urutan <= 0
          THEN round(100,2)
     WHEN rank = 1
	  THEN 0
ELSE
     0
END as persen_awal,




CASE WHEN

  CASE WHEN rank > 1 AND lag(nilai_buku_akhir) over urutan > 0
	    THEN round (100 * (harga / lag(nilai_buku_akhir) over urutan),2)
      WHEN rank > 1 AND lag(nilai_buku_akhir) over urutan <= 0
	    THEN round(100,2)
      WHEN rank = 1
	    THEN 0
  ELSE
      0
  END

     > 75
     THEN 100


     WHEN

  CASE WHEN rank > 1 AND lag(nilai_buku_akhir) over urutan > 0
	    THEN round (100 * (harga / lag(nilai_buku_akhir) over urutan),2)
      WHEN rank > 1 AND lag(nilai_buku_akhir) over urutan <= 0
	    THEN round(100,2)
      WHEN rank = 1
	    THEN 0
  ELSE
      0
  END

     > 50
         THEN 75


     WHEN

  CASE WHEN rank > 1 AND lag(nilai_buku_akhir) over urutan > 0
	    THEN round (100 * (harga / lag(nilai_buku_akhir) over urutan),2)
      WHEN rank > 1 AND lag(nilai_buku_akhir) over urutan <= 0
	    THEN round(100,2)
      WHEN rank = 1
	    THEN 0
  ELSE
      0
  END

     > 25
         THEN 50


     WHEN

  CASE WHEN rank > 1 AND lag(nilai_buku_akhir) over urutan > 0
	    THEN round (100 * (harga / lag(nilai_buku_akhir) over urutan),2)
      WHEN rank > 1 AND lag(nilai_buku_akhir) over urutan <= 0
	    THEN round(100,2)
      WHEN rank = 1
	    THEN 0
  ELSE
      0
  END

     > 0
         THEN 25
ELSE
         0
END as persentasi,

masa_manfaat,
penambahan_umur,
umur_awal,
sisa_umur,
nilai_buku_awal,
penyusutan,
nilai_buku_akhir
 from
view_penyusutan_gb_2016_e20
 Window
urutan as (partition by register order by rank)


order by register, rank;





DROP view if exists view_penyusutan_gb_2016_e22 CASCADE;

create view view_penyusutan_gb_2016_e22 as

select register,
nama_skpd,
id_skpd,
nama_lokasi_bidang,
id_lokasi_bidang,
nama_kabupaten,
id_kabupaten,
nama_provinsi,
id_provinsi,
id_mutasi_berkurang,
mutasi_berkurang,
keadaan_barang,
nama_barang,

harga,
nilai_perolehan,
tahun,
view_penyusutan_gb_2016_e21.kode_barang,
kode_umur,
rank,
tahun_akhir,
persen_awal,

persentasi,

masa_manfaat,
CASE WHEN rank > 1
          THEN penambahan_umur.umur
     WHEN rank = 1
	  THEN 0
ELSE
     0
END as penambahan_umur,


umur_awal,
sisa_umur,
nilai_buku_awal,
penyusutan,
nilai_buku_akhir


 from
view_penyusutan_gb_2016_e21, penambahan_umur

where
view_penyusutan_gb_2016_e21.kode_umur = penambahan_umur.kode_barang AND
view_penyusutan_gb_2016_e21.persentasi = penambahan_umur.persen

order by register, rank;




DROP view if exists view_penyusutan_gb_2016_e23 CASCADE;

create view view_penyusutan_gb_2016_e23 as

select register,
nama_skpd,
id_skpd,
nama_lokasi_bidang,
id_lokasi_bidang,
nama_kabupaten,
id_kabupaten,
nama_provinsi,
id_provinsi,
id_mutasi_berkurang,
mutasi_berkurang,
keadaan_barang,
nama_barang,

harga,
nilai_perolehan,
tahun,
kode_barang,
kode_umur,
rank,
tahun_akhir,
persen_awal,

persentasi,

masa_manfaat,
penambahan_umur,

CASE WHEN rank > 1 AND lag(sisa_umur,1,0) over urutan + penambahan_umur >= masa_manfaat
          THEN masa_manfaat
     WHEN rank = 1
	  THEN masa_manfaat
ELSE
     lag(sisa_umur,1,0) over urutan + penambahan_umur
END as umur_awal,

CASE WHEN rank > 1 AND lag(sisa_umur,1,0) over urutan + penambahan_umur - (tahun_akhir - tahun) > 0
          AND lag(sisa_umur,1,0) over urutan + penambahan_umur < masa_manfaat
          THEN lag(sisa_umur,1,0) over urutan + penambahan_umur - (tahun_akhir - tahun)

     WHEN rank > 1 AND lag(sisa_umur,1,0) over urutan + penambahan_umur - (tahun_akhir - tahun) > 0
          AND lag(sisa_umur,1,0) over urutan + penambahan_umur >= masa_manfaat
          AND masa_manfaat - (tahun_akhir - tahun) > 0
          THEN masa_manfaat - (tahun_akhir - tahun)

     WHEN rank = 1 AND masa_manfaat - (tahun_akhir - tahun) > 0
	  THEN masa_manfaat - (tahun_akhir - tahun)
ELSE
    0
END as sisa_umur,



COALESCE(lag(nilai_buku_akhir) over urutan, 0) + harga as nilai_buku_awal,



CASE WHEN (tahun_akhir - tahun) <

     CASE WHEN rank > 1 AND lag(sisa_umur,1,0) over urutan + penambahan_umur >= masa_manfaat
          THEN masa_manfaat
     WHEN rank = 1
	  THEN masa_manfaat
     ELSE
     lag(sisa_umur,1,0) over urutan + penambahan_umur
     END


     THEN round((tahun_akhir - tahun) * (COALESCE(lag(nilai_buku_akhir) over urutan, 0) + harga) /

     (CASE WHEN rank > 1 AND lag(sisa_umur,1,0) over urutan + penambahan_umur >= masa_manfaat
          THEN masa_manfaat
     WHEN rank = 1
	  THEN masa_manfaat
     ELSE
     lag(sisa_umur,1,0) over urutan + penambahan_umur
     END),

     0)
ELSE
     COALESCE(lag(nilai_buku_akhir) over urutan, 0) + harga
END as penyusutan,

CASE WHEN (tahun_akhir - tahun) <

     CASE WHEN rank > 1 AND lag(sisa_umur,1,0) over urutan + penambahan_umur >= masa_manfaat
          THEN masa_manfaat
     WHEN rank = 1
	  THEN masa_manfaat
     ELSE
     lag(sisa_umur,1,0) over urutan + penambahan_umur
     END


     THEN (COALESCE(lag(nilai_buku_akhir) over urutan, 0) + harga) -
     (round((tahun_akhir - tahun) * (COALESCE(lag(nilai_buku_akhir) over urutan, 0) + harga) /

     (CASE WHEN rank > 1 AND lag(sisa_umur,1,0) over urutan + penambahan_umur >= masa_manfaat
          THEN masa_manfaat
     WHEN rank = 1
	  THEN masa_manfaat
     ELSE
     lag(sisa_umur,1,0) over urutan + penambahan_umur
     END),

     0))
ELSE
     (COALESCE(lag(nilai_buku_akhir) over urutan, 0) + harga) - (COALESCE(lag(nilai_buku_akhir) over urutan, 0) + harga)
END as nilai_buku_akhir


 from
view_penyusutan_gb_2016_e22
 Window
urutan as (partition by register order by rank)

order by register, rank;



-- kunci angka baris ke 8






DROP view if exists view_penyusutan_gb_2016_e24 CASCADE;

create view view_penyusutan_gb_2016_e24 as

select register,
nama_skpd,
id_skpd,
nama_lokasi_bidang,
id_lokasi_bidang,
nama_kabupaten,
id_kabupaten,
nama_provinsi,
id_provinsi,
id_mutasi_berkurang,
mutasi_berkurang,
keadaan_barang,
nama_barang,

harga,
nilai_perolehan,
tahun,
view_penyusutan_gb_2016_e23.kode_barang,
kode_umur,
rank,
tahun_akhir,


CASE WHEN rank > 1 AND lag(nilai_buku_akhir) over urutan > 0
          THEN round (100 * (harga / lag(nilai_buku_akhir) over urutan),2)
     WHEN rank > 1 AND lag(nilai_buku_akhir) over urutan <= 0
          THEN round(100,2)
     WHEN rank = 1
	  THEN 0
ELSE
     0
END as persen_awal,




CASE WHEN

  CASE WHEN rank > 1 AND lag(nilai_buku_akhir) over urutan > 0
	    THEN round (100 * (harga / lag(nilai_buku_akhir) over urutan),2)
      WHEN rank > 1 AND lag(nilai_buku_akhir) over urutan <= 0
	    THEN round(100,2)
      WHEN rank = 1
	    THEN 0
  ELSE
      0
  END

     > 75
     THEN 100


     WHEN

  CASE WHEN rank > 1 AND lag(nilai_buku_akhir) over urutan > 0
	    THEN round (100 * (harga / lag(nilai_buku_akhir) over urutan),2)
      WHEN rank > 1 AND lag(nilai_buku_akhir) over urutan <= 0
	    THEN round(100,2)
      WHEN rank = 1
	    THEN 0
  ELSE
      0
  END

     > 50
         THEN 75


     WHEN

  CASE WHEN rank > 1 AND lag(nilai_buku_akhir) over urutan > 0
	    THEN round (100 * (harga / lag(nilai_buku_akhir) over urutan),2)
      WHEN rank > 1 AND lag(nilai_buku_akhir) over urutan <= 0
	    THEN round(100,2)
      WHEN rank = 1
	    THEN 0
  ELSE
      0
  END

     > 25
         THEN 50


     WHEN

  CASE WHEN rank > 1 AND lag(nilai_buku_akhir) over urutan > 0
	    THEN round (100 * (harga / lag(nilai_buku_akhir) over urutan),2)
      WHEN rank > 1 AND lag(nilai_buku_akhir) over urutan <= 0
	    THEN round(100,2)
      WHEN rank = 1
	    THEN 0
  ELSE
      0
  END

     > 0
         THEN 25
ELSE
         0
END as persentasi,

masa_manfaat,
penambahan_umur,
umur_awal,
sisa_umur,
nilai_buku_awal,
penyusutan,
nilai_buku_akhir
 from
view_penyusutan_gb_2016_e23
 Window
urutan as (partition by register order by rank)


order by register, rank;





DROP view if exists view_penyusutan_gb_2016_e25 CASCADE;

create view view_penyusutan_gb_2016_e25 as

select register,
nama_skpd,
id_skpd,
nama_lokasi_bidang,
id_lokasi_bidang,
nama_kabupaten,
id_kabupaten,
nama_provinsi,
id_provinsi,
id_mutasi_berkurang,
mutasi_berkurang,
keadaan_barang,
nama_barang,

harga,
nilai_perolehan,
tahun,
view_penyusutan_gb_2016_e24.kode_barang,
kode_umur,
rank,
tahun_akhir,
persen_awal,

persentasi,

masa_manfaat,
CASE WHEN rank > 1
          THEN penambahan_umur.umur
     WHEN rank = 1
	  THEN 0
ELSE
     0
END as penambahan_umur,


umur_awal,
sisa_umur,
nilai_buku_awal,
penyusutan,
nilai_buku_akhir


 from
view_penyusutan_gb_2016_e24, penambahan_umur

where
view_penyusutan_gb_2016_e24.kode_umur = penambahan_umur.kode_barang AND
view_penyusutan_gb_2016_e24.persentasi = penambahan_umur.persen

order by register, rank;




DROP view if exists view_penyusutan_gb_2016_e26 CASCADE;

create view view_penyusutan_gb_2016_e26 as

select register,
nama_skpd,
id_skpd,
nama_lokasi_bidang,
id_lokasi_bidang,
nama_kabupaten,
id_kabupaten,
nama_provinsi,
id_provinsi,
id_mutasi_berkurang,
mutasi_berkurang,
keadaan_barang,
nama_barang,

harga,
nilai_perolehan,
tahun,
kode_barang,
kode_umur,
rank,
tahun_akhir,
persen_awal,

persentasi,

masa_manfaat,
penambahan_umur,

CASE WHEN rank > 1 AND lag(sisa_umur,1,0) over urutan + penambahan_umur >= masa_manfaat
          THEN masa_manfaat
     WHEN rank = 1
	  THEN masa_manfaat
ELSE
     lag(sisa_umur,1,0) over urutan + penambahan_umur
END as umur_awal,

CASE WHEN rank > 1 AND lag(sisa_umur,1,0) over urutan + penambahan_umur - (tahun_akhir - tahun) > 0
          AND lag(sisa_umur,1,0) over urutan + penambahan_umur < masa_manfaat
          THEN lag(sisa_umur,1,0) over urutan + penambahan_umur - (tahun_akhir - tahun)

     WHEN rank > 1 AND lag(sisa_umur,1,0) over urutan + penambahan_umur - (tahun_akhir - tahun) > 0
          AND lag(sisa_umur,1,0) over urutan + penambahan_umur >= masa_manfaat
          AND masa_manfaat - (tahun_akhir - tahun) > 0
          THEN masa_manfaat - (tahun_akhir - tahun)

     WHEN rank = 1 AND masa_manfaat - (tahun_akhir - tahun) > 0
	  THEN masa_manfaat - (tahun_akhir - tahun)
ELSE
    0
END as sisa_umur,



COALESCE(lag(nilai_buku_akhir) over urutan, 0) + harga as nilai_buku_awal,



CASE WHEN (tahun_akhir - tahun) <

     CASE WHEN rank > 1 AND lag(sisa_umur,1,0) over urutan + penambahan_umur >= masa_manfaat
          THEN masa_manfaat
     WHEN rank = 1
	  THEN masa_manfaat
     ELSE
     lag(sisa_umur,1,0) over urutan + penambahan_umur
     END


     THEN round((tahun_akhir - tahun) * (COALESCE(lag(nilai_buku_akhir) over urutan, 0) + harga) /

     (CASE WHEN rank > 1 AND lag(sisa_umur,1,0) over urutan + penambahan_umur >= masa_manfaat
          THEN masa_manfaat
     WHEN rank = 1
	  THEN masa_manfaat
     ELSE
     lag(sisa_umur,1,0) over urutan + penambahan_umur
     END),

     0)
ELSE
     COALESCE(lag(nilai_buku_akhir) over urutan, 0) + harga
END as penyusutan,

CASE WHEN (tahun_akhir - tahun) <

     CASE WHEN rank > 1 AND lag(sisa_umur,1,0) over urutan + penambahan_umur >= masa_manfaat
          THEN masa_manfaat
     WHEN rank = 1
	  THEN masa_manfaat
     ELSE
     lag(sisa_umur,1,0) over urutan + penambahan_umur
     END


     THEN (COALESCE(lag(nilai_buku_akhir) over urutan, 0) + harga) -
     (round((tahun_akhir - tahun) * (COALESCE(lag(nilai_buku_akhir) over urutan, 0) + harga) /

     (CASE WHEN rank > 1 AND lag(sisa_umur,1,0) over urutan + penambahan_umur >= masa_manfaat
          THEN masa_manfaat
     WHEN rank = 1
	  THEN masa_manfaat
     ELSE
     lag(sisa_umur,1,0) over urutan + penambahan_umur
     END),

     0))
ELSE
     (COALESCE(lag(nilai_buku_akhir) over urutan, 0) + harga) - (COALESCE(lag(nilai_buku_akhir) over urutan, 0) + harga)
END as nilai_buku_akhir


 from
view_penyusutan_gb_2016_e25
 Window
urutan as (partition by register order by rank)

order by register, rank;



-- kunci angka baris ke 9




DROP view if exists view_penyusutan_gb_2016_e27 CASCADE;

create view view_penyusutan_gb_2016_e27 as

select register,
nama_skpd,
id_skpd,
nama_lokasi_bidang,
id_lokasi_bidang,
nama_kabupaten,
id_kabupaten,
nama_provinsi,
id_provinsi,
id_mutasi_berkurang,
mutasi_berkurang,
keadaan_barang,
nama_barang,

harga,
nilai_perolehan,
tahun,
view_penyusutan_gb_2016_e26.kode_barang,
kode_umur,
rank,
tahun_akhir,


CASE WHEN rank > 1 AND lag(nilai_buku_akhir) over urutan > 0
          THEN round (100 * (harga / lag(nilai_buku_akhir) over urutan),2)
     WHEN rank > 1 AND lag(nilai_buku_akhir) over urutan <= 0
          THEN round(100,2)
     WHEN rank = 1
	  THEN 0
ELSE
     0
END as persen_awal,




CASE WHEN

  CASE WHEN rank > 1 AND lag(nilai_buku_akhir) over urutan > 0
	    THEN round (100 * (harga / lag(nilai_buku_akhir) over urutan),2)
      WHEN rank > 1 AND lag(nilai_buku_akhir) over urutan <= 0
	    THEN round(100,2)
      WHEN rank = 1
	    THEN 0
  ELSE
      0
  END

     > 75
     THEN 100


     WHEN

  CASE WHEN rank > 1 AND lag(nilai_buku_akhir) over urutan > 0
	    THEN round (100 * (harga / lag(nilai_buku_akhir) over urutan),2)
      WHEN rank > 1 AND lag(nilai_buku_akhir) over urutan <= 0
	    THEN round(100,2)
      WHEN rank = 1
	    THEN 0
  ELSE
      0
  END

     > 50
         THEN 75


     WHEN

  CASE WHEN rank > 1 AND lag(nilai_buku_akhir) over urutan > 0
	    THEN round (100 * (harga / lag(nilai_buku_akhir) over urutan),2)
      WHEN rank > 1 AND lag(nilai_buku_akhir) over urutan <= 0
	    THEN round(100,2)
      WHEN rank = 1
	    THEN 0
  ELSE
      0
  END

     > 25
         THEN 50


     WHEN

  CASE WHEN rank > 1 AND lag(nilai_buku_akhir) over urutan > 0
	    THEN round (100 * (harga / lag(nilai_buku_akhir) over urutan),2)
      WHEN rank > 1 AND lag(nilai_buku_akhir) over urutan <= 0
	    THEN round(100,2)
      WHEN rank = 1
	    THEN 0
  ELSE
      0
  END

     > 0
         THEN 25
ELSE
         0
END as persentasi,

masa_manfaat,
penambahan_umur,
umur_awal,
sisa_umur,
nilai_buku_awal,
penyusutan,
nilai_buku_akhir
 from
view_penyusutan_gb_2016_e26
 Window
urutan as (partition by register order by rank)


order by register, rank;





DROP view if exists view_penyusutan_gb_2016_e28 CASCADE;

create view view_penyusutan_gb_2016_e28 as

select register,
nama_skpd,
id_skpd,
nama_lokasi_bidang,
id_lokasi_bidang,
nama_kabupaten,
id_kabupaten,
nama_provinsi,
id_provinsi,
id_mutasi_berkurang,
mutasi_berkurang,
keadaan_barang,
nama_barang,

harga,
nilai_perolehan,
tahun,
view_penyusutan_gb_2016_e27.kode_barang,
kode_umur,
rank,
tahun_akhir,
persen_awal,

persentasi,

masa_manfaat,
CASE WHEN rank > 1
          THEN penambahan_umur.umur
     WHEN rank = 1
	  THEN 0
ELSE
     0
END as penambahan_umur,


umur_awal,
sisa_umur,
nilai_buku_awal,
penyusutan,
nilai_buku_akhir


 from
view_penyusutan_gb_2016_e27, penambahan_umur

where
view_penyusutan_gb_2016_e27.kode_umur = penambahan_umur.kode_barang AND
view_penyusutan_gb_2016_e27.persentasi = penambahan_umur.persen

order by register, rank;




DROP view if exists view_penyusutan_gb_2016_e29 CASCADE;

create view view_penyusutan_gb_2016_e29 as

select register,
nama_skpd,
id_skpd,
nama_lokasi_bidang,
id_lokasi_bidang,
nama_kabupaten,
id_kabupaten,
nama_provinsi,
id_provinsi,
id_mutasi_berkurang,
mutasi_berkurang,
keadaan_barang,
nama_barang,

harga,
nilai_perolehan,
tahun,
kode_barang,
kode_umur,
rank,
tahun_akhir,
persen_awal,

persentasi,

masa_manfaat,
penambahan_umur,

CASE WHEN rank > 1 AND lag(sisa_umur,1,0) over urutan + penambahan_umur >= masa_manfaat
          THEN masa_manfaat
     WHEN rank = 1
	  THEN masa_manfaat
ELSE
     lag(sisa_umur,1,0) over urutan + penambahan_umur
END as umur_awal,

CASE WHEN rank > 1 AND lag(sisa_umur,1,0) over urutan + penambahan_umur - (tahun_akhir - tahun) > 0
          AND lag(sisa_umur,1,0) over urutan + penambahan_umur < masa_manfaat
          THEN lag(sisa_umur,1,0) over urutan + penambahan_umur - (tahun_akhir - tahun)

     WHEN rank > 1 AND lag(sisa_umur,1,0) over urutan + penambahan_umur - (tahun_akhir - tahun) > 0
          AND lag(sisa_umur,1,0) over urutan + penambahan_umur >= masa_manfaat
          AND masa_manfaat - (tahun_akhir - tahun) > 0
          THEN masa_manfaat - (tahun_akhir - tahun)

     WHEN rank = 1 AND masa_manfaat - (tahun_akhir - tahun) > 0
	  THEN masa_manfaat - (tahun_akhir - tahun)
ELSE
    0
END as sisa_umur,



COALESCE(lag(nilai_buku_akhir) over urutan, 0) + harga as nilai_buku_awal,



CASE WHEN (tahun_akhir - tahun) <

     CASE WHEN rank > 1 AND lag(sisa_umur,1,0) over urutan + penambahan_umur >= masa_manfaat
          THEN masa_manfaat
     WHEN rank = 1
	  THEN masa_manfaat
     ELSE
     lag(sisa_umur,1,0) over urutan + penambahan_umur
     END


     THEN round((tahun_akhir - tahun) * (COALESCE(lag(nilai_buku_akhir) over urutan, 0) + harga) /

     (CASE WHEN rank > 1 AND lag(sisa_umur,1,0) over urutan + penambahan_umur >= masa_manfaat
          THEN masa_manfaat
     WHEN rank = 1
	  THEN masa_manfaat
     ELSE
     lag(sisa_umur,1,0) over urutan + penambahan_umur
     END),

     0)
ELSE
     COALESCE(lag(nilai_buku_akhir) over urutan, 0) + harga
END as penyusutan,

CASE WHEN (tahun_akhir - tahun) <

     CASE WHEN rank > 1 AND lag(sisa_umur,1,0) over urutan + penambahan_umur >= masa_manfaat
          THEN masa_manfaat
     WHEN rank = 1
	  THEN masa_manfaat
     ELSE
     lag(sisa_umur,1,0) over urutan + penambahan_umur
     END


     THEN (COALESCE(lag(nilai_buku_akhir) over urutan, 0) + harga) -
     (round((tahun_akhir - tahun) * (COALESCE(lag(nilai_buku_akhir) over urutan, 0) + harga) /

     (CASE WHEN rank > 1 AND lag(sisa_umur,1,0) over urutan + penambahan_umur >= masa_manfaat
          THEN masa_manfaat
     WHEN rank = 1
	  THEN masa_manfaat
     ELSE
     lag(sisa_umur,1,0) over urutan + penambahan_umur
     END),

     0))
ELSE
     (COALESCE(lag(nilai_buku_akhir) over urutan, 0) + harga) - (COALESCE(lag(nilai_buku_akhir) over urutan, 0) + harga)
END as nilai_buku_akhir


 from
view_penyusutan_gb_2016_e28
 Window
urutan as (partition by register order by rank)

order by register, rank;



-- kunci angka baris ke 10
DROP view if exists view_penyusutan_jij_2016_e2 CASCADE;

create view view_penyusutan_jij_2016_e2 as select
nama_skpd,
id_skpd,
nama_lokasi_bidang,
id_lokasi_bidang,
nama_kabupaten,
id_kabupaten,
nama_provinsi,
id_provinsi,
id_mutasi_berkurang,
mutasi_berkurang,
keadaan_barang,
nama_barang,

register,
harga,
sum (harga) over (partition by register order by tahun asc) as nilai_perolehan,
tahun,
view_penyusutan_jij_2016_a1.kode_barang,
left(view_penyusutan_jij_2016_a1.kode_barang, 8) as kode_umur,
rank() over (partition by register order by tahun asc) as rank,
lead(tahun, 1, 2017) over (partition by register order by tahun asc) as tahun_akhir,
umur as masa_manfaat,
0 as penambahan_umur,
umur as umur_awal,

CASE WHEN ((lead(tahun, 1, 2017) over (partition by register order by tahun asc)) - tahun) < umur
     THEN umur - ((lead(tahun, 1, 2017) over (partition by register order by tahun asc)) - tahun)
ELSE
     0
END as sisa_umur,

harga as nilai_buku_awal,

CASE WHEN ((lead(tahun, 1, 2017) over (partition by register order by tahun asc)) - tahun) < umur
     THEN round(((lead(tahun, 1, 2017) over (partition by register order by tahun asc)) - tahun) * harga / umur, 0)
ELSE
     harga
END as penyusutan,

CASE WHEN ((lead(tahun, 1, 2017) over (partition by register order by tahun asc)) - tahun) < umur
    THEN harga - (round(((lead(tahun, 1, 2017) over (partition by register order by tahun asc)) - tahun) * harga / umur, 0))
ELSE
     0
END as nilai_buku_akhir

from view_penyusutan_jij_2016_a1, kode_barang

where view_penyusutan_jij_2016_a1.kode_barang = left(kode_barang.kode_barang,14)

order by register, rank;


-- cek umur barang, apakah lebih dari umur ekonomis
-- bila lebih, berarti disusutkan seluruh nilainya.
-- kunci angka untuk baris pertama



DROP view if exists view_penyusutan_jij_2016_e3 CASCADE;

create view view_penyusutan_jij_2016_e3 as

select register,
nama_skpd,
id_skpd,
nama_lokasi_bidang,
id_lokasi_bidang,
nama_kabupaten,
id_kabupaten,
nama_provinsi,
id_provinsi,
id_mutasi_berkurang,
mutasi_berkurang,
keadaan_barang,
nama_barang,

harga,
nilai_perolehan,
tahun,
view_penyusutan_jij_2016_e2.kode_barang,
kode_umur,
rank,
tahun_akhir,


CASE WHEN rank > 1 AND lag(nilai_buku_akhir) over urutan > 0
          THEN round (100 * (harga / lag(nilai_buku_akhir) over urutan),2)
     WHEN rank > 1 AND lag(nilai_buku_akhir) over urutan <= 0
          THEN round(100,2)
     WHEN rank = 1
	  THEN 0
ELSE
     0
END as persen_awal,




CASE WHEN

  CASE WHEN rank > 1 AND lag(nilai_buku_akhir) over urutan > 0
	    THEN round (100 * (harga / lag(nilai_buku_akhir) over urutan),2)
      WHEN rank > 1 AND lag(nilai_buku_akhir) over urutan <= 0
	    THEN round(100,2)
      WHEN rank = 1
	    THEN 0
  ELSE
      0
  END

     > 75
     THEN 100


     WHEN

  CASE WHEN rank > 1 AND lag(nilai_buku_akhir) over urutan > 0
	    THEN round (100 * (harga / lag(nilai_buku_akhir) over urutan),2)
      WHEN rank > 1 AND lag(nilai_buku_akhir) over urutan <= 0
	    THEN round(100,2)
      WHEN rank = 1
	    THEN 0
  ELSE
      0
  END

     > 50
         THEN 75


     WHEN

  CASE WHEN rank > 1 AND lag(nilai_buku_akhir) over urutan > 0
	    THEN round (100 * (harga / lag(nilai_buku_akhir) over urutan),2)
      WHEN rank > 1 AND lag(nilai_buku_akhir) over urutan <= 0
	    THEN round(100,2)
      WHEN rank = 1
	    THEN 0
  ELSE
      0
  END

     > 25
         THEN 50


     WHEN

  CASE WHEN rank > 1 AND lag(nilai_buku_akhir) over urutan > 0
	    THEN round (100 * (harga / lag(nilai_buku_akhir) over urutan),2)
      WHEN rank > 1 AND lag(nilai_buku_akhir) over urutan <= 0
	    THEN round(100,2)
      WHEN rank = 1
	    THEN 0
  ELSE
      0
  END

     > 0
         THEN 25
ELSE
         0
END as persentasi,

masa_manfaat,
penambahan_umur,
umur_awal,
sisa_umur,
nilai_buku_awal,
penyusutan,
nilai_buku_akhir
 from
view_penyusutan_jij_2016_e2
 Window
urutan as (partition by register order by rank)


order by register, rank;


-- mengubah persen_awal menjadi persen yang dapat di link
-- ke table penambahan_umur
--
-- sisa_umur_temp di buat untuk mengakses sisa_umur
-- pada baris sebelumnya


-- xxxxx
-- akses penambahan_umur
-- terdapat bug pada query sql, yaitu ketika
-- link ke table penambahan_umur, maka tidak dilakukan
-- link seperti biasa, yaitu
-- persentasi = penambahan_umur.persen, tetapi
-- penambahan_umur.persen > 75 (tidak tahu kenapa)



DROP view if exists view_penyusutan_jij_2016_e4 CASCADE;

create view view_penyusutan_jij_2016_e4 as

select register,
nama_skpd,
id_skpd,
nama_lokasi_bidang,
id_lokasi_bidang,
nama_kabupaten,
id_kabupaten,
nama_provinsi,
id_provinsi,
id_mutasi_berkurang,
mutasi_berkurang,
keadaan_barang,
nama_barang,

harga,
nilai_perolehan,
tahun,
view_penyusutan_jij_2016_e3.kode_barang,
kode_umur,
rank,
tahun_akhir,
persen_awal,

persentasi,

masa_manfaat,
CASE WHEN rank > 1
          THEN penambahan_umur.umur
     WHEN rank = 1
	  THEN 0
ELSE
     0
END as penambahan_umur,


umur_awal,
sisa_umur,
nilai_buku_awal,
penyusutan,
nilai_buku_akhir


 from
view_penyusutan_jij_2016_e3, penambahan_umur

where
view_penyusutan_jij_2016_e3.kode_umur = penambahan_umur.kode_barang AND
view_penyusutan_jij_2016_e3.persentasi = penambahan_umur.persen

order by register, rank;




DROP view if exists view_penyusutan_jij_2016_e5 CASCADE;

create view view_penyusutan_jij_2016_e5 as

select register,
nama_skpd,
id_skpd,
nama_lokasi_bidang,
id_lokasi_bidang,
nama_kabupaten,
id_kabupaten,
nama_provinsi,
id_provinsi,
id_mutasi_berkurang,
mutasi_berkurang,
keadaan_barang,
nama_barang,

harga,
nilai_perolehan,
tahun,
kode_barang,
kode_umur,
rank,
tahun_akhir,
persen_awal,

persentasi,

masa_manfaat,
penambahan_umur,

CASE WHEN rank > 1 AND lag(sisa_umur,1,0) over urutan + penambahan_umur >= masa_manfaat
          THEN masa_manfaat
     WHEN rank = 1
	  THEN masa_manfaat
ELSE
     lag(sisa_umur,1,0) over urutan + penambahan_umur
END as umur_awal,

CASE WHEN rank > 1 AND lag(sisa_umur,1,0) over urutan + penambahan_umur - (tahun_akhir - tahun) > 0
          AND lag(sisa_umur,1,0) over urutan + penambahan_umur - (tahun_akhir - tahun) <= masa_manfaat
          THEN lag(sisa_umur,1,0) over urutan + penambahan_umur - (tahun_akhir - tahun)

     WHEN rank > 1 AND lag(sisa_umur,1,0) over urutan + penambahan_umur - (tahun_akhir - tahun) > 0
          AND lag(sisa_umur,1,0) over urutan + penambahan_umur - (tahun_akhir - tahun) > masa_manfaat
          AND masa_manfaat - (tahun_akhir - tahun) > 0
          THEN masa_manfaat - (tahun_akhir - tahun)

     WHEN rank = 1 AND masa_manfaat - (tahun_akhir - tahun) > 0
	  THEN masa_manfaat - (tahun_akhir - tahun)
ELSE
    0
END as sisa_umur,



COALESCE(lag(nilai_buku_akhir) over urutan, 0) + harga as nilai_buku_awal,



CASE WHEN (tahun_akhir - tahun) <

     CASE WHEN rank > 1 AND lag(sisa_umur,1,0) over urutan + penambahan_umur >= masa_manfaat
          THEN masa_manfaat
     WHEN rank = 1
	  THEN masa_manfaat
     ELSE
     lag(sisa_umur,1,0) over urutan + penambahan_umur
     END


     THEN round((tahun_akhir - tahun) * (COALESCE(lag(nilai_buku_akhir) over urutan, 0) + harga) /

     (CASE WHEN rank > 1 AND lag(sisa_umur,1,0) over urutan + penambahan_umur >= masa_manfaat
          THEN masa_manfaat
     WHEN rank = 1
	  THEN masa_manfaat
     ELSE
     lag(sisa_umur,1,0) over urutan + penambahan_umur
     END),

     0)
ELSE
     COALESCE(lag(nilai_buku_akhir) over urutan, 0) + harga
END as penyusutan,

CASE WHEN (tahun_akhir - tahun) <

     CASE WHEN rank > 1 AND lag(sisa_umur,1,0) over urutan + penambahan_umur >= masa_manfaat
          THEN masa_manfaat
     WHEN rank = 1
	  THEN masa_manfaat
     ELSE
     lag(sisa_umur,1,0) over urutan + penambahan_umur
     END


     THEN (COALESCE(lag(nilai_buku_akhir) over urutan, 0) + harga) -
     (round((tahun_akhir - tahun) * (COALESCE(lag(nilai_buku_akhir) over urutan, 0) + harga) /

     (CASE WHEN rank > 1 AND lag(sisa_umur,1,0) over urutan + penambahan_umur >= masa_manfaat
          THEN masa_manfaat
     WHEN rank = 1
	  THEN masa_manfaat
     ELSE
     lag(sisa_umur,1,0) over urutan + penambahan_umur
     END),

     0))
ELSE
     (COALESCE(lag(nilai_buku_akhir) over urutan, 0) + harga) - (COALESCE(lag(nilai_buku_akhir) over urutan, 0) + harga)
END as nilai_buku_akhir


 from
view_penyusutan_jij_2016_e4
 Window
urutan as (partition by register order by rank)

order by register, rank;




-------kunci angka baris ke 2

DROP view if exists view_penyusutan_jij_2016_e6 CASCADE;

create view view_penyusutan_jij_2016_e6 as

select register,
nama_skpd,
id_skpd,
nama_lokasi_bidang,
id_lokasi_bidang,
nama_kabupaten,
id_kabupaten,
nama_provinsi,
id_provinsi,
id_mutasi_berkurang,
mutasi_berkurang,
keadaan_barang,
nama_barang,

harga,
nilai_perolehan,
tahun,
view_penyusutan_jij_2016_e5.kode_barang,
kode_umur,
rank,
tahun_akhir,


CASE WHEN rank > 1 AND lag(nilai_buku_akhir) over urutan > 0
          THEN round (100 * (harga / lag(nilai_buku_akhir) over urutan),2)
     WHEN rank > 1 AND lag(nilai_buku_akhir) over urutan <= 0
          THEN round(100,2)
     WHEN rank = 1
	  THEN 0
ELSE
     0
END as persen_awal,




CASE WHEN

  CASE WHEN rank > 1 AND lag(nilai_buku_akhir) over urutan > 0
	    THEN round (100 * (harga / lag(nilai_buku_akhir) over urutan),2)
      WHEN rank > 1 AND lag(nilai_buku_akhir) over urutan <= 0
	    THEN round(100,2)
      WHEN rank = 1
	    THEN 0
  ELSE
      0
  END

     > 75
     THEN 100


     WHEN

  CASE WHEN rank > 1 AND lag(nilai_buku_akhir) over urutan > 0
	    THEN round (100 * (harga / lag(nilai_buku_akhir) over urutan),2)
      WHEN rank > 1 AND lag(nilai_buku_akhir) over urutan <= 0
	    THEN round(100,2)
      WHEN rank = 1
	    THEN 0
  ELSE
      0
  END

     > 50
         THEN 75


     WHEN

  CASE WHEN rank > 1 AND lag(nilai_buku_akhir) over urutan > 0
	    THEN round (100 * (harga / lag(nilai_buku_akhir) over urutan),2)
      WHEN rank > 1 AND lag(nilai_buku_akhir) over urutan <= 0
	    THEN round(100,2)
      WHEN rank = 1
	    THEN 0
  ELSE
      0
  END

     > 25
         THEN 50


     WHEN

  CASE WHEN rank > 1 AND lag(nilai_buku_akhir) over urutan > 0
	    THEN round (100 * (harga / lag(nilai_buku_akhir) over urutan),2)
      WHEN rank > 1 AND lag(nilai_buku_akhir) over urutan <= 0
	    THEN round(100,2)
      WHEN rank = 1
	    THEN 0
  ELSE
      0
  END

     > 0
         THEN 25
ELSE
         0
END as persentasi,

masa_manfaat,
penambahan_umur,
umur_awal,
sisa_umur,
nilai_buku_awal,
penyusutan,
nilai_buku_akhir
 from
view_penyusutan_jij_2016_e5
 Window
urutan as (partition by register order by rank)


order by register, rank;





DROP view if exists view_penyusutan_jij_2016_e7 CASCADE;

create view view_penyusutan_jij_2016_e7 as

select register,
nama_skpd,
id_skpd,
nama_lokasi_bidang,
id_lokasi_bidang,
nama_kabupaten,
id_kabupaten,
nama_provinsi,
id_provinsi,
id_mutasi_berkurang,
mutasi_berkurang,
keadaan_barang,
nama_barang,

harga,
nilai_perolehan,
tahun,
view_penyusutan_jij_2016_e6.kode_barang,
kode_umur,
rank,
tahun_akhir,
persen_awal,

persentasi,

masa_manfaat,
CASE WHEN rank > 1
          THEN penambahan_umur.umur
     WHEN rank = 1
	  THEN 0
ELSE
     0
END as penambahan_umur,


umur_awal,
sisa_umur,
nilai_buku_awal,
penyusutan,
nilai_buku_akhir


 from
view_penyusutan_jij_2016_e6, penambahan_umur

where
view_penyusutan_jij_2016_e6.kode_umur = penambahan_umur.kode_barang AND
view_penyusutan_jij_2016_e6.persentasi = penambahan_umur.persen

order by register, rank;




DROP view if exists view_penyusutan_jij_2016_e8 CASCADE;

create view view_penyusutan_jij_2016_e8 as

select register,
nama_skpd,
id_skpd,
nama_lokasi_bidang,
id_lokasi_bidang,
nama_kabupaten,
id_kabupaten,
nama_provinsi,
id_provinsi,
id_mutasi_berkurang,
mutasi_berkurang,
keadaan_barang,
nama_barang,

harga,
nilai_perolehan,
tahun,
kode_barang,
kode_umur,
rank,
tahun_akhir,
persen_awal,

persentasi,

masa_manfaat,
penambahan_umur,

CASE WHEN rank > 1 AND lag(sisa_umur,1,0) over urutan + penambahan_umur >= masa_manfaat
          THEN masa_manfaat
     WHEN rank = 1
	  THEN masa_manfaat
ELSE
     lag(sisa_umur,1,0) over urutan + penambahan_umur
END as umur_awal,

CASE WHEN rank > 1 AND lag(sisa_umur,1,0) over urutan + penambahan_umur - (tahun_akhir - tahun) > 0
          AND lag(sisa_umur,1,0) over urutan + penambahan_umur < masa_manfaat
          THEN lag(sisa_umur,1,0) over urutan + penambahan_umur - (tahun_akhir - tahun)

     WHEN rank > 1 AND lag(sisa_umur,1,0) over urutan + penambahan_umur - (tahun_akhir - tahun) > 0
          AND lag(sisa_umur,1,0) over urutan + penambahan_umur >= masa_manfaat
          AND masa_manfaat - (tahun_akhir - tahun) > 0
          THEN masa_manfaat - (tahun_akhir - tahun)

     WHEN rank = 1 AND masa_manfaat - (tahun_akhir - tahun) > 0
	  THEN masa_manfaat - (tahun_akhir - tahun)
ELSE
    0
END as sisa_umur,



COALESCE(lag(nilai_buku_akhir) over urutan, 0) + harga as nilai_buku_awal,



CASE WHEN (tahun_akhir - tahun) <

     CASE WHEN rank > 1 AND lag(sisa_umur,1,0) over urutan + penambahan_umur >= masa_manfaat
          THEN masa_manfaat
     WHEN rank = 1
	  THEN masa_manfaat
     ELSE
     lag(sisa_umur,1,0) over urutan + penambahan_umur
     END


     THEN round((tahun_akhir - tahun) * (COALESCE(lag(nilai_buku_akhir) over urutan, 0) + harga) /

     (CASE WHEN rank > 1 AND lag(sisa_umur,1,0) over urutan + penambahan_umur >= masa_manfaat
          THEN masa_manfaat
     WHEN rank = 1
	  THEN masa_manfaat
     ELSE
     lag(sisa_umur,1,0) over urutan + penambahan_umur
     END),

     0)
ELSE
     COALESCE(lag(nilai_buku_akhir) over urutan, 0) + harga
END as penyusutan,

CASE WHEN (tahun_akhir - tahun) <

     CASE WHEN rank > 1 AND lag(sisa_umur,1,0) over urutan + penambahan_umur >= masa_manfaat
          THEN masa_manfaat
     WHEN rank = 1
	  THEN masa_manfaat
     ELSE
     lag(sisa_umur,1,0) over urutan + penambahan_umur
     END


     THEN (COALESCE(lag(nilai_buku_akhir) over urutan, 0) + harga) -
     (round((tahun_akhir - tahun) * (COALESCE(lag(nilai_buku_akhir) over urutan, 0) + harga) /

     (CASE WHEN rank > 1 AND lag(sisa_umur,1,0) over urutan + penambahan_umur >= masa_manfaat
          THEN masa_manfaat
     WHEN rank = 1
	  THEN masa_manfaat
     ELSE
     lag(sisa_umur,1,0) over urutan + penambahan_umur
     END),

     0))
ELSE
     (COALESCE(lag(nilai_buku_akhir) over urutan, 0) + harga) - (COALESCE(lag(nilai_buku_akhir) over urutan, 0) + harga)
END as nilai_buku_akhir


 from
view_penyusutan_jij_2016_e7
 Window
urutan as (partition by register order by rank)

order by register, rank;



-- kunci angka baris ke 3




DROP view if exists view_penyusutan_jij_2016_e9 CASCADE;

create view view_penyusutan_jij_2016_e9 as

select register,
nama_skpd,
id_skpd,
nama_lokasi_bidang,
id_lokasi_bidang,
nama_kabupaten,
id_kabupaten,
nama_provinsi,
id_provinsi,
id_mutasi_berkurang,
mutasi_berkurang,
keadaan_barang,
nama_barang,

harga,
nilai_perolehan,
tahun,
view_penyusutan_jij_2016_e8.kode_barang,
kode_umur,
rank,
tahun_akhir,


CASE WHEN rank > 1 AND lag(nilai_buku_akhir) over urutan > 0
          THEN round (100 * (harga / lag(nilai_buku_akhir) over urutan),2)
     WHEN rank > 1 AND lag(nilai_buku_akhir) over urutan <= 0
          THEN round(100,2)
     WHEN rank = 1
	  THEN 0
ELSE
     0
END as persen_awal,




CASE WHEN

  CASE WHEN rank > 1 AND lag(nilai_buku_akhir) over urutan > 0
	    THEN round (100 * (harga / lag(nilai_buku_akhir) over urutan),2)
      WHEN rank > 1 AND lag(nilai_buku_akhir) over urutan <= 0
	    THEN round(100,2)
      WHEN rank = 1
	    THEN 0
  ELSE
      0
  END

     > 75
     THEN 100


     WHEN

  CASE WHEN rank > 1 AND lag(nilai_buku_akhir) over urutan > 0
	    THEN round (100 * (harga / lag(nilai_buku_akhir) over urutan),2)
      WHEN rank > 1 AND lag(nilai_buku_akhir) over urutan <= 0
	    THEN round(100,2)
      WHEN rank = 1
	    THEN 0
  ELSE
      0
  END

     > 50
         THEN 75


     WHEN

  CASE WHEN rank > 1 AND lag(nilai_buku_akhir) over urutan > 0
	    THEN round (100 * (harga / lag(nilai_buku_akhir) over urutan),2)
      WHEN rank > 1 AND lag(nilai_buku_akhir) over urutan <= 0
	    THEN round(100,2)
      WHEN rank = 1
	    THEN 0
  ELSE
      0
  END

     > 25
         THEN 50


     WHEN

  CASE WHEN rank > 1 AND lag(nilai_buku_akhir) over urutan > 0
	    THEN round (100 * (harga / lag(nilai_buku_akhir) over urutan),2)
      WHEN rank > 1 AND lag(nilai_buku_akhir) over urutan <= 0
	    THEN round(100,2)
      WHEN rank = 1
	    THEN 0
  ELSE
      0
  END

     > 0
         THEN 25
ELSE
         0
END as persentasi,

masa_manfaat,
penambahan_umur,
umur_awal,
sisa_umur,
nilai_buku_awal,
penyusutan,
nilai_buku_akhir
 from
view_penyusutan_jij_2016_e8
 Window
urutan as (partition by register order by rank)


order by register, rank;





DROP view if exists view_penyusutan_jij_2016_e10 CASCADE;

create view view_penyusutan_jij_2016_e10 as

select register,
nama_skpd,
id_skpd,
nama_lokasi_bidang,
id_lokasi_bidang,
nama_kabupaten,
id_kabupaten,
nama_provinsi,
id_provinsi,
id_mutasi_berkurang,
mutasi_berkurang,
keadaan_barang,
nama_barang,

harga,
nilai_perolehan,
tahun,
view_penyusutan_jij_2016_e9.kode_barang,
kode_umur,
rank,
tahun_akhir,
persen_awal,

persentasi,

masa_manfaat,
CASE WHEN rank > 1
          THEN penambahan_umur.umur
     WHEN rank = 1
	  THEN 0
ELSE
     0
END as penambahan_umur,


umur_awal,
sisa_umur,
nilai_buku_awal,
penyusutan,
nilai_buku_akhir


 from
view_penyusutan_jij_2016_e9, penambahan_umur

where
view_penyusutan_jij_2016_e9.kode_umur = penambahan_umur.kode_barang AND
view_penyusutan_jij_2016_e9.persentasi = penambahan_umur.persen

order by register, rank;




DROP view if exists view_penyusutan_jij_2016_e11 CASCADE;

create view view_penyusutan_jij_2016_e11 as

select register,
nama_skpd,
id_skpd,
nama_lokasi_bidang,
id_lokasi_bidang,
nama_kabupaten,
id_kabupaten,
nama_provinsi,
id_provinsi,
id_mutasi_berkurang,
mutasi_berkurang,
keadaan_barang,
nama_barang,

harga,
nilai_perolehan,
tahun,
kode_barang,
kode_umur,
rank,
tahun_akhir,
persen_awal,

persentasi,

masa_manfaat,
penambahan_umur,

CASE WHEN rank > 1 AND lag(sisa_umur,1,0) over urutan + penambahan_umur >= masa_manfaat
          THEN masa_manfaat
     WHEN rank = 1
	  THEN masa_manfaat
ELSE
     lag(sisa_umur,1,0) over urutan + penambahan_umur
END as umur_awal,

CASE WHEN rank > 1 AND lag(sisa_umur,1,0) over urutan + penambahan_umur - (tahun_akhir - tahun) > 0
          AND lag(sisa_umur,1,0) over urutan + penambahan_umur < masa_manfaat
          THEN lag(sisa_umur,1,0) over urutan + penambahan_umur - (tahun_akhir - tahun)

     WHEN rank > 1 AND lag(sisa_umur,1,0) over urutan + penambahan_umur - (tahun_akhir - tahun) > 0
          AND lag(sisa_umur,1,0) over urutan + penambahan_umur >= masa_manfaat
          AND masa_manfaat - (tahun_akhir - tahun) > 0
          THEN masa_manfaat - (tahun_akhir - tahun)

     WHEN rank = 1 AND masa_manfaat - (tahun_akhir - tahun) > 0
	  THEN masa_manfaat - (tahun_akhir - tahun)
ELSE
    0
END as sisa_umur,



COALESCE(lag(nilai_buku_akhir) over urutan, 0) + harga as nilai_buku_awal,



CASE WHEN (tahun_akhir - tahun) <

     CASE WHEN rank > 1 AND lag(sisa_umur,1,0) over urutan + penambahan_umur >= masa_manfaat
          THEN masa_manfaat
     WHEN rank = 1
	  THEN masa_manfaat
     ELSE
     lag(sisa_umur,1,0) over urutan + penambahan_umur
     END


     THEN round((tahun_akhir - tahun) * (COALESCE(lag(nilai_buku_akhir) over urutan, 0) + harga) /

     (CASE WHEN rank > 1 AND lag(sisa_umur,1,0) over urutan + penambahan_umur >= masa_manfaat
          THEN masa_manfaat
     WHEN rank = 1
	  THEN masa_manfaat
     ELSE
     lag(sisa_umur,1,0) over urutan + penambahan_umur
     END),

     0)
ELSE
     COALESCE(lag(nilai_buku_akhir) over urutan, 0) + harga
END as penyusutan,

CASE WHEN (tahun_akhir - tahun) <

     CASE WHEN rank > 1 AND lag(sisa_umur,1,0) over urutan + penambahan_umur >= masa_manfaat
          THEN masa_manfaat
     WHEN rank = 1
	  THEN masa_manfaat
     ELSE
     lag(sisa_umur,1,0) over urutan + penambahan_umur
     END


     THEN (COALESCE(lag(nilai_buku_akhir) over urutan, 0) + harga) -
     (round((tahun_akhir - tahun) * (COALESCE(lag(nilai_buku_akhir) over urutan, 0) + harga) /

     (CASE WHEN rank > 1 AND lag(sisa_umur,1,0) over urutan + penambahan_umur >= masa_manfaat
          THEN masa_manfaat
     WHEN rank = 1
	  THEN masa_manfaat
     ELSE
     lag(sisa_umur,1,0) over urutan + penambahan_umur
     END),

     0))
ELSE
     (COALESCE(lag(nilai_buku_akhir) over urutan, 0) + harga) - (COALESCE(lag(nilai_buku_akhir) over urutan, 0) + harga)
END as nilai_buku_akhir


 from
view_penyusutan_jij_2016_e10
 Window
urutan as (partition by register order by rank)

order by register, rank;



-- kunci angka baris ke 4



DROP view if exists view_penyusutan_jij_2016_e12 CASCADE;

create view view_penyusutan_jij_2016_e12 as

select register,
nama_skpd,
id_skpd,
nama_lokasi_bidang,
id_lokasi_bidang,
nama_kabupaten,
id_kabupaten,
nama_provinsi,
id_provinsi,
id_mutasi_berkurang,
mutasi_berkurang,
keadaan_barang,
nama_barang,

harga,
nilai_perolehan,
tahun,
view_penyusutan_jij_2016_e11.kode_barang,
kode_umur,
rank,
tahun_akhir,


CASE WHEN rank > 1 AND lag(nilai_buku_akhir) over urutan > 0
          THEN round (100 * (harga / lag(nilai_buku_akhir) over urutan),2)
     WHEN rank > 1 AND lag(nilai_buku_akhir) over urutan <= 0
          THEN round(100,2)
     WHEN rank = 1
	  THEN 0
ELSE
     0
END as persen_awal,




CASE WHEN

  CASE WHEN rank > 1 AND lag(nilai_buku_akhir) over urutan > 0
	    THEN round (100 * (harga / lag(nilai_buku_akhir) over urutan),2)
      WHEN rank > 1 AND lag(nilai_buku_akhir) over urutan <= 0
	    THEN round(100,2)
      WHEN rank = 1
	    THEN 0
  ELSE
      0
  END

     > 75
     THEN 100


     WHEN

  CASE WHEN rank > 1 AND lag(nilai_buku_akhir) over urutan > 0
	    THEN round (100 * (harga / lag(nilai_buku_akhir) over urutan),2)
      WHEN rank > 1 AND lag(nilai_buku_akhir) over urutan <= 0
	    THEN round(100,2)
      WHEN rank = 1
	    THEN 0
  ELSE
      0
  END

     > 50
         THEN 75


     WHEN

  CASE WHEN rank > 1 AND lag(nilai_buku_akhir) over urutan > 0
	    THEN round (100 * (harga / lag(nilai_buku_akhir) over urutan),2)
      WHEN rank > 1 AND lag(nilai_buku_akhir) over urutan <= 0
	    THEN round(100,2)
      WHEN rank = 1
	    THEN 0
  ELSE
      0
  END

     > 25
         THEN 50


     WHEN

  CASE WHEN rank > 1 AND lag(nilai_buku_akhir) over urutan > 0
	    THEN round (100 * (harga / lag(nilai_buku_akhir) over urutan),2)
      WHEN rank > 1 AND lag(nilai_buku_akhir) over urutan <= 0
	    THEN round(100,2)
      WHEN rank = 1
	    THEN 0
  ELSE
      0
  END

     > 0
         THEN 25
ELSE
         0
END as persentasi,

masa_manfaat,
penambahan_umur,
umur_awal,
sisa_umur,
nilai_buku_awal,
penyusutan,
nilai_buku_akhir
 from
view_penyusutan_jij_2016_e11
 Window
urutan as (partition by register order by rank)


order by register, rank;





DROP view if exists view_penyusutan_jij_2016_e13 CASCADE;

create view view_penyusutan_jij_2016_e13 as

select register,
nama_skpd,
id_skpd,
nama_lokasi_bidang,
id_lokasi_bidang,
nama_kabupaten,
id_kabupaten,
nama_provinsi,
id_provinsi,
id_mutasi_berkurang,
mutasi_berkurang,
keadaan_barang,
nama_barang,

harga,
nilai_perolehan,
tahun,
view_penyusutan_jij_2016_e12.kode_barang,
kode_umur,
rank,
tahun_akhir,
persen_awal,

persentasi,

masa_manfaat,
CASE WHEN rank > 1
          THEN penambahan_umur.umur
     WHEN rank = 1
	  THEN 0
ELSE
     0
END as penambahan_umur,


umur_awal,
sisa_umur,
nilai_buku_awal,
penyusutan,
nilai_buku_akhir


 from
view_penyusutan_jij_2016_e12, penambahan_umur

where
view_penyusutan_jij_2016_e12.kode_umur = penambahan_umur.kode_barang AND
view_penyusutan_jij_2016_e12.persentasi = penambahan_umur.persen

order by register, rank;




DROP view if exists view_penyusutan_jij_2016_e14 CASCADE;

create view view_penyusutan_jij_2016_e14 as

select register,
nama_skpd,
id_skpd,
nama_lokasi_bidang,
id_lokasi_bidang,
nama_kabupaten,
id_kabupaten,
nama_provinsi,
id_provinsi,
id_mutasi_berkurang,
mutasi_berkurang,
keadaan_barang,
nama_barang,

harga,
nilai_perolehan,
tahun,
kode_barang,
kode_umur,
rank,
tahun_akhir,
persen_awal,

persentasi,

masa_manfaat,
penambahan_umur,

CASE WHEN rank > 1 AND lag(sisa_umur,1,0) over urutan + penambahan_umur >= masa_manfaat
          THEN masa_manfaat
     WHEN rank = 1
	  THEN masa_manfaat
ELSE
     lag(sisa_umur,1,0) over urutan + penambahan_umur
END as umur_awal,

CASE WHEN rank > 1 AND lag(sisa_umur,1,0) over urutan + penambahan_umur - (tahun_akhir - tahun) > 0
          AND lag(sisa_umur,1,0) over urutan + penambahan_umur < masa_manfaat
          THEN lag(sisa_umur,1,0) over urutan + penambahan_umur - (tahun_akhir - tahun)

     WHEN rank > 1 AND lag(sisa_umur,1,0) over urutan + penambahan_umur - (tahun_akhir - tahun) > 0
          AND lag(sisa_umur,1,0) over urutan + penambahan_umur >= masa_manfaat
          AND masa_manfaat - (tahun_akhir - tahun) > 0
          THEN masa_manfaat - (tahun_akhir - tahun)

     WHEN rank = 1 AND masa_manfaat - (tahun_akhir - tahun) > 0
	  THEN masa_manfaat - (tahun_akhir - tahun)
ELSE
    0
END as sisa_umur,



COALESCE(lag(nilai_buku_akhir) over urutan, 0) + harga as nilai_buku_awal,



CASE WHEN (tahun_akhir - tahun) <

     CASE WHEN rank > 1 AND lag(sisa_umur,1,0) over urutan + penambahan_umur >= masa_manfaat
          THEN masa_manfaat
     WHEN rank = 1
	  THEN masa_manfaat
     ELSE
     lag(sisa_umur,1,0) over urutan + penambahan_umur
     END


     THEN round((tahun_akhir - tahun) * (COALESCE(lag(nilai_buku_akhir) over urutan, 0) + harga) /

     (CASE WHEN rank > 1 AND lag(sisa_umur,1,0) over urutan + penambahan_umur >= masa_manfaat
          THEN masa_manfaat
     WHEN rank = 1
	  THEN masa_manfaat
     ELSE
     lag(sisa_umur,1,0) over urutan + penambahan_umur
     END),

     0)
ELSE
     COALESCE(lag(nilai_buku_akhir) over urutan, 0) + harga
END as penyusutan,

CASE WHEN (tahun_akhir - tahun) <

     CASE WHEN rank > 1 AND lag(sisa_umur,1,0) over urutan + penambahan_umur >= masa_manfaat
          THEN masa_manfaat
     WHEN rank = 1
	  THEN masa_manfaat
     ELSE
     lag(sisa_umur,1,0) over urutan + penambahan_umur
     END


     THEN (COALESCE(lag(nilai_buku_akhir) over urutan, 0) + harga) -
     (round((tahun_akhir - tahun) * (COALESCE(lag(nilai_buku_akhir) over urutan, 0) + harga) /

     (CASE WHEN rank > 1 AND lag(sisa_umur,1,0) over urutan + penambahan_umur >= masa_manfaat
          THEN masa_manfaat
     WHEN rank = 1
	  THEN masa_manfaat
     ELSE
     lag(sisa_umur,1,0) over urutan + penambahan_umur
     END),

     0))
ELSE
     (COALESCE(lag(nilai_buku_akhir) over urutan, 0) + harga) - (COALESCE(lag(nilai_buku_akhir) over urutan, 0) + harga)
END as nilai_buku_akhir


 from
view_penyusutan_jij_2016_e13
 Window
urutan as (partition by register order by rank)

order by register, rank;



-- kunci angka baris ke 5




DROP view if exists view_penyusutan_jij_2016_e15 CASCADE;

create view view_penyusutan_jij_2016_e15 as

select register,
nama_skpd,
id_skpd,
nama_lokasi_bidang,
id_lokasi_bidang,
nama_kabupaten,
id_kabupaten,
nama_provinsi,
id_provinsi,
id_mutasi_berkurang,
mutasi_berkurang,
keadaan_barang,
nama_barang,

harga,
nilai_perolehan,
tahun,
view_penyusutan_jij_2016_e14.kode_barang,
kode_umur,
rank,
tahun_akhir,


CASE WHEN rank > 1 AND lag(nilai_buku_akhir) over urutan > 0
          THEN round (100 * (harga / lag(nilai_buku_akhir) over urutan),2)
     WHEN rank > 1 AND lag(nilai_buku_akhir) over urutan <= 0
          THEN round(100,2)
     WHEN rank = 1
	  THEN 0
ELSE
     0
END as persen_awal,




CASE WHEN

  CASE WHEN rank > 1 AND lag(nilai_buku_akhir) over urutan > 0
	    THEN round (100 * (harga / lag(nilai_buku_akhir) over urutan),2)
      WHEN rank > 1 AND lag(nilai_buku_akhir) over urutan <= 0
	    THEN round(100,2)
      WHEN rank = 1
	    THEN 0
  ELSE
      0
  END

     > 75
     THEN 100


     WHEN

  CASE WHEN rank > 1 AND lag(nilai_buku_akhir) over urutan > 0
	    THEN round (100 * (harga / lag(nilai_buku_akhir) over urutan),2)
      WHEN rank > 1 AND lag(nilai_buku_akhir) over urutan <= 0
	    THEN round(100,2)
      WHEN rank = 1
	    THEN 0
  ELSE
      0
  END

     > 50
         THEN 75


     WHEN

  CASE WHEN rank > 1 AND lag(nilai_buku_akhir) over urutan > 0
	    THEN round (100 * (harga / lag(nilai_buku_akhir) over urutan),2)
      WHEN rank > 1 AND lag(nilai_buku_akhir) over urutan <= 0
	    THEN round(100,2)
      WHEN rank = 1
	    THEN 0
  ELSE
      0
  END

     > 25
         THEN 50


     WHEN

  CASE WHEN rank > 1 AND lag(nilai_buku_akhir) over urutan > 0
	    THEN round (100 * (harga / lag(nilai_buku_akhir) over urutan),2)
      WHEN rank > 1 AND lag(nilai_buku_akhir) over urutan <= 0
	    THEN round(100,2)
      WHEN rank = 1
	    THEN 0
  ELSE
      0
  END

     > 0
         THEN 25
ELSE
         0
END as persentasi,

masa_manfaat,
penambahan_umur,
umur_awal,
sisa_umur,
nilai_buku_awal,
penyusutan,
nilai_buku_akhir
 from
view_penyusutan_jij_2016_e14
 Window
urutan as (partition by register order by rank)


order by register, rank;





DROP view if exists view_penyusutan_jij_2016_e16 CASCADE;

create view view_penyusutan_jij_2016_e16 as

select register,
nama_skpd,
id_skpd,
nama_lokasi_bidang,
id_lokasi_bidang,
nama_kabupaten,
id_kabupaten,
nama_provinsi,
id_provinsi,
id_mutasi_berkurang,
mutasi_berkurang,
keadaan_barang,
nama_barang,

harga,
nilai_perolehan,
tahun,
view_penyusutan_jij_2016_e15.kode_barang,
kode_umur,
rank,
tahun_akhir,
persen_awal,

persentasi,

masa_manfaat,
CASE WHEN rank > 1
          THEN penambahan_umur.umur
     WHEN rank = 1
	  THEN 0
ELSE
     0
END as penambahan_umur,


umur_awal,
sisa_umur,
nilai_buku_awal,
penyusutan,
nilai_buku_akhir


 from
view_penyusutan_jij_2016_e15, penambahan_umur

where
view_penyusutan_jij_2016_e15.kode_umur = penambahan_umur.kode_barang AND
view_penyusutan_jij_2016_e15.persentasi = penambahan_umur.persen

order by register, rank;




DROP view if exists view_penyusutan_jij_2016_e17 CASCADE;

create view view_penyusutan_jij_2016_e17 as

select register,
nama_skpd,
id_skpd,
nama_lokasi_bidang,
id_lokasi_bidang,
nama_kabupaten,
id_kabupaten,
nama_provinsi,
id_provinsi,
id_mutasi_berkurang,
mutasi_berkurang,
keadaan_barang,
nama_barang,

harga,
nilai_perolehan,
tahun,
kode_barang,
kode_umur,
rank,
tahun_akhir,
persen_awal,

persentasi,

masa_manfaat,
penambahan_umur,

CASE WHEN rank > 1 AND lag(sisa_umur,1,0) over urutan + penambahan_umur >= masa_manfaat
          THEN masa_manfaat
     WHEN rank = 1
	  THEN masa_manfaat
ELSE
     lag(sisa_umur,1,0) over urutan + penambahan_umur
END as umur_awal,

CASE WHEN rank > 1 AND lag(sisa_umur,1,0) over urutan + penambahan_umur - (tahun_akhir - tahun) > 0
          AND lag(sisa_umur,1,0) over urutan + penambahan_umur < masa_manfaat
          THEN lag(sisa_umur,1,0) over urutan + penambahan_umur - (tahun_akhir - tahun)

     WHEN rank > 1 AND lag(sisa_umur,1,0) over urutan + penambahan_umur - (tahun_akhir - tahun) > 0
          AND lag(sisa_umur,1,0) over urutan + penambahan_umur >= masa_manfaat
          AND masa_manfaat - (tahun_akhir - tahun) > 0
          THEN masa_manfaat - (tahun_akhir - tahun)

     WHEN rank = 1 AND masa_manfaat - (tahun_akhir - tahun) > 0
	  THEN masa_manfaat - (tahun_akhir - tahun)
ELSE
    0
END as sisa_umur,



COALESCE(lag(nilai_buku_akhir) over urutan, 0) + harga as nilai_buku_awal,



CASE WHEN (tahun_akhir - tahun) <

     CASE WHEN rank > 1 AND lag(sisa_umur,1,0) over urutan + penambahan_umur >= masa_manfaat
          THEN masa_manfaat
     WHEN rank = 1
	  THEN masa_manfaat
     ELSE
     lag(sisa_umur,1,0) over urutan + penambahan_umur
     END


     THEN round((tahun_akhir - tahun) * (COALESCE(lag(nilai_buku_akhir) over urutan, 0) + harga) /

     (CASE WHEN rank > 1 AND lag(sisa_umur,1,0) over urutan + penambahan_umur >= masa_manfaat
          THEN masa_manfaat
     WHEN rank = 1
	  THEN masa_manfaat
     ELSE
     lag(sisa_umur,1,0) over urutan + penambahan_umur
     END),

     0)
ELSE
     COALESCE(lag(nilai_buku_akhir) over urutan, 0) + harga
END as penyusutan,

CASE WHEN (tahun_akhir - tahun) <

     CASE WHEN rank > 1 AND lag(sisa_umur,1,0) over urutan + penambahan_umur >= masa_manfaat
          THEN masa_manfaat
     WHEN rank = 1
	  THEN masa_manfaat
     ELSE
     lag(sisa_umur,1,0) over urutan + penambahan_umur
     END


     THEN (COALESCE(lag(nilai_buku_akhir) over urutan, 0) + harga) -
     (round((tahun_akhir - tahun) * (COALESCE(lag(nilai_buku_akhir) over urutan, 0) + harga) /

     (CASE WHEN rank > 1 AND lag(sisa_umur,1,0) over urutan + penambahan_umur >= masa_manfaat
          THEN masa_manfaat
     WHEN rank = 1
	  THEN masa_manfaat
     ELSE
     lag(sisa_umur,1,0) over urutan + penambahan_umur
     END),

     0))
ELSE
     (COALESCE(lag(nilai_buku_akhir) over urutan, 0) + harga) - (COALESCE(lag(nilai_buku_akhir) over urutan, 0) + harga)
END as nilai_buku_akhir


 from
view_penyusutan_jij_2016_e16
 Window
urutan as (partition by register order by rank)

order by register, rank;



-- kunci angka baris ke 6





DROP view if exists view_penyusutan_jij_2016_e18 CASCADE;

create view view_penyusutan_jij_2016_e18 as

select register,
nama_skpd,
id_skpd,
nama_lokasi_bidang,
id_lokasi_bidang,
nama_kabupaten,
id_kabupaten,
nama_provinsi,
id_provinsi,
id_mutasi_berkurang,
mutasi_berkurang,
keadaan_barang,
nama_barang,

harga,
nilai_perolehan,
tahun,
view_penyusutan_jij_2016_e17.kode_barang,
kode_umur,
rank,
tahun_akhir,


CASE WHEN rank > 1 AND lag(nilai_buku_akhir) over urutan > 0
          THEN round (100 * (harga / lag(nilai_buku_akhir) over urutan),2)
     WHEN rank > 1 AND lag(nilai_buku_akhir) over urutan <= 0
          THEN round(100,2)
     WHEN rank = 1
	  THEN 0
ELSE
     0
END as persen_awal,




CASE WHEN

  CASE WHEN rank > 1 AND lag(nilai_buku_akhir) over urutan > 0
	    THEN round (100 * (harga / lag(nilai_buku_akhir) over urutan),2)
      WHEN rank > 1 AND lag(nilai_buku_akhir) over urutan <= 0
	    THEN round(100,2)
      WHEN rank = 1
	    THEN 0
  ELSE
      0
  END

     > 75
     THEN 100


     WHEN

  CASE WHEN rank > 1 AND lag(nilai_buku_akhir) over urutan > 0
	    THEN round (100 * (harga / lag(nilai_buku_akhir) over urutan),2)
      WHEN rank > 1 AND lag(nilai_buku_akhir) over urutan <= 0
	    THEN round(100,2)
      WHEN rank = 1
	    THEN 0
  ELSE
      0
  END

     > 50
         THEN 75


     WHEN

  CASE WHEN rank > 1 AND lag(nilai_buku_akhir) over urutan > 0
	    THEN round (100 * (harga / lag(nilai_buku_akhir) over urutan),2)
      WHEN rank > 1 AND lag(nilai_buku_akhir) over urutan <= 0
	    THEN round(100,2)
      WHEN rank = 1
	    THEN 0
  ELSE
      0
  END

     > 25
         THEN 50


     WHEN

  CASE WHEN rank > 1 AND lag(nilai_buku_akhir) over urutan > 0
	    THEN round (100 * (harga / lag(nilai_buku_akhir) over urutan),2)
      WHEN rank > 1 AND lag(nilai_buku_akhir) over urutan <= 0
	    THEN round(100,2)
      WHEN rank = 1
	    THEN 0
  ELSE
      0
  END

     > 0
         THEN 25
ELSE
         0
END as persentasi,

masa_manfaat,
penambahan_umur,
umur_awal,
sisa_umur,
nilai_buku_awal,
penyusutan,
nilai_buku_akhir
 from
view_penyusutan_jij_2016_e17
 Window
urutan as (partition by register order by rank)


order by register, rank;





DROP view if exists view_penyusutan_jij_2016_e19 CASCADE;

create view view_penyusutan_jij_2016_e19 as

select register,
nama_skpd,
id_skpd,
nama_lokasi_bidang,
id_lokasi_bidang,
nama_kabupaten,
id_kabupaten,
nama_provinsi,
id_provinsi,
id_mutasi_berkurang,
mutasi_berkurang,
keadaan_barang,
nama_barang,

harga,
nilai_perolehan,
tahun,
view_penyusutan_jij_2016_e18.kode_barang,
kode_umur,
rank,
tahun_akhir,
persen_awal,

persentasi,

masa_manfaat,
CASE WHEN rank > 1
          THEN penambahan_umur.umur
     WHEN rank = 1
	  THEN 0
ELSE
     0
END as penambahan_umur,


umur_awal,
sisa_umur,
nilai_buku_awal,
penyusutan,
nilai_buku_akhir


 from
view_penyusutan_jij_2016_e18, penambahan_umur

where
view_penyusutan_jij_2016_e18.kode_umur = penambahan_umur.kode_barang AND
view_penyusutan_jij_2016_e18.persentasi = penambahan_umur.persen

order by register, rank;




DROP view if exists view_penyusutan_jij_2016_e20 CASCADE;

create view view_penyusutan_jij_2016_e20 as

select register,
nama_skpd,
id_skpd,
nama_lokasi_bidang,
id_lokasi_bidang,
nama_kabupaten,
id_kabupaten,
nama_provinsi,
id_provinsi,
id_mutasi_berkurang,
mutasi_berkurang,
keadaan_barang,
nama_barang,

harga,
nilai_perolehan,
tahun,
kode_barang,
kode_umur,
rank,
tahun_akhir,
persen_awal,

persentasi,

masa_manfaat,
penambahan_umur,

CASE WHEN rank > 1 AND lag(sisa_umur,1,0) over urutan + penambahan_umur >= masa_manfaat
          THEN masa_manfaat
     WHEN rank = 1
	  THEN masa_manfaat
ELSE
     lag(sisa_umur,1,0) over urutan + penambahan_umur
END as umur_awal,

CASE WHEN rank > 1 AND lag(sisa_umur,1,0) over urutan + penambahan_umur - (tahun_akhir - tahun) > 0
          AND lag(sisa_umur,1,0) over urutan + penambahan_umur < masa_manfaat
          THEN lag(sisa_umur,1,0) over urutan + penambahan_umur - (tahun_akhir - tahun)

     WHEN rank > 1 AND lag(sisa_umur,1,0) over urutan + penambahan_umur - (tahun_akhir - tahun) > 0
          AND lag(sisa_umur,1,0) over urutan + penambahan_umur >= masa_manfaat
          AND masa_manfaat - (tahun_akhir - tahun) > 0
          THEN masa_manfaat - (tahun_akhir - tahun)

     WHEN rank = 1 AND masa_manfaat - (tahun_akhir - tahun) > 0
	  THEN masa_manfaat - (tahun_akhir - tahun)
ELSE
    0
END as sisa_umur,



COALESCE(lag(nilai_buku_akhir) over urutan, 0) + harga as nilai_buku_awal,



CASE WHEN (tahun_akhir - tahun) <

     CASE WHEN rank > 1 AND lag(sisa_umur,1,0) over urutan + penambahan_umur >= masa_manfaat
          THEN masa_manfaat
     WHEN rank = 1
	  THEN masa_manfaat
     ELSE
     lag(sisa_umur,1,0) over urutan + penambahan_umur
     END


     THEN round((tahun_akhir - tahun) * (COALESCE(lag(nilai_buku_akhir) over urutan, 0) + harga) /

     (CASE WHEN rank > 1 AND lag(sisa_umur,1,0) over urutan + penambahan_umur >= masa_manfaat
          THEN masa_manfaat
     WHEN rank = 1
	  THEN masa_manfaat
     ELSE
     lag(sisa_umur,1,0) over urutan + penambahan_umur
     END),

     0)
ELSE
     COALESCE(lag(nilai_buku_akhir) over urutan, 0) + harga
END as penyusutan,

CASE WHEN (tahun_akhir - tahun) <

     CASE WHEN rank > 1 AND lag(sisa_umur,1,0) over urutan + penambahan_umur >= masa_manfaat
          THEN masa_manfaat
     WHEN rank = 1
	  THEN masa_manfaat
     ELSE
     lag(sisa_umur,1,0) over urutan + penambahan_umur
     END


     THEN (COALESCE(lag(nilai_buku_akhir) over urutan, 0) + harga) -
     (round((tahun_akhir - tahun) * (COALESCE(lag(nilai_buku_akhir) over urutan, 0) + harga) /

     (CASE WHEN rank > 1 AND lag(sisa_umur,1,0) over urutan + penambahan_umur >= masa_manfaat
          THEN masa_manfaat
     WHEN rank = 1
	  THEN masa_manfaat
     ELSE
     lag(sisa_umur,1,0) over urutan + penambahan_umur
     END),

     0))
ELSE
     (COALESCE(lag(nilai_buku_akhir) over urutan, 0) + harga) - (COALESCE(lag(nilai_buku_akhir) over urutan, 0) + harga)
END as nilai_buku_akhir


 from
view_penyusutan_jij_2016_e19
 Window
urutan as (partition by register order by rank)

order by register, rank;



-- kunci angka baris ke 7







DROP view if exists view_penyusutan_jij_2016_e21 CASCADE;

create view view_penyusutan_jij_2016_e21 as

select register,
nama_skpd,
id_skpd,
nama_lokasi_bidang,
id_lokasi_bidang,
nama_kabupaten,
id_kabupaten,
nama_provinsi,
id_provinsi,
id_mutasi_berkurang,
mutasi_berkurang,
keadaan_barang,
nama_barang,

harga,
nilai_perolehan,
tahun,
view_penyusutan_jij_2016_e20.kode_barang,
kode_umur,
rank,
tahun_akhir,


CASE WHEN rank > 1 AND lag(nilai_buku_akhir) over urutan > 0
          THEN round (100 * (harga / lag(nilai_buku_akhir) over urutan),2)
     WHEN rank > 1 AND lag(nilai_buku_akhir) over urutan <= 0
          THEN round(100,2)
     WHEN rank = 1
	  THEN 0
ELSE
     0
END as persen_awal,




CASE WHEN

  CASE WHEN rank > 1 AND lag(nilai_buku_akhir) over urutan > 0
	    THEN round (100 * (harga / lag(nilai_buku_akhir) over urutan),2)
      WHEN rank > 1 AND lag(nilai_buku_akhir) over urutan <= 0
	    THEN round(100,2)
      WHEN rank = 1
	    THEN 0
  ELSE
      0
  END

     > 75
     THEN 100


     WHEN

  CASE WHEN rank > 1 AND lag(nilai_buku_akhir) over urutan > 0
	    THEN round (100 * (harga / lag(nilai_buku_akhir) over urutan),2)
      WHEN rank > 1 AND lag(nilai_buku_akhir) over urutan <= 0
	    THEN round(100,2)
      WHEN rank = 1
	    THEN 0
  ELSE
      0
  END

     > 50
         THEN 75


     WHEN

  CASE WHEN rank > 1 AND lag(nilai_buku_akhir) over urutan > 0
	    THEN round (100 * (harga / lag(nilai_buku_akhir) over urutan),2)
      WHEN rank > 1 AND lag(nilai_buku_akhir) over urutan <= 0
	    THEN round(100,2)
      WHEN rank = 1
	    THEN 0
  ELSE
      0
  END

     > 25
         THEN 50


     WHEN

  CASE WHEN rank > 1 AND lag(nilai_buku_akhir) over urutan > 0
	    THEN round (100 * (harga / lag(nilai_buku_akhir) over urutan),2)
      WHEN rank > 1 AND lag(nilai_buku_akhir) over urutan <= 0
	    THEN round(100,2)
      WHEN rank = 1
	    THEN 0
  ELSE
      0
  END

     > 0
         THEN 25
ELSE
         0
END as persentasi,

masa_manfaat,
penambahan_umur,
umur_awal,
sisa_umur,
nilai_buku_awal,
penyusutan,
nilai_buku_akhir
 from
view_penyusutan_jij_2016_e20
 Window
urutan as (partition by register order by rank)


order by register, rank;





DROP view if exists view_penyusutan_jij_2016_e22 CASCADE;

create view view_penyusutan_jij_2016_e22 as

select register,
nama_skpd,
id_skpd,
nama_lokasi_bidang,
id_lokasi_bidang,
nama_kabupaten,
id_kabupaten,
nama_provinsi,
id_provinsi,
id_mutasi_berkurang,
mutasi_berkurang,
keadaan_barang,
nama_barang,

harga,
nilai_perolehan,
tahun,
view_penyusutan_jij_2016_e21.kode_barang,
kode_umur,
rank,
tahun_akhir,
persen_awal,

persentasi,

masa_manfaat,
CASE WHEN rank > 1
          THEN penambahan_umur.umur
     WHEN rank = 1
	  THEN 0
ELSE
     0
END as penambahan_umur,


umur_awal,
sisa_umur,
nilai_buku_awal,
penyusutan,
nilai_buku_akhir


 from
view_penyusutan_jij_2016_e21, penambahan_umur

where
view_penyusutan_jij_2016_e21.kode_umur = penambahan_umur.kode_barang AND
view_penyusutan_jij_2016_e21.persentasi = penambahan_umur.persen

order by register, rank;




DROP view if exists view_penyusutan_jij_2016_e23 CASCADE;

create view view_penyusutan_jij_2016_e23 as

select register,
nama_skpd,
id_skpd,
nama_lokasi_bidang,
id_lokasi_bidang,
nama_kabupaten,
id_kabupaten,
nama_provinsi,
id_provinsi,
id_mutasi_berkurang,
mutasi_berkurang,
keadaan_barang,
nama_barang,

harga,
nilai_perolehan,
tahun,
kode_barang,
kode_umur,
rank,
tahun_akhir,
persen_awal,

persentasi,

masa_manfaat,
penambahan_umur,

CASE WHEN rank > 1 AND lag(sisa_umur,1,0) over urutan + penambahan_umur >= masa_manfaat
          THEN masa_manfaat
     WHEN rank = 1
	  THEN masa_manfaat
ELSE
     lag(sisa_umur,1,0) over urutan + penambahan_umur
END as umur_awal,

CASE WHEN rank > 1 AND lag(sisa_umur,1,0) over urutan + penambahan_umur - (tahun_akhir - tahun) > 0
          AND lag(sisa_umur,1,0) over urutan + penambahan_umur < masa_manfaat
          THEN lag(sisa_umur,1,0) over urutan + penambahan_umur - (tahun_akhir - tahun)

     WHEN rank > 1 AND lag(sisa_umur,1,0) over urutan + penambahan_umur - (tahun_akhir - tahun) > 0
          AND lag(sisa_umur,1,0) over urutan + penambahan_umur >= masa_manfaat
          AND masa_manfaat - (tahun_akhir - tahun) > 0
          THEN masa_manfaat - (tahun_akhir - tahun)

     WHEN rank = 1 AND masa_manfaat - (tahun_akhir - tahun) > 0
	  THEN masa_manfaat - (tahun_akhir - tahun)
ELSE
    0
END as sisa_umur,



COALESCE(lag(nilai_buku_akhir) over urutan, 0) + harga as nilai_buku_awal,



CASE WHEN (tahun_akhir - tahun) <

     CASE WHEN rank > 1 AND lag(sisa_umur,1,0) over urutan + penambahan_umur >= masa_manfaat
          THEN masa_manfaat
     WHEN rank = 1
	  THEN masa_manfaat
     ELSE
     lag(sisa_umur,1,0) over urutan + penambahan_umur
     END


     THEN round((tahun_akhir - tahun) * (COALESCE(lag(nilai_buku_akhir) over urutan, 0) + harga) /

     (CASE WHEN rank > 1 AND lag(sisa_umur,1,0) over urutan + penambahan_umur >= masa_manfaat
          THEN masa_manfaat
     WHEN rank = 1
	  THEN masa_manfaat
     ELSE
     lag(sisa_umur,1,0) over urutan + penambahan_umur
     END),

     0)
ELSE
     COALESCE(lag(nilai_buku_akhir) over urutan, 0) + harga
END as penyusutan,

CASE WHEN (tahun_akhir - tahun) <

     CASE WHEN rank > 1 AND lag(sisa_umur,1,0) over urutan + penambahan_umur >= masa_manfaat
          THEN masa_manfaat
     WHEN rank = 1
	  THEN masa_manfaat
     ELSE
     lag(sisa_umur,1,0) over urutan + penambahan_umur
     END


     THEN (COALESCE(lag(nilai_buku_akhir) over urutan, 0) + harga) -
     (round((tahun_akhir - tahun) * (COALESCE(lag(nilai_buku_akhir) over urutan, 0) + harga) /

     (CASE WHEN rank > 1 AND lag(sisa_umur,1,0) over urutan + penambahan_umur >= masa_manfaat
          THEN masa_manfaat
     WHEN rank = 1
	  THEN masa_manfaat
     ELSE
     lag(sisa_umur,1,0) over urutan + penambahan_umur
     END),

     0))
ELSE
     (COALESCE(lag(nilai_buku_akhir) over urutan, 0) + harga) - (COALESCE(lag(nilai_buku_akhir) over urutan, 0) + harga)
END as nilai_buku_akhir


 from
view_penyusutan_jij_2016_e22
 Window
urutan as (partition by register order by rank)

order by register, rank;



-- kunci angka baris ke 8






DROP view if exists view_penyusutan_jij_2016_e24 CASCADE;

create view view_penyusutan_jij_2016_e24 as

select register,
nama_skpd,
id_skpd,
nama_lokasi_bidang,
id_lokasi_bidang,
nama_kabupaten,
id_kabupaten,
nama_provinsi,
id_provinsi,
id_mutasi_berkurang,
mutasi_berkurang,
keadaan_barang,
nama_barang,

harga,
nilai_perolehan,
tahun,
view_penyusutan_jij_2016_e23.kode_barang,
kode_umur,
rank,
tahun_akhir,


CASE WHEN rank > 1 AND lag(nilai_buku_akhir) over urutan > 0
          THEN round (100 * (harga / lag(nilai_buku_akhir) over urutan),2)
     WHEN rank > 1 AND lag(nilai_buku_akhir) over urutan <= 0
          THEN round(100,2)
     WHEN rank = 1
	  THEN 0
ELSE
     0
END as persen_awal,




CASE WHEN

  CASE WHEN rank > 1 AND lag(nilai_buku_akhir) over urutan > 0
	    THEN round (100 * (harga / lag(nilai_buku_akhir) over urutan),2)
      WHEN rank > 1 AND lag(nilai_buku_akhir) over urutan <= 0
	    THEN round(100,2)
      WHEN rank = 1
	    THEN 0
  ELSE
      0
  END

     > 75
     THEN 100


     WHEN

  CASE WHEN rank > 1 AND lag(nilai_buku_akhir) over urutan > 0
	    THEN round (100 * (harga / lag(nilai_buku_akhir) over urutan),2)
      WHEN rank > 1 AND lag(nilai_buku_akhir) over urutan <= 0
	    THEN round(100,2)
      WHEN rank = 1
	    THEN 0
  ELSE
      0
  END

     > 50
         THEN 75


     WHEN

  CASE WHEN rank > 1 AND lag(nilai_buku_akhir) over urutan > 0
	    THEN round (100 * (harga / lag(nilai_buku_akhir) over urutan),2)
      WHEN rank > 1 AND lag(nilai_buku_akhir) over urutan <= 0
	    THEN round(100,2)
      WHEN rank = 1
	    THEN 0
  ELSE
      0
  END

     > 25
         THEN 50


     WHEN

  CASE WHEN rank > 1 AND lag(nilai_buku_akhir) over urutan > 0
	    THEN round (100 * (harga / lag(nilai_buku_akhir) over urutan),2)
      WHEN rank > 1 AND lag(nilai_buku_akhir) over urutan <= 0
	    THEN round(100,2)
      WHEN rank = 1
	    THEN 0
  ELSE
      0
  END

     > 0
         THEN 25
ELSE
         0
END as persentasi,

masa_manfaat,
penambahan_umur,
umur_awal,
sisa_umur,
nilai_buku_awal,
penyusutan,
nilai_buku_akhir
 from
view_penyusutan_jij_2016_e23
 Window
urutan as (partition by register order by rank)


order by register, rank;





DROP view if exists view_penyusutan_jij_2016_e25 CASCADE;

create view view_penyusutan_jij_2016_e25 as

select register,
nama_skpd,
id_skpd,
nama_lokasi_bidang,
id_lokasi_bidang,
nama_kabupaten,
id_kabupaten,
nama_provinsi,
id_provinsi,
id_mutasi_berkurang,
mutasi_berkurang,
keadaan_barang,
nama_barang,

harga,
nilai_perolehan,
tahun,
view_penyusutan_jij_2016_e24.kode_barang,
kode_umur,
rank,
tahun_akhir,
persen_awal,

persentasi,

masa_manfaat,
CASE WHEN rank > 1
          THEN penambahan_umur.umur
     WHEN rank = 1
	  THEN 0
ELSE
     0
END as penambahan_umur,


umur_awal,
sisa_umur,
nilai_buku_awal,
penyusutan,
nilai_buku_akhir


 from
view_penyusutan_jij_2016_e24, penambahan_umur

where
view_penyusutan_jij_2016_e24.kode_umur = penambahan_umur.kode_barang AND
view_penyusutan_jij_2016_e24.persentasi = penambahan_umur.persen

order by register, rank;




DROP view if exists view_penyusutan_jij_2016_e26 CASCADE;

create view view_penyusutan_jij_2016_e26 as

select register,
nama_skpd,
id_skpd,
nama_lokasi_bidang,
id_lokasi_bidang,
nama_kabupaten,
id_kabupaten,
nama_provinsi,
id_provinsi,
id_mutasi_berkurang,
mutasi_berkurang,
keadaan_barang,
nama_barang,

harga,
nilai_perolehan,
tahun,
kode_barang,
kode_umur,
rank,
tahun_akhir,
persen_awal,

persentasi,

masa_manfaat,
penambahan_umur,

CASE WHEN rank > 1 AND lag(sisa_umur,1,0) over urutan + penambahan_umur >= masa_manfaat
          THEN masa_manfaat
     WHEN rank = 1
	  THEN masa_manfaat
ELSE
     lag(sisa_umur,1,0) over urutan + penambahan_umur
END as umur_awal,

CASE WHEN rank > 1 AND lag(sisa_umur,1,0) over urutan + penambahan_umur - (tahun_akhir - tahun) > 0
          AND lag(sisa_umur,1,0) over urutan + penambahan_umur < masa_manfaat
          THEN lag(sisa_umur,1,0) over urutan + penambahan_umur - (tahun_akhir - tahun)

     WHEN rank > 1 AND lag(sisa_umur,1,0) over urutan + penambahan_umur - (tahun_akhir - tahun) > 0
          AND lag(sisa_umur,1,0) over urutan + penambahan_umur >= masa_manfaat
          AND masa_manfaat - (tahun_akhir - tahun) > 0
          THEN masa_manfaat - (tahun_akhir - tahun)

     WHEN rank = 1 AND masa_manfaat - (tahun_akhir - tahun) > 0
	  THEN masa_manfaat - (tahun_akhir - tahun)
ELSE
    0
END as sisa_umur,



COALESCE(lag(nilai_buku_akhir) over urutan, 0) + harga as nilai_buku_awal,



CASE WHEN (tahun_akhir - tahun) <

     CASE WHEN rank > 1 AND lag(sisa_umur,1,0) over urutan + penambahan_umur >= masa_manfaat
          THEN masa_manfaat
     WHEN rank = 1
	  THEN masa_manfaat
     ELSE
     lag(sisa_umur,1,0) over urutan + penambahan_umur
     END


     THEN round((tahun_akhir - tahun) * (COALESCE(lag(nilai_buku_akhir) over urutan, 0) + harga) /

     (CASE WHEN rank > 1 AND lag(sisa_umur,1,0) over urutan + penambahan_umur >= masa_manfaat
          THEN masa_manfaat
     WHEN rank = 1
	  THEN masa_manfaat
     ELSE
     lag(sisa_umur,1,0) over urutan + penambahan_umur
     END),

     0)
ELSE
     COALESCE(lag(nilai_buku_akhir) over urutan, 0) + harga
END as penyusutan,

CASE WHEN (tahun_akhir - tahun) <

     CASE WHEN rank > 1 AND lag(sisa_umur,1,0) over urutan + penambahan_umur >= masa_manfaat
          THEN masa_manfaat
     WHEN rank = 1
	  THEN masa_manfaat
     ELSE
     lag(sisa_umur,1,0) over urutan + penambahan_umur
     END


     THEN (COALESCE(lag(nilai_buku_akhir) over urutan, 0) + harga) -
     (round((tahun_akhir - tahun) * (COALESCE(lag(nilai_buku_akhir) over urutan, 0) + harga) /

     (CASE WHEN rank > 1 AND lag(sisa_umur,1,0) over urutan + penambahan_umur >= masa_manfaat
          THEN masa_manfaat
     WHEN rank = 1
	  THEN masa_manfaat
     ELSE
     lag(sisa_umur,1,0) over urutan + penambahan_umur
     END),

     0))
ELSE
     (COALESCE(lag(nilai_buku_akhir) over urutan, 0) + harga) - (COALESCE(lag(nilai_buku_akhir) over urutan, 0) + harga)
END as nilai_buku_akhir


 from
view_penyusutan_jij_2016_e25
 Window
urutan as (partition by register order by rank)

order by register, rank;



-- kunci angka baris ke 9




DROP view if exists view_penyusutan_jij_2016_e27 CASCADE;

create view view_penyusutan_jij_2016_e27 as

select register,
nama_skpd,
id_skpd,
nama_lokasi_bidang,
id_lokasi_bidang,
nama_kabupaten,
id_kabupaten,
nama_provinsi,
id_provinsi,
id_mutasi_berkurang,
mutasi_berkurang,
keadaan_barang,
nama_barang,

harga,
nilai_perolehan,
tahun,
view_penyusutan_jij_2016_e26.kode_barang,
kode_umur,
rank,
tahun_akhir,


CASE WHEN rank > 1 AND lag(nilai_buku_akhir) over urutan > 0
          THEN round (100 * (harga / lag(nilai_buku_akhir) over urutan),2)
     WHEN rank > 1 AND lag(nilai_buku_akhir) over urutan <= 0
          THEN round(100,2)
     WHEN rank = 1
	  THEN 0
ELSE
     0
END as persen_awal,




CASE WHEN

  CASE WHEN rank > 1 AND lag(nilai_buku_akhir) over urutan > 0
	    THEN round (100 * (harga / lag(nilai_buku_akhir) over urutan),2)
      WHEN rank > 1 AND lag(nilai_buku_akhir) over urutan <= 0
	    THEN round(100,2)
      WHEN rank = 1
	    THEN 0
  ELSE
      0
  END

     > 75
     THEN 100


     WHEN

  CASE WHEN rank > 1 AND lag(nilai_buku_akhir) over urutan > 0
	    THEN round (100 * (harga / lag(nilai_buku_akhir) over urutan),2)
      WHEN rank > 1 AND lag(nilai_buku_akhir) over urutan <= 0
	    THEN round(100,2)
      WHEN rank = 1
	    THEN 0
  ELSE
      0
  END

     > 50
         THEN 75


     WHEN

  CASE WHEN rank > 1 AND lag(nilai_buku_akhir) over urutan > 0
	    THEN round (100 * (harga / lag(nilai_buku_akhir) over urutan),2)
      WHEN rank > 1 AND lag(nilai_buku_akhir) over urutan <= 0
	    THEN round(100,2)
      WHEN rank = 1
	    THEN 0
  ELSE
      0
  END

     > 25
         THEN 50


     WHEN

  CASE WHEN rank > 1 AND lag(nilai_buku_akhir) over urutan > 0
	    THEN round (100 * (harga / lag(nilai_buku_akhir) over urutan),2)
      WHEN rank > 1 AND lag(nilai_buku_akhir) over urutan <= 0
	    THEN round(100,2)
      WHEN rank = 1
	    THEN 0
  ELSE
      0
  END

     > 0
         THEN 25
ELSE
         0
END as persentasi,

masa_manfaat,
penambahan_umur,
umur_awal,
sisa_umur,
nilai_buku_awal,
penyusutan,
nilai_buku_akhir
 from
view_penyusutan_jij_2016_e26
 Window
urutan as (partition by register order by rank)


order by register, rank;





DROP view if exists view_penyusutan_jij_2016_e28 CASCADE;

create view view_penyusutan_jij_2016_e28 as

select register,
nama_skpd,
id_skpd,
nama_lokasi_bidang,
id_lokasi_bidang,
nama_kabupaten,
id_kabupaten,
nama_provinsi,
id_provinsi,
id_mutasi_berkurang,
mutasi_berkurang,
keadaan_barang,
nama_barang,

harga,
nilai_perolehan,
tahun,
view_penyusutan_jij_2016_e27.kode_barang,
kode_umur,
rank,
tahun_akhir,
persen_awal,

persentasi,

masa_manfaat,
CASE WHEN rank > 1
          THEN penambahan_umur.umur
     WHEN rank = 1
	  THEN 0
ELSE
     0
END as penambahan_umur,


umur_awal,
sisa_umur,
nilai_buku_awal,
penyusutan,
nilai_buku_akhir


 from
view_penyusutan_jij_2016_e27, penambahan_umur

where
view_penyusutan_jij_2016_e27.kode_umur = penambahan_umur.kode_barang AND
view_penyusutan_jij_2016_e27.persentasi = penambahan_umur.persen

order by register, rank;




DROP view if exists view_penyusutan_jij_2016_e29 CASCADE;

create view view_penyusutan_jij_2016_e29 as

select register,
nama_skpd,
id_skpd,
nama_lokasi_bidang,
id_lokasi_bidang,
nama_kabupaten,
id_kabupaten,
nama_provinsi,
id_provinsi,
id_mutasi_berkurang,
mutasi_berkurang,
keadaan_barang,
nama_barang,

harga,
nilai_perolehan,
tahun,
kode_barang,
kode_umur,
rank,
tahun_akhir,
persen_awal,

persentasi,

masa_manfaat,
penambahan_umur,

CASE WHEN rank > 1 AND lag(sisa_umur,1,0) over urutan + penambahan_umur >= masa_manfaat
          THEN masa_manfaat
     WHEN rank = 1
	  THEN masa_manfaat
ELSE
     lag(sisa_umur,1,0) over urutan + penambahan_umur
END as umur_awal,

CASE WHEN rank > 1 AND lag(sisa_umur,1,0) over urutan + penambahan_umur - (tahun_akhir - tahun) > 0
          AND lag(sisa_umur,1,0) over urutan + penambahan_umur < masa_manfaat
          THEN lag(sisa_umur,1,0) over urutan + penambahan_umur - (tahun_akhir - tahun)

     WHEN rank > 1 AND lag(sisa_umur,1,0) over urutan + penambahan_umur - (tahun_akhir - tahun) > 0
          AND lag(sisa_umur,1,0) over urutan + penambahan_umur >= masa_manfaat
          AND masa_manfaat - (tahun_akhir - tahun) > 0
          THEN masa_manfaat - (tahun_akhir - tahun)

     WHEN rank = 1 AND masa_manfaat - (tahun_akhir - tahun) > 0
	  THEN masa_manfaat - (tahun_akhir - tahun)
ELSE
    0
END as sisa_umur,



COALESCE(lag(nilai_buku_akhir) over urutan, 0) + harga as nilai_buku_awal,



CASE WHEN (tahun_akhir - tahun) <

     CASE WHEN rank > 1 AND lag(sisa_umur,1,0) over urutan + penambahan_umur >= masa_manfaat
          THEN masa_manfaat
     WHEN rank = 1
	  THEN masa_manfaat
     ELSE
     lag(sisa_umur,1,0) over urutan + penambahan_umur
     END


     THEN round((tahun_akhir - tahun) * (COALESCE(lag(nilai_buku_akhir) over urutan, 0) + harga) /

     (CASE WHEN rank > 1 AND lag(sisa_umur,1,0) over urutan + penambahan_umur >= masa_manfaat
          THEN masa_manfaat
     WHEN rank = 1
	  THEN masa_manfaat
     ELSE
     lag(sisa_umur,1,0) over urutan + penambahan_umur
     END),

     0)
ELSE
     COALESCE(lag(nilai_buku_akhir) over urutan, 0) + harga
END as penyusutan,

CASE WHEN (tahun_akhir - tahun) <

     CASE WHEN rank > 1 AND lag(sisa_umur,1,0) over urutan + penambahan_umur >= masa_manfaat
          THEN masa_manfaat
     WHEN rank = 1
	  THEN masa_manfaat
     ELSE
     lag(sisa_umur,1,0) over urutan + penambahan_umur
     END


     THEN (COALESCE(lag(nilai_buku_akhir) over urutan, 0) + harga) -
     (round((tahun_akhir - tahun) * (COALESCE(lag(nilai_buku_akhir) over urutan, 0) + harga) /

     (CASE WHEN rank > 1 AND lag(sisa_umur,1,0) over urutan + penambahan_umur >= masa_manfaat
          THEN masa_manfaat
     WHEN rank = 1
	  THEN masa_manfaat
     ELSE
     lag(sisa_umur,1,0) over urutan + penambahan_umur
     END),

     0))
ELSE
     (COALESCE(lag(nilai_buku_akhir) over urutan, 0) + harga) - (COALESCE(lag(nilai_buku_akhir) over urutan, 0) + harga)
END as nilai_buku_akhir


 from
view_penyusutan_jij_2016_e28
 Window
urutan as (partition by register order by rank)

order by register, rank;



-- kunci angka baris ke 10










DROP view if exists view_penyusutan_jij_2016_e30 CASCADE;

create view view_penyusutan_jij_2016_e30 as

select register,
nama_skpd,
id_skpd,
nama_lokasi_bidang,
id_lokasi_bidang,
nama_kabupaten,
id_kabupaten,
nama_provinsi,
id_provinsi,
id_mutasi_berkurang,
mutasi_berkurang,
keadaan_barang,
nama_barang,

harga,
nilai_perolehan,
tahun,
view_penyusutan_jij_2016_e29.kode_barang,
kode_umur,
rank,
tahun_akhir,


CASE WHEN rank > 1 AND lag(nilai_buku_akhir) over urutan > 0
          THEN round (100 * (harga / lag(nilai_buku_akhir) over urutan),2)
     WHEN rank > 1 AND lag(nilai_buku_akhir) over urutan <= 0
          THEN round(100,2)
     WHEN rank = 1
	  THEN 0
ELSE
     0
END as persen_awal,




CASE WHEN

  CASE WHEN rank > 1 AND lag(nilai_buku_akhir) over urutan > 0
	    THEN round (100 * (harga / lag(nilai_buku_akhir) over urutan),2)
      WHEN rank > 1 AND lag(nilai_buku_akhir) over urutan <= 0
	    THEN round(100,2)
      WHEN rank = 1
	    THEN 0
  ELSE
      0
  END

     > 75
     THEN 100


     WHEN

  CASE WHEN rank > 1 AND lag(nilai_buku_akhir) over urutan > 0
	    THEN round (100 * (harga / lag(nilai_buku_akhir) over urutan),2)
      WHEN rank > 1 AND lag(nilai_buku_akhir) over urutan <= 0
	    THEN round(100,2)
      WHEN rank = 1
	    THEN 0
  ELSE
      0
  END

     > 50
         THEN 75


     WHEN

  CASE WHEN rank > 1 AND lag(nilai_buku_akhir) over urutan > 0
	    THEN round (100 * (harga / lag(nilai_buku_akhir) over urutan),2)
      WHEN rank > 1 AND lag(nilai_buku_akhir) over urutan <= 0
	    THEN round(100,2)
      WHEN rank = 1
	    THEN 0
  ELSE
      0
  END

     > 25
         THEN 50


     WHEN

  CASE WHEN rank > 1 AND lag(nilai_buku_akhir) over urutan > 0
	    THEN round (100 * (harga / lag(nilai_buku_akhir) over urutan),2)
      WHEN rank > 1 AND lag(nilai_buku_akhir) over urutan <= 0
	    THEN round(100,2)
      WHEN rank = 1
	    THEN 0
  ELSE
      0
  END

     > 0
         THEN 25
ELSE
         0
END as persentasi,

masa_manfaat,
penambahan_umur,
umur_awal,
sisa_umur,
nilai_buku_awal,
penyusutan,
nilai_buku_akhir
 from
view_penyusutan_jij_2016_e29
 Window
urutan as (partition by register order by rank)


order by register, rank;





DROP view if exists view_penyusutan_jij_2016_e31 CASCADE;

create view view_penyusutan_jij_2016_e31 as

select register,
nama_skpd,
id_skpd,
nama_lokasi_bidang,
id_lokasi_bidang,
nama_kabupaten,
id_kabupaten,
nama_provinsi,
id_provinsi,
id_mutasi_berkurang,
mutasi_berkurang,
keadaan_barang,
nama_barang,

harga,
nilai_perolehan,
tahun,
view_penyusutan_jij_2016_e30.kode_barang,
kode_umur,
rank,
tahun_akhir,
persen_awal,

persentasi,

masa_manfaat,
CASE WHEN rank > 1
          THEN penambahan_umur.umur
     WHEN rank = 1
	  THEN 0
ELSE
     0
END as penambahan_umur,


umur_awal,
sisa_umur,
nilai_buku_awal,
penyusutan,
nilai_buku_akhir


 from
view_penyusutan_jij_2016_e30, penambahan_umur

where
view_penyusutan_jij_2016_e30.kode_umur = penambahan_umur.kode_barang AND
view_penyusutan_jij_2016_e30.persentasi = penambahan_umur.persen

order by register, rank;




DROP view if exists view_penyusutan_jij_2016_e32 CASCADE;

create view view_penyusutan_jij_2016_e32 as

select register,
nama_skpd,
id_skpd,
nama_lokasi_bidang,
id_lokasi_bidang,
nama_kabupaten,
id_kabupaten,
nama_provinsi,
id_provinsi,
id_mutasi_berkurang,
mutasi_berkurang,
keadaan_barang,
nama_barang,

harga,
nilai_perolehan,
tahun,
kode_barang,
kode_umur,
rank,
tahun_akhir,
persen_awal,

persentasi,

masa_manfaat,
penambahan_umur,

CASE WHEN rank > 1 AND lag(sisa_umur,1,0) over urutan + penambahan_umur >= masa_manfaat
          THEN masa_manfaat
     WHEN rank = 1
	  THEN masa_manfaat
ELSE
     lag(sisa_umur,1,0) over urutan + penambahan_umur
END as umur_awal,

CASE WHEN rank > 1 AND lag(sisa_umur,1,0) over urutan + penambahan_umur - (tahun_akhir - tahun) > 0
          AND lag(sisa_umur,1,0) over urutan + penambahan_umur < masa_manfaat
          THEN lag(sisa_umur,1,0) over urutan + penambahan_umur - (tahun_akhir - tahun)

     WHEN rank > 1 AND lag(sisa_umur,1,0) over urutan + penambahan_umur - (tahun_akhir - tahun) > 0
          AND lag(sisa_umur,1,0) over urutan + penambahan_umur >= masa_manfaat
          AND masa_manfaat - (tahun_akhir - tahun) > 0
          THEN masa_manfaat - (tahun_akhir - tahun)

     WHEN rank = 1 AND masa_manfaat - (tahun_akhir - tahun) > 0
	  THEN masa_manfaat - (tahun_akhir - tahun)
ELSE
    0
END as sisa_umur,



COALESCE(lag(nilai_buku_akhir) over urutan, 0) + harga as nilai_buku_awal,



CASE WHEN (tahun_akhir - tahun) <

     CASE WHEN rank > 1 AND lag(sisa_umur,1,0) over urutan + penambahan_umur >= masa_manfaat
          THEN masa_manfaat
     WHEN rank = 1
	  THEN masa_manfaat
     ELSE
     lag(sisa_umur,1,0) over urutan + penambahan_umur
     END


     THEN round((tahun_akhir - tahun) * (COALESCE(lag(nilai_buku_akhir) over urutan, 0) + harga) /

     (CASE WHEN rank > 1 AND lag(sisa_umur,1,0) over urutan + penambahan_umur >= masa_manfaat
          THEN masa_manfaat
     WHEN rank = 1
	  THEN masa_manfaat
     ELSE
     lag(sisa_umur,1,0) over urutan + penambahan_umur
     END),

     0)
ELSE
     COALESCE(lag(nilai_buku_akhir) over urutan, 0) + harga
END as penyusutan,

CASE WHEN (tahun_akhir - tahun) <

     CASE WHEN rank > 1 AND lag(sisa_umur,1,0) over urutan + penambahan_umur >= masa_manfaat
          THEN masa_manfaat
     WHEN rank = 1
	  THEN masa_manfaat
     ELSE
     lag(sisa_umur,1,0) over urutan + penambahan_umur
     END


     THEN (COALESCE(lag(nilai_buku_akhir) over urutan, 0) + harga) -
     (round((tahun_akhir - tahun) * (COALESCE(lag(nilai_buku_akhir) over urutan, 0) + harga) /

     (CASE WHEN rank > 1 AND lag(sisa_umur,1,0) over urutan + penambahan_umur >= masa_manfaat
          THEN masa_manfaat
     WHEN rank = 1
	  THEN masa_manfaat
     ELSE
     lag(sisa_umur,1,0) over urutan + penambahan_umur
     END),

     0))
ELSE
     (COALESCE(lag(nilai_buku_akhir) over urutan, 0) + harga) - (COALESCE(lag(nilai_buku_akhir) over urutan, 0) + harga)
END as nilai_buku_akhir


 from
view_penyusutan_jij_2016_e31
 Window
urutan as (partition by register order by rank)

order by register, rank;



-- kunci angka baris ke 11


























DROP view if exists view_penyusutan_pm_2016_e2 CASCADE;

create view view_penyusutan_pm_2016_e2 as select
nama_skpd,
id_skpd,
nama_lokasi_bidang,
id_lokasi_bidang,
nama_kabupaten,
id_kabupaten,
nama_provinsi,
id_provinsi,
id_mutasi_berkurang,
mutasi_berkurang,
keadaan_barang,
nama_barang,

register,
harga,
sum (harga) over (partition by register order by tahun asc) as nilai_perolehan,
tahun,
view_penyusutan_pm_2016_a1.kode_barang,
left(view_penyusutan_pm_2016_a1.kode_barang, 8) as kode_umur,
rank() over (partition by register order by tahun asc) as rank,
lead(tahun, 1, 2017) over (partition by register order by tahun asc) as tahun_akhir,
umur as masa_manfaat,
0 as penambahan_umur,
umur as umur_awal,

CASE WHEN ((lead(tahun, 1, 2017) over (partition by register order by tahun asc)) - tahun) < umur
     THEN umur - ((lead(tahun, 1, 2017) over (partition by register order by tahun asc)) - tahun)
ELSE
     0
END as sisa_umur,

harga as nilai_buku_awal,

CASE WHEN ((lead(tahun, 1, 2017) over (partition by register order by tahun asc)) - tahun) < umur
     THEN round(((lead(tahun, 1, 2017) over (partition by register order by tahun asc)) - tahun) * harga / umur, 0)
ELSE
     harga
END as penyusutan,

CASE WHEN ((lead(tahun, 1, 2017) over (partition by register order by tahun asc)) - tahun) < umur
    THEN harga - (round(((lead(tahun, 1, 2017) over (partition by register order by tahun asc)) - tahun) * harga / umur, 0))
ELSE
     0
END as nilai_buku_akhir

from view_penyusutan_pm_2016_a1, kode_barang

where view_penyusutan_pm_2016_a1.kode_barang = left(kode_barang.kode_barang,14)

order by register, rank;


-- cek umur barang, apakah lebih dari umur ekonomis
-- bila lebih, berarti disusutkan seluruh nilainya.
-- kunci angka untuk baris pertama



DROP view if exists view_penyusutan_pm_2016_e3 CASCADE;

create view view_penyusutan_pm_2016_e3 as

select register,
nama_skpd,
id_skpd,
nama_lokasi_bidang,
id_lokasi_bidang,
nama_kabupaten,
id_kabupaten,
nama_provinsi,
id_provinsi,
id_mutasi_berkurang,
mutasi_berkurang,
keadaan_barang,
nama_barang,

harga,
nilai_perolehan,
tahun,
view_penyusutan_pm_2016_e2.kode_barang,
kode_umur,
rank,
tahun_akhir,


CASE WHEN rank > 1 AND lag(nilai_buku_akhir) over urutan > 0
          THEN round (100 * (harga / lag(nilai_buku_akhir) over urutan),2)
     WHEN rank > 1 AND lag(nilai_buku_akhir) over urutan <= 0
          THEN round(100,2)
     WHEN rank = 1
	  THEN 0
ELSE
     0
END as persen_awal,




CASE WHEN

  CASE WHEN rank > 1 AND lag(nilai_buku_akhir) over urutan > 0
	    THEN round (100 * (harga / lag(nilai_buku_akhir) over urutan),2)
      WHEN rank > 1 AND lag(nilai_buku_akhir) over urutan <= 0
	    THEN round(100,2)
      WHEN rank = 1
	    THEN 0
  ELSE
      0
  END

     > 75
     THEN 100


     WHEN

  CASE WHEN rank > 1 AND lag(nilai_buku_akhir) over urutan > 0
	    THEN round (100 * (harga / lag(nilai_buku_akhir) over urutan),2)
      WHEN rank > 1 AND lag(nilai_buku_akhir) over urutan <= 0
	    THEN round(100,2)
      WHEN rank = 1
	    THEN 0
  ELSE
      0
  END

     > 50
         THEN 75


     WHEN

  CASE WHEN rank > 1 AND lag(nilai_buku_akhir) over urutan > 0
	    THEN round (100 * (harga / lag(nilai_buku_akhir) over urutan),2)
      WHEN rank > 1 AND lag(nilai_buku_akhir) over urutan <= 0
	    THEN round(100,2)
      WHEN rank = 1
	    THEN 0
  ELSE
      0
  END

     > 25
         THEN 50


     WHEN

  CASE WHEN rank > 1 AND lag(nilai_buku_akhir) over urutan > 0
	    THEN round (100 * (harga / lag(nilai_buku_akhir) over urutan),2)
      WHEN rank > 1 AND lag(nilai_buku_akhir) over urutan <= 0
	    THEN round(100,2)
      WHEN rank = 1
	    THEN 0
  ELSE
      0
  END

     > 0
         THEN 25
ELSE
         0
END as persentasi,

masa_manfaat,
penambahan_umur,
umur_awal,
sisa_umur,
nilai_buku_awal,
penyusutan,
nilai_buku_akhir
 from
view_penyusutan_pm_2016_e2
 Window
urutan as (partition by register order by rank)


order by register, rank;


-- mengubah persen_awal menjadi persen yang dapat di link
-- ke table penambahan_umur
--
-- sisa_umur_temp di buat untuk mengakses sisa_umur
-- pada baris sebelumnya


-- xxxxx
-- akses penambahan_umur
-- terdapat bug pada query sql, yaitu ketika
-- link ke table penambahan_umur, maka tidak dilakukan
-- link seperti biasa, yaitu
-- persentasi = penambahan_umur.persen, tetapi
-- penambahan_umur.persen > 75 (tidak tahu kenapa)



DROP view if exists view_penyusutan_pm_2016_e4 CASCADE;

create view view_penyusutan_pm_2016_e4 as

select register,
nama_skpd,
id_skpd,
nama_lokasi_bidang,
id_lokasi_bidang,
nama_kabupaten,
id_kabupaten,
nama_provinsi,
id_provinsi,
id_mutasi_berkurang,
mutasi_berkurang,
keadaan_barang,
nama_barang,

harga,
nilai_perolehan,
tahun,
view_penyusutan_pm_2016_e3.kode_barang,
kode_umur,
rank,
tahun_akhir,
persen_awal,

persentasi,

masa_manfaat,
CASE WHEN rank > 1
          THEN penambahan_umur.umur
     WHEN rank = 1
	  THEN 0
ELSE
     0
END as penambahan_umur,


umur_awal,
sisa_umur,
nilai_buku_awal,
penyusutan,
nilai_buku_akhir


 from
view_penyusutan_pm_2016_e3, penambahan_umur

where
view_penyusutan_pm_2016_e3.kode_umur = penambahan_umur.kode_barang AND
view_penyusutan_pm_2016_e3.persentasi = penambahan_umur.persen

order by register, rank;




DROP view if exists view_penyusutan_pm_2016_e5 CASCADE;

create view view_penyusutan_pm_2016_e5 as

select register,
nama_skpd,
id_skpd,
nama_lokasi_bidang,
id_lokasi_bidang,
nama_kabupaten,
id_kabupaten,
nama_provinsi,
id_provinsi,
id_mutasi_berkurang,
mutasi_berkurang,
keadaan_barang,
nama_barang,

harga,
nilai_perolehan,
tahun,
kode_barang,
kode_umur,
rank,
tahun_akhir,
persen_awal,

persentasi,

masa_manfaat,
penambahan_umur,

CASE WHEN rank > 1 AND lag(sisa_umur,1,0) over urutan + penambahan_umur >= masa_manfaat
          THEN masa_manfaat
     WHEN rank = 1
	  THEN masa_manfaat
ELSE
     lag(sisa_umur,1,0) over urutan + penambahan_umur
END as umur_awal,

CASE WHEN rank > 1 AND lag(sisa_umur,1,0) over urutan + penambahan_umur - (tahun_akhir - tahun) > 0
          AND lag(sisa_umur,1,0) over urutan + penambahan_umur - (tahun_akhir - tahun) <= masa_manfaat
          THEN lag(sisa_umur,1,0) over urutan + penambahan_umur - (tahun_akhir - tahun)

     WHEN rank > 1 AND lag(sisa_umur,1,0) over urutan + penambahan_umur - (tahun_akhir - tahun) > 0
          AND lag(sisa_umur,1,0) over urutan + penambahan_umur - (tahun_akhir - tahun) > masa_manfaat
          AND masa_manfaat - (tahun_akhir - tahun) > 0
          THEN masa_manfaat - (tahun_akhir - tahun)

     WHEN rank = 1 AND masa_manfaat - (tahun_akhir - tahun) > 0
	  THEN masa_manfaat - (tahun_akhir - tahun)
ELSE
    0
END as sisa_umur,



COALESCE(lag(nilai_buku_akhir) over urutan, 0) + harga as nilai_buku_awal,



CASE WHEN (tahun_akhir - tahun) <

     CASE WHEN rank > 1 AND lag(sisa_umur,1,0) over urutan + penambahan_umur >= masa_manfaat
          THEN masa_manfaat
     WHEN rank = 1
	  THEN masa_manfaat
     ELSE
     lag(sisa_umur,1,0) over urutan + penambahan_umur
     END


     THEN round((tahun_akhir - tahun) * (COALESCE(lag(nilai_buku_akhir) over urutan, 0) + harga) /

     (CASE WHEN rank > 1 AND lag(sisa_umur,1,0) over urutan + penambahan_umur >= masa_manfaat
          THEN masa_manfaat
     WHEN rank = 1
	  THEN masa_manfaat
     ELSE
     lag(sisa_umur,1,0) over urutan + penambahan_umur
     END),

     0)
ELSE
     COALESCE(lag(nilai_buku_akhir) over urutan, 0) + harga
END as penyusutan,

CASE WHEN (tahun_akhir - tahun) <

     CASE WHEN rank > 1 AND lag(sisa_umur,1,0) over urutan + penambahan_umur >= masa_manfaat
          THEN masa_manfaat
     WHEN rank = 1
	  THEN masa_manfaat
     ELSE
     lag(sisa_umur,1,0) over urutan + penambahan_umur
     END


     THEN (COALESCE(lag(nilai_buku_akhir) over urutan, 0) + harga) -
     (round((tahun_akhir - tahun) * (COALESCE(lag(nilai_buku_akhir) over urutan, 0) + harga) /

     (CASE WHEN rank > 1 AND lag(sisa_umur,1,0) over urutan + penambahan_umur >= masa_manfaat
          THEN masa_manfaat
     WHEN rank = 1
	  THEN masa_manfaat
     ELSE
     lag(sisa_umur,1,0) over urutan + penambahan_umur
     END),

     0))
ELSE
     (COALESCE(lag(nilai_buku_akhir) over urutan, 0) + harga) - (COALESCE(lag(nilai_buku_akhir) over urutan, 0) + harga)
END as nilai_buku_akhir


 from
view_penyusutan_pm_2016_e4
 Window
urutan as (partition by register order by rank)

order by register, rank;




-------kunci angka baris ke 2

DROP view if exists view_penyusutan_pm_2016_e6 CASCADE;

create view view_penyusutan_pm_2016_e6 as

select register,
nama_skpd,
id_skpd,
nama_lokasi_bidang,
id_lokasi_bidang,
nama_kabupaten,
id_kabupaten,
nama_provinsi,
id_provinsi,
id_mutasi_berkurang,
mutasi_berkurang,
keadaan_barang,
nama_barang,

harga,
nilai_perolehan,
tahun,
view_penyusutan_pm_2016_e5.kode_barang,
kode_umur,
rank,
tahun_akhir,


CASE WHEN rank > 1 AND lag(nilai_buku_akhir) over urutan > 0
          THEN round (100 * (harga / lag(nilai_buku_akhir) over urutan),2)
     WHEN rank > 1 AND lag(nilai_buku_akhir) over urutan <= 0
          THEN round(100,2)
     WHEN rank = 1
	  THEN 0
ELSE
     0
END as persen_awal,




CASE WHEN

  CASE WHEN rank > 1 AND lag(nilai_buku_akhir) over urutan > 0
	    THEN round (100 * (harga / lag(nilai_buku_akhir) over urutan),2)
      WHEN rank > 1 AND lag(nilai_buku_akhir) over urutan <= 0
	    THEN round(100,2)
      WHEN rank = 1
	    THEN 0
  ELSE
      0
  END

     > 75
     THEN 100


     WHEN

  CASE WHEN rank > 1 AND lag(nilai_buku_akhir) over urutan > 0
	    THEN round (100 * (harga / lag(nilai_buku_akhir) over urutan),2)
      WHEN rank > 1 AND lag(nilai_buku_akhir) over urutan <= 0
	    THEN round(100,2)
      WHEN rank = 1
	    THEN 0
  ELSE
      0
  END

     > 50
         THEN 75


     WHEN

  CASE WHEN rank > 1 AND lag(nilai_buku_akhir) over urutan > 0
	    THEN round (100 * (harga / lag(nilai_buku_akhir) over urutan),2)
      WHEN rank > 1 AND lag(nilai_buku_akhir) over urutan <= 0
	    THEN round(100,2)
      WHEN rank = 1
	    THEN 0
  ELSE
      0
  END

     > 25
         THEN 50


     WHEN

  CASE WHEN rank > 1 AND lag(nilai_buku_akhir) over urutan > 0
	    THEN round (100 * (harga / lag(nilai_buku_akhir) over urutan),2)
      WHEN rank > 1 AND lag(nilai_buku_akhir) over urutan <= 0
	    THEN round(100,2)
      WHEN rank = 1
	    THEN 0
  ELSE
      0
  END

     > 0
         THEN 25
ELSE
         0
END as persentasi,

masa_manfaat,
penambahan_umur,
umur_awal,
sisa_umur,
nilai_buku_awal,
penyusutan,
nilai_buku_akhir
 from
view_penyusutan_pm_2016_e5
 Window
urutan as (partition by register order by rank)


order by register, rank;





DROP view if exists view_penyusutan_pm_2016_e7 CASCADE;

create view view_penyusutan_pm_2016_e7 as

select register,
nama_skpd,
id_skpd,
nama_lokasi_bidang,
id_lokasi_bidang,
nama_kabupaten,
id_kabupaten,
nama_provinsi,
id_provinsi,
id_mutasi_berkurang,
mutasi_berkurang,
keadaan_barang,
nama_barang,

harga,
nilai_perolehan,
tahun,
view_penyusutan_pm_2016_e6.kode_barang,
kode_umur,
rank,
tahun_akhir,
persen_awal,

persentasi,

masa_manfaat,
CASE WHEN rank > 1
          THEN penambahan_umur.umur
     WHEN rank = 1
	  THEN 0
ELSE
     0
END as penambahan_umur,


umur_awal,
sisa_umur,
nilai_buku_awal,
penyusutan,
nilai_buku_akhir


 from
view_penyusutan_pm_2016_e6, penambahan_umur

where
view_penyusutan_pm_2016_e6.kode_umur = penambahan_umur.kode_barang AND
view_penyusutan_pm_2016_e6.persentasi = penambahan_umur.persen

order by register, rank;




DROP view if exists view_penyusutan_pm_2016_e8 CASCADE;

create view view_penyusutan_pm_2016_e8 as

select register,
nama_skpd,
id_skpd,
nama_lokasi_bidang,
id_lokasi_bidang,
nama_kabupaten,
id_kabupaten,
nama_provinsi,
id_provinsi,
id_mutasi_berkurang,
mutasi_berkurang,
keadaan_barang,
nama_barang,

harga,
nilai_perolehan,
tahun,
kode_barang,
kode_umur,
rank,
tahun_akhir,
persen_awal,

persentasi,

masa_manfaat,
penambahan_umur,

CASE WHEN rank > 1 AND lag(sisa_umur,1,0) over urutan + penambahan_umur >= masa_manfaat
          THEN masa_manfaat
     WHEN rank = 1
	  THEN masa_manfaat
ELSE
     lag(sisa_umur,1,0) over urutan + penambahan_umur
END as umur_awal,

CASE WHEN rank > 1 AND lag(sisa_umur,1,0) over urutan + penambahan_umur - (tahun_akhir - tahun) > 0
          AND lag(sisa_umur,1,0) over urutan + penambahan_umur < masa_manfaat
          THEN lag(sisa_umur,1,0) over urutan + penambahan_umur - (tahun_akhir - tahun)

     WHEN rank > 1 AND lag(sisa_umur,1,0) over urutan + penambahan_umur - (tahun_akhir - tahun) > 0
          AND lag(sisa_umur,1,0) over urutan + penambahan_umur >= masa_manfaat
          AND masa_manfaat - (tahun_akhir - tahun) > 0
          THEN masa_manfaat - (tahun_akhir - tahun)

     WHEN rank = 1 AND masa_manfaat - (tahun_akhir - tahun) > 0
	  THEN masa_manfaat - (tahun_akhir - tahun)
ELSE
    0
END as sisa_umur,



COALESCE(lag(nilai_buku_akhir) over urutan, 0) + harga as nilai_buku_awal,



CASE WHEN (tahun_akhir - tahun) <

     CASE WHEN rank > 1 AND lag(sisa_umur,1,0) over urutan + penambahan_umur >= masa_manfaat
          THEN masa_manfaat
     WHEN rank = 1
	  THEN masa_manfaat
     ELSE
     lag(sisa_umur,1,0) over urutan + penambahan_umur
     END


     THEN round((tahun_akhir - tahun) * (COALESCE(lag(nilai_buku_akhir) over urutan, 0) + harga) /

     (CASE WHEN rank > 1 AND lag(sisa_umur,1,0) over urutan + penambahan_umur >= masa_manfaat
          THEN masa_manfaat
     WHEN rank = 1
	  THEN masa_manfaat
     ELSE
     lag(sisa_umur,1,0) over urutan + penambahan_umur
     END),

     0)
ELSE
     COALESCE(lag(nilai_buku_akhir) over urutan, 0) + harga
END as penyusutan,

CASE WHEN (tahun_akhir - tahun) <

     CASE WHEN rank > 1 AND lag(sisa_umur,1,0) over urutan + penambahan_umur >= masa_manfaat
          THEN masa_manfaat
     WHEN rank = 1
	  THEN masa_manfaat
     ELSE
     lag(sisa_umur,1,0) over urutan + penambahan_umur
     END


     THEN (COALESCE(lag(nilai_buku_akhir) over urutan, 0) + harga) -
     (round((tahun_akhir - tahun) * (COALESCE(lag(nilai_buku_akhir) over urutan, 0) + harga) /

     (CASE WHEN rank > 1 AND lag(sisa_umur,1,0) over urutan + penambahan_umur >= masa_manfaat
          THEN masa_manfaat
     WHEN rank = 1
	  THEN masa_manfaat
     ELSE
     lag(sisa_umur,1,0) over urutan + penambahan_umur
     END),

     0))
ELSE
     (COALESCE(lag(nilai_buku_akhir) over urutan, 0) + harga) - (COALESCE(lag(nilai_buku_akhir) over urutan, 0) + harga)
END as nilai_buku_akhir


 from
view_penyusutan_pm_2016_e7
 Window
urutan as (partition by register order by rank)

order by register, rank;



-- kunci angka baris ke 3




DROP view if exists view_penyusutan_pm_2016_e9 CASCADE;

create view view_penyusutan_pm_2016_e9 as

select register,
nama_skpd,
id_skpd,
nama_lokasi_bidang,
id_lokasi_bidang,
nama_kabupaten,
id_kabupaten,
nama_provinsi,
id_provinsi,
id_mutasi_berkurang,
mutasi_berkurang,
keadaan_barang,
nama_barang,

harga,
nilai_perolehan,
tahun,
view_penyusutan_pm_2016_e8.kode_barang,
kode_umur,
rank,
tahun_akhir,


CASE WHEN rank > 1 AND lag(nilai_buku_akhir) over urutan > 0
          THEN round (100 * (harga / lag(nilai_buku_akhir) over urutan),2)
     WHEN rank > 1 AND lag(nilai_buku_akhir) over urutan <= 0
          THEN round(100,2)
     WHEN rank = 1
	  THEN 0
ELSE
     0
END as persen_awal,




CASE WHEN

  CASE WHEN rank > 1 AND lag(nilai_buku_akhir) over urutan > 0
	    THEN round (100 * (harga / lag(nilai_buku_akhir) over urutan),2)
      WHEN rank > 1 AND lag(nilai_buku_akhir) over urutan <= 0
	    THEN round(100,2)
      WHEN rank = 1
	    THEN 0
  ELSE
      0
  END

     > 75
     THEN 100


     WHEN

  CASE WHEN rank > 1 AND lag(nilai_buku_akhir) over urutan > 0
	    THEN round (100 * (harga / lag(nilai_buku_akhir) over urutan),2)
      WHEN rank > 1 AND lag(nilai_buku_akhir) over urutan <= 0
	    THEN round(100,2)
      WHEN rank = 1
	    THEN 0
  ELSE
      0
  END

     > 50
         THEN 75


     WHEN

  CASE WHEN rank > 1 AND lag(nilai_buku_akhir) over urutan > 0
	    THEN round (100 * (harga / lag(nilai_buku_akhir) over urutan),2)
      WHEN rank > 1 AND lag(nilai_buku_akhir) over urutan <= 0
	    THEN round(100,2)
      WHEN rank = 1
	    THEN 0
  ELSE
      0
  END

     > 25
         THEN 50


     WHEN

  CASE WHEN rank > 1 AND lag(nilai_buku_akhir) over urutan > 0
	    THEN round (100 * (harga / lag(nilai_buku_akhir) over urutan),2)
      WHEN rank > 1 AND lag(nilai_buku_akhir) over urutan <= 0
	    THEN round(100,2)
      WHEN rank = 1
	    THEN 0
  ELSE
      0
  END

     > 0
         THEN 25
ELSE
         0
END as persentasi,

masa_manfaat,
penambahan_umur,
umur_awal,
sisa_umur,
nilai_buku_awal,
penyusutan,
nilai_buku_akhir
 from
view_penyusutan_pm_2016_e8
 Window
urutan as (partition by register order by rank)


order by register, rank;





DROP view if exists view_penyusutan_pm_2016_e10 CASCADE;

create view view_penyusutan_pm_2016_e10 as

select register,
nama_skpd,
id_skpd,
nama_lokasi_bidang,
id_lokasi_bidang,
nama_kabupaten,
id_kabupaten,
nama_provinsi,
id_provinsi,
id_mutasi_berkurang,
mutasi_berkurang,
keadaan_barang,
nama_barang,

harga,
nilai_perolehan,
tahun,
view_penyusutan_pm_2016_e9.kode_barang,
kode_umur,
rank,
tahun_akhir,
persen_awal,

persentasi,

masa_manfaat,
CASE WHEN rank > 1
          THEN penambahan_umur.umur
     WHEN rank = 1
	  THEN 0
ELSE
     0
END as penambahan_umur,


umur_awal,
sisa_umur,
nilai_buku_awal,
penyusutan,
nilai_buku_akhir


 from
view_penyusutan_pm_2016_e9, penambahan_umur

where
view_penyusutan_pm_2016_e9.kode_umur = penambahan_umur.kode_barang AND
view_penyusutan_pm_2016_e9.persentasi = penambahan_umur.persen

order by register, rank;




DROP view if exists view_penyusutan_pm_2016_e11 CASCADE;

create view view_penyusutan_pm_2016_e11 as

select register,
nama_skpd,
id_skpd,
nama_lokasi_bidang,
id_lokasi_bidang,
nama_kabupaten,
id_kabupaten,
nama_provinsi,
id_provinsi,
id_mutasi_berkurang,
mutasi_berkurang,
keadaan_barang,
nama_barang,

harga,
nilai_perolehan,
tahun,
kode_barang,
kode_umur,
rank,
tahun_akhir,
persen_awal,

persentasi,

masa_manfaat,
penambahan_umur,

CASE WHEN rank > 1 AND lag(sisa_umur,1,0) over urutan + penambahan_umur >= masa_manfaat
          THEN masa_manfaat
     WHEN rank = 1
	  THEN masa_manfaat
ELSE
     lag(sisa_umur,1,0) over urutan + penambahan_umur
END as umur_awal,

CASE WHEN rank > 1 AND lag(sisa_umur,1,0) over urutan + penambahan_umur - (tahun_akhir - tahun) > 0
          AND lag(sisa_umur,1,0) over urutan + penambahan_umur < masa_manfaat
          THEN lag(sisa_umur,1,0) over urutan + penambahan_umur - (tahun_akhir - tahun)

     WHEN rank > 1 AND lag(sisa_umur,1,0) over urutan + penambahan_umur - (tahun_akhir - tahun) > 0
          AND lag(sisa_umur,1,0) over urutan + penambahan_umur >= masa_manfaat
          AND masa_manfaat - (tahun_akhir - tahun) > 0
          THEN masa_manfaat - (tahun_akhir - tahun)

     WHEN rank = 1 AND masa_manfaat - (tahun_akhir - tahun) > 0
	  THEN masa_manfaat - (tahun_akhir - tahun)
ELSE
    0
END as sisa_umur,



COALESCE(lag(nilai_buku_akhir) over urutan, 0) + harga as nilai_buku_awal,



CASE WHEN (tahun_akhir - tahun) <

     CASE WHEN rank > 1 AND lag(sisa_umur,1,0) over urutan + penambahan_umur >= masa_manfaat
          THEN masa_manfaat
     WHEN rank = 1
	  THEN masa_manfaat
     ELSE
     lag(sisa_umur,1,0) over urutan + penambahan_umur
     END


     THEN round((tahun_akhir - tahun) * (COALESCE(lag(nilai_buku_akhir) over urutan, 0) + harga) /

     (CASE WHEN rank > 1 AND lag(sisa_umur,1,0) over urutan + penambahan_umur >= masa_manfaat
          THEN masa_manfaat
     WHEN rank = 1
	  THEN masa_manfaat
     ELSE
     lag(sisa_umur,1,0) over urutan + penambahan_umur
     END),

     0)
ELSE
     COALESCE(lag(nilai_buku_akhir) over urutan, 0) + harga
END as penyusutan,

CASE WHEN (tahun_akhir - tahun) <

     CASE WHEN rank > 1 AND lag(sisa_umur,1,0) over urutan + penambahan_umur >= masa_manfaat
          THEN masa_manfaat
     WHEN rank = 1
	  THEN masa_manfaat
     ELSE
     lag(sisa_umur,1,0) over urutan + penambahan_umur
     END


     THEN (COALESCE(lag(nilai_buku_akhir) over urutan, 0) + harga) -
     (round((tahun_akhir - tahun) * (COALESCE(lag(nilai_buku_akhir) over urutan, 0) + harga) /

     (CASE WHEN rank > 1 AND lag(sisa_umur,1,0) over urutan + penambahan_umur >= masa_manfaat
          THEN masa_manfaat
     WHEN rank = 1
	  THEN masa_manfaat
     ELSE
     lag(sisa_umur,1,0) over urutan + penambahan_umur
     END),

     0))
ELSE
     (COALESCE(lag(nilai_buku_akhir) over urutan, 0) + harga) - (COALESCE(lag(nilai_buku_akhir) over urutan, 0) + harga)
END as nilai_buku_akhir


 from
view_penyusutan_pm_2016_e10
 Window
urutan as (partition by register order by rank)

order by register, rank;



-- kunci angka baris ke 4



DROP view if exists view_penyusutan_pm_2016_e12 CASCADE;

create view view_penyusutan_pm_2016_e12 as

select register,
nama_skpd,
id_skpd,
nama_lokasi_bidang,
id_lokasi_bidang,
nama_kabupaten,
id_kabupaten,
nama_provinsi,
id_provinsi,
id_mutasi_berkurang,
mutasi_berkurang,
keadaan_barang,
nama_barang,

harga,
nilai_perolehan,
tahun,
view_penyusutan_pm_2016_e11.kode_barang,
kode_umur,
rank,
tahun_akhir,


CASE WHEN rank > 1 AND lag(nilai_buku_akhir) over urutan > 0
          THEN round (100 * (harga / lag(nilai_buku_akhir) over urutan),2)
     WHEN rank > 1 AND lag(nilai_buku_akhir) over urutan <= 0
          THEN round(100,2)
     WHEN rank = 1
	  THEN 0
ELSE
     0
END as persen_awal,




CASE WHEN

  CASE WHEN rank > 1 AND lag(nilai_buku_akhir) over urutan > 0
	    THEN round (100 * (harga / lag(nilai_buku_akhir) over urutan),2)
      WHEN rank > 1 AND lag(nilai_buku_akhir) over urutan <= 0
	    THEN round(100,2)
      WHEN rank = 1
	    THEN 0
  ELSE
      0
  END

     > 75
     THEN 100


     WHEN

  CASE WHEN rank > 1 AND lag(nilai_buku_akhir) over urutan > 0
	    THEN round (100 * (harga / lag(nilai_buku_akhir) over urutan),2)
      WHEN rank > 1 AND lag(nilai_buku_akhir) over urutan <= 0
	    THEN round(100,2)
      WHEN rank = 1
	    THEN 0
  ELSE
      0
  END

     > 50
         THEN 75


     WHEN

  CASE WHEN rank > 1 AND lag(nilai_buku_akhir) over urutan > 0
	    THEN round (100 * (harga / lag(nilai_buku_akhir) over urutan),2)
      WHEN rank > 1 AND lag(nilai_buku_akhir) over urutan <= 0
	    THEN round(100,2)
      WHEN rank = 1
	    THEN 0
  ELSE
      0
  END

     > 25
         THEN 50


     WHEN

  CASE WHEN rank > 1 AND lag(nilai_buku_akhir) over urutan > 0
	    THEN round (100 * (harga / lag(nilai_buku_akhir) over urutan),2)
      WHEN rank > 1 AND lag(nilai_buku_akhir) over urutan <= 0
	    THEN round(100,2)
      WHEN rank = 1
	    THEN 0
  ELSE
      0
  END

     > 0
         THEN 25
ELSE
         0
END as persentasi,

masa_manfaat,
penambahan_umur,
umur_awal,
sisa_umur,
nilai_buku_awal,
penyusutan,
nilai_buku_akhir
 from
view_penyusutan_pm_2016_e11
 Window
urutan as (partition by register order by rank)


order by register, rank;





DROP view if exists view_penyusutan_pm_2016_e13 CASCADE;

create view view_penyusutan_pm_2016_e13 as

select register,
nama_skpd,
id_skpd,
nama_lokasi_bidang,
id_lokasi_bidang,
nama_kabupaten,
id_kabupaten,
nama_provinsi,
id_provinsi,
id_mutasi_berkurang,
mutasi_berkurang,
keadaan_barang,
nama_barang,

harga,
nilai_perolehan,
tahun,
view_penyusutan_pm_2016_e12.kode_barang,
kode_umur,
rank,
tahun_akhir,
persen_awal,

persentasi,

masa_manfaat,
CASE WHEN rank > 1
          THEN penambahan_umur.umur
     WHEN rank = 1
	  THEN 0
ELSE
     0
END as penambahan_umur,


umur_awal,
sisa_umur,
nilai_buku_awal,
penyusutan,
nilai_buku_akhir


 from
view_penyusutan_pm_2016_e12, penambahan_umur

where
view_penyusutan_pm_2016_e12.kode_umur = penambahan_umur.kode_barang AND
view_penyusutan_pm_2016_e12.persentasi = penambahan_umur.persen

order by register, rank;




DROP view if exists view_penyusutan_pm_2016_e14 CASCADE;

create view view_penyusutan_pm_2016_e14 as

select register,
nama_skpd,
id_skpd,
nama_lokasi_bidang,
id_lokasi_bidang,
nama_kabupaten,
id_kabupaten,
nama_provinsi,
id_provinsi,
id_mutasi_berkurang,
mutasi_berkurang,
keadaan_barang,
nama_barang,

harga,
nilai_perolehan,
tahun,
kode_barang,
kode_umur,
rank,
tahun_akhir,
persen_awal,

persentasi,

masa_manfaat,
penambahan_umur,

CASE WHEN rank > 1 AND lag(sisa_umur,1,0) over urutan + penambahan_umur >= masa_manfaat
          THEN masa_manfaat
     WHEN rank = 1
	  THEN masa_manfaat
ELSE
     lag(sisa_umur,1,0) over urutan + penambahan_umur
END as umur_awal,

CASE WHEN rank > 1 AND lag(sisa_umur,1,0) over urutan + penambahan_umur - (tahun_akhir - tahun) > 0
          AND lag(sisa_umur,1,0) over urutan + penambahan_umur < masa_manfaat
          THEN lag(sisa_umur,1,0) over urutan + penambahan_umur - (tahun_akhir - tahun)

     WHEN rank > 1 AND lag(sisa_umur,1,0) over urutan + penambahan_umur - (tahun_akhir - tahun) > 0
          AND lag(sisa_umur,1,0) over urutan + penambahan_umur >= masa_manfaat
          AND masa_manfaat - (tahun_akhir - tahun) > 0
          THEN masa_manfaat - (tahun_akhir - tahun)

     WHEN rank = 1 AND masa_manfaat - (tahun_akhir - tahun) > 0
	  THEN masa_manfaat - (tahun_akhir - tahun)
ELSE
    0
END as sisa_umur,



COALESCE(lag(nilai_buku_akhir) over urutan, 0) + harga as nilai_buku_awal,



CASE WHEN (tahun_akhir - tahun) <

     CASE WHEN rank > 1 AND lag(sisa_umur,1,0) over urutan + penambahan_umur >= masa_manfaat
          THEN masa_manfaat
     WHEN rank = 1
	  THEN masa_manfaat
     ELSE
     lag(sisa_umur,1,0) over urutan + penambahan_umur
     END


     THEN round((tahun_akhir - tahun) * (COALESCE(lag(nilai_buku_akhir) over urutan, 0) + harga) /

     (CASE WHEN rank > 1 AND lag(sisa_umur,1,0) over urutan + penambahan_umur >= masa_manfaat
          THEN masa_manfaat
     WHEN rank = 1
	  THEN masa_manfaat
     ELSE
     lag(sisa_umur,1,0) over urutan + penambahan_umur
     END),

     0)
ELSE
     COALESCE(lag(nilai_buku_akhir) over urutan, 0) + harga
END as penyusutan,

CASE WHEN (tahun_akhir - tahun) <

     CASE WHEN rank > 1 AND lag(sisa_umur,1,0) over urutan + penambahan_umur >= masa_manfaat
          THEN masa_manfaat
     WHEN rank = 1
	  THEN masa_manfaat
     ELSE
     lag(sisa_umur,1,0) over urutan + penambahan_umur
     END


     THEN (COALESCE(lag(nilai_buku_akhir) over urutan, 0) + harga) -
     (round((tahun_akhir - tahun) * (COALESCE(lag(nilai_buku_akhir) over urutan, 0) + harga) /

     (CASE WHEN rank > 1 AND lag(sisa_umur,1,0) over urutan + penambahan_umur >= masa_manfaat
          THEN masa_manfaat
     WHEN rank = 1
	  THEN masa_manfaat
     ELSE
     lag(sisa_umur,1,0) over urutan + penambahan_umur
     END),

     0))
ELSE
     (COALESCE(lag(nilai_buku_akhir) over urutan, 0) + harga) - (COALESCE(lag(nilai_buku_akhir) over urutan, 0) + harga)
END as nilai_buku_akhir


 from
view_penyusutan_pm_2016_e13
 Window
urutan as (partition by register order by rank)

order by register, rank;



-- kunci angka baris ke 5




DROP view if exists view_penyusutan_pm_2016_e15 CASCADE;

create view view_penyusutan_pm_2016_e15 as

select register,
nama_skpd,
id_skpd,
nama_lokasi_bidang,
id_lokasi_bidang,
nama_kabupaten,
id_kabupaten,
nama_provinsi,
id_provinsi,
id_mutasi_berkurang,
mutasi_berkurang,
keadaan_barang,
nama_barang,

harga,
nilai_perolehan,
tahun,
view_penyusutan_pm_2016_e14.kode_barang,
kode_umur,
rank,
tahun_akhir,


CASE WHEN rank > 1 AND lag(nilai_buku_akhir) over urutan > 0
          THEN round (100 * (harga / lag(nilai_buku_akhir) over urutan),2)
     WHEN rank > 1 AND lag(nilai_buku_akhir) over urutan <= 0
          THEN round(100,2)
     WHEN rank = 1
	  THEN 0
ELSE
     0
END as persen_awal,




CASE WHEN

  CASE WHEN rank > 1 AND lag(nilai_buku_akhir) over urutan > 0
	    THEN round (100 * (harga / lag(nilai_buku_akhir) over urutan),2)
      WHEN rank > 1 AND lag(nilai_buku_akhir) over urutan <= 0
	    THEN round(100,2)
      WHEN rank = 1
	    THEN 0
  ELSE
      0
  END

     > 75
     THEN 100


     WHEN

  CASE WHEN rank > 1 AND lag(nilai_buku_akhir) over urutan > 0
	    THEN round (100 * (harga / lag(nilai_buku_akhir) over urutan),2)
      WHEN rank > 1 AND lag(nilai_buku_akhir) over urutan <= 0
	    THEN round(100,2)
      WHEN rank = 1
	    THEN 0
  ELSE
      0
  END

     > 50
         THEN 75


     WHEN

  CASE WHEN rank > 1 AND lag(nilai_buku_akhir) over urutan > 0
	    THEN round (100 * (harga / lag(nilai_buku_akhir) over urutan),2)
      WHEN rank > 1 AND lag(nilai_buku_akhir) over urutan <= 0
	    THEN round(100,2)
      WHEN rank = 1
	    THEN 0
  ELSE
      0
  END

     > 25
         THEN 50


     WHEN

  CASE WHEN rank > 1 AND lag(nilai_buku_akhir) over urutan > 0
	    THEN round (100 * (harga / lag(nilai_buku_akhir) over urutan),2)
      WHEN rank > 1 AND lag(nilai_buku_akhir) over urutan <= 0
	    THEN round(100,2)
      WHEN rank = 1
	    THEN 0
  ELSE
      0
  END

     > 0
         THEN 25
ELSE
         0
END as persentasi,

masa_manfaat,
penambahan_umur,
umur_awal,
sisa_umur,
nilai_buku_awal,
penyusutan,
nilai_buku_akhir
 from
view_penyusutan_pm_2016_e14
 Window
urutan as (partition by register order by rank)


order by register, rank;





DROP view if exists view_penyusutan_pm_2016_e16 CASCADE;

create view view_penyusutan_pm_2016_e16 as

select register,
nama_skpd,
id_skpd,
nama_lokasi_bidang,
id_lokasi_bidang,
nama_kabupaten,
id_kabupaten,
nama_provinsi,
id_provinsi,
id_mutasi_berkurang,
mutasi_berkurang,
keadaan_barang,
nama_barang,

harga,
nilai_perolehan,
tahun,
view_penyusutan_pm_2016_e15.kode_barang,
kode_umur,
rank,
tahun_akhir,
persen_awal,

persentasi,

masa_manfaat,
CASE WHEN rank > 1
          THEN penambahan_umur.umur
     WHEN rank = 1
	  THEN 0
ELSE
     0
END as penambahan_umur,


umur_awal,
sisa_umur,
nilai_buku_awal,
penyusutan,
nilai_buku_akhir


 from
view_penyusutan_pm_2016_e15, penambahan_umur

where
view_penyusutan_pm_2016_e15.kode_umur = penambahan_umur.kode_barang AND
view_penyusutan_pm_2016_e15.persentasi = penambahan_umur.persen

order by register, rank;




DROP view if exists view_penyusutan_pm_2016_e17 CASCADE;

create view view_penyusutan_pm_2016_e17 as

select register,
nama_skpd,
id_skpd,
nama_lokasi_bidang,
id_lokasi_bidang,
nama_kabupaten,
id_kabupaten,
nama_provinsi,
id_provinsi,
id_mutasi_berkurang,
mutasi_berkurang,
keadaan_barang,
nama_barang,

harga,
nilai_perolehan,
tahun,
kode_barang,
kode_umur,
rank,
tahun_akhir,
persen_awal,

persentasi,

masa_manfaat,
penambahan_umur,

CASE WHEN rank > 1 AND lag(sisa_umur,1,0) over urutan + penambahan_umur >= masa_manfaat
          THEN masa_manfaat
     WHEN rank = 1
	  THEN masa_manfaat
ELSE
     lag(sisa_umur,1,0) over urutan + penambahan_umur
END as umur_awal,

CASE WHEN rank > 1 AND lag(sisa_umur,1,0) over urutan + penambahan_umur - (tahun_akhir - tahun) > 0
          AND lag(sisa_umur,1,0) over urutan + penambahan_umur < masa_manfaat
          THEN lag(sisa_umur,1,0) over urutan + penambahan_umur - (tahun_akhir - tahun)

     WHEN rank > 1 AND lag(sisa_umur,1,0) over urutan + penambahan_umur - (tahun_akhir - tahun) > 0
          AND lag(sisa_umur,1,0) over urutan + penambahan_umur >= masa_manfaat
          AND masa_manfaat - (tahun_akhir - tahun) > 0
          THEN masa_manfaat - (tahun_akhir - tahun)

     WHEN rank = 1 AND masa_manfaat - (tahun_akhir - tahun) > 0
	  THEN masa_manfaat - (tahun_akhir - tahun)
ELSE
    0
END as sisa_umur,



COALESCE(lag(nilai_buku_akhir) over urutan, 0) + harga as nilai_buku_awal,



CASE WHEN (tahun_akhir - tahun) <

     CASE WHEN rank > 1 AND lag(sisa_umur,1,0) over urutan + penambahan_umur >= masa_manfaat
          THEN masa_manfaat
     WHEN rank = 1
	  THEN masa_manfaat
     ELSE
     lag(sisa_umur,1,0) over urutan + penambahan_umur
     END


     THEN round((tahun_akhir - tahun) * (COALESCE(lag(nilai_buku_akhir) over urutan, 0) + harga) /

     (CASE WHEN rank > 1 AND lag(sisa_umur,1,0) over urutan + penambahan_umur >= masa_manfaat
          THEN masa_manfaat
     WHEN rank = 1
	  THEN masa_manfaat
     ELSE
     lag(sisa_umur,1,0) over urutan + penambahan_umur
     END),

     0)
ELSE
     COALESCE(lag(nilai_buku_akhir) over urutan, 0) + harga
END as penyusutan,

CASE WHEN (tahun_akhir - tahun) <

     CASE WHEN rank > 1 AND lag(sisa_umur,1,0) over urutan + penambahan_umur >= masa_manfaat
          THEN masa_manfaat
     WHEN rank = 1
	  THEN masa_manfaat
     ELSE
     lag(sisa_umur,1,0) over urutan + penambahan_umur
     END


     THEN (COALESCE(lag(nilai_buku_akhir) over urutan, 0) + harga) -
     (round((tahun_akhir - tahun) * (COALESCE(lag(nilai_buku_akhir) over urutan, 0) + harga) /

     (CASE WHEN rank > 1 AND lag(sisa_umur,1,0) over urutan + penambahan_umur >= masa_manfaat
          THEN masa_manfaat
     WHEN rank = 1
	  THEN masa_manfaat
     ELSE
     lag(sisa_umur,1,0) over urutan + penambahan_umur
     END),

     0))
ELSE
     (COALESCE(lag(nilai_buku_akhir) over urutan, 0) + harga) - (COALESCE(lag(nilai_buku_akhir) over urutan, 0) + harga)
END as nilai_buku_akhir


 from
view_penyusutan_pm_2016_e16
 Window
urutan as (partition by register order by rank)

order by register, rank;



-- kunci angka baris ke 6





DROP view if exists view_penyusutan_pm_2016_e18 CASCADE;

create view view_penyusutan_pm_2016_e18 as

select register,
nama_skpd,
id_skpd,
nama_lokasi_bidang,
id_lokasi_bidang,
nama_kabupaten,
id_kabupaten,
nama_provinsi,
id_provinsi,
id_mutasi_berkurang,
mutasi_berkurang,
keadaan_barang,
nama_barang,

harga,
nilai_perolehan,
tahun,
view_penyusutan_pm_2016_e17.kode_barang,
kode_umur,
rank,
tahun_akhir,


CASE WHEN rank > 1 AND lag(nilai_buku_akhir) over urutan > 0
          THEN round (100 * (harga / lag(nilai_buku_akhir) over urutan),2)
     WHEN rank > 1 AND lag(nilai_buku_akhir) over urutan <= 0
          THEN round(100,2)
     WHEN rank = 1
	  THEN 0
ELSE
     0
END as persen_awal,




CASE WHEN

  CASE WHEN rank > 1 AND lag(nilai_buku_akhir) over urutan > 0
	    THEN round (100 * (harga / lag(nilai_buku_akhir) over urutan),2)
      WHEN rank > 1 AND lag(nilai_buku_akhir) over urutan <= 0
	    THEN round(100,2)
      WHEN rank = 1
	    THEN 0
  ELSE
      0
  END

     > 75
     THEN 100


     WHEN

  CASE WHEN rank > 1 AND lag(nilai_buku_akhir) over urutan > 0
	    THEN round (100 * (harga / lag(nilai_buku_akhir) over urutan),2)
      WHEN rank > 1 AND lag(nilai_buku_akhir) over urutan <= 0
	    THEN round(100,2)
      WHEN rank = 1
	    THEN 0
  ELSE
      0
  END

     > 50
         THEN 75


     WHEN

  CASE WHEN rank > 1 AND lag(nilai_buku_akhir) over urutan > 0
	    THEN round (100 * (harga / lag(nilai_buku_akhir) over urutan),2)
      WHEN rank > 1 AND lag(nilai_buku_akhir) over urutan <= 0
	    THEN round(100,2)
      WHEN rank = 1
	    THEN 0
  ELSE
      0
  END

     > 25
         THEN 50


     WHEN

  CASE WHEN rank > 1 AND lag(nilai_buku_akhir) over urutan > 0
	    THEN round (100 * (harga / lag(nilai_buku_akhir) over urutan),2)
      WHEN rank > 1 AND lag(nilai_buku_akhir) over urutan <= 0
	    THEN round(100,2)
      WHEN rank = 1
	    THEN 0
  ELSE
      0
  END

     > 0
         THEN 25
ELSE
         0
END as persentasi,

masa_manfaat,
penambahan_umur,
umur_awal,
sisa_umur,
nilai_buku_awal,
penyusutan,
nilai_buku_akhir
 from
view_penyusutan_pm_2016_e17
 Window
urutan as (partition by register order by rank)


order by register, rank;





DROP view if exists view_penyusutan_pm_2016_e19 CASCADE;

create view view_penyusutan_pm_2016_e19 as

select register,
nama_skpd,
id_skpd,
nama_lokasi_bidang,
id_lokasi_bidang,
nama_kabupaten,
id_kabupaten,
nama_provinsi,
id_provinsi,
id_mutasi_berkurang,
mutasi_berkurang,
keadaan_barang,
nama_barang,

harga,
nilai_perolehan,
tahun,
view_penyusutan_pm_2016_e18.kode_barang,
kode_umur,
rank,
tahun_akhir,
persen_awal,

persentasi,

masa_manfaat,
CASE WHEN rank > 1
          THEN penambahan_umur.umur
     WHEN rank = 1
	  THEN 0
ELSE
     0
END as penambahan_umur,


umur_awal,
sisa_umur,
nilai_buku_awal,
penyusutan,
nilai_buku_akhir


 from
view_penyusutan_pm_2016_e18, penambahan_umur

where
view_penyusutan_pm_2016_e18.kode_umur = penambahan_umur.kode_barang AND
view_penyusutan_pm_2016_e18.persentasi = penambahan_umur.persen

order by register, rank;




DROP view if exists view_penyusutan_pm_2016_e20 CASCADE;

create view view_penyusutan_pm_2016_e20 as

select register,
nama_skpd,
id_skpd,
nama_lokasi_bidang,
id_lokasi_bidang,
nama_kabupaten,
id_kabupaten,
nama_provinsi,
id_provinsi,
id_mutasi_berkurang,
mutasi_berkurang,
keadaan_barang,
nama_barang,

harga,
nilai_perolehan,
tahun,
kode_barang,
kode_umur,
rank,
tahun_akhir,
persen_awal,

persentasi,

masa_manfaat,
penambahan_umur,

CASE WHEN rank > 1 AND lag(sisa_umur,1,0) over urutan + penambahan_umur >= masa_manfaat
          THEN masa_manfaat
     WHEN rank = 1
	  THEN masa_manfaat
ELSE
     lag(sisa_umur,1,0) over urutan + penambahan_umur
END as umur_awal,

CASE WHEN rank > 1 AND lag(sisa_umur,1,0) over urutan + penambahan_umur - (tahun_akhir - tahun) > 0
          AND lag(sisa_umur,1,0) over urutan + penambahan_umur < masa_manfaat
          THEN lag(sisa_umur,1,0) over urutan + penambahan_umur - (tahun_akhir - tahun)

     WHEN rank > 1 AND lag(sisa_umur,1,0) over urutan + penambahan_umur - (tahun_akhir - tahun) > 0
          AND lag(sisa_umur,1,0) over urutan + penambahan_umur >= masa_manfaat
          AND masa_manfaat - (tahun_akhir - tahun) > 0
          THEN masa_manfaat - (tahun_akhir - tahun)

     WHEN rank = 1 AND masa_manfaat - (tahun_akhir - tahun) > 0
	  THEN masa_manfaat - (tahun_akhir - tahun)
ELSE
    0
END as sisa_umur,



COALESCE(lag(nilai_buku_akhir) over urutan, 0) + harga as nilai_buku_awal,



CASE WHEN (tahun_akhir - tahun) <

     CASE WHEN rank > 1 AND lag(sisa_umur,1,0) over urutan + penambahan_umur >= masa_manfaat
          THEN masa_manfaat
     WHEN rank = 1
	  THEN masa_manfaat
     ELSE
     lag(sisa_umur,1,0) over urutan + penambahan_umur
     END


     THEN round((tahun_akhir - tahun) * (COALESCE(lag(nilai_buku_akhir) over urutan, 0) + harga) /

     (CASE WHEN rank > 1 AND lag(sisa_umur,1,0) over urutan + penambahan_umur >= masa_manfaat
          THEN masa_manfaat
     WHEN rank = 1
	  THEN masa_manfaat
     ELSE
     lag(sisa_umur,1,0) over urutan + penambahan_umur
     END),

     0)
ELSE
     COALESCE(lag(nilai_buku_akhir) over urutan, 0) + harga
END as penyusutan,

CASE WHEN (tahun_akhir - tahun) <

     CASE WHEN rank > 1 AND lag(sisa_umur,1,0) over urutan + penambahan_umur >= masa_manfaat
          THEN masa_manfaat
     WHEN rank = 1
	  THEN masa_manfaat
     ELSE
     lag(sisa_umur,1,0) over urutan + penambahan_umur
     END


     THEN (COALESCE(lag(nilai_buku_akhir) over urutan, 0) + harga) -
     (round((tahun_akhir - tahun) * (COALESCE(lag(nilai_buku_akhir) over urutan, 0) + harga) /

     (CASE WHEN rank > 1 AND lag(sisa_umur,1,0) over urutan + penambahan_umur >= masa_manfaat
          THEN masa_manfaat
     WHEN rank = 1
	  THEN masa_manfaat
     ELSE
     lag(sisa_umur,1,0) over urutan + penambahan_umur
     END),

     0))
ELSE
     (COALESCE(lag(nilai_buku_akhir) over urutan, 0) + harga) - (COALESCE(lag(nilai_buku_akhir) over urutan, 0) + harga)
END as nilai_buku_akhir


 from
view_penyusutan_pm_2016_e19
 Window
urutan as (partition by register order by rank)

order by register, rank;



-- kunci angka baris ke 7







DROP view if exists view_penyusutan_pm_2016_e21 CASCADE;

create view view_penyusutan_pm_2016_e21 as

select register,
nama_skpd,
id_skpd,
nama_lokasi_bidang,
id_lokasi_bidang,
nama_kabupaten,
id_kabupaten,
nama_provinsi,
id_provinsi,
id_mutasi_berkurang,
mutasi_berkurang,
keadaan_barang,
nama_barang,

harga,
nilai_perolehan,
tahun,
view_penyusutan_pm_2016_e20.kode_barang,
kode_umur,
rank,
tahun_akhir,


CASE WHEN rank > 1 AND lag(nilai_buku_akhir) over urutan > 0
          THEN round (100 * (harga / lag(nilai_buku_akhir) over urutan),2)
     WHEN rank > 1 AND lag(nilai_buku_akhir) over urutan <= 0
          THEN round(100,2)
     WHEN rank = 1
	  THEN 0
ELSE
     0
END as persen_awal,




CASE WHEN

  CASE WHEN rank > 1 AND lag(nilai_buku_akhir) over urutan > 0
	    THEN round (100 * (harga / lag(nilai_buku_akhir) over urutan),2)
      WHEN rank > 1 AND lag(nilai_buku_akhir) over urutan <= 0
	    THEN round(100,2)
      WHEN rank = 1
	    THEN 0
  ELSE
      0
  END

     > 75
     THEN 100


     WHEN

  CASE WHEN rank > 1 AND lag(nilai_buku_akhir) over urutan > 0
	    THEN round (100 * (harga / lag(nilai_buku_akhir) over urutan),2)
      WHEN rank > 1 AND lag(nilai_buku_akhir) over urutan <= 0
	    THEN round(100,2)
      WHEN rank = 1
	    THEN 0
  ELSE
      0
  END

     > 50
         THEN 75


     WHEN

  CASE WHEN rank > 1 AND lag(nilai_buku_akhir) over urutan > 0
	    THEN round (100 * (harga / lag(nilai_buku_akhir) over urutan),2)
      WHEN rank > 1 AND lag(nilai_buku_akhir) over urutan <= 0
	    THEN round(100,2)
      WHEN rank = 1
	    THEN 0
  ELSE
      0
  END

     > 25
         THEN 50


     WHEN

  CASE WHEN rank > 1 AND lag(nilai_buku_akhir) over urutan > 0
	    THEN round (100 * (harga / lag(nilai_buku_akhir) over urutan),2)
      WHEN rank > 1 AND lag(nilai_buku_akhir) over urutan <= 0
	    THEN round(100,2)
      WHEN rank = 1
	    THEN 0
  ELSE
      0
  END

     > 0
         THEN 25
ELSE
         0
END as persentasi,

masa_manfaat,
penambahan_umur,
umur_awal,
sisa_umur,
nilai_buku_awal,
penyusutan,
nilai_buku_akhir
 from
view_penyusutan_pm_2016_e20
 Window
urutan as (partition by register order by rank)


order by register, rank;





DROP view if exists view_penyusutan_pm_2016_e22 CASCADE;

create view view_penyusutan_pm_2016_e22 as

select register,
nama_skpd,
id_skpd,
nama_lokasi_bidang,
id_lokasi_bidang,
nama_kabupaten,
id_kabupaten,
nama_provinsi,
id_provinsi,
id_mutasi_berkurang,
mutasi_berkurang,
keadaan_barang,
nama_barang,

harga,
nilai_perolehan,
tahun,
view_penyusutan_pm_2016_e21.kode_barang,
kode_umur,
rank,
tahun_akhir,
persen_awal,

persentasi,

masa_manfaat,
CASE WHEN rank > 1
          THEN penambahan_umur.umur
     WHEN rank = 1
	  THEN 0
ELSE
     0
END as penambahan_umur,


umur_awal,
sisa_umur,
nilai_buku_awal,
penyusutan,
nilai_buku_akhir


 from
view_penyusutan_pm_2016_e21, penambahan_umur

where
view_penyusutan_pm_2016_e21.kode_umur = penambahan_umur.kode_barang AND
view_penyusutan_pm_2016_e21.persentasi = penambahan_umur.persen

order by register, rank;




DROP view if exists view_penyusutan_pm_2016_e23 CASCADE;

create view view_penyusutan_pm_2016_e23 as

select register,
nama_skpd,
id_skpd,
nama_lokasi_bidang,
id_lokasi_bidang,
nama_kabupaten,
id_kabupaten,
nama_provinsi,
id_provinsi,
id_mutasi_berkurang,
mutasi_berkurang,
keadaan_barang,
nama_barang,

harga,
nilai_perolehan,
tahun,
kode_barang,
kode_umur,
rank,
tahun_akhir,
persen_awal,

persentasi,

masa_manfaat,
penambahan_umur,

CASE WHEN rank > 1 AND lag(sisa_umur,1,0) over urutan + penambahan_umur >= masa_manfaat
          THEN masa_manfaat
     WHEN rank = 1
	  THEN masa_manfaat
ELSE
     lag(sisa_umur,1,0) over urutan + penambahan_umur
END as umur_awal,

CASE WHEN rank > 1 AND lag(sisa_umur,1,0) over urutan + penambahan_umur - (tahun_akhir - tahun) > 0
          AND lag(sisa_umur,1,0) over urutan + penambahan_umur < masa_manfaat
          THEN lag(sisa_umur,1,0) over urutan + penambahan_umur - (tahun_akhir - tahun)

     WHEN rank > 1 AND lag(sisa_umur,1,0) over urutan + penambahan_umur - (tahun_akhir - tahun) > 0
          AND lag(sisa_umur,1,0) over urutan + penambahan_umur >= masa_manfaat
          AND masa_manfaat - (tahun_akhir - tahun) > 0
          THEN masa_manfaat - (tahun_akhir - tahun)

     WHEN rank = 1 AND masa_manfaat - (tahun_akhir - tahun) > 0
	  THEN masa_manfaat - (tahun_akhir - tahun)
ELSE
    0
END as sisa_umur,



COALESCE(lag(nilai_buku_akhir) over urutan, 0) + harga as nilai_buku_awal,



CASE WHEN (tahun_akhir - tahun) <

     CASE WHEN rank > 1 AND lag(sisa_umur,1,0) over urutan + penambahan_umur >= masa_manfaat
          THEN masa_manfaat
     WHEN rank = 1
	  THEN masa_manfaat
     ELSE
     lag(sisa_umur,1,0) over urutan + penambahan_umur
     END


     THEN round((tahun_akhir - tahun) * (COALESCE(lag(nilai_buku_akhir) over urutan, 0) + harga) /

     (CASE WHEN rank > 1 AND lag(sisa_umur,1,0) over urutan + penambahan_umur >= masa_manfaat
          THEN masa_manfaat
     WHEN rank = 1
	  THEN masa_manfaat
     ELSE
     lag(sisa_umur,1,0) over urutan + penambahan_umur
     END),

     0)
ELSE
     COALESCE(lag(nilai_buku_akhir) over urutan, 0) + harga
END as penyusutan,

CASE WHEN (tahun_akhir - tahun) <

     CASE WHEN rank > 1 AND lag(sisa_umur,1,0) over urutan + penambahan_umur >= masa_manfaat
          THEN masa_manfaat
     WHEN rank = 1
	  THEN masa_manfaat
     ELSE
     lag(sisa_umur,1,0) over urutan + penambahan_umur
     END


     THEN (COALESCE(lag(nilai_buku_akhir) over urutan, 0) + harga) -
     (round((tahun_akhir - tahun) * (COALESCE(lag(nilai_buku_akhir) over urutan, 0) + harga) /

     (CASE WHEN rank > 1 AND lag(sisa_umur,1,0) over urutan + penambahan_umur >= masa_manfaat
          THEN masa_manfaat
     WHEN rank = 1
	  THEN masa_manfaat
     ELSE
     lag(sisa_umur,1,0) over urutan + penambahan_umur
     END),

     0))
ELSE
     (COALESCE(lag(nilai_buku_akhir) over urutan, 0) + harga) - (COALESCE(lag(nilai_buku_akhir) over urutan, 0) + harga)
END as nilai_buku_akhir


 from
view_penyusutan_pm_2016_e22
 Window
urutan as (partition by register order by rank)

order by register, rank;



-- kunci angka baris ke 8






DROP view if exists view_penyusutan_pm_2016_e24 CASCADE;

create view view_penyusutan_pm_2016_e24 as

select register,
nama_skpd,
id_skpd,
nama_lokasi_bidang,
id_lokasi_bidang,
nama_kabupaten,
id_kabupaten,
nama_provinsi,
id_provinsi,
id_mutasi_berkurang,
mutasi_berkurang,
keadaan_barang,
nama_barang,

harga,
nilai_perolehan,
tahun,
view_penyusutan_pm_2016_e23.kode_barang,
kode_umur,
rank,
tahun_akhir,


CASE WHEN rank > 1 AND lag(nilai_buku_akhir) over urutan > 0
          THEN round (100 * (harga / lag(nilai_buku_akhir) over urutan),2)
     WHEN rank > 1 AND lag(nilai_buku_akhir) over urutan <= 0
          THEN round(100,2)
     WHEN rank = 1
	  THEN 0
ELSE
     0
END as persen_awal,




CASE WHEN

  CASE WHEN rank > 1 AND lag(nilai_buku_akhir) over urutan > 0
	    THEN round (100 * (harga / lag(nilai_buku_akhir) over urutan),2)
      WHEN rank > 1 AND lag(nilai_buku_akhir) over urutan <= 0
	    THEN round(100,2)
      WHEN rank = 1
	    THEN 0
  ELSE
      0
  END

     > 75
     THEN 100


     WHEN

  CASE WHEN rank > 1 AND lag(nilai_buku_akhir) over urutan > 0
	    THEN round (100 * (harga / lag(nilai_buku_akhir) over urutan),2)
      WHEN rank > 1 AND lag(nilai_buku_akhir) over urutan <= 0
	    THEN round(100,2)
      WHEN rank = 1
	    THEN 0
  ELSE
      0
  END

     > 50
         THEN 75


     WHEN

  CASE WHEN rank > 1 AND lag(nilai_buku_akhir) over urutan > 0
	    THEN round (100 * (harga / lag(nilai_buku_akhir) over urutan),2)
      WHEN rank > 1 AND lag(nilai_buku_akhir) over urutan <= 0
	    THEN round(100,2)
      WHEN rank = 1
	    THEN 0
  ELSE
      0
  END

     > 25
         THEN 50


     WHEN

  CASE WHEN rank > 1 AND lag(nilai_buku_akhir) over urutan > 0
	    THEN round (100 * (harga / lag(nilai_buku_akhir) over urutan),2)
      WHEN rank > 1 AND lag(nilai_buku_akhir) over urutan <= 0
	    THEN round(100,2)
      WHEN rank = 1
	    THEN 0
  ELSE
      0
  END

     > 0
         THEN 25
ELSE
         0
END as persentasi,

masa_manfaat,
penambahan_umur,
umur_awal,
sisa_umur,
nilai_buku_awal,
penyusutan,
nilai_buku_akhir
 from
view_penyusutan_pm_2016_e23
 Window
urutan as (partition by register order by rank)


order by register, rank;





DROP view if exists view_penyusutan_pm_2016_e25 CASCADE;

create view view_penyusutan_pm_2016_e25 as

select register,
nama_skpd,
id_skpd,
nama_lokasi_bidang,
id_lokasi_bidang,
nama_kabupaten,
id_kabupaten,
nama_provinsi,
id_provinsi,
id_mutasi_berkurang,
mutasi_berkurang,
keadaan_barang,
nama_barang,

harga,
nilai_perolehan,
tahun,
view_penyusutan_pm_2016_e24.kode_barang,
kode_umur,
rank,
tahun_akhir,
persen_awal,

persentasi,

masa_manfaat,
CASE WHEN rank > 1
          THEN penambahan_umur.umur
     WHEN rank = 1
	  THEN 0
ELSE
     0
END as penambahan_umur,


umur_awal,
sisa_umur,
nilai_buku_awal,
penyusutan,
nilai_buku_akhir


 from
view_penyusutan_pm_2016_e24, penambahan_umur

where
view_penyusutan_pm_2016_e24.kode_umur = penambahan_umur.kode_barang AND
view_penyusutan_pm_2016_e24.persentasi = penambahan_umur.persen

order by register, rank;




DROP view if exists view_penyusutan_pm_2016_e26 CASCADE;

create view view_penyusutan_pm_2016_e26 as

select register,
nama_skpd,
id_skpd,
nama_lokasi_bidang,
id_lokasi_bidang,
nama_kabupaten,
id_kabupaten,
nama_provinsi,
id_provinsi,
id_mutasi_berkurang,
mutasi_berkurang,
keadaan_barang,
nama_barang,

harga,
nilai_perolehan,
tahun,
kode_barang,
kode_umur,
rank,
tahun_akhir,
persen_awal,

persentasi,

masa_manfaat,
penambahan_umur,

CASE WHEN rank > 1 AND lag(sisa_umur,1,0) over urutan + penambahan_umur >= masa_manfaat
          THEN masa_manfaat
     WHEN rank = 1
	  THEN masa_manfaat
ELSE
     lag(sisa_umur,1,0) over urutan + penambahan_umur
END as umur_awal,

CASE WHEN rank > 1 AND lag(sisa_umur,1,0) over urutan + penambahan_umur - (tahun_akhir - tahun) > 0
          AND lag(sisa_umur,1,0) over urutan + penambahan_umur < masa_manfaat
          THEN lag(sisa_umur,1,0) over urutan + penambahan_umur - (tahun_akhir - tahun)

     WHEN rank > 1 AND lag(sisa_umur,1,0) over urutan + penambahan_umur - (tahun_akhir - tahun) > 0
          AND lag(sisa_umur,1,0) over urutan + penambahan_umur >= masa_manfaat
          AND masa_manfaat - (tahun_akhir - tahun) > 0
          THEN masa_manfaat - (tahun_akhir - tahun)

     WHEN rank = 1 AND masa_manfaat - (tahun_akhir - tahun) > 0
	  THEN masa_manfaat - (tahun_akhir - tahun)
ELSE
    0
END as sisa_umur,



COALESCE(lag(nilai_buku_akhir) over urutan, 0) + harga as nilai_buku_awal,



CASE WHEN (tahun_akhir - tahun) <

     CASE WHEN rank > 1 AND lag(sisa_umur,1,0) over urutan + penambahan_umur >= masa_manfaat
          THEN masa_manfaat
     WHEN rank = 1
	  THEN masa_manfaat
     ELSE
     lag(sisa_umur,1,0) over urutan + penambahan_umur
     END


     THEN round((tahun_akhir - tahun) * (COALESCE(lag(nilai_buku_akhir) over urutan, 0) + harga) /

     (CASE WHEN rank > 1 AND lag(sisa_umur,1,0) over urutan + penambahan_umur >= masa_manfaat
          THEN masa_manfaat
     WHEN rank = 1
	  THEN masa_manfaat
     ELSE
     lag(sisa_umur,1,0) over urutan + penambahan_umur
     END),

     0)
ELSE
     COALESCE(lag(nilai_buku_akhir) over urutan, 0) + harga
END as penyusutan,

CASE WHEN (tahun_akhir - tahun) <

     CASE WHEN rank > 1 AND lag(sisa_umur,1,0) over urutan + penambahan_umur >= masa_manfaat
          THEN masa_manfaat
     WHEN rank = 1
	  THEN masa_manfaat
     ELSE
     lag(sisa_umur,1,0) over urutan + penambahan_umur
     END


     THEN (COALESCE(lag(nilai_buku_akhir) over urutan, 0) + harga) -
     (round((tahun_akhir - tahun) * (COALESCE(lag(nilai_buku_akhir) over urutan, 0) + harga) /

     (CASE WHEN rank > 1 AND lag(sisa_umur,1,0) over urutan + penambahan_umur >= masa_manfaat
          THEN masa_manfaat
     WHEN rank = 1
	  THEN masa_manfaat
     ELSE
     lag(sisa_umur,1,0) over urutan + penambahan_umur
     END),

     0))
ELSE
     (COALESCE(lag(nilai_buku_akhir) over urutan, 0) + harga) - (COALESCE(lag(nilai_buku_akhir) over urutan, 0) + harga)
END as nilai_buku_akhir


 from
view_penyusutan_pm_2016_e25
 Window
urutan as (partition by register order by rank)

order by register, rank;



-- kunci angka baris ke 9




DROP view if exists view_penyusutan_pm_2016_e27 CASCADE;

create view view_penyusutan_pm_2016_e27 as

select register,
nama_skpd,
id_skpd,
nama_lokasi_bidang,
id_lokasi_bidang,
nama_kabupaten,
id_kabupaten,
nama_provinsi,
id_provinsi,
id_mutasi_berkurang,
mutasi_berkurang,
keadaan_barang,
nama_barang,

harga,
nilai_perolehan,
tahun,
view_penyusutan_pm_2016_e26.kode_barang,
kode_umur,
rank,
tahun_akhir,


CASE WHEN rank > 1 AND lag(nilai_buku_akhir) over urutan > 0
          THEN round (100 * (harga / lag(nilai_buku_akhir) over urutan),2)
     WHEN rank > 1 AND lag(nilai_buku_akhir) over urutan <= 0
          THEN round(100,2)
     WHEN rank = 1
	  THEN 0
ELSE
     0
END as persen_awal,




CASE WHEN

  CASE WHEN rank > 1 AND lag(nilai_buku_akhir) over urutan > 0
	    THEN round (100 * (harga / lag(nilai_buku_akhir) over urutan),2)
      WHEN rank > 1 AND lag(nilai_buku_akhir) over urutan <= 0
	    THEN round(100,2)
      WHEN rank = 1
	    THEN 0
  ELSE
      0
  END

     > 75
     THEN 100


     WHEN

  CASE WHEN rank > 1 AND lag(nilai_buku_akhir) over urutan > 0
	    THEN round (100 * (harga / lag(nilai_buku_akhir) over urutan),2)
      WHEN rank > 1 AND lag(nilai_buku_akhir) over urutan <= 0
	    THEN round(100,2)
      WHEN rank = 1
	    THEN 0
  ELSE
      0
  END

     > 50
         THEN 75


     WHEN

  CASE WHEN rank > 1 AND lag(nilai_buku_akhir) over urutan > 0
	    THEN round (100 * (harga / lag(nilai_buku_akhir) over urutan),2)
      WHEN rank > 1 AND lag(nilai_buku_akhir) over urutan <= 0
	    THEN round(100,2)
      WHEN rank = 1
	    THEN 0
  ELSE
      0
  END

     > 25
         THEN 50


     WHEN

  CASE WHEN rank > 1 AND lag(nilai_buku_akhir) over urutan > 0
	    THEN round (100 * (harga / lag(nilai_buku_akhir) over urutan),2)
      WHEN rank > 1 AND lag(nilai_buku_akhir) over urutan <= 0
	    THEN round(100,2)
      WHEN rank = 1
	    THEN 0
  ELSE
      0
  END

     > 0
         THEN 25
ELSE
         0
END as persentasi,

masa_manfaat,
penambahan_umur,
umur_awal,
sisa_umur,
nilai_buku_awal,
penyusutan,
nilai_buku_akhir
 from
view_penyusutan_pm_2016_e26
 Window
urutan as (partition by register order by rank)


order by register, rank;





DROP view if exists view_penyusutan_pm_2016_e28 CASCADE;

create view view_penyusutan_pm_2016_e28 as

select register,
nama_skpd,
id_skpd,
nama_lokasi_bidang,
id_lokasi_bidang,
nama_kabupaten,
id_kabupaten,
nama_provinsi,
id_provinsi,
id_mutasi_berkurang,
mutasi_berkurang,
keadaan_barang,
nama_barang,

harga,
nilai_perolehan,
tahun,
view_penyusutan_pm_2016_e27.kode_barang,
kode_umur,
rank,
tahun_akhir,
persen_awal,

persentasi,

masa_manfaat,
CASE WHEN rank > 1
          THEN penambahan_umur.umur
     WHEN rank = 1
	  THEN 0
ELSE
     0
END as penambahan_umur,


umur_awal,
sisa_umur,
nilai_buku_awal,
penyusutan,
nilai_buku_akhir


 from
view_penyusutan_pm_2016_e27, penambahan_umur

where
view_penyusutan_pm_2016_e27.kode_umur = penambahan_umur.kode_barang AND
view_penyusutan_pm_2016_e27.persentasi = penambahan_umur.persen

order by register, rank;




DROP view if exists view_penyusutan_pm_2016_e29 CASCADE;

create view view_penyusutan_pm_2016_e29 as

select register,
nama_skpd,
id_skpd,
nama_lokasi_bidang,
id_lokasi_bidang,
nama_kabupaten,
id_kabupaten,
nama_provinsi,
id_provinsi,
id_mutasi_berkurang,
mutasi_berkurang,
keadaan_barang,
nama_barang,

harga,
nilai_perolehan,
tahun,
kode_barang,
kode_umur,
rank,
tahun_akhir,
persen_awal,

persentasi,

masa_manfaat,
penambahan_umur,

CASE WHEN rank > 1 AND lag(sisa_umur,1,0) over urutan + penambahan_umur >= masa_manfaat
          THEN masa_manfaat
     WHEN rank = 1
	  THEN masa_manfaat
ELSE
     lag(sisa_umur,1,0) over urutan + penambahan_umur
END as umur_awal,

CASE WHEN rank > 1 AND lag(sisa_umur,1,0) over urutan + penambahan_umur - (tahun_akhir - tahun) > 0
          AND lag(sisa_umur,1,0) over urutan + penambahan_umur < masa_manfaat
          THEN lag(sisa_umur,1,0) over urutan + penambahan_umur - (tahun_akhir - tahun)

     WHEN rank > 1 AND lag(sisa_umur,1,0) over urutan + penambahan_umur - (tahun_akhir - tahun) > 0
          AND lag(sisa_umur,1,0) over urutan + penambahan_umur >= masa_manfaat
          AND masa_manfaat - (tahun_akhir - tahun) > 0
          THEN masa_manfaat - (tahun_akhir - tahun)

     WHEN rank = 1 AND masa_manfaat - (tahun_akhir - tahun) > 0
	  THEN masa_manfaat - (tahun_akhir - tahun)
ELSE
    0
END as sisa_umur,



COALESCE(lag(nilai_buku_akhir) over urutan, 0) + harga as nilai_buku_awal,



CASE WHEN (tahun_akhir - tahun) <

     CASE WHEN rank > 1 AND lag(sisa_umur,1,0) over urutan + penambahan_umur >= masa_manfaat
          THEN masa_manfaat
     WHEN rank = 1
	  THEN masa_manfaat
     ELSE
     lag(sisa_umur,1,0) over urutan + penambahan_umur
     END


     THEN round((tahun_akhir - tahun) * (COALESCE(lag(nilai_buku_akhir) over urutan, 0) + harga) /

     (CASE WHEN rank > 1 AND lag(sisa_umur,1,0) over urutan + penambahan_umur >= masa_manfaat
          THEN masa_manfaat
     WHEN rank = 1
	  THEN masa_manfaat
     ELSE
     lag(sisa_umur,1,0) over urutan + penambahan_umur
     END),

     0)
ELSE
     COALESCE(lag(nilai_buku_akhir) over urutan, 0) + harga
END as penyusutan,

CASE WHEN (tahun_akhir - tahun) <

     CASE WHEN rank > 1 AND lag(sisa_umur,1,0) over urutan + penambahan_umur >= masa_manfaat
          THEN masa_manfaat
     WHEN rank = 1
	  THEN masa_manfaat
     ELSE
     lag(sisa_umur,1,0) over urutan + penambahan_umur
     END


     THEN (COALESCE(lag(nilai_buku_akhir) over urutan, 0) + harga) -
     (round((tahun_akhir - tahun) * (COALESCE(lag(nilai_buku_akhir) over urutan, 0) + harga) /

     (CASE WHEN rank > 1 AND lag(sisa_umur,1,0) over urutan + penambahan_umur >= masa_manfaat
          THEN masa_manfaat
     WHEN rank = 1
	  THEN masa_manfaat
     ELSE
     lag(sisa_umur,1,0) over urutan + penambahan_umur
     END),

     0))
ELSE
     (COALESCE(lag(nilai_buku_akhir) over urutan, 0) + harga) - (COALESCE(lag(nilai_buku_akhir) over urutan, 0) + harga)
END as nilai_buku_akhir


 from
view_penyusutan_pm_2016_e28
 Window
urutan as (partition by register order by rank)

order by register, rank;



-- kunci angka baris ke 10
DROP view if exists view_penyusutan_gb_2016_a3 CASCADE;

create view view_penyusutan_gb_2016_a3 as

select register,
nama_skpd,
id_skpd,
nama_lokasi_bidang,
id_lokasi_bidang,
nama_kabupaten,
id_kabupaten,
nama_provinsi,
id_provinsi,
id_mutasi_berkurang,
mutasi_berkurang,
keadaan_barang,
nama_barang,

harga,
nilai_perolehan,
sum(harga) over (partition by register) as harga_total,
tahun,
kode_barang,
kode_umur,
rank,
tahun_akhir - 1 as tahun_akhir,
persen_awal,

persentasi,

masa_manfaat,
penambahan_umur,


umur_awal,
sisa_umur,
nilai_buku_awal,
penyusutan,
nilai_buku_akhir


 from
view_penyusutan_gb_2016_e29


order by register, rank;

GRANT ALL PRIVILEGES ON view_penyusutan_gb_2016_a3 TO lap_kabupaten;
REVOKE INSERT, UPDATE, DELETE ON view_penyusutan_gb_2016_a3 FROM lap_kabupaten;
DROP view if exists view_penyusutan_jij_2016_a3 CASCADE;

create view view_penyusutan_jij_2016_a3 as

select register,
nama_skpd,
id_skpd,
nama_lokasi_bidang,
id_lokasi_bidang,
nama_kabupaten,
id_kabupaten,
nama_provinsi,
id_provinsi,
id_mutasi_berkurang,
mutasi_berkurang,
keadaan_barang,
nama_barang,

harga,
nilai_perolehan,
sum(harga) over (partition by register) as harga_total,
tahun,
kode_barang,
kode_umur,
rank,
tahun_akhir - 1 as tahun_akhir,
persen_awal,

persentasi,

masa_manfaat,
penambahan_umur,


umur_awal,
sisa_umur,
nilai_buku_awal,
penyusutan,
nilai_buku_akhir


 from
view_penyusutan_jij_2016_e32


order by register, rank;

GRANT ALL PRIVILEGES ON view_penyusutan_jij_2016_a3 TO lap_kabupaten;
REVOKE INSERT, UPDATE, DELETE ON view_penyusutan_jij_2016_a3 FROM lap_kabupaten;
DROP view if exists view_penyusutan_pm_2016_a3 CASCADE;

create view view_penyusutan_pm_2016_a3 as

select register,
nama_skpd,
id_skpd,
nama_lokasi_bidang,
id_lokasi_bidang,
nama_kabupaten,
id_kabupaten,
nama_provinsi,
id_provinsi,
id_mutasi_berkurang,
mutasi_berkurang,
keadaan_barang,
nama_barang,

harga,
nilai_perolehan,
sum(harga) over (partition by register) as harga_total,
tahun,
kode_barang,
kode_umur,
rank,
tahun_akhir - 1 as tahun_akhir,
persen_awal,

persentasi,

masa_manfaat,
penambahan_umur,


umur_awal,
sisa_umur,
nilai_buku_awal,
penyusutan,
nilai_buku_akhir


 from
view_penyusutan_pm_2016_e5


order by register, rank;

GRANT ALL PRIVILEGES ON view_penyusutan_pm_2016_a3 TO lap_kabupaten;
REVOKE INSERT, UPDATE, DELETE ON view_penyusutan_pm_2016_a3 FROM lap_kabupaten;
DROP view if exists view_penyusutan_gb_2016_a4 CASCADE;

create view view_penyusutan_gb_2016_a4 as

select register,
nama_skpd,
id_skpd,
nama_lokasi_bidang,
id_lokasi_bidang,
nama_kabupaten,
id_kabupaten,
nama_provinsi,
id_provinsi,
id_mutasi_berkurang,
mutasi_berkurang,
keadaan_barang,
nama_barang,

kode_barang,
min(tahun) as tahun_awal,

sum(harga) as nilai_perolehan,
sum(penyusutan) as penyusutan,
sum(harga) - sum(penyusutan) as nilai_buku


 from
view_penyusutan_gb_2016_a3

GROUP BY
register,
nama_skpd,
id_skpd,
nama_lokasi_bidang,
id_lokasi_bidang,
nama_kabupaten,
id_kabupaten,
nama_provinsi,
id_provinsi,
id_mutasi_berkurang,
mutasi_berkurang,
keadaan_barang,
nama_barang,

kode_barang

order by register;

GRANT ALL PRIVILEGES ON view_penyusutan_gb_2016_a4 TO lap_kabupaten;
REVOKE INSERT, UPDATE, DELETE ON view_penyusutan_gb_2016_a4 FROM lap_kabupaten;
DROP view if exists view_penyusutan_jij_2016_a4 CASCADE;

create view view_penyusutan_jij_2016_a4 as

select register,
nama_skpd,
id_skpd,
nama_lokasi_bidang,
id_lokasi_bidang,
nama_kabupaten,
id_kabupaten,
nama_provinsi,
id_provinsi,
id_mutasi_berkurang,
mutasi_berkurang,
keadaan_barang,
nama_barang,

kode_barang,
min(tahun) as tahun_awal,

sum(harga) as nilai_perolehan,
sum(penyusutan) as penyusutan,
sum(harga) - sum(penyusutan) as nilai_buku


 from
view_penyusutan_jij_2016_a3

GROUP BY
register,
nama_skpd,
id_skpd,
nama_lokasi_bidang,
id_lokasi_bidang,
nama_kabupaten,
id_kabupaten,
nama_provinsi,
id_provinsi,
id_mutasi_berkurang,
mutasi_berkurang,
keadaan_barang,
nama_barang,

kode_barang

order by register;

GRANT ALL PRIVILEGES ON view_penyusutan_jij_2016_a4 TO lap_kabupaten;
REVOKE INSERT, UPDATE, DELETE ON view_penyusutan_jij_2016_a4 FROM lap_kabupaten;
DROP view if exists view_penyusutan_pm_2016_a4 CASCADE;

create view view_penyusutan_pm_2016_a4 as

select register,
nama_skpd,
id_skpd,
nama_lokasi_bidang,
id_lokasi_bidang,
nama_kabupaten,
id_kabupaten,
nama_provinsi,
id_provinsi,
id_mutasi_berkurang,
mutasi_berkurang,
keadaan_barang,
nama_barang,

kode_barang,
min(tahun) as tahun_awal,

sum(harga) as nilai_perolehan,
sum(penyusutan) as penyusutan,
sum(harga) - sum(penyusutan) as nilai_buku


 from
view_penyusutan_pm_2016_a3

GROUP BY
register,
nama_skpd,
id_skpd,
nama_lokasi_bidang,
id_lokasi_bidang,
nama_kabupaten,
id_kabupaten,
nama_provinsi,
id_provinsi,
id_mutasi_berkurang,
mutasi_berkurang,
keadaan_barang,
nama_barang,

kode_barang

order by register;

GRANT ALL PRIVILEGES ON view_penyusutan_pm_2016_a4 TO lap_kabupaten;
REVOKE INSERT, UPDATE, DELETE ON view_penyusutan_pm_2016_a4 FROM lap_kabupaten;
DROP view if exists view_beban_penyusutan_gb_2016_a1 CASCADE;

create view view_beban_penyusutan_gb_2016_a1 as


select register,
nama_skpd,
id_skpd,
nama_lokasi_bidang,
id_lokasi_bidang,
nama_kabupaten,
id_kabupaten,
nama_provinsi,
id_provinsi,
id_mutasi_berkurang,
mutasi_berkurang,
keadaan_barang,
nama_barang,

kode_barang,
tahun_awal,

nilai_perolehan as nilai_perolehan_sd_2015,
0 as nilai_perolehan_sd_2016,

nilai_buku as nilai_buku_sd_2015,
0 as nilai_buku_sd_2016


 from
view_penyusutan_gb_2015_a4


UNION ALL

select register,
nama_skpd,
id_skpd,
nama_lokasi_bidang,
id_lokasi_bidang,
nama_kabupaten,
id_kabupaten,
nama_provinsi,
id_provinsi,
id_mutasi_berkurang,
mutasi_berkurang,
keadaan_barang,
nama_barang,

kode_barang,
tahun_awal,

0 as nilai_perolehan_sd_2015,
nilai_perolehan as nilai_perolehan_sd_2016,

0 as nilai_buku_sd_2015,
nilai_buku as nilai_buku_sd_2016


 from
view_penyusutan_gb_2016_a4


order by register;



DROP view if exists view_beban_penyusutan_gb_2016_a2 CASCADE;

create view view_beban_penyusutan_gb_2016_a2 as


select register,
nama_skpd,
id_skpd,
nama_lokasi_bidang,
id_lokasi_bidang,
nama_kabupaten,
id_kabupaten,
nama_provinsi,
id_provinsi,
id_mutasi_berkurang,
mutasi_berkurang,
keadaan_barang,
nama_barang,

kode_barang,
min(tahun_awal) as tahun_awal,

sum(nilai_perolehan_sd_2015) as nilai_perolehan_sd_2015,
sum(nilai_perolehan_sd_2016) - sum(nilai_perolehan_sd_2015) as penambahan_nilai_di_2016,
sum(nilai_perolehan_sd_2016) as nilai_perolehan_sd_2016,


sum(nilai_buku_sd_2015) as nilai_buku_sd_2015,

sum(nilai_buku_sd_2015) +
(sum(nilai_perolehan_sd_2016) - sum(nilai_perolehan_sd_2015)) -
sum(nilai_buku_sd_2016) as beban_penyusutan_2016,

sum(nilai_buku_sd_2016) as nilai_buku_sd_2016


 from
view_beban_penyusutan_gb_2016_a1

GROUP BY
register,
nama_skpd,
id_skpd,
nama_lokasi_bidang,
id_lokasi_bidang,
nama_kabupaten,
id_kabupaten,
nama_provinsi,
id_provinsi,
id_mutasi_berkurang,
mutasi_berkurang,
keadaan_barang,
nama_barang,
kode_barang


order by register;

GRANT ALL PRIVILEGES ON view_beban_penyusutan_gb_2016_a2 TO lap_kabupaten;
REVOKE INSERT, UPDATE, DELETE ON view_beban_penyusutan_gb_2016_a2 FROM lap_kabupaten;
DROP view if exists view_beban_penyusutan_jij_2016_a1 CASCADE;

create view view_beban_penyusutan_jij_2016_a1 as


select register,
nama_skpd,
id_skpd,
nama_lokasi_bidang,
id_lokasi_bidang,
nama_kabupaten,
id_kabupaten,
nama_provinsi,
id_provinsi,
id_mutasi_berkurang,
mutasi_berkurang,
keadaan_barang,
nama_barang,

kode_barang,
tahun_awal,

nilai_perolehan as nilai_perolehan_sd_2015,
0 as nilai_perolehan_sd_2016,

nilai_buku as nilai_buku_sd_2015,
0 as nilai_buku_sd_2016


 from
view_penyusutan_jij_2015_a4


UNION ALL

select register,
nama_skpd,
id_skpd,
nama_lokasi_bidang,
id_lokasi_bidang,
nama_kabupaten,
id_kabupaten,
nama_provinsi,
id_provinsi,
id_mutasi_berkurang,
mutasi_berkurang,
keadaan_barang,
nama_barang,

kode_barang,
tahun_awal,

0 as nilai_perolehan_sd_2015,
nilai_perolehan as nilai_perolehan_sd_2016,

0 as nilai_buku_sd_2015,
nilai_buku as nilai_buku_sd_2016


 from
view_penyusutan_jij_2016_a4


order by register;



DROP view if exists view_beban_penyusutan_jij_2016_a2 CASCADE;

create view view_beban_penyusutan_jij_2016_a2 as


select register,
nama_skpd,
id_skpd,
nama_lokasi_bidang,
id_lokasi_bidang,
nama_kabupaten,
id_kabupaten,
nama_provinsi,
id_provinsi,
id_mutasi_berkurang,
mutasi_berkurang,
keadaan_barang,
nama_barang,

kode_barang,
min(tahun_awal) as tahun_awal,

sum(nilai_perolehan_sd_2015) as nilai_perolehan_sd_2015,
sum(nilai_perolehan_sd_2016) - sum(nilai_perolehan_sd_2015) as penambahan_nilai_di_2016,
sum(nilai_perolehan_sd_2016) as nilai_perolehan_sd_2016,


sum(nilai_buku_sd_2015) as nilai_buku_sd_2015,

sum(nilai_buku_sd_2015) +
(sum(nilai_perolehan_sd_2016) - sum(nilai_perolehan_sd_2015)) -
sum(nilai_buku_sd_2016) as beban_penyusutan_2016,

sum(nilai_buku_sd_2016) as nilai_buku_sd_2016


 from
view_beban_penyusutan_jij_2016_a1

GROUP BY
register,
nama_skpd,
id_skpd,
nama_lokasi_bidang,
id_lokasi_bidang,
nama_kabupaten,
id_kabupaten,
nama_provinsi,
id_provinsi,
id_mutasi_berkurang,
mutasi_berkurang,
keadaan_barang,
nama_barang,
kode_barang


order by register;

GRANT ALL PRIVILEGES ON view_beban_penyusutan_jij_2016_a2 TO lap_kabupaten;
REVOKE INSERT, UPDATE, DELETE ON view_beban_penyusutan_jij_2016_a2 FROM lap_kabupaten;
DROP view if exists view_beban_penyusutan_pm_2016_a1 CASCADE;

create view view_beban_penyusutan_pm_2016_a1 as


select register,
nama_skpd,
id_skpd,
nama_lokasi_bidang,
id_lokasi_bidang,
nama_kabupaten,
id_kabupaten,
nama_provinsi,
id_provinsi,
id_mutasi_berkurang,
mutasi_berkurang,
keadaan_barang,
nama_barang,

kode_barang,
tahun_awal,

nilai_perolehan as nilai_perolehan_sd_2015,
0 as nilai_perolehan_sd_2016,

nilai_buku as nilai_buku_sd_2015,
0 as nilai_buku_sd_2016


 from
view_penyusutan_pm_2015_a4


UNION ALL

select register,
nama_skpd,
id_skpd,
nama_lokasi_bidang,
id_lokasi_bidang,
nama_kabupaten,
id_kabupaten,
nama_provinsi,
id_provinsi,
id_mutasi_berkurang,
mutasi_berkurang,
keadaan_barang,
nama_barang,

kode_barang,
tahun_awal,

0 as nilai_perolehan_sd_2015,
nilai_perolehan as nilai_perolehan_sd_2016,

0 as nilai_buku_sd_2015,
nilai_buku as nilai_buku_sd_2016


 from
view_penyusutan_pm_2016_a4


order by register;



DROP view if exists view_beban_penyusutan_pm_2016_a2 CASCADE;

create view view_beban_penyusutan_pm_2016_a2 as


select register,
nama_skpd,
id_skpd,
nama_lokasi_bidang,
id_lokasi_bidang,
nama_kabupaten,
id_kabupaten,
nama_provinsi,
id_provinsi,
id_mutasi_berkurang,
mutasi_berkurang,
keadaan_barang,
nama_barang,

kode_barang,
min(tahun_awal) as tahun_awal,

sum(nilai_perolehan_sd_2015) as nilai_perolehan_sd_2015,
sum(nilai_perolehan_sd_2016) - sum(nilai_perolehan_sd_2015) as penambahan_nilai_di_2016,
sum(nilai_perolehan_sd_2016) as nilai_perolehan_sd_2016,


sum(nilai_buku_sd_2015) as nilai_buku_sd_2015,

sum(nilai_buku_sd_2015) +
(sum(nilai_perolehan_sd_2016) - sum(nilai_perolehan_sd_2015)) -
sum(nilai_buku_sd_2016) as beban_penyusutan_2016,

sum(nilai_buku_sd_2016) as nilai_buku_sd_2016


 from
view_beban_penyusutan_pm_2016_a1

GROUP BY
register,
nama_skpd,
id_skpd,
nama_lokasi_bidang,
id_lokasi_bidang,
nama_kabupaten,
id_kabupaten,
nama_provinsi,
id_provinsi,
id_mutasi_berkurang,
mutasi_berkurang,
keadaan_barang,
nama_barang,
kode_barang


order by register;

GRANT ALL PRIVILEGES ON view_beban_penyusutan_pm_2016_a2 TO lap_kabupaten;
REVOKE INSERT, UPDATE, DELETE ON view_beban_penyusutan_pm_2016_a2 FROM lap_kabupaten;
