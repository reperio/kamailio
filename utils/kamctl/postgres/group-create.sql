CREATE SEQUENCE grp_id_seq;

CREATE TABLE grp (
    id integer PRIMARY KEY NOT NULL DEFAULT nextval('grp_id_seq'),
    username VARCHAR(64) DEFAULT '' NOT NULL,
    domain VARCHAR(64) DEFAULT '' NOT NULL,
    grp VARCHAR(64) DEFAULT '' NOT NULL,
    last_modified TIMESTAMP WITHOUT TIME ZONE DEFAULT '2000-01-01 00:00:01' NOT NULL,
    CONSTRAINT grp_account_group_idx UNIQUE (username, domain, grp)
);

ALTER SEQUENCE grp_id_seq OWNED BY grp.id;

INSERT INTO version (table_name, table_version) values ('grp','2');

CREATE SEQUENCE re_grp_id_seq;

CREATE TABLE re_grp (
    id integer PRIMARY KEY NOT NULL DEFAULT nextval('re_grp_id_seq'),
    reg_exp VARCHAR(128) DEFAULT '' NOT NULL,
    group_id INTEGER DEFAULT 0 NOT NULL
);

ALTER SEQUENCE re_grp_id_seq OWNED BY re_grp.id;

CREATE INDEX re_grp_group_idx ON re_grp (group_id);

INSERT INTO version (table_name, table_version) values ('re_grp','1');

