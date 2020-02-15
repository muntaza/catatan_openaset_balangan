cat ../tanah_108_sql/cp_tanah_skpd.sh | sed -e s/tanah/buku_inventaris_aset_tetap/g > cp_buku_inventaris_aset_tetap_skpd.sh
cat ../tanah_108_sql/cp_tanah_sub_skpd.sh | sed -e s/tanah/buku_inventaris_aset_tetap/g > cp_buku_inventaris_aset_tetap_sub_skpd.sh
cat ../tanah_108_sql/delete.sh | sed -e s/tanah/buku_inventaris_aset_tetap/g > delete.sh
cat ../tanah_108_sql/tanah_108.sh | sed -e s/tanah/buku_inventaris_aset_tetap/g > buku_inventaris_aset_tetap_108.sh
cat ../tanah_108_sql/tanah_108_setwan.sql | sed -e s/tanah/buku_inventaris_aset_tetap/g > buku_inventaris_aset_tetap_108_setwan.sql
