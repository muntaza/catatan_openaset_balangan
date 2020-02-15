cat ../tanah_108_sql/cp_tanah_skpd.sh | sed -e s/tanah/buku_inventaris/g > cp_buku_inventaris_skpd.sh
cat ../tanah_108_sql/cp_tanah_sub_skpd.sh | sed -e s/tanah/buku_inventaris/g > cp_buku_inventaris_sub_skpd.sh
cat ../tanah_108_sql/delete.sh | sed -e s/tanah/buku_inventaris/g > delete.sh
cat ../tanah_108_sql/tanah_108.sh | sed -e s/tanah/buku_inventaris/g > buku_inventaris_108.sh
cat ../tanah_108_sql/tanah_108_setwan.sql | sed -e s/tanah/buku_inventaris/g > buku_inventaris_108_setwan.sql
