#!/bin/sh

#beri awalan dan akhiran
cat pm_perkim_ke_dinas_pu.sql | sed -e s/^/\ \ \ \ clone_object\(PeralatanMesin\.objects\.get\(pk\=/g -e s/$/\)\)/g > pm_perkim_ke_dinas_pu_awal.py

#gabungkan
cat header_pm.py > pm_perkim_ke_dinas_pu_insert.py
cat ./pm_perkim_ke_dinas_pu_awal.py >> pm_perkim_ke_dinas_pu_insert.py
