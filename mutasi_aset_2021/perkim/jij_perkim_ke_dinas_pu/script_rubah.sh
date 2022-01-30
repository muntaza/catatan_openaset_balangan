#!/bin/sh

#beri awalan dan akhiran
cat jij_perkim_ke_dinas_pu.sql | sed -e s/^/\ \ \ \ clone_object\(JalanIrigasiJaringan\.objects\.get\(pk\=/g -e s/$/\)\)/g > jij_perkim_ke_dinas_pu_awal.py

#gabungkan
cat header_jij.py > jij_perkim_ke_dinas_pu_insert.py
cat ./jij_perkim_ke_dinas_pu_awal.py >> jij_perkim_ke_dinas_pu_insert.py
