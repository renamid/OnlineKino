create table users
(
    id          serial
        primary key,
    name        varchar(50),
    email       varchar(100),
    password    varchar(255),
    phone       varchar(20),
    budget      double precision,
    location    varchar(50),
    preferences varchar(255)
);

--add from file users
CREATE FUNCTION add_data_from_file_users()
    RETURNS VOID
AS
$$
BEGIN
    COPY users (name, email, password, phone, budget, location, preferences)
        FROM '/path/to/file_objects.csv' DELIMITER ',' CSV HEADER;
END;
$$ LANGUAGE plpgsql;

--insert to users
CREATE FUNCTION insert_into_table_users(
    name varchar(50),
    email varchar(100),
    password varchar(255),
    phone varchar(20),
    budget double precision,
    location varchar(50),
    preferences varchar(255)
) RETURNS void AS
$$
BEGIN
    INSERT INTO users (name, email, password, phone, budget, location, preferences)
    VALUES (name, email, password, phone, budget, location, preferences);
END;
$$
    LANGUAGE plpgsql;

alter table users
    owner to postgres;