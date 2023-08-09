INSERT INTO Roles(role) VALUES ('Administrateur');
INSERT INTO Roles(role) VALUES ('Employé');

INSERT INTO Utilisateurs(nom, prenom, mail, mdp, Id_Roles) VALUES ('Parrot', 'Vincent', "garageparot@mail.fr", "012345678901234567890123456789012345678901234567890123456789", 1);





INSERT INTO Services(Id_Utilisateurs, titre, description) VALUES (1,'Réparation Automobile', "Chez Garage V. Parrot, nous sommes fiers de notre expertise en matière de réparation automobile. Nous avons une équipe de professionnels expérimentés qui sont formés pour travailler sur tous les types de voitures, des plus anciennes aux plus récentes. Nous sommes équipés des dernières technologies et des outils les plus performants pour garantir un travail de qualité et une réparation rapide et efficace.

Nous comprenons que la réparation d'une voiture peut être stressante et coûteuse. C'est pourquoi nous offrons à nos clients un service personnalisé et transparent, avec des devis clairs et des explications détaillées sur les travaux à effectuer. Nous sommes également à l'écoute de nos clients et nous nous engageons à répondre à toutes leurs questions et à leurs préoccupations.

Notre équipe de professionnels est spécialisée dans la réparation de la mécanique et de la carrosserie des voitures. Nous sommes capables de diagnostiquer rapidement les problèmes et de proposer des solutions efficaces. Nous sommes également en mesure de réparer les dommages causés par les accidents, les intempéries ou l'usure normale.

Chez Garage V. Parrot, nous sommes convaincus que chaque voiture mérite les meilleurs soins, et c'est pourquoi nous nous engageons à fournir un service de qualité à chaque client. Nous sommes fiers de notre réputation de garage de confiance et nous sommes déterminés à maintenir cette réputation en offrant un service de qualité supérieure à chaque client.");

INSERT INTO Services(Id_Utilisateurs, titre, description) VALUES (1,"Entretien automobile","L'entretien régulier de votre voiture est essentiel pour garantir sa performance et sa sécurité. Chez Garage V. Parrot, nous offrons un service d'entretien automobile complet pour tous les types de voitures. Nous sommes équipés des dernières technologies et des outils les plus performants pour garantir un travail de qualité.

Notre équipe de professionnels est formée pour effectuer tous les types d'entretien automobile, des vidanges d'huile aux changements de filtres en passant par le remplacement des pneus, la vérification des freins et des suspensions, et bien plus encore. Nous sommes en mesure de diagnostiquer rapidement les problèmes et de proposer des solutions efficaces pour garantir la performance et la sécurité de votre voiture.

Nous comprenons que l'entretien d'une voiture peut être coûteux et fastidieux. C'est pourquoi nous offrons à nos clients un service personnalisé et transparent, avec des devis clairs et des explications détaillées sur les travaux à effectuer. Nous sommes également à l'écoute de nos clients et nous nous engageons à répondre à toutes leurs questions et à leurs préoccupations.

Chez Garage V. Parrot, nous sommes passionnés par les voitures et nous mettons tout en œuvre pour offrir à nos clients un service de qualité, personnalisé et de confiance. Nous sommes convaincus que chaque voiture mérite les meilleurs soins, et c'est pourquoi nous nous engageons à fournir un service de qualité à chaque client. ");
INSERT INTO Services(Id_Utilisateurs, titre, description) VALUES (1, "Carrosserie", "La carrosserie de votre voiture est l'un des éléments les plus visibles et les plus importants de votre véhicule. Chez Garage V. Parrot, nous sommes spécialisés dans la réparation de la carrosserie des voitures. Nous offrons un service de qualité supérieure pour tous les types de réparations de carrosserie, des petites réparations aux réparations majeures.

Notre équipe de professionnels est formée pour travailler sur tous les types de voitures, des plus anciennes aux plus récentes. Nous sommes équipés des dernières technologies et des outils les plus performants pour garantir un travail de qualité et une réparation rapide et efficace. Nous offrons également des services de peinture pour donner à votre voiture un aspect neuf et frais.

Nous comprenons que la réparation de la carrosserie de votre voiture peut être stressante et coûteuse. C'est pourquoi nous offrons à nos clients un service personnalisé et transparent, avec des devis clairs et des explications détaillées sur les travaux à effectuer. Nous sommes également à l'écoute de nos clients et nous nous engageons à répondre à toutes leurs questions et à leurs préoccupations.

Chez Garage V. Parrot, nous sommes fiers de notre réputation de garage de confiance. Nous considérons notre atelier comme un véritable lieu de confiance pour nos clients, et nous sommes déterminés à maintenir cette réputation en offrant un service de qualité supérieure à chaque client. ");
INSERT INTO Services(Id_Utilisateurs, titre, description) VALUES (1, "Installation de boitier bio éthanol", "Le boitier bio éthanol est un équipement qui permet de rouler avec un carburant plus écologique. Chez Garage V. Parrot, nous sommes spécialisés dans l'installation de boitier bio éthanol pour tous les types de voitures. Nous sommes équipés des dernières technologies et des outils les plus performants pour garantir un travail de qualité.

Notre équipe de professionnels est formée pour installer tous les types de boitiers bio éthanol, des plus simples aux plus complexes. Nous offrons également des conseils personnalisés pour aider nos clients à choisir le boitier bio éthanol qui convient le mieux à leur voiture. Nous sommes à l'écoute de nos clients et nous nous engageons à répondre à toutes leurs questions et à leurs préoccupations.

Chez Garage V. Parrot, nous sommes convaincus que chaque voiture mérite les meilleurs soins, et c'est pourquoi nous nous engageons à fournir un service de qualité à chaque client. Nous sommes fiers de notre réputation de garage de confiance et nous sommes déterminés à maintenir cette réputation en offrant un service de qualité supérieure à chaque client. ");

INSERT INTO Heures(ouverture, fermeture) VALUES ("8h","12h");
INSERT INTO Heures(ouverture, fermeture) VALUES ("14h","18h");
INSERT INTO Heures(ouverture, fermeture) VALUES ("9h","12h");
INSERT INTO Heures(ouverture, fermeture) VALUES ("15h","19h");
INSERT INTO Heures(ouverture, fermeture) VALUES ("fermé","fermé");

INSERT INTO Jours(jour) VALUES ("Lundi");
INSERT INTO Jours(jour) VALUES ("Mardi");
INSERT INTO Jours(jour) VALUES ("Mercredi");
INSERT INTO Jours(jour) VALUES ("Jeudi");
INSERT INTO Jours(jour) VALUES ("Vendredi");
INSERT INTO Jours(jour) VALUES ("Samedi");
INSERT INTO Jours(jour) VALUES ("Dimanche");