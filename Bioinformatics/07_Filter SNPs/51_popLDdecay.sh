#!/usr/bin/bash

cd /fs/ess/PUOM0007/PopLDdecay

module load R

./bin/PopLDdecay -InVCF /fs/ess/PUOM0007/plinkk/allsamples_maf.vcf.gz -OutStat /fs/ess/PUOM0007/popLDdecay/allsamples_maf_LDdecay

perl ./bin/Plot_OnePop.pl -inFile /fs/ess/PUOM0007/popLDdecay/allsamples_maf_LDdecay.stat.gz -output /fs/ess/PUOM0007/popLDdecay/allsamples_maf_LDdecay
