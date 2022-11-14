CREATE TABLE `passenger` (
  `id` INT NOT NULL,
  `name` VARCHAR(100) NOT NULL,
  PRIMARY KEY (`id`));

INSERT INTO `passenger` (`id`, `name`) VALUES ('1', '	Bruce Willis');
INSERT INTO `passenger` (`id`, `name`) VALUES ('2', 'George Clooney');
INSERT INTO `passenger` (`id`, `name`) VALUES ('3', '	Kevin Costner');
INSERT INTO `passenger` (`id`, `name`) VALUES ('4', '	Donald Sutherland');
INSERT INTO `passenger` (`id`, `name`) VALUES ('5', '	Jennifer Lopez');
INSERT INTO `passenger` (`id`, `name`) VALUES ('6', '	Ray Liotta');
INSERT INTO `passenger` (`id`, `name`) VALUES ('7', '	Samuel L. Jackson');
INSERT INTO `passenger` (`id`, `name`) VALUES ('8', '	Nikole Kidman');
INSERT INTO `passenger` (`id`, `name`) VALUES ('9', '	Alan Rickman');
INSERT INTO `passenger` (`id`, `name`) VALUES ('10', '	Kurt Russell');
INSERT INTO `passenger` (`id`, `name`) VALUES ('11', '	Harrison Ford');
INSERT INTO `passenger` (`id`, `name`) VALUES ('12', '	Russell Crowe');
INSERT INTO `passenger` (`id`, `name`) VALUES ('13', '	Steve Martin');
INSERT INTO `passenger` (`id`, `name`) VALUES ('14', '	Michael Caine');
INSERT INTO `passenger` (`id`, `name`) VALUES ('15', '	Angelina Jolie');
INSERT INTO `passenger` (`id`, `name`) VALUES ('16', '	Mel Gibson');
INSERT INTO `passenger` (`id`, `name`) VALUES ('17', '	Michael Douglas');
INSERT INTO `passenger` (`id`, `name`) VALUES ('18', '	John Travolta');
INSERT INTO `passenger` (`id`, `name`) VALUES ('19', '	Sylvester Stallone');
INSERT INTO `passenger` (`id`, `name`) VALUES ('20', '	Tommy Lee Jones');
INSERT INTO `passenger` (`id`, `name`) VALUES ('21', '	Catherine Zeta-Jones');
INSERT INTO `passenger` (`id`, `name`) VALUES ('22', '	Antonio Banderas');
INSERT INTO `passenger` (`id`, `name`) VALUES ('23', '	Kim Basinger');
INSERT INTO `passenger` (`id`, `name`) VALUES ('24', '	Sam Neill');
INSERT INTO `passenger` (`id`, `name`) VALUES ('25', '	Gary Oldman');
INSERT INTO `passenger` (`id`, `name`) VALUES ('26', '	ClINT Eastwood');
INSERT INTO `passenger` (`id`, `name`) VALUES ('27', '	Brad Pitt');
INSERT INTO `passenger` (`id`, `name`) VALUES ('28', '	Johnny Depp');
INSERT INTO `passenger` (`id`, `name`) VALUES ('29', '	Pierce Brosnan');
INSERT INTO `passenger` (`id`, `name`) VALUES ('30', 'Sean Connery');
INSERT INTO `passenger` (`id`, `name`) VALUES ('31', '	Bruce Willis');
INSERT INTO  `passenger` (`id`, `name`) VALUES ('37', '	Mullah Omar');




CREATE TABLE `company` (
  `id` INT NOT NULL,
  `name` VARCHAR(128) NOT NULL,
  PRIMARY KEY (`id`));


INSERT INTO `company` (`id`, `name`) VALUES ('1', 'Don_avia');
INSERT INTO `company` (`id`, `name`) VALUES ('2', 'Aeroflot');
INSERT INTO `company` (`id`, `name`) VALUES ('3', 'Dale_avia');
INSERT INTO `company` (`id`, `name`) VALUES ('4', 'air_France');
INSERT INTO `company` (`id`, `name`) VALUES ('5', 'British_AW');
CREATE TABLE `trip` (
  `id` INT NOT NULL,
  `company` INT NOT NULL,
  `plane` VARCHAR(128) NOT NULL,
  `town_from` VARCHAR(128) NOT NULL,
  `town_to` VARCHAR(128) NOT NULL,
  `time_out` DATETIME NOT NULL,
  `time_in` DATETIME NOT NULL,
  PRIMARY KEY (`id`));
  ALTER TABLE `trip` 
