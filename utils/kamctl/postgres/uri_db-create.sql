CREATE SEQUENCE uri_id_seq;

CREATE TABLE uri (
    id integer PRIMARY KEY NOT NULL DEFAULT nextval('uri_id_seq'),
    username VARCHAR(64) DEFAULT '' NOT NULL,
    domain VARCHAR(64) DEFAULT '' NOT NULL,
    uri_user VARCHAR(64) DEFAULT '' NOT NULL,
    last_modified TIMESTAMP WITHOUT TIME ZONE DEFAULT '2000-01-01 00:00:01' NOT NULL,
    CONSTRAINT uri_account_idx UNIQUE (username, domain, uri_user)
);

ALTER SEQUENCE uri_id_seq OWNED BY uri.id;

INSERT INTO version (table_name, table_version) values ('uri','1');

