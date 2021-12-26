#!/bin/sh

#beri awalan dan akhiran
cat pm_pariwisata_ke_dinas_pemuda.sql | sed -e s/^/UPDATE\ peralatan_mesin\ SET\ id_sub_skpd\ \=\ 438\ WHERE\ id\ \=\ /g -e s/$/\;/g > pm_pariwisata_ke_dinas_pemuda_sub_skpd.sql

#gabungkan
echo "-- Pariwisata ke Dinas Pemuda" > pm_pariwisata_ke_dinas_pemuda_insert.sql
cat  pm_pariwisata_ke_dinas_pemuda_sub_skpd.sql >> pm_pariwisata_ke_dinas_pemuda_insert.sql
