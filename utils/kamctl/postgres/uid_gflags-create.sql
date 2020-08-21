CREATE SEQUENCE uid_global_attrs_id_seq;

CREATE TABLE uid_global_attrs (
    id integer PRIMARY KEY NOT NULL DEFAULT nextval('uid_global_attrs_id_seq'),
    name VARCHAR(32) NOT NULL,
    type INTEGER DEFAULT 0 NOT NULL,
    value VARCHAR(128),
    flags INTEGER DEFAULT 0 NOT NULL,
    CONSTRAINT uid_global_attrs_global_attrs_idx UNIQUE (name, value)
);

ALTER SEQUENCE uid_global_attrs_id_seq OWNED BY uid_global_attrs.id;

INSERT INTO version (table_name, table_version) values ('uid_global_attrs','1');

