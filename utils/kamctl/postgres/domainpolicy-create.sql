CREATE SEQUENCE domainpolicy_id_seq;

CREATE TABLE domainpolicy (
    id integer PRIMARY KEY NOT NULL DEFAULT nextval('domainpolicy_id_seq'),
    rule VARCHAR(255) NOT NULL,
    type VARCHAR(255) NOT NULL,
    att VARCHAR(255),
    val VARCHAR(128),
    description VARCHAR(255) NOT NULL,
    CONSTRAINT domainpolicy_rav_idx UNIQUE (rule, att, val)
);

ALTER SEQUENCE domainpolicy_id_seq OWNED BY domainpolicy.id;

CREATE INDEX domainpolicy_rule_idx ON domainpolicy (rule);

INSERT INTO version (table_name, table_version) values ('domainpolicy','2');

