CREATE SEQUENCE mohqcalls_id_seq;

CREATE TABLE mohqcalls (
    id integer PRIMARY KEY NOT NULL DEFAULT nextval('mohqcalls_id_seq'),
    mohq_id INTEGER NOT NULL,
    call_id VARCHAR(100) NOT NULL,
    call_status INTEGER NOT NULL,
    call_from VARCHAR(100) NOT NULL,
    call_contact VARCHAR(100),
    call_time TIMESTAMP WITHOUT TIME ZONE NOT NULL,
    CONSTRAINT mohqcalls_mohqcalls_idx UNIQUE (call_id)
);

ALTER SEQUENCE mohqcalls_id_seq OWNED BY mohqcalls.id;

INSERT INTO version (table_name, table_version) values ('mohqcalls','1');

CREATE SEQUENCE mohqueues_id_seq;

CREATE TABLE mohqueues (
    id integer PRIMARY KEY NOT NULL DEFAULT nextval('mohqueues_id_seq'),
    name VARCHAR(25) NOT NULL,
    uri VARCHAR(100) NOT NULL,
    mohdir VARCHAR(100),
    mohfile VARCHAR(100) NOT NULL,
    debug INTEGER NOT NULL,
    CONSTRAINT mohqueues_mohqueue_uri_idx UNIQUE (uri),
    CONSTRAINT mohqueues_mohqueue_name_idx UNIQUE (name)
);

ALTER SEQUENCE mohqueues_id_seq OWNED BY mohqueues.id;

INSERT INTO version (table_name, table_version) values ('mohqueues','1');

