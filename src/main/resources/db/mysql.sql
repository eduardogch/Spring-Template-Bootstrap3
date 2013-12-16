###############################################
#Default table
###############################################

CREATE TABLE `contacts` (
	`id` INT(11) NOT NULL AUTO_INCREMENT,
	`firstname` VARCHAR(30) NULL DEFAULT NULL,
	`lastname` VARCHAR(30) NULL DEFAULT NULL,
	`telephone` VARCHAR(15) NULL DEFAULT NULL,
	`email` VARCHAR(30) NULL DEFAULT NULL,
	`created` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
	PRIMARY KEY (`id`)
)

###############################################
#Default data
###############################################

Insert into CONTACTS (ID,FIRSTNAME,LASTNAME,TELEPHONE,EMAIL,CREATED) values ('4','Guillermo','Wolf','7221324324','gjgw@mialcancia.com.mx',to_timestamp('16/12/13 10:56:23,000000000','DD/MM/RR HH24:MI:SSXFF'));
Insert into CONTACTS (ID,FIRSTNAME,LASTNAME,TELEPHONE,EMAIL,CREATED) values ('2','Jose Eduardo','Gonzalez Chavira','8486470201','eduardo.gch@gmail.com',to_timestamp('16/12/13 10:55:15,000000000','DD/MM/RR HH24:MI:SSXFF'));
Insert into CONTACTS (ID,FIRSTNAME,LASTNAME,TELEPHONE,EMAIL,CREATED) values ('3','Lidia','Romero','527222105285','lidianrol@gmail.com',to_timestamp('16/12/13 10:55:53,000000000','DD/MM/RR HH24:MI:SSXFF'));
Insert into CONTACTS (ID,FIRSTNAME,LASTNAME,TELEPHONE,EMAIL,CREATED) values ('5','Gloria','Cahvira','722243424','gloria.chavira@gmail.com',to_timestamp('16/12/13 10:56:47,000000000','DD/MM/RR HH24:MI:SSXFF'));