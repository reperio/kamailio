CREATE SEQUENCE rtpengine_id_seq;

CREATE TABLE rtpengine (
    id integer PRIMARY KEY NOT NULL DEFAULT nextval('rtpengine_id_seq'),
    setid INTEGER DEFAULT 0 NOT NULL,
    url VARCHAR(64) NOT NULL,
    weight INTEGER DEFAULT 1 NOT NULL,
    disabled INTEGER DEFAULT 0 NOT NULL,
    stamp TIMESTAMP WITHOUT TIME ZONE DEFAULT '1900-01-01 00:00:01' NOT NULL,
    CONSTRAINT rtpengine_rtpengine_nodes UNIQUE (setid, url)
);

ALTER SEQUENCE rtpengine_id_seq OWNED BY rtpengine.id;

INSERT INTO version (table_name, table_version) values ('rtpengine','1');

