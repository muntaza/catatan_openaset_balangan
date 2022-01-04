#!/bin/sh

#beri awalan dan akhiran
cat pm_pembermas_ke_dinas_sosial.sql | sed -e s/^/\ \ \ \ clone_object\(PeralatanMesin\.objects\.get\(pk\=/g -e s/$/\)\)/g > pm_pembermas_ke_dinas_sosial_awal.py

#gabungkan
cat header_pm.py > pm_pembermas_ke_dinas_sosial_insert.py
cat ./pm_pembermas_ke_dinas_sosial_awal.py >> pm_pembermas_ke_dinas_sosial_insert.py
