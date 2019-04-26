--- 
title:
- Pandoc
subtitle:
- Pruebas con pandoc
author:
- Daniel Moreno
institute:
- IES Francesc de Borja Moll
date: 
- \today
theme:
- metropolis
header-includes:
 - '\usetheme{metropolis}'
 - '\makeatletter'
 - '\beamer@ignorenonframefalse'
 - '\makeatother'
aspectratio:
 - 169
---

# Standout frame {.standout}
Standout (works as expected)

# Normal frame
Normal (works as expected)

# Pandoc

La idea es utilizar pandoc para convetir los archivos markdown
a presentaciones en formato pdf.

## Instalación

Me abro un terminal de windows con permisos de administrador (sino nos dará errores).

Me instalo pandoc

    sudo apt install pandoc

# Instalación pdflatex

Me instalo pdflatex:

    sudo apt install texlive-latex-base
    sudo apt install texlive-fonts-recommended texlive-fonts-extra texlive-latex-extra

# Conversión de markdown

Vamos a crear un nuevo documento pdf a partir de un archivo markdown.

En este caso, lo pasaremos por beamer para obtener un pdf de diaspositivas.

    pandoc docker.md -t beamer -o docker.pdf
