#!/bin/bash

# hapus file gabungan
rm -f gabungan_mutasi_barang_berkurang_108.sql


# buat file masing-masing skpd
cat mutasi_barang_berkurang_108_setwan.sql | sed -e s/setwan/setda/g | sed -e s/"id_skpd = 1"/"id_skpd = 2"/g > mutasi_barang_berkurang_108_setda.sql
cat mutasi_barang_berkurang_108_setwan.sql | sed -e s/setwan/dpupr/g | sed -e s/"id_skpd = 1"/"id_skpd = 3"/g > mutasi_barang_berkurang_108_dpupr.sql
cat mutasi_barang_berkurang_108_setwan.sql | sed -e s/setwan/dishub/g | sed -e s/"id_skpd = 1"/"id_skpd = 4"/g > mutasi_barang_berkurang_108_dishub.sql
cat mutasi_barang_berkurang_108_setwan.sql | sed -e s/setwan/dinkes/g | sed -e s/"id_skpd = 1"/"id_skpd = 5"/g > mutasi_barang_berkurang_108_dinkes.sql
cat mutasi_barang_berkurang_108_setwan.sql | sed -e s/setwan/rsud/g | sed -e s/"id_skpd = 1"/"id_skpd = 6"/g > mutasi_barang_berkurang_108_rsud.sql
cat mutasi_barang_berkurang_108_setwan.sql | sed -e s/setwan/disdik/g | sed -e s/"id_skpd = 1"/"id_skpd = 7"/g > mutasi_barang_berkurang_108_disdik.sql
cat mutasi_barang_berkurang_108_setwan.sql | sed -e s/setwan/perpustakaan/g | sed -e s/"id_skpd = 1"/"id_skpd = 8"/g > mutasi_barang_berkurang_108_perpustakaan.sql
cat mutasi_barang_berkurang_108_setwan.sql | sed -e s/setwan/sosial/g | sed -e s/"id_skpd = 1"/"id_skpd = 9"/g > mutasi_barang_berkurang_108_sosial.sql
cat mutasi_barang_berkurang_108_setwan.sql | sed -e s/setwan/dpmd/g | sed -e s/"id_skpd = 1"/"id_skpd = 10"/g > mutasi_barang_berkurang_108_dpmd.sql
cat mutasi_barang_berkurang_108_setwan.sql | sed -e s/setwan/dpppa/g | sed -e s/"id_skpd = 1"/"id_skpd = 11"/g > mutasi_barang_berkurang_108_dpppa.sql
cat mutasi_barang_berkurang_108_setwan.sql | sed -e s/setwan/dukcatpil/g | sed -e s/"id_skpd = 1"/"id_skpd = 12"/g > mutasi_barang_berkurang_108_dukcatpil.sql
cat mutasi_barang_berkurang_108_setwan.sql | sed -e s/setwan/pertanian/g | sed -e s/"id_skpd = 1"/"id_skpd = 13"/g > mutasi_barang_berkurang_108_pertanian.sql
cat mutasi_barang_berkurang_108_setwan.sql | sed -e s/setwan/kehutanan/g | sed -e s/"id_skpd = 1"/"id_skpd = 14"/g > mutasi_barang_berkurang_108_kehutanan.sql
cat mutasi_barang_berkurang_108_setwan.sql | sed -e s/setwan/dkp/g | sed -e s/"id_skpd = 1"/"id_skpd = 15"/g > mutasi_barang_berkurang_108_dkp.sql
cat mutasi_barang_berkurang_108_setwan.sql | sed -e s/setwan/dkukmp/g | sed -e s/"id_skpd = 1"/"id_skpd = 16"/g > mutasi_barang_berkurang_108_dkukmp.sql
cat mutasi_barang_berkurang_108_setwan.sql | sed -e s/setwan/distamben/g | sed -e s/"id_skpd = 1"/"id_skpd = 17"/g > mutasi_barang_berkurang_108_distamben.sql
cat mutasi_barang_berkurang_108_setwan.sql | sed -e s/setwan/dpmptsp/g | sed -e s/"id_skpd = 1"/"id_skpd = 18"/g > mutasi_barang_berkurang_108_dpmptsp.sql
cat mutasi_barang_berkurang_108_setwan.sql | sed -e s/setwan/bkd/g | sed -e s/"id_skpd = 1"/"id_skpd = 19"/g > mutasi_barang_berkurang_108_bkd.sql
cat mutasi_barang_berkurang_108_setwan.sql | sed -e s/setwan/inspektorat/g | sed -e s/"id_skpd = 1"/"id_skpd = 20"/g > mutasi_barang_berkurang_108_inspektorat.sql
cat mutasi_barang_berkurang_108_setwan.sql | sed -e s/setwan/bappeda/g | sed -e s/"id_skpd = 1"/"id_skpd = 21"/g > mutasi_barang_berkurang_108_bappeda.sql
cat mutasi_barang_berkurang_108_setwan.sql | sed -e s/setwan/dlh/g | sed -e s/"id_skpd = 1"/"id_skpd = 22"/g > mutasi_barang_berkurang_108_dlh.sql
cat mutasi_barang_berkurang_108_setwan.sql | sed -e s/setwan/dko/g | sed -e s/"id_skpd = 1"/"id_skpd = 23"/g > mutasi_barang_berkurang_108_dko.sql
cat mutasi_barang_berkurang_108_setwan.sql | sed -e s/setwan/kesbangpol/g | sed -e s/"id_skpd = 1"/"id_skpd = 24"/g > mutasi_barang_berkurang_108_kesbangpol.sql
cat mutasi_barang_berkurang_108_setwan.sql | sed -e s/setwan/satpolpp/g | sed -e s/"id_skpd = 1"/"id_skpd = 25"/g > mutasi_barang_berkurang_108_satpolpp.sql
cat mutasi_barang_berkurang_108_setwan.sql | sed -e s/setwan/bkppd/g | sed -e s/"id_skpd = 1"/"id_skpd = 26"/g > mutasi_barang_berkurang_108_bkppd.sql
cat mutasi_barang_berkurang_108_setwan.sql | sed -e s/setwan/korpri/g | sed -e s/"id_skpd = 1"/"id_skpd = 27"/g > mutasi_barang_berkurang_108_korpri.sql
cat mutasi_barang_berkurang_108_setwan.sql | sed -e s/setwan/paringin/g | sed -e s/"id_skpd = 1"/"id_skpd = 28"/g > mutasi_barang_berkurang_108_paringin.sql
cat mutasi_barang_berkurang_108_setwan.sql | sed -e s/setwan/paringinkota/g | sed -e s/"id_skpd = 1"/"id_skpd = 29"/g > mutasi_barang_berkurang_108_paringinkota.sql
cat mutasi_barang_berkurang_108_setwan.sql | sed -e s/setwan/paringintimur/g | sed -e s/"id_skpd = 1"/"id_skpd = 30"/g > mutasi_barang_berkurang_108_paringintimur.sql
cat mutasi_barang_berkurang_108_setwan.sql | sed -e s/setwan/lampihong/g | sed -e s/"id_skpd = 1"/"id_skpd = 31"/g > mutasi_barang_berkurang_108_lampihong.sql
cat mutasi_barang_berkurang_108_setwan.sql | sed -e s/setwan/batumandi/g | sed -e s/"id_skpd = 1"/"id_skpd = 32"/g > mutasi_barang_berkurang_108_batumandi.sql
cat mutasi_barang_berkurang_108_setwan.sql | sed -e s/setwan/juai/g | sed -e s/"id_skpd = 1"/"id_skpd = 33"/g > mutasi_barang_berkurang_108_juai.sql
cat mutasi_barang_berkurang_108_setwan.sql | sed -e s/setwan/awayan/g | sed -e s/"id_skpd = 1"/"id_skpd = 34"/g > mutasi_barang_berkurang_108_awayan.sql
cat mutasi_barang_berkurang_108_setwan.sql | sed -e s/setwan/halong/g | sed -e s/"id_skpd = 1"/"id_skpd = 35"/g > mutasi_barang_berkurang_108_halong.sql
cat mutasi_barang_berkurang_108_setwan.sql | sed -e s/setwan/paringinselatan/g | sed -e s/"id_skpd = 1"/"id_skpd = 36"/g > mutasi_barang_berkurang_108_paringinselatan.sql
cat mutasi_barang_berkurang_108_setwan.sql | sed -e s/setwan/batupiring/g | sed -e s/"id_skpd = 1"/"id_skpd = 37"/g > mutasi_barang_berkurang_108_batupiring.sql
cat mutasi_barang_berkurang_108_setwan.sql | sed -e s/setwan/tebingtinggi/g | sed -e s/"id_skpd = 1"/"id_skpd = 38"/g > mutasi_barang_berkurang_108_tebingtinggi.sql
cat mutasi_barang_berkurang_108_setwan.sql | sed -e s/setwan/bpbd/g | sed -e s/"id_skpd = 1"/"id_skpd = 39"/g > mutasi_barang_berkurang_108_bpbd.sql

