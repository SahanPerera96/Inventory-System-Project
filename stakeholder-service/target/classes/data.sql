--Insert address data
INSERT INTO `stakeholder`.`address` (`address_line1`, `address_line2`, `city`, `postal_code`) VALUES ('kotikawatta', 'Angoda', 'Colombo', '11000');
INSERT INTO `stakeholder`.`address` (`address_line1`, `address_line2`, `city`, `postal_code`) VALUES ('polonnaruwa', 'Aralaganwila', 'Polonnaruwa', '51100');
INSERT INTO `stakeholder`.`address` (`address_line1`, `address_line2`, `city`, `postal_code`) VALUES ('kekirawa', 'Anuradhapura', 'Anuradhapura', '50100');
--INSERT INTO `stakeholder`.`address` (`address_line1`, `address_line2`, `city`, `postal_code`) VALUES ('kondawil', 'Jaffna', 'Jaffna', '41100');
--INSERT INTO `stakeholder`.`address` (`address_line1`, `address_line2`, `city`, `postal_code`) VALUES ('Alawwa', 'Kurunegala', 'Kurunegala', '21141');

--Insert category data
INSERT INTO `stakeholder`.`category` (`point_range`, `type`) VALUES ('500', 'Silver');
INSERT INTO `stakeholder`.`category` (`point_range`, `type`) VALUES ('1000', 'platinum');
INSERT INTO `stakeholder`.`category` (`point_range`, `type`) VALUES ('1500', 'gold');

--Insert data into loyalty_card table
INSERT INTO `stakeholder`.`loyalty_card` (`expiry_date`, `issued_date`, `name`, `number`, `point_balance`, `category_id`) VALUES ('2020-06-18', '2017-06-18', 'pasindu', '12345678', '0', '1');
INSERT INTO `stakeholder`.`loyalty_card` (`expiry_date`, `issued_date`, `name`, `number`, `point_balance`, `category_id`) VALUES ('2022-06-18', '2018-06-18', 'kalum', '12345677', '0', '2');
INSERT INTO `stakeholder`.`loyalty_card` (`expiry_date`, `issued_date`, `name`, `number`, `point_balance`, `category_id`) VALUES ('2021-06-18', '2019-06-18', 'thilakarthna', '12345688', '0', '3');

--Insert data into customer table
INSERT INTO `stakeholder`.`customer` (`date_of_birth`, `email`, `first_name`, `gender`, `last_name`, `occupation`, `salutation`, `address_id`, `card_id`) VALUES ('1993-09-04', 'abc@gmail.com', 'Pasindu', 'male', 'Kalum', 'engineer', 'mr', '1', '1');
INSERT INTO `stakeholder`.`customer` (`date_of_birth`, `email`, `first_name`, `gender`, `last_name`, `occupation`, `salutation`, `address_id`, `card_id`) VALUES ('1992-04-28', 'def@gmail.com', 'Nuwan', 'male', 'Thilakarathna', 'doctor', 'mr', '2', '2');
INSERT INTO `stakeholder`.`customer` (`date_of_birth`, `email`, `first_name`, `gender`, `last_name`, `occupation`, `salutation`, `address_id`, `card_id`) VALUES ('1983-08-05', 'ghi@gmail.com', 'Suranga', 'male', 'Pradeep', 'assessor', 'mr', '3', '3');

--Insert data into telephone table
INSERT INTO `stakeholder`.`telephone` (`number`, `type`, `customer_id`) VALUES ('0711234567', 'mobile', '1');
INSERT INTO `stakeholder`.`telephone` (`number`, `type`, `customer_id`) VALUES ('0111234567', 'home', '1');
INSERT INTO `stakeholder`.`telephone` (`number`, `type`, `customer_id`) VALUES ('0771114567', 'mobile', '2');
INSERT INTO `stakeholder`.`telephone` (`number`, `type`, `customer_id`) VALUES ('0211122335', 'home', '2');
INSERT INTO `stakeholder`.`telephone` (`number`, `type`, `customer_id`) VALUES ('0781222567', 'mobile', '3');
