#!/bin/bash
#kode barang 108


cat tanah_setwan.sql | sed -e s/kode_barang/kode_barang_108/g | \
	sed -e s/view_tanah_kabupaten/view_tanah_108_kabupaten/g | \
	sed -e s/view_tanah_setwan/view_tanah_108_setwan/g | \
        sed -e s/14/18/g   > tanah_setwan_108.sql
