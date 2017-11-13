---
title: (Théorie des graphes) Bases et théorème des quatre couleurs - corrigé
---
Thème : Théorie des graphes

Note : C'est la correction des exercices du premier article sur la série du théorème des quatre couleurs.

___________

Exercice : Dites combien vaut K(G) quand G a trois sommets 0, 1 et 2, et trois arêtes, une reliant 0 à 1, une reliant 1 à 2, et l'autre reliant 2 à 0.

Voici un schéma du graphe G décrit dans la consigne :

%% schéma 

On rappelle que K(G) est le nombre minimal de couleurs nécessaire pour qu'il existe une coloration c telle que (P) : si les sommets i et les sommets j sont reliés par une arête, alors ils ont des couleurs distinctes par la coloration c : c(i) != c(j) (!= signifie "différent de"). On va évidemment utiliser au moins une couleur, donc K(G) >= 1.

Le nombre minimal de couleurs est tout d'abord forcément plus petit ou égal au nombre de noeuds (aussi appelés sommets) du graphe, ici 3, puisque qu'une coloration donne une couleur à chaque noeud. 

Pour démontrer que K(G) = 3, il suffit alors de montrer que K(G) >= 3. On peut tester les cas K(G) = 1, 2, et montrer que de telles colorations ne respectent pas la propriété requise (P). Plus astucieusement, on peut montrer facilement que l'on peut colorier G avec 3 couleurs, et que si K(G) < 3, alors il existe deux noeuds dans G qui ont la même couleur. Or toute paire de sommets dans G est reliée par une arête, ce qui contredit (P). Donc K(G) >= 3, donc K(G) = 3.
___________

Exercice : Un graphe complet à i sommets (noté K-i) est un graphe tel qu'il existe une arête entre chaque couple de sommets distincts du graphe (par exemple, le graphe de l'exercice précédent s'appelle K-3). Montrez que K(K-i) >= i (>= signifiant "supérieur ou égal à"). 

Suivons l'indice donné, et faisons une démonstration par l'absurde, en supposant K(K-i) < i. Alors le graphe K-i est colorié avec strictement moins de i couleurs, donc il existe au moins deux noeuds distincts ayant la même couleur. Or il existe une arête entre chaque couple de sommets distincts, donc la coloration ne respecte pas (P). Donc K(K-i) >= i.

En utilisant le raisonnement décrit à l'exercice précédent, on montre que K(K-i) <= i, donc K(K-i) = i.

___________

Exercice : Un cycle à i sommets C-i est un graphe tel que, si les sommets sont numérotés 0, 1, 2, 3, ..., i-1, ses arêtes sont (0, 1), (1, 2), (2, 3), ..., (i-2, i-1), (i-1, 0). Montrez que si i est supérieur ou égal à 2, alors soit K(C-i) = 2 si i est pair, soit K(C-i) = 3 si i est impair.

L'indice donné était : "raisonnement par récurrence sur i puis, à l'intérieur de la récurrence, un raisonnement par disjonction de cas, dans les deux cas où i est pair/impair".

Faisons un raisonnement par récurrence sur i supérieur ou égal à 2. On démontre "si i est supérieur ou égal à 2, alors soit K(C-i) = 2 si i est pair, soit K(C-i) = 3 si i est impair".

Si i = 2, alors la seule paire de sommets distincts dans le graphe est reliée par une arête, donc K(C-2) >= 2. De plus, on peut montrer par un dessin que l'on peut colorier ce graphe avec deux couleurs en respectant (P), donc K(C-2) <= 2, d'où K(C-2) = 2.

Si i = 3, c'est le graphe de l'exercice 1.

Prenons i > 3. Raisonnons par disjonction de cas.

Si i est impair, considérons un noeud v au hasard dans le graphe C-(i-1). On sait par récurrence que K(C-(i-1)) = 2, car i-1 est pair et strictement inférieur à i. Colorions les sommets de C-(i-1) en bleu et jaune. Supposons que v est colorié en jaune (c'est le même raisonnement pour l'autre couleur...). 

%%schéma

Pour obtenir le graphe C-i, on divise le sommet v en deux sommets v1 et v2, v1 étant uniquement relié à v2 et à un seul des deux voisins de v, et v2 étant relié à v1 et à l'autre voisin de v.  

%%schéma

Comme v était colorié en jaune, alors ses deux voisins étaient coloriés en bleu (sinon cela ne respecte pas la propriété (P)). Si on colorie v1 et v2 en jaune, alors (P) n'est plus respectée car il existe une arête entre v1 et v2. Si on modifie la couleur de l'un des deux voisins de v, alors la propriété (P) n'est plus respectée sur le voisin de v considéré et l'un des voisins de ce sommet. Donc K(C-i) >= 3, et si on colorie par exemple v1 en jaune et v2 en rouge, (P) est bien respectée, d'où K(C-i) <= 3, d'où K(C-i) = 3.

Si i est pair, le plus simple est de se passer de l'hypothèse de récurrence. On peut numéroter les noeuds du graphe de 0 à i-1, et colorier les noeuds de numéro pair en rouge, et les noeuds de numéro impair en bleu. Les noeuds de numéro pair (respectivement impair) n'étant reliés qu'à des noeuds de numéro impair (respectivement pair), ce coloriage respecte la propriété (P), d'où K(C-i) <= 2. Si on n'utilise qu'une seule couleur, toutes les paires de sommets reliés par une arête sont de la même couleur, ce qui contredit (P). D'où K(C-i) >= 2, d'où K(C-i) = 2.

Cela achève la démonstration.
___________

Exercice : Le graphe K-4 est-il planaire ? K-5 est-il planaire ? 

Voici la version plongée de K-4, qui est planaire :

D'après l'indice, K-5 n'est donc pas planaire (voir les prochains articles pour la justification...).
___________

Exercice : Supposons que le séminaire soit composé de sept conférences : A, B, C, D, E, F et G. Voici l'emploi du temps du séminaire :
Jour 1 :
A : 9H30 - 12H00
B : 8H30 - 11H00
C : 14H00 - 18H00 (pauvre conférencier...)
D : 13H00 - 14H30
Jour 2 :
E : 8H30 - 10H00
F : 9H00 - 13H30
G : 13H00 - 14H00
Convainquez-vous que le séminaire devra utiliser au moins 2 salles.

Voici le dessin du graphe associé :

%% schéma
