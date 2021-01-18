#!/bin/bash
#edit folder 2019 -> 2020
#hanya satu kali perintah di jalankan

cat beban_penyusutan_gb_2019.xml | sed -e s/2020/2021/g  | sed -e s/2019/2020/g  | sed -e s/2018/2019/g  > beban_penyusutan_gb_2020.xml
cat beban_penyusutan_jij_2019.xml | sed -e s/2020/2021/g  | sed -e s/2019/2020/g  | sed -e s/2018/2019/g  > beban_penyusutan_jij_2020.xml
cat beban_penyusutan_pm_2019.xml | sed -e s/2020/2021/g  | sed -e s/2019/2020/g  | sed -e s/2018/2019/g  > beban_penyusutan_pm_2020.xml

cat penyusutan_gb_2019.xml | sed -e s/2020/2021/g  | sed -e s/2019/2020/g  | sed -e s/2018/2019/g  > penyusutan_gb_2020.xml
cat penyusutan_gb_2018.xml | sed -e s/2020/2021/g  | sed -e s/2019/2020/g  | sed -e s/2018/2019/g  > penyusutan_gb_2019.xml

cat penyusutan_gb_rinci_2019.xml | sed -e s/2020/2021/g  | sed -e s/2019/2020/g  | sed -e s/2018/2019/g  > penyusutan_gb_rinci_2020.xml
cat penyusutan_gb_rinci_2018.xml | sed -e s/2020/2021/g  | sed -e s/2019/2020/g  | sed -e s/2018/2019/g  > penyusutan_gb_rinci_2019.xml

cat penyusutan_jij_2019.xml | sed -e s/2020/2021/g  | sed -e s/2019/2020/g  | sed -e s/2018/2019/g  > penyusutan_jij_2020.xml
cat penyusutan_jij_2018.xml | sed -e s/2020/2021/g  | sed -e s/2019/2020/g  | sed -e s/2018/2019/g  > penyusutan_jij_2019.xml

cat penyusutan_jij_rinci_2019.xml | sed -e s/2020/2021/g  | sed -e s/2019/2020/g  | sed -e s/2018/2019/g  > penyusutan_jij_rinci_2020.xml
cat penyusutan_jij_rinci_2018.xml | sed -e s/2020/2021/g  | sed -e s/2019/2020/g  | sed -e s/2018/2019/g  > penyusutan_jij_rinci_2019.xml

cat penyusutan_pm_2019.xml | sed -e s/2020/2021/g  | sed -e s/2019/2020/g  | sed -e s/2018/2019/g  > penyusutan_pm_2020.xml
cat penyusutan_pm_2018.xml | sed -e s/2020/2021/g  | sed -e s/2019/2020/g  | sed -e s/2018/2019/g  > penyusutan_pm_2019.xml

cat penyusutan_pm_rinci_2019.xml | sed -e s/2020/2021/g  | sed -e s/2019/2020/g  | sed -e s/2018/2019/g  > penyusutan_pm_rinci_2020.xml
cat penyusutan_pm_rinci_2018.xml | sed -e s/2020/2021/g  | sed -e s/2019/2020/g  | sed -e s/2018/2019/g  > penyusutan_pm_rinci_2019.xml
