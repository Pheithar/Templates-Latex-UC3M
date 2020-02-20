\LoadClass{article}
\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{uc3mpracticas}[2020/02/20 Clase personalizada de Alejandro Valverde para prácticas de la UC3M]

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



%Cambiar márgenes de la página
\geometry{margin=2.5cm}


%Comando para insertar la cabecera
%1 -> Cabecera izquierda
%2 -> Cabecera centro
%3 -> Cabecera derecha
%4 -> Tamaño línea separación
\newcommand{\headerpr}[4][0]{
  \renewcommand{\headrulewidth}{#1pt}
  \lhead{#2}
  \chead{#3}
  \rhead{#4}
}

%Comando para insertar la pie de página
%1 -> Pie de página izquierda
%2 -> Pie de página centro
%3 -> Pie de página derecha
%4 -> Tamaño línea separación
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