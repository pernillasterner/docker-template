CREATE TABLE employees
(
    id SERIAL,
    name text,
    title text,
    CONSTRAINT employees_pkey PRIMARY KEY (id)
);

INSERT INTO employees(name, title) VALUES 
('Crystal', 'Crystal title'),
('Social', 'Social title'),
('Marketing', 'Marketing title');