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

INSERT INTO listings (object_id, type, price, address, thumbnail, user_id)
SELECT objects.id, objects.type, objects.price, objects.address, objects.photos, purchases.user_id
from objects
    JOIN purchases ON objects.id = purchases.object_id;

alter table listings
    owner to postgres;

