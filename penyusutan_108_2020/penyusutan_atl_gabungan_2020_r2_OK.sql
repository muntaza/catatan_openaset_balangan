DROP VIEW IF EXISTS view_penyusutan_108_atl_2020_r2_a1 CASCADE;


CREATE VIEW view_penyusutan_108_atl_2020_r2_a1 AS



SELECT * FROM

(SELECT
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
atl.id_golongan_barang,

atl.nama_barang,
LEFT(kode_barang_108.kode_barang_108, 18) kode_barang_108,
LEFT(kode_barang_108.kode_barang_108, 8) kode_l2,
atl.id register,

harga_atl.tahun,
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
harga_atl.tahun <= 2020 AND

atl.id_kode_barang_108 = kode_barang_108.id AND
atl.id_mutasi_berkurang = mutasi_berkurang.id AND

atl.id_keadaan_barang = keadaan_barang.id AND
atl.id_satuan_barang = satuan_barang.id AND
atl.id_golongan_barang = golongan_barang.id AND

golongan_barang.id = 5 AND

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
atl.id_golongan_barang,
atl.nama_barang,

kode_barang_108,
kode_l2,
register,

harga_atl.tahun,
atl.keterangan) AS QUERY_PERALATAN_MESIN



;


GRANT ALL PRIVILEGES ON view_penyusutan_108_atl_2020_r2_a1 TO lap_kabupaten;
REVOKE INSERT, UPDATE, DELETE ON view_penyusutan_108_atl_2020_r2_a1 FROM lap_kabupaten;
DROP view if exists view_penyusutan_108_atl_2020_r2_e2 CASCADE;

create view view_penyusutan_108_atl_2020_r2_e2 as select
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
view_penyusutan_108_atl_2020_r2_a1.kode_barang_108,
left(view_penyusutan_108_atl_2020_r2_a1.kode_barang_108, 11) as kode_umur,
rank() over (partition by register order by tahun asc) as rank,
lead(tahun, 1, 2021) over (partition by register order by tahun asc) as tahun_akhir,
umur as masa_manfaat,
0 as penambahan_umur,
umur as umur_awal,

CASE WHEN ((lead(tahun, 1, 2021) over (partition by register order by tahun asc)) - tahun) < umur
     THEN umur - ((lead(tahun, 1, 2021) over (partition by register order by tahun asc)) - tahun)
ELSE
     0
END as sisa_umur,

harga as nilai_buku_awal,

CASE WHEN ((lead(tahun, 1, 2021) over (partition by register order by tahun asc)) - tahun) < umur
     THEN round(((lead(tahun, 1, 2021) over (partition by register order by tahun asc)) - tahun) * harga / umur, 0)
ELSE
     harga
END as penyusutan,

CASE WHEN ((lead(tahun, 1, 2021) over (partition by register order by tahun asc)) - tahun) < umur
    THEN harga - (round(((lead(tahun, 1, 2021) over (partition by register order by tahun asc)) - tahun) * harga / umur, 0))
ELSE
     0
END as nilai_buku_akhir

from view_penyusutan_108_atl_2020_r2_a1, kode_barang_108

where view_penyusutan_108_atl_2020_r2_a1.kode_barang_108 = left(kode_barang_108.kode_barang_108, 18)

order by register, rank;


-- cek umur barang, apakah lebih dari umur ekonomis
-- bila lebih, berarti disusutkan seluruh nilainya.
-- kunci angka untuk baris pertama



DROP view if exists view_penyusutan_108_atl_2020_r2_e3 CASCADE;

create view view_penyusutan_108_atl_2020_r2_e3 as

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
view_penyusutan_108_atl_2020_r2_e2.kode_barang_108,
kode_umur,
rank,
tahun_akhir,


CASE WHEN rank > 1 AND lag(nilai_perolehan) over urutan > 0
          THEN round (100 * (harga / lag(nilai_perolehan) over urutan),2)
     WHEN rank > 1 AND lag(nilai_perolehan) over urutan <= 0
          THEN round(100,2)
     WHEN rank = 1
	  THEN 0
ELSE
     0
END as persen_awal,




