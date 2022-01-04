#!/bin/sh

#beri awalan dan akhiran
cat pm_litbang_ke_dinas_pertanahan.sql | sed -e s/^/UPDATE\ peralatan_mesin\ SET\ id_sub_skpd\ \=\ 433\ WHERE\ id\ \=\ /g -e s/$/\;/g > pm_litbang_ke_dinas_pertanahan_sub_skpd.sql
cat pm_litbang_ke_dinas_pertanahan.sql | sed -e s/^/UPDATE\ harga_peralatan_mesin\ SET\ id_asal_usul\ =\ 7\,\ tahun_mutasi\ =\ 2021\ WHERE\ id_peralatan_mesin\ \=\ /g -e s/$/\;/g > pm_litbang_ke_dinas_pertanahan_harga.sql
cat pm_litbang_ke_dinas_pertanahan.sql | sed -e s/^/INSERT\ INTO\ skpd_asal_peralatan_mesin\ \(id_peralatan_mesin\,\ id_skpd\)\ VALUES\ \(/g -e s/$/\,\ 48\)\ ON\ CONFLICT\ \(id_peralatan_mesin\)\ DO\ UPDATE\ SET\ id_skpd\ \=\ 48\;/g > pm_litbang_ke_dinas_pertanahan_skpd_asal.sql


#gabungkan
cat  pm_litbang_ke_dinas_pertanahan_sub_skpd.sql > pm_litbang_ke_dinas_pertanahan_insert.sql
cat  pm_litbang_ke_dinas_pertanahan_harga.sql >> pm_litbang_ke_dinas_pertanahan_insert.sql
cat  pm_litbang_ke_dinas_pertanahan_skpd_asal.sql >> pm_litbang_ke_dinas_pertanahan_insert.sql
