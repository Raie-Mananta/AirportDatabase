SELECT prenom, nom FROM gestresa.client LEFT JOIN gestresa.Reservation ON gestresa.client.IDClient = gestresa.reservation.idclient  where IDVol = 3;

SELECT Nom FROM gestresa.Aeroport WHERE Codecompagn = 'JAL';

SELECT Nom FROM gestresa.Aeroport RIGHT JOIN gestresa.Vol ON gestresa.Aeroport.IDAero = gestresa.Vol.AeroportDepart;

SELECT Nom,Prenom FROM gestresa.Client LEFT JOIN gestresa.Reservation ON gestresa.client.IDClient = gestresa.reservation.idclient LEFT JOIN gestresa.Vol on gestresa.vol.IDVol = gestresa.reservation.idvol WHERE AeroportArrivee = 10;

SELECT Nom,Prenom FROM gestresa.Client LEFT JOIN gestresa.Reservation ON gestresa.client.IDClient = gestresa.reservation.idclient WHERE Prix_euros < 500;
