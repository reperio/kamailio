CREATE SEQUENCE subscriber_id_seq;

CREATE TABLE subscriber (
    id integer PRIMARY KEY NOT NULL DEFAULT nextval('subscriber_id_seq'),
    username VARCHAR(64) DEFAULT '' NOT NULL,
    domain VARCHAR(64) DEFAULT '' NOT NULL,
    password VARCHAR(64) DEFAULT '' NOT NULL,
    ha1 VARCHAR(128) DEFAULT '' NOT NULL,
    ha1b VARCHAR(128) DEFAULT '' NOT NULL,
    CONSTRAINT subscriber_account_idx UNIQUE (username, domain)
);

ALTER SEQUENCE subscriber_id_seq OWNED BY subscriber.id;

CREATE INDEX subscriber_username_idx ON subscriber (username);

INSERT INTO version (table_name, table_version) values ('subscriber','7');

