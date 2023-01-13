/*
                    STATA 16
 TOPIC: Descarga Automatizada de Datos ENDES
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

* 2.1.- Automatizar la descarga de los siguientes módulos de la ENDES necesarios para evaluar el impacto: 64, 65 y 569, muestre los archivos contenidos en cada módulo.
 
* 2.1.1.- Crear la carpeta "Data"
global ruta "D:\JR-STATA\Practice\STATA_DescargaAutomatizada\02_AutomatizacionENDES"
cd "$ruta"
cap mkdir Data // Creamos la carpeta "Data"

* 2.1.2.- Establecer la ruta de la carpeta "Data"
local path "D:\JR-STATA\Practice\STATA_DescargaAutomatizada\02_AutomatizacionENDES\Data" 
cd "`path'" 
!rmdir "`path'" /s /q //

* 2.1.3.- Descarga los Modulos 64, 65 y 569
foreach x in 64 65 569 {
	copy  "http://iinei.inei.gob.pe/iinei/srienaho/descarga/DBF/691-Modulo`x'.zip" 691-Modulo`x'.zip, replace 
	unzipfile 691-Modulo`x'.zip, replace
}



