CREATE SEQUENCE pl_pipes_id_seq;

CREATE TABLE pl_pipes (
    id integer PRIMARY KEY NOT NULL DEFAULT nextval('pl_pipes_id_seq'),,
    pipeid VARCHAR(64) DEFAULT '' NOT NULL,
    algorithm VARCHAR(32) DEFAULT '' NOT NULL,
    plimit INTEGER DEFAULT 0 NOT NULL
);

ALTER SEQUENCE pl_pipes_id_seq OWNED BY pl_pipes.id;

INSERT INTO version (table_name, table_version) values ('pl_pipes','1');

