# flutter_application_projet
# Développement d’une application multiplateforme avec Flutter
# Nom et prénom : Bouraoui Akrem – Kahil Amine – Nemous Abdelatif.
# Numéro d’étudiant : 300150527 – 300151292 – 300150417.
# Date : 05-12-2025.
# Cours : Développement d’applications.

-------------------------

# Rapport Final – Ultras Green Army Shop (Développement d’une Application Mobile avec Flutter)

# I.	Introduction Générale :

Dans le cadre de notre cours en Développement d’applications, nous avons suivi un processus complet allant du wireframe, au prototype Figma, jusqu’au développement final en Flutter.
Nous avons choisi de réaliser le projet « Ultras Green Army Shop » car il avait obtenu une excellente évaluation lors de la phase de prototypage, en plus d’être une idée motivante et cohérente avec les attentes du cours.
Ce projet nous a permis d'approfondir nos compétences en Flutter, en reproduisant une application e-commerce moderne et fonctionnelle.
Ce rapport présente l’ensemble des étapes de notre démarche, depuis la conception initiale jusqu’à la version finale de l’application.

----------------------------

## II.	Introduction au Wireframe :

Nous avons commencé notre travail par la création d’un wireframe papier, une étape essentielle permettant de structurer la logique de l’application avant d’entrer dans l’aspect visuel.
Le wireframe nous a permis de définir la disposition des éléments, la hiérarchie des écrans et le parcours utilisateur, tout en nous offrant la possibilité de corriger la structure avant de passer à la phase suivante.


<img width="438" height="364" alt="image" src="https://github.com/user-attachments/assets/37980e70-a5a2-442a-8ebf-ef229901372f" />


<img width="428" height="356" alt="image" src="https://github.com/user-attachments/assets/d45958dc-d90a-47fe-b60a-45147d0a971e" />


<img width="478" height="397" alt="image" src="https://github.com/user-attachments/assets/fac53df2-e494-4cca-9bfb-acfe846c9ad4" />


--------------------------------

# III.	Introduction au Prototype Figma :

À partir de notre wireframe, nous avons réalisé un prototype interactif sur Figma qui nous a permis de visualiser l’apparence finale de l’application.
Nous avons intégré les couleurs du CSC, les typographies, les images ainsi que les interactions entre les pages pour simuler l’expérience utilisateur.
Ce prototype a servi de référence principale lors de la phase de développement Flutter afin d’assurer une cohérence graphique et fonctionnelle tout au long du projet.

<img width="1004" height="544" alt="image" src="https://github.com/user-attachments/assets/0127b783-c0df-4615-81cc-190e8c1be855" />

---------------------------------

# IV.	Objectif du Projet :

L’objectif du projet est de proposer une application mobile simple, intuitive et moderne permettant aux supporters du CSC de consulter et d’acheter facilement des produits dérivés.
Nous avons souhaité offrir :
-	un catalogue de produits,
-	un affichage détaillé des articles,
-	un panier interactif,
-	un système de paiement,
-	et une confirmation de commande fluide.
En parallèle, le projet avait pour but de nous permettre d’appliquer concrètement nos connaissances en conception UX/UI et en développement Flutter.

------------------------

# V.	Méthodologie de Travail :

Pour mener à bien notre projet, nous avons adopté une méthodologie structurée en plusieurs étapes :

1.	 Wireframe :
Définition de la structure générale et du parcours utilisateur.
2.	Prototype Figma :
Transformation du wireframe en maquette interactive complète.
3.	Développement Flutter :
Implémentation des écrans, intégration des assets et reproduction fidèle du prototype.
4.	Travail d’équipe :
Répartition des tâches entre les membres du groupe selon les compétences de chacun.

---------------------------------

# VI.	Rôle de Flutter dans la Réalisation du Projet :

Flutter a été un élément central dans la réussite de notre application.
Grâce à ce framework multiplateforme développé par Google, nous avons pu créer une application moderne et performante en utilisant un seul code source.
Dans notre projet, Flutter nous a permis :
- Un développement multiplateforme efficace :
Nous avons pu développer pour Android (et potentiellement iOS) sans dupliquer le code.

