USE signup;

CREATE TABLE User (
  id bigint(20) NOT NULL AUTO_INCREMENT,
  dateOfBirth datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ,
  emailAddress varchar(255) NOT NULL,
  firstName varchar(255) NOT NULL,
  lastName varchar(255) NOT NULL,
  password varchar(20) NOT NULL,
  userName varchar(20) NOT NULL,
  PRIMARY KEY (id)
)ENGINE=InnoDB  AUTO_INCREMENT=43 DEFAULT CHARSET=latin1;