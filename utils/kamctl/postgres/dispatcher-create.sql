CREATE SEQUENCE dispatcher_id_seq;

CREATE TABLE dispatcher (
    id integer PRIMARY KEY NOT NULL DEFAULT nextval('dispatcher_id_seq'),
    setid INTEGER DEFAULT 0 NOT NULL,
    destination VARCHAR(192) DEFAULT '' NOT NULL,
    flags INTEGER DEFAULT 0 NOT NULL,
    priority INTEGER DEFAULT 0 NOT NULL,
    attrs VARCHAR(128) DEFAULT '' NOT NULL,
    description VARCHAR(64) DEFAULT '' NOT NULL
);

ALTER SEQUENCE dispatcher_id_seq OWNED BY dispatcher.id;

INSERT INTO version (table_name, table_version) values ('dispatcher','4');

