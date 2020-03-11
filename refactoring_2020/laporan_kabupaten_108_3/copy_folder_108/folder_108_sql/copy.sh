cat ../sumber/cp_extracomptable_skpd.sh | sed -e s/extracomptable/gedung/g > cp_gedung_skpd.sh
cat ../sumber/cp_extracomptable_sub_skpd.sh | sed -e s/extracomptable/gedung/g > cp_gedung_sub_skpd.sh
cat ../sumber/delete.sh | sed -e s/extracomptable/gedung/g > delete.sh
cat ../sumber/extracomptable_108.sh | sed -e s/extracomptable/gedung/g > gedung_108.sh
cat ../sumber/extracomptable_108_setwan.sql | sed -e s/extracomptable/gedung/g > gedung_108_setwan.sql


cat ../sumber/cp_laporan_108.sh | sed -e s/extracomptable/gedung/g > cp_laporan_108.sh
cat ../sumber/script.sh | sed -e s/extracomptable/gedung/g > script.sh
