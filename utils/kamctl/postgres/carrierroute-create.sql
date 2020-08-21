CREATE SEQUENCE carrierroute_id_seq;

CREATE TABLE carrierroute (
    id integer PRIMARY KEY NOT NULL DEFAULT nextval('carrierroute_id_seq'),
    carrier INTEGER DEFAULT 0 NOT NULL,
    domain INTEGER DEFAULT 0 NOT NULL,
    scan_prefix VARCHAR(64) DEFAULT '' NOT NULL,
    flags INTEGER DEFAULT 0 NOT NULL,
    mask INTEGER DEFAULT 0 NOT NULL,
    prob REAL DEFAULT 0 NOT NULL,
    strip INTEGER DEFAULT 0 NOT NULL,
    rewrite_host VARCHAR(255) DEFAULT '' NOT NULL,
    rewrite_prefix VARCHAR(64) DEFAULT '' NOT NULL,
    rewrite_suffix VARCHAR(64) DEFAULT '' NOT NULL,
    description VARCHAR(255) DEFAULT NULL
);

ALTER SEQUENCE carrierroute_id_seq OWNED BY carrierroute.id;

INSERT INTO version (table_name, table_version) values ('carrierroute','3');

CREATE SEQUENCE carrierfailureroute_id_seq;

CREATE TABLE carrierfailureroute (
    id integer PRIMARY KEY NOT NULL DEFAULT nextval('carrierfailureroute_id_seq'),
    carrier INTEGER DEFAULT 0 NOT NULL,
    domain INTEGER DEFAULT 0 NOT NULL,
    scan_prefix VARCHAR(64) DEFAULT '' NOT NULL,
    host_name VARCHAR(255) DEFAULT '' NOT NULL,
    reply_code VARCHAR(3) DEFAULT '' NOT NULL,
    flags INTEGER DEFAULT 0 NOT NULL,
    mask INTEGER DEFAULT 0 NOT NULL,
    next_domain INTEGER DEFAULT 0 NOT NULL,
    description VARCHAR(255) DEFAULT NULL
);

ALTER SEQUENCE carrierfailureroute_id_seq OWNED BY carrierfailureroute.id;

INSERT INTO version (table_name, table_version) values ('carrierfailureroute','2');

CREATE TABLE carrier_name (
    id SERIAL PRIMARY KEY NOT NULL,
    carrier VARCHAR(64) DEFAULT NULL
);

INSERT INTO version (table_name, table_version) values ('carrier_name','1');

CREATE SEQUENCE domain_name_id_seq;

CREATE TABLE domain_name (
    id integer PRIMARY KEY NOT NULL DEFAULT nextval('domain_name_id_seq'),
    domain VARCHAR(64) DEFAULT NULL
);

ALTER SEQUENCE domain_name_id_seq OWNED BY domain_name.id;

INSERT INTO version (table_name, table_version) values ('domain_name','1');

