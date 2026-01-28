#!/usr/bin/bash

cd /fs/ess/PUOM0007/

./plink --vcf /fs/ess/PUOM0007/plinkk/allsamples_maf_prune.vcf --allow-extra-chr --genome --min 0.2 --out /fs/ess/PUOM0007/plinkk/allsamples_maf_prune_related0.2
