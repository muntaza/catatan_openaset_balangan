#!/bin/sh
#muhammad@muntaza.id

#script untuk hapus app di django

find disdiksman1awayan -name "*.py" >> /tmp/file1
find disdiksman1halong -name "*.py" >> /tmp/file1
find disdiksman1juai -name "*.py" >> /tmp/file1
find disdiksman1lampihong -name "*.py" >> /tmp/file1
find disdiksman1paringin -name "*.py" >> /tmp/file1
find disdiksman1tebingtinggi -name "*.py" >> /tmp/file1
find disdiksman2halong -name "*.py" >> /tmp/file1
find disdiksman2juai -name "*.py" >> /tmp/file1
find disdiksman2paringin -name "*.py" >> /tmp/file1
find disdiksmkn1batumandi -name "*.py" >> /tmp/file1
find disdiksmkn1paringin -name "*.py" >> /tmp/file1
find disdiksmkppnparingin -name "*.py" >> /tmp/file1



cp /tmp/file1 /tmp/file2
cat /tmp/file1 | sed  -e s/^/rm\ /g > /tmp/file1_rm
cat /tmp/file2 | sed  -e s/^/cvs\ delete\ /g > /tmp/file2_cvs_delete

sh /tmp/file1_rm
sh /tmp/file2_cvs_delete
