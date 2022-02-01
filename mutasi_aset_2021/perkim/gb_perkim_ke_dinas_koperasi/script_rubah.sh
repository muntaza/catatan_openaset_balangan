#!/bin/sh

#beri awalan dan akhiran
cat gb_perkim_ke_dinas_koperasi.sql | sed -e s/^/\ \ \ \ clone_object\(GedungBangunan\.objects\.get\(pk\=/g -e s/$/\)\)/g > gb_perkim_ke_dinas_koperasi_awal.py

#gabungkan
cat header_gb.py > gb_perkim_ke_dinas_koperasi_insert.py
cat ./gb_perkim_ke_dinas_koperasi_awal.py >> gb_perkim_ke_dinas_koperasi_insert.py