cat mutasi_barang_berkurang_108_setwan.sql | sed -e s/setwan/dpkp/g | sed -e s/"id_skpd = 1"/"id_skpd = 40"/g > mutasi_barang_berkurang_108_dpkp.sql
cat mutasi_barang_berkurang_108_setwan.sql | sed -e s/setwan/disnakertrans/g | sed -e s/"id_skpd = 1"/"id_skpd = 41"/g > mutasi_barang_berkurang_108_disnakertrans.sql
cat mutasi_barang_berkurang_108_setwan.sql | sed -e s/setwan/dppkb/g | sed -e s/"id_skpd = 1"/"id_skpd = 42"/g > mutasi_barang_berkurang_108_dppkb.sql
cat mutasi_barang_berkurang_108_setwan.sql | sed -e s/setwan/kominfo/g | sed -e s/"id_skpd = 1"/"id_skpd = 43"/g > mutasi_barang_berkurang_108_kominfo.sql
cat mutasi_barang_berkurang_108_setwan.sql | sed -e s/setwan/kearsipan/g | sed -e s/"id_skpd = 1"/"id_skpd = 44"/g > mutasi_barang_berkurang_108_kearsipan.sql
cat mutasi_barang_berkurang_108_setwan.sql | sed -e s/setwan/perikanan/g | sed -e s/"id_skpd = 1"/"id_skpd = 45"/g > mutasi_barang_berkurang_108_perikanan.sql
cat mutasi_barang_berkurang_108_setwan.sql | sed -e s/setwan/pariwisata/g | sed -e s/"id_skpd = 1"/"id_skpd = 46"/g > mutasi_barang_berkurang_108_pariwisata.sql
cat mutasi_barang_berkurang_108_setwan.sql | sed -e s/setwan/perdagangan/g | sed -e s/"id_skpd = 1"/"id_skpd = 47"/g > mutasi_barang_berkurang_108_perdagangan.sql
cat mutasi_barang_berkurang_108_setwan.sql | sed -e s/setwan/bppd/g | sed -e s/"id_skpd = 1"/"id_skpd = 48"/g > mutasi_barang_berkurang_108_bppd.sql

# gabungkan seluruh file skpd
cat mutasi_barang_berkurang_108_*.sql > gabungan_mutasi_barang_berkurang_108.sql
