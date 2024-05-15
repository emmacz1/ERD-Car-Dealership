-- insert salespersons
insert into salesperson (salespersonid, name, contactinfo) values (1, 'john doe', 'john@example.com');
insert into salesperson (salespersonid, name, contactinfo) values (2, 'jane smith', 'jane@example.com');

-- insert customers
insert into customer (customerid, name, contactinfo) values (1, 'alice brown', 'alice@example.com');
insert into customer (customerid, name, contactinfo) values (2, 'bob johnson', 'bob@example.com');

-- insert cars
insert into car (carid, serialnumber, model, make, year, salespersonid, customerid) values (1, 'sn123', 'model x', 'tesla', 2020, 1, 1);
insert into car (carid, serialnumber, model, make, year, salespersonid, customerid) values (2, 'sn456', 'mustang', 'ford', 2019, 2, 2);

-- insert invoices
insert into invoice (invoiceid, date, amount, salespersonid, customerid, carid) values (1, '2024-05-01', 50000, 1, 1, 1);
insert into invoice (invoiceid, date, amount, salespersonid, customerid, carid) values (2, '2024-05-02', 40000, 2, 2, 2);

-- insert service tickets
insert into serviceticket (serviceticketid, date, description, customerid, carid) values (1, '2024-05-05', 'oil change', 1, 1);
insert into serviceticket (serviceticketid, date, description, customerid, carid) values (2, '2024-05-06', 'tire replacement', 2, 2);

-- insert mechanics
insert into mechanic (mechanicid, name, contactinfo) values (1, 'mike wheeler', 'mike@example.com');
insert into mechanic (mechanicid, name, contactinfo) values (2, 'sara green', 'sara@example.com');

-- insert parts
insert into part (partid, name, cost) values (1, 'oil filter', 30);
insert into part (partid, name, cost) values (2, 'tire', 100);

-- insert serviceticketmechanic
insert into serviceticketmechanic (serviceticketid, mechanicid) values (1, 1);
insert into serviceticketmechanic (serviceticketid, mechanicid) values (2, 2);

-- insert serviceticketpart
insert into serviceticketpart (serviceticketid, partid) values (1, 1);
insert into serviceticketpart (serviceticketid, partid) values (2, 2);
