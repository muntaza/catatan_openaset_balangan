#!/bin/sh

#beri awalan dan akhiran
cat jij_perkim_ke_dinas_pu.sql | sed -e s/^/UPDATE\ jalan_irigasi_jaringan\ SET\ id_sub_skpd\ \=\ 617\ WHERE\ id\ \=\ /g -e s/$/\;/g > jij_perkim_ke_dinas_pu_sub_skpd.sql
cat jij_perkim_ke_dinas_pu.sql | sed -e s/^/UPDATE\ harga_jalan_irigasi_jaringan\ SET\ id_asal_usul\ =\ 7\,\ tahun_mutasi\ =\ 2021\ WHERE\ id_jalan_irigasi_jaringan\ \=\ /g -e s/$/\;/g > jij_perkim_ke_dinas_pu_harga.sql
cat jij_perkim_ke_dinas_pu.sql | sed -e s/^/INSERT\ INTO\ skpd_asal_jalan_irigasi_jaringan\ \(id_jalan_irigasi_jaringan\,\ id_skpd\)\ VALUES\ \(/g -e s/$/\,\ 40\)\ ON\ CONFLICT\ \(id_jalan_irigasi_jaringan\)\ DO\ UPDATE\ SET\ id_skpd\ \=\ 40\;/g > jij_perkim_ke_dinas_pu_skpd_asal.sql


#gabungkan
cat  jij_perkim_ke_dinas_pu_sub_skpd.sql > jij_perkim_ke_dinas_pu_insert.sql
cat  jij_perkim_ke_dinas_pu_harga.sql >> jij_perkim_ke_dinas_pu_insert.sql
cat  jij_perkim_ke_dinas_pu_skpd_asal.sql >> jij_perkim_ke_dinas_pu_insert.sql