CASE WHEN

  CASE WHEN rank > 1 AND lag(nilai_perolehan) over urutan > 0
	    THEN round (100 * (harga / lag(nilai_perolehan) over urutan),2)
      WHEN rank > 1 AND lag(nilai_perolehan) over urutan <= 0
	    THEN round(100,2)
      WHEN rank = 1
	    THEN 0
  ELSE
      0
  END

     > 75
     THEN 100


     WHEN

  CASE WHEN rank > 1 AND lag(nilai_perolehan) over urutan > 0
	    THEN round (100 * (harga / lag(nilai_perolehan) over urutan),2)
      WHEN rank > 1 AND lag(nilai_perolehan) over urutan <= 0
	    THEN round(100,2)
      WHEN rank = 1
	    THEN 0
  ELSE
      0
  END

     > 50
         THEN 75


     WHEN

  CASE WHEN rank > 1 AND lag(nilai_perolehan) over urutan > 0
	    THEN round (100 * (harga / lag(nilai_perolehan) over urutan),2)
      WHEN rank > 1 AND lag(nilai_perolehan) over urutan <= 0
	    THEN round(100,2)
      WHEN rank = 1
	    THEN 0
  ELSE
      0
  END

     > 25
         THEN 50


     WHEN

  CASE WHEN rank > 1 AND lag(nilai_perolehan) over urutan > 0
	    THEN round (100 * (harga / lag(nilai_perolehan) over urutan),2)
      WHEN rank > 1 AND lag(nilai_perolehan) over urutan <= 0
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
view_penyusutan_108_atl_2020_r2_e2
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
-- persentasi =  view_penambahan_umur_108.persen, tetapi
--  view_penambahan_umur_108.persen > 75 (tidak tahu kenapa)



DROP view if exists view_penyusutan_108_atl_2020_r2_e4 CASCADE;

create view view_penyusutan_108_atl_2020_r2_e4 as

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
view_penyusutan_108_atl_2020_r2_e3.kode_barang_108,
kode_umur,
rank,
tahun_akhir,
persen_awal,

persentasi,

masa_manfaat,
CASE WHEN rank > 1
          THEN view_penambahan_umur_108.umur
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
view_penyusutan_108_atl_2020_r2_e3, view_penambahan_umur_108

where
view_penyusutan_108_atl_2020_r2_e3.kode_umur = view_penambahan_umur_108.kode_kelompok_barang AND
view_penyusutan_108_atl_2020_r2_e3.persentasi =  view_penambahan_umur_108.persen

order by register, rank;




DROP view if exists view_penyusutan_108_atl_2020_r2_e5 CASCADE;

create view view_penyusutan_108_atl_2020_r2_e5 as

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
kode_barang_108,
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
view_penyusutan_108_atl_2020_r2_e4
 Window
urutan as (partition by register order by rank)

order by register, rank;




-------kunci angka baris ke 2

DROP view if exists view_penyusutan_108_atl_2020_r2_e6 CASCADE;

create view view_penyusutan_108_atl_2020_r2_e6 as

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
view_penyusutan_108_atl_2020_r2_e5.kode_barang_108,
kode_umur,
rank,
tahun_akhir,


CASE WHEN rank > 1 AND lag(nilai_perolehan) over urutan > 0
          THEN round (100 * (harga / lag(nilai_perolehan) over urutan),2)
     WHEN rank > 1 AND lag(nilai_perolehan) over urutan <= 0
          THEN round(100,2)
     WHEN rank = 1
	  THEN 0
ELSE
     0
END as persen_awal,




CASE WHEN

  CASE WHEN rank > 1 AND lag(nilai_perolehan) over urutan > 0
	    THEN round (100 * (harga / lag(nilai_perolehan) over urutan),2)
      WHEN rank > 1 AND lag(nilai_perolehan) over urutan <= 0
	    THEN round(100,2)
      WHEN rank = 1
	    THEN 0
  ELSE
      0
  END

     > 75
     THEN 100


     WHEN

  CASE WHEN rank > 1 AND lag(nilai_perolehan) over urutan > 0
	    THEN round (100 * (harga / lag(nilai_perolehan) over urutan),2)
      WHEN rank > 1 AND lag(nilai_perolehan) over urutan <= 0
	    THEN round(100,2)
      WHEN rank = 1
	    THEN 0
  ELSE
      0
  END

     > 50
         THEN 75


     WHEN

  CASE WHEN rank > 1 AND lag(nilai_perolehan) over urutan > 0
	    THEN round (100 * (harga / lag(nilai_perolehan) over urutan),2)
      WHEN rank > 1 AND lag(nilai_perolehan) over urutan <= 0
	    THEN round(100,2)
      WHEN rank = 1
	    THEN 0
  ELSE
      0
  END

     > 25
         THEN 50


     WHEN

  CASE WHEN rank > 1 AND lag(nilai_perolehan) over urutan > 0
	    THEN round (100 * (harga / lag(nilai_perolehan) over urutan),2)
      WHEN rank > 1 AND lag(nilai_perolehan) over urutan <= 0
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
view_penyusutan_108_atl_2020_r2_e5
 Window
urutan as (partition by register order by rank)


order by register, rank;





DROP view if exists view_penyusutan_108_atl_2020_r2_e7 CASCADE;

create view view_penyusutan_108_atl_2020_r2_e7 as

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
view_penyusutan_108_atl_2020_r2_e6.kode_barang_108,
kode_umur,
rank,
tahun_akhir,
persen_awal,

