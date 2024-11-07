-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Nov 06, 2024 at 03:43 AM
-- Server version: 5.7.21-21
-- PHP Version: 8.1.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `webtesti_ucb`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `admin_id` int(11) NOT NULL,
  `name` longtext,
  `phone` longtext,
  `address` longtext,
  `email` longtext,
  `password` longtext,
  `role` varchar(10) DEFAULT NULL,
  `timestamp` varchar(20) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`admin_id`, `name`, `phone`, `address`, `email`, `password`, `role`, `timestamp`) VALUES
(1, 'UCB', '+91 123456789', 'address', 'support@makent.in', '40fc9b5fe8bace541deeb34bac5e010ee5032207', '1', '1503661283'),
(4, 'Shahid', '+91 9876543210', 'M.H. Compound, LBS Road, Kurla(w), Mumbai-400071', 'shahid.makent@gmail.com', '7c4a8d09ca3762af61e59520943dc26494f8941b', '2', NULL),
(5, 'AlIaHmAd PaSa', '+919876543210', 'Address1', 'alipasha.makent@gmail.com', '7c4a8d09ca3762af61e59520943dc26494f8941b', '1', NULL),
(6, 'UCB', '+91 123456789', 'address', 'rashid.makent@gmail.com', '4d33a5be7d32076ecb719b41483d2f5e9b74ceb7', '1', '1503661283');

-- --------------------------------------------------------

--
-- Table structure for table `business_settings`
--

CREATE TABLE `business_settings` (
  `business_settings_id` int(11) NOT NULL,
  `type` longtext,
  `status` varchar(10) DEFAULT NULL,
  `value` longtext
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `business_settings`
--

INSERT INTO `business_settings` (`business_settings_id`, `type`, `status`, `value`) VALUES
(1, 'paypal_email', 'ok', ''),
(2, 'shipping_cost', 'ok', '10'),
(3, 'shipping_cost_type', '', 'product_wise'),
(4, 'currency', '', '27'),
(6, 'shipment_info', '', '<p><span style=\"line-height: 17.1429px;\">&nbsp;</span></p>'),
(7, 'currency_name', '', 'Dollar'),
(8, 'exchange', '', '80'),
(9, 'paypal_set', '', 'ok'),
(10, 'paypal_type', '', 'sandbox'),
(11, 'faqs', '', '[{\"question\":\"Registration\",\"answer\":\"<p class=\\\"MsoNormal\\\"><span lang=\\\"EN-IN\\\" style=\\\"font-size:11.0pt;font-family:\\\" calibri\\\",\\\"sans-serif\\\";=\\\"\\\" mso-fareast-font-family:\\\"times=\\\"\\\" new=\\\"\\\" roman\\\";mso-bidi-font-family:arial;=\\\"\\\" border:none=\\\"\\\" windowtext=\\\"\\\" 1.0pt;mso-border-alt:none=\\\"\\\" 0in;padding:0in;=\\\"\\\" mso-font-kerning:0pt;mso-ansi-language:en-in;mso-fareast-language:en-in\\\"=\\\"\\\">How do\\r\\nI register?<\\/span><\\/p><p class=\\\"MsoNormal\\\"><span style=\\\"font-size: 11pt;\\\">Simply,\\r\\ngo to the \\\"Registration\\\" section and click on \\\"Registration\\\"\\r\\nand that will take you to the registration page, wherein you can submit the\\r\\nrelevant information. This information will be fed in your account for future.<\\/span><\\/p><p class=\\\"MsoNormal\\\"><span lang=\\\"EN-IN\\\" style=\\\"font-size:11.0pt;font-family:\\\" calibri\\\",\\\"sans-serif\\\";=\\\"\\\" mso-fareast-font-family:\\\"times=\\\"\\\" new=\\\"\\\" roman\\\";mso-bidi-font-family:arial;=\\\"\\\" border:none=\\\"\\\" windowtext=\\\"\\\" 1.0pt;mso-border-alt:none=\\\"\\\" 0in;padding:0in;=\\\"\\\" mso-font-kerning:0pt;mso-ansi-language:en-in;mso-fareast-language:en-in\\\"=\\\"\\\">Is\\r\\nregistration mandatory to shop?<o:p><\\/o:p><\\/span><\\/p><p class=\\\"MsoNormal\\\"><span lang=\\\"EN-IN\\\" style=\\\"font-size:11.0pt;font-family:\\\" calibri\\\",\\\"sans-serif\\\";=\\\"\\\" mso-fareast-font-family:\\\"times=\\\"\\\" new=\\\"\\\" roman\\\";mso-bidi-font-family:arial;=\\\"\\\" mso-font-kerning:0pt;mso-ansi-language:en-in;mso-fareast-language:en-in\\\"=\\\"\\\">We\\r\\nrecommend you to register in order to track your order and get all the\\r\\nnecessary details related to your account.<\\/span><\\/p><p class=\\\"MsoNormal\\\"><span style=\\\"font-size: 11pt;\\\">What\\r\\nis Quick Buy?<\\/span><br><\\/p><p class=\\\"MsoNormal\\\"><span lang=\\\"EN-IN\\\" style=\\\"font-size:11.0pt;font-family:\\\" calibri\\\",\\\"sans-serif\\\";=\\\"\\\" mso-fareast-font-family:\\\"times=\\\"\\\" new=\\\"\\\" roman\\\";mso-bidi-font-family:arial;=\\\"\\\" mso-font-kerning:0pt;mso-ansi-language:en-in;mso-fareast-language:en-in\\\"=\\\"\\\">Liked\\r\\na product and quickly wanted to buy? Just click at the Quick Buy option, Enter\\r\\nyour registered e-mail address, your shipping and payment details at the same\\r\\npage and \\\"Confirm\\\" the order.<\\/span><\\/p><p class=\\\"MsoNormal\\\"><span lang=\\\"EN-IN\\\" style=\\\"font-size:11.0pt;font-family:\\\" calibri\\\",\\\"sans-serif\\\";=\\\"\\\" mso-fareast-font-family:\\\"times=\\\"\\\" new=\\\"\\\" roman\\\";mso-bidi-font-family:arial;=\\\"\\\" border:none=\\\"\\\" windowtext=\\\"\\\" 1.0pt;mso-border-alt:none=\\\"\\\" 0in;padding:0in;=\\\"\\\" mso-font-kerning:0pt;mso-ansi-language:en-in;mso-fareast-language:en-in\\\"=\\\"\\\">What\\r\\ndo I do if I forget my password? How do I reset my password?<\\/span><span lang=\\\"EN-IN\\\" style=\\\"font-size:11.0pt;font-family:\\\" calibri\\\",\\\"sans-serif\\\";=\\\"\\\" mso-fareast-font-family:\\\"times=\\\"\\\" new=\\\"\\\" roman\\\";mso-bidi-font-family:arial;=\\\"\\\" mso-font-kerning:0pt;mso-ansi-language:en-in;mso-fareast-language:en-in\\\"=\\\"\\\"><o:p><\\/o:p><\\/span><\\/p><p class=\\\"MsoNormal\\\">\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n<\\/p><p class=\\\"MsoNormal\\\"><span lang=\\\"EN-IN\\\" style=\\\"font-size:11.0pt;font-family:\\\" calibri\\\",\\\"sans-serif\\\";=\\\"\\\" mso-fareast-font-family:\\\"times=\\\"\\\" new=\\\"\\\" roman\\\";mso-bidi-font-family:arial;=\\\"\\\" mso-font-kerning:0pt;mso-ansi-language:en-in;mso-fareast-language:en-in\\\"=\\\"\\\">Forgot\\r\\nyour password? Resetting it is very simple - just click on the \\u201cRegistration\\\"\\r\\ntab and click on \\\"Forgot Password\\\" and enter your e-mail address in\\r\\nthe Box appears. Your password will be sent to your registered e-mail address.&nbsp;<o:p><\\/o:p><\\/span><\\/p>\"},{\"question\":\"My Account\",\"answer\":\"<p class=\\\"MsoNormal\\\"><span lang=\\\"EN-IN\\\" style=\\\"font-size:11.0pt;font-family:\\\" calibri\\\",\\\"sans-serif\\\";=\\\"\\\" mso-fareast-font-family:\\\"times=\\\"\\\" new=\\\"\\\" roman\\\";mso-bidi-font-family:arial;=\\\"\\\" border:none=\\\"\\\" windowtext=\\\"\\\" 1.0pt;mso-border-alt:none=\\\"\\\" 0in;padding:0in;=\\\"\\\" mso-font-kerning:0pt;mso-ansi-language:en-in;mso-fareast-language:en-in\\\"=\\\"\\\">How do\\r\\nI login to Bigdeals24x7.com?<\\/span><span lang=\\\"EN-IN\\\" style=\\\"font-size:11.0pt;\\r\\nfont-family:\\\" calibri\\\",\\\"sans-serif\\\";mso-fareast-font-family:\\\"times=\\\"\\\" new=\\\"\\\" roman\\\";=\\\"\\\" mso-bidi-font-family:arial;mso-font-kerning:0pt;mso-ansi-language:en-in;=\\\"\\\" mso-fareast-language:en-in\\\"=\\\"\\\"><o:p><\\/o:p><\\/span><\\/p><p class=\\\"MsoNormal\\\"><span lang=\\\"EN-IN\\\" style=\\\"font-size:11.0pt;font-family:\\\" calibri\\\",\\\"sans-serif\\\";=\\\"\\\" mso-fareast-font-family:\\\"times=\\\"\\\" new=\\\"\\\" roman\\\";mso-bidi-font-family:arial;=\\\"\\\" mso-font-kerning:0pt;mso-ansi-language:en-in;mso-fareast-language:en-in\\\"=\\\"\\\">You\\r\\ncan go to \\\"Registration\\\". Enter your e-mail address, password and other\\r\\ndetails, and then click on \\\"Register\\\".<\\/span><\\/p><p class=\\\"MsoNormal\\\"><span lang=\\\"EN-IN\\\" style=\\\"font-size:11.0pt;font-family:\\\" calibri\\\",\\\"sans-serif\\\";=\\\"\\\" mso-fareast-font-family:\\\"times=\\\"\\\" new=\\\"\\\" roman\\\";mso-bidi-font-family:arial;=\\\"\\\" border:none=\\\"\\\" windowtext=\\\"\\\" 1.0pt;mso-border-alt:none=\\\"\\\" 0in;padding:0in;=\\\"\\\" mso-font-kerning:0pt;mso-ansi-language:en-in;mso-fareast-language:en-in\\\"=\\\"\\\">What\\r\\nis Account Summary?<\\/span><span lang=\\\"EN-IN\\\" style=\\\"font-size:11.0pt;font-family:\\r\\n\\\" calibri\\\",\\\"sans-serif\\\";mso-fareast-font-family:\\\"times=\\\"\\\" new=\\\"\\\" roman\\\";mso-bidi-font-family:=\\\"\\\" arial;mso-font-kerning:0pt;mso-ansi-language:en-in;mso-fareast-language:en-in\\\"=\\\"\\\"><o:p><\\/o:p><\\/span><\\/p><p class=\\\"MsoNormal\\\"><span lang=\\\"EN-IN\\\" style=\\\"font-size:11.0pt;font-family:\\\" calibri\\\",\\\"sans-serif\\\";=\\\"\\\" mso-fareast-font-family:\\\"times=\\\"\\\" new=\\\"\\\" roman\\\";mso-bidi-font-family:arial;=\\\"\\\" mso-font-kerning:0pt;mso-ansi-language:en-in;mso-fareast-language:en-in\\\"=\\\"\\\">Account\\r\\nSummary under \\\"My Account\\\" covers all the relevant information about\\r\\nyour <span style=\\\"border:none windowtext 1.0pt;mso-border-alt:none windowtext 0in;\\r\\npadding:0in\\\">Bigdeals24x7<\\/span> account like Orders, Credits, Profile\\r\\ninformation, Gift vouchers, etc.<\\/span><\\/p><p class=\\\"MsoNormal\\\"><span lang=\\\"EN-IN\\\" style=\\\"font-size:11.0pt;font-family:\\\" calibri\\\",\\\"sans-serif\\\";=\\\"\\\" mso-fareast-font-family:\\\"times=\\\"\\\" new=\\\"\\\" roman\\\";mso-bidi-font-family:arial;=\\\"\\\" border:none=\\\"\\\" windowtext=\\\"\\\" 1.0pt;mso-border-alt:none=\\\"\\\" 0in;padding:0in;=\\\"\\\" mso-font-kerning:0pt;mso-ansi-language:en-in;mso-fareast-language:en-in\\\"=\\\"\\\">Where\\r\\ndo I get my Invoice?<\\/span><span lang=\\\"EN-IN\\\" style=\\\"font-size:11.0pt;font-family:\\r\\n\\\" calibri\\\",\\\"sans-serif\\\";mso-fareast-font-family:\\\"times=\\\"\\\" new=\\\"\\\" roman\\\";mso-bidi-font-family:=\\\"\\\" arial;mso-font-kerning:0pt;mso-ansi-language:en-in;mso-fareast-language:en-in\\\"=\\\"\\\"><o:p><\\/o:p><\\/span><\\/p><p class=\\\"MsoNormal\\\"><span lang=\\\"EN-IN\\\" style=\\\"font-size:11.0pt;font-family:\\\" calibri\\\",\\\"sans-serif\\\";=\\\"\\\" mso-fareast-font-family:\\\"times=\\\"\\\" new=\\\"\\\" roman\\\";mso-bidi-font-family:arial;=\\\"\\\" mso-font-kerning:0pt;mso-ansi-language:en-in;mso-fareast-language:en-in\\\"=\\\"\\\">You\\r\\ncan retrieve the invoice for all your complete orders from \\\"My Orders\\r\\n-&gt; Order History\\\". Go to the order for which you need an invoice. Click\\r\\non the print icon on the right hand corner of that particular order. Wait for\\r\\nfew sec for the invoice to open in the new tab which can be download or take a\\r\\nprint directly.<\\/span><\\/p><p class=\\\"MsoNormal\\\"><span lang=\\\"EN-IN\\\" style=\\\"font-size:11.0pt;font-family:\\\" calibri\\\",\\\"sans-serif\\\";=\\\"\\\" mso-fareast-font-family:\\\"times=\\\"\\\" new=\\\"\\\" roman\\\";mso-bidi-font-family:arial;=\\\"\\\" border:none=\\\"\\\" windowtext=\\\"\\\" 1.0pt;mso-border-alt:none=\\\"\\\" 0in;padding:0in;=\\\"\\\" mso-font-kerning:0pt;mso-ansi-language:en-in;mso-fareast-language:en-in\\\"=\\\"\\\">What\\r\\nis \\\"Wish list\\\"?<\\/span><span lang=\\\"EN-IN\\\" style=\\\"font-size:11.0pt;\\r\\nfont-family:\\\" calibri\\\",\\\"sans-serif\\\";mso-fareast-font-family:\\\"times=\\\"\\\" new=\\\"\\\" roman\\\";=\\\"\\\" mso-bidi-font-family:arial;mso-font-kerning:0pt;mso-ansi-language:en-in;=\\\"\\\" mso-fareast-language:en-in\\\"=\\\"\\\"><o:p><\\/o:p><\\/span><\\/p><p class=\\\"MsoNormal\\\">\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n<\\/p><p class=\\\"MsoNormal\\\"><span lang=\\\"EN-IN\\\" style=\\\"font-size:11.0pt;font-family:\\\" calibri\\\",\\\"sans-serif\\\";=\\\"\\\" mso-fareast-font-family:\\\"times=\\\"\\\" new=\\\"\\\" roman\\\";mso-bidi-font-family:arial;=\\\"\\\" mso-font-kerning:0pt;mso-ansi-language:en-in;mso-fareast-language:en-in\\\"=\\\"\\\">This\\r\\nsection contains all the products you have liked and want to buy later by\\r\\nclicking the Heart given on each product page.<o:p><\\/o:p><\\/span><\\/p>\"},{\"question\":\"Other Queries\",\"answer\":\"<p class=\\\"MsoNormal\\\"><span lang=\\\"EN-IN\\\" style=\\\"font-size:11.0pt;font-family:\\\" calibri\\\",\\\"sans-serif\\\";=\\\"\\\" mso-fareast-font-family:\\\"times=\\\"\\\" new=\\\"\\\" roman\\\";mso-bidi-font-family:arial;=\\\"\\\" border:none=\\\"\\\" windowtext=\\\"\\\" 1.0pt;mso-border-alt:none=\\\"\\\" 0in;padding:0in;=\\\"\\\" mso-font-kerning:0pt;mso-ansi-language:en-in;mso-fareast-language:en-in\\\"=\\\"\\\">How to\\r\\nbecome affiliate with Bigdeals24x7.com?<\\/span><span lang=\\\"EN-IN\\\" style=\\\"font-size:11.0pt;font-family:\\\" calibri\\\",\\\"sans-serif\\\";mso-fareast-font-family:=\\\"\\\" \\\"times=\\\"\\\" new=\\\"\\\" roman\\\";mso-bidi-font-family:arial;mso-font-kerning:0pt;mso-ansi-language:=\\\"\\\" en-in;mso-fareast-language:en-in\\\"=\\\"\\\"><o:p><\\/o:p><\\/span><\\/p><p class=\\\"MsoNormal\\\"><span lang=\\\"EN-IN\\\" style=\\\"font-size:11.0pt;font-family:\\\" calibri\\\",\\\"sans-serif\\\";=\\\"\\\" mso-fareast-font-family:\\\"times=\\\"\\\" new=\\\"\\\" roman\\\";mso-bidi-font-family:arial;=\\\"\\\" mso-font-kerning:0pt;mso-ansi-language:en-in;mso-fareast-language:en-in\\\"=\\\"\\\">You\\r\\ncan send a mail showing your interest or any other related information to\\r\\nInfo@b<span style=\\\"border:none windowtext 1.0pt;mso-border-alt:none windowtext 0in;\\r\\npadding:0in\\\">igdeals24x7<\\/span>.com<\\/span><\\/p><p class=\\\"MsoNormal\\\"><span lang=\\\"EN-IN\\\" style=\\\"font-size:11.0pt;font-family:\\\" calibri\\\",\\\"sans-serif\\\";=\\\"\\\" mso-fareast-font-family:\\\"times=\\\"\\\" new=\\\"\\\" roman\\\";mso-bidi-font-family:arial;=\\\"\\\" border:none=\\\"\\\" windowtext=\\\"\\\" 1.0pt;mso-border-alt:none=\\\"\\\" 0in;padding:0in;=\\\"\\\" mso-font-kerning:0pt;mso-ansi-language:en-in;mso-fareast-language:en-in\\\"=\\\"\\\">Do you\\r\\nuse my personal information?<\\/span><span lang=\\\"EN-IN\\\" style=\\\"font-size:11.0pt;\\r\\nfont-family:\\\" calibri\\\",\\\"sans-serif\\\";mso-fareast-font-family:\\\"times=\\\"\\\" new=\\\"\\\" roman\\\";=\\\"\\\" mso-bidi-font-family:arial;mso-font-kerning:0pt;mso-ansi-language:en-in;=\\\"\\\" mso-fareast-language:en-in\\\"=\\\"\\\"><o:p><\\/o:p><\\/span><\\/p><p class=\\\"MsoNormal\\\"><span lang=\\\"EN-IN\\\" style=\\\"font-size:11.0pt;font-family:\\\" calibri\\\",\\\"sans-serif\\\";=\\\"\\\" mso-fareast-font-family:\\\"times=\\\"\\\" new=\\\"\\\" roman\\\";mso-bidi-font-family:arial;=\\\"\\\" mso-font-kerning:0pt;mso-ansi-language:en-in;mso-fareast-language:en-in\\\"=\\\"\\\">We\\r\\nrespect your Privacy, when you do purchase online, you are automatically\\r\\nenrolled for SMS and emails communication for your orders and also where we\\r\\nhighlight new products, exclusive sales and promotions. We do not share, rent\\r\\nor sell our list to a third party. We do not keep credit card information on\\r\\nfile. It\\u2019s only the shipping address, Phone number and email address that is\\r\\nsaved for future reference and your convenience when you shop next time.<\\/span><\\/p><p class=\\\"MsoNormal\\\"><span lang=\\\"EN-IN\\\" style=\\\"font-size:11.0pt;font-family:\\\" calibri\\\",\\\"sans-serif\\\";=\\\"\\\" mso-fareast-font-family:\\\"times=\\\"\\\" new=\\\"\\\" roman\\\";mso-bidi-font-family:arial;=\\\"\\\" border:none=\\\"\\\" windowtext=\\\"\\\" 1.0pt;mso-border-alt:none=\\\"\\\" 0in;padding:0in;=\\\"\\\" mso-font-kerning:0pt;mso-ansi-language:en-in;mso-fareast-language:en-in\\\"=\\\"\\\">How do\\r\\nI purchase something if I live outside India?<\\/span><span lang=\\\"EN-IN\\\" style=\\\"font-size:11.0pt;font-family:\\\" calibri\\\",\\\"sans-serif\\\";mso-fareast-font-family:=\\\"\\\" \\\"times=\\\"\\\" new=\\\"\\\" roman\\\";mso-bidi-font-family:arial;mso-font-kerning:0pt;mso-ansi-language:=\\\"\\\" en-in;mso-fareast-language:en-in\\\"=\\\"\\\"><o:p><\\/o:p><\\/span><\\/p><p>\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n\\r\\n<\\/p><p class=\\\"MsoNormal\\\"><span lang=\\\"EN-IN\\\" style=\\\"font-size:11.0pt;font-family:\\\" calibri\\\",\\\"sans-serif\\\";=\\\"\\\" mso-fareast-font-family:\\\"times=\\\"\\\" new=\\\"\\\" roman\\\";mso-bidi-font-family:arial;=\\\"\\\" mso-font-kerning:0pt;mso-ansi-language:en-in;mso-fareast-language:en-in\\\"=\\\"\\\">We are\\r\\ncurrently not servicing orders outside of India.<o:p><\\/o:p><\\/span><\\/p>\"}]'),
(12, 'cash_set', '', 'ok'),
(13, 'stripe_set', '', 'ok'),
(14, 'stripe_secret', '', ''),
(15, 'stripe_publishable', '', ''),
(16, 'home_def_currency', '', '27'),
(17, 'c2_set', NULL, 'ok'),
(18, 'c2_user', NULL, NULL),
(19, 'c2_secret', NULL, NULL),
(20, 'c2_type', NULL, NULL),
(21, 'currency_format', NULL, 'us'),
(22, 'symbol_format', NULL, 's_amount'),
(23, 'no_of_decimals', NULL, '2'),
(24, 'vp_set', NULL, NULL),
(25, 'vp_merchant_id', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `category_id` int(11) NOT NULL,
  `category_name` longtext,
  `base_price` int(11) NOT NULL,
  `description` longtext,
  `color_code` varchar(10) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`category_id`, `category_name`, `base_price`, `description`, `color_code`) VALUES
(14, 'Mens', 200000, '1CR VIRTUAL MONEY', NULL),
(13, 'ICONS 2', 6000000, 'Marquee Players', NULL),
(7, 'ICONS 1', 6000000, 'Marquee Players', NULL),
(8, 'Senior Citizen', 4000000, 'Experienced Players', NULL),
(9, 'Women', 2000000, 'Women Players', NULL),
(10, 'OWNERS', 4000000, 'Team Owner', NULL),
(12, 'Kids', 3000000, 'Less Skilled Players', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `ci_sessions`
--

CREATE TABLE `ci_sessions` (
  `id` varchar(40) NOT NULL,
  `ip_address` varchar(45) NOT NULL,
  `timestamp` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `data` blob NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `ci_sessions`
--

INSERT INTO `ci_sessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES
('00b6564b65e2e508820d07207f15c4696dad71ed', '2405:201:2f:3827:c127:dcba:d658:2a93', 1725348738, 0x5f5f63695f6c6173745f726567656e65726174657c693a313732353334383733373b),
('01df265c2e5b3d7a8d50dfcc8884c5a5072cb953', '103.123.224.151', 1649160471, 0x5f5f63695f6c6173745f726567656e65726174657c693a313634393135383532393b6c6f67696e7c733a333a22796573223b61646d696e5f6c6f67696e7c733a333a22796573223b61646d696e5f69647c733a313a2231223b61646d696e5f6e616d657c733a333a22554342223b7469746c657c733a353a2261646d696e223b6c65616775655f69647c733a313a2231223b6361745f69647c733a303a22223b707265765f736f6c64706c61796572737c613a313a7b693a303b613a313a7b733a31303a22706c61796572735f6964223b733a313a2233223b7d7d756e736f6c64706c617965727c613a333a7b693a303b733a313a2232223b693a313b733a313a2234223b693a323b733a313a2235223b7d),
('0426e09fa8858718e3d0dc23cb62b67d47602cca', '110.172.23.76', 1649164506, 0x5f5f63695f6c6173745f726567656e65726174657c693a313634393136343435383b6c6f67696e7c733a333a22796573223b61646d696e5f6c6f67696e7c733a333a22796573223b61646d696e5f69647c733a313a2231223b61646d696e5f6e616d657c733a333a22554342223b7469746c657c733a353a2261646d696e223b),
('057f8ec981fa024ccdb45811ed09178db62931cc', '103.175.61.38', 1697090116, 0x5f5f63695f6c6173745f726567656e65726174657c693a313639373039303131353b),
('05804a2a297245a700e7c931765d48e8', '103.175.61.38', 1697021425, 0x6c6f67696e7c733a333a22796573223b61646d696e5f6c6f67696e7c733a333a22796573223b61646d696e5f69647c733a313a2231223b61646d696e5f6e616d657c733a333a22554342223b7469746c657c733a353a2261646d696e223b),
('09f6c30b693936a01fabdd493e9e41ed', '103.175.61.38', 1697010119, 0x5f5f63695f6c6173745f726567656e65726174657c693a313639373031303131393b),
('0e12ed1c729a3ff57024b112e8c4ef35', '103.175.61.38', 1697009512, 0x5f5f63695f6c6173745f726567656e65726174657c693a313639373030393531323b),
('0e78b29eb7873af7e756d354bd5fe44d', '103.175.61.38', 1697009514, 0x5f5f63695f6c6173745f726567656e65726174657c693a313639373030393531343b),
('0fae806bcebe94d1d44dc5f0ac29e38c', '103.175.61.38', 1697016444, 0x6c6f67696e7c733a333a22796573223b61646d696e5f6c6f67696e7c733a333a22796573223b61646d696e5f69647c733a313a2234223b61646d696e5f6e616d657c733a363a22536861686964223b7469746c657c733a353a2261646d696e223b),
('127c90da25ee298c149e6d1ce765fe1e373eb71f', '106.209.131.186', 1649170781, 0x5f5f63695f6c6173745f726567656e65726174657c693a313634393137303538353b6c6f67696e7c733a333a22796573223b61646d696e5f6c6f67696e7c733a333a22796573223b61646d696e5f69647c733a313a2231223b61646d696e5f6e616d657c733a333a22554342223b7469746c657c733a353a2261646d696e223b),
('14b55600e0a84e4ff9e2cbdb9a4989a3', '103.175.61.38', 1697009843, 0x5f5f63695f6c6173745f726567656e65726174657c693a313639373030393834333b),
('1512784f45592b9c36ffcc97b53f06b202d3923c', '103.123.224.4', 1725283016, 0x5f5f63695f6c6173745f726567656e65726174657c693a313732353238333031363b),
('16892e8162703d00a6e664b1d776a65a', '103.175.61.38', 1697010119, 0x5f5f63695f6c6173745f726567656e65726174657c693a313639373031303131393b),
('18255ddb23d5d3083109b8ffc203d5fdf8bbcbc9', '103.175.61.38', 1697089313, 0x5f5f63695f6c6173745f726567656e65726174657c693a313639373038393232313b6c6f67696e7c733a333a22796573223b61646d696e5f6c6f67696e7c733a333a22796573223b61646d696e5f69647c733a313a2231223b61646d696e5f6e616d657c733a333a22554342223b7469746c657c733a353a2261646d696e223b),
('186d8a35eea7f54b1f8ea12cb12936d3', '103.175.61.38', 1697016033, ''),
('18e75102a9b7637fd3bba6ffa81166f6', '103.175.61.38', 1697016232, 0x6c6f67696e7c733a333a22796573223b61646d696e5f6c6f67696e7c733a333a22796573223b61646d696e5f69647c733a313a2234223b61646d696e5f6e616d657c733a363a22536861686964223b7469746c657c733a353a2261646d696e223b),
('1a66c595a230cb87621f6fd1758b79cafca6d549', '2409:40c0:101d:e42:987c:71ff:fe11:708a', 1697543717, 0x5f5f63695f6c6173745f726567656e65726174657c693a313639373534333633353b6c6f67696e7c733a333a22796573223b61646d696e5f6c6f67696e7c733a333a22796573223b61646d696e5f69647c733a313a2234223b61646d696e5f6e616d657c733a363a22536861686964223b7469746c657c733a353a2261646d696e223b),
('1b02525d17c92865e589d3c43f89f2c8', '103.175.61.38', 1697009512, 0x5f5f63695f6c6173745f726567656e65726174657c693a313639373030393531323b),
('1ccc5f541582f5c7fe3548289d08ececafbd546e', '2401:4900:57ea:2ef1:8038:e8f3:563f:24cb', 1725516788, 0x5f5f63695f6c6173745f726567656e65726174657c693a313732353531363531313b6c6f67696e7c733a333a22796573223b61646d696e5f6c6f67696e7c733a333a22796573223b61646d696e5f69647c733a313a2231223b61646d696e5f6e616d657c733a333a22554342223b7469746c657c733a353a2261646d696e223b),
('1d6d03d2e6455268318dedf55a2df385', '103.175.61.38', 1697009845, 0x5f5f63695f6c6173745f726567656e65726174657c693a313639373030393834353b),
('1efe15cf5272261127c77adf096b67ba2d0d9059', '43.245.101.20', 1697613874, 0x5f5f63695f6c6173745f726567656e65726174657c693a313639373631333837333b),
('228c055515cc7708f5e09193ed2367f9', '103.175.61.38', 1697016016, ''),
('2593023777544e32f449b2e1ff0e1953', '103.175.61.38', 1697021264, 0x5f5f63695f6c6173745f726567656e65726174657c693a313639373032313236343b),
('26dc23e9df098ab72de3ce16bfa4752995584f8a', '49.32.207.147', 1649311575, 0x5f5f63695f6c6173745f726567656e65726174657c693a313634393330383832373b6c6f67696e7c733a333a22796573223b61646d696e5f6c6f67696e7c733a333a22796573223b61646d696e5f69647c733a313a2231223b61646d696e5f6e616d657c733a333a22554342223b7469746c657c733a353a2261646d696e223b6c65616775655f69647c733a313a2231223b6361745f69647c733a313a2231223b707265765f736f6c64706c61796572737c613a31363a7b693a303b613a313a7b733a31303a22706c61796572735f6964223b733a323a223139223b7d693a313b613a313a7b733a31303a22706c61796572735f6964223b733a323a223138223b7d693a323b613a313a7b733a31303a22706c61796572735f6964223b733a313a2235223b7d693a333b613a313a7b733a31303a22706c61796572735f6964223b733a323a223231223b7d693a343b613a313a7b733a31303a22706c61796572735f6964223b733a323a223235223b7d693a353b613a313a7b733a31303a22706c61796572735f6964223b733a323a223331223b7d693a363b613a313a7b733a31303a22706c61796572735f6964223b733a323a223237223b7d693a373b613a313a7b733a31303a22706c61796572735f6964223b733a323a223339223b7d693a383b613a313a7b733a31303a22706c61796572735f6964223b733a323a223431223b7d693a393b613a313a7b733a31303a22706c61796572735f6964223b733a323a223334223b7d693a31303b613a313a7b733a31303a22706c61796572735f6964223b733a323a223230223b7d693a31313b613a313a7b733a31303a22706c61796572735f6964223b733a323a223434223b7d693a31323b613a313a7b733a31303a22706c61796572735f6964223b733a323a223335223b7d693a31333b613a313a7b733a31303a22706c61796572735f6964223b733a323a223333223b7d693a31343b613a313a7b733a31303a22706c61796572735f6964223b733a323a223332223b7d693a31353b613a313a7b733a31303a22706c61796572735f6964223b733a323a223239223b7d7d756e736f6c64706c617965727c613a32313a7b693a303b733a323a223133223b693a313b733a323a223436223b693a323b733a323a223432223b693a333b733a323a223430223b693a343b733a323a223336223b693a353b733a323a223238223b693a363b733a323a223234223b693a373b733a323a223233223b693a383b733a323a223136223b693a393b733a323a223135223b693a31303b733a323a223134223b693a31313b733a313a2232223b693a31323b733a323a223132223b693a31333b733a323a223433223b693a31343b733a323a223131223b693a31353b733a323a223130223b693a31363b733a313a2239223b693a31373b733a313a2238223b693a31383b733a313a2237223b693a31393b733a313a2236223b693a32303b733a313a2234223b7d),
('2a3dbcbd5edeef4031b47e1b28e152d1', '103.175.61.38', 1697010646, 0x5f5f63695f6c6173745f726567656e65726174657c693a313639373031303634363b),
('2aef769fbf780debe293c534a3792562', '103.175.61.38', 1697016445, 0x5f5f63695f6c6173745f726567656e65726174657c693a313639373031363434353b),
('2b8c58f230e510e459ae66dc1ad12afabc618721', '103.123.224.4', 1725284139, 0x5f5f63695f6c6173745f726567656e65726174657c693a313732353238333634343b6c6f67696e7c733a333a22796573223b61646d696e5f6c6f67696e7c733a333a22796573223b61646d696e5f69647c733a313a2231223b61646d696e5f6e616d657c733a333a22554342223b7469746c657c733a353a2261646d696e223b),
('2bdcd4a7f1b03606c6c157f9b2f6ffadc2520df6', '103.175.61.38', 1697027393, 0x5f5f63695f6c6173745f726567656e65726174657c693a313639373032323135323b6c6f67696e7c733a333a22796573223b61646d696e5f6c6f67696e7c733a333a22796573223b61646d696e5f69647c733a313a2231223b61646d696e5f6e616d657c733a333a22554342223b7469746c657c733a353a2261646d696e223b),
('2d23299230ae6ae26196ddcec4165f73', '103.175.61.38', 1697015930, 0x6c6f67696e7c733a333a22796573223b61646d696e5f6c6f67696e7c733a333a22796573223b61646d696e5f69647c733a313a2234223b61646d696e5f6e616d657c733a363a22536861686964223b7469746c657c733a353a2261646d696e223b),
('2ee576c55155d92b7852b78572895922cce754b9', '103.123.224.151', 1649230354, 0x5f5f63695f6c6173745f726567656e65726174657c693a313634393232383934303b6c6f67696e7c733a333a22796573223b61646d696e5f6c6f67696e7c733a333a22796573223b61646d696e5f69647c733a313a2231223b61646d696e5f6e616d657c733a333a22554342223b7469746c657c733a353a2261646d696e223b),
('311c1de50fa0306d1037a2305d3de6d2', '103.175.61.38', 1697016418, 0x5f5f63695f6c6173745f726567656e65726174657c693a313639373031363431383b),
('371c84d72cb8eeacb2102ed9cb16278e', '103.175.61.38', 1697010146, 0x6c6f67696e7c733a333a22796573223b61646d696e5f6c6f67696e7c733a333a22796573223b61646d696e5f69647c733a313a2231223b61646d696e5f6e616d657c733a333a22554342223b7469746c657c733a353a2261646d696e223b),
('3a1e81a93425abf6a4f9348c5d65d9bd', '103.175.61.38', 1697016505, 0x6c6f67696e7c733a333a22796573223b61646d696e5f6c6f67696e7c733a333a22796573223b61646d696e5f69647c733a313a2231223b61646d696e5f6e616d657c733a333a22554342223b7469746c657c733a353a2261646d696e223b),
('3d63fe7cc620f8298abf5405bbfa97c124c7026c', '103.123.224.151', 1649231499, 0x5f5f63695f6c6173745f726567656e65726174657c693a313634393233303433303b6c6f67696e7c733a333a22796573223b61646d696e5f6c6f67696e7c733a333a22796573223b61646d696e5f69647c733a313a2231223b61646d696e5f6e616d657c733a333a22554342223b7469746c657c733a353a2261646d696e223b),
('3d82087b97c627ebb58f6bb0c7a18aa6f6209f1e', '171.51.201.129', 1649305747, 0x5f5f63695f6c6173745f726567656e65726174657c693a313634393330353339303b6c6f67696e7c733a333a22796573223b61646d696e5f6c6f67696e7c733a333a22796573223b61646d696e5f69647c733a313a2231223b61646d696e5f6e616d657c733a333a22554342223b7469746c657c733a353a2261646d696e223b6c65616775655f69647c733a313a2231223b6361745f69647c733a313a2233223b707265765f736f6c64706c61796572737c613a303a7b7d756e736f6c64706c617965727c613a353a7b693a303b733a313a2235223b693a313b733a323a223138223b693a323b733a323a223139223b693a333b733a323a223231223b693a343b733a323a223235223b7d),
('3ef0bbf373c964cdb511e99e6f17c450', '103.175.61.38', 1697016219, 0x5f5f63695f6c6173745f726567656e65726174657c693a313639373031363231393b),
('3f5deb2c642b83f9dbc49c24f834c6e7', '103.175.61.38', 1697009512, 0x5f5f63695f6c6173745f726567656e65726174657c693a313639373030393531323b),
('42d805c307b74f41720d88099130447e3fec5f15', '2409:40c0:69:88a1:38ee:3fa:28e:bb06', 1728110124, 0x5f5f63695f6c6173745f726567656e65726174657c693a313732383130393036323b6c6f67696e7c733a333a22796573223b61646d696e5f6c6f67696e7c733a333a22796573223b61646d696e5f69647c733a313a2231223b61646d696e5f6e616d657c733a333a22554342223b7469746c657c733a353a2261646d696e223b),
('4378edfa778b98cd0bd8749fc730aaba31c02cbf', '103.123.224.151', 1649246051, 0x5f5f63695f6c6173745f726567656e65726174657c693a313634393234323937313b6c6f67696e7c733a333a22796573223b61646d696e5f6c6f67696e7c733a333a22796573223b61646d696e5f69647c733a313a2231223b61646d696e5f6e616d657c733a333a22554342223b7469746c657c733a353a2261646d696e223b6c65616775655f69647c733a313a2231223b6361745f69647c733a313a2233223b707265765f736f6c64706c61796572737c613a303a7b7d756e736f6c64706c617965727c613a353a7b693a303b733a313a2235223b693a313b733a323a223138223b693a323b733a323a223139223b693a333b733a323a223231223b693a343b733a323a223235223b7d),
('4516489f6be545b1f4cade0ea60622c355c592ef', '103.123.224.4', 1725367728, 0x5f5f63695f6c6173745f726567656e65726174657c693a313732353336323935333b6c6f67696e7c733a333a22796573223b61646d696e5f6c6f67696e7c733a333a22796573223b61646d696e5f69647c733a313a2231223b61646d696e5f6e616d657c733a333a22554342223b7469746c657c733a353a2261646d696e223b),
('4653434b0b49bdd01ad53534b2e7a3d8', '103.175.61.38', 1697015997, 0x5f5f63695f6c6173745f726567656e65726174657c693a313639373031353939373b),
('46773595ceef825e00c674fbb161a1abfab47ae5', '103.123.224.4', 1725283015, 0x5f5f63695f6c6173745f726567656e65726174657c693a313732353238333031353b),
('46c5ce102ab3c1e39c8d86ae96451d848e1d0b1d', '115.96.218.187', 1649236740, 0x5f5f63695f6c6173745f726567656e65726174657c693a313634393233363733393b),
('46c762c4d08ad64b8460570ea8fb4288', '103.175.61.38', 1697016445, 0x5f5f63695f6c6173745f726567656e65726174657c693a313639373031363434343b),
('47217cbaf3fb2912255e86f8f7a2a31243be3500', '124.40.244.36', 1649159284, 0x5f5f63695f6c6173745f726567656e65726174657c693a313634393135393237363b),
('480649f4dc5c24753d4ff372a7e68272ba7b51de', '103.123.224.4', 1725283013, 0x5f5f63695f6c6173745f726567656e65726174657c693a313732353238333031333b),
('48d0ad7017dee84b2f33c44a1c03d1746b20ad87', '115.96.218.187', 1649196601, 0x5f5f63695f6c6173745f726567656e65726174657c693a313634393139363630303b),
('4f6447cfb34b9aa202b9d052f2658307', '103.175.61.38', 1697010951, 0x5f5f63695f6c6173745f726567656e65726174657c693a313639373031303935313b),
('51eebb410a500d521c3162e606e34d98', '103.175.61.38', 1697021287, 0x5f5f63695f6c6173745f726567656e65726174657c693a313639373032313238373b),
('529c7dc1b7c91400d909d929d18b54b7', '103.175.61.38', 1697016418, 0x5f5f63695f6c6173745f726567656e65726174657c693a313639373031363431383b),
('5375bc4bbd820c2d6f90ee7c65fd3b74', '103.175.61.38', 1697021267, 0x5f5f63695f6c6173745f726567656e65726174657c693a313639373032313236373b),
('54b241681b613d5a65958fce6ac7dd0168e14181', '103.175.61.38', 1697634350, 0x5f5f63695f6c6173745f726567656e65726174657c693a313639373633333531313b6c6f67696e7c733a333a22796573223b61646d696e5f6c6f67696e7c733a333a22796573223b61646d696e5f69647c733a313a2231223b61646d696e5f6e616d657c733a333a22554342223b7469746c657c733a353a2261646d696e223b6c65616775655f69647c733a313a2231223b6361745f69647c733a313a2238223b707265765f736f6c64706c61796572737c613a303a7b7d756e736f6c64706c617965727c613a32333a7b693a303b733a323a223331223b693a313b733a323a223531223b693a323b733a323a223534223b693a333b733a323a223436223b693a343b733a323a223538223b693a353b733a323a223434223b693a363b733a323a223431223b693a373b733a323a223430223b693a383b733a323a223338223b693a393b733a323a223438223b693a31303b733a323a223439223b693a31313b733a323a223333223b693a31323b733a313a2236223b693a31333b733a323a223536223b693a31343b733a323a223231223b693a31353b733a323a223230223b693a31363b733a323a223530223b693a31373b733a323a223134223b693a31383b733a323a223132223b693a31393b733a323a223433223b693a32303b733a323a223130223b693a32313b733a313a2238223b693a32323b733a313a2231223b7d),
('558090e315dcad79fefb47d679e6c036d9c3b3cf', '103.123.224.4', 1728310885, 0x5f5f63695f6c6173745f726567656e65726174657c693a313732383239333032393b6c6f67696e7c733a333a22796573223b61646d696e5f6c6f67696e7c733a333a22796573223b61646d696e5f69647c733a313a2231223b61646d696e5f6e616d657c733a333a22554342223b7469746c657c733a353a2261646d696e223b6c65616775655f69647c733a313a2234223b6361745f69647c733a303a22223b707265765f736f6c64706c61796572737c613a313a7b693a303b613a313a7b733a31303a22706c61796572735f6964223b733a323a223830223b7d7d756e736f6c64706c617965727c613a36363a7b693a303b733a323a223331223b693a313b733a323a223237223b693a323b733a323a223434223b693a333b733a323a223537223b693a343b733a323a223536223b693a353b733a323a223638223b693a363b733a323a223637223b693a373b733a323a223533223b693a383b733a323a223636223b693a393b733a323a223334223b693a31303b733a323a223538223b693a31313b733a323a223432223b693a31323b733a323a223431223b693a31333b733a323a223430223b693a31343b733a323a223339223b693a31353b733a323a223630223b693a31363b733a323a223738223b693a31373b733a323a223737223b693a31383b733a323a223837223b693a31393b733a323a223836223b693a32303b733a323a223835223b693a32313b733a323a223834223b693a32323b733a323a223833223b693a32333b733a323a223832223b693a32343b733a323a223831223b693a32353b733a323a223739223b693a32363b733a323a223438223b693a32373b733a323a223736223b693a32383b733a323a223735223b693a32393b733a323a223734223b693a33303b733a323a223733223b693a33313b733a323a223732223b693a33323b733a323a223731223b693a33333b733a323a223730223b693a33343b733a323a223139223b693a33353b733a313a2234223b693a33363b733a313a2235223b693a33373b733a313a2236223b693a33383b733a313a2231223b693a33393b733a313a2238223b693a34303b733a313a2239223b693a34313b733a323a223130223b693a34323b733a323a223639223b693a34333b733a323a223433223b693a34343b733a323a223634223b693a34353b733a323a223133223b693a34363b733a323a223134223b693a34373b733a323a223135223b693a34383b733a323a223530223b693a34393b733a323a223138223b693a35303b733a323a223437223b693a35313b733a323a223230223b693a35323b733a323a223231223b693a35333b733a323a223233223b693a35343b733a323a223234223b693a35353b733a323a223235223b693a35363b733a323a223236223b693a35373b733a323a223631223b693a35383b733a323a223632223b693a35393b733a323a223633223b693a36303b733a323a223635223b693a36313b733a323a223333223b693a36323b733a323a223532223b693a36333b733a323a223335223b693a36343b733a323a223336223b693a36353b733a313a2232223b7d),
('5a1e9552703b73edf185ac3c8beb7c5ed8fb6036', '103.121.240.111', 1649169860, 0x5f5f63695f6c6173745f726567656e65726174657c693a313634393136383131393b6c6f67696e7c733a333a22796573223b61646d696e5f6c6f67696e7c733a333a22796573223b61646d696e5f69647c733a313a2231223b61646d696e5f6e616d657c733a333a22554342223b7469746c657c733a353a2261646d696e223b),
('5b8347ce3d1e92c0ae5827bdb9e42ee5', '103.175.61.38', 1697020885, 0x5f5f63695f6c6173745f726567656e65726174657c693a313639373032303838353b),
('5cd065562b189ec62fd324efc862bd56', '103.175.61.38', 1697010950, 0x5f5f63695f6c6173745f726567656e65726174657c693a313639373031303935303b),
('6314bb1d4eb3de8ca9bf239b79aac437', '103.175.61.38', 1697016445, 0x5f5f63695f6c6173745f726567656e65726174657c693a313639373031363434353b),
('6358d2908165ad728c53d7bf942ea4662e065a67', '103.175.61.38', 1697034763, 0x5f5f63695f6c6173745f726567656e65726174657c693a313639373033343337373b),
('640ea71f3cca3f710e7abb0d0746dfcb16a22ba0', '183.87.193.134', 1584374532, 0x5f5f63695f6c6173745f726567656e65726174657c693a313538343337303234373b),
('66dc3cc27983b5aa5c174e2f3c7aabd960f85997', '43.245.101.28', 1697548860, 0x5f5f63695f6c6173745f726567656e65726174657c693a313639373534383836303b),
('68a95452b45ecb5ecfd1c92b83b24404', '103.175.61.38', 1697009511, 0x5f5f63695f6c6173745f726567656e65726174657c693a313639373030393531313b),
('691bb5398db1343bcdb73a8f4174e762', '103.175.61.38', 1697010948, 0x5f5f63695f6c6173745f726567656e65726174657c693a313639373031303934383b),
('69de9713edbe01cb1758bc3a929680b1', '103.175.61.38', 1697020883, 0x5f5f63695f6c6173745f726567656e65726174657c693a313639373032303838333b),
('6c9434cc7ee9f004f97d4c789bf42eed', '103.175.61.38', 1697016238, 0x6c6f67696e7c733a333a22796573223b61646d696e5f6c6f67696e7c733a333a22796573223b61646d696e5f69647c733a313a2234223b61646d696e5f6e616d657c733a363a22536861686964223b7469746c657c733a353a2261646d696e223b),
('6d7b7c255b49eecd3e92973e5fb252ee', '103.175.61.38', 1697016350, 0x6c6f67696e7c733a333a22796573223b61646d696e5f6c6f67696e7c733a333a22796573223b61646d696e5f69647c733a313a2234223b61646d696e5f6e616d657c733a363a22536861686964223b7469746c657c733a353a2261646d696e223b),
('709d11057474cde565807f140a8e5dd1', '103.175.61.38', 1697015903, 0x6c6f67696e7c733a333a22796573223b61646d696e5f6c6f67696e7c733a333a22796573223b61646d696e5f69647c733a313a2234223b61646d696e5f6e616d657c733a363a22536861686964223b7469746c657c733a353a2261646d696e223b),
('7127ff82e599698b39cb7cc3dbdf550e', '103.175.61.38', 1697009511, 0x5f5f63695f6c6173745f726567656e65726174657c693a313639373030393531313b),
('75d6331ef9ead559861eb3004c709198c20b295d', '103.121.240.111', 1649170973, 0x5f5f63695f6c6173745f726567656e65726174657c693a313634393137303937333b),
('75dd4b0e6879d885e1e8ccd8459be967a0a3cd65', '106.209.131.186', 1649170600, 0x5f5f63695f6c6173745f726567656e65726174657c693a313634393137303539393b),
('79047274572c8b6b16aeb9a9f827610bf83edb03', '43.245.101.28', 1697543662, 0x5f5f63695f6c6173745f726567656e65726174657c693a313639373534333434363b6c6f67696e7c733a333a22796573223b61646d696e5f6c6f67696e7c733a333a22796573223b61646d696e5f69647c733a313a2234223b61646d696e5f6e616d657c733a363a22536861686964223b7469746c657c733a353a2261646d696e223b),
('7a804bd4e8c81a3a7dde37adad328428', '103.175.61.38', 1697010646, 0x5f5f63695f6c6173745f726567656e65726174657c693a313639373031303634363b),
('7b3d32cd5d71024ad79250b58c299eaa', '103.175.61.38', 1697021286, 0x5f5f63695f6c6173745f726567656e65726174657c693a313639373032313238363b),
('7c4fd6f9d6ffd71458f681b0177ae8d7', '103.175.61.38', 1697016220, 0x5f5f63695f6c6173745f726567656e65726174657c693a313639373031363232303b),
('7f78c8bc2babeb7ff1ea9c934f25e7fe1de864d4', '2401:4900:57ea:2ef1:bd1a:2255:8ac2:bf5f', 1725518245, 0x5f5f63695f6c6173745f726567656e65726174657c693a313732353531373338363b6c6f67696e7c733a333a22796573223b61646d696e5f6c6f67696e7c733a333a22796573223b61646d696e5f69647c733a313a2231223b61646d696e5f6e616d657c733a333a22554342223b7469746c657c733a353a2261646d696e223b),
('80524625d5d92ae40ed53c9adb5da67d', '103.175.61.38', 1697010118, 0x5f5f63695f6c6173745f726567656e65726174657c693a313639373031303131383b),
('831c1267b463d6a59446c95877f5ff178bb072c7', '103.175.61.38', 1697634383, 0x5f5f63695f6c6173745f726567656e65726174657c693a313639373633333136353b6c6f67696e7c733a333a22796573223b61646d696e5f6c6f67696e7c733a333a22796573223b61646d696e5f69647c733a313a2234223b61646d696e5f6e616d657c733a363a22536861686964223b7469746c657c733a353a2261646d696e223b),
('84dd572bc2af980f17e604a8fa68248f22c671f6', '103.123.224.151', 1649245256, 0x5f5f63695f6c6173745f726567656e65726174657c693a313634393234343534343b),
('8507dbec07772df6d23b9ef9bbd8fcb460b7ad5f', '43.245.101.28', 1697542562, 0x5f5f63695f6c6173745f726567656e65726174657c693a313639373534323231383b6c6f67696e7c733a333a22796573223b61646d696e5f6c6f67696e7c733a333a22796573223b61646d696e5f69647c733a313a2234223b61646d696e5f6e616d657c733a363a22536861686964223b7469746c657c733a353a2261646d696e223b),
('855e10ccd1adf22839a270ff47be9b645a227fc9', '103.175.61.38', 1697289004, 0x5f5f63695f6c6173745f726567656e65726174657c693a313639373238383830343b6c6f67696e7c733a333a22796573223b61646d696e5f6c6f67696e7c733a333a22796573223b61646d696e5f69647c733a313a2231223b61646d696e5f6e616d657c733a333a22554342223b7469746c657c733a353a2261646d696e223b),
('85bf86a1eb5771625eb2417f8039a7d1', '103.175.61.38', 1697010645, 0x5f5f63695f6c6173745f726567656e65726174657c693a313639373031303634353b),
('860ecf323d94fce6ce337c81c9828327', '103.175.61.38', 1697021267, 0x5f5f63695f6c6173745f726567656e65726174657c693a313639373032313236373b),
('868e38a30191deb38a45504dc203ace68319f38d', '106.209.211.88', 1649248753, 0x5f5f63695f6c6173745f726567656e65726174657c693a313634393234383735323b),
('880dbe5d00584ef43123a576b8c066d6e13114f1', '103.175.61.38', 1697533689, 0x5f5f63695f6c6173745f726567656e65726174657c693a313639373532383831393b6c6f67696e7c733a333a22796573223b61646d696e5f6c6f67696e7c733a333a22796573223b61646d696e5f69647c733a313a2234223b61646d696e5f6e616d657c733a363a22536861686964223b7469746c657c733a353a2261646d696e223b),
('897b6849d9d4fe3b12bb3c385b1c7c74', '103.175.61.38', 1697010706, 0x6c6f67696e7c733a333a22796573223b61646d696e5f6c6f67696e7c733a333a22796573223b61646d696e5f69647c733a313a2234223b61646d696e5f6e616d657c733a363a22536861686964223b7469746c657c733a353a2261646d696e223b),
('8b23abb1e8043dd82ab0b35508c50b6f750dfcff', '103.123.224.151', 1649159190, 0x5f5f63695f6c6173745f726567656e65726174657c693a313634393135353131393b),
('8b6f1d2bb61f8e05bb0223c2b8405f316456d668', '103.175.61.38', 1697555038, 0x5f5f63695f6c6173745f726567656e65726174657c693a313639373535333633393b6c6f67696e7c733a333a22796573223b61646d696e5f6c6f67696e7c733a333a22796573223b61646d696e5f69647c733a313a2231223b61646d696e5f6e616d657c733a333a22554342223b7469746c657c733a353a2261646d696e223b6c65616775655f69647c733a313a2231223b6361745f69647c733a303a22223b707265765f736f6c64706c61796572737c613a303a7b7d756e736f6c64706c617965727c613a35303a7b693a303b733a323a223331223b693a313b733a323a223237223b693a323b733a323a223437223b693a333b733a323a223238223b693a343b733a323a223239223b693a353b733a323a223531223b693a363b733a323a223332223b693a373b733a323a223333223b693a383b733a323a223532223b693a393b733a323a223439223b693a31303b733a323a223335223b693a31313b733a323a223336223b693a31323b733a323a223438223b693a31333b733a323a223534223b693a31343b733a323a223338223b693a31353b733a323a223339223b693a31363b733a323a223430223b693a31373b733a323a223431223b693a31383b733a323a223432223b693a31393b733a323a223434223b693a32303b733a323a223334223b693a32313b733a323a223436223b693a32323b733a323a223533223b693a32333b733a323a223537223b693a32343b733a323a223535223b693a32353b733a313a2232223b693a32363b733a323a223134223b693a32373b733a313a2234223b693a32383b733a313a2235223b693a32393b733a313a2236223b693a33303b733a313a2231223b693a33313b733a313a2238223b693a33323b733a313a2239223b693a33333b733a323a223130223b693a33343b733a323a223131223b693a33353b733a323a223433223b693a33363b733a323a223132223b693a33373b733a323a223133223b693a33383b733a323a223236223b693a33393b733a323a223135223b693a34303b733a323a223136223b693a34313b733a323a223530223b693a34323b733a323a223138223b693a34333b733a323a223139223b693a34343b733a323a223230223b693a34353b733a323a223231223b693a34363b733a323a223536223b693a34373b733a323a223233223b693a34383b733a323a223234223b693a34393b733a323a223235223b7d),
('8cb8441dfbce8454b2597577b4aa0d6b72776a04', '103.137.28.110', 1727621863, 0x5f5f63695f6c6173745f726567656e65726174657c693a313732373632313733303b6c6f67696e7c733a333a22796573223b61646d696e5f6c6f67696e7c733a333a22796573223b61646d696e5f69647c733a313a2231223b61646d696e5f6e616d657c733a333a22554342223b7469746c657c733a353a2261646d696e223b),
('90930dbc0380c697adbd46f052b5a769415232d2', '49.32.211.91', 1649301203, 0x5f5f63695f6c6173745f726567656e65726174657c693a313634393330313230323b),
('92fd0f5f96e1f668b987401019f03a4f7ef090f1', '2401:4900:56fa:c084:4971:c284:557a:6f99', 1697090667, 0x5f5f63695f6c6173745f726567656e65726174657c693a313639373039303533383b6c6f67696e7c733a333a22796573223b61646d696e5f6c6f67696e7c733a333a22796573223b61646d696e5f69647c733a313a2234223b61646d696e5f6e616d657c733a363a22536861686964223b7469746c657c733a353a2261646d696e223b),
('940817e8d196eadad51194992226f52c7161e00c', '103.38.36.228', 1649180361, 0x5f5f63695f6c6173745f726567656e65726174657c693a313634393138303335343b),
('94859855b0e0ee038025746b23cdc71560928c17', '103.121.242.207', 1727850152, 0x5f5f63695f6c6173745f726567656e65726174657c693a313732373834393438303b6c6f67696e7c733a333a22796573223b61646d696e5f6c6f67696e7c733a333a22796573223b61646d696e5f69647c733a313a2231223b61646d696e5f6e616d657c733a333a22554342223b7469746c657c733a353a2261646d696e223b),
('9650aa20fb69f98d808ef09c749ebb6dc84c396b', '103.175.61.38', 1697635346, 0x5f5f63695f6c6173745f726567656e65726174657c693a313639373633323538373b6c6f67696e7c733a333a22796573223b61646d696e5f6c6f67696e7c733a333a22796573223b61646d696e5f69647c733a313a2231223b61646d696e5f6e616d657c733a333a22554342223b7469746c657c733a353a2261646d696e223b6c65616775655f69647c733a313a2231223b6361745f69647c733a303a22223b707265765f736f6c64706c61796572737c613a313a7b693a303b613a313a7b733a31303a22706c61796572735f6964223b733a323a223331223b7d7d756e736f6c64706c617965727c613a34393a7b693a303b733a323a223237223b693a313b733a323a223338223b693a323b733a323a223238223b693a333b733a323a223239223b693a343b733a323a223531223b693a353b733a323a223332223b693a363b733a323a223333223b693a373b733a323a223532223b693a383b733a323a223439223b693a393b733a323a223335223b693a31303b733a323a223336223b693a31313b733a323a223438223b693a31323b733a323a223437223b693a31333b733a323a223236223b693a31343b733a323a223339223b693a31353b733a323a223430223b693a31363b733a323a223431223b693a31373b733a323a223432223b693a31383b733a323a223434223b693a31393b733a323a223538223b693a32303b733a323a223436223b693a32313b733a323a223533223b693a32323b733a323a223537223b693a32333b733a323a223535223b693a32343b733a323a223534223b693a32353b733a323a223134223b693a32363b733a313a2234223b693a32373b733a313a2235223b693a32383b733a313a2236223b693a32393b733a313a2231223b693a33303b733a313a2238223b693a33313b733a313a2239223b693a33323b733a323a223130223b693a33333b733a323a223131223b693a33343b733a323a223433223b693a33353b733a323a223132223b693a33363b733a323a223133223b693a33373b733a313a2232223b693a33383b733a323a223135223b693a33393b733a323a223136223b693a34303b733a323a223530223b693a34313b733a323a223138223b693a34323b733a323a223139223b693a34333b733a323a223230223b693a34343b733a323a223231223b693a34353b733a323a223536223b693a34363b733a323a223233223b693a34373b733a323a223234223b693a34383b733a323a223235223b7d),
('97a683d0219be81d928f9f473a452cfdaa2e43da', '43.248.71.180', 1725371134, 0x5f5f63695f6c6173745f726567656e65726174657c693a313732353337313133333b),
('97ccd06ebf0ec9a3d90e65a7718ce612', '103.175.61.38', 1697016039, ''),
('998299b8c649667add90780e6a57d777', '103.175.61.38', 1697021308, 0x5f5f63695f6c6173745f726567656e65726174657c693a313639373032313330383b),
('999f0e74c6d72a762cffbb602fb06a8ef1ad69d3', '103.123.224.151', 1584424173, 0x5f5f63695f6c6173745f726567656e65726174657c693a313538343432343137323b),
('9b05f052a355f75564fdb295a4345ae4', '103.175.61.38', 1697016417, 0x5f5f63695f6c6173745f726567656e65726174657c693a313639373031363431373b),
('9b3c7c7cf89fdfa1de51d15dbcc2e7af', '103.175.61.38', 1697016220, 0x5f5f63695f6c6173745f726567656e65726174657c693a313639373031363232303b),
('9b413e676458e482f6140840a4ebee1d1ebbf9f3', '110.172.23.253', 1674855916, 0x5f5f63695f6c6173745f726567656e65726174657c693a313637343835353930373b),
('9bf3c2c77b82019f4798f39e29d57d8d6146c239', '103.123.224.151', 1649222738, 0x5f5f63695f6c6173745f726567656e65726174657c693a313634393231393034343b6c6f67696e7c733a333a22796573223b61646d696e5f6c6f67696e7c733a333a22796573223b61646d696e5f69647c733a313a2231223b61646d696e5f6e616d657c733a333a22554342223b7469746c657c733a353a2261646d696e223b6c65616775655f69647c733a313a2231223b6361745f69647c733a303a22223b707265765f736f6c64706c61796572737c613a303a7b7d756e736f6c64706c617965727c613a33333a7b693a303b733a313a2231223b693a313b733a313a2233223b693a323b733a323a223137223b693a333b733a323a223232223b693a343b733a323a223330223b693a353b733a323a223331223b693a363b733a323a223237223b693a373b733a323a223139223b693a383b733a313a2232223b693a393b733a323a223333223b693a31303b733a323a223332223b693a31313b733a323a223239223b693a31323b733a323a223238223b693a31333b733a323a223236223b693a31343b733a323a223235223b693a31353b733a323a223234223b693a31363b733a323a223233223b693a31373b733a323a223231223b693a31383b733a323a223230223b693a31393b733a313a2234223b693a32303b733a323a223138223b693a32313b733a323a223136223b693a32323b733a323a223135223b693a32333b733a323a223134223b693a32343b733a323a223133223b693a32353b733a323a223132223b693a32363b733a323a223131223b693a32373b733a323a223130223b693a32383b733a313a2239223b693a32393b733a313a2238223b693a33303b733a313a2237223b693a33313b733a313a2236223b693a33323b733a313a2235223b7d),
('9d53a37e9461d7df6c0838bc85ca5c0d', '103.175.61.38', 1697010421, 0x5f5f63695f6c6173745f726567656e65726174657c693a313639373031303432313b),
('9f4861b9bc5bc6172d36df88b2300183', '103.175.61.38', 1697009512, 0x5f5f63695f6c6173745f726567656e65726174657c693a313639373030393531323b),
('a06ec3ff12bb7a7f5e5f5e151d79480c145c3a6d', '49.44.80.73', 1649185384, 0x5f5f63695f6c6173745f726567656e65726174657c693a313634393138353337373b),
('a0805fcdd4dafc5b481e76421ba77001', '103.175.61.38', 1697009511, 0x5f5f63695f6c6173745f726567656e65726174657c693a313639373030393531313b),
('a2e25961f86dedf0160e6dc7fa180ba94bd2e756', '103.123.224.151', 1654247531, 0x5f5f63695f6c6173745f726567656e65726174657c693a313635343234373533303b),
('a4b1811a66f74ba29833c20e6c5f5af7', '103.175.61.38', 1697021307, 0x6c6f67696e7c733a333a22796573223b61646d696e5f6c6f67696e7c733a333a22796573223b61646d696e5f69647c733a313a2231223b61646d696e5f6e616d657c733a333a22554342223b7469746c657c733a353a2261646d696e223b),
('a61b1271b3492b701dafcc87b26a4565', '103.175.61.38', 1697021309, 0x5f5f63695f6c6173745f726567656e65726174657c693a313639373032313330393b),
('a68f4706d5a6473544f0dddcb5fc2e6c0c0871ad', '106.209.211.88', 1649248683, 0x5f5f63695f6c6173745f726567656e65726174657c693a313634393234383638333b),
('a969a47b15e3f1a8e738232f69a48310a194f23f', '2401:4900:1d73:b913:a43f:202f:b685:afab', 1725518735, 0x5f5f63695f6c6173745f726567656e65726174657c693a313732353531383733353b),
('b07f16dab94775dc5cacdfcb0f19640a6b4a8bf8', '103.137.28.110', 1727859741, 0x5f5f63695f6c6173745f726567656e65726174657c693a313732373835393734303b),
('b192c8d54d85b886fa4ffab0d3bbefbdd85ac23c', '103.123.224.151', 1649222813, 0x5f5f63695f6c6173745f726567656e65726174657c693a313634393232323831333b),
('b1dd046d29e7e91ea018ff89e8ca75e3fdc87ede', '103.175.61.38', 1697291224, 0x5f5f63695f6c6173745f726567656e65726174657c693a313639373238383336393b6c6f67696e7c733a333a22796573223b61646d696e5f6c6f67696e7c733a333a22796573223b61646d696e5f69647c733a313a2234223b61646d696e5f6e616d657c733a363a22536861686964223b7469746c657c733a353a2261646d696e223b),
('b2c8f5c161d97a45cbc3f217419ee03a26e8e976', '103.175.61.38', 1697287213, 0x5f5f63695f6c6173745f726567656e65726174657c693a313639373236363633393b6c6f67696e7c733a333a22796573223b61646d696e5f6c6f67696e7c733a333a22796573223b61646d696e5f69647c733a313a2231223b61646d696e5f6e616d657c733a333a22554342223b7469746c657c733a353a2261646d696e223b),
('b37fc28ecf1c3cd64f699f9f8adcafd7a23d5b5e', '43.248.70.34', 1649252987, 0x5f5f63695f6c6173745f726567656e65726174657c693a313634393235323938353b),
('b4bac3a3bdfc1a67f95b59fd329f65f0', '103.175.61.38', 1697009511, 0x5f5f63695f6c6173745f726567656e65726174657c693a313639373030393531313b),
('b681db9c484e346c132c659e56fd1e8e', '103.175.61.38', 1697010078, 0x6c6f67696e7c733a333a22796573223b61646d696e5f6c6f67696e7c733a333a22796573223b61646d696e5f69647c733a313a2231223b61646d696e5f6e616d657c733a333a22554342223b7469746c657c733a353a2261646d696e223b),
('b830cb11a73b04b11d6f10a804cde86af3230438', '115.96.218.187', 1649337074, 0x5f5f63695f6c6173745f726567656e65726174657c693a313634393333373034343b),
('b8b44ba9c3c094dc9bea1f30596eb80083e93f81', '103.121.242.207', 1727874037, 0x5f5f63695f6c6173745f726567656e65726174657c693a313732373837343033353b),
('b910f9b24e1446810537031b4197b846', '103.175.61.38', 1697010637, 0x6c6f67696e7c733a333a22796573223b61646d696e5f6c6f67696e7c733a333a22796573223b61646d696e5f69647c733a313a2234223b61646d696e5f6e616d657c733a363a22536861686964223b7469746c657c733a353a2261646d696e223b),
('b957819de37817e658fb5b8b15b6c12eed63546a', '103.175.61.38', 1697476102, 0x5f5f63695f6c6173745f726567656e65726174657c693a313639373437343333343b6c6f67696e7c733a333a22796573223b61646d696e5f6c6f67696e7c733a333a22796573223b61646d696e5f69647c733a313a2231223b61646d696e5f6e616d657c733a333a22554342223b7469746c657c733a353a2261646d696e223b),
('bea2fe0f65d57f2233b32e8ad5995191', '103.175.61.38', 1697020885, 0x5f5f63695f6c6173745f726567656e65726174657c693a313639373032303838353b),
('beb98d122d83ac1f35c67a260caef8fe0922f204', '115.96.218.187', 1649254127, 0x5f5f63695f6c6173745f726567656e65726174657c693a313634393234373036333b),
('bf3e3bbb2c7de0fe1d27f1b0fe57896b', '103.175.61.38', 1697015922, 0x6c6f67696e7c733a333a22796573223b61646d696e5f6c6f67696e7c733a333a22796573223b61646d696e5f69647c733a313a2234223b61646d696e5f6e616d657c733a363a22536861686964223b7469746c657c733a353a2261646d696e223b),
('bf7393497c2654a1373e0544e4c9a1b4a5d47e9d', '103.121.240.111', 1649188732, 0x5f5f63695f6c6173745f726567656e65726174657c693a313634393138323531303b6c6f67696e7c733a333a22796573223b61646d696e5f6c6f67696e7c733a333a22796573223b61646d696e5f69647c733a313a2231223b61646d696e5f6e616d657c733a333a22554342223b7469746c657c733a353a2261646d696e223b),
('c2928a306ddbf1570b574095a52a45e13b49f49e', '103.123.224.151', 1649160081, 0x5f5f63695f6c6173745f726567656e65726174657c693a313634393135383731383b6c6f67696e7c733a333a22796573223b61646d696e5f6c6f67696e7c733a333a22796573223b61646d696e5f69647c733a313a2231223b61646d696e5f6e616d657c733a333a22554342223b7469746c657c733a353a2261646d696e223b),
('c358fbbe599760b988d4f1c54152e86da9be31ef', '2401:4900:56ff:1b57::e21:ba91', 1725300897, 0x5f5f63695f6c6173745f726567656e65726174657c693a313732353330303839373b),
('c3bbed1bc7128dbee41321f4bfc4c511', '103.123.224.151', 1651127467, 0x5f5f63695f6c6173745f726567656e65726174657c693a313635313132373436373b),
('c43635c40aa90dce39bb6d34716bb79ef2272e9d', '2401:4900:57f7:225a:f534:9a1e:5da7:1908', 1725508749, 0x5f5f63695f6c6173745f726567656e65726174657c693a313732353530383338363b6c6f67696e7c733a333a22796573223b61646d696e5f6c6f67696e7c733a333a22796573223b61646d696e5f69647c733a313a2231223b61646d696e5f6e616d657c733a333a22554342223b7469746c657c733a353a2261646d696e223b6c65616775655f69647c733a313a2233223b6361745f69647c733a303a22223b707265765f736f6c64706c61796572737c613a353a7b693a303b613a313a7b733a31303a22706c61796572735f6964223b733a323a223634223b7d693a313b613a313a7b733a31303a22706c61796572735f6964223b733a323a223434223b7d693a323b613a313a7b733a31303a22706c61796572735f6964223b733a323a223731223b7d693a333b613a313a7b733a31303a22706c61796572735f6964223b733a323a223431223b7d693a343b613a313a7b733a31303a22706c61796572735f6964223b733a323a223530223b7d7d756e736f6c64706c617965727c613a35343a7b693a303b733a323a223331223b693a313b733a323a223237223b693a323b733a323a223533223b693a333b733a323a223335223b693a343b733a323a223336223b693a353b733a323a223438223b693a363b733a323a223437223b693a373b733a323a223738223b693a383b733a323a223630223b693a393b733a323a223339223b693a31303b733a323a223430223b693a31313b733a323a223432223b693a31323b733a323a223334223b693a31333b733a323a223636223b693a31343b733a323a223333223b693a31353b733a323a223637223b693a31363b733a323a223638223b693a31373b733a323a223536223b693a31383b733a323a223537223b693a31393b733a323a223538223b693a32303b733a323a223730223b693a32313b733a323a223732223b693a32323b733a323a223733223b693a32333b733a323a223734223b693a32343b733a323a223735223b693a32353b733a323a223736223b693a32363b733a323a223737223b693a32373b733a323a223739223b693a32383b733a323a223138223b693a32393b733a313a2234223b693a33303b733a313a2235223b693a33313b733a313a2236223b693a33323b733a313a2231223b693a33333b733a313a2238223b693a33343b733a313a2239223b693a33353b733a323a223130223b693a33363b733a323a223639223b693a33373b733a323a223433223b693a33383b733a323a223133223b693a33393b733a323a223134223b693a34303b733a323a223135223b693a34313b733a323a223532223b693a34323b733a323a223139223b693a34333b733a323a223230223b693a34343b733a323a223231223b693a34353b733a323a223233223b693a34363b733a323a223234223b693a34373b733a323a223235223b693a34383b733a323a223236223b693a34393b733a323a223631223b693a35303b733a323a223632223b693a35313b733a323a223633223b693a35323b733a323a223635223b693a35333b733a313a2232223b7d),
('c49f426ffbde4cc0979be7c9b463943dd7ee5767', '103.121.242.207', 1727856369, 0x5f5f63695f6c6173745f726567656e65726174657c693a313732373835353230383b6c6f67696e7c733a333a22796573223b61646d696e5f6c6f67696e7c733a333a22796573223b61646d696e5f69647c733a313a2231223b61646d696e5f6e616d657c733a333a22554342223b7469746c657c733a353a2261646d696e223b6c65616775655f69647c733a313a2234223b6361745f69647c733a313a2237223b707265765f736f6c64706c61796572737c613a303a7b7d756e736f6c64706c617965727c613a353a7b693a303b733a313a2232223b693a313b733a313a2234223b693a323b733a323a223138223b693a333b733a323a223235223b693a343b733a323a223733223b7d),
('c4bc7e7e287c982cf9dbc576b44c642a2856677c', '43.248.71.180', 1725459764, 0x5f5f63695f6c6173745f726567656e65726174657c693a313732353435393736333b),
('c97877f5379a535f616e5c8c3f3b7143', '103.175.61.38', 1697021285, 0x6c6f67696e7c733a333a22796573223b61646d696e5f6c6f67696e7c733a333a22796573223b61646d696e5f69647c733a313a2231223b61646d696e5f6e616d657c733a333a22554342223b7469746c657c733a353a2261646d696e223b),
('c9c1b7ce40d6ce4c011abcb76c072ee8', '103.175.61.38', 1697009514, 0x5f5f63695f6c6173745f726567656e65726174657c693a313639373030393531343b),
('d001dc56d2da9656b5bdf0937d949c3a7f3dc032', '103.123.224.151', 1649247001, 0x5f5f63695f6c6173745f726567656e65726174657c693a313634393234333835323b6c6f67696e7c733a333a22796573223b61646d696e5f6c6f67696e7c733a333a22796573223b61646d696e5f69647c733a313a2231223b61646d696e5f6e616d657c733a333a22554342223b7469746c657c733a353a2261646d696e223b),
('d0e8c419648e31a3ed34846dbcf99409', '103.175.61.38', 1697009844, 0x5f5f63695f6c6173745f726567656e65726174657c693a313639373030393834343b),
('d718d7992e3b711f920c61f4431cec30', '103.175.61.38', 1697010422, 0x5f5f63695f6c6173745f726567656e65726174657c693a313639373031303432323b),
('d8316bbe8951044326afa9114b68232a041d855f', '171.76.161.196', 1651571045, 0x5f5f63695f6c6173745f726567656e65726174657c693a313635313537313032383b6c6f67696e7c733a333a22796573223b61646d696e5f6c6f67696e7c733a333a22796573223b61646d696e5f69647c733a313a2231223b61646d696e5f6e616d657c733a333a22554342223b7469746c657c733a353a2261646d696e223b),
('dd52bedcf10132bd60aa0d0758080b272d5726ba', '150.242.207.140', 1725342218, 0x5f5f63695f6c6173745f726567656e65726174657c693a313732353334323231373b),
('e1614692c7d9d0bbfda1509890b00d4a', '103.175.61.38', 1697010423, 0x5f5f63695f6c6173745f726567656e65726174657c693a313639373031303432333b),
('eaeb9e27be3ec7f437426465591081511d3b3480', '103.175.61.38', 1697634363, 0x5f5f63695f6c6173745f726567656e65726174657c693a313639373632323831333b6c6f67696e7c733a333a22796573223b61646d696e5f6c6f67696e7c733a333a22796573223b61646d696e5f69647c733a313a2231223b61646d696e5f6e616d657c733a333a22554342223b7469746c657c733a353a2261646d696e223b6c65616775655f69647c733a313a2231223b6361745f69647c733a303a22223b707265765f736f6c64706c61796572737c613a303a7b7d756e736f6c64706c617965727c613a35303a7b693a303b733a323a223331223b693a313b733a323a223237223b693a323b733a323a223437223b693a333b733a323a223238223b693a343b733a323a223239223b693a353b733a323a223531223b693a363b733a323a223332223b693a373b733a323a223333223b693a383b733a323a223532223b693a393b733a323a223439223b693a31303b733a323a223335223b693a31313b733a323a223336223b693a31323b733a323a223438223b693a31333b733a323a223534223b693a31343b733a323a223338223b693a31353b733a323a223339223b693a31363b733a323a223430223b693a31373b733a323a223431223b693a31383b733a323a223432223b693a31393b733a323a223434223b693a32303b733a323a223538223b693a32313b733a323a223436223b693a32323b733a323a223533223b693a32333b733a323a223537223b693a32343b733a323a223535223b693a32353b733a313a2232223b693a32363b733a323a223134223b693a32373b733a313a2234223b693a32383b733a313a2235223b693a32393b733a313a2236223b693a33303b733a313a2231223b693a33313b733a313a2238223b693a33323b733a313a2239223b693a33333b733a323a223130223b693a33343b733a323a223131223b693a33353b733a323a223433223b693a33363b733a323a223132223b693a33373b733a323a223133223b693a33383b733a323a223236223b693a33393b733a323a223135223b693a34303b733a323a223136223b693a34313b733a323a223530223b693a34323b733a323a223138223b693a34333b733a323a223139223b693a34343b733a323a223230223b693a34353b733a323a223231223b693a34363b733a323a223536223b693a34373b733a323a223233223b693a34383b733a323a223234223b693a34393b733a323a223235223b7d),
('eb1ecdcd5f3fff2581a1ed2fd6464647830075af', '1.38.140.87', 1649213680, 0x5f5f63695f6c6173745f726567656e65726174657c693a313634393231333637393b),
('ec1392f5668f666c9fb339b7fd813bfb85df8a76', '103.123.224.151', 1649244306, 0x5f5f63695f6c6173745f726567656e65726174657c693a313634393234343330343b),
('ec276550ed7c2054b4304d842c8f7b4d14040a39', '2401:4900:57ed:28ce:50c8:5de6:c117:f21e', 1697696821, 0x5f5f63695f6c6173745f726567656e65726174657c693a313639373639303836373b6c6f67696e7c733a333a22796573223b61646d696e5f6c6f67696e7c733a333a22796573223b61646d696e5f69647c733a313a2231223b61646d696e5f6e616d657c733a333a22554342223b7469746c657c733a353a2261646d696e223b6c65616775655f69647c733a313a2231223b6361745f69647c733a313a2238223b707265765f736f6c64706c61796572737c613a33323a7b693a303b613a313a7b733a31303a22706c61796572735f6964223b733a323a223237223b7d693a313b613a313a7b733a31303a22706c61796572735f6964223b733a323a223136223b7d693a323b613a313a7b733a31303a22706c61796572735f6964223b733a323a223238223b7d693a333b613a313a7b733a31303a22706c61796572735f6964223b733a323a223239223b7d693a343b613a313a7b733a31303a22706c61796572735f6964223b733a323a223532223b7d693a353b613a313a7b733a31303a22706c61796572735f6964223b733a323a223336223b7d693a363b613a313a7b733a31303a22706c61796572735f6964223b733a323a223432223b7d693a373b613a313a7b733a31303a22706c61796572735f6964223b733a323a223437223b7d693a383b613a313a7b733a31303a22706c61796572735f6964223b733a323a223331223b7d693a393b613a313a7b733a31303a22706c61796572735f6964223b733a323a223439223b7d693a31303b613a313a7b733a31303a22706c61796572735f6964223b733a323a223538223b7d693a31313b613a313a7b733a31303a22706c61796572735f6964223b733a323a223536223b7d693a31323b613a313a7b733a31303a22706c61796572735f6964223b733a323a223534223b7d693a31333b613a313a7b733a31303a22706c61796572735f6964223b733a323a223436223b7d693a31343b613a313a7b733a31303a22706c61796572735f6964223b733a323a223334223b7d693a31353b613a313a7b733a31303a22706c61796572735f6964223b733a323a223434223b7d693a31363b613a313a7b733a31303a22706c61796572735f6964223b733a323a223431223b7d693a31373b613a313a7b733a31303a22706c61796572735f6964223b733a323a223338223b7d693a31383b613a313a7b733a31303a22706c61796572735f6964223b733a323a223438223b7d693a31393b613a313a7b733a31303a22706c61796572735f6964223b733a313a2238223b7d693a32303b613a313a7b733a31303a22706c61796572735f6964223b733a323a223433223b7d693a32313b613a313a7b733a31303a22706c61796572735f6964223b733a323a223132223b7d693a32323b613a313a7b733a31303a22706c61796572735f6964223b733a323a223134223b7d693a32333b613a313a7b733a31303a22706c61796572735f6964223b733a323a223230223b7d693a32343b613a313a7b733a31303a22706c61796572735f6964223b733a323a223231223b7d693a32353b613a313a7b733a31303a22706c61796572735f6964223b733a323a223531223b7d693a32363b613a313a7b733a31303a22706c61796572735f6964223b733a313a2232223b7d693a32373b613a313a7b733a31303a22706c61796572735f6964223b733a313a2234223b7d693a32383b613a313a7b733a31303a22706c61796572735f6964223b733a313a2235223b7d693a32393b613a313a7b733a31303a22706c61796572735f6964223b733a313a2231223b7d693a33303b613a313a7b733a31303a22706c61796572735f6964223b733a313a2239223b7d693a33313b613a313a7b733a31303a22706c61796572735f6964223b733a323a223539223b7d7d756e736f6c64706c617965727c613a343a7b693a303b733a313a2236223b693a313b733a323a223530223b693a323b733a323a223333223b693a333b733a323a223430223b7d),
('ed0d70d33d9a02b9441bc6c525415774', '103.175.61.38', 1697010694, 0x6c6f67696e7c733a333a22796573223b61646d696e5f6c6f67696e7c733a333a22796573223b61646d696e5f69647c733a313a2234223b61646d696e5f6e616d657c733a363a22536861686964223b7469746c657c733a353a2261646d696e223b),
('f054eaa437168ba6aaee9191cd933c7a', '103.175.61.38', 1697015998, 0x5f5f63695f6c6173745f726567656e65726174657c693a313639373031353939383b),
('f18997c2564ca894c45913009eb67f92', '103.175.61.38', 1697021287, 0x5f5f63695f6c6173745f726567656e65726174657c693a313639373032313238373b),
('f3e45ec376f25806a5aed5156606c41a7a15aadd', '103.175.61.38', 1730886180, 0x5f5f63695f6c6173745f726567656e65726174657c693a313733303838343632333b6c6f67696e7c733a333a22796573223b61646d696e5f6c6f67696e7c733a333a22796573223b61646d696e5f69647c733a313a2231223b61646d696e5f6e616d657c733a333a22554342223b7469746c657c733a353a2261646d696e223b6c65616775655f69647c733a313a2234223b6361745f69647c733a303a22223b707265765f736f6c64706c61796572737c613a313a7b693a303b613a313a7b733a31303a22706c61796572735f6964223b733a323a223830223b7d7d756e736f6c64706c617965727c613a36363a7b693a303b733a323a223331223b693a313b733a323a223237223b693a323b733a323a223434223b693a333b733a323a223537223b693a343b733a323a223536223b693a353b733a323a223638223b693a363b733a323a223637223b693a373b733a323a223533223b693a383b733a323a223636223b693a393b733a323a223334223b693a31303b733a323a223538223b693a31313b733a323a223432223b693a31323b733a323a223431223b693a31333b733a323a223430223b693a31343b733a323a223339223b693a31353b733a323a223630223b693a31363b733a323a223738223b693a31373b733a323a223737223b693a31383b733a323a223837223b693a31393b733a323a223836223b693a32303b733a323a223835223b693a32313b733a323a223834223b693a32323b733a323a223833223b693a32333b733a323a223832223b693a32343b733a323a223831223b693a32353b733a323a223739223b693a32363b733a323a223438223b693a32373b733a323a223736223b693a32383b733a323a223735223b693a32393b733a323a223734223b693a33303b733a323a223733223b693a33313b733a323a223732223b693a33323b733a323a223731223b693a33333b733a323a223730223b693a33343b733a323a223139223b693a33353b733a313a2234223b693a33363b733a313a2235223b693a33373b733a313a2236223b693a33383b733a313a2231223b693a33393b733a313a2238223b693a34303b733a313a2239223b693a34313b733a323a223130223b693a34323b733a323a223639223b693a34333b733a323a223433223b693a34343b733a323a223634223b693a34353b733a323a223133223b693a34363b733a323a223134223b693a34373b733a323a223135223b693a34383b733a323a223530223b693a34393b733a323a223138223b693a35303b733a323a223437223b693a35313b733a323a223230223b693a35323b733a323a223231223b693a35333b733a323a223233223b693a35343b733a323a223234223b693a35353b733a323a223235223b693a35363b733a323a223236223b693a35373b733a323a223631223b693a35383b733a323a223632223b693a35393b733a323a223633223b693a36303b733a323a223635223b693a36313b733a323a223333223b693a36323b733a323a223532223b693a36333b733a323a223335223b693a36343b733a323a223336223b693a36353b733a313a2232223b7d),
('f57a13b3323ca9521a029d2d0ab913da', '103.175.61.38', 1697015998, 0x5f5f63695f6c6173745f726567656e65726174657c693a313639373031353939383b);
INSERT INTO `ci_sessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES
('f62840b17baf19829a683e1640ec2687286c8aea', '103.123.224.151', 1649228969, 0x5f5f63695f6c6173745f726567656e65726174657c693a313634393232383033383b6c6f67696e7c733a333a22796573223b61646d696e5f6c6f67696e7c733a333a22796573223b61646d696e5f69647c733a313a2231223b61646d696e5f6e616d657c733a333a22554342223b7469746c657c733a353a2261646d696e223b6c65616775655f69647c733a313a2231223b6361745f69647c733a313a2231223b707265765f736f6c64706c61796572737c613a303a7b7d756e736f6c64706c617965727c613a33333a7b693a303b733a323a223232223b693a313b733a313a2233223b693a323b733a323a223137223b693a333b733a313a2231223b693a343b733a323a223330223b693a353b733a323a223331223b693a363b733a323a223237223b693a373b733a323a223230223b693a383b733a313a2232223b693a393b733a323a223333223b693a31303b733a323a223332223b693a31313b733a323a223239223b693a31323b733a323a223238223b693a31333b733a323a223236223b693a31343b733a323a223235223b693a31353b733a323a223234223b693a31363b733a323a223233223b693a31373b733a313a2234223b693a31383b733a323a223231223b693a31393b733a313a2236223b693a32303b733a323a223139223b693a32313b733a323a223138223b693a32323b733a313a2235223b693a32333b733a323a223136223b693a32343b733a323a223135223b693a32353b733a323a223134223b693a32363b733a323a223133223b693a32373b733a323a223132223b693a32383b733a323a223131223b693a32393b733a323a223130223b693a33303b733a313a2239223b693a33313b733a313a2238223b693a33323b733a313a2237223b7d),
('f7a940acf281beb3363a59bee042c419', '103.175.61.38', 1697021437, 0x6c6f67696e7c733a333a22796573223b61646d696e5f6c6f67696e7c733a333a22796573223b61646d696e5f69647c733a313a2231223b61646d696e5f6e616d657c733a333a22554342223b7469746c657c733a353a2261646d696e223b),
('f85d82f05b7f46ef27ea024332cfcc7316af9bd9', '115.96.218.187', 1649257325, 0x5f5f63695f6c6173745f726567656e65726174657c693a313634393235343432383b6c6f67696e7c733a333a22796573223b61646d696e5f6c6f67696e7c733a333a22796573223b61646d696e5f69647c733a313a2231223b61646d696e5f6e616d657c733a333a22554342223b7469746c657c733a353a2261646d696e223b6c65616775655f69647c733a313a2231223b6361745f69647c733a313a2235223b707265765f736f6c64706c61796572737c613a303a7b7d756e736f6c64706c617965727c613a373a7b693a303b733a323a223331223b693a313b733a323a223237223b693a323b733a323a223236223b693a333b733a323a223337223b693a343b733a323a223338223b693a353b733a323a223339223b693a363b733a323a223431223b7d),
('fc5d8e3f86126ca00d68c7e2d9f72066', '103.175.61.38', 1697009511, 0x5f5f63695f6c6173745f726567656e65726174657c693a313639373030393531313b),
('fcaf4ade25bf236f7903bbbcd1261e90', '103.175.61.38', 1697016026, ''),
('fd1493bcfce131882c55a552f4d600cde59e0b96', '103.123.224.151', 1649410533, 0x5f5f63695f6c6173745f726567656e65726174657c693a313634393431303338393b6c6f67696e7c733a333a22796573223b61646d696e5f6c6f67696e7c733a333a22796573223b61646d696e5f69647c733a313a2231223b61646d696e5f6e616d657c733a333a22554342223b7469746c657c733a353a2261646d696e223b),
('fd638afb9c7fb74039aced52a9cbfd56a5d5b4a2', '43.245.101.20', 1697636668, 0x5f5f63695f6c6173745f726567656e65726174657c693a313639373633363636373b),
('fe2f54129d4a75f2e8e14ed12cb807c3', '103.175.61.38', 1697021309, 0x5f5f63695f6c6173745f726567656e65726174657c693a313639373032313330393b);

-- --------------------------------------------------------

--
-- Table structure for table `currency_settings`
--

CREATE TABLE `currency_settings` (
  `currency_settings_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `symbol` varchar(255) NOT NULL,
  `exchange_rate` varchar(255) NOT NULL,
  `status` varchar(10) NOT NULL,
  `code` varchar(20) DEFAULT NULL,
  `exchange_rate_def` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `currency_settings`
--

INSERT INTO `currency_settings` (`currency_settings_id`, `name`, `symbol`, `exchange_rate`, `status`, `code`, `exchange_rate_def`) VALUES
(1, 'U.S. Dollar', '$', '1', 'ok', 'USD', '65'),
(2, 'Australian Dollar', '$', '1.3163', 'no', 'AUD', NULL),
(5, 'Brazilian Real', 'R$', '3.2953', 'no', 'BRL', NULL),
(6, 'Canadian Dollar', '$', '1.3199', 'no', 'CAD', NULL),
(7, 'Czech Koruna', 'Kč', '24.212', 'no', 'CZK', NULL),
(8, 'Danish Krone', 'kr', '6.6675', 'no', 'DKK', NULL),
(9, 'Euro', '€', '0.89079', 'no', 'EUR', NULL),
(10, 'Hong Kong Dollar', '$', '7.7587', 'no', 'HKD', NULL),
(11, 'Hungarian Forint', 'Ft', '275.38', 'no', 'HUF', NULL),
(12, 'Israeli New Sheqel', '₪', '3.7896', 'no', 'ILS', NULL),
(13, 'Japanese Yen', '¥', '101.86', 'no', 'JPY', NULL),
(14, 'Malaysian Ringgit', 'RM', '4.1369', 'no', 'MYR', NULL),
(15, 'Mexican Peso', '$', '19.389', 'no', 'MXN', NULL),
(16, 'Norwegian Krone', 'kr', '8.2509', 'no', 'NOK', NULL),
(17, 'New Zealand Dollar', '$', '1.3689', 'no', 'NZD', NULL),
(18, 'Philippine Peso', '₱', '47.872', 'no', 'PHP', NULL),
(19, 'Polish Zloty', 'zł', '3.8453', 'no', 'PLN', NULL),
(20, 'Pound Sterling', '£', '0.75898', 'no', 'GBP', NULL),
(21, 'Russian Ruble', 'руб', '64.936', 'no', 'RUB', NULL),
(22, 'Singapore Dollar', '$', '1.3645', 'no', 'SGD', NULL),
(23, 'Swedish Krona', 'kr', '8.5133', 'no', 'SEK', NULL),
(24, 'Swiss Franc', 'CHF', '0.96349', 'no', 'CHF', NULL),
(26, 'Thai Baht', '฿', '33.34', 'no', 'THB', NULL),
(27, 'INR', '₹', '64.02', 'ok', '??', '1');

-- --------------------------------------------------------

--
-- Table structure for table `email_template`
--

CREATE TABLE `email_template` (
  `email_template_id` int(11) NOT NULL,
  `title` longtext NOT NULL,
  `subject` longtext NOT NULL,
  `body` longtext NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `email_template`
--

INSERT INTO `email_template` (`email_template_id`, `title`, `subject`, `body`) VALUES
(1, 'Password Reset Email', 'Password Reset Successfull', '<p><span [removed]=\"font-weight: bold;\">Hi [[to]],</span></p><p><span [removed]=\"font-weight: bold;\">You recently requested a new password. We\'ve received the request and your password has been changed.</span></p><p><span [removed]=\"font-weight: bold;\">Your account type is : [[account_type]]<br></span></p><p><span [removed]=\"font-weight: bold;\">Your new password is : [[password]]</span></p><p><span [removed]=\"font-weight: bold;\">Thanks,</span></p><p><span [removed]=\"\" bold;\"=\"\">[[from]]</span></p>'),
(2, 'Account Approval Email', 'Account Approval Status', '<p><span [removed]=\"font-weight: bold;\">Hi [[to]],</span></p><p><span [removed]=\"font-weight: bold;\">Your account type is : [[account_type]]</span></p><p><span [removed]=\"font-weight: bold;\">Email : [[email]]</span></p><p><span [removed]=\"font-weight: bold;\">Thank you for registering at our site. Your registration must be approved by the administrator and your account has been [[status]]. Please contact with the </span>administration team if you have any further question. Best wishes.</p><p><span [removed]=\"font-weight: bold;\"><br></span></p><p><span [removed]=\"font-weight: bold;\">Thanks,</span></p><p><span [removed]=\"\" bold;\"=\"\">[[from]]</span></p>'),
(3, 'Membership Upgrade Email', 'Membership Upgraded', '<p><span [removed]=\"font-weight: bold;\">Hi [[to]],</span></p><p><span [removed]=\"font-weight: bold;\">Your account type is : [[account_type]]</span></p><p><span [removed]=\"font-weight: bold;\">Email : [[email]]</span></p><p><span [removed]=\"font-weight: bold;\">Your Membership Type is [[package]]. </span></p><p><span [removed]=\"font-weight: bold;\">Please contact with the </span>administrator team if you have any further question. Best wishes.</p><p><span [removed]=\"font-weight: bold;\"><br></span></p><p><span [removed]=\"font-weight: bold;\">Thanks,</span></p><p><span [removed]=\"\" bold;\"=\"\">[[from]]</span></p>'),
(4, 'Vendors Account Opening', 'Account Opening', '<p><span [removed]=\"font-weight: bold;\">Hi [[to]],</span></p><p><span [removed]=\"font-weight: bold;\">Thank you for registering at our site </span>[[sitename]]<span [removed]=\"font-weight: bold;\">. </span></p><p><span [removed]=\"font-weight: bold;\">Your account type is : [[account_type]]</span></p><p><span [removed]=\"font-weight: bold;\">Email is : [[email]]</span></p><p><span [removed]=\"font-weight: bold;\"></span></p><p><span [removed]=\"font-weight: bold;\">Password is : [[password]]</span></p><p><span [removed]=\"font-weight: bold;\">Your account is now being reviewed by </span>administration team. Please wait for Admin approval. You will get a  confirmation email soon and after that you will be able to login from here : [[url]]</p><p><span [removed]=\"font-weight: bold;\">Please contact with the </span>administration team if you have any further question. Best wishes.<br></p><p><span [removed]=\"font-weight: bold;\"><br></span></p><p><span [removed]=\"font-weight: bold;\">Thanks,</span></p><p><span [removed]=\"\" bold;\"=\"\">[[from]]</span></p>'),
(5, 'Users Account Opening', 'Account Opening', '<img src=\"http://bigdeals24x7.com/test/uploads/logo_image/logo_77.png\" class=\"CToWUd\" style=\"float=right;\">\n<p><span [removed]=\"font-weight: bold;\">Hi [[to]],</span></p><p><span [removed]=\"font-weight: bold;\">Thank you for registering at our site&nbsp;</span>[[sitename]]<span [removed]=\"font-weight: bold;\">.</span></p><p><span [removed]=\"font-weight: bold;\">Your account type is : [[account_type]]</span></p><p><span [removed]=\"font-weight: bold;\">Email is : [[email]]</span></p><p><span [removed]=\"font-weight: bold;\"></span></p><p><span [removed]=\"font-weight: bold;\">Password is : [[password]]</span></p><p>Login from here : [[url]]</p><p><span [removed]=\"font-weight: bold;\">Please contact with the&nbsp;</span>administration&nbsp;team if you have any further question. Best wishes.<br></p><p><span [removed]=\"font-weight: bold;\"><br></span></p><p><span [removed]=\"font-weight: bold;\">Thanks,</span></p><p><span [removed]=\"\" bold;\"=\"\">[[from]]</span></p>'),
(6, 'Admins Account Opening', 'Account Opening', '<p><span [removed]=\"font-weight: bold;\">Hi [[to]],</span></p><p><span [removed]=\"font-weight: bold;\">Thank you for joining at our site&nbsp;</span>[[sitename]]<span [removed]=\"font-weight: bold;\">.</span></p><p><span [removed]=\"font-weight: bold;\">Your account type is : [[account_type]]</span></p><p><span [removed]=\"font-weight: bold;\">Email is : [[email]]</span></p><p><span [removed]=\"font-weight: bold;\"></span></p><p><span [removed]=\"font-weight: bold;\">Password is : [[password]]</span></p><p>Login from here : [[url]]</p><p>&nbsp;Best wishes.</p><p><br></p><p><span [removed]=\"font-weight: bold;\">Thanks,</span></p><p><span [removed]=\"\" bold;\"=\"\">[[from]]</span></p>');

-- --------------------------------------------------------

--
-- Table structure for table `general_settings`
--

CREATE TABLE `general_settings` (
  `general_settings_id` int(11) NOT NULL,
  `type` longtext,
  `value` longtext
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `general_settings`
--

INSERT INTO `general_settings` (`general_settings_id`, `type`, `value`) VALUES
(1, 'system_name', 'United  Cricket Bash'),
(2, 'system_email', 'sabir.makent@gmail.com'),
(3, 'system_title', 'United  Cricket Bash'),
(4, 'address', ''),
(5, 'phone', ''),
(6, 'language', 'english'),
(9, 'terms_conditions', '<p class=\"MsoNoSpacing\"><span lang=\"EN-IN\">To avail the services offered at www.bigdeals24x7.com\r\nyou must agree to the following terms and conditions. If you visit, shop or\r\nbrowse at www.bigdeals24x7.com you accept these conditions.<o:p></o:p></span></p><p class=\"MsoNoSpacing\"><span lang=\"EN-IN\">Please read the terms and conditions\r\ncarefully. While using any current or future services offered by Bigdeals24x7.com,\r\nwhether or not included in the Bigdeals24x7.com website, you will abide by\r\nthese Terms &amp; conditions the guidelines and conditions applicable to such\r\nservice or business.</span></p><p class=\"MsoNormal\" style=\"margin-bottom: 0.0001pt; line-height: normal; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\"><span lang=\"EN-IN\" style=\"font-size:\r\n13.5pt;font-family:\" inherit\",\"serif\";mso-fareast-font-family:\"times=\"\" new=\"\" roman\";=\"\" mso-bidi-font-family:arial;color:#767676;mso-fareast-language:en-in\"=\"\">Privacy\r\nPolicy<o:p></o:p></span></p><p class=\"MsoNoSpacing\"><span lang=\"EN-IN\">Please review our Privacy Policy, which\r\nalso governs your visit to www.bigdeals24x7.com, to fully understand our\r\npractices.</span></p><p class=\"MsoNormal\" style=\"margin-bottom: 0.0001pt; line-height: normal; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\"><span lang=\"EN-IN\" style=\"font-size:\r\n13.5pt;font-family:\" inherit\",\"serif\";mso-fareast-font-family:\"times=\"\" new=\"\" roman\";=\"\" mso-bidi-font-family:arial;color:#767676;mso-fareast-language:en-in\"=\"\">Terms and\r\nconditions are binding for all purchases<o:p></o:p></span></p><p class=\"MsoNoSpacing\"><span lang=\"EN-IN\">All orders are deemed offers for you to\r\npurchase our products. We may accept your offer by issuing a confirmatory\r\ne-mail and/or mobile confirmation of the products specified in your order. Our\r\nacceptance of each such offer is expressly subject to and conditioned on your\r\nassent to these terms and conditions of sale. No other terms and conditions\r\nwill apply.</span></p><p class=\"MsoNormal\" style=\"margin-bottom: 0.0001pt; line-height: normal; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\"><span lang=\"EN-IN\" style=\"font-size:\r\n13.5pt;font-family:\" inherit\",\"serif\";mso-fareast-font-family:\"times=\"\" new=\"\" roman\";=\"\" mso-bidi-font-family:arial;color:#767676;mso-fareast-language:en-in\"=\"\">Electronic\r\nCommunication<o:p></o:p></span></p><p class=\"MsoNoSpacing\"><span lang=\"EN-IN\">When\r\nyou visit www.bigdeals24x7.com or send e-mails to us, you are communicating\r\nwith us electronically. By communicating with us, you consent to receive\r\ncommunication from us electronically. We will communicate with you by e-mail.\r\nYou agree that all agreements, notices, disclosures, and other communications\r\nthat we provide to you electronically satisfy any legal requirement that such\r\ncommunication be in writing.</span></p><p class=\"MsoNormal\" style=\"margin-bottom: 0.0001pt; line-height: normal; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\"><span lang=\"EN-IN\" style=\"font-size:\r\n13.5pt;font-family:\" inherit\",\"serif\";mso-fareast-font-family:\"times=\"\" new=\"\" roman\";=\"\" mso-bidi-font-family:arial;color:#767676;mso-fareast-language:en-in\"=\"\">Prices<o:p></o:p></span></p><p class=\"MsoNoSpacing\"><span lang=\"EN-IN\">All\r\nprices posted on this website are subject to change without notice.\r\nBigdeals24x7 provides price protection for items during refund and returns.\r\nHowever, if the price of a product increases before the shipment, you shall be\r\nnotified of the same. In such a scenario, the product shall be shipped based on\r\nyour confirmation. Posted prices include all taxes and charges. In case there\r\nare any additional charges or taxes the same will be mentioned on the website.</span></p><p class=\"MsoNormal\" style=\"margin-bottom: 0.0001pt; line-height: normal; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\"><span lang=\"EN-IN\" style=\"font-size:\r\n13.5pt;font-family:\" inherit\",\"serif\";mso-fareast-font-family:\"times=\"\" new=\"\" roman\";=\"\" mso-bidi-font-family:arial;color:#767676;mso-fareast-language:en-in\"=\"\">Payment<o:p></o:p></span></p><p class=\"MsoNoSpacing\"><span lang=\"EN-IN\">We\r\naccept payment by cheque/ net-banking, credit card, debit card, cash card, and\r\nmobile payments. EMI facility is also available with us.</span></p><p class=\"MsoNormal\" style=\"margin-bottom: 0.0001pt; line-height: normal; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\"><span lang=\"EN-IN\" style=\"font-size:\r\n13.5pt;font-family:\" inherit\",\"serif\";mso-fareast-font-family:\"times=\"\" new=\"\" roman\";=\"\" mso-bidi-font-family:arial;color:#767676;mso-fareast-language:en-in\"=\"\">Shipping\r\nand Handling<o:p></o:p></span></p><p class=\"MsoNoSpacing\"><span lang=\"EN-IN\">We\r\nwill arrange for shipment of the products to you. Shipping schedules are\r\nestimates only and cannot be guaranteed. We are not liable for any delays in\r\nthe shipments. Title and risk of loss and damages pass on to you upon the\r\nproducts delivery to you. In case reverse shipment cannot be arranged by us due\r\nto unavailability of our logistics partners, then in that case you may be\r\nrequested to send such products through any available courier services. We usually ship the ordered product in 5 to 6 working days.&nbsp;</span></p><p class=\"MsoNormal\" style=\"margin-bottom: 0.0001pt; line-height: normal; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\"><span lang=\"EN-IN\" style=\"font-size:\r\n13.5pt;font-family:\" inherit\",\"serif\";mso-fareast-font-family:\"times=\"\" new=\"\" roman\";=\"\" mso-bidi-font-family:arial;color:#767676;mso-fareast-language:en-in\"=\"\">Return of\r\nProducts by you<o:p></o:p></span></p><p class=\"MsoNoSpacing\"><span lang=\"EN-IN\">We\r\nwill accept the return of the products, provided such return is for products\r\nthat are defective, wrongly delivered, wrong product, damaged during transit,\r\nincomplete package etc. subject to the condition that we are informed about\r\nsuch discrepancies within 48 hours from the date of receipt of the product and\r\nprovided that the products are returned in their original condition. However,\r\nin case of transit damages, the issue has to be reported within 48 hours, after\r\nwhich we may not be able to accept the complaint.</span></p><p class=\"MsoNormal\" style=\"margin-bottom: 0.0001pt; line-height: normal; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\"><span lang=\"EN-IN\" style=\"font-size:\r\n13.5pt;font-family:\" inherit\",\"serif\";mso-fareast-font-family:\"times=\"\" new=\"\" roman\";=\"\" mso-bidi-font-family:arial;color:#767676;mso-fareast-language:en-in\"=\"\">Easy\r\nreplacement<o:p></o:p></span></p><p class=\"MsoNoSpacing\"><span lang=\"EN-IN\">Bigdeals24x7\r\noffers easy replacement for all products sold on Bigdeals24x7.com, under\r\ncertain conditions which are mentioned below.<o:p></o:p></span></p><p class=\"MsoNoSpacing\" style=\"margin-left: 0.5in; text-indent: -0.25in; line-height: 1.2;\"><!--[if !supportLists]--><span lang=\"EN-IN\" style=\"font-family:Symbol;mso-fareast-font-family:Symbol;mso-bidi-font-family:\r\nSymbol\">·<span style=\"font-variant-numeric: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: \" times=\"\" new=\"\" roman\";\"=\"\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;\r\n</span></span><!--[endif]--><span lang=\"EN-IN\">Customers will notify us of any\r\ndamage or defect within 48 hours from the date of receipt of delivery of the\r\nproducts.<o:p></o:p></span></p><p class=\"MsoNoSpacing\" style=\"margin-left: 0.5in; text-indent: -0.25in; line-height: 1.2;\"><!--[if !supportLists]--><span lang=\"EN-IN\" style=\"font-family:Symbol;mso-fareast-font-family:Symbol;mso-bidi-font-family:\r\nSymbol\">·<span style=\"font-variant-numeric: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: \" times=\"\" new=\"\" roman\";\"=\"\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;\r\n</span></span><!--[endif]--><span lang=\"EN-IN\">In case of transit damages, the\r\nissue has to be reported within 48 hours, after which we may not be able to\r\naccept the complaint.<o:p></o:p></span></p><p class=\"MsoNoSpacing\" style=\"margin-left: 0.5in; text-indent: -0.25in; line-height: 1.2;\"><!--[if !supportLists]--><span lang=\"EN-IN\" style=\"font-family:Symbol;mso-fareast-font-family:Symbol;mso-bidi-font-family:\r\nSymbol\">·<span style=\"font-variant-numeric: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: \" times=\"\" new=\"\" roman\";\"=\"\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;\r\n</span></span><!--[endif]--><span lang=\"EN-IN\">We may ask you to share the\r\nimages of the product and the internal &amp; external packaging material.<o:p></o:p></span></p><p class=\"MsoNoSpacing\" style=\"margin-left: 0.5in; text-indent: -0.25in; line-height: 1.2;\"><!--[if !supportLists]--><span lang=\"EN-IN\" style=\"font-family:Symbol;mso-fareast-font-family:Symbol;mso-bidi-font-family:\r\nSymbol\">·<span style=\"font-variant-numeric: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: \" times=\"\" new=\"\" roman\";\"=\"\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;\r\n</span></span><!--[endif]--><span lang=\"EN-IN\">Once we agree to replace, the\r\ndefective/damaged product will be replaced with a brand new product at no extra\r\ncost.<o:p></o:p></span></p><p class=\"MsoNoSpacing\" style=\"margin-left: 0.5in; text-indent: -0.25in; line-height: 1.2;\"><!--[if !supportLists]--><span lang=\"EN-IN\" style=\"font-family:Symbol;mso-fareast-font-family:Symbol;mso-bidi-font-family:\r\nSymbol\">·<span style=\"font-variant-numeric: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: \" times=\"\" new=\"\" roman\";\"=\"\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;\r\n</span></span><!--[endif]--><span lang=\"EN-IN\">In case customer fails to\r\ninform bigdeals24x7 within the stipulated time frame, bigdeals24x7 reserves the\r\nright to accept or reject such request at its discretion.<o:p></o:p></span></p><p class=\"MsoNoSpacing\" style=\"margin-left: 0.5in; text-indent: -0.25in; line-height: 1.2;\"><!--[if !supportLists]--><span lang=\"EN-IN\" style=\"font-family:Symbol;mso-fareast-font-family:Symbol;mso-bidi-font-family:\r\nSymbol\">·<span style=\"font-variant-numeric: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: \" times=\"\" new=\"\" roman\";\"=\"\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;\r\n</span></span><!--[endif]--><span lang=\"EN-IN\">Bigdeals24x7 will try to\r\nreplace the specific product ordered. However, the company reserves the right\r\nto offer an alternate product in case the product is Out of Stock or\r\nDiscontinued by the manufacturer.<o:p></o:p></span></p><p class=\"MsoNoSpacing\" style=\"margin-left: 0.5in; text-indent: -0.25in; line-height: 1.2;\"><!--[if !supportLists]--><span lang=\"EN-IN\" style=\"font-family:Symbol;mso-fareast-font-family:Symbol;mso-bidi-font-family:\r\nSymbol\">·<span style=\"font-variant-numeric: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: \" times=\"\" new=\"\" roman\";\"=\"\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;\r\n</span></span><!--[endif]--><span lang=\"EN-IN\">The replacement guarantee is\r\nvalid only in cases of manufacturing defects and transport damages.<o:p></o:p></span></p><p class=\"MsoNoSpacing\"><span lang=\"EN-IN\">Return policy is not valid for\r\nperishable products such as Cakes, Flowers, Chocolates, etc. If one comes\r\nacross any issue with these products, they are advised to contact our customer\r\nsupport team within 24 hours. We will try to resolve the complaint in the best\r\npossible manner; however, it’s not guaranteed that we’ll be able to provide\r\nreplacement/refund request.<o:p></o:p></span></p><p class=\"MsoNoSpacing\"><span lang=\"EN-IN\">Damages due to normal wear &amp; tear\r\nand negligence on part of the customer or Digital content such as e-books is\r\nnot returnable at all.</span></p><p class=\"MsoNormal\" style=\"margin-bottom: 0.0001pt; line-height: normal; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\"><span lang=\"EN-IN\" style=\"font-size:\r\n13.5pt;font-family:\" inherit\",\"serif\";mso-fareast-font-family:\"times=\"\" new=\"\" roman\";=\"\" mso-bidi-font-family:arial;color:#767676;mso-fareast-language:en-in\"=\"\">Changes\r\nand Cancellation<o:p></o:p></span></p><p class=\"MsoNoSpacing\"><span lang=\"EN-IN\">Any\r\nitem additions, quantity changes or specification changes made to accepted\r\norders will be modified in the order details. All sales are final, provided,\r\nhowever, item cancellations and quantity reductions may be made before the\r\norder is shipped. We may, without liability, cancel any accepted order before\r\nshipment if our credit department does not approve your credit or if there are other\r\nproblems with the payment mode selected by you.</span></p><p class=\"MsoNormal\" style=\"margin-bottom: 0.0001pt; line-height: normal; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\"><span lang=\"EN-IN\" style=\"font-size:\r\n13.5pt;font-family:\" inherit\",\"serif\";mso-fareast-font-family:\"times=\"\" new=\"\" roman\";=\"\" mso-bidi-font-family:arial;color:#767676;mso-fareast-language:en-in\"=\"\">Cancellation\r\nof Order by bigdeals24x7<o:p></o:p></span></p><p class=\"MsoNoSpacing\"><span lang=\"EN-IN\">Bigdeals24x7\r\nreserves the right to refuse or cancel any order placed for a product due to\r\nany of the below reasons:<o:p></o:p></span></p><p class=\"MsoNoSpacing\" style=\"margin-left: 0.5in; text-indent: -0.25in; line-height: 1.2;\"><!--[if !supportLists]--><span lang=\"EN-IN\" style=\"font-family:Symbol;mso-fareast-font-family:Symbol;mso-bidi-font-family:\r\nSymbol;mso-fareast-language:EN-IN\">·<span style=\"font-variant-numeric: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: \" times=\"\" new=\"\" roman\";\"=\"\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;\r\n</span></span><!--[endif]--><span lang=\"EN-IN\">Technical issues related to pricing information.<o:p></o:p></span></p><p class=\"MsoNoSpacing\" style=\"margin-left: 0.5in; text-indent: -0.25in; line-height: 1.2;\"><!--[if !supportLists]--><span lang=\"EN-IN\" style=\"font-family:Symbol;mso-fareast-font-family:Symbol;mso-bidi-font-family:\r\nSymbol;mso-fareast-language:EN-IN\">·<span style=\"font-variant-numeric: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: \" times=\"\" new=\"\" roman\";\"=\"\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;\r\n</span></span><!--[endif]--><span lang=\"EN-IN\">Non-availability of the product(s).<o:p></o:p></span></p><p class=\"MsoNoSpacing\" style=\"margin-left: 0.5in; text-indent: -0.25in; line-height: 1.2;\"><!--[if !supportLists]--><span lang=\"EN-IN\" style=\"font-family:Symbol;mso-fareast-font-family:Symbol;mso-bidi-font-family:\r\nSymbol;mso-fareast-language:EN-IN\">·<span style=\"font-variant-numeric: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: \" times=\"\" new=\"\" roman\";\"=\"\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;\r\n</span></span><!--[endif]--><span lang=\"EN-IN\">Payment problem identified by Fraud Detection Department.<o:p></o:p></span></p><p class=\"MsoNoSpacing\"><span lang=\"EN-IN\">This\r\nshall be regardless of whether the order has been confirmed and/or payment been\r\nreceived. 100% payment shall be refunded and the User shall be informed of the\r\nsame.<o:p></o:p></span></p><p class=\"MsoNoSpacing\"><b><span lang=\"EN-IN\">Note</span></b><span lang=\"EN-IN\">: We may put additional checks\r\nand verifications or seek more information before accepting any order. We will\r\ncontact you if all or a part of your order is cancelled or if additional\r\ninformation is required to accept your order.</span></p><p class=\"MsoNormal\"><b><span style=\"font-size: 13.5pt; line-height: 115%; font-family: Helvetica, sans-serif; color: rgb(34, 34, 34); background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\">Refunds </span></b><strong><span style=\"font-size:13.5pt;line-height:115%;font-family:\" helvetica\",\"sans-serif\";=\"\" mso-bidi-font-family:\"times=\"\" new=\"\" roman\";mso-bidi-theme-font:minor-bidi;=\"\" color:black;border:none=\"\" windowtext=\"\" 1.0pt;mso-border-alt:none=\"\" 0in;=\"\" padding:0in\"=\"\">for the cancelled orders</span></strong><strong><span style=\"font-size:13.5pt;line-height:115%;font-family:\" helvetica\",\"sans-serif\";=\"\" mso-bidi-font-family:\"times=\"\" new=\"\" roman\";mso-bidi-theme-font:minor-bidi;=\"\" color:black;border:none=\"\" windowtext=\"\" 1.0pt;mso-border-alt:none=\"\" 0in;=\"\" padding:0in;font-weight:normal;mso-bidi-font-weight:bold\"=\"\"><o:p></o:p></span></strong></p><p class=\"MsoNoSpacing\"><span style=\"font-size:9.0pt;font-family:\" helvetica\",\"sans-serif\"\"=\"\">In\r\ncase of cancellation before shipment, we process the refund within 24-48\r\nbusiness hours after receiving the cancellation request.<o:p></o:p></span></p><p class=\"MsoNoSpacing\"><span style=\"font-size:9.0pt;font-family:\" helvetica\",\"sans-serif\"\"=\"\">In\r\ncase of returned product we process the refund once the products have been\r\nreceived and verified at our warehouse.<o:p></o:p></span></p><p class=\"MsoNoSpacing\"><span style=\"font-size:9.0pt;font-family:\" helvetica\",\"sans-serif\"\"=\"\">For&nbsp;payments\r\ndone through credit/debit cards or net banking,&nbsp;the refund will be\r\nprocessed to the same channel from which the payment was made within 24-48\r\nbusiness hours of us receiving the products back. It may take 2-5 additional\r\nbusiness days for the amount to reflect in your account.<o:p></o:p></span></p><p class=\"MsoNoSpacing\"><span lang=\"EN-IN\">\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n</span></p><p class=\"MsoNoSpacing\"><span style=\"font-size:9.0pt;font-family:\" helvetica\",\"sans-serif\"\"=\"\">In\r\naddition, we also provide the hassle-free option of refund through bigdeals24x7\r\nvouchers, which can be used during future purchases</span><span style=\"font-family:\" helv\",\"sans-serif\"\"=\"\">.</span></p><p class=\"MsoNormal\" style=\"margin-bottom: 0.0001pt; line-height: normal; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\"><span lang=\"EN-IN\" style=\"font-size:\r\n13.5pt;font-family:\" inherit\",\"serif\";mso-fareast-font-family:\"times=\"\" new=\"\" roman\";=\"\" mso-bidi-font-family:arial;color:#767676;mso-fareast-language:en-in\"=\"\">License\r\nand Website Access<o:p></o:p></span></p><p class=\"MsoNoSpacing\"><b><span lang=\"EN-IN\">General</span></b><span lang=\"EN-IN\">: Bigdeals24x7.com grants you a\r\nlimited license to access and make personal use of this website and not to\r\ndownload (other than page caching) or modify it, or any portion of it, except\r\nwith express written consent of&nbsp;</span><span lang=\"EN-IN\"><a href=\"http://www.infibeam.com/\"><span style=\"color: rgb(66, 139, 202);\">www.bigdeals24x7.com</span></a></span><span lang=\"EN-IN\">.</span></p><p class=\"MsoNoSpacing\"><b><span lang=\"EN-IN\">No\r\nlicense for commercial sale</span></b><span lang=\"EN-IN\">: This license does not include any resale or commercial use of this\r\nwebsite or its content; any collection and use of any product listing,\r\ndescription, or pricing; copying of account information for the benefit of\r\nanother merchant; or any use of data mining, or similar data gathering and\r\nextraction tools.</span></p><p class=\"MsoNoSpacing\"><b><span lang=\"EN-IN\">No\r\nreproduction</span></b><span lang=\"EN-IN\">:\r\nThis website or any portion of this website may not be reproduced, duplicated,\r\ncopied, sold, visited, or otherwise exploited for any commercial purpose\r\nwithout express written consent of Bigdeals24x7.com.</span></p><p class=\"MsoNoSpacing\"><b><span lang=\"EN-IN\">No\r\nframing</span></b><span lang=\"EN-IN\">: You may not frame or utilize framing\r\ntechnologies to enclose any trademark, logo, or other proprietary information (including\r\nimages, text, page layout, or form) of Bigdeals24x7.com without the express\r\nwritten consent.</span></p><p class=\"MsoNormal\" style=\"margin-bottom: 0.0001pt; line-height: normal; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\"><span lang=\"EN-IN\" style=\"font-size:\r\n13.5pt;font-family:\" inherit\",\"serif\";mso-fareast-font-family:\"times=\"\" new=\"\" roman\";=\"\" mso-bidi-font-family:arial;color:#767676;mso-fareast-language:en-in\"=\"\">Your\r\nAccount<o:p></o:p></span></p><p class=\"MsoNoSpacing\"><span lang=\"EN-IN\">Protection of Your Account: You are\r\nresponsible for maintaining the confidentiality of your account and password\r\nand for restricting access to your computer. You shall be responsible for all\r\nactivities that occur under your account or password.</span></p><p class=\"MsoNoSpacing\"><b><span lang=\"EN-IN\">Use\r\nby Children</span></b><span lang=\"EN-IN\">: Bigdeals24x7.com\r\ndoes sell products for children, but it sells them to adults. If you are under\r\nage of 18 years, you may use Bigdeals24x7.com only with involvement of a parent\r\nor guardian. Bigdeals24x7.com and its affiliates reserve the right to refuse\r\nservice, terminate accounts, remove or edit content, or cancel orders in their\r\nsole discretion.</span></p><p class=\"MsoNormal\" style=\"margin-bottom: 0.0001pt; line-height: normal; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\"><span lang=\"EN-IN\" style=\"font-size:\r\n13.5pt;font-family:\" inherit\",\"serif\";mso-fareast-font-family:\"times=\"\" new=\"\" roman\";=\"\" mso-bidi-font-family:arial;color:#767676;mso-fareast-language:en-in\"=\"\">Gift\r\nVoucher/Wallet/Prepaid Credit (the \"Credit\")<o:p></o:p></span></p><p class=\"MsoNoSpacing\"><span lang=\"EN-IN\">The\r\nCredit cannot be exchanged for cash or cheque.<o:p></o:p></span></p><p class=\"MsoNoSpacing\" style=\"margin-left: 0.5in; text-indent: -0.25in; line-height: 1.2;\"><!--[if !supportLists]--><span lang=\"EN-IN\" style=\"font-size:\r\n10.0pt;mso-bidi-font-size:11.0pt;font-family:Symbol;mso-fareast-font-family:\r\nSymbol;mso-bidi-font-family:Symbol;mso-fareast-language:EN-IN\">·<span style=\"font-variant-numeric: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: \" times=\"\" new=\"\" roman\";\"=\"\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;\r\n</span></span><!--[endif]--><span lang=\"EN-IN\">The holder of the Credit is deemed to be the beneficiary.<o:p></o:p></span></p><p class=\"MsoNoSpacing\" style=\"margin-left: 0.5in; text-indent: -0.25in; line-height: 1.2;\"><!--[if !supportLists]--><span lang=\"EN-IN\" style=\"font-size:\r\n10.0pt;mso-bidi-font-size:11.0pt;font-family:Symbol;mso-fareast-font-family:\r\nSymbol;mso-bidi-font-family:Symbol;mso-fareast-language:EN-IN\">·<span style=\"font-variant-numeric: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: \" times=\"\" new=\"\" roman\";\"=\"\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;\r\n</span></span><!--[endif]--><span lang=\"EN-IN\">The full amount of Credit can be applied to only one account on Bigdeals24x7.com.<o:p></o:p></span></p><p class=\"MsoNoSpacing\" style=\"margin-left: 0.5in; text-indent: -0.25in; line-height: 1.2;\"><!--[if !supportLists]--><span lang=\"EN-IN\" style=\"font-size:\r\n10.0pt;mso-bidi-font-size:11.0pt;font-family:Symbol;mso-fareast-font-family:\r\nSymbol;mso-bidi-font-family:Symbol;mso-fareast-language:EN-IN\">·<span style=\"font-variant-numeric: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: \" times=\"\" new=\"\" roman\";\"=\"\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;\r\n</span></span><!--[endif]--><span lang=\"EN-IN\">Credit cannot be used with other promotional offers on Bigdeals24x7.com.<o:p></o:p></span></p><p class=\"MsoNoSpacing\" style=\"margin-left: 0.5in; text-indent: -0.25in; line-height: 1.2;\"><!--[if !supportLists]--><span lang=\"EN-IN\" style=\"font-size:\r\n10.0pt;mso-bidi-font-size:11.0pt;font-family:Symbol;mso-fareast-font-family:\r\nSymbol;mso-bidi-font-family:Symbol;mso-fareast-language:EN-IN\">·<span style=\"font-variant-numeric: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: \" times=\"\" new=\"\" roman\";\"=\"\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;\r\n</span></span><!--[endif]--><span lang=\"EN-IN\">The Credit can be redeemed on bigdeals24x7.com<o:p></o:p></span></p><p class=\"MsoNoSpacing\" style=\"margin-left: 0.5in; text-indent: -0.25in; line-height: 1.2;\"><!--[if !supportLists]--><span lang=\"EN-IN\" style=\"font-size:\r\n10.0pt;mso-bidi-font-size:11.0pt;font-family:Symbol;mso-fareast-font-family:\r\nSymbol;mso-bidi-font-family:Symbol;mso-fareast-language:EN-IN\">·<span style=\"font-variant-numeric: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: \" times=\"\" new=\"\" roman\";\"=\"\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;\r\n</span></span><!--[endif]--><span lang=\"EN-IN\">Gift Voucher hard copies shall be mailed to the Customer.<o:p></o:p></span></p><p class=\"MsoNoSpacing\" style=\"margin-left: 0.5in; text-indent: -0.25in; line-height: 1.2;\"><!--[if !supportLists]--><span lang=\"EN-IN\" style=\"font-size:\r\n10.0pt;mso-bidi-font-size:11.0pt;font-family:Symbol;mso-fareast-font-family:\r\nSymbol;mso-bidi-font-family:Symbol;mso-fareast-language:EN-IN\">·<span style=\"font-variant-numeric: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: \" times=\"\" new=\"\" roman\";\"=\"\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;\r\n</span></span><!--[endif]--><span lang=\"EN-IN\">Gift Voucher is valid for 12 months from the date of purchase. On\r\nrequest from Customer, Gift Vouchers can be emailed either to the registered\r\nemail ID of Customer or any other email ID designated by Customer, once the\r\nOrder has been processed.</span></p><p class=\"MsoNormal\" style=\"margin-bottom: 0.0001pt; line-height: normal; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\"><span lang=\"EN-IN\" style=\"font-size:\r\n13.5pt;font-family:\" inherit\",\"serif\";mso-fareast-font-family:\"times=\"\" new=\"\" roman\";=\"\" mso-bidi-font-family:arial;color:#767676;mso-fareast-language:en-in\"=\"\">Reviews,\r\nComments, Communications, and other content<o:p></o:p></span></p><p class=\"MsoNoSpacing\"><b><span lang=\"EN-IN\">Nature\r\nof content</span></b><span lang=\"EN-IN\">:\r\nVisitors to Bigdeals24x7.com may post reviews, comments and other content; send\r\ne-cards and other communications; and submit suggestions, ideas, comments,\r\nquestions or other information, as long as the content is not illegal, obscene,\r\nthreatening, defamatory, invasive of privacy, infringing of intellectual\r\nproperty rights to otherwise injurious to third party or objectionable and does\r\nnot consist of or contains software virus, political campaigning, commercial\r\nsolicitation, mass mailing or any form of spam.</span></p><p class=\"MsoNoSpacing\"><b><span lang=\"EN-IN\">False\r\ninformation</span></b><span lang=\"EN-IN\">: You\r\nmay not use false email address, impersonate any person or entity, or otherwise\r\nmislead as to the origin of a card or other content. Bigdeals24x7 reserves the\r\nright (but not the obligation) to remove or edit such content but does not\r\nregularly review posted contents.</span></p><p class=\"MsoNormal\" style=\"margin-bottom: 0.0001pt; line-height: normal; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\"><span lang=\"EN-IN\" style=\"font-size:\r\n13.5pt;font-family:\" inherit\",\"serif\";mso-fareast-font-family:\"times=\"\" new=\"\" roman\";=\"\" mso-bidi-font-family:arial;color:#767676;mso-fareast-language:en-in\"=\"\">Risk of\r\nLoss<o:p></o:p></span></p><p class=\"MsoNoSpacing\"><span lang=\"EN-IN\">All\r\nitems purchased from Bigdeals24x7.com are made pursuant to the shipment\r\ncontract. This means that the risk of loss and title for such item passes on to\r\nyou upon the products delivery.</span></p><p class=\"MsoNormal\" style=\"margin-bottom: 0.0001pt; line-height: normal; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\"><span lang=\"EN-IN\" style=\"font-size:\r\n13.5pt;font-family:\" inherit\",\"serif\";mso-fareast-font-family:\"times=\"\" new=\"\" roman\";=\"\" mso-bidi-font-family:arial;color:#767676;mso-fareast-language:en-in\"=\"\">Product\r\nDescription<o:p></o:p></span></p><p class=\"MsoNoSpacing\"><span lang=\"EN-IN\">Bigdeals24x7.com attempt to be as\r\naccurate as possible. However, Bigdeals24x7.com makes no warranties that the\r\nproduct description and any other content of its site are accurate, complete,\r\nreliable, and current or error free. The product offered by Bigdeals24x7.com\r\nitself is not as described and its sole remedy is to return in its unused\r\ncondition.</span></p><p class=\"MsoNormal\" style=\"margin-bottom: 0.0001pt; line-height: normal; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\"><span lang=\"EN-IN\" style=\"font-size:\r\n13.5pt;font-family:\" inherit\",\"serif\";mso-fareast-font-family:\"times=\"\" new=\"\" roman\";=\"\" mso-bidi-font-family:arial;color:#767676;mso-fareast-language:en-in\"=\"\">Site\r\nPolicies, Modification, and Severability<o:p></o:p></span></p><p class=\"MsoNoSpacing\"><span lang=\"EN-IN\">Please review our other policies. We\r\nreserve the right to make changes to our website, policies, and these Terms and\r\nConditions at any time. If any of these conditions shall be deemed invalid,\r\nvoid, or for any reason unenforceable, that condition shall be deemed severable\r\nand will not affect the validity and enforceability of any remaining\r\nconditions.</span></p><p class=\"MsoNormal\" style=\"margin-bottom: 0.0001pt; line-height: normal; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\"><span lang=\"EN-IN\" style=\"font-size:\r\n13.5pt;font-family:\" inherit\",\"serif\";mso-fareast-font-family:\"times=\"\" new=\"\" roman\";=\"\" mso-bidi-font-family:arial;color:#767676;mso-fareast-language:en-in\"=\"\">Intellectual\r\nProperty Rights<o:p></o:p></span></p><p class=\"MsoNoSpacing\"><b><span lang=\"EN-IN\">Copyright\r\nProtection</span></b><span lang=\"EN-IN\">: All\r\ncontent included on this site, such as text, graphics, logos, button icons, and\r\naudio clips, digital downloads data compilations and software, is the property\r\nof Bigdeals24x7.com and protected by the Indian Copyright law. All software\r\nused in this site is the property of Bigdeals24x7.com and is protected under\r\nthe Indian Copyright law.</span></p><p class=\"MsoNormal\" style=\"margin-bottom: 7.5pt; line-height: 200%; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\"><b><span lang=\"EN-IN\" style=\"font-size:10.5pt;line-height:200%;font-family:\" arial\",\"sans-serif\";=\"\" mso-fareast-font-family:\"times=\"\" new=\"\" roman\";color:#767676;mso-fareast-language:=\"\" en-in\"=\"\">Trademarks</span></b><span lang=\"EN-IN\" style=\"font-size:10.5pt;\r\nline-height:200%;font-family:\" arial\",\"sans-serif\";mso-fareast-font-family:\"times=\"\" new=\"\" roman\";=\"\" color:#767676;mso-fareast-language:en-in\"=\"\">:<o:p></o:p></span></p><p class=\"MsoNoSpacing\" style=\"margin-left: 0.5in; text-indent: -0.25in; line-height: 1.2;\"><!--[if !supportLists]--><span lang=\"EN-IN\" style=\"font-size:\r\n10.0pt;mso-bidi-font-size:11.0pt;font-family:Symbol;mso-fareast-font-family:\r\nSymbol;mso-bidi-font-family:Symbol;mso-fareast-language:EN-IN\">·<span style=\"font-variant-numeric: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: \" times=\"\" new=\"\" roman\";\"=\"\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;\r\n</span></span><!--[endif]--><b><span lang=\"EN-IN\">Protected Marks</span></b><span lang=\"EN-IN\">: bigdeals24x7, www.bigdeals24x7.com,\r\nwebsite is registered trademarks of Bigdeals24x7.com.<o:p></o:p></span></p><p class=\"MsoNoSpacing\" style=\"margin-left: 0.5in; text-indent: -0.25in; line-height: 1.2;\"><!--[if !supportLists]--><span lang=\"EN-IN\" style=\"font-size:\r\n10.0pt;mso-bidi-font-size:11.0pt;font-family:Symbol;mso-fareast-font-family:\r\nSymbol;mso-bidi-font-family:Symbol;mso-fareast-language:EN-IN\">·<span style=\"font-variant-numeric: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: \" times=\"\" new=\"\" roman\";\"=\"\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;\r\n</span></span><!--[endif]--><b><span lang=\"EN-IN\">Protected Graphics</span></b><span lang=\"EN-IN\">: All Bigdeals24x7.com graphics, logos, page headers, button icons,\r\nscripts and service names are trademarks or trade dress of Bigdeals24x7.com.</span>&nbsp;</p><p class=\"MsoNormal\" style=\"margin-bottom: 0.0001pt; line-height: 1.2; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\"><span lang=\"EN-IN\" style=\"font-size:\r\n13.5pt;font-family:\" inherit\",\"serif\";mso-fareast-font-family:\"times=\"\" new=\"\" roman\";=\"\" mso-bidi-font-family:arial;color:#767676;mso-fareast-language:en-in\"=\"\">Governing\r\nLaw and Jurisdiction<o:p></o:p></span></p><p class=\"MsoNoSpacing\" style=\"line-height: 1.2;\"><span lang=\"EN-IN\">These\r\nterms and conditions will be construed only in accordance with the laws of\r\nIndia. In respect of all matters/disputes arising out of, in connection with or\r\nin relation to these terms and conditions or any other conditions on this\r\nwebsite, only the competent Courts at Mumbai, Maharashtra shall have\r\njurisdiction, to the exclusion of all other courts.</span></p><p class=\"MsoNormal\" style=\"margin-bottom: 0.0001pt; line-height: 1.2; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\"><span lang=\"EN-IN\" style=\"font-size:\r\n13.5pt;font-family:\" inherit\",\"serif\";mso-fareast-font-family:\"times=\"\" new=\"\" roman\";=\"\" mso-bidi-font-family:arial;color:#767676;mso-fareast-language:en-in\"=\"\">Disclaimer\r\nof warranties and Limitation of Liability<o:p></o:p></span></p><p class=\"MsoNoSpacing\" style=\"line-height: 1.2;\"><span lang=\"EN-IN\">THIS SITE IS PROVIDED BY BIGDEALS24X7 ON\r\nAN \"AS IS\" AND \"AS AVAILABLE\" BASIS. BIGDEALS24X7.COM MAKES\r\nNO REPRESENTATIONS OR WARRANTIES OF ANY KIND, EXPRESS OR IMPLIED, AS TO THE\r\nOPERATION OF THIS SITE OR THE INFORMATION, CONTENT, MATERIALS, OR PRODUCTS\r\nINCLUED ON THIS SITE. YOU EXPRESSLY AGREE THAT YOUR USE OF THIS SITE IS AT YOUR\r\nSOLE RISK.<o:p></o:p></span></p><p style=\"line-height: 1.2;\">\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n<span lang=\"EN-IN\" style=\"font-size:11.0pt;line-height:115%;font-family:\" calibri\",\"sans-serif\";=\"\" mso-ascii-theme-font:minor-latin;mso-fareast-font-family:calibri;mso-fareast-theme-font:=\"\" minor-latin;mso-hansi-theme-font:minor-latin;mso-bidi-font-family:\"times=\"\" new=\"\" roman\";=\"\" mso-bidi-theme-font:minor-bidi;mso-ansi-language:en-in;mso-fareast-language:=\"\" en-us;mso-bidi-language:ar-sa\"=\"\">TO THE FULL EXTENT PERMISSIBLE BY APPLICABLE\r\nLAW, BIGDEALS24X7.COM DISCLAIMS ALL WARRANTIES, EXPRESS OR IMPLIED, INCLUDING,\r\nBUT NOT LIMITED TO, IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A\r\nPARTICULAR PURPOSE. BIGDEALS24X7.COM DOES NOT WARRANT THAT THE SITE, ITS\r\nSERVERS, OR EMAIL SENT FROM BIGDEALS24X7.COM ARE FREE OF VIRUS OR OTHER HARMFUL\r\nCOMPONENTS. BIGDEALS24X7.COM WILL NOT BE LIABLE FOR ANY DAMAGES OF ANY KIND\r\nARISING FROM THE USE OF THIS SITE, INCLUDING, BUT NOT LIMITED TO DIRECT,\r\nINDIRECT, INCIDENTAL, PUNITIVE AND CONSEQUENTIAL DAMAGES.</span><br></p>'),
(10, 'fb_appid', ''),
(11, 'fb_secret', ''),
(12, 'google_languages', '{}'),
(24, 'meta_description', ''),
(25, 'meta_keywords', ''),
(26, 'meta_author', 'UCB'),
(27, 'captcha_public', '6LdsXPQSAAAAALRQB-m8Irt6-2_s2t10QsVnndVN'),
(28, 'captcha_private', '6LdsXPQSAAAAAFEnxFqW9qkEU_vozvDvJFV67yho'),
(29, 'application_name', ''),
(30, 'client_id', ''),
(31, 'client_secret', ''),
(32, 'redirect_uri', ''),
(33, 'api_key', ''),
(44, 'contact_about', '<p><br></p>'),
(39, 'contact_phone', '+91 84 5200 6677'),
(40, 'contact_email', 'info@bigdeals24x7.com'),
(41, 'contact_website', 'www.bigdeals24x7.com'),
(42, 'footer_text', '<p>Your Footer Text</p>'),
(43, 'footer_category', '[\"21\",\"22\",\"23\",\"24\",\"25\",\"26\",\"27\"]'),
(38, 'contact_address', 'SHOP NO - G/62, GROUND FLOOR, KOHINOOR CITY MALL, KIROL ROAD, KURLA WEST, MUMBAI-400070'),
(45, 'admin_notification_sound', 'ok'),
(46, 'admin_notification_volume', '7.47');
INSERT INTO `general_settings` (`general_settings_id`, `type`, `value`) VALUES
(47, 'privacy_policy', '<p class=\"MsoNoSpacing\"><span lang=\"EN-IN\">We insist on the highest standards for\r\nsecure transactions and customer information privacy since we value the trust\r\nyou place in us.<o:p></o:p></span></p><p class=\"MsoNoSpacing\" style=\"margin-left: 32.2pt; text-indent: -0.25in; line-height: 1.2;\"><!--[if !supportLists]--><span lang=\"EN-IN\" style=\"font-family:Symbol;\r\nmso-fareast-font-family:Symbol;mso-bidi-font-family:Symbol\">·<span style=\"font-variant-numeric: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: &quot;Times New Roman&quot;;\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;\r\n</span></span><!--[endif]--><span lang=\"EN-IN\">Our privacy policy is subject\r\nto change at any time without prior notice. To make sure you are aware of any\r\nchanges, please review this policy periodically.<o:p></o:p></span></p><p class=\"MsoNoSpacing\" style=\"margin-left: 32.2pt; text-indent: -0.25in; line-height: 1.2;\"><!--[if !supportLists]--><span lang=\"EN-IN\" style=\"font-family:Symbol;\r\nmso-fareast-font-family:Symbol;mso-bidi-font-family:Symbol\">·<span style=\"font-variant-numeric: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: &quot;Times New Roman&quot;;\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;\r\n</span></span><!--[endif]--><span lang=\"EN-IN\">By visiting our website you\r\nagree to be bound by the terms and conditions of this Privacy Policy. If you do\r\nnot agree please do not use or access our Website.<o:p></o:p></span></p><p class=\"MsoNoSpacing\" style=\"margin-left: 32.2pt; text-indent: -0.25in; line-height: 1.2;\"><!--[if !supportLists]--><span lang=\"EN-IN\" style=\"font-family:Symbol;\r\nmso-fareast-font-family:Symbol;mso-bidi-font-family:Symbol\">·<span style=\"font-variant-numeric: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: &quot;Times New Roman&quot;;\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;\r\n</span></span><!--[endif]--><span lang=\"EN-IN\">By mere use of the Website, you\r\nexpressly consent to our use and disclosure of your personal information in\r\naccordance with this Privacy Policy. This Privacy Policy is incorporated into\r\nand subject to the Terms of Use.<o:p></o:p></span></p><p class=\"MsoNormal\" style=\"margin-bottom: 0.0001pt; line-height: 200%; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\"><span lang=\"EN-IN\" style=\"font-size:10.5pt;line-height:\r\n200%;font-family:&quot;Arial&quot;,&quot;sans-serif&quot;;mso-fareast-font-family:&quot;Times New Roman&quot;;\r\ncolor:#767676;mso-fareast-language:EN-IN\"><o:p>&nbsp;</o:p></span></p><p class=\"MsoNormal\" style=\"margin-bottom: 0.0001pt; line-height: normal; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\"><b><span lang=\"EN-IN\" style=\"font-size:13.5pt;font-family:&quot;inherit&quot;,&quot;serif&quot;;\r\nmso-fareast-font-family:&quot;Times New Roman&quot;;mso-bidi-font-family:Arial;\r\nmso-fareast-language:EN-IN\">Use and Sharing of Information<o:p></o:p></span></b></p><p class=\"MsoNoSpacing\"><span lang=\"EN-IN\">At no\r\ntime will we sell your personally-identifiable data without your permission\r\nunless set forth in this Privacy Policy. The information we receive about you\r\nor from you may be used by us or shared by us with our corporate affiliates,\r\ndealers, agents, vendors and other third parties to help process your request;\r\nto comply with any law, regulation, audit or court order; to help improve our\r\nwebsite or the products or services we offer; for research; to better\r\nunderstand our customers\' needs; to develop new offerings; and to alert you to\r\nnew products and services (of us or our business associates) in which you may\r\nbe interested. We may also combine information you provide us with information\r\nabout you that is available to us internally or from other sources in order to\r\nbetter serve you.<o:p></o:p></span></p><p class=\"MsoNoSpacing\"><span lang=\"EN-IN\">We do\r\nnot share, sell, trade or rent your personal information to third parties for\r\nunknown reasons.<o:p></o:p></span></p><p class=\"MsoNormal\" style=\"margin-bottom: 0.0001pt; line-height: normal; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\"><br></p><p class=\"MsoNormal\" style=\"margin-bottom: 0.0001pt; line-height: normal; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\"><b><span lang=\"EN-IN\" style=\"font-size:13.5pt;font-family:&quot;inherit&quot;,&quot;serif&quot;;\r\nmso-fareast-font-family:&quot;Times New Roman&quot;;mso-bidi-font-family:Arial;\r\nmso-fareast-language:EN-IN\">Cookies<o:p></o:p></span></b></p><p class=\"MsoNoSpacing\"><span lang=\"EN-IN\">\"Cookies\" are small\r\nidentifiers sent from a web server and stored on your computer\'s hard drive,\r\nthat help us to recognize you if you visit our website again.<o:p></o:p></span></p><p class=\"MsoNoSpacing\"><span lang=\"EN-IN\">From time to time, we may place\r\n\"cookies\" on your personal computer. Also, our site uses cookies to\r\ntrack how you found our site. To protect your privacy we do not use cookies to\r\nstore or transmit any personal information about you on the Internet. You have\r\nthe ability to accept or decline cookies. Most web browsers automatically\r\naccept cookies, but you can usually modify your browser setting to decline\r\ncookies if you prefer. If you choose to decline cookies certain features of the\r\nsite may not function properly or at all as a result.</span></p><p class=\"MsoNormal\" style=\"margin-bottom: 0.0001pt; line-height: normal; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\"><span lang=\"EN-IN\" style=\"font-size:\r\n13.5pt;font-family:&quot;inherit&quot;,&quot;serif&quot;;mso-fareast-font-family:&quot;Times New Roman&quot;;\r\nmso-bidi-font-family:Arial;color:#767676;mso-fareast-language:EN-IN\">Links<o:p></o:p></span></p><p class=\"MsoNoSpacing\"><span lang=\"EN-IN\">Our website contains links to other\r\nsites. Such other sites may use information about your visit to this website.\r\nOur Privacy Policy does not apply to practices of such sites that we do not own\r\nor control or to people we do not employ. Therefore, we are not responsible for\r\nthe privacy practices or the accuracy or the integrity of the content included\r\non such other sites. We encourage you to read the individual privacy statements\r\nof such websites.</span></p><p class=\"MsoNormal\" style=\"margin-bottom: 0.0001pt; line-height: normal; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\"><span lang=\"EN-IN\" style=\"font-size:\r\n13.5pt;font-family:&quot;inherit&quot;,&quot;serif&quot;;mso-fareast-font-family:&quot;Times New Roman&quot;;\r\nmso-bidi-font-family:Arial;color:#767676;mso-fareast-language:EN-IN\">Security<o:p></o:p></span></p><p class=\"MsoNoSpacing\"><span lang=\"EN-IN\">We safeguard your privacy using known\r\nsecurity standards and procedures and comply with applicable privacy laws. Our\r\nwebsites combine industry-approved physical, electronic and procedural\r\nsafeguards to ensure that your information is well protected throughout its\r\nlife cycle in our infrastructure.<o:p></o:p></span></p><p class=\"MsoNoSpacing\"><span lang=\"EN-IN\">Sensitive data is hashed or encrypted\r\nwhen it is stored in our infrastructure. Sensitive data is decrypted, processed\r\nand immediately re-encrypted or discarded when no longer necessary. We host web\r\nservices in audited data centres, with restricted access to the data processing\r\nservers. Controlled access, recorded and live-monitored video feeds, 24/7\r\nstaffed security and biometrics provided in such data centres ensure that we\r\nprovide secure hosting.</span></p><p class=\"MsoNormal\" style=\"margin-bottom: 0.0001pt; line-height: normal; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\"><span lang=\"EN-IN\" style=\"font-size:\r\n13.5pt;font-family:&quot;inherit&quot;,&quot;serif&quot;;mso-fareast-font-family:&quot;Times New Roman&quot;;\r\nmso-bidi-font-family:Arial;color:#767676;mso-fareast-language:EN-IN\">Changes to\r\nthis Privacy Policy<o:p></o:p></span></p><p class=\"MsoNormal\" style=\"margin-bottom: 0.0001pt; line-height: normal; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\">\r\n\r\n</p><p class=\"MsoNoSpacing\"><span lang=\"EN-IN\">Our privacy policy is subject to change\r\nat any time without notice. We may change our Privacy Policy from time to time.\r\nPlease review this policy periodically to make sure you are aware of any\r\nchanges.<o:p></o:p></span></p>'),
(48, 'discus_id', ''),
(49, 'home_notification_sound', 'ok'),
(50, 'homepage_notification_volume', '7.36'),
(51, 'fb_login_set', 'no'),
(52, 'g_login_set', 'no'),
(53, 'slider', 'ok'),
(54, 'revisit_after', '2'),
(55, 'default_member_product_limit', '5'),
(56, 'fb_comment_api', ''),
(57, 'comment_type', 'google'),
(58, 'vendor_system', 'no'),
(59, 'cache_time', '1440'),
(60, 'file_folder', 'jfkfkiriwnfjkmskdcsdfasaa'),
(62, 'slides', 'no'),
(63, 'preloader', '21'),
(64, 'preloader_bg', 'rgba(2,199,242,1)'),
(65, 'preloader_obj', 'rgba(255,255,255,1)'),
(66, 'contact_lat_lang', '(40.7127837, -74.00594130000002)'),
(67, 'google_api_key', ''),
(68, 'physical_product_activation', 'ok'),
(69, 'digital_product_activation', 'no'),
(70, 'data_all_brands', ''),
(71, 'data_all_vendors', '1:::Lavinia Mckee;;;;;;3:::Tom;;;;;;4:::Paprocki;;;;;;5:::Youn'),
(72, 'smtp_host', 'bigdeals24x7.com'),
(73, 'smtp_port', '25'),
(74, 'smtp_user', 'info@bigdeals24x7.com'),
(75, 'smtp_pass', 'soft@123#'),
(76, 'mail_status', 'mail'),
(77, 'captcha_status', 'no'),
(78, 'version', '1.4.7'),
(79, 'about_us', '<p class=\"MsoNormal\"><span style=\"font-size:11.0pt;font-family:\" calibri\",\"sans-serif\";=\"\" mso-bidi-font-family:\"times=\"\" new=\"\" roman\"\"=\"\">Big Deals 24x7 is the online store that\r\nwas launched to provide the customers with completely stress free shopping\r\nexperience. We strive to provide customers with best quality, value and\r\nconvenience in shopping. As the company names suggests, we are ready to offer\r\nyou big deals at the best price, all time.</span></p><p class=\"MsoNormal\"><span style=\"font-size:11.0pt;font-family:\" calibri\",\"sans-serif\";=\"\" mso-bidi-font-family:\"times=\"\" new=\"\" roman\"\"=\"\">The main motto of the company is to\r\nprovide it\'s valuable customers with best branded products at the best price at\r\nthe convenience of their home. Our product ranges are all forms of apparels,\r\nelectronic products, kitchen appliance to beauty products and many more.</span></p><p class=\"MsoNormal\"><span style=\"font-size:11.0pt;font-family:\" calibri\",\"sans-serif\";=\"\" mso-bidi-font-family:\"times=\"\" new=\"\" roman\"\"=\"\">Big Deals 24/7 offer its customers with\r\nthe following:<o:p></o:p></span></p><p class=\"MsoNormal\"><strong><span style=\"font-size:11.0pt;font-family:\" calibri\",\"sans-serif\";=\"\" mso-bidi-font-family:\"times=\"\" new=\"\" roman\"\"=\"\">Unique products at an EXCEPTIONAL VALUE<o:p></o:p></span></strong></p><p class=\"MsoNormal\"><strong><span style=\"font-size:11.0pt;font-family:\" calibri\",\"sans-serif\";=\"\" mso-bidi-font-family:\"times=\"\" new=\"\" roman\"\"=\"\">Ultimate convenience with products\r\ndelivered RIGHT TO YOUR DOOR<o:p></o:p></span></strong></p><p class=\"MsoNormal\"><strong><span style=\"font-size:11.0pt;font-family:\" calibri\",\"sans-serif\";=\"\" mso-bidi-font-family:\"times=\"\" new=\"\" roman\"\"=\"\">FREE SHIPPING on the products purchased*<o:p></o:p></span></strong></p><p class=\"MsoNormal\"><strong><span style=\"font-size:11.0pt;font-family:\" calibri\",\"sans-serif\";=\"\" mso-bidi-font-family:\"times=\"\" new=\"\" roman\"\"=\"\">BEST VALUE for your money</span></strong></p><p>\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n</p><p class=\"MsoNormal\"><strong><span style=\"font-size:11.0pt;font-family:\" calibri\",\"sans-serif\";=\"\" mso-bidi-font-family:\"times=\"\" new=\"\" roman\"\"=\"\">So come let’s start the new trend of\r\nshopping and be a Shopping Maniac!!!</span></strong><span style=\"font-size:\r\n11.0pt;font-family:\" calibri\",\"sans-serif\";mso-bidi-font-family:\"times=\"\" new=\"\" roman\"\"=\"\"><o:p></o:p></span></p>');

-- --------------------------------------------------------

--
-- Table structure for table `language`
--

CREATE TABLE `language` (
  `word_id` int(11) NOT NULL,
  `word` longtext NOT NULL,
  `english` longtext,
  `Bangla` longtext,
  `Spanish` longtext,
  `Arabic` longtext,
  `French` longtext,
  `Chinese` longtext
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `language`
--

INSERT INTO `language` (`word_id`, `word`, `english`, `Bangla`, `Spanish`, `Arabic`, `French`, `Chinese`) VALUES
(1, 'visit_home_page', 'Visit Home Page', 'দর্শন হোম পেজে', 'visita la página de inicio', 'الصفحة الرئيسية زيارة', 'visite page d\'accueil', '访问主页'),
(2, 'profile', 'Profile', 'প্রোফাইলে', 'perfil', 'الملف الشخصي', 'Profil', '轮廓'),
(3, 'logout', 'Logout', 'প্রস্থান', 'cerrar sesión', 'خروج', 'se déconnecter', '登出'),
(4, 'manage_languages', 'Manage Languages', 'প্রত্যেক পরিচালনা', 'gestionar idiomas', 'إدارة اللغات', 'gérer langues', '管理语言'),
(5, 'add_language', 'Add Language', 'ভাষা যোগ', 'agregue un texto', 'إضافة اللغة', 'ajouter la langue', '添加语言'),
(6, 'successfully_added!', 'Successfully Added!', 'সফলভাবে যোগ করা হয়েছে!', '¡Agregado exitosamente!', 'وأضاف بنجاح!', 'Ajouté avec succès!', '添加成功！'),
(7, 'back_to_language_list', 'Back To Language List', 'ফিরে ভাষা লিস্টে', 'volver a la lista de idiomas', 'العودة إلى القائمة لغة', 'Retour à la liste des langues', '回到语言列表'),
(8, 'really_want_to_delete_this_language?', 'Really Want To Delete This Language?', 'সত্যিই এই ভাষা মুছে ফেলতে চান?', 'Realmente desea eliminar este idioma?', 'حقا تريد حذف هذه اللغة؟', 'voulez vraiment supprimer cette langue?', '真的要删除这个语言呢？'),
(9, 'settings_updated!', 'Settings Updated!', 'সেটিংস আপডেট!', '¡Ajustes actualizan!', 'ضبط تجديد!', 'Paramètres mis à jour!', '设置更新了！'),
(10, 'do_you_really_want_to_delete_this_language?', 'Do You Really Want To Delete This Language?', 'আপনি কি সত্যিই এই ভাষা মুছে দিতে চান?', 'es lo que realmente desea eliminar este idioma?', 'هل حقا تريد حذف هذه اللغة؟', 'voulez-vous vraiment supprimer cette langue?', '你真的要删除这个语言呢？'),
(11, 'saving..', 'Saving..', 'সংরক্ষণ ..', 'ahorro..', 'إنقاذ..', 'économie..', '保存..'),
(12, 'dashboard', 'Dashboard', 'ড্যাশবোর্ড', 'tablero', 'لوحة القيادة', 'tableau de bord', '仪表板'),
(13, 'products', 'Products', 'পণ্য', 'productos', 'المنتجات', 'Produits', '制品'),
(14, 'physical_products', 'Physical Products', 'শারীরিক পণ্য', 'productos físicos', 'المنتجات المادية', 'produits physiques', '实物产品'),
(15, 'category', 'Category', 'বিভাগ', 'categoría', 'فئة', 'Catégorie', '类别'),
(16, 'brands', 'Brands', 'ব্র্যান্ড', 'marcas', 'العلامات التجارية', 'marques', '品牌'),
(17, 'sub-category', 'Sub-category', 'উপ-বিভাগ', 'subcategoría', 'الفئة الفرعية', 'sous-catégorie', '子分类'),
(18, 'all_products', 'All Products', 'সব পণ্য', 'todos los productos', 'جميع المنتجات', 'tous les produits', '所有产品'),
(19, 'product_stock', 'Product Stock', 'পণ্য স্টক', 'stock de productos', 'الأسهم المنتج', 'stocks de produits', '产品库存'),
(20, 'digital_products', 'Digital Products', 'ডিজিটাল পণ্য', 'productos digitales', 'المنتجات الرقمية', 'les produits numériques', '数码产品'),
(21, 'all_digitals', 'All Digitals', 'সব সাংখ্যিক', 'todos los elementos digitales', 'جميع digitals', 'tous les digitals', '所有位数七段'),
(22, 'sale', 'Sale', 'বিক্রয়', 'venta', 'تخفيض السعر', 'vente', '拍卖'),
(23, 'discount_coupon', 'Discount Coupon', 'ডিসকাউন্ট কুপন', 'cupón de descuento', 'كوبون الخصم', 'coupon de réduction', '折扣券'),
(24, 'ticket', 'Ticket', 'টিকিট', 'boleto', 'تذكرة', 'billet', '票'),
(25, 'reports', 'Reports', 'রিপোর্ট', 'informes', 'تقارير', 'rapports', '报告'),
(26, 'product_compare', 'Product Compare', 'পণ্য তুলনা করুন', 'comparar producto', 'مقارنة المنتج', 'produit comparer', '产品比较'),
(27, 'product_wishes', 'Product Wishes', 'পণ্য শুভেচ্ছা', 'deseos de productos', 'رغبات المنتج', 'souhaits de produits', '产品的愿望'),
(28, 'vendors', 'Vendors', 'বিক্রেতারা', 'vendedores', 'الباعة', 'vendeurs', '供应商'),
(29, 'vendor_list', 'Vendor List', 'বিক্রেতা তালিকা', 'lista de proveedores', 'قائمة الموردين', 'liste de fournisseurs', '供应商名单'),
(30, 'vendor_payments', 'Vendor Payments', 'বিক্রেতা পেমেন্ট', 'pagos a proveedores', 'مدفوعات البائعين', 'le paiement des fournisseurs', '供应商付款'),
(31, 'vendor_packages', 'Vendor Packages', 'বিক্রেতা প্যাকেজ', 'paquetes de proveedores', 'حزم بائع', 'forfaits fournisseurs', '供应商封装'),
(32, 'vendor\'s_slides', 'Vendor\'s Slides', 'বিক্রেতার স্লাইড', 'diapositivas de proveedores', 'الشرائح البائع', 'Les diapositives de fournisseurs', '供应商的幻灯片'),
(33, 'customers', 'Customers', 'গ্রাহকদের', 'clientes', 'الزبائن', 'les clients', '顾客'),
(34, 'messaging', 'Messaging', 'মেসেজিং', 'mensajería', 'الرسائل', 'Messagerie', '消息'),
(35, 'newsletters', 'Newsletters', 'নিউজলেটার', 'boletines de noticias', 'النشرات الإخبارية', 'bulletins', '新闻简报'),
(36, 'contact_messages', 'Contact Messages', 'যোগাযোগের বার্তা', 'mensajes de contacto', 'رسائل الاتصال', 'messages de contact', '联系人的邮件'),
(37, 'blog', 'Blog', 'ব্লগ', 'Blog', 'مدونة', 'Blog', '博客'),
(38, 'blog_categories', 'Blog Categories', 'ব্লগ বিভাগ', 'categorías del blog', 'فئات بلوق', 'catégories de blog', '博客类别'),
(39, 'all_blogs', 'All Blogs', 'সব ব্লগ', 'todos los blogs', 'جميع بلوق', 'tous les blogs', '所有博客'),
(40, 'frontend_settings', 'Frontend Settings', 'ফ্রন্টএন্ড সেটিংস', 'ajustes frontend', 'إعدادات الواجهة', 'paramètres frontend', '前端设置'),
(41, 'slider_settings', 'Slider Settings', 'স্লাইডার সেটিংস', 'configuración del control deslizante', 'ضبط المنزلق', 'paramètres de curseur', '滑块设置'),
(42, 'layer_slider', 'Layer Slider', 'লেয়ার স্লাইডার', 'deslizador capa', 'طبقة المنزلق', 'couche curseur', '层滑块'),
(43, 'top_slides', 'Top Slides', 'শীর্ষ স্লাইড', 'top diapositivas', 'أعلى الشرائح', 'top diapositives', '顶部幻灯片'),
(44, 'display_settings', 'Display Settings', 'প্রদর্শন সেটিং', 'configuración de la pantalla', 'اعدادات العرض', 'paramètres d\'affichage', '显示设置'),
(45, 'home_page', 'Home Page', 'হোম পেজে', 'página de inicio', 'الصفحة الرئيسية', 'page d\'accueil', '主页'),
(46, 'contact_page', 'Contact Page', 'যোগাযোগের পৃষ্ঠায়', 'pagina de contacto', 'صفحة الاتصال', 'page de contact', '联系方式页面'),
(47, 'footer', 'Footer', 'পেয়াদা', 'pie de página', 'تذييل', 'bas de page', '页脚'),
(48, 'theme_color', 'Theme Color', 'থিম রঙ', 'color del tema', 'اللون موضوع', 'couleur du thème', '主题颜色'),
(49, 'logo', 'Logo', 'লোগো', 'logo', 'شعار', 'logo', '商标'),
(50, 'favicon', 'Favicon', 'ফেভিকন', 'favicon', 'فافيكون', 'favicon', '图标'),
(51, 'fonts', 'Fonts', 'ফন্ট', 'fuentes', 'الخطوط', 'polices', '字体'),
(52, 'preloader', 'Preloader', 'preloader', 'preloader', 'تحميل مسبق', 'preloader', '预载'),
(53, 'site_settings', 'Site Settings', 'সাইট সেটিং', 'configuración del sitio', 'إعدادات الموقع', 'les paramètres du site', '站点设置'),
(54, 'general_settings', 'General Settings', 'সাধারণ সেটিংস', 'Configuración general', 'الاعدادات العامة', 'réglages généraux', '常规设置'),
(55, 'third_party_settings', 'Third Party Settings', 'তৃতীয় পক্ষের সেটিংস', 'ajustes de terceros', 'إعدادات طرف ثالث', 'paramètres de tiers', '第三方设置'),
(56, 'build_responsive_pages', 'Build Responsive Pages', 'প্রতিক্রিয়াশীল পৃষ্ঠাগুলি বিল্ড', 'crear páginas de respuesta', 'بناء صفحات استجابة', 'construire des pages sensibles', '建立反应灵敏的网页'),
(57, 'set_default_images', 'Set Default Images', 'সেট ডিফল্ট ইমেজ', 'imágenes predeterminadas conjunto', 'صور مجموعة افتراضية', 'images ensemble par défaut', '设置默认图像'),
(58, 'business_settings', 'Business Settings', 'ব্যবসা সেটিংস', 'entornos de negocios', 'ضبط رجال الأعمال', 'les milieux d\'affaires', '商业环境'),
(59, 'activation', 'Activation', 'সক্রিয়করণ', 'activación', 'تفعيل', 'activation', '激活'),
(60, 'payment_method', 'Payment Method', 'মূল্যপরিশোধ পদ্ধতি', 'método de pago', 'طريقة الدفع او السداد', 'mode de paiement', '付款方法'),
(61, 'currency_', 'Currency ', 'মুদ্রা ', 'moneda ', 'عملة ', 'devise ', '货币 '),
(62, 'faqs', 'Faqs', 'প্রায়শই জিজ্ঞাসিত প্রশ্নাবলী', 'Preguntas frecuentes', 'الأسئلة الأكثر شيوعا', 'faqs', '常见问题解答'),
(63, 'staffs', 'Staffs', 'কর্মীরা', 'personal', 'الموظفين', 'états-majors', '员工'),
(64, 'all_staffs', 'All Staffs', 'সমস্ত লাঠি', 'todos los personales', 'جميع الموظفين', 'tous les états-majors', '全体员工'),
(65, 'staff_permissions', 'Staff Permissions', 'স্টাফ অনুমতি', 'permisos del personal', 'أذونات الموظفين', 'permissions du personnel', '工作人员的权限'),
(66, 'language', 'Language', 'ভাষা', 'idioma', 'لغة', 'la langue', '语言'),
(67, 'manage_admin_profile', 'Manage Admin Profile', 'অ্যাডমিন প্রোফাইল পরিচালনা', 'administrar el perfil de administración', 'إدارة الملف الشخصي ل admin', 'gérer le profil administrateur', '管理管理配置文件'),
(68, 'activate', 'Activate', 'সক্রিয় করা', 'activar', 'تفعيل', 'activer', '启用'),
(69, 'SEO_proggres', 'SEO Proggres', 'এসইও proggres', 'proggres SEO', 'proggres كبار المسئولين الاقتصاديين', 'proggres SEO', 'SEO proggres'),
(70, 'online_tutorial', 'Online Tutorial', 'অনলাইন টিউটোরিয়াল', 'tutorial en línea', 'البرنامج التعليمي على الانترنت', 'tutoriel en ligne', '在线教程'),
(71, 'checkout', 'Checkout', 'চেকআউট', 'revisa', 'الدفع', 'check-out', '查看'),
(72, 'deleted_successfully', 'Deleted Successfully', 'সফলভাবে মোছা', 'borrado exitosamente', 'حذف بنجاح', 'supprimé avec succès', '成功删除'),
(73, 'cancelled', 'Cancelled', 'বাতিল করা হয়েছে', 'cancelado', 'تم الالغاء', 'annulé', '取消'),
(74, 'cancel', 'Cancel', 'বাতিল', 'cancelar', 'إلغاء', 'Annuler', '取消'),
(75, 'required', 'Required', 'প্রয়োজনীয়', 'necesario', 'مطلوب', 'Obligatoire', '需要'),
(76, 'must_be_a_number', 'Must Be A Number', 'অবশ্যই একটি সংখ্যা হবে', 'Tiene que ser un número', 'يجب أن يكون رقما', 'doit être un nombre', '必须是一个数字'),
(77, 'must_be_a_valid_email_address', 'Must Be A Valid Email Address', 'একটি বৈধ ইমেইল ঠিকানা আবশ্যক', 'Debe ser una dirección de correo electrónico válida', 'يجب أن يكون عنوان بريد إلكتروني صالح', 'doit être une adresse e-mail valide', '必须是一个有效的E-mail地址'),
(78, 'save', 'Save', 'রক্ষা', 'salvar', 'حفظ', 'enregistrer', '保存'),
(79, 'product_published!', 'Product Published!', 'পণ্য প্রকাশিত!', 'publicó producto!', 'المنتج نشر!', 'produit publié!', '产品发表！'),
(80, 'product_unpublished!', 'Product Unpublished!', 'পণ্য অপ্রকাশিত!', 'producto inédito!', 'المنتج غير منشورة!', 'produit inédit!', '产品未公布！'),
(81, 'product_featured!', 'Product Featured!', 'পণ্য বৈশিষ্ট্যযুক্ত করা হবে!', 'Producto Show!', 'المنتج المميز!', 'produit vedette!', '产品特色！'),
(82, 'product_unfeatured!', 'Product Unfeatured!', 'পণ্য unfeatured!', 'producto sin rasgos!', 'المنتج unfeatured!', 'produit unfeatured!', '产品unfeatured！'),
(83, 'product_in_todays_deal!', 'Product In Todays Deal!', 'আজকের মধ্যে পণ্য মোকাবেলা!', 'producto en el actual reparto!', 'المنتج في اليوم التعامل!', 'produit aujourd\'hui face!', '产品在今天的交易！'),
(84, 'product_removed_from_todays_deal!', 'Product Removed From Todays Deal!', 'পণ্য আজকের ডিল থেকে সরানো!', 'producto retirado de hoy trato!', 'منتج إزالة من صفقة اليوم!', 'produit retiré de la retransmission de ce deal!', '产品从今天的交易中删除！'),
(85, 'slider_published!', 'Slider Published!', 'স্লাইডার প্রকাশিত!', 'deslizador publicada!', 'المنزلق نشرت!', 'curseur publié!', '滑块公布！'),
(86, 'slider_unpublished!', 'Slider Unpublished!', 'স্লাইডার অপ্রকাশিত!', 'deslizador inédita!', 'المنزلق غير منشورة!', 'curseur inédit!', '滑块未公布！'),
(87, 'page_published!', 'Page Published!', 'পৃষ্ঠা প্রকাশিত!', 'página publicada!', 'الصفحة نشرت!', 'page publiée!', '公布的一页！'),
(88, 'page_unpublished!', 'Page Unpublished!', 'পৃষ্ঠা অপ্রকাশিত!', 'página inédita!', 'الصفحة غير منشورة!', 'Page inédite!', '页未公布！'),
(89, 'notification_sound_enabled!', 'Notification Sound Enabled!', 'নোটিফিকেশন সাউন্ড সক্রিয়!', 'sonido de notificación activado!', 'صوت الإعلام تمكين!', 'notification sonore activé!', '通知声音启用！'),
(90, 'notification_sound_disabled!', 'Notification Sound Disabled!', 'নোটিফিকেশন সাউন্ড অক্ষম!', 'sonido de notificación habilitado!', 'صوت الإعلام تعطيل!', 'notification sonore désactivé!', '通知声音禁用！'),
(91, 'google_login_enabled!', 'Google Login Enabled!', 'গুগল লগ-ইন সক্রিয়!', 'Google entrada activado!', 'جوجل تسجيل الدخول تمكين!', 'google connexion activé!', '谷歌登录启用！'),
(92, 'google_login_disabled!', 'Google Login Disabled!', 'গুগল লগইন অক্ষম!', 'Google entrada habilitado!', 'جوجل تسجيل الدخول تعطيل!', 'google connexion désactivé!', '谷歌登录禁用！'),
(93, 'facebook_login_enabled!', 'Facebook Login Enabled!', 'ফেসবুক লগ-ইন সক্রিয়!', 'Facebook login activado!', 'الفيسبوك تسجيل الدخول تمكين!', 'facebook connexion activé!', 'Facebook登录启用！'),
(94, 'facebook_login_disabled!', 'Facebook Login Disabled!', 'ফেসবুক লগইন অক্ষম!', 'Facebook login habilitado!', 'الفيسبوك تسجيل الدخول تعطيل!', 'facebook connexion désactivé!', 'Facebook登录禁用！'),
(95, 'paypal_payment_disabled!', 'Paypal Payment Disabled!', 'পেপ্যাল ​​অক্ষম!', 'el pago de PayPal habilitado!', 'الدفع باي بال تعطيل!', 'paiement paypal désactivé!', '支付宝付款禁用！'),
(96, 'paypal_payment_enabled!', 'Paypal Payment Enabled!', 'পেপাল পেমেন্ট সক্রিয়!', 'el pago de PayPal activado!', 'الدفع باي بال تمكين!', 'le paiement par PayPal activé!', '支付宝付款启用！'),
(97, 'slider_enabled!', 'Slider Enabled!', 'স্লাইডার সক্রিয়!', 'deslizador activado!', 'المنزلق تمكين!', 'curseur activé!', '滑块启用！'),
(98, 'slider_disabled!', 'Slider Disabled!', 'স্লাইডার অক্ষম!', 'deslizador habilitado!', 'المنزلق تعطيل!', 'curseur désactivé!', '滑块禁用！'),
(99, 'cash_payment_enabled!', 'Cash Payment Enabled!', 'নগদ পেমেন্ট সক্রিয়!', 'pago en efectivo activado!', 'الدفع نقدا تمكين!', 'paiement en espèces activé!', '现金支付启用！'),
(100, 'cash_payment_disabled!', 'Cash Payment Disabled!', 'নগদ পেমেন্ট নিষ্ক্রিয়!', 'pago en efectivo habilitado!', 'الدفع نقدا تعطيل!', 'paiement en espèces désactivé!', '现金支付禁用！'),
(101, 'enabled!', 'Enabled!', 'সক্রিয়!', 'habilitado!', 'تمكين!', 'activée!', '启用！'),
(102, 'disabled!', 'Disabled!', 'অক্ষম!', '¡discapacitado!', 'معاق!', 'désactivée!', '禁用！'),
(103, 'notification_email_sent_to_vendor!', 'Notification Email Sent To Vendor!', 'ই-মেইলের বিক্রেতা পাঠানো!', 'correo electrónico de notificación enviado al proveedor!', 'إشعار البريد الإلكتروني أرسلت إلى بائع!', 'courriel de notification envoyé au fournisseur!', '通知电子邮件发送给供应商！'),
(104, 'working...', 'Working...', 'কাজ করছে ...', 'trabajando...', 'العمل ...', 'travailler...', '加工...'),
(105, 'no', 'No', 'না', 'no', 'لا', 'non', '没有'),
(106, 'name', 'Name', 'নাম', 'nombre', 'اسم', 'prénom', '名称'),
(107, 'icon', 'Icon', 'আইকন', 'icono', 'أيقونة', 'icône', '图标'),
(108, 'publish', 'Publish', 'প্রকাশ করা', 'publicar', 'نشر', 'publier', '发布'),
(109, 'options', 'Options', 'অপশন', 'opciones', 'خيارات', 'Options', '选项'),
(110, 'language_enabled', 'Language Enabled', 'ভাষা সক্রিয়', 'idioma habilitado', 'لغة سكريبت', 'langue activée', '语言启用'),
(111, 'language_disabled', 'Language Disabled', 'ভাষা অক্ষম', 'idioma desactivado', 'لغة تعطيل', 'langue désactivé', '禁用语'),
(112, 'edit_language_list', 'Edit Language List', 'সম্পাদনা নতুন ভাষাটি তালিকায় আগে', 'lista de idiomas de edición', 'تحرير القائمة لغة', 'modifier la liste des langues', '编辑语言列表'),
(113, 'successfully_edited!', 'Successfully Edited!', 'সফলভাবে সম্পাদিত!', 'editado correctamente!', 'بنجاح تحريرها!', 'édité avec succès!', '编辑成功！'),
(114, 'set_translations', 'Set Translations', 'সেট অনুবাদের', 'traducciones conjunto', 'تعيين ترجمة', 'traductions set', '译文集'),
(115, 'edit_language', 'Edit Language', 'সম্পাদনা ভাষা', 'editar idioma', 'تحرير لغة', 'modifier la langue', '编辑语言'),
(116, 'edit', 'Edit', 'সম্পাদন করা', 'editar', 'تحرير', 'modifier', '编辑'),
(117, 'delete_language', 'Delete Language', 'ভাষা মুছতে', 'eliminar el lenguaje', 'حذف اللغة', 'supprimer la langue', '删除语言'),
(118, 'select_language', 'Select Language', 'ভাষা নির্বাচন কর', 'seleccione el idioma', 'اختر اللغة', 'Choisir la langue', '选择语言'),
(119, 'word', 'Word', 'শব্দ', 'palabra', 'كلمة', 'mot', '字'),
(120, 'translation', 'Translation', 'অনুবাদ', 'traducción', 'ترجمة', 'Traduction', '翻译'),
(121, 'translate', 'Translate', 'অনুবাদ', 'traducir', 'ترجم', 'Traduire', '翻译'),
(122, 'save_all', 'Save All', 'সব সংরক্ষণ করুন', 'salvar a todos', 'احفظ الكل', 'sauver tous', '保存全部'),
(123, 'saving', 'Saving', 'রক্ষা', 'ahorro', 'إنقاذ', 'économie', '保存'),
(124, 'updated!', 'Updated!', 'আপডেট!', '¡actualizado!', 'تحديث!', 'actualisé!', '更新！'),
(125, 'really_want_to_delete_this_word?', 'Really Want To Delete This Word?', 'সত্যিই এই শব্দ মুছে ফেলতে চান?', 'De verdad quiere eliminar esta palabra?', 'حقا تريد حذف هذه الكلمة؟', 'voulez vraiment supprimer ce mot?', '真的要删除这个词？'),
(126, 'delete', 'Delete', 'মুছে ফেলা', 'borrar', 'حذف', 'effacer', '删除'),
(127, 'home', 'Home', 'বাড়ি', 'casa', 'الصفحة الرئيسية', 'domicile', '家'),
(128, 'subtotal', 'Subtotal', 'উপমোট', 'total parcial', 'حاصل الجمع', 'Sous-Total', '小计'),
(129, 'close', 'Close', 'ঘনিষ্ঠ', 'cerca', 'أغلق', 'Fermer', '关'),
(130, 'faq', 'Faq', 'অনবরত জিজ্ঞাসিত প্রশ্ন', 'Preguntas más frecuentes', 'التعليمات', 'FAQ', '常问问题'),
(131, 'login', 'Login', 'লগইন', 'iniciar sesión', 'تسجيل الدخول', 's\'identifier', '登录'),
(132, 'registration', 'Registration', 'নিবন্ধন', 'registro', 'التسجيل', 'enregistrement', '注册'),
(133, 'customer_registration', 'Customer Registration', 'গ্রাহক নিবন্ধন', 'registro de clientes', 'تسجيل العملاء', 'enregistrement des clients', '客户注册'),
(134, 'vendor_registration', 'Vendor Registration', 'বিক্রেতার নিবন্ধন', 'la inscripción de proveedores', 'تسجيل البائعين', 'l\'inscription des fournisseurs', '供应商登记'),
(135, 'what_are_you_looking_for', 'What Are You Looking For', 'আপনি কি খুজছেন', 'qué estás buscando', 'عما تبحث', 'que cherchez-vous', '你在找什么'),
(136, 'select', 'Select', 'নির্বাচন করা', 'seleccionar', 'اختار', 'sélectionner', '选择'),
(137, 'all_categories', 'All Categories', 'সব ধরনের', 'todas las categorias', 'جميع الفئات', 'toutes catégories', '所有类别'),
(138, 'product', 'Product', 'পণ্য', 'producto', 'المنتج', 'produit', '产品'),
(139, 'vendor', 'Vendor', 'বিক্রেতা', 'vendedor', 'بائع', 'vendeur', '供应商'),
(140, 'compare', 'Compare', 'তুলনা করা', 'comparar', 'قارن', 'comparer', '比较'),
(141, 'item(s)', 'Item(s)', 'বস্তু (গুলি)', 'artículos)', 'العناصر)', 'articles)', '项目（S）'),
(142, 'homepage', 'Homepage', 'হোমপেজে', 'página principal', 'الصفحة الرئيسية', 'page d\'accueil', '主页'),
(143, 'all_sub_categories', 'All Sub Categories', 'সব সাব আরও', 'todas las subcategorías', 'جميع الفئات الفرعية', 'toutes les sous-catégories', '所有子类'),
(144, 'featured_products', 'Featured Products', 'বৈশিষ্ট্যযুক্ত পণ্য', 'Productos Destacados', 'منتجات مميزة', 'produits présentés', '特色产品'),
(145, 'todays_deal', 'Todays Deal', 'আজকের চুক্তি', 'oferta del día de hoy', 'صفقة اليوم', 'la retransmission de ce deal', '今天的交易'),
(146, 'all_brands', 'All Brands', 'সব ব্র্যান্ডের', 'todas las marcas', 'جميع العلامات التجارية', 'toutes les marques', '所有品牌'),
(147, 'all_vendors', 'All Vendors', 'সব বিক্রেতারা', 'todos los proveedores', 'جميع البائعين', 'tous les fournisseurs', '所有厂商'),
(148, 'blogs', 'Blogs', 'ব্লগ', 'blogs', 'بلوق', 'blogs', '博客'),
(149, 'store_locator', 'Store Locator', 'দোকান লোকেটার', 'localizador de tiendas', 'فروعنا', 'localisateur de magasin', '商店定位器'),
(150, 'contact', 'Contact', 'যোগাযোগ', 'contacto', 'اتصال', 'contact', '联系'),
(151, 'more', 'More', 'অধিক', 'Más', 'أكثر', 'plus', '更多'),
(152, 'latest_products', 'Latest Products', 'সাম্প্রতিক পণ্যসমূহ', 'últimos productos', 'آخر المنتجات', 'derniers produits', '最新产品'),
(153, 'more_categories', 'More Categories', 'আরো বিভাগ', 'más categorías', 'المزيد من التصنيفات', 'plus de catégories', '多个类别'),
(154, 'today\'s_deal', 'Today\'s Deal', 'আজকের চুক্তি', 'La oferta de hoy', 'صفقة اليوم', 'l\'offre d\'aujourd\'hui', '今天的交易'),
(155, 'quick_view', 'Quick View', 'তারাতারি দেখা', 'Vista rápida', 'نظرة سريعة', 'aperçu rapide', '快速浏览'),
(156, 'search', 'Search', 'অনুসন্ধান', 'buscar', 'بحث', 'chercher', '搜索'),
(157, 'latest', 'Latest', 'সর্বশেষ', 'último', 'آخر', 'dernier', '最新'),
(158, 'featured', 'Featured', 'সুগঠনবিশিষ্ট', 'destacado', 'متميز', 'en vedette', '精选'),
(159, 'discount', 'Discount', 'ডিসকাউন্ট', 'descuento', 'خصم', 'remise', '折扣'),
(160, 'add_to_wishlist', 'Add To Wishlist', 'চাহিদাপত্রে যোগ করা', 'añadir a la lista de deseos', 'إضافة إلى سلة', 'ajouter à la liste de souhaits', '加入收藏'),
(161, 'add_to_cart', 'Add To Cart', 'কার্ট যোগ', 'añadir a la cesta', 'أضف إلى السلة', 'ajouter au panier', '添加到购物车'),
(162, 'out_of_stock', 'Out Of Stock', 'স্টক আউট', 'Agotado', 'إنتهى من المخزن', 'rupture de stock', '缺货'),
(163, 'visit', 'Visit', 'দর্শন', 'visitar', 'زيارة', 'visite', '访问'),
(164, 'recently_viewed', 'Recently Viewed', 'সম্প্রতি দেখা', 'visto recientemente', 'شوهدت مؤخرا', 'vu récemment', '最近浏览过的'),
(165, 'most_viewed', 'Most Viewed', 'সর্বাধিক দেখা', 'mas visto', 'الأكثر مشاهدة', 'le plus regardé', '最受关注'),
(166, 'our_available_brands', 'Our Available Brands', 'আমাদের উপলব্ধ ব্রান্ডের', 'nuestras marcas disponibles', 'علاماتنا التجارية المتاحة', 'nos marques disponibles', '我们现有的品牌'),
(167, 'email_address', 'Email Address', 'ই-মেইল ঠিকানা', 'dirección de correo electrónico', 'عنوان البريد الإلكتروني', 'adresse e-mail', '电子邮件地址'),
(168, 'subscribe', 'Subscribe', 'সাবস্ক্রাইব', 'suscribir', 'الاشتراك', 'souscrire', '订阅'),
(169, 'categories', 'Categories', 'বিভাগ', 'categorías', 'الفئات', 'Catégories', '类别'),
(170, 'useful_links', 'Useful Links', 'উপকারী সংজুক', 'Enlaces útiles', 'روابط مفيدة', 'Liens utiles', '有用的链接'),
(171, 'contact_us', 'Contact Us', 'আমাদের সাথে যোগাযোগ করুন', 'Contáctenos', 'اتصل بنا', 'Contactez nous', '联系我们'),
(172, 'address', 'Address', 'ঠিকানা', 'dirección', 'عنوان', 'adresse', '地址'),
(173, 'phone', 'Phone', 'ফোন', 'teléfono', 'هاتف', 'téléphone', '电话'),
(174, 'website', 'Website', 'ওয়েবসাইট', 'sitio web', 'موقع الكتروني', 'site Internet', '网站'),
(175, 'email', 'Email', 'ই-মেইল', 'correo electrónico', 'البريد الإلكتروني', 'email', '电子邮件'),
(176, 'all_rights_reserved', 'All Rights Reserved', 'সর্বস্বত্ব সংরক্ষিত', 'todos los derechos reservados', 'كل الحقوق محفوظة', 'tous les droits sont réservés', '版权所有'),
(177, 'terms_&_condition', 'Terms & Condition', 'বিধি - নিষেধ এবং শর্তাবলী', 'términos y Condiciones', 'الشروط والأحكام', 'termes et conditions', '条款和条件'),
(178, 'privacy_policy', 'Privacy Policy', 'গোপনীয়তা নীতি', 'política de privacidad', 'سياسة الخصوصية', 'politique de confidentialité', '隐私政策'),
(179, 'product_added_to_cart', 'Product Added To Cart', 'পণ্য কার্ট যোগ', 'Producto añadido al carrito', 'وأضاف المنتج إلى سلة التسوق', 'produit ajouté au panier', '产品加入购物车'),
(180, 'added_to_cart', 'Added To Cart', 'কার্ট যোগ', 'Añadido a la cesta', 'إضافة إلى العربة', 'ajouté au panier', '添加到购物车'),
(181, 'product_quantity_exceed_availability!', 'Product Quantity Exceed Availability!', 'পণ্যের পরিমাণ প্রাপ্যতা অতিক্রম!', 'cantidad de producto excede la disponibilidad!', 'كمية المنتج تتجاوز توافر!', 'quantité de produit dépasse la disponibilité!', '产品数量超过供应！'),
(182, 'product_already_added_to_cart!', 'Product Already Added To Cart!', 'পণ্য ইতিমধ্যে কার্ট যোগ করা হয়েছে!', 'producto ya ha añadido a la cesta!', 'وأضاف المنتج بالفعل إلى السلة', 'produit déjà ajouté au panier!', '产品已添加到购物车！'),
(183, 'product_added_to_wishlist', 'Product Added To Wishlist', 'পণ্য লিস্টে যোগ', 'producto que se añade a la lista de deseos', 'وأضاف المنتج إلى سلة', 'Produit ajouté à la liste de souhaits', '产品加入心愿'),
(184, 'wished', 'Wished', 'কাম্য', 'deseado', 'تمنى', 'souhaité', '希望'),
(185, 'wishing..', 'Wishing..', 'তবেই ..', 'deseando..', 'متمنيا ..', 'souhaitant ..', '希望..'),
(186, 'product_removed_from_wishlist', 'Product Removed From Wishlist', 'পণ্যের তালিকা থেকে সরানো', 'producto retirado de la lista de deseos', 'المنتج إزالتها من سلة', 'produit retiré de la liste de souhaits', '从产品的愿望清单中移除'),
(187, 'product_added_to_compared', 'Product Added To Compared', 'পণ্য তুলনা যোগ করা', 'producto que se añade a la comparación', 'وأضاف المنتج مقارنة', 'Produit ajouté au rapport', '产品附加值比较'),
(188, 'compared', 'Compared', 'তুলনা', 'comparado', 'مقارنة', 'par rapport', '相比'),
(189, 'working..', 'Working..', 'কাজ ..', 'trabajando..', 'العمل ..', 'travailler..', '加工..'),
(190, 'product_removed_from_compare', 'Product Removed From Compare', 'পণ্য তুলনা থেকে সরানো', 'producto retirado de comparar', 'منتج إزالة من المقارنة', 'produit retiré de comparer', '从对比产品中删除'),
(191, 'compare_category_full', 'Compare Category Full', 'বিভাগ পূর্ণ তুলনা', 'comparar la categoría completa', 'مقارنة فئة كاملة', 'comparer la catégorie complète', '比较全品类'),
(192, 'product_already_added_to_compare', 'Product Already Added To Compare', 'পণ্য ইতিমধ্যে তুলনা যোগ করা', 'en el producto ya añadió comparar', 'وأضاف المنتج بالفعل للمقارنة', 'produit déjà ajouté à comparer', '产品已添加到比较'),
(193, 'product_rated_successfully', 'Product Rated Successfully', 'পণ্য সফলভাবে রেট', 'producto puntuado', 'المنتج تصنيفا بنجاح', 'produit évalué avec succès', '产品额定成功'),
(194, 'product_rating_failed', 'Product Rating Failed', 'পণ্য রেটিং ব্যর্থ', 'Puntuación producto falló', 'فشل تصنيف المنتج', 'Evaluation du produit a échoué', '产品等级不合格'),
(195, 'you_already_rated_this_product', 'You Already Rated This Product', 'আপনি ইতিমধ্যে এই পণ্য রেট', 'pero ya has puntuado este producto', 'كنت تصنيفا بالفعل هذا المنتج', 'vous avez déjà évalué ce produit', '您已经评价过此产品'),
(196, 'you_already_subscribed', 'You Already Subscribed', 'আপনি ইতিমধ্যে সাবস্ক্রাইব করা', 'ya suscrito', 'كنت قد اشتركت بالفعل', 'vous êtes déjà inscrit', '你已经订阅'),
(197, 'you_subscribed_successfully', 'You Subscribed Successfully', 'আপনি সফলভাবে সাবস্ক্রাইব', 'se ha suscrito con éxito', 'كنت قد اشتركت بنجاح', 'vous avez souscrit avec succès', '你成功订阅'),
(198, 'you_already_subscribed_thrice_from_this_browser', 'You Already Subscribed Thrice From This Browser', 'আপনি ইতিমধ্যে এই ব্রাউজার থেকে তিনবার সাবস্ক্রাইব করা', 'ya suscrito por tres veces de este navegador', 'كنت قد اشتركت بالفعل ثلاث مرات من هذا المتصفح', 'vous êtes déjà inscrit trois fois à partir de ce navigateur', '你已经订阅三次从这个浏览器'),
(199, 'logging_in..', 'Logging In..', 'লগ-ইন ..', 'iniciar sesión..', 'تسجيل الدخول..', 'Se connecter..', '在登录..'),
(200, 'you_logged_in_successfully', 'You Logged In Successfully', 'আপনি সফলভাবে লগ', 'inició la sesión con éxito', 'قمت بتسجيل الدخول بنجاح', 'vous vous êtes connecté avec succès', '你登录成功'),
(201, 'login_failed!_try_again!', 'Login Failed! Try Again!', 'লগইন ব্যর্থ! </font><font>আবার চেষ্টা কর!', '¡error de inicio de sesion! </font><font>¡Inténtalo de nuevo!', 'فشل تسجيل الدخول! </font><font>حاول ثانية!', 'échec de la connexion! </font><font>réessayer!', '登录失败！</font><font>再试一次！'),
(202, 'you_registered_successfully', 'You Registered Successfully', 'আপনি সাফল্যের সাথে নিবন্ধিত', 'se registró con éxito', 'قمت بتسجيل بنجاح', 'vous avez enregistré avec succès', '你注册成功'),
(203, 'registration_failed!_try_again!', 'Registration Failed! Try Again!', 'রেজিস্ট্রেশন ব্যর্থ হয়েছে! </font><font>আবার চেষ্টা কর!', '¡registro fallido! </font><font>¡Inténtalo de nuevo!', 'فشل في التسجيل! </font><font>حاول ثانية!', 'échec de l\'enregistrement! </font><font>réessayer!', '注册失败！</font><font>再试一次！'),
(204, 'submitting..', 'Submitting..', 'জমা ..', 'sumisión..', 'تقديم..', 'soumission..', '提交..'),
(205, 'email_sent_successfully', 'Email Sent Successfully', 'ইমেল সফলভাবে পাঠানো', 'correo electrónico enviado con éxito', 'ارسال البريد الالكتروني بنجاح', 'E-mail envoyé avec succès', '电子邮件发送成功'),
(206, 'email_does_not_exist!', 'Email Does Not Exist!', 'ই-মেইল অস্তিত্ব নেই!', 'correo electrónico no existe!', 'البريد الإلكتروني غير موجود!', 'email n\'existe pas!', '电子邮件不存在！'),
(207, 'email_sending_failed!_try_again', 'Email Sending Failed! Try Again', 'ই-মেইল পাঠানো ব্যর্থ! </font><font>আবার চেষ্টা কর', 'correo electrónico no ha podido enviar! </font><font>Inténtalo de nuevo', 'إرسال البريد الإلكتروني فشل! </font><font>حاول ثانية', 'email envoi a échoué! </font><font>réessayer', '电子邮件发送失败！</font><font>再试一次'),
(208, 'logging_in', 'Logging In', 'লগ-ইন', 'iniciar sesión', 'تسجيل الدخول', 'Se connecter', '在登录'),
(209, 'adding_to_cart..', 'Adding To Cart..', 'কার্ট যোগ ..', 'añadir a la cesta ..', 'مشيرا إلى السلة ..', 'd\'ajouter au panier ..', '添加到购物车..'),
(210, 'product_removed_from_cart', 'Product Removed From Cart', 'পণ্য কার্ট থেকে সরানো', 'producto retirado de la compra', 'المنتج إزالتها من سلة', 'produit retiré du panier', '从产品的购物车中移除'),
(211, 'the_field_is_required', 'The Field Is Required', 'ক্ষেত্র প্রয়োজন বোধ করা হয়', 'El campo es obligatorio', 'مطلوب مجال', 'le champ est obligatoire', '现场要求'),
(212, 'enter_a_valid_email_address', 'Enter A Valid Email Address', 'একটি বৈধ ইমেইল ঠিকানা লিখুন', 'Introduzca una dirección de correo electrónico válida', 'أدخل عنوان بريد إلكتروني صالح', 'Entrez une adresse mail valide', '输入一个有效的电子邮件地址'),
(213, 'applying..', 'Applying..', 'আবেদন ..', 'aplicar ..', 'تطبيق ..', 'application ..', '应用..'),
(214, 'coupon_not_valid', 'Coupon Not Valid', 'কুপন বৈধ নয়', 'cupón no válido', 'القسيمة غير صالحة', 'coupon pas valide', '优惠券无效'),
(215, 'coupon_discount_successful', 'Coupon Discount Successful', 'কুপন ডিসকাউন্ট সফল', 'cupón de descuento con éxito', 'قسيمة خصم ناجحة', 'coupon de réduction réussie', '优惠券折扣成功'),
(216, 'favored', 'Favored', 'বিশেষ সুবিধাপ্রাপ্ত', 'favorecido', 'مفضل', 'favorisé', '青睐'),
(217, 'successful_login', 'Successful Login', 'সফল অনুপ্রবেশ', 'acceso exitoso', 'نجاح تسجيل الدخول', 'Connexion réussie', '登录成功'),
(218, 'login_failed', 'Login Failed', 'লগইন ব্যর্থ', 'error de inicio de sesion', 'فشل تسجيل الدخول', 'échec de la connexion', '登录失败'),
(219, 'sign_in_to_your_account', 'Sign In To Your Account', 'আপনার অ্যাকাউন্টে সাইন ইন করুন', 'Iniciar sesión en su cuenta', 'تسجيل الدخول إلى حسابك', 'Connectez-vous à votre compte', '登录到您的帐户'),
(220, 'password', 'Password', 'পাসওয়ার্ড', 'contraseña', 'كلمه السر', 'mot de passe', '密码'),
(221, 'forget_password', 'Forget Password', 'পাসওয়ার্ড ভুলে গেছেন', 'contraseña olvidada', 'نسيت كلمة', 'mot de passe oublié', '忘记密码'),
(222, 'email_sent_with_new_password!', 'Email Sent With New Password!', 'ই-মেইল নতুন পাসওয়ার্ড দিয়ে ডেকে পাঠিয়েছি!', 'correo electrónico enviado con la nueva contraseña!', 'تم إرسال رسالة إلكترونية مع كلمة مرور جديدة!', 'email envoyé avec le nouveau mot de passe!', '电子邮件与新密码发送！'),
(223, 'forgot_password', 'Forgot Password', 'পাসওয়ার্ড ভুলে গেছেন', 'Se te olvidó tu contraseña', 'هل نسيت كلمة المرور', 'mot de passe oublié', '忘记密码'),
(224, 'sign_in', 'Sign In', 'প্রবেশ কর', 'registrarse', 'تسجيل الدخول', 'se connecter', '签到'),
(225, 'this_field_is_required', 'This Field Is Required', 'ঘরটি অবশ্যই পূরণ করতে হবে', 'este campo es requerido', 'هذه الخانة مطلوبه', 'Ce champ est requis', '这是必填栏'),
(226, 'signing_in...', 'Signing In...', 'সাইন ইন...', 'iniciando sesión...', 'تسجيل الدخول...', 'Connectez-vous...', '登录中...'),
(227, 'new_password_sent_to_your_email', 'New Password Sent To Your Email', 'আপনার ই-মেইল পাঠানো নতুন পাসওয়ার্ড', 'nueva contraseña enviada a su correo electrónico', 'كلمة المرور الجديدة إرسالها إلى البريد الإلكتروني الخاص بك', 'nouveau mot de passe envoyé à votre email', '发送到您的邮箱的新密码'),
(228, 'login_failed!', 'Login Failed!', 'লগইন ব্যর্থ!', '¡error de inicio de sesion!', 'فشل تسجيل الدخول!', 'échec de la connexion!', '登录失败！'),
(229, 'wrong_e-mail_address!_try_again', 'Wrong E-mail Address! Try Again', 'ভুল ই-মেইল ঠিকানা! </font><font>আবার চেষ্টা কর', '¡Dirección de correo errónea! </font><font>Inténtalo de nuevo', 'الخطأ عنوان البريد الإلكتروني! </font><font>حاول ثانية', 'Adresse e-mail mal! </font><font>réessayer', '错误的电子邮件地址！</font><font>再试一次'),
(230, 'login_successful!', 'Login Successful!', 'সফল লগইন!', '¡Inicio de sesión correcto!', 'تم الدخول بنجاح!', 'connexion réussie!', '登陆成功！'),
(231, 'SUCCESS!', 'SUCCESS!', 'সাফল্য!', '¡ÉXITO!', 'نجاح!', 'LE SUCCÈS!', '成功！'),
(232, 'reset_password', 'Reset Password', 'পাসওয়ার্ড রিসেট করুন', 'restablecer la contraseña', 'اعادة تعيين كلمة السر', 'réinitialiser le mot de passe', '重设密码'),
(233, 'account_not_approved._wait_for_approval.', 'Account Not Approved. Wait For Approval.', 'অনুমোদন না অ্যাকাউন্ট. </font><font>অনুমোদনের জন্য অপেক্ষা করুন.', 'cuenta de que no esté aprobado. </font><font>esperar la aprobación.', 'حساب غير معتمدة. </font><font>الانتظار للموافقة عليها.', 'compte pas approuvé. </font><font>attendre l\'approbation.', '占未获批准。</font><font>等待批准。'),
(234, '24_hours_stock', '24 Hours Stock', '24 ঘণ্টা স্টক', '24 horas de stock', 'الأسهم 24 ساعة', '24 heures Stock', '24小时股票'),
(235, '24_hours_sale', '24 Hours Sale', '24 ঘণ্টা বিক্রয়', '24 horas venta', '24 ساعة بيع', '24 heures vente', '24小时销售'),
(236, '24_hours_destroy', '24 Hours Destroy', '24 ঘণ্টা ধ্বংস', '24 horas destruyen', '24 ساعة تدمر', '24 heures détruire', '24小时破坏'),
(237, 'total_vendors', 'Total Vendors', 'মোট বিক্রেতারা', 'vendedores totales', 'مجموع الباعة', 'vendeurs au total', '总供应商'),
(238, 'pending_vendors', 'Pending Vendors', 'বিচারাধীন বিক্রেতারা', 'proveedores pendientes', 'الباعة في انتظار', 'fournisseurs en attente', '未决的供应商'),
(239, 'vendor_stattistics', 'Vendor Stattistics', 'বিক্রেতার stattistics', 'stattistics proveedores', 'stattistics بائع', 'stattistics fournisseurs', '供应商stattistics'),
(240, 'category_wise_monthly_stock', 'Category Wise Monthly Stock', 'বিভাগ জ্ঞানী মাসিক স্টক', 'categoría de saldos mensuales sabia', 'فئة الأسهم الشهري الحكمة', 'catégorie encours mensuel sage', '明智类股票每月'),
(241, 'category_wise_monthly_destroy', 'Category Wise Monthly Destroy', 'বিভাগ জ্ঞানী মাসিক ধ্বংস', 'categoría sabia destruir mensual', 'فئة الحكمة تدمير شهريا', 'catégorie sage mensuel détruire', '类别明智每月破坏'),
(242, 'category_wise_monthly_sale', 'Category Wise Monthly Sale', 'বিভাগ জ্ঞানী মাসিক বিক্রয়', 'categoría de venta mensual sabia', 'الفئة بيع الشهري الحكمة', 'catégorie vente mensuelle sage', '类别明智每月销售'),
(243, 'category_wise_monthly_grand_profit', 'Category Wise Monthly Grand Profit', 'বিভাগ জ্ঞানী মাসিক গ্র্যান্ড মুনাফা', 'categoría sabia gran beneficio mensual', 'فئة الحكمة الربح الكبير الشهري', 'catégorie sage mensuel grande profit', '明智类盛大每月利润'),
(244, 'cost', 'Cost', 'মূল্য', 'costo', 'كلفة', 'Coût', '成本'),
(245, 'value', 'Value', 'মূল্য', 'valor', 'القيمة', 'valeur', '值'),
(246, 'loss', 'Loss', 'ক্ষতি', 'pérdida', 'خسارة', 'perte', '失利'),
(247, 'profit', 'Profit', 'মুনাফা', 'lucro', 'ربح', 'le profit', '利润'),
(248, 'manage_categories_(_physical_product_)', 'Manage Categories ( Physical Product )', 'বিভাগ (শারীরিক পণ্য) পরিচালনা', 'administrar las categorías de productos (física)', 'إدارة الفئات (منتج مادي)', 'gérer des catégories (produit physique)', '管理类（产品实物）'),
(249, 'add_category_(_physical_product_)', 'Add Category ( Physical Product )', 'বিভাগ (শারীরিক পণ্য) যোগ', 'Añadir categoría (producto físico)', 'إضافة فئة (منتج مادي)', 'ajouter la catégorie (produit physique)', '添加类别（产品实物）'),
(250, 'create_category', 'Create Category', 'বিভাগ তৈরি', 'crear la categoría', 'إنشاء فئة', 'créer la catégorie', '创建类别'),
(251, 'banner', 'Banner', 'নিশান', 'bandera', 'راية', 'bannière', '旗帜'),
(252, 'edit_category_(_physical_product_)', 'Edit Category ( Physical Product )', 'সম্পাদনা বিভাগ (শারীরিক পণ্য)', 'editar categoría (producto físico)', 'تحرير فئة (منتج مادي)', 'modifier la catégorie (produit physique)', '编辑类（实物产品）'),
(253, 'really_want_to_delete_this?', 'Really Want To Delete This?', 'সত্যিই এই মুছে ফেলতে চান?', 'Realmente desea eliminar este?', 'حقا تريد حذف هذا؟', 'voulez vraiment supprimer ce?', '真的要删除吗？'),
(254, 'category_name', 'Category Name', 'বিভাগ নাম', 'nombre de la categoría', 'اسم الفئة', 'Nom de catégorie', '类别名称'),
(255, 'category_banner', 'Category Banner', 'বিভাগ ব্যানার', 'Categoría bandera', 'فئة راية', 'catégorie bannière', '类别旗帜'),
(256, 'select_category_banner', 'Select Category Banner', 'বিভাগ নির্বাচন করুন ব্যানার', 'seleccione la categoría de la bandera', 'حدد فئة راية', 'sélectionnez la catégorie bannière', '选择类别旗帜'),
(257, 'manage_brands_(_physical_product_)', 'Manage Brands ( Physical Product )', 'ব্রান্ডের (শারীরিক পণ্য) পরিচালনা', 'gestionar marcas de productos (física)', 'إدارة العلامات التجارية (منتج مادي)', 'gérer les marques (produit physique)', '管理品牌（产品实物）'),
(258, 'add_brand_(_physical_product_)', 'Add Brand ( Physical Product )', 'ব্র্যান্ড (শারীরিক পণ্য) যোগ', 'añadir la marca (producto físico)', 'إضافة العلامة التجارية (منتج مادي)', 'ajouter la marque (produit physique)', '加上品牌（产品实物）'),
(259, 'create_brand', 'Create Brand', 'ব্র্যান্ড তৈরি', 'crear la marca', 'إنشاء العلامة التجارية', 'créer la marque', '创造品牌'),
(260, 'edit_brand_(_physical_product_)', 'Edit Brand ( Physical Product )', 'সম্পাদনা ব্র্যান্ড (শারীরিক পণ্য)', 'editar marca (producto físico)', 'تحرير العلامة التجارية (منتج مادي)', 'modifier la marque (produit physique)', '编辑品牌（产品实物）'),
(261, 'brand', 'Brand', 'তরবার', 'marca', 'علامة تجارية', 'marque', '牌'),
(262, 'brand_name', 'Brand Name', 'পরিচিতিমুলক নাম', 'nombre de la marca', 'اسم العلامة التجارية', 'marque', '品牌'),
(263, 'brand_logo', 'Brand Logo', 'ব্র্যান্ড লোগো', 'logotipo', 'شعار العلامة التجارية', 'logo de la marque', '品牌标志'),
(264, 'select_brand_logo', 'Select Brand Logo', 'নির্বাচন ব্র্যান্ড লোগো', 'seleccione logotipo de la marca', 'حدد شعار العلامة التجارية', 'sélectionnez la marque logo', '选择品牌标志'),
(265, 'manage_sub_categories_(_physical_product_)', 'Manage Sub Categories ( Physical Product )', 'সাব আরও পরিচালনা (শারীরিক পণ্য)', 'administrar las categorías sub (producto físico)', 'إدارة الفئات الفرعية (منتج مادي)', 'gérer les sous-catégories (produit physique)', '管理子类别（产品实物）'),
(266, 'add_sub-category_(_physical_product_)', 'Add Sub-category ( Physical Product )', 'উপ-বিভাগ (শারীরিক পণ্য) যোগ', 'añadir sub-categoría (producto físico)', 'إضافة فئة فرعية (منتج مادي)', 'ajouter des sous-catégories (produit physique)', '添加子类（实物产品）'),
(267, 'create_sub_category', 'Create Sub Category', 'সাব বিভাগ তৈরি', 'crear sub-categoría', 'إنشاء فئة فرعية', 'créer la sous catégorie', '创建子类别'),
(268, 'edit_sub-category_(_physical_product_)', 'Edit Sub-category ( Physical Product )', 'সম্পাদনা উপ-বিভাগ (শারীরিক পণ্য)', 'editar subcategoría (producto físico)', 'تعديل فئة فرعية (منتج مادي)', 'modifier la sous-catégorie (produit physique)', '编辑子类（实物产品）'),
(269, 'sub_category', 'Sub Category', 'সাব বিভাগ', 'subcategoría', 'الفئة الفرعية', 'sous catégorie', '子分类'),
(270, 'sub-category_name', 'Sub-category Name', 'উপ-বিভাগ নাম', 'Nombre de subcategoría', 'اسم الفئة الفرعية', 'nom de sous-catégorie', '子类别名称'),
(271, 'sub-category_banner', 'Sub-category Banner', 'উপ-বিভাগ ব্যানার', 'subcategoría bandera', 'الفئة الفرعية راية', 'sous-catégorie bannière', '子类的旗帜'),
(272, 'select_sub-category_banner', 'Select Sub-category Banner', 'নির্বাচন উপ-বিভাগ ব্যানার', 'seleccionar una subcategoría de la bandera', 'حدد فئة فرعية لافتة', 'sélectionner la sous-catégorie bannière', '选择子类的旗帜'),
(273, 'manage_product_stock', 'Manage Product Stock', 'পণ্য স্টক পরিচালনা', 'gestionar stock de productos', 'إدارة المخزون المنتج', 'gérer des stocks de produits', '管理产品库存'),
(274, 'destroy_product_entry', 'Destroy Product Entry', 'পণ্য এন্ট্রি ধ্বংস', 'destruir entrada de producto', 'تدمير دخول المنتج', 'détruire l\'entrée du produit', '销毁产品入境'),
(275, 'add_stock_entry_taken!', 'Add Stock Entry Taken!', 'যোগ স্টক এন্ট্রি নেয়া!', 'añadir la entrada Stock tomada!', 'إضافة إدخال الأوراق المالية اتخذت!', 'ajouter l\'entrée en stock pris!', '采取增加股票入门！'),
(276, 'add_product_stock', 'Add Product Stock', 'পণ্য স্টক যোগ', 'añadir el producto Stock', 'إضافة الأسهم المنتج', 'ajouter des stocks de produits', '增加产品库存'),
(277, 'destroy_entry_taken!', 'Destroy Entry Taken!', 'ধ্বংস এন্ট্রি নেয়া!', 'destruir entrada tomada!', 'تدمير دخول اتخذت!', 'détruire l\'entrée prise!', '摧毁采取入口！'),
(278, 'create_stock', 'Create Stock', 'স্টক তৈরি', 'crear stock', 'إنشاء الاسهم', 'créer un stock', '创建库存'),
(279, 'ID', 'ID', 'আইডি', 'CARNÉ DE IDENTIDAD', 'هوية شخصية', 'ID', 'ID'),
(280, 'product_title', 'Product Title', 'পণ্য শিরোনাম', 'título del producto', 'عنوان المنتج', 'titre du produit', '产品称号'),
(281, 'entry_type', 'Entry Type', 'এন্ট্রি টাইপ', 'tipo de entrada', 'نوع دخول', 'Type d\'entrée', '条目类型'),
(282, 'quantity', 'Quantity', 'পরিমাণ', 'cantidad', 'كمية', 'Quantité', '数量'),
(283, 'note', 'Note', 'বিঃদ্রঃ', 'Nota', 'ملاحظة', 'Remarque', '注意'),
(284, 'reduced_quantity_will_be_added.', 'Reduced Quantity Will Be Added.', 'কমে পরিমাণ যোগ করা হবে.', 'se añadió una cantidad reducida.', 'وستضاف خفض كمية.', 'quantité réduite sera ajoutée.', '减少量将增加。'),
(285, 'added_quantity_will_be_reduced.', 'Added Quantity Will Be Reduced.', 'যোগ পরিমাণ হ্রাস করা হবে.', 'cantidad añadida se reducirá.', 'وسيتم خفض الكمية المضافة.', 'quantité ajoutée sera réduite.', '添加量将减少。'),
(286, 'rate', 'Rate', 'হার', 'tarifa', 'معدل', 'taux', '率'),
(287, 'total', 'Total', 'মোট', 'total', 'مجموع', 'total', '总'),
(288, 'reason_note', 'Reason Note', 'কারণ নোট', 'razón por la nota', 'السبب مذكرة', 'raison Note', '原因笔记'),
(289, 'monetary_loss', 'Monetary Loss', 'আর্থিক ক্ষতি', 'pérdida monetaria', 'فقدان النقدية', 'perte monétaire', '金钱上的损失'),
(290, 'manage_categories_(_digital_product_)', 'Manage Categories ( Digital Product )', 'বিভাগ (ডিজিটাল পণ্য) পরিচালনা', 'administrar las categorías de productos (digital)', 'إدارة الفئات (المنتجات الرقمية)', 'gérer des catégories (produits numériques)', '管理类别（数码产品）'),
(291, 'add_category_(_digital_product_)', 'Add Category ( Digital Product )', 'বিভাগ (ডিজিটাল পণ্য) যোগ', 'Añadir categoría (producto digital)', 'إضافة فئة (المنتج الرقمي)', 'ajouter la catégorie (produit numérique)', '添加类别（数码产品）'),
(292, 'edit_category_(_digital_product_)', 'Edit Category ( Digital Product )', 'সম্পাদনা বিভাগ (ডিজিটাল পণ্য)', 'editar categoría (producto digital)', 'تحرير فئة (المنتج الرقمي)', 'modifier catégorie (produits numériques)', '编辑类别（数码产品）'),
(293, 'manage_sub_categories_(_digital_product_)', 'Manage Sub Categories ( Digital Product )', 'সাব আরও পরিচালনা (ডিজিটাল পণ্য)', 'administrar las categorías sub (producto digital)', 'إدارة الفئات الفرعية (المنتجات الرقمية)', 'gérer les sous-catégories (produits numériques)', '管理子类别（数码产品）'),
(294, 'add_sub-category_(_digital_product_)', 'Add Sub-category ( Digital Product )', 'উপ-বিভাগ (ডিজিটাল পণ্য) যোগ', 'añadir sub-categoría (producto digital)', 'إضافة فئة فرعية (المنتج الرقمي)', 'ajouter des sous-catégories (produits numériques)', '添加子类（数码产品）'),
(295, 'edit_sub-category_(_digital_product_)', 'Edit Sub-category ( Digital Product )', 'সম্পাদনা উপ-বিভাগ (ডিজিটাল পণ্য)', 'editar subcategoría (producto digital)', 'تعديل فئة فرعية (المنتج الرقمي)', 'modifier la sous-catégorie (produit numérique)', '编辑子类（数码产品）'),
(296, 'manage_product_(_digital_)', 'Manage Product ( Digital )', 'পণ্য (ডিজিটাল) পরিচালনা', 'gestionar producto (digital)', 'إدارة المنتجات (رقمي)', 'gérer le produit (numérique)', '管理产品（数码）'),
(297, 'add_product', 'Add Product', 'পণ্য যোগ করুন', 'añadir producto', 'إضافة منتج', 'ajouter le produit', '增加产品'),
(298, 'create_product', 'Create Product', 'পণ্য তৈরি', 'crear productos', 'إنشاء المنتج', 'créer un produit', '创建产品'),
(299, 'back_to_product_list', 'Back To Product List', 'ফিরে পণ্যের তালিকাতে', 'Volver a la lista de productos', 'العودة إلى قائمة المنتجات', 'Retour à la liste des produits', '回到产品列表'),
(300, 'download_failed!', 'Download Failed!', 'ডাউনলোড ব্যর্থ হয়েছে!', '¡Descarga fracasó!', 'التحميل فشل!', 'Échec du téléchargement!', '下载失败！'),
(301, 'image', 'Image', 'ভাবমূর্তি', 'imagen', 'صورة', 'image', '图片'),
(302, 'title', 'Title', 'খেতাব', 'título', 'عنوان', 'Titre', '标题'),
(303, 'view_product', 'View Product', 'দৃশ্য পণ্য', 'Ver el producto', 'المنتج رأي', 'produit Aperçu', '查看产品'),
(304, 'successfully_viewed!', 'Successfully Viewed!', 'সফলভাবে দেখা!', 'éxito vistos!', 'ينظر بنجاح!', 'vu avec succès!', '成功查看！'),
(305, 'view', 'View', 'দৃশ্য', 'ver', 'رأي', 'vue', '视图'),
(306, 'view_discount', 'View Discount', 'দৃশ্য ছাড়', 'Ver descuento', 'خصم عرض', 'vue rabais', '查看优惠'),
(307, 'viewing_discount!', 'Viewing Discount!', 'ছাড় দেখছেন!', 'visualización de descuento!', 'عرض خصم!', 'visualisation de réduction!', '查看优惠！'),
(308, 'download', 'Download', 'ডাউনলোড', 'descargar', 'تحميل', 'Télécharger', '下载'),
(309, 'edit_product_(_digital_product_)', 'Edit Product ( Digital Product )', 'সম্পাদনা পণ্য (ডিজিটাল পণ্য)', 'edición producto (producto digital)', 'تحرير المنتج (المنتجات الرقمية)', 'produit d\'édition (produits numériques)', '编辑产品（数码产品）'),
(310, 'manage_sale', 'Manage Sale', 'বিক্রয় ও পরিচালনা', 'gestionar la venta', 'إدارة بيع', 'gérer la vente', '销售管理'),
(311, 'sale_code', 'Sale Code', 'বিক্রয় কোড', 'venta código', 'كود بيع', 'Code de vente', '销售代码'),
(312, 'buyer', 'Buyer', 'ক্রেতা', 'comprador', 'مشتر', 'acheteur', '买方'),
(313, 'date', 'Date', 'তারিখ', 'fecha', 'تاريخ', 'date', '日期'),
(314, 'delivery_status', 'Delivery Status', 'প্রসবের অবস্থা', 'estado de entrega', 'حالة التسليم', 'statut de livraison', '邮寄状态'),
(315, 'payment_status', 'Payment Status', 'লেনদেনের অবস্থা', 'estado de pago', 'حالة السداد', 'statut de paiement', '支付状态'),
(316, 'admin', 'Admin', 'অ্যাডমিন', 'administración', 'مشرف', 'administrateur', '管理员'),
(317, 'full_invoice', 'Full Invoice', 'পূর্ণ চালান', 'factura completa', 'فاتورة كاملة', 'pleine facture', '全额发票'),
(318, 'delivery_payment', 'Delivery Payment', 'ডেলিভারি পেমেন্ট', 'el pago de entrega', 'دفع التسليم', 'paiement à la livraison', '货到付款'),
(319, 'sales', 'Sales', 'বিক্রয়', 'ventas', 'مبيعات', 'Ventes', '销售'),
(320, 'manage_coupons', 'Manage Coupons', 'কুপন পরিচালনা', 'administrar cupones', 'إدارة القسائم', 'gérer des coupons', '管理优惠券'),
(321, 'add_coupon', 'Add Coupon', 'কুপন যোগ', 'añadir cupón', 'إضافة قسيمة', 'ajouter coupon', '添加优惠券'),
(322, 'create_coupon', 'Create Coupon', 'কুপন তৈরি', 'crear cupón', 'إنشاء قسيمة', 'créer coupon', '创建优惠券'),
(323, 'code', 'Code', 'কোড', 'código', 'رمز', 'code', '码'),
(324, 'added_by', 'Added By', 'দ্বারা যোগ করা', 'añadido por', 'أضيفت من قبل', 'ajouté par', '通过添加'),
(325, 'status', 'Status', 'অবস্থা', 'estado', 'الحالة', 'statut', '状态'),
(326, 'coupon', 'Coupon', 'কুপন', 'cupón', 'كوبون', 'coupon', '优惠券'),
(327, 'manage_ticket', 'Manage Ticket', 'টিকেট পরিচালনা', 'gestionar la compra de entradas', 'إدارة تذكرة', 'gérer billet', '管理票'),
(328, 'back_to_ticket_list', 'Back To Ticket List', 'ফিরে টিকেট লিস্টে', 'volver a la lista de entradas', 'العودة إلى قائمة تذكرة', 'Retour à la liste de billets', '回票名单'),
(329, 'from', 'From', 'থেকে', 'de', 'من عند', 'de', '从'),
(330, 'subject', 'Subject', 'বিষয়', 'tema', 'موضوع', 'assujettir', '学科'),
(331, 'view_profile', 'View Profile', 'প্রোফাইল দেখুন', 'ver perfil', 'عرض الصفحة الشخصية', 'Voir le profil', '查看资料'),
(332, 'new', 'New', 'নতুন', 'nuevo', 'جديد', 'Nouveau', '新'),
(333, 'view_contact_ticket', 'View Contact Ticket', 'দৃশ্য যোগাযোগের টিকিট', 'billete de vista de contactos', 'تذكرة رأي اتصال', 'billet vue de contact', '查看联系人票'),
(334, 'view_ticket', 'View Ticket', 'দৃশ্য টিকিট', 'Ver Ticket', 'عرض تذكرة', 'vue billet', '查看门票'),
(335, 'product_sale_comparison', 'Product Sale Comparison', 'পণ্য বিক্রয় তুলনা', 'Comparación de la venta de productos', 'مقارنة بيع المنتج', 'la comparaison des produits de la vente', '产品销售比较'),
(336, 'product_sale_comparison_report', 'Product Sale Comparison Report', 'পণ্য বিক্রয় তুলনা প্রতিবেদন', 'producto informe de comparación venta', 'المنتج بيع التقرير مقارنة', 'vente de produits rapport de comparaison', '产品销售比较报告'),
(337, 'manage_stock_report', 'Manage Stock Report', 'স্টক রিপোর্ট পরিচালনা', 'gestionar informe de existencias', 'تقرير إدارة المخزون', 'gérer rapport sur les stocks', '管理库存报告'),
(338, 'get_stock_report', 'Get Stock Report', 'স্টক রিপোর্ট পেতে', 'obtener informe de existencias', 'الحصول على تقرير المخزون', 'obtenir rapport sur les stocks', '获得股票报告'),
(339, 'product_wishes_report', 'Product Wishes Report', 'পণ্য রিপোর্ট শুভেচ্ছা', 'producto desea informe', 'يرغب المنتج تقرير', 'produit souhaite rapport', '产品希望报告'),
(340, 'manage_vendors', 'Manage Vendors', 'বিক্রেতারা পরিচালনা', 'manejar a los proveedores', 'إدارة البائعين', 'gérer les fournisseurs', '供应商管理'),
(341, 'display_name', 'Display Name', 'প্রদর্শন নাম', 'mostrar nombre', 'اسم العرض', 'Afficher un nom', '显示名称'),
(342, 'vendor_approval', 'Vendor Approval', 'বিক্রেতার অনুমোদন', 'la aprobación del proveedor', 'موافقة البائع', 'l\'approbation des fournisseurs', '供应商认可'),
(343, 'approval', 'Approval', 'অনুমোদন', 'aprobación', 'موافقة', 'approbation', '赞同'),
(344, 'pay_vendor', 'Pay Vendor', 'বেতন বিক্রেতা', 'proveedor de pago', 'بائع الأجر', 'salaire fournisseur', '付供应商'),
(345, 'pay', 'Pay', 'বেতন', 'paga', 'دفع', 'Payer', '工资'),
(346, 'e-mail', 'E-mail', 'ই-মেইল', 'e-mail', 'البريد الإلكتروني', 'email', '电子邮件'),
(347, 'manage_vendor_payments', 'Manage Vendor Payments', 'বিক্রেতা পেমেন্ট পরিচালনা', 'gestionar los pagos a proveedores', 'إدارة مدفوعات البائعين', 'gérer les paiements des fournisseurs', '管理供应商付款'),
(348, 'amount', 'Amount', 'পরিমাণ', 'cantidad', 'كمية', 'montant', '量'),
(349, 'upgraded_vendor_package', 'Upgraded Vendor Package', 'আপগ্রেড বিক্রেতা প্যাকেজ', 'paquete de proveedor actualizado', 'حزمة بائع ترقية', 'paquet fournisseur amélioré', '升级包的供应商'),
(350, 'view_payment_details', 'View Payment Details', 'দৃশ্য পেমেন্ট বিবরণ', 'Más información del pago', 'عرض تفاصيل الدفع', 'afficher les détails de paiement', '查看付款细节'),
(351, 'check_details', 'Check Details', 'বিস্তারিত পরীক্ষা', 'comprobar los detalles', 'التحقق من التفاصيل', 'vérifier les détails', '查看详细信息'),
(352, 'membership_payments', 'Membership Payments', 'সদস্যপদ পেমেন্ট', 'pagos de membresía', 'مدفوعات عضوية', 'paiements d\'adhésion', '会员费'),
(353, 'upgraded_membership', 'Upgraded Membership', 'আপগ্রেড সদস্য', 'membresía actualizado', 'عضوية ترقية', 'adhésion améliorée', '升级会员'),
(354, 'manage_vendor_package', 'Manage Vendor Package', 'বিক্রেতা প্যাকেজ পরিচালনা', 'gestionar paquete de proveedor', 'إدارة حزمة بائع', 'gérer ensemble des fournisseurs', '管理供应商封装'),
(355, 'add_vendor_package', 'Add Vendor Package', 'বিক্রেতা প্যাকেজ যোগ', 'añadir paquete de proveedor', 'إضافة حزمة بائع', 'ajouter package de fournisseur', '加上厂商包'),
(356, 'create_vendor_package', 'Create Vendor Package', 'বিক্রেতা প্যাকেজ তৈরি', 'crear paquetes de distribuciones', 'إنشاء حزمة بائع', 'créer un paquet de fournisseur', '创建包的供应商'),
(357, 'seal', 'Seal', 'সীল', 'sello', 'ختم', 'joint', '密封'),
(358, 'price', 'Price', 'মূল্য', 'precio', 'السعر', 'prix', '价钱'),
(359, 'for', 'For', 'জন্য', 'para', 'إلى', 'pour', '对于'),
(360, 'lifetime', 'Lifetime', 'জীবনকাল', 'toda la vida', 'أوقات الحياة', 'durée de vie', '一生'),
(361, 'edit_vendor_package', 'Edit Vendor Package', 'সম্পাদনা বিক্রেতা প্যাকেজ', 'editar paquete de proveedor', 'تحرير حزمة بائع', 'package de fournisseur d\'édition', '编辑供应商封装'),
(362, 'days', 'Days', 'দিন', 'días', 'أيام', 'journées', '天'),
(363, 'membership', 'Membership', 'সদস্যতা', 'afiliación', 'عضوية', 'adhésion', '籍'),
(364, 'manage_product_(_physical_)', 'Manage Product ( Physical )', 'পণ্য পরিচালনা (শারীরিক)', 'gestionar producto (física)', 'إدارة المنتجات (المادية)', 'gérer le produit (physique)', '管理产品（物理）'),
(365, 'current_quantity', 'Current Quantity', 'বর্তমান পরিমাণ', 'la cantidad actual', 'الكمية الحالية', 'quantité de courant', '当前量');
INSERT INTO `language` (`word_id`, `word`, `english`, `Bangla`, `Spanish`, `Arabic`, `French`, `Chinese`) VALUES
(366, 'add_product_quantity', 'Add Product Quantity', 'পণ্যের পরিমাণ যোগ', 'añadir la cantidad de producto', 'إضافة كمية المنتج', 'ajouter la quantité de produit', '增加产品数量'),
(367, 'quantity_added!', 'Quantity Added!', 'পরিমাণ যোগ করা হয়েছে!', 'cantidad añadida!', 'وأضافت الكمية!', 'quantité ajoutée!', '加入量！'),
(368, 'stock', 'Stock', 'স্টক', 'valores', 'مخزون', 'Stock', '股票'),
(369, 'reduce_product_quantity', 'Reduce Product Quantity', 'পণ্যের পরিমাণ কমাতে', 'reducir la cantidad de producto', 'تقليل كمية المنتج', 'réduire la quantité de produit', '减少产品数量'),
(370, 'quantity_reduced!', 'Quantity Reduced!', 'পরিমাণ কমে!', 'reduce la cantidad!', 'كمية خفضت!', 'quantité réduite!', '数量减少！'),
(371, 'destroy', 'Destroy', 'ধ্বংস', 'destruir', 'هدم', 'détruire', '破坏'),
(372, 'edit_product', 'Edit Product', 'সম্পাদনা পণ্য', 'edición del producto', 'تحرير المنتج', 'produit d\'édition', '编辑产品'),
(373, 'product_details', 'Product Details', 'পণ্যের বিবরণ', 'detalles del producto', 'تفاصيل المنتج', 'détails du produit', '产品详情'),
(374, 'business_details', 'Business Details', 'ব্যবসার বিবরণ', 'datos de la empresa', 'تفاصيل العمل', 'détails d\'affaires', '商家详情'),
(375, 'customer_choice_options', 'Customer Choice Options', 'গ্রাহকের পছন্দ অপশন', 'opciones de elección del cliente', 'خيارات اختيار العملاء', 'options de choix du client', '客户选择的选项'),
(376, 'unit', 'Unit', 'একক', 'unidad', 'وحدة', 'unité', '单元'),
(377, 'unit_(e.g._kg,_pc_etc.)', 'Unit (e.g. Kg, Pc Etc.)', 'ইউনিট (যেমন কেজি, পিসি ইত্যাদি)', 'unidad (por ejemplo, kilogramo, PC, etc.)', 'وحدة (مثلا كجم، وأجهزة الكمبيوتر وغيرها)', 'unité (par exemple kg, pc, etc.)', '单位（例如公斤，PC等）'),
(378, 'tags', 'Tags', 'ট্যাগ', 'etiquetas', 'علامات', 'Mots clés', '标签'),
(379, 'images', 'Images', 'চিত্র', 'imágenes', 'صور', 'images', '图片'),
(380, 'choose_file', 'Choose File', 'ফাইল পছন্দ কর', 'Elija el archivo', 'اختر ملف', 'choisir le fichier', '选择文件'),
(381, 'description', 'Description', 'বিবরণ', 'descripción', 'وصف', 'la description', '描述'),
(382, 'if_you_need_more_field_for_your_product_,_please_click_here_for_more...', 'If You Need More Field For Your Product , Please Click Here For More...', 'যদি আপনি আপনার পণ্যের জন্য আরো ক্ষেত্রের প্রয়োজন, আরো জন্য এখানে ক্লিক করুন ...', 'si necesita más materia para su producto, por favor haga clic aquí para obtener más ...', 'اذا كنت بحاجة الى مزيد من المجال للمنتج الخاص بك، الرجاء الضغط هنا لمزيد من ...', 'si vous avez besoin de plus le terrain pour votre produit, s\'il vous plaît cliquez ici pour plus ...', '如果你需要更多的领域为您的产品，请点击这里查看更多...'),
(383, 'add_more_fields', 'Add More Fields', 'আরো ক্ষেত্রের যোগ', 'añadir más campos', 'إضافة المزيد من الحقول', 'ajouter des champs', '添加更多的字段'),
(384, 'sale_price', 'Sale Price', 'বিক্রয় মূল্য', 'precio de venta', 'سعر البيع', 'prix de vente', '销售价格'),
(385, 'purchase_price', 'Purchase Price', 'ক্রয় মূল্য', 'precio de compra', 'سعر الشراء', 'prix d\'achat', '购买价格'),
(386, 'shipping_cost', 'Shipping Cost', 'প্রদান খরচ', 'costo de envío', 'تكلفة الشحن', 'frais de port', '运输费'),
(387, 'product_tax', 'Product Tax', 'পণ্যের কর', 'impuesto sobre los productos', 'الضرائب المنتج', 'taxe sur les produits', '产品税'),
(388, 'product_discount', 'Product Discount', 'পণ্য ছাড়', 'descuento de producto', 'خصم المنتج', 'une réduction du produit', '产品折扣'),
(389, 'color', 'Color', 'রঙ', 'color', 'اللون', 'Couleur', '颜色'),
(390, 'add_more_colors', 'Add More Colors', 'আরো রং যোগ', 'añadir más colores', 'إضافة المزيد من الألوان', 'ajouter plus de couleurs', '添加更多的色彩'),
(391, 'if_you_need_more_choice_options_for_customers_of_this_product_,please_click_here.', 'If You Need More Choice Options For Customers Of This Product ,please Click Here.', 'যদি আপনি এই পণ্যের গ্রাহকদের জন্য আরো পছন্দ অপশন প্রয়োজন, এখানে ক্লিক করুন.', 'Si usted necesita más opciones de elección para los clientes de este producto, por favor haga clic aquí.', 'اذا كنت بحاجة الى مزيد من الخيارات المفضلة للعملاء من هذا المنتج، يرجى الضغط هنا.', 'si vous avez besoin plus d\'options de choix pour les clients de ce produit, s\'il vous plaît cliquez ici.', '如果你需要更多的选择选项本产品的客户，请点击这里。'),
(392, 'add_customer_input_options', 'Add Customer Input Options', 'গ্রাহকের ইনপুট অপশন যোগ', 'añadir opciones de entrada del cliente', 'إضافة خيارات مدخلات العملاء', 'ajouter des options d\'entrée du client', '添加客户输入选项'),
(393, 'next', 'Next', 'পরবর্তী', 'siguiente', 'التالى', 'prochain', '下一个'),
(394, 'previous', 'Previous', 'আগে', 'anterior', 'سابق', 'précédent', '以前'),
(395, 'reset', 'Reset', 'রিসেট', 'Reiniciar', 'إعادة تعيين', 'réinitialiser', '重启'),
(396, 'product_has_been_uploaded!', 'Product Has Been Uploaded!', 'পণ্য আপলোড করা হয়েছে!', 'producto se ha subido!', 'وقد تم تحميل المنتج!', 'produit a été téléchargé!', '产品已上传！'),
(397, 'upload', 'Upload', 'আপলোড', 'subir', 'تحميل', 'télécharger', '上载'),
(398, 'field_name', 'Field Name', 'ক্ষেত্র নাম', 'nombre del campo', 'اسم الحقل', 'nom de domaine', '字段名'),
(399, 'customer_input_title', 'Customer Input Title', 'গ্রাহকের ইনপুট শিরোনাম', 'Título de la entrada del cliente', 'عنوان مدخلات العملاء', 'Titre de l\'entrée à la clientèle', '客户输入标题'),
(400, 'add_options_for_choice', 'Add Options For Choice', 'পছন্দ জন্য অপশন যোগ', 'añadir opciones para elegir', 'إضافة خيارات للاختيار', 'ajouter des options pour le choix', '增加对选择题的选项'),
(401, 'option_name', 'Option Name', 'বিকল্প নাম', 'nombre de la opción', 'اسم الخيار', 'nom de l\'option', '选项名称'),
(402, 'details_of', 'Details Of', 'বিস্তারিত', 'detalles de', 'تفاصيل', 'les détails de', '细节'),
(403, 'tax', 'Tax', 'কর', 'impuesto', 'ضريبة', 'impôt', '税'),
(404, 'tag', 'Tag', 'ট্যাগ', 'etiqueta', 'بطاقة', 'Étiquette', '标签'),
(405, 'colors', 'Colors', 'রং', 'colores', 'الألوان', 'les couleurs', '颜色'),
(406, 'product_color_options', 'Product Color Options', 'পণ্য রঙ অপশন', 'Opciones de color del producto', 'خيارات لون المنتج', 'options de couleur du produit', '产品颜色选项'),
(407, 'add_colors', 'Add Colors', 'রং যোগ', 'añadir colores', 'إضافة الألوان', 'ajouter des couleurs', '添加颜色'),
(408, 'requirements', 'Requirements', 'প্রয়োজনীয়তা', 'requisitos', 'المتطلبات', 'exigences', '要求'),
(409, 'add_logo', 'Add Logo', 'লোগো যোগ', 'añadir el logotipo', 'إضافة شعار', 'ajouter logo', '新增标志'),
(410, 'choose_logo', 'Choose Logo', 'লোগো নির্বাচন', 'elegir el logotipo', 'اختيار شعار', 'choisissez logo', '选择标志'),
(411, 'add_images', 'Add Images', 'ইমেজ যোগ', 'añadir imágenes', 'إضافة الصور', 'ajouter des images', '添加图片'),
(412, 'if_you_need_to_add_video_for_your_product_,_please_click_here...', 'If You Need To Add Video For Your Product , Please Click Here...', 'যদি আপনি আপনার পণ্যের জন্য ভিডিও যোগ করার জন্য প্রয়োজন, এখানে ক্লিক করুন ...', 'Si es necesario agregar video para su producto, por favor haga clic aquí ...', 'إذا كنت بحاجة إلى إضافة الفيديو للمنتج الخاص بك، الرجاء الضغط هنا ...', 'si vous avez besoin d\'ajouter de la vidéo pour votre produit, s\'il vous plaît cliquez ici ...', '如果您需要添加视频为您的产品，请点击这里...'),
(413, 'add_video', 'Add Video', 'ভিডিও যোগ', 'Añadir video', 'إضافة فيديو', 'ajouter de la vidéo', '添加视频'),
(414, 'upload_video', 'Upload Video', 'আপলোড ভিডিও', 'subir un video', 'رفع فيديو', 'Télécharger une video', '上传视频'),
(415, 'choose_video_file', 'Choose Video File', 'ভিডিও ফাইল প্লে', 'Elija el archivo de vídeo', 'اختيار ملف الفيديو', 'choisir le fichier vidéo', '选择视频文件'),
(416, 'choose_sharing_site', 'Choose Sharing Site', 'শেয়ারিং সাইট চয়ন', 'elegir sitio para compartir', 'اختيار موقع مشاركة', 'choisir le site de partage', '选择分享网站'),
(417, 'choose_one', 'Choose One', 'একটা পছন্দ কর', 'elige uno', 'اختيار واحد', 'choisissez-en un', '选一个'),
(418, 'youtube', 'Youtube', 'ইউটিউব', 'Youtube', 'موقع YouTube', 'Youtube', 'YouTube的'),
(419, 'dailymotion', 'Dailymotion', 'Dailymotion', 'dailymotion', 'ديلي موشن', 'dailymotion', '位DailyMotion'),
(420, 'vimeo', 'Vimeo', 'Vimeo', 'vimeo', 'فيميو', 'vimeo', 'VIMEO'),
(421, 'link', 'Link', 'লিংক', 'enlazar', 'صلة', 'lien', '链接'),
(422, 'product_file', 'Product File', 'পণ্য ফাইল', 'archivo del producto', 'ملف المنتج', 'fiche produit', '产品文件'),
(423, 'compressed', 'Compressed', 'সঙ্কুচিত', 'comprimido', 'مضغوط', 'comprimé', '压缩'),
(424, 'maximum_size', 'Maximum Size', 'সর্বাধিক আকার', 'talla máxima', 'أكبر مقاس', 'taille maximum', '最大尺寸'),
(425, 'if_you_need_to_add_requirements_of_this_product_for_customers_,please_click_here.', 'If You Need To Add Requirements Of This Product For Customers ,please Click Here.', 'যদি আপনি গ্রাহকদের জন্য এই পণ্যের প্রয়োজনীয়তা যোগ করতে হবে, এখানে ক্লিক করুন.', 'Si es necesario agregar requisitos de este producto para los clientes, por favor haga clic aquí.', 'إذا كنت بحاجة إلى إضافة متطلبات هذا المنتج للعملاء، الرجاء الضغط هنا.', 'si vous avez besoin d\'ajouter des exigences de ce produit pour les clients, s\'il vous plaît cliquez ici.', '如果需要添加本品的要求，为客户，请点击这里。'),
(426, 'add_product_requirements', 'Add Product Requirements', 'পণ্য প্রয়োজনীয়তা যোগ', 'añadir los requisitos del producto', 'إضافة متطلبات المنتج', 'ajouter des exigences de produits', '增加产品的要求'),
(427, 'remove', 'Remove', 'অপসারণ', 'retirar', 'إزالة', 'retirer', '去掉'),
(428, 'video_options', 'Video Options', 'ভিডিও অপশন', 'opciones de video', 'خيارات الفيديو', 'options vidéo', '视频选项'),
(429, 'choose_an_option', 'Choose An Option', 'একটি বিকল্প নির্বাচন করুন', 'Escoge una opción', 'إختر خيار', 'choisis une option', '选择一个选项'),
(430, 'share_link', 'Share Link', 'শেয়ার লিংক', 'compartir enlace', 'رابط المشاركة', 'lien de partage', '分享链接'),
(431, 'i_want_to_add_video_later', 'I Want To Add Video Later', 'আমি পরে ভিডিও যোগ করতে চান', 'Quiero añadir vídeo más tarde', 'أريد أن أضيف فيديو في وقت لاحق', 'je veux ajouter de la vidéo plus tard', '我想在以后添加视频'),
(432, 'update_product_file', 'Update Product File', 'আপডেটের পণ্য ফাইল', 'archivo de actualización del producto', 'ملف تحديث المنتج', 'fiche du produit de mise à jour', '更新产品文件'),
(433, 'i_want_to_change_video_later', 'I Want To Change Video Later', 'আমি পরে ভিডিও পরিবর্তন করতে চান', 'quiero cambiar de vídeo más tarde', 'أريد أن تغيير الفيديو في وقت لاحق', 'je veux changer vidéo plus tard', '我想以后更改视频'),
(434, 'i_want_to_remove_existing_video', 'I Want To Remove Existing Video', 'আমি বিদ্যমান ভিডিওটি সরিয়ে ফেলতে চান', 'Quiero eliminar el vídeo existente', 'أريد أن إزالة الفيديو موجود', 'je veux supprimer la vidéo existante', '我想删除现有的视频'),
(435, 'invoice_for', 'Invoice For', 'জন্য চালান', 'factura para', 'فاتورة', 'facture de', '发票'),
(436, 'invoice_no:', 'Invoice No:', 'চালান নং:', 'factura no:', 'رقم الفاتورة:', 'facturera pas:', '发票号码：'),
(437, 'date_:', 'Date :', 'তারিখ:', 'fecha :', 'تاريخ :', 'date :', '日期：'),
(438, 'client_information', 'Client Information', 'ক্লায়েন্ট তথ্য', 'información del cliente', 'معلومات العميل', 'informations client', '客户信息'),
(439, 'first_name', 'First Name', 'প্রথম নাম', 'nombre de pila', 'الاسم الاول', 'Prénom', '名字'),
(440, 'last_name', 'Last Name', 'নামের শেষাংশ', 'apellido', 'الكنية', 'nom de famille', '姓'),
(441, 'payment_detail', 'Payment Detail', 'পেমেন্ট বিস্তারিত', 'detalles de pago', 'تفاصيل الدفع', 'détail du paiement', '付款明细'),
(442, 'due', 'Due', 'কারণে', 'debido', 'بسبب', 'dû', '应有'),
(443, 'payment_date', 'Payment Date', 'টাকা প্রদানের তারিখ', 'fecha de pago', 'تاريخ الدفع', 'date de paiement', '付款日期'),
(444, 'payment_invoice', 'Payment Invoice', 'পেমেন্ট চালান', 'factura de pago', 'فاتورة الدفع', 'facture de paiement', '付款发票'),
(445, 'item', 'Item', 'পদ', 'ít', 'بند', 'article', '项目'),
(446, 'unit_cost', 'Unit Cost', 'ইউনিট খরচ', 'coste unitario', 'تكلفة الوحدة', 'coût unitaire', '单位成本'),
(447, 'sub_total_amount', 'Sub Total Amount', 'সাব মোট পরিমাণ', 'importe total sub', 'المبلغ الإجمالي الفرعي', 'montant total sous', '子总额'),
(448, 'shipping', 'Shipping', 'পাঠানো', 'Envío', 'الشحن', 'livraison', '运输'),
(449, 'grand_total', 'Grand Total', 'সর্বমোট', 'gran total', 'المبلغ الإجمالي', 'somme finale', '累计'),
(450, 'address_line_1', 'Address Line 1', 'ঠিকানা লাইন 1', 'Dirección Línea 1', 'العنوان الأول', 'Adresse 1', '地址栏1'),
(451, 'address_line_2', 'Address Line 2', 'ঠিকানা লাইন 2', 'línea de dirección 2', 'سطر العنوان 2', 'Adresse Ligne 2', '地址行2'),
(452, 'zipcode', 'Zipcode', 'পিনকোড', 'código postal', 'الرمز البريدي', 'code postal', '邮政编码'),
(453, 'print', 'Print', 'ছাপা', 'impresión', 'طباعة', 'impression', '打印'),
(454, 'marker_location', 'Marker Location', 'মার্কার অবস্থান', 'ubicación del marcador', 'علامة المكان', 'emplacement du marqueur', '标记位置'),
(455, 'city', 'City', 'শহর', 'ciudad', 'مدينة', 'ville', '市'),
(456, 'ZIP', 'ZIP', 'জিপ', 'cremallera', 'ZIP', 'ZIP *: FRANÇAIS', '压缩'),
(457, 'payment_details', 'Payment Details', 'পেমেন্ট বিবরণ', 'payment details', 'بيانات الدفع', 'détails du paiement', NULL),
(458, 'coupon_title', 'Coupon Title', 'কুপন শিরোনাম', 'coupon title', 'عنوان القسيمة', 'Titre de coupon', NULL),
(459, 'valid_till', 'Valid Till', 'পর্যন্ত বৈধ', 'valid till', 'صالح حتى', 'valable jusqu\'au', NULL),
(460, 'coupon_discount_on', 'Coupon Discount On', 'কুপন ডিসকাউন্ট', 'coupon discount on', 'قسيمة خصم على', 'coupon de réduction sur les', NULL),
(461, 'coupon_code', 'Coupon Code', 'কুপন কোড', 'coupon code', 'رمز القسيمة', 'code promo', NULL),
(462, 'discount_type', 'Discount Type', 'ছাড় টাইপ', 'discount type', 'نوع الخصم', 'Type de réduction', NULL),
(463, 'discount_value', 'Discount Value', 'ডিসকাউন্ট মূল্য', 'discount value', 'قيمة الخصم', 'valeur de réduction', NULL),
(464, 'user', 'User', 'ব্যবহারকারী', 'user', 'مستخدم', 'utilisateur', NULL),
(465, 'phone_number', 'Phone Number', 'ফোন নম্বর', 'phone number', 'رقم الهاتف', 'numéro de téléphone', NULL),
(466, 'creation_date', 'Creation Date', 'তৈরির তারিখ', 'creation date', 'تاريخ الإنشاء', 'date de création', NULL),
(467, 'ticket_from', 'Ticket From', 'থেকে টিকিট', 'ticket from', 'تذكرة من', 'billet de', NULL),
(468, 'date_&_time', 'Date & Time', 'তারিখ সময়', 'date &amp; time', 'التاريخ والوقت', 'date et heure', NULL),
(469, 'reply_message', 'Reply Message', 'উত্তর বার্তা', 'reply message', 'رسالة الرد', 'message de réponse', NULL),
(470, 'successfully_replied!', 'Successfully Replied!', 'সফলভাবে বললেন!', 'successfully replied!', 'أجاب بنجاح!', 'répondit avec succès!', NULL),
(471, 'reply', 'Reply', 'উত্তর', 'reply', 'الرد', 'répondre', NULL),
(472, 'refresh', 'Refresh', 'সতেজ করা', 'refresh', 'اعادة تنشيط', 'rafraîchir', NULL),
(473, 'company', 'Company', 'কোম্পানির', 'company', 'شركة', 'compagnie', NULL),
(474, 'postpone', 'Postpone', 'মুলতবি করা', 'postpone', 'تأجيل', 'remettre à plus tard', NULL),
(475, 'approve', 'Approve', 'অনুমোদন করা', 'approve', 'وافق', 'approuver', NULL),
(476, 'total_sold', 'Total Sold', 'মোট বিক্রি', 'total sold', 'مجموعه تباع', 'total vendu', NULL),
(477, 'paid_by_customer', 'Paid By Customer', 'গ্রাহকের দ্বারা প্রদান করা', 'paid by customer', 'المدفوع من قبل العميل', 'payé par le client', NULL),
(478, 'paid_to_vendor', 'Paid To Vendor', 'বিক্রেতার দেওয়া', 'paid to vendor', 'تدفع للبائع', 'payé au fournisseur', NULL),
(479, 'by_admin', 'By Admin', 'দ্বারা অ্যাডমিন', 'by admin', 'بواسطة admin', 'by admin', NULL),
(480, 'cash_on_delivery', 'Cash On Delivery', 'প্রদানোত্তর পরিশোধ', 'cash on delivery', 'الدفع عند التسليم', 'paiement à la livraison', NULL),
(481, 'due_to_vendor', 'Due To Vendor', 'বিক্রেতার কারণে', 'due to vendor', 'بسبب بائع', 'en raison de fournisseur', NULL),
(482, 'select_payment_method', 'Select Payment Method', 'নির্বাচন পেমেন্ট পদ্ধতি', 'select payment method', 'اختار طريقة الدفع', 'Sélectionnez le mode de paiement', NULL),
(483, 'your_card_details_verified!', 'Your Card Details Verified!', 'আপনার কার্ডের বিবরণ যাচাই!', 'your card details verified!', 'تفاصيل بطاقتك التحقق منها!', 'vos coordonnées de carte vérifiées!', NULL),
(484, 'pay_with_stripe', 'Pay With Stripe', 'ডোরা দিয়ে দিতে', 'pay with stripe', 'دفع مع شريط', 'payer avec bande', NULL),
(485, 'datetime', 'Datetime', 'তারিখ সময়', 'datetime', 'التاريخ والوقت', 'datetime', NULL),
(486, 'membership_to_upgrade', 'Membership To Upgrade', 'সদস্যপদ আপগ্রেড করার', 'membership to upgrade', 'عضوية لرفع مستوى', 'membres pour mettre à niveau', NULL),
(487, 'method', 'Method', 'পদ্ধতি', 'method', 'طريقة', 'méthode', NULL),
(488, 'details', 'Details', 'বিস্তারিত', 'details', 'تفاصيل', 'détails', NULL),
(489, 'maximum_products', 'Maximum Products', 'সর্বাধিক পণ্য', 'maximum products', 'منتجات القصوى', 'produits maximales', NULL),
(490, 'timespan', 'Timespan', 'timespan', 'timespan', 'الفترة الزمنية', 'timespan', NULL),
(491, 'package_seal', 'Package Seal', 'প্যাকেজ সীল', 'package seal', 'حزمة ختم', 'fermeture de l\'emballage', NULL),
(492, 'select_package_seal', 'Select Package Seal', 'নির্বাচন প্যাকেজ সীল', 'select package seal', 'حدد حزمة ختم', 'select joint package', NULL),
(493, 'manage_vendor_slides', 'Manage Vendor Slides', 'বিক্রেতার স্লাইড পরিচালনা', 'manage vendor slides', 'إدارة الشرائح بائع', 'gérer les diapositives des fournisseurs', NULL),
(494, 'button', 'Button', 'বোতাম', 'button', 'زر', 'bouton', NULL),
(495, 'click_to_check_link', 'Click To Check Link', 'লিংক চেক করতে ক্লিক', 'click to check link', 'انقر فوق التحقق من الرابط', 'cliquez pour vérifier le lien', NULL),
(496, 'slides', 'Slides', 'স্লাইড', 'slides', 'الشرائح', 'diapositives', NULL),
(497, 'manage_users', 'Manage Users', 'ব্যবহারকারীদের পরিচালনা', 'manage users', 'ادارة المستخدمين', 'gérer les utilisateurs', NULL),
(498, 'total_purchase', 'Total Purchase', 'মোট ক্রয়', 'total purchase', 'شراء مجموع', 'achat total', NULL),
(499, 'users', 'Users', 'ব্যবহারকারী', 'users', 'المستخدمين', 'utilisateurs', NULL),
(500, 'send_newsletter', 'Send Newsletter', 'নিউজলেটার পাঠাতে', 'send newsletter', 'إرسال الرسائل الإخبارية', 'envoyer la newsletter', NULL),
(501, 'e-mails_(users)', 'E-mails (users)', 'ই-মেইল (ব্যবহারকারী)', 'e-mails (users)', 'رسائل البريد الإلكتروني (المستخدمين)', 'e-mails (utilisateurs)', NULL),
(502, 'e-mails_(subscribers)', 'E-mails (subscribers)', 'ই-মেইল (সদস্য)', 'e-mails (subscribers)', 'رسائل البريد الإلكتروني (مشترك)', 'e-mails (abonnés)', NULL),
(503, 'from_:_email_address', 'From : Email Address', 'থেকে: ই-মেইল ঠিকানা', 'from : email address', 'من: عنوان البريد الإلكتروني', 'à partir de: adresse e-mail', NULL),
(504, 'newsletter_subject', 'Newsletter Subject', 'নিউজলেটার বিষয়', 'newsletter subject', 'النشرة الموضوع', 'bulletin d\'information sous réserve', NULL),
(505, 'newsletter_content', 'Newsletter Content', 'নিউজলেটার বিষয়বস্তু', 'newsletter content', 'محتوى النشرة الإخبارية', 'contenu du bulletin', NULL),
(506, 'sending', 'Sending', 'পাঠানোর', 'sending', 'إرسال', 'envoi', NULL),
(507, 'sent!', 'Sent!', 'পাঠানো হয়েছে!', 'sent!', 'أرسلت!', 'envoyé!', NULL),
(508, 'send', 'Send', 'পাঠান', 'send', 'إرسال', 'envoyer', NULL),
(509, 'view_contact_message', 'View Contact Message', 'দৃশ্য যোগাযোগের বার্তা', 'view contact message', 'رسالة رأي اتصال', 'message visite de contact', NULL),
(510, 'view_message', 'View Message', 'দৃশ্য বার্তা', 'view message', 'رسالة رأي', 'vue un message', NULL),
(511, 'message', 'Message', 'বার্তা', 'message', 'الرسالة', 'message', NULL),
(512, 'date_time', 'Date Time', 'তারিখ সময়', 'date time', 'التاريخ والوقت', 'date heure', NULL),
(513, 'message_from', 'Message From', 'থেকে বার্তা', 'message from', 'رسالة من', 'message de', NULL),
(514, 'reply_contact_message', 'Reply Contact Message', 'উত্তর যোগাযোগের বার্তা', 'reply contact message', 'الرد رسالة الاتصال', 'message de réponse de contact', NULL),
(515, 'view_original_message', 'View Original Message', 'মূল বার্তা দেখতে', 'view original message', 'عرض الرسالة الأصلية', 'voir message original', NULL),
(516, 'manage_blog_categories', 'Manage Blog Categories', 'ব্লগ বিভাগ পরিচালনা', 'manage blog categories', 'إدارة الفئات بلوق', 'gérer des catégories de blog', NULL),
(517, 'add_blog_category', 'Add Blog Category', 'ব্লগ বিভাগ যোগ', 'add blog category', 'إضافة فئة بلوق', 'ajouter la catégorie de blog', NULL),
(518, 'create_blog_category', 'Create Blog Category', 'ব্লগ বিভাগ তৈরি', 'create blog category', 'إنشاء فئة بلوق', 'créer la catégorie de blog', NULL),
(519, 'edit_blog_category', 'Edit Blog Category', 'সম্পাদনা ব্লগ বিভাগ', 'edit blog category', 'تحرير الفئة بلوق', 'modifier la catégorie de blog', NULL),
(520, 'blog_category', 'Blog Category', 'ব্লগ বিভাগ', 'blog category', 'الفئة بلوق', 'catégorie de blog', NULL),
(521, 'manage_blog', 'Manage Blog', 'ব্লগ পরিচালনা', 'manage blog', 'إدارة بلوق', 'gérer le blog', NULL),
(522, 'add_blog', 'Add Blog', 'ব্লগটি যুক্ত', 'añadir el blog', 'إضافة بلوق', 'ajouter le blog', NULL),
(523, 'create_blog', 'Create Blog', 'ব্লগ তৈরি', 'crear el blog', 'إنشاء بلوق', 'créer un blog', NULL),
(524, 'back_to_blog_list', 'Back To Blog List', 'ফিরে ব্লগ লিস্টে', 'Volver a la lista de blogs', 'العودة إلى قائمة بلوق', 'Retour à la liste des blogs', NULL),
(525, 'edit_blog', 'Edit Blog', 'সম্পাদনা ব্লগ', 'editar el blog', 'تحرير بلوق', 'modifier le blog', NULL),
(526, 'blog_title', 'Blog Title', 'ব্লগ শিরোনাম', 'Titulo de Blog', 'عنوان المدونة', 'Titre du Blog', NULL),
(527, 'summery', 'Summery', 'গ্রীষ্মের বৈশিষ্ট্যপূর্ণ', 'veraniego', 'صيفي', 'd\'été', NULL),
(528, 'author', 'Author', 'লেখক', 'autor', 'مؤلف', 'auteur', NULL),
(529, 'manage_layer_slider', 'Manage Layer Slider', 'লেয়ার স্লাইডার পরিচালনা', 'gestionar deslizador capa', 'إدارة طبقة المنزلق', 'gérer la couche curseur', NULL),
(530, 'create_slider', 'Create Slider', 'স্লাইডার তৈরি', 'crear deslizador', 'إنشاء المنزلق', 'créer curseur', NULL),
(531, 'slider_list', 'Slider List', 'স্লাইডার তালিকা', 'lista deslizador', 'قائمة المنزلق', 'liste de curseur', NULL),
(532, 'slider_serial', 'Slider Serial', 'স্লাইডার সিরিয়াল', 'serie deslizador', 'المنزلق المسلسل', 'curseur série', NULL),
(533, 'successfully_serialized!', 'Successfully Serialized!', 'সফলভাবে ধারাবাহিকভাবে!', 'serializado correctamente!', 'تسلسل بنجاح!', 'sérialisé avec succès!', NULL),
(534, 'slider_serial_saved!', 'Slider Serial Saved!', 'স্লাইডার সিরিয়াল সংরক্ষিত!', 'deslizador serie grabada!', 'المنزلق مسلسل حفظ!', 'Curseur série sauvé!', NULL),
(535, 'choose_your_slider_style', 'Choose Your Slider Style', 'আপনার স্লাইডার শৈলী চয়ন', 'elija su estilo slider', 'اختيار نمط التمرير الخاص بك', 'choisissez votre style de curseur', NULL),
(536, 'play', 'Play', 'খেলা', 'jugar', 'لعب', 'jouer', NULL),
(537, 'choose', 'Choose', 'পছন্দ', 'escoger', 'اختار', 'choisir', NULL),
(538, 'enter_preview', 'Enter Preview', 'প্রিভিউ প্রবেশ', 'introducir previsualización', 'دخول المعاينة', 'entrer aperçu', NULL),
(539, 'creating_slider..', 'Creating Slider..', 'স্লাইডার তৈরি ..', 'la creación de corredera ..', 'خلق المنزلق ..', 'création curseur ..', NULL),
(540, 'slider_added!', 'Slider Added!', 'স্লাইডার যোগ করা হয়েছে!', 'deslizador añadió!', 'وأضاف المنزلق!', 'Curseur ajouté!', NULL),
(541, 'select_background_image', 'Select Background Image', 'নির্বাচন ব্যাকগ্রাউন্ড ইমেজ', 'seleccione la imagen de fondo', 'صورة خلفية مختارة', 'sélectionner l\'image d\'arrière-plan', NULL),
(542, 'select_image', 'Select Image', 'নির্বাচন ইমেজ', 'seleccionar imagen', 'اختر صورة', 'sélectionner l\'image', NULL),
(543, 'font-color', 'Font-color', 'ফন্টের রং', 'color de fuente', 'لون الخط', 'couleur de la police', NULL),
(544, 'background_color', 'Background Color', 'পেছনের রং', 'color de fondo', 'لون الخلفية', 'Couleur de fond', NULL),
(545, 'manage_top_carousal_slides', 'Manage Top Carousal Slides', 'শীর্ষ মদ্যপানোৎসব স্লাইড পরিচালনা', 'gestionar los mejores diapositivas carousal', 'إدارة أعلى الشرائح إحتفال صاخب مخمور', 'gérer les diapositives de Carrousel top', NULL),
(546, 'add_slides', 'Add Slides', 'স্লাইড যোগ', 'añadir diapositivas', 'إضافة شرائح', 'ajouter des diapositives', NULL),
(547, 'create_slides', 'Create Slides', 'স্লাইড তৈরি', 'crear diapositivas', 'إنشاء الشرائح', 'créer des diapositives', NULL),
(548, 'edit_slides', 'Edit Slides', 'স্লাইড সম্পাদন', 'editar diapositivas', 'تحرير الشرائح', 'diapositives modifier', NULL),
(549, 'slide_banner', 'Slide Banner', 'স্লাইড ব্যানার', 'bandera de diapositivas', 'راية الشرائح', 'slide bannière', NULL),
(550, 'select_slide_banner', 'Select Slide Banner', 'নির্বাচন স্লাইড ব্যানার', 'seleccione la bandera de diapositivas', 'حدد راية الشرائح', 'select slide bannière', NULL),
(551, 'button_color:', 'Button Color:', 'বোতাম রঙ:', 'botón de color:', 'زر اللون:', 'bouton couleur:', NULL),
(552, 'button_text_color:', 'Button Text Color:', 'বোতাম টেক্সট রঙ:', 'botón Color del texto:', 'زر لون النص:', 'bouton couleur du texte:', NULL),
(553, 'button_text', 'Button Text', 'বোতাম টেক্সট', 'botón de texto', 'زر كتابة', 'bouton de texte', NULL),
(554, 'button_link', 'Button Link', 'বোতাম লিংক', 'botón de enlace', 'رابط زر', 'lien de bouton', NULL),
(555, 'slides_logo', 'Slides Logo', 'স্লাইড লোগো', 'logotipo de diapositivas', 'الشرائح شعار', 'diapositives logo', NULL),
(556, 'choose_home_page_style', 'Choose Home Page Style', 'চয়ন হোম পৃষ্ঠা শৈলী', 'elija el estilo página de inicio', 'اختيار نمط الصفحة الرئيسية', 'choisissez la page d\'accueil de style', NULL),
(557, 'updating..', 'Updating..', 'হালনাগাদ করা ..', 'actualización ..', 'تحديث ..', 'mise à jour ..', NULL),
(558, 'home_page_updated!', 'Home Page Updated!', 'হোম পেজে আপডেট!', 'página de inicio actualizada!', 'الصفحة الرئيسية تجديد!', 'page d\'accueil mise à jour!', NULL),
(559, 'update_home_page', 'Update Home Page', 'আপডেটের হোম পেজে', 'actualización de la página de inicio', 'تحديث الصفحة الرئيسية', 'mise à jour la page d\'accueil', NULL),
(560, 'change_home_page_items', 'Change Home Page Items', 'পরিবর্তন হোম পেজে আইটেম', 'artículos cambiar la página principal', 'البنود تغيير الصفحة الرئيسية', 'changement page d\'accueil articles', NULL),
(561, 'really_want_to_delete_this_logo?', 'Really Want To Delete This Logo?', 'সত্যিই এই লোগো মুছে ফেলতে চান?', 'Realmente desea eliminar este logotipo?', 'حقا تريد حذف هذا الشعار؟', 'voulez vraiment supprimer ce logo?', NULL),
(562, 'top_slider', 'Top Slider', 'শীর্ষ স্লাইডার', 'top slider', 'كبار المنزلق', 'top slider', NULL),
(563, 'home_banners', 'Home Banners', 'হোম ব্যানার', 'banderas de casas', 'لافتات المنزل', 'bannières à domicile', NULL),
(564, 'search_section', 'Search Section', 'অনুসন্ধান অধ্যায়', 'sección de búsqueda', 'قسم البحث', 'section de recherche', NULL),
(565, 'category_wise_products', 'Category Wise Products', 'বিভাগ বিজ্ঞ পণ্য', 'productos de la categoría sabios', 'فئة المنتجات الحكيمة', 'catégorie produits sages', NULL),
(566, 'special_products', 'Special Products', 'বিশেষ পণ্য', 'productos especiales', 'منتجات خاصة', 'produits spéciaux', NULL),
(567, 'top_carousel_slider', 'Top Carousel Slider', 'শীর্ষ ক্যারোসেলে স্লাইডার', 'deslizador superior carrusel', 'كبار المنزلق دائري', 'top carrousel curseur', NULL),
(568, 'choose_categories_(max_10)', 'Choose Categories (max 10)', 'চয়ন বিভাগ (সর্বোচ্চ 10)', 'elegir categorías (máximo 10)', 'اختيار الفئات (حد أقصى 10)', 'choisir les catégories (max 10)', NULL),
(569, 'number_of_todays_deal_(_to_show_)', 'Number Of Todays Deal ( To Show )', 'আজকের চুক্তি সংখ্যা (দেখানোর জন্য)', 'número de hoy oferta (para mostrar)', 'عدد من صفقة اليوم (إظهار)', 'nombre de retransmission de ce deal (montrer)', NULL),
(570, 'updating', 'Updating', 'হালনাগাদ করা', 'actualización', 'تحديث', 'réactualisation', NULL),
(571, 'category_menu_updated!', 'Category Menu Updated!', 'বিভাগ মেনু আপডেট!', 'menú de categorías actualizado!', 'القائمة فئة تجديد!', 'menu de la catégorie mise à jour!', NULL),
(572, 'update', 'Update', 'হালনাগাদ', 'actualizar', 'تحديث', 'mettre à jour', NULL),
(573, 'after_slider', 'After Slider', 'স্লাইডার পর', 'después de deslizador', 'بعد المنزلق', 'après curseur', NULL),
(574, 'select_banner_image', 'Select Banner Image', 'নির্বাচন ব্যানার ইমেজ', 'Seleccionar imagen de la bandera', 'اختر صورة لافتة', 'sélectionner l\'image de la bannière', NULL),
(575, 'banner_updated!', 'Banner Updated!', 'ব্যানার আপডেট!', 'bandera actualiza!', 'راية تحديث!', 'banner mis à jour!', NULL),
(576, 'parallax_title_for_search', 'Parallax Title For Search', 'অনুসন্ধানের জন্য লম্বন শিরোনাম', 'Título de paralaje para la búsqueda', 'عنوان المنظر للبحث', 'Titre de la parallaxe pour la recherche', NULL),
(577, 'parallax_image_for_search_section', 'Parallax Image For Search Section', 'অনুসন্ধান বিভাগের জন্য লম্বন ইমেজ', 'imagen de paralaje para la sección de búsqueda', 'صورة المنظر لقسم البحث', 'l\'image de parallaxe pour la section de recherche', NULL),
(578, 'search_section_updated!', 'Search Section Updated!', 'অনুসন্ধান অধ্যায় আপডেট!', 'sección de búsqueda actualizada!', 'قسم البحث تحديث!', 'section de recherche mis à jour!', NULL),
(579, 'featured_products_(_show_/_hide_)', 'Featured Products ( Show / Hide )', 'বৈশিষ্ট্যযুক্ত পণ্য (প্রদর্শন করুন / আড়াল)', 'productos destacados (mostrar / ocultar)', 'منتجات مميزة (عرض / إخفاء)', 'produits phares (show / hide)', NULL),
(580, 'number_of_products_(_to_show_)', 'Number Of Products ( To Show )', 'পণ্য সংখ্যা (দেখানোর জন্য)', 'número de productos (para mostrar)', 'عدد من المنتجات (لاظهار)', 'nombre de produits (pour montrer)', NULL),
(581, 'choose_product_box_style', 'Choose Product Box Style', 'পণ্য বক্স শৈলী চয়ন', 'elija el estilo caja del producto', 'اختيار المنتج نمط مربع', 'choisissez le style boîte produit', NULL),
(582, 'featured_section_updated!', 'Featured Section Updated!', 'বৈশিষ্ট্যযুক্ত অধ্যায় আপডেট!', 'sección contenidos actualiza!', 'القسم المميز تحديث!', 'section sélectionnée mis à jour!', NULL),
(583, 'vandor_(_show_/_hide_)', 'Vandor ( Show / Hide )', 'vandor (প্রদর্শন করুন / আড়াল)', 'Vandor (mostrar / ocultar)', 'فاندور (عرض / إخفاء)', 'vandor (afficher / masquer)', NULL),
(584, 'parallax_title_for_vendors', 'Parallax Title For Vendors', 'বিক্রেতাদের জন্য লম্বন শিরোনাম', 'Título de paralaje para los vendedores', 'عنوان المنظر للبائعين', 'Titre de la parallaxe pour les vendeurs', NULL),
(585, 'parallax_image_for_vendors', 'Parallax Image For Vendors', 'বিক্রেতাদের জন্য লম্বন ইমেজ', 'imagen de paralaje para los vendedores', 'صورة المنظر للبائعين', 'l\'image de parallaxe pour les vendeurs', NULL),
(586, 'number_of_vendor_(_to_show_)', 'Number Of Vendor ( To Show )', 'বিক্রেতার সংখ্যা (দেখানোর জন্য)', 'número de proveedor (para mostrar)', 'عدد من بائع (لاظهار)', 'nombre de fournisseurs (pour montrer)', NULL),
(587, 'vendor_section_updated!', 'Vendor Section Updated!', 'বিক্রেতার অধ্যায় আপডেট!', 'proveedor actualiza la sección!', 'قسم بائع تحديث!', 'section de fournisseur mis à jour!', NULL),
(588, 'sub-categories_(promotional)', 'Sub-categories (promotional)', 'উপ-বিভাগ (প্রচারমূলক)', 'subcategorías (de promoción)', 'فئات فرعية (الترويجية)', 'sous-catégories (promotion)', NULL),
(589, 'color_preference_:', 'Color Preference :', 'রঙ পছন্দ:', 'preferencia de color:', 'تفضيل اللون:', 'de préférence de couleur:', NULL),
(590, 'title_color:', 'Title Color:', 'শিরোনাম রঙ:', 'color del título:', 'عنوان اللون:', 'Titre de la couleur:', NULL),
(591, 'add_new', 'Add New', 'নতুন যোগ', 'añadir nuevo', 'اضف جديد', 'ajouter de nouvelles', NULL),
(592, 'home_categories_updated!', 'Home Categories Updated!', 'বাড়িতে আরও আপডেট!', 'Categorías Inicio actualizadas!', 'فئات الوطن تجديد!', 'catégories de maison mis à jour!', NULL),
(593, 'blog_(_show_/_hide_)', 'Blog ( Show / Hide )', 'ব্লগ (প্রদর্শন করুন / আড়াল)', 'el blog (mostrar / ocultar)', 'بلوق (عرض / إخفاء)', 'Blog (show / hide)', NULL),
(594, 'parallax_title_for_blog', 'Parallax Title For Blog', 'ব্লগের জন্য লম্বন শিরোনাম', 'Título de paralaje para el blog', 'عنوان المنظر لبلوق', 'titre parallaxe pour blogue', NULL),
(595, 'parallax_image_for_blog', 'Parallax Image For Blog', 'ব্লগের জন্য লম্বন ইমেজ', 'imagen de paralaje para el blog', 'صورة المنظر لبلوق', 'l\'image de parallaxe pour blogue', NULL),
(596, 'number_of_latest_blog_(_to_show_)', 'Number Of Latest Blog ( To Show )', 'সর্বশেষ ব্লগ সংখ্যা (দেখানোর জন্য)', 'número de último blog (para mostrar)', 'عدد آخر بلوق (لاظهار)', 'nombre de dernier blog (montrer)', NULL),
(597, 'blog_section_updated!', 'Blog Section Updated!', 'ব্লগ অধ্যায় আপডেট!', 'sección del blog actualizado!', 'قسم بلوق تحديث!', 'section blog mis à jour!', NULL),
(598, 'special_products_(_show_/_hide_)', 'Special Products ( Show / Hide )', 'বিশেষ পণ্য (প্রদর্শন করুন / আড়াল)', 'productos especiales (mostrar / ocultar)', 'منتجات خاصة (إظهار / إخفاء)', 'produits spéciaux (afficher / masquer)', NULL),
(599, 'brand_(_show_/_hide_)', 'Brand ( Show / Hide )', 'ব্র্যান্ড (প্রদর্শন করুন / আড়াল)', 'marca (mostrar / ocultar)', 'العلامة التجارية (عرض / إخفاء)', 'marque (show / hide)', NULL),
(600, 'number_of_brand_(_to_show_)', 'Number Of Brand ( To Show )', 'ব্র্যান্ড সংখ্যা (দেখানোর জন্য)', 'Número de marca (para mostrar)', 'عدد من العلامة التجارية (لاظهار)', 'nombre de marque (montrer)', NULL),
(601, 'brand_section_updated!', 'Brand Section Updated!', 'ব্র্যান্ড অধ্যায় আপডেট!', 'sección de la marca actualizada!', 'قسم العلامة التجارية تحديثها!', 'section de la marque mis à jour!', NULL),
(602, 'banner_published!', 'Banner Published!', 'ব্যানার প্রকাশিত!', 'bandera publicado!', 'راية نشرت!', 'bannière publié!', NULL),
(603, 'banner_unpublished!', 'Banner Unpublished!', 'ব্যানার অপ্রকাশিত!', 'bandera inédita!', 'راية لم تنشر!', 'bannière inédite!', NULL),
(604, 'section_published!', 'Section Published!', 'অধ্যায় প্রকাশিত!', 'publicada sección!', 'القسم نشرت!', 'section publié!', NULL),
(605, 'section_unpublished!', 'Section Unpublished!', 'অধ্যায় অপ্রকাশিত!', 'sección inédita!', 'قسم غير منشورة!', 'section inédite!', NULL),
(606, 'category_wise_banners', 'Category Wise Banners', 'বিভাগ জ্ঞানী ব্যানার', 'categoría banderas sabios', 'فئة افتات الحكيمة', 'catégorie bannières sages', NULL),
(607, 'title_for_vendor_section', 'Title For Vendor Section', 'বিক্রেতার বিভাগের জন্য শিরোনাম', 'título para la sección de proveedores', 'عنوان الباب بائع', 'titre pour la section de fournisseur', NULL),
(608, 'contact_address', 'Contact Address', 'যোগাযোগের ঠিকানা', 'dirección de contacto', 'عنوان الإتصال', 'Adresse de contact', NULL),
(609, 'contact_phone', 'Contact Phone', 'ফোনে যোগাযোগ', 'teléfono de contacto', 'رقم الهاتف', 'Numéro du contact', NULL),
(610, 'contact_email', 'Contact Email', 'যোগাযোগের ই - মেইল', 'Email de contacto', 'تواصل بالبريد الاكتروني', 'Email du contact', NULL),
(611, 'contact_website', 'Contact Website', 'যোগাযোগের ওয়েবসাইট', 'sitio web contactar', 'اتصال الانترنت', 'site de contact', NULL),
(612, 'contact_about', 'Contact About', 'সম্পর্কে যোগাযোগ', 'contactar con respecto', 'الاتصال حول', 'contacter à propos de', NULL),
(613, 'footer_settings', 'Footer Settings', 'পাদচরণ সেটিংস', 'configuración pie de página', 'إعدادات تذييل', 'paramètres de bas de page', NULL),
(614, 'footer_category', 'Footer Category', 'পাদচরণ বিভাগ', 'categoría de pie de página', 'فئة تذييل', 'catégorie footer', NULL),
(615, 'footer_text', 'Footer Text', 'পাদচরণ', 'texto de pie de página', 'نص تذييل', 'texte de pied de page', NULL),
(616, 'choose_theme', 'Choose Theme', 'থিম নির্বাচন', 'escoge un tema', 'اختيار موضوع', 'choisissez le thème', NULL),
(617, 'theme_updated!', 'Theme Updated!', 'থিম আপডেট!', 'tema actualizado!', 'موضوع تحديث!', 'thème mis à jour!', NULL),
(618, 'upload_logo', 'Upload Logo', 'আপলোড লোগো', 'logo Subir', 'تحميل شعار', 'télécharger logo', NULL),
(619, 'select_logo', 'Select Logo', 'নির্বাচন লোগো', 'Selección logo', 'حدد شعار', 'sélectionnez logo', NULL),
(620, 'all_logos', 'All Logos', 'সমস্ত লোগো', 'todos los logotipos', 'كل الشعارات', 'tous les logos', NULL),
(621, 'place', 'Place', 'জায়গা', 'lugar', 'مكان', 'endroit', NULL),
(622, 'admin_logo', 'Admin Logo', 'অ্যাডমিন লোগো', 'logotipo de administración', 'شعار المشرف', 'administrateur logo', NULL),
(623, 'successfully_selected!', 'Successfully Selected!', 'সফলভাবে নির্বাচিত!', 'seleccionado correctamente!', 'اختيار بنجاح!', 'choisi avec succès!', NULL),
(624, 'change', 'Change', 'পরিবর্তন', 'cambio', 'تغيير', 'changement', NULL),
(625, 'homepage_header_logo', 'Homepage Header Logo', 'হোমপেজে হেডার লোগো', 'logotipo de cabecera página de inicio', 'الصفحة الرئيسية شعار رأس', 'page d\'accueil logo header', NULL),
(626, 'homepage_footer_logo', 'Homepage Footer Logo', 'হোমপেজে ফুটার লোগো', 'Logotipo de pie de página página de inicio', 'الصفحة الرئيسية شعار تذييل', 'page d\'accueil logo footer', NULL),
(627, 'successfully_logo_uploaded', 'Successfully Logo Uploaded', 'সফলভাবে আপলোড লোগো', 'logo subido con éxito', 'بنجاح شعار تحميلها', 'avec succès logo téléchargé', NULL),
(628, 'select_favicon', 'Select Favicon', 'নির্বাচন ফেভিকন', 'seleccione favicon', 'حدد فافيكون', 'sélectionnez favicon', NULL),
(629, 'favicon_updated!', 'Favicon Updated!', 'ফেভিকন আপডেট!', 'favicon actualiza!', 'فافيكون تحديث!', 'favicon mis à jour!', NULL),
(630, 'choose_font', 'Choose Font', 'ফন্ট পছন্দ', 'elegir la fuente', 'اختيار الخط', 'choisissez la police', NULL),
(631, 'font_updated!', 'Font Updated!', 'ফন্ট আপডেট!', 'fuente actualizada!', 'الخط تحديث!', 'police mis à jour!', NULL),
(632, 'preloaders', 'Preloaders', 'preloaders', 'precargadores', 'preloaders', 'preloaders', NULL),
(633, 'preloader_color', 'Preloader Color', 'preloader রঙ', 'el color preloader', 'اللون تحميل مسبق', 'couleur de préchargement', NULL),
(634, 'preloader_background', 'Preloader Background', 'preloader পটভূমি', 'fondo preloader', 'خلفية تحميل مسبق', 'preloader fond', NULL),
(635, 'preloader_updated!', 'Preloader Updated!', 'preloader আপডেট!', 'preloader actualiza!', 'التحميل المسبق لتحديث!', 'Preloader mis à jour!', NULL),
(636, 'social_links', 'Social Links', 'সামাজিক লিংক', 'vínculos sociales', 'الروابط الاجتماعية', 'liens sociaux', NULL),
(637, 'system_name', 'System Name', 'সিস্টেমের নামের', 'nombre del sistema', 'اسم النظام', 'le nom du système', NULL),
(638, 'system_email', 'System Email', 'সিস্টেম ইমেল', 'correo electrónico del sistema', 'نظام البريد الإلكتروني', 'email du système', NULL),
(639, 'system_title', 'System Title', 'সিস্টেম শিরোনাম', 'título de sistema', 'عنوان النظام', 'titre du système', NULL),
(640, 'homepage_cache_time', 'Homepage Cache Time', 'হোমপেজে ক্যাশে সময়', 'tiempo de caché página de inicio', 'الوقت مخبأ الصفحة الرئيسية', 'temps de cache page d\'accueil', NULL),
(641, 'minutes', 'Minutes', 'মিনিট', 'minutos', 'دقيقة', 'minutes', NULL),
(642, 'downloadable_product_folder_name', 'Downloadable Product Folder Name', 'ডাউনলোডযোগ্য পণ্য ফোল্ডার নাম', 'nombre de la carpeta descargable producto', 'اسم مجلد المنتج للتحميل', 'produit téléchargeable nom du dossier', NULL),
(643, 'admin_notification_sound', 'Admin Notification Sound', 'অ্যাডমিন নোটিফিকেশন সাউন্ড', 'sonido de notificación de administración', 'صوت الإعلام المشرف', 'administrateur notification sonore', NULL),
(644, 'admin_notification_volume', 'Admin Notification Volume', 'অ্যাডমিন বিজ্ঞপ্তি ভলিউম', 'volumen de notificación de administración', 'حجم إخطار المشرف', 'volume de notification admin', NULL),
(645, 'Volume_:_', 'Volume : ', 'ভলিউম: ', 'volumen: ', 'الصوت : ', 'Le volume : ', NULL),
(646, 'homepage_notification_sound', 'Homepage Notification Sound', 'হোমপেজে নোটিফিকেশন সাউন্ড', 'sonido de notificación página de inicio', 'صوت الإعلام الصفحة الرئيسية', 'son de notification page d\'accueil', NULL),
(647, 'homepage_notification_volume', 'Homepage Notification Volume', 'হোমপেজে বিজ্ঞপ্তি ভলিউম', 'volumen de notificación página de inicio', 'حجم الاخطار الصفحة الرئيسية', 'volume de notification page d\'accueil', NULL),
(648, 'captcha_settings', 'Captcha Settings', 'ক্যাপচা সেটিংস', 'configuración de captcha', 'إعدادات كلمة التحقق', 'paramètres captcha', NULL),
(649, 'social_login_configuaration', 'Social Login Configuaration', 'সামাজিক লগইন configuaration', 'configuaration entrada sociales', 'configuaration تسجيل الدخول الاجتماعي', 'configuaration de connexion sociale', NULL),
(650, 'product_comment_settings', 'Product Comment Settings', 'পণ্য মন্তব্য সেটিংস', 'configuración de comentarios de productos', 'إعدادات المنتج تعليق', 'paramètres produit de commentaire', NULL),
(651, 'google_map', 'Google Map', 'গুগল মানচিত্র', 'mapa de Google', 'خريطة جوجل', 'Google Map', NULL),
(652, 'save_captcha_settings', 'Save Captcha Settings', 'ক্যাপচা সেটিংস সংরক্ষণ', 'guardar la configuración de captcha', 'حفظ الإعدادات كلمة التحقق', 'enregistrer les paramètres de captcha', NULL),
(653, 'public_key', 'Public Key', 'সর্বজনীন কী', 'Llave pública', 'المفتاح العمومي', 'Clé publique', NULL),
(654, 'private_key', 'Private Key', 'প্রাইভেট কী', 'llave privada', 'المفتاح الخاص', 'clé privée', NULL),
(655, 'facebook_login_settings', 'Facebook Login Settings', 'ফেসবুক লগইন সেটিংস', 'configuración de usuario de Facebook', 'إعدادات تسجيل الدخول الفيسبوك', 'paramètres de connexion facebook', NULL),
(656, 'google+_login_settings', 'Google+ Login Settings', 'গুগল + লগইন সেটিংস', 'la configuración de acceso a Google +', 'إعدادات تسجيل الدخول جوجل +', 'paramètres google + de connexion', NULL),
(657, 'type', 'Type', 'আদর্শ', 'tipo', 'اكتب', 'type', '类型'),
(658, 'none', 'None', 'না', 'ninguna', 'لا شيء', 'aucun', '没有'),
(659, 'facebook_comment', 'Facebook Comment', 'ফেসবুক মন্তব্য', 'facebook comentario', 'الفيسبوك تعليق', 'facebook commentaire', 'Facebook的评论'),
(660, 'disqus_comment', 'Disqus Comment', 'Disqus মন্তব্য', 'comentario Disqus', 'هارد تعليق', 'Disqus commentaire', 'disqus评论'),
(661, 'google_comment', 'Google Comment', 'গুগল মন্তব্য', 'google comentario', 'جوجل تعليق', 'google commentaire', '谷歌评论'),
(662, 'discus_ID', 'Discus ID', 'চাকতি আইডি', 'Identificación de disco', 'رمي القرص معرف', 'discus ID', '铁饼ID'),
(663, 'fb_comment_id', 'Fb Comment Id', 'FB মন্তব্য আইডি', 'fb comentario Identificación', 'أف ب تعليق معرف', 'fb commentaire id', 'FB评论ID'),
(664, 'google_map_api_settings', 'Google Map Api Settings', 'গুগল ম্যাপ API সেটিংস', 'configuración de un mapa de Google API', 'جوجل إعدادات خريطة المعهد', 'google map paramètres api', '谷歌地图API设置'),
(665, 'api_key', 'Api Key', 'API কী', 'Clave API', 'مفتاح API', 'clé API', 'API密钥'),
(666, 'add_page', 'Add Page', 'পাতা যোগ কর', 'añadir página', 'إضافة صفحة', 'ajouter une page', '添加页面'),
(667, 'create_page', 'Create Page', 'পাতা তৈরি করুন', 'Crear página', 'إنشاء الصفحة', 'créer une page', '创建页面'),
(668, 'back_to_page_list', 'Back To Page List', 'পিছন পাতা লিস্টে', 'volver a la lista de la página', 'العودة إلى القائمة الصفحة', 'Retour à la liste de la page', '返回页面列表'),
(669, 'page_name', 'Page Name', 'পৃষ্ঠার নাম', 'Nombre de la página', 'اسم الصفحة', 'Nom de la page', '网页名称'),
(670, 'preview', 'Preview', 'প্রিভিউ', 'avance', 'معاينة', 'Aperçu', '预习'),
(671, 'edit_page', 'Edit Page', 'সম্পাদনা পাতা', 'editar página', 'تعديل الصفحة', 'modifier la page', '编辑页面'),
(672, 'page_title', 'Page Title', 'আমার স্নাতকের', 'Título de la página', 'عنوان الصفحة', 'titre de la page', '页面标题'),
(673, 'parmalink', 'Parmalink', 'মাহবুব', 'Permalink', 'الرابط الثابت', 'Permalink', '永久链接'),
(674, 'number_of_page_parts', 'Number Of Page Parts', 'পৃষ্ঠা যন্ত্রাংশ সংখ্যা', 'número de piezas de la página', 'عدد الأجزاء الصفحة', 'nombre de pages pièces', '页数件'),
(675, 'lets_start_to_create_your_page', 'Lets Start To Create Your Page', 'আপনার পৃষ্ঠা তৈরি করতে চলুন শুরু করা যাক', 'Empecemos a crear su página', 'يتيح البدء في إنشاء صفحتك', 'laisse commencer à créer votre page', '让我们开始创建你的页面'),
(676, 'parts', 'Parts', 'যন্ত্রাংশ', 'partes', 'أجزاء', 'les pièces', '部分'),
(677, 'select_size', 'Select Size', 'নির্বাচন আকার', 'selecciona el tamaño', 'أختر الحجم', 'sélectionnez la taille', '选择大小'),
(678, 'one-fourth', 'One-fourth', 'এক চতুর্থাংশ', 'un cuarto', 'ربع', 'un quart', '四分之一'),
(679, 'one-third', 'One-third', 'এক-তৃতীয়াংশ', 'un tercio', 'الثلث', 'un tiers', '三分之一'),
(680, 'half', 'Half', 'অর্ধেক', 'mitad', 'نصف', 'moitié', '半'),
(681, 'two-third', 'Two-third', 'দুই-তৃতীয়াংশ', 'dos tercios', 'ثلثي', 'deux tiers', '三分之二'),
(682, 'three-fourth', 'Three-fourth', 'তিন-চতুর্থাংশ', 'tres cuartos', 'ثلاثة ارباع', 'trois quart', '四分之三'),
(683, 'full', 'Full', 'সম্পূর্ণ', 'completo', 'كامل', 'plein', '充分'),
(684, 'select_type', 'Select Type', 'নির্বাচন টাইপ', 'seleccione tipo', 'اختر صنف', 'sélectionner le genre', '选择类型'),
(685, 'content', 'Content', 'সন্তুষ্ট', 'contenido', 'محتوى', 'contenu', '内容'),
(686, 'widget', 'Widget', 'উইজেট', 'Reproductor', 'القطعة', 'un widget', '小部件'),
(687, 'product_categories', 'Product Categories', 'পণের ধরন', 'Categorías de Producto', 'أصناف المنتجات', 'catégories de produits', '产品类别'),
(688, 'advance_search', 'Advance Search', 'অগ্রিম অনুসন্ধান', 'Búsqueda avanzada', 'بحث متقدم', 'recherche avancée', '高级搜索'),
(689, 'special_blogs', 'Special Blogs', 'বিশেষ ব্লগ', 'blogs especiales', 'بلوق الخاصة', 'blogs spéciaux', '特殊的博客'),
(690, 'not_more_than_4_columns!', 'Not More Than 4 Columns!', 'অনধিক 4 কলাম!', 'no más de 4 columnas!', 'لم يكن أكثر من 4 أعمدة!', 'pas plus de 4 colonnes!', '不超过4列！'),
(691, 'popular', 'Popular', 'জনপ্রিয়', 'popular', 'شعبي', 'populaire', '流行'),
(692, 'deals', 'Deals', 'প্রতিষ্ঠান', 'ofertas', 'صفقات', 'offres', '交易'),
(693, 'page_code', 'Page Code', 'পাতা কোড', 'código de la página', 'كود الصفحة', 'code de la page', '网页代码'),
(694, 'page_tags', 'Page Tags', 'পাতা ট্যাগ', 'etiquetas de página', 'علامات الصفحة', 'balises de page', '标签页'),
(695, 'column', 'Column', 'স্তম্ভ', 'columna', 'عمود', 'colonne', '柱'),
(696, '', '', '', '', '', '', ''),
(697, 'most_sold', 'Most Sold', 'সবথেকে বেশি বিক্রিত', 'más vendidos', 'الأكثر مبيعا', 'les plus vendus', '大部分销往'),
(698, 'product_image', 'Product Image', 'পণ্য ইমেজ', 'Imagen del producto', 'صورة المنتج', 'image du produit', '产品形象'),
(699, 'digital_logo_image', 'Digital Logo Image', 'ডিজিটাল লোগো ইমেজ', 'imagen del logotipo digitales', 'صورة الشعار الرقمية', 'logo image numérique', '数字标识图像'),
(700, 'category_image', 'Category Image', 'বিভাগ ইমেজ', 'imagen de la categoría', 'صورة الفئة', 'catégorie d\'image', '类别形象'),
(701, 'sub_category_image', 'Sub Category Image', 'সাব বিভাগ চিত্র', 'imagen de la categoría sub', 'صورة الفئة الفرعية', 'Image sous catégorie', '子类别形象'),
(702, 'brand_image', 'Brand Image', 'প্রতিকি ছবি', 'imagen de marca', 'صورة العلامة التجارية', 'image de marque', '品牌形象'),
(703, 'blog_image', 'Blog Image', 'ব্লগ ছবি', 'blog de imágenes', 'صور بلوق', 'blog image', '博客图片'),
(704, 'banner_image', 'Banner Image', 'ব্যানার ইমেজ', 'banner image', 'صورة لافتة', 'image de la bannière', '横幅图片'),
(705, 'user_image', 'User Image', 'ব্যবহারকারী ইমেজ', 'imagen de usuario', 'صورة المستخدم', 'image de l\'utilisateur', '用户图像'),
(706, 'vendor_logo_image', 'Vendor Logo Image', 'বিক্রেতার লোগো ইমেজ', 'imagen del logo del proveedor', 'بائع صورة الشعار', 'fournisseur image du logo', '供应商的logo图片'),
(707, 'vendor_banner_image', 'Vendor Banner Image', 'বিক্রেতার ব্যানার ইমেজ', 'imagen Bandera proveedor', 'بائع راية صورة', 'image de la bannière de fournisseur', '供应商横幅图片'),
(708, 'membership_image', 'Membership Image', 'সদস্য ইমেজ', 'imagen de miembros', 'صورة عضوية', 'image de l\'adhésion', '会员图像'),
(709, 'slides_image', 'Slides Image', 'স্লাইড ইমেজ', 'imagen diapositivas', 'صورة الشرائح', 'l\'image des diapositives', '幻灯片图像'),
(710, 'select_default_image', 'Select Default Image', 'নির্বাচন ডিফল্ট ইমেজ', 'Seleccionar imagen predeterminada', 'الصورة الافتراضية مختارة', 'image par défaut, sélectionnez', '选择默认图像'),
(711, 'product_image_updated!', 'Product Image Updated!', 'পণ্য ইমেজ আপডেট!', 'la imagen del producto actualizado!', 'صورة المنتج تجديد!', 'image du produit mis à jour!', '产品形象更新了！'),
(712, 'digital_logo_image_updated!', 'Digital Logo Image Updated!', 'ডিজিটাল লোগো ইমেজ আপডেট!', 'imagen del logotipo digital actualizada!', 'صورة الشعار الرقمية تجديد!', 'logo image numérique mis à jour!', '数字标识图像更新！'),
(713, 'category_image_updated!', 'Category Image Updated!', 'বিভাগ ইমেজ আপডেট!', 'la categoría imagen actualizada!', 'الفئة صورة تجديد!', 'catégorie d\'image mis à jour!', '类别图像更新！'),
(714, 'sub_category_image_updated!', 'Sub Category Image Updated!', 'সাব বিভাগ ইমেজ আপডেট!', 'imagen de la categoría sub actualiza!', 'صورة الفئة الفرعية تجديد!', 'Image sous catégorie mise à jour!', '子类图像更新！'),
(715, 'brand_image_updated!', 'Brand Image Updated!', 'ব্র্যান্ড ইমেজ আপডেট!', 'actualiza la imagen de marca!', 'صورة العلامة التجارية تجديد!', 'image de marque mis à jour!', '品牌形象更新了！'),
(716, 'blog_image_updated!', 'Blog Image Updated!', 'ব্লগ ইমেজ আপডেট!', 'imagen blog actualizado!', 'صورة بلوق تجديد!', 'l\'image de blog mis à jour!', '博客更新的形象！'),
(717, 'banner_image_updated!', 'Banner Image Updated!', 'ব্যানার ইমেজ আপডেট!', 'imagen Bandera actualiza!', 'راية صورة تجديد!', 'banner image mise à jour!', '横幅图像更新！'),
(718, 'user_image_updated!', 'User Image Updated!', 'ব্যবহারকারী ইমেজ আপডেট!', 'Imagen de usuario actualizada!', 'صورة المستخدم تجديد!', 'image de l\'utilisateur mis à jour!', '用户图像更新！'),
(719, 'vendor_logo_image_updated!', 'Vendor Logo Image Updated!', 'বিক্রেতার লোগো ইমেজ আপডেট!', 'imagen del logo del proveedor actualiza!', 'بائع صورة شعار تجديد!', 'fournisseur image du logo mis à jour!', '供应商的logo图片更新！'),
(720, 'vendor_banner_image_updated!', 'Vendor Banner Image Updated!', 'বিক্রেতার ব্যানার ইমেজ আপডেট!', 'imagen Bandera proveedor actualiza!', 'بائع راية صورة تجديد!', 'image de la bannière du fournisseur mis à jour!', '供应商横幅图像更新！'),
(721, 'membership_image_updated!', 'Membership Image Updated!', 'সদস্য ইমেজ আপডেট!', 'imagen actualizada de miembros!', 'صورة عضوية تجديد!', 'image de l\'adhésion mis à jour!', '会员图像更新！'),
(722, 'slides_image_updated!', 'Slides Image Updated!', 'স্লাইড ইমেজ আপডেট!', 'Imagen diapositivas actualizado!', 'الشرائح صورة تجديد!', 'l\'image des diapositives mis à jour!', '幻灯片图像更新！'),
(723, 'manage_activation', 'Manage Activation', 'সক্রিয়করণ পরিচালনা', 'administrar la activación', 'إدارة التنشيط', 'gérer l\'activation', '管理激活'),
(724, 'business_related', 'Business Related', 'ব্যবসা সংক্রান্ত', 'relacionado al negocio', 'الأعمال التجارية ذات الصلة', 'lié aux affaires', '业务相关'),
(725, 'physical_product_activation', 'Physical Product Activation', 'শারীরিক পণ্য অ্যাক্টিভেশন', 'la activación del producto físico', 'تنشيط المنتج المادي', 'activation physique du produit', '实物产品激活'),
(726, 'physical_product_enabled', 'Physical Product Enabled', 'শারীরিক পণ্য সক্রিয়', 'producto físico habilitado', 'تمكين منتج مادي', 'produit physique activé', '实物产品启用'),
(727, 'physical_product_disabled', 'Physical Product Disabled', 'শারীরিক পণ্যটি অক্ষম', 'producto físico desactivado', 'منتج مادي تعطيل', 'produit physique désactivé', '实物产品禁用');
INSERT INTO `language` (`word_id`, `word`, `english`, `Bangla`, `Spanish`, `Arabic`, `French`, `Chinese`) VALUES
(728, 'digital_product_activation', 'Digital Product Activation', 'ডিজিটাল পণ্য অ্যাক্টিভেশন', 'la activación de productos digitales', 'تنشيط المنتج الرقمي', 'l\'activation du produit numérique', '数码产品激活'),
(729, 'digital_product_enabled', 'Digital Product Enabled', 'ডিজিটাল পণ্য সক্রিয়', 'producto digital habilitada', 'تمكين المنتجات الرقمية', 'produit numérique activé', '数码产品启用'),
(730, 'digital_product_disabled', 'Digital Product Disabled', 'ডিজিটাল পণ্য নিষ্ক্রিয়', 'producto digital desactivado', 'المنتجات الرقمية تعطيل', 'produit numérique désactivé', '数码产品禁用'),
(731, 'vendor_system_activation', 'Vendor System Activation', 'বিক্রেতার সিস্টেম সক্রিয়করণের', 'activación del sistema del proveedor', 'تفعيل نظام بائع', 'l\'activation du système du fournisseur', '供应商系统的激活'),
(732, 'vendor_system_enabled', 'Vendor System Enabled', 'বিক্রেতার সিস্টেম সক্রিয়', 'Los vendedores de sistemas habilitado', 'تمكين نظام بائع', 'système de fournisseur activé', '供应商的系统中启用'),
(733, 'vendor_system_disabled', 'Vendor System Disabled', 'বিক্রেতার সিস্টেম নিষ্ক্রিয়', 'Los vendedores de sistemas deshabilitada', 'تعطيل نظام بائع', 'système fournisseur désactivé', '供应商系统禁用'),
(734, 'payment_related', 'Payment Related', 'পেমেন্ট সম্পর্কিত', 'el pago relacionado', 'دفع ذات الصلة', 'paiement connexes', '支付相关'),
(735, 'paypal_payment_activation', 'Paypal Payment Activation', 'পেপ্যাল ​​অ্যাক্টিভেশন', 'la activación del pago paypal', 'تفعيل الدفع باي بال', 'activation de paiement paypal', '支付宝付款激活'),
(736, 'paypal_payment_enabled', 'Paypal Payment Enabled', 'পেপাল পেমেন্ট সক্রিয়', 'el pago de PayPal habilitado', 'تمكين الدفع باي بال', 'paiement paypal activé', '支付宝付款启用'),
(737, 'paypal_payment_disabled', 'Paypal Payment Disabled', 'পেপাল পেমেন্ট নিষ্ক্রিয়', 'pago PayPal no disponible', 'الدفع باي بال تعطيل', 'paiement paypal désactivé', '支付宝付款禁用'),
(738, 'stripe_payment_activation', 'Stripe Payment Activation', 'ডোরা পেমেন্ট অ্যাক্টিভেশন', 'la activación del pago de la raya', 'تفعيل دفع شريط', 'activation de paiement de bande', '条纹支付激活'),
(739, 'stripe_payment_enabled', 'Stripe Payment Enabled', 'ডোরা পেমেন্ট সক্রিয়', 'el pago de la raya habilitado', 'دفع شريط تمكين', 'paiement de bande activée', '启用条纹付款'),
(740, 'stripe_payment_disabled', 'Stripe Payment Disabled', 'ডোরা পেমেন্ট নিষ্ক্রিয়', 'el pago de la raya desactivado', 'دفع شريط تعطيل', 'paiement de bande désactivé', '条纹支付禁用'),
(741, 'cash_payment_activation', 'Cash Payment Activation', 'নগদ পেমেন্ট অ্যাক্টিভেশন', 'la activación de pago en efectivo', 'تفعيل الدفع نقدا', 'activation de paiement en espèces', '现金支付激活'),
(742, 'cash_payment_enabled', 'Cash Payment Enabled', 'নগদ পেমেন্ট সক্রিয়', 'pago en efectivo habilitado', 'الدفع نقدا تمكين', 'paiement en espèces a permis', '启用现金支付'),
(743, 'cash_payment_disabled', 'Cash Payment Disabled', 'নগদ পেমেন্ট নিষ্ক্রিয়', 'pago en efectivo desactivado', 'الدفع نقدا تعطيل', 'paiement en espèces désactivé', '现金支付禁用'),
(744, 'manage_business_settings', 'Manage Business Settings', 'ব্যবসা সেটিংস পরিচালনা', 'administrar la configuración de negocio', 'إدارة إعدادات الأعمال', 'gérer les paramètres d\'affaires', '管理业务设置'),
(745, 'cash_payment', 'Cash Payment', 'নগদে টাকা প্রদান', 'pago en efectivo', 'دفع نقدا', 'paiement en espèces', '现金支付'),
(746, 'paypal_payment', 'Paypal Payment', 'পেপ্যাল', 'Pago PayPal', 'دفع باي بال', 'Paiement PayPal', '支付宝付款'),
(747, 'paypal_email', 'Paypal Email', 'পেপ্যাল ​​ইমেইল', 'correo electrónico de payPal', 'البريد الإلكتروني باي بال', 'paypal email', '贝宝电子邮件'),
(748, 'paypal_account_type', 'Paypal Account Type', 'PayPal অ্যাকাউন্ট টাইপ', 'paypal tipo de cuenta', 'باي بال نوع الحساب', 'paypal type de compte', 'PayPal帐户类型'),
(749, 'stripe_payment', 'Stripe Payment', 'ডোরা পেমেন্ট', 'el pago de la raya', 'دفع شريط', 'paiement de bande', '条纹支付'),
(750, 'stripe_secret_key', 'Stripe Secret Key', 'ডোরা গোপন চাবি', 'clave secreta de la raya', 'المفتاح السري الشريط', 'clé secrète bande', '条纹密钥'),
(751, 'stripe_publishable_key', 'Stripe Publishable Key', 'ডোরা প্রকাশযোগ্য কী', 'publicable clave de la raya', 'شريط مفتاح للنشر', 'stripe clé publiable', '条纹发布的关键'),
(752, 'currency_name', 'Currency Name', 'মুদ্রার নাম', 'nombre de la moneda', 'اسم العملة', 'nom de la monnaie', '货币名称'),
(753, 'currency_symbol', 'Currency Symbol', 'মুদ্রা প্রতীক', 'símbolo de moneda', 'رمز العملة', 'symbole de la monnaie', '货币符号'),
(754, 'shipping_cost_type', 'Shipping Cost Type', 'শিপিং খরচ টাইপ', 'Tipo de coste de envío', 'الشحن نوع التكلفة', 'Type de frais de port', '运输成本类型'),
(755, 'product_wise', 'Product Wise', 'পণ্য জ্ঞানী', 'producto sabia', 'المنتج الحكمة', 'produit sage', '产品明智'),
(756, 'fixed', 'Fixed', 'স্থির', 'fijo', 'ثابت', 'fixé', '固定'),
(757, 'shipping_cost_(If_fixed)', 'Shipping Cost (If Fixed)', 'শিপিং খরচ (সংশোধন তাহলে)', 'coste de envío (Si fija)', 'تكلفة الشحن (إذا الثابتة)', 'frais de port (Si fixe)', '运输成本（如果固定）'),
(758, 'shipment_info', 'Shipment Info', 'চালানের তথ্য', 'Datos de envío', 'معلومات الشحن', 'Information d\'expédition', '发货信息'),
(759, 'question', 'Question', 'প্রশ্ন', 'pregunta', 'سؤال', 'question', '题'),
(760, 'answer', 'Answer', 'উত্তর', 'responder', 'إجابة', 'répondre', '回答'),
(761, 'add_more_FAQs', 'Add More FAQs', 'আরো প্রায়শই জিজ্ঞাসিত প্রশ্নাবলী যোগ', 'añadir más preguntas frecuentes', 'إضافة المزيد من الأسئلة الشائعة', 'ajouter plus de FAQs', '添加更多的常见问题解答'),
(762, 'manage_payment_methods_&_shipment', 'Manage Payment Methods & Shipment', 'পেমেন্টের &amp; চালান পরিচালনা', 'administrar métodos Pago y envío', 'إدارة وسائل الدفع والشحن', 'gérer les modes de paiement et l\'expédition', '管理付款方式及发货'),
(763, 'payment_methods_settings', 'Payment Methods Settings', 'পেমেন্টের সেটিংস', 'configuración de las formas de pago', 'ضبط وسائل الدفع', 'paramètres Modes de paiement', '付款方式设置'),
(764, 'paypal_settings', 'Paypal Settings', 'পেপাল সেটিংস', 'ajustes paypal', 'إعدادات باي بال', 'paramètres paypal', '贝宝设置'),
(765, 'stripe_settings', 'Stripe Settings', 'ডোরা সেটিংস', 'la configuración de la raya', 'إعدادات شريط', 'les paramètres de bande', '条纹设置'),
(766, 'shipment_settings', 'Shipment Settings', 'চালানের সেটিংস', 'Parámetros de distribución', 'ضبط شحنة', 'les paramètres d\'expédition', '出厂设置'),
(767, 'currency_settings', 'Currency Settings', 'মুদ্রা সেটিংস', 'configuración de moneda', 'إعدادات العملة', 'paramètres de devise', '货币设置'),
(768, 'exchange_rate', 'Exchange Rate', 'বিনিময় হার', 'tipo de cambio', 'سعر الصرف', 'taux de change', '汇率'),
(769, 'default', 'Default', 'ডিফল্ট', 'defecto', 'الافتراضي', 'défaut', '默认'),
(770, 'exchange_rate_updated', 'Exchange Rate Updated', 'বিনিময় হার আপডেট', 'tipo de cambio actualizado', 'سعر الصرف تحديثها', 'taux de change mis à jour', '汇率更新'),
(771, 'currency_published', 'Currency Published', 'মুদ্রা প্রকাশিত', 'la moneda publicada', 'العملة المنشورة', 'monnaie publié', '货币出版'),
(772, 'currency_unpublished', 'Currency Unpublished', 'মুদ্রা অপ্রকাশিত', 'la moneda no publicado', 'عملة غير منشورة', 'monnaie inédite', '货币未公布'),
(773, 'syncing..', 'Syncing..', 'সিঙ্ক ..', 'la sincronización ..', 'المزامنة ..', 'la synchronisation ..', '同步..'),
(774, '!', '!', '!', '!', '!', '!', '！'),
(775, 'sync', 'Sync', 'সুসংগত', 'sincronizar', 'مزامنة', 'synchroniser', '同步'),
(776, 'manage_faqs', 'Manage Faqs', 'প্রায়শই জিজ্ঞাসিত প্রশ্নাবলী পরিচালনা', 'gestionar faqs', 'إدارة الأسئلة المتكررة', 'gérer faqs', '管理常见问题解答'),
(777, 'manage_staffs', 'Manage Staffs', 'কর্মীরা পরিচালনা', 'gestionar el personal', 'إدارة الموظفين', 'gérer le personnel', '管理人员'),
(778, 'add_staff', 'Add Staff', 'স্টাফ যোগ', 'añadir personal', 'إضافة الموظفين', 'ajouter du personnel', '增加员工'),
(779, 'create_admin', 'Create Admin', 'অ্যাডমিন তৈরি', 'crear administrador', 'إنشاء المشرف', 'créer administrateur', '创建管理员'),
(780, 'role', 'Role', 'ভূমিকা', 'papel', 'دور', 'rôle', '角色'),
(781, 'edit_admin', 'Edit Admin', 'সম্পাদনা অ্যাডমিন', 'edición de administración', 'تحرير المشرف', 'modifier administrateur', '编辑管理'),
(782, 'sddress', 'Sddress', 'sddress', 'sddress', 'sddress', 'sddress', 'sddress'),
(783, 'Manage_roles', 'Manage Roles', 'ভূমিকা পরিচালনা', 'administrar roles', 'إدارة الأدوار', 'Gérer les rôles', '管理角色'),
(784, 'add_role', 'Add Role', 'ভূমিকা যোগ', 'añadir papel', 'إضافة دور', 'ajouter rôle', '添加角色'),
(785, 'create_role', 'Create Role', 'ভূমিকা তৈরি', 'crear papel', 'إنشاء دور', 'créer rôle', '创建角色'),
(786, 'back_to_role_list', 'Back To Role List', 'ফিরে ভূমিকা লিস্টে', 'volver a la lista de papel', 'العودة إلى قائمة دور', 'Retour à la liste de rôles', '回到角色列表'),
(787, 'edit_role', 'Edit Role', 'সম্পাদনা ভূমিকা', 'edición papel', 'تحرير الدور', 'modifier rôle', '编辑角色'),
(788, 'permissions', 'Permissions', 'অনুমতি', 'permisos', 'أذونات', 'autorisations', '权限'),
(789, 'manage_SEO', 'Manage SEO', 'এসইও পরিচালনা', 'gestionar SEO', 'إدارة كبار المسئولين الاقتصاديين', 'gérer SEO', 'SEO管理'),
(790, 'settings', 'Settings', 'সেটিংস', 'ajustes', 'إعدادات', 'paramètres', '设置'),
(791, 'social_network_reach', 'Social Network Reach', 'সামাজিক নেটওয়ার্ক নাগালের', 'alcance de la red social,', 'الوصول إلى الشبكة الاجتماعية', 'la portée du réseau social', '社会网络覆盖'),
(792, 'alexa_traffic_metrics', 'Alexa Traffic Metrics', 'আলেক্সা ট্রাফিক মেট্রিক্স', 'métricas de tráfico de Alexa', 'مقاييس المرور اليكسا', 'alexa métriques de trafic', 'Alexa的流量指标'),
(793, 'alexa_traffic_graphs', 'Alexa Traffic Graphs', 'আলেক্সা ট্রাফিক গ্রাফ', 'gráficos de tráfico de Alexa', 'الرسوم البيانية المرور اليكسا', 'graphes de trafic alexa', 'Alexa的流量图'),
(794, 'search_index', 'Search Index', 'খোঁজের', 'índice de búsqueda', 'فهرس البحث', 'index de recherche', '搜索索引'),
(795, 'alexa_traffic_rank', 'Alexa Traffic Rank', 'আলেক্সা ট্রাফিক র্যাঙ্ক', 'rango de tráfico Alexa', 'اليكسا رتبة المرور', 'alexa rang du trafic', 'Alexa排名'),
(796, 'manage_search_engine_optimization', 'Manage Search Engine Optimization', 'সার্চ ইঞ্জিন অপ্টিমাইজেশান পরিচালনা', 'gestionar la optimización de motores de búsqueda', 'إدارة محرك البحث الأمثل', 'gérer l\'optimisation des moteurs de recherche', '管理搜索引擎优化'),
(797, 'keywords', 'Keywords', 'কীওয়ার্ড', 'palabras clave', 'الكلمات المفتاحية', 'mots clés', '关键字'),
(798, 'revisit_after', 'Revisit After', 'পরে পরিদর্শন', 'después de revisar', 'إعادة النظر بعد', 'revoir après', '后重温'),
(799, 'sitemap_link', 'Sitemap Link', 'সাইটম্যাপ লিংক', 'mapa del sitio,', 'رابط خريطة الموقع', 'lien sitemap', '网站地图链接'),
(800, 'admin_login_logo', 'Admin Login Logo', 'অ্যাডমিন লগইন লোগো', 'logotipo de inicio de sesión de administrador', 'المشرف شعار تسجيل الدخول', 'admin login logo', '管理员登录标识'),
(801, 'home_top_logo', 'Home Top Logo', 'হোম শীর্ষ লোগো', 'top logo casa', 'المنزل أعلى الشعار', 'accueil top logo', '家顶级标志'),
(802, 'home_bottom_logo', 'Home Bottom Logo', 'হোম নীচে লোগো', 'logo inferior', 'منزل أسفل الشعار', 'fond de la maison logo', '家庭底部标志'),
(803, 'manage_profile', 'Manage Profile', 'প্রোফাইল পরিচালনা', 'administrar el perfil', 'إدارة الملف الشخصي', 'gérer le profil', '管理个人资料'),
(804, 'manage_details', 'Manage Details', 'বিবরণ পরিচালনা', 'gestionar los detalles', 'إدارة تفاصيل', 'gérer les détails', '细节管理'),
(805, 'profile_updated!', 'Profile Updated!', 'প্রোফাইল আপডেট!', '¡Perfil actualizado!', 'تحديث الملف الشخصي!', 'Profil mis à jour!', '个人资料已更新！'),
(806, 'update_profile', 'Update Profile', 'প্রফাইল হালনাগাদ', 'actualización del perfil', 'تحديث الملف', 'mettre à jour le profil', '更新个人信息'),
(807, 'change_password', 'Change Password', 'পাসওয়ার্ড পরিবর্তন', 'Cambia la contraseña', 'تغيير كلمة السر', 'changer le mot de passe', '更改密码'),
(808, 'current_password', 'Current Password', 'বর্তমান পাসওয়ার্ড', 'contraseña actual', 'كلمة السر الحالية', 'Mot de passe actuel', '当前密码'),
(809, 'new_password*', 'New Password*', 'নতুন পাসওয়ার্ড *', 'nueva contraseña*', 'كلمة السر الجديدة*', 'nouveau mot de passe*', '新密码*'),
(810, 'confirm_password', 'Confirm Password', 'পাসওয়ার্ড নিশ্চিত করুন', 'Confirmar contraseña', 'تأكيد كلمة المرور', 'Confirmez le mot de passe', '确认密码'),
(811, 'password_updated!', 'Password Updated!', 'পাসওয়ার্ড আপডেট করা!', '¡Contraseña actualiza!', 'تم تحديث كلمة السر!', 'Mot de passe mis à jour!', '密码更新！'),
(812, 'update_password', 'Update Password', 'আপডেটের পাসওয়ার্ড', 'Actualiza contraseña', 'كلمة التحديث', 'mise à jour le mot de passe', '更新密码'),
(813, 'password_mismatched', 'Password Mismatched', 'পাসওয়ার্ড সাথে অমিল', 'la contraseña no coinciden', 'كلمة المرور غير متطابقة', 'mot de passe dépareillés', '密码不匹配'),
(814, 'incorrect_password!', 'Incorrect Password!', 'ভুল পাসওয়ার্ড৤!', '¡contraseña incorrecta!', 'كلمة مرور غير صحيحة!', 'mot de passe incorrect!', '密码不正确！'),
(815, 'language_name', 'Language Name', 'ভাষার নাম', 'Nombre del lenguaje', 'اسم اللغة', 'Nom de la langue', '语言名称'),
(816, 'language_icon', 'Language Icon', 'ভাষা আইকন', 'icono de idioma', 'رمز لغة', 'icône de langue', '语言图标'),
(817, 'select_language_icon', 'Select Language Icon', 'ভাষা নির্বাচন আইকন', 'Icono de selección de idioma', 'رمز لغة حدد', 'Icône de sélection de la langue', '选择语言图标'),
(818, 'secret', 'Secret', 'গোপন', 'secreto', 'سر', 'secret', '秘密'),
(819, 'application_name', 'Application Name', 'আবেদনের নাম', 'Nombre de la aplicación', 'اسم التطبيق', 'Nom de l\'application', '应用名称'),
(820, 'client', 'Client', 'মক্কেল', 'cliente', 'زبون', 'client', '客户'),
(821, 'client_secret', 'Client Secret', 'ক্লায়েন্ট সিক্রেট', 'el secreto de cliente', 'سر العميل', 'secret client', '客户端密钥'),
(822, 'redirect', 'Redirect', 'পুনর্নির্দেশ', 'redirigir', 'إعادة توجيه', 'réorienter', '重定向'),
(823, 'key', 'Key', 'চাবি', 'llave', 'مفتاح', 'clé', '键'),
(824, 'visit_my_homepage', 'Visit My Homepage', 'আমার হোমপেজে যান', 'visite mi página de inicio', 'زيارة موقعي', 'visiter ma page d\'accueil', '访问我的主页'),
(825, 'membership_type', 'Membership Type', 'মেম্বারশিপ টাইপ', 'tipo de membresía', 'نوع العضوية', 'Type d\'adhésion', '会员类型'),
(826, 'membership_details', 'Membership Details', 'সদস্য বিবরণ', 'detalles de la adhesión', 'تفاصيل العضوية', 'les détails d\'adhésion', '会员资料，'),
(827, 'membership_expiration', 'Membership Expiration', 'সদস্য মেয়াদপূর্তির', 'vencimiento de la suscripción', 'انتهاء عضوية', 'expiration de l\'adhésion', '会员到期'),
(828, 'total_uploaded_products', 'Total Uploaded Products', 'মোট আপলোড পণ্য', 'productos totales cargados', 'مجموع المنتجات التي تم تحميلها.', 'produits totaux téléchargés', '总上传产品'),
(829, 'uploaded_published_products', 'Uploaded Published Products', 'আপলোড প্রকাশিত পণ্য', 'productos publicados subidas', 'منتجات المنشورة التي تم تحميلها', 'produits publiés téléchargés', '上传发布的产品'),
(830, 'vendorship_timespan', 'Vendorship Timespan', 'vendorship timespan', 'intervalo de tiempo vendorship', 'vendorship زمنية', 'vendorship timespan', 'vendorship时间跨度'),
(831, 'remaining', 'Remaining', 'অবশিষ্ট', 'restante', 'المتبقية', 'restant', '其余'),
(832, 'paid_by_customers', 'Paid By Customers', 'গ্রাহকদের দ্বারা দেওয়া', 'pagados por los clientes', 'المدفوعة من قبل العملاء', 'payés par les clients', '由客户支付'),
(833, 'due_from_admin', 'Due From Admin', 'অ্যাডমিন থেকে কারণে', 'por admin', 'بسبب من المشرف', 'en raison de l\'administrateur', '应收管理'),
(834, 'payment_settings', 'Payment Settings', 'পেমেন্ট সেটিংস', 'la configuración de pagos', 'إعدادات الدفع', 'paramètres de paiement', '付款设置'),
(835, 'upgrade_package', 'Upgrade Package', 'আপগ্রেড প্যাকেজ', 'paquete de actualización', 'حزمة الترقية', 'package de mise à niveau', '升级包'),
(836, 'manage_your_product_stock', 'Manage Your Product Stock', 'আপনার পণ্য স্টক পরিচালনা', 'gestionar su stock de productos', 'إدارة المخزون المنتج الخاص بك', 'gérer votre stock de produits', '管理你的产品库存'),
(837, 'select_category', 'Select Category', 'বিভাগ নির্বাচন করুন', 'selecciona una categoría', 'اختر الفئة', 'Choisir une catégorie', '选择类别'),
(838, 'choose_product', 'Choose Product', 'পণ্য চয়ন', 'elegir el producto', 'اختيار المنتج', 'choisir le produit', '选择产品'),
(839, 'manage_public_profile_slider', 'Manage Public Profile Slider', 'সর্বজনীন প্রোফাইল স্লাইডার পরিচালনা', 'gestionar deslizador perfil público', 'إدارة المنزلق ملفه الشخصي', 'gérer le profil curseur publique', '管理的公众形象滑块'),
(840, 'home_page_style', 'Home Page Style', 'হোম পৃষ্ঠা শৈলী', 'estilo de página de inicio', 'أسلوب الصفحة الرئيسية', 'la page d\'accueil de style', '主页风格'),
(841, 'manage_site', 'Manage Site', 'সাইট পরিচালনা', 'administrar sitio', 'إدارة الموقع', 'gérer le site', '管理网站'),
(842, 'vendor_images', 'Vendor Images', 'ভেন্ডর চিত্র', 'imágenes de los proveedores', 'الصور مورد معين لل', 'images fournisseurs', '厂商图片'),
(843, 'social_media', 'Social Media', 'সামাজিক মাধ্যম', 'medios de comunicación social', 'وسائل التواصل الاجتماعي', 'média sociaux', '社交媒体'),
(844, 'SEO', 'SEO', 'এসইও', 'SEO', 'كبار المسئولين الاقتصاديين', 'référencement', '搜索引擎优化'),
(845, 'select_images', 'Select Images', 'চিত্র নির্বাচন করুন', 'seleccionar las imágenes', 'صور مختارة', 'sélectionner les images', '选择图片'),
(846, 'suggested_width', 'Suggested Width', 'প্রস্তাবিত প্রস্থ', 'ancho sugerido', 'عرض المقترح', 'largeur suggérée', '建议宽度'),
(847, 'height', 'Height', 'উচ্চতা', 'altura', 'ارتفاع', 'la taille', '高度'),
(848, 'cover_photo', 'Cover Photo', 'প্রচ্ছদ ছবি', 'foto de cubierta', 'صورة الغلاف', 'photo de couverture', '封面照片'),
(849, 'select_photo', 'Select Photo', 'ছবি নির্বাচন করুন', 'seleccione Foto', 'اختر الصورة', 'select photo', '选择照片'),
(850, 'manage_payment_receiving_settings', 'Manage Payment Receiving Settings', 'পেমেন্ট পাওয়ার সেটিংস পরিচালনা', 'administrar la configuración de recepción de pago', 'إدارة إعدادات دفع المتلقي', 'gérer les paramètres de réception de paiement', '管理支付接收设置'),
(851, 'upgrade', 'Upgrade', 'আপগ্রেড', 'mejorar', 'تطوير', 'surclassement', '升级'),
(852, 'maximum_product', 'Maximum Product', 'সর্বাধিক পণ্য', 'máxima del producto', 'الحد الأقصى المنتج', 'produit maximale', '产品最大'),
(853, 'about', 'About', 'সম্বন্ধে', 'acerca de', 'حول', 'sur', '关于'),
(854, 'oops', 'Oops', 'ওহো', 'Uy', 'عفوا', 'Oops', '哎呀'),
(855, 'the_page_you_requested_was_not_found', 'The Page You Requested Was Not Found', 'আপনার অনুরোধ পাতা পাওয়া যায় না', 'la página solicitada no se ha encontrado', 'الصفحة المطلوبة غير متوفرة', 'La page que vous avez demandée n\'a pas été trouvée', '未找到您所请求的页面'),
(856, 'back_to_home', 'Back To Home', 'বাড়িতে ফিরে যাও', 'de vuelta a casa', 'العودة إلى المنزل', 'de retour à la maison', '返回首页'),
(857, 'browse', 'Browse', 'ব্রাউজ', 'vistazo', 'تصفح', 'Feuilleter', '浏览'),
(858, 'sort_by', 'Sort By', 'ক্রমানুসার', 'ordenar por', 'ترتيب حسب', 'Trier par', '排序方式'),
(859, 'price_low_to_high', 'Price Low To High', 'মূল্য কম থেকে', 'precios de barato a caro', 'السعر على ارتفاع منخفض', 'prix croissant', '价格从低到高'),
(860, 'price_high_to_low', 'Price High To Low', 'মূল্য থেকে কম', 'Precio mayor a menor', 'السعر الاعلى الى الادنى', 'prix décroissant', '价格高到低'),
(861, 'oldest', 'Oldest', 'প্রবীণতম', 'más antiguo', 'أقدم', 'la plus ancienne', '最老的'),
(862, 'newest', 'Newest', 'নতুন', 'el más nuevo', 'أحدث', 'le plus récent', '最新'),
(863, 'sold_by_:', 'Sold By :', 'বিক্রিত :', 'vendido por :', 'تم بيعها من قبل :', 'vendu par :', '所售 ：'),
(864, 'price_:', 'Price :', 'মূল্য:', 'precio:', 'السعر :', 'prix :', '价钱 ：'),
(865, 'discount:_', 'Discount: ', 'ছাড়: ', 'descuento: ', 'خصم: ', 'remise: ', '折扣： '),
(866, '_available', ' Available', ' সহজলভ্য', ' disponible', ' متاح', ' disponible', ' 可用的'),
(867, '_add_to_wishlist', ' Add To Wishlist', ' চাহিদাপত্রে যোগ করা', ' añadir a la lista de deseos', ' إضافة إلى سلة', ' ajouter à la liste de souhaits', ' 加入收藏'),
(868, '_compare', ' Compare', ' তুলনা করা', ' comparar', ' قارن', ' comparer', ' 比较'),
(869, 'sold_category_of_vendor', 'Sold Category Of Vendor', 'বিক্রেতার বিভাগ বিক্রি', 'categoría vendidos del proveedor', 'فئة بيعها من المورد', 'catégorie vendu du vendeur', '供应商出售类'),
(870, 'recent', 'Recent', 'সাম্প্রতিক', 'reciente', 'الأخيرة', 'récent', '最近'),
(871, 'our_vendors_location', 'Our Vendors Location', 'আমাদের বিক্রেতারা অবস্থান', 'nuestra ubicación vendedores', 'البائعين لدينا موقع', 'notre emplacement des fournisseurs', '我们的供应商的位置'),
(872, 'search_vendors', 'Search Vendors', 'অনুসন্ধান বিক্রেতারা', 'proveedores de búsqueda', 'الباعة البحث', 'les fournisseurs de recherche', '搜索厂商'),
(873, 'go', 'Go', 'যাওয়া', 'ir', 'اذهب', 'aller', '走'),
(874, 'our_vendors', 'Our Vendors', 'আমাদের বিক্রেতারা', 'nuestros proveedores', 'موردينا', 'nos fournisseurs', '我们的供应商'),
(875, 'message_sent!', 'Message Sent!', 'বার্তা পাঠানো!', '¡mensaje enviado!', 'تم الارسال!', 'message envoyé!', '消息发送！'),
(876, 'incorrect_captcha!', 'Incorrect Captcha!', 'ভুল ক্যাপচা!', '¡CAPTCHA incorrecto!', 'كلمة التحقق غير صحيح!', 'Captcha incorrecte!', '验证码不正确！'),
(877, 'about_us', 'About Us', 'আমাদের সম্পর্কে', 'sobre nosotros', 'معلومات عنا', 'à propos de nous', '关于我们'),
(878, 'contact_form', 'Contact Form', 'যোগাযোগ ফর্ম', 'Formulario de contacto', 'نموذج الاتصال', 'formulaire de contact', '联系表'),
(879, 'sending..', 'Sending..', 'পাঠানোর ..', 'enviando..', 'إرسال..', 'envoi..', '发送..'),
(880, 'send_message', 'Send Message', 'বার্তা পাঠান', 'enviar mensaje', 'إرسال رسالة', 'envoyer le message', '发信息'),
(881, 'enter_valid_email_address', 'Enter Valid Email Address', 'বৈধ ই-মেইল ঠিকানা লিখুন', 'introduzca la dirección de correo electrónico válida', 'أدخل عنوان بريد إلكتروني صالح', 'entrez l\'adresse e-mail valide', '输入有效电子邮件地址'),
(882, 'message_sent_successfully', 'Message Sent Successfully', 'বার্তাটি সফলভাবে পাঠানো', 'Mensaje enviado con éxito', 'الرسالة أرسلت بنجاح', 'message envoyé avec succès', '消息发送成功'),
(883, 'incorrect_information!Check agian', 'Incorrect Information!Check Agian', 'ভুল তথ্য! চেক ইন করুন', 'información incorrecta! Llegada', 'معلومات غير صحيحة! تحقق في', 'des informations incorrectes! Arrivée', '不正确的信息！入住'),
(884, 'this_filed_is_required!', 'This Filed Is Required!', 'এই মামলা দায়ের করা প্রয়োজন বোধ করা হয়!', 'Este campo es necesario!', 'هذه المقدمة هو مطلوب!', 'ce dépôt est nécessaire!', '该申请要求！'),
(885, 'frequently_asked_questions', 'Frequently Asked Questions', 'সচরাচর জিজ্ঞাস্য', 'preguntas frecuentes', 'أسئلة مكررة', 'Questions fréquemment posées', '经常问的问题'),
(886, 'not_a_member_yet_?', 'Not A Member Yet ?', 'এখনো সদস্য নন ?', 'No eres miembro todavía ?', 'لست عضوا بعد ؟', 'Pas encore membre ?', '还不是会员？'),
(887, 'sign_up_now!', 'Sign Up Now!', 'এখন সাইন আপ!', 'inscribirse ahora!', 'أفتح حساب الأن!', 's\'inscrire maintenant!', '立即注册！'),
(888, 'forget_your_password_?', 'Forget Your Password ?', 'আপনার পাসওয়ার্ড ভুলে গেছেন ?', 'Olvidaste tu contraseña ?', 'نسيت كلمة المرور ؟', 'Mot de passe oublié ?', '忘记密码 ？'),
(889, 'sign_in_with_facebook', 'Sign In With Facebook', 'ফেসবুকে সাইন - ইন করুন', 'Iniciar sesión usando Facebook', 'قم بتسجيل الدخول باستخدام الفيسبوك', 'Connectez-vous avec Facebook', '请用facebook'),
(890, 'sign_in_with_google', 'Sign In With Google', 'গুগল সাইন ইন', 'inicia sesión con Google', 'تسجيل الدخول مع جوجل', 'connectez-vous avec Google', '在与谷歌'),
(891, 'submit', 'Submit', 'জমা', 'enviar', 'عرض', 'soumettre', '提交'),
(892, 'already_a_member_?_click_to_', 'Already A Member ? Click To ', 'ইতিমধ্যে সদস্য? </font><font>ক্লিক করুন', 'Ya eres usuario ? </font><font>haga clic para', 'عضوا فعلا ؟ </font><font>انقر ل', 'Déjà membre ? </font><font>cliquez pour', '已经是会员 ？</font><font>点击'),
(893, 'as_customer', 'As Customer', 'গ্রাহক হিসাবে', 'como cliente', 'كما العملاء', 'en tant que client', '为客户'),
(894, '_or_', ' Or ', ' অথবা ', ' o ', ' أو ', ' ou ', ' 要么 '),
(895, 'sign_up', 'Sign Up', 'নিবন্ধন করুন', 'Regístrate', 'سجل', 's\'inscrire', '注册'),
(896, 'as_vendor', 'As Vendor', 'বিক্রেতা হিসাবে', 'como proveedor', 'كما بائع', 'en tant que vendeur', '（作为卖方）'),
(897, 'registering..', 'Registering..', 'নিবন্ধনের ..', 'registrarse ..', 'تسجيل ..', 'enregistrement..', '注册..'),
(898, 'register', 'Register', 'নিবন্ধন', 'registro', 'تسجيل', 'registre', '寄存器'),
(899, 'already_a_vendor_?_click_to_', 'Already A Vendor ? Click To ', 'ইতিমধ্যে একটি বিক্রেতা? </font><font>ক্লিক করুন', 'ya un vendedor? </font><font>haga clic para', 'بالفعل بائع؟ </font><font>انقر ل', 'déjà un fournisseur? </font><font>cliquez pour', '已供应商？</font><font>点击'),
(900, 'not_a_member_yet_?_click_to_', 'Not A Member Yet ? Click To ', 'এখনো সদস্য নন ? </font><font>ক্লিক করুন', 'No eres miembro todavía ? </font><font>haga clic para', 'لست عضوا بعد ؟ </font><font>انقر ل', 'Pas encore membre ? </font><font>cliquez pour', '还不是会员？</font><font>点击'),
(901, 'back_to_login', 'Back To Login', 'প্রবেশ করতে পেছান', 'atrás para iniciar sesión', 'العودة لتسجيل الدخول', 'retour connexion', '回到登录'),
(902, 'reset_compare_list', 'Reset Compare List', 'তালিকা তুলনা রিসেট', 'restablecer la lista de comparación', 'إعادة تعيين قائمة المقارنة', 'réinitialiser la liste de comparaison', '复位对比清单'),
(903, 'choose_a_product', 'Choose A Product', 'একটি পণ্য চয়ন', 'elegir un producto', 'اختيار المنتج', 'choisir un produit', '选择一个产品'),
(904, 'my_cart', 'My Cart', 'আমার ট্রলি', 'mi carrito', 'سلتي', 'mon panier', '我的车'),
(905, '1', '1', '1', '1', '1', '1', '1'),
(906, 'orders', 'Orders', 'আদেশ', 'pedidos', 'أوامر', 'ordres', '命令'),
(907, '2', '2', '2', '2', '2', '2', '2'),
(908, 'delivery_address', 'Delivery Address', 'সরবরাহের ঠিকানা', 'dirección de entrega', 'عنوان التوصيل', 'adresse de livraison', '邮寄地址'),
(909, '3', '3', '3', '3', '3', '3', '3'),
(910, 'payments_options', 'Payments Options', 'পেমেন্ট অপশন', 'opciones de pago', 'خيارات الدفع', 'Options de paiement', '支付选项'),
(911, 'cancel_order', 'Cancel Order', 'আদেশ বাতিল', 'cancelar orden', 'الغاء الطلب', 'annuler la commande', '取消订单'),
(912, 'place_order', 'Place Order', 'জায়গা অর্ডার', 'realizar pedido', 'أمر مكان', 'Passer la commande', '下订单'),
(913, 'my_profile', 'My Profile', 'আমার প্রোফাইল', 'mi perfil', 'ملفي الشخصي', 'mon profil', '我的简历'),
(914, 'wishlist', 'Wishlist', 'ইচ্ছেতালিকা', 'Lista de deseos', 'مفضلة', 'Liste de souhaits', '愿望清单'),
(915, 'unit_price', 'Unit Price', 'একক দাম', 'precio unitario', 'سعر الوحدة', 'prix unitaire', '单价'),
(916, 'change_choices', 'Change Choices', 'পরিবর্তন পছন্দ', 'opciones de cambio', 'خيارات التغيير', 'choix de changement', '变化的选择'),
(917, 'shopping_cart', 'Shopping Cart', 'বাজারের ব্যাগ', 'carrito de compras', 'عربة التسوق', 'Panier', '购物车'),
(918, 'coupon_discount', 'Coupon Discount', 'কুপন ডিসকাউন্ট', 'cupón de descuento', 'قسيمة خصم', 'bon de réduction', '优惠券折扣'),
(919, 'enter_your_coupon_code_if_you_have_one', 'Enter Your Coupon Code If You Have One', 'যদি কেউ থাকেন আপনার কুপন কোড লিখুন', 'introduzca el código de cupón si usted tiene uno', 'إدخال رمز القسيمة إذا كان لديك واحدة', 'entrez votre code de coupon si vous en avez un', '输入您的优惠券代码，如果你有一个'),
(920, 'apply_coupon', 'Apply Coupon', 'কুপন প্রয়োগ করুন', 'Aplicar cupón', 'تطبيق القسيمة', 'Appliquer Coupon', '申请优惠券'),
(921, 'postcode/ZIP', 'Postcode/ZIP', 'পিন কোড / জিপ', 'código postal / postal', 'الرمز البريدي / الرمز البريدي', 'code postal / ZIP', '邮编/ ZIP'),
(922, 'ship_to_different_address_for_invoice', 'Ship To Different Address For Invoice', 'চালান জন্য বিভিন্ন ঠিকানায় জাহাজ', 'nave a otra dirección para la factura', 'سفينة إلى عنوان مختلف عن فاتورة', 'navire à l\'adresse différente pour la facture', '船到不同的地址发票'),
(923, 'paypal', 'Paypal', 'পেপাল', 'paypal', 'باي بال', 'paypal', '贝宝'),
(924, 'stripe', 'Stripe', 'ডোরা', 'raya', 'شريط', 'bande', '条纹'),
(925, 'invoice_paper', 'Invoice Paper', 'চালান কাগজ', 'el papel de la factura', 'ورقة الفاتورة', 'facture papier', '发票纸'),
(926, 'invoice_no', 'Invoice No', 'চালান নং', 'factura no', 'رقم الفاتورة', 'facturera pas', '发票号码'),
(927, 'client_information:', 'Client Information:', 'ক্লায়েন্ট তথ্য:', 'información del cliente:', 'معلومات العميل:', 'informations sur le client:', '客户资料：'),
(928, 'first_name:', 'First Name:', 'প্রথম নাম:', 'nombre de pila:', 'الاسم الاول:', 'Prénom:', '名字：'),
(929, 'last_name:', 'Last Name:', 'নামের শেষাংশ:', 'apellido:', 'الكنية:', 'nom de famille:', '姓：'),
(930, 'peyment_details_:', 'Peyment Details :', 'peyment বিবরণ:', 'peyment detalles:', 'تفاصيل PEYMENT:', 'détails peyment:', 'peyment详细信息：'),
(931, 'payment_status_:', 'Payment Status :', 'লেনদেনের অবস্থা :', 'estado de pago :', 'حالة السداد :', 'statut de paiement :', '支付状态 ：'),
(932, 'payment_method_:', 'Payment Method :', 'মূল্যপরিশোধ পদ্ধতি :', 'método de pago :', 'طريقة الدفع او السداد :', 'mode de paiement :', '付款方法 ：'),
(933, 'invoice', 'Invoice', 'চালান', 'factura', 'فاتورة', 'facture d\'achat', '发票'),
(934, 'billed_to', 'Billed To', 'বিল', 'facturado a', 'وصفت ل', 'facturé à', '付款人'),
(935, 'shipped_to', 'Shipped To', 'বিক্রী', 'enviado a', 'تم شحنها إلي', 'expédiés à', '运到'),
(936, 'order_date', 'Order Date', 'অর্ডারের তারিখ', 'fecha de orden', 'تاريخ الطلب', 'date de commande', '订购日期'),
(937, 'order_history', 'Order History', 'অর্ডার ইতিহাস', 'Historial de pedidos', 'تاريخ الطلب', 'Historique des commandes', '订单历史'),
(938, 'downloads', 'Downloads', 'ডাউনলোড', 'descargas', 'التنزيلات', 'téléchargements', '下载'),
(939, 'edit_profile', 'Edit Profile', 'প্রোফাইল সম্পাদনা', 'Editar perfil', 'تعديل الملف الشخصي', 'modifier le profil', '编辑个人资料'),
(940, 'support_ticket', 'Support Ticket', 'সমর্থন টিকেট', 'boleto de apoyo', 'بطاقة الدعم', 'ticket de support', '支持票'),
(941, 'change_profile_picture', 'Change Profile Picture', 'প্রোফাইল ছবি পরিবর্তন', 'cambiar foto de perfil', 'تغيير الصورة الشخصية', 'modifier la photo de profil', '更改资料图片'),
(942, 'profile_picture_saved_successfully!', 'Profile Picture Saved Successfully!', 'প্রোফাইল ছবি সফলভাবে সংরক্ষিত!', 'foto de perfil guardado correctamente!', 'الصورة الشخصية المحفوظة بنجاح!', 'photo de profil enregistré avec succès!', '资料图片保存成功！'),
(943, 'edit_failed!', 'Edit Failed!', 'সম্পাদনা ব্যর্থ হয়েছে!', 'edición no!', 'تحرير فشل!', 'edit a échoué!', '编辑失败！'),
(944, 'try_again!', 'Try Again!', 'আবার চেষ্টা কর!', '¡Inténtalo de nuevo!', 'حاول ثانية!', 'réessayer!', '再试一次！'),
(945, 'save_changes', 'Save Changes', 'পরিবর্তনগুলোর সংরক্ষন', 'guardar cambios', 'حفظ التغييرات', 'Sauvegarder les modifications', '保存更改'),
(946, 'profile_information', 'Profile Information', 'জীবন তথ্য', 'información del perfil', 'معلومات الملف الشخصي', 'Informations sur le profil', '档案信息'),
(947, 'last_7_days', 'Last 7 Days', 'গত 7 দিনে', 'Los últimos 7 días', '7 أيام الماضية', 'les 7 derniers jours', '过去7天'),
(948, 'last_30_days', 'Last 30 Days', 'শেষ 30 দিন', 'últimos 30 días', 'أخر 30 يوم', 'les 30 derniers jours', '最近30天'),
(949, 'wished_products', 'Wished Products', 'আকাঙ্ক্ষিত পণ্য', 'productos deseados', 'منتجات تمنى', 'produits souhaités', '希望产品'),
(950, 'user_since', 'User Since', 'ব্যবহারকারী থেকে', 'usuario desde', 'مستخدم منذ', 'utilisateur depuis', '用户自'),
(951, 'last_login', 'Last Login', 'গত লগইন', 'último acceso', 'آخر تسجيل دخول', 'Dernière connexion', '上次登录'),
(952, 'contact_no', 'Contact No', 'যোগাযোগের নম্বর', 'póngase en contacto con ningún', 'رقم الاتصال', 'contactez pas', '联系方式'),
(953, 'your_wishlist', 'Your Wishlist', 'আপনার ইচ্ছা তালিকা', 'tu lista de deseos', 'سلة المفضلة', 'votre liste', '您的愿望清单'),
(954, 'availability', 'Availability', 'উপস্থিতি', 'disponibilidad', 'توفر', 'disponibilité', '可用性'),
(955, 'purchase', 'Purchase', 'ক্রয়', 'compra', 'شراء', 'achat', '采购'),
(956, 'available', 'Available', 'সহজলভ্য', 'disponible', 'متاح', 'disponible', '可用的'),
(957, 'your_order_history', 'Your Order History', 'আপনার অর্ডার ইতিহাস', 'su historial de pedidos', 'تاريخ طلبك', 'historique de vos commandes', '您的订单历史记录'),
(958, 'your_downloads', 'Your Downloads', 'আপনার ডাউনলোড', 'sus descargas', 'برامجك', 'vos téléchargements', '您的下载'),
(959, 'downloading..', 'Downloading..', 'ডাউনলোডিং ..', 'descargan ..', 'تحميل ..', 'téléchargement en cours..', '下载..'),
(960, 'download_permission_denied', 'Download Permission Denied', 'ডাউনলোড অনুমতি অস্বীকার', 'Descarga permiso denegado', 'تحميل تم رفض الإذن', 'téléchargement permission refusée', '下载权限被拒绝'),
(961, 'personal_info', 'Personal Info', 'ব্যাক্তিগত তথ্য', 'información personal', 'معلومات شخصية', 'Informations personnelles', '个人信息'),
(962, 'change_your_profile_information', 'Change Your Profile Information', 'আপনার প্রোফাইলের তথ্য পরিবর্তন', 'cambiar la información de su perfil', 'تغيير معلومات الملف الشخصي', 'modifier vos informations de profil', '更改您的个人信息'),
(963, 'address 1', 'Address 1', 'ঠিকানা 1', 'Dirección 1', 'العنوان 1', 'Adresse 1', '地址1'),
(964, 'address 2', 'Address 2', 'ঠিকানা ২', 'dirección 2', 'العنوان 2', 'Adresse 2', '地址2'),
(965, 'skype', 'Skype', 'স্কাইপ', 'Skype', 'سكايب', 'skype', 'Skype的'),
(966, 'google_plus', 'Google Plus', 'গুগল প্লাস', 'google plus', 'جوجل بلس', 'google plus', '谷歌加'),
(967, 'facebook', 'Facebook', 'ফেইসবুক', 'Facebook', 'فيس بوك', 'Facebook', 'Facebook的'),
(968, 'info_update_unsuccessful!', 'Info Update Unsuccessful!', 'তথ্য আপডেট অসফল!', 'información de actualización sin éxito!', 'معلومات تحديث تنجح!', 'Info mise à jour échoue!', '信息更新不成功！'),
(969, 'info_updated_successfully!', 'Info Updated Successfully!', 'তথ্য সফলভাবে আপডেট!', 'información actualizada correctamente!', 'معلومات محدثة بنجاح!', 'Renseignements mis à jour avec succès!', '信息更新成功！'),
(970, 'change_your_password', 'Change Your Password', 'আপনার পাসওয়ার্ড পরিবর্তন করুন', 'cambia tu contraseña', 'غير كلمة المرور الخاصة بك', 'changez votre mot de passe', '更改您的密码'),
(971, 'old_password', 'Old Password', 'পুরাতন পাসওয়ার্ড', 'Contraseña anterior', 'كلمة المرور القديمة', 'ancien mot de passe', '旧密码'),
(972, 'new_password', 'New Password', 'নতুন পাসওয়ার্ড', 'nueva contraseña', 'كلمة السر الجديدة', 'nouveau mot de passe', '新密码'),
(973, 'confirm_new_password', 'Confirm New Password', 'নিশ্চিত কর নতুন গোপননম্বর', 'confirmar nueva contraseña', 'تأكيد كلمة المرور الجديدة', 'confirmer le nouveau mot de passe', '确认新密码'),
(974, 'password_change_unsuccessful!', 'Password Change Unsuccessful!', 'পাসওয়ার্ড পরিবর্তন অসফল!', 'cambio de contraseña incorrecto!', 'تغيير كلمة المرور غير ناجحة!', 'changement de mot de passe échoue!', '密码修改成功！'),
(975, 'password_changed_successfully!', 'Password Changed Successfully!', 'পাসওয়ার্ড সফলভাবে পরিবর্তন!', '¡Contraseña cambiada con éxito!', 'تم تغيير الرقم السري بنجاح!', 'Le mot de passe a été changé avec succès!', '密码修改成功！'),
(976, 'all_messages', 'All Messages', 'সব বার্তা', 'todos los mensajes', 'جميع الرسائل', 'tous les messages', '所有消息'),
(977, 'create_ticket', 'Create Ticket', 'টিকিট তৈরি', 'crear un billete', 'إنشاء تذكرة', 'créer billet', '创建票'),
(978, 'ticket_subject', 'Ticket Subject', 'টিকেট বিষয়', 'en su asunto', 'تذكرة الموضوع', 'sujet du ticket', '单主题'),
(979, 'comment', 'Comment', 'মন্তব্য', 'comentario', 'التعليق', 'commentaire', '评论'),
(980, 'creating...', 'Creating...', 'তৈরি ...', 'la creación de ...', 'إنشاء...', 'la création ...', '创建...'),
(981, 'ticket_created_successfully', 'Ticket Created Successfully', 'টিকেট সফলভাবে তৈরি', 'ticket creado con éxito', 'تذكرة إنشاؤها بنجاح', 'ticket créé avec succès', '票成功创建'),
(982, 'ticket_creation_unsuccessful', 'Ticket Creation Unsuccessful', 'টিকেট সৃষ্টি অসফল', 'la creación de tickets sin éxito', 'إنشاء تذكرة ناجحة', 'création de billets infructueuses', '单创建不成功'),
(983, 'create', 'Create', 'সৃষ্টি', 'crear', 'خلق', 'Créer', '创建'),
(984, 'your_message', 'Your Message', 'তোমার বার্তা', 'tu mensaje', 'رسالتك', 'votre message', '你的信息'),
(985, 'replying...', 'Replying...', 'জবাব ...', 'respondiendo ...', 'الرد ...', 'répondre ...', '回复...'),
(986, 'reply_sent_successfully', 'Reply Sent Successfully', 'উত্তর সফলভাবে পাঠানো', 'Respuesta enviada con éxito', 'الرد إرسالها بنجاح', 'réponse envoyé avec succès', '回复发送成功'),
(987, 'unsuccessful', 'Unsuccessful', 'ব্যার্থ', 'fracasado', 'غير ناجح', 'infructueux', '不成功'),
(988, 'vendor_public_home', 'Vendor Public Home', 'বিক্রেতা পাবলিক হোম', 'casa pública proveedor', 'البيت العام الباعة من', 'accueil du public fournisseur', '供应商的众家'),
(989, 'member_since', 'Member Since', 'সদস্য থেকে', 'Miembro desde', 'عضو منذ', 'membre depuis', '会员自'),
(990, 'vendor_rating', 'Vendor Rating', 'বিক্রেতার রেটিং', 'calificación de proveedor', 'تصنيفهم', 'Note fournisseur', '卖方评级'),
(991, 'about_vendor', 'About Vendor', 'বিক্রেতা সম্পর্কে', 'sobre el vendedor', 'حول بائع', 'à propos de fournisseur', '有关供应商'),
(992, 'find_location', 'Find Location', 'অবস্থান খুঁজে', 'encontrar la ubicación', 'العثور على الموقع', 'trouver l\'emplacement', '找到位置'),
(993, 'filters', 'Filters', 'ফিল্টার', 'filtros', 'مرشحات', 'filtres', '过滤器'),
(994, 'vendor_featured_product', 'Vendor Featured Product', 'বিক্রেতার বৈশিষ্ট্যযুক্ত পণ্য', 'proveedor del producto ofrecido', 'بائع المنتج المميز', 'fournisseur produit vedette', '供应商的特色产品'),
(995, 'added_to_wishlist', 'Added To Wishlist', NULL, NULL, NULL, NULL, NULL),
(996, 'all_category', 'All Category', NULL, NULL, NULL, NULL, NULL),
(997, 'by', 'By', NULL, NULL, NULL, NULL, NULL),
(998, 'sold_by', 'Sold By', NULL, NULL, NULL, NULL, NULL),
(999, 'last_updated', 'Last Updated', NULL, NULL, NULL, NULL, NULL),
(1000, 'review(s)', 'Review(s)', NULL, NULL, NULL, NULL, NULL),
(1001, 'add_your_review', 'Add Your Review', NULL, NULL, NULL, NULL, NULL),
(1002, 'view_details', 'View Details', NULL, NULL, NULL, NULL, NULL),
(1003, 'related_products', 'Related Products', NULL, NULL, NULL, NULL, NULL),
(1004, 'full_description', 'Full Description', NULL, NULL, NULL, NULL, NULL),
(1005, 'additional_specification', 'Additional Specification', NULL, NULL, NULL, NULL, NULL),
(1006, 'reviews', 'Reviews', NULL, NULL, NULL, NULL, NULL),
(1007, 'color_:', 'Color :', NULL, NULL, NULL, NULL, NULL),
(1008, 'add_to_list', 'Add To List', NULL, NULL, NULL, NULL, NULL),
(1009, 'you_have_registered_successfully', 'You Have Registered Successfully', NULL, NULL, NULL, NULL, NULL),
(1010, 'email_sending_failed!', 'Email Sending Failed!', NULL, NULL, NULL, NULL, NULL),
(1011, 'pay_to_vendor', 'Pay To Vendor', NULL, NULL, NULL, NULL, NULL),
(1012, 'package_payments', 'Package Payments', NULL, NULL, NULL, NULL, NULL),
(1013, 'email_templates', 'Email Templates', NULL, NULL, NULL, NULL, NULL),
(1014, 'twocheckout_payment_enabled!', 'Twocheckout Payment Enabled!', NULL, NULL, NULL, NULL, NULL),
(1015, 'twocheckout_payment_disabled!', 'Twocheckout Payment Disabled!', NULL, NULL, NULL, NULL, NULL),
(1016, 'voguePay_payment_enabled!', 'VoguePay Payment Enabled!', NULL, NULL, NULL, NULL, NULL),
(1017, 'voguePay_payment_disabled!', 'VoguePay Payment Disabled!', NULL, NULL, NULL, NULL, NULL),
(1018, 'successfully_enabled!', 'Successfully Enabled!', NULL, NULL, NULL, NULL, NULL),
(1019, 'successfully_disabled!', 'Successfully Disabled!', NULL, NULL, NULL, NULL, NULL),
(1020, 'sub-categories_(max 4)', 'Sub-categories (max 4)', NULL, NULL, NULL, NULL, NULL),
(1021, 'smtp_settings', 'Smtp Settings', NULL, NULL, NULL, NULL, NULL),
(1022, 'smtp_status', 'Smtp Status', NULL, NULL, NULL, NULL, NULL),
(1023, 'smtp_host', 'Smtp Host', NULL, NULL, NULL, NULL, NULL),
(1024, 'smtp_port', 'Smtp Port', NULL, NULL, NULL, NULL, NULL),
(1025, 'smtp_user', 'Smtp User', NULL, NULL, NULL, NULL, NULL),
(1026, 'smtp_password', 'Smtp Password', NULL, NULL, NULL, NULL, NULL),
(1027, 'captcha_status', 'Captcha Status', NULL, NULL, NULL, NULL, NULL),
(1028, 'twocheckout_activation', 'Twocheckout Activation', NULL, NULL, NULL, NULL, NULL),
(1029, 'twocheckout_payment_enabled', 'Twocheckout Payment Enabled', NULL, NULL, NULL, NULL, NULL),
(1030, 'twocheckout_payment_disabled', 'Twocheckout Payment Disabled', NULL, NULL, NULL, NULL, NULL),
(1031, 'voguePay_activation', 'VoguePay Activation', NULL, NULL, NULL, NULL, NULL),
(1032, 'voguePay_payment_enabled', 'VoguePay Payment Enabled', NULL, NULL, NULL, NULL, NULL),
(1033, 'voguePay_payment_disabled', 'VoguePay Payment Disabled', NULL, NULL, NULL, NULL, NULL),
(1034, 'twocheckout_settings', 'Twocheckout Settings', NULL, NULL, NULL, NULL, NULL),
(1035, 'user_id', 'User Id', NULL, NULL, NULL, NULL, NULL),
(1036, 'secret_key', 'Secret Key', NULL, NULL, NULL, NULL, NULL),
(1037, 'account_type', 'Account Type', NULL, NULL, NULL, NULL, NULL),
(1038, 'voguePay_settings', 'VoguePay Settings', NULL, NULL, NULL, NULL, NULL),
(1039, 'merchant_id', 'Merchant Id', NULL, NULL, NULL, NULL, NULL),
(1040, 'home_default_currency', 'Home Default Currency', NULL, NULL, NULL, NULL, NULL),
(1041, 'system_default_currency', 'System Default Currency', NULL, NULL, NULL, NULL, NULL),
(1042, 'set_currency_format', 'Set Currency Format', NULL, NULL, NULL, NULL, NULL),
(1043, 'currency_format', 'Currency Format', NULL, NULL, NULL, NULL, NULL),
(1044, 'symbol_format', 'Symbol Format', NULL, NULL, NULL, NULL, NULL),
(1045, 'no_of_decimals', 'No Of Decimals', NULL, NULL, NULL, NULL, NULL),
(1046, 'all_currencies', 'All Currencies', NULL, NULL, NULL, NULL, NULL),
(1047, 'No brands are available for this sub category', 'No Brands Are Available For This Sub Category', NULL, NULL, NULL, NULL, NULL),
(1048, 'state', 'State', NULL, NULL, NULL, NULL, NULL),
(1049, 'country', 'Country', NULL, NULL, NULL, NULL, NULL),
(1050, 'i_agree_with', 'I Agree With', NULL, NULL, NULL, NULL, NULL),
(1051, 'terms_&_conditions', 'Terms & Conditions', NULL, NULL, NULL, NULL, NULL),
(1052, 'you_must_agree_with_terms_&_conditions', 'You Must Agree With Terms & Conditions', NULL, NULL, NULL, NULL, NULL),
(1053, 'order_tracing', 'Order Tracing', NULL, NULL, NULL, NULL, NULL),
(1054, 'order_tracing_unsuccessful!', 'Order Tracing Unsuccessful!', NULL, NULL, NULL, NULL, NULL),
(1055, 'order_traced_successfully!', 'Order Traced Successfully!', NULL, NULL, NULL, NULL, NULL),
(1056, 'checking..', 'Checking..', NULL, NULL, NULL, NULL, NULL),
(1057, 'trace_my_order', 'Trace My Order', NULL, NULL, NULL, NULL, NULL),
(1058, 'wrong_order_id!', 'Wrong Order Id!', NULL, NULL, NULL, NULL, NULL),
(1059, 'clean', 'Clean', NULL, NULL, NULL, NULL, NULL),
(1060, 'manage_email_templates', 'Manage Email Templates', NULL, NULL, NULL, NULL, NULL),
(1061, 'Password Reset Email', 'Password Reset Email', NULL, NULL, NULL, NULL, NULL),
(1062, 'Account Approval Email', 'Account Approval Email', NULL, NULL, NULL, NULL, NULL),
(1063, 'Membership Upgrade Email', 'Membership Upgrade Email', NULL, NULL, NULL, NULL, NULL),
(1064, 'Vendors Account Opening', 'Vendors Account Opening', NULL, NULL, NULL, NULL, NULL),
(1065, 'Users Account Opening', 'Users Account Opening', NULL, NULL, NULL, NULL, NULL),
(1066, 'Admins Account Opening', 'Admins Account Opening', NULL, NULL, NULL, NULL, NULL),
(1067, 'email_body', 'Email Body', NULL, NULL, NULL, NULL, NULL),
(1068, 'N.B', 'N.B', NULL, NULL, NULL, NULL, NULL),
(1069, 'do_not_change_the_variables_like', 'Do Not Change The Variables Like', NULL, NULL, NULL, NULL, NULL),
(1070, 'choose_background_theme', 'Choose Background Theme', NULL, NULL, NULL, NULL, NULL),
(1071, 'please_fill_the_captcha', 'Please Fill The Captcha', NULL, NULL, NULL, NULL, NULL),
(1072, 'incorrect_information', 'Incorrect Information', NULL, NULL, NULL, NULL, NULL),
(1073, 'check_again', 'Check Again', NULL, NULL, NULL, NULL, NULL),
(1074, 'this_field_is_required!', 'This Field Is Required!', NULL, NULL, NULL, NULL, NULL),
(1075, 'edit_coupon', 'Edit Coupon', NULL, NULL, NULL, NULL, NULL),
(1076, 'coupon_discount_for', 'Coupon Discount For', NULL, NULL, NULL, NULL, NULL),
(1077, 'coupon_discount_activated', 'Coupon Discount Activated', NULL, NULL, NULL, NULL, NULL),
(1078, '_added_to_wishlist', ' Added To Wishlist', NULL, NULL, NULL, NULL, NULL),
(1079, 'details_on_delivery_status', 'Details On Delivery Status', NULL, NULL, NULL, NULL, NULL),
(1080, 'terms_conditions', 'Terms Conditions', NULL, NULL, NULL, NULL, NULL),
(1081, 'thanks_for_registration', 'Thanks For Registration', NULL, NULL, NULL, NULL, NULL),
(1082, 'you_have_to_wait_for_admin_approval', 'You Have To Wait For Admin Approval', NULL, NULL, NULL, NULL, NULL),
(1083, 'approval_confirmation_will_be_sent_to_your_email', 'Approval Confirmation Will Be Sent To Your Email', NULL, NULL, NULL, NULL, NULL),
(1084, 'check_your_email', 'Check Your Email', NULL, NULL, NULL, NULL, NULL),
(1085, 'after_confirmation_you_can_', 'After Confirmation You Can ', NULL, NULL, NULL, NULL, NULL),
(1086, 'login_from_here', 'Login From Here', NULL, NULL, NULL, NULL, NULL),
(1087, 'manage_categories', 'Manage Categories', NULL, NULL, NULL, NULL, NULL),
(1088, 'add_category', 'Add Category', NULL, NULL, NULL, NULL, NULL),
(1089, 'sub-sub-category_name', 'Sub-sub-category Name', NULL, NULL, NULL, NULL, NULL),
(1090, 'sub_sub_category', 'Sub Sub Category', NULL, NULL, NULL, NULL, NULL),
(1091, 'sub-sub-sub-category_name', 'Sub-sub-sub-category Name', NULL, NULL, NULL, NULL, NULL),
(1092, 'coupon_already_activated', 'Coupon Already Activated', NULL, NULL, NULL, NULL, NULL),
(1093, 'unvailable', 'Unvailable', NULL, NULL, NULL, NULL, NULL),
(1094, 'fully_paid', 'Fully Paid', NULL, NULL, NULL, NULL, NULL),
(1095, 'my account', 'My Account', NULL, NULL, NULL, NULL, NULL),
(1096, 'my_account', 'My Account', NULL, NULL, NULL, NULL, NULL),
(1097, 'my_orders', 'My Orders', NULL, NULL, NULL, NULL, NULL),
(1098, 'my_wishlist', 'My Wishlist', NULL, NULL, NULL, NULL, NULL),
(1099, '-', '-', NULL, NULL, NULL, NULL, NULL),
(1100, 'inventory', 'Inventory', NULL, NULL, NULL, NULL, NULL),
(1101, 'offer', 'Offer', NULL, NULL, NULL, NULL, NULL),
(1102, 'other category', 'Other Category', NULL, NULL, NULL, NULL, NULL),
(1103, '-_', '- ', NULL, NULL, NULL, NULL, NULL),
(1104, '-:_', '-: ', NULL, NULL, NULL, NULL, NULL),
(1105, '<i class=\"fa fa-heart\"></i>', '<i Class=\"fa Fa-heart\"></i>', NULL, NULL, NULL, NULL, NULL),
(1106, '<i class=\"fa fa-heart-o\"></i>', '<i Class=\"fa Fa-heart-o\"></i>', NULL, NULL, NULL, NULL, NULL),
(1107, 'index.php', 'Index.php', NULL, NULL, NULL, NULL, NULL),
(1108, 'www.bigdeals24x7.com', 'Www.bigdeals24x7.com', NULL, NULL, NULL, NULL, NULL),
(1109, 'wrong_old_password!', 'Wrong Old Password!', NULL, NULL, NULL, NULL, NULL),
(1110, 'passwords_did_not_match!', 'Passwords Did Not Match!', NULL, NULL, NULL, NULL, NULL),
(1111, 'create_players', 'Create Players', NULL, NULL, NULL, NULL, NULL),
(1112, 'edit_players', 'Edit Players', NULL, NULL, NULL, NULL, NULL),
(1113, 'edit_teams', 'Edit Teams', NULL, NULL, NULL, NULL, NULL),
(1114, 'your_email_address', 'Your Email Address', NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `language_list`
--

CREATE TABLE `language_list` (
  `language_list_id` int(11) NOT NULL,
  `name` varchar(500) DEFAULT NULL,
  `db_field` varchar(300) DEFAULT NULL,
  `status` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `language_list`
--

INSERT INTO `language_list` (`language_list_id`, `name`, `db_field`, `status`) VALUES
(1, 'English', 'english', 'ok'),
(2, 'বাংলা', 'Bangla', 'no'),
(3, 'Spanish', 'Spanish', 'no'),
(4, 'Arabic', 'Arabic', 'no'),
(5, 'French', 'French', 'no'),
(6, 'Chinese', 'Chinese', 'no');

-- --------------------------------------------------------

--
-- Table structure for table `league`
--

CREATE TABLE `league` (
  `league_id` int(11) NOT NULL,
  `league_name` varchar(100) DEFAULT NULL,
  `description` varchar(250) DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT '0',
  `auction_view` int(11) NOT NULL DEFAULT '0',
  `category` varchar(100) DEFAULT NULL,
  `unsold` int(11) NOT NULL DEFAULT '0',
  `created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `league`
--

INSERT INTO `league` (`league_id`, `league_name`, `description`, `status`, `auction_view`, `category`, `unsold`, `created`) VALUES
(3, 'SPL 2024', 'SOL Premier League 2024-25', 0, 21, '', 0, '2024-09-03 11:01:11'),
(4, 'Levels premier league 2024 demo mens', 'levels underarm box cricket tournament', 1, 31, '', 0, '2024-10-02 06:42:59');

-- --------------------------------------------------------

--
-- Table structure for table `logo`
--

CREATE TABLE `logo` (
  `logo_id` int(11) NOT NULL,
  `name` longtext
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `players`
--

CREATE TABLE `players` (
  `players_id` int(11) NOT NULL,
  `uniq_id` varchar(100) DEFAULT NULL,
  `players_name` varchar(100) DEFAULT NULL,
  `nickname` varchar(100) DEFAULT NULL,
  `mobile` varchar(50) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `category_id` varchar(10) DEFAULT NULL,
  `dob` varchar(200) DEFAULT NULL,
  `image` varchar(250) DEFAULT NULL,
  `image_thumb` varchar(250) DEFAULT NULL,
  `bat_type` varchar(20) DEFAULT NULL,
  `ball_type` varchar(50) DEFAULT NULL,
  `type` varchar(200) DEFAULT NULL,
  `style` varchar(100) DEFAULT NULL,
  `last_played_league` varchar(100) DEFAULT NULL,
  `address` text,
  `city` varchar(100) DEFAULT NULL,
  `created` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `order_id` int(11) NOT NULL DEFAULT '9999'
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `players`
--

INSERT INTO `players` (`players_id`, `uniq_id`, `players_name`, `nickname`, `mobile`, `email`, `category_id`, `dob`, `image`, `image_thumb`, `bat_type`, `ball_type`, `type`, `style`, `last_played_league`, `address`, `city`, `created`, `order_id`) VALUES
(2, 'SPL/2', 'Dhaval Satra', '', NULL, 'dhaval@linchpin360.com', '7', '1995-08-01', 'players_2.jpg', 'players_2_thumb.jpg', NULL, NULL, 'All Rounder', 'Right Hand Batsman', 'none', 'Vile Parle \r\n', 'Mumbai', '2022-04-05 16:27:59', 9999),
(4, 'SPL/4', 'Dhanesh Kuvar', '', NULL, 'contact@imperialitsolutions.com', '7', '1986-04-05', 'players_4.jpg', 'players_4_thumb.jpg', NULL, NULL, 'All Rounder', 'Right Hand Batsman', 'none', 'Charkop Kandivali West\r\n', 'mumbai', '2022-04-05 16:49:02', 9999),
(5, 'SPL/5', 'Priyank Sanghavi ', '', NULL, 'Priyankd.sanghavi@gmail.com', '8', '1985-04-05', 'players_5.jpg', 'players_5_thumb.jpg', NULL, NULL, 'All Rounder', 'Right Hand Batsman', 'SPL 2023', 'Kandivali \r\n', 'Mumbai', '2022-04-05 16:50:41', 9999),
(6, 'SPL/6', 'Sagar Shah', '', NULL, 'fotokraft19@gmail.com', '12', '1985-04-05', 'players_6.jpg', 'players_6_thumb.jpg', NULL, NULL, 'Bowler', 'Right Hand Batsman', 'none', '702 sharvil court Adarsh lane off marve road malad(w)\r\n', 'Mumbai', '2022-04-05 16:52:42', 9999),
(1, 'SPL/1', 'Vinit Shah', '', NULL, 'sports.zone@yahoo.co.uk', '12', '1980-03-21', 'players_1.jpg', 'players_1_thumb.jpg', NULL, NULL, 'Bowler', 'Right Hand Batsman', 'none', 'MIRA ROAD\r\n', 'Mumbai', '2022-04-05 16:56:04', 9999),
(8, 'SPL/8', 'SAGAR KANSARA', '', NULL, 'sagar.kansara78@gmail.com', '13', '1980-04-05', 'players_8.jpg', 'players_8_thumb.jpg', NULL, NULL, 'All Rounder', 'Right Hand Batsman', 'none', 'ANDHERI WEST\r\n', 'Mumbai', '2022-04-05 16:58:37', 9999),
(9, 'SPL/9', 'Mahesh Sharma', '', NULL, 'takecareins@yahoo.co.in', '13', '1976-04-05', 'players_9.jpg', 'players_9_thumb.jpg', NULL, NULL, 'All Rounder', 'Right Hand Batsman', 'none', 'takecareins@yahoo.co.in\r\n', 'Mumbai', '2022-04-05 17:01:15', 9999),
(10, 'SPL/10', 'Dharmesh Solanki', '', NULL, 'Sdsglobalservices@gmail.com', '12', '1971-04-05', 'players_10.jpg', 'players_10_thumb.jpg', NULL, NULL, 'All Rounder', 'Right Hand Batsman', 'none', 'B3/402, Ram-Anuj CHS Ltd, Ramdev Park, opp. Kajal marriage grounds, mira road east, MUMBAI-401107 \r\n', 'Mumbai', '2022-04-05 19:31:34', 9999),
(69, 'SPL/69', 'Saurabh Dhanuka', '', NULL, 'saurabh@kalpatarualuminium.com', '8', '1978-04-04', 'players_69.jpg', 'players_69_thumb.jpg', NULL, NULL, 'Batsman', 'Right Hand Batsman', 'NA', 'Vile Parle', 'Mumbai', '2024-09-03 10:21:23', 9999),
(43, 'SPL/43', 'Abhay Jain ', '', NULL, 'ashokagranite12@gmail.com', '12', '1991-01-12', 'players_43.jpg', 'players_43_thumb.jpg', NULL, NULL, 'Batsman', 'Right Hand Batsman', 'none', 'Mumbai', 'Mumbai', '2022-04-06 15:56:42', 9999),
(64, 'SPL/64', 'Priyanka Karia', '', NULL, 'priyanka.coursefinderindia@gmail.com', '9', '1989-04-04', 'players_64.jpg', 'players_64_thumb.jpg', NULL, NULL, 'Batsman', 'Right Hand Batsman', 'NA', 'Borivali', 'Mumbai', '2024-09-03 10:14:51', 9999),
(13, 'SPL/13', 'Rima Parikh ', '', NULL, 'rimaparikh.cfp@gmail.com', '9', '1988-04-05', 'players_13.jpeg', 'players_13_thumb.jpeg', NULL, NULL, 'Bowler', 'Right Hand Batsman', 'none', 'Mumbai\r\n', 'Mumbai', '2022-04-05 19:44:19', 9999),
(14, 'SPL/14', 'Siddharth Tibriwal ', '', NULL, 'siddharth@tibriwals.com', '8', '1983-04-05', 'players_14.jpg', 'players_14_thumb.jpg', NULL, NULL, 'Bowler', 'Right Hand Batsman', 'none', 'Mumbai', 'Mumbai', '2022-04-05 23:24:25', 9999),
(15, 'SPL/15', 'Sanjeev Gupta', '', NULL, 'Sanjeevsdesignerstudio@gmail.com', '13', '1972-04-05', 'players_15.jpg', 'players_15_thumb.jpg', NULL, NULL, 'All Rounder', 'Right Hand Batsman', 'none', 'Heart of SOL \r\n', 'Mumbai', '2022-04-05 23:28:52', 9999),
(50, 'SPL/50', 'Rahul bhauwala', '', NULL, 'rahul.bhauwala@gmail.com', '12', '1990-01-01', 'players_50.jpeg', 'players_50_thumb.jpeg', NULL, NULL, 'All Rounder', 'Right Hand Batsman', 'none', 'colaba', 'Mumbai', '2023-10-14 11:43:36', 9999),
(18, 'SPL/18', 'Rupak Kumar ', '', NULL, 'kanz.enterprises@gmail.com', '7', '1980-04-06', 'players_18.jpg', 'players_18_thumb.jpg', NULL, NULL, 'All Rounder', 'Right Hand Batsman', 'none', 'Charkop kandiwali west\r\n', 'Mumbai', '2022-04-06 00:04:02', 9999),
(19, 'SPL/19', 'Piyush Mehta ', '', NULL, 'piyushmehta2000@gmail.com', '13', '1993-04-06', 'players_19.jpg', 'players_19_thumb.jpg', NULL, NULL, 'All Rounder', 'Right Hand Batsman', 'none', 'Kya karoge jaan kar?\r\n', 'Mumbai', '2022-04-06 00:06:10', 9999),
(20, 'SPL/20', 'Naresh Parmar', '', NULL, 'naresh@vbvalves.com', '12', '1981-04-06', 'players_20.jpg', 'players_20_thumb.jpg', NULL, NULL, 'Bowler', 'Right Hand Bowler', 'none', 'Dahisar Mumbai\r\n', 'Mumbai', '2022-04-06 00:08:16', 9999),
(21, 'SPL/21', 'Ravikant Sharma ', '', NULL, 'info@theweddingmomentz.com', '8', '1980-04-06', 'players_21.jpeg', 'players_21_thumb.jpeg', NULL, NULL, 'All Rounder', 'Right Hand Batsman', 'none', '204 5B Bhagyoday CHS Ltd New Mhada Colony Behind Albarkaat School Kurla West Mumbai 400070\r\n', 'Mumbai', '2022-04-06 00:11:05', 9999),
(23, 'SPL/23', 'Mansi shah', '', NULL, 'trishlaint.mvs@gmail.com', '9', '1988-04-06', 'players_23.jpg', 'players_23_thumb.jpg', NULL, NULL, 'Bowler', 'Right Hand Batsman', 'none', 'B/1001, Siddhivinayak Tower, Opposite Phoenix Hospital, Chikoowadi, Borivali (W), Mumbai - 400092\r\n', 'Mumbai', '2022-04-06 00:20:48', 9999),
(24, 'SPL/24', 'Meet Rathod', '', NULL, 'exciteshoppers@gmail.com', '13', '1992-04-06', 'players_24.jpeg', 'players_24_thumb.jpeg', NULL, NULL, 'All Rounder', 'Right Hand Batsman', 'none', 'Mumbai\r\n', 'Mumbai', '2022-04-06 00:25:08', 9999),
(25, 'SPL/25', 'Gaurav Garg ', '', NULL, 'gaurav@tourindiatravels.com', '7', '1988-04-06', 'players_25.jpg', 'players_25_thumb.jpg', NULL, NULL, 'All Rounder', 'Right Hand Batsman', 'none', 'B-604 Aishwarya Bld mhada svp Nagar Andheri West Mumbai 53 \r\n', 'Mumbai', '2022-04-06 00:27:18', 9999),
(26, 'SPL/26', 'Hemant Shewakramani', '', NULL, 'hemant@techtry.com', '12', '1985-04-06', 'players_26.jpg', 'players_26_thumb.jpg', NULL, NULL, 'All Rounder', 'Right Hand Batsman', 'none', '702 sharvil court Adarsh lane off marve road malad west \r\n', 'Mumbai', '2022-04-06 00:30:11', 9999),
(27, 'SPL/27', 'Neha Dhanuka', '', NULL, 'Neha.p.dhanuka@gmail.com', '9', '1989-04-06', 'players_27.jpg', 'players_27_thumb.jpg', NULL, NULL, 'Bowler', 'Right Hand Bowler', 'none', 'Mira Road\r\n', 'Mumbai', '2022-04-06 00:35:26', 7),
(61, 'SPL/61', 'Keval Desai', '', NULL, 'kaivalyam23@gmail.com', '12', '1992-04-04', 'players_61.png', 'players_61_thumb.png', NULL, NULL, 'Bowler', 'Right Hand Batsman', 'NA', 'Mulund', 'Mumbai', '2024-09-03 10:06:08', 9999),
(62, 'SPL/62', 'Kasturi Dave', '', NULL, 'hi@inkytrails.com', '9', '1984-04-04', 'players_62.jpg', 'players_62_thumb.jpg', NULL, NULL, 'Batsman', 'Right Hand Batsman', 'NA', 'Vile Parle', 'Mumbai', '2024-09-03 10:11:36', 9999),
(63, 'SPL/63', 'Gautami Katdare', '', NULL, 'gautami@studiosquare.com', '9', '1984-04-04', 'players_63.jpg', 'players_63_thumb.jpg', NULL, NULL, 'Bowler', 'Right Hand Batsman', 'NA', 'Andheri', 'Mumbai', '2024-09-03 10:12:47', 9999),
(31, 'SPL/31', 'Kiran Suratkal', '', NULL, 'Kiran.suratkal@gmail.com', '12', '1961-04-06', 'players_31.jpeg', 'players_31_thumb.jpeg', NULL, NULL, 'Batsman', 'Right Hand Bowler', 'none', 'Andheri\r\n', 'Mumbai', '2022-04-06 00:45:03', 6),
(65, 'SPL/65', 'Huzefa Rangwala', '', NULL, 'huzefa@hrdesigns.co.in', '12', '1982-04-04', 'players_65.jpg', 'players_65_thumb.jpg', NULL, NULL, 'Batsman', 'Right Hand Batsman', 'SPL 2023', 'Andheri', 'Mumbai', '2024-09-03 10:16:30', 9999),
(33, 'SPL/33', 'Manoj M Sawant ', '', NULL, 'mmsawant11@yahoo.com', '12', '1995-04-06', 'players_33.jpeg', 'players_33_thumb.jpeg', NULL, NULL, 'Batsman', 'Right Hand Batsman', 'none', '620, B-wing Buddha Vihar CHS Buddha Colony Kurla West Mumbai 70\r\n', 'Mumbai', '2022-04-06 00:58:51', 9999),
(52, 'SPL/52', 'Rashida dahodwala', '', NULL, 'Rashart22@gmail.com', '9', '1990-01-01', 'players_52.jpeg', 'players_52_thumb.jpeg', NULL, NULL, 'All Rounder', 'Right Hand Batsman', 'none', 'colaba', 'Mumbai', '2023-10-14 11:43:36', 9999),
(35, 'SPL/35', 'Bhavesh Thakkar', '', NULL, 'bhavesh@brainboxsolutions.net', '12', '1992-04-06', 'players_35.jpg', 'players_35_thumb.jpg', NULL, NULL, 'All Rounder', 'Left Hand Batsman', 'none', 'Mumbai', 'Mumbai', '2022-04-06 15:27:17', 9999),
(36, 'SPL/36', 'Farzana Suri', '', NULL, 'surifarzana@gmail.com', '9', '1992-04-06', 'players_36.jpeg', 'players_36_thumb.jpeg', NULL, NULL, 'Bowler', 'Right Hand Batsman', 'none', 'Mumbai', 'Mumbai', '2022-04-06 15:29:34', 9999),
(48, 'SPL/48', 'Vijay Poddar', '', NULL, 'poddarvijay21@gmail.com', '8', '1990-01-01', 'players_48.jpeg', 'players_48_thumb.jpeg', NULL, NULL, 'All Rounder', 'Right Hand Batsman', 'none', 'colaba', 'Mumbai', '2023-10-14 11:43:36', 9999),
(47, 'SPL/47', 'Sonali Vaidya', '', NULL, 'falconcreatives@gmail.com', '9', '1984-10-02', 'players_47.jpeg', 'players_47_thumb.jpeg', NULL, NULL, '', 'Right Hand Batsman', 'none', 'colaba', 'Mumbai', '2023-10-14 11:43:36', 9999),
(78, 'SPL/78', 'Piya Punjabi', '', NULL, 'shukrcandles@gmail.com', '9', '1989-04-04', 'players_78.jpg', 'players_78_thumb.jpg', NULL, NULL, 'Bowler', 'Right Hand Batsman', 'NA', 'Lolhandwala', 'Mumbai', '2024-09-03 10:58:47', 9999),
(60, 'SPL/60', 'Simrat Bohra', '', NULL, 'contactsimratbohra@gmail.com', '9', '1984-04-04', 'players_60.jpg', 'players_60_thumb.jpg', NULL, NULL, 'Bowler', 'Right Hand Batsman', 'NA', 'Lokhandwala', 'Mumbai', '2024-09-03 10:02:42', 9999),
(39, 'SPL/39', 'Mahima Agrawal', '', NULL, 'mahima@mgaca.co.in', '9', '1992-04-06', 'players_39.jpeg', 'players_39_thumb.jpeg', NULL, NULL, 'Batsman', 'Right Hand Batsman', 'none', 'Mumbai', 'Mumbai', '2022-04-06 15:36:29', 9999),
(40, 'SPL/40', 'Jayesh Lolekar', '', NULL, 'Jayesh.lolekar@gmail.com', '12', '1992-04-06', 'players_40.jpg', 'players_40_thumb.jpg', NULL, NULL, 'Batsman', 'Right Hand Batsman', 'none', 'Mumbai', 'Mumbai', '2022-04-06 15:44:27', 9999),
(41, 'SPL/41', 'Dinesh Agrrawal ', '', NULL, 'Knottdevents@gmail.com', '8', '1992-04-06', 'players_41.jpeg', 'players_41_thumb.jpeg', NULL, NULL, 'All Rounder', 'Right Hand Batsman', 'none', 'Mumbai', 'Mumbai', '2022-04-06 15:45:53', 9999),
(42, 'SPL/42', 'Neenu Monga', '', NULL, 'neenukkmonga@gmail.com', '9', '1992-04-06', 'players_42.jpeg', 'players_42_thumb.jpeg', NULL, NULL, 'All Rounder', 'Right Hand Batsman', 'none', 'Mumbai', 'Mumbai', '2022-04-06 15:47:45', 9999),
(44, 'SPL/44', 'Jayesh jain', '', NULL, 'Jayeshjainmalad@gmail.com', '8', '1988-07-09', 'players_44.jpeg', 'players_44_thumb.jpeg', NULL, NULL, 'All Rounder', 'Right Hand Batsman', 'none', 'Mumbai', 'Mumbai', '2022-04-06 15:58:02', 9999),
(34, 'SPL/34', 'Anant phatarpekar', '', NULL, 'info@camlonfreight.in', '8', '1992-04-06', 'players_34.jpeg', 'players_34_thumb.jpeg', NULL, NULL, 'All Rounder', 'Right Hand Batsman', 'none', 'Mumbai', 'Mumbai', '2022-04-06 15:59:34', 9999),
(66, 'SPL/66', 'Nikesh Jain', '', NULL, 'jainnikeshin@gmail.com', '12', '1984-04-04', 'players_66.png', 'players_66_thumb.png', NULL, NULL, 'Bowler', 'Right Hand Batsman', 'NA', 'Lokhandwala', 'Mumbai', '2024-09-03 10:17:57', 9999),
(53, 'SPL/53', 'Nirmam Gala', '', NULL, 'nirmam56@gmail.com', '12', '1995-01-01', 'players_53.jpeg', 'players_53_thumb.jpeg', '', NULL, '', 'Right Hand Batsman', 'none', 'colaba', 'Mumbai', '2023-10-14 11:43:36', 9999),
(67, 'SPL/67', 'Shreyas Dave', '', NULL, 'shreyasdave94@gmail.com', '12', '1994-04-04', 'players_67.jpg', 'players_67_thumb.jpg', NULL, NULL, 'Batsman', 'Right Hand Batsman', 'NA', 'Dahisar', 'Mumbai', '2024-09-03 10:19:17', 9999),
(68, 'SPL/68', 'Khushal Dagha', '', NULL, 'zzdecor04@gmail.com', '8', '1984-04-04', 'players_68.jpg', 'players_68_thumb.jpg', NULL, NULL, 'Batsman', 'Left Hand Batsman', 'NA', 'Goregaon', 'Mumbai', '2024-09-03 10:20:08', 9999),
(56, 'SPL/56', 'Arif Khan', '', NULL, 'dhvlstr@gmail.com', '8', '1979-10-18', 'players_56.jpg', 'players_56_thumb.jpg', NULL, NULL, 'Bowler', 'Right Hand Batsman', 'ipl', 'Andhero', 'mumbai', '2023-10-18 13:29:12', 9999),
(57, 'SPL/57', 'Sourabh jain', '', NULL, 'dhvlstr@gmail.com', '12', '1988-10-04', 'players_57.jpg', 'players_57_thumb.jpg', NULL, NULL, 'Bowler', 'Right Hand Batsman', 'ipl', 'Andhero', 'mumbai', '2023-10-18 13:29:52', 9999),
(58, 'SPL/58', 'Aneel Gupta', '', NULL, 'dhvlstr@gmail.com', '12', '1977-10-18', 'players_58.png', 'players_58_thumb.png', NULL, NULL, 'Bowler', 'Right Hand Batsman', 'ipl', 'andheri', 'mumbai', '2023-10-18 13:30:38', 9999),
(70, 'SPL/70', 'Prachi Kothari', '', NULL, 'prachiikphotographyy@gmail.com', '9', '1992-04-04', 'players_70.jpg', 'players_70_thumb.jpg', NULL, NULL, 'Bowler', 'Right Hand Batsman', 'NA', 'Goregaon', 'Mumbai', '2024-09-03 10:25:26', 9999),
(71, 'SPL/71', 'Bharat Ladha', '', NULL, 'bharatladha25688@gmail.com', '8', '1988-06-25', 'players_71.jpg', 'players_71_thumb.jpg', NULL, NULL, 'Batsman', 'Right Hand Batsman', 'NA', 'Malad', 'Mumbai', '2024-09-03 10:28:22', 9999),
(72, 'SPL/72', 'Varun Shah', '', NULL, 'varun21shah1991@gmail.com', '8', '1991-04-04', 'players_72.jpg', 'players_72_thumb.jpg', NULL, NULL, 'Batsman', 'Right Hand Batsman', 'NA', 'Kandivali', 'Mumbai', '2024-09-03 10:30:08', 9999),
(73, 'SPL/73', 'Eshan Dani', '', NULL, 'eshandanied@gmail.com', '7', '1986-04-04', 'players_73.jpg', 'players_73_thumb.jpg', NULL, NULL, 'Batsman', 'Right Hand Batsman', 'NA', 'Malad', 'Mumbai', '2024-09-03 10:31:02', 9999),
(74, 'SPL/74', 'Jayhesh Khemka', '', NULL, 'jayeshkhemka7@gmail.com', '12', '1972-04-04', 'players_74.png', 'players_74_thumb.png', NULL, NULL, 'Bowler', 'Right Hand Batsman', 'NA', 'Andheri', 'Mumbai', '2024-09-03 10:32:38', 9999),
(75, 'SPL/75', 'Mihir Makwana', '', NULL, 'info@makcon.in', '8', '1989-04-04', 'players_75.jpg', 'players_75_thumb.jpg', NULL, NULL, 'Batsman', 'Right Hand Batsman', 'NA', 'Borivali', 'Mumbai', '2024-09-03 10:35:52', 9999),
(76, 'SPL/76', 'Mithil Kothari', '', NULL, 'anaikaindustry@gmail.com', '8', '1990-04-04', 'players_76.jpg', 'players_76_thumb.jpg', NULL, NULL, 'Batsman', 'Right Hand Batsman', 'NA', 'Goregaon', 'Mumbai', '2024-09-03 10:40:16', 9999),
(77, 'SPL/77', 'Pranav Rao', '', NULL, 'pranav@kaizeninfotech.com', '8', '1986-04-04', 'players_77.jpeg', 'players_77_thumb.jpeg', NULL, NULL, 'Batsman', 'Right Hand Batsman', 'Na', 'Thane', 'Mumbai', '2024-09-03 10:52:01', 9999),
(79, 'SPL/79', 'Priyanka Dedhia', '', NULL, 'priyankadedhia86@gmail.com', '9', '1986-04-04', 'players_79.jpg', 'players_79_thumb.jpg', NULL, NULL, 'Bowler', 'Right Hand Batsman', 'NA', 'Vile Parle (E)', 'Mumbai', '2024-09-04 14:21:55', 9999),
(80, 'SPL/80', 'snehal', 'SNEH', NULL, 'snehaltechanalyst@gmail.com', '14', '1985-09-26', 'players_80.webp', 'players_80_thumb.webp', NULL, NULL, 'All Rounder', 'Right Hand Bowler', 'LPL-4', 'C-2206\r\nKANAKIA LEVELS', 'MUMBAI', '2024-10-02 06:49:25', 9999),
(81, 'SPL/81', 'FENI', '', NULL, 'JIMJAM_FORU@YAHOO.COM', '14', '1995-01-01', 'players_81.webp', 'players_81_thumb.webp', NULL, NULL, 'All Rounder', 'Left Hand Batsman', 'LPL-4', 'B WING', 'MUMBAI', '2024-10-02 06:54:59', 9999),
(82, 'SPL/82', 'NIRMA', 'NV', NULL, 'JIMJAM_FORU@YAHOO.COM', '14', '1995-01-01', 'players_82.webp', 'players_82_thumb.webp', NULL, NULL, 'Batsman', 'Right Hand Batsman', 'LPL-4', 'B WING', 'MUMBAI', '2024-10-02 06:55:58', 9999),
(83, 'SPL/83', 'BHAV MAKVA', 'BM', NULL, 'JIMJAM_FORU@YAHOO.COM', '14', '1995-01-01', 'players_83.webp', 'players_83_thumb.webp', NULL, NULL, 'Batsman', 'Right Hand Batsman', 'LPL-4', 'A WING', 'MUMBAI', '2024-10-02 06:56:58', 9999),
(84, 'SPL/84', 'RUCHU', 'RM', NULL, 'JIMJAM_FORU@YAHOO.COM', '14', '1995-01-01', 'players_84.webp', 'players_84_thumb.webp', NULL, NULL, 'All Rounder', 'Left Hand Batsman', 'LPL-4', 'B WING', 'MUMBAI', '2024-10-02 06:57:41', 9999),
(85, 'SPL/85', 'PARU', 'PS', NULL, 'JIMJAM_FORU@YAHOO.COM', '14', '1995-01-01', 'players_85.webp', 'players_85_thumb.webp', NULL, NULL, 'Bowler', 'Right Hand Bowler', 'LPL-4', 'B WING', 'MUMBAI', '2024-10-02 07:00:32', 9999),
(86, 'SPL/86', 'HARSHA', 'HS', NULL, 'JIMJAM_FORU@YAHOO.COM', '14', '1985-01-01', 'players_86.webp', 'players_86_thumb.webp', NULL, NULL, 'All Rounder', 'Left Hand Batsman', 'LPL-4', 'C WING', 'MUMBAI', '2024-10-02 07:01:58', 9999),
(87, 'SPL/87', 'JAYESHA', 'GFH', NULL, 'JIMJAM_FORU@YAHOO.COM', '14', '1995-01-01', 'players_87.webp', 'players_87_thumb.webp', NULL, NULL, 'Batsman', 'Left Hand Batsman', 'GFH', 'FGH', 'HFG', '2024-10-02 07:02:49', 9999);

-- --------------------------------------------------------

--
-- Table structure for table `soldplayers`
--

CREATE TABLE `soldplayers` (
  `soldplayers_id` int(11) NOT NULL,
  `players_id` varchar(11) DEFAULT NULL,
  `teams_id` varchar(11) DEFAULT NULL,
  `league_id` varchar(11) DEFAULT NULL,
  `category_id` varchar(11) DEFAULT NULL,
  `sold_price` varchar(200) NOT NULL,
  `created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `soldplayers`
--

INSERT INTO `soldplayers` (`soldplayers_id`, `players_id`, `teams_id`, `league_id`, `category_id`, `sold_price`, `created`) VALUES
(71, '1', '12', '3', '12', '7000000', '2024-09-05 05:59:54'),
(70, '6', '11', '3', '12', '4000000', '2024-09-05 05:58:46'),
(69, '57', '10', '3', '12', '9000000', '2024-09-05 05:54:19'),
(68, '58', '12', '3', '12', '4500000', '2024-09-05 05:52:57'),
(67, '74', '11', '3', '12', '4500000', '2024-09-05 05:51:46'),
(66, '65', '9', '3', '12', '6000000', '2024-09-05 05:50:47'),
(65, '70', '10', '3', '9', '12000000', '2024-09-05 05:47:02'),
(64, '42', '12', '3', '9', '2500000', '2024-09-05 05:45:58'),
(63, '39', '11', '3', '9', '3000000', '2024-09-05 05:44:27'),
(62, '52', '9', '3', '9', '2500000', '2024-09-05 05:41:12'),
(61, '63', '8', '3', '9', '2500000', '2024-09-05 05:39:55'),
(60, '62', '12', '3', '9', '4000000', '2024-09-05 05:39:01'),
(59, '23', '12', '3', '9', '12000000', '2024-09-05 05:38:01'),
(58, '13', '10', '3', '9', '7000000', '2024-09-05 05:37:00'),
(57, '24', '9', '3', '13', '6000000', '2024-09-05 05:35:43'),
(56, '19', '10', '3', '13', '44000000', '2024-09-05 05:35:03'),
(55, '15', '11', '3', '13', '9000000', '2024-09-05 05:33:28'),
(54, '9', '12', '3', '13', '7000000', '2024-09-05 05:32:39'),
(53, '8', '10', '3', '13', '14000000', '2024-09-05 05:31:43'),
(52, '73', '12', '3', '7', '48000000', '2024-09-05 05:28:56'),
(51, '25', '9', '3', '7', '34000000', '2024-09-05 05:27:31'),
(50, '18', '11', '3', '7', '48000000', '2024-09-05 05:26:15'),
(49, '4', '8', '3', '7', '40000000', '2024-09-05 05:24:03'),
(48, '2', '8', '3', '7', '22000000', '2024-09-05 05:23:01'),
(47, '64', '9', '3', '9', '2000000', '2024-09-03 13:07:17'),
(37, '44', '11', '3', '8', '4000000', '2024-09-03 12:48:16'),
(46, '71', '10', '3', '8', '4000000', '2024-09-03 13:06:49'),
(44, '41', '8', '3', '8', '4000000', '2024-09-03 13:04:56'),
(34, '50', '12', '3', '12', '3000000', '2024-09-03 12:45:01'),
(72, '10', '9', '3', '12', '3500000', '2024-09-05 06:00:52'),
(73, '43', '9', '3', '12', '4500000', '2024-09-05 06:01:45'),
(74, '20', '9', '3', '12', '3500000', '2024-09-05 06:02:55'),
(75, '26', '8', '3', '12', '3500000', '2024-09-05 06:04:46'),
(76, '40', '12', '3', '12', '3000000', '2024-09-05 06:06:18'),
(77, '53', '8', '3', '12', '12000000', '2024-09-05 06:07:42'),
(78, '31', '10', '3', '12', '7000000', '2024-09-05 06:13:04'),
(79, '33', '8', '3', '12', '3000000', '2024-09-05 06:15:32'),
(80, '35', '11', '3', '12', '4500000', '2024-09-05 06:15:54'),
(81, '66', '11', '3', '12', '3000000', '2024-09-05 06:16:20'),
(82, '61', '10', '3', '12', '3000000', '2024-09-05 06:17:44'),
(83, '5', '12', '3', '8', '18000000', '2024-09-05 06:21:55'),
(84, '69', '9', '3', '8', '6000000', '2024-09-05 06:22:46'),
(85, '14', '10', '3', '8', '4500000', '2024-09-05 06:23:39'),
(86, '48', '8', '3', '8', '6000000', '2024-09-05 06:25:00'),
(87, '34', '10', '3', '8', '4500000', '2024-09-05 06:25:43'),
(88, '68', '11', '3', '8', '5000000', '2024-09-05 06:26:59'),
(90, '72', '9', '3', '8', '38000000', '2024-09-05 06:32:06'),
(91, '75', '9', '3', '8', '40000000', '2024-09-05 06:33:41'),
(92, '76', '12', '3', '8', '10000000', '2024-09-05 06:34:58'),
(93, '77', '8', '3', '8', '36000000', '2024-09-05 06:36:03'),
(94, '56', '12', '3', '8', '30000000', '2024-09-05 06:36:48'),
(95, '21', '11', '3', '8', '4000000', '2024-09-05 06:37:06'),
(96, '80', '13', '4', '14', '7500000', '2024-10-02 08:48:48');

-- --------------------------------------------------------

--
-- Table structure for table `teams`
--

CREATE TABLE `teams` (
  `teams_id` int(11) NOT NULL,
  `teams_name` varchar(100) DEFAULT NULL,
  `logo` varchar(250) DEFAULT NULL,
  `logo_thumb` varchar(250) DEFAULT NULL,
  `virtual_point` varchar(50) DEFAULT NULL,
  `league` int(11) DEFAULT NULL,
  `created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `teams`
--

INSERT INTO `teams` (`teams_id`, `teams_name`, `logo`, `logo_thumb`, `virtual_point`, `league`, `created`) VALUES
(8, 'Knot\'D Challengers', 'teams_8.jpg', 'teams_8_thumb.jpg', '150000000', 3, '2024-09-03 11:02:34'),
(9, 'CourseFinder Smashers', 'teams_9.png', 'teams_9_thumb.png', '150000000', 3, '2024-09-03 11:05:59'),
(10, 'ATVIO Strikers', 'teams_10.png', 'teams_10_thumb.png', '150000000', 3, '2024-09-03 11:17:12'),
(11, 'Meena Fighters', 'teams_11.jpg', 'teams_11_thumb.jpg', '100000000', 3, '2024-09-03 11:18:18'),
(12, 'Bhauwala SOL Warriors', 'teams_12.png', 'teams_12_thumb.png', '150000000', 3, '2024-09-03 11:19:31'),
(13, 'KD STAR', 'teams_13.webp', 'teams_13_thumb.webp', '10000000', 4, '2024-10-02 06:51:31'),
(14, 'SURANA STRIKERS', 'teams_14.webp', 'teams_14_thumb.webp', '10000000', 4, '2024-10-02 06:52:11'),
(15, 'SHIVAM TIGERS', 'teams_15.webp', 'teams_15_thumb.webp', '10000000', 4, '2024-10-02 06:52:43'),
(16, 'DOSHI ROCKS', 'teams_16.webp', 'teams_16_thumb.webp', '10000000', 4, '2024-10-02 06:53:07');

-- --------------------------------------------------------

--
-- Table structure for table `ui_settings`
--

CREATE TABLE `ui_settings` (
  `ui_settings_id` int(11) NOT NULL,
  `type` longtext,
  `value` longtext
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `ui_settings`
--

INSERT INTO `ui_settings` (`ui_settings_id`, `type`, `value`) VALUES
(5, 'filter_div', 'on'),
(6, 'admin_login_logo', '79'),
(7, 'admin_nav_logo', '18'),
(8, 'home_top_logo', '77'),
(9, 'home_bottom_logo', '77'),
(11, 'fav_ext', 'ico'),
(12, 'side_bar_pos_category', 'right'),
(14, 'footer_color', 'blue-1'),
(15, 'header_color', 'blue-1'),
(19, 'parallax_blog_title', 'LATEST BLOGS'),
(16, 'font', 'Roboto'),
(17, 'parallax_vendor_title', 'OUR VENDOR'),
(18, 'home_page_style', '1'),
(20, 'no_of_featured_products', '12'),
(21, 'no_of_vendor', '10'),
(22, 'no_of_brands', '12'),
(23, 'brand_show', 'ok'),
(24, 'featured_show', 'no'),
(25, 'vandors_show', 'no'),
(26, 'blog_show', 'ok'),
(27, 'parallax_search_title', 'Search Products'),
(28, 'no_of_blog', '0'),
(29, 'featured_product_box_style', '1'),
(30, 'no_of_todays_deal', '6'),
(31, 'special_products_show', 'ok'),
(32, 'category_slides', 'ok'),
(33, 'home_categories', '[{\"category\":\"7\",\"sub_category\":[\"11\",\"12\",\"13\",\"19\"],\"color_back\":\"rgba(235,48,15,1)\",\"color_text\":\"rgba(255,255,255,1)\"},{\"category\":\"2\",\"sub_category\":[\"2\"],\"color_back\":\"rgba(235,48,15,1)\",\"color_text\":\"rgba(255,255,255,1)\"},{\"category\":\"3\",\"sub_category\":[\"5\"],\"color_back\":\"rgba(71,4,103,1)\",\"color_text\":\"rgba(255,255,255,1)\"},{\"category\":\"6\",\"sub_category\":[\"9\"],\"color_back\":\"rgba(71,4,103,1)\",\"color_text\":\"rgba(255,255,255,1)\"},{\"category\":\"4\",\"sub_category\":[\"4\"],\"color_back\":\"rgba(71,4,103,1)\",\"color_text\":\"rgba(255,255,255,1)\"}]'),
(34, 'category_product_box_style', NULL),
(35, 'top_slide_categories', '[\"21\",\"22\",\"23\",\"24\",\"25\",\"26\",\"27\"]'),
(36, 'email_theme_style', 'style_1'),
(37, 'email_theme_style_2', '<div style=\"margin: 0px 10px; background: #45a9b9; padding: 30px;\"><div style=\"margin: 0px auto; background: #eff7ff; padding: 30px;\">[[body]]</div></div>'),
(38, 'email_theme_style_3', '<div style=\"margin: 0px 10px; background: repeating-linear-gradient(-45deg, red 0, red 1em, #fffdeb 0, #fffdeb 2em, #58a 0, #58a 3em, #fffdeb 0, #fffdeb 4em); padding: 15px;\"><div style=\"margin: 0px auto; background: #fffdeb; padding: 30px;\">[[body]]</div></div>'),
(39, 'email_theme_style_4', '<div style=\"margin: 0px 10px; background: #f7f7f7; padding: 30px;\"><div style=\"padding: 30px; background: #76cece; border-radius:5px 5px 0px 0px; box-shadow: 0px -1px 7px #616565; display:block;\"><div style=\"background-image:url([[logo]]); background-repeat:no-repeat; height:80px; width:auto; display:block;\"></div></div><div style=\"margin: 0px auto; background: rgba(255, 255, 255, 0.91); padding: 30px; box-shadow: 0px 3px 7px #616565; border-radius:0px 0px 5x 5px;\">[[body]]</div></div>'),
(40, 'team_player_play', '0');

-- --------------------------------------------------------

--
-- Table structure for table `unsold`
--

CREATE TABLE `unsold` (
  `unsold_id` int(11) NOT NULL,
  `players_id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`admin_id`);

--
-- Indexes for table `business_settings`
--
ALTER TABLE `business_settings`
  ADD PRIMARY KEY (`business_settings_id`);

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`category_id`);

--
-- Indexes for table `ci_sessions`
--
ALTER TABLE `ci_sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `ci_sessions_timestamp` (`timestamp`);

--
-- Indexes for table `currency_settings`
--
ALTER TABLE `currency_settings`
  ADD PRIMARY KEY (`currency_settings_id`);

--
-- Indexes for table `email_template`
--
ALTER TABLE `email_template`
  ADD PRIMARY KEY (`email_template_id`);

--
-- Indexes for table `general_settings`
--
ALTER TABLE `general_settings`
  ADD PRIMARY KEY (`general_settings_id`);

--
-- Indexes for table `language`
--
ALTER TABLE `language`
  ADD PRIMARY KEY (`word_id`);

--
-- Indexes for table `language_list`
--
ALTER TABLE `language_list`
  ADD PRIMARY KEY (`language_list_id`);

--
-- Indexes for table `league`
--
ALTER TABLE `league`
  ADD PRIMARY KEY (`league_id`);

--
-- Indexes for table `logo`
--
ALTER TABLE `logo`
  ADD PRIMARY KEY (`logo_id`);

--
-- Indexes for table `players`
--
ALTER TABLE `players`
  ADD PRIMARY KEY (`players_id`);

--
-- Indexes for table `soldplayers`
--
ALTER TABLE `soldplayers`
  ADD PRIMARY KEY (`soldplayers_id`);

--
-- Indexes for table `teams`
--
ALTER TABLE `teams`
  ADD PRIMARY KEY (`teams_id`);

--
-- Indexes for table `ui_settings`
--
ALTER TABLE `ui_settings`
  ADD PRIMARY KEY (`ui_settings_id`);

--
-- Indexes for table `unsold`
--
ALTER TABLE `unsold`
  ADD PRIMARY KEY (`unsold_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `admin_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `business_settings`
--
ALTER TABLE `business_settings`
  MODIFY `business_settings_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `category_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `currency_settings`
--
ALTER TABLE `currency_settings`
  MODIFY `currency_settings_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT for table `email_template`
--
ALTER TABLE `email_template`
  MODIFY `email_template_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `general_settings`
--
ALTER TABLE `general_settings`
  MODIFY `general_settings_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=80;

--
-- AUTO_INCREMENT for table `language`
--
ALTER TABLE `language`
  MODIFY `word_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1115;

--
-- AUTO_INCREMENT for table `language_list`
--
ALTER TABLE `language_list`
  MODIFY `language_list_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `league`
--
ALTER TABLE `league`
  MODIFY `league_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `logo`
--
ALTER TABLE `logo`
  MODIFY `logo_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `players`
--
ALTER TABLE `players`
  MODIFY `players_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=88;

--
-- AUTO_INCREMENT for table `soldplayers`
--
ALTER TABLE `soldplayers`
  MODIFY `soldplayers_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=97;

--
-- AUTO_INCREMENT for table `teams`
--
ALTER TABLE `teams`
  MODIFY `teams_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `ui_settings`
--
ALTER TABLE `ui_settings`
  MODIFY `ui_settings_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT for table `unsold`
--
ALTER TABLE `unsold`
  MODIFY `unsold_id` int(11) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
