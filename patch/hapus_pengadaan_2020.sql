-- Hapus semua pengadaan 2020 yang dari Belanja Modal dan Hibah

delete from harga_tanah
where tahun = 2020 AND
id_asal_usul = 1;

delete from harga_tanah
where tahun = 2020 AND
id_asal_usul = 4;

delete from harga_peralatan_mesin
where tahun = 2020 AND
id_asal_usul = 1;

delete from harga_peralatan_mesin
where tahun = 2020 AND
id_asal_usul = 4;

delete from harga_gedung_bangunan
where tahun = 2020 AND
id_asal_usul = 1;

delete from harga_gedung_bangunan
where tahun = 2020 AND
id_asal_usul = 4;

delete from harga_jalan_irigasi_jaringan
where tahun = 2020 AND
id_asal_usul = 1;

delete from harga_jalan_irigasi_jaringan
where tahun = 2020 AND
id_asal_usul = 4;

delete from harga_atl
where tahun = 2020 AND
id_asal_usul = 1;

delete from harga_atl
where tahun = 2020 AND
id_asal_usul = 4;
