#!/bin/bash
#edit file penyusutan ke tahun 2021



cat beban_atl_2020_r2.sql | sed -e s/2021/2022/g  | sed -e s/2020/2021/g  | sed -e s/2019/2020/g  > beban_atl_2021_r2.sql
cat penyusutan_atl_2020_r2.sql | sed -e s/2021/2022/g  | sed -e s/2020/2021/g  | sed -e s/2019/2020/g  > penyusutan_atl_2021_r2.sql
cat penyusutan_modul2_atl_2020_r2.sql | sed -e s/2021/2022/g  | sed -e s/2020/2021/g  | sed -e s/2019/2020/g  > penyusutan_modul2_atl_2021_r2.sql
cat penyusutan_modul3_atl_2020_r2.sql | sed -e s/2021/2022/g  | sed -e s/2020/2021/g  | sed -e s/2019/2020/g  > penyusutan_modul3_atl_2021_r2.sql
cat penyusutan_modul4_atl_2020_r2.sql | sed -e s/2021/2022/g  | sed -e s/2020/2021/g  | sed -e s/2019/2020/g  > penyusutan_modul4_atl_2021_r2.sql
