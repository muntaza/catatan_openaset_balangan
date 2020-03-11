cat ../tanah_108_sql/cp_tanah_skpd.sh | sed -e s/tanah/gedung_bangunan/g > cp_gedung_bangunan_skpd.sh
cat ../tanah_108_sql/cp_tanah_sub_skpd.sh | sed -e s/tanah/gedung_bangunan/g > cp_gedung_bangunan_sub_skpd.sh
cat ../tanah_108_sql/delete.sh | sed -e s/tanah/gedung_bangunan/g > delete.sh
cat ../tanah_108_sql/tanah_108.sh | sed -e s/tanah/gedung_bangunan/g > gedung_bangunan_108.sh
cat ../tanah_108_sql/tanah_108_setwan.sql | sed -e s/tanah/gedung_bangunan/g > gedung_bangunan_108_setwan.sql
