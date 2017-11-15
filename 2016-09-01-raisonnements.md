---
title : "1. Les raisonnements en mathématiques."
date : 2016-09-01
---
<script type="text/x-mathjax-config">
MathJax.Hub.Config({
  tex2jax: {inlineMath: [['$','$'], ['\\(','\\)']]}
});
</script>
<script type="text/javascript" async src="path-to-mathjax/MathJax.js?config=TeX-AMS_CHTML"></script>

\documentclass[12pt]{article}
\usepackage{amsmath, amssymb}
\begin{document}

En math\'ematiques, savoir d\'emontrer un \'enonc\'e est tr\`es important. Un \'enonc\'e est constitu\'e d'hypoth\`eses et de conclusions. Une d\'emonstration est une suite de d\'eductions qui relie hypoth\`eses et conclusions. Pour que la d\'emonstration d'un \'enonc\'e soit correcte, il faut que toutes les d\'eductions de la d\'emonstration le soient.\\

Etudions l'\'enonc\'e suivant : La compos\'ee de deux fonctions de $\mathbb{R}$ dans $\mathbb{R}$ d\'ecroissantes est croissante.\\

D\'efinitions :\\

$\mathbb{R}$ est l'ensemble des nombres r\'eels ($1$, $-8$, $\sqrt 2$, $\frac{3}{4}$ etc).\\
 
Une fonction $f$ de $\mathbb{R}$ dans $\mathbb{R}$ associe \`a chaque r\'eel un r\'eel.\\

La fonction $f : x \mapsto x^2$ (\textquotedblleft$x$ donne $x^2$\textquotedblright) associe \`a chaque r\'eel son carr\'e : en 2 elle vaut 4 ($f(2) = 4$), en 3 elle vaut 9 ($f(3) = 9$), en $\sqrt 2$ elle vaut 2 ($f(\sqrt 2) = 2$) et ainsi de suite.\\

La fonction $g : x \mapsto 2x $ (\textquotedblleft$x$ donne $2x$\textquotedblright) associe \`a chaque r\'eel son double : en 2 elle vaut 4, en 3 elle vaut 6, en $\sqrt2$ elle vaut $2\sqrt2$ et ainsi de suite.\\

La compos\'ee $f \circ g$ des fonctions $f$ et $g$ est la fonction qui \`a $x$ associe $f(g(x))$.
Par exemple, si $f : x \mapsto x^2$ et $g : x \mapsto 2x $, $f \circ g(2) = f(4) = 16$, $f \circ g(3) = f(6) = 36$, $f \circ g(\sqrt2) = f(2\sqrt2) = 8$.\\

Une fonction $f$ est croissante si, pour tous les r\'eels $x$ et $y$, lorsque $x$ est plus grand que $y$, $f(x)$ est plus grand que $f(y)$ (que l'on note $f(x) \geq f(y)$).\\

Une fonction $f$ est d\'ecroissante si, pour tous les r\'eels $x$ et $y$, lorsque $x$ est plus grand que $y$, $f(x)$ est plus petit que $f(y)$ (que l'on note $f(x) \leq f(y)$).\\

D\'emontrons \`a pr\'esent notre \'enonc\'e :\\

Soient $f$ et $g$ deux fonctions d\'ecroissantes (hypoth\`eses)\\ 

Soient $x$ et $y$ deux r\'eels tels que $x \geq y$ ($x$ plus grand que $y$)\\

$g(x) \leq g(y)$ (car $g$ est d\'ecroissante) (premi\`ere d\'eduction)\\

De mani\`ere \'equivalente, $g(y) \geq g(x)$.\\

Ainsi, $f(g(y)) \leq f(g(x))$ (car $f$ est d\'ecroissante) (deuxi\`eme d\'eduction)\\

De mani\`ere \'equivalente, $f(g(x)) \geq f(g(y))$.\\

$f \circ g$ est donc croissante (conclusion)\\

Nous avons une d\'emontration correcte de notre \'enonc\'e, qui est donc vrai.\\

Notations :\\

La n\'egation de \textquotedblleft$x$ plus grand que $y$\textquotedblright est \textquotedblleft$x$ strictement plus petit que $y$\textquotedblright (c'est-\`a-dire $x$ plus petit que $y$ et $x$ diff\'erent de $y$) que l'on note $x < y$.\\

La n\'egation de  \textquotedblleft$x$ plus petit que $y$\textquotedblright est \textquotedblleft$x$ strictement plus grand que $y$\textquotedblright (c'est-\`a-dire $x$ plus grand que $y$ et $x$ diff\'erent de $y$) que l'on note $x > y$.\\

Consid\'erons \`a pr\'esent l'\'enonc\'e suivant : \\

La fonction $f$ qui \`a un entier associe $1$ et \`a un r\'eel non entier associe $-1$ est croissante.\\

Montrons que cet \'enonc\'e est faux.\\ 

Pour cela, il suffit de montrer qu'il existe un couple de r\'eels $(x,y)$ tel que $x \geq y$ et $f(x) < f(y)$ (c'est-\`a-dire tel que $x$ est plus grand que $y$ et $f(x)$ n'est pas plus grand que $f(y)$). Un tel couple de r\'eels est appel\'e un contre-exemple \`a notre \'enonc\'e.\\

$2,5 \geq 2$ et $f(2,5) = -1 < 1 = f(2)$ donc $f$ n'est pas croissante.\\

Remarque : $f$ n'est pas non plus d\'ecroissante. En effet, $2 \geq 1,5$ et $f(2) = 1 > -1 = f(1,5)$.\\

Il existe une multitude d'\'enonc\'es, de d\'emonstrations et de contre-exemples en math\'ematiques. Plusieurs d\'emonstrations utilisent le m\^eme type de raisonnement, qu'il est bon de savoir manipuler sans difficult\'e. Nous pr\'esenterons dans les articles suivants les raisonnements par r\'ecurrence (article 2), par contraposition, par l'absurde (article 3), par analyse-synth\`ese et par disjonction de cas (article 4).\\

Cl\'ementine Lemari\'e--Rieusset

\end{document}
