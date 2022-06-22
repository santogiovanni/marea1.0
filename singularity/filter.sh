#!/bin/bash
#SBATCH --ntasks=1
#SBATCH --qos=batch
#SBATCH --time=23:00:00
#SBATCH --mem-per-cpu=10G
#SBATCH --mail-user=stephen.antogiovanni@jax.org
#SBATCH --mail-type=END,FAIL

module load singularity

singularity exec marea_python.sif python ../scripts/filter_abstracts.py -i /projects/robinson-lab/wn2vec/data/pubmed_txt \
 -n /projects/robinson-lab/wn2vec/data/nltk_data -o /projects/robinson-lab/wn2vec/data/pubmed_rel D009369 D011494
