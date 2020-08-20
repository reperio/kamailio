CREATE TABLE pl_pipes (
    id uuid DEFAULT gen_random_uuid() PRIMARY KEY NOT NULL,
    pipeid VARCHAR(64) DEFAULT '' NOT NULL,
    algorithm VARCHAR(32) DEFAULT '' NOT NULL,
    plimit INTEGER DEFAULT 0 NOT NULL
);

INSERT INTO version (table_name, table_version) values ('pl_pipes','1');

