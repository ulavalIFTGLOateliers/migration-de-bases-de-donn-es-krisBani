-- Retour en arrière : Annuler les modifications apportées lors de la migration

-- Supprimer les colonnes nouvellement ajoutées
ALTER TABLE musician DROP COLUMN role;
ALTER TABLE musician DROP COLUMN bandName;

-- Revenir aux noms de colonnes d'origine
ALTER TABLE musician RENAME COLUMN musicianName TO singerName;

-- Revenir au nom de table d'origine
ALTER TABLE musician RENAME TO singer;

-- Supprimer la table Band
DROP TABLE IF EXISTS Band;
