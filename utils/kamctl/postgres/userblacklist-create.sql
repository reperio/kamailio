CREATE SEQUENCE userblacklist_id_seq;

CREATE TABLE userblacklist (
    id integer PRIMARY KEY NOT NULL DEFAULT nextval('userblacklist_id_seq'),
    username VARCHAR(64) DEFAULT '' NOT NULL,
    domain VARCHAR(64) DEFAULT '' NOT NULL,
    prefix VARCHAR(64) DEFAULT '' NOT NULL,
    whitelist SMALLINT DEFAULT 0 NOT NULL
);

ALTER SEQUENCE userblacklist_id_seq OWNED BY userblacklist.id;

CREATE INDEX userblacklist_userblacklist_idx ON userblacklist (username, domain, prefix);

INSERT INTO version (table_name, table_version) values ('userblacklist','1');

CREATE SEQUENCE globalblacklist_id_seq;

CREATE TABLE globalblacklist (
    id integer PRIMARY KEY NOT NULL DEFAULT nextval('globalblacklist_id_seq'),
    prefix VARCHAR(64) DEFAULT '' NOT NULL,
    whitelist SMALLINT DEFAULT 0 NOT NULL,
    description VARCHAR(255) DEFAULT NULL
);

ALTER SEQUENCE globalblacklist_id_seq OWNED BY globalblacklist.id;

CREATE INDEX globalblacklist_globalblacklist_idx ON globalblacklist (prefix);

INSERT INTO version (table_name, table_version) values ('globalblacklist','1');