persentasi,

masa_manfaat,
CASE WHEN rank > 1
          THEN view_penambahan_umur_108.umur
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
view_penyusutan_108_atl_2020_r2_e6, view_penambahan_umur_108

where
view_penyusutan_108_atl_2020_r2_e6.kode_umur = view_penambahan_umur_108.kode_kelompok_barang AND
view_penyusutan_108_atl_2020_r2_e6.persentasi =  view_penambahan_umur_108.persen

order by register, rank;




DROP view if exists view_penyusutan_108_atl_2020_r2_e8 CASCADE;

create view view_penyusutan_108_atl_2020_r2_e8 as

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
kode_barang_108,
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
view_penyusutan_108_atl_2020_r2_e7
 Window
urutan as (partition by register order by rank)

order by register, rank;



-- kunci angka baris ke 3




DROP view if exists view_penyusutan_108_atl_2020_r2_e9 CASCADE;

create view view_penyusutan_108_atl_2020_r2_e9 as

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
view_penyusutan_108_atl_2020_r2_e8.kode_barang_108,
kode_umur,
rank,
tahun_akhir,


CASE WHEN rank > 1 AND lag(nilai_perolehan) over urutan > 0
          THEN round (100 * (harga / lag(nilai_perolehan) over urutan),2)
     WHEN rank > 1 AND lag(nilai_perolehan) over urutan <= 0
          THEN round(100,2)
     WHEN rank = 1
	  THEN 0
ELSE
     0
END as persen_awal,




CASE WHEN

  CASE WHEN rank > 1 AND lag(nilai_perolehan) over urutan > 0
	    THEN round (100 * (harga / lag(nilai_perolehan) over urutan),2)
      WHEN rank > 1 AND lag(nilai_perolehan) over urutan <= 0
	    THEN round(100,2)
      WHEN rank = 1
	    THEN 0
  ELSE
      0
  END

     > 75
     THEN 100


     WHEN

  CASE WHEN rank > 1 AND lag(nilai_perolehan) over urutan > 0
	    THEN round (100 * (harga / lag(nilai_perolehan) over urutan),2)
      WHEN rank > 1 AND lag(nilai_perolehan) over urutan <= 0
	    THEN round(100,2)
      WHEN rank = 1
	    THEN 0
  ELSE
      0
  END

     > 50
         THEN 75


     WHEN

  CASE WHEN rank > 1 AND lag(nilai_perolehan) over urutan > 0
	    THEN round (100 * (harga / lag(nilai_perolehan) over urutan),2)
      WHEN rank > 1 AND lag(nilai_perolehan) over urutan <= 0
	    THEN round(100,2)
      WHEN rank = 1
	    THEN 0
  ELSE
      0
  END

     > 25
         THEN 50


     WHEN

  CASE WHEN rank > 1 AND lag(nilai_perolehan) over urutan > 0
	    THEN round (100 * (harga / lag(nilai_perolehan) over urutan),2)
      WHEN rank > 1 AND lag(nilai_perolehan) over urutan <= 0
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
view_penyusutan_108_atl_2020_r2_e8
 Window
urutan as (partition by register order by rank)


order by register, rank;





DROP view if exists view_penyusutan_108_atl_2020_r2_e10 CASCADE;

create view view_penyusutan_108_atl_2020_r2_e10 as

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
view_penyusutan_108_atl_2020_r2_e9.kode_barang_108,
kode_umur,
rank,
tahun_akhir,
persen_awal,

persentasi,

masa_manfaat,
CASE WHEN rank > 1
          THEN view_penambahan_umur_108.umur
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
view_penyusutan_108_atl_2020_r2_e9, view_penambahan_umur_108

where
view_penyusutan_108_atl_2020_r2_e9.kode_umur = view_penambahan_umur_108.kode_kelompok_barang AND
view_penyusutan_108_atl_2020_r2_e9.persentasi =  view_penambahan_umur_108.persen

order by register, rank;




DROP view if exists view_penyusutan_108_atl_2020_r2_e11 CASCADE;

create view view_penyusutan_108_atl_2020_r2_e11 as

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
kode_barang_108,
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
view_penyusutan_108_atl_2020_r2_e10
 Window
urutan as (partition by register order by rank)

order by register, rank;



-- kunci angka baris ke 4



DROP view if exists view_penyusutan_108_atl_2020_r2_e12 CASCADE;

create view view_penyusutan_108_atl_2020_r2_e12 as

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
view_penyusutan_108_atl_2020_r2_e11.kode_barang_108,
kode_umur,
rank,
tahun_akhir,


CASE WHEN rank > 1 AND lag(nilai_perolehan) over urutan > 0
          THEN round (100 * (harga / lag(nilai_perolehan) over urutan),2)
     WHEN rank > 1 AND lag(nilai_perolehan) over urutan <= 0
          THEN round(100,2)
     WHEN rank = 1
	  THEN 0
