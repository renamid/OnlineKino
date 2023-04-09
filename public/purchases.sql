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

INSERT INTO purchases (object_id, user_id, agent_id, price, date)
VALUES (1, 2, 4, 100000, '2022-01-15'),
       (2, 1, 5, 500000, '2022-03-02'),
       (3, 3, 6, 250000, '2022-02-20'),
       (3, 1, 2, 180000, '2023-02-15'),
       (5, 3, 1, 275000, '2023-03-01'),
       (2, 4, 3, 150000, '2023-03-10'),
       (8, 2, 4, 400000, '2023-03-17'),
       (4, 5, 2, 225000, '2023-03-22'),
       (7, 3, 1, 350000, '2023-04-02'),
       (10, 2, 4, 500000, '2023-04-07');

alter table purchases
    owner to postgres;

