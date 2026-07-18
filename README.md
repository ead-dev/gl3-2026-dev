Ce projet est une initiation au developpement laravel.
La SGBD utilise ici est MYSQL
pour cloner choisir le repertoire cible puis saisir la commande suivante:
git clone https://github.com/ead-dev/gl3-2026-dev.git

Apres avoir clone saisir la commande suivante pour telecharger les modules manquants:
composer install

Faire une copie du fichier .env.example et le renommer .env

Sur la clef connection mettre mysql
puis les autres parametres de connexions y compris le nom de votre base de donnees

Importer le fichier db.sql dans votre bd.

Puis lancer le test 


Prerequis:
    - php 8.3^
    - composer 
    - MYSQL
    - git
    