ELSE
     0
END as persen_awal,




CASE WHEN

  CASE WHEN rank > 1 AND lag(nilai_perolehan) over urutan > 0
	    THEN round (100 * (harga / lag(nilai_perolehan) over urutan),2)
      WHEN rank > 1 AND lag(nilai_perolehan) over urutan <= 0
	    THEN round(100,2)
      WHEN rank = 1
	    THEN 0
  ELSE
      0
  END

     > 75
     THEN 100


     WHEN

  CASE WHEN rank > 1 AND lag(nilai_perolehan) over urutan > 0
	    THEN round (100 * (harga / lag(nilai_perolehan) over urutan),2)
      WHEN rank > 1 AND lag(nilai_perolehan) over urutan <= 0
	    THEN round(100,2)
      WHEN rank = 1
	    THEN 0
  ELSE
      0
  END

     > 50
         THEN 75


     WHEN

  CASE WHEN rank > 1 AND lag(nilai_perolehan) over urutan > 0
	    THEN round (100 * (harga / lag(nilai_perolehan) over urutan),2)
      WHEN rank > 1 AND lag(nilai_perolehan) over urutan <= 0
	    THEN round(100,2)
      WHEN rank = 1
	    THEN 0
  ELSE
      0
  END

     > 25
         THEN 50


     WHEN

  CASE WHEN rank > 1 AND lag(nilai_perolehan) over urutan > 0
	    THEN round (100 * (harga / lag(nilai_perolehan) over urutan),2)
      WHEN rank > 1 AND lag(nilai_perolehan) over urutan <= 0
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
view_penyusutan_108_atl_2020_r2_e11
 Window
urutan as (partition by register order by rank)


order by register, rank;





DROP view if exists view_penyusutan_108_atl_2020_r2_e13 CASCADE;

create view view_penyusutan_108_atl_2020_r2_e13 as

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
view_penyusutan_108_atl_2020_r2_e12.kode_barang_108,
kode_umur,
rank,
tahun_akhir,
persen_awal,

persentasi,

masa_manfaat,
CASE WHEN rank > 1
          THEN view_penambahan_umur_108.umur
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
view_penyusutan_108_atl_2020_r2_e12, view_penambahan_umur_108

where
view_penyusutan_108_atl_2020_r2_e12.kode_umur = view_penambahan_umur_108.kode_kelompok_barang AND
view_penyusutan_108_atl_2020_r2_e12.persentasi =  view_penambahan_umur_108.persen

order by register, rank;




DROP view if exists view_penyusutan_108_atl_2020_r2_e14 CASCADE;

create view view_penyusutan_108_atl_2020_r2_e14 as

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
kode_barang_108,
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
view_penyusutan_108_atl_2020_r2_e13
 Window
urutan as (partition by register order by rank)

order by register, rank;



-- kunci angka baris ke 5




DROP view if exists view_penyusutan_108_atl_2020_r2_e15 CASCADE;

create view view_penyusutan_108_atl_2020_r2_e15 as

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
view_penyusutan_108_atl_2020_r2_e14.kode_barang_108,
kode_umur,
rank,
tahun_akhir,


CASE WHEN rank > 1 AND lag(nilai_perolehan) over urutan > 0
          THEN round (100 * (harga / lag(nilai_perolehan) over urutan),2)
     WHEN rank > 1 AND lag(nilai_perolehan) over urutan <= 0
          THEN round(100,2)
     WHEN rank = 1
	  THEN 0
ELSE
     0
END as persen_awal,




CASE WHEN

  CASE WHEN rank > 1 AND lag(nilai_perolehan) over urutan > 0
	    THEN round (100 * (harga / lag(nilai_perolehan) over urutan),2)
      WHEN rank > 1 AND lag(nilai_perolehan) over urutan <= 0
	    THEN round(100,2)
      WHEN rank = 1
	    THEN 0
  ELSE
      0
  END

     > 75
     THEN 100


     WHEN

  CASE WHEN rank > 1 AND lag(nilai_perolehan) over urutan > 0
	    THEN round (100 * (harga / lag(nilai_perolehan) over urutan),2)
      WHEN rank > 1 AND lag(nilai_perolehan) over urutan <= 0
	    THEN round(100,2)
      WHEN rank = 1
	    THEN 0
  ELSE
      0
  END

     > 50
         THEN 75


     WHEN

  CASE WHEN rank > 1 AND lag(nilai_perolehan) over urutan > 0
	    THEN round (100 * (harga / lag(nilai_perolehan) over urutan),2)
      WHEN rank > 1 AND lag(nilai_perolehan) over urutan <= 0
	    THEN round(100,2)
      WHEN rank = 1
	    THEN 0
  ELSE
      0
  END

     > 25
         THEN 50


     WHEN

  CASE WHEN rank > 1 AND lag(nilai_perolehan) over urutan > 0
	    THEN round (100 * (harga / lag(nilai_perolehan) over urutan),2)
      WHEN rank > 1 AND lag(nilai_perolehan) over urutan <= 0
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
view_penyusutan_108_atl_2020_r2_e14
 Window
