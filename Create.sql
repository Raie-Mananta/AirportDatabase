create schema if not exists gestResa;

create table gestResa.Client(IDClient int, 
prenom varchar(50), 
nom varchar(50), 
dateNaissance date, 
nationalite varchar(20), 
adPostal varchar(100), 
numTel varchar(50), 
adCourriel varchar(50) unique, 
numPass char(9), 

constraint pk_client PRIMARY KEY(IDClient));


create table gestResa.Compagnie(
Codecompagn char(3),
Nom varchar(50),
Pays varchar(50),

constraint pk_Compagnie PRIMARY KEY(Codecompagn));


create table gestResa.Aeroport (IDaero int,
Nom varchar(50),
Ville varchar(50),
Pays varchar(50),
Codecompagn char(3),

constraint pk_Aeroport PRIMARY KEY (IDaero),
constraint fk_Aeroport FOREIGN KEY(Codecompagn) REFERENCES gestresa.compagnie(Codecompagn));


create table gestResa.Vol(IdVol int,
heure_depart time(0),
date_depart date,
heure_arrivee time(0),
date_arrivee date,
AeroportDepart int,
AeroportArrivee int,
Codecompagn char(3),
Capacité int,

constraint fk_Vol PRIMARY KEY(IdVol),
constraint pk_Vol_1 FOREIGN KEY(AeroportDepart) REFERENCES gestresa.Aeroport(IDaero),
constraint pk_Vol_2 FOREIGN KEY(AeroportArrivee) REFERENCES gestresa.Aeroport(IDaero),
constraint pk_Vol_3 FOREIGN KEY(Codecompagn) REFERENCES gestresa.compagnie(Codecompagn));


create table gestResa.Reservation (IDResa int,
VilleResa varchar(50),
DateResa date,
Classe varchar(50),
Prix_euros int,
Statut varchar(15),
IDClient int,
IDVol int,

constraint pk_Reservation PRIMARY KEY (IDResa),
constraint fk_Reservation_1 FOREIGN KEY(IDClient) REFERENCES gestresa.Client(IDClient),
constraint fk_Reservation_2 FOREIGN KEY(IDVol) REFERENCES gestresa.Vol(IDVol));
