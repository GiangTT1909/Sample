CREATE TABLE PRODUCT_CATALOG (
  ID VARCHAR(255) NOT NULL,
  NAME VARCHAR(255),
  DESCRIPTION VARCHAR(4000),
  PRIMARY KEY (ID)
);

CREATE TABLE PRODUCT (
  ID VARCHAR(255) NOT NULL,
  NAME VARCHAR(255),
  DESCRIPTION VARCHAR(4000),
  EFFECTIVE_DATE DATE NOT NULL,
  EXPIRATION_DATE DATE,
  UNIT_PRICE DECIMAL(19, 2),
  PRODUCT_CATALOG_ID VARCHAR(255) NOT NULL,
  PRIMARY KEY (ID)
);

ALTER TABLE PRODUCT
  ADD CONSTRAINT PRODUCT_CATALOG_ID_FK_01
  FOREIGN KEY (PRODUCT_CATALOG_ID) 
  REFERENCES PRODUCT_CATALOG(ID);

CREATE TABLE ORDER_ITEM (
  ID VARCHAR(255) NOT NULL,
  CUSTOMER_ID VARCHAR(255) NOT NULL,
  PRODUCT VARCHAR(255) NOT NULL,
  PRODUCT_CATALOG VARCHAR(255) NOT NULL,
  ORDER_DATE DATE NOT NULL,
  QUANTITY INT,
  UNIT_PRICE DECIMAL(19, 2),
  PRIMARY KEY (ID)
);
  