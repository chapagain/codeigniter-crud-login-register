--
-- Create database `test`
--
 
CREATE DATABASE `test`;
 
use `test`;
 
--
-- Table structure for table `news`
--
 
CREATE TABLE IF NOT EXISTS `news` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(128) NOT NULL,
  `slug` varchar(128) NOT NULL,
  `text` text NOT NULL,
  `user_id` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `slug` (`slug`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;
 
--
-- Dumping data for table `news`
--
 
INSERT INTO `news` (`id`, `title`, `slug`, `text`, `user_id`) VALUES
(1, 'Test', 'test', 'Hello World !!', 1),
(2, 'What is Lorem Ipsum?', 'what-is-lorem-ipsum', 'Lorem Ipsum is simply dummy text.', 1),
(3, 'My test', 'my-test', 'hello there', 2);

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `firstname` varchar(255) NOT NULL,
  `lastname` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `updated_at`varchar(255) NULL DEFAULT NULL,
  PRIMARY_KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1;

--
-- Indexes for table `user`
--
ALTER TABLE `user`  
  ADD UNIQUE KEY `user_email_unique` (`email`);
