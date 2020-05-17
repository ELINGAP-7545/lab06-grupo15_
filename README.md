# lab06 Diseño de banco de Registro

# Integrantes:
**Arley Stiven Rodriguez 60335**

**Cesar Eduardo Martinez 63810**

**Juan Camilo Arévalo Garzón 63572**

## Descipción 
Se debe diseñar un banco de registro tal que:

* El banco de registro debe tener 16 registros de R/W.
* Permitir la lectura de 2 registros  simultáneamente 
* Permitir la escritura  de 1 registro, acorde a la señal de control regwrite
* Contar con señal de rst, la cual  ponga  todos los registros en un valor conocido.
* Visualizar la información, en al menos dos display de 7 segmentos (información de cada registro leído).
* El ingreso de la información se debe hacer por medio de los interruptores.

![cn](https://github.com/Fabeltranm/SPARTAN6-ATMEGA-MAX5864/blob/master/lab/lab07-BancosRgistro/doc/caja%20negra.png)

![caja](https://github.com/Fabeltranm/SPARTAN6-ATMEGA-MAX5864/blob/master/lab/lab07-BancosRgistro/doc/banco%20registro.png)

## Desarrollo del laboratorio:


# Introducción

Un banco de registros está formado por un número n de registros que son capaces de
ser seleccionados mediante una señal de control para ser leídos o escritos. 
Asimismo, el banco de registros puede tener varios puertos de salida y varios de entrada,
permitiendo de esta forma la lectura o la escritura simultánea de varios registros.


## Bloque Banco de Registro


	**Diagrama estructural Banco de Registro de 4 posiciones de 16 bits

![SIMULACION_SUM](https://github.com/ELINGAP-7545/lab06-grupo15_/blob/master/images/schema_ban_reg.JPG)

	**Simulacion testbench Banco de Registro

![SIMULACION_SUM](https://github.com/ELINGAP-7545/lab06-grupo15_/blob/master/images/tb_ban_reg.JPG)

## LabsLand

Respresetacion en labsland con lectura de un registro


![SIMULACION_LAB](https://github.com/ELINGAP-7545/lab06-grupo15_/blob/master/images/Labsland.JPG)

Respresentacion laboratorio remoto en FPGA de LabsLand con lectura de dos registros

![LABsland_l](https://github.com/ELINGAP-7545/lab06-grupo15_/blob/master/images/Labsland2.JPG)



#
**Opcional. Da mas puntos:**
* Parametrizar el tamaño de palabra de cada registro  y la cantidad de registro ( Por defecto =4 bits). Se recomienda leer el documento de este [link](https://ocw.mit.edu/courses/electrical-engineering-and-computer-science/6-884-complex-digital-systems-spring-2005/related-resources/parameter_models.pdf) .
* Pre cargar el banco de registro con información.  _Usar $readmenh_  (Investigar: "Initialize Memory in Verilog").

Entregables:

* Documentación
* Archivo `testbench` el cuál debe simular la escritura de 16 registros y 8 lecturas mas el rst, el resultado de la simulación debe visualizarse en diagrama de tiempo.
* Vídeo de la implementación.
* Código HDL de la solución.
.



