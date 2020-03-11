#!/bin/bash

# hapus file gabungan
rm -f gabungan_extracomptable_108.sql


# buat file masing-masing skpd
cat extracomptable_108_setwan.sql | sed -e s/setwan/setda/g | sed -e s/"id_skpd = 1"/"id_skpd = 2"/g > extracomptable_108_setda.sql
cat extracomptable_108_setwan.sql | sed -e s/setwan/dpupr/g | sed -e s/"id_skpd = 1"/"id_skpd = 3"/g > extracomptable_108_dpupr.sql
cat extracomptable_108_setwan.sql | sed -e s/setwan/dishub/g | sed -e s/"id_skpd = 1"/"id_skpd = 4"/g > extracomptable_108_dishub.sql
cat extracomptable_108_setwan.sql | sed -e s/setwan/dinkes/g | sed -e s/"id_skpd = 1"/"id_skpd = 5"/g > extracomptable_108_dinkes.sql
cat extracomptable_108_setwan.sql | sed -e s/setwan/rsud/g | sed -e s/"id_skpd = 1"/"id_skpd = 6"/g > extracomptable_108_rsud.sql
cat extracomptable_108_setwan.sql | sed -e s/setwan/disdik/g | sed -e s/"id_skpd = 1"/"id_skpd = 7"/g > extracomptable_108_disdik.sql
cat extracomptable_108_setwan.sql | sed -e s/setwan/perpustakaan/g | sed -e s/"id_skpd = 1"/"id_skpd = 8"/g > extracomptable_108_perpustakaan.sql
cat extracomptable_108_setwan.sql | sed -e s/setwan/sosial/g | sed -e s/"id_skpd = 1"/"id_skpd = 9"/g > extracomptable_108_sosial.sql
cat extracomptable_108_setwan.sql | sed -e s/setwan/dpmd/g | sed -e s/"id_skpd = 1"/"id_skpd = 10"/g > extracomptable_108_dpmd.sql
cat extracomptable_108_setwan.sql | sed -e s/setwan/dpppa/g | sed -e s/"id_skpd = 1"/"id_skpd = 11"/g > extracomptable_108_dpppa.sql
cat extracomptable_108_setwan.sql | sed -e s/setwan/dukcatpil/g | sed -e s/"id_skpd = 1"/"id_skpd = 12"/g > extracomptable_108_dukcatpil.sql
cat extracomptable_108_setwan.sql | sed -e s/setwan/pertanian/g | sed -e s/"id_skpd = 1"/"id_skpd = 13"/g > extracomptable_108_pertanian.sql
cat extracomptable_108_setwan.sql | sed -e s/setwan/kehutanan/g | sed -e s/"id_skpd = 1"/"id_skpd = 14"/g > extracomptable_108_kehutanan.sql
cat extracomptable_108_setwan.sql | sed -e s/setwan/dkp/g | sed -e s/"id_skpd = 1"/"id_skpd = 15"/g > extracomptable_108_dkp.sql
cat extracomptable_108_setwan.sql | sed -e s/setwan/dkukmp/g | sed -e s/"id_skpd = 1"/"id_skpd = 16"/g > extracomptable_108_dkukmp.sql
cat extracomptable_108_setwan.sql | sed -e s/setwan/distamben/g | sed -e s/"id_skpd = 1"/"id_skpd = 17"/g > extracomptable_108_distamben.sql
cat extracomptable_108_setwan.sql | sed -e s/setwan/dpmptsp/g | sed -e s/"id_skpd = 1"/"id_skpd = 18"/g > extracomptable_108_dpmptsp.sql
cat extracomptable_108_setwan.sql | sed -e s/setwan/bkd/g | sed -e s/"id_skpd = 1"/"id_skpd = 19"/g > extracomptable_108_bkd.sql
cat extracomptable_108_setwan.sql | sed -e s/setwan/inspektorat/g | sed -e s/"id_skpd = 1"/"id_skpd = 20"/g > extracomptable_108_inspektorat.sql
cat extracomptable_108_setwan.sql | sed -e s/setwan/bappeda/g | sed -e s/"id_skpd = 1"/"id_skpd = 21"/g > extracomptable_108_bappeda.sql
cat extracomptable_108_setwan.sql | sed -e s/setwan/dlh/g | sed -e s/"id_skpd = 1"/"id_skpd = 22"/g > extracomptable_108_dlh.sql
cat extracomptable_108_setwan.sql | sed -e s/setwan/dko/g | sed -e s/"id_skpd = 1"/"id_skpd = 23"/g > extracomptable_108_dko.sql
cat extracomptable_108_setwan.sql | sed -e s/setwan/kesbangpol/g | sed -e s/"id_skpd = 1"/"id_skpd = 24"/g > extracomptable_108_kesbangpol.sql
cat extracomptable_108_setwan.sql | sed -e s/setwan/satpolpp/g | sed -e s/"id_skpd = 1"/"id_skpd = 25"/g > extracomptable_108_satpolpp.sql
cat extracomptable_108_setwan.sql | sed -e s/setwan/bkppd/g | sed -e s/"id_skpd = 1"/"id_skpd = 26"/g > extracomptable_108_bkppd.sql
cat extracomptable_108_setwan.sql | sed -e s/setwan/korpri/g | sed -e s/"id_skpd = 1"/"id_skpd = 27"/g > extracomptable_108_korpri.sql
cat extracomptable_108_setwan.sql | sed -e s/setwan/paringin/g | sed -e s/"id_skpd = 1"/"id_skpd = 28"/g > extracomptable_108_paringin.sql
cat extracomptable_108_setwan.sql | sed -e s/setwan/paringinkota/g | sed -e s/"id_skpd = 1"/"id_skpd = 29"/g > extracomptable_108_paringinkota.sql
cat extracomptable_108_setwan.sql | sed -e s/setwan/paringintimur/g | sed -e s/"id_skpd = 1"/"id_skpd = 30"/g > extracomptable_108_paringintimur.sql
cat extracomptable_108_setwan.sql | sed -e s/setwan/lampihong/g | sed -e s/"id_skpd = 1"/"id_skpd = 31"/g > extracomptable_108_lampihong.sql
cat extracomptable_108_setwan.sql | sed -e s/setwan/batumandi/g | sed -e s/"id_skpd = 1"/"id_skpd = 32"/g > extracomptable_108_batumandi.sql
cat extracomptable_108_setwan.sql | sed -e s/setwan/juai/g | sed -e s/"id_skpd = 1"/"id_skpd = 33"/g > extracomptable_108_juai.sql
cat extracomptable_108_setwan.sql | sed -e s/setwan/awayan/g | sed -e s/"id_skpd = 1"/"id_skpd = 34"/g > extracomptable_108_awayan.sql
cat extracomptable_108_setwan.sql | sed -e s/setwan/halong/g | sed -e s/"id_skpd = 1"/"id_skpd = 35"/g > extracomptable_108_halong.sql
cat extracomptable_108_setwan.sql | sed -e s/setwan/paringinselatan/g | sed -e s/"id_skpd = 1"/"id_skpd = 36"/g > extracomptable_108_paringinselatan.sql
cat extracomptable_108_setwan.sql | sed -e s/setwan/batupiring/g | sed -e s/"id_skpd = 1"/"id_skpd = 37"/g > extracomptable_108_batupiring.sql
cat extracomptable_108_setwan.sql | sed -e s/setwan/tebingtinggi/g | sed -e s/"id_skpd = 1"/"id_skpd = 38"/g > extracomptable_108_tebingtinggi.sql
cat extracomptable_108_setwan.sql | sed -e s/setwan/bpbd/g | sed -e s/"id_skpd = 1"/"id_skpd = 39"/g > extracomptable_108_bpbd.sql

