CREATE SEQUENCE secfilter_id_seq;

CREATE TABLE secfilter (
    id integer PRIMARY KEY NOT NULL DEFAULT nextval('secfilter_id_seq'),
    action SMALLINT DEFAULT 0 NOT NULL,
    type SMALLINT DEFAULT 0 NOT NULL,
    data VARCHAR(64) DEFAULT '' NOT NULL
);

ALTER SEQUENCE secfilter_id_seq OWNED BY secfilter.id;

CREATE INDEX secfilter_secfilter_idx ON secfilter (action, type, data);

INSERT INTO version (table_name, table_version) values ('secfilter','1');

