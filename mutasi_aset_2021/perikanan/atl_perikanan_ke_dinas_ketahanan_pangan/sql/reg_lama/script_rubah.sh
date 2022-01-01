#!/bin/sh

#beri awalan dan akhiran
cat atl_perikanan_ke_dinas_ketahanan_pangan.sql | sed -e s/^/UPDATE\ atl\ SET\ id_sub_skpd\ \=\ 71\ WHERE\ id\ \=\ /g -e s/$/\;/g > atl_perikanan_ke_dinas_ketahanan_pangan_sub_skpd.sql
cat atl_perikanan_ke_dinas_ketahanan_pangan.sql | sed -e s/^/UPDATE\ harga_atl\ SET\ id_asal_usul\ =\ 7\,\ tahun_mutasi\ =\ 2021\ WHERE\ id_atl\ \=\ /g -e s/$/\;/g > atl_perikanan_ke_dinas_ketahanan_pangan_harga.sql
cat atl_perikanan_ke_dinas_ketahanan_pangan.sql | sed -e s/^/INSERT\ INTO\ skpd_asal_atl\ \(id_atl\,\ id_skpd\)\ VALUES\ \(/g -e s/$/\,\ 45\)\ ON\ CONFLICT\ \(id_atl\)\ DO\ UPDATE\ SET\ id_skpd\ \=\ 45\;/g > atl_perikanan_ke_dinas_ketahanan_pangan_skpd_asal.sql


#gabungkan
cat  atl_perikanan_ke_dinas_ketahanan_pangan_sub_skpd.sql > atl_perikanan_ke_dinas_ketahanan_pangan_insert.sql
cat  atl_perikanan_ke_dinas_ketahanan_pangan_harga.sql >> atl_perikanan_ke_dinas_ketahanan_pangan_insert.sql
cat  atl_perikanan_ke_dinas_ketahanan_pangan_skpd_asal.sql >> atl_perikanan_ke_dinas_ketahanan_pangan_insert.sql
