#!/usr/bin/bash

cd /fs/ess/PUOM0007/

./plink --vcf /fs/ess/PUOM0007/isec/allsamples/allsamples_id.vcf.gz --allow-extra-chr --recode --out /fs/ess/PUOM0007/plinkk/allsamples

./plink --file /fs/ess/PUOM0007/plinkk/allsamples --allow-extra-chr --geno 0.1 --maf 0.05 --recode vcf bgz --out /fs/ess/PUOM0007/plinkk/allsamples_maf
