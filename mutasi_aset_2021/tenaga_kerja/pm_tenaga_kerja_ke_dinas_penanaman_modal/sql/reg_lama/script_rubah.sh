#!/bin/sh

#beri awalan dan akhiran
cat pm_tenaga_kerja_ke_dinas_penanaman_modal.sql | sed -e s/^/UPDATE\ peralatan_mesin\ SET\ id_sub_skpd\ \=\ 412\ WHERE\ id\ \=\ /g -e s/$/\;/g > pm_tenaga_kerja_ke_dinas_penanaman_modal_sub_skpd.sql
cat pm_tenaga_kerja_ke_dinas_penanaman_modal.sql | sed -e s/^/UPDATE\ harga_peralatan_mesin\ SET\ id_asal_usul\ =\ 7\,\ tahun_mutasi\ =\ 2021\ WHERE\ id_peralatan_mesin\ \=\ /g -e s/$/\;/g > pm_tenaga_kerja_ke_dinas_penanaman_modal_harga.sql
cat pm_tenaga_kerja_ke_dinas_penanaman_modal.sql | sed -e s/^/INSERT\ INTO\ skpd_asal_peralatan_mesin\ \(id_peralatan_mesin\,\ id_skpd\)\ VALUES\ \(/g -e s/$/\,\ 41\)\ ON\ CONFLICT\ \(id_peralatan_mesin\)\ DO\ UPDATE\ SET\ id_skpd\ \=\ 41\;/g > pm_tenaga_kerja_ke_dinas_penanaman_modal_skpd_asal.sql


#gabungkan
cat  pm_tenaga_kerja_ke_dinas_penanaman_modal_sub_skpd.sql > pm_tenaga_kerja_ke_dinas_penanaman_modal_insert.sql
cat  pm_tenaga_kerja_ke_dinas_penanaman_modal_harga.sql >> pm_tenaga_kerja_ke_dinas_penanaman_modal_insert.sql
cat  pm_tenaga_kerja_ke_dinas_penanaman_modal_skpd_asal.sql >> pm_tenaga_kerja_ke_dinas_penanaman_modal_insert.sql