ADD INDEX `fk_company_idx` (`company` ASC) VISIBLE;
;
ALTER TABLE `trip` 
ADD CONSTRAINT `fk_company`
  FOREIGN KEY (`company`)
  REFERENCES `company` (`id`)
  ON DELETE CASCADE
  ON UPDATE NO ACTION;

  
INSERT INTO `trip` (`id`, `company`, `plane`, `town_from`, `town_to`, `time_out`, `time_in`) VALUES ('1100', '4', 'Boeing', 'Rostov', 'Paris', '1900-01-01 14:30:00.000', '1900-01-01 17:50:00.000');
INSERT INTO `trip` (`id`, `company`, `plane`, `town_from`, `town_to`, `time_out`, `time_in`) VALUES ('1101', '4', 'Boeing', 'Paris', 'Rostov', '1900-01-01 08:12:00.000', '1900-01-01 11:45:00.000');
INSERT INTO `trip` (`id`, `company`, `plane`, `town_from`, `town_to`, `time_out`, `time_in`) VALUES ('1123', '3', 'TU-154', 'Rostov', 'Vladivostok', '1900-01-01 16:20:00.000', '1900-01-02 03:40:00.000');
INSERT INTO `trip` (`id`, `company`, `plane`, `town_from`, `town_to`, `time_out`, `time_in`) VALUES ('1124', '3', 'TU-154', 'Vladivostok', 'Rostov', '1900-01-01 09:00:00.000', '1900-01-01 19:50:00.000');
INSERT INTO `trip` (`id`, `company`, `plane`, `town_from`, `town_to`, `time_out`, `time_in`) VALUES ('1145', '2', 'IL-86', 'Moscow', 'Rostov', '1900-01-01 09:35:00.000', '1900-01-01 11:23:00.000');
INSERT INTO `trip` (`id`, `company`, `plane`, `town_from`, `town_to`, `time_out`, `time_in`) VALUES ('1146', '2', 'IL-86', 'Rostov', 'Moscow', '1900-01-01 17:55:00.000', '1900-01-01 20:01:00.000');
INSERT INTO `trip` (`id`, `company`, `plane`, `town_from`, `town_to`, `time_out`, `time_in`) VALUES ('1181', '1', 'TU-134', 'Rostov', 'Moscow', '1900-01-01 06:12:00.000', '1900-01-01 08:01:00.000');
INSERT INTO `trip` (`id`, `company`, `plane`, `town_from`, `town_to`, `time_out`, `time_in`) VALUES ('1182', '1', 'TU-134', 'Moscow', 'Rostov', '1900-01-01 12:35:00.000', '1900-01-01 14:30:00.000');
INSERT INTO `trip` (`id`, `company`, `plane`, `town_from`, `town_to`, `time_out`, `time_in`) VALUES ('1187', '1', 'TU-134', 'Rostov', 'Moscow', '1900-01-01 15:42:00.000', '1900-01-01 17:39:00.000');
INSERT INTO `trip` (`id`, `company`, `plane`, `town_from`, `town_to`, `time_out`, `time_in`) VALUES ('1188', '1', 'TU-134', 'Moscow', 'Rostov', '1900-01-01 22:50:00.000', '1900-01-02 00:48:00.000');
INSERT INTO `trip` (`id`, `company`, `plane`, `town_from`, `town_to`, `time_out`, `time_in`) VALUES ('1195', '1', 'TU-154', 'Rostov	', 'Moscow', '1900-01-01 23:30:00.000', '1900-01-02 01:11:00.000');
INSERT INTO `trip` (`id`, `company`, `plane`, `town_from`, `town_to`, `time_out`, `time_in`) VALUES ('1196', '1', 'TU-154', 'Moscow', 'Rostov', '1900-01-01 04:00:00.000', '1900-01-01 05:45:00.000');
INSERT INTO `trip` (`id`, `company`, `plane`, `town_from`, `town_to`, `time_out`, `time_in`) VALUES ('7771', '5', 'Boeing', 'London', 'Singapore', '1900-01-01 01:00:00.000', '1900-01-01 11:00:00.000');
INSERT INTO `trip` (`id`, `company`, `plane`, `town_from`, `town_to`, `time_out`, `time_in`) VALUES ('7772', '5', 'Boeing', 'Singapore', 'London', '1900-01-01 12:00:00.000', '1900-01-02 02:00:00.000');
INSERT INTO `trip` (`id`, `company`, `plane`, `town_from`, `town_to`, `time_out`, `time_in`) VALUES ('7773', '5', 'Boeing', 'London', 'Singapore', '1900-01-01 03:00:00.000', '1900-01-01 13:00:00.000');
INSERT INTO `trip` (`id`, `company`, `plane`, `town_from`, `town_to`, `time_out`, `time_in`) VALUES ('7774', '5', 'Boeing', 'Singapore', 'London', '1900-01-01 14:00:00.000', '1900-01-02 06:00:00.000');
INSERT INTO `trip` (`id`, `company`, `plane`, `town_from`, `town_to`, `time_out`, `time_in`) VALUES ('7775', '5', 'Boeing', 'London', 'Singapore', '1900-01-01 09:00:00.000', '1900-01-01 20:00:00.000');
INSERT INTO `trip` (`id`, `company`, `plane`, `town_from`, `town_to`, `time_out`, `time_in`) VALUES ('7776', '5', 'Boeing', 'Singapore', 'London', '1900-01-01 18:00:00.000', '1900-01-02 08:00:00.000');
INSERT INTO `trip` (`id`, `company`, `plane`, `town_from`, `town_to`, `time_out`, `time_in`) VALUES ('7777', '5', 'Boeing', 'London', 'Singapore', '1900-01-01 18:00:00.000', '1900-01-02 06:00:00.000');
INSERT INTO `trip` (`id`, `company`, `plane`, `town_from`, `town_to`, `time_out`, `time_in`) VALUES ('7778', '5', 'Boeing', 'Singapore', 'London', '1900-01-01 22:00:00.000', '1900-01-02 12:00:00.000');
INSERT INTO `trip` (`id`, `company`, `plane`, `town_from`, `town_to`, `time_out`, `time_in`) VALUES ('8881', '5', 'Boeing', 'London', 'Paris', '1900-01-01 03:00:00.000', '1900-01-01 04:00:00.000');
INSERT INTO `trip` (`id`, `company`, `plane`, `town_from`, `town_to`, `time_out`, `time_in`) VALUES ('8882', '5', 'Boeing', 'Paris', 'London', '1900-01-01 22:00:00.000', '1900-01-01 23:00:00.000');


