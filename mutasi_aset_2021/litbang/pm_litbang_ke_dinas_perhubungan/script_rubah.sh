#!/bin/sh

#beri awalan dan akhiran
cat pm_litbang_ke_dinas_perhubungan.sql | sed -e s/^/\ \ \ \ clone_object\(PeralatanMesin\.objects\.get\(pk\=/g -e s/$/\)\)/g > pm_litbang_ke_dinas_perhubungan_awal.py

#gabungkan
cat header_pm.py > pm_litbang_ke_dinas_perhubungan_insert.py
cat ./pm_litbang_ke_dinas_perhubungan_awal.py >> pm_litbang_ke_dinas_perhubungan_insert.py