urutan as (partition by register order by rank)


order by register, rank;





DROP view if exists view_penyusutan_108_atl_2020_r2_e16 CASCADE;

create view view_penyusutan_108_atl_2020_r2_e16 as

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
view_penyusutan_108_atl_2020_r2_e15.kode_barang_108,
kode_umur,
rank,
tahun_akhir,
persen_awal,

persentasi,

masa_manfaat,
CASE WHEN rank > 1
          THEN view_penambahan_umur_108.umur
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
view_penyusutan_108_atl_2020_r2_e15, view_penambahan_umur_108

where
view_penyusutan_108_atl_2020_r2_e15.kode_umur = view_penambahan_umur_108.kode_kelompok_barang AND
view_penyusutan_108_atl_2020_r2_e15.persentasi =  view_penambahan_umur_108.persen

order by register, rank;




DROP view if exists view_penyusutan_108_atl_2020_r2_e17 CASCADE;

create view view_penyusutan_108_atl_2020_r2_e17 as

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
kode_barang_108,
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
view_penyusutan_108_atl_2020_r2_e16
 Window
urutan as (partition by register order by rank)

order by register, rank;



-- kunci angka baris ke 6





DROP view if exists view_penyusutan_108_atl_2020_r2_e18 CASCADE;

create view view_penyusutan_108_atl_2020_r2_e18 as

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
view_penyusutan_108_atl_2020_r2_e17.kode_barang_108,
kode_umur,
rank,
tahun_akhir,


CASE WHEN rank > 1 AND lag(nilai_perolehan) over urutan > 0
          THEN round (100 * (harga / lag(nilai_perolehan) over urutan),2)
     WHEN rank > 1 AND lag(nilai_perolehan) over urutan <= 0
          THEN round(100,2)
     WHEN rank = 1
	  THEN 0
ELSE
     0
END as persen_awal,




CASE WHEN

  CASE WHEN rank > 1 AND lag(nilai_perolehan) over urutan > 0
	    THEN round (100 * (harga / lag(nilai_perolehan) over urutan),2)
      WHEN rank > 1 AND lag(nilai_perolehan) over urutan <= 0
	    THEN round(100,2)
      WHEN rank = 1
	    THEN 0
  ELSE
      0
  END

     > 75
     THEN 100


     WHEN

  CASE WHEN rank > 1 AND lag(nilai_perolehan) over urutan > 0
	    THEN round (100 * (harga / lag(nilai_perolehan) over urutan),2)
      WHEN rank > 1 AND lag(nilai_perolehan) over urutan <= 0
	    THEN round(100,2)
      WHEN rank = 1
	    THEN 0
  ELSE
      0
  END

     > 50
         THEN 75


     WHEN

  CASE WHEN rank > 1 AND lag(nilai_perolehan) over urutan > 0
	    THEN round (100 * (harga / lag(nilai_perolehan) over urutan),2)
      WHEN rank > 1 AND lag(nilai_perolehan) over urutan <= 0
	    THEN round(100,2)
      WHEN rank = 1
	    THEN 0
  ELSE
      0
  END

     > 25
         THEN 50


     WHEN

  CASE WHEN rank > 1 AND lag(nilai_perolehan) over urutan > 0
	    THEN round (100 * (harga / lag(nilai_perolehan) over urutan),2)
      WHEN rank > 1 AND lag(nilai_perolehan) over urutan <= 0
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
view_penyusutan_108_atl_2020_r2_e17
 Window
urutan as (partition by register order by rank)


order by register, rank;





DROP view if exists view_penyusutan_108_atl_2020_r2_e19 CASCADE;

create view view_penyusutan_108_atl_2020_r2_e19 as

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
view_penyusutan_108_atl_2020_r2_e18.kode_barang_108,
kode_umur,
rank,
tahun_akhir,
persen_awal,

persentasi,

masa_manfaat,
CASE WHEN rank > 1
          THEN view_penambahan_umur_108.umur
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
view_penyusutan_108_atl_2020_r2_e18, view_penambahan_umur_108

where
view_penyusutan_108_atl_2020_r2_e18.kode_umur = view_penambahan_umur_108.kode_kelompok_barang AND
view_penyusutan_108_atl_2020_r2_e18.persentasi =  view_penambahan_umur_108.persen

order by register, rank;




