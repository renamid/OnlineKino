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

alter table agents
    owner to postgres;

