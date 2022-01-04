#!/bin/sh

#beri awalan dan akhiran
cat pm_perkim_ke_dinas_koperasi.sql | sed -e s/^/UPDATE\ peralatan_mesin\ SET\ id_sub_skpd\ \=\ 403\ WHERE\ id\ \=\ /g -e s/$/\;/g > pm_perkim_ke_dinas_koperasi_sub_skpd.sql
cat pm_perkim_ke_dinas_koperasi.sql | sed -e s/^/UPDATE\ harga_peralatan_mesin\ SET\ id_asal_usul\ =\ 7\,\ tahun_mutasi\ =\ 2021\ WHERE\ id_peralatan_mesin\ \=\ /g -e s/$/\;/g > pm_perkim_ke_dinas_koperasi_harga.sql
cat pm_perkim_ke_dinas_koperasi.sql | sed -e s/^/INSERT\ INTO\ skpd_asal_peralatan_mesin\ \(id_peralatan_mesin\,\ id_skpd\)\ VALUES\ \(/g -e s/$/\,\ 40\)\ ON\ CONFLICT\ \(id_peralatan_mesin\)\ DO\ UPDATE\ SET\ id_skpd\ \=\ 40\;/g > pm_perkim_ke_dinas_koperasi_skpd_asal.sql


#gabungkan
cat  pm_perkim_ke_dinas_koperasi_sub_skpd.sql > pm_perkim_ke_dinas_koperasi_insert.sql
cat  pm_perkim_ke_dinas_koperasi_harga.sql >> pm_perkim_ke_dinas_koperasi_insert.sql
cat  pm_perkim_ke_dinas_koperasi_skpd_asal.sql >> pm_perkim_ke_dinas_koperasi_insert.sql
