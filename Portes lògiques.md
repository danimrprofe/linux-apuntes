# Tema 62. Tècniques de disseny i simplificació de funcions lògiques

Introducció
En el s. XIX fou desenvolupada l'àlgebra lògica
Per investigar les lleis fonamentals de les operacions per les que es regeix el raonament humà
Es coneix com Àlgebra de Boole per George Boole

Àlgebra de Boole
Opera amb relacions lògiques
Les variables prenen 2 valors distints: Vertader o fals
Variables binàries
Es representen amb els signes 1 i 0.
Expressen estats, no quantitats
Funció lògica
Variable binària en què el seu valor depèn d'una expressió algebraica formada per altres variables relacionades mitjançant els operadors de l'àlgebra de Boole
Operadors bàsics (I)
Operador suma (OR)



Equivalència en lògica d'interruptors
Circuit de dos interruptors en paral.lel.

Operador producte (AND)


La seva equivalència en lògica d'interruptors
Circuit en sèrie de 2 interruptors


Operadors bàsics (II)
Operador negació (NOT)



Un interruptor invers equival a aquesta operació:


Lleis fonamentals
Llei de idempotencia
Llei d'involució
Llei commutativa
Llei associativa
Llei distributiva
Llei de cancel·lació
Lleis de De Morgan

Propietats
Commutativa
Distributiva
Associativa
Taula de veritat
Introducció
Eina desenvolupada per Charles Peirce (1880)
Més popular format que Ludwig Wittgenstein (1921)
Quadre format per
Columnes
Tantes com variables contengui la funció + la corresponent a aquesta
Files
Tantes com combinacions binàries sigui possible construir amb les variables
Les combinacions seran 2^n, on
n es el nombre de variables
S'han d'ordenar de forma creixent per evitar repeticions
Relació unívoca entre la taula de veritat i la funció
Forma canònica
Definició
Producte de sumes o suma de productes
en les quals apareixen totes les variables,
de forma directa o complementada
En cada un dels termes que conforma l'expressió
Minterms
Primera forma canònica
Suma de productes
Maxterms
Segona forma canònica
Producte de sumes
Forma canònica conjuntiva o de maxterms
Maxterme
Terme suma en el qual cada variable apareix 1 vegada i només 1
Bé complementada o sense complementar
Forma canònica conjuntiva o de maxterms
És un producte composta només de maxtérminos.
Hi ha 2^n maxterms de n variables
Teorema
Donada una llista completa dels maxtérminos de n variables
Si a cadascuna de les n variables se li assigna el valor 0 o 1
Només 1 maxtérmino de la llista prendrà el valor
Els altres el 1
Conjunts complets
Conjunt d'operadors, p.e: (AND, OR, NOT)
Constitueix un conjunt complet quan, amb aquests operadors, es pot implementar qualsevol funció de commutació.
Rail simple
Quan en una funció de commutació es disposa
Només de les seves variables sense complementar
O només dels seus variables omplementades es diu que aquestes variables estan en rail simple.
Doble rail
Si es disposa
Tant de les variables sense complementar com complementades
Es diu que estan en doble rail.
Conjunt d'operadors format per (AND, OR)
Forma un conjunt complet si es disposa de variables en doble rail.
Hi ha altres exemples de grups complets com:
(AND, NOT), (OR, NOT), (NAND), (NOR)
Portes lògiques
Definició
Dispositiu capaç de realitzar una funció bàsica
Es representa amb un símbol concret. 6 portes bàsiques
Tècniques de disseny i simplificació
1. Obtenció de formes canòniques a partir de taula de veritat
Sumes de la 2ª forma canònica:
Per cada fila on la funció pren el valor 0
Assignant
0 a la variable directa
1 a la variable complementada
Multiplicant totes elles
Productes de la 1ª forma canònica:
Per cada fila en que la funció pren el valor 1
Assignant
0 a la variable complementada
1 a la variable directa
Sumant tots ells
Tècniques de disseny i simplificació (I)
Simplificació mitjançant operacions matemàtiques
Realitzar operacions amb els termes de la F. canònica
Intentant simplificar
Resultat depèn de l'habilitat del dissenyador
Mètode gràfic de Karnaugh
Construcció de les gràfiques
Completar la taula segons el resultat de la funció a cada casella
Agrupaments de membres continus, els més grans possibles
Valors que no es poden agrupar es deixen sols
Membres rodejats són els MINTERMS de la funció


Tècniques de disseny i simplificació (II)
Mètode numèric de Quine-McCluskey


Implementació de funcions lògiques mitjançant portes lògiques
Lògica NAND-NAND
Definició
Transformar qualsevol funció en una expressió que
Es pugui implementar amb portes NAND
Mètode
Doble inversió a tota la funció
Si es un producte, les 2 negacions es deixen tal qual
Si es una suma, s'elimina una per De Morgan
Es continua invertint doblement els termes fins que
Totes les sumes i productes es converteixin en
Productes o productes negats


Lògica NOR-NOR
Definició
Transformar quasevol funció en una expressió que
Es pugui implementar amb portes NOR
Mètode
Doble inversió a tota la funció
Si f(x) és una suma, es deixen tal qual
Si és un producte, s'elimina una per De Morgan
Es continua invertint doblement els termes fins que
Totes les sumes i productes es converteixin en
Sumes o sumes negades

