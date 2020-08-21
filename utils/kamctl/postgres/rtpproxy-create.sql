CREATE SEQUENCE rtpproxy_id_seq;

CREATE TABLE rtpproxy (
    id integer PRIMARY KEY NOT NULL DEFAULT nextval('rtpproxy_id_seq'),
    setid VARCHAR(32) DEFAULT '00' NOT NULL,
    url VARCHAR(64) DEFAULT '' NOT NULL,
    flags INTEGER DEFAULT 0 NOT NULL,
    weight INTEGER DEFAULT 1 NOT NULL,
    description VARCHAR(64) DEFAULT '' NOT NULL
);

ALTER SEQUENCE rtpproxy_id_seq OWNED BY rtpproxy.id;

INSERT INTO version (table_name, table_version) values ('rtpproxy','1');

