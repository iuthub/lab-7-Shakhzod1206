DROP TABLE IF EXISTS `Users`;
CREATE TABLE `Uers` (
  `id` int(11) auto_increment, 
  `username` varchar(250) default NULL,
  `email` varchar(250) default NULL,
  `password` varchar(250) default NULL,
  `fullname` varchar(250),
  `dob` date,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;


DROP TABLE IF EXISTS `Posts`;
CREATE TABLE `Posts` (
  `id` auto_increment,
  `title` varchar(250),
  `body` text,
  `publishDate` date,
  `userID` int,
  PRIMARY KEY  (`id`),
  FOREIGN KEY  (userID) references Users(id)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
