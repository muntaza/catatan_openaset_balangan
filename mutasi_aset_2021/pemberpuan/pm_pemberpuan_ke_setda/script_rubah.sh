#!/bin/sh

#beri awalan dan akhiran
cat pm_pemberpuan_ke_setda.sql | sed -e s/^/\ \ \ \ clone_object\(PeralatanMesin\.objects\.get\(pk\=/g -e s/$/\)\)/g > pm_pemberpuan_ke_setda_awal.py

#gabungkan
cat header_pm.py > pm_pemberpuan_ke_setda_insert.py
cat ./pm_pemberpuan_ke_setda_awal.py >> pm_pemberpuan_ke_setda_insert.py
