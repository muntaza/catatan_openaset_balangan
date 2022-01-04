#!/bin/sh

#beri awalan dan akhiran
cat pm_kb_ke_dinas_kesehatan.sql | sed -e s/^/\ \ \ \ clone_object\(PeralatanMesin\.objects\.get\(pk\=/g -e s/$/\)\)/g > pm_kb_ke_dinas_kesehatan_awal.py

#gabungkan
cat header_pm.py > pm_kb_ke_dinas_kesehatan_insert.py
cat ./pm_kb_ke_dinas_kesehatan_awal.py >> pm_kb_ke_dinas_kesehatan_insert.py
