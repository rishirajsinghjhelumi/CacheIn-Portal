-- phpMyAdmin SQL Dump
-- version 3.4.10.1deb1
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Jan 15, 2014 at 12:28 PM
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
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=20 ;

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
(16, 16, 'gohan', 17, 0),
(17, 3, 'wildcabbage', 4, 0),
(18, 17, 'february', 18, 0),
(19, 18, 'pokemon', 19, 0);

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
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=21 ;

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
(18, 17, '18-2013.png', 'png'),
(19, 18, '17-8021.png', 'png'),
(20, 19, '19-30829.png', 'png');

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
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=72 ;

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
(23, 1, 183, 'What is this?', 0, 1389811224),
(24, 1, 23, 'tried everything\nfor=answer /// so tried for\nname=answer ////// so tried name\nwhat left??????\n', 0, 1389811479),
(25, 1, 52, 'ans pls\n', 0, 1389811861),
(26, 1, 207, 'yeah...in quite dark..hints\n', 0, 1389812246),
(27, 1, 197, 'i m not getting it?give another hint', 0, 1389812251),
(28, 3, 116, 'Hints please! ', 0, 1389812290),
(29, 1, 207, 'hint plzzz', 0, 1389812482),
(30, 1, 216, 'abcd', 0, 1389812568),
(31, 5, 54, 'Any hints???', 0, 1389812706),
(32, 1, 207, 'dont undrsrnd the rule no 3', 0, 1389812860),
(33, 3, 42, 'Please let us know if you changed the answer in between (becuase the question seems to have lost "Question")\nI will have to try from all answers from the beginning.', 1, 1389812880),
(34, 3, 171, 'Tineye Doesn''t shows you have exceeded your search limit.\nIf there is no other way to answer you should probably change then', 1, 1389812969),
(35, 3, 113, 'any clues?', 0, 1389813385),
(36, 4, 103, 'is it related to a movie?', 1, 1389813391),
(37, 1, 52, 'some more hints', 0, 1389813809),
(38, 3, 19, 'Brassica', 0, 1389813905),
(39, 1, 183, 'hint please\n', 0, 1389813961),
(40, 3, 166, 'Can we have a hint please?\n', 0, 1389814016),
(41, 3, 163, '@moderators, some hints here...', 0, 1389814356),
(42, 3, 1, 'Now, we are also accepting alternate answers for this question. Try now!', 1, 1389814426),
(43, 1, 227, 'some more hints\n', 0, 1389814468),
(44, 3, 1, 'No, tineye is surely not the only way to reach the answer. We just wanted to encourage the user to use any reverse image search. You can still use google image search or any other site if you want.', 1, 1389814596),
(45, 1, 210, 'What we should do to solve the problem? We should find some hints in html-code of the page, google this phrase, or what? Please, provide some more hints!', 0, 1389814845),
(46, 1, 225, 'hints ?\n', 0, 1389815055),
(47, 1, 108, 'is there an image coz its not loading after many tries\n', 0, 1389815150),
(48, 8, 213, 'any hints ?', 0, 1389815500),
(49, 2, 12, 'Hmmm, I haven''t got a clue about harry potter ... Any hints ?', 0, 1389815822),
(50, 3, 14, 'any hint??\n', 0, 1389815833),
(51, 5, 66, 'hint dedo, bahut try kar liya.', 0, 1389816116),
(52, 3, 10, '@admin : Please give some hint...what after getting what all pictures mean?', 0, 1389816212),
(53, 2, 241, 'luck?', 0, 1389817062),
(54, 2, 241, '<script>alert(/xxx/)</script>', 0, 1389817322),
(55, 7, 54, 'hint please.....\n', 0, 1389817588),
(56, 3, 15, 'is any hash is the answer.?\nany hint.?', 1, 1389818767),
(57, 3, 15, 'hint plzz..??', 0, 1389818824),
(58, 5, 103, 'hint please???', 0, 1389819223),
(59, 12, 46, 'hint ?? this is really vague ', 1, 1389819735),
(60, 12, 1, 'You just need to look a bit deeper. !!!', 1, 1389820032),
(61, 3, 1, 'There are no Hashes .. Read the rules.', 1, 1389820032),
(62, 3, 31, 'If found two images in that four images in tineye.com, then what to do go on with sites there but nothing found!. Dont know what to do next?', 0, 1389820525),
(63, 5, 42, 'What colour is the snake? Green or yellow? I''m colour blind :P', 0, 1389821109),
(64, 5, 162, 'hint please!', 0, 1389821845),
(65, 5, 265, 'Hints?', 0, 1389821996),
(66, 5, 247, 'hints!', 0, 1389822059),
(67, 13, 46, 'is something related to NSW Minerals Council the answer', 1, 1389822250),
(68, 9, 169, 'Any hint??\n', 0, 1389823800),
(69, 5, 266, 'Hint do !!', 0, 1389823847),
(70, 8, 66, 'hint do please.', 0, 1389824182),
(71, 8, 1, 'Hint : The page has a lot of ads on it..', 1, 1389824701);

