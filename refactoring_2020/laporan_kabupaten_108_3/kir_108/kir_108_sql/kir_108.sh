#!/bin/bash

# hapus file gabungan
rm -f gabungan_kir_108.sql


# buat file masing-masing skpd
cat kir_108_setwan.sql | sed -e s/setwan/setda/g | sed -e s/"id_skpd = 1"/"id_skpd = 2"/g > kir_108_setda.sql
cat kir_108_setwan.sql | sed -e s/setwan/dpupr/g | sed -e s/"id_skpd = 1"/"id_skpd = 3"/g > kir_108_dpupr.sql
cat kir_108_setwan.sql | sed -e s/setwan/dishub/g | sed -e s/"id_skpd = 1"/"id_skpd = 4"/g > kir_108_dishub.sql
cat kir_108_setwan.sql | sed -e s/setwan/dinkes/g | sed -e s/"id_skpd = 1"/"id_skpd = 5"/g > kir_108_dinkes.sql
cat kir_108_setwan.sql | sed -e s/setwan/rsud/g | sed -e s/"id_skpd = 1"/"id_skpd = 6"/g > kir_108_rsud.sql
cat kir_108_setwan.sql | sed -e s/setwan/disdik/g | sed -e s/"id_skpd = 1"/"id_skpd = 7"/g > kir_108_disdik.sql
cat kir_108_setwan.sql | sed -e s/setwan/perpustakaan/g | sed -e s/"id_skpd = 1"/"id_skpd = 8"/g > kir_108_perpustakaan.sql
cat kir_108_setwan.sql | sed -e s/setwan/sosial/g | sed -e s/"id_skpd = 1"/"id_skpd = 9"/g > kir_108_sosial.sql
cat kir_108_setwan.sql | sed -e s/setwan/dpmd/g | sed -e s/"id_skpd = 1"/"id_skpd = 10"/g > kir_108_dpmd.sql
cat kir_108_setwan.sql | sed -e s/setwan/dpppa/g | sed -e s/"id_skpd = 1"/"id_skpd = 11"/g > kir_108_dpppa.sql
cat kir_108_setwan.sql | sed -e s/setwan/dukcatpil/g | sed -e s/"id_skpd = 1"/"id_skpd = 12"/g > kir_108_dukcatpil.sql
cat kir_108_setwan.sql | sed -e s/setwan/pertanian/g | sed -e s/"id_skpd = 1"/"id_skpd = 13"/g > kir_108_pertanian.sql
cat kir_108_setwan.sql | sed -e s/setwan/kehutanan/g | sed -e s/"id_skpd = 1"/"id_skpd = 14"/g > kir_108_kehutanan.sql
cat kir_108_setwan.sql | sed -e s/setwan/dkp/g | sed -e s/"id_skpd = 1"/"id_skpd = 15"/g > kir_108_dkp.sql
cat kir_108_setwan.sql | sed -e s/setwan/dkukmp/g | sed -e s/"id_skpd = 1"/"id_skpd = 16"/g > kir_108_dkukmp.sql
cat kir_108_setwan.sql | sed -e s/setwan/distamben/g | sed -e s/"id_skpd = 1"/"id_skpd = 17"/g > kir_108_distamben.sql
cat kir_108_setwan.sql | sed -e s/setwan/dpmptsp/g | sed -e s/"id_skpd = 1"/"id_skpd = 18"/g > kir_108_dpmptsp.sql
cat kir_108_setwan.sql | sed -e s/setwan/bkd/g | sed -e s/"id_skpd = 1"/"id_skpd = 19"/g > kir_108_bkd.sql
cat kir_108_setwan.sql | sed -e s/setwan/inspektorat/g | sed -e s/"id_skpd = 1"/"id_skpd = 20"/g > kir_108_inspektorat.sql
cat kir_108_setwan.sql | sed -e s/setwan/bappeda/g | sed -e s/"id_skpd = 1"/"id_skpd = 21"/g > kir_108_bappeda.sql
cat kir_108_setwan.sql | sed -e s/setwan/dlh/g | sed -e s/"id_skpd = 1"/"id_skpd = 22"/g > kir_108_dlh.sql
cat kir_108_setwan.sql | sed -e s/setwan/dko/g | sed -e s/"id_skpd = 1"/"id_skpd = 23"/g > kir_108_dko.sql
cat kir_108_setwan.sql | sed -e s/setwan/kesbangpol/g | sed -e s/"id_skpd = 1"/"id_skpd = 24"/g > kir_108_kesbangpol.sql
cat kir_108_setwan.sql | sed -e s/setwan/satpolpp/g | sed -e s/"id_skpd = 1"/"id_skpd = 25"/g > kir_108_satpolpp.sql
cat kir_108_setwan.sql | sed -e s/setwan/bkppd/g | sed -e s/"id_skpd = 1"/"id_skpd = 26"/g > kir_108_bkppd.sql
cat kir_108_setwan.sql | sed -e s/setwan/korpri/g | sed -e s/"id_skpd = 1"/"id_skpd = 27"/g > kir_108_korpri.sql
cat kir_108_setwan.sql | sed -e s/setwan/paringin/g | sed -e s/"id_skpd = 1"/"id_skpd = 28"/g > kir_108_paringin.sql
cat kir_108_setwan.sql | sed -e s/setwan/paringinkota/g | sed -e s/"id_skpd = 1"/"id_skpd = 29"/g > kir_108_paringinkota.sql
cat kir_108_setwan.sql | sed -e s/setwan/paringintimur/g | sed -e s/"id_skpd = 1"/"id_skpd = 30"/g > kir_108_paringintimur.sql
cat kir_108_setwan.sql | sed -e s/setwan/lampihong/g | sed -e s/"id_skpd = 1"/"id_skpd = 31"/g > kir_108_lampihong.sql
cat kir_108_setwan.sql | sed -e s/setwan/batumandi/g | sed -e s/"id_skpd = 1"/"id_skpd = 32"/g > kir_108_batumandi.sql
cat kir_108_setwan.sql | sed -e s/setwan/juai/g | sed -e s/"id_skpd = 1"/"id_skpd = 33"/g > kir_108_juai.sql
cat kir_108_setwan.sql | sed -e s/setwan/awayan/g | sed -e s/"id_skpd = 1"/"id_skpd = 34"/g > kir_108_awayan.sql
cat kir_108_setwan.sql | sed -e s/setwan/halong/g | sed -e s/"id_skpd = 1"/"id_skpd = 35"/g > kir_108_halong.sql
cat kir_108_setwan.sql | sed -e s/setwan/paringinselatan/g | sed -e s/"id_skpd = 1"/"id_skpd = 36"/g > kir_108_paringinselatan.sql
cat kir_108_setwan.sql | sed -e s/setwan/batupiring/g | sed -e s/"id_skpd = 1"/"id_skpd = 37"/g > kir_108_batupiring.sql
cat kir_108_setwan.sql | sed -e s/setwan/tebingtinggi/g | sed -e s/"id_skpd = 1"/"id_skpd = 38"/g > kir_108_tebingtinggi.sql
cat kir_108_setwan.sql | sed -e s/setwan/bpbd/g | sed -e s/"id_skpd = 1"/"id_skpd = 39"/g > kir_108_bpbd.sql

