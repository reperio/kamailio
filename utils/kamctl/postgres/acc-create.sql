CREATE SEQUENCE acc_id_seq;

CREATE TABLE acc (
    id integer PRIMARY KEY NOT NULL DEFAULT nextval('acc_id_seq'),
    method VARCHAR(16) DEFAULT '' NOT NULL,
    from_tag VARCHAR(128) DEFAULT '' NOT NULL,
    to_tag VARCHAR(128) DEFAULT '' NOT NULL,
    callid VARCHAR(255) DEFAULT '' NOT NULL,
    sip_code VARCHAR(3) DEFAULT '' NOT NULL,
    sip_reason VARCHAR(128) DEFAULT '' NOT NULL,
    time TIMESTAMP WITHOUT TIME ZONE NOT NULL
);

ALTER SEQUENCE acc_id_seq OWNED BY acc.id;

CREATE INDEX acc_callid_idx ON acc (callid);

INSERT INTO version (table_name, table_version) values ('acc','5');

CREATE SEQUENCE acc_cdrs_id_seq;

CREATE TABLE acc_cdrs (
    id integer PRIMARY KEY NOT NULL DEFAULT nextval('acc_cdrs_id_seq'),
    start_time TIMESTAMP WITHOUT TIME ZONE DEFAULT '2000-01-01 00:00:00' NOT NULL,
    end_time TIMESTAMP WITHOUT TIME ZONE DEFAULT '2000-01-01 00:00:00' NOT NULL,
    duration REAL DEFAULT 0 NOT NULL
);

ALTER SEQUENCE acc_cdrs_id_seq OWNED BY acc_cdrs.id;

CREATE INDEX acc_cdrs_start_time_idx ON acc_cdrs (start_time);

INSERT INTO version (table_name, table_version) values ('acc_cdrs','2');

CREATE SEQUENCE missed_calls_id_seq;

CREATE TABLE missed_calls (
    id integer PRIMARY KEY NOT NULL DEFAULT nextval('missed_calls_id_seq'),
    method VARCHAR(16) DEFAULT '' NOT NULL,
    from_tag VARCHAR(128) DEFAULT '' NOT NULL,
    to_tag VARCHAR(128) DEFAULT '' NOT NULL,
    callid VARCHAR(255) DEFAULT '' NOT NULL,
    sip_code VARCHAR(3) DEFAULT '' NOT NULL,
    sip_reason VARCHAR(128) DEFAULT '' NOT NULL,
    time TIMESTAMP WITHOUT TIME ZONE NOT NULL
);

ALTER SEQUENCE missed_calls_id_seq OWNED BY missed_calls.id;

CREATE INDEX missed_calls_callid_idx ON missed_calls (callid);

INSERT INTO version (table_name, table_version) values ('missed_calls','4');

