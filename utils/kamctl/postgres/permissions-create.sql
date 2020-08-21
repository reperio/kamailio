CREATE SEQUENCE trusted_id_seq;

CREATE TABLE trusted (
    id integer PRIMARY KEY NOT NULL DEFAULT nextval('trusted_id_seq'),
    src_ip VARCHAR(50) NOT NULL,
    proto VARCHAR(4) NOT NULL,
    from_pattern VARCHAR(64) DEFAULT NULL,
    ruri_pattern VARCHAR(64) DEFAULT NULL,
    tag VARCHAR(64),
    priority INTEGER DEFAULT 0 NOT NULL
);

ALTER SEQUENCE trusted_id_seq OWNED BY trusted.id;

CREATE INDEX trusted_peer_idx ON trusted (src_ip);

INSERT INTO version (table_name, table_version) values ('trusted','6');

CREATE SEQUENCE address_id_seq;

CREATE TABLE address (
    id integer PRIMARY KEY NOT NULL DEFAULT nextval('address_id_seq'),
    grp INTEGER DEFAULT 1 NOT NULL,
    ip_addr VARCHAR(50) NOT NULL,
    mask INTEGER DEFAULT 32 NOT NULL,
    port SMALLINT DEFAULT 0 NOT NULL,
    tag VARCHAR(64)
);

ALTER SEQUENCE address_id_seq OWNED BY address.id;

INSERT INTO version (table_name, table_version) values ('address','6');

