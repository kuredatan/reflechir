---
title: "5. Arithmétique"
date: 2017-11-20
bitlink: http://bit.ly/2zVUJn1
---

L'arithmétique est la branche des mathématiques qui s'intéresse aux nombres ($\alpha \rho \iota \theta \mu o \varsigma$ ou arithmos en grec signifie nombre). Elle est prolongée par la théorie des nombres (il n'y a pas de consensus sur où s'arrête précisément l'arithmétique et où commence précisément la théorie des nombres, mais en général quand on utilise des outils d'algèbre ou d'analyse (voir articles 9 et 10) on parle de théorie des nombres et sinon on parle d'arithmétique). 

## I) Lemme de Gauss et théorème d'unicité de la décomposition en facteurs premiers. ##

Dans les articles précédents, on démontrait des "énoncés". On va désormais être plus précis : on peut démontrer une proposition, un lemme, un théorème ou un corollaire.  
Un théorème est un énoncé très important, une proposition un énoncé moins important (mais important quand même, sinon on ne se fatiguerait pas à le démontrer), un lemme est un énoncé qui va servir à démontrer un théorème et un corollaire est un énoncé qui va se démontrer grâce à un théorème.  
Certains manuels scolaires désignent des énoncés comme étant des "propriétés", mais dans les cursus universitaires et le monde de la recherche on ne démontre jamais une "propriété" (vous pouvez remplacer vos "propriétés" par des propositions, ou des lemmes si elles servent à démontrer un théorème). 

Commençons par un lemme très important.

_Lemme_ : Toute partie non vide de $\mathbb{N}$ admet un plus petit élément (c'est-à-dire que si $A \subset \mathbb{N}$ n'est pas vide alors il existe $n \in A$ tel que pour tout $a \in A$ $n \leq a$).