DROP view if exists view_penyusutan_108_atl_2020_r2_e20 CASCADE;

create view view_penyusutan_108_atl_2020_r2_e20 as

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
kode_barang_108,
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
view_penyusutan_108_atl_2020_r2_e19
 Window
urutan as (partition by register order by rank)

order by register, rank;



-- kunci angka baris ke 7







DROP view if exists view_penyusutan_108_atl_2020_r2_e21 CASCADE;

create view view_penyusutan_108_atl_2020_r2_e21 as

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
view_penyusutan_108_atl_2020_r2_e20.kode_barang_108,
kode_umur,
rank,
tahun_akhir,


CASE WHEN rank > 1 AND lag(nilai_perolehan) over urutan > 0
          THEN round (100 * (harga / lag(nilai_perolehan) over urutan),2)
     WHEN rank > 1 AND lag(nilai_perolehan) over urutan <= 0
          THEN round(100,2)
     WHEN rank = 1
	  THEN 0
ELSE
     0
END as persen_awal,




CASE WHEN

  CASE WHEN rank > 1 AND lag(nilai_perolehan) over urutan > 0
	    THEN round (100 * (harga / lag(nilai_perolehan) over urutan),2)
      WHEN rank > 1 AND lag(nilai_perolehan) over urutan <= 0
	    THEN round(100,2)
      WHEN rank = 1
	    THEN 0
  ELSE
      0
  END

     > 75
     THEN 100


     WHEN

  CASE WHEN rank > 1 AND lag(nilai_perolehan) over urutan > 0
	    THEN round (100 * (harga / lag(nilai_perolehan) over urutan),2)
      WHEN rank > 1 AND lag(nilai_perolehan) over urutan <= 0
	    THEN round(100,2)
      WHEN rank = 1
	    THEN 0
  ELSE
      0
  END

     > 50
         THEN 75


     WHEN

  CASE WHEN rank > 1 AND lag(nilai_perolehan) over urutan > 0
	    THEN round (100 * (harga / lag(nilai_perolehan) over urutan),2)
      WHEN rank > 1 AND lag(nilai_perolehan) over urutan <= 0
	    THEN round(100,2)
      WHEN rank = 1
	    THEN 0
  ELSE
      0
  END

     > 25
         THEN 50


     WHEN

  CASE WHEN rank > 1 AND lag(nilai_perolehan) over urutan > 0
	    THEN round (100 * (harga / lag(nilai_perolehan) over urutan),2)
      WHEN rank > 1 AND lag(nilai_perolehan) over urutan <= 0
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
view_penyusutan_108_atl_2020_r2_e20
 Window
urutan as (partition by register order by rank)


order by register, rank;





DROP view if exists view_penyusutan_108_atl_2020_r2_e22 CASCADE;

create view view_penyusutan_108_atl_2020_r2_e22 as

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
view_penyusutan_108_atl_2020_r2_e21.kode_barang_108,
kode_umur,
rank,
tahun_akhir,
persen_awal,

persentasi,

masa_manfaat,
CASE WHEN rank > 1
          THEN view_penambahan_umur_108.umur
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
view_penyusutan_108_atl_2020_r2_e21, view_penambahan_umur_108

where
view_penyusutan_108_atl_2020_r2_e21.kode_umur = view_penambahan_umur_108.kode_kelompok_barang AND
view_penyusutan_108_atl_2020_r2_e21.persentasi =  view_penambahan_umur_108.persen

order by register, rank;




DROP view if exists view_penyusutan_108_atl_2020_r2_e23 CASCADE;

create view view_penyusutan_108_atl_2020_r2_e23 as

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
kode_barang_108,
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
view_penyusutan_108_atl_2020_r2_e22
 Window
urutan as (partition by register order by rank)

order by register, rank;



-- kunci angka baris ke 8






DROP view if exists view_penyusutan_108_atl_2020_r2_e24 CASCADE;

create view view_penyusutan_108_atl_2020_r2_e24 as

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
view_penyusutan_108_atl_2020_r2_e23.kode_barang_108,
kode_umur,
rank,
tahun_akhir,


CASE WHEN rank > 1 AND lag(nilai_perolehan) over urutan > 0
          THEN round (100 * (harga / lag(nilai_perolehan) over urutan),2)
     WHEN rank > 1 AND lag(nilai_perolehan) over urutan <= 0
          THEN round(100,2)
     WHEN rank = 1
	  THEN 0
ELSE
     0
END as persen_awal,




