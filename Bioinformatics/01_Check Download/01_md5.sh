#!/usr/bin/bash

for i in {1..65}
do
cd /fs/scratch/PUOM0007/sample_reads/Sample_${i}
md5sum *
done

for i in {67..77}
do
cd /fs/scratch/PUOM0007/sample_reads/Sample_${i}
md5sum *
done

for i in {79..109}
do
cd /fs/scratch/PUOM0007/sample_reads/Sample_${i}
md5sum *
done
