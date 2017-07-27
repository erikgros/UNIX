#!/bin/bash
echo 'Enter pc number:'; read pcNum
echo 'Enter directory cpp/_/:'; read ext
printf 'Copying from directory %s of ltcmpc%s !\n' $ext $pcNum

syncron='rsync -a --ignore-existing'
BIN=$syncron' erik@ltcmpc'$pcNum'.epfl.ch:~/projects/cpp/'$ext'/bin/ bin/'
MSH=$syncron' erik@ltcmpc'$pcNum'.epfl.ch:~/projects/cpp/'$ext'/msh/ msh/'
VTK=$syncron' erik@ltcmpc'$pcNum'.epfl.ch:~/projects/cpp/'$ext'/vtk/ vtk/'

echo '--- Starting VTK syncronization ---'
$VTK
echo '--- VTK syncronization ended ---'
$MSH
$BIN
scp erik@ltcmpc$pcNum.epfl.ch:~/projects/cpp/$ext/dat/* dat/
scp erik@ltcmpc$pcNum.epfl.ch:~/projects/cpp/$ext/vtk/sim-last.vtk vtk/
scp erik@ltcmpc$pcNum.epfl.ch:~/projects/cpp/$ext/log* ./
scp erik@ltcmpc$pcNum.epfl.ch:~/projects/cpp/$ext/rest* ./
