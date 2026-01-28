#!/usr/bin/bash

module load java
module load gatk

cd /fs/ess/PUOM0007/gathervcf

for i in /fs/ess/PUOM0007/gathervcf/*
do
gatk IndexFeatureFile -F $i
done
