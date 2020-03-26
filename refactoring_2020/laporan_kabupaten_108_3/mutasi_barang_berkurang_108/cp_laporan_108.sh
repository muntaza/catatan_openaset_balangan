#!/bin/sh

#muhammad@muntaza.id

#script untuk mengcopy laporan .xml dari laporan permendagri 17
#ke laporan permendagri 108


cat /var/www/html/php5_laporan/php5_projects/kabupaten/mutasi_barang_berkurang_skpd.xml  | \
	sed -e s/kode_barang/kode_barang_108/g | \
	sed -e s/view_mutasi_barang_berkurang_l2/view_mutasi_barang_berkurang_108_kabupaten/g | \
	sed -e s/kode_level_2/kode_level_2_108/g  \
        > /var/www/html/php5_laporan_108/php5_projects_108/kabupaten/mutasi_barang_berkurang_skpd_108.xml


cat /var/www/html/php5_laporan/php5_projects/01_setwan/mutasi_barang_berkurang_skpd.xml  | \
	sed -e s/kode_barang/kode_barang_108/g | \
	sed -e s/view_mutasi_barang_berkurang_l2_setwan/view_mutasi_barang_berkurang_108_setwan/g | \
	sed -e s/kode_level_2/kode_level_2_108/g  \
        > /var/www/html/php5_laporan_108/php5_projects_108/01_setwan/mutasi_barang_berkurang_skpd_108.xml
