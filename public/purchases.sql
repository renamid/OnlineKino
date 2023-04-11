create table purchases
(
    id        serial
        primary key,
    object_id integer
        references objects,
    user_id   integer
        references users,
    agent_id  integer
        references agents,
    price     double precision,
    date      date
);

--add from file purchases
CREATE FUNCTION add_data_from_file_purchases()
    RETURNS VOID
AS
$$
BEGIN
    COPY purchases (object_id, user_id, agent_id, price, date)
        FROM '/path/to/file_purchases.csv' DELIMITER ',' CSV HEADER;
END;
$$ LANGUAGE plpgsql;

alter table purchases
    owner to postgres;

--insert to purchases
CREATE FUNCTION insert_into_table_purchases(
    object_id integer,
    user_id integer,
    agent_id integer,
    price double precision,
    date date
) RETURNS void AS
$$
BEGIN
    INSERT INTO purchases (object_id, user_id, agent_id, price, date)
    VALUES (object_id, user_id, agent_id, price, date);
END;
$$
    LANGUAGE plpgsql;

