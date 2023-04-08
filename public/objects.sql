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

alter table objects
    owner to postgres;

