create table listings
(
    id        serial
        primary key,
    object_id integer
        references objects,
    name      varchar(50),
    type      varchar(20),
    price     double precision,
    address   varchar(100),
    thumbnail varchar(100),
    user_id   integer
        references users
);

--add from file listings
CREATE FUNCTION add_data_from_file_listings()
    RETURNS VOID
AS
$$
BEGIN
    COPY listings (object_id, name, user_id)
        FROM '/path/to/file_objects.csv' DELIMITER ',' CSV HEADER;
    UPDATE listings
    SET type      = objects.type,
        price     = objects.price,
        address   = objects.address,
        thumbnail = objects.photos
    FROM objects
    WHERE listings.object_id = objects.id;
END;
$$ LANGUAGE plpgsql;

--update listing from objects
UPDATE listings
SET type      = objects.type,
    price     = objects.price,
    address   = objects.address,
    thumbnail = objects.photos
FROM objects
WHERE listings.object_id = objects.id;

--insert to listings
CREATE FUNCTION insert_into_table_listings(
    object_id integer,
    name varchar(50),
    user_id integer
) RETURNS void AS
$$
BEGIN
    INSERT INTO listings (object_id, name, user_id)
    VALUES (object_id, name, user_id);
    UPDATE listings
    SET type      = objects.type,
        price     = objects.price,
        address   = objects.address,
        thumbnail = objects.photos
    FROM objects
    WHERE listings.object_id = objects.id;
END;
$$
    LANGUAGE plpgsql;

alter table listings
    owner to postgres;

