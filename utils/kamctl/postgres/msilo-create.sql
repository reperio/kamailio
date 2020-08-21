CREATE SEQUENCE silo_id_seq;

CREATE TABLE silo (
    id integer PRIMARY KEY NOT NULL DEFAULT nextval('silo_id_seq'),
    src_addr VARCHAR(255) DEFAULT '' NOT NULL,
    dst_addr VARCHAR(255) DEFAULT '' NOT NULL,
    username VARCHAR(64) DEFAULT '' NOT NULL,
    domain VARCHAR(64) DEFAULT '' NOT NULL,
    inc_time INTEGER DEFAULT 0 NOT NULL,
    exp_time INTEGER DEFAULT 0 NOT NULL,
    snd_time INTEGER DEFAULT 0 NOT NULL,
    ctype VARCHAR(32) DEFAULT 'text/plain' NOT NULL,
    body BYTEA,
    extra_hdrs TEXT,
    callid VARCHAR(128) DEFAULT '' NOT NULL,
    status INTEGER DEFAULT 0 NOT NULL
);

ALTER SEQUENCE silo_id_seq OWNED BY silo.id;

CREATE INDEX silo_account_idx ON silo (username, domain);

INSERT INTO version (table_name, table_version) values ('silo','8');

