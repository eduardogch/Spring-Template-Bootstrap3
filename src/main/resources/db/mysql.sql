###############################################
# Default CRUD table
###############################################

CREATE TABLE `contacts` (
	`id` INT(11) NOT NULL AUTO_INCREMENT,
	`firstname` VARCHAR(30) NULL DEFAULT NULL,
	`lastname` VARCHAR(30) NULL DEFAULT NULL,
	`telephone` VARCHAR(15) NULL DEFAULT NULL,
	`email` VARCHAR(30) NULL DEFAULT NULL,
	`created` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
	PRIMARY KEY (`id`)
);

###############################################
# Default CRUD data
###############################################

Insert into contacts (ID,FIRSTNAME,LASTNAME,TELEPHONE,EMAIL,CREATED) values ('4','Guillermo','Wolf','7221324324','gjgw@mialcancia.com.mx',now());
Insert into contacts (ID,FIRSTNAME,LASTNAME,TELEPHONE,EMAIL,CREATED) values ('2','Jose Eduardo','Gonzalez Chavira','8486470201','eduardo.gch@gmail.com',now());
Insert into contacts (ID,FIRSTNAME,LASTNAME,TELEPHONE,EMAIL,CREATED) values ('3','Lidia','Romero','527222105285','lidianrol@gmail.com',now());
Insert into contacts (ID,FIRSTNAME,LASTNAME,TELEPHONE,EMAIL,CREATED) values ('5','Gloria','Cahvira','722243424','gloria.chavira@gmail.com',now());

###############################################
# USER AND ROLES TABLES
###############################################

CREATE TABLE `users` (
	`USER_ID` INT(10) UNSIGNED NOT NULL,
	`USERNAME` VARCHAR(45) NOT NULL,
	`PASSWORD` VARCHAR(45) NOT NULL,
	`ENABLED` TINYINT(1) NOT NULL,
	PRIMARY KEY (`USER_ID`)
);

CREATE TABLE `user_roles` (
	`USER_ROLE_ID` INT(10) UNSIGNED NOT NULL,
	`USER_ID` INT(10) UNSIGNED NOT NULL,
	`AUTHORITY` VARCHAR(45) NOT NULL,
	PRIMARY KEY (`USER_ROLE_ID`),
	INDEX `FK_user_roles` (`USER_ID`),
	CONSTRAINT `FK_user_roles` FOREIGN KEY (`USER_ID`) REFERENCES `users` (`USER_ID`)
);

###############################################
# Default USER AND ROLES data
###############################################

INSERT INTO users (USER_ID, USERNAME,PASSWORD, ENABLED) VALUES (100, 'jose', '123', TRUE);
INSERT INTO user_roles (USER_ROLE_ID, USER_ID,AUTHORITY) VALUES (1, 100, 'ROLE_USER');