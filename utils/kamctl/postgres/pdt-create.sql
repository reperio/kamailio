CREATE SEQUENCE pdt_id_seq;

CREATE TABLE pdt (
    id integer PRIMARY KEY NOT NULL DEFAULT nextval('pdt_id_seq'),
    sdomain VARCHAR(255) NOT NULL,
    prefix VARCHAR(32) NOT NULL,
    domain VARCHAR(255) DEFAULT '' NOT NULL,
    CONSTRAINT pdt_sdomain_prefix_idx UNIQUE (sdomain, prefix)
);

ALTER SEQUENCE pdt_id_seq OWNED BY pdt.id;

INSERT INTO version (table_name, table_version) values ('pdt','1');

