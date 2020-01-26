#!/bin/sh
#muhammad@muntaza.id

#script untuk hapus app di django


find   dispu -name "*.py" >> /tmp/file1
find   snt   -name "*.py" >> /tmp/file1
find   bppakb   -name "*.py" >> /tmp/file1
find   bppkp   -name "*.py" >> /tmp/file1
find   blhk  -name "*.py" >> /tmp/file1
find   bpmpd  -name "*.py" >> /tmp/file1
find   perindagkop    -name "*.py" >> /tmp/file1
find   kp2tpm  -name "*.py" >> /tmp/file1
find   disporaparbud  -name "*.py" >> /tmp/file1
find   kpdad  -name "*.py" >> /tmp/file1
find   dppkad  -name "*.py" >> /tmp/file1

cp /tmp/file1 /tmp/file2
cat /tmp/file1 | sed  -e s/^/rm\ /g > /tmp/file1_rm
cat /tmp/file2 | sed  -e s/^/cvs\ delete\ /g > /tmp/file2_cvs_delete

sh /tmp/file1_rm
sh /tmp/file2_cvs_delete
