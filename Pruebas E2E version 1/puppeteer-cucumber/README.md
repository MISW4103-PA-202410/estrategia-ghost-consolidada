# Pruebas E2E de Ghost versión 5.82

Este proyecto utiliza CucumberJS para la definición de escenarios de prueba a través del patrón Given-When-Then y el lenguaje Gherkin. También utiliza Puppeteer para la interacción con la aplicación bajo pruebas y es acá donde se utiliza el patrón Page Object.

## Prerrequisitos
- Tener instalado NodeJS en la versión v18.17.0.

## Instrucciones de instalación

1. Clone el repositorio.

`[git clone https://github.com/MISW4103-PA-202410/reporte-incidencias-ghost.git](https://github.com/MISW4103-PA-202410/estrategia-ghost-consolidada)`

2. Diríjase a la carpeta "puppeteer-cucumber".

`cd Pruebas\ E2E\ version\ 1/`
`cd puppeteer-cucumber/`

3. Instale las dependencias del sistema de pruebas.

`npm install`

## Ejecución de las pruebas

### Escenarios en la versión 5.82 de Ghost

Ejecute el siguiente comando para hacer las pruebas E2E de los 20 escenarios descritos en la wiki en la versión 5.82 de Ghost.

`npx cucumber-js --config config/cucumber.json -p ghost-5 --tags=@run`

### Toma de capturas de pantalla

Por cada paso ejecutado en las pruebas se toma una captura de pantalla que se almacena en la siguiente ruta:

`./screenshots/puppeteer/<versión_ghost>/<nombre-feature>/escenario_<número>/paso_<número>.png`

*Nota:* La carpeta `screenshots` es la que se ubica en la raíz de la carpeta `Validación de datos`.
