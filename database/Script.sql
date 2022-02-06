/*
Created: 2022-01-11
Modified: 2022-01-11
Model: PostgreSQL 12
Database: PostgreSQL 12
*/

-- Create tables section -------------------------------------------------

-- Table Publishers

CREATE TABLE Publishers
(
  publisher_id Integer NOT NULL,
  name Character varying(40) NOT NULL,
  short_description Character varying(1000) NOT NULL,
  long_description Text,
  establishment_date Timestamp NOT NULL
);


ALTER TABLE Publishers ADD CONSTRAINT Publishers_PK PRIMARY KEY (publisher_id)
;

-- Table Products

CREATE TABLE Products
(
  product_id Integer NOT NULL,
  title Character varying(80) NOT NULL,
  short_description Character varying(1000),
  long_description Text,
  price Numeric(8,2) NOT NULL,
  available_quantity Integer NOT NULL,
  establishment_year Timestamp NOT NULL,
  publisher_id Integer NOT NULL
);


CREATE INDEX IX_are_published_by ON Products (publisher_id)
;

ALTER TABLE Products ADD CONSTRAINT Products_PK PRIMARY KEY (product_id)
;

-- Table Order_Positions

CREATE TABLE Order_Positions
(
  order_position_id Integer NOT NULL,
  quantity Integer NOT NULL,
  product_id Integer NOT NULL,
  cart_id Integer NOT NULL,
  client_id Integer,
  order_id Integer NOT NULL
);


CREATE INDEX IX_include ON Order_Positions (product_id)
;

CREATE INDEX IX_are_listed_in ON Order_Positions (cart_id,client_id)
;

CREATE INDEX IX_are_included_in ON Order_Positions (order_id)
;

ALTER TABLE Order_Positions ADD CONSTRAINT Order_Positions_PK PRIMARY KEY (order_position_id)
;

-- Table Carts

CREATE TABLE Carts
(
  cart_id Integer NOT NULL,
  creation_date Timestamp NOT NULL,
  client_id Integer NOT NULL
);


ALTER TABLE Carts ADD CONSTRAINT Carts_PK PRIMARY KEY (cart_id,client_id)
;

-- Table Clients

CREATE TABLE Clients
(
  client_id Integer NOT NULL,
  first_name Character varying(40),
  last_name Character varying(40),
  company_name Character varying(80),
  nip Character varying(12),
  phone_number Character(15) NOT NULL,
  email Character varying(40) NOT NULL,
  loyalty_card Character(1) NOT NULL,
  newsletter_agreement Character(1) NOT NULL,
  address_id Integer NOT NULL
);


ALTER TABLE Clients ADD CONSTRAINT Clients_PK PRIMARY KEY (client_id)
;

-- Table Orders

CREATE TABLE Orders
(
  order_id Integer NOT NULL,
  creation_time Timestamp NOT NULL,
  order_price Numeric(8,2) NOT NULL,
  status Character varying(40) NOT NULL,
  invoice_date Timestamp NOT NULL,
  client_id Integer NOT NULL,
  discount_id Integer NOT NULL,
  employee_id Integer NOT NULL,
  address_id Integer
);


CREATE INDEX IX_are_created_by ON Orders (client_id)
;

CREATE INDEX IX_are_affected_by ON Orders (discount_id)
;

CREATE INDEX IX_are_handled_by ON Orders (employee_id, address_id)
;

ALTER TABLE Orders ADD CONSTRAINT Order_PK PRIMARY KEY (order_id)
;

-- Table Shipments

CREATE TABLE Shipments
(
  shipment_id Integer NOT NULL,
  send_date Timestamp NOT NULL,
  shipment_cost Numeric(8,2),
  client_cost Numeric(8,2),
  shipment_type Character varying(80) NOT NULL,
  order_id Integer NOT NULL
);


CREATE INDEX IX_contain ON Shipments (order_id)
;

ALTER TABLE Shipments ADD CONSTRAINT Shipment_PK PRIMARY KEY (shipment_id)
;

-- Table Delivery_Companies

CREATE TABLE Delivery_Companies
(
  company_id Integer NOT NULL,
  name Character varying(80) NOT NULL,
  shipment_id Integer NOT NULL
);


CREATE INDEX IX_deliver ON Delivery_Companies (shipment_id)
;

