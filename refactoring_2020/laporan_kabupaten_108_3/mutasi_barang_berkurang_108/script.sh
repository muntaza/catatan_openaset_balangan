#!/bin/bash
#kode barang 108



cat mutasi_barang_berkurang.sql | sed -e s/kode_barang/kode_barang_108/g | \
	sed -e s/view_mutasi_barang_berkurang_l2/view_mutasi_barang_berkurang_108_kabupaten/g | \
	sed -e s/5\)/8\)/g | \
        sed -e s/14\)/18\)/g   > mutasi_barang_berkurang_108.sql
