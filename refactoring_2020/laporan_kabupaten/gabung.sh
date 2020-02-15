#!/bin/bash

#gabung semua kode barang baru

#bersihkan file kode_barang_baru.sql
echo "-- kode barang baru" > ./kode_barang_baru.sql

cat ./tanah_108.sql >> ./kode_barang_baru.sql
cat ./gabungan_tanah_108.sql >> ./kode_barang_baru.sql

cat ./peralatan_mesin_108.sql >> ./kode_barang_baru.sql
cat ./gabungan_peralatan_mesin_108.sql >> ./kode_barang_baru.sql

cat ./gedung_bangunan_108.sql >> ./kode_barang_baru.sql
cat ./gabungan_gedung_bangunan_108.sql >> ./kode_barang_baru.sql

cat ./jalan_irigasi_jaringan_108.sql >> ./kode_barang_baru.sql
cat ./gabungan_jalan_irigasi_jaringan_108.sql >> ./kode_barang_baru.sql

cat ./atl_108.sql >> ./kode_barang_baru.sql
cat ./gabungan_atl_108.sql >> ./kode_barang_baru.sql

cat ./buku_inventaris_108.sql >> ./kode_barang_baru.sql
cat ./gabungan_buku_inventaris_108.sql >> ./kode_barang_baru.sql

cat ./kode_level_2_108.sql >> ./kode_barang_baru.sql


#cat ./tanah_108.sql >> ./kode_barang_baru.sql