CASE WHEN

  CASE WHEN rank > 1 AND lag(nilai_perolehan) over urutan > 0
	    THEN round (100 * (harga / lag(nilai_perolehan) over urutan),2)
      WHEN rank > 1 AND lag(nilai_perolehan) over urutan <= 0
	    THEN round(100,2)
      WHEN rank = 1
	    THEN 0
  ELSE
      0
  END

     > 75
     THEN 100


     WHEN

  CASE WHEN rank > 1 AND lag(nilai_perolehan) over urutan > 0
	    THEN round (100 * (harga / lag(nilai_perolehan) over urutan),2)
      WHEN rank > 1 AND lag(nilai_perolehan) over urutan <= 0
	    THEN round(100,2)
      WHEN rank = 1
	    THEN 0
  ELSE
      0
  END

     > 50
         THEN 75


     WHEN

  CASE WHEN rank > 1 AND lag(nilai_perolehan) over urutan > 0
	    THEN round (100 * (harga / lag(nilai_perolehan) over urutan),2)
      WHEN rank > 1 AND lag(nilai_perolehan) over urutan <= 0
	    THEN round(100,2)
      WHEN rank = 1
	    THEN 0
  ELSE
      0
  END

     > 25
         THEN 50


     WHEN

  CASE WHEN rank > 1 AND lag(nilai_perolehan) over urutan > 0
	    THEN round (100 * (harga / lag(nilai_perolehan) over urutan),2)
      WHEN rank > 1 AND lag(nilai_perolehan) over urutan <= 0
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
view_penyusutan_108_atl_2020_r2_e23
 Window
urutan as (partition by register order by rank)


order by register, rank;





DROP view if exists view_penyusutan_108_atl_2020_r2_e25 CASCADE;

create view view_penyusutan_108_atl_2020_r2_e25 as

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
view_penyusutan_108_atl_2020_r2_e24.kode_barang_108,
kode_umur,
rank,
tahun_akhir,
persen_awal,

persentasi,

masa_manfaat,
CASE WHEN rank > 1
          THEN view_penambahan_umur_108.umur
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
view_penyusutan_108_atl_2020_r2_e24, view_penambahan_umur_108

where
view_penyusutan_108_atl_2020_r2_e24.kode_umur = view_penambahan_umur_108.kode_kelompok_barang AND
view_penyusutan_108_atl_2020_r2_e24.persentasi =  view_penambahan_umur_108.persen

order by register, rank;




DROP view if exists view_penyusutan_108_atl_2020_r2_e26 CASCADE;

create view view_penyusutan_108_atl_2020_r2_e26 as

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
kode_barang_108,
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
view_penyusutan_108_atl_2020_r2_e25
 Window
urutan as (partition by register order by rank)

order by register, rank;



-- kunci angka baris ke 9




DROP view if exists view_penyusutan_108_atl_2020_r2_e27 CASCADE;

create view view_penyusutan_108_atl_2020_r2_e27 as

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
view_penyusutan_108_atl_2020_r2_e26.kode_barang_108,
kode_umur,
rank,
tahun_akhir,


CASE WHEN rank > 1 AND lag(nilai_perolehan) over urutan > 0
          THEN round (100 * (harga / lag(nilai_perolehan) over urutan),2)
     WHEN rank > 1 AND lag(nilai_perolehan) over urutan <= 0
          THEN round(100,2)
     WHEN rank = 1
	  THEN 0
ELSE
     0
END as persen_awal,




CASE WHEN

  CASE WHEN rank > 1 AND lag(nilai_perolehan) over urutan > 0
	    THEN round (100 * (harga / lag(nilai_perolehan) over urutan),2)
      WHEN rank > 1 AND lag(nilai_perolehan) over urutan <= 0
	    THEN round(100,2)
      WHEN rank = 1
	    THEN 0
  ELSE
      0
  END

     > 75
     THEN 100


     WHEN

  CASE WHEN rank > 1 AND lag(nilai_perolehan) over urutan > 0
	    THEN round (100 * (harga / lag(nilai_perolehan) over urutan),2)
      WHEN rank > 1 AND lag(nilai_perolehan) over urutan <= 0
	    THEN round(100,2)
      WHEN rank = 1
	    THEN 0
  ELSE
      0
  END

     > 50
         THEN 75


     WHEN

  CASE WHEN rank > 1 AND lag(nilai_perolehan) over urutan > 0
	    THEN round (100 * (harga / lag(nilai_perolehan) over urutan),2)
      WHEN rank > 1 AND lag(nilai_perolehan) over urutan <= 0
	    THEN round(100,2)
      WHEN rank = 1
	    THEN 0
  ELSE
      0
  END

     > 25
         THEN 50


     WHEN

  CASE WHEN rank > 1 AND lag(nilai_perolehan) over urutan > 0
	    THEN round (100 * (harga / lag(nilai_perolehan) over urutan),2)
      WHEN rank > 1 AND lag(nilai_perolehan) over urutan <= 0
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
view_penyusutan_108_atl_2020_r2_e26
 Window
urutan as (partition by register order by rank)


order by register, rank;