_Dém_ : Soit $A \subset \mathbb{N}$. On veut montrer que si $A$ est non vide alors $A$ admet un plus petit élément.
Démontrons la contraposée (cf. article 3) :
Si $A$ n'admet pas de plus petit élément alors $A$ est vide.
Supposons que pour tout $n \in A$ il existe $m \in A$ tel que $m < n$. Montrons par récurrence forte sur $k \in \mathbb{N}$ que $k \not \in A$ ($k$ n'appartient pas à $A$).
$0 \not \in A$ car pour tout $m \in \mathbb{N}$ $0 \leq m$ donc en particulier pour tout $m \in A$ $0 \leq m$.
Supposons que pour tout $l \leq k$ $l \not \in A$.
Pour tout $m \in A$ $k+1 \leq m$ (car sinon $m \in${$0,\dots,k$}) donc $k+1 \not \in A$.
Ainsi, pour tout $k \in \mathbb{N}$, $k \not \in A$, donc $A$ est vide. 

_Remarque_ : Le plus petit élément est unique, car si $a_1$ et $a_2$ sont des plus petits éléments de $A$ alors $a_1 \leq a_2$ (car $a_1$ plus petit élément de $A$ et $a_2 \in A$) et $a_2 \leq a_1$ (car $a_2$ plus petit élément de $A$ et $a_1 \in A$) donc $a_1 = a_2$.

 _Déf_ : $a \in \mathbb{N}$ est divisible par $b \in \mathbb{N}$ s'il existe $c \in \mathbb{N}$ tel que $a = b \times c$. On dit aussi que $a$ est un multiple de $b$ ou que $b$ divise $a$.

_Remarques_ : Si $b$ divise $a$ et si $a \neq 0$ alors $b \leq a$. En effet on a alors $a = b \times c$ avec $c \geq 1$ (on est simplement en train de dire que $b, 2b, 3b$ etc sont supérieurs à $b$).  
Le seul entier divisible par $0$ est $0$ et $0$ est divisible par tous les entiers (car pour tout $c \in \mathbb{N} \ 0 \times c = 0$).  
Tous les entiers sont divisibles par $1$ (car pour tout $c \in \mathbb{N} \ 1 \times c = c$) et $1$ n'est divisible que par $1$.

_Thm_ : Soient $a \in \mathbb{N}$ et $b \in \mathbb{N} \setminus${$0$}. Il existe un unique couple d'entiers naturels $(q,r)$ tel que $0 \leq r < b$ et $a = qb + r$ (division euclidienne de $a$ par $b$).

_Dém_ : Démontrons tout d'abord l'unicité : si $(q,r)$ et $(p,s)$ conviennent, alors $qb + r = pb + s$ et $0 \leq r < b$, $0 \leq s < b$, donc $(q-p)b = s-r$ donc $s-r$ est un multiple de $b$ donc $s-r = 0$ ou $b \leq s-r$ or $s-r \leq s < b$ (voir inégalités ci-dessus) donc $s-r = 0$ donc $(q-p)b = 0$ or $b \neq 0$ donc $q-p = 0$ : ainsi $r = s$ et $q = p$.

Si $a < b$ alors $q = 0$ et $r = a$ conviennent. Sinon, $a - b \geq 0$ donc $0 \not \in A =$ {$n \in \mathbb{N}, a - nb < 0$} $\subset \mathbb{N}$ qui est non vide car $a + 1 \in A$ (car $a + 1 > a$ et $b \geq 1$ (car $b \in \mathbb{N} \setminus${$0$})) donc, avec le lemme précédent, il existe un plus petit élément $n$ de $A$. $a - nb < 0$ (car $n \in A$) et $a - (n-1)b \geq 0$ (car $n-1 < n$ donc $n-1 \not \in A$ car $n$ est le plus petit élément de $A$). Posons $q = n - 1$ et $r = a - qb$. $q \in \mathbb{N}$ et $r$ est un entier vérifiant $0 \leq r < b$.

On peut désormais définir le plus grand commun diviseur de deux entiers :

_Déf_ : Le plus grand commun diviseur de $a \in \mathbb{N}$ et de $b \in \mathbb{N}$, noté pgcd$(a,b)$, est l'entier $d \in \mathbb{N}$ qui vérifie $d$ divise $a$, $d$ divise $b$ et si $c$ divise $a$ et $c$ divise $b$ alors $c$ divise $d$.

Pour que cette définition soit correcte, il faut et il suffit qu'il existe un unique entier $d$ vérifiant ces propriétés (s'il n'y en a pas on est en train de donner un nom à quelque chose qui n'existe pas et s'il y en a plusieurs notre définition est ambigüe car elle désigne plusieurs entiers et pas un seul).

Montrons que cette définition est correcte.

Commençons par l'unicité :
Si $d_1$ et $d_2$ vérifient les propriétés de pgcd de $a$ et de $b$ alors, comme $d_1$ divise $a$ et $d_1$ divise $b$ on a $d_1$ divise $d_2$ et comme $d_2$ divise $a$ et $d_2$ divise $b$ on a $d_2$ divise $d_1$.  
Si $d_1 = 0$ alors comme $d_1$ divise $d_2$ on a $d_2 = 0$. De même, si $d_2 = 0$ alors $d_1 = 0$.  
Si $d_1 \neq 0$ et $d_2 \neq 0$ alors on a $d_1 \leq d_2$ et $d_1 \geq d_2$ (car $d_1$ divise $d_2$ et $d_2$ divise $d_1$) donc on a $d_1 = d_2$.  
On a prouvé l'unicité du pgcd par disjonction de cas.

Montrons à présent l'existence du pgcd.
On remarque que si pgcd($a,b$) existe alors pgcd($b,a$) aussi et pgcd($a,b$) = pgcd($b,a$) (cf. la définition du pgcd (cf signifie confer c'est-à-dire allez voir)).  
On peut donc supposer $b \geq a$ (quitte à échanger $a$ et $b$).  
Si $a=0$ alors $b$ divise $a$ et $b$ divise $b$ et si $c$ divise $a$ et $c$ divise $b$ alors $c$ divise $b$ donc $b =$ pgcd($a,b$).  
Sinon, effectuons la division euclidienne de $b$ par $a$ : soient $q_0,r_0 \in \mathbb{N}$ tels que $b = q_0a + r_0$ et $0 \leq r_0 < a$. Montrons que pgcd$(a,b) =$ pgcd$(r_0,a)$.  
pgcd$(r_0,a)$ divise $r_0$ et $a$ donc divise $b = q_0a + r_0$ et $a$ donc divise pgcd$(a,b)$.  
pgcd$(a,b)$ divise $a$ et $b$ donc divise $r_0 = b - q_0a$ et $a$ donc divise pgcd$(r_0,a)$.  
Ainsi pgcd$(a,b) =$ pgcd$(r_0,a)$. Avec le cas précédent on remarque que si $r_0 = 0$ alors pgcd$(r_0,a) = a$ donc pgcd$(a,b) = a$.

_Exercice :_ Terminer la preuve de l'existence du pgcd. Vous pouvez pour cela construire $q_1,q_2,\dots$ et $r_1,r_2,\dots$ tels que $a = q_1r_0 + r_1$, $r_0 = q_2r_1 + r_2$ etc (on construit $q_n$ et $r_n$ quand $r_{n-1} \neq 0$) et utiliser le lemme précédent.  
Cet exercice sera corrigé dans le prochain article (5 bis).

_Déf_ : Soit $n \in \mathbb{N} \setminus${$0,1$}. Soient $a_1,\dots,a_n \in \mathbb{N}$. Le plus grand commun diviseur de $a_1,\dots,a_n$, noté pgcd$(a_1,\dots,a_n)$, est l'entier $d \in \mathbb{N}$ qui vérifie $d$ divise $a_1$,..., $d$ divise $a_n$ et si $c$ divise $a_1$,..., $c$ divise $a_n$ alors $c$ divise $d$.

_Exercice_ : Montrer que cette définition est correcte.  
Pour l'existence pour $n > 2$ on pourra vérifier que pgcd(pgcd$(a_1,...,a_{n-1}),a_n$) vérifie les hypothèses de pgcd$(a_1,...,a_n)$.

Démontrons à présent une proposition bien utile.

_Prop_ : Soient $a,b \in \mathbb{N}$. Soit $c \in \mathbb{N} \setminus${$0$}. pgcd$(ca,cb) =$ $c$ pgcd$(a,b)$.

_Dém_ : Notons $d =$ pgcd$(a,b)$. $d$ divise $a$ et $d$ divise $b$ donc $cd$ divise $ca$ et $cd$ divise $cb$.
Ainsi, $cd$ divise pgcd$(ca,cb)$. $c$ divise $ca$ et $c$ divise $cb$ donc $c$ divise pgcd$(ca,cb)$. Soit $e \in \mathbb{N}$ tel que pgcd$(ca,cb) = ce$.
Soient $a',b' \in \mathbb{N}$ tels que $ca = $pgcd$(ca,cb)a'$ et $cb = $pgcd$(ca,cb)b'$.
$ca = cea'$ et $cb = ceb'$. En multipliant par $\frac{1}{c}$ on a :
$a = ea'$ et $b = eb'$ donc $e$ divise $a$ et $b$ donc $e$ divise $d = $pgcd$(a,b)$.
Ainsi pgcd$(ca,cb) = ce$ divise $cd$ or on avait $cd$ divise pgcd$(ca,cb)$ d'où l'égalité.

_Déf_ : Soit $n \in \mathbb{N} \setminus${$0,1$}. On dit que $a_1,\dots, a_n$ sont premiers entre eux si pgcd$(a_1,\dots, a_n) = 1$.

Démontrons le lemme de Gauss (mathématicien de la première moitié du XIXe siècle) puis deux autres lemmes qui en découlent.

_Lemme de Gauss_ : Si $a$ et $b$ sont premiers entre eux et si $a$ divise $bc$ alors $a$ divise $c$. 

_Dém_ : $a$ divise $ac$ et $a$ divise $bc$ donc $a$ divise pgcd$(ac,bc) =$ pgcd$(a,b)c = c$ car pgcd$(a,b) = 1$ (on a utilisé la proposition précédente et $ca = ac$ etc).

_Lemme_ : Si $a$ et $b$ sont premiers entre eux tels que $a$ divise $c$ et $b$ divise $c$ alors $ab$ divise $c$.

_Dém_ : $b$ divise $c$ donc il existe $d \in \mathbb{N}$ tel que $c = bd$. $a$ divise $c = bd$ et $a$ et $b$ sont premiers entre eux donc, avec le lemme précédent, $a$ divise $d$ donc il existe $e \in \mathbb{N}$ tel que $d = ae$ donc $c = bd = bae = abe$ donc $ab$ divise $c$.  

_Lemme_ : Soit $p$ un nombre premier. Soit $n \in \mathbb{N} \setminus${$0$}. Soient $a_1,\dots,a_n \in \mathbb{N}$. Si $p$ divise $a_1 \times \dots \times a_n$ alors $p$ divise $a_1$ ou ... ou $p$ divise $a_n$.

_Exercice_ : Démontrer ce lemme en utilisant le lemme de Gauss et le fait que si $p$ est un nombre premier et $c \in \mathbb{N}$ alors pgcd$(p,c) = 1$ ou $p$ (cette dernière affirmation se démontre aisément avec la définition de nombre premier (voir article 2)).

_Not_ : Si $x \in \mathbb{R}$ et $n \in \mathbb{N} \setminus${$0$} on note $x^n = x \times \dots \times x \ n$ fois ($x^1 = x, x^2 = x \times x, x^3 = x \times x \times x$ etc). Si $x \in \mathbb{R}$ on note $x^0 = 1$. 

_Thm_ : Soient $m,n \in \mathbb{N} \setminus${$0$}. Soient $p_1 \leq \dots \leq p_m, \, q_1 \leq \dots \leq q_n$ des nombres premiers. Si $p_1 \times \dots \times p_m = q_1 \times \dots \times q_n$ alors $m = n$, $p_1 = q_1, \dots, p_m = q_m$. C'est l'unicité de la décomposition en facteurs premiers.

_Dém_ : Raisonnons par récurrence sur le maximum de $m$ et de $n$, noté max$(m,n)$ (max$(m,n) = m$ si $m \geq n$ et $n$ sinon).

Si max$(m,n) = 1$ alors on a $m = 1$ et $n = 1$ donc $m = n$ et $p_1 = q_1$.

Supposons le résultat établi pour $k \in \mathbb{N} \setminus${$0$}.  
Soient $m,n \in \mathbb{N} \setminus${$0$} tels que max$(m,n) = k+1$.  
Si $p_1 < q_1$ alors $p_1 \not \in$ {$q_1,\dots,q_n$} or $p_1$ divise $q_1 \times \dots \times q_n$ donc avec le lemme précédent $p_1$ divise $q_1$ ou ... ou $p_1$ divise $q_n$ (car $p_1$ premier) donc $p_1 = q_1$ ou ... ou $p_1 = q_n$ (car $q_1,\dots,q_n$ premiers et $p_1 \neq 1$) ce qui contredit $p_1 \not \in$ {$q_1,\dots,q_n$}.  
(En d'autres mots, $p_1 < q_1$ implique $p_1 \not \in$ {$q_1,\dots,q_n$} et $p_1 \in$ {$q_1,\dots,q_n$} proposition toujours fausse, d'où $p_1 \geq q_1$)  
Si $q_1 < p_1$ alors $q_1 \not \in$ {$p_1,\dots,p_m$} or $q_1$ divise $p_1 \times \dots \times p_m$ donc avec le lemme précédent $q_1$ divise $p_1$ ou ... ou $q_1$ divise $p_m$ (car $q_1$ premier) donc $q_1 = p_1$ ou ... ou $q_1 = p_m$ (car $p_1,\dots,p_m$ premiers et $q_1 \neq 1$) ce qui contredit $q_1 \not \in$ {$p_1,\dots,p_m$}.  
Ainsi $p_1 = q_1$. On a donc $p_2 \times \dots \times p_m = q_2 \times \dots \times q_n$ donc, comme à gauche on a $m-1$ termes et à droite $n-1$ et que max$(m-1,n-1) = $ max$(m,n) - 1 = k$, par hypothèse de récurrence $m = n$ et $p_2 = q_2$,..., $p_m = q_m$.

## II) Triplets pythagoriciens et cas $n = 3$ et $n = 4$ du grand théorème de Fermat. ##

En géométrie, le théorème de Pythagore stipule que si $x,y,z$ sont les longueurs des côtés d'un triangle rectangle, avec $z$ la longueur de l'hypoténuse, alors $x^2 + y^2 = z^2$ (voir l'article 7. Géométrie). La réciproque du théorème de Pythagore stipule que si $x,y,z$ sont les longueurs des côtés d'un triangle et vérifient $x^2 + y^2 = z^2$ alors ce triangle est rectangle et son hypoténuse est le côté de longueur $z$. On peut se demander quels triplets d'entiers naturels non nuls $(x,y,z)$ vérifient l'équation $x^2 + y^2 = z^2$ (ce qui revient à se demander quels sont les triangles rectangles dont les longueurs des côtés sont des entiers). On appelle de tels triplets des "triplets pythagoriciens".

 _Exo_ : Résolution de l'équation de Pythagore $x^2 + y^2 = z^2$ avec $x,y,z \in \mathbb{N} \setminus${$0$}.

1) Montrer que $(x,y,z)$ est solution si et seulement si, en notant $d =$ pgcd$(x,y,z)$, $(\frac{x}{d},\frac{y}{d},\frac{z}{d})$ est solution.

2) Soit $(x,y,z)$ une solution de pgcd 1. Déterminer le reste dans la division euclidienne de $z^2$ par 4 (en considérant les différentes possibilités pour ceux de $x^2$ et $y^2$) et en déduire que $z$ est impair, $x$ ou $y$ est pair et l'autre est impair.

3) Soit $(x,y,z)$ une solution de pgcd 1. Si $x$ est pair et $y$ est impair, montrer que pgcd($\frac{z-y}{2},\frac{z+y}{2}) = 1$. En déduire, puisque $(z-y)(z+y) = z^2 - y^2 = x^2$, que $\frac{z-y}{2}$ et $\frac{z+y}{2}$ sont des carrés d'entiers, puis une expression de $x$, $y$ et $z$.

4) Donner toutes les solutions de l'équation $x^2 + y^2 = z^2$ dans $\mathbb{N} \setminus${$0$}.

