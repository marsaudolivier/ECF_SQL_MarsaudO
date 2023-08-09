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