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

INSERT INTO agents (name, email, phone, experience, education, salary)
VALUES
  ('John Smith', 'jsmith@example.com', '+1 (555) 123-4567', 5, 'Bachelor of Science in Real Estate', 60000),
  ('Emma Johnson', 'ejohnson@example.com', '+1 (555) 987-6543', 8, 'Master of Science in Real Estate Management', 80000),
  ('David Kim', 'dkim@example.com', '+1 (555) 555-5555', 3, 'Bachelor of Arts in Business Administration', 45000),
  ('Rachel Lee', 'rlee@example.com', '+1 (555) 456-7890', 10, 'Bachelor of Science in Real Estate', 100000),
  ('Michael Chen', 'mchen@example.com', '+1 (555) 789-1234', 6, 'Bachelor of Arts in Economics', 55000),
  ('Olivia Brown', 'obrown@example.com', '+1 (555) 234-5678', 2, 'Bachelor of Science in Real Estate', 40000),
  ('William Davis', 'wdavis@example.com', '+1 (555) 876-5432', 4, 'Bachelor of Science in Real Estate', 50000),
  ('Sophia Rodriguez', 'srodriguez@example.com', '+1 (555) 321-6547', 7, 'Master of Science in Real Estate Management', 75000),
  ('Ethan Wilson', 'ewilson@example.com', '+1 (555) 432-7654', 9, 'Bachelor of Science in Real Estate', 90000),
  ('Isabella Martinez', 'imartinez@example.com', '+1 (555) 789-4561', 5, 'Bachelor of Arts in Business Administration', 55000);



alter table agents
    owner to postgres;

