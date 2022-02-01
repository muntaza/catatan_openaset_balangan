#!/bin/sh

#beri awalan dan akhiran
cat gb_perkim_ke_dinas_koperasi.sql | sed -e s/^/UPDATE\ gedung_bangunan\ SET\ id_sub_skpd\ \=\ 403\ WHERE\ id\ \=\ /g -e s/$/\;/g > gb_perkim_ke_dinas_koperasi_sub_skpd.sql
cat gb_perkim_ke_dinas_koperasi.sql | sed -e s/^/UPDATE\ harga_gedung_bangunan\ SET\ id_asal_usul\ =\ 7\,\ tahun_mutasi\ =\ 2021\ WHERE\ id_gedung_bangunan\ \=\ /g -e s/$/\;/g > gb_perkim_ke_dinas_koperasi_harga.sql
cat gb_perkim_ke_dinas_koperasi.sql | sed -e s/^/INSERT\ INTO\ skpd_asal_gedung_bangunan\ \(id_gedung_bangunan\,\ id_skpd\)\ VALUES\ \(/g -e s/$/\,\ 40\)\ ON\ CONFLICT\ \(id_gedung_bangunan\)\ DO\ UPDATE\ SET\ id_skpd\ \=\ 40\;/g > gb_perkim_ke_dinas_koperasi_skpd_asal.sql


#gabungkan
cat  gb_perkim_ke_dinas_koperasi_sub_skpd.sql > gb_perkim_ke_dinas_koperasi_insert.sql
cat  gb_perkim_ke_dinas_koperasi_harga.sql >> gb_perkim_ke_dinas_koperasi_insert.sql
cat  gb_perkim_ke_dinas_koperasi_skpd_asal.sql >> gb_perkim_ke_dinas_koperasi_insert.sql
