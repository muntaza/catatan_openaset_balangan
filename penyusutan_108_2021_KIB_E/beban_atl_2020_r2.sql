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
view_penyusutan_108_atl_2019_r2_a4


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
