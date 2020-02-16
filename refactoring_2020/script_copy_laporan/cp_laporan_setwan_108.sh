#!/bin/sh

#muhammad@muntaza.id

#script untuk mengcopy laporan .xml dari laporan permendagri 17
#ke laporan permendagri 108

cat /var/www/html/php5_laporan/php5_projects/01_setwan/tanahskpd.xml  | \
	sed -e s/kode_barang/kode_barang_108/g | \
	sed -e s/view_tanah_setwan/view_tanah_108_setwan/g  \
        > tanah_skpd_108.xml

cat /var/www/html/php5_laporan/php5_projects/01_setwan/peralatanmesinskpd.xml  | \
	sed -e s/kode_barang/kode_barang_108/g | \
	sed -e s/view_peralatan_mesin_setwan/view_peralatan_mesin_108_setwan/g  \
        > peralatan_mesin_skpd_108.xml

cat /var/www/html/php5_laporan/php5_projects/01_setwan/gedungskpd.xml  | \
	sed -e s/kode_barang/kode_barang_108/g | \
	sed -e s/view_gedung_bangunan_setwan/view_gedung_bangunan_108_setwan/g  \
        > gedung_bangunan_skpd_108.xml

cat /var/www/html/php5_laporan/php5_projects/01_setwan/jij_skpd.xml  | \
	sed -e s/kode_barang/kode_barang_108/g | \
	sed -e s/view_jalan_irigasi_jaringan_setwan/view_jalan_irigasi_jaringan_108_setwan/g  \
        > jalan_irigasi_jaringan_skpd_108.xml

cat /var/www/html/php5_laporan/php5_projects/01_setwan/atl_skpd.xml  | \
	sed -e s/kode_barang/kode_barang_108/g | \
	sed -e s/view_atl_setwan/view_atl_108_setwan/g  \
        > atl_skpd_108.xml

cat /var/www/html/php5_laporan/php5_projects/01_setwan/kdp_gedung_skpd.xml  | \
	sed -e s/kode_barang/kode_barang_108/g | \
	sed -e s/view_gedung_bangunan_setwan/view_gedung_bangunan_108_setwan/g  \
        > kdp_gedung_bangunan_skpd_108.xml

cat /var/www/html/php5_laporan/php5_projects/01_setwan/kdp_jij_skpd.xml  | \
	sed -e s/kode_barang/kode_barang_108/g | \
	sed -e s/view_jalan_irigasi_jaringan_setwan/view_jalan_irigasi_jaringan_108_setwan/g  \
        > kdp_jalan_irigasi_jaringan_skpd_108.xml

cat /var/www/html/php5_laporan/php5_projects/01_setwan/buku_inventaris_skpd.xml  | \
	sed -e s/kode_barang/kode_barang_108/g | \
	sed -e s/view_buku_inventaris_aset_tetap_l2/view_buku_inventaris_108/g | \
	sed -e s/kode_level_2/kode_level_2_108/g  \
        > buku_inventaris_skpd_108.xml

cat /var/www/html/php5_laporan/php5_projects/01_setwan/daftar_pengadaan_skpd_l2.xml  | \
	sed -e s/kode_barang/kode_barang_108/g | \
	sed -e s/view_daftar_pengadaan_l2/view_daftar_pengadaan_108/g | \
	sed -e s/kode_level_2/kode_level_2_108/g  \
        > daftar_pengadaan_skpd_108.xml





