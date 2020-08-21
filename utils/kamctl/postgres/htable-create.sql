CREATE SEQUENCE htable_id_seq;

CREATE TABLE htable (
    id integer PRIMARY KEY NOT NULL DEFAULT nextval('htable_id_seq'),
    key_name VARCHAR(64) DEFAULT '' NOT NULL,
    key_type INTEGER DEFAULT 0 NOT NULL,
    value_type INTEGER DEFAULT 0 NOT NULL,
    key_value VARCHAR(128) DEFAULT '' NOT NULL,
    expires INTEGER DEFAULT 0 NOT NULL
);

ALTER SEQUENCE htable_id_seq OWNED BY htable.id;

INSERT INTO version (table_name, table_version) values ('htable','2');

