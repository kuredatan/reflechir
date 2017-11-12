---
title: Example
categories: ""
---

## Ne pas supprimer ce post             ##

Les brouillons doivent avoir nécessairement pour nom de fichier "[titre].md" (/!\ 'titre' ne doit pas comporter de date !)

Pour les "véritables" posts, le titre doit nécessairement être "AAAA-MM-DD-titre.md" avec AAAA l'année, MM le mois, DD le jour, et les fichiers doivent se trouver dans le dossier "_posts/[hierarchie/du/post]", et commencer par :

"
---
title: Example
date: AAAA-MM-DD
bitlink: [lien obtenu avec https://bitly.com/]
---
"

## Petit guide des choses utiles        ##

Pour une liste des choses possibles : 
https://github.com/adam-p/markdown-here/wiki/Markdown-Cheatsheet
ou
https://guides.github.com/pdfs/markdown-cheatsheet-online.pdf

J'écris ici seulement l'essentiel :

* Ajouter une image : mettre l'image dans le dossier "images" et écrire
![Légende]({{ "/images/[nom de l'image].[extension]" | absolute_url }})

* Ajouter un document PDF : mettre le document dans le dossier "pdfs" et écrire
[PDF]({{ "/pdfs/[nom du document].pdf" | absolute_url }})

* Ajouter une adresse URL vers un post du blog : (le manque d'espace entre les crochets et les parenthèses est important)
Ecrire : [Je suis un lien URL]({{ site.url }}{% post_url [sous-dossier/AAAA-MM-DD-title] %}) 
(ne modifier que les parties entre crochets : 'sous-dossier' est le sous-dossier du dossier '_posts' qui contient le post. Ne pas marquer l'extension ".md")

* Ajouter une adresse URL : (le manque d'espace entre les crochets et les parenthèses est important)
Ecrire : [Je suis un lien URL](http://www.reflechir.com)

* Ajouter un passage en LaTeX : 
La syntaxe est un peu différente de LaTeX, voir ici : http://www.gastonsanchez.com/visually-enforced/opinion/2014/02/16/Mathjax-with-jekyll/
