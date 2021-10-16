#!/bin/bash
#SBATCH --time=1:00:00
#SBATCH --mem=5000M
#SBATCH --job-name=BLAST
#SBATCH --output=%x-%j.out
#SBATCH --mail-user=<miraz@uoguelph.ca>
#SBATCH --mail-type=ALL
echo 'The job that Mumtaz submitted is running.'
module load gcc/7.3.0 blast+/2.10.0 
blastn -db /cvmfs/ref.mugqic/genomes/blast_db/nt -query an_cattle.fasta -out an_cattleResults.out