cat kir_108_setwan.sql | sed -e s/setwan/dpkp/g | sed -e s/"id_skpd = 1"/"id_skpd = 40"/g > kir_108_dpkp.sql
cat kir_108_setwan.sql | sed -e s/setwan/disnakertrans/g | sed -e s/"id_skpd = 1"/"id_skpd = 41"/g > kir_108_disnakertrans.sql
cat kir_108_setwan.sql | sed -e s/setwan/dppkb/g | sed -e s/"id_skpd = 1"/"id_skpd = 42"/g > kir_108_dppkb.sql
cat kir_108_setwan.sql | sed -e s/setwan/kominfo/g | sed -e s/"id_skpd = 1"/"id_skpd = 43"/g > kir_108_kominfo.sql
cat kir_108_setwan.sql | sed -e s/setwan/kearsipan/g | sed -e s/"id_skpd = 1"/"id_skpd = 44"/g > kir_108_kearsipan.sql
cat kir_108_setwan.sql | sed -e s/setwan/perikanan/g | sed -e s/"id_skpd = 1"/"id_skpd = 45"/g > kir_108_perikanan.sql
cat kir_108_setwan.sql | sed -e s/setwan/pariwisata/g | sed -e s/"id_skpd = 1"/"id_skpd = 46"/g > kir_108_pariwisata.sql
cat kir_108_setwan.sql | sed -e s/setwan/perdagangan/g | sed -e s/"id_skpd = 1"/"id_skpd = 47"/g > kir_108_perdagangan.sql
cat kir_108_setwan.sql | sed -e s/setwan/bppd/g | sed -e s/"id_skpd = 1"/"id_skpd = 48"/g > kir_108_bppd.sql

# gabungkan seluruh file skpd
cat kir_108_*.sql > gabungan_kir_108.sql
