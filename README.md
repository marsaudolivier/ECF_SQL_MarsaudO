Dans le contexte du projet Garage V. Parrot nous stockeront sur ce repo le SQL de ma base de donnée.

Pour la conception j'ai utilisé le logiciel Free "Looping" affin de faire la méthodologie "MERISE".

Mon MCD est définie en 14 tables principales. 

Roles -> Id + role
Utilisateurs -> Id + nom + prenom + mail + Mot de passe
    --->Services -> Id + nom + description
    --->Formulaires -> id + nom + prenom + mail + téléphone + message
    --->Avis -> Id + nom + prenom + commentaire + note
        --->Validations -> Id + validation
    --->Jours -> Id + nom
        ---> Heures -> Id + ouverture + fermeture
    --->Annonces -> Id + titre + date_publication
    ---> Voitures -> Id + kilométrage + année + prix + photo_principal
        ---> Photos -> Id + Photo_secondaire
        ---> Marques -> Id + nom
            ---> Modeles -> Id + nom
                ---> Energies -> Id + nom
                ---> Options -> Id + nom

J'ai ensuite resortie mon MLD et UML.

Création du fichier SQL comportant ensemble des tables.

Création du fichier SQL relatif à la création du compte de MR parrot.

Création de différente données fictive pour le site.


En ce qui concerne la BDD, pour déployé en local il sera important de crééer les tables avec le fichier "Parrot.sql" en premier.

Ensuite il faudra créér la table Roles et Utilisateurs avec account de MR parrot admin du site avec le fichiez (CréationCompteMrParrot.sql)

> Mdp : 012345678901234567890123456789012345678901234567890123456789 
>Mail de connection : garageparot@mail.fr

Enseuite il sera possible de rajouté des donnée fictive pour le reste des pages avec "donnée_fictive_Parrot.sql"