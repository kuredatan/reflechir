---
title: "1. Les raisonnements en mathématiques"
date: 2016-09-01
bitlink: http://bit.ly/2z9AkeU
---

En mathématiques, savoir démontrer un énoncé est très important. Un énoncé est constitué d'hypothèses et de conclusions. Une démonstration est une suite de déductions qui relie hypothèses et conclusions. Pour que la démonstration d'un énoncé soit correcte, il faut que toutes les déductions de la démonstration le soient.

Etudions l'énoncé suivant : La composée de deux fonctions de $\mathbb{R}$ dans $\mathbb{R}$ décroissantes est croissante.

Définitions :

$\mathbb{R}$ est l'ensemble des nombres réels $1$, $-8$, $\sqrt{2}$, $\frac{3}{4}$ etc).
 
Une fonction $f$ de $\mathbb{R}$ dans $\mathbb{R}$ associe à chaque réel un réel.

La fonction $f : x \mapsto x^2$ ("$x$ donne $x^2$") associe à chaque réel son carré : en $2$ elle vaut $4$ ($f(2) = 4$), en $3$ elle vaut $9$ ($f(3) = 9$), en $\sqrt{2}$ elle vaut $2$ ($f(\sqrt{2}) = 2$) et ainsi de suite.

La fonction $g : x \mapsto 2x$ ("$x$ donne $2 \times x$") associe à chaque réel son double : en $2$ elle vaut $4$, en $3$ elle vaut $6$, en $\sqrt{2}$ elle vaut $2\sqrt{2}$ et ainsi de suite.

La composée $f \circ g$ des fonctions $f$ et $g$ est la fonction qui à $x$ associe $f(g(x))$.
Par exemple, si $f : x \mapsto x^2$ et $g : x \mapsto 2x$, $f \circ g(2) = f(4) = 16$, $f \circ g(3) = f(6) = 36$, $f \circ g(\sqrt{2}) = f(2\sqrt{2}) = 8$.

Une fonction $f$ est croissante si, pour tous les réels $x$ et $y$, lorsque $x$ est plus grand que $y$, $f(x)$ est plus grand que $f(y)$ (que l'on note $f(x) \geq f(y)$).

Une fonction $f$ est décroissante si, pour tous les réels $x$ et $y$, lorsque $x$ est plus grand que $y$, $f(x)$ est plus petit que $f(y)$ (que l'on note $f(x) \leq f(y)$).

Démontrons à présent notre énoncé :

Soient $f$ et $g$ deux fonctions décroissantes (hypothèses) 

Soient $x$ et $y$ deux réels tels que $x \geq y$ ($x$ plus grand que $y$)

$g(x) \leq g(y)$ (car $g$ est décroissante) (première déduction)

De manière équivalente, $g(y) \geq g(x)$.

Ainsi, $f(g(y)) \leq f(g(x))$ (car $f$ est décroissante) (deuxième déduction)

De manière équivalente, $f(g(x)) \geq f(g(y))$.

$f \circ g$ est donc croissante (conclusion)

Nous avons une démonstration correcte de notre énoncé, qui est donc vrai.

Notations :

La négation de "$x$ plus grand que $y$" est "$x$ strictement plus petit que $y$" (c'est-à-dire $x$ plus petit que $y$ et $x$ différent de $y$) que l'on note $x < y$.

La négation de "$x$ plus petit que $y$" est "$x$ strictement plus grand que $y$" (c'est-à-dire $x$ plus grand que $y$ et $x$ différent de $y$) que l'on note $x > y$.

Considérons à présent l'énoncé suivant : 

La fonction $f$ qui à un entier associe $1$ et à un réel non entier associe $-1$ est croissante.

Montrons que cet énoncé est faux. 

Pour cela, il suffit de montrer qu'il existe un couple de réels $(x,y)$ tel que $x \geq y$ et $f(x) < f(y)$ (c'est-à-dire tel que $x$ est plus grand que $y$ et $f(x)$ n'est pas plus grand que $f(y)$). Un tel couple de réels est appelé un contre-exemple à notre énoncé.

$2,5 \geq 2$ et $f(2,5) = -1 < 1 = f(2)$ donc $f$ n'est pas croissante.

Remarque : $f$ n'est pas non plus décroissante. En effet, $2 \geq 1,5$ et $f(2) = 1 > -1 = f(1,5)$.

Il existe une multitude d'énoncés, de démonstrations et de contre-exemples en mathématiques. Plusieurs démonstrations utilisent le même type de raisonnement, qu'il est bon de savoir manipuler sans difficulté. Nous présenterons dans les articles suivants les raisonnements par récurrence (article 2), par contraposition, par l'absurde (article 3), par analyse-synthèse et par disjonction de cas (article 4).

Clémentine Lemarié--Rieusset
