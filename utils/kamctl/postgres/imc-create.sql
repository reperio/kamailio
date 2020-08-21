CREATE SEQUENCE imc_rooms_id_seq;

CREATE TABLE imc_rooms (
    id integer PRIMARY KEY NOT NULL DEFAULT nextval('imc_rooms_id_seq'),
    name VARCHAR(64) NOT NULL,
    domain VARCHAR(64) NOT NULL,
    flag INTEGER NOT NULL,
    CONSTRAINT imc_rooms_name_domain_idx UNIQUE (name, domain)
);

ALTER SEQUENCE imc_rooms_id_seq OWNED BY imc_rooms.id;

INSERT INTO version (table_name, table_version) values ('imc_rooms','1');

CREATE SEQUENCE imc_members_id_seq;

CREATE TABLE imc_members (
    id integer PRIMARY KEY NOT NULL DEFAULT nextval('imc_members_id_seq'),
    username VARCHAR(64) NOT NULL,
    domain VARCHAR(64) NOT NULL,
    room VARCHAR(64) NOT NULL,
    flag INTEGER NOT NULL,
    CONSTRAINT imc_members_account_room_idx UNIQUE (username, domain, room)
);

ALTER SEQUENCE imc_members_id_seq OWNED BY imc_members.id;

INSERT INTO version (table_name, table_version) values ('imc_members','1');

