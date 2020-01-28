#!/bin/bash
#kode barang 108


cat tanah.sql | sed -e s/kode_barang/kode_barang_108/g | \
	sed -e s/view_tanah_kabupaten/view_tanah_108_kabupaten/g | \
        sed -e s/14/18/g   > tanah_108.sql

cat peralatan_mesin.sql | sed -e s/kode_barang/kode_barang_108/g | \
	sed -e s/view_peralatan_mesin_kabupaten/view_peralatan_mesin_108_kabupaten/g | \
        sed -e s/14/18/g   > peralatan_mesin_108.sql

cat gedung_bangunan.sql | sed -e s/kode_barang/kode_barang_108/g | \
	sed -e s/view_gedung_bangunan_kabupaten/view_gedung_bangunan_108_kabupaten/g | \
        sed -e s/14/18/g   > gedung_bangunan_108.sql


