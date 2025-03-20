--liquibase formatted sql

--changeset amalik:add_country
ALTER TABLE SALES
    ADD COUNTRY varchar (100);

