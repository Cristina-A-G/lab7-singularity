#!/bin/bash
#
#SBATCH -p hpc-bio-pacioli
#SBATCH --chdir=/home/alumno01/lab7-singularity/blast
#SBATCH -J job_CAG_lab7
#SBATCH --cpus-per-task=1
#SBATCH --mail-type=END #END/START/NONE
#SBATCH --mail-user=cristina.agusting@um.es#sba

#Carga del módulo Singularity:
module load singularity/3.8.0
echo
echo "a. Descomprimir la base de datos:"
gzip -dk zebrafish.1.protein.faa.gz #Uso el switch -k para mantener el fichero comprimido. 
echo
echo "b. Preparar la base de datos zebrafish con makeblastdb para la búsqueda:"
singularity exec blast_2.9.0--pl526h3066fca_4.sif makeblastdb -in zebrafish.1.protein.faa -dbtype prot
echo
echo "c. Realizar la alineación:"
singularity exec blast_2.9.0--pl526h3066fca_4.sif blastp -query P04156.fasta -db zebrafish.1.protein.faa -out results-blast.txt

#Descarga del módulo:
module unload singularity/3.8.0
