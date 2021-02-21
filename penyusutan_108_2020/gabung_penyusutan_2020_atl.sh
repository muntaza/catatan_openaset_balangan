#!/bin/sh
#Gabung semua file penyusutan 2020

cat penyusutan_atl_2020_r2.sql > penyusutan_atl_gabungan_2020_r2_OK.sql
cat penyusutan_modul2_atl_2020_r2.sql >> penyusutan_atl_gabungan_2020_r2_OK.sql
cat penyusutan_modul3_atl_2020_r2.sql >> penyusutan_atl_gabungan_2020_r2_OK.sql
cat penyusutan_modul4_atl_2020_r2.sql >> penyusutan_atl_gabungan_2020_r2_OK.sql
cat beban_atl_2020_r2.sql >> penyusutan_atl_gabungan_2020_r2_OK.sql
