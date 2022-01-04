#!/bin/sh

#beri awalan dan akhiran
cat pm_tenaga_kerja_ke_dinas_penanaman_modal.sql | sed -e s/^/\ \ \ \ clone_object\(PeralatanMesin\.objects\.get\(pk\=/g -e s/$/\)\)/g > pm_tenaga_kerja_ke_dinas_penanaman_modal_awal.py

#gabungkan
cat header_pm.py > pm_tenaga_kerja_ke_dinas_penanaman_modal_insert.py
cat ./pm_tenaga_kerja_ke_dinas_penanaman_modal_awal.py >> pm_tenaga_kerja_ke_dinas_penanaman_modal_insert.py
