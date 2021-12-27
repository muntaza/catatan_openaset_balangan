#!/bin/sh

#beri awalan dan akhiran
cat pm_kearsipan_ke_dinas_perpustakaan.sql | sed -e s/^/UPDATE\ peralatan_mesin\ SET\ id_sub_skpd\ \=\ 48\ WHERE\ id\ \=\ /g -e s/$/\;/g > pm_kearsipan_ke_dinas_perpustakaan_sub_skpd.sql
cat pm_kearsipan_ke_dinas_perpustakaan.sql | sed -e s/^/UPDATE\ harga_peralatan_mesin\ SET\ id_asal_usul\ =\ 7\,\ tahun_mutasi\ =\ 2021\ WHERE\ id_peralatan_mesin\ \=\ /g -e s/$/\;/g > pm_kearsipan_ke_dinas_perpustakaan_harga.sql
cat pm_kearsipan_ke_dinas_perpustakaan.sql | sed -e s/^/INSERT\ INTO\ skpd_asal_peralatan_mesin\ \(id_peralatan_mesin\,\ id_skpd\)\ VALUES\ \(/g -e s/$/\,\ 44\)\ ON\ CONFLICT\ \(id_peralatan_mesin\)\ DO\ UPDATE\ SET\ id_skpd\ \=\ 44\;/g > pm_kearsipan_ke_dinas_perpustakaan_skpd_asal.sql


#gabungkan
echo "-- Pariwisata ke Dinas Pemuda" > pm_kearsipan_ke_dinas_perpustakaan_insert.sql
cat  pm_kearsipan_ke_dinas_perpustakaan_sub_skpd.sql >> pm_kearsipan_ke_dinas_perpustakaan_insert.sql
cat  pm_kearsipan_ke_dinas_perpustakaan_harga.sql >> pm_kearsipan_ke_dinas_perpustakaan_insert.sql
cat  pm_kearsipan_ke_dinas_perpustakaan_skpd_asal.sql >> pm_kearsipan_ke_dinas_perpustakaan_insert.sql
