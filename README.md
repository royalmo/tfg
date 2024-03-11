# Implementació d'una pantalla intel·ligent

Aquest repositori conté tot el material necessari per a generar el document
principal del treball de final de grau (TFG) en format PDF.

Aquest TFG forma part del pla educatiu del **Grau d'Enginyeria de
Sistemes TIC**, cursat a la Escola Politècnica Superior d'Enginyeria
de Manresa (EPSEM) entre els anys 2020 i 2024. Es pot consultar més
informació sobre la titulació al lloc web [itic.cat](https://itic.cat).

## Estructura del repositori

S'ha intentat estructurar el projecte en diferents carpetes per a facilitar la
seva comprensió:

- Al directori `/include` es trobarà la classe `tfgitic.cls` i altres possibles
  extensions necessaries pel document.
- Al directori `/images` es trobaran les imatges del document.
- Al directori `/chapters` es trobarà, separat per fitxers, el gruix de la
  memòria: el contingut de cada capítol.
- Finalment, al directori  `/misc` es trobarà codi font de gràfics, el fitxer
  `tfg.bib` que conté totes la informació bibliogràfica, entre d'altres.

Finalment, al directori principal es trobarà el `Makefile` del projecte,
el fiter `tfg.tex` que encapsula tot el document, i fitxers típics d'un
repositori de git (`.gitignore`, `README.md` i `LICENSE`).

## Generar el document PDF

La documentació està escrita en LaTeX. Per a generar el document PDF caldrà
instal·lar els paquets necessaris. A continuació es detallen les instruccions
d'instal·lació i generació del PDF provades amb Ubuntu 20.04 LTS.

### Instal·lació dels paquets necessaris

En primer lloc, cal instal·lar tots els paquets de LaTeX necesasris:

```sh
sudo apt install texlive-full biber libpgf6
```

### Generació del PDF

Un cop instal·lat tot, podeu generar el pdf mitjançant `make`.
Apareixerà un document `tfg.pdf` al mateix directori.

## Llicència

Aquest repositori està sota la llicència de *Creative Commons* BY-NC-SA. Es pot
trobar més informació en el fitxer `LICENSE` o a la segona pàgina del document
generat.

## Contribuir

Aquesta documentació només accepta petites correccions, ja que un cop entregat
el TFG es considera la documentació acabada. Tanmateix, el projecte principal
sí que pot continuar existint i rebent millores.
