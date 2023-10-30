create database contractdb;
use contractdb;
CREATE TABLE `admin` (
  `userid` varchar(255) NOT NULL,
  `pwd` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL
);


INSERT INTO `admin` (`userid`, `pwd`, `name`) VALUES
('admin', 'admin123', 'Administrator');


CREATE TABLE `amenity` (
  `id` int NOT NULL,
  `atype` varchar(20) NOT NULL,
  `aminity` varchar(50) NOT NULL,
  `cid` int NOT NULL
);

CREATE TABLE `contract` (
  `id` int NOT NULL,
  `ctype` varchar(30) NOT NULL,
  `duration` varchar(20) NOT NULL,
  `supid` varchar(20) NOT NULL,
  `supname` varchar(50) NOT NULL,
  `terms` varchar(50) NOT NULL,
  `delivery` varchar(30) NOT NULL,
  `status` varchar(50) NOT NULL DEFAULT 'Started'
);


CREATE TABLE `proposal` (
  `propid` int NOT NULL,
  `pdate` varchar(255) DEFAULT NULL,
  `quotation` int NOT NULL,
  `reqid` varchar(255) DEFAULT NULL,
  `supid` varchar(255) DEFAULT NULL,
  `status` varchar(255) DEFAULT 'Submitted',
  `supname` varchar(255) DEFAULT NULL
);



CREATE TABLE `requirement` (
  `reqid` varchar(255) NOT NULL,
  `deldate` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `reqtype` varchar(255) DEFAULT NULL
);



CREATE TABLE `supplier` (
  `supid` varchar(255) NOT NULL,
  `address` varchar(255) DEFAULT NULL,
  `name` varchar(50) DEFAULT NULL,
  `phone` varchar(10) DEFAULT NULL,
  `pwd` varchar(255) DEFAULT NULL,
  `cpwd` varchar(255) DEFAULT NULL
);


ALTER TABLE `admin`
  ADD PRIMARY KEY (`userid`);

ALTER TABLE `amenity`
  ADD PRIMARY KEY (`id`);

ALTER TABLE `contract`
  ADD PRIMARY KEY (`id`);

ALTER TABLE `proposal`
  ADD PRIMARY KEY (`propid`);

ALTER TABLE `requirement`
  ADD PRIMARY KEY (`reqid`);

ALTER TABLE `supplier`
  ADD PRIMARY KEY (`supid`);


ALTER TABLE `amenity`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;
COMMIT;

