CREATE SEQUENCE uid_user_attrs_id_seq;

CREATE TABLE uid_user_attrs (
    id integer PRIMARY KEY NOT NULL DEFAULT nextval('uid_user_attrs_id_seq'),
    uid VARCHAR(64) NOT NULL,
    name VARCHAR(32) NOT NULL,
    value VARCHAR(128),
    type INTEGER DEFAULT 0 NOT NULL,
    flags INTEGER DEFAULT 0 NOT NULL,
    CONSTRAINT uid_user_attrs_userattrs_idx UNIQUE (uid, name, value)
);

ALTER SEQUENCE uid_user_attrs_id_seq OWNED BY uid_user_attrs.id;

INSERT INTO version (table_name, table_version) values ('uid_user_attrs','3');

