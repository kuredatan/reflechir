---
title: (Théorie des graphes) Bases et théorème des quatre couleurs
date: 2016-09-11
---

Thème : Théorie des graphes

Note : Les quatre premiers articles de mathématiques peuvent être utiles pour faire les exercices de cet article (ne vous inquiétez pas, ils sont très courts !)

Cet article est l'occasion de présenter quelques définitions élémentaires de la théorie des graphes, et est le premier d'une série visant à démontrer un théorème majeur, le théorème des quatre couleurs. Il n'y a pas de démonstration complexe, mais il est vivement conseillé de faire les exercices pour se familiariser avec les notions.

Retournons ensemble dans un passé insouciant, où, assis sur votre chaise dans une salle de classe, votre seule préoccupation était de colorier avec un nombre minimal de couleurs (votre attirail de crayons étant limité) la carte géographique en face de vous. Vous ne vous doutiez certes pas qu'à cet instant, pauvre innocent, vous étiez actuellement en train de méditer sur l'un des problèmes majeurs de la théorie des graphes.

Mais, tout d'abord, formalisons le problème que nous avons énoncé précédemment.

- Un graphe (comme celui qui est présent en image ci-dessus) est en fait constitué d'un ensemble de sommets, et d'un ensemble d'arêtes, c'est-à-dire de liens entre deux sommets. Une arête entre les sommets i et j est notée (i,j) (ou de façon équivalente ici, (j,i) : on dit que le graphe est non orienté). On écrira alors que G est le graphe (V, E) avec V l'ensemble de sommets ("vertices", noeuds en anglais), et E l'ensemble d'arêtes ("edges", traduction anglaise d'arête). Ici, on considère qu'il n'existe pas d'arêtes pointant d'un sommet vers lui-même (donc i est différent de j).

- Une coloration d'un graphe va alors être une fonction notée c qui à un sommet associe sa couleur : par exemple, si on a colorié le sommet 1 du graphe en bleu, c(1) = bleu. Tout comme on peut associer des entiers à chaque sommet, de même on pourra associer un entier à chaque couleur. Il est évidemment préférable d'associer deux entiers différents à deux couleurs différentes... En définitive, c sera une fonction d'un intervalle {0, 1, 2, ..., n} dans un intervalle {0, 1, 2, ..., m}, où n sera le nombre de sommets, et m le nombre de couleurs, et c(0) sera donc la couleur du sommet numéroté 0.

- On notera K(G) le nombre minimal de couleurs nécessaire pour qu'il existe une coloration c telle que :
Propriété (P) : si les sommets i et les sommets j sont reliés par une arête, alors ils ont des couleurs distinctes par la coloration c : c(i) != c(j) (!= signifie "différent de").

- Un graphe est colorié si on a pu trouver une fonction de coloration qui respecte la propriété (P). Le graphe est colorié avec au plus k couleurs si la fonction de coloration respecte la propriété (P) et que le nombre de couleurs est k.

--

Exercice : Dites combien vaut K(G) quand G a trois sommets 0, 1 et 2, et trois arêtes, une reliant 0 à 1, une reliant 1 à 2, et l'autre reliant 2 à 0. (Ce n'est nullement une question piège. En cas de doute, vous pouvez voir les réponses dans le prochain article, comme pour tous les exercices qui vont suivre...)

Exercice : Un graphe complet à i sommets (noté K-i) est un graphe tel qu'il existe une arête entre chaque couple de sommets distincts du graphe (par exemple, le graphe de l'exercice précédent s'appelle K-3). Montrez que K(K-i) >= i (>= signifiant "supérieur ou égal à"). (Indice : démonstration par l'absurde, en supposant que K(K-i) < i)