Cet exercice et les suivants seront corrigés dans l'article 5 bis. Si vous bloquez sur une question n'hésitez pas à la sauter pour faire les autres questions (quitte à réessayer plus tard, souvent la nuit porte conseil).

Une question que l'on peut naturellement se poser est de savoir s'il existe $x,y,z \in \mathbb{N} \setminus${$0$} tels que $x^3 + y^3 = z^3$ ou $x^4 + y^4 = z^4$ etc. Pierre de Fermat (1601-1665) a énoncé la conjecture suivante (appelée grand théorème de Fermat ou dernier théorème de Fermat) : pour tout $n \geq 3$, il n'existe pas $x,y,z \in \mathbb{N} \setminus${$0$} tels que $x^n + y^n = z^n$. Andrew Wiles (1953-) l'a démontrée en 1995 grâce à des mathématiques très sophistiquées (le documentaire [Fermat's Last Theorem](http://topdocumentaryfilms.com/fermats-last-theorem/) présente l'aventure de la preuve au grand public). Les cas $n = 3$ et $n = 4$ sont faciles à montrer et font l'objet des exercices suivants.   
Ensuite il suffit de montrer le résultat pour $n \geq 5$ premier (prouvez-le ! ce sera corrigé dans l'article 5 bis, tout comme les exercices suivants), c'est ce qu'a fait Wiles (je dis "il suffit" mais c'est très difficile (sinon le grand théorème de Fermat n'aurait pas attendu plus de 300 ans avant d'être prouvé)).

Pour le cas $n = 4$ on montre même qu'il n'y a pas de solution dans $\mathbb{N} \setminus${$0$} à $x^4+y^4=z^2$ (ce qui implique le cas $n = 4$ en prenant $z$ un carré d'entier).

_Exo_ : Il n'y a pas de solution dans $\mathbb{N} \setminus${$0$} à $x^4+y^4=z^2$.

1) Se ramener à $x^2,y^2,z$ de pgcd 1 (comme dans l'exercice précédent).

2) Utiliser l'exercice précédent pour avoir une expression de $x^2,y^2,z$.

3) Vérifier que $y$ et les deux paramètres de la question 2) forment un triplet pythagoricien et en déduire une expression avec deux nouveaux paramètres.

4) Utiliser le fait que toute partie non vide de $\mathbb{N}$ admet un plus petit élément pour conclure.

Passons au cas $n = 3$.

_Exo_ : Il n'y a pas de solution dans $\mathbb{N} \setminus${$0$} à $x^3+y^3=z^3$.

1) Se ramener à $x,y,z$ de pgcd 1 (comme dans l'exercice précédent).

2) Montrer que s'il existe $x,y,z$ de pgcd 1 tels que  $x^3+y^3=z^3$ alors il existe $u,v \in \mathbb{N} \setminus${$0$} de pgcd 1 tels que $u$ et $v$ sont de parité opposée (l'un est pair et l'autre est impair) et $2u(u^2+3v^2)$ est un cube d'entier.

3) Montrer que pgcd$(2u,u^2+3v^2) = 1$ ou 3.

4) Utiliser le fait que toute partie non vide de $\mathbb{N}$ admet un plus petit élément pour conclure.

Clémentine Lemarié--Rieusset

