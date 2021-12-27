#!/bin/sh

#beri awalan dan akhiran
cat pm_kearsipan_ke_dinas_perpustakaan.sql | sed -e s/^/\ \ \ \ clone_object\(PeralatanMesin\.objects\.get\(pk\=/g -e s/$/\)\)/g > pm_kearsipan_ke_dinas_perpustakaan_awal.py

#gabungkan
cat header_pm.py > pm_kearsipan_ke_dinas_perpustakaan_insert.py
cat ./pm_kearsipan_ke_dinas_perpustakaan_awal.py >> pm_kearsipan_ke_dinas_perpustakaan_insert.py