- Des interfaces fidèles au prototype Figma :
Flutter offre un contrôle précis sur les couleurs, polices, icônes et animations.
Nous avons pu reproduire les maquettes Figma presque à l'identique.

- Une organisation claire grâce aux widgets :
L’application est construite à partir de widgets (StatelessWidget, StatefulWidget), facilitant la maintenance et la compréhension du code.

- Un développement accéléré via Hot Reload :
Nous avons pu visualiser immédiatement les modifications, ce qui a augmenté notre productivité.


- Une gestion simple des données internes :
Grâce au modèle product.dart, nous avons pu stocker et manipuler les informations des produits sans utiliser de base de données.

- Une navigation fluide :
Grâce au système Navigator. Push(), la transition entre :
Splash → Login → Home → Détails → Achat → Paiement → Confirmation
a été simple à implémenter et intuitive pour l’utilisateur.
Flutter nous a donc offert un environnement complet et puissant pour passer du prototype à une application finale pleinement fonctionnelle.

---------------------------

# VII.	Interfaces Développées avec Flutter :

Les écrans réalisés dans l’application sont :

# 1.	Splash Screen:

<img width="989" height="559" alt="image" src="https://github.com/user-attachments/assets/f9caa3c9-5f0c-486a-95cc-03c6ed864a32" />


La page SplashScreen constitue l’écran d’introduction de notre application. 
Son rôle est de présenter immédiatement l’identité visuelle des Ultras Green Army avant que l’utilisateur n’accède au contenu principal.
Dans cette classe, qui étend StatelessWidget, nous avons opté pour une interface simple, centrée et esthétique.
L’écran utilise un fond vert foncé (couleur 0xFF263124), reflétant l’identité du club CSC, au centre de la page, nous affichons deux éléments principaux :
Le logo officiel de l’application, chargé via Image.asset.
Le nom de l’application, stylisé avec la police personnalisée IrishGrover, afin de renforcer la cohérence visuelle du thème.
Le logo est encapsulé dans un GestureDetector, ce qui permet à l’utilisateur de toucher l’image pour passer à la page suivante (HomePage). 
Cette interaction remplace le traditionnel bouton “Start” et rend l’expérience plus fluide et intuitive. La navigation est gérée avec Navigator.push, permettant de charger la page d’accueil sans transition complexe.
L’organisation des éléments repose sur un Column centré, offrant un affichage clair et équilibré sur tous les appareils, grâce à cette structure simple, la page Splash met efficacement en valeur l’identité graphique de l’application tout en offrant un premier contact soigné et immersif à l’utilisateur.

---------------------------------


# 2.	Homepage:

<img width="1004" height="567" alt="image" src="https://github.com/user-attachments/assets/a821ab8d-4420-456b-87b2-eebaf6b61d37" />


La Home Page constitue l’interface de connexion de notre application et a été développée à l’aide d’un widget Scaffold offrant une structure claire et organisée, la partie supérieure de la page est occupée par une grande image importée via Image.asset, encadrée par un ClipRRect permettant d’obtenir des coins inférieurs arrondis, ce qui renforce l’aspect moderne de l’interface. 
Sous cette image, nous affichons les textes WELCOME et One Spirit, One Voice, stylisés avec la police personnalisée IrishGrover, afin de respecter l’identité visuelle du projet.
Les champs de saisie du nom d’utilisateur et du mot de passe sont générés grâce à une fonction réutilisable (buildTextField), ce qui optimise la lisibilité du code et facilite la maintenance, chaque champ est contenu dans un Container arrondi imitant l’apparence d’un formulaire professionnel.
L’action de connexion est gérée par un GestureDetector : lorsqu’un utilisateur appuie sur “Sign In”, l’application utilise Navigator.push pour rediriger vers la DashboardPage, simulant ainsi un système d’authentification.
Enfin, des liens informatifs comme Sign up et Forget Password sont affichés en bas de la page avec la police InstrumentSans, complétant l’apparence générale. Grâce à Flutter, nous avons pu créer une page d’accueil esthétique, fonctionnelle et cohérente avec le reste de l’application.

-------------------------------

