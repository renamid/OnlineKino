create table agents
(
    id         serial
        primary key,
    name       varchar(50),
    email      varchar(100),
    phone      varchar(20),
    experience integer,
    education  varchar(100),
    salary     double precision
);

--add from file agents
CREATE FUNCTION add_data_from_file_agents()
    RETURNS VOID
AS
$$
BEGIN
    COPY agents (name, email, phone, experience, education, salary)
        FROM '/path/to/file_objects.csv' DELIMITER ',' CSV HEADER;
END;
$$ LANGUAGE plpgsql;

alter table agents
    owner to postgres;

--insert to agents
CREATE FUNCTION insert_into_table_agents(
    name varchar(50),
    email varchar(100),
    phone varchar(20),
    experience integer,
    education varchar(100),
    salary double precision
) RETURNS void AS
$$
BEGIN
    INSERT INTO agents (name, email, phone, experience, education, salary)
    VALUES (name, email, phone, experience, education, salary);
END;
$$
    LANGUAGE plpgsql;