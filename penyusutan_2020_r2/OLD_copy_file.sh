#!/bin/bash
#edit file penyusutan ke tahun 2019



cat beban_gb_2019_r2.sql | sed -e s/2020/2021/g  | sed -e s/2019/2020/g  | sed -e s/2018/2019/g  > beban_gb_2020_r2.sql
cat beban_jij_2019_r2.sql | sed -e s/2020/2021/g  | sed -e s/2019/2020/g  | sed -e s/2018/2019/g  > beban_jij_2020_r2.sql
cat beban_pm_2019_r2.sql | sed -e s/2020/2021/g  | sed -e s/2019/2020/g  | sed -e s/2018/2019/g  > beban_pm_2020_r2.sql
cat penyusutan_gb_2019_r2.sql | sed -e s/2020/2021/g  | sed -e s/2019/2020/g  | sed -e s/2018/2019/g  > penyusutan_gb_2020_r2.sql
cat penyusutan_jij_2019_r2.sql | sed -e s/2020/2021/g  | sed -e s/2019/2020/g  | sed -e s/2018/2019/g  > penyusutan_jij_2020_r2.sql
cat penyusutan_pm_2019_r2.sql | sed -e s/2020/2021/g  | sed -e s/2019/2020/g  | sed -e s/2018/2019/g  > penyusutan_pm_2020_r2.sql
cat penyusutan_modul2_gb_2019_r2.sql | sed -e s/2020/2021/g  | sed -e s/2019/2020/g  | sed -e s/2018/2019/g  > penyusutan_modul2_gb_2020_r2.sql
cat penyusutan_modul2_jij_2019_r2.sql | sed -e s/2020/2021/g  | sed -e s/2019/2020/g  | sed -e s/2018/2019/g  > penyusutan_modul2_jij_2020_r2.sql
cat penyusutan_modul2_pm_2019_r2.sql | sed -e s/2020/2021/g  | sed -e s/2019/2020/g  | sed -e s/2018/2019/g  > penyusutan_modul2_pm_2020_r2.sql
cat penyusutan_modul3_gb_2019_r2.sql | sed -e s/2020/2021/g  | sed -e s/2019/2020/g  | sed -e s/2018/2019/g  > penyusutan_modul3_gb_2020_r2.sql
cat penyusutan_modul3_jij_2019_r2.sql | sed -e s/2020/2021/g  | sed -e s/2019/2020/g  | sed -e s/2018/2019/g  > penyusutan_modul3_jij_2020_r2.sql
cat penyusutan_modul3_pm_2019_r2.sql | sed -e s/2020/2021/g  | sed -e s/2019/2020/g  | sed -e s/2018/2019/g  > penyusutan_modul3_pm_2020_r2.sql
cat penyusutan_modul4_gb_2019_r2.sql | sed -e s/2020/2021/g  | sed -e s/2019/2020/g  | sed -e s/2018/2019/g  > penyusutan_modul4_gb_2020_r2.sql
cat penyusutan_modul4_jij_2019_r2.sql | sed -e s/2020/2021/g  | sed -e s/2019/2020/g  | sed -e s/2018/2019/g  > penyusutan_modul4_jij_2020_r2.sql
cat penyusutan_modul4_pm_2019_r2.sql | sed -e s/2020/2021/g  | sed -e s/2019/2020/g  | sed -e s/2018/2019/g  > penyusutan_modul4_pm_2020_r2.sql
cat gabung_penyusutan_2019.sh | sed -e s/2019/2020/g > gabung_penyusutan_2020.sh
cat laporan_penyusutan_2019.sh | sed -e s/2020/2021/g  | sed -e s/2019/2020/g  | sed -e s/2018/2019/g \
       | sed -e /2017/2018/g	> laporan_penyusutan_2020.sh
