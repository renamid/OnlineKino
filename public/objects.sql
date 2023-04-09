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

INSERT INTO objects (id, address, type, area, rooms, price, description, photos, date_added)
VALUES
(1, '123 Main St, Anytown, USA', 'House', 2500, 4, 500000, 'Beautiful 4 bedroom, 2 bathroom house in Anytown.', 'https://example.com/photo1.jpg,https://example.com/photo2.jpg', '2022-03-01'),
(2, '456 Oak St, Anytown, USA', 'Apartment', 900, 2, 200000, 'Cozy 2 bedroom apartment in downtown Anytown.', 'https://example.com/photo3.jpg,https://example.com/photo4.jpg', '2022-02-15'),
(3, '789 Pine St, Anytown, USA', 'Condo', 1200, 3, 350000, 'Spacious 3 bedroom condo with stunning views.', 'https://example.com/photo5.jpg,https://example.com/photo6.jpg', '2022-03-10'),
(4, '321 Maple St, Anytown, USA', 'House', 1800, 3, 400000, 'Lovely 3 bedroom, 2 bathroom house in quiet area.', 'https://example.com/photo7.jpg,https://example.com/photo8.jpg', '2022-03-05'),
(5, '111 Cherry St, Anytown, USA', 'Apartment', 800, 1, 150000, 'Quaint 1 bedroom apartment near the park.', 'https://example.com/photo9.jpg,https://example.com/photo10.jpg', '2022-02-28'),
(6, '222 Birch St, Anytown, USA', 'Condo', 1000, 2, 300000, 'Modern 2 bedroom condo with city views.', 'https://example.com/photo11.jpg,https://example.com/photo12.jpg', '2022-03-02'),
(7, '333 Elm St, Anytown, USA', 'House', 2200, 5, 600000, 'Spacious 5 bedroom, 3 bathroom house in Anytown.', 'https://example.com/photo13.jpg,https://example.com/photo14.jpg', '2022-03-08'),
(8, '444 Walnut St, Anytown, USA', 'Apartment', 1000, 2, 175000, 'Affordable 2 bedroom apartment in downtown.', 'https://example.com/photo15.jpg,https://example.com/photo16.jpg', '2022-03-04'),
(9, '555 Cedar St, Anytown, USA', 'Condo', 1500, 3, 400000, 'Luxury 3 bedroom condo in prestigious building.', 'https://example.com/photo17.jpg,https://example.com/photo18.jpg', '2022-03-03'),
(10, '666 Pine St, Anytown, USA', 'House', 2800, 4, 700000, 'Stunning 4 bedroom, 4 bathroom house with pool.', 'https://example.com/photo19.jpg,https://example.com/photo20.jpg', '2022-03-09');



alter table objects
    owner to postgres;

