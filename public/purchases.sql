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

alter table purchases
    owner to postgres;

