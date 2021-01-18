
DROP view if exists view_penyusutan_108_gb_2020_r2_e2 CASCADE;

create view view_penyusutan_108_gb_2020_r2_e2 as select
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
view_penyusutan_108_gb_2020_r2_a1.kode_barang_108,
left(view_penyusutan_108_gb_2020_r2_a1.kode_barang_108, 11) as kode_umur,
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

from view_penyusutan_108_gb_2020_r2_a1, kode_barang_108

where view_penyusutan_108_gb_2020_r2_a1.kode_barang_108 = left(kode_barang_108.kode_barang_108, 18)

order by register, rank;

