\LoadClass{article}
\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{uc3mpracticas}[2020/02/21 Clase personalizada de Alejandro Valverde para prácticas de la UC3M]

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%                   Plantilla Prácticas UC3M                               %%%
%%%                Universidad Carlos III de Madrid                          %%%
%%%                   Alejandro Valverde Mahou                               %%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%



%Biblioteca para los encabezados y pie de página
\RequirePackage{fancyhdr}
%Biblioteca para el lenguaje en español
\RequirePackage[spanish, es-noindentfirst, es-noshorthands, es-tabla]{babel}
%Bilioteca para cambiar márgenes de las páginas
\RequirePackage{geometry}
%Biblioteca para saber cual es la última página
\RequirePackage{lastpage}
%Biblioteca de caracteres aceptados
\RequirePackage[utf8]{inputenc}
%Biblioteca para permitir el uso de diferentes headers y footers
\RequirePackage{etoolbox}
%Bibliotecas de imágenes
\RequirePackage{graphicx}
%Biblioteca para usar diferentes columnas
\RequirePackage{multicol}
%Biblioteca para alinear algunas líneas
\RequirePackage{ragged2e}
%Usar fuentes de tipo vectorial
\RequirePackage[T1]{fontenc}
%Fuente helvética
\RequirePackage[scaled]{helvet}

%Poner la fuente como predeterminada
\renewcommand\familydefault{\sfdefault}


%Cambiar márgenes de la página
\geometry{margin=2.5cm}
\setlength\parindent{0pt}


%Comando para insertar la cabecera
%1 -> Tamaño línea separación
%2 -> Cabecera izquierda
%3 -> Cabecera centro
%4 -> Cabecera derecha
\newcommand{\headerpr}[4][0]{
  \renewcommand{\headrulewidth}{#1pt}
  \lhead{#2}
  \chead{#3}
  \rhead{#4}
}

%Comando para insertar la pie de página
%1 -> Tamaño línea separación
%2 -> Pie de página izquierda
%3 -> Pie de página centro
%4 -> Pie de página derecha
\newcommand{\footerpr}[4][0]{
  \renewcommand{\footrulewidth}{#1pt}
  \lfoot{#2}
  \cfoot{#3}
  \rfoot{#4}
}

%Título e imagen centrado
%1 -> Nombre de la imagen
%2 -> Carrera
%3 -> Curso
%4 -> Asignatura
%5 -> Título práctica
\newcommand{\centeredtitle}[5]{
  \begin{center}
    \vspace{10mm}

    \includegraphics[width=80mm]{#1}

    \LARGE #2

    \vspace{5mm}

    \Large #3

    \vspace{25mm}

    \textbf{\LARGE #4}

    \vspace{10mm}

    \textbf{\Huge #5}

    \vspace{40mm}
  \end{center}
  \normalsize
}

%Título e imagen centrado orden alternativo
%1 -> Nombre de la imagen
%2 -> Carrera
%3 -> Curso
%4 -> Asignatura
%5 -> Título práctica
\newcommand{\centeredtitlealter}[5]{
  \begin{center}
    \vspace{30mm}


    \LARGE #2

    \vspace{7mm}

    \Large #3

    \vspace{30mm}

    \includegraphics[width=110mm]{#1}

    \vspace{10mm}

    \textbf{\LARGE #4}

    \vspace{10mm}

    \textbf{\Huge #5}

    \vspace{40mm}
  \end{center}
  \normalsize
}


%Título e imagen en dos columnas
%1 -> Nombre de la imagen
%2 -> Carrera
%3 -> Curso
%4 -> Asignatura
%5 -> Título práctica
\newcommand{\twocolumstitle}[5]{
  \begin{multicols}{2}
    \begin{center}
      \includegraphics[width=80mm]{#1}
    \end{center}
  \columnbreak
    \begin{center}
      \LARGE #2

      \vspace{2mm}

      \Large #3
    \end{center}
  \end{multicols}

  \begin{center}
    \vspace{25mm}

    \textbf{\LARGE #4}

    \vspace{10mm}

    \textbf{\Huge #5}

    \vspace{40mm}
  \end{center}
  \normalsize
}

%Nombres y NIAS de los autores (hasta 4)
%1 -> Autor 1
%2 -> NIA 1
%3 -> Autor 2
%4 -> NIA 2
%5 -> Autor 3
%6 -> NIA 3
%7 -> Autor 4
%8 -> NIA 4
\newcommand{\authors}[8]{
  \textbf{\large Autores:}
  \normalsize
  \vspace{5mm}

  \begin{tabular}{ p{5cm} p{3cm} }
    #1 & \textit{#2} \\
    #3 & \textit{#4} \\
    #5 & \textit{#6} \\
    #7 & \textit{#8} \\
  \end{tabular}
}


% Nombres y NIAS de los autores (hasta 4) en la derecha
%1 -> Autor 1
%2 -> NIA 1
%3 -> Autor 2
%4 -> NIA 2
%5 -> Autor 3
%6 -> NIA 3
%7 -> Autor 4
%8 -> NIA 4
\newcommand{\authorsright}[8]{
  \begin{flushright}
    \textbf{\large Autores:}
    \normalsize
    \vspace{5mm}

    \begin{tabular}{ p{5cm} r }
      #1 & \textit{#2} \\
      #3 & \textit{#4} \\
      #5 & \textit{#6} \\
      #7 & \textit{#8} \\
    \end{tabular}
  \end{flushright}
}

%Nombres, NIAS y grupo de los autores (hasta 3)
%1 -> Autor 1
%2 -> NIA 1
%3 -> Grupo 1
%1 -> Autor 2
%2 -> NIA 2
%3 -> Grupo 2
%1 -> Autor 3
%2 -> NIA 3
%3 -> Grupo 3
\newcommand{\authorsgroup}[9]{
  \textbf{\large Autores:}
  \normalsize
  \vspace{5mm}

  \begin{tabular}{ p{5cm} p{5cm} p{5cm} }
    #1 & \textit{#2} & #3\\
    #4 & \textit{#5} & #6\\
    #7 & \textit{#8} & #9\\
  \end{tabular}
}


% Nombres, NIAS y grupo de los autores (hasta 3) en la derecha
%1 -> Autor 1
%2 -> NIA 1
%3 -> Grupo 1
%1 -> Autor 2
%2 -> NIA 2
%3 -> Grupo 2
%1 -> Autor 3
%2 -> NIA 3
%3 -> Grupo 3
\newcommand{\authorsrightgroup}[9]{
  \begin{flushright}
    \textbf{\large Autores:}
    \normalsize
    \vspace{5mm}

    \begin{tabular}{ p{5cm} r r }
      #1 & \textit{#2} & #3\\
      #4 & \textit{#5} & #6\\
      #7 & \textit{#8} & #9\\
    \end{tabular}
  \end{flushright}
}



%Imágenes centradas
%1 -> Tamaño imagen (Opcional)
%2 -> Path Imagen
\newcommand{\imgcenter}[2][80]{
  \begin{center}
    \includegraphics[width=#1mm]{#2}
  \end{center}
}
