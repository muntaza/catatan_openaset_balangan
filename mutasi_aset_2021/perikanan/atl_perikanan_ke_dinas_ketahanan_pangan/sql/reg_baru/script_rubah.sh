#!/bin/sh

#beri awalan dan akhiran
cat atl_perikanan_ke_dinas_ketahanan_pangan_reg_baru.sql | sed -e s/^/UPDATE\ atl\ SET\ id_mutasi_berkurang\ \=\ 2\ WHERE\ id\ \=\ /g -e s/$/\;/g > atl_perikanan_ke_dinas_ketahanan_pangan_reg_baru_mutasi_berkurang.sql
cat atl_perikanan_ke_dinas_ketahanan_pangan_reg_baru.sql | sed -e s/^/INSERT\ INTO\ skpd_tujuan_atl\ \(id_atl\,\ id_skpd\)\ VALUES\ \(/g -e s/$/\,\ 13\)\ ON\ CONFLICT\ \(id_atl\)\ DO\ UPDATE\ SET\ id_skpd\ \=\ 13\;/g > atl_perikanan_ke_dinas_ketahanan_pangan_reg_baru_skpd_tujuan.sql
cat atl_perikanan_ke_dinas_ketahanan_pangan_reg_baru.sql | sed -e s/^/INSERT\ INTO\ tahun_berkurang_atl\ \(id_atl\,\ tahun_berkurang\)\ VALUES\ \(/g -e s/$/\,\ 2021\)\ ON\ CONFLICT\ \(id_atl\)\ DO\ UPDATE\ SET\ tahun_berkurang\ \=\ 2021\;/g > atl_perikanan_ke_dinas_ketahanan_pangan_reg_baru_tahun_berkurang.sql


#gabungkan
cat  atl_perikanan_ke_dinas_ketahanan_pangan_reg_baru_mutasi_berkurang.sql > atl_perikanan_ke_dinas_ketahanan_pangan_reg_baru_insert.sql
cat  atl_perikanan_ke_dinas_ketahanan_pangan_reg_baru_skpd_tujuan.sql >> atl_perikanan_ke_dinas_ketahanan_pangan_reg_baru_insert.sql
cat  atl_perikanan_ke_dinas_ketahanan_pangan_reg_baru_tahun_berkurang.sql >> atl_perikanan_ke_dinas_ketahanan_pangan_reg_baru_insert.sql
