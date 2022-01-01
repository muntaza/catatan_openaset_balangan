#!/bin/sh

#beri awalan dan akhiran
cat atl_perikanan_ke_dinas_ketahanan_pangan.sql | sed -e s/^/\ \ \ \ clone_object\(AsetTetapLainnya\.objects\.get\(pk\=/g -e s/$/\)\)/g > atl_perikanan_ke_dinas_ketahanan_pangan_awal.py

#gabungkan
cat header_atl.py > atl_perikanan_ke_dinas_ketahanan_pangan_insert.py
cat ./atl_perikanan_ke_dinas_ketahanan_pangan_awal.py >> atl_perikanan_ke_dinas_ketahanan_pangan_insert.py
