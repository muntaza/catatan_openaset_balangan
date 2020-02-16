#!/bin/bash

#gabung semua kode barang baru

#bersihkan file kode_barang_baru.sql
echo "-- kode barang baru" > ./kode_barang_baru_2.sql

cat ./extracomptable_108.sql >> ./kode_barang_baru_2.sql
cat ./gabungan_extracomptable_108.sql >> ./kode_barang_baru_2.sql

#cat ./tanah_108.sql >> ./kode_barang_baru_2.sql