cat extracomptable_108_setwan.sql | sed -e s/setwan/dpkp/g | sed -e s/"id_skpd = 1"/"id_skpd = 40"/g > extracomptable_108_dpkp.sql
cat extracomptable_108_setwan.sql | sed -e s/setwan/disnakertrans/g | sed -e s/"id_skpd = 1"/"id_skpd = 41"/g > extracomptable_108_disnakertrans.sql
cat extracomptable_108_setwan.sql | sed -e s/setwan/dppkb/g | sed -e s/"id_skpd = 1"/"id_skpd = 42"/g > extracomptable_108_dppkb.sql
cat extracomptable_108_setwan.sql | sed -e s/setwan/kominfo/g | sed -e s/"id_skpd = 1"/"id_skpd = 43"/g > extracomptable_108_kominfo.sql
cat extracomptable_108_setwan.sql | sed -e s/setwan/kearsipan/g | sed -e s/"id_skpd = 1"/"id_skpd = 44"/g > extracomptable_108_kearsipan.sql
cat extracomptable_108_setwan.sql | sed -e s/setwan/perikanan/g | sed -e s/"id_skpd = 1"/"id_skpd = 45"/g > extracomptable_108_perikanan.sql
cat extracomptable_108_setwan.sql | sed -e s/setwan/pariwisata/g | sed -e s/"id_skpd = 1"/"id_skpd = 46"/g > extracomptable_108_pariwisata.sql
cat extracomptable_108_setwan.sql | sed -e s/setwan/perdagangan/g | sed -e s/"id_skpd = 1"/"id_skpd = 47"/g > extracomptable_108_perdagangan.sql
cat extracomptable_108_setwan.sql | sed -e s/setwan/bppd/g | sed -e s/"id_skpd = 1"/"id_skpd = 48"/g > extracomptable_108_bppd.sql

# gabungkan seluruh file skpd
cat extracomptable_108_*.sql > gabungan_extracomptable_108.sql
