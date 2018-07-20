CREATE DATABASE IF NOT EXISTS `bank_db` DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci;
USE `bank_db`;

CREATE TABLE `record` (
  `username` varchar(30) NOT NULL,
  `password` varchar(30) DEFAULT NULL,
  `amount` int(30) DEFAULT NULL,
  `address` varchar(50) DEFAULT NULL,
  `phone` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;


INSERT INTO `record` (`username`, `password`, `amount`, `address`, `phone`) VALUES
('aa', 'aa', 1410, 'aa', 'aa'),
('admin', 'admin', 0, 'admin', 'admin'),
('anil', 'anil', 2900, 'anil', 'anil');


ALTER TABLE `record`
  ADD PRIMARY KEY (`username`);
