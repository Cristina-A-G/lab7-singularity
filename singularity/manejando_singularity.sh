#!/bin/bash

#Carga de los módulos necesarios:
module load singularity/3.8.0
module load anaconda/2020.11

echo "a. El comando hostname en ibsen y en el contenedor my-python.sif de Singularity"
echo
echo "Hostname en ibsen:"
hostname
echo
echo "Hostname en el contenedor my-python.sif de Singularity:"
singularity exec my-python.sif hostname
echo
echo "b. El comando cat /etc/os-release en ibsen y en el contenedor my-python.sif de Singularity"
echo
echo "Ejecución del comando cat /etc/os-release en ibsen:"
cat /etc/os-release
echo
echo "Ejecución del comando cat /etc/os-release en el contenedor my-python.sif de Singularity:"
singularity exec my-python.sif cat /etc/os-release
echo
echo "c. El comando pwd en ibsen y en el contenedor my-python.sif de Singularity"
echo
echo "Ejecución del comando pwd en ibsen:"
pwd
echo
echo "Ejecución del comando pwd en el contenedor my-python.sif de Singularity:"
singularity exec my-python.sif pwd
echo
echo "d. El comando ls -l /home en ibsen y en el contenedor my-python.sif de Singularity"
echo
echo "Ejecución del comando ls -l en ibsen:"
ls -l /home
echo
echo "Ejecución del comando ls -l en el contenedor my-python.sif de Singularity:"
singularity exec my-python.sif ls -l /home
echo
echo "e. El comando python –version en ibsen y en el contenedor my-python.sif de Singularity"
echo
echo "Ejecución del comando python --version en ibsen:"
python --version
echo
echo "Ejecución del comando python --version en el contenedor my-python.sif de Singularity:"
singularity exec my-python.sif python --version
echo
echo "f. El notebook kmer-solution.ipynb que tienes en el subdirectorio source dentro de la imagen de Singularity, y el notebook kmer-solution.ipynb que tienes en el propio contenedor my-python.sif de Singularity (que está en /home). Ejecuta "
echo
echo "Ejecución del notebook del subdirectorio source:"
ipython /home/alumno01/lab7-singularity/source/kmer-solution.ipynb
echo
echo "Ejecución del notebook de la imagen my-python.sif:"
singularity exec my-python.sif ipython /home/kmer-solution.ipynb
echo

#Se descargan los módulos:
module unload singularity/3.8.0
module unload anaconda/2020.11
