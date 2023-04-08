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

alter table users
    owner to postgres;

