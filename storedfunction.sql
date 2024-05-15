-- function to insert a new car
create function insert_new_car(serial varchar(100), model varchar(100), make varchar(100), year int, salesperson int, customer int) returns void as $$
begin
    insert into car (serialnumber, model, make, year, salespersonid, customerid)
    values (serial, model, make, year, salesperson, customer);
end;
$$ language plpgsql;

-- function to insert a new service ticket
create function insert_service_ticket(date date, description text, customer int, car int) returns void as $$
begin
    insert into serviceticket (date, description, customerid, carid)
    values (date, description, customer, car);
end;
$$ language plpgsql;