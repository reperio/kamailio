CREATE SEQUENCE dialplan_id_seq;

CREATE TABLE dialplan (
    id integer PRIMARY KEY NOT NULL DEFAULT nextval('dialplan_id_seq'),
    dpid INTEGER NOT NULL,
    pr INTEGER NOT NULL,
    match_op INTEGER NOT NULL,
    match_exp VARCHAR(64) NOT NULL,
    match_len INTEGER NOT NULL,
    subst_exp VARCHAR(64) NOT NULL,
    repl_exp VARCHAR(256) NOT NULL,
    attrs VARCHAR(64) NOT NULL
);

ALTER SEQUENCE dialplan_id_seq OWNED BY dialplan.id;

INSERT INTO version (table_name, table_version) values ('dialplan','2');

