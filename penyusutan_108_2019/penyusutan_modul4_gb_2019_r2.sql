DROP view if exists view_penyusutan_gb_2019_r2_a4 CASCADE;

create view view_penyusutan_gb_2019_r2_a4 as

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
view_penyusutan_gb_2019_r2_a3

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

GRANT ALL PRIVILEGES ON view_penyusutan_gb_2019_r2_a4 TO lap_kabupaten;
REVOKE INSERT, UPDATE, DELETE ON view_penyusutan_gb_2019_r2_a4 FROM lap_kabupaten;
