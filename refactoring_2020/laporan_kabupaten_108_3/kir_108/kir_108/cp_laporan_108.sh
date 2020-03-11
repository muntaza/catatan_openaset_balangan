#!/bin/sh

#muhammad@muntaza.id

#script untuk mengcopy laporan .xml dari laporan permendagri 17
#ke laporan permendagri 108


cat /var/www/html/php5_laporan/php5_projects/kabupaten/extra_comptable_skpd.xml  | \
	sed -e s/kode_barang/kode_barang_108/g | \
	sed -e s/view_kir_l2/view_kir_108_kabupaten/g | \
	sed -e s/kode_level_2/kode_level_2_108/g  \
        > /var/www/html/php5_laporan_108/php5_projects_108/kabupaten/kir_skpd_108.xml


cat /var/www/html/php5_laporan/php5_projects/01_setwan/extra_comptable_skpd.xml  | \
	sed -e s/kode_barang/kode_barang_108/g | \
	sed -e s/view_kir_l2_setwan/view_kir_108_setwan/g | \
	sed -e s/kode_level_2/kode_level_2_108/g  \
        > /var/www/html/php5_laporan_108/php5_projects_108/01_setwan/kir_skpd_108.xml