Exercice : Un cycle à i sommets C-i est un graphe tel que, si les sommets sont numérotés 0, 1, 2, 3, ..., i-1, ses arêtes sont (0, 1), (1, 2), (2, 3), ..., (i-2, i-1), (i-1, 0). Montrez que si i est supérieur ou égal à 2, alors soit K(C-i) = 2 si i est pair, soit K(C-i) = 3 si i est impair. (Indice : raisonnement par récurrence sur i puis, à l'intérieur de la récurrence, un raisonnement par disjonction de cas, dans les deux cas où i est pair/impair)

--

- Un graphe planaire G est tel qu'il existe une façon de le dessiner sans que les arêtes ne s'intersectent. Un graphe planaire plongé est un graphe qui est dessiné sans que les arêtes ne s'intersectent. Autrement dit, un graphe planaire peut être dessiné sous forme d'un graphe planaire plongé. Ici, lorsqu'on évoquera un graphe planaire, on pensera à sa version plongée.

--

Exercice : Le graphe K-4 est-il planaire ? K-5 est-il planaire ? (Indice : il y a un oui et un non. Pour prouver le oui, dessinez une version planaire du graphe. La justification du non nécessite le théorème de Kuratowski-Wagner, qui sera présenté dans cet article un peu plus tard)

--

Un graphe connexe est un graphe tel que, pour tout sommets i et j distincts, il existe un chemin, c'est-à-dire une suite d'arêtes, dans le graphe de i vers j (ou de façon équivalente, de j vers i, car nos graphes sont non orientés). Par exemple, K-3 est connexe. 

--

Le graphe K-i-j est le graphe constitué de deux ensembles de sommets distincts G-i (contenant i sommets) et G-j (contenant j sommets), tels que chaque noeud dans G-i soit relié à tous les sommets de G-j, et que chaque noeud de G-j soit relié à tous les sommets de G-i. Par exemple, vous avez en image ci-dessus le graphe K-3-3, qui aura son rôle à jouer ci-dessous. On appelle un tel graphe un graphe biparti complet.

--

Après cette longue (mais nécessaire) tartine de définitions, revenons à nos graphes. Le théorème que vous auriez rêvé connaître en classe de géographie, et qui peut paraître assez étonnant, est le théorème des quatre couleurs :

Théorème des quatre couleurs (conjecturé en 1852) : Toute carte (que l'on pourra assimiler à un graphe planaire non orienté connexe) peut être coloriée avec au plus quatre couleurs. 

Ce théorème est la conséquence directe d'un autre résultat (pour vous en convaincre, revoyez les définitions ci-dessus) :

Théorème d'Appel et Haken (démontré en 1976) : Pour tout graphe planaire G, K(G) <= 4.

Ce dernier théorème est assez exceptionnel, car sa démonstration s'aide d'un ordinateur, qui a colorié toutes les configurations possibles qui peuvent être contenues dans un graphe planaire, qui avaient été préalablement énumérées par les mathématiciens. Comme toutes les configurations représentaient exhaustivement tous les cas possibles, et que l'ordinateur a réussi à les colorier avec au plus quatre couleurs, on peut penser que la conjecture s'avérait vraie -c'est une sorte de version assez longue et pénible de la démonstration par disjonction de cas. Certains mathématiciens restent frustrés par cette preuve informatique...

Evidemment, vous pouvez vous dire -en toute légitimité- que c'était bien la peine de consacrer tout un article simplement pour colorier une carte alors qu'au demeurant, vous pouviez très bien acheter de nouveaux crayons. Mais l'intérêt de la résolution du problème de coloriage (avec un nombre minimal de couleurs) est que beaucoup de problèmes de la vie quotidienne peuvent s'y ramener. Un congrès d'informaticiens veut organiser un séminaire, en utilisant le moins de salles possibles. Les horaires des différentes conférences étant déjà fixés, il s'agit d'attribuer une salle pour chaque conférence. Pour cela, on construit le graphe où les sommets sont les conférences. Deux conférences sont reliées par une arête si leur temps d'exposé se chevauchent (autrement dit, elles se déroulent le même jour et l'une commence pendant le temps d'exposé de l'autre). Les couleurs seront alors les différentes salles utilisées pour le séminaire. Alors d'après la définition précédente du graphe, si deux conférences sont reliées par une arête, alors elles ne peuvent pas se dérouler dans la même salle, donc les sommets associés ne pourront pas être de la même couleur.

--

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

--

Références : (si vous ne pouvez pas attendre les prochains articles de la série, et que vous voulez en savoir plus sur la démonstration du théorème des quatre couleurs, et de celui d'Appel et Haken)
* Elements de théorie des graphes : Bretto, Faisant, Hennecart.
* La [page de Georges Gonthier]((http://enseignement.polytechnique.fr/profs/informatique/Georges.Gonthier/pi2000/pro/gonthier)) sur le site de l'Ecole Polytechnique.
