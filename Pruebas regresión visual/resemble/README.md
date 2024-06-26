# Pruebas de regresión visual usando ResembleJS

Este proyecto utiliza ResembleJS y un script desarrollado para comparar las diferencias entre los pasos ejecutados de pruebas E2E en dos distintas versiones de Ghost: v3.42 y v5.82. Al final de la ejecución se obtiene un reporte con las comparaciones y los porcentajes de diferencia.

## Prerrequisitos
- Tener instalado NodeJS en la versión v18.17.0.
- Debe tener listas las capturas de pantalla de los pasos realizados por pruebas E2E de Puppeteer y Kraken.
- Las capturas deben seguir la siguiente ruta:
`./screenshots/<puppeteer o kraken>/<versión_ghost>/<nombre-feature>/escenario_<número>/paso_<número>.png`

*Nota*: El repositorio ya incluye capturas para ejecutar estas pruebas de regresión visual.

## Instrucciones de instalación

1. Clone el repositorio e ingrese al proyecto.

`git clone https://github.com/MISW4103-PA-202410/estrategia-ghost-consolidada.git`

`cd estrategia-ghost-consolidada`

3. Diríjase a la carpeta "resemble" dentro de "Pruebas regresión visual".
4. 
`cd "Pruebas regresión visual/resemble"`

5. Instale las dependencias del sistema de pruebas.
6. 
`npm install`

## Ejecución de las pruebas

Ejecute el siguiente comando para ejecutar las comparaciones de imágenes capturadas y generar el reporte.

`node index.js`

## Visualización del reporte
1. Abra el archivo `reports/index.html`. Esto debe abrirse en el navegador de su preferencia.
2. Podrá visualizar los resultados de la prueba, donde se tienen Métricas generales sobre las diferencias de las comparaciones.

![Ejemplo de reporte](https://github.com/MISW4103-PA-202410/reporte-incidencias-ghost/assets/29685332/bde84179-ec46-4d16-918f-98fe8c31b34b)

