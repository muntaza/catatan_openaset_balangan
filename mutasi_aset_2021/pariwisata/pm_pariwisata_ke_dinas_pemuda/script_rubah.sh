#!/bin/sh

#beri awalan dan akhiran
cat pm_pariwisata_ke_dinas_pemuda.sql | sed -e s/^/\ \ \ \ clone_object\(PeralatanMesin\.objects\.get\(pk\=/g -e s/$/\)\)/g > pm_pariwisata_ke_dinas_pemuda_awal.py

#gabungkan
cat header_pm.py > pm_pariwisata_ke_dinas_pemuda_insert.py
cat ./pm_pariwisata_ke_dinas_pemuda_awal.py >> pm_pariwisata_ke_dinas_pemuda_insert.py