ALTER TABLE Delivery_Companies ADD CONSTRAINT Delivery_Companies_PK PRIMARY KEY (company_id)
;

-- Table Discounts

CREATE TABLE Discounts
(
  discount_id Integer NOT NULL,
  discount_code Character varying(15) NOT NULL,
  start_date Timestamp NOT NULL,
  end_date Timestamp,
  percentage Numeric(2,0)
);


ALTER TABLE Discounts ADD CONSTRAINT Discounts_PK PRIMARY KEY (discount_id)
;

-- Table Employees

CREATE TABLE Employees
(
  employee_id Integer NOT NULL,
  first_name Character varying(40) NOT NULL,
  last_name Character varying(40) NOT NULL,
  PESEL Character(11),
  position Character varying(40),
  date_of_birth Timestamp NOT NULL,
  phone_number Character(15),
  employee_phone_number Character(15),
  email Character varying(40),
  employee_email Character varying(40) NOT NULL,
  storehouse_id Integer NOT NULL,
  address_id Integer NOT NULL
);


CREATE INDEX IX_work_at ON Employees (storehouse_id)
;

ALTER TABLE Employees ADD CONSTRAINT Employees_PK PRIMARY KEY (employee_id,address_id)
;

-- Table Addresses

CREATE TABLE Addresses
(
  address_id Integer NOT NULL,
  street Character varying(80),
  city Character varying(40) NOT NULL,
  country Character varying(40) NOT NULL,
  post_code Character varying(9) NOT NULL
);


ALTER TABLE Addresses ADD CONSTRAINT Addresses_PK PRIMARY KEY (address_id)
;

-- Table Store_Houses

CREATE TABLE Store_Houses
(
  storehouse_id Integer NOT NULL,
  surface Integer NOT NULL
);


ALTER TABLE Store_Houses ADD CONSTRAINT Store_Houses_PK PRIMARY KEY (storehouse_id)
;

-- Table Bookstores

CREATE TABLE Bookstores
(
  bookstore_id Integer NOT NULL,
  name Character varying(80) NOT NULL,
  company_name Character varying(80) NOT NULL,
  nip Character varying(12) NOT NULL,
  establishment_year Timestamp NOT NULL,
  address_id Integer NOT NULL
);


ALTER TABLE Bookstores ADD CONSTRAINT Bookstores_PK PRIMARY KEY (bookstore_id,address_id)
;

-- Table Genres

CREATE TABLE Genres
(
  genre_id Integer NOT NULL,
  name Character varying(40) NOT NULL,
  description Character varying(1000) NOT NULL
);


ALTER TABLE Genres ADD CONSTRAINT Genres_PK PRIMARY KEY (genre_id)
;

-- Table Products_Store_Houses

CREATE TABLE Products_Store_Houses
(
  product_id Integer NOT NULL,
  storehouse_id Integer NOT NULL
);


ALTER TABLE Products_Store_Houses ADD CONSTRAINT Products_Store_Houses_PK PRIMARY KEY (product_id, storehouse_id)
;

-- Table Authors

CREATE TABLE Authors
(
  author_id Integer NOT NULL,
  first_name Character varying(40) NOT NULL,
  last_name Character varying(40) NOT NULL
);


ALTER TABLE Authors ADD CONSTRAINT Authors_PK PRIMARY KEY (author_id)
;

-- Table Authors_Products

CREATE TABLE Authors_Products
(
  author_id Integer NOT NULL,
  product_id Integer NOT NULL
);


ALTER TABLE Authors_Products ADD CONSTRAINT Authors_Products_PK PRIMARY KEY (author_id,product_id)
;

-- Table Genres_Products

CREATE TABLE Genres_Products
(
  genre_id Integer NOT NULL,
  product_id Integer NOT NULL
);


ALTER TABLE Genres_Products ADD CONSTRAINT Genres_Products_PK PRIMARY KEY (genre_id,product_id)
;

-- Create foreign keys (relationships) section -------------------------------------------------

ALTER TABLE Genres_Products
  ADD CONSTRAINT Products_Genres_Products_FK
    FOREIGN KEY (product_id)
    REFERENCES Products (product_id)
      ON DELETE NO ACTION
      ON UPDATE NO ACTION
;

ALTER TABLE Genres_Products
  ADD CONSTRAINT Genres_Genres_Products_FK
    FOREIGN KEY (genre_id)
    REFERENCES Genres (genre_id)
      ON DELETE NO ACTION
      ON UPDATE NO ACTION
