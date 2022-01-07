#!/bin/sh

#beri awalan dan akhiran
cat pm_perkim_ke_badan_keuangan_reg_baru.sql | sed -e s/^/UPDATE\ peralatan_mesin\ SET\ id_mutasi_berkurang\ \=\ 2\ WHERE\ id\ \=\ /g -e s/$/\;/g > pm_perkim_ke_badan_keuangan_reg_baru_mutasi_berkurang.sql
cat pm_perkim_ke_badan_keuangan_reg_baru.sql | sed -e s/^/INSERT\ INTO\ skpd_tujuan_peralatan_mesin\ \(id_peralatan_mesin\,\ id_skpd\)\ VALUES\ \(/g -e s/$/\,\ 19\)\ ON\ CONFLICT\ \(id_peralatan_mesin\)\ DO\ UPDATE\ SET\ id_skpd\ \=\ 19\;/g > pm_perkim_ke_badan_keuangan_reg_baru_skpd_tujuan.sql
cat pm_perkim_ke_badan_keuangan_reg_baru.sql | sed -e s/^/INSERT\ INTO\ tahun_berkurang_peralatan_mesin\ \(id_peralatan_mesin\,\ tahun_berkurang\)\ VALUES\ \(/g -e s/$/\,\ 2021\)\ ON\ CONFLICT\ \(id_peralatan_mesin\)\ DO\ UPDATE\ SET\ tahun_berkurang\ \=\ 2021\;/g > pm_perkim_ke_badan_keuangan_reg_baru_tahun_berkurang.sql


#gabungkan
cat  pm_perkim_ke_badan_keuangan_reg_baru_mutasi_berkurang.sql > pm_perkim_ke_badan_keuangan_reg_baru_insert.sql
cat  pm_perkim_ke_badan_keuangan_reg_baru_skpd_tujuan.sql >> pm_perkim_ke_badan_keuangan_reg_baru_insert.sql
cat  pm_perkim_ke_badan_keuangan_reg_baru_tahun_berkurang.sql >> pm_perkim_ke_badan_keuangan_reg_baru_insert.sql
