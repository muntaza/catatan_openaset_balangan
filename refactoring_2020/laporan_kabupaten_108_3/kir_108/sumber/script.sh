#!/bin/bash
#kode barang 108



cat extracomptable.sql | sed -e s/kode_barang/kode_barang_108/g | \
	sed -e s/view_extracomptable/view_extracomptable_108_kabupaten/g | \
	sed -e s/5\)/8\)/g | \
        sed -e s/14\)/18\)/g   > extracomptable_108.sql