CREATE TABLE `pass_in_trip` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `trip` INT NULL,
  `passenger` INT NULL,
  `place` VARCHAR(45) NULL,
  PRIMARY KEY (`id`));
  ALTER TABLE `pass_in_trip` 
ADD INDEX `fk_trip _idx` (`trip` ASC) VISIBLE,
ADD INDEX `fk_passenger_idx` (`passenger` ASC) VISIBLE;
;
ALTER TABLE `pass_in_trip` 
ADD CONSTRAINT `fk_trip `
  FOREIGN KEY (`trip`)
  REFERENCES `trip` (`id`)
  ON DELETE CASCADE
  ON UPDATE NO ACTION,
ADD CONSTRAINT `fk_passenger`
  FOREIGN KEY (`passenger`)
  REFERENCES `passenger` (`id`)
  ON DELETE CASCADE
  ON UPDATE NO ACTION;

INSERT INTO `pass_in_trip` (`id`, `trip`, `passenger`, `place`) VALUES ('1', '	1100', '1', '1a');
INSERT INTO `pass_in_trip` (`id`, `trip`, `passenger`, `place`) VALUES ('2', '	1123', '3', '	2a');
INSERT INTO `pass_in_trip` (`id`, `trip`, `passenger`, `place`) VALUES ('3', '	1123', '1', '4c');
INSERT INTO `pass_in_trip` (`id`, `trip`, `passenger`, `place`) VALUES ('4', '1123', '6', '	4b');
INSERT INTO `pass_in_trip` (`id`, `trip`, `passenger`, `place`) VALUES ('5', '1124', '2', '	2d');
INSERT INTO `pass_in_trip` (`id`, `trip`, `passenger`, `place`) VALUES ('6', '	1145', '3', '	2c');
INSERT INTO `pass_in_trip` (`id`, `trip`, `passenger`, `place`) VALUES ('7', '	1181', '1', '	1a');
INSERT INTO `pass_in_trip` (`id`, `trip`, `passenger`, `place`) VALUES ('8', '	1181', '6', '	1b');
INSERT INTO `pass_in_trip` (`id`, `trip`, `passenger`, `place`) VALUES ('9', '	1181', '8', '	3c');
INSERT INTO `pass_in_trip` (`id`, `trip`, `passenger`, `place`) VALUES ('10', '1181', '5', '	1b');
INSERT INTO `pass_in_trip` (`id`, `trip`, `passenger`, `place`) VALUES ('11', '	1182', '5', '4b');
INSERT INTO `pass_in_trip` (`id`, `trip`, `passenger`, `place`) VALUES ('12', '1187', '8', '3a');
INSERT INTO `pass_in_trip` (`id`, `trip`, `passenger`, `place`) VALUES ('13', '	1188', '8', '3a');
INSERT INTO `pass_in_trip` (`id`, `trip`, `passenger`, `place`) VALUES ('14', '1182', '9', '6d');
INSERT INTO `pass_in_trip` (`id`, `trip`, `passenger`, `place`) VALUES ('15', '1145', '5', '	1d');
INSERT INTO `pass_in_trip` (`id`, `trip`, `passenger`, `place`) VALUES ('16', '1187', '10', '3d');
INSERT INTO `pass_in_trip` (`id`, `trip`, `passenger`, `place`) VALUES ('17', '8882', '37', '1a');
INSERT INTO `pass_in_trip` (`id`, `trip`, `passenger`, `place`) VALUES ('18', '	7771', '37', '1c');
INSERT INTO `pass_in_trip` (`id`, `trip`, `passenger`, `place`) VALUES ('19', '	7772', '37', '	1a');
INSERT INTO `pass_in_trip` (`id`, `trip`, `passenger`, `place`) VALUES ('20', '	8881', '37', '1d');
INSERT INTO `pass_in_trip` (`id`, `trip`, `passenger`, `place`) VALUES ('21', '	7778', '10', '	2a');
INSERT INTO `pass_in_trip` (`id`, `trip`, `passenger`, `place`) VALUES ('22', '	7772', '10', '3a');
INSERT INTO `pass_in_trip` (`id`, `trip`, `passenger`, `place`) VALUES ('23', '7771', '11', '4a');
INSERT INTO `pass_in_trip` (`id`, `trip`, `passenger`, `place`) VALUES ('24', '7771', '11', '	1b');
INSERT INTO `pass_in_trip` (`id`, `trip`, `passenger`, `place`) VALUES ('25', '	7771', '11', '	5a');
INSERT INTO `pass_in_trip` (`id`, `trip`, `passenger`, `place`) VALUES ('26', '	7772', '12', '	1d');
INSERT INTO `pass_in_trip` (`id`, `trip`, `passenger`, `place`) VALUES ('27', '7773', '13', '2d');
INSERT INTO `pass_in_trip` (`id`, `trip`, `passenger`, `place`) VALUES ('28', '	7772', '13', '	1b');
INSERT INTO `pass_in_trip` (`id`, `trip`, `passenger`, `place`) VALUES ('29', '	8882', '14', '3d');
INSERT INTO `pass_in_trip` (`id`, `trip`, `passenger`, `place`) VALUES ('30', '7771', '14', '4d');
INSERT INTO `pass_in_trip` (`id`, `trip`, `passenger`, `place`) VALUES ('31', '7771', '14', '	5d');
INSERT INTO `pass_in_trip` (`id`, `trip`, `passenger`, `place`) VALUES ('32', '7772', '14', '1c');

