CREATE SEQUENCE domain_id_seq;

CREATE TABLE domain (
    id integer PRIMARY KEY NOT NULL DEFAULT nextval('domain_id_seq'),
    domain VARCHAR(64) NOT NULL,
    did VARCHAR(64) DEFAULT NULL,
    last_modified TIMESTAMP WITHOUT TIME ZONE DEFAULT '2000-01-01 00:00:01' NOT NULL,
    CONSTRAINT domain_domain_idx UNIQUE (domain)
);

ALTER SEQUENCE domain_id_seq OWNED BY domain.id;

INSERT INTO version (table_name, table_version) values ('domain','2');

CREATE SEQUENCE domain_attrs_id_seq;

CREATE TABLE domain_attrs (
    id integer PRIMARY KEY NOT NULL DEFAULT nextval('domain_attrs_id_seq'),
    did VARCHAR(64) NOT NULL,
    name VARCHAR(32) NOT NULL,
    type INTEGER NOT NULL,
    value VARCHAR(255) NOT NULL,
    last_modified TIMESTAMP WITHOUT TIME ZONE DEFAULT '2000-01-01 00:00:01' NOT NULL
);

ALTER SEQUENCE domain_attrs_id_seq OWNED BY domain_attrs.id;

CREATE INDEX domain_attrs_domain_attrs_idx ON domain_attrs (did, name);

INSERT INTO version (table_name, table_version) values ('domain_attrs','1');

