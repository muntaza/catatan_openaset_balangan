cat ../tanah_108_sql/cp_tanah_skpd.sh | sed -e s/tanah/kdp_gedung_bangunan/g > cp_kdp_gedung_bangunan_skpd.sh
cat ../tanah_108_sql/cp_tanah_sub_skpd.sh | sed -e s/tanah/kdp_gedung_bangunan/g > cp_kdp_gedung_bangunan_sub_skpd.sh

cat ../tanah_108_sql/cp_tanah_skpd.sh | sed -e s/tanah/kdp_jalan_irigasi_jaringan/g > cp_kdp_jalan_irigasi_jaringan_skpd.sh
cat ../tanah_108_sql/cp_tanah_sub_skpd.sh | sed -e s/tanah/kdp_jalan_irigasi_jaringan/g > cp_kdp_jalan_irigasi_jaringan_sub_skpd.sh
