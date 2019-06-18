drop table if exists address;
drop table if exists category;
drop table if exists customer;
drop table if exists loyalty_card;
drop table if exists telephone;

CREATE TABLE `address` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `address_line1` varchar(255) NOT NULL,
  `address_line2` varchar(255) DEFAULT NULL,
  `city` varchar(255) NOT NULL,
  `postal_code` varchar(5) NOT NULL,
  PRIMARY KEY (`id`)
);

CREATE TABLE `category` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `point_range` int(11) NOT NULL,
  `type` varchar(255) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UK_c2491gxyu6bsjw346i1fgojqf` (`type`)
);

CREATE TABLE `customer` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `date_of_birth` datetime NOT NULL,
  `email` varchar(255) NOT NULL,
  `first_name` varchar(255) NOT NULL,
  `gender` varchar(255) NOT NULL,
  `last_name` varchar(255) NOT NULL,
  `occupation` varchar(255) DEFAULT NULL,
  `salutation` varchar(255) NOT NULL,
  `address_id` int(11) DEFAULT NULL,
  `card_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UK_dwk6cx0afu8bs9o4t536v1j5v` (`email`),
  KEY `FKglkhkmh2vyn790ijs6hiqqpi` (`address_id`),
  KEY `FKbt92hejr1p9cyh9xn58w653x2` (`card_id`)
);

CREATE TABLE `loyalty_card` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `expiry_date` datetime NOT NULL,
  `issued_date` datetime NOT NULL,
  `name` varchar(255) NOT NULL,
  `number` varchar(8) NOT NULL,
  `point_balance` double DEFAULT NULL,
  `category_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UK_j9wf2232b5bhcsg0rxqk6egn5` (`number`),
  KEY `FKlid94e9lwu3wyfbde5mxuvrn9` (`category_id`)
);

CREATE TABLE `telephone` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `number` varchar(10) NOT NULL,
  `type` varchar(255) NOT NULL,
  `customer_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FKd2kespl8p4rstkyphbkwxge3o` (`customer_id`)
);




