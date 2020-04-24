﻿# INTEGRANTES:
**Arley Stiven Rodriguez 60335;**

**Cesar Eduardo Martinez 63810;**

**Juan Camilo Arévalo Garzón 63572;**


# lab05 : Unidad de suma, resta, multiplicación, división y visualización BCD

# ALU

## Introducción


La unidad aritmética, es tal que cuenta con componentes para realizar operaciones aritméticas. cada operación aritmética es ejecutada acuerdo al código de la operación. 

Como ejercicio académico, se propone construye una unidad con 4 operaciones aritméticas: suma, resta, multiplicación y división.  de igual manera, el resultados se visualiza en los display de siete segmentos. El flujo de datos y la selección de la operación se realiza acorde a la señal opcode, y segun la siguiente tabla:

opcode | Operación  enteros positivos
00| Suma
01| Resta 
10| Multiplicación
11| División 


## Diagrama de caja negra ALU

Según las especificaciones anteriormente descrita, la caja funcional de la unidad aritmética propuesta es:

![caja negra](https://github.com/Fabeltranm/SPARTAN6-ATMEGA-MAX5864/blob/master/lab/lab06_Unidad_aritmetica/doc/cajanegra.png)


## Diagrama estructural ALU

![estructural](https://github.com/Fabeltranm/SPARTAN6-ATMEGA-MAX5864/blob/master/lab/lab06_Unidad_aritmetica/doc/diagraEstructural.png)


El diagrama estructural se soporta en los componentes desarrollados en los anteriores laboratorios. De esta manera,  tanto el sumador, el multiplicador  y el Display, son tomados de los lab2, lab5 y lab4  respectivamente. Adicional a la estructura de cada operación se encuentra el decodificador  y el multiplexador.


## Desarrollo del laboratorio:

## Bloque SUMADOR


**SIMULACION EN QUARTUS**

	**Diagrama estructural bloque suma de 3 bits

![SIMULACION_SUM](https://github.com/ELINGAP-7545/lab05-grupo15_/blob/master/Imagenes/sum3b_shematic.JPG)

	**Simulacion testbench suma

![SIMULACION_SUM](https://github.com/ELINGAP-7545/lab05-grupo15_/blob/master/Imagenes/tb_sum3b.JPG)


## Bloque DIVISOR


**SIMULACION EN QUARTUS**

	**Diagrama estructural bloque divisor de 3 bits

![SIMULACION_SUM](https://github.com/ELINGAP-7545/lab05-grupo15_/blob/master/Imagenes/div_3b_schematic.JPG)

	**Simulacion division

![SIMULACION_SUM](https://github.com/ELINGAP-7545/lab05-grupo15_/blob/master/Imagenes/div_3b.JPG)


## Descipción 

Para este paquete de trabajo, deben estar inscrito en un grupo y clonar la información del siguiente link [WP05](https://classroom.github.com/g/dHrBou9a). Una vez aceptado el repositorio debe descargarlo en su computador, para ello debe clonar el mismo. Si no sabe cómo hacerlo revise la metodología de trabajo, donde se explica el proceso

Las documentación deben estar diligencia en el archivo README.md del repositorio clonado.

Una vez clone el repositorio, realice lo siguiente:


Por lo tanto, la unidad debe contar con:

1. Los dos puertos de entrada A y B. cada uno de  3 bits.
2. La señal `opcode` de dos bits, para configurar la operación que se realiza con los datos de `portA` y `portB`.
3. La a visualización de unidad debe tener las salidas de los 4 ánodos, `An`  y las 7 señales de los cátodos, `sseg`.
4. Para las FSM  y las visualización dinámica, se debe incluir la señal de `clk` de entrada.
5. la señal de reset del sistema


## Entregables

1. Definir el diagrama estructurar interno de cada bloque funcionar 
2. Descargar la estructura propuesta de la  Unidad Aritmética del paquete de trabajo [WP05](https://classroom.github.com/g/dHrBou9a) Este proyecto cuenta con el archivo `alu.v` y, tiene la carpeta `src` que cuenta con las 5 carpetas de cada componente.
3. Implementar `alu.v` en la FPGA, y  comprobar el funcionamiento  de la suma la multiplicación y la visualización
4. Incluir el  HDL para le divisor  realizado en el ejercicio anterior, en la carpeta `src/divisor`  y, adicione los archivos e instanciar el bloque divisor.
5. Diseñar el bloque restador, adicionar dicho bloque a la respectiva carpeta e instanciar el modulo en `alu.v`.
6. Realizar el testbench del bloque alu.
7. implementar el sistema completo en la FPGA remota
8. hacer la documentación respectiva en el archivo README
  

 
