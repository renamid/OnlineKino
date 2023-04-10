create table objects
(
    id          serial
        primary key,
    address     varchar(100),
    type        varchar(50),
    area        double precision,
    rooms       integer,
    price       double precision,
    description text,
    photos      varchar(255),
    date_added  date
);

--add from file objects
CREATE FUNCTION add_data_from_file_objects()
    RETURNS VOID
AS
$$
BEGIN
    COPY objects (address, type, area, rooms, price, description, photos, date_added)
        FROM '/path/to/file_objects.csv' DELIMITER ',' CSV HEADER;
END;
$$ LANGUAGE plpgsql;

--insert to objects
CREATE FUNCTION insert_into_table_objects(
    address varchar(100),
    type varchar(50),
    area double precision,
    rooms integer,
    price double precision,
    description text,
    photos varchar(255),
    date_added date
) RETURNS void AS
$$
BEGIN
    INSERT INTO objects (address, type, area, rooms, price, description, photos, date_added)
    VALUES (address, type, area, rooms, price, description, photos, date_added);
END;
$$
    LANGUAGE plpgsql;

alter table objects
    owner to postgres;