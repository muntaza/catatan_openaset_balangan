#!/bin/sh

#beri awalan dan akhiran
cat pm_perikanan_ke_dinas_ketahanan_pangan.sql | sed -e s/^/\ \ \ \ clone_object\(PeralatanMesin\.objects\.get\(pk\=/g -e s/$/\)\)/g > pm_perikanan_ke_dinas_ketahanan_pangan_awal.py

#gabungkan
cat header_pm.py > pm_perikanan_ke_dinas_ketahanan_pangan_insert.py
cat ./pm_perikanan_ke_dinas_ketahanan_pangan_awal.py >> pm_perikanan_ke_dinas_ketahanan_pangan_insert.py
