#!/bin/bash

#Carga de los módulos necesarios:
module load singularity/3.8.0
module load anaconda/2020.11

#Como extra voy a ejecutar los notebooks de Jupiter de kmer-solution-13.ipynb:
echo
echo "Extra. Ejecutar el notebook kmer-solution-13.ipynb en ibsen y en el contenedor my-python.sif de Singularity"
echo
echo "Ejecución del notebook kmer-solution-13.ipynb del subdirectorio extras:"
ipython /home/alumno01/lab7-singularity/extras/kmer-solution-13.ipynb
echo
echo "Ejecución del notebook kmer-solution-13.ipynb en el contenedor my-python.sif de Singularity:"
singularity exec my-python.sif ipython /home/kmer-solution-13.ipynb
echo

#Se descargan los módulos:
module unload singularity/3.8.0
module unload anaconda/2020.11
