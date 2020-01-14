DROP view if exists view_beban_penyusutan_jij_2017_a1 CASCADE;

create view view_beban_penyusutan_jij_2017_a1 as


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

nilai_perolehan as nilai_perolehan_sd_2016,
0 as nilai_perolehan_sd_2017,

nilai_buku as nilai_buku_sd_2016,
0 as nilai_buku_sd_2017


 from
view_penyusutan_jij_2016_a4


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

0 as nilai_perolehan_sd_2016,
nilai_perolehan as nilai_perolehan_sd_2017,

0 as nilai_buku_sd_2016,
nilai_buku as nilai_buku_sd_2017


 from
view_penyusutan_jij_2017_a4


order by register;



DROP view if exists view_beban_penyusutan_jij_2017_a2 CASCADE;

create view view_beban_penyusutan_jij_2017_a2 as


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

sum(nilai_perolehan_sd_2016) as nilai_perolehan_sd_2016,
sum(nilai_perolehan_sd_2017) - sum(nilai_perolehan_sd_2016) as penambahan_nilai_di_2017,
sum(nilai_perolehan_sd_2017) as nilai_perolehan_sd_2017,


sum(nilai_buku_sd_2016) as nilai_buku_sd_2016,

sum(nilai_buku_sd_2016) +
(sum(nilai_perolehan_sd_2017) - sum(nilai_perolehan_sd_2016)) -
sum(nilai_buku_sd_2017) as beban_penyusutan_2017,

sum(nilai_buku_sd_2017) as nilai_buku_sd_2017


 from
view_beban_penyusutan_jij_2017_a1

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

GRANT ALL PRIVILEGES ON view_beban_penyusutan_jij_2017_a2 TO lap_kabupaten;
REVOKE INSERT, UPDATE, DELETE ON view_beban_penyusutan_jij_2017_a2 FROM lap_kabupaten;