# 3.	Dashboard Page:

<img width="1004" height="568" alt="image" src="https://github.com/user-attachments/assets/25c07db5-027e-49c9-85d0-dc6303071441" />


La Dashboard Page constitue l’écran principal de l’application et offre à l’utilisateur une vue complète sur les produits disponibles. 
Cette page est implémentée à l’aide d’un StatefulWidget, ce qui nous permet de gérer dynamiquement la liste des articles ainsi que la fonctionnalité de recherche. 
Dès l’initialisation, l’application charge une liste d’objets Product, contenant pour chacun une image, un titre, un prix et une description, la barre de recherche, placée en haut de la page, filtre les produits en temps réel grâce à la méthode setState, rendant l’expérience plus interactive.
Visuellement, l’interface reprend le thème graphique du projet : titres stylisés avec la police IrishGrover, icône de profil, et un conteneur textuel arrondi pour la recherche. Les produits sont affichés sous forme de cartes (productCard), chacune contenant l’image de l’article, sa description et son prix. Le bouton “Voir” permet d’ouvrir la page de détails d’un produit via Navigator.push, assurant une navigation fluide. Enfin, un bouton “PURCHASE NOW” redirige vers la page du panier, complétant ainsi la logique d’achat.
Grâce à Flutter, nous avons pu structurer cet écran de manière claire, responsive et entièrement dynamique.

---------------------------------

# 4.	Product Details Page:

<img width="1004" height="569" alt="image" src="https://github.com/user-attachments/assets/a36afaf8-251b-495b-b04a-ba07a943c937" />


La Product Details Page permet à l’utilisateur de consulter toutes les informations relatives à un produit sélectionné depuis le tableau de bord. 
Cette page reçoit un objet Product en paramètre, ce qui rend son contenu entièrement dynamique et réutilisable pour n’importe quel article. 
L’interface commence par un AppBar transparent incluant des icônes de retour, de favoris et de partage, renforçant ainsi l’ergonomie de la navigation.

La section supérieure présente le produit dans un conteneur stylisé avec un dégradé vertical et une ombre portée, offrant un effet visuel moderne et mettant l’image en valeur, la page affiche ensuite le titre du produit, une notation graphique composée d’étoiles, le nombre de commentaires, ainsi qu’un badge indiquant le prix, une description détaillée est fournie, suivie d’informations organisées sous forme de chips (“Category”, “Material”, “Sizes”, “Stock”), ce qui facilite la lecture et la structure du contenu.
D’autres sections expliquent les consignes d’entretien ainsi qu’un encadré dédié aux informations de livraison., l’ensemble du contenu est placé dans un SingleChildScrollView pour assurer un défilement fluide sur tout type d’écran, enfin, la barre inférieure affiche le prix total et un bouton BUY NOW, permettant de passer directement à la page d’achat via Navigator.push.
Grâce à l’utilisation de widgets personnalisés et à une mise en page soignée, cette page offre une expérience riche et immersive tout en restant parfaitement intégrée au thème visuel de l’application.

-----------------------------


# 5.	Purchase Page (My Order):

<img width="1005" height="567" alt="image" src="https://github.com/user-attachments/assets/4ad4b364-842d-490e-9e23-36dbcc95a7dd" />


La Purchase Page, également nommée My Order, joue le rôle de panier interactif permettant à l’utilisateur de gérer les articles qu’il souhaite acheter. 
Cette page repose sur un StatefulWidget, indispensable pour mettre à jour en temps réel les quantités sélectionnées et recalculer automatiquement le prix total. 
Les produits affichés sont stockés dans une liste interne contenant leur titre, prix, image et quantité, ce qui facilite le traitement et la manipulation de chaque article.
L’utilisateur peut augmenter ou diminuer la quantité d’un produit grâce aux boutons “+” et “–”, associés à des fonctions (_increaseQty et _decreaseQty) qui modifient l’état avec setState. L’ensemble des produits est affiché via un ListView.builder, garantissant une interface fluide et adaptable même avec un grand nombre d’articles, chaque carte produit (image, titre, prix et contrôle de quantité) utilise une interface sombre cohérente avec le thème visuel général de l’application.
Au bas de la page, la section récapitulative affiche les frais de livraison (fixés à 0$) ainsi que le prix total calculé dynamiquement à partir des quantités choisies. 
Le bouton Checkout permet de passer à l’étape suivante : la page de paiement, lors de cette action, seuls les produits dont la quantité est supérieure à zéro sont transmis grâce à un filtre, ce qui améliore la logique et la pertinence des données.
Grâce à Flutter et à une gestion rigoureuse de l’état, cette page offre une expérience d’achat intuitive, réactive et parfaitement intégrée au fonctionnement général de l'application.

