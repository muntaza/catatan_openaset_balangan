#!/bin/sh

#beri awalan dan akhiran
cat jij_perikanan_ke_dinas_ketahanan_pangan.sql | sed -e s/^/UPDATE\ jalan_irigasi_jaringan\ SET\ id_sub_skpd\ \=\ 71\ WHERE\ id\ \=\ /g -e s/$/\;/g > jij_perikanan_ke_dinas_ketahanan_pangan_sub_skpd.sql
cat jij_perikanan_ke_dinas_ketahanan_pangan.sql | sed -e s/^/UPDATE\ harga_jalan_irigasi_jaringan\ SET\ id_asal_usul\ =\ 7\,\ tahun_mutasi\ =\ 2021\ WHERE\ id_jalan_irigasi_jaringan\ \=\ /g -e s/$/\;/g > jij_perikanan_ke_dinas_ketahanan_pangan_harga.sql
cat jij_perikanan_ke_dinas_ketahanan_pangan.sql | sed -e s/^/INSERT\ INTO\ skpd_asal_jalan_irigasi_jaringan\ \(id_jalan_irigasi_jaringan\,\ id_skpd\)\ VALUES\ \(/g -e s/$/\,\ 45\)\ ON\ CONFLICT\ \(id_jalan_irigasi_jaringan\)\ DO\ UPDATE\ SET\ id_skpd\ \=\ 45\;/g > jij_perikanan_ke_dinas_ketahanan_pangan_skpd_asal.sql


#gabungkan
cat  jij_perikanan_ke_dinas_ketahanan_pangan_sub_skpd.sql > jij_perikanan_ke_dinas_ketahanan_pangan_insert.sql
cat  jij_perikanan_ke_dinas_ketahanan_pangan_harga.sql >> jij_perikanan_ke_dinas_ketahanan_pangan_insert.sql
cat  jij_perikanan_ke_dinas_ketahanan_pangan_skpd_asal.sql >> jij_perikanan_ke_dinas_ketahanan_pangan_insert.sql
