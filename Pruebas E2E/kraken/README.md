### Kraken

#### Prerrequisitos

1. NVM

en caso de no tener las versiones de node instalarlas con este comando:"

`nvm install v16.17.0`

que serán necesarias para ejecutar tanto kraken como backstop.



#### Instalación y Configuración

1. Clonar el repositorio
2. Ejecutar el comando `cd reporte-incidencias-ghost`
3. Ejecutar el comando `cd kraken`
4. Ejecutar el comando nvm `nvm use v16.17.0`
5. Instalar las dependencias con el comando `npm i`

Una vez se hayan descargado las dependencias será necesario correr el script moveRun.js con el comando `node moveRun.js` al interior de la carpeta Kraken, esta se encargará de correr los tests y de dejar un archivo de output con el output global de las pruebas execution_log.txt y otro con el resumen de las pruebas test_report.txt.
