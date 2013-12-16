###############################################
#Default table
###############################################

CREATE TABLE "CONTACTS" 
   (	"ID" NUMBER(*,0), 
	"FIRSTNAME" VARCHAR2(30 BYTE), 
	"LASTNAME" VARCHAR2(30 BYTE), 
	"TELEPHONE" VARCHAR2(15 BYTE), 
	"EMAIL" VARCHAR2(30 BYTE), 
	"CREATED" TIMESTAMP (6) DEFAULT sysdate, 
	 PRIMARY KEY ("ID")
   );
   
   
###############################################
#Default data
###############################################

Insert into CONTACTS (ID,FIRSTNAME,LASTNAME,TELEPHONE,EMAIL,CREATED) values ('4','Guillermo','Wolf','7221324324','gjgw@mialcancia.com.mx',to_timestamp('16/12/13 10:56:23,000000000','DD/MM/RR HH24:MI:SSXFF'));
Insert into CONTACTS (ID,FIRSTNAME,LASTNAME,TELEPHONE,EMAIL,CREATED) values ('2','Jose Eduardo','Gonzalez Chavira','8486470201','eduardo.gch@gmail.com',to_timestamp('16/12/13 10:55:15,000000000','DD/MM/RR HH24:MI:SSXFF'));
Insert into CONTACTS (ID,FIRSTNAME,LASTNAME,TELEPHONE,EMAIL,CREATED) values ('3','Lidia','Romero','527222105285','lidianrol@gmail.com',to_timestamp('16/12/13 10:55:53,000000000','DD/MM/RR HH24:MI:SSXFF'));
Insert into CONTACTS (ID,FIRSTNAME,LASTNAME,TELEPHONE,EMAIL,CREATED) values ('5','Gloria','Cahvira','722243424','gloria.chavira@gmail.com',to_timestamp('16/12/13 10:56:47,000000000','DD/MM/RR HH24:MI:SSXFF'));

   
###############################################   
# Default autoincrement in hiberante   
###############################################

CREATE SEQUENCE  "HIBERNATE_SEQUENCE"  
MINVALUE 0 MAXVALUE 999999999999999999999999999 
INCREMENT BY 1 START WITH 21 CACHE 20 NOORDER  NOCYCLE;
 
