CREATE SEQUENCE uid_uri_id_seq;

CREATE TABLE uid_uri (
    id integer PRIMARY KEY NOT NULL DEFAULT nextval('uid_uri_id_seq'),
    uid VARCHAR(64) NOT NULL,
    did VARCHAR(64) NOT NULL,
    username VARCHAR(64) NOT NULL,
    flags INTEGER DEFAULT 0 NOT NULL,
    scheme VARCHAR(8) DEFAULT 'sip' NOT NULL
);

ALTER SEQUENCE uid_uri_id_seq OWNED BY uid_uri.id;

CREATE INDEX uid_uri_uri_idx1 ON uid_uri (username, did, scheme);
CREATE INDEX uid_uri_uri_uid ON uid_uri (uid);

INSERT INTO version (table_name, table_version) values ('uid_uri','3');

CREATE SEQUENCE uid_uri_attrs_id_seq;

CREATE TABLE uid_uri_attrs (
    id integer PRIMARY KEY NOT NULL DEFAULT nextval('uid_uri_attrs_id_seq'),
    username VARCHAR(64) NOT NULL,
    did VARCHAR(64) NOT NULL,
    name VARCHAR(32) NOT NULL,
    value VARCHAR(128),
    type INTEGER DEFAULT 0 NOT NULL,
    flags INTEGER DEFAULT 0 NOT NULL,
    scheme VARCHAR(8) DEFAULT 'sip' NOT NULL,
    CONSTRAINT uid_uri_attrs_uriattrs_idx UNIQUE (username, did, name, value, scheme)
);

ALTER SEQUENCE uid_uri_attrs_id_seq OWNED BY uid_uri_attrs.id;

INSERT INTO version (table_name, table_version) values ('uid_uri_attrs','2');

