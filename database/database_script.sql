/*
Model: PostgreSQL 12
Database: PostgreSQL 12
*/

-- Create tables section --

---New test user tables---
--TODO


---END New test user tables ---

-- Table Publishers

CREATE TABLE Publishers
(
  publisher_id serial NOT NULL,
  name Character varying(40) NOT NULL,
  short_description Character varying(1000) NOT NULL,
  long_description Text,
  establishment_date Timestamp NOT NULL
);


ALTER TABLE Publishers ADD CONSTRAINT publishers_pk PRIMARY KEY (publisher_id)
;

-- Table Products

CREATE TABLE Products
(
  product_id serial NOT NULL,
  title Character varying(80) NOT NULL,
  short_description Character varying(1000),
  long_description Text,
  price Numeric(8,2) NOT NULL,
  available_quantity Integer NOT NULL,
  establishment_year Timestamp NOT NULL,
  publisher_id Integer NOT NULL
);


CREATE INDEX idx_products_publisher_id ON Products (publisher_id)
;

CREATE INDEX idx_products_title ON Products (title)
;

ALTER TABLE Products ADD CONSTRAINT products_pk PRIMARY KEY (product_id)
;

-- Table Order_Positions

CREATE TABLE Order_Positions
(
  order_position_id serial NOT NULL,
  quantity Integer NOT NULL,
  product_id Integer NOT NULL,
  cart_id Integer,
  order_id Integer
);


CREATE INDEX idx_order_pos_product_id ON Order_Positions (product_id)
;

CREATE INDEX idx_order_pos_cart_id ON Order_Positions (cart_id)
;

CREATE INDEX idx_order_pos_order_id ON Order_Positions (order_id)
;

ALTER TABLE Order_Positions ADD CONSTRAINT order_positions_pk PRIMARY KEY (order_position_id)
;

-- Table Carts

CREATE TABLE Carts
(
  cart_id Integer NOT NULL,
  creation_date Timestamp NOT NULL,
  client_id Integer NOT NULL
);


ALTER TABLE Carts ADD CONSTRAINT carts_pk PRIMARY KEY (cart_id)
;

CREATE INDEX idx_carts_client_id ON Carts (client_id)
;

-- Table Clients

CREATE TABLE Clients
(
  client_id serial NOT NULL,
  first_name Character varying(40),
  last_name Character varying(40),
  company_name Character varying(80),
  nip Character varying(12),
  phone_number Character(15) NOT NULL,
  email Character varying(40) NOT NULL,
  loyalty_card boolean NOT NULL,
  newsletter_agreement boolean NOT NULL,
  address_id Integer NOT NULL
);


ALTER TABLE Clients ADD CONSTRAINT clients_pk PRIMARY KEY (client_id)
;

CREATE INDEX idx_clients_names ON Clients (first_name, last_name)
;

CREATE INDEX idx_clients_address_id ON Clients (address_id)
;

-- Table Orders

CREATE TABLE Orders
(
  order_id serial NOT NULL,
  creation_time Timestamp NOT NULL,
  order_price Numeric(8,2) NOT NULL,
  status Character varying(40) NOT NULL,
  invoice_date Timestamp,
  client_id Integer NOT NULL,
  discount_id Integer,
  employee_id Integer,
  address_id Integer NOT NULL
);


CREATE INDEX idx_orders_client_id ON Orders (client_id)
;

CREATE INDEX idx_orders_discount_id ON Orders (discount_id)
;

CREATE INDEX idx_orders_employee_id ON Orders (employee_id)
;

CREATE INDEX idx_orders_address_id ON Orders (address_id)
;

ALTER TABLE Orders ADD CONSTRAINT orders_pk PRIMARY KEY (order_id)
;

-- Table Shipments

CREATE TABLE Shipments
(
  shipment_id serial NOT NULL,
  send_date Timestamp NOT NULL,
  shipment_cost Numeric(8,2),
  client_cost Numeric(8,2),
  shipment_type Character varying(80) NOT NULL,
  order_id Integer NOT NULL
);


CREATE INDEX idx_shipments_order_id ON Shipments (order_id)
;

ALTER TABLE Shipments ADD CONSTRAINT shipments_pk PRIMARY KEY (shipment_id)
;

