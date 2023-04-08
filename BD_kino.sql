
CREATE TABLE objects (
  id SERIAL PRIMARY KEY, -- Уникальный идентификатор объекта недвижимости
  address VARCHAR(100), -- Адрес объекта недвижимости
  type VARCHAR(50), -- Тип объекта недвижимости
  area FLOAT, -- Площадь объекта недвижимости
  rooms INT, -- Количество комнат в объекте недвижимости
  price FLOAT, -- Стоимость объекта недвижимости
  description TEXT, -- Описание объекта недвижимости
  photos VARCHAR(255), -- Фотографии объекта недвижимости
  date_added DATE -- Дата добавления объекта недвижимости в БД
);

CREATE TABLE users (
  id SERIAL PRIMARY KEY, -- Уникальный идентификатор покупателя
  name VARCHAR(50), -- Имя покупателя
  email VARCHAR(100), -- Email адрес покупателя
  password VARCHAR(255), -- Зашифрованный пароль покупателя
  phone VARCHAR(20), -- Номер телефона покупателя
  budget FLOAT, -- Бюджет покупателя для недвижимости
  location VARCHAR(50), -- Местоположение покупателя
  preferences VARCHAR(255) -- Предпочтения покупателя
);

CREATE TABLE agents (
  id SERIAL PRIMARY KEY, -- Уникальный идентификатор риелтора
  name VARCHAR(50), -- Имя риелтора
  email VARCHAR(100), -- Email адрес риелтора
  phone VARCHAR(20), -- Номер телефона риелтора
  experience INT, -- Стаж работы риелтора
  education VARCHAR(100), -- Образование риелтора
  salary FLOAT -- Зарплата риелтора
);

CREATE TABLE listings (
  id SERIAL PRIMARY KEY, -- Уникальный идентификатор элемента списка
  object_id INT REFERENCES objects(id), -- Идентификатор объекта недвижимости, связанного с элементом списка
  name VARCHAR(50), -- Короткое название элемента списка
  type VARCHAR(20), -- Тип объекта недвижимости, связанного с элементом списка
  price FLOAT, -- Стоимость объекта недвижимости, связанного с элементом списка
  address VARCHAR(100), -- Адрес объекта недвижимости, связанного с элементом списка
  thumbnail VARCHAR(100), -- Миниатюра объекта недвижимости, связанного с элементом списка
  user_id INT REFERENCES users(id) -- Идентификатор пользователя, связанного с элементом списка
);

CREATE TABLE purchases (
  id SERIAL PRIMARY KEY, -- Уникальный идентификатор сделки
  object_id INT REFERENCES objects(id), -- Идентификатор объекта недвижимости, связанного со сделкой
  user_id INT REFERENCES users(id), -- Идентификатор пользователя, который купил объект недвижимости
  agent_id INT REFERENCES agents(id), -- Идентификатор агента по недвижимости, который управлял продажей объекта недвижимости
  price FLOAT, -- Стоимость продажи объекта недвижимости
  date DATE -- Дата завершения сделки
);