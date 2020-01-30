cat ../tanah_108_sql/cp_tanah_skpd.sh | sed -e s/tanah/peralatan_mesin/g > cp_peralatan_mesin_skpd.sh
cat ../tanah_108_sql/cp_tanah_sub_skpd.sh | sed -e s/tanah/peralatan_mesin/g > cp_peralatan_mesin_sub_skpd.sh
cat ../tanah_108_sql/delete.sh | sed -e s/tanah/peralatan_mesin/g > delete.sh
cat ../tanah_108_sql/tanah_108.sh | sed -e s/tanah/peralatan_mesin/g > peralatan_mesin_108.sh
cat ../tanah_108_sql/tanah_108_setwan.sql | sed -e s/tanah/peralatan_mesin/g > peralatan_mesin_108_setwan.sql