----------------------------

# 6.	Payment Page :

<img width="1000" height="567" alt="image" src="https://github.com/user-attachments/assets/296c474b-65e9-4c74-91a1-53fa38c71ee9" />

 
La Payment Page représente une étape essentielle du processus d’achat, puisqu’elle permet à l’utilisateur de vérifier les articles sélectionnés, d’ajouter ses informations de livraison et de confirmer sa commande avant de choisir un mode de paiement. 
Cette page repose sur un StatefulWidget, ce qui permet de gérer dynamiquement les données saisies, notamment l’adresse et le numéro de téléphone.
La liste des produits choisis est transmise depuis la page précédente (Purchase Page) et affichée sous forme de cartes contenant l’image, le nom, le prix et la quantité de chaque article. L’interface conserve l’esthétique générale de l’application, avec un design sombre et des composants arrondis pour renforcer l’identité visuelle du projet.
Deux champs de texte permettent à l’utilisateur de renseigner son adresse complète ainsi que son numéro de téléphone ne validation simple empêche la progression tant que ces informations ne sont pas fournies, garantissant ainsi un flux d’achat cohérent, au bas de la page, le total final de la commande est récapitulé et mis en évidence.
Enfin, le bouton “CONFIRM ORDER” redirige l’utilisateur vers la Payment Options Page. 
Cette transition s’effectue en transmettant les informations nécessaires, notamment le montant total et l’adresse de livraison. 
Cette page illustre parfaitement comment Flutter permet de créer des interfaces interactives, reliées entre elles et capables de gérer efficacement les données d’utilisateur dans un parcours d’achat complet.

-------------------------------------

# 7.	Payment Options Page :

<img width="1004" height="567" alt="image" src="https://github.com/user-attachments/assets/22fb6afb-0034-4bec-9730-84606a4eea04" />


La Payment Options Page constitue l’étape finale avant la validation de la commande. 
Elle permet à l’utilisateur de sélectionner une méthode de paiement parmi plusieurs options proposées, telles que Visa, MasterCard ou le paiement en espèces. 
Grâce à un StatefulWidget, nous gérons l’état interne de la page en enregistrant l’option choisie par l’utilisateur à l’aide d’un simple index, ce qui illustre bien l’utilisation de la gestion d’état dans Flutter.
Chaque option de paiement est représentée sous forme de carte stylisée, incluant le logo correspondant et un indicateur circulaire affichant la sélection. 
L’utilisateur peut ainsi effectuer un choix clair et intuitif, la page affiche également l’adresse de livraison récupérée depuis la page précédente, ce qui permet d’assurer la continuité logique du processus d’achat.
Au bas de l’interface, le total à payer est récapitulé et un bouton “PLACE ORDER” permet de finaliser la commande, une validation empêche l’utilisateur de continuer tant qu’aucune méthode de paiement n’a été sélectionnée, garantissant un flux sécurisé et cohérent. 
En validant, l’application redirige l’utilisateur vers la Order Success Page, complétant ainsi le parcours d’achat.
Cette page démontre comment Flutter permet de créer des interactions fluides, des transitions dynamiques entre les écrans et une gestion efficace des données transportées dans tout le processus de commande.

---------------------------------

# 8.	Order Success Page :

<img width="1004" height="568" alt="image" src="https://github.com/user-attachments/assets/74e69dd3-6935-44b0-84f6-c265d2787fbb" />


