# Templates-Latex-UC3M
Templates de latex para prácticas de la Universidad Carlos III de Madrid hechas por Alejandro Valverde Mahou.

Si tienes alguna plantilla propia, o quieres contribuir a aumentando los ejemplos y plantillas ya existentes, eres bienvenido a realizar culauiqer *commit* que consideres.


- [Templates-Latex-UC3M](#templates-latex-uc3m)
  * [Compilación de la plantilla de prácticas](#compilaci-n-de-la-plantilla-de-pr-cticas)
- [LaTeX](#latex)
- [Documentación](#documentaci-n)
  * [uc3mpracticas.cls](#uc3mpracticascls)
      - [Comando para insertar la cabecera: **\headerpr**](#comando-para-insertar-la-cabecera-----headerpr--)
      - [Comando para insertar el pie de página: **\footerpr**](#comando-para-insertar-el-pie-de-p-gina-----footerpr--)
      - [Comando para una portada genérica y centrada: **\centeredtitle**](#comando-para-una-portada-gen-rica-y-centrada-----centeredtitle--)
      - [Comando para una portada centrada con orden diferente: **\centeredtitlealter**](#comando-para-una-portada-centrada-con-orden-diferente-----centeredtitlealter--)
      - [Comando para una portada con dos columnas: **\twocolumstitle**](#comando-para-una-portada-con-dos-columnas-----twocolumstitle--)
      - [Comando para introducir hasta 4 autores: **\authors**](#comando-para-introducir-hasta-4-autores-----authors--)
      - [Comando para introducir hasta 4 autores en la derecha: **\authorsright**](#comando-para-introducir-hasta-4-autores-en-la-derecha-----authorsright--)
      - [Comando para introducir hasta 3 autores con su grupo: **\authorsgroup**](#comando-para-introducir-hasta-3-autores-con-su-grupo-----authorsgroup--)
      - [Comando para introducir hasta 3 autores con su grupo en la derecha: **\authorsrightgroup**](#comando-para-introducir-hasta-3-autores-con-su-grupo-en-la-derecha-----authorsrightgroup--)
      - [Comando para incluir una imagen centrada **\imgcenter**](#comando-para-incluir-una-imagen-centrada----imgcenter--)
  * [practicasuc3m.tex](#practicasuc3mtex)
  * [Images](#images)
  * [Bibliotecas Usadas](#bibliotecas-usadas)

<small><i><a href='http://ecotrust-canada.github.io/markdown-toc/'>Table of contents generated with markdown-toc</a></i></small>








## Compilación de la plantilla de prácticas

La plantilla para prácticas contiene un pdf del documento *practicasuc3m.tex*, pero, por supuesto, eres bienvenido a modificar el archivo y compilarlo tú mismo.

Para compilar *practicasuc3m.tex* es necesario la carpeta de *Images* y el archivo *uc3mpracticas.cls*. Este archivo contiene todas las bbliotecas y comandos especiales que utiliza la plantilla.

por último, para compilar de nuevo el archivo, tan solo es necesario situarse en el directorio en el que está el archivo, y ejecutar el siguiente comando:

> **`pdflatex practicasuc3m.tex`**

# LaTeX

LaTeX es un sistema de tipado con muchísimas funcionalidades, que te permite la creación de documentos **pdf** estéticos.

Informate más en [LaTeX](https://www.latex-project.org)

# Documentación


## uc3mpracticas.cls

La mayoría de los siguientes comandos, si no todos, están implementados en el archivo *practicasuc3m.tex*, así que no tengas miedo y cacharrea con ellos. Si tienes alguna duda o encuentras algún fallo, no dudes en rellenar un **Issue** al respecto.


Los comandos que se encuentran en este archivo son:

#### Comando para insertar la cabecera: **\headerpr**

Recibe un total de 4 argumentos:

  1. Tamaño de la línea de separación (*opcional*)
  2. Contenido de la cabecera izquierda
  3. Contenido de la cabecera central
  4. Contenido de la cabecera derecha

#### Comando para insertar el pie de página: **\footerpr**

Recibe un total de 4 argumentos:

  1. Tamaño de la línea de separación (*opcional*)
  2. Contenido del pie de página izquierda
  3. Contenido del pie de página central
  4. Contenido del pie de página derecha

#### Comando para una portada genérica y centrada: **\centeredtitle**

Recibe un total de 5 argumentos:

  1. *Path* a la imagen
  2. Nombre de la carrera
  3. Curso actual
  4. Asignatura
  5. Título de la práctica

Su distribución es:

![](Images/CenteredTitle.png)

#### Comando para una portada centrada con orden diferente: **\centeredtitlealter**

Recibe un total de 5 argumentos:

  1. *Path* a la imagen
  2. Nombre de la carrera
  3. Curso actual
  4. Asignatura
  5. Título de la práctica

Su distribución es:

![](Images/CenteredTitleAlter.png)

#### Comando para una portada con dos columnas: **\twocolumstitle**

Recibe un total de 5 argumentos:

  1. *Path* a la imagen
  2. Nombre de la carrera
  3. Curso actual
  4. Asignatura
  5. Título de la práctica

Su distribución es:

![](Images/TwoColumnTitle.png)

#### Comando para introducir hasta 4 autores: **\authors**

Recibe un total de 8 argumentos:

  1. Nombre autor 1
  2. NIA autor 1
  3. Nombre autor 2
  4. NIA autor 2
  5. Nombre autor 3
  6. NIA autor 3
  7. Nombre autor 4
  8. NIA autor 4

#### Comando para introducir hasta 4 autores en la derecha: **\authorsright**

Recibe un total de 8 argumentos:

  1. Nombre autor 1
  2. NIA autor 1
  3. Nombre autor 2
  4. NIA autor 2
  5. Nombre autor 3
  6. NIA autor 3
  7. Nombre autor 4
  8. NIA autor 4

#### Comando para introducir hasta 3 autores con su grupo: **\authorsgroup**

Recibe un total de 9 argumentos:

  1. Autor 1
  2. NIA 1
  3. Grupo 1
  4. Autor 2
  5. NIA 2
  6. Grupo 2
  7. Autor 3
  8. NIA 3
  9. Grupo 3

#### Comando para introducir hasta 3 autores con su grupo en la derecha: **\authorsrightgroup**

Recibe un total de 9 argumentos:

  1. Autor 1
  2. NIA 1
  3. Grupo 1
  4. Autor 2
  5. NIA 2
  6. Grupo 2
  7. Autor 3
  8. NIA 3
  9. Grupo 3

#### Comando para incluir una imagen centrada **\imgcenter**

Recibe un total de 2 argumentos

  1. Ancho de la imagen (*opcional*)
  2. *Path* a la imagen

## practicasuc3m.tex

  Este archivo contiene una implementación de todos los comandos nuevos, además de algunas cosas extra, como puede ser usar diferentes *headers* y *footers* diferentes para tener diferentes en la portada e índice que en el resto del documento.

  También contiene 3 tipos de portadas diferentes, por si prefieres usar una u otra.

  Por último hay un documento con varias estructuras que pueden ser útiles, como puede ser introducir imágenes, listas o tablas.

## Images

Dentro de esta carpeta hay una serie de imágenes de logos de la Universidad Carlos III, para que podais ponerlos en las portadas o cabeceras de vuetras prácticas.

Las imágenes que podeis encontrar en esta carpeta son:

 - **LogoUC3M.png**

<img src="Images/LogoUC3M.png" width="40%">

- **SmallLogo.jpg**

<img src="Images/SmallLogo.jpg" width="40%">

- **MinLogo.jpg**

<img src="Images/MinLogo.jpg" width="40%">

- **CircUC3M.png**

<img src="Images/CircUC3M.png" width="40%">

- **BlueLogo.jpg**

<img src="Images/BlueLogo.jpg" width="40%">

## Bibliotecas Usadas

 * Biblioteca para los encabezados y pie de página: **fancyhdr**
 * Biblioteca para el lenguaje en español: **babel** (con *spanish, es-noindentfirst, es-noshorthands, es-tabla*)
 * Bilioteca para cambiar márgenes de las páginas: **geometry**
 * Biblioteca para saber cual es la última página: **lastpage**
 * Biblioteca de caracteres aceptados: **inputenc** (con *utf8*)
 * Biblioteca para permitir el uso de diferentes headers y footers: **etoolbox**
 * Bibliotecas de imágenes: **graphicx**
 * Biblioteca para usar diferentes columnas: **multicol**
 * Biblioteca para usar letras de tipo vectorial: **fontenc** (con *T1*)
 * Biblioteca para usar la fuente helvética: **helvet** (con *scaled*)
