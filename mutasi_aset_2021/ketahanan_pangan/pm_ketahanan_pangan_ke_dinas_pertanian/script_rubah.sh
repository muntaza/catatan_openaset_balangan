#!/bin/sh

#beri awalan dan akhiran
cat pm_ketahanan_pangan_ke_dinas_pertanian.sql | sed -e s/^/\ \ \ \ clone_object\(PeralatanMesin\.objects\.get\(pk\=/g -e s/$/\)\)/g > pm_ketahanan_pangan_ke_dinas_pertanian_awal.py

#gabungkan
cat header_pm.py > pm_ketahanan_pangan_ke_dinas_pertanian_insert.py
cat ./pm_ketahanan_pangan_ke_dinas_pertanian_awal.py >> pm_ketahanan_pangan_ke_dinas_pertanian_insert.py
