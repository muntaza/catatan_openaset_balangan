#!/bin/sh

#beri awalan dan akhiran
cat jij_perkim_ke_dinas_pu_reg_baru.sql | sed -e s/^/UPDATE\ jalan_irigasi_jaringan\ SET\ id_mutasi_berkurang\ \=\ 2\ WHERE\ id\ \=\ /g -e s/$/\;/g > jij_perkim_ke_dinas_pu_reg_baru_mutasi_berkurang.sql
cat jij_perkim_ke_dinas_pu_reg_baru.sql | sed -e s/^/INSERT\ INTO\ skpd_tujuan_jalan_irigasi_jaringan\ \(id_jalan_irigasi_jaringan\,\ id_skpd\)\ VALUES\ \(/g -e s/$/\,\ 3\)\ ON\ CONFLICT\ \(id_jalan_irigasi_jaringan\)\ DO\ UPDATE\ SET\ id_skpd\ \=\ 3\;/g > jij_perkim_ke_dinas_pu_reg_baru_skpd_tujuan.sql
cat jij_perkim_ke_dinas_pu_reg_baru.sql | sed -e s/^/INSERT\ INTO\ tahun_berkurang_jij\ \(id_jalan_irigasi_jaringan\,\ tahun_berkurang\)\ VALUES\ \(/g -e s/$/\,\ 2021\)\ ON\ CONFLICT\ \(id_jalan_irigasi_jaringan\)\ DO\ UPDATE\ SET\ tahun_berkurang\ \=\ 2021\;/g > jij_perkim_ke_dinas_pu_reg_baru_tahun_berkurang.sql


#gabungkan
cat  jij_perkim_ke_dinas_pu_reg_baru_mutasi_berkurang.sql > jij_perkim_ke_dinas_pu_reg_baru_insert.sql
cat  jij_perkim_ke_dinas_pu_reg_baru_skpd_tujuan.sql >> jij_perkim_ke_dinas_pu_reg_baru_insert.sql
cat  jij_perkim_ke_dinas_pu_reg_baru_tahun_berkurang.sql >> jij_perkim_ke_dinas_pu_reg_baru_insert.sql
