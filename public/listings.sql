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

alter table listings
    owner to postgres;

