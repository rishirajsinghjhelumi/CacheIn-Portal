-- phpMyAdmin SQL Dump
-- version 3.4.10.1deb1
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Jan 15, 2014 at 08:43 AM
-- Server version: 5.5.34
-- PHP Version: 5.3.10-1ubuntu3.9

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `CacheIn`
--

-- --------------------------------------------------------

--
-- Table structure for table `answers`
--

CREATE TABLE IF NOT EXISTS `answers` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `qid` int(11) NOT NULL,
  `answer` varchar(256) DEFAULT NULL,
  `next_qid` int(11) NOT NULL,
  `points` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `qid` (`qid`),
  KEY `next_qid` (`next_qid`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=17 ;

--
-- Dumping data for table `answers`
--

INSERT INTO `answers` (`id`, `qid`, `answer`, `next_qid`, `points`) VALUES
(1, 1, 'felicity2k14', 2, 0),
(2, 2, 'felixfelicis', 3, 0),
(3, 3, 'wildkale', 4, 0),
(4, 4, 'shawshankredemption', 5, 0),
(5, 5, 'microsoft', 6, 0),
(6, 6, 'romanabramovich', 7, 0),
(7, 7, '12angrymen', 8, 0),
(8, 8, 'shishirmehrotra', 9, 0),
(9, 9, 'tomorrowland2013', 10, 0),
(10, 10, 'soma', 11, 0),
(11, 11, 'bigbrother', 12, 0),
(12, 12, 'pepsi', 13, 0),
(13, 13, 'kimberlyclark', 14, 0),
(14, 14, 'montana', 15, 0),
(15, 15, '370', 16, 0),
(16, 16, 'gohan', 17, 0);

-- --------------------------------------------------------

--
-- Table structure for table `attachments`
--

CREATE TABLE IF NOT EXISTS `attachments` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `qid` int(11) NOT NULL,
  `attachment` varchar(2048) NOT NULL,
  `type` varchar(256) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `qid` (`qid`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=19 ;

--
-- Dumping data for table `attachments`
--

INSERT INTO `attachments` (`id`, `qid`, `attachment`, `type`) VALUES
(2, 1, '1.html', 'html'),
(3, 2, '2-4038.png', 'png'),
(4, 3, '3-11871.png', 'png'),
(5, 4, '4-7158.png', 'png'),
(6, 5, '5-22486.png', 'png'),
(7, 6, '6-10050.png', 'png'),
(8, 7, '7-27041.png', 'png'),
(9, 8, '8-1438.png', 'png'),
(10, 9, '9-138.png', 'png'),
(11, 10, '10-17916.jpg', 'jpg'),
(12, 11, '11-19167.png', 'png'),
(13, 12, '12-3185.jpg', 'jpg'),
(14, 13, '13-5746.png', 'png'),
(15, 14, '16-6913.png', 'png'),
(16, 15, '15-20325.png', 'png'),
(17, 16, '14-12798.png', 'png'),
(18, 17, '18-2013.png', 'png');

-- --------------------------------------------------------

--
-- Table structure for table `comments`
--

CREATE TABLE IF NOT EXISTS `comments` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `qid` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `comment` varchar(2048) NOT NULL,
  `visual` tinyint(1) DEFAULT '0',
  `time` int(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `qid` (`qid`),
  KEY `user_id` (`user_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=24 ;

--
-- Dumping data for table `comments`
--

INSERT INTO `comments` (`id`, `qid`, `user_id`, `comment`, `visual`, `time`) VALUES
(1, 1, 27, 'the game is on', 1, 1389807185),
(3, 1, 68, 'please provide some more hints.', 1, 1389808134),
(4, 3, 42, 'Are you sure there was no speling mistakes? :P', 0, 1389808231),
(5, 1, 53, 'any hint!!', 1, 1389808437),
(6, 1, 105, 'ahhhhhhhhhhh\n', 1, 1389808565),
(7, 1, 55, 'Any hints?', 1, 1389808703),
(8, 1, 12, 'Yeah, it''s not as obvious as i would imagine', 1, 1389808795),
(9, 1, 1, 'Don''t think too much. Answer lies in the SOURCE CODE itself.', 1, 1389808795),
(10, 1, 29, 'please provide some hints. ', 0, 1389809479),
(11, 1, 14, 'please more hints!!', 0, 1389809711),
(12, 1, 78, 'Is it the websites name?', 1, 1389809730),
(13, 1, 10, 'Ant hint? ', 0, 1389809767),
(14, 2, 130, 'Hint as to the relation to harry potter?', 0, 1389810109),
(15, 1, 10, 'Admin any non trivial hint pls', 0, 1389810221),
(16, 1, 100, 'What the hell?', 0, 1389810247),
(17, 1, 1, 'INSPECT closely. May the FIREBUG be with you! ', 1, 1389810469),
(18, 3, 42, 'So, if I have an answer, I try the wikipedia spellings. Would that be fine? Or should I also try possible other spellings?', 1, 1389810544),
(19, 3, 19, 'adsf', 0, 1389810554),
(20, 2, 31, 'Any clues??', 0, 1389810630),
(21, 3, 19, 'Jonathan Doue', 0, 1389810916),
(22, 3, 94, 'Abe sab kuch to try kar liya >.<', 0, 1389811006),
(23, 1, 183, 'What is this?', 0, 1389811224);

-- --------------------------------------------------------

--
-- Table structure for table `questions`
--

CREATE TABLE IF NOT EXISTS `questions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `question` varchar(16384) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=18 ;

--
-- Dumping data for table `questions`
--

INSERT INTO `questions` (`id`, `question`) VALUES
(1, 'May the SOURCE be with you!'),
(2, 'All you need is a little luck!'),
(3, 'Tineye is your best friend!'),
(4, 'Connect these POSTERS!'),
(5, 'Its all squares now!'),
(6, 'Who is he?'),
(7, ''),
(8, 'The truth of the story lies in the details.'),
(9, 'We like to party!!'),
(10, ''),
(11, 'riguardare queste immagini'),
(12, ''),
(13, ''),
(14, ''),
(15, ''),
(16, ''),
(17, '');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE IF NOT EXISTS `user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cur_question` int(11) NOT NULL DEFAULT '1',
  `score` int(11) NOT NULL DEFAULT '0',
  `name` varchar(256) NOT NULL,
  `nick` varchar(256) NOT NULL,
  `email` varchar(256) NOT NULL,
  `last_submit_time` int(20) DEFAULT NULL,
  `penalty` int(20) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `cur_question` (`cur_question`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=196 ;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `cur_question`, `score`, `name`, `nick`, `email`, `last_submit_time`, `penalty`) VALUES
(1, 15, 0, 'Admin User', 'Admin', 'User', 1389806535, 0),
(2, 1, 0, 'Chandan Singh', 'chandan', 'Singh', 1389810241, 0),
(3, 3, 0, 'Alex Podlesniy', 'Podliy16', 'Podlesniy', 1389808243, 0),
(4, 3, 0, 'Kushal Singh', 'kushal', 'Singh', 1389810871, 0),
(5, 3, 0, 'ANVESHI SHUKLA', 'anveshi', 'SHUKLA', 1389809405, 0),
(6, 1, 0, 'chamarthi-venkata hrudayanath', 'hruday', 'hrudayanath', 1389806994, 0),
(7, 3, 0, 'Franz Korntner', 'Untangler', 'Korntner', 1389808668, 0),
(8, 3, 0, 'Batchunag Dashdemberel', 'footman', 'Dashdemberel', 1389808353, 0),
(9, 2, 0, 'Andrew Gorokhov', 'Andrey', 'Gorokhov', 1389807214, 0),
(10, 2, 0, 'AAKASH ANUJ', 'aakashanuj', 'ANUJ', 1389811206, 0),
(11, 3, 0, 'Aanchal Bindal', 'phoenixfire', 'Bindal', 1389810375, 0),
(12, 1, 0, 'Luap Notnevets', 'HENLEYbls', 'Notnevets', 1389807026, 0),
(13, 3, 0, 'Sambuddha Basu', 'sambuddhabasu', 'Basu', 1389807939, 0),
(14, 1, 0, 'morteza hosseini', 'mory91', 'hosseini', 1389807036, 0),
(15, 2, 0, 'Chinmay Agrawal', 'chin2', 'Agrawal', 1389810831, 0),
(16, 1, 0, 'Raunak Talwar', 'raunakrocks', 'Talwar', 1389807036, 0),
(17, 3, 0, 'Anirudh Goyal', 'Zombies', 'Goyal', 1389809042, 0),
(18, 1, 0, 'Vishrut Mehta', 'vishrut009', 'Mehta', 1389807037, 0),
(19, 3, 0, 'Mohammad-Amin Khashkhashi-Moghaddam', 'alexmercer', 'Khashkhashi-Moghaddam', 1389807367, 0),
(20, 1, 0, 'Anirudh Anand', 'D3vi1', 'Anand', 1389807049, 0),
(21, 1, 0, 'Ronak Kogta', 'PaniKePatashe', 'Kogta', 1389807051, 0),
(22, 1, 0, 'yoyo yoyo', 'nick1024', 'yoyo', 1389807053, 0),
(23, 1, 0, 'AKHIL BATRA', 'AKKI', 'BATRA', 1389807056, 0),
(24, 3, 0, 'Amogh Pradeep', 'amoghbl1', 'Pradeep', 1389807985, 0),
(25, 3, 0, 'Harshit Bhagat', 'hbhagat786', 'Bhagat', 1389808568, 0),
(26, 2, 0, 'Dragos Rotaru', 'mathboy', 'Rotaru', 1389808242, 0),
(27, 1, 0, 'Phani Karan', 'phanikaran', 'Karan', 1389807095, 0),
(28, 1, 0, 'Shubham Kansal', 'bluej', 'Kansal', 1389807110, 0),
(29, 1, 0, 'Ada Lovelace', 'MaliceInWonderland', 'Lovelace', 1389807120, 0),
(30, 1, 0, 'Rashi Shrishrimal', 'ras20', 'Shrishrimal', 1389807128, 0),
(31, 2, 0, 'NareshChowdary Kommuri', 'knc', 'Kommuri', 1389808130, 0),
(32, 3, 0, 'madhuri gaddam', 'LOL', 'gaddam', 1389810241, 0),
(33, 1, 0, 'Roshani Narasimhan', 'Roshani', 'Narasimhan', 1389807138, 0),
(34, 1, 0, 'Akshit Vij', 'IMMORTAL', 'Vij', 1389807157, 0),
(35, 1, 0, 'Alok Thatikunta', 'anDRew', 'Thatikunta', 1389807164, 0),
(36, 3, 0, 'Arpita Gupta', 'arpi', 'Gupta', 1389810646, 0),
(37, 1, 0, 'Shubham Maheshwari', 'xtremered', 'Maheshwari', 1389807215, 0),
(38, 2, 0, 'klaus klaus', 'drogenbob', 'klaus', 1389811161, 0),
(39, 1, 0, 'Jalpreet Nanda', 'imjalpreet', 'Nanda', 1389807220, 0),
(40, 1, 0, 'Rachit Aggarwal', 'rachit379', 'Aggarwal', 1389807231, 0),
(41, 1, 0, 'anuj gupta', 'anujmanit', 'gupta', 1389807236, 0),
(42, 3, 0, 'Akshay Dinesh', 'asdofindia', 'Dinesh', 1389807464, 0),
(43, 1, 0, 'Guy Fawkes', 'GlundronaBarn', 'Fawkes', 1389807249, 0),
(44, 1, 0, 'Gautam Vepa', 'vepagautam', 'Vepa', 1389807256, 0),
(45, 1, 0, 'Rajat Bhardwaj', 'adp10', 'Bhardwaj', 1389807259, 0),
(46, 3, 0, 'madhuri gaddam', 'devils', 'gaddam', 1389810285, 0),
(47, 1, 0, 'Akshay Kumar', 'kumaraks', 'Kumar', 1389807266, 0),
(48, 2, 0, 'Radu Caragea', 'sinaelgl', 'Caragea', 1389807315, 0),
(49, 3, 0, 'Ayush Mishra', 'Spider', 'Mishra', 1389809295, 0),
(50, 1, 0, 'Sushant Thakur', 'skt', 'Thakur', 1389807283, 0),
(51, 2, 0, 'vaibhav gupta', 'terminator', 'gupta', 1389807304, 0),
(52, 1, 0, 'virendra pratap', 'veeru', 'pratap', 1389807298, 0),
(53, 1, 0, 'Deepak Goyal', 'zonker', 'Goyal', 1389807303, 0),
(54, 4, 0, 'Pulkit Agarwal', 'Timehacker', 'Agarwal', 1389811292, 0),
(55, 2, 0, 'Palash Mittal', 'TheManiac', 'Mittal', 1389811183, 0),
(56, 1, 0, 'rahul anand', '300', 'anand', 1389807340, 0),
(57, 1, 0, 'ashish singh', 'ashish', 'singh', 1389807348, 0),
(58, 3, 0, 'papireddygari maneesha', 'immad', 'maneesha', 1389811349, 0),
(59, 1, 0, 'ram babu', 'fineman', 'babu', 1389807359, 0),
(60, 1, 0, 'Sanyasirao Mopada', 'Sunny', 'Mopada', 1389807367, 0),
(61, 1, 0, 'sahil kharb', 'thefallen', 'kharb', 1389807379, 0),
(62, 1, 0, 'k space', 'kspace', 'space', 1389807380, 0),
(63, 2, 0, 'Andrey Kashin', 'acid', 'Kashin', 1389810888, 0),
(64, 1, 0, 'manoj bhupathiraju', 'maverickme', 'bhupathiraju', 1389807428, 0),
(65, 3, 0, 'Pushyami Rachapudi', 'Push', 'Rachapudi', 1389810225, 0),
(66, 3, 0, 'crazy orangutan', 'crazyorangutan', 'orangutan', 1389810458, 0),
(67, 1, 0, 'Sanatan Mishra', 'sanatan', 'Mishra', 1389807540, 0),
(68, 1, 0, 'Rohit Ranjan', 'nikku', 'Ranjan', 1389807551, 0),
(69, 2, 0, 'NageswaraRao Podilapu', 'Nagesh', 'Podilapu', 1389809647, 0),
(70, 3, 0, 'srishti aggarwal', 'srishti', 'aggarwal', 1389809894, 0),
(71, 1, 0, 'Sindhu Ernala', 'sindh', 'Ernala', 1389807620, 0),
(72, 1, 0, 'Sravya popuri', 'potter', 'popuri', 1389807628, 0),
(73, 1, 0, 'Karan Dhamele', 'krans4u', 'Dhamele', 1389807692, 0),
(74, 1, 0, 'satish kumar', 'sam', 'kumar', 1389807692, 0),
(75, 1, 0, 'Prantar Ghosh', 'prantarg', 'Ghosh', 1389807695, 0),
(76, 1, 0, 'neo optimus', 'neo', 'optimus', 1389807710, 0),
(77, 3, 0, 'Siddharth Tanwar', 'sid112233', 'Tanwar', 1389809914, 0),
(78, 1, 0, 'Ajay Choudhary', 'Chou110125', 'Choudhary', 1389807849, 0),
(79, 2, 0, 'Yogeesh S', 'y0g1337h', 'S', 1389810754, 0),
(80, 3, 0, 'Saumya Dwivedi', 'please', 'Dwivedi', 1389808606, 0),
(81, 1, 0, 'Neelesh Dwivedi', 'Neal', 'Dwivedi', 1389807868, 0),
(82, 1, 0, 'Aasritha Pisupati', 'Aasritha', 'Pisupati', 1389807929, 0),
(83, 1, 0, 'Roopal Nahar', 'roop08', 'Nahar', 1389807934, 0),
(84, 1, 0, 'Akshay Krishnan', 'b3h3m0th', 'Krishnan', 1389807951, 0),
(85, 1, 0, 'Shubham Bansal', 'iN3O', 'Bansal', 1389807957, 0),
(86, 3, 0, 'Nishant Prateek', 'IT', 'Prateek', 1389810905, 0),
(87, 1, 0, 'Shivam Tripathi', 'blitz', 'Tripathi', 1389808070, 0),
(88, 3, 0, 'Akshaya Purohit', 'LOGAN', 'Purohit', 1389810337, 0),
(89, 1, 0, 'Swaminathan G', 'swami', 'G', 1389808134, 0),
(90, 3, 0, 'Somanshu Agarwal', 'somu', 'Agarwal', 1389810401, 0),
(91, 1, 0, 'Manu Mishra', 'ManuM', 'Mishra', 1389808180, 0),
(92, 3, 0, 'aayush saxena', 'aayush', 'saxena', 1389810700, 0),
(93, 1, 0, 'Gaurav Chandak', 'gc93', 'Chandak', 1389808229, 0),
(94, 3, 0, 'parag gupta', 'darkhorcrux', 'gupta', 1389808433, 0),
(95, 3, 0, 'Saksham Aggarwal', 'sakagg', 'Aggarwal', 1389809343, 0),
(96, 3, 0, 'Vamsee Chamakura', 'Vamsee', 'Chamakura', 1389809804, 0),
(97, 3, 0, 'ramachandra sharma', 'ram235', 'sharma', 1389809799, 0),
(98, 2, 0, 'Ashish Sahay', 'phire404', 'Sahay', 1389810850, 0),
(99, 3, 0, 'Sriram Narayanan', 'Sriram', 'Narayanan', 1389809741, 0),
(100, 2, 0, 'Carl Johnson', 'carlj', 'Johnson', 1389811129, 0),
(101, 1, 0, 'Akhil Jindal', 'akhiljindal12', 'Jindal', 1389808392, 0),
(102, 1, 0, 'Dinesh Singla', 'roxkiller', 'Singla', 1389808398, 0),
(103, 3, 0, 'Prateek Saxena', 'Pammi', 'Saxena', 1389810405, 0),
(104, 1, 0, 'Sanjana Sharma', 'CagedHues', 'Sharma', 1389808422, 0),
(105, 1, 0, 'Rakesh Kumar', 'Raky', 'Kumar', 1389808435, 0),
(106, 3, 0, 'Ritu Gupta', 'ritugupta', 'Gupta', 1389810150, 0),
(107, 1, 0, 'Ayush Agrawal', 'ayusha', 'Agrawal', 1389808465, 0),
(108, 1, 0, 'Adarsh Mohata', 'adi', 'Mohata', 1389808489, 0),
(109, 1, 0, 'Siddharth Bhatore', 'sid1', 'Bhatore', 1389808497, 0),
(110, 1, 0, 'Deepak Kumar', 'rusty', 'Kumar', 1389808519, 0),
(111, 2, 0, 'Andrey Anurin', 'Abra', 'Anurin', 1389810464, 0),
(112, 3, 0, 'Anupriya Inumella', 'AP', 'Inumella', 1389809368, 0),
(113, 3, 0, 'ravindar kumar', 'root', 'kumar', 1389811250, 0),
(114, 1, 0, 'Vijaya-Sai-Krishna Gottipati', 'gvsaikrishna', 'Gottipati', 1389808698, 0),
(115, 3, 0, 'Nikhil Bhandari', 'Hellboy', 'Bhandari', 1389810326, 0),
(116, 3, 0, 'Shriram Rahatgaonkar', 'techwiz911', 'Rahatgaonkar', 1389809330, 0),
(117, 1, 0, 'ayan srivastava', 'ayan', 'srivastava', 1389808735, 0),
(118, 2, 0, 'giga dd', 'giga811', 'dd', 1389809344, 0),
(119, 3, 0, 'Team Wheatley', 'TeamWheatley', 'Wheatley', 1389810008, 0),
(120, 1, 0, 'Debayan Das', 'Iceflame007', 'Das', 1389808827, 0),
(121, 3, 0, 'akhil akkireddy', 'akhee', 'akkireddy', 1389809723, 0),
(122, 1, 0, 'Vanshika Srivastava', 'padfoot', 'Srivastava', 1389808941, 0),
(123, 1, 0, 'Pappu Pandey', 'pappu', 'Pandey', 1389808967, 0),
(124, 2, 0, 'Parag Agrawal', 'parag11', 'Agrawal', 1389809133, 0),
(125, 1, 0, 'Mihir Sahasrabudhe', 'Squid', 'Sahasrabudhe', 1389809000, 0),
(126, 3, 0, 'Saksham Agrawal', 'saksham115', 'Agrawal', 1389810441, 0),
(127, 1, 0, 'Arushi Jain', 'arushi', 'Jain', 1389809026, 0),
(128, 1, 0, 'Ritwik Mukherjee', 'sanritwik', 'Mukherjee', 1389809066, 0),
(129, 1, 0, 'Tanmay Sahay', 'tanmaysahay94', 'Sahay', 1389809201, 0),
(130, 3, 0, 'Miles Bench', 'coffeeblack198', 'Bench', 1389810224, 0),
(131, 3, 0, 'Sharan Girdhani', 'sharan123', 'Girdhani', 1389810800, 0),
(132, 1, 0, 'Rishabh Raj', 'sharky', 'Raj', 1389809277, 0),
(133, 1, 0, 'Meghana Manusanipalli', 'Meghana', 'Manusanipalli', 1389809310, 0),
(134, 1, 0, 'aman agarwal', 'dare109', 'agarwal', 1389809410, 0),
(135, 3, 0, 'ayush jhunjhunwala', 'ayushblaster', 'jhunjhunwala', 1389810568, 0),
(136, 1, 0, 'VeerabhadraRao Boda', 'bhadra', 'Boda', 1389809440, 0),
(137, 2, 0, 'Nisarg Jhaveri', 'nisargjhaveri', 'Jhaveri', 1389810447, 0),
(138, 1, 0, 'Ankit Mittal', 'Ankit75', 'Mittal', 1389809617, 0),
(139, 3, 0, 'Sudharshan Kumar', 'draco', 'Kumar', 1389811253, 0),
(140, 2, 0, 'Rajesh Vakkalagadda', 'orion', 'Vakkalagadda', 1389810709, 0),
(141, 2, 0, 'Devadath VV', 'blackmagic', 'VV', 1389810548, 0),
(142, 1, 0, 'Harsh Kedia', 'Harsh', 'Kedia', 1389809724, 0),
(143, 3, 0, 'javvaji kiran', 'kiran', 'kiran', 1389810247, 0),
(144, 3, 0, 'Prachish Gora', 'drazen167', 'Gora', 1389810767, 0),
(145, 1, 0, 'Anubhav Gupta', 'anubhavkkr', 'Gupta', 1389809866, 0),
(146, 3, 0, 'HIMANGI SARAOGI', 'visionary', 'SARAOGI', 1389810440, 0),
(147, 1, 0, 'sai chaitanya', 'qdgt', 'chaitanya', 1389809884, 0),
(148, 1, 0, 'vuthikarestha vuthikarestha', 'vuthikarestha', 'vuthikarestha', 1389810034, 0),
(149, 1, 0, 'krishna tulsyan', 'krishna0512', 'tulsyan', 1389810036, 0),
(150, 1, 0, 'Pallav Shah', 'pallav', 'Shah', 1389810073, 0),
(151, 1, 0, 'Shruti G', 'gshruti', 'G', 1389810088, 0),
(152, 1, 0, 'abcd efgh', 'maggie', 'efgh', 1389810095, 0),
(153, 3, 0, 'abba papa', 'DAddY', 'papa', 1389810994, 0),
(154, 1, 0, 'Balasubramanian A', 'Immense', 'A', 1389810160, 0),
(155, 2, 0, 'Sponge Bob', 'spongebob', 'Bob', 1389810345, 0),
(156, 3, 0, 'sri teja', 'sri', 'teja', 1389810340, 0),
(157, 1, 0, 'ayush nigam', 'ayushrocker92', 'nigam', 1389810209, 0),
(158, 2, 0, 'Nishith Maheshwari', 'nishithm', 'Maheshwari', 1389810298, 0),
(159, 1, 0, 'Renat Gimadeev', 'ariacas', 'Gimadeev', 1389810235, 0),
(160, 1, 0, 'sonali goyal', 'sonali5', 'goyal', 1389810291, 0),
(161, 1, 0, 'Pulkit Aggarwal', 'pulkitrohan', 'Aggarwal', 1389810305, 0),
(162, 1, 0, 'DivyaJyothi Gaddipati', 'Divya', 'Gaddipati', 1389810338, 0),
(163, 1, 0, 'Amit Sharma', 'amishar', 'Sharma', 1389810347, 0),
(164, 1, 0, 'Swapna Kidambi', 'ks123', 'Kidambi', 1389810386, 0),
(165, 2, 0, 'hazard hazard', 'hazard', 'hazard', 1389810443, 0),
(166, 3, 0, 'Mihir Kulkarni', 'mihirk1994', 'Kulkarni', 1389810517, 0),
(167, 1, 0, 'Pranjal Rai', 'qwertyuiop', 'Rai', 1389810456, 0),
(168, 1, 0, 'Shiva Sharma', 'Shiv', 'Sharma', 1389810626, 0),
(169, 1, 0, 'Ajit Mathew', 'tija', 'Mathew', 1389810653, 0),
(170, 3, 0, 'Praveen Dakwale', 'praveend', 'Dakwale', 1389810894, 0),
(171, 1, 0, 'Himil Sheth', 'Sum', 'Sheth', 1389810693, 0),
(172, 1, 0, 'Aditi Gupta', 'scooby', 'Gupta', 1389810695, 0),
(173, 1, 0, 'gayatri nair', 'yogg', 'nair', 1389810719, 0),
(174, 1, 0, 'chandu nadakudhiti', 'ecivon', 'nadakudhiti', 1389810776, 0),
(175, 1, 0, 'Nicolae Ciobanu', 'nicolaeciobanu91', 'Ciobanu', 1389810796, 0),
(176, 1, 0, 'sandhyarani kairam', 'sandhya', 'kairam', 1389810835, 0),
(177, 3, 0, 'Aditya Singh', 'anarchy', 'Singh', 1389811123, 0),
(178, 1, 0, 'J -', 'jarcrack', '-', 1389810939, 0),
(179, 1, 0, 'Kunal Singhal', 'sky', 'Singhal', 1389810988, 0),
(180, 1, 0, 'chetan mohan', 'nani', 'mohan', 1389811007, 0),
(181, 1, 0, 'Sukhjashan Singh', 'darkscale', 'Singh', 1389811033, 0),
(182, 1, 0, 'Hemant Kumar', 'Hemant', 'Kumar', 1389811088, 0),
(183, 1, 0, 'kommeta narsingraj', 'chinna', 'narsingraj', 1389811121, 0),
(184, 1, 0, 'Samuel Gross', 'sg', 'Gross', 1389811126, 0),
(185, 1, 0, 'Bharat Choudary', 'bharath0428', 'Choudary', 1389811133, 0),
(186, 1, 0, 'xxxx xxxxx', 'hardwork', 'xxxxx', 1389811155, 0),
(187, 1, 0, 'akash yeshwanth', 'yashu', 'yeshwanth', 1389811168, 0),
(188, 1, 0, 'Gurjot Singh', 'jihaadi', 'Singh', 1389811207, 0),
(189, 1, 0, 'Pengyu CHEN', 'starrify', 'CHEN', 1389811270, 0),
(190, 1, 0, 'RRR RRR', 'RRR', 'RRR', 1389811290, 0),
(191, 1, 0, 'satvik Gupta', 'Blasters', 'Gupta', 1389811293, 0),
(192, 1, 0, 'chaithanya kiran', 'chaithanya', 'kiran', 1389811299, 0),
(193, 1, 0, 'Nitish Sharma', 'fuzzy', 'Sharma', 1389811362, 0),
(194, 1, 0, 'Gaurav Jain', 'popo', 'Jain', 1389811366, 0),
(195, 1, 0, 'Rajat Jain', 'raj04', 'Jain', 1389811368, 0);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `answers`
--
ALTER TABLE `answers`
  ADD CONSTRAINT `answers_ibfk_1` FOREIGN KEY (`qid`) REFERENCES `questions` (`id`),
  ADD CONSTRAINT `answers_ibfk_2` FOREIGN KEY (`next_qid`) REFERENCES `questions` (`id`);

--
-- Constraints for table `attachments`
--
ALTER TABLE `attachments`
  ADD CONSTRAINT `attachments_ibfk_1` FOREIGN KEY (`qid`) REFERENCES `questions` (`id`);

--
-- Constraints for table `comments`
--
ALTER TABLE `comments`
  ADD CONSTRAINT `comments_ibfk_1` FOREIGN KEY (`qid`) REFERENCES `questions` (`id`),
  ADD CONSTRAINT `comments_ibfk_2` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`);

--
-- Constraints for table `user`
--
ALTER TABLE `user`
  ADD CONSTRAINT `user_ibfk_1` FOREIGN KEY (`cur_question`) REFERENCES `questions` (`id`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
