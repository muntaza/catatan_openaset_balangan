#!/bin/sh

#beri awalan dan akhiran
cat jij_perikanan_ke_dinas_ketahanan_pangan_reg_baru.sql | sed -e s/^/UPDATE\ jalan_irigasi_jaringan\ SET\ id_mutasi_berkurang\ \=\ 2\ WHERE\ id\ \=\ /g -e s/$/\;/g > jij_perikanan_ke_dinas_ketahanan_pangan_reg_baru_mutasi_berkurang.sql
cat jij_perikanan_ke_dinas_ketahanan_pangan_reg_baru.sql | sed -e s/^/INSERT\ INTO\ skpd_tujuan_jalan_irigasi_jaringan\ \(id_jalan_irigasi_jaringan\,\ id_skpd\)\ VALUES\ \(/g -e s/$/\,\ 13\)\ ON\ CONFLICT\ \(id_jalan_irigasi_jaringan\)\ DO\ UPDATE\ SET\ id_skpd\ \=\ 13\;/g > jij_perikanan_ke_dinas_ketahanan_pangan_reg_baru_skpd_tujuan.sql
cat jij_perikanan_ke_dinas_ketahanan_pangan_reg_baru.sql | sed -e s/^/INSERT\ INTO\ tahun_berkurang_jij\ \(id_jalan_irigasi_jaringan\,\ tahun_berkurang\)\ VALUES\ \(/g -e s/$/\,\ 2021\)\ ON\ CONFLICT\ \(id_jalan_irigasi_jaringan\)\ DO\ UPDATE\ SET\ tahun_berkurang\ \=\ 2021\;/g > jij_perikanan_ke_dinas_ketahanan_pangan_reg_baru_tahun_berkurang.sql


#gabungkan
cat  jij_perikanan_ke_dinas_ketahanan_pangan_reg_baru_mutasi_berkurang.sql > jij_perikanan_ke_dinas_ketahanan_pangan_reg_baru_insert.sql
cat  jij_perikanan_ke_dinas_ketahanan_pangan_reg_baru_skpd_tujuan.sql >> jij_perikanan_ke_dinas_ketahanan_pangan_reg_baru_insert.sql
cat  jij_perikanan_ke_dinas_ketahanan_pangan_reg_baru_tahun_berkurang.sql >> jij_perikanan_ke_dinas_ketahanan_pangan_reg_baru_insert.sql
