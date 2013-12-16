###############################################   
# Default autoincrement in hiberante   
###############################################

CREATE SEQUENCE  "HIBERNATE_SEQUENCE"  
MINVALUE 0 MAXVALUE 999999999999999999999999999 
INCREMENT BY 1 START WITH 0 CACHE 20 NOORDER  NOCYCLE;

###############################################
# Default CRUD table
###############################################

CREATE TABLE "CONTACTS" (	
	"ID" NUMBER NOT NULL, 
	"FIRSTNAME" VARCHAR22(30), 
	"LASTNAME" VARCHAR22(30), 
	"TELEPHONE" VARCHAR22(15), 
	"EMAIL" VARCHAR22(30), 
	"CREATED" TIMESTAMP (6) DEFAULT sysdate, 
	 PRIMARY KEY ("ID")
);
   
###############################################
# Default CRUD data
###############################################

Insert into "CONTACTS" (ID,FIRSTNAME,LASTNAME,TELEPHONE,EMAIL) values ('1','Guillermo','Wolf','7221324324','gjgw@mialcancia.com.mx');
Insert into "CONTACTS" (ID,FIRSTNAME,LASTNAME,TELEPHONE,EMAIL) values ('2','Jose Eduardo','Gonzalez Chavira','8486470201','eduardo.gch@gmail.com');
Insert into "CONTACTS" (ID,FIRSTNAME,LASTNAME,TELEPHONE,EMAIL) values ('3','Lidia','Romero','527222105285','lidianrol@gmail.com');
Insert into "CONTACTS" (ID,FIRSTNAME,LASTNAME,TELEPHONE,EMAIL) values ('4','Gloria','Cahvira','722243424','gloria.chavira@gmail.com');
 
###############################################
# Default USER AND ROLES TABLES
###############################################

CREATE TABLE "users" (
	"USER_ID" NUMBER NOT NULL,
	"USERNAME" VARCHAR22(45) NOT NULL,
	"PASSWORD" VARCHAR22(45) NOT NULL,
	"ENABLED" NUMBER NOT NULL,
	PRIMARY KEY ("USER_ID")
);

CREATE TABLE "user_roles" (
	"USER_ROLE_ID" NUMBER NOT NULL,
	"USER_ID" NUMBER NOT NULL,
	"AUTHORITY" VARCHAR2(45) NOT NULL,
	PRIMARY KEY ("USER_ROLE_ID"),
	CONSTRAINT "FK_user_roles" FOREIGN KEY ("USER_ID") REFERENCES "users" ("USER_ID")
);

###############################################
# Default USER AND ROLES data
###############################################

INSERT INTO "users" (USER_ID,USERNAME,PASSWORD,ENABLED) VALUES (100, 'jose', '123', "1");
INSERT INTO "user_roles" (USER_ROLE_ID,USER_ID,AUTHORITY) VALUES (1, 100, 'ROLE_USER');