DROP ROLE visiteur_VGDB;
DROP ROLE vendeur_VGDB;
DROP ROLE catalogueur_VGDB;
DROP ROLE admin_VGDB;



CREATE ROLE visiteur_VGDB;

GRANT SELECT ON JEU TO visiteur_VGDB;
GRANT SELECT ON EDITEUR TO visiteur_VGDB;
GRANT EXECUTE ON memeCategorie TO visiteur_VGDB;

CREATE ROLE vendeur_VGDB;

GRANT visiteur_VGDB TO vendeur_VGDB;

GRANT SELECT ON INSTANCE_JEU TO vendeur_VGDB;
GRANT SELECT ON ACHAT TO vendeur_VGDB;
GRANT SELECT ON PLATEFORME TO vendeur_VGDB;
GRANT SELECT ON EDITEUR TO vendeur_VGDB;

GRANT INSERT ON ACHAT TO vendeur_VGDB;
GRANT DELETE ON ACHAT TO vendeur_VGDB;
GRANT UPDATE ON ACHAT TO vendeur_VGDB;

CREATE ROLE catalogueur_VGDB;

GRANT INSERT ON JEU TO catalogueur_VGDB;
GRANT INSERT ON INSTANCE_JEU TO catalogueur_VGDB;
GRANT INSERT ON PLATEFORME TO catalogueur_VGDB;
GRANT INSERT ON EDITEUR TO catalogueur_VGDB;
GRANT INSERT ON PLATEFORME TO catalogueur_VGDB;

GRANT DELETE ON JEU TO catalogueur_VGDB;
GRANT DELETE ON INSTANCE_JEU TO catalogueur_VGDB;
GRANT DELETE ON PLATEFORME TO catalogueur_VGDB;
GRANT DELETE ON EDITEUR TO catalogueur_VGDB;
GRANT DELETE ON PLATEFORME TO catalogueur_VGDB;

GRANT UPDATE ON JEU TO catalogueur_VGDB;
GRANT UPDATE ON INSTANCE_JEU TO catalogueur_VGDB;
GRANT UPDATE ON PLATEFORME TO catalogueur_VGDB;
GRANT UPDATE ON EDITEUR TO catalogueur_VGDB;
GRANT UPDATE ON PLATEFORME TO catalogueur_VGDB;

CREATE ROLE admin_VGDB;

GRANT ANY PRIVILEGE TO admin_VGDB WITH ADMIN OPTION;

GRANT admin_VGDB TO L3_38;