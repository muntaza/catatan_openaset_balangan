cat ../tanah_108_sql/cp_tanah_skpd.sh | sed -e s/tanah/daftar_pengadaan/g > cp_daftar_pengadaan_skpd.sh
cat ../tanah_108_sql/cp_tanah_sub_skpd.sh | sed -e s/tanah/daftar_pengadaan/g > cp_daftar_pengadaan_sub_skpd.sh
cat ../tanah_108_sql/delete.sh | sed -e s/tanah/daftar_pengadaan/g > delete.sh
cat ../tanah_108_sql/tanah_108.sh | sed -e s/tanah/daftar_pengadaan/g > daftar_pengadaan_108.sh
cat ../tanah_108_sql/tanah_108_setwan.sql | sed -e s/tanah/daftar_pengadaan/g > daftar_pengadaan_108_setwan.sql
