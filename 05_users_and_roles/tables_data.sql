use role ice_cream_writer;

use warehouse dev_wh;

use schema ice_cream_db.public;


create table falvors(
    falvor_id INT AUTOINCREMENT,
    flavor_name string,
    price decimal(5,2),
    primary key (falvor_id)
);

create table customers(
    customer_id int autoincrement,
    customer_name string,
    email string,
    primary key (customer_id)
);

create table transactions(
    transcation_id int autoincrement,
    customer_id int,
    falvor_id int,
    quantity int,
    transcation_date timestamp,
    primary key (transcation_id),
    foreign key (customer_id) references customers (customer_id),
    foreign key (falvor_id) references falvors(falvor_id)
);

INSERT INTO falvors (flavor_name, price) VALUES
('Vanilla', 2.50),
('Chocolate', 2.75),
('Strawberry', 2.50),
('Mint Chocolate Chip', 3.00),
('Cookie Dough', 3.25);

INSERT INTO customers (customer_name, email) VALUES
('John Doe', 'john.doe@example.com'),
('Jane Smith', 'jane.smith@example.com'),
('Alice Johnson', 'alice.johnson@example.com');

INSERT INTO transactions (customer_id, falvor_id, quantity, transcation_date
) VALUES
(1, 1, 2, CURRENT_TIMESTAMP),
(2, 2, 1, CURRENT_TIMESTAMP),
(3, 3, 3, CURRENT_TIMESTAMP),
(1, 4, 1, CURRENT_TIMESTAMP),
(2, 5, 2, CURRENT_TIMESTAMP);

select * from falvors;
select * from customers;

use role ice_cream_reader;

select * from transactions;

show grants to role ice_cream_reader;


use role ice_cream_analyst;

use warehouse dev_wh;

create table if not exists customers(
    customer_id int autoincrement,
    customer_name string,
    email string,
    primary key(customer_id)
);


