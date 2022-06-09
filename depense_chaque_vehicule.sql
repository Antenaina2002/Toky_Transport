CREATE DATABASE depense_chaque_vehicule;

CREATE TABLE depense(
    id_depense serial primary key, 
    essence float, 
    maintenance int
);

CREATE TABLE vehicule(
    id_vehicule serial primary key,
    matricule varchar(8),
    nb_place int not null,
    status boolean
);

--INSERT
/*insert into depense (essence,maintenance)  values (5.05, 10),(20, 2),
(15.5, 5),(14.05, 6),(5, 1),(10, 9),(10, 8),(20.04, 3),(4, 7),(6, 4);*/

/*insert into vehicule (matricule,nb_place,status) values ('5674 WWT', 10,'true'),
('7513 TBA', 16,'true'),('9819 TBU', 10,'true'),('5512 TBT', 16,'true'),
('4622 TBD', 10,'true'),('7986 WWT', 16,'true'),('2024 TBF', 10,'true'),
('3556 TBD', 16,'true'),('7659 TBA', 10,'false'),('6615 TBU', 16,'false');*/

--SELECT
/*SELECT matricule, essence, maintenance from depense dep INNER JOIN vehicule v ON v.id_vehicule=dep.id_depense;*/