--  Вывести имена всех когда-либо обслуживаемых пассажиров авиакомпаний.

SELECT name FROM Passenger;

--  Ввывсети названия всех авиакомпаний

SELECT name FROM Company;

--  Вывести все рейсы, совершенные из Москвы
SELECT * FROM Trip
WHERE town_from = 'Moscow' ;

-- Вывести имена людей, которые заканчиваются на "man"
SELECT name
FROM Passenger
WHERE name LIKE '%man';

--  Вывести количество рейсов, совершенных на TU-134
SELECT COUNT(*) AS count
FROM Trip
WHERE plane = 'TU-134';

-- Какие компании совершали перелеты на Boeing
SELECT DISTINCT name
FROM Company
JOIN Trip
ON Company.id=Trip.company
WHERE plane = 'Boeing';

-- Вывести все названия самолётов, на которых можно улететь в Москву (Moscow)
SELECT DISTINCT plane
FROM Trip
WHERE town_to = 'Moscow';

-- В какие города можно улететь из Парижа (Paris) и сколько времени это займёт?
SELECT town_to, TIMEDIFF(time_in, time_out) AS flight_time
FROM Trip
WHERE town_from = 'Paris';

-- Какие компании организуют перелеты с Владивостока (Vladivostok)?
SELECT DISTINCT name
FROM Company
JOIN Trip
ON Company.id=Trip.company
WHERE town_from = 'Vladivostok';