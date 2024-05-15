create table salesperson (
    salespersonid int primary key,
    name varchar(100),
    contactinfo varchar(255)
);

create table customer (
    customerid int primary key,
    name varchar(100),
    contactinfo varchar(255)
);

create table car (
    carid int primary key,
    serialnumber varchar(100) unique,
    model varchar(100),
    make varchar(100),
    year int,
    salespersonid int,
    customerid int,
    foreign key (salespersonid) references salesperson(salespersonid),
    foreign key (customerid) references customer(customerid)
);

create table invoice (
    invoiceid int primary key,
    date date,
    amount decimal(10, 2),
    salespersonid int,
    customerid int,
    carid int,
    foreign key (salespersonid) references salesperson(salespersonid),
    foreign key (customerid) references customer(customerid),
    foreign key (carid) references car(carid)
);

create table serviceticket (
    serviceticketid int primary key,
    date date,
    description text,
    customerid int,
    carid int,
    foreign key (customerid) references customer(customerid),
    foreign key (carid) references car(carid)
);

create table mechanic (
    mechanicid int primary key,
    name varchar(100),
    contactinfo varchar(255)
);

create table part (
    partid int primary key,
    name varchar(100),
    cost decimal(10, 2)
);

create table serviceticketmechanic (
    serviceticketid int,
    mechanicid int,
    primary key (serviceticketid, mechanicid),
    foreign key (serviceticketid) references serviceticket(serviceticketid),
    foreign key (mechanicid) references mechanic(mechanicid)
);

create table serviceticketpart (
    serviceticketid int,
    partid int,
    primary key (serviceticketid, partid),
    foreign key (serviceticketid) references serviceticket(serviceticketid),
    foreign key (partid) references part(partid)
);
