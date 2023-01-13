/*
                    STATA 16
 TOPIC: Automatiza la descarga de la base de datos de la INEI
 Author: JR
 Date: 16 de octubre de 2022
 Link del ejemplo: https://www.youtube.com/watch?v=moH3Xz7Qb9g
*/


* 1.- Preamble
cls
clear all
set more off 
capture log close
 
* 2.- Main
* 2.1.- Automatizar la descarga de la base de datos del INEI, para la  base de datos Módulo 74.

* 2.1.1.- Crear la carpeta "Data"
global ruta "D:\JR-STATA\Practice\STATA_DescargaAutomatizada\01_AutomatizacionINEI"
cd "$ruta"
cap mkdir Data // Creamos la carpeta "Data"

* 2.1.2.- Establecer la ruta de la carpeta "Data"
local path "D:\JR-STATA\Practice\STATA_DescargaAutomatizada\01_AutomatizacionINEI\Data" 
cd "`path'" 
!rmdir "`path'" /s /q // 

* 2.1.3.- Descarga del Módulo 74
copy "http://iinei.inei.gob.pe/iinei/srienaho/descarga/DBF/691-Modulo74.zip" 691-Modulo74.zip, replace
unzipfile 691-Modulo74.zip, replace




