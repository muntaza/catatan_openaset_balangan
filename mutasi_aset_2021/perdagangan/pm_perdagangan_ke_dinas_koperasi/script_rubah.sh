#!/bin/sh

#beri awalan dan akhiran
cat pm_perdagangan_ke_dinas_koperasi.sql | sed -e s/^/\ \ \ \ clone_object\(PeralatanMesin\.objects\.get\(pk\=/g -e s/$/\)\)/g > pm_perdagangan_ke_dinas_koperasi_awal.py

#gabungkan
cat header_pm.py > pm_perdagangan_ke_dinas_koperasi_insert.py
cat ./pm_perdagangan_ke_dinas_koperasi_awal.py >> pm_perdagangan_ke_dinas_koperasi_insert.py
