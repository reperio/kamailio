CREATE SEQUENCE uid_domain_id_seq;

CREATE TABLE uid_domain (
    id integer PRIMARY KEY NOT NULL DEFAULT nextval('uid_domain_id_seq'),
    did VARCHAR(64) NOT NULL,
    domain VARCHAR(64) NOT NULL,
    flags INTEGER DEFAULT 0 NOT NULL,
    CONSTRAINT uid_domain_domain_idx UNIQUE (domain)
);

ALTER SEQUENCE uid_domain_id_seq OWNED BY uid_domain.id;

CREATE INDEX uid_domain_did_idx ON uid_domain (did);

INSERT INTO version (table_name, table_version) values ('uid_domain','2');

CREATE SEQUENCE uid_domain_attrs_id_seq;

CREATE TABLE uid_domain_attrs (
    id integer PRIMARY KEY NOT NULL DEFAULT nextval('uid_domain_attrs_id_seq'),
    did VARCHAR(64),
    name VARCHAR(32) NOT NULL,
    type INTEGER DEFAULT 0 NOT NULL,
    value VARCHAR(128),
    flags INTEGER DEFAULT 0 NOT NULL,
    CONSTRAINT uid_domain_attrs_domain_attr_idx UNIQUE (did, name, value)
);

ALTER SEQUENCE uid_domain_attrs_id_seq OWNED BY uid_domain_attrs.id;

CREATE INDEX uid_domain_attrs_domain_did ON uid_domain_attrs (did, flags);

INSERT INTO version (table_name, table_version) values ('uid_domain_attrs','1');