La Order Success Page représente la dernière étape du parcours d’achat dans notre application. 
Elle sert d’écran de confirmation, informant clairement l’utilisateur que sa commande a été validée avec succès. 
Grâce à une interface minimaliste et centrée, cette page transmet un retour positif immédiat à travers une grande icône de validation en vert, accompagnée du message "ORDER CONFIRMED!".
Nous avons choisi une mise en page simple et épurée afin d’éviter toute distraction : l’utilisateur se trouve face à un message clair, lisible, et cohérent avec le thème visuel de l’application. L’utilisation du widget Center et d’une disposition verticale (Column) permet de recentrer le contenu et de renforcer l’impact de la confirmation.
Un bouton de retour intégré dans l’AppBar permet également à l’utilisateur de revenir facilement à l’écran précédent, assurant une navigation fluide et intuitive.
Cette page clôt efficacement le processus d’achat, tout en illustrant la capacité de Flutter à produire des interfaces soignées, réactives et parfaitement adaptées aux besoins de l’utilisateur.

-------------------------------

# VIII.	Fonctionnalités Réalisées :
Notre application offre les fonctionnalités suivantes :
-	Navigation complète entre les écrans.
-	Affichage dynamique des produits via un modèle interne.
-	Consultations détaillées des articles.
-	Gestion du panier (quantités + total automatique).
-	Choix du mode de paiement.
-	Page de paiement avec formulaire.
-	Message final de confirmation.
-	Gestion des données en mémoire.
-	Intégration d’assets (images + polices personnalisées).

-------------------------------

# IX.	Gestion des Données :

-	Les produits sont stockés dans un modèle en mémoire locale (product.dart).
-	Les assets (images et polices IrishGrover / InstrumentSans) sont intégrés via pubspec.yaml.

-------------------------------

# X.	Répartition des Tâches :

Abdelatif Nemous :
-	Splash Screen
-	Home Page


Akrem Bouraoui: 
-	Dashboard
-	Product Model (product. dart)
-	Purchase Page
-	Payment Page
-	Product Details Page

Amine Kahil:
-	Payment Options Page
-	Order Success Page

-------------------------------

# XI.	Lien GitHub du Projet:
https://github.com/AkremBouraoui/flutter_application_projet.git

-----------------------------

# XII.	Conclusion :
À travers ce projet, nous avons vécu une expérience d’apprentissage riche et complète, nous permettant de mettre en pratique les notions essentielles du développement mobile avec Flutter. 
Depuis la création du wireframe, en passant par le prototypage sur Figma, jusqu’à la réalisation finale de l’application, nous avons pu constater l’importance d’une bonne organisation, d’une collaboration efficace et d’une vision claire des fonctionnalités à implémenter.
La construction des différentes pages (Splash Screen, Home Page, Dashboard, Product Details, Purchase, Payment et Order Success) nous a permis de maîtriser des concepts clés tels que la navigation entre écrans, la gestion des états, la structuration des widgets, la personnalisation de l’interface utilisateur ainsi que la manipulation de données dynamiques. Cette expérience nous a également aidés à mieux comprendre la puissance de Flutter, notamment sa rapidité, sa flexibilité et sa capacité à produire des interfaces modernes et fluides.
Bien que satisfait du résultat final, nous reconnaissons qu’il existe plusieurs pistes d’amélioration pour enrichir davantage l’application. 
Parmi celles-ci, nous pouvons envisager :
-	L’ajout d’une base de données pour stocker les produits, les commandes et les comptes utilisateurs.

-	L’intégration d’une authentification réelle (Google, courriel, etc.) pour rendre l’application plus fonctionnelle.

-	L’amélioration de la gestion du panier, en permettant une sauvegarde persistante même après la fermeture de l’application.

-	La mise en place d’un vrai système de paiement, simulé ou connecté à une API sécurisée.

-	Une optimisation de l’interface, notamment en la rendant responsive pour plusieurs tailles d’écrans.
En conclusion, ce projet nous a permis de développer nos compétences techniques, d’améliorer notre capacité à travailler en équipe et de mieux comprendre le cycle complet de développement d’une application mobile moderne. Nous avons non seulement acquis de nouvelles connaissances, mais également renforcé notre confiance dans l’utilisation de Flutter pour des projets futurs.
« FIN »
