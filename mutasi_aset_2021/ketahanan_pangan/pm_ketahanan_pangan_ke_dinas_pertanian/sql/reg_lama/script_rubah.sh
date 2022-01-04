#!/bin/sh

#beri awalan dan akhiran
cat pm_ketahanan_pangan_ke_dinas_pertanian.sql | sed -e s/^/UPDATE\ peralatan_mesin\ SET\ id_sub_skpd\ \=\ 71\ WHERE\ id\ \=\ /g -e s/$/\;/g > pm_ketahanan_pangan_ke_dinas_pertanian_sub_skpd.sql
cat pm_ketahanan_pangan_ke_dinas_pertanian.sql | sed -e s/^/UPDATE\ harga_peralatan_mesin\ SET\ id_asal_usul\ =\ 7\,\ tahun_mutasi\ =\ 2021\ WHERE\ id_peralatan_mesin\ \=\ /g -e s/$/\;/g > pm_ketahanan_pangan_ke_dinas_pertanian_harga.sql
cat pm_ketahanan_pangan_ke_dinas_pertanian.sql | sed -e s/^/INSERT\ INTO\ skpd_asal_peralatan_mesin\ \(id_peralatan_mesin\,\ id_skpd\)\ VALUES\ \(/g -e s/$/\,\ 15\)\ ON\ CONFLICT\ \(id_peralatan_mesin\)\ DO\ UPDATE\ SET\ id_skpd\ \=\ 15\;/g > pm_ketahanan_pangan_ke_dinas_pertanian_skpd_asal.sql


#gabungkan
cat  pm_ketahanan_pangan_ke_dinas_pertanian_sub_skpd.sql > pm_ketahanan_pangan_ke_dinas_pertanian_insert.sql
cat  pm_ketahanan_pangan_ke_dinas_pertanian_harga.sql >> pm_ketahanan_pangan_ke_dinas_pertanian_insert.sql
cat  pm_ketahanan_pangan_ke_dinas_pertanian_skpd_asal.sql >> pm_ketahanan_pangan_ke_dinas_pertanian_insert.sql
