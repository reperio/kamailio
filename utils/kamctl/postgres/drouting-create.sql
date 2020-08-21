CREATE SEQUENCE dr_gateway_id_seq;

CREATE TABLE dr_gateways (
    gwid integer PRIMARY KEY NOT NULL DEFAULT nextval('dr_gateways_id_seq'),
    type INTEGER DEFAULT 0 NOT NULL,
    address VARCHAR(128) NOT NULL,
    strip INTEGER DEFAULT 0 NOT NULL,
    pri_prefix VARCHAR(64) DEFAULT NULL,
    attrs VARCHAR(255) DEFAULT NULL,
    description VARCHAR(128) DEFAULT '' NOT NULL
);

ALTER SEQUENCE dr_gateways_id_seq OWNED BY dr_gateways.gwid;

INSERT INTO version (table_name, table_version) values ('dr_gateways','3');

CREATE SEQUENCE dr_rules_id_seq;

CREATE TABLE dr_rules (
    ruleid integer PRIMARY KEY NOT NULL DEFAULT nextval('dr_rules_id_seq'),
    groupid VARCHAR(255) NOT NULL,
    prefix VARCHAR(64) NOT NULL,
    timerec VARCHAR(255) NOT NULL,
    priority INTEGER DEFAULT 0 NOT NULL,
    routeid VARCHAR(64) NOT NULL,
    gwlist VARCHAR(255) NOT NULL,
    description VARCHAR(128) DEFAULT '' NOT NULL
);

ALTER SEQUENCE dr_rules_id_seq OWNED BY dr_rules.ruleid;

INSERT INTO version (table_name, table_version) values ('dr_rules','3');

CREATE SEQUENCE dr_gw_lists_id_seq;

CREATE TABLE dr_gw_lists (
    id integer PRIMARY KEY NOT NULL DEFAULT nextval('dr_gw_lists_id_seq'),
    gwlist VARCHAR(255) NOT NULL,
    description VARCHAR(128) DEFAULT '' NOT NULL
);

ALTER SEQUENCE dr_gw_lists_id_seq OWNED BY dr_gw_lists.id;

INSERT INTO version (table_name, table_version) values ('dr_gw_lists','1');

CREATE SEQUENCE dr_groups_id_seq;

CREATE TABLE dr_groups (
    id integer PRIMARY KEY NOT NULL DEFAULT nextval('dr_groups_id_seq'),
    username VARCHAR(64) NOT NULL,
    domain VARCHAR(128) DEFAULT '' NOT NULL,
    groupid INTEGER DEFAULT 0 NOT NULL,
    description VARCHAR(128) DEFAULT '' NOT NULL
);

ALTER SEQUENCE dr_groups_seq OWNED BY dr_groups.id;

INSERT INTO version (table_name, table_version) values ('dr_groups','2');

