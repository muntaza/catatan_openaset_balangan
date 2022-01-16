#!/bin/sh

#beri awalan dan akhiran
cat gb_perikanan_ke_dinas_ketahanan_pangan.sql | sed -e s/^/UPDATE\ gedung_bangunan\ SET\ id_sub_skpd\ \=\ 71\ WHERE\ id\ \=\ /g -e s/$/\;/g > gb_perikanan_ke_dinas_ketahanan_pangan_sub_skpd.sql
cat gb_perikanan_ke_dinas_ketahanan_pangan.sql | sed -e s/^/UPDATE\ harga_gedung_bangunan\ SET\ id_asal_usul\ =\ 7\,\ tahun_mutasi\ =\ 2021\ WHERE\ id_gedung_bangunan\ \=\ /g -e s/$/\;/g > gb_perikanan_ke_dinas_ketahanan_pangan_harga.sql
cat gb_perikanan_ke_dinas_ketahanan_pangan.sql | sed -e s/^/INSERT\ INTO\ skpd_asal_gedung_bangunan\ \(id_gedung_bangunan\,\ id_skpd\)\ VALUES\ \(/g -e s/$/\,\ 45\)\ ON\ CONFLICT\ \(id_gedung_bangunan\)\ DO\ UPDATE\ SET\ id_skpd\ \=\ 45\;/g > gb_perikanan_ke_dinas_ketahanan_pangan_skpd_asal.sql


#gabungkan
cat  gb_perikanan_ke_dinas_ketahanan_pangan_sub_skpd.sql > gb_perikanan_ke_dinas_ketahanan_pangan_insert.sql
cat  gb_perikanan_ke_dinas_ketahanan_pangan_harga.sql >> gb_perikanan_ke_dinas_ketahanan_pangan_insert.sql
cat  gb_perikanan_ke_dinas_ketahanan_pangan_skpd_asal.sql >> gb_perikanan_ke_dinas_ketahanan_pangan_insert.sql
