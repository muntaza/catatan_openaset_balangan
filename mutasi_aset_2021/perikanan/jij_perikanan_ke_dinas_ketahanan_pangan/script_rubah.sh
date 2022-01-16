#!/bin/sh

#beri awalan dan akhiran
cat jij_perikanan_ke_dinas_ketahanan_pangan.sql | sed -e s/^/\ \ \ \ clone_object\(JalanIrigasiJaringan\.objects\.get\(pk\=/g -e s/$/\)\)/g > jij_perikanan_ke_dinas_ketahanan_pangan_awal.py

#gabungkan
cat header_jij.py > jij_perikanan_ke_dinas_ketahanan_pangan_insert.py
cat ./jij_perikanan_ke_dinas_ketahanan_pangan_awal.py >> jij_perikanan_ke_dinas_ketahanan_pangan_insert.py
