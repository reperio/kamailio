CREATE SEQUENCE topos_d_id_seq;

CREATE TABLE topos_d (
    id integer PRIMARY KEY NOT NULL DEFAULT nextval('topos_d_id_seq'),
    rectime TIMESTAMP WITHOUT TIME ZONE NOT NULL,
    s_method VARCHAR(64) DEFAULT '' NOT NULL,
    s_cseq VARCHAR(64) DEFAULT '' NOT NULL,
    a_callid VARCHAR(255) DEFAULT '' NOT NULL,
    a_uuid VARCHAR(255) DEFAULT '' NOT NULL,
    b_uuid VARCHAR(255) DEFAULT '' NOT NULL,
    a_contact VARCHAR(512) DEFAULT '' NOT NULL,
    b_contact VARCHAR(512) DEFAULT '' NOT NULL,
    as_contact VARCHAR(512) DEFAULT '' NOT NULL,
    bs_contact VARCHAR(512) DEFAULT '' NOT NULL,
    a_tag VARCHAR(255) DEFAULT '' NOT NULL,
    b_tag VARCHAR(255) DEFAULT '' NOT NULL,
    a_rr TEXT,
    b_rr TEXT,
    s_rr TEXT,
    iflags INTEGER DEFAULT 0 NOT NULL,
    a_uri VARCHAR(255) DEFAULT '' NOT NULL,
    b_uri VARCHAR(255) DEFAULT '' NOT NULL,
    r_uri VARCHAR(255) DEFAULT '' NOT NULL,
    a_srcaddr VARCHAR(128) DEFAULT '' NOT NULL,
    b_srcaddr VARCHAR(128) DEFAULT '' NOT NULL,
    a_socket VARCHAR(128) DEFAULT '' NOT NULL,
    b_socket VARCHAR(128) DEFAULT '' NOT NULL
);

ALTER SEQUENCE topos_d_id_seq OWNED BY topos_d.id;

CREATE INDEX topos_d_rectime_idx ON topos_d (rectime);
CREATE INDEX topos_d_a_callid_idx ON topos_d (a_callid);
CREATE INDEX topos_d_a_uuid_idx ON topos_d (a_uuid);
CREATE INDEX topos_d_b_uuid_idx ON topos_d (b_uuid);

INSERT INTO version (table_name, table_version) values ('topos_d','1');

CREATE SEQUENCE topos_t_id_seq;

CREATE TABLE topos_t (
    id integer PRIMARY KEY NOT NULL DEFAULT nextval('topos_t_id_seq'),
    rectime TIMESTAMP WITHOUT TIME ZONE NOT NULL,
    s_method VARCHAR(64) DEFAULT '' NOT NULL,
    s_cseq VARCHAR(64) DEFAULT '' NOT NULL,
    a_callid VARCHAR(255) DEFAULT '' NOT NULL,
    a_uuid VARCHAR(255) DEFAULT '' NOT NULL,
    b_uuid VARCHAR(255) DEFAULT '' NOT NULL,
    direction INTEGER DEFAULT 0 NOT NULL,
    x_via TEXT,
    x_vbranch VARCHAR(255) DEFAULT '' NOT NULL,
    x_rr TEXT,
    y_rr TEXT,
    s_rr TEXT,
    x_uri VARCHAR(255) DEFAULT '' NOT NULL,
    a_contact VARCHAR(512) DEFAULT '' NOT NULL,
    b_contact VARCHAR(512) DEFAULT '' NOT NULL,
    as_contact VARCHAR(512) DEFAULT '' NOT NULL,
    bs_contact VARCHAR(512) DEFAULT '' NOT NULL,
    x_tag VARCHAR(255) DEFAULT '' NOT NULL,
    a_tag VARCHAR(255) DEFAULT '' NOT NULL,
    b_tag VARCHAR(255) DEFAULT '' NOT NULL,
    a_srcaddr VARCHAR(255) DEFAULT '' NOT NULL,
    b_srcaddr VARCHAR(255) DEFAULT '' NOT NULL,
    a_socket VARCHAR(128) DEFAULT '' NOT NULL,
    b_socket VARCHAR(128) DEFAULT '' NOT NULL
);

ALTER SEQUENCE topos_t_id_seq OWNED BY topos_t.id;

CREATE INDEX topos_t_rectime_idx ON topos_t (rectime);
CREATE INDEX topos_t_a_callid_idx ON topos_t (a_callid);
CREATE INDEX topos_t_x_vbranch_idx ON topos_t (x_vbranch);
CREATE INDEX topos_t_a_uuid_idx ON topos_t (a_uuid);

INSERT INTO version (table_name, table_version) values ('topos_t','1');

