--liquibase formatted sql

--changeset amalik:employee
create table employee (
    id int primary key,
    name varchar(50) not null,
    address1 varchar(50),
    address2 varchar(50),
    city varchar(30)
);
--rollback drop table employee;

--changeset amalik:employee_addState
alter table employee
    add state varchar(5);
--rollback empty