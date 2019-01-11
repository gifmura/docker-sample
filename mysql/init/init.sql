use playdb;

CREATE TABLE IF NOT EXISTS user (
  id int NOT NULL PRIMARY KEY AUTO_INCREMENT,
  email varchar(50) NOT NULL UNIQUE,
  password varchar(100) NOT NULL,
  name varchar(20) NOT NULL UNIQUE,
  user_type varchar(20) NOT NULL DEFAULT 'NORMAL',
  registration_time TIMESTAMP NOT NULL DEFAULT NOW(),
  status varchar(20) NOT NULL DEFAULT 'ACTIVE'
) ENGINE=InnoDB;

CREATE TABLE IF NOT EXISTS entry (
  id int NOT NULL PRIMARY KEY AUTO_INCREMENT,
  user_id int NOT NULL,
  title varchar(100) NOT NULL,
  content text NOT NULL,
  create_time TIMESTAMP NOT NULL DEFAULT NOW(),
  update_time TIMESTAMP NOT NULL DEFAULT NOW(),
  status varchar(20) NOT NULL DEFAULT 'ACTIVE',
  FOREIGN KEY(user_id) REFERENCES user(id) ON UPDATE CASCADE
) ENGINE=InnoDB;

CREATE TABLE IF NOT EXISTS image (
  id int NOT NULL PRIMARY KEY AUTO_INCREMENT,
  entry_id int NOT NULL,
  uri varchar(200) NOT NULL,
  size int NOT NULL,
  FOREIGN KEY(entry_id) REFERENCES entry(id) ON UPDATE CASCADE
) ENGINE=InnoDB;

INSERT IGNORE INTO user(id, email, password, name)
VALUE(1, 'dummy-address@media-sample-scala.com', 'password', 'test-user');

REPLACE INTO entry(user_id, title, content)
VALUES(1, 'sampe-title01', "This is test.")
,(1, 'sampe-title02', "This is test.")
,(1, 'sampe-title03', "This is test.")
,(1, 'sampe-title04', "This is test.")
,(1, 'sampe-title05', "This is test.")
,(1, 'sampe-title06', "This is test.")
,(1, 'sampe-title07', "This is test.")
,(1, 'sampe-title08', "This is test.")
,(1, 'sampe-title09', "This is test.")
,(1, 'sampe-title10', "This is test.")
,(1, 'sampe-title11', "This is test.")
,(1, 'sampe-title12', "This is test.")
,(1, 'sampe-title13', "This is test.")
,(1, 'sampe-title14', "This is test.")
,(1, 'sampe-title15', "This is test.")
,(1, 'sampe-title16', "This is test.")
,(1, 'sampe-title17', "This is test.")
,(1, 'sampe-title18', "This is test.")
,(1, 'sampe-title19', "This is test.")
,(1, 'sampe-title20', "This is test.")
,(1, 'sampe-title21', "This is test.")
,(1, 'sampe-title22', "This is test.")
,(1, 'sampe-title23', "This is test.")
,(1, 'sampe-title24', "This is test.")
,(1, 'sampe-title25', "This is test.")
,(1, 'sampe-title26', "This is test.")
,(1, 'sampe-title27', "This is test.")
,(1, 'sampe-title28', "This is test.")
,(1, 'sampe-title29', "This is test.")
,(1, 'sampe-title30', "This is test.")
,(1, 'sampe-title31', "This is test.")
,(1, 'sampe-title32', "This is test.")
,(1, 'sampe-title33', "This is test.")
,(1, 'sampe-title34', "This is test.")
,(1, 'sampe-title35', "This is test.")
,(1, 'sampe-title36', "This is test.")
,(1, 'sampe-title37', "This is test.")
,(1, 'sampe-title38', "This is test.")
,(1, 'sampe-title39', "This is test.")
,(1, 'sampe-title40', "This is test.")
,(1, 'sampe-title41', "This is test.")
,(1, 'sampe-title42', "This is test.")
,(1, 'sampe-title43', "This is test.")
,(1, 'sampe-title44', "This is test.")
,(1, 'sampe-title45', "This is test.")
,(1, 'sampe-title46', "This is test.")
,(1, 'sampe-title47', "This is test.")
,(1, 'sampe-title48', "This is test.")
,(1, 'sampe-title49', "This is test.")
,(1, 'sampe-title50', "This is test.")
,(1, 'sampe-title51', "This is test.")
,(1, 'sampe-title52', "This is test.")
,(1, 'sampe-title53', "This is test.")
,(1, 'sampe-title54', "This is test.")
,(1, 'sampe-title55', "This is test.")
,(1, 'sampe-title56', "This is test.")
,(1, 'sampe-title57', "This is test.")
,(1, 'sampe-title58', "This is test.")
,(1, 'sampe-title59', "This is test.")
,(1, 'sampe-title60', "This is test.")
,(1, 'sampe-title61', "This is test.")
,(1, 'sampe-title62', "This is test.")
,(1, 'sampe-title63', "This is test.")
,(1, 'sampe-title64', "This is test.")
,(1, 'sampe-title65', "This is test.")
,(1, 'sampe-title66', "This is test.")
,(1, 'sampe-title67', "This is test.")
,(1, 'sampe-title68', "This is test.")
,(1, 'sampe-title69', "This is test.")
,(1, 'sampe-title70', "This is test.")
,(1, 'sampe-title71', "This is test.")
,(1, 'sampe-title72', "This is test.")
,(1, 'sampe-title73', "This is test.")
,(1, 'sampe-title74', "This is test.")
,(1, 'sampe-title75', "This is test.")
,(1, 'sampe-title76', "This is test.")
,(1, 'sampe-title77', "This is test.")
,(1, 'sampe-title78', "This is test.")
,(1, 'sampe-title79', "This is test.")
,(1, 'sampe-title80', "This is test.");