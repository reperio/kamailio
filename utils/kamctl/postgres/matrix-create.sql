CREATE SEQUENCE matrix_id_seq;

CREATE TABLE matrix (
    id integer PRIMARY KEY NOT NULL DEFAULT nextval('matrix_id_seq'),
    first INTEGER NOT NULL,
    second SMALLINT NOT NULL,
    res INTEGER NOT NULL
);

ALTER SEQUENCE matrix_id_seq OWNED BY matrix.id;

CREATE INDEX matrix_matrix_idx ON matrix (first, second);

INSERT INTO version (table_name, table_version) values ('matrix','1');

