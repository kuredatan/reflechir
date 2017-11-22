---
title: Rédiger un article
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

Pour obtenir le lien avec "bitlink", il suffit d'écrire dans la boîte de dialogue Bitly le lien suivant : http://www.reflechir.ml/lu et approuvé/sciences humaines/2017/08/24/le-theatre-de-shaw/ pour l'article "Le théâtre de Shaw", et de manière générale : http://www.reflechir.ml/[sous-section]/[section]/AAAA/MM/DD/titre-avec-tirets/

## Petit guide des choses utiles        ##

Pour visualiser les éléments suivants, cliquer sur l'icône "Raw".

Pour une liste des choses possibles : 
https://github.com/adam-p/markdown-here/wiki/Markdown-Cheatsheet
ou
https://guides.github.com/pdfs/markdown-cheatsheet-online.pdf

J'écris ici seulement l'essentiel :

* Faire une liste : à la place de flèches, utiliser *, - ou +.

* Pas de possibilité pour souligner.

* Mettre en gras mot : **mot**

* Mettre en italique mot : *mot*

* Ajouter une image : mettre l'image dans le dossier "images" et écrire
<img src="/images/[nom de l'image].[extension]" style="float: center"/> 

* Faire un tableau : voir les liens précédents ou https://www.tablesgenerator.com/markdown_tables, https://help.github.com/articles/organizing-information-with-tables/

Exemple : 

| A| B|A ou B|
|---|---|----|
| 0| 0| 0    |
| 0| 1|   1  |
| 1| 0|    1 |
| 1| 1|    1 |

(mettre AU MOINS 3 tirets pour séparer titre des colonnes et contenu, sinon le layout hurle)

(ignorer : ![Légende]({{ "/images/[nom de l'image].[extension]" | absolute_url }}))

* Ajouter un document PDF : mettre le document dans le dossier "pdfs" et écrire
[PDF]({{ "/pdfs/[nom du document].pdf" | absolute_url }})

* Ajouter une adresse URL vers un post du blog : (le manque d'espace entre les crochets et les parenthèses est important)
Ecrire : [Je suis un lien URL]({{ siteurl }}{% post_url [sous-dossier/AAAA-MM-DD-title] %}) 
(ne modifier que les parties entre crochets : 'sous-dossier' est le sous-dossier du dossier '_posts' qui contient le post. Ne pas marquer l'extension ".md")

* Ajouter une adresse URL : (le manque d'espace entre les crochets et les parenthèses est important)
Ecrire : [Je suis un lien URL](http://www.reflechir.com)

* Ajouter un passage en LaTeX : 
La syntaxe est un peu différente de LaTeX, voir ici : http://www.gastonsanchez.com/visually-enforced/opinion/2014/02/16/Mathjax-with-jekyll/
