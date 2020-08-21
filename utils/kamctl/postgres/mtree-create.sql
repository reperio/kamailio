CREATE SEQUENCE mtree_id_seq;

CREATE TABLE mtree (
    id integer PRIMARY KEY NOT NULL DEFAULT nextval('mtree_id_seq'),
    tprefix VARCHAR(32) DEFAULT '' NOT NULL,
    tvalue VARCHAR(128) DEFAULT '' NOT NULL,
    CONSTRAINT mtree_tprefix_idx UNIQUE (tprefix)
);

ALTER SEQUENCE mtree_id_seq OWNED BY mtree.id;

INSERT INTO version (table_name, table_version) values ('mtree','1');

CREATE SEQUENCE mtrees_id_seq;

CREATE TABLE mtrees (
    id integer PRIMARY KEY NOT NULL DEFAULT nextval('mtrees_id_seq'),
    tname VARCHAR(128) DEFAULT '' NOT NULL,
    tprefix VARCHAR(32) DEFAULT '' NOT NULL,
    tvalue VARCHAR(128) DEFAULT '' NOT NULL,
    CONSTRAINT mtrees_tname_tprefix_tvalue_idx UNIQUE (tname, tprefix, tvalue)
);

ALTER SEQUENCE mtrees_id_seq OWNED BY mtrees.id;

INSERT INTO version (table_name, table_version) values ('mtrees','2');

