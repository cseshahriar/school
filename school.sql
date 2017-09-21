-- phpMyAdmin SQL Dump
-- version 4.6.5.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 21, 2017 at 06:44 AM
-- Server version: 10.1.21-MariaDB
-- PHP Version: 5.6.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `school`
--

-- --------------------------------------------------------

--
-- Table structure for table `banner`
--

CREATE TABLE `banner` (
  `banner_id` int(11) NOT NULL,
  `banner_title` varchar(50) NOT NULL,
  `banner_subtitle` varchar(50) NOT NULL,
  `banner_image` varchar(255) NOT NULL,
  `banner_cat_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `banner`
--

INSERT INTO `banner` (`banner_id`, `banner_title`, `banner_subtitle`, `banner_image`, `banner_cat_id`) VALUES
(1, 'SCHOLASTICA SCHOOL', 'Providing excellent education since 1977', 'academic.jpg', 1),
(2, 'SCHOLASTICA SCHOOL', 'Providing excellent education since 1977', 'admission.jpg\"', 2),
(3, 'SCHOLASTICA SCHOOL', 'Providing excellent education since 1977', 'academic-banner.jpg', 3),
(4, 'SCHOLASTICA SCHOOL', 'Providing excellent education since 1977', 'academic-banner.jpg', 4),
(5, 'SCHOLASTICA SCHOOL', 'Providing excellent education since 1977', 'academic-banner.jpg', 5);

-- --------------------------------------------------------

--
-- Table structure for table `banner_category`
--

CREATE TABLE `banner_category` (
  `banner_cat_id` int(11) NOT NULL,
  `banner_cat_name` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `banner_category`
--

INSERT INTO `banner_category` (`banner_cat_id`, `banner_cat_name`) VALUES
(1, 'Academics'),
(2, 'Admission'),
(3, 'Curriculum'),
(4, 'About '),
(5, 'Contact');

-- --------------------------------------------------------

--
-- Table structure for table `comments`
--

CREATE TABLE `comments` (
  `commnt_id` int(11) NOT NULL,
  `comment_name` varchar(50) NOT NULL,
  `comment_email` varchar(100) NOT NULL,
  `comment_subject` varchar(100) NOT NULL,
  `message` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `comments`
--

INSERT INTO `comments` (`commnt_id`, `comment_name`, `comment_email`, `comment_subject`, `message`) VALUES
(1, 'shahriar', ' hosen.shahriar.cse@gmail.com', 'test', 'test message'),
(2, 'shahriar', ' hosen.shahriar.cse@gmail.com', 'test', 'test message'),
(3, 'shahriar', ' hosen.shahriar.cse@gmail.com', 'test', 'test message 2'),
(4, 'shahriar', ' hosen.shahriar.cse@gmail.com', 'test', 'test message 2'),
(5, 'shahriar', ' hosen.shahriar.cse@gmail.com', 'test', 'test message 2'),
(6, 'shahriar', ' hosen.shahriar.cse@gmail.com', 'test', 'test message 2');

-- --------------------------------------------------------

--
-- Table structure for table `footer_info`
--

CREATE TABLE `footer_info` (
  `finfo_id` int(11) NOT NULL,
  `finfo_title` varchar(30) NOT NULL,
  `finfo_address_one` varchar(255) NOT NULL,
  `finfo_address_two` varchar(255) NOT NULL,
  `finfo_address_three` varchar(255) NOT NULL,
  `finfo_image` varchar(255) NOT NULL,
  `finfo_cat_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `footer_info_category`
--

CREATE TABLE `footer_info_category` (
  `finfo_cat_id` int(11) NOT NULL,
  `finfo_cat_name` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `menu`
--

CREATE TABLE `menu` (
  `menu_id` int(11) NOT NULL,
  `menu_text` varchar(20) NOT NULL,
  `menu_url` varchar(50) NOT NULL,
  `menu_class` varchar(20) NOT NULL,
  `menu_html_id` varchar(20) NOT NULL,
  `menu_fa_class` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `news`
--

CREATE TABLE `news` (
  `news_id` int(11) NOT NULL,
  `news_title` varchar(50) NOT NULL,
  `news_subtitle` varchar(50) NOT NULL,
  `news_details` text NOT NULL,
  `news_btn_text` varchar(20) NOT NULL,
  `news_btn_url` varchar(100) NOT NULL,
  `news_image` varchar(255) NOT NULL,
  `news_date` date NOT NULL,
  `news_cat_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `news`
--

INSERT INTO `news` (`news_id`, `news_title`, `news_subtitle`, `news_details`, `news_btn_text`, `news_btn_url`, `news_image`, `news_date`, `news_cat_id`) VALUES
(1, 'Student Affairs Unit', 'Student Affairs Unit', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.', 'Learn more', '#', 'success-one.jpg', '0000-00-00', 1),
(2, 'Student Affairs Unit', 'Student Affairs Unit', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.', 'Learn more', '#', 'sucees-two.jpg', '2017-09-20', 1),
(3, 'Student Affairs Unit', 'Student Affairs Unit', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.', 'Learn more', '#', 'success-three.jpg', '2017-09-20', 1),
(4, 'Student Affairs Unit', 'Student Affairs Unit', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.', 'Learn more', '#', 'success-one.jpg', '2017-09-20', 1),
(5, '', '', 'Ten Scholastica students were awarded for achieving highest marks in different subjects in the world and in the  awarded for achieving highest ...', '', '', '', '2017-03-06', 2),
(6, '', '', 'Ten Scholastica students were awarded for achieving highest marks in different subjects in the world and in the  awarded for achieving highest ...', '', '', '', '2017-03-06', 2),
(7, '', '', 'Ten Scholastica students were awarded for achieving highest marks in different subjects in the world and in the  awarded for achieving highest ...', '', '', '', '2017-03-06', 2),
(8, '', '', 'Ten Scholastica students were awarded for achieving highest marks in different subjects in the world and in the  awarded for achieving highest ...', '', '', '', '2017-03-06', 2),
(9, '', '', 'Ten Scholastica students were awarded for achieving highest marks in different subjects in the world and in the  ...', '', '', 'news-1.jpg', '2017-09-20', 3),
(10, '', '', 'Ten Scholastica students were awarded for achieving highest marks in different subjects in the world and in the  ...', '', '', 'news-1.jpg', '2017-09-20', 3),
(11, '', '', 'Ten Scholastica students were awarded for achieving highest marks in different subjects in the world and in the  ...', '', '', 'news-1.jpg', '2017-09-20', 3),
(12, '', '', 'Ten Scholastica students were awarded for achieving highest marks in different subjects in the world and in the  ...', '', '', 'news-1.jpg', '2017-09-20', 3),
(13, '', '', 'Ten Scholastica students were awarded for achieving highest marks in different subjects in the world and in the  awarded for achieving highest ...', '', '', 'news-1.jpg', '2017-03-20', 3),
(15, '', '', 'Ten Scholastica students were awarded for achieving highest marks in different subjects in the world and in the  awarded for achieving highest ...', '', '', '', '2017-03-06', 2);

-- --------------------------------------------------------

--
-- Table structure for table `news_category`
--

CREATE TABLE `news_category` (
  `news_cat_id` int(11) NOT NULL,
  `news_cat_name` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `news_category`
--

INSERT INTO `news_category` (`news_cat_id`, `news_cat_name`) VALUES
(1, 'Latest News'),
(2, 'Announcements'),
(3, 'Upcoming Events');

-- --------------------------------------------------------

--
-- Table structure for table `photo_slider`
--

CREATE TABLE `photo_slider` (
  `pslide_id` int(11) NOT NULL,
  `pslide_title` varchar(100) NOT NULL,
  `pslide_details` text NOT NULL,
  `pslide_btn_text` varchar(20) NOT NULL,
  `pslide_btn_url` varchar(50) NOT NULL,
  `pslide_image` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `photo_slider`
--

INSERT INTO `photo_slider` (`pslide_id`, `pslide_title`, `pslide_details`, `pslide_btn_text`, `pslide_btn_url`, `pslide_image`) VALUES
(1, 'Student Affairs Unit', 'Scholastica team from Senior campus, Mirpur achieved third position at the Kokomo Dhaka Metropolitan  Senior campus, Mirpur achieved third position.', 'Read More', '#', 'img-2.jpg'),
(2, 'Student Affairs Unit', 'Scholastica team from Senior campus, Mirpur achieved third position at the Kokomo Dhaka Metropolitan  Senior campus, Mirpur achieved third position.', 'Read More', '#', 'img-3.jpg'),
(3, 'Student Affairs Unit', 'Scholastica team from Senior campus, Mirpur achieved third position at the Kokomo Dhaka Metropolitan  Senior campus, Mirpur achieved third .', 'Read More', '#', 'img-4.jpg'),
(4, 'Student Affairs Unit', 'Scholastica team from Senior campus, Mirpur achieved third position at the Kokomo Dhaka Metropolitan  Senior campus, Mirpur achieved third .', 'Read More', '#', 'img-5.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `post_id` int(11) NOT NULL,
  `post_title` varchar(100) NOT NULL,
  `post_subtitle` varchar(100) NOT NULL,
  `post_details` text NOT NULL,
  `post_btn_txt` varchar(20) NOT NULL,
  `post_btn_url` varchar(100) NOT NULL,
  `post_date` datetime NOT NULL,
  `post_image` varchar(255) NOT NULL,
  `post_cat_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`post_id`, `post_title`, `post_subtitle`, `post_details`, `post_btn_txt`, `post_btn_url`, `post_date`, `post_image`, `post_cat_id`) VALUES
(1, 'Welcome to', 'SCHOLASTICA SCHOOL', '\nScholastica was established in 1977 by Mrs. Yasmeen Murshed. It was founded with a mission to provide a balanced and well-rounded education for all our students, using English as the primary medium of instruction but placing equal emphasis on Bangla. Scholastica\'s mission is to build curious, knowledgeable and caring young individuals, who will be equipped to tackle head-on the challenges of our modern-day \"global village\". They will aspire to become responsible citizens, who will embrace and respect people from other cultures and walks of life.', 'Read More', '#', '2017-09-20 11:18:21', '', 1),
(2, 'Academics', '', '<p>Scholastica is one of the largest private English-medium schools in Bangladesh, offering pre-school to A\' Level classes of an international standard. It offers a complete school-leaving course using English as the medium of instruction. We emphasize equal proficiency in Bangla as a necessary prerequisite for a well-rounded education for Bangladeshi students.</p>\n        <p>Scholastica\'s curriculum has been designed to reflect the specific needs of Bangladeshi students keeping in mind their heritage, culture and national identity. </p>\n        <p>The school has designed a comprehensive curriculum for all classes leading to the University of Cambridge International Examinations Ordinary and Advanced Level General Certificate of Education courses which are taught in Classes IX to XII. These examinations are administered by the British Council, Dhaka. </p>', '', '', '0000-00-00 00:00:00', 'academic.jpg', 2),
(3, 'Admission In Scholastica', '', '<p>The admissions process in Scholastica is very transparent. Anyone is welcome to apply without any reference. Absolutely no donations are accepted; only published fees are required. </p>\n            <p>During the admissions process, interviews are held by a panel of senior management, not a single individual. The interview panel is a team of qualified individuals from Scholastica\'s senior management. All decisions for admission are made through a committee, not by any one individual.</p>\n            <p>No external agents/agencies are appointed or involved in the admissions process; the Admissions Office is the only point of contact for all admissions-related applications and inquiries. No Ascent Group personnel have a role in the admissions process except those in the Admissions Office and on the interview and selection panel. </p>\n            \n             <p>During the admissions process, interviews are held by a panel of senior management, not a single individual. The interview panel is a team of qualified individuals from Scholastica\'s senior management. All decisions for admission are made through a committee, not by any one individual.</p>', '', '', '0000-00-00 00:00:00', 'admission.jpg', 3),
(4, 'Our Curriculum', '', 'Scholastica provides a complete school-leaving course of study, from pre-school to the A\' Levels. We have developed our own curriculum; it aims to deliver a holistic education program combining the core competencies of the national and the British curricula. The comprehensive curriculum designed for the elementary, secondary and high school classes ultimately leads to the University of Cambridge International Examinations Ordinary and Advanced Level General Certificate of Education exams, taught in the high school. These examinations are \r\nconducted under the auspices of the British Council, Dhaka. ', '', '', '0000-00-00 00:00:00', '', 4),
(5, 'Junior School', '', 'In the Junior school, from Playgroup to Kindergarten II, we encourage children to observe their surroundings, think independently, ask questions and freely express themselves without fear or inhibition, thereby honing their observation, listening, verbal and comprehension skills. We create an environment that is conducive to oral participation and expression so that each individual is able to interpret and respond to all forms of external stimuli..\r\n\r\nStudents gradually develop a love of learning just by handling everyday objects and utilizing their own five senses. They start to identify letters and develop a love of reading. They also grow in confidence and are eventually able to independently hold their pencils and develop their writing skills.', '', '', '0000-00-00 00:00:00', '', 4),
(6, 'Middle School', '', 'From Class I onwards, our curriculum exposes students to more subjects in a formal classroom setting. The curriculum focuses on developing numeracy, literacy and an understanding of the environment and our surroundings. Learning in these classes is designed to develop positive attitudes. Students learn not only from their texts but also from their surroundings. We encourage the little observers to open their eyes, to look around and acquire knowledge from their friends, their teachers and elders, and their environment. Students build key skills and explore concepts in language (both English and Bangla), maths, science, Islamiat/moral science, art, physical education, music and drama. When they enter Class III, they also start to study social studies—history, geography and Bangladesh studies.', '', '', '0000-00-00 00:00:00', '', 4),
(7, 'About Us', '', '<p> The admissions process in Scholastica is very transparent. Anyone is welcome to apply without any reference. Absolutely no donations are accepted; only published fees are required. </p>\n          <p>During the admissions process, interviews are held by a panel of senior management, not a single individual. The interview panel is a team of qualified individuals from Scholastica\'s senior management. All decisions for admission are made through a committee, not by any one individual.</p>\n          <p>No external agents/agencies are appointed or involved in the admissions process; the Admissions Office is the only point of contact for all admissions-related applications and inquiries. No Ascent Group personnel have a role in the admissions process except those in the Admissions Office and on the interview and selection panel. </p>\n           <p>During the admissions process, interviews are held by a panel of senior management, not a single individual. The interview panel is a team of qualified individuals from Scholastica\'s senior management. All decisions for admission are made through a committee, not by any one individual.</p>', '', '', '0000-00-00 00:00:00', 'about-ct.jpg', 5),
(8, 'High School', '', 'Scholastica\'s O\' Level program encourages students to engage, invent, manage and compete - equipping them for eventual success in the public examinations under Cambridge International Examinations. Years of experience teaching the O\' Levels has allowed us to understand the needs of the international examinations board - our mock results very closely mirror the actual results of our students.', '', '', '0000-00-00 00:00:00', '', 4);

-- --------------------------------------------------------

--
-- Table structure for table `post_category`
--

CREATE TABLE `post_category` (
  `post_cat_id` int(11) NOT NULL,
  `post_cat_name` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `post_category`
--

INSERT INTO `post_category` (`post_cat_id`, `post_cat_name`) VALUES
(1, 'Home'),
(2, 'Academics'),
(3, 'Admission'),
(4, 'Curriculum'),
(5, 'About Us');

-- --------------------------------------------------------

--
-- Table structure for table `sliders`
--

CREATE TABLE `sliders` (
  `slide_id` int(11) NOT NULL,
  `slide_title` varchar(100) NOT NULL,
  `slide_subtitle` varchar(100) NOT NULL,
  `slide_description` text NOT NULL,
  `slide_btn_text` varchar(25) NOT NULL,
  `slide_btn_url` varchar(50) NOT NULL,
  `slide_image` varchar(255) NOT NULL,
  `active_slider` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `sliders`
--

INSERT INTO `sliders` (`slide_id`, `slide_title`, `slide_subtitle`, `slide_description`, `slide_btn_text`, `slide_btn_url`, `slide_image`, `active_slider`) VALUES
(1, 'Career and Technical Education', '', 'Enter as much criteria on the left as you wish, or click an area on the map below to begin your search in a particular borough. To find your zoned school, enter your home address below.', 'Read More', '#', 'slide-1505883950-53186.jpg', 1),
(2, 'Kindergarten Offer Letters', '', 'Providing excellent education since 1977 .Scholastica was established in 1977 by Mrs. Yasmeen Murshed. Scholastica was established in 1977 by Mrs. Yasmeen Murshed..... ', 'Read More', '#', 'slider-two.jpg', 0),
(3, 'Elementary Schools', 'click an area on the map below to begin.', 'click an area on the map below to begin your search in a particular borough. To find your zoned school, enter your enter your home address below.', 'Read More', '#', 'slider-three.jpg', 0);

-- --------------------------------------------------------

--
-- Table structure for table `social`
--

CREATE TABLE `social` (
  `social_id` int(11) NOT NULL,
  `social_fa_class` int(11) NOT NULL,
  `social_link` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_user`
--

CREATE TABLE `tbl_user` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `phone` varchar(25) NOT NULL,
  `email` varchar(50) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `role_id` int(11) NOT NULL,
  `image` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_user`
--

INSERT INTO `tbl_user` (`id`, `name`, `phone`, `email`, `username`, `password`, `role_id`, `image`) VALUES
(1, 'shahriar', '01710835653', 'shahriarcse@gmail.com', 'admin', '21232f297a57a5a743894a0e4a801fc3', 1, ''),
(2, 'shahriar', '01710835653', 'hosen.shahriar.cse@gmail.com', 'shahriarcse', '21232f297a57a5a743894a0e4a801fc3', 1, 'User-1505827153-8174621.png');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_user_role`
--

CREATE TABLE `tbl_user_role` (
  `role_id` int(11) NOT NULL,
  `role_name` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_user_role`
--

INSERT INTO `tbl_user_role` (`role_id`, `role_name`) VALUES
(1, 'Super Admin'),
(2, 'Admin'),
(3, 'Author'),
(4, 'Edithor'),
(5, 'Subscriber');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `banner`
--
ALTER TABLE `banner`
  ADD PRIMARY KEY (`banner_id`),
  ADD KEY `banner_cat_id` (`banner_cat_id`);

--
-- Indexes for table `banner_category`
--
ALTER TABLE `banner_category`
  ADD PRIMARY KEY (`banner_cat_id`);

--
-- Indexes for table `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`commnt_id`);

--
-- Indexes for table `footer_info`
--
ALTER TABLE `footer_info`
  ADD PRIMARY KEY (`finfo_id`);

--
-- Indexes for table `footer_info_category`
--
ALTER TABLE `footer_info_category`
  ADD PRIMARY KEY (`finfo_cat_id`);

--
-- Indexes for table `menu`
--
ALTER TABLE `menu`
  ADD PRIMARY KEY (`menu_id`);

--
-- Indexes for table `news`
--
ALTER TABLE `news`
  ADD PRIMARY KEY (`news_id`),
  ADD KEY `news_cat_id` (`news_cat_id`);

--
-- Indexes for table `news_category`
--
ALTER TABLE `news_category`
  ADD PRIMARY KEY (`news_cat_id`);

--
-- Indexes for table `photo_slider`
--
ALTER TABLE `photo_slider`
  ADD PRIMARY KEY (`pslide_id`);

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`post_id`),
  ADD KEY `post_cat_id` (`post_cat_id`);

--
-- Indexes for table `post_category`
--
ALTER TABLE `post_category`
  ADD PRIMARY KEY (`post_cat_id`);

--
-- Indexes for table `sliders`
--
ALTER TABLE `sliders`
  ADD PRIMARY KEY (`slide_id`);

--
-- Indexes for table `social`
--
ALTER TABLE `social`
  ADD PRIMARY KEY (`social_id`);

--
-- Indexes for table `tbl_user`
--
ALTER TABLE `tbl_user`
  ADD PRIMARY KEY (`id`),
  ADD KEY `role_id` (`role_id`);

--
-- Indexes for table `tbl_user_role`
--
ALTER TABLE `tbl_user_role`
  ADD PRIMARY KEY (`role_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `banner`
--
ALTER TABLE `banner`
  MODIFY `banner_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `banner_category`
--
ALTER TABLE `banner_category`
  MODIFY `banner_cat_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `comments`
--
ALTER TABLE `comments`
  MODIFY `commnt_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `footer_info`
--
ALTER TABLE `footer_info`
  MODIFY `finfo_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `footer_info_category`
--
ALTER TABLE `footer_info_category`
  MODIFY `finfo_cat_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `menu`
--
ALTER TABLE `menu`
  MODIFY `menu_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `news`
--
ALTER TABLE `news`
  MODIFY `news_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;
--
-- AUTO_INCREMENT for table `news_category`
--
ALTER TABLE `news_category`
  MODIFY `news_cat_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `photo_slider`
--
ALTER TABLE `photo_slider`
  MODIFY `pslide_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `post_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT for table `post_category`
--
ALTER TABLE `post_category`
  MODIFY `post_cat_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `sliders`
--
ALTER TABLE `sliders`
  MODIFY `slide_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `social`
--
ALTER TABLE `social`
  MODIFY `social_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `tbl_user`
--
ALTER TABLE `tbl_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `tbl_user_role`
--
ALTER TABLE `tbl_user_role`
  MODIFY `role_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `banner`
--
ALTER TABLE `banner`
  ADD CONSTRAINT `banner_ibfk_1` FOREIGN KEY (`banner_cat_id`) REFERENCES `banner_category` (`banner_cat_id`);

--
-- Constraints for table `news`
--
ALTER TABLE `news`
  ADD CONSTRAINT `news_ibfk_1` FOREIGN KEY (`news_cat_id`) REFERENCES `news_category` (`news_cat_id`);

--
-- Constraints for table `posts`
--
ALTER TABLE `posts`
  ADD CONSTRAINT `posts_ibfk_1` FOREIGN KEY (`post_cat_id`) REFERENCES `post_category` (`post_cat_id`);

--
-- Constraints for table `tbl_user`
--
ALTER TABLE `tbl_user`
  ADD CONSTRAINT `tbl_user_ibfk_1` FOREIGN KEY (`role_id`) REFERENCES `tbl_user_role` (`role_id`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
