DROP view if exists view_penyusutan_108_gb_2019_r2_a3 CASCADE;

create view view_penyusutan_108_gb_2019_r2_a3 as

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
view_penyusutan_108_gb_2019_r2_e29


order by register, rank;

GRANT ALL PRIVILEGES ON view_penyusutan_108_gb_2019_r2_a3 TO lap_kabupaten;
REVOKE INSERT, UPDATE, DELETE ON view_penyusutan_108_gb_2019_r2_a3 FROM lap_kabupaten;
