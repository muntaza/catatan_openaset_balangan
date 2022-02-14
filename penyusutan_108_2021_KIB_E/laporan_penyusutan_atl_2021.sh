#!/bin/bash
#edit folder 2020 -> 2021
#hanya satu kali perintah di jalankan

cat beban_penyusutan_atl_2020.xml | sed -e s/2021/2022/g  | sed -e s/2020/2021/g  | sed -e s/2019/2020/g  > beban_penyusutan_atl_2021.xml

cat penyusutan_atl_2020.xml | sed -e s/2021/2022/g  | sed -e s/2020/2021/g  | sed -e s/2019/2020/g  > penyusutan_atl_2021.xml
cat penyusutan_atl_2019.xml | sed -e s/2021/2022/g  | sed -e s/2020/2021/g  | sed -e s/2019/2020/g  > penyusutan_atl_2020.xml

cat penyusutan_atl_rinci_2020.xml | sed -e s/2021/2022/g  | sed -e s/2020/2021/g  | sed -e s/2019/2020/g  > penyusutan_atl_rinci_2021.xml
cat penyusutan_atl_rinci_2019.xml | sed -e s/2021/2022/g  | sed -e s/2020/2021/g  | sed -e s/2019/2020/g  > penyusutan_atl_rinci_2020.xml

rm beban_penyusutan_atl_2020.xml *2019*
