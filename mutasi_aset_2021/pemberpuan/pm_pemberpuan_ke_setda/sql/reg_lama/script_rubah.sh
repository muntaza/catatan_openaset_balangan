#!/bin/sh

#beri awalan dan akhiran
cat pm_pemberpuan_ke_setda.sql | sed -e s/^/UPDATE\ peralatan_mesin\ SET\ id_sub_skpd\ \=\ 9\ WHERE\ id\ \=\ /g -e s/$/\;/g > pm_pemberpuan_ke_setda_sub_skpd.sql
cat pm_pemberpuan_ke_setda.sql | sed -e s/^/UPDATE\ harga_peralatan_mesin\ SET\ id_asal_usul\ =\ 7\,\ tahun_mutasi\ =\ 2021\ WHERE\ id_peralatan_mesin\ \=\ /g -e s/$/\;/g > pm_pemberpuan_ke_setda_harga.sql
cat pm_pemberpuan_ke_setda.sql | sed -e s/^/INSERT\ INTO\ skpd_asal_peralatan_mesin\ \(id_peralatan_mesin\,\ id_skpd\)\ VALUES\ \(/g -e s/$/\,\ 11\)\ ON\ CONFLICT\ \(id_peralatan_mesin\)\ DO\ UPDATE\ SET\ id_skpd\ \=\ 11\;/g > pm_pemberpuan_ke_setda_skpd_asal.sql


#gabungkan
cat  pm_pemberpuan_ke_setda_sub_skpd.sql > pm_pemberpuan_ke_setda_insert.sql
cat  pm_pemberpuan_ke_setda_harga.sql >> pm_pemberpuan_ke_setda_insert.sql
cat  pm_pemberpuan_ke_setda_skpd_asal.sql >> pm_pemberpuan_ke_setda_insert.sql
