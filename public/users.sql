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

INSERT INTO users (name, email, password, phone, budget, location, preferences)
VALUES
  ('Иван Иванов', 'ivan@gmail.com', 'mypassword', '+7 (999) 123-45-67', 1000000, 'Москва', 'Квартира в центре'),
  ('Анна Смирнова', 'anna.smirnova@mail.ru', 'password123', '+7 (987) 654-32-10', 800000, 'Санкт-Петербург', 'Новостройки'),
  ('Михаил Петров', 'mikhail_petrov@yandex.ru', 'qwerty', '+7 (999) 888-77-66', 1500000, 'Краснодар', 'Дом за городом'),
  ('Екатерина Иванова', 'ekaterina_ivanova@gmail.com', '123456', '+7 (999) 111-22-33', 500000, 'Новосибирск', 'Квартира в новостройке'),
  ('Алексей Сидоров', 'aleksey_sidorov@mail.ru', 'qazxsw', '+7 (987) 765-43-21', 2000000, 'Екатеринбург', 'Элитная недвижимость'),
  ('Ольга Кузнецова', 'olga_kuznetsova@yandex.ru', 'mypassword123', '+7 (999) 777-66-55', 1200000, 'Ростов-на-Дону', 'Дом с участком'),
  ('Дмитрий Смирнов', 'dmitriy_smirnov@gmail.com', 'qwert1234', '+7 (999) 444-55-66', 900000, 'Казань', 'Студия в новостройке'),
  ('Мария Козлова', 'maria.kozlova@mail.ru', 'asdfgh', '+7 (987) 654-32-10', 700000, 'Сочи', 'Апартаменты на первой линии'),
  ('Игорь Васильев', 'igor.vasiliev@yandex.ru', 'mypassword321', '+7 (999) 888-77-66', 1800000, 'Нижний Новгород', 'Дом в загородном стиле'),
  ('Анна Морозова', 'anna_morozova@gmail.com', 'zxcvbn', '+7 (999) 111-22-33', 1000000, 'Владивосток', 'Квартира в новом доме');

alter table users
    owner to postgres;

