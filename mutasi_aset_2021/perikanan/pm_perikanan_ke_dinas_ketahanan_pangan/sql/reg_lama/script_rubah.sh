#!/bin/sh

#beri awalan dan akhiran
cat pm_perikanan_ke_dinas_ketahanan_pangan.sql | sed -e s/^/UPDATE\ peralatan_mesin\ SET\ id_sub_skpd\ \=\ 71\ WHERE\ id\ \=\ /g -e s/$/\;/g > pm_perikanan_ke_dinas_ketahanan_pangan_sub_skpd.sql
cat pm_perikanan_ke_dinas_ketahanan_pangan.sql | sed -e s/^/UPDATE\ harga_peralatan_mesin\ SET\ id_asal_usul\ =\ 7\,\ tahun_mutasi\ =\ 2021\ WHERE\ id_peralatan_mesin\ \=\ /g -e s/$/\;/g > pm_perikanan_ke_dinas_ketahanan_pangan_harga.sql
cat pm_perikanan_ke_dinas_ketahanan_pangan.sql | sed -e s/^/INSERT\ INTO\ skpd_asal_peralatan_mesin\ \(id_peralatan_mesin\,\ id_skpd\)\ VALUES\ \(/g -e s/$/\,\ 45\)\ ON\ CONFLICT\ \(id_peralatan_mesin\)\ DO\ UPDATE\ SET\ id_skpd\ \=\ 45\;/g > pm_perikanan_ke_dinas_ketahanan_pangan_skpd_asal.sql


#gabungkan
cat  pm_perikanan_ke_dinas_ketahanan_pangan_sub_skpd.sql > pm_perikanan_ke_dinas_ketahanan_pangan_insert.sql
cat  pm_perikanan_ke_dinas_ketahanan_pangan_harga.sql >> pm_perikanan_ke_dinas_ketahanan_pangan_insert.sql
cat  pm_perikanan_ke_dinas_ketahanan_pangan_skpd_asal.sql >> pm_perikanan_ke_dinas_ketahanan_pangan_insert.sql
