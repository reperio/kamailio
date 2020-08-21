CREATE SEQUENCE speed_dial_id_seq;

CREATE TABLE speed_dial (
    id integer PRIMARY KEY NOT NULL DEFAULT nextval('speed_dial_id_seq'),
    username VARCHAR(64) DEFAULT '' NOT NULL,
    domain VARCHAR(64) DEFAULT '' NOT NULL,
    sd_username VARCHAR(64) DEFAULT '' NOT NULL,
    sd_domain VARCHAR(64) DEFAULT '' NOT NULL,
    new_uri VARCHAR(255) DEFAULT '' NOT NULL,
    fname VARCHAR(64) DEFAULT '' NOT NULL,
    lname VARCHAR(64) DEFAULT '' NOT NULL,
    description VARCHAR(64) DEFAULT '' NOT NULL,
    CONSTRAINT speed_dial_speed_dial_idx UNIQUE (username, domain, sd_domain, sd_username)
);

ALTER SEQUENCE speed_dial_id_seq OWNED BY speed_dial.id;

INSERT INTO version (table_name, table_version) values ('speed_dial','2');

