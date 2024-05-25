### Kraken

#### Prerrequisitos

1. NVM

en caso de no tener las versiones de node instalarlas con este comando:"

`nvm install v16.17.0`

que serán necesarias para ejecutar kraken.

#### Instalación y Configuración



1. Ejecutar el comando nvm `nvm use v16.17.0` en la carpeta kraken donde está ubicado este readme.
2. Instalar las dependencias con el comando `npm i`

Una vez se hayan descargado las dependencias será necesario correr el script moveRun.js con el comando `node moveRun.js` al interior de la carpeta Kraken, esta se encargará de correr los tests y de dejar dos archivoc con los resultados uno con el output global de la ejecución de todas las pruebas: execution_log.txt y otro con el resumen de las pruebas test_report.txt 

La primera vez puede ser demorado debido a que no hay información de Cache, por lo que sugerimos probarlo dos veces.