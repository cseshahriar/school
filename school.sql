-- phpMyAdmin SQL Dump
-- version 4.6.5.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 26, 2017 at 08:11 AM
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
-- Table structure for table `banners`
--

CREATE TABLE `banners` (
  `banner_id` int(11) NOT NULL,
  `banner_title` varchar(50) NOT NULL,
  `banner_subtitle` varchar(50) NOT NULL,
  `banner_image` varchar(255) NOT NULL,
  `banner_cat_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `banners`
--

INSERT INTO `banners` (`banner_id`, `banner_title`, `banner_subtitle`, `banner_image`, `banner_cat_id`) VALUES
(1, 'SCHOLASTICA SCHOOL', 'Providing excellent education since 1977', 'Banner-1506223197-70105.jpg', 1),
(2, 'SCHOLASTICA SCHOOL', 'Providing excellent education since 1977', 'Banner-1506223262-26565.jpg', 2),
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
  `comment_id` int(11) NOT NULL,
  `comment_name` varchar(50) NOT NULL,
  `comment_email` varchar(100) NOT NULL,
  `comment_subject` varchar(100) NOT NULL,
  `massage` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `comments`
--

INSERT INTO `comments` (`comment_id`, `comment_name`, `comment_email`, `comment_subject`, `massage`) VALUES
(1, 'Shahriar Hosen', ' hosen.shahriar.cse@gmail.com', 'test', 'test massage'),
(2, 'Shahriar Hosen', ' hosen.shahriar.cse@gmail.com', 'test', 'test massage 2');

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
  `finfo_address_four` varchar(255) NOT NULL,
  `finfo_image` varchar(255) NOT NULL,
  `finfo_cat_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `footer_info`
--

INSERT INTO `footer_info` (`finfo_id`, `finfo_title`, `finfo_address_one`, `finfo_address_two`, `finfo_address_three`, `finfo_address_four`, `finfo_image`, `finfo_cat_id`) VALUES
(1, 'Central Office:', 'Ascent Group House 3/D, Road 2/A, Block J,Baridhara, ', '<span>Tele: 8860147,8860132,8819500,</span><span>8815222,8856019-20 & 9887277</span>', '<span>Fax: (+88 02) 8813141</span> <span> Email: info@scholasticabd.com</span>', '\n  ', 'Campus-1506230159-403791.', 1),
(2, 'Campus Address:', '<span>Senior campus,Uttara, Plot 2,</span>\r\n                   <span>Road 8 &amp; 9, Sector 1,</span>\r\n                   <span>Uttara Model Town,</span>\r\n                   <span>Dhaka 1230</span>\r\n', '<span>Junior campus,Uttara, Plot 1, Road </span><span>21, Sector 4, Uttara Model Town,</span> Dhaka 1230', '<span>Senior Campus,Mirpur, Plot 2/B-2,</span> <span> 2/C line one, Section 13, Mirpur,</span> Dhaka 1216', '', '', 2),
(3, 'Campus Address:', '<span>Junior campus,Dhanmondi, Plot 78,</span>\r\n                   <span>Road 8/A, Mirza Golam Hafiz Road,</span>\r\n                   <span> Dhanmondi R/A, Dhaka 1209</span>\r\n', '<span>Junior campus,Gulshan, Plot </span>\r\n                   <span>lot NE(D)3,Gulshan Avenue,North,Shaheed</span>\r\n                   <span> Major , Najmul Haque Sarak,Gulshan 2,</span>\r\n                   <span>Dhaka 1212</span>\r\n', '', '', '', 2),
(4, 'Associate School of:', '', '', '', '', 'footer-1506230485-56700.png', 3),
(5, 'Member of:', 'Dhaka International Schools Association (DISA)\r\n               Bangladesh Private English Medium Schools Forum ', '', '', '', '', 4);

-- --------------------------------------------------------

--
-- Table structure for table `footer_info_category`
--

CREATE TABLE `footer_info_category` (
  `finfo_cat_id` int(11) NOT NULL,
  `finfo_cat_name` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `footer_info_category`
--

INSERT INTO `footer_info_category` (`finfo_cat_id`, `finfo_cat_name`) VALUES
(1, 'Central Office'),
(2, 'Campus Address'),
(3, 'Associate School '),
(4, 'Member of:');

-- --------------------------------------------------------

--
-- Table structure for table `gallery`
--

CREATE TABLE `gallery` (
  `pslide_id` int(11) NOT NULL,
  `pslide_title` varchar(100) NOT NULL,
  `pslide_details` text NOT NULL,
  `pslide_btn_text` varchar(20) NOT NULL,
  `pslide_btn_url` varchar(50) NOT NULL,
  `pslide_image` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `gallery`
--

INSERT INTO `gallery` (`pslide_id`, `pslide_title`, `pslide_details`, `pslide_btn_text`, `pslide_btn_url`, `pslide_image`) VALUES
(1, 'Student Affairs Unit', 'Scholastica team from Senior campus, Mirpur achieved third position at the Kokomo Dhaka Metropolitan  Senior campus, Mirpur achieved third position.', 'Read More', '#', 'Gallery-1506224673-32771.jpg'),
(2, 'Student Affairs Unit', 'Scholastica team from Senior campus, Mirpur achieved third position at the Kokomo Dhaka Metropolitan  Senior campus, Mirpur achieved third position.', 'Read More', '#', 'img-3.jpg'),
(3, 'Student Affairs Unit', 'Scholastica team from Senior campus, Mirpur achieved third position at the Kokomo Dhaka Metropolitan  Senior campus, Mirpur achieved third .', 'Read More', '#', 'img-4.jpg'),
(4, 'Student Affairs Unit', 'Scholastica team from Senior campus, Mirpur achieved third position at the Kokomo Dhaka Metropolitan  Senior campus, Mirpur achieved third .', 'Read More', '#', 'img-5.jpg');

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
(1, 'Student Affairs Unit', 'Student Affairs Unit', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.', 'Learn more', '#', 'Latest News-1506143756-87653.jpg', '2017-09-18', 1),
(2, 'Student Affairs Unit', 'Student Affairs Unit', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.', 'Learn more', '#', 'sucees-two.jpg', '2017-09-20', 1),
(3, 'Student Affairs Unit', 'Student Affairs Unit', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.', 'Learn more', '#', 'success-three.jpg', '2017-09-20', 1),
(5, '', '', 'Ten Scholastica students were awarded for achieving highest marks in different subjects in the world and in the  awarded for achieving highest ...', '', '', '', '2017-03-06', 2),
(6, '', '', 'Ten Scholastica students were awarded for achieving highest marks in different subjects in the world and in the  awarded for achieving highest ...', '', '', '', '2017-03-06', 2),
(7, '', '', 'Ten Scholastica students were awarded for achieving highest marks in different subjects in the world and in the  awarded for achieving highest ...', '', '', '', '2017-03-06', 2),
(8, '', '', 'Ten Scholastica students were awarded for achieving highest marks in different subjects in the world and in the  awarded for achieving highest ...', '', '', '', '2017-03-06', 2),
(9, '', '', 'Ten Scholastica students were awarded for achieving highest marks in different subjects in the world and in the  ...', '', '', 'Latest News-1506145759-98022.jpg', '2017-09-20', 3),
(10, '', '', 'Ten Scholastica students were awarded for achieving highest marks in different subjects in the world and in the  ...', '', '', 'news-1.jpg', '2017-09-20', 3),
(11, '', '', 'Ten Scholastica students were awarded for achieving highest marks in different subjects in the world and in the  ...', '', '', 'news-1.jpg', '2017-09-20', 3),
(12, '', '', 'Ten Scholastica students were awarded for achieving highest marks in different subjects in the world and in the  ...', '', '', 'news-1.jpg', '2017-09-20', 3),
(18, ' Student Affairs Unit', 'Student Affairs Unit', 'Enter as much criteria on the left as you wish, or click an area on the map below to begin your search in a particular borough. To find your zoned school, enter your home address below.', 'Read More', '#', 'latest-news-1506271965-327333.jpg', '0000-00-00', 1),
(23, '', '', 'Ten Scholastica students were awarded for achieving highest marks in different subjects in the world and in the  awarded for achieving highest.', '', '', '', '2017-06-06', 2),
(24, '', '', 'Ten Scholastica students were awarded for achieving highest marks in different subjects in the world and in the  ... ...', '', '', 'event-news-1506277665-725312.jpg', '2017-09-12', 3);

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
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `post_id` int(11) NOT NULL,
  `post_title` varchar(100) CHARACTER SET utf8 NOT NULL,
  `post_subtitle` varchar(100) CHARACTER SET utf8 NOT NULL,
  `post_details` longtext CHARACTER SET utf8 NOT NULL,
  `post_btn_txt` varchar(20) CHARACTER SET utf8 NOT NULL,
  `post_btn_url` varchar(100) CHARACTER SET utf8 NOT NULL,
  `post_date` datetime NOT NULL,
  `post_image` varchar(255) CHARACTER SET utf8 NOT NULL,
  `post_cat_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`post_id`, `post_title`, `post_subtitle`, `post_details`, `post_btn_txt`, `post_btn_url`, `post_date`, `post_image`, `post_cat_id`) VALUES
(1, 'Welcome to', 'SCHOLASTICA SCHOOL', 'SCHOLASTICA WAS ESTABLISHED IN 1977 BY MRS. YASMEEN MURSHED. IT WAS FOUNDED WITH A MISSION TO PROVIDE A BALANCED AND WELL-ROUNDED EDUCATION FOR ALL OUR STUDENTS, USING ENGLISH AS THE PRIMARY MEDIUM OF INSTRUCTION BUT PLACING EQUAL EMPHASIS ON BANGLA. SCHOLASTICA&amp;amp;amp;#039;S MISSION IS TO BUILD CURIOUS, KNOWLEDGEABLE AND CARING YOUNG INDIVIDUALS, WHO WILL BE EQUIPPED TO TACKLE HEAD-ON THE CHALLENGES OF OUR MODERN-DAY &amp;amp;amp;quot;GLOBAL VILLAGE&amp;amp;amp;quot;. THEY WILL ASPIRE TO BECOME RESPONSIBLE CITIZENS, WHO WILL EMBRACE AND RESPECT PEOPLE FROM OTHER CULTURES AND WALKS OF LIFE.', 'Read More', '#', '2017-09-20 11:18:21', '', 1),
(2, 'Academics', '', '<p>Scholastica is one of the largest private English-medium schools in Bangladesh, offering pre-school to A\' Level classes of an international standard. It offers a complete school-leaving course using English as the medium of instruction. We emphasize equal proficiency in Bangla as a necessary prerequisite for a well-rounded education for Bangladeshi students.</p><p>Scholastica\'s curriculum has been designed to reflect the specific needs of Bangladeshi students keeping in mind their heritage, culture and national identity. </p><p>The school has designed a comprehensive curriculum for all classes leading to the University of Cambridge \nInternational Examinations Ordinary and Advanced Level General Certificate of Education courses which are \ntaught in Classes IX to XII. These examinations are administered by the British Council, Dhaka. </p>', '', '', '2017-09-13 00:00:00', 'Latest News-1506150917-59757.jpg', 2),
(3, 'Admission in Scholastica', '', '<p>The admissions process in Scholastica is very transparent. Anyone is welcome to apply without any reference. Absolutely no donations are accepted; only published fees are required. </p>\n <p>During the admissions process, interviews are held by a panel of senior management, not a single individual. The interview panel is a team of qualified individuals from Scholastica\'s senior management. All decisions for admission are made through a committee, not by any one individual.</p>\n<p>No external agents/agencies are appointed or involved in the admissions process; the Admissions Office is the only point of contact for all admissions-related applications and inquiries. No Ascent Group personnel have a role in the admissions process except those in the Admissions Office and on the interview and selection panel. </p>\n                        \n<p>During the admissions process, interviews are held by a panel of senior management, not a single individual. The interview panel is a team of qualified individuals from Scholastica\'s senior management. All decisions for admission are made through a committee, not by any one individual.</p>', '', '', '2017-09-06 00:00:00', 'Latest News-1506151246-87015.jpg', 3),
(4, 'Our Curriculum', '', 'Scholastica provides a complete school-leaving course of study, from pre-school to the A\' Levels. We have developed our own curriculum; it aims to deliver a holistic education program combining the core competencies of the national and the British curricula. The comprehensive curriculum designed for the elementary, secondary and high school classes ultimately leads to the University of Cambridge International Examinations Ordinary and Advanced Level General Certificate of Education exams, taught in the high school. These examinations are conducted under the auspices of the British Council, Dhaka.', '', '', '2017-09-11 00:00:00', '', 4),
(5, 'Junior School', '', 'In the Junior school, from Playgroup to Kindergarten II, we encourage children to observe their surroundings, think independently, ask questions and freely express themselves without fear or inhibition, thereby honing their observation, listening, verbal ', '', '', '2017-09-20 00:00:00', '', 4),
(6, 'Middle School', '', 'From Class I onwards, our curriculum exposes students to more subjects in a formal classroom setting. The curriculum focuses on developing numeracy, literacy and an understanding of the environment and our surroundings. Learning in these classes is design', '', '', '2017-09-19 00:00:00', '', 4),
(7, 'About Us', '', '<p>Scholastica\'s mission is to develop curious, knowledgeable and caring young individuals, who will be equipped to tackle head-on the challenges of our modern-day \"global village.\" They will aspire to become responsible and productive citizens, who will contribute to their communities, and embrace and respect people from other cultures and walks of life.</p><p>\n\nScholastica was established in 1977 by Mrs. Yasmeen Murshed. It was founded to provide a balanced and well-rounded education for students, using English as the primary medium of instruction but placing equal emphasis on Bangla.</p>\n<p>\nThe customized curriculum builds the knowledge, skills and attitudes that students need to succeed in their academic and professional careers after school. Students are encouraged to challenge themselves, their peers and their teachers in a setting that gives them confidence and builds their skills to think independently.</p>', '', '', '2017-09-20 00:00:00', 'about-ct.jpg', 5),
(8, 'High School', '', 'Scholastica\'s O\' Level program encourages students to engage, invent, manage and compete - equipping them for eventual success in the public examinations under Cambridge International Examinations. Years of experience teaching the O\' Levels has allowed us', '', '', '2017-09-06 00:00:00', '', 4);

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
(1, 'Career and Technical Education', '', 'Enter as much criteria on the left as you wish, or click an area on the map below to begin your search in a particular borough. To find your zoned school, enter your home address below.', 'Read More', '#', 'slide-1506069119-84033.jpg', 1),
(2, 'Kindergarten Offer Letters', '', 'Providing excellent education since 1977 .Scholastica was established in 1977 by Mrs. Yasmeen Murshed. Scholastica was established in 1977 by Mrs. Yasmeen Murshed..... ', 'Read More', '#', 'slider-two.jpg', 0),
(3, 'Elementary Schools', 'click an area on the map below to begin.', 'click an area on the map below to begin your search in a particular borough. To find your zoned school, enter your enter your home address below.', 'Read More', '#', 'slider-three.jpg', 0);

-- --------------------------------------------------------

--
-- Table structure for table `social`
--

CREATE TABLE `social` (
  `social_id` int(11) NOT NULL,
  `social_fa_class` varchar(20) NOT NULL,
  `social_link` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `social`
--

INSERT INTO `social` (`social_id`, `social_fa_class`, `social_link`) VALUES
(1, 'facebook', 'https://www.facebook.com/'),
(2, 'twitter', 'https://twitter.com/'),
(3, 'google-plus', 'https://plus.google.com/'),
(4, 'linkedin', 'https://www.linkedin.com/'),
(5, 'pinterest-p', 'https://www.pinterest.com/'),
(6, 'youtube', 'https://www.youtube.com/');

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
(1, 'shahriar', '01710835653', 'shahriarcse@gmail.com', 'admin', '21232f297a57a5a743894a0e4a801fc3', 1, 'User-1505827153-8174621.png'),
(2, 'shahriar', '01710835653', 'hosen.shahriar.cse@gmail.com', 'shahriarcse', 'd41d8cd98f00b204e9800998ecf8427e', 1, 'User-1506088517-8521266.png');

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
-- Indexes for table `banners`
--
ALTER TABLE `banners`
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
  ADD PRIMARY KEY (`comment_id`);

--
-- Indexes for table `footer_info`
--
ALTER TABLE `footer_info`
  ADD PRIMARY KEY (`finfo_id`),
  ADD KEY `finfo_cat_id` (`finfo_cat_id`);

--
-- Indexes for table `footer_info_category`
--
ALTER TABLE `footer_info_category`
  ADD PRIMARY KEY (`finfo_cat_id`);

--
-- Indexes for table `gallery`
--
ALTER TABLE `gallery`
  ADD PRIMARY KEY (`pslide_id`);

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
-- AUTO_INCREMENT for table `banners`
--
ALTER TABLE `banners`
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
  MODIFY `comment_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `footer_info`
--
ALTER TABLE `footer_info`
  MODIFY `finfo_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `footer_info_category`
--
ALTER TABLE `footer_info_category`
  MODIFY `finfo_cat_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `gallery`
--
ALTER TABLE `gallery`
  MODIFY `pslide_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `menu`
--
ALTER TABLE `menu`
  MODIFY `menu_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `news`
--
ALTER TABLE `news`
  MODIFY `news_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;
--
-- AUTO_INCREMENT for table `news_category`
--
ALTER TABLE `news_category`
  MODIFY `news_cat_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
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
  MODIFY `social_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
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
-- Constraints for table `banners`
--
ALTER TABLE `banners`
  ADD CONSTRAINT `banners_ibfk_1` FOREIGN KEY (`banner_cat_id`) REFERENCES `banner_category` (`banner_cat_id`);

--
-- Constraints for table `footer_info`
--
ALTER TABLE `footer_info`
  ADD CONSTRAINT `footer_info_ibfk_1` FOREIGN KEY (`finfo_cat_id`) REFERENCES `footer_info_category` (`finfo_cat_id`);

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
