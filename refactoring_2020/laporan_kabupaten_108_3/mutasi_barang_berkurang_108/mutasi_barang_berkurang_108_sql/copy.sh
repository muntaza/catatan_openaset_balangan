cat ../sumber/cp_extracomptable_skpd.sh | sed -e s/extracomptable/mutasi_barang_berkurang/g > cp_mutasi_barang_berkurang_skpd.sh
cat ../sumber/cp_extracomptable_sub_skpd.sh | sed -e s/extracomptable/mutasi_barang_berkurang/g > cp_mutasi_barang_berkurang_sub_skpd.sh
cat ../sumber/delete.sh | sed -e s/extracomptable/mutasi_barang_berkurang/g > delete.sh
cat ../sumber/extracomptable_108.sh | sed -e s/extracomptable/mutasi_barang_berkurang/g > mutasi_barang_berkurang_108.sh
cat ../sumber/extracomptable_108_setwan.sql | sed -e s/extracomptable/mutasi_barang_berkurang/g > mutasi_barang_berkurang_108_setwan.sql


cat ../sumber/cp_laporan_108.sh | sed -e s/extracomptable/mutasi_barang_berkurang/g > ../cp_laporan_108.sh
cat ../sumber/script.sh | sed -e s/extracomptable/mutasi_barang_berkurang/g > ../script.sh