;

ALTER TABLE Products_Store_Houses
  ADD CONSTRAINT Store_Houses_Products_Store_Houses_FK
    FOREIGN KEY (storehouse_id)
    REFERENCES Store_Houses (storehouse_id)
      ON DELETE NO ACTION
      ON UPDATE NO ACTION
;

ALTER TABLE Delivery_Companies
  ADD CONSTRAINT Delivery_Companies_FK
    FOREIGN KEY (shipment_id)
    REFERENCES Shipments (shipment_id)
      ON DELETE NO ACTION
      ON UPDATE NO ACTION
;

ALTER TABLE Authors_Products
  ADD CONSTRAINT Products_Authors_Products_FK
    FOREIGN KEY (product_id)
    REFERENCES Products (product_id)
      ON DELETE NO ACTION
      ON UPDATE NO ACTION
;

ALTER TABLE Authors_Products
  ADD CONSTRAINT Authors_Authors_Products_FK
    FOREIGN KEY (author_id)
    REFERENCES Authors (author_id)
      ON DELETE NO ACTION
      ON UPDATE NO ACTION
;

ALTER TABLE Products_Store_Houses
  ADD CONSTRAINT Products_Products_Store_Houses_FK
    FOREIGN KEY (product_id)
    REFERENCES Products (product_id)
      ON DELETE NO ACTION
      ON UPDATE NO ACTION
;

ALTER TABLE Bookstores
  ADD CONSTRAINT Bookstores_FK
    FOREIGN KEY (address_id)
    REFERENCES Addresses (address_id)
      ON DELETE NO ACTION
      ON UPDATE NO ACTION
;

ALTER TABLE Employees
  ADD CONSTRAINT have
    FOREIGN KEY (address_id)
    REFERENCES Addresses (address_id)
      ON DELETE NO ACTION
      ON UPDATE NO ACTION
;

ALTER TABLE Employees
  ADD CONSTRAINT work_at
    FOREIGN KEY (storehouse_id)
    REFERENCES Store_Houses (storehouse_id)
      ON DELETE NO ACTION
      ON UPDATE NO ACTION
;


ALTER TABLE Orders
  ADD CONSTRAINT are_handled_by
    FOREIGN KEY (employee_id, address_id)
    REFERENCES Employees (employee_id, address_id)
      ON DELETE NO ACTION
      ON UPDATE NO ACTION
;

ALTER TABLE Orders
  ADD CONSTRAINT are_affected_by
    FOREIGN KEY (discount_id)
    REFERENCES Discounts (discount_id)
      ON DELETE NO ACTION
      ON UPDATE NO ACTION
;

ALTER TABLE Shipments
  ADD CONSTRAINT contain
    FOREIGN KEY (order_id)
    REFERENCES Orders (order_id)
      ON DELETE NO ACTION
      ON UPDATE NO ACTION
;

ALTER TABLE Order_Positions
  ADD CONSTRAINT are_included_in
    FOREIGN KEY (order_id)
    REFERENCES Orders (order_id)
      ON DELETE NO ACTION
      ON UPDATE NO ACTION
;

ALTER TABLE Orders
  ADD CONSTRAINT are_created_by
    FOREIGN KEY (client_id)
    REFERENCES Clients (client_id)
      ON DELETE NO ACTION
      ON UPDATE NO ACTION
;

ALTER TABLE Carts
  ADD CONSTRAINT possess
    FOREIGN KEY (client_id)
    REFERENCES Clients (client_id)
      ON DELETE NO ACTION
      ON UPDATE NO ACTION
;

ALTER TABLE Order_Positions
  ADD CONSTRAINT are_listed_in
    FOREIGN KEY (cart_id, client_id)
    REFERENCES Carts (cart_id, client_id)
      ON DELETE NO ACTION
      ON UPDATE NO ACTION
;

ALTER TABLE Order_Positions
  ADD CONSTRAINT include
    FOREIGN KEY (product_id)
    REFERENCES Products (product_id)
      ON DELETE NO ACTION
      ON UPDATE NO ACTION
;

ALTER TABLE Products
  ADD CONSTRAINT are_published_by
    FOREIGN KEY (publisher_id)
    REFERENCES Publishers (publisher_id)
      ON DELETE NO ACTION
      ON UPDATE NO ACTION
;