CREATE SEQUENCE cpl_id_seq;

CREATE TABLE cpl (
    id integer PRIMARY KEY NOT NULL DEFAULT nextval('cpl_id_seq'),
    username VARCHAR(64) NOT NULL,
    domain VARCHAR(64) DEFAULT '' NOT NULL,
    cpl_xml TEXT,
    cpl_bin TEXT,
    CONSTRAINT cpl_account_idx UNIQUE (username, domain)
);

ALTER SEQUENCE cpl_id_seq OWNED BY cpl.id;

INSERT INTO version (table_name, table_version) values ('cpl','1');

