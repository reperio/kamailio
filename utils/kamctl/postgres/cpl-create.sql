CREATE TABLE cpl (
    id uuid DEFAULT gen_random_uuid() PRIMARY KEY NOT NULL,
    username VARCHAR(64) NOT NULL,
    domain VARCHAR(64) DEFAULT '' NOT NULL,
    cpl_xml TEXT,
    cpl_bin TEXT,
    CONSTRAINT cpl_account_idx UNIQUE (username, domain)
);

INSERT INTO version (table_name, table_version) values ('cpl','1');

