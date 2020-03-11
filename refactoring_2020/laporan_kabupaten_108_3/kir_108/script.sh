#!/bin/bash
#kode barang 108



cat kir.sql | sed -e s/kode_barang/kode_barang_108/g | \
	sed -e s/view_kir/view_kir_108_kabupaten/g | \
	sed -e s/5\)/8\)/g | \
        sed -e s/14\)/18\)/g   > kir_108.sql
