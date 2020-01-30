cat ../tanah_108_sql/cp_tanah_skpd.sh | sed -e s/tanah/jalan_irigasi_jaringan/g > cp_jalan_irigasi_jaringan_skpd.sh
cat ../tanah_108_sql/cp_tanah_sub_skpd.sh | sed -e s/tanah/jalan_irigasi_jaringan/g > cp_jalan_irigasi_jaringan_sub_skpd.sh
cat ../tanah_108_sql/delete.sh | sed -e s/tanah/jalan_irigasi_jaringan/g > delete.sh
cat ../tanah_108_sql/tanah_108.sh | sed -e s/tanah/jalan_irigasi_jaringan/g > jalan_irigasi_jaringan_108.sh
cat ../tanah_108_sql/tanah_108_setwan.sql | sed -e s/tanah/jalan_irigasi_jaringan/g > jalan_irigasi_jaringan_108_setwan.sql
