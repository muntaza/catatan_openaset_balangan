#!/bin/sh

#muhammad@muntaza.id

#script untuk mengcopy laporan .xml dari laporan permendagri 17
#ke laporan permendagri 108

cat /var/www/html/php5_laporan/php5_projects/setwan/tanahskpd.xml  | \
	sed -e s/kode_barang/kode_barang_108/g | \
	sed -e s/view_tanah_kabupaten/view_tanah_108_kabupaten/g  \
        > tanah_skpd_108.xml

cat /var/www/html/php5_laporan/php5_projects/setwan/peralatanmesinskpd.xml  | \
	sed -e s/kode_barang/kode_barang_108/g | \
	sed -e s/view_peralatan_mesin_kabupaten/view_peralatan_mesin_108_kabupaten/g  \
        > peralatan_mesin_skpd_108.xml

cat /var/www/html/php5_laporan/php5_projects/setwan/gedungskpd.xml  | \
	sed -e s/kode_barang/kode_barang_108/g | \
	sed -e s/view_gedung_bangunan_kabupaten/view_gedung_bangunan_108_kabupaten/g  \
        > gedung_bangunan_skpd_108.xml

cat /var/www/html/php5_laporan/php5_projects/setwan/jij_skpd.xml  | \
	sed -e s/kode_barang/kode_barang_108/g | \
	sed -e s/view_jalan_irigasi_jaringan_kabupaten/view_jalan_irigasi_jaringan_108_kabupaten/g  \
        > jalan_irigasi_jaringan_skpd_108.xml

cat /var/www/html/php5_laporan/php5_projects/setwan/atl_skpd.xml  | \
	sed -e s/kode_barang/kode_barang_108/g | \
	sed -e s/view_atl_kabupaten/view_atl_108_kabupaten/g  \
        > atl_skpd_108.xml

cat /var/www/html/php5_laporan/php5_projects/setwan/kdp_gedung_skpd.xml  | \
	sed -e s/kode_barang/kode_barang_108/g | \
	sed -e s/view_gedung_bangunan_kabupaten/view_gedung_bangunan_108_kabupaten/g  \
        > kdp_gedung_bangunan_skpd_108.xml

cat /var/www/html/php5_laporan/php5_projects/setwan/kdp_jij_skpd.xml  | \
	sed -e s/kode_barang/kode_barang_108/g | \
	sed -e s/view_jalan_irigasi_jaringan_kabupaten/view_jalan_irigasi_jaringan_108_kabupaten/g  \
        > kdp_jalan_irigasi_jaringan_skpd_108.xml

cat /var/www/html/php5_laporan/php5_projects/setwan/buku_inventaris_skpd.xml  | \
	sed -e s/kode_barang/kode_barang_108/g | \
	sed -e s/view_buku_inventaris_aset_tetap_l2/view_buku_inventaris_108_kabupaten/g | \
	sed -e s/kode_level_2/kode_level_2_108/g  \
        > buku_inventaris_skpd_108.xml

cat /var/www/html/php5_laporan/php5_projects/setwan/daftar_pengadaan_skpd_l2.xml  | \
	sed -e s/kode_barang/kode_barang_108/g | \
	sed -e s/view_daftar_pengadaan_l2/view_daftar_pengadaan_108/g | \
	sed -e s/kode_level_2/kode_level_2_108/g  \
        > daftar_pengadaan_skpd_108.xml





