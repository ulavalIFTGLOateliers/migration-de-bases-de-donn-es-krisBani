-- Renommer la table
ALTER TABLE singer RENAME TO musician;

-- Renommer la colonne
ALTER TABLE musician RENAME COLUMN singerName TO musicianName;

--Ajouter de nouvelles colonnes
ALTER TABLE musician ADD COLUMN role varchar(50);
ALTER TABLE musician ADD COLUMN bandName varchar(50);

-- Insérer des valeurs dans les nouvelles colonnes
UPDATE musician SET role = 'vocals', bandName = 'Crazy Duo' where musicianName = 'Alina' and age ='32';
UPDATE musician SET role = 'guitar', bandName = 'Mysterio' where musicianName = 'Mysterio' and age ='23';
UPDATE musician SET role = 'percussion', bandName = 'Crazy Duo' where musicianName = 'Rainbow' and age = '47';
UPDATE musician SET role = 'piano', bandName = 'Luna' where musicianName = 'Luna' and age = '31';


-- creation de la table Band
CREATE TABLE   IF NOT EXISTS Band (bandName varchar(50),
    creation YEAR,genre varchar(50) ,PRIMARY KEY(bandName));

--Insérer les valeurs dans la table band
INSERT INTO band VALUES('Crazy Duo', '2015', 'rock'),
('Luna', '2009', 'classical'), ('Mysterio', '2019', 'pop');