-- Table Delivery_Companies

CREATE TABLE Delivery_Companies
(
  company_id serial NOT NULL,
  name Character varying(80) NOT NULL
);


ALTER TABLE Delivery_Companies ADD CONSTRAINT delivery_companies_pk PRIMARY KEY (company_id)
;

-- Table Discounts

CREATE TABLE Discounts
(
  discount_id serial NOT NULL,
  discount_code Character varying(15) NOT NULL,
  start_date Timestamp NOT NULL,
  end_date Timestamp,
  percentage Numeric(2,0)
);


ALTER TABLE Discounts ADD CONSTRAINT discounts_pk PRIMARY KEY (discount_id)
;

-- Table Employees

CREATE TABLE Employees
(
  employee_id serial NOT NULL,
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


CREATE INDEX idx_emp_storehouse_id ON Employees (storehouse_id)
;

CREATE INDEX idx_emp_address_id ON Employees (address_id)
;

ALTER TABLE Employees ADD CONSTRAINT employees_pk PRIMARY KEY (employee_id)
;

-- Table Addresses

CREATE TABLE Addresses
(
  address_id serial NOT NULL,
  street Character varying(80),
  building_no Character varying(12),
  apartament_no Character varying(12),
  city Character varying(40) NOT NULL,
  country Character varying(40) NOT NULL,
  post_code Character varying(9) NOT NULL
);


ALTER TABLE Addresses ADD CONSTRAINT addresses_pk PRIMARY KEY (address_id)
;

-- Table Store_Houses

CREATE TABLE Store_Houses
(
  storehouse_id serial NOT NULL,
  surface Integer NOT NULL
);


ALTER TABLE Store_Houses ADD CONSTRAINT store_houses_pk PRIMARY KEY (storehouse_id)
;

-- Table Bookstores

CREATE TABLE Bookstores
(
  bookstore_id serial NOT NULL,
  name Character varying(80) NOT NULL,
  company_name Character varying(80) NOT NULL,
  nip Character varying(12) NOT NULL,
  establishment_year Timestamp NOT NULL,
  address_id Integer NOT NULL
);

CREATE INDEX idx_bookstore_address_id ON Employees (address_id)
;

ALTER TABLE Bookstores ADD CONSTRAINT bookstores_pk PRIMARY KEY (bookstore_id)
;

-- Table Genres

CREATE TABLE Genres
(
  genre_id serial NOT NULL,
  name Character varying(40) NOT NULL,
  description Character varying(1000) NOT NULL
);


ALTER TABLE Genres ADD CONSTRAINT genres_pk PRIMARY KEY (genre_id)
;

-- Table Products_Store_Houses

CREATE TABLE Products_Store_Houses
(
  product_id Integer NOT NULL,
  storehouse_id Integer NOT NULL
);


ALTER TABLE Products_Store_Houses ADD CONSTRAINT Products_Store_Houses_pk PRIMARY KEY (product_id, storehouse_id)
;

-- Table Authors

CREATE TABLE Authors
(
  author_id serial NOT NULL,
  first_name Character varying(40) NOT NULL,
  last_name Character varying(40) NOT NULL
);

CREATE INDEX idx_authors_names ON Authors (first_name, last_name)
;


ALTER TABLE Authors ADD CONSTRAINT PK_Authors PRIMARY KEY (author_id)
;

-- Table Authors_Products

CREATE TABLE Authors_Products
(
  author_id Integer NOT NULL,
  product_id Integer NOT NULL
);


ALTER TABLE Authors_Products ADD CONSTRAINT Authors_Products_PK PRIMARY KEY (author_id, product_id)
;

-- Table Genres_Products

CREATE TABLE Genres_Products
(
  genre_id Integer NOT NULL,
  product_id Integer NOT NULL
);


ALTER TABLE Genres_Products ADD CONSTRAINT Genres_Products_pk PRIMARY KEY (genre_id, product_id)
;

-- Create foreign keys (relationships) section -------------------------------------------------

ALTER TABLE Genres_Products
  ADD CONSTRAINT Products_Genres_Products_fk
    FOREIGN KEY (product_id)
    REFERENCES Products (product_id)
      ON DELETE NO ACTION
      ON UPDATE NO ACTION
;

ALTER TABLE Genres_Products
  ADD CONSTRAINT Genres_Genres_Products_fk
    FOREIGN KEY (genre_id)
    REFERENCES Genres (genre_id)
      ON DELETE NO ACTION
      ON UPDATE NO ACTION
;

ALTER TABLE Products_Store_Houses
  ADD CONSTRAINT Store_Houses_Products_Store_Houses_fk
    FOREIGN KEY (storehouse_id)
    REFERENCES Store_Houses (storehouse_id)
      ON DELETE NO ACTION
      ON UPDATE NO ACTION
;

ALTER TABLE Authors_Products
  ADD CONSTRAINT Products_Authors_Products_fk
    FOREIGN KEY (product_id)
    REFERENCES Products (product_id)
      ON DELETE NO ACTION
      ON UPDATE NO ACTION
;

ALTER TABLE Authors_Products
  ADD CONSTRAINT Authors_Authors_Products_fk
    FOREIGN KEY (author_id)
    REFERENCES Authors (author_id)
      ON DELETE NO ACTION
      ON UPDATE NO ACTION
;

ALTER TABLE Products_Store_Houses
  ADD CONSTRAINT Products_Products_Store_Houses_fk
    FOREIGN KEY (product_id)
    REFERENCES Products (product_id)
      ON DELETE NO ACTION
      ON UPDATE NO ACTION
;

ALTER TABLE Bookstores
  ADD CONSTRAINT bookstores_addresses_fk
    FOREIGN KEY (address_id)
    REFERENCES Addresses (address_id)
      ON DELETE NO ACTION
      ON UPDATE NO ACTION
;

ALTER TABLE Employees
  ADD CONSTRAINT employees_addresses_fk
    FOREIGN KEY (address_id)
    REFERENCES Addresses (address_id)
      ON DELETE NO ACTION
      ON UPDATE NO ACTION
;

ALTER TABLE Employees
  ADD CONSTRAINT employees_store_houses_fk
    FOREIGN KEY (storehouse_id)
    REFERENCES Store_Houses (storehouse_id)
      ON DELETE NO ACTION
      ON UPDATE NO ACTION
;

ALTER TABLE Orders
  ADD CONSTRAINT orders_employees_fk
    FOREIGN KEY (employee_id)
    REFERENCES Employees (employee_id)
      ON DELETE NO ACTION
      ON UPDATE NO ACTION
;

ALTER TABLE Orders
  ADD CONSTRAINT orders_discounts_fk
    FOREIGN KEY (discount_id)
    REFERENCES Discounts (discount_id)
      ON DELETE NO ACTION
      ON UPDATE NO ACTION
;

ALTER TABLE Shipments
  ADD CONSTRAINT shipments_orders_fk
    FOREIGN KEY (order_id)
    REFERENCES Orders (order_id)
      ON DELETE NO ACTION
      ON UPDATE NO ACTION
;

ALTER TABLE Order_Positions
  ADD CONSTRAINT order_positions_orders_fk
    FOREIGN KEY (order_id)
    REFERENCES Orders (order_id)
      ON DELETE NO ACTION
      ON UPDATE NO ACTION
;

ALTER TABLE Orders
  ADD CONSTRAINT orders_clients_fk
    FOREIGN KEY (client_id)
    REFERENCES Clients (client_id)
      ON DELETE NO ACTION
      ON UPDATE NO ACTION
;

ALTER TABLE Carts
  ADD CONSTRAINT carts_clients_fk
    FOREIGN KEY (client_id)
    REFERENCES Clients (client_id)
      ON DELETE NO ACTION
      ON UPDATE NO ACTION
;


ALTER TABLE Order_Positions
  ADD CONSTRAINT order_positions_products_fk
    FOREIGN KEY (product_id)
    REFERENCES Products (product_id)
      ON DELETE NO ACTION
      ON UPDATE NO ACTION
;

ALTER TABLE Products
  ADD CONSTRAINT products_publishers_fk
    FOREIGN KEY (publisher_id)
    REFERENCES Publishers (publisher_id)
      ON DELETE NO ACTION
      ON UPDATE NO ACTION
;

