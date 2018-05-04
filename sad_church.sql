-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Apr 30, 2018 at 11:11 AM
-- Server version: 10.1.13-MariaDB
-- PHP Version: 5.6.20

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `sad_church`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbl_appointment`
--

CREATE TABLE `tbl_appointment` (
  `char_appointstatus` char(20) NOT NULL,
  `int_userID` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_baptism`
--

CREATE TABLE `tbl_baptism` (
  `int_eventinfoID` int(10) NOT NULL,
  `varchar_parentmarriageadd` varchar(100) NOT NULL,
  `varchar_fatherbplace` varchar(100) NOT NULL,
  `varchar_motherbplace` varchar(100) NOT NULL,
  `varchar_fathername` varchar(100) NOT NULL,
  `varchar_mothername` varchar(100) NOT NULL,
  `varchar_contactnum` varchar(13) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_event`
--

CREATE TABLE `tbl_event` (
  `int_eventID` int(10) NOT NULL,
  `varchar_eventname` varchar(50) NOT NULL,
  `varchar_eventdesc` text NOT NULL,
  `date_eventdate` date DEFAULT NULL,
  `time_eventtime` time DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_event`
--

INSERT INTO `tbl_event` (`int_eventID`, `varchar_eventname`, `varchar_eventdesc`, `date_eventdate`, `time_eventtime`) VALUES
(1, 'Anointing of the sick', 'The anointing of the sick is administered to bring spiritual and even physical strength during an illness, especially near the time of death. It is most likely one of the last sacraments one will receive. A sacrament is an outward sign established by Jesus Christ to confer inward grace. In more basic terms, it is a rite that is performed to convey God’s grace to the recipient, through the power of the Holy Spirit.', NULL, NULL),
(2, 'Confirmation', 'The sacrament of confirmation completes the sacrament of baptism. If baptism is the sacrament of re-birth to a new and supernatural life, confir- mation is the sacrament of maturity and coming of age. The real confession of Christ consist in this ''that the whole man submits himself to Truth, in the judgment of his understanding, in the submission of his will and in the consecration of his whole power of love . . . To do this, poor-spirited man is only able when he has been confirmed by God''s grace''\r\n\r\nThis confirmation in the power of the Holy Spirit leading to a firm profession of faith has always been the particular effect which Catholic tradition has ascribed to the sacrament. It is effect which complements and completes that of baptism.\r\n\r\nTHE CHURCH TEACHES\r\nConfirmation is a true sacrament instituted by Christ and different from baptism. It is administered by laying-on of hands and anointing with chrism accompanied by prayer. The chrism is blessed by the bishop and the bishop administers the sacrament. All baptized persons can and should be confirmed. The effect of the sacrament of confirmation is to give strength in faith and for the confession of faith and to impress an indelible character.', NULL, NULL),
(3, 'Baptism', 'The sacrament of Baptism is the beginning of life—supernatural life. Because of original sin, we come into the world with a soul which is supernaturally dead. We come into the world with only the natural endowments of human nature. The supernatural life which is the result of God’s personal and intimate indwelling, is absent from the soul.\r\n\r\nOriginal sin is not, in the strict sense, a “blot” upon the soul. Indeed, original sin is not a “something” at all. It is the absence of something that should be there. It is a darkness where there ought to be light.\r\n\r\nJesus instituted the sacrament of Baptism to apply to each individual soul the atonement which He made on the Cross for original sin.\r\n\r\nJesus will not force His gift upon us, the gift of supernatural life for which He paid. He holds the gift out to us hopefully, but each of us must freely accept it. We make that acceptance by receiving the sacrament of Baptism.\r\n\r\nWhen the sacrament of Baptism is administered, the spiritual vacuum which we call original sin disappears as God becomes present in the soul, and the soul is caught up into that sharing of God’s own life which we call sanctifying grace.\r\n\r\n(c) http://www.beginningcatholic.com/baptism', NULL, NULL),
(4, 'Funeral Blessing', 'The rite of committal, the conclusion of the funeral rites, is the final act of the community of faith in caring for the body of its deceased member. It may be celebrated at the grave, tomb, or crematorium and may be used for burial at sea. Whenever possible, the rite of committal is to be celebrated at the site of committal, that is, beside the open grave or place of internment, rather than at a cemetery chapel.\r\n\r\n(c) http://www.ibreviary.com/m/preghiere.php?tipo=Rito&id=417', NULL, NULL),
(5, 'Marriage', 'When the Catholic Church teaches that marriage between two baptized persons is a sacrament, it is saying that the couple’s relationship expresses in a unique way the unbreakable bond of love between Christ and his people. Like the other six sacraments of the Church, marriage is a sign or symbol which reveals the Lord Jesus and through which his divine life and love are communicated. All seven sacraments were instituted by Christ and were entrusted to the Church to be celebrated in faith within and for the community of believers. The rituals and prayers by which a sacrament is celebrated serve to express visibly what God is doing invisibly.\r\n\r\nIn a sacramental marriage, God’s love becomes present to the spouses in their total union and also flows through them to their family and community. By their permanent, faithful and exclusive giving to each other, symbolized in sexual intercourse, the couple reveals something of God’s unconditional love. The sacrament of Christian marriage involves their entire life as they journey together through the ups and downs of marriage and become more able to give to and receive from each other. Their life becomes sacramental to the extent that the couple cooperates with God’s action in their life and sees themselves as living “in Christ” and Christ living and acting in their relationship, attitudes and actions.\r\n\r\nCatholic teaching holds that sacraments bring grace to those who receive them with the proper disposition. Grace is a way of describing how God shares the divine life with us and gives us the help we need to live as followers of Christ. In marriage, the grace of this sacrament brings to the spouses the particular help they need to be faithful and to be good parents. It also helps a couple to serve others beyond their immediate family and to show the community that a loving and lasting marriage is both desirable and possible.\r\n\r\n(C) http://www.foryourmarriage.org/marriage-as-sacrament/', NULL, NULL),
(6, 'Eucharist', 'first communion', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_eventapplication`
--

CREATE TABLE `tbl_eventapplication` (
  `int_eventapplicationID` int(10) NOT NULL,
  `int_eventinfoID` int(10) NOT NULL,
  `int_paymentID` int(10) DEFAULT NULL,
  `char_approvalstatus` char(20) NOT NULL,
  `char_feestatus` char(15) NOT NULL,
  `char_reqstatus` char(15) NOT NULL,
  `varchar_remarks` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_eventinfo`
--

CREATE TABLE `tbl_eventinfo` (
  `int_eventinfoID` int(10) NOT NULL,
  `int_userID` int(10) NOT NULL,
  `int_eventID` int(10) NOT NULL,
  `date_schedule` date NOT NULL,
  `time_schedule` time DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_grd3students`
--

CREATE TABLE `tbl_grd3students` (
  `int_studentID` int(10) NOT NULL,
  `int_relationID` int(10) NOT NULL,
  `varchar_school` varchar(100) NOT NULL,
  `varchar_batch` varchar(20) NOT NULL,
  `varchar-section` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_message`
--

CREATE TABLE `tbl_message` (
  `int_messageID` int(10) NOT NULL,
  `int_senderID` int(10) NOT NULL,
  `int_receiverID` int(10) NOT NULL,
  `text_message` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_ministry`
--

CREATE TABLE `tbl_ministry` (
  `int_ministryID` int(10) NOT NULL,
  `int_userID` int(10) NOT NULL,
  `varchar_ministryname` varchar(30) NOT NULL,
  `varchar_position` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_notification`
--

CREATE TABLE `tbl_notification` (
  `int_notifID` int(10) NOT NULL,
  `int_userID` int(10) NOT NULL,
  `varchar_notifdesc` varchar(55) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_payment`
--

CREATE TABLE `tbl_payment` (
  `int_paymentID` int(10) NOT NULL,
  `double_amount` double NOT NULL,
  `char_status` char(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_relation`
--

CREATE TABLE `tbl_relation` (
  `int_relationID` int(10) NOT NULL,
  `int_eventinfoID` int(10) NOT NULL,
  `varchar_relation` varchar(20) NOT NULL,
  `varchar_lname` varchar(50) NOT NULL,
  `varchar_fname` varchar(50) NOT NULL,
  `varchar_mname` varchar(50) NOT NULL,
  `char_gender` varchar(10) NOT NULL,
  `varchar_address` varchar(100) NOT NULL,
  `date_birthday` date NOT NULL,
  `varchar_birthplace` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_requirements`
--

CREATE TABLE `tbl_requirements` (
  `int_requirementID` int(10) NOT NULL,
  `int_eventinfoID` int(10) NOT NULL,
  `varchar_reqpath` varchar(300) DEFAULT NULL,
  `varchar_reqloc` varchar(100) DEFAULT NULL,
  `varchar_reqtype` text NOT NULL,
  `date_reqreceived` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_schedule`
--

CREATE TABLE `tbl_schedule` (
  `int_scheduleID` int(10) NOT NULL,
  `int_userID` int(10) NOT NULL,
  `int_eventinfoID` int(10) NOT NULL,
  `text_schedulenote` text NOT NULL,
  `varchar_venue` varchar(100) NOT NULL,
  `time_starttime` time NOT NULL,
  `time_endtime` time NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_sponsors`
--

CREATE TABLE `tbl_sponsors` (
  `int_sponsorID` int(10) NOT NULL,
  `int_eventinfoID` int(10) NOT NULL,
  `varchar_sponsorname` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_user`
--

CREATE TABLE `tbl_user` (
  `int_userID` int(10) NOT NULL,
  `varchar_userlname` varchar(55) NOT NULL,
  `varchar_userfname` varchar(55) NOT NULL,
  `varchar_usermname` varchar(55) NOT NULL,
  `char_usergender` char(10) NOT NULL,
  `date_userbirthday` date NOT NULL,
  `varchar_useraddress` varchar(100) NOT NULL,
  `varchar_usercontactnum` varchar(13) NOT NULL,
  `varchar_username` varchar(55) NOT NULL,
  `varchar_useremail` varchar(55) NOT NULL,
  `varchar_password` varchar(80) NOT NULL,
  `char_usertype` char(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_user`
--

INSERT INTO `tbl_user` (`int_userID`, `varchar_userlname`, `varchar_userfname`, `varchar_usermname`, `char_usergender`, `date_userbirthday`, `varchar_useraddress`, `varchar_usercontactnum`, `varchar_username`, `varchar_useremail`, `varchar_password`, `char_usertype`) VALUES
(5, 'Admin', 'admin', 'admin', 'Female', '1980-01-01', 'Anywhere', '09123456789', 'admin', 'admin@gmail.com', 'admin', 'Admin'),
(6, 'Secretariat', 'Secretariat', 'Secretariat', 'Female', '1980-04-01', 'Anywhere', '09999999999', 'secretariat', 'secretariat@gmail.com', 'secretariat', 'Secretariat'),
(7, 'Coordinator', 'Coordinator', 'Coordinator', 'Male', '1990-04-02', 'Anywhere', '09999999999', 'coordinator', 'coordinator@gmail.com', 'coordinator', 'Coordinator'),
(8, 'Catechist', 'Catechist', 'Catechist', 'Female', '1970-04-03', 'Anywhere', '0999999999', 'catechist', 'catechist', 'catechist', 'Catechist'),
(10, 'Priest', 'Priest', 'Priest', 'Male', '1970-04-04', 'Anyhwere', '09123456789', 'priest', 'priest@gmail.com', 'priest', 'Priest'),
(11, 'Ebrad', 'Jonalyn Fe', 'Desalisa', 'Female', '1998-11-11', 'Payatas B Quezon City', '09277475753', 'jonalynfe11', 'jonalynfeebrada11@gmail.com', '123jona', 'Guest');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_wedbride`
--

CREATE TABLE `tbl_wedbride` (
  `int_eventinfoID` int(10) NOT NULL,
  `varchar_blname` varchar(30) NOT NULL,
  `varchar_bfname` varchar(30) NOT NULL,
  `varchar_bmname` varchar(30) NOT NULL,
  `char_bgender` char(10) NOT NULL,
  `varchar_baddress` varchar(100) NOT NULL,
  `date_bbirthday` date NOT NULL,
  `varchar_bbirthplace` varchar(100) NOT NULL,
  `varchar_bnationality` varchar(20) NOT NULL,
  `varchar_bcivilstatus` varchar(50) NOT NULL,
  `varchar_breligion` varchar(20) NOT NULL,
  `varchar_boccupation` varchar(50) NOT NULL,
  `char_bpregnant` char(5) NOT NULL,
  `varchar_bfathername` varchar(100) NOT NULL,
  `varchar_bfatherbplace` varchar(100) NOT NULL,
  `varchar_bfatherreligion` varchar(20) NOT NULL,
  `varchar_bmothername` varchar(100) NOT NULL,
  `varchar_bmotherbplace` varchar(100) NOT NULL,
  `varchar_bmotherreligion` varchar(20) NOT NULL,
  `varchar_bcurrparish` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_wedcouple`
--

CREATE TABLE `tbl_wedcouple` (
  `int_eventinfoID` int(20) NOT NULL,
  `char_livingin` char(5) NOT NULL,
  `char_married` char(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_wedgroom`
--

CREATE TABLE `tbl_wedgroom` (
  `int_eventinfoID` int(10) NOT NULL,
  `varchar_gnationality` varchar(20) NOT NULL,
  `varchar_gcivilstatus` varchar(50) NOT NULL,
  `varchar_greligion` varchar(20) NOT NULL,
  `varchar_goccupation` varchar(50) NOT NULL,
  `varchar_gfathername` varchar(100) NOT NULL,
  `varchar_gfatherreligion` varchar(20) NOT NULL,
  `varchar_gfatherbplace` varchar(100) NOT NULL,
  `varchar_gmothername` varchar(100) NOT NULL,
  `varchar_gmotherreligion` varchar(20) NOT NULL,
  `varchar_gmotherbplace` varchar(100) NOT NULL,
  `varchar_gcurrparish` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbl_appointment`
--
ALTER TABLE `tbl_appointment`
  ADD KEY `int_userID` (`int_userID`);

--
-- Indexes for table `tbl_baptism`
--
ALTER TABLE `tbl_baptism`
  ADD KEY `int_eventinfoID` (`int_eventinfoID`);

--
-- Indexes for table `tbl_event`
--
ALTER TABLE `tbl_event`
  ADD PRIMARY KEY (`int_eventID`);

--
-- Indexes for table `tbl_eventapplication`
--
ALTER TABLE `tbl_eventapplication`
  ADD PRIMARY KEY (`int_eventapplicationID`),
  ADD KEY `int_eventinfoID` (`int_eventinfoID`),
  ADD KEY `int_paymentID` (`int_paymentID`);

--
-- Indexes for table `tbl_eventinfo`
--
ALTER TABLE `tbl_eventinfo`
  ADD PRIMARY KEY (`int_eventinfoID`),
  ADD KEY `int_userID` (`int_userID`),
  ADD KEY `int_eventID` (`int_eventID`);

--
-- Indexes for table `tbl_grd3students`
--
ALTER TABLE `tbl_grd3students`
  ADD PRIMARY KEY (`int_studentID`),
  ADD KEY `int_relationID` (`int_relationID`);

--
-- Indexes for table `tbl_message`
--
ALTER TABLE `tbl_message`
  ADD PRIMARY KEY (`int_messageID`),
  ADD KEY `int_senderID` (`int_senderID`),
  ADD KEY `int_receiverID` (`int_receiverID`);

--
-- Indexes for table `tbl_ministry`
--
ALTER TABLE `tbl_ministry`
  ADD PRIMARY KEY (`int_ministryID`),
  ADD KEY `int_userID` (`int_userID`);

--
-- Indexes for table `tbl_notification`
--
ALTER TABLE `tbl_notification`
  ADD PRIMARY KEY (`int_notifID`),
  ADD KEY `int_userID` (`int_userID`);

--
-- Indexes for table `tbl_payment`
--
ALTER TABLE `tbl_payment`
  ADD PRIMARY KEY (`int_paymentID`);

--
-- Indexes for table `tbl_relation`
--
ALTER TABLE `tbl_relation`
  ADD PRIMARY KEY (`int_relationID`),
  ADD KEY `int_eventinfoID` (`int_eventinfoID`);

--
-- Indexes for table `tbl_requirements`
--
ALTER TABLE `tbl_requirements`
  ADD PRIMARY KEY (`int_requirementID`),
  ADD KEY `int_eventinfoID` (`int_eventinfoID`);

--
-- Indexes for table `tbl_schedule`
--
ALTER TABLE `tbl_schedule`
  ADD PRIMARY KEY (`int_scheduleID`),
  ADD KEY `int_userID` (`int_userID`),
  ADD KEY `int_eventID` (`int_eventinfoID`);

--
-- Indexes for table `tbl_sponsors`
--
ALTER TABLE `tbl_sponsors`
  ADD PRIMARY KEY (`int_sponsorID`),
  ADD KEY `int_eventinfoID` (`int_eventinfoID`);

--
-- Indexes for table `tbl_user`
--
ALTER TABLE `tbl_user`
  ADD PRIMARY KEY (`int_userID`);

--
-- Indexes for table `tbl_wedbride`
--
ALTER TABLE `tbl_wedbride`
  ADD KEY `int_eventinfoID` (`int_eventinfoID`);

--
-- Indexes for table `tbl_wedcouple`
--
ALTER TABLE `tbl_wedcouple`
  ADD KEY `int_eventinfoID` (`int_eventinfoID`);

--
-- Indexes for table `tbl_wedgroom`
--
ALTER TABLE `tbl_wedgroom`
  ADD KEY `int_eventinfoID` (`int_eventinfoID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbl_event`
--
ALTER TABLE `tbl_event`
  MODIFY `int_eventID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `tbl_eventapplication`
--
ALTER TABLE `tbl_eventapplication`
  MODIFY `int_eventapplicationID` int(10) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `tbl_eventinfo`
--
ALTER TABLE `tbl_eventinfo`
  MODIFY `int_eventinfoID` int(10) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `tbl_grd3students`
--
ALTER TABLE `tbl_grd3students`
  MODIFY `int_studentID` int(10) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `tbl_message`
--
ALTER TABLE `tbl_message`
  MODIFY `int_messageID` int(10) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `tbl_ministry`
--
ALTER TABLE `tbl_ministry`
  MODIFY `int_ministryID` int(10) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `tbl_notification`
--
ALTER TABLE `tbl_notification`
  MODIFY `int_notifID` int(10) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `tbl_relation`
--
ALTER TABLE `tbl_relation`
  MODIFY `int_relationID` int(10) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `tbl_requirements`
--
ALTER TABLE `tbl_requirements`
  MODIFY `int_requirementID` int(10) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `tbl_schedule`
--
ALTER TABLE `tbl_schedule`
  MODIFY `int_scheduleID` int(10) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `tbl_sponsors`
--
ALTER TABLE `tbl_sponsors`
  MODIFY `int_sponsorID` int(10) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `tbl_user`
--
ALTER TABLE `tbl_user`
  MODIFY `int_userID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `tbl_appointment`
--
ALTER TABLE `tbl_appointment`
  ADD CONSTRAINT `tbl_appointment_ibfk_1` FOREIGN KEY (`int_userID`) REFERENCES `tbl_user` (`int_userID`);

--
-- Constraints for table `tbl_baptism`
--
ALTER TABLE `tbl_baptism`
  ADD CONSTRAINT `tbl_baptism_ibfk_1` FOREIGN KEY (`int_eventinfoID`) REFERENCES `tbl_eventinfo` (`int_eventinfoID`);

--
-- Constraints for table `tbl_eventapplication`
--
ALTER TABLE `tbl_eventapplication`
  ADD CONSTRAINT `tbl_eventapplication_ibfk_1` FOREIGN KEY (`int_eventinfoID`) REFERENCES `tbl_eventinfo` (`int_eventinfoID`),
  ADD CONSTRAINT `tbl_eventapplication_ibfk_2` FOREIGN KEY (`int_paymentID`) REFERENCES `tbl_payment` (`int_paymentID`);

--
-- Constraints for table `tbl_eventinfo`
--
ALTER TABLE `tbl_eventinfo`
  ADD CONSTRAINT `tbl_eventinfo_ibfk_1` FOREIGN KEY (`int_userID`) REFERENCES `tbl_user` (`int_userID`),
  ADD CONSTRAINT `tbl_eventinfo_ibfk_2` FOREIGN KEY (`int_eventID`) REFERENCES `tbl_event` (`int_eventID`);

--
-- Constraints for table `tbl_grd3students`
--
ALTER TABLE `tbl_grd3students`
  ADD CONSTRAINT `tbl_grd3students_ibfk_1` FOREIGN KEY (`int_relationID`) REFERENCES `tbl_relation` (`int_relationID`);

--
-- Constraints for table `tbl_message`
--
ALTER TABLE `tbl_message`
  ADD CONSTRAINT `tbl_message_ibfk_1` FOREIGN KEY (`int_senderID`) REFERENCES `tbl_user` (`int_userID`),
  ADD CONSTRAINT `tbl_message_ibfk_2` FOREIGN KEY (`int_receiverID`) REFERENCES `tbl_user` (`int_userID`);

--
-- Constraints for table `tbl_ministry`
--
ALTER TABLE `tbl_ministry`
  ADD CONSTRAINT `tbl_ministry_ibfk_1` FOREIGN KEY (`int_userID`) REFERENCES `tbl_user` (`int_userID`);

--
-- Constraints for table `tbl_notification`
--
ALTER TABLE `tbl_notification`
  ADD CONSTRAINT `tbl_notification_ibfk_1` FOREIGN KEY (`int_userID`) REFERENCES `tbl_user` (`int_userID`);

--
-- Constraints for table `tbl_relation`
--
ALTER TABLE `tbl_relation`
  ADD CONSTRAINT `tbl_relation_ibfk_1` FOREIGN KEY (`int_eventinfoID`) REFERENCES `tbl_eventinfo` (`int_eventinfoID`);

--
-- Constraints for table `tbl_requirements`
--
ALTER TABLE `tbl_requirements`
  ADD CONSTRAINT `tbl_requirements_ibfk_1` FOREIGN KEY (`int_eventinfoID`) REFERENCES `tbl_eventinfo` (`int_eventinfoID`);

--
-- Constraints for table `tbl_schedule`
--
ALTER TABLE `tbl_schedule`
  ADD CONSTRAINT `tbl_schedule_ibfk_1` FOREIGN KEY (`int_userID`) REFERENCES `tbl_user` (`int_userID`),
  ADD CONSTRAINT `tbl_schedule_ibfk_2` FOREIGN KEY (`int_eventinfoID`) REFERENCES `tbl_eventinfo` (`int_eventinfoID`);

--
-- Constraints for table `tbl_sponsors`
--
ALTER TABLE `tbl_sponsors`
  ADD CONSTRAINT `tbl_sponsors_ibfk_1` FOREIGN KEY (`int_eventinfoID`) REFERENCES `tbl_eventinfo` (`int_eventinfoID`);

--
-- Constraints for table `tbl_wedbride`
--
ALTER TABLE `tbl_wedbride`
  ADD CONSTRAINT `tbl_wedbride_ibfk_1` FOREIGN KEY (`int_eventinfoID`) REFERENCES `tbl_eventinfo` (`int_eventinfoID`);

--
-- Constraints for table `tbl_wedcouple`
--
ALTER TABLE `tbl_wedcouple`
  ADD CONSTRAINT `tbl_wedcouple_ibfk_1` FOREIGN KEY (`int_eventinfoID`) REFERENCES `tbl_eventinfo` (`int_eventinfoID`);

--
-- Constraints for table `tbl_wedgroom`
--
ALTER TABLE `tbl_wedgroom`
  ADD CONSTRAINT `tbl_wedgroom_ibfk_1` FOREIGN KEY (`int_eventinfoID`) REFERENCES `tbl_eventinfo` (`int_eventinfoID`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;