-- --------------------------------------------------------

--
-- Table structure for table `questions`
--

CREATE TABLE IF NOT EXISTS `questions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `question` varchar(16384) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=20 ;

--
-- Dumping data for table `questions`
--

INSERT INTO `questions` (`id`, `question`) VALUES
(1, 'May the SOURCE be with you!'),
(2, 'All you need is a little luck!'),
(3, 'Reverse Image search is your best friend!'),
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
(17, ''),
(18, ''),
(19, '');

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
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=304 ;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `cur_question`, `score`, `name`, `nick`, `email`, `last_submit_time`, `penalty`) VALUES
(1, 8, 0, 'Admin User', 'Admin', 'User', 1389814358, 0),
(2, 1, 0, 'Chandan Singh', 'chandan', 'Singh', 1389810241, 0),
(3, 3, 0, 'Alex Podlesniy', 'Podliy16', 'Podlesniy', 1389808243, 0),
(4, 8, 0, 'Kushal Singh', 'kushal', 'Singh', 1389822478, 0),
(5, 5, 0, 'ANVESHI SHUKLA', 'anveshi', 'SHUKLA', 1389813680, 0),
(6, 1, 0, 'chamarthi-venkata hrudayanath', 'hruday', 'hrudayanath', 1389806994, 0),
(7, 5, 0, 'Franz Korntner', 'Untangler', 'Korntner', 1389821308, 0),
(8, 8, 0, 'Batchunag Dashdemberel', 'footman', 'Dashdemberel', 1389819329, 0),
(9, 2, 0, 'Andrew Gorokhov', 'Andrey', 'Gorokhov', 1389807214, 0),
(10, 3, 0, 'AAKASH ANUJ', 'aakashanuj', 'ANUJ', 1389811847, 0),
(11, 5, 0, 'Aanchal Bindal', 'phoenixfire', 'Bindal', 1389814492, 0),
(12, 3, 0, 'Luap Notnevets', 'HENLEYbls', 'Notnevets', 1389820975, 0),
(13, 10, 0, 'Sambuddha Basu', 'sambuddhabasu', 'Basu', 1389824406, 0),
(14, 3, 0, 'morteza hosseini', 'mory91', 'hosseini', 1389812435, 0),
(15, 3, 0, 'Chinmay Agrawal', 'chin2', 'Agrawal', 1389815208, 0),
(16, 1, 0, 'Raunak Talwar', 'raunakrocks', 'Talwar', 1389807036, 0),
(17, 7, 0, 'Anirudh Goyal', 'Zombies', 'Goyal', 1389823910, 0),
(18, 1, 0, 'Vishrut Mehta', 'vishrut009', 'Mehta', 1389807037, 0),
(19, 5, 0, 'Mohammad-Amin Khashkhashi-Moghaddam', 'alexmercer', 'Khashkhashi-Moghaddam', 1389817603, 0),
(20, 1, 0, 'Anirudh Anand', 'D3vi1', 'Anand', 1389807049, 0),
(21, 5, 0, 'Ronak Kogta', 'PaniKePatashe', 'Kogta', 1389822363, 0),
(22, 1, 0, 'yoyo yoyo', 'nick1024', 'yoyo', 1389807053, 0),
(23, 1, 0, 'AKHIL BATRA', 'AKKI', 'BATRA', 1389807056, 0),
(24, 10, 0, 'Amogh Pradeep', 'amoghbl1', 'Pradeep', 1389824582, 0),
(25, 3, 0, 'Harshit Bhagat', 'hbhagat786', 'Bhagat', 1389808568, 0),
(26, 2, 0, 'Dragos Rotaru', 'mathboy', 'Rotaru', 1389808242, 0),
(27, 1, 0, 'Phani Karan', 'phanikaran', 'Karan', 1389807095, 0),
(28, 1, 0, 'Shubham Kansal', 'bluej', 'Kansal', 1389807110, 0),
(29, 5, 0, 'Ada Lovelace', 'MaliceInWonderland', 'Lovelace', 1389819756, 0),
(30, 5, 0, 'Rashi Shrishrimal', 'ras20', 'Shrishrimal', 1389821142, 0),
(31, 4, 0, 'NareshChowdary Kommuri', 'knc', 'Kommuri', 1389823998, 0),
(33, 1, 0, 'Roshani Narasimhan', 'Roshani', 'Narasimhan', 1389807138, 0),
(34, 1, 0, 'Akshit Vij', 'IMMORTAL', 'Vij', 1389807157, 0),
(35, 1, 0, 'Alok Thatikunta', 'anDRew', 'Thatikunta', 1389807164, 0),
(36, 3, 0, 'Arpita Gupta', 'arpi', 'Gupta', 1389810646, 0),
(37, 1, 0, 'Shubham Maheshwari', 'xtremered', 'Maheshwari', 1389807215, 0),
(38, 2, 0, 'klaus klaus', 'drogenbob', 'klaus', 1389811161, 0),
(39, 1, 0, 'Jalpreet Nanda', 'imjalpreet', 'Nanda', 1389807220, 0),
(40, 3, 0, 'Rachit Aggarwal', 'rachit379', 'Aggarwal', 1389816717, 0),
(41, 1, 0, 'anuj gupta', 'anujmanit', 'gupta', 1389807236, 0),
(42, 5, 0, 'Akshay Dinesh', 'asdofindia', 'Dinesh', 1389817211, 0),
(43, 1, 0, 'Guy Fawkes', 'GlundronaBarn', 'Fawkes', 1389807249, 0),
(44, 8, 0, 'Gautam Vepa', 'vepagautam', 'Vepa', 1389818927, 0),
(45, 1, 0, 'Rajat Bhardwaj', 'adp10', 'Bhardwaj', 1389807259, 0),
(46, 15, 0, 'madhuri gaddam', 'devils', 'gaddam', 1389824673, 0),
(47, 3, 0, 'Akshay Kumar', 'kumaraks', 'Kumar', 1389812838, 0),
(48, 2, 0, 'Radu Caragea', 'sinaelgl', 'Caragea', 1389807315, 0),
(49, 8, 0, 'Ayush Mishra', 'Spider', 'Mishra', 1389817021, 0),
(50, 1, 0, 'Sushant Thakur', 'skt', 'Thakur', 1389807283, 0),
(51, 2, 0, 'vaibhav gupta', 'terminator', 'gupta', 1389807304, 0),
(52, 1, 0, 'virendra pratap', 'veeru', 'pratap', 1389807298, 0),
(53, 1, 0, 'Deepak Goyal', 'zonker', 'Goyal', 1389807303, 0),
(54, 8, 0, 'Pulkit Agarwal', 'Timehacker', 'Agarwal', 1389824553, 0),
(55, 3, 0, 'Palash Mittal', 'TheManiac', 'Mittal', 1389812176, 0),
(56, 1, 0, 'rahul anand', '300', 'anand', 1389807340, 0),
(57, 1, 0, 'ashish singh', 'ashish', 'singh', 1389807348, 0),
(58, 8, 0, 'papireddygari maneesha', 'immad', 'maneesha', 1389813685, 0),
(59, 1, 0, 'ram babu', 'fineman', 'babu', 1389807359, 0),
(60, 1, 0, 'Sanyasirao Mopada', 'Sunny', 'Mopada', 1389807367, 0),
(61, 1, 0, 'sahil kharb', 'thefallen', 'kharb', 1389807379, 0),
(62, 1, 0, 'k space', 'kspace', 'space', 1389807380, 0),
(63, 2, 0, 'Andrey Kashin', 'acid', 'Kashin', 1389810888, 0),
(64, 2, 0, 'manoj bhupathiraju', 'maverickme', 'bhupathiraju', 1389818453, 0),
(65, 15, 0, 'Pushyami Rachapudi', 'Push', 'Rachapudi', 1389824699, 0),
(66, 8, 0, 'crazy orangutan', 'crazyorangutan', 'orangutan', 1389821776, 0),
(67, 1, 0, 'Sanatan Mishra', 'sanatan', 'Mishra', 1389807540, 0),
(68, 1, 0, 'Rohit Ranjan', 'nikku', 'Ranjan', 1389807551, 0),
(69, 3, 0, 'NageswaraRao Podilapu', 'Nagesh', 'Podilapu', 1389812028, 0),
(70, 3, 0, 'srishti aggarwal', 'srishti', 'aggarwal', 1389809894, 0),
(71, 1, 0, 'Sindhu Ernala', 'sindh', 'Ernala', 1389807620, 0),
(72, 1, 0, 'Sravya popuri', 'potter', 'popuri', 1389807628, 0),
(73, 1, 0, 'Karan Dhamele', 'krans4u', 'Dhamele', 1389807692, 0),
(74, 1, 0, 'satish kumar', 'sam', 'kumar', 1389807692, 0),
(75, 1, 0, 'Prantar Ghosh', 'prantarg', 'Ghosh', 1389807695, 0),
(76, 1, 0, 'neo optimus', 'neo', 'optimus', 1389807710, 0),
(77, 3, 0, 'Siddharth Tanwar', 'sid112233', 'Tanwar', 1389809914, 0),
(78, 1, 0, 'Ajay Choudhary', 'Chou110125', 'Choudhary', 1389807849, 0),
(79, 4, 0, 'Yogeesh S', 'y0g1337h', 'S', 1389824350, 0),
(80, 5, 0, 'Saumya Dwivedi', 'please', 'Dwivedi', 1389812755, 0),
(81, 3, 0, 'Neelesh Dwivedi', 'Neal', 'Dwivedi', 1389812000, 0),
(82, 1, 0, 'Aasritha Pisupati', 'Aasritha', 'Pisupati', 1389807929, 0),
(83, 5, 0, 'Roopal Nahar', 'roop08', 'Nahar', 1389821215, 0),
(84, 1, 0, 'Akshay Krishnan', 'b3h3m0th', 'Krishnan', 1389807951, 0),
(85, 1, 0, 'Shubham Bansal', 'iN3O', 'Bansal', 1389807957, 0),
(86, 5, 0, 'Nishant Prateek', 'IT', 'Prateek', 1389814654, 0),
(87, 1, 0, 'Shivam Tripathi', 'blitz', 'Tripathi', 1389808070, 0),
(88, 5, 0, 'Akshaya Purohit', 'LOGAN', 'Purohit', 1389813276, 0),
(89, 1, 0, 'Swaminathan G', 'swami', 'G', 1389808134, 0),
(90, 5, 0, 'Somanshu Agarwal', 'somu', 'Agarwal', 1389813484, 0),
(91, 1, 0, 'Manu Mishra', 'ManuM', 'Mishra', 1389808180, 0),
(92, 3, 0, 'aayush saxena', 'aayush', 'saxena', 1389810700, 0),
(93, 1, 0, 'Gaurav Chandak', 'gc93', 'Chandak', 1389808229, 0),
(94, 8, 0, 'parag gupta', 'darkhorcrux', 'gupta', 1389824910, 0),
(95, 5, 0, 'Saksham Aggarwal', 'sakagg', 'Aggarwal', 1389813643, 0),
(96, 3, 0, 'Vamsee Chamakura', 'Vamsee', 'Chamakura', 1389809804, 0),
(97, 3, 0, 'ramachandra sharma', 'ram235', 'sharma', 1389809799, 0),
(98, 3, 0, 'Ashish Sahay', 'phire404', 'Sahay', 1389811463, 0),
(99, 5, 0, 'Sriram Narayanan', 'Sriram', 'Narayanan', 1389814151, 0),
(100, 2, 0, 'Carl Johnson', 'carlj', 'Johnson', 1389811129, 0),
(101, 1, 0, 'Akhil Jindal', 'akhiljindal12', 'Jindal', 1389808392, 0),
(102, 9, 0, 'Dinesh Singla', 'roxkiller', 'Singla', 1389823738, 0),
(103, 8, 0, 'Prateek Saxena', 'Pammi', 'Saxena', 1389824224, 0),
(104, 1, 0, 'Sanjana Sharma', 'CagedHues', 'Sharma', 1389808422, 0),
(105, 1, 0, 'Rakesh Kumar', 'Raky', 'Kumar', 1389808435, 0),
(106, 4, 0, 'Ritu Gupta', 'ritugupta', 'Gupta', 1389817612, 0),
(107, 1, 0, 'Ayush Agrawal', 'ayusha', 'Agrawal', 1389808465, 0),
(108, 5, 0, 'Adarsh Mohata', 'adi', 'Mohata', 1389820402, 0),
(109, 1, 0, 'Siddharth Bhatore', 'sid1', 'Bhatore', 1389808497, 0),
(110, 1, 0, 'Deepak Kumar', 'rusty', 'Kumar', 1389808519, 0),
(111, 3, 0, 'Andrey Anurin', 'Abra', 'Anurin', 1389812448, 0),
(112, 4, 0, 'Anupriya Inumella', 'AP', 'Inumella', 1389814542, 0),
(113, 3, 0, 'ravindar kumar', 'root', 'kumar', 1389811250, 0),
(114, 1, 0, 'Vijaya-Sai-Krishna Gottipati', 'gvsaikrishna', 'Gottipati', 1389808698, 0),
(115, 5, 0, 'Nikhil Bhandari', 'Hellboy', 'Bhandari', 1389813330, 0),
(116, 8, 0, 'Shriram Rahatgaonkar', 'techwiz911', 'Rahatgaonkar', 1389816202, 0),
(117, 5, 0, 'ayan srivastava', 'ayan', 'srivastava', 1389817079, 0),
(118, 8, 0, 'giga dd', 'giga811', 'dd', 1389819103, 0),
(119, 3, 0, 'Team Wheatley', 'TeamWheatley', 'Wheatley', 1389810008, 0),
(120, 10, 0, 'Debayan Das', 'Iceflame007', 'Das', 1389824740, 0),
(121, 8, 0, 'akhil akkireddy', 'akhee', 'akkireddy', 1389823485, 0),
(122, 3, 0, 'Vanshika Srivastava', 'padfoot', 'Srivastava', 1389820986, 0),
(123, 8, 0, 'Pappu Pandey', 'pappu', 'Pandey', 1389824676, 0),
(124, 2, 0, 'Parag Agrawal', 'parag11', 'Agrawal', 1389809133, 0),
(125, 2, 0, 'Mihir Sahasrabudhe', 'Squid', 'Sahasrabudhe', 1389813827, 0),
(126, 3, 0, 'Saksham Agrawal', 'saksham115', 'Agrawal', 1389810441, 0),
(127, 1, 0, 'Arushi Jain', 'arushi', 'Jain', 1389809026, 0),
(128, 1, 0, 'Ritwik Mukherjee', 'sanritwik', 'Mukherjee', 1389809066, 0),
(129, 8, 0, 'Tanmay Sahay', 'tanmaysahay94', 'Sahay', 1389820726, 0),
(130, 3, 0, 'Miles Bench', 'coffeeblack198', 'Bench', 1389810224, 0),
(131, 6, 0, 'Sharan Girdhani', 'sharan123', 'Girdhani', 1389824576, 0),
(132, 3, 0, 'Rishabh Raj', 'sharky', 'Raj', 1389811949, 0),
(133, 5, 0, 'Meghana Manusanipalli', 'Meghana', 'Manusanipalli', 1389816097, 0),
(134, 1, 0, 'aman agarwal', 'dare109', 'agarwal', 1389809410, 0),
(135, 3, 0, 'ayush jhunjhunwala', 'ayushblaster', 'jhunjhunwala', 1389810568, 0),
(136, 1, 0, 'VeerabhadraRao Boda', 'bhadra', 'Boda', 1389809440, 0),
(137, 3, 0, 'Nisarg Jhaveri', 'nisargjhaveri', 'Jhaveri', 1389812579, 0),
(138, 1, 0, 'Ankit Mittal', 'Ankit75', 'Mittal', 1389809617, 0),
(139, 3, 0, 'Sudharshan Kumar', 'draco', 'Kumar', 1389811253, 0),
(140, 2, 0, 'Rajesh Vakkalagadda', 'orion', 'Vakkalagadda', 1389810709, 0),
(141, 2, 0, 'Devadath VV', 'blackmagic', 'VV', 1389810548, 0),
(142, 1, 0, 'Harsh Kedia', 'Harsh', 'Kedia', 1389809724, 0),
(143, 3, 0, 'javvaji kiran', 'kiran', 'kiran', 1389810247, 0),
(144, 8, 0, 'Prachish Gora', 'drazen167', 'Gora', 1389816616, 0),
(145, 1, 0, 'Anubhav Gupta', 'anubhavkkr', 'Gupta', 1389809866, 0),
(146, 3, 0, 'HIMANGI SARAOGI', 'visionary', 'SARAOGI', 1389810440, 0),
(147, 1, 0, 'sai chaitanya', 'qdgt', 'chaitanya', 1389809884, 0),
(148, 1, 0, 'vuthikarestha vuthikarestha', 'vuthikarestha', 'vuthikarestha', 1389810034, 0),
(149, 1, 0, 'krishna tulsyan', 'krishna0512', 'tulsyan', 1389810036, 0),
(150, 1, 0, 'Pallav Shah', 'pallav', 'Shah', 1389810073, 0),
(151, 3, 0, 'Shruti G', 'gshruti', 'G', 1389812079, 0),
(152, 1, 0, 'abcd efgh', 'maggie', 'efgh', 1389810095, 0),
(153, 8, 0, 'abba papa', 'DAddY', 'papa', 1389816774, 0),
(154, 1, 0, 'Balasubramanian A', 'Immense', 'A', 1389810160, 0),
(155, 4, 0, 'Sponge Bob', 'spongebob', 'Bob', 1389813172, 0),
(156, 3, 0, 'sri teja', 'sri', 'teja', 1389810340, 0),
(157, 1, 0, 'ayush nigam', 'ayushrocker92', 'nigam', 1389810209, 0),
(158, 2, 0, 'Nishith Maheshwari', 'nishithm', 'Maheshwari', 1389810298, 0),
(159, 1, 0, 'Renat Gimadeev', 'ariacas', 'Gimadeev', 1389810235, 0),
(160, 1, 0, 'sonali goyal', 'sonali5', 'goyal', 1389810291, 0),
(161, 1, 0, 'Pulkit Aggarwal', 'pulkitrohan', 'Aggarwal', 1389810305, 0),
(162, 5, 0, 'DivyaJyothi Gaddipati', 'Divya', 'Gaddipati', 1389817156, 0),
(163, 3, 0, 'Amit Sharma', 'amishar', 'Sharma', 1389812871, 0),
(164, 4, 0, 'Swapna Kidambi', 'ks123', 'Kidambi', 1389817269, 0),
(165, 3, 0, 'hazard hazard', 'hazard', 'hazard', 1389812026, 0),
(166, 3, 0, 'Mihir Kulkarni', 'mihirk1994', 'Kulkarni', 1389810517, 0),
(167, 1, 0, 'Pranjal Rai', 'qwertyuiop', 'Rai', 1389810456, 0),
(168, 1, 0, 'Shiva Sharma', 'Shiv', 'Sharma', 1389810626, 0),
(169, 9, 0, 'Ajit Mathew', 'tija', 'Mathew', 1389820728, 0),
(170, 4, 0, 'Praveen Dakwale', 'praveend', 'Dakwale', 1389813117, 0),
(171, 3, 0, 'Himil Sheth', 'Sum', 'Sheth', 1389811948, 0),
(172, 1, 0, 'Aditi Gupta', 'scooby', 'Gupta', 1389810695, 0),
(173, 3, 0, 'gayatri nair', 'yogg', 'nair', 1389822678, 0),
(174, 1, 0, 'chandu nadakudhiti', 'ecivon', 'nadakudhiti', 1389810776, 0),
(175, 5, 0, 'Nicolae Ciobanu', 'nicolaeciobanu91', 'Ciobanu', 1389816117, 0),
(176, 1, 0, 'sandhyarani kairam', 'sandhya', 'kairam', 1389810835, 0),
(177, 5, 0, 'Aditya Singh', 'anarchy', 'Singh', 1389823625, 0),
(178, 2, 0, 'J -', 'jarcrack', '-', 1389811745, 0),
(179, 1, 0, 'Kunal Singhal', 'sky', 'Singhal', 1389810988, 0),
(180, 1, 0, 'chetan mohan', 'nani', 'mohan', 1389811007, 0),
(181, 1, 0, 'Sukhjashan Singh', 'darkscale', 'Singh', 1389811033, 0),
(182, 1, 0, 'Hemant Kumar', 'Hemant', 'Kumar', 1389811088, 0),
(183, 1, 0, 'kommeta narsingraj', 'chinna', 'narsingraj', 1389811121, 0),
(184, 3, 0, 'Samuel Gross', 'sg', 'Gross', 1389821006, 0),
(185, 1, 0, 'Bharat Choudary', 'bharath0428', 'Choudary', 1389811133, 0),
(186, 1, 0, 'xxxx xxxxx', 'hardwork', 'xxxxx', 1389811155, 0),
(187, 2, 0, 'akash yeshwanth', 'yashu', 'yeshwanth', 1389818635, 0),
(188, 1, 0, 'Gurjot Singh', 'jihaadi', 'Singh', 1389811207, 0),
(189, 1, 0, 'Pengyu CHEN', 'starrify', 'CHEN', 1389811270, 0),
(190, 8, 0, 'RRR RRR', 'RRR', 'RRR', 1389820988, 0),
(191, 1, 0, 'satvik Gupta', 'Blasters', 'Gupta', 1389811293, 0),
(192, 1, 0, 'chaithanya kiran', 'chaithanya', 'kiran', 1389811299, 0),
(193, 3, 0, 'Nitish Sharma', 'fuzzy', 'Sharma', 1389812207, 0),
(194, 3, 0, 'Gaurav Jain', 'popo', 'Jain', 1389816892, 0),
(195, 1, 0, 'Rajat Jain', 'raj04', 'Jain', 1389811368, 0),
(196, 1, 0, 'Manu Jain', 'MJ13', 'Jain', 1389811438, 0),
(197, 1, 0, 'Priya Juneja', 'codecrawler', 'Juneja', 1389811446, 0),
(198, 1, 0, 'Shantanu Patil', 'Perpendicular', 'Patil', 1389811462, 0),
(199, 3, 0, 'Saujanya Reddy', 'saujanya', 'Reddy', 1389814020, 0),
(200, 1, 0, 'Anurag Ghosh', 'xel', 'Ghosh', 1389811636, 0),
(201, 3, 0, 'Nurendra Choudhary', 'Nurendra', 'Choudhary', 1389812621, 0),
(202, 1, 0, 'Karan Aggarwal', 'karanaggarwal', 'Aggarwal', 1389811679, 0),
(203, 9, 0, 'Apurva Kumar', 'cruxeon', 'Kumar', 1389824849, 0),
(204, 2, 0, 'Eugene Ptashko', 'RooterX', 'Ptashko', 1389811957, 0),
(205, 8, 0, 'sriram gudimella', 'strykerami', 'gudimella', 1389817048, 0),
(206, 3, 0, 'Sai Miduthuri', 'Master', 'Miduthuri', 1389813516, 0),
(207, 1, 0, 'KALYANSUNDAR DAS', 'DEDICATED2SCIENCE', 'DAS', 1389812065, 0),
(208, 2, 0, 'Saumya Pathak', 'thisiscrap', 'Pathak', 1389812256, 0),
(209, 3, 0, 'Anubhav J', 'turtle', 'J', 1389812663, 0),
(210, 1, 0, 'Vladimir Smykalov', 'enot', 'Smykalov', 1389812236, 0),
(211, 8, 0, 'Simpi Kumari', 'Cameo', 'Kumari', 1389817263, 0),
(212, 5, 0, 'first last', 'ninja', 'last', 1389820603, 0),
(213, 15, 0, 'madhuri gaddam', 'LOL', 'gaddam', 1389824690, 0),
(214, 1, 0, 'priyanka deshpande', 'cashin', 'deshpande', 1389812344, 0),
(215, 9, 0, 'Vinil Narang', 'TheGame', 'Narang', 1389824014, 0),
(216, 1, 0, 'Test TEst', 'test123', 'TEst', 1389812549, 0),
(217, 1, 0, 'Balasubramaniam Natarajan', 'bullet', 'Natarajan', 1389812622, 0),
(218, 1, 0, 'Lalithya Ch', 'Lalli', 'Ch', 1389812637, 0),
(219, 1, 0, 'divyata sharma', 'cachein', 'sharma', 1389812907, 0),
(220, 3, 0, 'Sanjana Karanth', 'BlackBox', 'Karanth', 1389817464, 0),
(221, 8, 0, 'Pratik Jacob', 'pratikej', 'Jacob', 1389821219, 0),
(222, 1, 0, 'Lalit Kundu', 'darkshadows', 'Kundu', 1389813510, 0),
(223, 1, 0, 'Soumya Sharma', 'soumya', 'Sharma', 1389813730, 0),
(224, 3, 0, 'Nairirya Khilari', 'Nkman', 'Khilari', 1389814331, 0),
(225, 1, 0, 'Manan Dhawan', 'Traitor', 'Dhawan', 1389813791, 0),
(226, 1, 0, 'Shivam Garg', 'shivamgarg', 'Garg', 1389813901, 0),
(227, 1, 0, 'Kushagra Desai', 'kush', 'Desai', 1389813973, 0),
(228, 8, 0, 'Saksham Garg', 'aiccha', 'Garg', 1389822170, 0),
(229, 1, 0, 'Mohsen Yazdinejad', 'mosiomohsen', 'Yazdinejad', 1389814312, 0),
(230, 1, 0, 'mahesh goud', 'paruchur', 'goud', 1389814375, 0),
(231, 3, 0, 'vikas singh', 'v1k1', 'singh', 1389815121, 0),
(232, 1, 0, 'vishal Goel', 'vishal', 'Goel', 1389814867, 0),
(233, 1, 0, 'Daljeet Singh', 'dj', 'Singh', 1389814904, 0),
(234, 1, 0, 'd dk', 'ddk', 'dk', 1389815398, 0),
(235, 1, 0, 'Kapil Dolas', 'kapildd', 'Dolas', 1389815660, 0),
(236, 2, 0, 'Georgy Chebanov', 'gchebanov', 'Chebanov', 1389815919, 0),
(237, 9, 0, 'Jagannadharaju Dantuluri', 'rockthehell', 'Dantuluri', 1389823582, 0),
(238, 1, 0, 'SHUBHAM GARG', 'codeshubh', 'GARG', 1389815834, 0),
(239, 10, 0, 'Shounak Dey', 'dylandey', 'Dey', 1389824670, 0),
(240, 1, 0, 'Akash Agrawall', 'aka007', 'Agrawall', 1389816098, 0),
(241, 2, 0, 'Owen Ou', 'f0r', 'Ou', 1389816378, 0),
(242, 1, 0, 'KANISHKA SINGHAL', 'KANISHKA', 'SINGHAL', 1389816262, 0),
(243, 1, 0, 'Anirudh Bhargava', 'venky5556', 'Bhargava', 1389816599, 0),
(244, 9, 0, 'Abhishek Chinni', 'Laxus94', 'Chinni', 1389822626, 0),
(245, 1, 0, 'Panagiotis Kostopanagiotis', 'infinity', 'Kostopanagiotis', 1389816701, 0),
(246, 3, 0, 'Tanoy Bose', 'Bose', 'Bose', 1389817747, 0),
(247, 5, 0, 'sasha grey', 'sashagrey', 'grey', 1389819557, 0),
(248, 3, 0, 'IIITHyderabad Rocks', 'IIIT', 'Rocks', 1389823879, 0),
(249, 4, 0, 'Mallipeddi Hardhik', 'Hardy', 'Hardhik', 1389824937, 0),
(250, 1, 0, 'Rounak Patni', 'rounak1160', 'Patni', 1389817351, 0),
(251, 1, 0, 'Jyothiram Pekala', 'J0rd3n', 'Pekala', 1389817441, 0),
(252, 2, 0, 'Siddharth Son_of_Gora Bonda ;) ', 'perplex', 'gora', 1389819884, 0),
(253, 3, 0, 'harish chava', 'harish', 'chava', 1389820210, 0),
(254, 1, 0, 'Kshitij Kansal', 'kansal', 'Kansal', 1389817640, 0),
(255, 4, 0, 'Edward Kenway', 'Assassin', 'Kenway', 1389820572, 0),
(256, 1, 0, 'Rasna Goyal', 'genius', 'Goyal', 1389817939, 0),
(257, 1, 0, 'Ashutosh Sharma', 'Ashutosh', 'Sharma', 1389817968, 0),
(258, 1, 0, 'Mrugesh Joshi', 'joshimrugesha', 'Joshi', 1389817988, 0),
(259, 3, 0, 'Sachin Gupta', 'sach', 'Gupta', 1389818713, 0),
(260, 1, 0, 'Gaurav Mittal', 'gauravmittal', 'Mittal', 1389818347, 0),
(261, 1, 0, 'chetan dha', 'che09dha', 'dha', 1389818469, 0),
(262, 8, 0, 'Sharvil Katariya', 'Sash', 'Katariya', 1389821576, 0),
(263, 1, 0, 'AKSHAY BAPAT', 'hawkeye', 'BAPAT', 1389818793, 0),
(264, 9, 0, 'Jack Baurer', '24', 'Baurer', 1389823369, 0),
(265, 5, 0, 'Akshat Khandelwal', 'akshatk7', 'Khandelwal', 1389820482, 0),
(266, 5, 0, 'Pulkit Singhal', 'GodDamnit', 'Singhal', 1389822120, 0),
(267, 1, 0, 'Akhil Lohchab', 'Shadowfax', 'Lohchab', 1389819008, 0),
(268, 1, 0, 'vivek nagaraju', 'vivekn', 'nagaraju', 1389819095, 0),
(269, 1, 0, 'Yu Ching', 'AAMchineseAADMI', 'Ching', 1389819157, 0),
(270, 5, 0, 'romil aggarwal', 'L', 'aggarwal', 1389822558, 0),
(271, 1, 0, 'Drishti Wali', 'oscar', 'Wali', 1389819958, 0),
(272, 8, 0, 'Archit Sachdeva', 'antiarchit', 'Sachdeva', 1389824136, 0),
(273, 3, 0, 'Spandana Karanam', 'Spandana', 'Karanam', 1389821621, 0),
(274, 10, 0, 'Aditya Sreekar', 'BlackMamba', 'Sreekar', 1389824644, 0),
(275, 3, 0, 'Mohit Garg', 'Mohitgarg', 'Garg', 1389821125, 0),
(276, 1, 0, 'shubham gupta', 'shubh234', 'gupta', 1389820686, 0),
(277, 8, 0, 'Niharika Kohli', 'Niharika', 'Kohli', 1389824204, 0),
(278, 2, 0, 'Yuzhou Gu', 'sevenkplus', 'Gu', 1389821188, 0),
(279, 9, 0, 'JeevanChowdary Mandadapu', 'mjeevan268', 'Mandadapu', 1389824109, 0),
(280, 2, 0, 'Ayush Soni', 'kingayu', 'Soni', 1389824891, 0),
(281, 1, 0, 'Chirag Bakliwal', 'twincoder', 'Bakliwal', 1389821427, 0),
(282, 8, 0, 'Kaveri Anuranjana', 'Homra', 'Anuranjana', 1389823865, 0),
(283, 3, 0, 'Rahul Mittal', 'Elites', 'Mittal', 1389822215, 0),
(284, 1, 0, 'Aashik Ahmed', 'Aash', 'Ahmed', 1389821554, 0),
(285, 2, 0, 'Roman Lebedev', 'n0n3m4', 'Lebedev', 1389822030, 0),
(286, 1, 0, 'Abhishek Sharma', 'cr0m3t', 'Sharma', 1389821978, 0),
(287, 1, 0, 'Jahnavi Suthar', 'jahnavi59', 'Suthar', 1389822007, 0),
(288, 3, 0, 'piyush Gaurav', 'dantedevil', 'Gaurav', 1389823751, 0),
(289, 1, 0, 'Apaar Garg', 'apaargarg', 'Garg', 1389822255, 0),
(290, 1, 0, 'Pulkit Agarwal', 'PulkitIIIT', 'Agarwal', 1389822608, 0),
(291, 1, 0, 'sumit chawla', 'imperfect', 'chawla', 1389822610, 0),
(292, 3, 0, 'Sagar Gaur', 'firzen', 'Gaur', 1389824241, 0),
(293, 3, 0, 'Saeed Nejati', 'saeedn', 'Nejati', 1389824746, 0),
(294, 2, 0, 'Soumyajit Paul', 'soumyajit', 'Paul', 1389824306, 0),
(295, 1, 0, 'Margarita Murashko', 'Yuiyui', 'Murashko', 1389823422, 0),
(296, 3, 0, 'Neel Bommisetty', 'Horcrux', 'Bommisetty', 1389823806, 0),
(297, 3, 0, 'Deepak Chawla', 'DC', 'Chawla', 1389824342, 0),
(298, 1, 0, 'Sumit Goel', 'sumit', 'Goel', 1389823707, 0),
(299, 1, 0, 'Tushant Jha', 'particlemania', 'Jha', 1389824079, 0),
(300, 1, 0, 'bhalu bhalu', 'bhalu', 'bhalu', 1389824152, 0),
(301, 2, 0, 'Rashika Kheria', 'killerinstinct', 'Kheria', 1389824687, 0),
(302, 1, 0, 'Aniket Sachdeva', 'CR', 'Sachdeva', 1389824812, 0),
(303, 1, 0, 'Mohit Goel', 'mohit', 'Goel', 1389824920, 0);

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
