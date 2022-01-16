#!/bin/sh

#beri awalan dan akhiran
cat gb_perikanan_ke_dinas_ketahanan_pangan_reg_baru.sql | sed -e s/^/UPDATE\ gedung_bangunan\ SET\ id_mutasi_berkurang\ \=\ 2\ WHERE\ id\ \=\ /g -e s/$/\;/g > gb_perikanan_ke_dinas_ketahanan_pangan_reg_baru_mutasi_berkurang.sql
cat gb_perikanan_ke_dinas_ketahanan_pangan_reg_baru.sql | sed -e s/^/INSERT\ INTO\ skpd_tujuan_gedung_bangunan\ \(id_gedung_bangunan\,\ id_skpd\)\ VALUES\ \(/g -e s/$/\,\ 13\)\ ON\ CONFLICT\ \(id_gedung_bangunan\)\ DO\ UPDATE\ SET\ id_skpd\ \=\ 13\;/g > gb_perikanan_ke_dinas_ketahanan_pangan_reg_baru_skpd_tujuan.sql
cat gb_perikanan_ke_dinas_ketahanan_pangan_reg_baru.sql | sed -e s/^/INSERT\ INTO\ tahun_berkurang_gedung_bangunan\ \(id_gedung_bangunan\,\ tahun_berkurang\)\ VALUES\ \(/g -e s/$/\,\ 2021\)\ ON\ CONFLICT\ \(id_gedung_bangunan\)\ DO\ UPDATE\ SET\ tahun_berkurang\ \=\ 2021\;/g > gb_perikanan_ke_dinas_ketahanan_pangan_reg_baru_tahun_berkurang.sql


#gabungkan
cat  gb_perikanan_ke_dinas_ketahanan_pangan_reg_baru_mutasi_berkurang.sql > gb_perikanan_ke_dinas_ketahanan_pangan_reg_baru_insert.sql
cat  gb_perikanan_ke_dinas_ketahanan_pangan_reg_baru_skpd_tujuan.sql >> gb_perikanan_ke_dinas_ketahanan_pangan_reg_baru_insert.sql
cat  gb_perikanan_ke_dinas_ketahanan_pangan_reg_baru_tahun_berkurang.sql >> gb_perikanan_ke_dinas_ketahanan_pangan_reg_baru_insert.sql
