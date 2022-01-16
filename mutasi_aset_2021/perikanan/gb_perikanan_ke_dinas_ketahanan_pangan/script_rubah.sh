#!/bin/sh

#beri awalan dan akhiran
cat gb_perikanan_ke_dinas_ketahanan_pangan.sql | sed -e s/^/\ \ \ \ clone_object\(GedungBangunan\.objects\.get\(pk\=/g -e s/$/\)\)/g > gb_perikanan_ke_dinas_ketahanan_pangan_awal.py

#gabungkan
cat header_gb.py > gb_perikanan_ke_dinas_ketahanan_pangan_insert.py
cat ./gb_perikanan_ke_dinas_ketahanan_pangan_awal.py >> gb_perikanan_ke_dinas_ketahanan_pangan_insert.py
