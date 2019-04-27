# linux-apuntes

## Generación de documentación

Se utiliza pandoc para conversión de un tipo de archivo a otro. Se han creado dos scripts.

- El script `generar_presentacion.sh` crea una presentación y la abre com `mupdf`, utilizando el estilo
`beamerthememetropolis.sty`. 

- El script `docx2md.sh` convierte un archivo `docx` a `md` y de paso extrae todas las imágenes y las mantiene en su sitio.