CREATE SEQUENCE purplemap_id_seq;

CREATE TABLE purplemap (
    id integer PRIMARY KEY NOT NULL DEFAULT nextval('purplemap_id_seq'),
    sip_user VARCHAR(255) NOT NULL,
    ext_user VARCHAR(255) NOT NULL,
    ext_prot VARCHAR(16) NOT NULL,
    ext_pass VARCHAR(64)
);

ALTER SEQUENCE purplemap_id_seq OWNED BY purplemap.id;

INSERT INTO version (table_name, table_version) values ('purplemap','1');