DROP view if exists view_penyusutan_108_atl_2020_r2_e28 CASCADE;

create view view_penyusutan_108_atl_2020_r2_e28 as

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
view_penyusutan_108_atl_2020_r2_e27.kode_barang_108,
kode_umur,
rank,
tahun_akhir,
persen_awal,

persentasi,

masa_manfaat,
CASE WHEN rank > 1
          THEN view_penambahan_umur_108.umur
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
view_penyusutan_108_atl_2020_r2_e27, view_penambahan_umur_108

where
view_penyusutan_108_atl_2020_r2_e27.kode_umur = view_penambahan_umur_108.kode_kelompok_barang AND
view_penyusutan_108_atl_2020_r2_e27.persentasi =  view_penambahan_umur_108.persen

order by register, rank;




DROP view if exists view_penyusutan_108_atl_2020_r2_e29 CASCADE;

create view view_penyusutan_108_atl_2020_r2_e29 as

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
kode_barang_108,
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
view_penyusutan_108_atl_2020_r2_e28
 Window
urutan as (partition by register order by rank)

order by register, rank;



-- kunci angka baris ke 10
DROP view if exists view_penyusutan_108_atl_2020_r2_a3 CASCADE;

create view view_penyusutan_108_atl_2020_r2_a3 as

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
kode_barang_108,
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
view_penyusutan_108_atl_2020_r2_e29


order by register, rank;

GRANT ALL PRIVILEGES ON view_penyusutan_108_atl_2020_r2_a3 TO lap_kabupaten;
REVOKE INSERT, UPDATE, DELETE ON view_penyusutan_108_atl_2020_r2_a3 FROM lap_kabupaten;
DROP view if exists view_penyusutan_108_atl_2020_r2_a4 CASCADE;

create view view_penyusutan_108_atl_2020_r2_a4 as

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

kode_barang_108,
min(tahun) as tahun_awal,

sum(harga) as nilai_perolehan,
sum(penyusutan) as penyusutan,
sum(harga) - sum(penyusutan) as nilai_buku


 from
view_penyusutan_108_atl_2020_r2_a3

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

kode_barang_108

order by register;

GRANT ALL PRIVILEGES ON view_penyusutan_108_atl_2020_r2_a4 TO lap_kabupaten;
REVOKE INSERT, UPDATE, DELETE ON view_penyusutan_108_atl_2020_r2_a4 FROM lap_kabupaten;
DROP view if exists view_beban_penyusutan_108_atl_2020_r2_a1 CASCADE;

create view view_beban_penyusutan_108_atl_2020_r2_a1 as


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

kode_barang_108,
tahun_awal,

nilai_perolehan as nilai_perolehan_sd_2019,
0 as nilai_perolehan_sd_2020,

nilai_buku as nilai_buku_sd_2019,
0 as nilai_buku_sd_2020


 from
view_penyusutan_108_pm_2019_r2_a4


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

kode_barang_108,
tahun_awal,

0 as nilai_perolehan_sd_2019,
nilai_perolehan as nilai_perolehan_sd_2020,

0 as nilai_buku_sd_2019,
nilai_buku as nilai_buku_sd_2020


 from
view_penyusutan_108_atl_2020_r2_a4


order by register;



DROP view if exists view_beban_penyusutan_108_atl_2020_r2_a2 CASCADE;

create view view_beban_penyusutan_108_atl_2020_r2_a2 as


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

kode_barang_108,
min(tahun_awal) as tahun_awal,

sum(nilai_perolehan_sd_2019) as nilai_perolehan_sd_2019,
sum(nilai_perolehan_sd_2020) - sum(nilai_perolehan_sd_2019) as penambahan_nilai_di_2020,
sum(nilai_perolehan_sd_2020) as nilai_perolehan_sd_2020,

sum(nilai_perolehan_sd_2019) - sum(nilai_buku_sd_2019) as nilai_penyusutan_sd_2019,

sum(nilai_buku_sd_2019) as nilai_buku_sd_2019,

sum(nilai_buku_sd_2019) +
(sum(nilai_perolehan_sd_2020) - sum(nilai_perolehan_sd_2019)) -
sum(nilai_buku_sd_2020) as beban_penyusutan_2020,

sum(nilai_perolehan_sd_2020) - sum(nilai_buku_sd_2020) as nilai_penyusutan_sd_2020,
sum(nilai_buku_sd_2020) as nilai_buku_sd_2020


 from
view_beban_penyusutan_108_atl_2020_r2_a1

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
kode_barang_108


order by register;

GRANT ALL PRIVILEGES ON view_beban_penyusutan_108_atl_2020_r2_a2 TO lap_kabupaten;
REVOKE INSERT, UPDATE, DELETE ON view_beban_penyusutan_108_atl_2020_r2_a2 FROM lap_kabupaten;
