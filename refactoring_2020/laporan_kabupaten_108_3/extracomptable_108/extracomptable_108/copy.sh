cat ../../../laporan_kabupaten/tanah_108_sql/cp_tanah_skpd.sh | sed -e s/tanah/extracomptable/g > cp_extracomptable_skpd.sh
cat ../../../laporan_kabupaten/tanah_108_sql/cp_tanah_sub_skpd.sh | sed -e s/tanah/extracomptable/g > cp_extracomptable_sub_skpd.sh
cat ../../../laporan_kabupaten/tanah_108_sql/delete.sh | sed -e s/tanah/extracomptable/g > delete.sh
cat ../../../laporan_kabupaten/tanah_108_sql/tanah_108.sh | sed -e s/tanah/extracomptable/g > extracomptable_108.sh
cat ../../../laporan_kabupaten/tanah_108_sql/tanah_108_setwan.sql | sed -e s/tanah/extracomptable/g > extracomptable_108_setwan.sql
