CREATE SEQUENCE version_id_seq;

CREATE TABLE version (
    id integer PRIMARY KEY NOT NULL DEFAULT nextval('version_id_seq'),
    table_name VARCHAR(32) NOT NULL,
    table_version INTEGER DEFAULT 0 NOT NULL,
    CONSTRAINT version_table_name_idx UNIQUE (table_name)
);

ALTER SEQUENCE version_id_seq OWNED BY version.id;

INSERT INTO version (table_name, table_version) values ('version','1');

