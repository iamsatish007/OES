-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 13, 2021 at 04:44 AM
-- Server version: 10.1.38-MariaDB
-- PHP Version: 7.3.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `u883109988_quiz_new`
--

-- --------------------------------------------------------

--
-- Table structure for table `feedback`
--

CREATE TABLE `feedback` (
  `loginid` varchar(25) COLLATE utf8_unicode_ci NOT NULL,
  `q1` int(11) NOT NULL,
  `q2` int(11) NOT NULL,
  `q3` int(11) NOT NULL,
  `q4` int(11) NOT NULL,
  `q5` int(11) NOT NULL,
  `q6` int(11) NOT NULL,
  `suggestion` varchar(1000) COLLATE utf8_unicode_ci NOT NULL,
  `date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `loginstatus`
--

CREATE TABLE `loginstatus` (
  `status` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `loginstatus`
--

INSERT INTO `loginstatus` (`status`) VALUES
(0);

-- --------------------------------------------------------

--
-- Table structure for table `mst_admin`
--

CREATE TABLE `mst_admin` (
  `id` int(11) NOT NULL,
  `loginid` varchar(50) NOT NULL,
  `pass` varchar(50) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `mst_admin`
--

INSERT INTO `mst_admin` (`id`, `loginid`, `pass`) VALUES
(2, 'admin', 'admin');

-- --------------------------------------------------------

--
-- Table structure for table `mst_question`
--

CREATE TABLE `mst_question` (
  `que_id` int(5) NOT NULL,
  `test_id` int(5) DEFAULT NULL,
  `que_desc` varchar(500) DEFAULT NULL,
  `ans1` varchar(75) DEFAULT NULL,
  `ans2` varchar(75) DEFAULT NULL,
  `ans3` varchar(75) DEFAULT NULL,
  `ans4` varchar(75) DEFAULT NULL,
  `true_ans` int(1) DEFAULT NULL,
  `temp` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `mst_question`
--

INSERT INTO `mst_question` (`que_id`, `test_id`, `que_desc`, `ans1`, `ans2`, `ans3`, `ans4`, `true_ans`, `temp`) VALUES
(1, 14, '		What is the shortcut key for Save as ?		', 'Ctrl +shift + S', 'Ctrl +Alt + S', 'Ctrl +S', 'Ctrl +Shift +C', 1, 0),
(2, 14, 'What is the shortcut key for replace?', 'Ctrl +R', 'Ctrl + H', 'Ctrl + G', 'Ctrl + K', 2, 0),
(3, 14, 'If we have to find a certain file which shortcut will be used.', 'Ctrl + E', 'Ctrl + N', 'Ctrl + Q', 'Ctrl + F', 4, 0),
(4, 14, 'The computer generations are classified into____________________ categories.', '2', '3', '5', '6', 3, 0),
(5, 14, 'The first generations of computers are based on the.', 'Made Tube', 'John Von Tube', 'Vacuum Tube', 'None of these', 3, 0),
(6, 14, 'ENIAC, EDVAC & EDSAC are the computers of-', '1st generation', '2nd generation', '3rd generation', '4th generation', 1, 0),
(7, 14, 'The second generations of computers are based on-', 'Vacuum tube    ', 'Integrated circuit', 'Microprocessor', 'Transistor', 4, 0),
(8, 14, 'IC stands for________.', 'Input channel', 'Integrated circuit', 'Input circuit	', 'Integrated chip', 2, 0),
(9, 14, 'Desktop and PDA are the examples of _______________ computers.', 'Mini ', 'Super ', 'Mainframe ', 'Micro', 4, 0),
(10, 14, 'Who is known as the father of computers?\r\n', 'Charles Babbage', 'John Von Numean', 'Charlie chals', 'Walter Brattain', 1, 0),
(12, 17, 'Are …….your books?', 'This', 'That', 'Those', 'There', 3, 0),
(13, 17, 'I ……take tea.', 'am', 'was', 'never', 'nevers', 3, 0),
(14, 17, 'Mohan …..... playing cricket since morning.    ', 'is', 'was', 'has', 'has been', 4, 0),
(15, 17, 'There isn`t…..sugar in my coffee.', 'many', 'much', 'sweet', 'less', 2, 0),
(16, 17, 'He goes to Patna………Monday.', 'on', 'from', 'at', 'since', 1, 0),
(17, 17, 'Which of following pair is Volatile memory?	', 'RAM and Floppy disk', 'Cache and Floppy disk', 'RAM and Cache', 'RAM and Hard disk', 3, 0),
(18, 17, 'BIOS stands for?', 'Basic Input Output System', 'Basic Integrated Output System', 'Basic Intitial Output Service', 'Basic Internal Output System', 1, 0),
(19, 17, 'What is the full form of BHIM?', 'Bharat Hindustan Indian money', 'Bharat Hindustan immigration money', 'Bharat Interface for Money', 'Bharat Immigrant Money', 3, 0),
(20, 17, 'Full form of IP address is internet Provided address.		', 'True', 'False', 'Cant Say', 'None of these', 2, 0),
(21, 17, '		you want to create a greeting card in MS paint. While working in MS paint window you can use the interface displayed on the screen to insert various __________ to create an attractive greeting card.		', 'Smart art graphics', 'Clip arts', 'Charts', 'Shapes', 4, 0),
(22, 17, 'A good example of an operating system that makes your computer function and controls the working environment is __________.', 'MS Ofiice 2013', 'File Explorer', 'Windows 7', 'Task Manager', 3, 0),
(23, 17, 'In windows operating system, you can create a letter with the help of MS paint application .', 'True', 'False', 'Cant Say', 'Sometimes', 2, 0),
(24, 17, 'You are starting your computer that means you are ________________ your computer', 'Scanning', 'Restoring', 'Booting', 'Drafting', 3, 0),
(25, 17, '_______________ an icon runs the program or accesses the file associated with it.  ', 'Left-Clicking', 'Right-Clicking', 'Single-Clicking', 'Double-Clicking', 4, 0),
(26, 17, ' _______________ an icon accesses a menu offering options, action and properties.', 'Left-Clicking', 'Right-Clicking', 'Single-Clicking', 'Double-Clicking', 2, 0),
(27, 17, 'To put your PC in sleep mode?', 'Turn off the PC', 'Click the Start button', 'Click the Power option and choose Sleep', 'Option 2 Followed by Option 3', 4, 0),
(28, 17, 'To switch to another user without closing the programs of the current user.', 'Log off', 'Sleep', 'Lock', 'Switch User', 4, 0),
(29, 17, 'Our country is spiritual country, theirs ……………….. religious ', 'is', 'are', 'also', 'have', 1, 0),
(30, 17, 'Our sir teaches Mathematics ………..  English.', 'Across', 'Besides', 'Beside', 'Both', 2, 0),
(31, 17, 'Please don’t laugh …………… those beggars.', 'for', 'against', 'at', 'from', 3, 0),
(32, 17, 'The equipment that processes data in order to create information is called the ___________.', 'Typology', 'Compiler', 'Hardware', 'Software', 3, 0),
(33, 17, 'The restarting of a computer is known as cold boot?', 'True ', 'False', 'May be', 'I dont know', 2, 0),
(34, 17, 'The restarting of a computer is known as warm boot?', 'True', 'False', 'May be', 'I dont know', 1, 0),
(35, 17, 'Which one is the example of application software?', 'Mac OS', 'Linux', 'Windows XP', 'Word 2013', 4, 0),
(36, 17, 'Please stop ………..so many mistakes.', 'to make', 'make', 'making', 'makes', 3, 0),
(37, 17, 'She ………her child for 15 minutes.', 'is beating', 'has been beating', 'has been beaten', 'beats', 2, 0),
(38, 17, 'Who is the father of the computer ?', 'Charles Babbage', 'Bill Gates', 'Harry Clinton', 'Mark Zuckerberg', 1, 0),
(39, 17, 'What is the full form of RAM?', 'Random access memory', 'Random accessories memory', 'Random access management', 'Random acquire memory', 1, 0),
(40, 17, 'RAM is a volatile memory?', 'True', 'False', 'Both', 'None of these', 1, 0),
(41, 17, 'He is _____ honest person.', 'a', 'an', 'the', 'nothing', 2, 0),
(47, 20, 'You want to open the notepad application to create a text document. How will you open?  ', 'Start>windows Accessories>Notepad ', 'Windows Accessories>Notepad>Start ', 'Start>Open Notepad  ', 'Notepad> windows Accessories ', 1, 0),
(48, 20, 'Use appropriate steps to open WordPad application ', 'Start>WordPad ', 'WordPad>Windows Accessories  ', 'Start> Windows Accessories>WordPad', 'Windows Accessories>start>WordPad', 3, 0),
(49, 20, 'The function keys on the keyboard of the computer……………………. ', 'Cancel selection or procdular ', 'are keyboard shortcuts of specific task ', 'inter numbers and automatic symbols ', 'control point ', 2, 0),
(50, 20, 'in windows operating system, start button is used to ……………………….? ', 'Run application  ', 'Device setting.  ', 'Turn off the system ', 'All of these', 4, 0),
(51, 20, 'In the most cases, the word “ software” in interchangeable with the word ………………? a. Procedure  ', 'Program  ', 'Computer ', 'Metadata ', 'Procedure ', 2, 0),
(52, 20, ' Use appropriate steps to select the hibernate mode of your laptop. ', 'Power button>hibernate> start ', 'Start>power button>hibernate ', 'Power button>hibernate ', 'Hibernate ', 2, 0),
(53, 20, 'That is the use of Ctrl+b  ', 'Bold ', 'Italic ', 'Underline  ', 'Select ', 1, 0),
(54, 20, 'Use appropriate steps to select the sleep mode of your laptop.  ', 'Power button>sleep  ', 'Start>power button>sleep ', 'Start>sleep  ', 'Start> Accessories>sleep ', 2, 0),
(55, 20, 'While typing text in wordpad application, you want ot move text aromatically form one line to the next line. To do so, you can use ………………. feature of wordpad.  ', 'Font ', 'Color ', 'WordWrap', 'Mail merge ', 3, 0),
(56, 20, '……………… is any data or instructions that are used by a computer. ', 'Digital ', 'Output ', 'Input ', 'Information', 3, 0),
(57, 20, 'What happens in a document when the ‘ Cut’ command is used. ', 'Only half the esteem is see.', 'Select the text or graphics are removed  ', 'The application text running ', 'None of these ', 2, 0),
(58, 20, 'The ………………provides a multimedia interface to the numerous resources available on the internet. ', 'Data ', 'Web ', 'USB ', 'Pruderies  ', 2, 0),
(59, 20, '…… is the transmission of electronic massages over the internet.  ', 'Virus  ', 'E-mail  ', 'Windows explore  ', 'Microsoft ', 2, 0),
(60, 20, 'Ctrl+O is used  ', 'Bold', 'Open document ', 'Underline ', 'Close document ', 2, 0),
(61, 20, 'What is full form of CPU? ', 'Central processing unit  ', 'Central process unit  ', 'Center processing unit ', 'Control processing unit ', 1, 0),
(62, 20, 'Commend button Ctrl+A is used?  ', 'Select all  ', 'Cut  ', 'Open documents  ', 'Bold ', 1, 0),
(63, 20, 'My friend Anita………. Sports.', 'love', 'loves', 'loving', 'none of these', 2, 0),
(64, 20, 'Ctrl+P is used  ', 'Open file  ', 'Print document  ', 'Go to the document  ', 'Open document ', 2, 0),
(65, 20, 'What………… you do every Sunday. ', 'does', 'do', 'did', 'none of these', 2, 0),
(66, 20, 'The swimming pool………….. at 7:00 in the morning.', 'open', 'opens', 'Opening', 'opened', 2, 0),
(67, 20, 'How many MB is 1 GB ? ', '1024 MB  ', '1000 MB  ', '1124 MB  ', '10024 MB ', 1, 0),
(68, 20, 'My student………….. a little English. ', 'speaks', 'speak', 'speaking', 'spoke', 1, 0),
(69, 20, 'Windows short cuts Ctrl+Z is used.  ', 'Open  ', 'Undo  ', 'Redo ', 'Under ', 2, 0),
(70, 20, 'She………….. Playing tennis.', 'like', 'likes', 'liked', 'none of these', 2, 0),
(71, 20, 'My suitcase is…………… than your suitcase.', 'large', 'larger', 'largest', 'biggest', 2, 0),
(72, 20, 'Tell me,……... You coming to the play.', 'are', 'am', 'is', 'hello', 1, 0),
(73, 20, '. China is………………India.', 'bigger than', 'larger than', 'larger', 'big', 1, 0),
(74, 20, '…………… the answer quickly. ', 'write', 'writes', 'writing', 'none of these', 1, 0),
(75, 20, 'The Olympic game…………….. place every four year.', 'take', 'takes', 'took', 'taking', 2, 0),
(76, 20, 'Mohan is a…………….. gardener than  Sohan. ', 'good', 'better', 'best', 'bests', 2, 0),
(77, 21, 'Jane…………… her blue jeans today, but usually she wears a skirt or a dress.', 'wears', 'wearing', 'is wearing', 'wear', 3, 0),
(78, 21, 'You can keep my iPod if you like. I_________it anymore.', 'do not use', 'does not use', 'did not use', 'am not using', 1, 0),
(79, 21, 'Shut down process is used to________', 'Load MS-Windows', 'Turn off the computer', 'Open computer system', 'Exit from MS-Windows', 2, 0),
(80, 21, 'Operating system is a type of__________', 'Application software', 'System software', 'Language software', 'Programming software', 2, 0),
(81, 21, 'I______for my pen. Have you seen it?', 'look', 'will look', 'look', 'am looking', 4, 0),
(82, 21, 'Operating system that means interaction of__________', 'Hardware & Software', 'Application & Software Program', 'Both A & B', 'None', 3, 0),
(83, 21, 'Notepad is a____________ program.', 'Word Processor', 'Operating system', 'Text editor', 'None', 3, 0),
(84, 21, 'I ___________tennis every Sunday morning.', 'playing', 'play', 'am playing', 'am play', 2, 0),
(85, 21, 'The name of applications currently working with will be displayed on the_____________', 'Start Button', 'Title Bar', 'Task bar', 'Desktop', 3, 0),
(86, 21, 'The extension of MS-Word file is___________', '.TST', '.DOC', '.TXT', '.PPT', 2, 0),
(87, 21, '____________ displays that how a document will display after printing on paper.', 'Print ', 'Print preview', 'Word wrap', 'Page setup', 2, 0),
(88, 21, 'To apply right alignment to a paragraph we can press.', 'Ctrl + S	', 'Ctrl + C', 'Ctrl + R', 'Ctrl + E', 3, 0),
(89, 21, '		The print option is used to get the_________ of document		', 'Soft copy', 'White copy', 'Hard copy', 'Black copy', 3, 0),
(90, 21, 'I have just finished reading a story called Dangerous Game. Its about a man who ..... his wife because he does not want to lose her.', 'kill', 'kills', 'killed', 'killing', 2, 0),
(91, 21, 'What are the parts of Ribbon?', 'Tabs', 'Groups', 'Commands', 'All of these', 4, 0),
(92, 21, 'Header and Footer option  is available in	', 'Home tab', 'View tab', 'Insert tab ', 'Format tab', 3, 0),
(93, 21, 'Power point presentations are widely used as_____', 'Note outlines for teachers', 'Project presentations by students', 'Communication of planning', 'All of above', 4, 0),
(94, 21, 'I think i_____ a new calculator. This one does not work properly', 'am needing', 'needs', 'need', 'needed', 3, 0),
(95, 21, 'Printers are___________ devices.', 'Output', 'Processing ', 'None', 'Input', 1, 0),
(96, 21, 'What is the antonyms of beautiful?', 'ugly', 'wonderful', 'handsome', 'graceful', 1, 0),
(97, 21, 'CPU has following components.', 'ALU, CU', 'ALU, CU, MU', 'ALU, CU, IC', 'None', 2, 0),
(98, 21, 'OS stands for____________.', 'Operating system', 'Open system', 'Operating software', 'All of these', 1, 0),
(99, 21, '		MS-DOS stands for__________.		', 'Microtek Disk Operating System', 'Microsoft Disk Operating System solution', 'Microsoft Disk Operating System', 'None', 3, 0),
(100, 21, 'The first screen appears on monitor are called_________', 'Title Bar', 'Icons', 'Desktop', 'Taskbar', 3, 0),
(101, 21, 'How many students in your class_______ from Korea?', 'comes', 'come', 'came', 'are coming', 2, 0),
(102, 21, 'The shortcut to cut the text is_________', 'Ctrl + X', 'Ctrl + C', 'Alt + X', 'Alt + C', 1, 0),
(103, 21, 'Weather report: It is  seven o clock in Frankfurt and______.', 'It is snowing.', 'it snows.', 'It snowed.', 'It was snowing.', 1, 0),
(104, 21, 'What is the synonym of Guardian.', 'Elder', 'Younger', 'Protector', 'Parents', 4, 0),
(105, 21, 'His phone ...... Can you answer it, please?', 'is ringing', 'ring', 'rings', 'was ringing', 1, 0),
(106, 21, 'Did you ........... there?', 'went', 'go', 'gone ', 'going', 2, 0),
(109, 22, 'उस अर्धवृत का क्षेत्रफल क्या होगा जिसकी परिधि 36 cm है|', '14 वर्ग cm', '21 वर्ग cm', '77 वर्ग cm', '70 वर्ग cm', 3, 0),
(110, 22, '√(7+4√3) + √(7-4√3) का मान क्या होगा?', '4', '4√3', '2√3', '8√3', 1, 0),
(111, 22, 'वह छोटी से छोटी संख्या क्या होगी जिसमे 9, 12, 18 तथा 30 से भाग देने पर शेष 3 बचे|', '180', '183', '150', '363', 2, 0),
(112, 22, 'A किसी काम को 15 दिनों में और B उसी काम को 25 दिनों में कर सकता है| वह दोनों मिलकर इस काम को कितने दिनों में कर लेंगे|', '12 दिनों में', '75/9 दिनों में', '75/8 दिनों में', '21/2 दिनों में', 3, 0),
(113, 22, '30 मजदूर किसी खेत की जुताई 8 दिनों में करते है तो 12 मजदूर उस खेत को कितने दिनों में जोतेंगे|', '12', '16', '18', '20', 4, 0),
(114, 22, 'यदि 21 वस्तुओं का क्रयमुल्य 18 वस्तुओं के विक्रय्मुल्य के बराबर हो तोह लाभ प्रतिशत होगा|', '10%', '20%', '12%', 'कोई नहीं', 4, 0),
(115, 22, 'यदि a*b= a&sup2 + b&sup2 -15 हो तो 2*5 का मान होगा|', '12', '14', '20', '25', 2, 0),
(116, 22, '40 का 20%, 60 के 15% से कितना कम है|', '2', '1', '3', 'कोई नहीं', 2, 0),
(117, 22, '11 के तीन क्रमागत गुणजो का योग 363 है तो सबसे छोटी संख्या होगी|', '99', '121', '143', '110', 4, 0),
(118, 22, 'एक पासे को एक बार उछाला जाता है, पासे पर सम संख्या आने की प्रायिकता होगी|', '1/2', '2/3', '3/4', '1/3', 1, 0),
(119, 22, 'एक लीप इयर में 53 मंगलवार आने की प्रायिकता होगी|', '1/4', '1/7', '2/5', '2/7', 4, 0),
(120, 22, 'यदि समीकरण निकाय 3X+Y=1, (2K-1)X + (K-1)Y=2K+1 के अनेक हल हो तो K का मान होगा|', '2', '3', '-2', '-3', 1, 0),
(121, 22, 'संख्या √3 है?', 'परिमेय', 'अपरिमेय', 'शांत', 'कोई नहीं', 2, 0),
(122, 22, 'यदि tan2A = cot(A-18&deg;) हो तो A का मान होगा|', '36&deg;', '108&deg;', '72&deg;', '90&deg;', 1, 0),
(123, 22, 'मान ज्ञात करे: cos 1&deg; .cos 2&deg; .cos 3&deg; ......... cos 150&deg;', '1', '-1', '0', '√3', 3, 0),
(124, 14, 'यदि किसी वृत्त की परिधि एवं क्षेत्रफल आपस में बराबर हो तो वृत्त की त्रिज्या होगी|', '2', '4', '7', '5', 1, 0),
(126, 22, 'यदि आँकरो का माध्य एवं माध्यिका क्रमशः 4 और 3 हो तो बहुलक होगा|', '1', '2', '3', '4', 1, 0),
(127, 22, 'K के किस मान के लिए बिन्दुए (2,3), (4,K), (6,-3) संरेख होंगे|', '0', '1', '-1', '-2', 1, 0),
(128, 22, 'यदि बिन्दुए (1,-1), (-4,6) तथा (-3,-5)  किसी त्रिभुज के शीर्ष हो तो उस त्रिभुज का क्षेत्रफल क्या होगा|', '20 वर्ग मात्रक', '24 वर्ग मात्रक', '32 वर्ग मात्रक', 'कोई नहीं', 2, 0),
(129, 22, 'यदि दो समरूप त्रिभुजो की भुजाओ का अनुपात 4:9 हो तो उनके क्षेत्रफलो का अनुपात होगा| ', '2:3', '4:9', '81:16', '16:81', 4, 0),
(130, 22, 'सुमन, अशोक के दक्षिण - पक्षिम की ओर 40m की दुरी पर है| प्रकाश अशोक के दक्षिण - पूर्व की ओर 40m की दुरी पर है| प्रकाश, सुमन के किस ओर है|', 'उत्तर - पूर्व', 'पूर्व', 'पक्षिम', 'दक्षिण', 2, 0),
(131, 22, 'c_bbb_ _abbbb_abbb_', 'aabcb', 'abccb', 'abacb', 'bacbb', 2, 0),
(132, 22, 'यदि बीते हुए कल से तीन दिन पहले बुधवार था तो आगामी कल के तीन दिन बाद कौन सा दिन होगा?', 'बुधवार', 'सोमवार', 'शुक्रवार', 'गुरुवार', 4, 0),
(133, 22, 'समय 2:17 बजे घंटे एवं मिनट की सुई के बीच कितने डिग्री का कोण होगा|', '33&deg;', '35.5&deg;', '33.5&deg;', '35&deg;', 3, 0),
(134, 22, 'पांच लोग आपकी ओर मुह करके एक पंक्ति में बैठे है | Y, X के बायीं ओर है| W, Z के दांयी ओर बैठा है| V, X के दांयी ओर बैठा है ओर W, Y के बांयी ओर| यदि Z पंक्ति के एक छोर पर बैठा है तो बीच में कौन बैठा है?', 'V', 'X', 'Y', 'Z', 3, 0),
(135, 22, '30 बच्चो की एक कक्षा में सरन शीर्ष से 9 वे रैंक पर है| मनीष सरन से पांच रैंक निचे है| तल से मनीष की रैंक क्या है?', '17वां ', '18वां ', '16वां ', 'इनमे से कोई नहीं ', 1, 0),
(136, 22, 'यदि P, + को, Q, - को, R, ÷ को और S, × को व्यक्त करे तो 18 S 36 R 12 Q 6 P 7 =?', '115', '25', '55', '52', 3, 0),
(137, 22, 'किसी सांकेतिक भाषा में SPEAK को URGCM लिखा जाता है तो बताओ LAUGH को क्या लिखा जाएगा?', 'ODXHJ', 'DCVIK', 'NCWIJ', 'NWCJI', 3, 0),
(138, 22, 'रमन अपने घर से पास के एक शहर में कार द्वारा 50 किमी./घंटा की गति से गया तथा 45 किमी/घंटा की गति से वापिस आया. वापस आने में यदि उसे एक घंटा अधिक लगा हो, तो रमन के घर से उस शहर की दुरी कितनी है?', '450km', '550km', '900km', '550km', 1, 0),
(139, 22, 'A ने B से कहा, “C मेरे पिता का भतीजा है | D मेरे चाचा की संतान है परन्तु वह C का भाई नहीं है” बताए D का C से क्या सम्बन्ध है?', 'माता ', 'बहन', 'भाई', 'पिता', 2, 0),
(140, 22, 'संयुक्त राष्ट्र महासभा किस शहर में स्थित है?', 'डरबन', 'न्यूयॉर्क', 'सिडनी', 'पेरिस', 2, 0),
(141, 22, '92वें एकेडमी अवॉर्ड्स में बेस्ट पिक्चर का ऑस्कर अवार्ड किस फिल्म को मिला?', 'Avengers : Endgame', 'Gully Boy', 'The Parasite', 'Ford vs Ferrari', 3, 0),
(142, 22, 'विश्व स्वास्थ्य दिवस (World Health Day) हर वर्ष मनाया जाता है?', '7 अप्रैल को', '5 अप्रैल को', '3 अप्रैल को', '1 अप्रैल को', 1, 0),
(143, 22, 'केंद्र सरकार ने हाल ही में, COVID-19 के मामलों को ट्रैक करने हेतु कौनसा एप्प लॉन्च किया है?', 'कोरोना मुक्ति', 'आरोग्य सेतु', 'कोविड फ्री', 'हैप्पी इंडिया', 2, 0),
(144, 22, 'हाल ही में, कौन कमलनाथ के बाद मध्यप्रदेश के नए मुख्यमंत्री बने है?', 'ज्योतिरादित्य सिंधिया', 'सुरेन्द्र पटवा', 'शिवराज सिंह चौहान', 'शिव बहादुर सिंह', 3, 0),
(145, 22, 'प्रकाश वर्ष किसका मात्रक होता हैं?', 'दूरी का', 'गति का', 'ऊर्जा का', 'द्रव का', 1, 0),
(146, 22, 'बस में ड्राइवर के पास लगा दर्पण होता हैं?', 'उत्तल दर्पण', 'सामान्य दर्पण', 'अवतल दर्पण', 'कैमरा', 1, 0),
(147, 22, 'श्वेत प्रकाश को भिन्न-भिन्न रंगों में विभक्त करने के लिए किसका प्रयोग किया जाता हैं?', 'प्रिज्म', 'अपवर्तन', 'कैमरा', 'उष्मा', 1, 0),
(148, 22, 'किस रंग की तरंग दैर्ध्य सबसे कम होती है?', 'बैगनी', 'लाल', 'हरा', 'पीला', 1, 0),
(149, 22, 'निम्नलिखित में से कौन एक आवेश रहित कण है?', 'इलेक्ट्रान', 'न्यूट्रॉन', 'प्रोटोन', 'कोई नहीं', 2, 0),
(150, 22, 'कंप्यूटर का जनक किसे कहा जाता है|', 'Charles Babbage', 'Nikola Tesla', 'Bill Gates', 'Mark Zuckerburg', 1, 0),
(151, 22, 'कंप्यूटर किस प्रकार का यन्त्र है?', 'मेकनिकल', 'इलेक्ट्रिकल', 'इलेक्ट्रॉनिक', 'इनमे से कोई नहीं', 3, 0),
(152, 22, 'When the Principal entered the class, a student………. on the blackboard.', 'wrote', 'was writing', 'writes', 'is writing', 2, 0),
(153, 22, 'Select Correct Word', 'Agressive', 'Agrressive', ' Aggressive', 'Aggresive ', 4, 0),
(154, 22, 'Identify the error- Girls usually / are taking / more time / for dressings.', 'girls usually', 'are taking', 'more time', 'for dressings', 2, 0),
(155, 22, 'Identify the error - Suganya / sing / better than / Suriya.', 'suganya', 'sing', 'better than', 'suriya', 2, 0),
(156, 22, 'My grand father will come here —– a week.', 'with', 'before', 'at', 'within', 4, 0),
(157, 22, 'Can you write —– this pen.', 'by', 'in', 'with', 'on', 3, 0),
(158, 22, 'I go to Madurai by —– Chennai Express.', 'a', 'an', 'some', 'the', 4, 0),
(159, 22, 'Mumbai is —– large city.', 'a', 'an', 'the', 'no article', 1, 0),
(160, 22, 'We should follow the rules. _____ we?', 'don\'t', 'shouldn\'t', 'doesn\'t', 'should', 2, 0),
(161, 23, 'समांतर क्ष्रेढ़ी 8, 3, -2 ..... के प्रथम 22 पदों का योग होगा।', '810', '910', '-979', '-866', 3, 0),
(162, 23, '3 अंको की कितनी संख्याएं 7 से विभाज्य है।', '128', '120', '135', '110', 1, 0),
(163, 23, '294 को किस छोटी से छोटी संख्या से गुणा किया जाए ताकि प्राप्त संख्या एक पूर्ण वर्ग बन जाए।', '2', '3', '6', '24', 3, 0),
(164, 23, 'यदि x=7-4√3 हो तो x+1/x का मान क्या होगा?', '3√3', '8√3', '14+8√3', '14', 4, 0),
(165, 23, '[45-[28-{37-(15-?)}]]=58 हो तो ? का मान क्या होगा।', '19', '-19', '29', '-29', 1, 0),
(168, 23, '2/3, 3/5, 4/7 का लघुत्तम समापवर्तक होगा|', '1/36', '36', '1/12', '12', 4, 0),
(169, 23, 'किसी संख्या के 60% में से 60 घटाने पर शेषफल 60 आता है, वह संख्या होगी|', '120', '150', '180', '200', 4, 0),
(170, 23, 'अद्वितीय हल के लिए समीकरण px+2y = 5 तथा 3x+y = 1 में p का मान है|', '63', '36', '15', '45', 2, 0),
(171, 23, 'प्रथम 6 अभाज्य संख्याओ का औसत होगा|', '4.5', '5', '5.6', '6.8', 4, 0),
(172, 23, 'यदि x:y=3:1 हो तो (x&sup3; - y&sup3;) : (x&sup3; + y&sup3;)= ?', '13:14', '14:13', '10:11', '11:10', 1, 0),
(173, 23, 'यदि 50 संतरे का क्रयमुल्य 40 संतरे के विक्रयमुल्य के बराबर हो तो प्रतिशत लाभ होगा|', '5%', '10%', '20%', '25%', 4, 0),
(174, 23, '12% साधारण ब्याज की दर से कोई धन कितने समय में दोगुना हो जायेगा|', '6 वर्ष 9 माह', '7 वर्ष 6 माह', '8 वर्ष 3 माह', '8 वर्ष 4 माह', 4, 0),
(175, 23, '45 km/hr की चाल से चल रही कोई ट्रेन 130m लंबी एक पुल को 30 sec में पार कर जाती है तो ट्रेन की लम्बाई होगी|', '200m', '225m', '245m', '250m', 3, 0),
(176, 23, '4m लम्बे, 3m चौड़े, तथा 2m ऊँचे एक कमरे में रखे जा सकने वाले एक छड़ की अधिकतम लम्बाई क्या होगी|', '11m', '√11m', '29m', '√29m', 4, 0),
(177, 23, 'एक संख्या के तीन चौथाई का 2/5 यदि 204 हो, तो संख्या क्या है?', '680', '650', '570', '450', 1, 0),
(178, 23, 'तीन साझेदारों P,Q तथा R ने क्रमशः रु 45000, रु 70000, तथा 90000 का निवेश करके एक व्यापार प्रारम्भ किया। दो वर्ष के अंत में रु 369000 का लाभ कमाया।   इस लाभ में R का भाग कितना है ?', '162000', '810000', '620000', '120000', 1, 0),
(179, 23, '180 मीटर लम्बी रेलगाड़ी अपने समान लम्बाई के प्लेटफार्म को पार करने 18 सेकंड लेती है रेलगाड़ी की चाल कितनी है ?', '22 मीटर/सेकंड', '10 मीटर/सेकंड', '15 मीटर/सेकंड', '20 मीटर/सेकंड', 4, 0),
(180, 23, 'यदि दो संख्याओ का महत्तम समापवर्तक 12 तथा लघुत्तम समापवर्तक 600 है| यदि इनमे से एक संख्या 24 हो तो दोनों संख्याओ का औसत क्या होगी|', '77', '453', '189', '162', 4, 0),
(181, 23, 'एक कार्य को पूरा करने में A को B की तुलना में 10 दिन कम समय लगते है| यदि A और B दोनों मिलकर वह कार्य 12 दिनों में पूरा कर सकते हो तो अकेले B को वह कार्य पूरा करने में कितना समय लगेगा?', '20 दिन', '30 दिन', '40 दिन', '56 दिन', 2, 0),
(182, 23, 'यदि x&sup2;+x+6=0 तथा x&sup2;+6x+9=0 हो तो x का मान होगा|', '-3', '8', '-6', '2', 1, 0),
(183, 23, 'निम्नलिखित शब्दों में से विषम शब्द चुनिए ?', 'वर्ग फीट', 'वर्गमूल', 'वर्ग इंच', 'वर्ग मीटर', 2, 0),
(184, 23, 'A की माँ B की बहन है और C की बेटी है । Dबेटी है B की और बहन है E की, तो C का E से क्या सम्बन्ध है ?', 'माँ', 'बहन', 'पिता', 'नाना या नानी', 4, 0),
(185, 23, 'यदि परसों शुक्रवार था, तो आगामी परसों के बाद तीसरा दिन क्या होगा ?', 'बृहस्पतिवार', 'शुक्रवार', 'रविवार', 'शनिवार', 2, 0),
(186, 23, 'यदि 15 सितंबर 2000 शुक्रवार है, तो 15 सितंबर 2001 को कौन-सा दिन होगा ?', 'रविवार', 'बृहस्पतिवार', 'शनिवार', 'शुक्रवार', 3, 0),
(187, 23, 'एक खास कोड में RAIL को 5796 लिखा जाता है और TAPE को 3748 लिखा जाता है, उस कोड में PAIR को कैसे लिखा जाता है ?', '4795', '4785', '3795', '8795', 1, 0),
(188, 23, 'सुनीता लड़कियों की एक पंक्ति में दोनों छोरों से 11वें स्थान पर है, उस पंक्ति में कितनी लड़कियाँ हैं ?', '20', '21', '22', '24', 2, 0),
(189, 23, 'एक कक्षा में सोहन का स्थान ऊपर से सातवाँ है और नीचे से छब्बीसवाँ है, कक्षा में कुल कितने विद्यार्थी हैं ?', '30', '32', '34', '35', 2, 0),
(190, 23, 'पाँच लड़कों ने एक दौड़ में हिस्सा लिया। राज ने मोहित से पहले लेकिन गौरव के बाद दौड़ को पूरा किया। आशीष ने संचित से पहले लेकिन मोहित के बाद दौड़ को पूरा किया। दौड़ किसने जीती ?', 'गौरव', 'आशीष', 'मोहित', 'राज', 1, 0),
(191, 23, 'विजेत 5 किमी दक्षिण की ओर जाता है, फिर दाईं ओर घूमकर 3 किमी चलता है, वह फिर दाईं ओर मुड़ता है और 5 किमी चलता है, वह फिर बाई और मुड़कर 5 किमी जाता है, वह प्रारम्भिक स्थान से अब कितनी दूरी पर है ?', '3 किमी', '5 किमी', '8 किमी', '6 किमी', 3, 0),
(192, 23, 'रजनीश अपने घर से निकलकर 100 मी पूर्व की ओर चलता है, फिर दाएँ मुड़कर 35 मी चलने के बाद बाएँ मुड़ जाता है, अब किस दिशा की ओर जा रहा है ?', 'दक्षिण', 'पूर्व', 'उत्तर', 'पश्चिम', 2, 0),
(193, 23, 'बिहार दिवस कब मनाई जाती है ?', '20 मार्च', '21 मार्च', '22 मार्च', '25 मार्च', 3, 0),
(194, 23, 'बिहार में सर्वाधिक जनसख्या वाला जिला हैं ?', 'बेगूसराय', 'दरभंगा', 'पटना', 'मधुबनी', 3, 0),
(195, 23, 'बिहार विधान सभा में वर्तमान में कितने सदस्य हैं ?', '240', '243', '245', '246', 2, 0),
(196, 23, 'कौन-सा ग्रह सूर्य के सबसे निकट है ?', 'बुध', 'प्लूटो', 'वृहस्पति', 'शुक्र', 1, 0),
(197, 23, 'तराइन का प्रथम युद्ध (1191 ई.) किसके मध्य लड़ा गया ?', 'मुहम्मद गौरी और भीम', 'मुहम्मद गौरी और पृथ्वीराज तृतीय', 'मुहम्मद गौरी और जयसिंह', 'मुहम्मद गौरी और अजयपाल', 2, 0),
(198, 23, 'भारत में खोजा गया सबसे पहला पुराना शहर कौन-सा था ?', 'सिंध', 'हड़प्पा', 'मोहनजोदड़ों', 'पंजाब', 2, 0),
(199, 23, 'प्रकाश के परावर्तन के नियम के अनुसार -', 'आपतन कोण परावर्तन कोण से बड़ा है', 'आपतन कोण परावर्तन कोण के बराबर है', 'आपतन कोण परावर्तन कोण से छोटा है', 'सभी कथन सत्य है', 2, 0),
(200, 23, 'हाल ही में, मारिया शारापोवा ने खेल से संन्यास की घोषणा की है, वह किस खेल से सम्बंधित है?', 'टेनिस', 'बैडमिंटन', 'क्रिकेट', 'हॉकी', 1, 0),
(201, 23, 'किस क्रिकेट टीम ने हाल ही में, अंडर-19 विश्व कप 2020 का ख़िताब जीता है?', 'पाकिस्तान', 'भारत', 'बांग्लादेश', 'इंग्लैंड', 3, 0),
(202, 23, 'विश्व हिंदी दिवस (World Hindi Day) हर वर्ष मनाया जाता है?', '10 जनवरी को', '07 जनवरी को', '09 जनवरी को', '05 जनवरी को', 1, 0),
(203, 23, 'The boy was cured _____ typhoid.', 'from', 'of', 'for', 'through', 2, 0),
(204, 23, 'He was sent to the prison for his ______ .', 'sin', 'vice', 'crime', 'guilt', 3, 0),
(205, 23, 'The train is _____ time.', 'besides', 'between', 'behind', 'by', 3, 0),
(206, 23, 'As soon as he reached home _____ to rain.', 'then it began', 'it began', 'when it began', 'that it began', 2, 0),
(207, 23, 'Change into passive voice:- They will demolish the entire block.', 'The entire block is being demolished. ', 'The entire block is being demolished. ', 'The entire block will have to be demolished by the', 'The entire block will have to be demolished by the', 4, 0),
(208, 23, 'find the correctly spelt word. ', 'Recommandation', 'Recommendation', 'Recomandation', 'Recomendation', 2, 0),
(209, 23, 'Find the correct spelt word.', 'Surveilance', 'Surveillance', 'Survellance', 'Survaillance', 2, 0),
(210, 23, 'I am writing _____ a pen.', 'with', 'by', 'from', 'through', 1, 0),
(211, 23, 'Preeti got —— as an officer in State bank of India.', 'appoint', 'appointed', 'appoints', 'appointee', 2, 0),
(212, 23, 'We are —— with your behavior.', 'please', 'pleased', 'pleasure', 'being pleased', 2, 0),
(213, 24, '7<sup>65</sup> X 6<sup>41</sup> X 3<sup>57</sup> में इकाई अंक होगा?', '5', '6', '7', '8', 2, 5),
(214, 24, 'यदि (3/5)<sup>3</sup> x (3/5)<sup>-6</sup> = (3/5)<sup>2x-1</sup> हो, तो x=?', '-2', '2', '-1', '1', 3, 5),
(215, 24, '70 से छोटी कुल कितनी अभाज्य संख्याएं है?', '17', '18', '19', '20', 3, 5),
(216, 24, 'किसी संख्या को 4 से भाग देने पर भागफल तथा शेषफल का योग 8 है तथा इनके वर्गों का योग 34 है तो संख्या होगी?', '20', '22', '23', '27', 3, 5),
(217, 24, '{(0.6)<sup>4</sup> - (0.5)<sup>4</sup>} / {(0.6)<sup>2</sup> + (0.5)<sup>2</sup>} = ?', '1.1', '0.1', '0.11', '1.11', 2, 5),
(218, 24, 'ममता के पास 100 रु० तथा 50 रु० के कुल 85 नोट है जिनका कुल मूल्य 5000 रु० है, इनमे से 50 रु० के नोट कितने है?', '50', '60', '70', '80', 3, 0),
(219, 24, '19वी पारी में 98 रन बनाकर एक क्रिकेट खिलाडी की औसत रन संख्या में 4 रनों की वृद्धि हो गई| 19 पारियों के बाद उसकी औसत रन संख्या कितनी थी?', '22', '24', '26', '28', 3, 0),
(220, 24, 'A तथा B की वर्तमान आयु का अनुपात क्रमशः 4:5 है, 5 वर्ष बाद यह अनुपात 5:6 हो जायेगा| A की वर्तमान आयु क्या है?', '10 वर्ष', '20 वर्ष', '25 वर्ष', '40 वर्ष', 2, 0),
(221, 24, 'एक वस्तु 450 रु० में बेचने पर एक व्यक्ति को 25% की हानि होती है| वह इसे किस मूल्य पर बेचे की उसे 25% लाभ हो?', '700 रु०', '750 रु०', '800 रु०', '900 रु०', 2, 0),
(222, 24, 'यदि a:b = 3:4 तथा b:c = 8:9 हो तो a:c = ? ', '1:2', '3:2', '1:3', '2:3', 4, 0),
(223, 24, '		12 पुरुष एक कार्य को 24 दिन में पूरा करते है, 8 पुरुष इस कार्य को कितने दिन में पूरा करेंगे?		', '28', '36', '48', '52', 2, 10),
(224, 24, 'एक कार की चाल 10 m/s है| इसकी चाल km/hrs में क्या होगी?', '32 km/h', '36 km/h', '40 km/h', '50 km/h', 2, 10),
(225, 24, '171 मीटर लंबी रेलगाड़ी 45 km/h की चाल से 229 मीटर लंबे पुल को कितने समय में पार करेगी|', '30 से०', '35 से०', '32 से०', '40 से०', 3, 10),
(226, 24, '36 रु० प्रति लीटर के दूध के साथ पानी किस अनुपात में मिलाया जाये कि मिश्रण का मूल्य 28 रु० प्रति लीटर हो जाए|', '9:7', '7:9', '9:2', '7:2', 4, 10),
(227, 24, 'साधारण ब्याज की किस दर से कोई धन 8 वर्ष में दोगुना हो जायेगा|', '10%', '10.5%', '12%', '12.5%', 4, 10),
(228, 24, 'एक पासे को एक बार उछालने पर अभाज्य संख्या नहीं आने की प्रायिकता होगी|', '1/3', '2/3', '1/2', '1/6', 3, 20),
(229, 24, 'sin<sup>2</sup>37° + sin<sup>2</sup>53°  का मान होगा|', '0', '1', '-1', 'इनमे से कोई नहीं', 2, 20),
(230, 24, 'tan 17° . tan 36° . tan 45° . tan 54° . tan 73° का मान क्या होगा|', '√3', '-√3', '1', '-1', 3, 20),
(231, 24, 'उस त्रिभुज का क्षेत्रफल क्या होगा जिसके शिर्षों के निर्देशांक क्रमशः (-5,-1) , (3,-5) तथा (5,2) हो|', '28 वर्ग मात्रक', '32 वर्ग मात्रक', '36 वर्ग मात्रक', '44 वर्ग मात्रक', 2, 20),
(232, 24, 'P के किस मान के लिए द्विघात समीकरण px<sup>2</sup>-8x+4=0 के मूल वास्तविक तथा समान होंगे', '-4', '4', '2', '-5', 2, 20),
(233, 24, '30 बच्चो की एक कक्षा में सरन शीर्ष से 9 वे रैंक पर है| मनीष सरन से पांच रैंक निचे है| तल से मनीष की रैंक क्या है?', ' 17वां', ' 18वां', ' 16वां', 'इनमे से कोई नहीं ', 1, 15),
(234, 24, 'श्रेणी 2B, 3C, 4D, 5E ? का अगला पद ज्ञात कीजिये|', '6F', '6G', '5F', '8H', 1, 15),
(235, 24, 'एक व्यक्ति की ओर इशारा करते हुए, मोहन एक औरत से कहता है कि \"उसकी माँ तुम्हारे पिता की एकमात्र पुत्री है\" वह औरत उस व्यक्ति से किस प्रकार सम्बंधित है?', 'पुत्री', 'बहन', 'माता', 'पत्नी', 3, 15),
(236, 24, 'निम्न मे से भिन्न शब्द चुनिए|', 'स्वेटर', 'कमीज़', 'पैंट', 'जैकेट', 3, 15),
(237, 24, 'एक निश्चित कूट भाषा में  SPIDER को PSDIRE लिखा जाता है उसी कूट भाषा में COMMON को कैसे लिखा जायेगा?		', 'OCOMMO', 'OCMMNO', 'OCMOMN', 'OCMMON', 2, 15),
(238, 24, 'रोहन 3 किमी० उत्तर की ओर चलता है, तब वह वहा से बाये मुड़कर 2 किमी० चलता है, वह दुबारा बाये मुड़कर 3 किमी० चलता है, इस बिंदु पर वह अपने प्रारंभिक  बिंदु से कितनी दुरी पर है?', '1 किमी०', '2 किमी०', '3 किमी०', '4 किमी०', 1, 30),
(239, 24, '87, 74, 61, 48, ?', '35', '30', '32', '25', 1, 30),
(240, 24, '25, 75, 35, 70, 45, ?', '65', '60', '55', '85', 1, 30),
(241, 24, 'दिए गए शब्दों को सार्थक क्रम में व्यवस्थित करे|\r\n1. राष्ट्र 2. गाँव 3. शहर 4. जनपद 5. राज्य', '2, 3, 4, 5, 1', '2, 3, 4, 1, 5', '1, 3, 5, 4, 2', '1, 2, 3, 4, 5', 1, 30),
(242, 24, '3, 7, 15, 31, 63, ?', '125', '112', '127', '118', 3, 30),
(243, 24, 'एनाटॉमी विज्ञान की एक शाखा है जिसमें अध्ययन किया जाता है:', 'जानवरों एवं पौधों की संरचना', 'मानव अंगों के क्रियाकलाप', 'पशुओं का व्यवहार', 'कोशिकाओं और ऊतकों का', 1, 25),
(244, 24, 'ओन्कोलोजी किसके अध्ययन से संबंधित है:', 'पक्षी', 'कैंसर', 'स्तनधारी', 'मिट्टी', 2, 25),
(245, 24, 'भोजन में उपस्थित ऊर्जा को मापा जाता है:', 'कैलोरी में', 'सेल्सियस में', 'केल्विन में', 'उपरोक्त में से कोई नहीं', 1, 25),
(246, 24, 'दूध का घनत्व मापने के लिए किस उपकरण का प्रयोग किया जाता है?', 'लैक्टोमीटर', 'हाइड्रोमीटर', 'बैरोमीटर', 'हाइग्रोमीटर', 1, 25),
(247, 24, 'बिजली का प्रतिरोध मापने के लिए किस उपकरण का इस्तेमाल किया जाता है?', 'ओममीटर', 'इलेक्ट्रोमीटर', 'गैल्वेनोमीटर', 'स्पेक्ट्रोमीटर', 1, 25),
(248, 24, 'निम्नलिखित में से किस वैज्ञानिक ने इलेक्ट्रॉन की खोज की थी?', 'गैलीलियो', 'आइंस्टाइन', 'J.J थॉमसन', 'सी आर टी विल्सन', 3, 40),
(249, 24, 'निम्न में से भौतिकी में कौन सा उल्लेखनीय योगदान वैज्ञानिक न्यूटन द्वारा किया गया था?', 'वैश्विक गुरुत्वाकर्षण नियम', 'गति का नियम', 'केलकुलस की खोज', 'उपरोक्त सभी', 4, 40),
(250, 24, 'स्वतंत्रता आन्दोलन के दौरान रबिन्द्रनाथ टैगोर ने नाइटहुड की उपाधि किस घटना के विरोध में वापस कर दी थी?', ' बंगाल विभाजन', 'जलियांवाला बाग़ हत्याकांड', 'भगत सिंह, राजगुरु और सुखदेव को मृत्युदंड', 'उपरोक्त में से कोई नहीं', 2, 40),
(251, 24, 'कांग्रेस ने किस अधिवेशन में “पूर्ण स्वराज” का प्रस्ताव पारित किया?', 'कलकत्ता', 'लाहौर', 'दिल्ली', 'कराची', 2, 40),
(252, 24, '“आनंदमठ” के लेखक कौन हैं?', 'बंकिमचन्द्र चटर्जी', 'रविन्द्रनाथ टैगोर', 'राजा राममोहन रॉय', 'बालगंगाधर तिलक', 1, 40),
(253, 24, 'निम्नलिखित में भिन्न शब्द को चुने|', 'कीबोर्ड', 'प्रिंटर', 'माउस', 'स्कैनर', 2, 35),
(254, 24, 'Preeti got ________ last week.', 'engage', 'engaged', 'engaging', 'is engage', 2, 35),
(255, 24, 'Do you know _______ am I?', 'who', 'whom', 'whose', 'None of the above', 1, 35),
(256, 24, 'He ________ by bus daily.', 'travel', 'travels', 'is traveling', 'travelled ', 2, 35),
(257, 24, 'Sita and I ______ watching a movie.', 'am', 'is', 'are', 'None of the above', 3, 35),
(258, 24, 'Choose the correct word:', 'abbreviation', 'abbriviation', 'abreviation', 'abbrreviation', 1, 36),
(259, 24, 'We should not break the rules of lockdown. _________ we?		', 'shouldnt', 'should', 'must', 'must not', 2, 36),
(260, 24, 'If I was there, I could have _____ her.', 'save', 'saved', 'was saved', 'saving', 2, 36),
(261, 24, 'I is a _______.', 'noun', 'pronoun', 'adjective', 'verb', 2, 36),
(262, 24, 'Chennai is  ______ large city.', 'a', 'an', 'the', 'No article', 1, 36),
(263, 25, 'Which one is the valid pointer declaration?', 'int *ptr;', 'int ptr*;', '*int ptr;', 'int pointer;', 1, 0),
(264, 25, 'C is a ____________ level programming language?', 'high', 'low', 'middle', 'none of these', 3, 0),
(265, 25, 'Which one is a valid variable declaration?', 'int 7abc;', 'int xyz;', 'int $x;', 'int @p;', 2, 0),
(266, 25, 'Which of the following is not a valid variable declaration?		', 'int __a3;', 'int __3a;', 'int __A3;', 'None of the mentioned', 4, 0),
(267, 25, 'All keywords in C are in _________.', 'Lowercase letters', 'Uppercase letters', 'Camelcase letters', 'None of the above', 1, 0),
(268, 25, 'How many keywords are in C programming language?', '30', '31', '32', '33', 3, 0),
(269, 25, 'Which of the following is a user-defined data type?', 'union{int x; char name[20];};', 'typedef enum {ON,OFF} status;', 'struct{int x; char name[10]};', 'all of the mentioned', 4, 0),
(270, 25, 'What is short int in C programming language?', 'The basic datatype of c', 'qualifier', 'short is the qualifier and int is basic data type.', 'all of the mentioned', 3, 0),
(272, 25, '				Which of the following is the correct order of evaluation for the below expression? <br>\r\n<pre>z = x + y * z / 4 % 2 - 1			</pre>	', '* / % + - =', '= * / % + -', '/ * % - + =', '* % / - + =', 1, 0),
(273, 25, '						What will be the output of following program?\r\n<pre>#include&lt;stdio.h&gt;\r\nvoid main()\r\n{\r\nint x;\r\nx=(2 > 2 + 3 && 4);\r\nprintf(\"%d\",x);\r\n}</pre>										', '2', '0', '3', 'Compilation error', 2, 0),
(274, 25, 'What will be the output of following program?\r\n<pre> #include&lt;stdio.h&gt;\r\nvoid main()\r\n{\r\nint x;\r\nx=1 == 2 != 3;\r\nprintf(\"%d\",x);\r\n}\r\n</pre>', '0', '1', '2', '3', 2, 0),
(275, 25, '		Which of the following are unary operators in C?\r\n<pre>\r\n1.	!\r\n2.	sizeof\r\n3.	~\r\n4.	&&		\r\n</pre>', '1,2', '1,3', '2,4', '1,2,3', 4, 0),
(276, 25, 'Which statement will you add in the following program to work it correctly?\r\n<pre>#include&lt;stdio.h&gt;\r\nint main()\r\n{\r\n    printf(\"%f\n\", log(36.0));\r\n    return 0;\r\n}		</pre>', '#include&lt;conio.h&gt;', '#include&lt;math.h&gt;', '#include&lt;stdlib.h&gt;', '#include&lt;dos.h&gt;', 2, 0),
(277, 25, 'We want to round off x, a float, to an int value, The correct way to do is', 'y = (int)(x + 0.5)', 'y = int(x + 0.5)', 'y = (int)x + 0.5', 'y = (int)((int)x + 0.5)', 1, 0),
(278, 25, '								How many times \"PSC46012P\" gets printed?\r\n<pre>#include&ltstdio.h&gt;\r\nint main()\r\n{\r\n    int x;\r\n    for(x=-1; x<=10; x++)\r\n    {\r\n        if(x < 5)\r\n            continue;\r\n        else\r\n            break;\r\n        printf(\"PSC46012P\");\r\n    }\r\n    return 0;\r\n}		\r\n</pre>						', 'infinite times', '11 times', '0 times', '10 times', 3, 0),
(279, 25, 'What will happen if in a C program you assign a value to an array element whose subscript exceeds the size of array?', 'The element will be set to 0.', 'The compiler would report an error.', 'The program may crash if some important data gets overwritten.', 'The array size would appropriately grow.', 3, 0),
(280, 25, '		What will be the output of following program?\r\n<pre>#include&lt;stdio.h&gt;\r\n#define a 10\r\nvoid main()\r\n{\r\n	int a=5;\r\n	printf(\"a=%d\n\",a);\r\n}		</pre>', 'a=5', 'a=10', 'compilation error', 'run time error', 3, 0),
(281, 25, '		What will be the output of following program?\r\n<pre>#include&lt;stdio.h&gt;\r\nvoid main()\r\n{\r\n	int a=010;\r\n	printf(\"a=%d\n\",a);\r\n}		</pre>', '2', '8', '9', '010', 2, 0),
(282, 25, '		What will be the output of following program?\r\n<pre>#include&lt;stdio.h&gt;\r\nvoid main()\r\n{\r\n	int const a=10;\r\n	a++;\r\n	printf(\"a=%d\n\",a);\r\n}		</pre>', 'a=6', 'Error, due to const succeeding int', 'Error, because a constant variable cannot be changed', 'None of the above', 3, 0),
(283, 25, '		What will be the output of following program?\r\n<pre>#include&lt;stdio.h&gt;\r\nvoid main()\r\n{\r\nj=10;\r\nprintf(\"%d\n\",j++);\r\n}		</pre>', '10', '11', 'compile time error', '0', 3, 0),
(284, 25, 'Which of the following declaration is not supported by C?', 'String str;', 'char *str;', 'float str=3.2;', 'both, option a and option c', 1, 0),
(285, 25, 'In C, if you pass an array as an argument to a function, what actually gets passed?', 'Value of elements in array', 'First element of the array', 'Base address of the array', 'Address of the last element of array', 3, 0),
(286, 25, '		What will be the output of following program?		\r\n<pre> #include&lt;stdio.h&gt;\r\nvoid main()\r\n{\r\nint i,j,k;\r\ni=2;\r\nj=i++;\r\nk=10+i+j;\r\nprintf(\"%d %d %d\",i,j,k);\r\n} </pre>', '2, 1, 15', '1, 2, 5', '3, 2, 15', '2, 3, 20', 3, 0),
(287, 25, 'What will be the output of following program?\r\n<pre>#include&lt;stdio.h&gt;\r\nvoid fun(int **p);\r\n\r\nint main()\r\n{\r\n    int a[3][4] = \r\n{1, 2, 3, 4, 4, 3, 2, 8, 7, 8, 9, 0};\r\n    int *ptr;\r\n    ptr = &a[0][0];\r\n    fun(&ptr);\r\n    return 0;\r\n}\r\nvoid fun(int **p)\r\n{\r\n    printf(\"%d\", **p);\r\n}	</pre>		', '1', '2', '3', '4', 1, 0),
(288, 25, 'The keyword used to transfer control from a function back to the calling function is', 'switch', 'goto', 'go back', 'return', 4, 0),
(289, 25, '		How many times the program will print \"IGNOU\" ?\r\n<pre>#include&lt;stdio.h&gt;\r\nint main()\r\n{\r\n    printf(\"IGNOU\");\r\n    main();\r\n    return 0;\r\n}		</pre>', 'Infinite times', '32767 times', '65535 times', 'Till stack overflows', 4, 0),
(290, 25, '		There is a error in the below program. Which statement will you add to remove it?\r\n<pre>#include&lt;stdio.h&gt;\r\nint main()\r\n{\r\n    int a;\r\n    a = f(10, 3.14);\r\n    printf(\"%d\n\", a);\r\n    return 0;\r\n}\r\nfloat f(int aa, float bb)\r\n{\r\n    return ((float)aa + bb);\r\n}		</pre>', 'Add prototype: float f(aa, bb)', 'Add prototype: float f(int, float)', 'Add prototype: float f(float, int)', 'Add prototype: float f(bb, aa)', 2, 0),
(291, 25, '		Which of the following statements are correct about the function?\r\n<pre>long fun(int num)\r\n{\r\n    int i;\r\n    long f=1;\r\n    for(i=1; i<=num; i++)\r\n        f = f * i;\r\n    return f;\r\n}		</pre>', 'The function calculates the value of 1 raised to power num.', 'The function calculates the square root of an integer', 'The function calculates the factorial value of an integer', 'None of above', 3, 0),
(292, 25, 'If the two strings are identical, then strcmp() function returns', '-1', '1', '0', 'NULL', 3, 0),
(293, 25, 'Which of the following cannot be checked in a switch-case statement?', 'character', 'integer', 'float', 'enum', 3, 0),
(294, 25, 'array is a ________.', 'Built in data type', 'Derived data type', 'User defined data type', 'None of the above', 2, 0),
(295, 25, '		Can you combine the following two statements into one?\r\n<pre>char *p;\r\np = (char*) malloc(100);		</pre>', 'char p = *malloc(100);', 'char *p = (char) malloc(100);', 'char *p = (char*)malloc(100);', 'char *p = (char *)(malloc*)(100);', 3, 0),
(296, 25, 'If a variable is a pointer to a structure, then which of the following operator is used to access data members of the structure through the pointer variable?', '.', '&', '*', '->', 4, 0),
(297, 25, '		What will be the output of following program?\r\n<pre>#include&lt;stdio.h&gt;\r\nint main()\r\n{\r\n    int i=3, *j, k;\r\n    j = &i;\r\n    printf(\"%d\n\", i**j*i+*j);\r\n    return 0;\r\n}		</pre>', '30', '27', '9', '3', 1, 0),
(298, 25, 'Which of the statements is correct about the program?\r\n<pre>#include&lt;stdio.h&gt;\r\nint main()\r\n{\r\n    int i=10;\r\n    int *j=&i;\r\n    return 0;\r\n}		</pre>', 'j and i are pointers to an int', 'i is a pointer to an int and stores address of j', 'j is a pointer to an int and stores address of i', 'j is a pointer to a pointer to an int and stores address of i', 3, 0),
(299, 25, '		What do the following declaration signify?\r\n<pre>int *ptr[30];		</pre>', 'ptr is a pointer to an array of 30 integer pointers.', 'ptr is a array of 30 pointers to integers.', 'ptr is a array of 30 integer pointers.', 'ptr is a array 30 pointers.', 2, 0),
(300, 25, '		What do the following declaration signify?\r\n<pre> void *cmp();		</pre>', 'cmp is a pointer to an void type.', 'cmp is a void type pointer variable.', 'cmp is a function that return a void pointer.', 'cmp function returns nothing.', 3, 0),
(301, 25, 'How will you free the allocated memory ?', 'remove(var-name);', 'free(var-name);', 'delete(var-name);', 'dalloc(var-name);', 2, 0),
(302, 25, 'What is the similarity between a structure, union and enumeration?', 'All of them let you define new values', 'All of them let you define new data types', 'All of them let you define new pointers', 'All of them let you define new structures', 2, 0),
(303, 25, 'Which header file should be included to use functions like malloc() and calloc()?', 'memory.h', 'stdlib.h', 'string.h', 'dos.h', 2, 0),
(304, 25, '		What will be the output of following program?\r\n<pre>#include &lt;stdio.h&gt;\r\n    int main()\r\n    {\r\n        do\r\n            printf(\"In while loop \");\r\n        while (0);\r\n            printf(\"After loop\n\");\r\n    }		</pre>', 'In while loop', 'In while loop After loop', 'After loop', 'infinite loop', 2, 0),
(305, 25, '		How many times i value is checked in the following C code?\r\n   <pre>#include&lt;stdio.h&gt;\r\n    int main()\r\n    {\r\n        int i = 0;\r\n        do {\r\n            i++;\r\n            printf(\"in while loop\n\");\r\n        } while (i < 3);\r\n    }		</pre>', '1', '2', '3', '4', 3, 0),
(306, 25, '		Comment on the output of the following C code.\r\n<pre>#include &lt;stdio.h&gt;\r\n    int main()\r\n    {\r\n        int i;\r\n        for (i = 0;i < 5; i++)\r\n        int a = i;\r\n        printf(\"%d\", a);\r\n    }		</pre>', 'a is out of scope when printf is called', 'Redeclaration of a in same scope throws error', 'Syntax error in declaration of a', 'No errors, program will show the output 5', 3, 0),
(307, 25, '		What will be the output of following code?\r\n<pre>#include&lt;stdio.h&gt;\r\n    void main()\r\n    {\r\n        m();\r\n        m();\r\n    }\r\n    void m()\r\n    {\r\n        static int x = 5;\r\n        x++;\r\n        printf(\"%d\", x);\r\n    }		</pre>', '6 7', '6 6', '5 5', '5 6', 1, 0),
(308, 25, '		What will be the output of following code?\r\n<pre>#include&lt;stdio.h&gt;\r\n    void main()\r\n    {\r\n        static int x;\r\n        printf(\"x is %d\", x);\r\n    }		\r\n</pre>', '0', '1', 'Garbage value', 'Run time error', 1, 0),
(309, 25, '		What will be the output of following code?\r\n<pre> #include&lt;stdio.h&gt;\r\n    #define SYSTEM 20\r\n    int main()\r\n    {\r\n        int a = 20;\r\n        #if SYSTEM == a\r\n        printf(\"HELLO \");\r\n        #endif\r\n        #if SYSTEM == 20\r\n        printf(\"WORLD\n\");\r\n        #endif\r\n    }		\r\n</pre>', 'HELLO', 'WORLD', 'HELLO WORLD', 'No Output', 2, 0),
(310, 25, 'Automatic variables are allocated space in the form of a __________', 'stack', 'queue', 'priority queue', 'random', 1, 0),
(311, 25, 'Which of the following is a storage specifier?', 'enum', 'union', 'auto', 'volatile', 3, 0),
(312, 25, 'If storage class is not specified for a local variable, then the default class will be auto.', 'true', 'false', 'depends on the standard', 'none of the above', 1, 0),
(313, 25, 'Which among the following is the odd one out?', 'printf', 'fprintf', 'putchar', 'scanf', 4, 0),
(314, 26, 'Which one of the following is a valid variable declaration?', 'int $xyz;', 'int _3xy;', 'int 3xy;', 'int @xy;', 2, 0),
(315, 26, 'Which one is the valid pointer declaration?', 'int *p;', 'int p*;', '(int) p*;', 'int &y;', 1, 0),
(316, 26, 'How many keywords are there in C programming language.', '32', '33', '34', '30', 1, 0),
(317, 26, 'what does const do in a C program?', 'It makes a variable constant and it can only change twice.', 'it increases the range of a variable.', 'const variable cannot accept negative values.', 'It makes a variable constant and it cannot be changed.', 4, 0),
(318, 26, '						What will be the output of following program?\r\n<pre>#include &lt;stdio.h&gt;\r\nvoid main()\r\n{\r\nint x;\r\nx=(1 > 2 + 3 && 4);\r\nprintf(\"%d\",x);\r\n}</pre>										', '1', '0', '3', 'compilation error', 2, 0),
(319, 26, 'The index of array starts from ?', '1', '0', '-1', '2', 2, 0),
(320, 26, 'array is a _______.', 'user defined data type', 'derived data type', 'fundamental  data type', 'none of the above', 2, 0),
(321, 26, '-> is used to?', ' access data members of the structure through the pointer variable', ' access values of the pointer variable', 'access values of an array', 'access values of an structure', 1, 0),
(322, 26, 'Which of the following function sets first n characters of a string to a given character?', 'strinit()', 'strnset()', 'strset()', 'strcset()', 2, 0),
(323, 26, 'What will be the output of following program?\r\n<pre> #include&lt;stdio.h&gt;\r\nvoid main()\r\n{\r\nint i=1;\r\nwhile(i++<=5)\r\n{\r\nprintf(\"%d\",i++)\r\n}\r\n}', '1 3 5', '2 4', '2 4 6', '2', 3, 0),
(324, 26, 'Function fopen() with the mode r+ tries to open the file for _______', 'reading and writing', 'reading and adding new content', 'only for reading', 'it works only for directories', 1, 0),
(325, 26, 'How to round-off a value 5.77 to 6.0?', 'ceil(5.77)', 'round-off(5.77)', 'round-up(5.77)', 'floor(5.77)', 1, 0),
(326, 26, 'Which of the following operator can be used to access value at address stored in a pointer variable?', '*', '#', '&&', '@', 1, 0),
(327, 26, 'If the two strings are identical, then strcmp() function returns', '-1', '1', '0', 'Yes', 3, 0),
(328, 26, 'What does the following declaration mean?\r\n<pre>int (*ptr)[10]; </pre>', 'ptr is a pointer to an array of 10 integers.', 'ptr is array of pointers to 10 integers', 'ptr is an array of 10 integers', 'ptr is an pointer to array', 1, 0),
(329, 26, 'Address stored in the pointer variable is of type ______', 'character', 'array', 'float', 'integer', 4, 0),
(330, 26, 'How many main() function we can have in our project?', '1', '2', 'No limit', 'Depends on Compiler', 1, 0),
(331, 26, 'How many times \"PSC46012P\" gets printed?\r\n<pre>#include&lt;stdio.h&gt;\r\nint main()\r\n{\r\n    int x;\r\n    for(x=-1; x<=10; x++)\r\n    {\r\n        if(x < 5)\r\n            continue;\r\n        else\r\n            break;\r\n        printf(\"PSC46012P\");\r\n    }\r\n    return 0;\r\n}	</pre>', 'infinite times', '11 times', '0 times', '10 times', 3, 0),
(332, 26, 'How many times the program will print \"Hello\"?\r\n<pre>\r\n#include&lt;stdio.h&gt;\r\nint main()\r\n{\r\nprintf(\"Hello\");\r\nmain();\r\nreturn 0;\r\n}', 'infinite times', '32767 times', '65535 times', 'till stack overflows', 4, 0),
(333, 26, 'Property which allows to produce different executable for different platforms in C is called?', 'File inclusion', 'Selective inclusion', 'Conditional compilation', 'Recursive macros', 3, 0),
(334, 26, '		What will be the output of following code?\r\n<pre> #include&lt;stdio.h&gt;\r\n    #define SYSTEM 20\r\n    int main()\r\n    {\r\n        int a = 20;\r\n        #if SYSTEM == a\r\n        printf(\"HELLO \");\r\n        #endif\r\n        #if SYSTEM == 20\r\n        printf(\"WORLD\n\");\r\n        #endif\r\n    }		\r\n</pre>', 'HELLO', 'WORLD', 'HELLO WORLD', 'No Output', 2, 0),
(335, 26, '		What will be the output of following code?\r\n<pre>#include&lt;stdio.h&gt;\r\n    void main()\r\n    {\r\n        static int x;\r\n        printf(\"x is %d\", x);\r\n    }		\r\n</pre>', '0', '1', 'Garbage value', 'Run time error', 1, 0),
(336, 26, '		What will be the output of following code?\r\n<pre>#include&lt;stdio.h&gt;\r\n    void main()\r\n    {\r\n        m();\r\n        m();\r\n    }\r\n    void m()\r\n    {\r\n        static int x = 5;\r\n        x++;\r\n        printf(\"%d\", x);\r\n    }		</pre>', '6 7', '6 6', '5 5', '5 6', 1, 0),
(337, 26, '		Comment on the output of the following C code.\r\n<pre>#include &lt;stdio.h&gt;\r\n    int main()\r\n    {\r\n        int i;\r\n        for (i = 0;i < 5; i++)\r\n        int a = i;\r\n        printf(\"%d\", a);\r\n    }		</pre>', 'a is out of scope when printf is called', 'Redeclaration of a in same scope throws error', 'Syntax error in declaration of a', 'No errors, program will show the output 5', 3, 0),
(338, 26, '		How many times i value is checked in the following C code?\r\n   <pre>#include&lt;stdio.h&gt;\r\n    int main()\r\n    {\r\n        int i = 0;\r\n        do {\r\n            i++;\r\n            printf(\"in while loop\n\");\r\n        } while (i < 3);\r\n    }		</pre>', '1', '2', '3', '4', 3, 0),
(339, 26, '		What will be the output of following program?\r\n<pre>#include &lt;stdio.h&gt;\r\n    int main()\r\n    {\r\n        do\r\n            printf(\"In while loop \");\r\n        while (0);\r\n            printf(\"After loop\n\");\r\n    }		</pre>', 'In while loop', 'In while loop After loop', 'After loop', 'infinite loop', 2, 0),
(340, 26, '		What do the following declaration signify?\r\n<pre> void *cmp();		</pre>', 'cmp is a pointer to an void type.', 'cmp is a void type pointer variable.', 'cmp is a function that return a void pointer.', 'cmp function returns nothing.', 3, 0);
INSERT INTO `mst_question` (`que_id`, `test_id`, `que_desc`, `ans1`, `ans2`, `ans3`, `ans4`, `true_ans`, `temp`) VALUES
(341, 26, 'Which of the statements is correct about the program?\r\n<pre>#include&lt;stdio.h&gt;\r\nint main()\r\n{\r\n    int i=10;\r\n    int *j=&i;\r\n    return 0;\r\n}		</pre>', 'j and i are pointers to an int', 'i is a pointer to an int and stores address of j', 'j is a pointer to an int and stores address of i', 'j is a pointer to a pointer to an int and stores address of i', 3, 0),
(342, 26, '		What will be the output of following program?\r\n<pre>#include&lt;stdio.h&gt;\r\nint main()\r\n{\r\n    int i=3, *j, k;\r\n    j = &i;\r\n    printf(\"%d\n\", i**j*i+*j);\r\n    return 0;\r\n}		</pre>', '30', '27', '9', '3', 1, 0),
(343, 26, '		Can you combine the following two statements into one?\r\n<pre>char *p;\r\np = (char*) malloc(100);		</pre>', 'char p = *malloc(100);', 'char *p = (char) malloc(100);', 'char *p = (char*)malloc(100);', 'char *p = (char *)(malloc*)(100);', 3, 0),
(344, 26, '		Which of the following statements are correct about the function?\r\n<pre>long fun(int num)\r\n{\r\n    int i;\r\n    long f=1;\r\n    for(i=1; i<=num; i++)\r\n        f = f * i;\r\n    return f;\r\n}		</pre>', 'The function calculates the value of 1 raised to power num.', 'The function calculates the square root of an integer', 'The function calculates the factorial value of an integer', 'None of above', 3, 0),
(345, 26, '		There is a error in the below program. Which statement will you add to remove it?\r\n<pre>#include&lt;stdio.h&gt;\r\nint main()\r\n{\r\n    int a;\r\n    a = f(10, 3.14);\r\n    printf(\"%d\n\", a);\r\n    return 0;\r\n}\r\nfloat f(int aa, float bb)\r\n{\r\n    return ((float)aa + bb);\r\n}		</pre>', 'Add prototype: float f(aa, bb)', 'Add prototype: float f(int, float)', 'Add prototype: float f(float, int)', 'Add prototype: float f(bb, aa)', 2, 0),
(346, 26, '		How many times the program will print \"IGNOU\" ?\r\n<pre>#include&lt;stdio.h&gt;\r\nint main()\r\n{\r\n    printf(\"IGNOU\");\r\n    main();\r\n    return 0;\r\n}		</pre>', 'Infinite times', '32767 times', '65535 times', 'Till stack overflows', 4, 0),
(347, 26, '		What will be the output of following program?\r\n<pre>#include&lt;stdio.h&gt;\r\nvoid fun(int **p);\r\n\r\nint main()\r\n{\r\n    int a[3][4] = {1, 2, 3, 4, 4, 3, 2, 8, 7, 8, 9, 0};\r\n    int *ptr;\r\n    ptr = &a[0][0];\r\n    fun(&ptr);\r\n    return 0;\r\n}\r\nvoid fun(int **p)\r\n{\r\n    printf(\"%d\n\", **p);\r\n}	</pre>', '1', '2', '3', '4', 1, 0),
(348, 26, '		What will be the output of following program?		\r\n<pre> #include&lt;stdio.h&gt;\r\nvoid main()\r\n{\r\nint i,j,k;\r\ni=2;\r\nj=i++;\r\nk=10+i+j;\r\nprintf(\"%d %d %d\",i,j,k);\r\n} </pre>', '2, 1, 15', '1, 2, 5', '3, 2, 15', '2, 3, 20', 3, 0),
(349, 26, '		What will be the output of following program?\r\n<pre>#include&lt;stdio.h&gt;\r\nvoid main()\r\n{\r\nj=10;\r\nprintf(\"%d\n\",j++);\r\n}		</pre>', '10', '11', 'compile time error', '0', 3, 0),
(350, 26, '		What will be the output of following program?\r\n<pre>#include&lt;stdio.h&gt;\r\nvoid main()\r\n{\r\n	int const a=10;\r\n	a++;\r\n	printf(\"a=%d\n\",a);\r\n}		</pre>', 'a=6', 'Error, due to const succeeding int', 'Error, because a constant variable cannot be changed', 'None of the above', 3, 0),
(351, 26, '		What will be the output of following program?\r\n<pre>#include&lt;stdio.h&gt;\r\nvoid main()\r\n{\r\n	int a=010;\r\n	printf(\"a=%d\n\",a);\r\n}		</pre>', '2', '8', '9', '010', 2, 0),
(352, 26, '		What will be the output of following program?\r\n<pre>#include&lt;stdio.h&gt;\r\n#define a 10\r\nvoid main()\r\n{\r\n	int a=5;\r\n	printf(\"a=%d\n\",a);\r\n}		</pre>', 'a=5', 'a=10', 'compilation error', 'run time error', 3, 0),
(353, 26, 'Which statement will you add in the following program to work it correctly?\r\n<pre>#include&lt;stdio.h&gt;\r\nint main()\r\n{\r\n    printf(\"%f\n\", log(36.0));\r\n    return 0;\r\n}		</pre>', '#include&lt;conio.h&gt;', '#include&lt;math.h&gt;', '#include&lt;stdlib.h&gt;', '#include&lt;dos.h&gt;', 2, 0),
(354, 26, 'What will be the output of following program?\r\n<pre> #include&lt;stdio.h&gt;\r\nvoid main()\r\n{\r\nint x;\r\nx=1 == 2 != 3;\r\nprintf(\"%d\",x);\r\n}\r\n</pre>', '0', '1', '2', '3', 2, 0),
(355, 26, '				Which of the following is the correct order of evaluation for the below expression? <br>\r\n<pre>z = x + y * z / 4 % 2 - 1			</pre>	', '* / % + - =', '= * / % + -', '/ * % - + =', '* % / - + =', 1, 0),
(356, 26, 'We want to round off x, a float, to an int value, The correct way to do is', 'y = (int)(x + 0.5)', 'y = int(x + 0.5)', 'y = (int)x + 0.5', 'y = (int)((int)x + 0.5)', 1, 0),
(357, 26, 'What will happen if in a C program you assign a value to an array element whose subscript exceeds the size of array?', 'The element will be set to 0.', 'The compiler would report an error.', 'The program may crash if some important data gets overwritten.', 'The array size would appropriately grow.', 3, 0),
(358, 26, 'In C, if you pass an array as an argument to a function, what actually gets passed?', 'Value of elements in array', 'First element of the array', 'Base address of the array', 'Address of the last element of array', 3, 0),
(359, 26, 'How will you free the allocated memory ?', 'remove(var-name);', 'free(var-name);', 'delete(var-name);', 'dalloc(var-name);', 2, 0),
(360, 26, 'Which header file should be included to use functions like malloc() and calloc()?', 'memory.h', 'stdlib.h', 'string.h', 'dos.h', 2, 0),
(361, 26, 'Automatic variables are allocated space in the form of a __________', 'stack', 'queue', 'priority queue', 'random', 1, 0),
(362, 26, 'If storage class is not specified for a local variable, then the default class will be auto.', 'true', 'false', 'depends on the standard', 'none of the above', 1, 0),
(363, 26, '____________ tells the compiler that this data is defined somewhere and will be connected with the linker.', 'errno', 'extern', 'variable', 'data type', 2, 0),
(364, 27, 'Which one is the valid pointer declaration?', 'int *p;', 'int p*;', '(int) p*;', 'int &y;', 1, 0),
(365, 27, 'How many keywords are there in C programming language.', '32', '33', '34', '30', 1, 0),
(366, 27, 'what does const do in a C program?', 'It makes a variable constant and it can only change twice.', 'it increases the range of a variable.', 'const variable cannot accept negative values.', 'It makes a variable constant and it cannot be changed.', 4, 0),
(367, 27, 'array is a _______.', 'user defined data type', 'derived data type', 'fundamental  data type', 'none of the above', 2, 0),
(369, 27, '-> is used to?', ' access data members of the structure through the pointer variable', ' access values of the pointer variable', 'access values of an array', 'access values of an structure', 1, 0),
(370, 27, 'Function fopen() with the mode r+ tries to open the file for _______', 'reading and writing', 'reading and adding new content', 'only for reading', 'it works only for directories', 1, 0),
(371, 27, 'How to round-off a value 5.77 to 6.0?', 'ceil(5.77)', 'round-off(5.77)', 'round-up(5.77)', 'floor(5.77)', 1, 0),
(372, 27, 'Which of the following operator can be used to access value at address stored in a pointer variable?', '*', '#', '&&', '@', 1, 0),
(373, 27, 'If the two strings are identical, then strcmp() function returns', '-1', '1', '0', 'Yes', 3, 0),
(374, 27, 'How many main() function we can have in our project?', '1', '2', 'No limit', 'Depends on Compiler', 1, 0),
(375, 27, '		What will be the output of following code?\r\n<pre> #include&lt;stdio.h&gt;\r\n    #define SYSTEM 20\r\n    int main()\r\n    {\r\n        int a = 20;\r\n        #if SYSTEM == a\r\n        printf(\"HELLO \");\r\n        #endif\r\n        #if SYSTEM == 20\r\n        printf(\"WORLD\n\");\r\n        #endif\r\n    }		\r\n</pre>', 'HELLO', 'WORLD', 'HELLO WORLD', 'No Output', 2, 0),
(376, 27, '		What will be the output of following code?\r\n<pre>#include&lt;stdio.h&gt;\r\n    void main()\r\n    {\r\n        static int x;\r\n        printf(\"x is %d\", x);\r\n    }		\r\n</pre>', '0', '1', 'Garbage value', 'Run time error', 1, 0),
(377, 27, '		What will be the output of following code?\r\n<pre>#include&lt;stdio.h&gt;\r\n    void main()\r\n    {\r\n        m();\r\n        m();\r\n    }\r\n    void m()\r\n    {\r\n        static int x = 5;\r\n        x++;\r\n        printf(\"%d\", x);\r\n    }		</pre>', '6 7', '6 6', '5 5', '5 6', 1, 0),
(378, 27, '		Comment on the output of the following C code.\r\n<pre>#include &lt;stdio.h&gt;\r\n    int main()\r\n    {\r\n        int i;\r\n        for (i = 0;i < 5; i++)\r\n        int a = i;\r\n        printf(\"%d\", a);\r\n    }		</pre>', 'a is out of scope when printf is called', 'Redeclaration of a in same scope throws error', 'Syntax error in declaration of a', 'No errors, program will show the output 5', 3, 0),
(379, 27, '		How many times i value is checked in the following C code?\r\n   <pre>#include&lt;stdio.h&gt;\r\n    int main()\r\n    {\r\n        int i = 0;\r\n        do {\r\n            i++;\r\n            printf(\"in while loop\n\");\r\n        } while (i < 3);\r\n    }		</pre>', '1', '2', '3', '4', 3, 0),
(380, 27, '		What will be the output of following program?\r\n<pre>#include &lt;stdio.h&gt;\r\n    int main()\r\n    {\r\n        do\r\n            printf(\"In while loop \");\r\n        while (0);\r\n            printf(\"After loop\n\");\r\n    }		</pre>', 'In while loop', 'In while loop After loop', 'After loop', 'infinite loop', 2, 0),
(381, 27, '		What do the following declaration signify?\r\n<pre> void *cmp();		</pre>', 'cmp is a pointer to an void type.', 'cmp is a void type pointer variable.', 'cmp is a function that return a void pointer.', 'cmp function returns nothing.', 3, 0),
(382, 27, 'Which of the statements is correct about the program?\r\n<pre>#include&lt;stdio.h&gt;\r\nint main()\r\n{\r\n    int i=10;\r\n    int *j=&i;\r\n    return 0;\r\n}		</pre>', 'j and i are pointers to an int', 'i is a pointer to an int and stores address of j', 'j is a pointer to an int and stores address of i', 'j is a pointer to a pointer to an int and stores address of i', 3, 0),
(383, 27, '		What will be the output of following program?\r\n<pre>#include&lt;stdio.h&gt;\r\nint main()\r\n{\r\n    int i=3, *j, k;\r\n    j = &i;\r\n    printf(\"%d\n\", i**j*i+*j);\r\n    return 0;\r\n}		</pre>', '30', '27', '9', '3', 1, 0),
(384, 27, '		Can you combine the following two statements into one?\r\n<pre>char *p;\r\np = (char*) malloc(100);		</pre>', 'char p = *malloc(100);', 'char *p = (char) malloc(100);', 'char *p = (char*)malloc(100);', 'char *p = (char *)(malloc*)(100);', 3, 0),
(385, 27, '		Which of the following statements are correct about the function?\r\n<pre>long fun(int num)\r\n{\r\n    int i;\r\n    long f=1;\r\n    for(i=1; i<=num; i++)\r\n        f = f * i;\r\n    return f;\r\n}		</pre>', 'The function calculates the value of 1 raised to power num.', 'The function calculates the square root of an integer', 'The function calculates the factorial value of an integer', 'None of above', 3, 0),
(386, 27, '		There is a error in the below program. Which statement will you add to remove it?\r\n<pre>#include&lt;stdio.h&gt;\r\nint main()\r\n{\r\n    int a;\r\n    a = f(10, 3.14);\r\n    printf(\"%d\n\", a);\r\n    return 0;\r\n}\r\nfloat f(int aa, float bb)\r\n{\r\n    return ((float)aa + bb);\r\n}		</pre>', 'Add prototype: float f(aa, bb)', 'Add prototype: float f(int, float)', 'Add prototype: float f(float, int)', 'Add prototype: float f(bb, aa)', 2, 0),
(387, 27, '		How many times the program will print \"IGNOU\" ?\r\n<pre>#include&lt;stdio.h&gt;\r\nint main()\r\n{\r\n    printf(\"IGNOU\");\r\n    main();\r\n    return 0;\r\n}		</pre>', 'Infinite times', '32767 times', '65535 times', 'Till stack overflows', 4, 0),
(388, 27, '		What will be the output of following program?\r\n<pre>#include&lt;stdio.h&gt;\r\nvoid fun(int **p);\r\n\r\nint main()\r\n{\r\n    int a[3][4] = {1, 2, 3, 4, 4, 3, 2, 8, 7, 8, 9, 0};\r\n    int *ptr;\r\n    ptr = &a[0][0];\r\n    fun(&ptr);\r\n    return 0;\r\n}\r\nvoid fun(int **p)\r\n{\r\n    printf(\"%d\n\", **p);\r\n}	</pre>', '1', '2', '3', '4', 1, 0),
(389, 27, '		What will be the output of following program?		\r\n<pre> #include&lt;stdio.h&gt;\r\nvoid main()\r\n{\r\nint i,j,k;\r\ni=2;\r\nj=i++;\r\nk=10+i+j;\r\nprintf(\"%d %d %d\",i,j,k);\r\n} </pre>', '2, 1, 15', '1, 2, 5', '3, 2, 15', '2, 3, 20', 3, 0),
(390, 27, '		What will be the output of following program?\r\n<pre>#include&lt;stdio.h&gt;\r\nvoid main()\r\n{\r\nj=10;\r\nprintf(\"%d\n\",j++);\r\n}		</pre>', '10', '11', 'compile time error', '0', 3, 0),
(391, 27, '		What will be the output of following program?\r\n<pre>#include&lt;stdio.h&gt;\r\nvoid main()\r\n{\r\n	int const a=10;\r\n	a++;\r\n	printf(\"a=%d\n\",a);\r\n}		</pre>', 'a=6', 'Error, due to const succeeding int', 'Error, because a constant variable cannot be changed', 'None of the above', 3, 0),
(392, 27, '		What will be the output of following program?\r\n<pre>#include&lt;stdio.h&gt;\r\nvoid main()\r\n{\r\n	int a=010;\r\n	printf(\"a=%d\n\",a);\r\n}		</pre>', '2', '8', '9', '010', 2, 0),
(393, 27, '		What will be the output of following program?\r\n<pre>#include&lt;stdio.h&gt;\r\n#define a 10\r\nvoid main()\r\n{\r\n	int a=5;\r\n	printf(\"a=%d\n\",a);\r\n}		</pre>', 'a=5', 'a=10', 'compilation error', 'run time error', 3, 0),
(394, 27, 'Which statement will you add in the following program to work it correctly?\r\n<pre>#include&lt;stdio.h&gt;\r\nint main()\r\n{\r\n    printf(\"%f\n\", log(36.0));\r\n    return 0;\r\n}		</pre>', '#include&lt;conio.h&gt;', '#include&lt;math.h&gt;', '#include&lt;stdlib.h&gt;', '#include&lt;dos.h&gt;', 2, 0),
(395, 27, 'What will be the output of following program?\r\n<pre> #include&lt;stdio.h&gt;\r\nvoid main()\r\n{\r\nint x;\r\nx=1 == 2 != 3;\r\nprintf(\"%d\",x);\r\n}\r\n</pre>', '0', '1', '2', '3', 2, 0),
(396, 27, '				Which of the following is the correct order of evaluation for the below expression? <br>\r\n<pre>z = x + y * z / 4 % 2 - 1			</pre>	', '* / % + - =', '= * / % + -', '/ * % - + =', '* % / - + =', 1, 0),
(397, 27, 'We want to round off x, a float, to an int value, The correct way to do is', 'y = (int)(x + 0.5)', 'y = int(x + 0.5)', 'y = (int)x + 0.5', 'y = (int)((int)x + 0.5)', 1, 0),
(398, 27, 'What will happen if in a C program you assign a value to an array element whose subscript exceeds the size of array?', 'The element will be set to 0.', 'The compiler would report an error.', 'The program may crash if some important data gets overwritten.', 'The array size would appropriately grow.', 3, 0),
(399, 27, 'In C, if you pass an array as an argument to a function, what actually gets passed?', 'Value of elements in array', 'First element of the array', 'Base address of the array', 'Address of the last element of array', 3, 0),
(400, 27, 'How will you free the allocated memory ?', 'remove(var-name);', 'free(var-name);', 'delete(var-name);', 'dalloc(var-name);', 2, 0),
(401, 27, 'Which header file should be included to use functions like malloc() and calloc()?', 'memory.h', 'stdlib.h', 'string.h', 'dos.h', 2, 0),
(402, 27, 'Automatic variables are allocated space in the form of a __________', 'stack', 'queue', 'priority queue', 'random', 1, 0),
(403, 27, 'If storage class is not specified for a local variable, then the default class will be auto.', 'true', 'false', 'depends on the standard', 'none of the above', 1, 0),
(404, 27, 'Property which allows to produce different executable for different platforms in C is called?', 'File inclusion', 'Selective inclusion', 'Conditional compilation', 'Recursive macros', 3, 0),
(405, 27, 'What is the similarity between a structure, union and enumeration?', 'All of them let you define new values', 'All of them let you define new data types', 'All of them let you define new pointers', 'All of them let you define new structures', 2, 0),
(406, 27, '		What do the following declaration signify?\r\n<pre>int *ptr[30];		</pre>', 'ptr is a pointer to an array of 30 integer pointers.', 'ptr is a array of 30 pointers to integers.', 'ptr is a array of 30 integer pointers.', 'ptr is a array 30 pointers.', 2, 0),
(407, 27, 'If a variable is a pointer to a structure, then which of the following operator is used to access data members of the structure through the pointer variable?', '.', '&', '*', '->', 4, 0),
(408, 27, 'The keyword used to transfer control from a function back to the calling function is', 'switch', 'goto', 'go back', 'return', 4, 0),
(409, 27, 'Which of the following declaration is not supported by C?', 'String str;', 'char *str;', 'float str=3.2;', 'both, option a and option c', 1, 0),
(410, 27, 'Which one is not a reserve keyword in C language?', 'auto', 'main', 'case', 'register', 2, 0),
(412, 27, 'How many digits are present after decimal in float value?', '1', '3', '6', '16', 3, 0),
(413, 27, 'Which one is not a predefined header file in c?', 'math.h', 'mathio.h', 'string.h', 'ctype.h', 2, 0),
(414, 27, 'Can we declare function inside a structure in C?', 'Yes', 'No', 'Depends on compiler', 'Yes but it may produce run time error', 2, 0),
(415, 27, '_________ function is used to move the file position to desired location within the file.', 'fread', 'fwrite', 'fseek', 'fscanf', 3, 0),
(416, 28, 'C language is invented by ____________.', 'Dennis Ritchie', 'Bill gates', 'Mark Zuckerburg', 'Bjarne Stroustroup', 1, 0),
(417, 28, 'C language was invented in ____________.', '1972', '1971', '1973', '1970', 1, 0),
(418, 28, 'C is a ____________ language.', 'high level language', 'low level language', 'middle level language', 'none of the above', 3, 0),
(419, 28, 'stdio.h is a ____________.', 'predefined function', 'user defined function', 'header file', 'none of the above', 3, 0),
(420, 28, 'The value of a constant can be changed throughout the execution of program.', 'Yes', 'No', 'Yes, but on a certain condition', 'none of the above', 2, 0),
(421, 28, 'Operator precedence determines which operator?', 'operates on the largest numbers', 'is used first', 'is most important', 'none of these', 2, 0),
(422, 28, 'Pick up the odd one out from the following :\r\n', 'x = x - 1', 'x - = 1', 'x - -', 'x = - 1', 4, 0),
(423, 28, 'Suppose i, j, k are integer variables with values 1, 2, 3 respectively. what is the value of the following expression ?\r\n! ((j + k) > (i+5))', '6', '5', '1', '0', 1, 0),
(424, 28, 'If a = - 11 and b = - 3 . What is the value of a % b ?', '-3', '-2', '2', '3', 2, 0),
(425, 28, 'assuming var1 has value 20 . What will following code print ?\r\n<pre>\r\nprintf(\"% d %d \n\", var1--, ++var1) ;\r\n</pre>		', '19 20', '21 20', '20 21', '19 22', 2, 0),
(426, 28, 'Size of operator returns the size in bytes of :', 'Indentifier', 'Type', 'Identifier or type', 'Array', 3, 0),
(427, 28, 'The && and ll operators :', 'Compare two numeric values', 'Combine two numeric values', 'Compare two boolean values', 'None of the above', 3, 0),
(428, 28, 'The statement printf(\"%c\",100); will print?', 'print 100', 'print garbage', 'prints ASCII equavalent of 100', 'None of the above', 3, 0),
(429, 28, 'The __________ operator is true only when both the operands are true.', 'or', 'and', 'boolean', 'bitwiseor', 2, 0),
(430, 28, 'Which of the following is executed by preprocessor?', '#include<stdio.h>', 'return 0', 'void main()', 'none of the above', 1, 0),
(431, 28, 'How many digits are present after decimal in float value?', '1', '3', '6', '13', 3, 0),
(432, 28, 'Which of the following is not a valid C variable name?', 'int number;', 'float rate;', 'int variable_count;', 'int $m;', 4, 0),
(433, 28, 'All keywords in C are in ___________.', 'Lowercase letters', 'Uppercase letters', 'Camelcase letters', 'None of the mentioned', 1, 0),
(434, 28, '		<pre>What will be the output of following program:\r\nvoid main()\r\n{\r\nint a = 10/3;\r\nprintf(\"%d\",a);\r\n}		\r\n</pre>', '3.3', '3.0', '3', '0', 3, 0),
(435, 28, '		<pre>What will be the correct order of evaluation for the below expression?\r\nz=x+y*z/4%2-1		\r\n</pre>', '* / % + - =', '= * / % + - ', '/ * % + - =', '% * /  + - =', 1, 0),
(436, 28, 'Which datatype is most suitable for storing a number 165000?', 'short', 'int', 'long int', 'double', 3, 0),
(437, 28, '	<pre>	What will be the output of following code?\r\nvoid main()\r\n{\r\nint a=0,b=0;\r\na=(b=75)+9;\r\nprintf(\"%d ,%d\",a,b);\r\n}		\r\n</pre>', '75,9', '75,84', '84,75', '75,75', 3, 0),
(438, 28, '	<pre>	What will be the output?\r\nvoid main()\r\n{\r\nint i=10;\r\ni=!i>14;\r\nprintf(\"%d\",i);\r\n}		\r\n</pre>', '0', '10', '1', 'None of the above', 1, 0),
(439, 28, '		<pre>What will be the output of following program:\r\nvoid main()\r\n{\r\nprintf(\"%d\",!0<2);\r\n}		\r\n</pre>', '0', '1', 'false', 'true', 2, 0),
(440, 28, '<pre>\r\nWhat will be the output of following program?\r\nvoid main()\r\n{\r\nint x,y,z;\r\nx=2; y=1; z=1;\r\nif(x &gt y+z)\r\nprintf(\"Hello\");\r\nelse if(x &lt y+z)\r\nprintf(\"Hi\");\r\nelse\r\nprintf(\"Hey\");\r\n}\r\n</pre>', 'Hi', 'Hello', 'Hey', 'None of the above', 3, 0),
(441, 28, '<pre>\r\nWhat will be the output of following program?\r\nint x=2,y=6,z=6;\r\nx=y==z;\r\nprintf(\"%d\",x);\r\n}\r\n</pre>', '3', '0', 'None of these', '1', 4, 0),
(442, 28, '<pre>\r\nWhat will be the output of the program?\r\nvoid main()\r\n{\r\nint i=3;\r\ni=i++;\r\nprintf(\"%d\",i);\r\n}\r\n</pre>', '3', '4', '5', '6', 2, 0),
(443, 28, 'C Language is developed at _________?', 'AT & T Bell Laboratories of USA in 1972', 'AT & T Bell Laboratories of USA in 1970', 'Sun Microsystems', 'Cambridge University', 1, 0),
(444, 28, 'How many keywords are there in c?', '30', '32', '31', '34', 2, 0),
(445, 28, 'A variable in C cannot start with ', 'a number', 'a special symbol other than underscore', 'both of the above', 'an alphabet', 3, 0),
(446, 28, 'Which one of the following is not a valid identifier?', '_ignou', '1ignou', 'ignou_46012p', 'ignou1', 2, 0),
(447, 28, 'every C program must contain', 'main()', 'printf()', 'getch()', 'clrscr()', 1, 0),
(448, 28, 'which of the following is not a correct variable type?', 'float', 'real', 'int', 'double', 2, 0),
(449, 28, 'Libray function getch() belongs to which header file?', 'stdio.h', 'conio.h', 'stdlib.h', 'stdlibio.h', 2, 0),
(450, 28, 'Which of the following special symbol allowed in a variable name?', '* (asterisk)', '| (pipeline)', '- (hyphen)', '_ (underscore)', 4, 0),
(451, 28, 'How many conditional statements are there in C?', '4', '3', '2', '5', 1, 0),
(452, 28, 'C supports', 'Procedural oriented approach', 'Object Oriented approach', 'both', 'none of the above', 1, 0),
(453, 28, 'printf is a ', 'keyword', 'variable', 'constant', 'pre defined function', 4, 0),
(454, 28, 'Which operator has higher precedence', '!', '+', '-', '()', 4, 0),
(455, 28, 'int data type can store the value upto', '32767', '32768', '32766', '32765', 1, 0),
(456, 29, 'Operating system is a', 'application software', 'system software', 'both', 'none of the above', 2, 0),
(457, 29, 'Which one is not a type of operating system?', 'Batch processing OS', 'Real time OS', 'Distributed OS', 'Task Manager OS', 4, 0),
(458, 29, 'What is operating system?', 'collection of programs that manages hardware resources', 'system service provider to the application programs', ' link to interface the hardware and application programs', 'all of the mentioned', 4, 0),
(459, 29, 'To access the services of operating system, the interface is provided by the ___________', 'System calls', 'API', 'Library', 'Assembly instructions', 1, 0),
(460, 29, 'Which one of the following is not true?', 'kernel is the program that constitutes the central core of the operating sy', 'kernel is the first part of operating system to load into memory during boo', 'kernel is made of various modules which can not be loaded in running operat', 'kernel remains in the memory during the entire computer session', 3, 0),
(461, 29, 'What is the main function of the command interpreter?', 'to get and execute the next user-specified command', 'to provide the interface between the API and application program', 'to handle the files in operating system', 'none of the mentioned', 1, 0),
(462, 29, 'If a process fails, most operating system write the error information to a ______', 'log file', 'another running process', 'new file', 'none of the mentioned', 1, 0),
(463, 29, 'The systems which allow only one process execution at a time, are called __________', 'uniprogramming systems', 'uniprocessing systems', 'unitasking systems', 'none of the mentioned', 2, 0),
(464, 29, 'In operating system, each process has its own __________', 'address space and global variables', 'open files', 'pending alarms, signals and signal handlers', 'all of the mentioned', 4, 0),
(465, 29, 'A process can be terminated due to __________', 'normal exit', 'fatal error', 'killed by another process', 'all of the mentioned', 4, 0),
(466, 29, 'A Process Control Block(PCB) does not contain which of the following?', 'Code', 'Stack', 'Bootstrap program', 'Data', 3, 0),
(467, 29, 'The number of processes completed per unit time is known as __________', 'Output', 'Throughput', 'Efficiency', 'Capacity', 2, 0),
(468, 29, 'The state of a process is defined by __________', 'the final activity of the process', 'the activity just executed by the process', 'the activity to next be executed by the process', 'the current activity of the process', 4, 0),
(469, 29, 'Which of the following is not the state of a process?', 'new', 'old', 'waiting', 'running', 2, 0),
(470, 29, 'What is a Process Control Block?', 'Process type variable', 'Data Structure', 'A secondary storage section', 'A Block in memory', 2, 0),
(471, 29, 'The entry of all the PCBs of the current processes is in __________', 'Process Register', 'Program Counter', 'Process Table', 'Process Unit', 3, 0),
(472, 29, 'What is the degree of multiprogramming?', 'the number of processes executed per unit time', 'the number of processes in the ready queue', 'the number of processes in the I/O queue', 'the number of processes in memory', 4, 0),
(473, 29, 'A single thread of control allows the process to perform __________', 'only one task at a time', 'multiple tasks at a time', 'only two tasks at a time', 'all of the mentioned', 1, 0),
(474, 29, 'What will happen when a process terminates?', 'It is removed from all queues', 'It is removed from all, but the job queue', 'Its process control block is de-allocated', 'Its process control block is never de-allocated', 1, 0),
(475, 29, 'What is a long-term scheduler?', 'It selects which process has to be brought into the ready queue', 'It selects which process has to be executed next and allocates CPU', 'It selects which process to remove from memory by swapping', 'None of the mentioned', 1, 0),
(476, 29, 'What is a medium-term scheduler?', 'It selects which process has to be brought into the ready queue', 'It selects which process has to be executed next and allocates CPU', 'It selects which process to remove from memory by swapping', 'It selects which process to remove from memory by swapping', 3, 0),
(477, 29, 'If a process is executing in its critical section, then no other processes can be executing in their critical section. This condition is called?', 'mutual exclusion', 'critical exclusion', 'synchronous exclusion', 'asynchronous exclusion', 1, 0),
(478, 29, 'Which one of the following is a synchronization tool?', 'thread', 'pipe', 'semaphore', 'socket', 3, 0),
(479, 29, 'In UNIX, each process is identified by its __________', 'Process Control Block', 'Device Queue', 'Process Identifier', 'None of the mentioned', 2, 0),
(480, 29, 'What is Inter process communication?', 'allows processes to communicate and synchronize their actions when using th', 'allows processes to communicate and synchronize their actions without using', 'allows the processes to only synchronize their actions without communicatio', 'none of the mentioned', 2, 0),
(481, 29, 'The processes that are residing in main memory and are ready and waiting to execute are kept on a list called _____________', 'job queue', 'ready queue', 'execution queue', 'process queue', 2, 0),
(482, 29, 'In priority scheduling algorithm ____________', 'CPU is allocated to the process with highest priority', 'CPU is allocated to the process with lowest priority', 'Equal priority processes can not be scheduled', 'None of the mentioned', 1, 0),
(483, 29, 'Which algorithm is defined in Time quantum?', 'shortest job scheduling algorithm', 'round robin scheduling algorithm', 'priority scheduling algorithm', 'multilevel queue scheduling algorithm', 2, 0),
(484, 29, 'Which of the following condition is required for a deadlock to be possible?', 'mutual exclusion', 'a process may hold allocated resources while awaiting assignment of other r', 'no resource can be forcibly removed from a process holding it', 'all of the mentioned', 4, 0),
(485, 29, 'A system is in the safe state if ____________', 'the system can allocate resources to each process in some order and still a', 'there exist a safe sequence', ' all of the mentioned', 'none of the mentioned', 1, 0),
(486, 29, 'Which one of the following is the deadlock avoidance algorithm?', 'banker’s algorithm', 'round-robin algorithm', 'elevator algorithm', 'karn’s algorithm', 1, 0),
(487, 29, 'Which one of the following is a visual ( mathematical ) way to determine the deadlock occurrence?', 'resource allocation graph', 'starvation graph', 'inversion graph', ' none of the mentioned', 1, 0),
(488, 29, 'CPU fetches the instruction from memory according to the value of ____________', 'program counter', 'status register', 'instruction register', 'program status word', 1, 0),
(489, 29, 'Which one of the following is the address generated by CPU?', 'physical address', 'absolute address', 'logical address', 'none of the mentioned', 3, 0),
(490, 29, 'Program always deals with ____________', 'logical address', 'absolute address', 'physical address', 'relative address', 1, 0),
(491, 29, 'The page table contains ____________', 'base address of each page in physical memory', 'page offset', 'page size', 'none of the mentioned', 1, 0),
(492, 29, 'Operating System maintains the page table for ____________', 'each process', 'each thread', 'each instruction', 'each address', 1, 0),
(493, 29, 'Physical memory is broken into fixed-sized blocks called ________', 'frames', 'pages', 'backing store', 'none of the mentioned', 1, 0),
(494, 29, 'Logical memory is broken into blocks of the same size called _________', 'frames', 'pages', 'backing store', 'none of the mentioned', 2, 0),
(495, 29, 'Every address generated by the CPU is divided into two parts. They are ____________', 'frame bit & page number', 'page number & page offset', 'page offset & frame bit', 'page offset & frame bit', 2, 0),
(496, 29, 'The _____ table contains the base address of each page in physical memory.', 'process', 'memory', 'page', 'frame', 3, 0),
(497, 29, 'the size of a page is typically ____________', 'anything', 'power of 2', 'power of 3', 'none of the mentioned', 2, 0),
(498, 29, 'With paging there is no ________ fragmentation.', 'internal', 'external', 'either type of', 'none of the mentioned', 2, 0),
(499, 29, 'In contiguous memory allocation ____________', 'each process is contained in a single contiguous section of memory', 'all processes are contained in a single contiguous section of memory', 'the memory space is contiguous', 'none of the mentioned', 1, 0),
(500, 29, 'What is Dynamic loading?', 'loading multiple routines dynamically', ' loading a routine only when it is called', 'loading multiple routines randomly', 'none of the mentioned', 2, 0),
(501, 29, 'What is the advantage of dynamic loading?', 'A used routine is used multiple times', 'An unused routine is never loaded', 'CPU utilization increases', 'All of the mentioned', 2, 0),
(502, 29, '_____ is the concept in which a process is copied into the main memory from the secondary memory according to the requirement.', 'Paging', 'Demand paging', 'Segmentation', 'Swapping', 2, 0),
(503, 29, 'What is the Optimal page – replacement algorithm?', 'Replace the page that has not been used for a long time', 'Replace the page that has been used for a long time', 'Replace the page that will not be used for a long time', 'None of the mentioned', 3, 0),
(504, 29, 'From the following, which is not a common file permission?', 'write', 'execute', 'stop', 'read', 3, 0),
(505, 29, 'What is the breach of integrity?', 'This type of violation involves unauthorized reading of data', 'This violation involves unauthorized modification of data', 'This violation involves unauthorized destruction of data', 'This violation involves unauthorized use of resources', 2, 0),
(506, 30, 'Which of the following is a correct identifier in C++?', '7var_name', '7VARNAME', 'VAR_1234', '$var_name', 3, 0),
(507, 30, 'Which of the following is called address operator?', '*', '&', '-', '%', 2, 0),
(508, 30, 'Which of the following is used for comments in C++?', '// comment', '/* comment */', 'both // comment or /* comment */', '// comment */', 3, 0),
(509, 30, 'Wrapping data and its related functionality into a single entity is known as _____________', 'Abstraction', 'Encapsulation', 'Polymorphism', 'Modularity', 2, 0),
(510, 30, 'What does polymorphism in OOPs mean?', 'Concept of allowing overiding & overloading of functions', 'Concept of hiding data', 'Concept of keeping things in differnt modules/files', 'Concept of wrapping things into a single unit', 1, 0),
(511, 30, 'Which concept allows you to reuse the written code?', 'Encapsulation', 'Abstraction', 'Inheritance', 'Polymorphism', 3, 0),
(512, 30, 'How access specifiers in Class helps in Abstraction?', 'They does not helps in any way', 'They allows us to show only required things to outer world', 'They help in keeping things together', 'Abstraction concept is not used in classes', 2, 0),
(513, 30, 'C++ is ______________', 'procedural programming language', 'object oriented programming language', 'functional programming language', 'both procedural and object oriented programming language', 4, 0),
(514, 30, 'What does modularity mean?', 'Hiding part of program', 'Subdividing program into small independent parts', 'Overriding parts of program', 'Wrapping things into single unit', 2, 0),
(515, 30, 'Which of the following is C++ equivalent for scanf()?', 'cin', 'cout', 'print', 'input', 1, 0),
(516, 30, 'Which of the following is the scope resolution operator?', '.', '*', '::', '~', 3, 0),
(517, 30, 'Which of the following is correct about static variables?', 'Static functions do not support polymorphism', 'Static data members cannot be accessed by non-static member functions', 'Static data members functions can access only static data members', 'Static data members functions can access both static and non-static data me', 3, 0),
(518, 30, 'Pick the odd one out.', 'array type', 'character type', 'boolean type', 'integer type', 1, 0),
(519, 30, 'Identify the user-defined types from the following?', 'enumeration', 'classes', 'both enumeration and classes', 'int', 3, 0),
(520, 30, 'The value 132.54 can be represented using which data type?', 'double', 'void', 'int', 'bool', 1, 0),
(521, 30, 'Which of the following correctly declares an array?', 'int array[10];', 'int array;', 'array{10};', 'array array[10];', 1, 0),
(522, 30, 'What is the index number of the last element of an array with 9 elements?', '8', '7', '9', '0', 1, 0),
(523, 30, 'What does a reference provide?', 'Alternate name for the class', 'Alternate name for the variable', 'Alternate name for the pointer', 'Alternate name for the object', 2, 0),
(524, 30, 'What will be the output of following program?\r\n<pre>\r\n #include &lt; iostream &gt;\r\n using namespace std;\r\n    int main()\r\n    {\r\n        int a = 9;\r\n        int & aref = a;\r\n        a++;\r\n        cout << \"The value of a is \" << aref;\r\n        return 0;\r\n    }\r\n</pre>		', '9', '10', 'error', '11', 2, 0),
(525, 30, 'The operator used for dereferencing or indirection is ____', '*', '&', '->', '->>', 1, 0),
(526, 30, 'Which of the following is the default return value of functions in C++?', 'int', 'char', 'float', 'void', 1, 0),
(527, 30, 'What is an inline function?', 'A function that is expanded at each call during execution', 'A function that is called during compile time', 'A function that is not checked for syntax errors', 'A function that is not checked for semantic analysis', 1, 0),
(528, 30, 'From which function the execution of a C++ program starts?', 'start() function', 'main() function', 'new() function', 'end() function', 2, 0),
(529, 30, 'Which of the following is important in a function?', 'Return type', 'Function name', 'Both return type and function name', 'The return type, function name and parameter list', 3, 0),
(530, 30, 'What does a class in C++ holds?', 'data', 'functions', 'both data & functions', 'arrays', 3, 0),
(531, 30, 'How many specifiers are present in access specifiers in class?', '1', '2', '3', '4', 3, 0),
(532, 30, 'Which of the following is a valid class declaration?', 'class A { int x; };', 'class B { }', 'public class A { }', 'object A { int x; };', 1, 0),
(533, 30, 'The data members and functions of a class in C++ are by default ____________', 'protected', 'private', 'public', 'public & protected', 2, 0),
(534, 30, 'Which category of data type a class belongs to?', 'Fundamental data type', 'Derived data type', 'User defined data type', 'Atomic data type', 3, 0),
(535, 30, 'Which of the following operator cannot be overloaded?', '+', '?:', '-', '%', 2, 0),
(536, 30, 'What is a friend function in C++?', 'A function which can access all the private, protected and public members o', 'A function which is not allowed to access any member of any class', 'A function which is allowed to access public and protected members of a cla', 'A function which is allowed to access only public members of a class', 1, 0),
(537, 30, 'Which keyword is used to represent a friend function?', 'friend', 'Friend', 'friend_func', 'Friend_func', 1, 0),
(538, 30, 'What is the role of a constructor in classes?', 'To modify the data whenever required', 'To destroy an object', 'To initialize the data members of an object when it is created', 'To call private functions from the outer world', 3, 0),
(539, 30, 'What is a copy constructor?', 'A constructor that allows a user to move data from one object to another', 'A constructor to initialize an object with the values of another object', 'A constructor to check the whether to objects are equal or not', 'A constructor to kill other copies of a given object.', 2, 0),
(540, 30, 'What happens if a user forgets to define a constructor inside a class?', 'Error occurs', 'Segmentation fault', 'Objects are not created properly', 'Compiler provides a default constructor to avoid faults/errors', 4, 0),
(541, 30, 'How many parameters does a default constructor require?', '1', '2', '0', '3', 3, 0),
(542, 30, 'How constructors are different from other member functions of the class?', 'Constructor has the same name as the class itself', 'Constructors do not return anything', 'Constructors are automatically called when an object is created', 'All of the mentioned', 4, 0),
(543, 30, 'What is the difference between constructors and destructors?', 'They have a different function name', 'Constructors does not have return type whereas destructors do have', 'Constructors allow function parameters whereas destructors do not', 'Constructors does not function parameters', 3, 0),
(544, 30, 'How many Destructors are allowed in a Class?', '1', '2', '3', 'any number', 1, 0),
(545, 30, 'Which is used to create a pure virtual function?', '$', '=0', '&', '!', 2, 0),
(546, 30, 'Which is also called as abstract class?', 'virtual function', 'pure virtual function', 'derived class', 'base class', 2, 0),
(547, 30, 'What is meant by pure virtual function?', 'Function which does not have definition of its own', 'Function which does have definition of its own', 'Function which does not have any return type', 'Function which does not have any return type & own definition', 1, 0),
(548, 30, 'What is an exception in C++ program?', 'A problem that arises during the execution of a program', 'A problem that arises during compilation', 'Also known as the syntax error', 'Also known as semantic error', 1, 0),
(549, 30, 'How Exception handling is implemented in the C++ program?', 'Using Exception keyword', 'Using try-catch block', 'Using Exception block', 'Using Error handling schedules', 2, 0),
(550, 30, 'Which of the following is an exception in C++?', 'Divide by zero', 'Semicolon not written', 'Variable not declared', 'An expression is wrongly written', 1, 0),
(551, 30, 'What is the difference between error and exception?', 'Both are the same', 'Errors can be handled at the run-time but the exceptions cannot', 'Exceptions can be handled at the run-time but the errors cannot', 'Both can be handled during run-time', 3, 0),
(552, 30, 'What is Inheritance in C++?', 'Wrapping of data into a single class', 'Deriving new classes from existing classes', 'Overloading of classes', 'Classes with same names', 2, 0),
(553, 30, 'What is the order of Constructors call when the object of derived class B is declared, provided class B is derived from class A?', 'Constructor of A followed by B', 'Constructor of B followed by A', 'Constructor of A only', 'Constructor of B only', 1, 0),
(554, 30, 'What is the order of Destructors call when the object of derived class B is declared, provided class B is derived from class A?', 'Destructor of A followed by B', 'Destructor of B followed by A', 'Destructor of A only', 'Destructor of B only', 2, 0),
(555, 30, 'What is meant by multiple inheritance?', 'Deriving a base class from derived class', 'Deriving a derived class from base class', 'Deriving a derived class from more than one base class', 'Deriving a derived base class', 3, 0),
(556, 31, 'which of these can not be used for a variable name in Java?', 'identifier', 'keyword', 'identifier & keyword', 'none of the mentioned', 2, 0),
(557, 31, 'Which of these is necessary condition for automatic type conversion in Java?', 'The destination type is smaller than source type', 'The destination type is larger than source type', 'The destination type can be larger or smaller than source type', 'None of the mentioned', 2, 0),
(558, 31, 'If an expression contains double, int, float, long, then the whole expression will be promoted into which of these data types?', 'long', 'int', 'double', 'float', 3, 0),
(559, 31, 'Which of these operators is used to allocate memory to array variable in Java?', 'malloc', 'alloc', 'new', 'new malloc', 3, 0),
(560, 31, 'Which of these is an incorrect array declaration?', 'int arr[] = new int[5];', 'int [] arr = new int[5];', 'int arr[] = new int[5];', 'int arr[] = int [5] new;', 4, 0),
(561, 31, 'Which of these is necessary to specify at time of array initialization?', 'row', 'column', 'both row and column', 'none of the mentioned', 1, 0),
(562, 31, 'An array elements are always stored in ________ memory locations.', 'Sequential', 'Random', 'Sequential and Random', 'Binary search', 1, 0),
(563, 31, 'Which of the following can be operands of arithmetic operators?', 'Numeric', 'Boolean', 'Characters', 'Both Numeric & Characters', 4, 0),
(564, 31, 'Modulus operator, %, can be applied to which of these?', 'Integers', 'Floating – point numbers', 'Both Integers and floating – point numbers', 'None of the mentioned', 3, 0),
(565, 31, 'What is the output of relational operators?', 'Integer', 'Boolean', 'Characters', 'Double', 2, 0),
(566, 31, 'Which of these have highest precedence?', '()', '++', '*', '>>', 1, 0),
(567, 31, 'Which of the following loops will execute the body of loop even when condition controlling the loop is initially false?', 'do-while', 'while', 'for', 'none of the mentioned', 1, 0),
(568, 31, 'What would be the output of the following code snippet if variable a=10?\r\n<pre>\r\nif(a&lt;=0)\r\n{\r\n   if(a==0)\r\n   {\r\n     System.out.println(\"1 \");\r\n   }\r\n   else \r\n   { \r\n      System.out.println(\"2 \");\r\n   }\r\n}\r\nSystem.out.println(\"3 \");\r\n</pre>', '1 2', '2 3', '1 3', '3', 4, 0),
(569, 31, 'What is true about a break?', 'Break stops the execution of entire program', 'Break halts the execution and forces the control out of the loop', 'Break forces the control out of the loop and starts the execution of next i', 'Break halts the execution of the loop for certain time frame', 2, 0),
(570, 31, 'Which of the following is not OOPS concept in Java?', 'Inheritance', 'Encapsulation', 'Polymorphism', 'Compilation', 4, 0),
(571, 31, 'When does method overloading is determined?', 'At run time', 'At compile time', 'At coding time', 'At execution time', 2, 0),
(572, 31, 'Which concept of Java is achieved by combining methods and attribute into a class?', 'Encapsulation', 'Inheritance', 'Polymorphism', 'Abstraction', 1, 0),
(573, 31, 'Which component is used to compile, debug and execute java program?', 'JVM', 'JDK', 'JIT', 'JRE', 2, 0),
(574, 31, 'Which component is responsible for converting bytecode into machine specific code?', ' JVM', ' JDK', 'JIT', 'JRE', 1, 0),
(575, 31, 'Which component is responsible to run java program?', 'JVM', 'JDK', 'JIT', 'JRE', 4, 0),
(576, 31, 'Which statement is true about java?', 'Platform independent programming language', 'Platform dependent programming language', 'Code dependent programming language', 'Sequence dependent programming language', 1, 0),
(577, 31, 'What is the extension of java code files?', '.class', '.java', '.txt', '.js', 2, 0),
(578, 31, 'What is the extension of compiled java classes?', '.class', '.java', '.txt', '.js', 1, 0),
(579, 31, 'Which of the following is a valid declaration of an object of class Box?', 'Box obj = new Box();', 'Box obj = new Box;', 'obj = new Box();', 'new Box obj;', 1, 0),
(580, 31, 'Which of these statement is incorrect?', 'Every class must contain a main() method', 'Applets do not require a main() method at all', 'Applets do not require a main() method at all', 'main() method must be made public', 1, 0),
(581, 31, 'Which of the following statements is correct?', 'Public method is accessible to all other classes in the hierarchy', 'Public method is accessible only to subclasses of its parent class', 'Public method can only be called by object of its class', 'Public method can be accessed by calling object of the public class', 1, 0),
(582, 31, 'What is the return type of a method that does not return any value?', 'int', 'float', 'void', 'double', 3, 0),
(583, 31, 'What is the process of defining more than one method in a class differentiated by method signature?', 'Function overriding', 'Function overloading', 'Function doubling', 'None of the mentioned', 2, 0),
(584, 31, 'Which of the following is a method having same name as that of it’s class?', 'finalize', 'delete', 'class', 'constructor', 4, 0),
(585, 31, 'Which method can be defined only once in a program?', 'main method', 'finalize method', 'static method', 'private method', 1, 0),
(586, 31, 'What is the return type of Constructors?', ' int', 'float', 'void', 'no any return type', 4, 0),
(587, 31, 'Which keyword is used by the method to refer to the object that invoked it?', 'import', 'catch', 'abstract', 'this', 4, 0),
(588, 31, 'Which function is used to perform some action when the object is to be destroyed?', 'finalize()', 'delete()', 'main()', 'none of the mentioned', 1, 0),
(589, 31, 'What is true about private constructor?', 'Private constructor ensures only one instance of a class exist at any point', 'Private constructor ensures multiple instances of a class exist at any poin', 'Private constructor eases the instantiation of a class', 'Private constructor allows creating objects in other classes', 1, 0),
(590, 31, 'What would be behaviour if the constructor has a return type?', 'Compilation error', 'Runtime error', 'Compilation and runs successfully', 'Only String return type is allowed', 1, 0),
(591, 31, 'Which of these can be overloaded?', 'Methods', 'Constructors', 'both', 'None of the mentioned', 3, 0),
(592, 31, 'Which of these is correct about passing an argument by call-by-value process?', 'Copy of argument is made into the formal parameter of the subroutine', 'Reference to original argument is passed to formal parameter of the subrout', 'Copy of argument is made into the formal parameter of the subroutine and ch', 'none of the above', 1, 0),
(593, 31, 'What is the process of defining a method in terms of itself, that is a method that calls itself?', 'Polymorphism', 'Abstraction', 'Encapsulation', ' Recursion', 4, 0),
(594, 31, 'Which of this keyword can be used in a subclass to call the constructor of superclass?', 'super', 'this', 'extend', 'extends', 1, 0),
(595, 31, 'What is the process of defining a method in a subclass having same name & type signature as a method in its superclass?', 'Method overloading', 'Method overriding', 'Method hiding', 'None of the mentioned', 2, 0),
(596, 31, 'Which of these keywords can be used to prevent Method overriding?', 'static', 'constant', 'protected', 'final', 4, 0),
(597, 31, 'Which of these is correct way of calling a constructor having no parameters, of superclass A by subclass B?', 'super(void);', 'superclass.();', ' super.A();', 'super();', 4, 0),
(598, 31, 'Which of these is supported by method overriding in Java?', 'Abstraction', 'Encapsulation', 'Polymorphism', 'None of the mentioned', 3, 0),
(599, 31, 'Which of this keyword must be used to inherit a class?', 'super', 'this', 'extend', 'extends', 4, 0),
(600, 31, 'What is not type of inheritance?', 'Single inheritance', ' Double inheritance', 'Hierarchical inheritance', 'Multiple inheritance', 2, 0),
(601, 31, 'Using which of the following, multiple inheritance in Java can be implemented?', 'Interfaces', 'Multithreading', 'Protected methods', 'Private methods', 1, 0),
(602, 31, 'All classes in Java are inherited from which class?', 'java.lang.class', 'java.class.inherited', 'java.class.object', 'java.lang.Object', 4, 0),
(603, 31, 'If super class and subclass have same variable name, which keyword should be used to use super class?', 'super', 'this', 'upper', 'classname', 1, 0);
INSERT INTO `mst_question` (`que_id`, `test_id`, `que_desc`, `ans1`, `ans2`, `ans3`, `ans4`, `true_ans`, `temp`) VALUES
(604, 31, 'Which of the following is used for implementing inheritance through an interface?', 'inherited', 'using', ' extends', ' implements', 4, 0),
(605, 31, ' What is multithreaded programming?', 'It is a process in which two different processes run simultaneously', 'It is a process in which two or more parts of same process run simultaneous', 'It is a process in which many different process are able to access same inf', 'It is a process in which a single process can access information from many ', 2, 0),
(606, 32, 'The ______ format is usually used to store data.', 'BCD', 'Decimal', 'Hexadecimal', 'Octal', 1, 0),
(607, 32, 'A source program is usually in _______', 'Assembly language', 'Machine level language', 'High-level language', 'Natural language', 3, 0),
(608, 32, 'Which memory device is generally made of semiconductors?', 'RAM', 'Hard-disk', 'Floppy disk', 'CD disk', 1, 0),
(609, 32, 'The small extremely fast, RAM’s are called as _______', 'Cache', 'Heaps', 'Accumulators', 'Stacks', 1, 0),
(610, 32, 'The ALU makes use of _______ to store the intermediate results.', 'Accumulators', 'Register', 'Heap', 'Stack', 1, 0),
(611, 32, '______ are numbers and encoded characters, generally used as operands.', 'Input', 'Data', 'Information', 'Stored Values', 2, 0),
(612, 32, 'To reduce the memory access time we generally make use of ______', 'Heaps', 'Higher capacity RAM’s', 'SDRAM’s', 'Cache’s', 4, 0),
(613, 32, 'The decoded instruction is stored in ______', 'IR', 'PC', 'Registers', 'MDR', 1, 0),
(614, 32, 'The internal components of the processor are connected by _______', 'Processor intra-connectivity circuitry', 'Processor bus', 'Memory bus', 'Rambus', 2, 0),
(615, 32, 'ANSI stands for __________', 'American National Standards Institute', 'American National Standard Interface', 'American Network Standard Interfacing', 'American Network Security Interrupt', 1, 0),
(616, 32, 'The addressing mode which makes use of in-direction pointers is ______', 'Indirect addressing mode', 'Index addressing mode', 'Relative addressing mode', 'Offset addressing mode', 1, 0),
(617, 32, 'Physical memory is divided into sets of finite size called as ______', 'Frames', 'Pages', 'Blocks', 'Vectors', 1, 0),
(618, 32, 'Which representation is most efficient to perform arithmetic operations on the numbers?', 'Sign-magnitude', '1s complement', '2s complement', 'None of the mentioned', 3, 0),
(619, 32, 'In memory-mapped I/O ____________', 'The I/O devices and the memory share the same address space', 'The I/O devices have a separate address space', 'The memory and I/O devices have an associated address space', 'A part of the memory is specifically set aside for the I/O operation', 1, 0),
(620, 32, ' ______ is used as an intermediate to extend the processor BUS.', 'Bridge', ' Router', 'Connector', 'Connector', 1, 0),
(621, 32, ' ________ is an extension of the processor BUS.', ' SCSI BUS', 'USB', 'PCI BUS', 'None of the mentioned', 3, 0),
(622, 32, 'SCSI stands for ___________', 'Signal Computer System Interface', 'Small Computer System Interface', 'Small Coding System Interface', 'Signal Coding System Interface', 2, 0),
(623, 32, 'ISO stands for __________', 'International Standards Organisation', ' International Software Organisation', 'Industrial Standards Organisation', ' Industrial Software Organisation', 1, 0),
(624, 32, 'The DMA transfers are performed by a control circuit called as __________', 'Device interface', 'DMA controller', 'Data controller', 'Overlooker', 2, 0),
(625, 32, 'In DMA transfers, the required signals and addresses are given by the __________', 'Processor', 'Device drivers', 'DMA controllers', 'The program itself', 3, 0),
(626, 32, 'After the completion of the DMA transfer, the processor is notified by __________', 'Acknowledge signal', 'Interrupt signal', 'WMFC signal', 'None of the mentioned', 2, 0),
(627, 32, 'The DMA controller has _______ registers.', '4', '2', '3', '1', 3, 0),
(628, 32, 'The controller is connected to the ____', ' Processor BUS', 'System BUS', 'External BUS', 'None of the mentioned', 2, 0),
(629, 32, 'The registers of the controller are ______', '64 bits', ' 24 bits', '32 bits', '16 bits', 3, 0),
(630, 32, 'The DMA transfer is initiated by _____', ' Processor', 'The process being executed', 'I/O devices', 'OS', 3, 0),
(631, 32, 'If the transistor gate is closed, then the ROM stores a value of __.', '1', '0', '10', '11', 2, 0),
(632, 32, 'PROM stands for __________', 'Programmable Read Only Memory', 'Pre-fed Read Only Memory', 'Pre-required Read Only Memory', 'Programmed Read Only Memory', 1, 0),
(633, 32, 'The PROM is more effective than ROM chips in regard to _______', 'Cost', 'Memory management', 'Speed of operation', 'Both Cost and Speed of operation', 4, 0),
(634, 32, 'The ROM chips are mainly used to store _______', 'System files', 'Root directories', 'Boot files', 'Driver files', 3, 0),
(635, 32, 'The contents of the EPROM are erased by ________', 'Overcharging the chip', 'Exposing the chip to UV rays', 'Exposing the chip to IR rays', 'Discharging the Chip', 2, 0),
(636, 32, 'The fastest data access is provided using _______', 'Caches', 'DRAM’s', 'SRAM’s', 'Registers', 4, 0),
(637, 32, 'The memory which is used to store the copy of data or instructions stored in larger memories, inside the CPU is called _______', 'Level 1 cache', 'Level 2 cache', 'Registers', 'TLB', 1, 0),
(638, 32, 'The larger memory placed between the primary cache and the memory is called ______', 'Level 1 cache', 'Level 2 cache', 'EEPROM', 'TLB', 2, 0),
(639, 32, 'The reason for the implementation of the cache memory is ________', 'To increase the internal memory of the system', 'The difference in speeds of operation of the processor and memory', 'To reduce the memory access and cycle time', 'All of the mentioned', 2, 0),
(640, 32, 'The correspondence between the main memory blocks and those in the cache is given by _________', 'Hash function', 'Mapping function', 'Locale function', 'Assign function', 2, 0),
(641, 32, 'The algorithm to remove and place new contents into the cache is called _______', 'Replacement algorithm', 'Renewal algorithm', 'Updation', 'None of the mentioned', 1, 0),
(642, 32, ' The number successful accesses to memory stated as a fraction is called as _____', 'Hit rate', 'Miss rate', 'Success rate', ' Access rate', 1, 0),
(643, 32, 'The number failed attempts to access memory, stated in the form of a fraction is called as _________', 'Hit rate', 'Miss rate', 'Failure rate', 'Delay rate', 2, 0),
(644, 32, '________ are the different type/s of generating control signals.', 'Micro-programmed', 'Hardwired', 'Micro-instruction', 'Both Micro-programmed and Hardwired', 4, 0),
(645, 32, 'What does the hardwired control generator consist of?', 'Decoder/encoder', 'Condition codes', 'Control step counter', 'All of the mentioned', 4, 0),
(646, 32, 'The algorithm which replaces the block which has not been referenced for a while is called _____', 'LRU', 'ORF', 'Direct', 'Both LRU and ORF', 1, 0),
(647, 32, 'The algorithm which removes the recently used page first is ________', 'LRU', 'MRU', 'OFM', 'None of the mentioned', 2, 0),
(648, 32, 'The techniques which move the program blocks to or from the physical memory is called as ______', 'Paging', 'Virtual memory organisation', 'Overlays', 'Framing', 2, 0),
(649, 32, 'The binary address issued to data or instructions are called as ______', 'Physical address', 'Location', 'Relocatable address', ' Logical address', 4, 0),
(650, 32, 'The main aim of virtual memory organisation is ________', 'To provide effective memory access', 'To provide better memory transfer', 'To improve the execution of the program', 'All of the mentioned', 4, 0),
(651, 32, 'The virtual memory basically stores the next segment of data to be executed on the _________', 'Secondary storage', 'Disks', 'RAM', 'ROM', 1, 0),
(652, 32, 'The digital information is stored on the hard disk by ____________', 'Applying a suitable electric pulse', 'Applying a suitable magnetic field', 'Applying a suitable nuclear field', 'By using optic waves', 1, 0),
(653, 32, 'The CISC stands for ___________', 'Computer Instruction Set Compliment', 'Complete Instruction Set Compliment', 'Computer Indexed Set Components', 'Complex Instruction set computer', 4, 0),
(654, 32, 'Pipe-lining is a unique feature of _______', 'RISC', 'CISC', 'ISA', 'IANA', 1, 0),
(655, 32, 'Which of the architecture is power efficient?', 'CISC', 'RISC', 'ISA', ' IANA', 2, 0),
(656, 33, 'System Study involves', 'study of an existing system', 'documenting the existing system.', 'identifying current deficiencies and establishing new goals', 'All of the above', 4, 0),
(657, 33, 'The primary tool used in structured design is a:', 'structure chart', 'data-flow diagram', 'program flowchart', 'module', 1, 0),
(658, 33, 'The step-by-step instructions that solve a problem are called _____.', 'An algorithm', 'A list', 'A plan', 'A sequential structure', 1, 0),
(659, 33, 'The approach used in top-down analysis and design is', 'to identify the top level functions by combining many smaller components in', 'to prepare flow charts after programming has been completed', 'to identify a top level function an d then create a hierarchy of lower-leve', 'All of the above', 3, 0),
(660, 33, '	\r\nDocumentation is prepared', 'at every stage', 'at system design', 'at system analysis', 'at system development', 1, 0),
(661, 33, '			\r\nData Definition Language (DDL)		', 'describes how data are structured in the data base', 'specifies for the DBMS what is required,the techniques used to process data', 'determine how data must be structured to produce the users view', 'All of the above', 1, 0),
(662, 33, 'Decision tree uses', 'pictorial depictation of alternate conditions', 'nodes and branches', 'consequences of various depicted alternates', 'All of the above', 4, 0),
(663, 33, 'Problem analysis is done during', 'system design phase', 'systems analysis phase', 'before system test', 'All of the above', 2, 0),
(664, 33, '		Top-down programming is		', 'a group of related fields', 'a map of the programmers view of the data', 'an approach in which the top module is first tested then program modules ar', 'a series or group of components that perform one or more operations of a mo', 3, 0),
(665, 33, 'A decision table facilitates conditions to be related to', 'actions', 'programs', 'tables', 'operation', 1, 0),
(666, 33, '	\r\nA _____ is an outline of a process that keeps develop successful information systems', 'System Development Life Cycle', 'CASE tool', 'Phased Conversion', 'Success Factors', 1, 0),
(667, 33, 'The _____ symbol is used in a flowchart to represent a calculation task.', 'Input', 'Output', 'Process', 'Start', 3, 0),
(668, 33, '	\r\nWhich of the following systems implementation approaches should be used if you want to run the old system and the new system at the same time for a specified period?', 'direct', 'pilot', 'parallel', 'phased', 3, 0),
(669, 33, 'Which of the following is not considered as a tool at the system design phase?', 'piechart', 'data-flow diagram', 'decision table', 'systems flowchart', 1, 0),
(670, 33, 'Structured Programming involves', 'decentralisation of program activity', 'functional modularisation', 'localisation of errors', 'All of the above', 2, 0),
(671, 33, 'Advantages of data base system is (are)', 'storage space duplication is eliminated', 'all applications share centralized files', 'data are stored once in the data base and are easily accessible when needed', 'All of the above', 4, 0),
(672, 33, 'Top Management is more interested in', 'day-to-day operations', 'strategic decisions', 'tactical decision', 'both b and c', 4, 0),
(673, 33, 'Cost-Benefit analysis', 'evaluates the tangible and non-tangible factors', 'compares the cost, with the benefits, of introducing a computer-based syste', 'estimates the hardware and software costs', 'All of the above', 4, 0),
(674, 33, 'A graphic representation of an information system is called', 'flow chart', 'pictogram', 'data flow diagram', 'histogram', 3, 0),
(675, 33, 'The Data flow diagram (DFD) shows;', 'the flow of data', 'the processes', 'the areas where they are stored.', 'All of the above', 4, 0),
(676, 33, 'The first step in the problem-solving process is to _____.', 'Plan the algorithm', 'Analyze the problem', 'Desk-check the algorithm', 'Evaluate and modify (if necessary) the program', 2, 0),
(677, 33, 'Checking the quality of software in both simulated and line environments, is known as', 'checking', 'usability', 'validity', 'validation', 4, 0),
(678, 33, 'The first step of the implementation phase is', 'implementation planning', 'select the computer', 'announce the implementation project', 'prepare physical facilities', 1, 0),
(679, 33, 'An Audit trial is', 'a feature of data processing systems that allows for the study of data as p', 'a data item that characterizes an object', 'two or more data items handled as a unit', 'All of the above', 1, 0),
(680, 33, 'Coding and testing are done in which manner.', 'ad hoc', 'cross-sectional', 'bottom-up', 'top-down', 4, 0),
(681, 33, '…………………………. is an important factor of management information system.', 'System', 'Data', 'Process', 'All', 1, 0),
(682, 33, '8.Enhancements, upgrades, and bug fixes are done during the  \r\n____________ step in the SDLC.', 'Maintenance and Evaluation', ' Problem/Opportunity Identification', 'Design', 'Development and Documentation', 1, 0),
(683, 33, 'HIPO stand for', 'Hierarchy input process output', 'Hierarchy input plus output', 'Hierarchy plus input process output', 'Hierarchy input output Process', 1, 0),
(684, 33, ' Advantages of system flowcharts ………………….', 'Effective communication', 'Effective analysis', 'Queasier group or relationships', 'All of the above', 4, 0),
(685, 33, '. ……………… is a tabular method for describing the logic of the decisions to be taken.', 'Decision tables', 'Decision tree', 'Decision Method', 'Decision Data', 1, 0),
(686, 33, 'The approach used in top‐down analysis and design is', 'to identify the top level functions by combining many smaller components in', 'to prepare flow charts after programming has been completed', 'to identify a top level function an d then create a hierarchy of lower‐leve', 'All of the above', 4, 0),
(687, 33, 'It is necessary to consult the following while drawing up requirement  \r\nspecification', 'only top managers', 'only top and middle management ', 'only top and middle management ', 'top, middle and operational managers and also all who will use the system', 4, 0),
(688, 33, 'A feasibility study is carried out', 'after final requirements specifications are drawn up', 'during the period when requirements specifications are drawn up', 'before the final requirements specifications are drawn up', 'at any time', 3, 0),
(689, 33, 'The main objective of feasibility study is', 'to assess whether it is possible to meet the requirements specifications  ', 'to assess if it is possible to meet the requirements specified subject to c', 'to assist the management in implementing the desired system  ', 'to remove bottlenecks in implementing the desired system  ', 2, 0),
(690, 33, 'It is necessary to carry out a feasibility study as', 'top management cannot ensure that a project is feasible before calling a sy', 'top management is not sure what they want from the system', 'even though top management is in favour of the system, technology may not b', 'all organizations do it ', 3, 0),
(691, 33, 'Feasibility study is carried out by', 'managers of the organization', 'system analyst in consultation with managers of the organization', 'users of the proposed system', 'systems designers in consultation with the prospective users of the system', 2, 0),
(692, 33, 'Hardware study is required ', 'to find out cost of computer system needed', 'to determine the type of computer system and software tools needed to meet ', 'to make sure that the system does not become obsolete', 'to find how to implement the system', 2, 0),
(693, 33, 'System design is carried out', 'as soon as system requirements are determined', 'whenever a system analyst feels it is urgent', 'after final system specifications are approved by the organization', 'whenever the user management feels it should be done', 3, 0),
(694, 33, 'The primary objective of system design is to', 'design the programs, databases and test plan', 'design only user interfaces', 'design only user interfaces', 'find out how the system will perform', 1, 0),
(695, 33, 'The main objective of system evaluation is', 'to see whether the system met specification', 'to improve the system based on operational experience for a period', 'to improve the system based on operational experience for a period', 'to asses the efficiency of the system', 2, 0),
(696, 33, 'Systems are modified whenever		', 'users requirements change', 'new computers are introduced in the market', 'new software tools become available in the market', 'other similar organization modify these system', 1, 0),
(697, 33, 'To easily modify the existing system it is necessary to', 'use good software tools', 'use the best hardware available', 'design the system which can be changed at low cost', 'keep the programming team happy', 3, 0),
(698, 33, 'It is necessary to design an information system to easily accommodate change,  \r\nbecause', 'new computers are introduced every year', 'new computer languages become popular every year', 'organizations’ requirements change over a period of time', 'systems need continuous debugging', 3, 0),
(699, 33, 'The primary responsibility of a systems analyst is to', 'specify an information system which meets the requirements of an organizati', 'write programs to meet specifications', 'maintain the system', 'meet managers of the organization regularly', 1, 0),
(700, 33, 'The most important attribute of a systems analyst is', 'excellent programming skills', 'very good hardware designing skills', 'very good technical management skills', 'very good writing skills', 3, 0),
(701, 33, 'Changes made periodically to a system, after its implementation, is known as system', 'Analysis', ' design', ' development', 'maintenance', 4, 0),
(702, 33, 'The first step in systems Development Life Cycle is', 'database design', ' system design', ' preliminary investigation and analysis ', 'graphical user interface', 3, 0),
(703, 33, 'DFD is constrcuted in which phase of SDLC?	', 'System Analysis', 'Implementation', 'System Design', 'Testing', 3, 0),
(704, 33, 'Which of the following is (are) the characteristic(s) of a system?', 'organization ', ' Interaction', 'Interdependence ', 'All of the above', 4, 0),
(705, 33, 'To which phase of SDLC, is file conversion related?', ' System Implementation ', ' System analysis', 'System development ', ' System design', 1, 0),
(706, 34, 'If ∑ = {a, b, c, d, e, f} then number of strings in ∑ of length 4 such that no symbol is used more than once in a string is', '35', '360', '49', '720', 2, 0),
(707, 34, 'Which of the following strings is not generated by the following grammar?\r\nS → SaSbS|ε', 'aabb', 'abab', 'aababb', 'aaabbb', 4, 0),
(708, 34, 'What is the Regular Expression Matching Zero or More Specific Characters', 'x', '#', '*', '&', 3, 0),
(709, 34, 'All __________ are automatically treated as regular expressions.', 'Programmatic description', 'Window', 'Win Object', 'Collection', 1, 0),
(710, 34, 'Regular expression (x/y)(x/y) denotes the set', '{xy,xy}', '{xx,xy,yx,yy}', '{x,y}', '{x,y,xy}', 2, 0),
(711, 34, 'Regular expression x/y denotes the set', '{x,y}', '{xy}', '{x}', '{y}', 1, 0),
(712, 34, 'The regular expressions denote zero or more instances of an x or y is', '(x+y)', '(x+y)*', '(x* + y)', '(xy)*', 2, 0),
(713, 34, 'A system program that combines separately compiled modules of a program into a form suitable for execution is', 'Assembler', 'Linking loader', 'Cross compiler', 'None of the mentioned', 2, 0),
(714, 34, 'A compiler for a high-level language that runs on one machine and produces code for a different machine is called', 'Optimizing compiler', 'One pass compiler', 'Cross compiler', 'Multipass compiler', 3, 0),
(715, 34, 'Cross-compiler is a compiler', 'Which is written in a different language from the source language?', 'That generates object code for the machine it’s running on.', 'Which is written in the same language as the source language?', 'That runs on one machine but produces object code for another machine', 1, 0),
(716, 34, 'The output of lexical analyzer is', 'A set of RE', 'Syntax Tree', 'Set of Tokens', 'String Character', 3, 0),
(717, 34, 'The symbol table implementation is based on the property of locality of reference is', 'Linear list', 'Search tree', 'Hash Table', 'Self Organisation', 3, 0),
(718, 34, 'Object program is a', 'Program written in machine language', 'Program to be translated into machine language', 'Translation of high-level language into machine language', 'None of the mentioned', 3, 0),
(719, 34, 'Which concept of grammar is used in the compiler', 'Lexical analysis', 'Parser', 'Code generation', 'Code optimization', 2, 0),
(720, 34, 'Which of the following are Lexemes?', 'Identifiers', 'Constants', 'Keywords', 'All of the mentioned', 4, 0),
(721, 34, 'What constitutes the stages of the compilation process?', 'Feasibility study, system, design, and testing', 'Implementation and. documentation', 'Lexical analysis, syntax. Analysis and code generation', 'None of the mentioned', 3, 0),
(722, 34, 'The lexical analyzer takes_________as input and produces a stream of_______as output.', 'Source program, tokens', 'Token, source program', 'Either of the two', 'None of the mentioned', 1, 0),
(723, 34, 'Parsing is also known as', 'Lexical Analysis', 'Syntax Analysis', 'Semantic Analysis', 'Code Generation', 2, 0),
(724, 34, 'A compiler program written in a high level language is called', 'Source Program', 'Object Program', 'Machine Language Program', 'None of the mentioned', 1, 0),
(725, 34, 'The Regular Expression gives none or many instances of an x or y is', '(x+y)', ' (x+y)*', '(x* + y)', ' (xy)*', 2, 0),
(726, 34, 'Which phase of compiler is Syntax Analysis', 'First', 'Second', 'Third', 'None of the mentioned', 2, 0),
(727, 34, 'From where Syntax analyzer take its input from?', 'Lexical analyser', 'Syntactic Analyser', 'Semantic Analyser', 'None of the mentioned', 1, 0),
(728, 34, 'A compiler can check?', 'Logical Error', 'Syntax Error', 'Both Logical and Syntax Error', 'Not Logical and Syntax Error', 2, 0),
(729, 34, 'Which of the following derivations does a top-down parser use while parsing an input string?', 'Leftmost derivation', 'Leftmost derivation in reverse', 'Rightmost derivation', 'Rightmost derivation in reverse', 1, 0),
(730, 34, 'Consider the production of the grammar S->AA A->aa A->bb Describe the language specified by the production grammar.', 'L = {aaaa,aabb,bbaa,bbbb}', 'L = {abab,abaa,aaab,baaa}', 'L = {aaab,baba,bbaa,bbbb}', 'L = {aaaa,abab,bbaa,aaab}', 1, 0),
(731, 34, 'YACC builds up', 'SLR parsing table', 'Canonical LR parsing table', 'LALR parsing table', 'None of the mentioned', 3, 0),
(732, 34, 'What is the binary equivalent of the decimal number 368', '10111000', '110110000', '111010000', '111100000', 2, 0),
(733, 34, 'Running time of a program depends on', 'Addressing mode', 'Order of computations', 'The usage of machine idioms', 'All of the mentioned', 4, 0),
(734, 34, 'What is the similarity between LR, LALR and SLR?', 'Both Parsing tables and algorithm are different.', 'Use same algorithm, but different parsing table.', 'Same parsing table, but different algorithm.', 'Their Parsing tables and algorithm are similar but uses top down approach.', 2, 0),
(735, 34, 'An LR-parser can detect a syntactic error as soon as', 'The parsing starts', 'It is possible to do so a left-to-right scan of the input.', 'It is possible to do so a right-to-left scan of the input.', 'Parsing ends', 2, 0),
(736, 34, 'The average time required to reach a storage location in memory and obtain its contents is called the _____', 'Seek time', 'Turnaround time', 'Access time', 'Transfer time', 3, 0),
(737, 34, 'Computers use addressing mode techniques for ____________', 'Giving programming versatility to the user by providing facilities as point', 'To reduce no. of bits in the field of instruction', 'Specifying rules for modifying or interpreting address field of the instruc', 'All of the mentioned', 4, 0),
(738, 34, 'In computers, subtraction is generally carried out by ______', '9’s complement', '10’s complement', '1’s complement', '2’s complement', 4, 0),
(739, 34, 'Assembly language ________', 'Uses alphabetic codes in place of binary numbers used in machine language', 'Is the easiest language to write programs', 'Need not be translated into machine language', 'None of the mentioned', 1, 0),
(740, 34, 'Grammar that produce more than one Parse tree for same sentence is', 'Ambiguous', 'Unambiguous', 'Complementary', 'Concatenation Intersection', 1, 0),
(741, 34, 'Automaton accepting the regular expression of any number of a ‘ s is', 'a*', 'ab*', '(a/b)*', ' a*b*c', 1, 0),
(742, 34, 'A bottom up parser generates', 'Right most derivation', 'Rightmost derivation in reverse', 'Leftmost derivation', 'Leftmost derivation in reverse', 2, 0),
(743, 34, 'A compiler is a program that', 'Program is put into memory and executes it.', 'Translation of assembly language into machine language.', 'Acceptance of a program written in a high level language and produces an ob', 'None of the mentioned', 3, 0),
(744, 34, 'Which of the following is used for grouping of characters into tokens?', 'Parser', 'Code optimization', 'Code generator', 'Lexical analyzer', 4, 0),
(745, 34, 'What is the index number of the last element of an array with 29 elements?', '29', '28', '0', 'program defined', 2, 0),
(746, 34, 'What does the following declaration mean? int (*a)[10] a is', 'Pointer to an array', 'Array of 10 integers', 'Both of the mentioned', 'None of the mentioned', 1, 0),
(747, 34, 'Shift reduce parsers are', 'Top down Parser', ' Bottom Up parser', 'May be top down or bottom up', 'None of the mentioned', 2, 0),
(748, 34, 'Select a Machine Independent phase of the compiler', 'Syntax Analysis', 'Intermediate Code generation', 'Lexical Analysis', 'All of the mentioned', 4, 0),
(749, 34, 'By whom is the symbol table created?', 'Compiler', 'Interpreter', 'Assembler', 'None of the mentioned', 1, 0),
(750, 34, 'Cache memory acts between_______', 'CPU and RAM', 'RAM and ROM', 'CPU and Hard Disk', 'None of the mentioned', 1, 0),
(751, 34, 'The process manager has to keep track of', 'Status of each program', 'Information to a programmer using the system', 'Both of the mentioned', 'None of the mentioned', 3, 0),
(752, 34, 'Which of the following functions is performed by loader?', 'Allocate memory for the programs and resolve symbolic references between ob', 'Address dependent locations, such as address constants, to correspond to th', 'Physically place the machine instructions and data into memory', 'All of the mentioned', 4, 0),
(753, 34, 'Assembler is a program that', 'Puts programs into memory and executes them', 'Translates the assembly language into machine language', 'Writes in high level language and produces an object program', 'None of the mentioned', 2, 0),
(754, 34, '		The set of all strings over ∑ ={a,b} in which a single a is followed by any number of b’s a single b followed by any number of a is		', 'ab* + ba*', 'ab*ba*', 'a*b + b*a', 'None of the mentioned', 1, 0),
(755, 34, '		The set of all strings over ∑ = {a,b} in which strings consisting a and b and ending with in bb is		', 'ab', 'a*bbb', '(a+b)* bb', 'All of the mentioned', 3, 0),
(756, 35, '		What is the shortcut key for Save as ?		', 'Ctrl +shift + S', 'Ctrl +Alt + S', 'Ctrl +S', 'Ctrl +Shift +C', 1, 0),
(757, 35, 'What is the shortcut key for replace?', 'Ctrl +R', 'Ctrl + H', 'Ctrl + G', 'Ctrl + K', 2, 0),
(758, 35, 'If we have to find a certain file which shortcut will be used.', 'Ctrl + E', 'Ctrl + N', 'Ctrl + Q', 'Ctrl + F', 4, 0),
(759, 35, 'The computer generations are classified into____________________ categories.', '2', '3', '5', '6', 3, 0),
(760, 35, 'The first generations of computers are based on the.', 'Made Tube', 'John Von Tube', 'Vacuum Tube', 'None of these', 3, 0),
(761, 35, 'ENIAC, EDVAC & EDSAC are the computers of-', '1st generation', '2nd generation', '3rd generation', '4th generation', 1, 0),
(762, 35, 'The second generations of computers are based on-', 'Vacuum tube    ', 'Integrated circuit', 'Microprocessor', 'Transistor', 4, 0),
(763, 35, 'IC stands for________.', 'Input channel', 'Integrated circuit', 'Input circuit	', 'Integrated chip', 2, 0),
(764, 35, 'Desktop and PDA are the examples of _______________ computers.', 'Mini ', 'Super ', 'Mainframe ', 'Micro', 4, 0),
(765, 35, 'Who is known as the father of computers?\r\n', 'Charles Babbage', 'John Von Numean', 'Charlie chals', 'Walter Brattain', 1, 0),
(767, 35, 'Which of following pair is Volatile memory?	', 'RAM and Floppy disk', 'Cache and Floppy disk', 'RAM and Cache', 'RAM and Hard disk', 3, 0),
(768, 35, 'BIOS stands for?', 'Basic Input Output System', 'Basic Integrated Output System', 'Basic Intitial Output Service', 'Basic Internal Output System', 1, 0),
(769, 35, 'What is the full form of BHIM?', 'Bharat Hindustan Indian money', 'Bharat Hindustan immigration money', 'Bharat Interface for Money', 'Bharat Immigrant Money', 3, 0),
(770, 35, 'Full form of IP address is internet Provided address.		', 'True', 'False', 'Cant Say', 'None of these', 2, 0),
(771, 35, '		you want to create a greeting card in MS paint. While working in MS paint window you can use the interface displayed on the screen to insert various __________ to create an attractive greeting card.		', 'Smart art graphics', 'Clip arts', 'Charts', 'Shapes', 4, 0),
(772, 35, 'A good example of an operating system that makes your computer function and controls the working environment is __________.', 'MS Ofiice 2013', 'File Explorer', 'Windows 7', 'Task Manager', 3, 0),
(773, 35, 'In windows operating system, you can create a letter with the help of MS paint application .', 'True', 'False', 'Cant Say', 'Sometimes', 2, 0),
(774, 35, 'You are starting your computer that means you are ________________ your computer', 'Scanning', 'Restoring', 'Booting', 'Drafting', 3, 0),
(775, 35, '_______________ an icon runs the program or accesses the file associated with it.  ', 'Left-Clicking', 'Right-Clicking', 'Single-Clicking', 'Double-Clicking', 4, 0),
(776, 35, ' _______________ an icon accesses a menu offering options, action and properties.', 'Left-Clicking', 'Right-Clicking', 'Single-Clicking', 'Double-Clicking', 2, 0),
(777, 35, 'To put your PC in sleep mode?', 'Turn off the PC', 'Click the Start button', 'Click the Power option and choose Sleep', 'Option 2 Followed by Option 3', 4, 0),
(778, 35, 'To switch to another user without closing the programs of the current user.', 'Log off', 'Sleep', 'Lock', 'Switch User', 4, 0),
(779, 35, 'You want to open the notepad application to create a text document. How will you open?  ', 'Start>windows Accessories>Notepad ', 'Windows Accessories>Notepad>Start ', 'Start>Open Notepad  ', 'Notepad> windows Accessories ', 1, 0),
(780, 35, 'Use appropriate steps to open WordPad application ', 'Start>WordPad ', 'WordPad>Windows Accessories  ', 'Start> Windows Accessories>WordPad', 'Windows Accessories>start>WordPad', 3, 0),
(781, 35, 'The function keys on the keyboard of the computer……………………. ', 'Cancel selection or procdular ', 'are keyboard shortcuts of specific task ', 'inter numbers and automatic symbols ', 'control point ', 2, 0),
(782, 35, 'in windows operating system, start button is used to ……………………….? ', 'Run application  ', 'Device setting.  ', 'Turn off the system ', 'All of these', 4, 0),
(783, 35, 'In the most cases, the word “ software” in interchangeable with the word ………………? a. Procedure  ', 'Program  ', 'Computer ', 'Metadata ', 'Procedure ', 2, 0),
(784, 35, ' Use appropriate steps to select the hibernate mode of your laptop. ', 'Power button>hibernate> start ', 'Start>power button>hibernate ', 'Power button>hibernate ', 'Hibernate ', 2, 0),
(785, 35, 'That is the use of Ctrl+b  ', 'Bold ', 'Italic ', 'Underline  ', 'Select ', 1, 0),
(786, 35, 'Use appropriate steps to select the sleep mode of your laptop.  ', 'Power button>sleep  ', 'Start>power button>sleep ', 'Start>sleep  ', 'Start> Accessories>sleep ', 2, 0),
(787, 35, 'While typing text in wordpad application, you want ot move text aromatically form one line to the next line. To do so, you can use ………………. feature of wordpad.  ', 'Font ', 'Color ', 'WordWrap', 'Mail merge ', 3, 0),
(788, 35, '……………… is any data or instructions that are used by a computer. ', 'Digital ', 'Output ', 'Input ', 'Information', 3, 0),
(789, 35, 'What happens in a document when the ‘ Cut’ command is used. ', 'Only half the esteem is see.', 'Select the text or graphics are removed  ', 'The application text running ', 'None of these ', 2, 0),
(790, 35, 'The ………………provides a multimedia interface to the numerous resources available on the internet. ', 'Data ', 'Web ', 'USB ', 'Pruderies  ', 2, 0),
(791, 35, '…… is the transmission of electronic massages over the internet.  ', 'Virus  ', 'E-mail  ', 'Windows explore  ', 'Microsoft ', 2, 0),
(792, 35, 'Ctrl+O is used  ', 'Bold', 'Open document ', 'Underline ', 'Close document ', 2, 0),
(793, 35, 'What is full form of CPU? ', 'Central processing unit  ', 'Central process unit  ', 'Center processing unit ', 'Control processing unit ', 1, 0),
(794, 35, 'Commend button Ctrl+A is used?  ', 'Select all  ', 'Cut  ', 'Open documents  ', 'Bold ', 1, 0),
(795, 35, 'OS stands for____________.', 'Operating system', 'Open system', 'Operating software', 'All of these', 1, 0),
(796, 35, '		MS-DOS stands for__________.		', 'Microtek Disk Operating System', 'Microsoft Disk Operating System solution', 'Microsoft Disk Operating System', 'None', 3, 0),
(797, 35, 'The first screen appears on monitor are called_________', 'Title Bar', 'Icons', 'Desktop', 'Taskbar', 3, 0),
(798, 35, 'Which one is the smallest memory unit?', 'GB', 'KB', 'MB', 'TB', 2, 0),
(799, 35, 'Pick the odd one out?', 'Printer', 'Speaker', 'Scanner', 'Monitor', 3, 0),
(800, 35, 'Third generation computers were made of?', 'Vacuum Tubes', 'Transistor', 'IC', 'Microprocessor', 3, 0),
(801, 35, 'Which one is the application software?', 'MS Word', 'Windosws 10', 'Windows 7', 'Device Driver', 1, 0),
(802, 35, 'The basic architecture of computer was developed by', 'John von Neumann', 'Charles Babbage', 'Mark zuckerburg', 'Bill Gates', 1, 0),
(803, 35, 'In how many generations a computer can be classified?', '3', '5', '4', '2', 2, 0),
(804, 35, 'The fifth generation computer deals with the concept of', 'Artificial Intellingence', 'Games', 'Parallel Programming ', 'None of the above', 1, 0),
(805, 35, 'GUI stands for', 'Graph User Interface', 'Graphical Universe Interface', 'Graphical User Interface', 'None of the above', 3, 0),
(806, 35, 'An error is also known as ', 'bug', 'debug', 'icon', 'pointer', 1, 0),
(807, 36, 'A relational database consists of a collection of', 'Tables', 'Fields', 'Records', 'Keys', 1, 0),
(808, 36, 'A ________ in a table represents a relationship among a set of values.', 'Coulumn', 'Key', 'Row', 'Entry', 3, 0),
(809, 36, 'The term _______ is used to refer to a row.', 'Attribute', 'Tuple', 'Field', 'Instance', 2, 0),
(810, 36, 'The term attribute refers to a ___________ of a table.', 'Record', 'Column', 'Tuple', 'Key', 2, 0),
(811, 36, 'For each attribute of a relation, there is a set of permitted values, called the ________ of that attribute.', 'Domain', 'Relation', 'Set', 'Schema', 1, 0),
(812, 36, 'Database __________ which is the logical design of the database, and the database _______ which is a snapshot of the data in the database at a given instant in time.', 'Instance, Schema', 'Relation, Schema', 'Relation, Domain', 'Schema, Instance', 4, 0),
(813, 36, 'Course(course_id,sec_id,semester)\r\nHere the course_id,sec_id and semester are __________ and course is a _________', 'Relations, Attribute', 'Attributes, Relation', 'Tuple, Relation', 'Tuple, Attributes', 2, 0),
(814, 36, 'The tuples of the relations can be of ________ order.', 'any', 'same', 'sorted', 'constant', 1, 0),
(815, 36, 'Which one of the following is a set of one or more attributes taken collectively to uniquely identify a record?', 'Candidate key', 'Sub key', 'Super key', 'Foreign key', 3, 0),
(816, 36, 'Consider attributes ID, CITY and NAME. Which one of this can be considered as a super key?', 'NAME', 'ID', 'CITY', 'CITY,ID', 2, 0),
(817, 36, 'A _____ is a property of the entire relation, rather than of the individual tuples in which each tuple is unique.', 'Rows', 'Keys', 'Attributes', 'Fields', 2, 0),
(818, 36, 'Which one of the following attribute can be taken as a primary key?', 'Name', 'Street', 'Id', 'Department', 3, 0),
(819, 36, 'Which one of the following cannot be taken as a primary key?', 'id', 'register number', 'Dept_id', 'Street', 4, 0),
(820, 36, 'An attribute in a relation is a foreign key if the _______ key from one relation is used as an attribute in that relation.', 'Candidate', 'Primary', 'Super', 'Sub', 2, 0),
(821, 36, 'A _________ integrity constraint requires that the values appearing in specified attributes of any tuple in the referencing relation also appear in specified attributes of at least one tuple in the referenced relation.', 'Referential', 'Referencing', 'Specific', 'Primary', 1, 0),
(822, 36, 'Using which language can a user request information from a database?', 'Query', 'Relational', 'Structural', 'Compiler', 1, 0),
(823, 36, 'Student(ID, name, dept_name, total_credit)\r\nIn this query which attributes form the primary key?', 'name', 'dept_name', 'total_credit', 'ID', 4, 0),
(824, 36, 'The_____ operation allows the combining of two relations by merging pairs of tuples, one from each relation, into a single tuple.', 'Select', 'Join', 'Union', 'Intersection', 2, 0),
(825, 36, 'The result which operation contains all pairs of tuples from the two relations, regardless of whether their attribute values match.', 'Join', 'Cartesian product', 'Intersection', 'Set difference', 2, 0),
(826, 36, 'The most commonly used operation in relational algebra for projecting a set of tuple from a relation is', 'Join', 'Projection', 'Select', 'Union', 3, 0),
(827, 36, 'The _______ operator takes the results of two queries and returns only rows that appear in both result sets.', 'Union', 'Intersect', 'Difference', 'Projection', 2, 0),
(828, 36, 'The _________ provides a set of operations that take one or more relations as input and return a relation as an output.', 'Schematic representation', 'Relational algebra', 'Scheme diagram', 'Relation flow', 2, 0),
(829, 36, 'Which one of the following is used to define the structure of the relation, deleting relations and relating schemas?', 'DML(Data Manipulation Langauge)', 'DDL(Data Definition Langauge)', 'Query', 'Relational Schema', 2, 0),
(830, 36, 'Which one of the following provides the ability to query information from the database and to insert tuples into, delete tuples from, and modify tuples in the database?', 'DML(Data Manipulation Langauge)', 'DDL(Data Definition Langauge)', 'Query', 'Relational Schema', 1, 0),
(831, 36, 'CREATE TABLE employee (name VARCHAR, id INTEGER)\r\nWhat type of statement is this?', 'DML', 'DDL', 'View', 'Integrity Constraint', 2, 0),
(832, 36, 'SELECT * FROM employee\r\nWhat type of statement is this?', 'DML', ' DDL', ' View', 'Integrity constraint', 1, 0),
(833, 36, 'The basic data type char(n) is a _____ length character string and varchar(n) is _____ length character.', 'Fixed, equal', ' Equal, variable', 'Fixed, variable', 'Variable, equal', 3, 0),
(834, 36, 'To remove a relation from an SQL database, we use the ______ command.', 'Delete', 'Purge', 'Remove', 'Drop table', 4, 0),
(835, 36, 'Updates that violate __________ are disallowed.', 'Integrity constraints', 'Transaction control', 'Authorization', 'DDL constraints', 1, 0),
(836, 36, 'The intersection operator is used to get the _____ tuples.', 'Different', 'Common', 'All', 'Repeating', 2, 0),
(837, 36, 'The union operation automatically __________ unlike the select clause.', 'Adds tuples', 'Eliminates unique tuples', 'Adds common tuples', ' Eliminates duplicate', 4, 0),
(838, 36, ' A Delete command operates on ______ relation.', 'One', 'Two', 'Several', 'Null', 1, 0),
(839, 36, 'A _________ consists of a sequence of query and/or update statements.', 'Transaction', 'Commit', 'Rollback', 'Flashback', 1, 0),
(840, 36, 'Which of the following makes the transaction permanent in the database?', 'View', 'Commit', 'Rollback', 'Flashback', 2, 0),
(841, 36, '		In order to undo the work of transaction after last commit which one should be used?		', 'View', 'Commit', 'Rollback', 'None of the above', 3, 0),
(842, 36, 'A transaction completes its execution is said to be', 'Committed', 'Aborted', 'Rolled back', 'Failed', 1, 0),
(843, 36, 'To include integrity constraint in an existing relation use :', 'Create table', 'Modify table', 'Alter table', 'Drop table', 3, 0),
(844, 36, 'Foreign key is the one in which the ________ of one relation is referenced in another relation.', 'Foreign key', 'Primary key', 'References', 'Check constraint', 2, 0),
(845, 36, 'The database administrator who authorizes all the new users, modifies the database and takes grants privilege is', 'Super user', 'Administrator', 'Operator of operating system', 'All of the mentioned', 4, 0),
(846, 36, 'A __________ is a special kind of a store procedure that executes in response to certain action on the table like insertion, deletion or updation of data.', 'Procedures', 'Triggers', 'Functions', 'None of the mentioned', 2, 0),
(847, 36, 'An ________ is a set of entities of the same type that share the same properties, or attributes.', 'Entity set', 'Attribute set', 'Relation set', 'Entity model', 1, 0),
(848, 36, 'Entity is a _________', 'Object of relation', 'Present working model', 'Thing in real world', 'Model of relation', 3, 0),
(849, 36, 'The attribute AGE is calculated from DATE_OF_BIRTH. The attribute AGE is', 'Single valued', 'Multi valued', 'Composite', 'Derived', 4, 0),
(850, 36, 'Which of the following can be a multivalued attribute?', 'Phone_number', 'Name', 'Date_of_birth', 'All of the mentioned', 1, 0),
(851, 36, 'An entity in A is associated with at most one entity in B, and an entity in B is associated with at most one entity in A.This is called as', 'One-to-many', 'One-to-one', 'Many-to-many', 'Many-to-one', 2, 0),
(852, 36, 'An entity in A is associated with at most one entity in B. An entity in B, however, can be associated with any number (zero or more) of entities in A.', 'One-to-many', 'One-to-one', 'Many-to-many', 'Many-to-one', 4, 0),
(853, 36, '______ is a special type of integrity constraint that relates two relations & maintains consistency across the relations.', 'Entity Integrity Constraints', 'Referential Integrity Constraints', 'Domain Integrity Constraints', 'Domain Constraints', 2, 0),
(854, 36, 'Which one of the following uniquely identifies the elements in the relation?', 'Secondary Key', 'Primary key', 'Foreign key', 'Composite key', 2, 0),
(855, 36, 'The entity relationship set is represented in E-R diagram as', 'Double diamonds', 'Undivided rectangles', 'Dashed lines', 'Diamond', 4, 0),
(856, 36, 'An entity set that does not have sufficient attributes to form a primary key is termed a __________', 'Strong entity set', 'Variant set', 'Weak entity set', ' Variable set', 3, 0),
(857, 37, 'Communication is a non stop______________.', 'paper  ', 'process ', 'programme', 'plan', 2, 0),
(858, 37, 'Communication is a part of ________ skills.', 'soft', 'hard', 'rough', 'short', 1, 0),
(859, 37, 'The _______________ is the person who transmits the message.', 'reciever', 'Driver', 'Sender', 'Channel', 3, 0),
(860, 37, '_____________ is the person who notices and decodes and attaches some meaning to a message. ', 'Reciever', 'Sender', 'Channel', 'Medium', 1, 0),
(861, 37, 'The response to a sender’s message is called _________', 'Return back', 'Feedback', 'Foodback', 'None of the above', 2, 0),
(862, 37, '__________ context refers to the relationship between the sender and the receiver   ', 'Social', 'Physical', 'Economical', 'None of the above', 1, 0),
(863, 37, '___________ context refers to the similarity of backgrounds between the sender and the receiver.', 'physical ', 'social', 'chronological', 'cultural', 4, 0),
(864, 37, '_________ refers to all these factors that disrupt the communication.', 'none', 'noise', 'nowhere', 'nobody', 2, 0),
(865, 37, 'Environmental barriers are the same as ______ noise.', ' physiological     ', 'physical', 'social', 'none of the above', 2, 0),
(866, 37, 'Our dress code is an example of _____________ communication.', 'verbal', 'non verbal', 'written', 'spoken', 2, 0),
(867, 37, 'Communication strengthens _______ & ______________ relationship is an organization.', 'employer-father', 'employer-employer', 'mother-employer', 'none of the above', 2, 0),
(868, 37, '_______________ communication includes tone of voice body language, facial expressions etc.', 'non verbal', 'verbal', 'letter', 'notice', 1, 0),
(869, 37, 'When there is similarity   of background between the sender and the receives such as age, language nationality, religion, gender then this is called _____________ context.   ', 'social', 'cultural', 'physical', 'dynamic', 2, 0),
(870, 37, 'Letter, e-mail telephone are examples of __________', 'message', 'feedback', 'channel', 'encoding', 3, 0),
(871, 37, 'Understanding __________different parts of speech forms the base of leaning grammar', 'Five', 'Eight', 'Six', 'Seven', 2, 0),
(872, 37, 'Once the message is encoded in a desired format it is transferred through a medium called ______', 'Channel', 'Medium', 'Media', 'Way', 1, 0),
(873, 37, 'The nouns which cannot be felt, seen or heard are called __________', 'Common', 'Proper', 'Abstract', 'Collective', 3, 0),
(874, 37, 'The information which is transferred to the receiver has to be interpreted this process is called _____', 'Encoding', 'Decoding', 'Opening', 'Closing', 2, 0),
(875, 37, 'All communication events have a _________.', 'Resource', 'Source', 'Start', 'End', 2, 0),
(876, 37, 'The message may be misinterpreted because of _____', 'Barriers', 'Distortions', 'Distraction', 'Noise', 1, 0),
(877, 37, 'The environment in which the transmitter or receiver are should be ____', 'Complex', 'Competent', 'Complete', 'Compatible', 4, 0),
(878, 37, 'In oral communication the speaker can observe the listener’s _______ to what is being elated. ', 'Reaction', 'Response', 'Rejection', 'Reset', 1, 0),
(879, 37, 'White talking to friends you do not pay attention to the skills of _____ Communication.', 'Written', 'Oral', 'Audio', 'Visual', 2, 0),
(880, 37, 'In oral presentation outside your organisation you must first give the audience a  ______ of your organization.', 'Flashback', 'Background', 'Front View', 'Foreword', 2, 0),
(881, 37, '‘A’ and ‘an’ are the ___________--articles  ', 'Definte', 'Indefinite', 'Particular', 'Specified', 2, 0),
(882, 37, 'Any word that adds more meaning to the noun is called an __________', 'Adverb', 'Verb', 'Adjective', 'Noun', 3, 0),
(883, 37, 'A___________is a word which connects words phrases , clauses or sentences', 'Preposition', 'Conjunction', 'Interjection', 'Verb', 2, 0),
(884, 37, 'It is important to consider proper _____ room where you are giving your presentation.', 'Darkness', 'Lighting', 'Lightening', 'Ventilation', 2, 0),
(885, 37, 'The___________is the action or description that occur in the sentence   ', 'Predicate', 'Subject', 'Object', 'Complement', 1, 0),
(886, 37, 'The _____________speech is also called as reported speech', 'Direct', 'Indirect', 'Indefinite', 'Definite', 2, 0),
(887, 37, 'Hearing is only an important component of ____', 'Hearing', 'Listening', 'Talking', 'Speaking', 2, 0),
(888, 37, '_____ Customer not only returns to your organization for a second time but also tells about his satisfaction others.', 'Unsatisfied', 'Impatient', 'Satisfied', 'Patient', 3, 0),
(889, 37, '__________refers to the time of action', 'Tense', 'Transitive', 'Intransitive', 'Main Verb', 1, 0),
(890, 37, 'Reading comprehension means understanding a ____ text. ', 'Oral', 'Written', 'Usual', 'Audio', 2, 0),
(891, 37, 'Reading is a __________________ process.', 'Encoding', 'Listening', 'Decoding', 'Talking', 3, 0),
(892, 37, 'A group of related words that contain both a subject and predicate and that functions as part of a sentence is', 'Sentence', 'Phrase', 'Clause', 'Compound', 3, 0),
(893, 37, 'When we read shorter texts like research papers for specific detailed information we read slowly & with a lot of concentration ,this is called ____ reading. ', 'Intensive', 'Extensive', 'Detailed', 'Short', 1, 0),
(894, 37, '______ Is nothing but checking whether we have followed the earlier stages promptly and efficiently', 'Review', 'Reading', 'Recalling', 'All', 1, 0),
(895, 37, '____ Means linking words and phrases together so that the whole text is clear and readable.', 'Cohesion', 'Joining', 'Conjunctions', 'Junctions', 1, 0),
(896, 37, 'In the structure of the business letter what comes first.', 'Reference', 'Date', 'Salutation', 'Header', 4, 0),
(897, 37, 'In the writing of an apology letter, concentrate on ', 'Problem', 'Compensation', 'Rectification of problem ', 'Words', 3, 0),
(898, 37, 'is the vital part of the letter which to as good as wishing the person.', 'Salutation', 'Enclosure', 'Subject', 'Reference', 1, 0),
(899, 37, 'People cannot interact with each other without ____', 'Communication', 'Transport', 'Voice', 'Loudspeaker', 1, 0),
(900, 37, 'The language of the report should be _____', 'Formality', 'Formal', 'Casual', 'Loose', 2, 0),
(901, 37, 'A circular or notice may be issued by only _____ designated for the purpose ', 'Peon', 'Clerk', 'Typist', 'Officer', 4, 0),
(902, 37, 'A noun may be defined as the name of a _____________,___________or __________', 'Building, city, town', 'Person, place or thing', 'Fruit, city, cat ', 'Animal, city, fruit', 2, 0);
INSERT INTO `mst_question` (`que_id`, `test_id`, `que_desc`, `ans1`, `ans2`, `ans3`, `ans4`, `true_ans`, `temp`) VALUES
(903, 37, 'Evaluative listening is also called _____', 'Therapeutic', 'Evaluative ', ' Dialogic ', 'Impathetic', 1, 0),
(904, 37, 'In _____ Listening the difference between the sounds is identified', ' Discriminative', 'Comprehension ', 'Dialogic', 'Empathetic', 1, 0),
(905, 37, 'In oral communication there is a possibility of immediate _________', 'Reaction', 'Response', 'Reflection', 'Reset', 2, 0),
(906, 37, 'Proper nouns always begin with ________letters', ' Running ', 'Capital', 'Small', 'None of the above', 2, 0),
(907, 38, ' What is the minimum number of wires needed to send data over it serial communication link layer?', '1', '2', '3', '4', 2, 0),
(908, 38, 'Which data communication method is used to send data over a serial communication link?', 'simplex', 'half duplex', 'full duplex', 'all off the above', 3, 0),
(909, 38, 'Buffering is….', 'the process of temporarily storing the data to allow for small variation in', 'a method to reduce cross-talks', 'storage of data within the transmitting medium until the receiver is ready ', 'a method to reduce the routing overhead', 1, 0),
(910, 38, 'What is the main difference between synchronous and asynchronous transmission?', 'band width required is different.', 'pulse height is different.', 'clocking is derived from the data in synchronous transmission.', 'clocking is mixed with data in asynchronous transmission.', 3, 0),
(911, 38, 'Which of the following items is not used in Local Area Networks(LANs)?', 'Computer Modem', 'Cable', 'Modem', 'Interface card', 3, 0),
(912, 38, 'Which of the following represents the fastest data transmission speed?', 'gbps', 'mbps', 'bps', 'bandwidth', 1, 0),
(913, 38, 'A device that connects to a network with our the use of cables is said to be', 'Open Source', 'Cabled', 'Distributed', 'Wireless', 4, 0),
(914, 38, 'WI–FI uses', 'Phase Lines', 'Radio Waves', 'Optic Fibre', 'Sound Waves', 2, 0),
(915, 38, 'Network components are connected to the same cable in the _______ topology.', 'Mesh', 'Bus', 'Star', 'Ring', 2, 0),
(916, 38, 'How many bits are there in the Ethernet address?', '16 bits', '32 bits', '48 bits', '64 bits', 3, 0),
(917, 38, 'Geometric arrangement of devices on the network is called', 'Protocols', 'Topology', 'Trailer', 'LAN', 2, 0),
(918, 38, 'Which type of network would use phone lines?', 'Wireless', 'WAN', 'LAN', 'WWAN', 2, 0),
(919, 38, 'Which of the following is not a network device?', 'Router', 'Modem', 'Bridge', 'Switch', 2, 0),
(920, 38, 'Servers are other computer which provide resources to other computer connected by', 'Super Computer', 'Mainframe', 'Network', 'Client', 3, 0),
(921, 38, 'Which of the following refers to a small, single-site network?', 'RAM', 'DSL', 'USB', 'PAN', 4, 0),
(922, 38, 'Ethernet uses', 'Mesh Topology', 'Ring Topology', 'Bus Topology', 'All of these', 3, 0),
(923, 38, 'A device operating at the physical layer is called a', 'Bridge', 'Router', 'Repeater', 'All of these', 3, 0),
(924, 38, 'Encryption and decryption are the function of', 'Session Layer', 'Presentation Layer', 'Transport Layer', 'Application Layer', 2, 0),
(925, 38, '______ is the most important/powerful computer in a typical network.', 'Desktop', 'Network Client', 'Network Server', 'Network Station', 3, 0),
(926, 38, 'In a ring topology, the computer in possession of the ______ can transmit data.', 'Data', 'Packet', 'Access Method', 'Token', 4, 0),
(927, 38, 'How many layers are in the TCP/IP model?', '4 layers', '5 layers', '7 layers', '8 layers', 1, 0),
(928, 38, 'Which of the following topologies is not of broadcast type', 'Bus', 'Ring', 'Star', 'All of the above', 1, 0),
(929, 38, 'An alternate name for the completely interconnected network topology is', 'Mesh', 'Star', 'Tree', 'Ring', 1, 0),
(930, 38, 'What is the use of bridge in network?', 'To connect LAN’s', 'To separate LAN’s', 'To control network speed', 'None of these', 1, 0),
(931, 38, 'The first network that has planted the seeds of internet was', 'NSF Net', 'V net', 'ARPANET', 'I net', 3, 0),
(932, 38, 'To send data/message to and from computer the network software puts the message information in a', 'Packet', 'NIC', 'Trailer', 'Header', 1, 0),
(933, 38, '_______ allows LAN users to share computer programs and data.', 'Print Server', 'Communication Server', 'File Server', 'None of these', 3, 0),
(934, 38, 'In OSI network architecture, the routing is performed by', 'Data link layer', 'Network layer', 'Session Layer', 'Transport Layer', 2, 0),
(935, 38, 'Hub is associated with______ network.', 'Bus ', 'Star', 'Ring', 'Mesh', 2, 0),
(936, 38, 'A combination of hardware and software that allows communication and electronic transfer of information between computer is a', 'Network', 'Server', 'Peripheral', 'Back up system', 1, 0),
(937, 38, '	LAN can use ________ architecture.', 'Client and Server', 'Peer to peer', 'Both a and b', 'Neither a nor b', 3, 0),
(938, 38, '	P2P is a _______ application architecture.', '1-tier', 'Network Client', 'Client/server', 'None of these', 3, 0),
(939, 38, '	________ is the transmission of data between two or more computer over communication links.', 'Data communication', 'Data Networking', 'Networking', 'Communication', 1, 0),
(940, 38, 'Communication channel having ______ types.', '1', '2', '3', '4', 3, 0),
(941, 38, 'Which is not a application layer protocol?', 'HTTP', 'SMTP', 'FTP', 'TCP', 4, 0),
(942, 38, 'The packet of information at the application layer is called __________', 'Packet ', 'Message', 'Segment', 'Frame', 2, 0),
(943, 38, 'Which one of the following is an architecture paradigms?', 'peer to peer', 'client server', 'HTTP', 'Both a and b', 4, 0),
(944, 38, 'Application developer has permission to decide the following on transport layer side', 'Transport layer protocol', 'Maximum buffer size', 'Both Transport layer protocol and Maximum buffer size', 'None of the mentioned', 3, 0),
(945, 38, 'Application layer offers _______ service.', 'End to end', 'Process to process', 'Both End to end and Process to process', 'None of the mentioned', 1, 0),
(946, 38, 'Pick the odd one out.', 'File transfer', 'File download', 'Email', 'Interactive Games', 4, 0),
(947, 38, 'To deliver a message to the correct application program running on a host, the _______ address must be consulted.', 'IP', 'MAC', 'PORT', 'None of the above', 3, 0),
(948, 38, 'Electronic mail uses which Application layer protocol?', 'SMTP', 'HTTP', 'FTP', 'SIP', 1, 0),
(949, 38, 'A local telephone network is an example of a _______ network.', 'Packet Switching', 'Circuit Switching', 'Bit Switched', 'Line Switched', 2, 0),
(950, 38, ' Most packet switches use this principle ____________', 'Stop and wait', 'Store and Forward', 'Store and Wait', 'Stop and forward', 2, 0),
(951, 38, 'The entire hostname has a maximum of ___________', '255 characters', '127 characters', '64 characters', '32 characters', 1, 0),
(952, 38, 'A DNS client is called _________', 'DNS updater', 'DNS resolver', 'DNS handler', 'none of the above', 2, 0),
(953, 38, ' DNS database contains _______', 'name server records', 'hostname-to-address records', 'hostname aliases', 'all of the mentioned', 4, 0),
(954, 38, 'Wildcard domain names start with label _______', '@', '*', '&', '#', 2, 0),
(955, 38, 'The domain name system is maintained by _______', 'Distributed database system', 'a single server', 'a single computer', 'none of the above', 1, 0),
(956, 38, 'Which one of the following is not true?', 'multiple hostnames may correspond to a single IP address', 'a single hostname may correspond to many IP addresses', ' a single hostname may correspond to a single IP address', ' none of the mentioned', 3, 0),
(957, 39, 'The basic attributes of a straight line segment are', 'Type', 'Width', 'Color', 'All of these', 4, 0),
(958, 39, 'A dashed line could be displayed by generating_________.', 'inter dash spacing', 'very short dashes', 'Both a and b', 'A or B', 1, 0),
(959, 39, 'A dotted line can be displayed by generating', 'Very short dashes with spacing equal to and greater than dash size', 'Very long dashes with spacing equal to or greater than dash size', 'Very short dashes with spacing equal to and greater than dash size', 'Dots', 3, 0),
(960, 39, 'Which of the following is not a line-type?', 'Dashed Line', 'Dark Line', 'Dotted Line', 'None of the above', 2, 0),
(961, 39, 'The algorithm which displays line-type attributes by plotting pixel spans is', 'Raster line algorithm', 'Raster scan algorithm', 'Random line algorithm', 'Random scan algorithm', 1, 0),
(962, 39, 'A heavy line on a video monitor could be displayed as', 'Adjacent perpendicular lines', 'Adjacent parallel lines', 'Both a and b', 'Neither a nor b', 2, 0),
(963, 39, 'To set the line-width attribute the following command is used.', 'SETLINEWIDTHSCALEFACTOR (lw)', 'Setlinewidth()', 'Setlinewidthscalefacto (lw)', 'setLineWidthScaleFactor (lw)', 4, 0),
(964, 39, 'The parameter to “setLineWidthScaleFactor (lw) “function specifies?', 'standard width', 'Relative width of the line', 'Thickness of the line', 'All of the mentioned', 2, 0),
(965, 39, 'We can adjust the shape of the line ends to give them a better appearance by using', 'Line spacing', 'More dots', 'Line caps', 'Round cap', 3, 0),
(966, 39, 'Thick line drawn with', 'Butt caps', 'Round caps', ' Projecting square caps', 'All of the mentioned', 4, 0),
(967, 39, 'The Cartesian slope-intercept equation for a straight line is', 'y = m.x + b', 'y = b.x + m', 'y = x.x + m', 'y = b + m.m', 1, 0),
(968, 39, 'On raster system, lines are plotted with', 'Lines', 'Dots', 'Pixels', 'None of the above', 3, 0),
(969, 39, 'Expansion of line DDA algorithm is', 'Digital difference analyzer', 'Direct differential analyzer', 'Digital differential analyzer', 'Data differential analyzer', 3, 0),
(970, 39, 'Which algorithm is a faster method for calculating pixel positions?', 'Bresenham’s line algorithm', 'Parallel line algorithm', 'Mid-point algorithm', 'DDA line algorithm', 4, 0),
(971, 39, 'An accurate and efficient raster line-generating algorithm is', 'DDA algorithm', 'Mid-point algorithm', 'Parallel line algorithm', 'Bresenham’s line algorithm', 4, 0),
(972, 39, 'In Bresenham’s line algorithm, if the distances d1 < d2 then decision parameter Pk is______', 'Positive ', 'Equal', 'Negative', 'Option a and c', 3, 0),
(973, 39, 'Which is the best line algorithm to balance the processing load among the processers?', 'Parallel line algorithm', 'DDA line algorithm', 'Bresenham’s line algorithm', 'Position Bresenham’s line algorithm', 1, 0),
(974, 39, '_______ is defined as set of points such that the sum of the distances is same for all points.', 'Ellipses', 'Lines', 'Circles', 'None of the above', 1, 0),
(975, 39, 'If we want to recolor an area that is not defined within a single color boundary is known as', 'Boundary-fill algorithm', ' Parallel curve algorithm', 'Flood-fill algorithm', 'None of the above', 3, 0),
(976, 39, 'The number of pixels stored in the frame buffer of a graphics system is known as', 'Resolution', 'Depth', 'Width', 'None of the above', 1, 0),
(977, 39, 'In graphical system, the array of pixels in the picture are stored in', 'Memory', 'Frame buffer', 'Processor', 'All of the mentioned', 1, 0),
(978, 39, 'Heat supplied to the cathode by directing a current through a coil of wire is called', 'Electron gun', 'Electron beam', 'Filament', 'Anode and cathode', 3, 0),
(979, 39, 'The maximum number of points that can be displayed without overlap on a CRT is referred as', 'Picture', 'Resolution', ' Persistence', 'Neither b nor c', 2, 0),
(980, 39, '________ stores the picture information as a charge distribution behind the phosphor-coated screen.', 'Cathode ray tube', 'Direct-view storage tube', 'Flat panel displays', '3D viewing device', 2, 0),
(981, 39, 'The devices which converts the electrical energy into light is called', 'Liquid-crystal displays', 'Non-emitters', 'Plasma panels', 'Emitters', 4, 0),
(982, 39, 'In which system, the Shadow mask methods are commonly used', 'Raster-scan system', 'Random-scan system', 'Only b', 'Both a and b', 1, 0),
(983, 39, 'The process of digitizing a given picture definition into a set of pixel-intensity for storage in the frame buffer is called', 'Rasterization', 'Encoding', 'Scan conversion', 'True color system', 3, 0),
(984, 39, 'Which display devices allows us to walk around an object and view it from different sides.', 'Direct view storage tubes', 'Three-dimensional devices', 'Flat panel display devices', 'Plasma panel display devices', 2, 0),
(985, 39, 'In LCD, the refresh rate of the screen is', '60 frames/sec', '80 frames/sec', '30 frames/sec', '100 frames/sec', 1, 0),
(986, 39, 'Random-scan system mainly designed for', 'Realistic shaded screen', 'Fog effect', 'Line-drawing applications', 'Only b', 3, 0),
(987, 39, 'The primary output device in a graphics system is_________', 'Scanner', 'Video monitor', 'Neither a nor b', 'Printer', 2, 0),
(988, 39, 'On a black and white system with one bit per pixel, the frame buffer is commonly called as', 'Pix map', 'Multi map', 'Bitmap', 'All of the mentioned', 3, 0),
(989, 39, 'Aspect ratio means', ' Number of pixels', 'Ratio of vertical points to horizontal points', 'Ratio of horizontal points to vertical points', 'Both b and c', 4, 0),
(990, 39, 'We translate a two-dimensional point by adding', ' Translation distances', 'Translation difference', ' X and Y', 'Only a', 4, 0),
(991, 39, 'The translation distances (dx, dy) is called as', 'Translation vector', 'Shift vector', 'Both a and b', 'Neither a nor b', 3, 0),
(992, 39, '_________ is a rigid body transformation that moves objects without deformation.', 'Rotation', 'Scaling', 'Translation', 'All of the mentioned', 3, 0),
(993, 39, 'Polygons are translated by adding __________ to the coordinate position of each vertex and the current attribute setting.', 'Straight line path', ' Translation vector', 'Differences', 'None of the above', 2, 0),
(994, 39, 'The basic geometric transformations are', 'Translation', 'Rotation', 'Scaling', 'All of the mentioned', 4, 0),
(995, 39, 'What is the primary use of clipping in computer graphics?', 'adding graphics', 'removing objects and lines', 'zooming', 'copying', 2, 0),
(996, 39, 'How many methods of text clipping are there?', '5', '4', '3', '2', 3, 0),
(997, 39, 'A bitmap is collection of ___________________ that describes an image.', 'bits', 'colors', 'algorithms', 'pixels', 4, 0),
(998, 39, 'The color options are numerically coded with the following values.', 'Ranging from 0 through the positive integer', 'Ranging from 0 to 1', 'Ranging from 0 to -0', 'Only c', 1, 0),
(999, 39, 'In color raster system, the number of color choices available depends on', 'colors in frame buffer', 'Amount of storage provided per pixel in frame buffer', 'RGB color', 'Neither a nor b', 2, 0),
(1000, 39, 'The color code “000” is for', 'white', 'black', 'blue', 'green', 2, 0),
(1001, 39, ' Color information can be stored in', 'Main memory', 'Secondary memory', 'Graphics card', 'Frame Buffer', 4, 0),
(1002, 39, 'The transformation that is used to alter the size of an object is ____', 'Scaling', 'Rotation', 'Transformation', 'Reflection', 1, 0),
(1003, 39, 'We control the location of a scaled object by choosing the position is known as', 'Pivot point', 'Fixed point', 'Differential scaling', 'Uniform scaling', 2, 0),
(1004, 39, 'A view is selected by specifying a sub-area of the __________ picture area.', 'half', 'total', 'full', 'quarter', 2, 0),
(1005, 39, 'The process of elimination of parts of a scene outside a window or a viewport is called _____________.', 'cutting', 'plucking', ' clipping', 'editing', 3, 0),
(1006, 39, 'Which of the following is NOT a type of clipping algorithm used on the raster system?', 'line clipping', 'point clipping', 'area clipping', 'solid clipping', 4, 0);

-- --------------------------------------------------------

--
-- Table structure for table `mst_result`
--

CREATE TABLE `mst_result` (
  `login` varchar(20) DEFAULT NULL,
  `test_id` int(5) DEFAULT NULL,
  `test_date` date DEFAULT NULL,
  `score` int(3) DEFAULT NULL,
  `temp` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `mst_subject`
--

CREATE TABLE `mst_subject` (
  `sub_id` int(11) NOT NULL,
  `sub_name` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `mst_subject`
--

INSERT INTO `mst_subject` (`sub_id`, `sub_name`) VALUES
(10, 'Information Technology'),
(13, 'Information Technology and Language Skill'),
(16, 'OPEN QUIZ APR 2020'),
(17, 'Programming in C'),
(18, 'Operating System'),
(19, 'Programming in C++'),
(20, 'Programming in Java'),
(21, 'Computer System Architecture'),
(22, 'Software Engineering'),
(23, 'Compiler Design'),
(24, 'Fundamental Of IT'),
(25, 'DBMS'),
(26, 'Communication and Soft Skill'),
(27, 'Data Communication and Computer Network'),
(28, 'Computer Graphics');

-- --------------------------------------------------------

--
-- Table structure for table `mst_test`
--

CREATE TABLE `mst_test` (
  `test_id` int(5) NOT NULL,
  `sub_id` int(5) DEFAULT NULL,
  `test_name` varchar(30) DEFAULT NULL,
  `total_que` varchar(15) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `mst_test`
--

INSERT INTO `mst_test` (`test_id`, `sub_id`, `test_name`, `total_que`) VALUES
(14, 10, 'Monthly Test - Mar 2020', '10'),
(17, 13, 'Quiz - Mar 2020', '30'),
(20, 13, 'Quiz Contest - 01st April 2020', '30'),
(21, 13, 'Quiz Contest - 01st April S2', '30'),
(22, 16, 'Quiz Contest - 10th Apr S1', '50'),
(23, 16, 'Quiz Contest - 10th Apr S2', '50'),
(24, 16, 'Quiz Contest - 28th Apr', '50'),
(25, 17, 'Assessment - 10th May', '50'),
(26, 17, 'Quiz contest - 30th Apr S2', '50'),
(27, 17, 'Quiz contest - 30th Apr S3', '50'),
(28, 17, 'Assessment - 17th May (C)', '40'),
(29, 18, 'Assessment - 17th May(OS)', '50'),
(30, 19, 'Assessment - 17th May(C++)', '50'),
(31, 20, 'Assessment - 24th May(Java)', '50'),
(32, 21, 'Assessment - 24th May(CSA)', '50'),
(33, 22, 'Assessment - 31st May(SE)', '50'),
(34, 23, 'Assessment -24th May(Compiler)', '50'),
(35, 24, 'Assessment - 31st May(IT)', '50'),
(36, 25, 'Assessment - 31st May(DBMS)', '50'),
(37, 26, 'Assessment - 21st June(CS)', '50'),
(38, 27, 'Assessment - 21st June(CN)', '50'),
(39, 28, 'Assessment - 21st June(CG)', '50');

-- --------------------------------------------------------

--
-- Table structure for table `mst_user`
--

CREATE TABLE `mst_user` (
  `user_id` int(11) NOT NULL,
  `login` varchar(20) DEFAULT NULL,
  `pass` varchar(20) DEFAULT NULL,
  `username` varchar(30) DEFAULT NULL,
  `phone` varchar(11) DEFAULT NULL,
  `phone2` varchar(10) NOT NULL,
  `email` varchar(30) NOT NULL,
  `qlf` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `mst_user`
--

INSERT INTO `mst_user` (`user_id`, `login`, `pass`, `username`, `phone`, `phone2`, `email`, `qlf`) VALUES
(34, 'demo1', 'demo1', 'C1', '', '', '', '10'),
(35, 'demo2', 'demo2', 'C2', '', '', '', '10');

-- --------------------------------------------------------

--
-- Table structure for table `mst_useranswer`
--

CREATE TABLE `mst_useranswer` (
  `sess_id` varchar(80) DEFAULT NULL,
  `test_id` int(11) DEFAULT NULL,
  `que_des` varchar(500) DEFAULT NULL,
  `ans1` varchar(50) DEFAULT NULL,
  `ans2` varchar(50) DEFAULT NULL,
  `ans3` varchar(50) DEFAULT NULL,
  `ans4` varchar(50) DEFAULT NULL,
  `true_ans` int(11) DEFAULT NULL,
  `your_ans` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `setup`
--

CREATE TABLE `setup` (
  `sid` int(11) NOT NULL,
  `tid` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `setup`
--

INSERT INTO `setup` (`sid`, `tid`) VALUES
(17, 28);

-- --------------------------------------------------------

--
-- Table structure for table `timer`
--

CREATE TABLE `timer` (
  `loginid` varchar(50) NOT NULL,
  `logouttime` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `mst_admin`
--
ALTER TABLE `mst_admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mst_question`
--
ALTER TABLE `mst_question`
  ADD PRIMARY KEY (`que_id`);

--
-- Indexes for table `mst_result`
--
ALTER TABLE `mst_result`
  ADD PRIMARY KEY (`temp`),
  ADD UNIQUE KEY `login` (`login`);

--
-- Indexes for table `mst_subject`
--
ALTER TABLE `mst_subject`
  ADD PRIMARY KEY (`sub_id`);

--
-- Indexes for table `mst_test`
--
ALTER TABLE `mst_test`
  ADD PRIMARY KEY (`test_id`);

--
-- Indexes for table `mst_user`
--
ALTER TABLE `mst_user`
  ADD PRIMARY KEY (`user_id`);

--
-- Indexes for table `timer`
--
ALTER TABLE `timer`
  ADD UNIQUE KEY `loginid` (`loginid`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `mst_admin`
--
ALTER TABLE `mst_admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `mst_question`
--
ALTER TABLE `mst_question`
  MODIFY `que_id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1007;

--
-- AUTO_INCREMENT for table `mst_result`
--
ALTER TABLE `mst_result`
  MODIFY `temp` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `mst_subject`
--
ALTER TABLE `mst_subject`
  MODIFY `sub_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT for table `mst_test`
--
ALTER TABLE `mst_test`
  MODIFY `test_id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=40;

--
-- AUTO_INCREMENT for table `mst_user`
--
ALTER TABLE `mst_user`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
