-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Aug 19, 2021 at 04:47 PM
-- Server version: 5.7.31
-- PHP Version: 7.3.21

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `varunaeh_db_new`
--

-- --------------------------------------------------------

--
-- Table structure for table `admins`
--

DROP TABLE IF EXISTS `admins`;
CREATE TABLE IF NOT EXISTS `admins` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `role_id` int(11) DEFAULT NULL,
  `name` varchar(100) DEFAULT NULL,
  `username` varchar(100) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `remember_token` varchar(255) DEFAULT NULL,
  `phone` varchar(20) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `status` tinyint(4) DEFAULT NULL,
  `created_at` datetime DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admins`
--

INSERT INTO `admins` (`id`, `role_id`, `name`, `username`, `email`, `password`, `remember_token`, `phone`, `address`, `status`, `created_at`, `updated_at`) VALUES
(1, 1, 'Admin', 'admin', 'admin@indiaint.com', '$2y$10$S9r/58p9SBHxJOccVhPh3us/SgqDW/8z93FopFTPbRFkg5O4y6MmC', 'wVksJCfTgd2fUws7rMOQfgtqLWrRRrGrY2sQI3iIEZZszQ0pz7SG9Ljn8OHj', NULL, NULL, 1, '2019-01-07 11:44:06', '2021-07-21 14:53:53');

-- --------------------------------------------------------

--
-- Table structure for table `banners`
--

DROP TABLE IF EXISTS `banners`;
CREATE TABLE IF NOT EXISTS `banners` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) DEFAULT NULL,
  `subtitle` varchar(255) DEFAULT NULL,
  `brief` text,
  `page` varchar(50) DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `device_type` varchar(20) DEFAULT NULL,
  `link` varchar(255) DEFAULT NULL,
  `sort_order` int(11) NOT NULL DEFAULT '0',
  `status` tinyint(4) NOT NULL DEFAULT '0',
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=35 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `banners`
--

INSERT INTO `banners` (`id`, `title`, `subtitle`, `brief`, `page`, `image`, `device_type`, `link`, `sort_order`, `status`, `created_at`, `updated_at`) VALUES
(25, 'Home Page', 'About us', 'A dependable partner   <span class=\"bannerNewLine\"></span> for your supply chain', 'home', NULL, 'desktop', '/about', 1, 1, '2020-07-27 10:49:51', '2021-01-08 10:52:40'),
(26, 'Insights', 'Insights', 'Market-leading insights for supply chain excellence', 'blogs', NULL, 'desktop', NULL, 1, 1, '2020-07-31 17:10:08', '2020-09-25 13:43:10'),
(28, 'EMPLOYEE STORIES', NULL, 'Get to know the <br /> Varuna family <br /> up close', 'employee_stories', NULL, 'desktop', NULL, 1, 1, '2020-09-04 13:04:35', '2020-11-12 04:38:36'),
(29, 'Case Studies', NULL, 'Strengthening supply <br /> chain operations <br /> across industries', 'case_studies', NULL, 'desktop', NULL, 1, 1, '2020-09-05 10:20:23', '2020-12-29 16:46:05'),
(30, 'Home Page Mobile', 'About us', 'A dependable partner   <span class=\"bannerNewLine\"></span> to your supply chain', 'home', NULL, 'mobile', NULL, 1, 1, '2020-09-14 13:18:10', '2021-01-08 10:53:48'),
(31, 'INSIGHTS', 'INSIGHTS', 'Embracing contactless logistics & pioneering digital LR in India', 'home', NULL, 'desktop', '/insights', 3, 1, '2020-09-19 11:52:28', '2021-01-08 05:50:31'),
(32, 'CASE STUDIES', 'CASE STUDIES', 'Know how we added 5.28cr   <span class=\"bannerNewLine\"></span> to the bottomline of a rapidly growing FMCG brand', 'case_studies', NULL, 'desktop', '/case-studies', 2, 1, '2020-09-22 06:51:32', '2021-01-09 08:11:45'),
(33, 'INSIGHTS', 'INSIGHTS', 'Embracing contactless logistics & pioneering digital LR in India', 'home', NULL, 'mobile', '/insights', 3, 1, '2020-11-12 09:35:24', '2020-12-29 16:59:47'),
(34, 'CASE STUDIES', 'CASE STUDIES', 'Know how we added 5.28cr   <span class=\"bannerNewLine\"></span> to the bottomline of a rapidly growing FMCG brand', 'home', NULL, 'mobile', '/case-studies', 2, 1, '2020-11-12 09:37:13', '2020-12-29 16:47:33');

-- --------------------------------------------------------

--
-- Table structure for table `banner_images`
--

DROP TABLE IF EXISTS `banner_images`;
CREATE TABLE IF NOT EXISTS `banner_images` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `banner_id` int(11) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `link` varchar(255) DEFAULT NULL,
  `sort_order` int(11) DEFAULT '0',
  `created_at` datetime DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=76 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `banner_images`
--

INSERT INTO `banner_images` (`id`, `banner_id`, `name`, `title`, `link`, `sort_order`, `created_at`, `updated_at`) VALUES
(41, 26, '310720051008-insights-banner.png', NULL, NULL, 0, '2020-07-31 22:40:10', '2020-07-31 22:40:10'),
(56, 28, '121120043836-rsz_varuna_employee_stories_1900_x_689-02.jpg', NULL, NULL, 0, '2020-11-12 10:08:37', '2020-11-12 10:08:37'),
(63, 29, '291220044605-ezgif.com-gif-maker (16).jpg', NULL, NULL, 0, '2020-12-29 09:46:06', '2020-12-29 09:46:06'),
(64, 34, '291220044733-ezgif.com-gif-maker (16).jpg', NULL, NULL, 0, '2020-12-29 09:47:33', '2020-12-29 09:47:33'),
(66, 33, '291220045947-ezgif.com-gif-maker (18).jpg', NULL, NULL, 0, '2020-12-29 09:59:56', '2020-12-29 09:59:56'),
(69, 31, '080121055031-banner-img3.jpg', NULL, NULL, 0, '2021-01-07 22:50:31', '2021-01-07 22:50:31'),
(73, 25, '080121105240-banner-img2.jpg', NULL, NULL, 0, '2021-01-08 03:52:40', '2021-01-08 03:52:40'),
(74, 30, '080121105348-banner-img2.jpg', NULL, NULL, 0, '2021-01-08 03:53:49', '2021-01-08 03:53:49'),
(75, 32, '090121080734-291220044605-ezgif.com-gif-maker (16).jpg', NULL, NULL, 0, '2021-01-09 01:07:35', '2021-01-09 01:07:35');

-- --------------------------------------------------------

--
-- Table structure for table `blogs`
--

DROP TABLE IF EXISTS `blogs`;
CREATE TABLE IF NOT EXISTS `blogs` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `type` varchar(50) DEFAULT NULL,
  `category_id` int(11) DEFAULT NULL,
  `pages_id` varchar(255) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `subtitle` varchar(255) DEFAULT NULL,
  `slug` varchar(255) DEFAULT NULL,
  `brief` text,
  `content` text,
  `pdf` varchar(255) DEFAULT NULL,
  `author_name` varchar(255) DEFAULT NULL,
  `blog_date` datetime DEFAULT NULL,
  `sort_order` int(11) NOT NULL DEFAULT '0',
  `meta_title` varchar(255) DEFAULT NULL,
  `meta_keyword` varchar(255) DEFAULT NULL,
  `meta_description` varchar(255) DEFAULT NULL,
  `featured` tinyint(4) DEFAULT NULL,
  `status` tinyint(4) DEFAULT NULL,
  `created_at` datetime DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `blogs`
--

INSERT INTO `blogs` (`id`, `type`, `category_id`, `pages_id`, `title`, `subtitle`, `slug`, `brief`, `content`, `pdf`, `author_name`, `blog_date`, `sort_order`, `meta_title`, `meta_keyword`, `meta_description`, `featured`, `status`, `created_at`, `updated_at`) VALUES
(5, 'blogs', NULL, '20,19,18,12,10,2', 'Pioneering Digital LR in India:  The first step towards ‘Contactless Logistics’', 'Contactless Logistics', 'pioneering-digital-lr-in-india-the-first-step-toward-contactless-logistics', 'With every challenge comes an opportunity to innovate and sow the seeds of a new order. COVID-19 caused unprecedented disruptions across the country. On one hand, where the pandemic exposed the inadequacies of the Indian logistics sector, it also brought to the fore the sector’s ability to innovate & recuperate without breaking down.', '<p>With every challenge comes an opportunity to innovate and sow the seeds of a new order. Covid-19 caused unprecedented disruptions across the country. On one hand, where the pandemic exposed the inadequacies of the Indian logistics sector, it also brought to the fore the sector&rsquo;s ability to innovate &amp; recuperate without breaking down.&nbsp;</p>\r\n\r\n<p>It was evident that an industry fraught with multiple contact points and a long paper chain per trip put its on-ground workers at a grave risk of contamination. Perceiving the towering need for &lsquo;<strong>Contactless Logistics</strong>&rsquo;, Varuna Group fast tracked the development of its roadmap to bring in greater safety and efficiency into the system.&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<h2>Pivoting towards contactless logistics</h2>\r\n\r\n<p>The conventional transportation system includes a multitude of paper-based business processes - from handling of the lorry receipt (consignment note)&nbsp;to collection of a paper document as proof of delivery - which is time-consuming, leads to data quality problems and eventually impedes operational efficiency. Contactless Logistics aims to largely eliminate all forms of time-consuming human interventions and automate the entire process to the maximum extent.&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>Benefits of contactless logistics</strong></p>\r\n\r\n<p>1. Error-free operation</p>\r\n\r\n<p>2. Ensures safety and sanitation</p>\r\n\r\n<p>3. Greater transparency and visibility</p>\r\n\r\n<p>4. Reduced transit lead time</p>\r\n\r\n<p>5. Improvement in productivity levels&nbsp;</p>\r\n\r\n<p>6. A sustainable practice - reduces carbon footprint</p>\r\n\r\n<p>7. A healthier &amp; safer work environment</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<h2>Digital LR: The first step towards contactless logistics</h2>\r\n\r\n<p><br />\r\nLorry Receipt (LR), an undertaking by the transporter to deliver the goods to the destination, is an indispensable part of the transportation process. Three physical copies (driver, consignee and consignor) of the consignment note are passed on by the customer to the driver. While digital Lorry Receipt (digital LR) as a concept has existed for many years, there was no actionable solution in sight due to several reasons -</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>Fear of novel technology</strong> - Many fear that digital LR will cut down jobs at the ground level.&nbsp;</p>\r\n\r\n<p><br />\r\n<strong>Apprehensions of redundancy</strong> - With well-established manual processes, clients sense that avoiding duplication in the paper trail system is a challenge.&nbsp;</p>\r\n\r\n<p><br />\r\n<strong>Platform development constraints</strong> - It&rsquo;s strenuous to develop a platform that&rsquo;s accurate, time-saving and can be readily integrated into different client platforms while upholding their data privacy.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<h2>Varuna Group: Pioneering digital LR in India</h2>\r\n\r\n<p><br />\r\nUnderstanding these challenges, we collaborated with our clients in a streamlined and systematic manner and pioneered the right solution in a short span for two weeks during the lockdown period. Here&rsquo;s how we did it -</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>A cross-functional team</strong> - We assembled a dedicated &lsquo;Contactless Project Team&rsquo; by selecting key people from Operations, Technology, and Key Account Management (KAM) that worked 24X7 to develop and implement the solution in tandem with the customers. We also deployed a dedicated POC at the customer site for the same.</p>\r\n\r\n<p><br />\r\n<strong>Using government databases</strong> - Earlier attempts at digital LR focused on using a custom API to create lorry receipts. We found a more efficient way by utilising government databases and fetching details from e-way bills to generate digital LR.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>Optimising side-by-side with the customer</strong> - We worked closely with one of our flagship clients to develop and test the pilot. As a gesture of their immense trust in us, they allowed us to conduct the trials despite the surmounting fear &amp; uncertainty. We took feedback at every step and optimized the solution at every turn.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>Scaling the final product </strong>- Post the success of our pilot, we developed a comprehensive 3-day training programme that aided the implementation of digital LR with new customers and at different sites.&nbsp;<br />\r\n<img alt=\"Features of Varuna\'s Digital LR\" src=\"https://www.varuna.ehostinguk.com/storage/ck/310820053751-Varuna-Banners-02-860x500.jpg\" /></p>\r\n\r\n<p>Since implementation, we have successfully created 3000 digital LRs far and this is just the beginning. We are extending our service to new clients and driving the transformation through education, pilots and training. &nbsp;</p>\r\n\r\n<h2>What is the way forward?</h2>\r\n\r\n<p>Implementing digital LR is just the first step towards contactless logistics and our team is already working on the next step - an electronic proof of delivery or e-POD, e-signatures and e-billing.&nbsp;</p>\r\n\r\n<p>By automating the routine tasks that run the risks of human errors and delays, these services can result in better customer service and satisfaction. Their adoption does not only help counter the health risks but also addresses the need for a quicker delivery system. They contribute towards making the logistics service virtually contactless and enable end-to-end visibility.</p>\r\n\r\n<p><em>Want to understand how Digital LRs can positively impact your existing supply chain operations from one of our experts? Drop an email to info@varuna.net or call 0124-2373214.</em></p>\r\n\r\n<p>&nbsp;</p>', NULL, 'Varuna Admin', '0000-00-00 00:00:00', 1, 'The first step toward ‘Contactless Logistics | Varuna Group', NULL, 'Contactless Logistics aims to largely eliminate all forms of time-consuming human interventions and automate the entire process to the maximum extent.', 1, 1, '2020-08-20 07:13:24', '2021-01-28 09:46:34'),
(12, 'blogs', NULL, '20,19,18,15,12,10,2', 'Indian logistics during Covid-19 pandemic - The journey from resilience to rebound', NULL, 'indian-logistics-during-covid-19-pandemic-the-journey-from-resilience-to-rebound', 'It would not be an exaggeration to say that the effects of Covid-19 would drastically change the way we strategize, execute and grow our businesses. The economical, social and political impact of the pandemic will be felt wide and deep. The imminent changes in consumer behaviour will lead to changes in the way the world around us functions. A lot of companies will actively realign their supply chain network and drive lean operations based on the principles of transparency, predictability and agility across the globe.', '<p>It would not be an exaggeration to say that the effects of Covid-19 would drastically change the way we strategize, execute and grow our businesses. The economical, social and political impact of the pandemic will be felt wide and deep. The imminent changes in consumer behaviour will lead to changes in the way the world around us functions. A lot of companies will actively realign their supply chain network and drive lean operations based on the principles of transparency, predictability and agility across the globe.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>In the Indian context, this offers a unique opportunity for players in the logistics sector to up the game and emerge as an enabler of stability and growth, domestically as well as internationally. This is because our sector has the potential to augment all other sectors by reducing logistics costs through lean operations and digital technologies, eventually turning Indian products more price competitive.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>During the nation-wide lockdown due to the pandemic, Indian logistics industry has played a critical role in ensuring timely delivery of essential commodities across the country. The industry is vigilantly bearing the responsibility of keeping in check the safety and security of its frontline staff. At the same time, our sector&rsquo;s operational inadequacies are exposed and visible now more than ever. The sector continues to be highly fragmented with unorganized players accounting for ~90% of the total market share. A large part of their operations are riddled with inefficiencies which makes it doubly difficult for them to counter challenging times like these. Our industry continues to struggle due to a wide variety of challenges:</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>1. Skilled personnel</strong></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>There is an acute shortage of skilled personnel and specialists in our sector. In a crisis situation such as the current one, a highly capable workforce with a deep understanding of logistical operations could make all the difference.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>2. Standardization</strong></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>As the industry remains fragmented, it also lacks standardization in processes and performance standards which makes it difficult to ensure effective sharing of network and resources when required.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>3. Digital infrastructure</strong></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>There is a rising but gradual transition to new digital technologies for a range of operations like e-billing, digital booking, LR, POD, among many more. However, most service providers are not equipped to offer seamless and consistent digitized services to their customers.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>4. Real-time visibility</strong></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>There is a general lack of visibility and transparency in terms of providing real-time updates, status of deliveries, etc. which is essential to ensure that bottlenecks are resolved on priority with the help of dynamic planning.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<h3>Our response so far</h3>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Covid-19 has thrown additional challenges for our industry. In addition to being resilient in the face of crisis, there is an urgency to rethink and reimagine our operating models in order to emerge stronger in the period following it. At Varuna, we have prioritised developing people, technological and process capabilities. This has enabled us to mitigate the risks and challenges posed by the pandemic. Below, we list some of the critical measures we have&nbsp;taken to not only combat Covid-19 but to also emerge as a reliable partner to our clients:<br />\r\n&nbsp;</p>\r\n\r\n<p><strong>1. Safety of our people and goods</strong></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>We have adopted a strong stance on implementation and compliance of health and safety measures across the organization. We have enabled flexible working arrangements to encourage social distancing. Additionally, ensuring proper hygiene standards and sanitation of goods is being prioritised while factoring in the necessary measures of sanitizing sites and warehouses.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>2. Workforce training </strong></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>We are providing adequate training on relevant health &amp; hygiene measures to our workforce and making it a part of mandatory compliance. To ensure timely deliveries and serve our customers better, we have trained our workforce in learning the principles of agility and laid down a plan to ensure quick adoption of technological measures to enable the same.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>3. Digital capabilities</strong></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Varuna has been using technology to bring real time visibility and transparency to our clients. However, the ongoing situation emphasizes the need to further enhance our digital capabilities. We are leveraging technology to reduce human touch-points in daily transactions. We run lean operations, keep a real-time check on the movement of vehicles and ensure preventive steps like zero-touch interactions. By continually activating integrations such as digitizing booking, e-LR, e-POD, and e-billing, we are reducing the risks of Covid-19 transmission posed by human interaction and paperwork, while also bringing greater transparency and lowering our customer&#39;s carbon footprint.&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>4. Organizational restructuring</strong></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>We have restructured our organizational processes and systems to respond faster to the rapidly changing environment around us. We have prioritized development of our technological capabilities, brought in agility in internal reporting structures and taken measures to reduce costs where possible. We believe some of these changes will further strengthen our position to serve our clients as the market rebounds to normal levels in the months to come.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<h3>Looking forward</h3>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>In order to stay ahead, we need to further look at leveraging the power of next gen technologies like Artificial Intelligence (AI), machine learning, blockchain and IoT to solve the challenges of forecasting and routing. We need to transition to a crisis-proof model by planning in advance, business continuity measures for future pandemics and other such large scale disruptions. We would like to call upon all leaders in the logistics industry to collaborate on the challenges faced by our industry. It is now time for Indian logistics to take the next big leap and play an integral role in helping our economy make a swift and strong recovery.</p>\r\n\r\n<p><em>Is your supply chain bearing the brunt of the pandemic? Get in touch with our experts today to understand how you can get it up and running for the long haul. Drop an email to info@varuna.net &nbsp;or call 0124-2373214.</em></p>\r\n\r\n<p>&nbsp;</p>', NULL, NULL, '0000-00-00 00:00:00', 2, 'The journey from resilience to rebound | Varuna Group', NULL, 'It would not be an exaggeration to say that the effects of Covid-19 would drastically change the way we strategize, execute and grow our businesses.', 1, 1, '2020-09-19 06:35:45', '2021-01-22 09:52:26'),
(13, 'blogs', NULL, '12,10,2', 'Flexible warehousing: The future of supply chain', NULL, 'flexible-warehousing-the-future-of-supply-chain', 'India has witnessed some pivotal developments like the implementation of GST, growing support for ‘Make in India’ and increase in the volume of global investments and exposure resulting in major transformations in the warehosuing sector. Leading the pack is a flexible approach to warehousing, enabled by technology.', '<p><meta charset=\"utf-8\" /></p>\r\n\r\n<p>India spends 13-17% of its Gross Domestic Product (GDP) on logistics which is nearly double the logistics cost to GDP ratio in developed nations. Of this, warehousing makes up for nearly 25%. The high cost is a cumulative effect of myriad challenges - from sub-par infrastructure and a lack of synchronization between the storage capacities &amp; the inflow of goods to the lack of skilled labour and a sluggish rate of technology adoption. Also, more than 90% of the warehouses in the country are being operated by unorganised bodies, further trammelling their options to automate the bare minimum warehousing operations.&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>The silver lining is that in recent years, with pivotal developments like the implementation of GST, growing support for &lsquo;Make in India&rsquo; and increase in the volume of global investments and exposure, the Indian warehousing landscape is witnessing major transformations. Leading the pack is a flexible approach to warehousing, enabled by technology.&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<h3>What is flexible warehousing?</h3>\r\n\r\n<p><br />\r\nFlexible Warehousing is akin to an elastic storage setup that adjusts itself according to business fluctuations and seasonal demands. Contrary to a traditional or a contract warehouse, where the entire space, labour, equipment etc. are handed over to a single company for a fixed period, flexible warehousing allows multiple companies to avail the operations &amp; services of the warehouse dynamically as per the demands of their business. This enables shorter contracts with higher flexibility, improved service &amp; efficiency and remarkable cost savings.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<h3>What&rsquo;s driving the growth of flexible warehousing?</h3>\r\n\r\n<p><br />\r\nFlexible warehousing is swiftly emerging as an effective solution to the many challenges the country&rsquo;s warehousing industry is facing including high labour &amp; operational costs, reduced availability of prime land sites, increasing growth of last-mile delivery and rapid expansion of e-commerce as a key mode of purchase. It is primarily being steered by continuous technological improvements and investments in AI, thereby facilitating the growth of leaner, accurate and agile supply chain processes.&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<h3>Who is it for?</h3>\r\n\r\n<p><br />\r\nThe adaptability and ease of using flexible warehouses make them the right fit for small, medium, and large manufacturers alike.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>In the current times, especially when the world is battling the disruptions caused by the COVID-19 pandemic across all sectors including logistics, flexible manufacturing provides a physical warehouse in the cloud for all.<br />\r\n&nbsp;</p>\r\n\r\n<p><img alt=\"Features\" src=\"https://www.varuna.ehostinguk.com/storage/ck/021120123107-blog banner-04.jpg\" style=\"width: 3010px; height: 1610px;\" /></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<h3>Benefits of flexible warehousing: World-class features at a fraction of the cost</h3>\r\n\r\n<ul>\r\n	<li>\r\n	<p><strong>Cost-effectiveness:</strong> With flexible warehousing, companies only pay for the space they use and share resources with others. This means that they can conveniently bring down their warehousing costs and increase their supply chain efficiency as well as profits.<br />\r\n	&nbsp;</p>\r\n	</li>\r\n	<li><strong>Increased Flexibility</strong>: The accommodative nature of flexible warehousing enables companies to keep up with seasonal changes and business fluctuations by offering extra space during volume surge and low costs with less space during dry sales periods.<br />\r\n	&nbsp;</li>\r\n	<li><strong>Efficient Inventory Management:</strong> Flexible warehousing allows companies to adjust their inventory according to customer demands and variations in the business cycle, promoting efficient inventory management.<br />\r\n	&nbsp;</li>\r\n	<li><strong>Faster Time to Market:</strong> The rising consumer demand for the same or next-day delivery of products has affected the supply chains of many companies. A great number is now opting for flexible warehousing facilities that can handle products with care and facilitate speedy shipping.<br />\r\n	&nbsp;</li>\r\n	<li><strong>Scalability:</strong> Flexible warehousing allows companies to scale up proportionally as per demand instead of spending humongous amounts on a fixed basis. This paves the way for the optimization of their resources and growth.</li>\r\n</ul>\r\n\r\n<h3>&nbsp;How to choose a flexible warehousing provider?</h3>\r\n\r\n<p><br />\r\nThe warehousing market is flooded with various flexible warehousing providers, each with its unique offerings. If you are looking for one, do take note of the following features:</p>\r\n\r\n<p><br />\r\n<img alt=\"Flexible Warehousing Provider\" src=\"https://www.varuna.ehostinguk.com/storage/ck/021120122550-blog banner-04.jpg\" style=\"width: 3584px; height: 1918px;\" /></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<h3>The future of flexible warehousing</h3>\r\n\r\n<p><br />\r\nAdvancements in technology including newer, hyper-connected facilities with wireless technology and real-time inventory tracking, increased automation and mobility are set to change the face of the industry for the better. These innovations will not only enhance the quality of warehousing but also make it more lucrative.&nbsp;</p>\r\n\r\n<p>With a growing number of companies and individuals realising the importance and potential of leaner and more agile supply chain processes, that facilitate the &lsquo;ease of doing business,&rsquo; a progressive shift towards the same is being observed. In the years to come, we are likely to witness the emergence and use of smarter technologies and processes shepherding the acceleration of flexible warehousing.&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><em>Want to experience the advantages of flexible warehousing for your own business? Get in touch with our experts today. Drop an email to info@varuna.net or call 0124-2373214.</em></p>\r\n\r\n<p>&nbsp;</p>', NULL, NULL, '0000-00-00 00:00:00', 0, 'Flexible Warehousing The Future of Supply Chain | Varuna Group', NULL, 'Flexible Warehousing is akin to an elastic storage setup that adjusts itself according to business fluctuations and seasonal demands.', 1, 1, '2020-11-02 12:26:55', '2021-02-01 09:19:32'),
(14, 'blogs', NULL, '12,10,2', 'Integrated Supply Chain Planning: Connectivity enables responsiveness', NULL, 'integrated-supply-chain-planning-connectivity-enables-responsiveness', 'With new challenges springing up at every turn, companies are constantly looking to scale up the efficiency of their supply chains yet responsiveness or the ability to respond swiftly & positively to change remains a challenge. Consider the current case of the COVID-19 pandemic. Research indicates that 94% of Fortune 1000 companies are experiencing supply chain disruptions as a result of complex, poorly integrated supply chains with disparate systems.', '<p><span dir=\"LTR\">With new challenges springing up at every turn, companies are constantly looking to scale up the efficiency of their supply chains yet responsiveness or the ability to respond swiftly &amp; positively to change remains a challenge. </span></p>\r\n\r\n<p><span dir=\"LTR\">Consider the current case of the COVID-19 pandemic. Research indicates that 94% of Fortune 1000 companies are experiencing supply chain disruptions as a result of complex, poorly integrated supply chains with disparate systems. These key perpetrators of low responsiveness will effectuate a potential loss of trillions of dollars in global revenue and affect countless people whose livelihoods hang in the balance. </span></p>\r\n\r\n<p><span dir=\"LTR\">The pandemic has accelerated the pace at which chief supply chain officers are realising the dire need to embrace an integrated approach to supply chain management. Without it, any solution for a current or future problem might exist but it shall continue to remain elusive.</span></p>\r\n\r\n<p><br />\r\n<strong><span dir=\"LTR\">Benefits of an integrated supply chain</span></strong><br />\r\n<span dir=\"LTR\">A well-connected, close-knit supply chain managed by an able 3PL provider is highly responsive and offers a slew of advantages:</span></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><img alt=\"Benefits of an integrated supply chain\" src=\"https://varuna.net/storage/ck/090121125116-Banner-1A.jpg\" style=\"width: 1500px; height: 1070px;\" /></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<ol>\r\n	<li><strong><span dir=\"LTR\">Streamlining operations</span></strong></li>\r\n</ol>\r\n\r\n<p style=\"margin-left:36.0000pt;\"><span dir=\"LTR\">An integrated supply chain streamlines all your logistics operations - from warehousing &amp; transportation to product customisation, packaging and omnichannel fulfilment - and presents a single, unified view of the entire system while eliminating any knots or potential sources of hiccups. It gradually strengthens the efficiency and cost-effectiveness of your efforts and can also be leveraged to expand into new markets, make way for multiple sales channels and offer more value-added services (VAS).</span></p>\r\n\r\n<p style=\"margin-left:72.0000pt;\">&nbsp;</p>\r\n\r\n<ol>\r\n	<li value=\"2\"><strong><span dir=\"LTR\">Handling business fluctuations</span></strong></li>\r\n</ol>\r\n\r\n<p style=\"margin-left:36.0000pt;\"><span dir=\"LTR\">An integrated supply chain enables greater transparency, visibility and predictability in the system to significantly improve the level of customer-centricity in your organisation. It makes you agile enough to meet business fluctuations like a sudden shift in consumption patterns, seasonal demands and other varying needs of the market with great ease. With extensible space, flexible staffing, state-of-the-art equipment and multiple transportation options, an integrated system enables you to scale up or down as per need.</span></p>\r\n\r\n<p style=\"margin-left:36.0000pt;\">&nbsp;</p>\r\n\r\n<ol>\r\n	<li value=\"3\"><strong><span dir=\"LTR\">Controlling costs</span></strong></li>\r\n</ol>\r\n\r\n<p style=\"margin-left:36.0000pt;\"><span dir=\"LTR\">With the rise of e-commerce, customers are demanding swifter, accurate and on-demand deliveries which can be commercially viable only when the associated logistics are tightly managed. An integrated supply chain can help you not only control costs but also reduce the capital expenditure on warehousing, transportation, manpower &amp; training, equipment as well as technology. You can also optimise your production levels and shun inventory carrying costs by following a build-to-order approach as opposed to a build-to-stock approach.</span></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong><span dir=\"LTR\">How you can build a robust &amp; resilient integrated supply chain</span></strong><br />\r\n<span dir=\"LTR\">If you wish to embrace an integrated approach to supply chain management, consider the following key points:</span></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><span dir=\"LTR\"><img alt=\"How you can build a robust &amp; resilient integrated supply chain\" src=\"https://varuna.net/storage/ck/090121125230-Banner-2A.jpg\" style=\"width: 1500px; height: 1070px;\" /></span></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<ol>\r\n	<li><strong><span dir=\"LTR\">Eliminate organisational silos: </span></strong><span dir=\"LTR\">An integrated approach to SCM is effective only when an organisation can successfully break down the barriers that may exist between its multiple departments and bring them together for better engagement &amp; collaboration.</span></li>\r\n	<li><strong><span dir=\"LTR\">Set down organisational objectives: </span></strong><span dir=\"LTR\">Once you&rsquo;ve eliminated the departmental silos, the next logical step is to define the objectives of your organisation as one complete entity instead of dividing your attention between the separate business unit and functional unit design &amp; metrics. At this stage, you can also establish organisational metrics that can be tracked &amp; analysed continually in order to understand the opportunities &amp; threats to the entire supply chain and use the learnings to further refine the objectives.</span></li>\r\n	<li><strong><span dir=\"LTR\">Align your processes: </span></strong><span dir=\"LTR\">For an efficient business process design, take the cross-functional route. Start at a high level and create an end-to-end mapping of the entire business process. Keep in mind that you can increase response time and work through high volumes of cancellations by automating repetitive tasks through robotic process automation. Cut down on multiple service providers, who can be replaced by vendors well-versed with integrating supply chains.</span></li>\r\n	<li><strong><span dir=\"LTR\">Reimagine your IT architecture: </span></strong><span dir=\"LTR\">Follow the same cross-functional approach to IT systems redesign. Look at eliminating disparate applications to make way for a common set of applications across the organisation. Utilize analytics tools, which can identify risks and demand fluctuations, to enable effective, accurate and swift response.</span></li>\r\n	<li><strong><span dir=\"LTR\">Enable standardisation:</span></strong><span dir=\"LTR\">&nbsp;Get everyone working out of the same playbook to reduce dependency on manual processes, improve systems &amp; processes and ultimately reduce costs. Standardise process, infrastructure and technology and make provisions for adequate training &amp; skill development to enable cohesive standardisation. </span></li>\r\n</ol>\r\n\r\n<p><strong><span dir=\"LTR\">The outlook</span></strong><br />\r\n<span dir=\"LTR\">Disruptions will continue to affect supply chains, today as well as in the future. A complex &amp; fragmented one might not be able to handle the hit and break down altogether, as has been true for many organisations during the COVID-19 pandemic. An integrated approach that utilises the best industry practices &amp; advanced technologies is the best way forward. It will help you build tightly-knit and highly-responsive supply chains that can endure multiple stresses and continue to stay efficient &amp; deliver value in the long term.</span><br />\r\n&nbsp;</p>\r\n\r\n<p><em><span dir=\"LTR\">Want to streamline your supply chain operations and access the leading-edge advantages an integrated system can offer? Get in touch with our integrated logistics experts today. Drop an email to </span></em><a href=\"mailto:info@varuna.net\"><em><u><span dir=\"LTR\">info@varuna.net</span></u></em></a><em><span dir=\"LTR\">. </span></em></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><em><span dir=\"LTR\">Source:&nbsp;https://timesofindia.indiatimes.com/business/india-business/ceos-push-purpose-driven-leadership/articleshow/78523622.cms</span></em></p>', NULL, NULL, '0000-00-00 00:00:00', 0, 'Integrated Supply Chain Planning: Connectivity enables responsiveness', NULL, 'The current case of the COVID-19 pandemic. Research indicates that 94% of Fortune 1000 companies are experiencing supply chain disruptions as a result of complex, poorly integrated supply chains with disparate systems.', 1, 1, '2021-01-09 13:02:08', '2021-02-06 04:09:05'),
(15, 'blogs', NULL, '12,10,2', '5 Qualities Your Logistics <br> Partner Should Have', NULL, '5-qualities-your-logistics-partner-should-have', 'As organisations flourish and add new business lines, they rely heavily on well-organised supply chains steered and supported by sophisticated logistics. Efficiency is the key to satisfying each customer’s growing need for quick & reliable product deliveries. It is also a defining factor when it comes to being a step ahead of the competition.', '<p><span dir=\"LTR\">As organisations flourish and add new business lines, they rely heavily on well-organised supply chains steered and supported by sophisticated logistics. Efficiency is the key to satisfying each customer&rsquo;s growing need for quick &amp; reliable product deliveries. It is also a defining factor when it comes to being a step ahead of the competition.</span><br />\r\n&nbsp;</p>\r\n\r\n<p><span dir=\"LTR\">To simplify and streamline their supply chains, organisations often turn to experienced professionals with in-depth knowledge of the industry requirements. They help you:</span></p>\r\n\r\n<ul>\r\n	<li value=\"NaN\"><span dir=\"LTR\">Plan &amp; coordinate the movement of your consignments cohesively.</span></li>\r\n	<li value=\"NaN\"><span dir=\"LTR\">Ensure swift &amp; safe deliveries to the right destination, even during seasonal peaks.</span></li>\r\n	<li value=\"NaN\"><span dir=\"LTR\">Enhance the value you provide by ensuring product availability, &nbsp;</span></li>\r\n	<li value=\"NaN\"><span dir=\"LTR\">Cut down on the effective landed costs, therefore, raising your efficiency levels, </span></li>\r\n	<li value=\"NaN\"><span dir=\"LTR\">Scale-up operations while staying resilient as well as agile, and, </span></li>\r\n	<li value=\"NaN\"><span dir=\"LTR\">Eliminate the stress of supply chain management so that you can focus on your core. </span></li>\r\n</ul>\r\n\r\n<p><span dir=\"LTR\">Finding the right logistics partner may seem like a laborious task, but once you realise your business&rsquo;s exact requirements, you can form the perfect alliance fuelled by efficiency and trust. Here are the top 5 qualities you should look for in a logistics partner:</span><br />\r\n&nbsp;</p>\r\n\r\n<p><strong><span dir=\"LTR\">1. Transparency &amp; Responsiveness</span></strong></p>\r\n\r\n<p><span dir=\"LTR\">The best logistics service providers are transparent &amp; forthcoming. They leverage advanced technologies to eliminate shortcomings and amplify the supply chain&rsquo;s efficiency to make it agile yet resilient. </span></p>\r\n\r\n<p><span dir=\"LTR\">Make sure that the partner you choose meets the following criteria:</span></p>\r\n\r\n<ul>\r\n	<li><span dir=\"LTR\">Offers 100% visibility &amp; real-time tracking of shipments by optimally utilising workforce and technology</span></li>\r\n	<li><span dir=\"LTR\">Consistently monitors &amp; publishes its on-time in-full (OTIF) delivery performance so that the consignment delivery is accounted for. </span></li>\r\n	<li><span dir=\"LTR\">Can quickly scale up or down to expertly handle season- and demand-specific fluctuations</span></li>\r\n	<li><span dir=\"LTR\">Controls several assets &amp; workforce that offers a diversity of services.</span></li>\r\n</ul>\r\n\r\n<p><strong><span dir=\"LTR\">2. Customer-centricity</span></strong></p>\r\n\r\n<p><strong><span dir=\"LTR\">The best logistics service providers are highly customer-centric. </span></strong><span dir=\"LTR\">When selecting one, always check how quickly they can respond to &amp; resolve the challenges faced by their clientele.</span></p>\r\n\r\n<p>&nbsp; &nbsp;&nbsp;<strong><em><span dir=\"LTR\">&ldquo;Fluid communication, swift response time, and effective problem-solving are key factors when making a decision.&rdquo;</span></em></strong></p>\r\n\r\n<p><span dir=\"LTR\">Here&rsquo;s a partial checklist to ensure better performance and reliable productivity:</span></p>\r\n\r\n<ul>\r\n	<li><span dir=\"LTR\">Proven track record of high customer satisfaction</span></li>\r\n	<li><span dir=\"LTR\">Team structure and quality of the workforce</span></li>\r\n	<li><span dir=\"LTR\">Proper systems for documentation &amp; process standardisation</span></li>\r\n	<li><span dir=\"LTR\">A high percentage of swift, safe &amp; timely deliveries</span></li>\r\n	<li><span dir=\"LTR\">Seamless &amp; streamlined interaction with communication lines that are open 24x7</span></li>\r\n</ul>\r\n\r\n<p><strong><span dir=\"LTR\">3. Safety-first approach</span></strong></p>\r\n\r\n<p><span dir=\"LTR\">The best logistics services providers maintain a strong safety record despite the ever-evolving, complex landscape of safety regulations. They understand that your consignments &rsquo; safety &amp; protection is paramount and instate the right standards &amp; systems to uphold the same.</span></p>\r\n\r\n<p><span dir=\"LTR\">An efficient logistics partner undertakes key measures like: &nbsp;</span></p>\r\n\r\n<ul>\r\n	<li><span dir=\"LTR\">Comprehensive training of the driving team &amp; the on-ground staff</span></li>\r\n	<li><span dir=\"LTR\">Excellent quality management systems</span></li>\r\n	<li><span dir=\"LTR\">Well-defined SOPs and compliant facilities</span></li>\r\n	<li><span dir=\"LTR\">High-performing fleet &amp; a robust fleet maintenance system</span></li>\r\n	<li><span dir=\"LTR\">Provision for the insurance of goods-in-transit</span></li>\r\n	<li><span dir=\"LTR\">Consistently low DEPS ratio</span></li>\r\n</ul>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><span dir=\"LTR\"><img alt=\"\" src=\"https://varuna.net/storage/ck/060221080344-banner with icons-08.png\" style=\"width: 1339px; height: 694px;\" /></span></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong><span dir=\"LTR\">4. Stability &amp; Credibility</span></strong></p>\r\n\r\n<p><span dir=\"LTR\">The best logistics providers are not only capable but also consistent. Regardless of how simple or complex a supply chain might be, a logistics partner with overall company stability can offer a quality experience with assurance &amp; predictability. While choosing your partner, conduct a comprehensive check on their background. </span></p>\r\n\r\n<p><span dir=\"LTR\">Ensure that they satisfy the following:</span></p>\r\n\r\n<ul>\r\n	<li><span dir=\"LTR\">Rich experience in the field of logistics</span></li>\r\n	<li><span dir=\"LTR\">Maintains excellent relationships with both internal and external stakeholders</span></li>\r\n	<li><span dir=\"LTR\">Showcases remarkable resilience during high-liability situations</span></li>\r\n</ul>\r\n\r\n<p><strong><span dir=\"LTR\">5. Strong Ethics</span></strong></p>\r\n\r\n<p><span dir=\"LTR\">The best logistics providers adhere to strong moral and ethical principles. They nurture a core of strong, non-negotiable values, which translates into a fair, consistent &amp; quality experience for all stakeholders, be it the customer or an employee.</span></p>\r\n\r\n<p><span dir=\"LTR\">A</span><span dir=\"LTR\">n ethical</span><span dir=\"LTR\">&nbsp;logistics partner</span><span dir=\"LTR\">&nbsp;will exhibit the following traits</span>:</p>\r\n\r\n<ul>\r\n	<li><span dir=\"LTR\">Strong resistance to unethical/unfair business practices</span></li>\r\n	<li><span dir=\"LTR\">Set the right expectations &amp; deliver on them</span></li>\r\n	<li><span dir=\"LTR\">Transparen</span><span dir=\"LTR\">t,</span><span dir=\"LTR\">&nbsp;fair &amp; </span><span dir=\"LTR\">consistent</span><span dir=\"LTR\">&nbsp;pricing</span><span dir=\"LTR\">&nbsp;with no hidden surcharges</span></li>\r\n</ul>\r\n\r\n<p><strong><span dir=\"LTR\">The Way Forward</span></strong></p>\r\n\r\n<p><span dir=\"LTR\">Finding the right logistics partner may seem like a challenging task, but with these five points in mind, you can help find the one to strategically scale</span><span dir=\"LTR\">&nbsp;your business </span><span dir=\"LTR\">sustainably.</span></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><span dir=\"LTR\">Varuna Group makes conscious efforts to set new standards</span>&nbsp;<span dir=\"LTR\">in every </span><span dir=\"LTR\">customer relationship. </span><span dir=\"LTR\">With a mission to provide an efficient and transparent service, we intend to keep accelerating our customers&rsquo; growth through high operational efficiency and reliable service. </span></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><em><span dir=\"LTR\">Share and solve your most pressing supply chain challenges with us. Let us help you transform your supply chain into a competitive advantage for your clients. Write to </span></em><a href=\"mailto:info@varuna.net\"><em><u><span dir=\"LTR\">info@varuna.net</span></u></em></a><em><span dir=\"LTR\">&nbsp;or call 0124-2373214.</span></em></p>\r\n\r\n<p>&nbsp;</p>', NULL, NULL, '0000-00-00 00:00:00', 0, 'Qualities Your Logistics Partner Should Have', NULL, '5 Qualities Your Logistics Partner Should Have', 1, 1, '2021-02-06 04:58:31', '2021-02-11 10:18:11');

-- --------------------------------------------------------

--
-- Table structure for table `blog_categories`
--

DROP TABLE IF EXISTS `blog_categories`;
CREATE TABLE IF NOT EXISTS `blog_categories` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `type` varchar(50) DEFAULT NULL,
  `parent_id` int(11) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `slug` varchar(255) DEFAULT NULL,
  `sort_order` int(11) NOT NULL DEFAULT '0',
  `status` tinyint(4) DEFAULT NULL,
  `meta_title` varchar(255) DEFAULT NULL,
  `meta_keyword` varchar(255) DEFAULT NULL,
  `meta_description` varchar(255) DEFAULT NULL,
  `created_at` datetime DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=34 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `blog_categories`
--

INSERT INTO `blog_categories` (`id`, `type`, `parent_id`, `name`, `slug`, `sort_order`, `status`, `meta_title`, `meta_keyword`, `meta_description`, `created_at`, `updated_at`) VALUES
(30, 'blogs', 0, 'Technology', 'technology', 1, 1, 'Technology', 'Technology', 'Technology', '2020-08-18 12:37:31', '2020-08-20 06:49:06'),
(32, 'blogs', 0, 'MUF', 'muf', 2, 1, NULL, NULL, NULL, '2020-09-01 09:44:19', '2020-09-01 09:44:19'),
(33, 'blogs', 0, 'Warehousing', 'warehousing', 0, 1, NULL, NULL, NULL, '2020-11-02 12:13:19', '2020-11-02 12:13:19');

-- --------------------------------------------------------

--
-- Table structure for table `blog_images`
--

DROP TABLE IF EXISTS `blog_images`;
CREATE TABLE IF NOT EXISTS `blog_images` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `blog_id` int(11) DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `created_at` datetime DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=99 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `blog_images`
--

INSERT INTO `blog_images` (`id`, `blog_id`, `image`, `created_at`, `updated_at`) VALUES
(54, 12, '200719092348-aqaurius.jpg', '2019-07-20 09:23:48', '2019-07-20 09:23:48'),
(56, 14, '200719093516-blog-5-1st.jpg', '2019-07-20 09:35:16', '2019-07-20 09:35:16'),
(57, 15, '200719094246-charcoal.jpg', '2019-07-20 09:42:46', '2019-07-20 09:42:46'),
(58, 16, '200719095305-shape-2.jpg', '2019-07-20 09:53:05', '2019-07-20 09:53:05'),
(59, 17, '200719100055-apple-shape.jpg', '2019-07-20 10:00:55', '2019-07-20 10:00:55'),
(60, 18, '200719100328-white_brick_wall-sj.jpg', '2019-07-20 10:03:28', '2019-07-20 10:03:28'),
(74, 23, '100120074136-news_img1.jpg', '2020-01-10 07:41:36', '2020-01-10 07:41:36'),
(75, 19, '100120074341-news_img2.jpg', '2020-01-10 07:43:41', '2020-01-10 07:43:41'),
(81, 5, '200820071324-Contactless-banner-01-scaled.jpg', '2020-08-20 07:13:25', '2020-08-20 07:13:25'),
(87, 12, '190920063545-blog-banner.jpg', '2020-09-19 06:35:45', '2020-09-19 06:35:45'),
(91, 14, '090121010208-Supply-Chain-2.jpg', '2021-01-09 13:02:09', '2021-01-09 13:02:09'),
(92, 13, '010221091932-A-35.jpg', '2021-02-01 09:19:33', '2021-02-01 09:19:33'),
(98, 15, '080221123400-Web-1.jpg', '2021-02-08 12:34:00', '2021-02-08 12:34:00');

-- --------------------------------------------------------

--
-- Table structure for table `brands`
--

DROP TABLE IF EXISTS `brands`;
CREATE TABLE IF NOT EXISTS `brands` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `slug` varchar(255) NOT NULL,
  `description` varchar(255) DEFAULT NULL,
  `icon` varchar(100) DEFAULT NULL,
  `image` varchar(100) DEFAULT NULL,
  `featured` tinyint(4) DEFAULT '0' COMMENT '1=Yes; 0= No',
  `sort_order` int(11) DEFAULT '0',
  `status` tinyint(4) DEFAULT '0' COMMENT '1=Active; 0=Inactive',
  `created_at` datetime DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `brands`
--

INSERT INTO `brands` (`id`, `name`, `slug`, `description`, `icon`, `image`, `featured`, `sort_order`, `status`, `created_at`, `updated_at`) VALUES
(8, 'Slumber Jill', 'slumber-jill', NULL, '190619082557-logo.png', '190619082557-brandimg1.jpg', 1, 1, 1, '2019-06-18 10:45:16', '2019-06-19 09:13:20'),
(9, 'Slumber Jill Fashion Street', 'slumber-jill-fashion-street', NULL, '190619082719-brandlogo2.png', '190619082719-brandimg2.jpg', 1, 2, 1, '2019-06-18 10:46:02', '2019-06-19 09:13:28'),
(10, 'ATIVO', 'ativo', NULL, '190619082941-brandlogo3.png', '190619082941-brandimg3.jpg', 1, 3, 1, '2019-06-18 10:46:20', '2019-06-19 09:13:37'),
(11, 'Querida', 'querida', NULL, '190619083056-brandlogo4.png', '190619083056-brandimg4.jpg', 1, 4, 1, '2019-06-18 10:46:50', '2019-06-19 09:14:00'),
(12, 'Neemrana Collection', 'neemrana-collection', NULL, '190619091041-brandlogo5.png', '190619091040-brandimg5.jpg', 1, 5, 1, '2019-06-18 10:47:17', '2019-06-19 09:14:19'),
(13, 'ODAKA', 'odaka', NULL, '190619091209-brandlogo6.png', '190619091209-brandimg6.jpg', 1, 6, 1, '2019-06-18 10:47:37', '2019-06-19 09:14:13');

-- --------------------------------------------------------

--
-- Table structure for table `careers`
--

DROP TABLE IF EXISTS `careers`;
CREATE TABLE IF NOT EXISTS `careers` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `category_id` int(11) DEFAULT NULL,
  `slug` varchar(255) NOT NULL,
  `title` varchar(255) NOT NULL,
  `brief` text,
  `description` text,
  `location` varchar(255) DEFAULT NULL,
  `qualification` varchar(255) DEFAULT NULL,
  `no_of_vacancy` varchar(100) DEFAULT NULL,
  `aggregate_marks` varchar(100) NOT NULL,
  `max_age` varchar(100) NOT NULL,
  `age_on_date` date DEFAULT NULL,
  `experience` varchar(100) DEFAULT NULL,
  `experience_on_date` date DEFAULT NULL,
  `applicable_category` varchar(100) DEFAULT NULL,
  `opening_date` date NOT NULL,
  `closing_date` date NOT NULL,
  `featured` tinyint(4) NOT NULL DEFAULT '0',
  `status` tinyint(4) NOT NULL DEFAULT '1',
  `sort_order` int(11) DEFAULT NULL,
  `meta_title` varchar(255) DEFAULT NULL,
  `meta_description` varchar(255) DEFAULT NULL,
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `careers`
--

INSERT INTO `careers` (`id`, `category_id`, `slug`, `title`, `brief`, `description`, `location`, `qualification`, `no_of_vacancy`, `aggregate_marks`, `max_age`, `age_on_date`, `experience`, `experience_on_date`, `applicable_category`, `opening_date`, `closing_date`, `featured`, `status`, `sort_order`, `meta_title`, `meta_description`, `created_at`, `updated_at`) VALUES
(2, 3, 'project-manager', 'Project Manager', '<p>this is test</p>', '<p>this is test</p>', 'Noida', 'B-tech', '5', '60', '30', '2020-01-02', '2', '2020-01-10', '1,2,3', '2020-01-02', '2020-01-25', 1, 1, 1, NULL, NULL, '2020-01-16 12:05:22', '2020-01-17 08:21:38'),
(3, 3, 'test-engineer', 'Test Engineer', '<p>Software testing is an investigation conducted to provide stakeholders with information about the quality of the software product or service under test.[1] Software testing can also provide an objective, independent view of the software to allow the business to appreciate and understand the risks of software implementation. Test techniques include the process of executing a program or application with the intent of finding software bugs (errors or other defects), and verifying that the software product is fit for use.</p>\r\n\r\n<p>Software testing involves the execution of a software component or system component to evaluate one or more properties of interest.</p>', '<p>As the number of possible tests for even simple software components is practically infinite, all software testing uses some strategy to select tests that are feasible for the available time and resources. As a result, software testing typically (but not exclusively) attempts to execute a program or application with the intent of finding software bugs (errors or other defects). The job of testing is an iterative process as when one bug is fixed, it can illuminate other, deeper bugs, or can even create new ones.<br />\r\n&nbsp;</p>', 'India', 'B.tech', '5', '87', '25', '2020-01-16', '1-2 Years', '2020-01-16', '4', '2020-01-17', '2020-01-31', 0, 1, 0, NULL, NULL, '2020-01-17 06:13:09', '2020-01-17 10:50:47');

-- --------------------------------------------------------

--
-- Table structure for table `career_categories`
--

DROP TABLE IF EXISTS `career_categories`;
CREATE TABLE IF NOT EXISTS `career_categories` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `type` varchar(50) DEFAULT NULL,
  `parent_id` int(11) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `slug` varchar(255) DEFAULT NULL,
  `sort_order` int(11) NOT NULL DEFAULT '0',
  `status` tinyint(4) DEFAULT NULL,
  `meta_title` varchar(255) DEFAULT NULL,
  `meta_keyword` varchar(255) DEFAULT NULL,
  `meta_description` varchar(255) DEFAULT NULL,
  `created_at` datetime DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `career_categories`
--

INSERT INTO `career_categories` (`id`, `type`, `parent_id`, `name`, `slug`, `sort_order`, `status`, `meta_title`, `meta_keyword`, `meta_description`, `created_at`, `updated_at`) VALUES
(1, NULL, 0, 'Hr', 'hr', 1, 1, NULL, NULL, 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has su', '2020-01-16 10:09:38', '2020-01-17 08:20:55'),
(2, NULL, 0, 'Manager', 'manager', 2, 1, NULL, NULL, 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has su', '2020-01-16 10:09:47', '2020-01-17 08:20:51'),
(3, NULL, 0, 'Co-Ordinator', 'co-ordinator', 3, 1, NULL, NULL, 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has su', '2020-01-16 10:10:19', '2020-01-17 08:20:48'),
(4, NULL, 0, 'Testing', 'testing', 0, 1, NULL, NULL, 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has su', '2020-01-17 06:09:36', '2020-01-17 08:20:38');

-- --------------------------------------------------------

--
-- Table structure for table `casestudy_categories`
--

DROP TABLE IF EXISTS `casestudy_categories`;
CREATE TABLE IF NOT EXISTS `casestudy_categories` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `type` varchar(50) DEFAULT NULL,
  `parent_id` int(11) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `slug` varchar(255) DEFAULT NULL,
  `sort_order` int(11) NOT NULL DEFAULT '0',
  `status` tinyint(4) DEFAULT NULL,
  `meta_title` varchar(255) DEFAULT NULL,
  `meta_keyword` varchar(255) DEFAULT NULL,
  `meta_description` varchar(255) DEFAULT NULL,
  `created_at` datetime DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `casestudy_categories`
--

INSERT INTO `casestudy_categories` (`id`, `type`, `parent_id`, `name`, `slug`, `sort_order`, `status`, `meta_title`, `meta_keyword`, `meta_description`, `created_at`, `updated_at`) VALUES
(1, NULL, 0, 'Ramji sharma', 'ramji-sharma', 0, 1, NULL, NULL, NULL, '2020-07-23 08:53:09', '2020-07-23 08:53:09'),
(2, NULL, 1, 'test', 'test', 0, 1, NULL, NULL, NULL, '2020-07-23 08:55:56', '2020-07-23 08:55:56');

-- --------------------------------------------------------

--
-- Table structure for table `case_studies`
--

DROP TABLE IF EXISTS `case_studies`;
CREATE TABLE IF NOT EXISTS `case_studies` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `category_id` int(11) DEFAULT NULL,
  `pages_id` varchar(255) DEFAULT NULL,
  `title` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `brief` text,
  `description` text,
  `sub_title` text,
  `image` varchar(255) DEFAULT NULL,
  `pdf` varchar(255) DEFAULT NULL,
  `sort_order` int(11) DEFAULT NULL,
  `author_name` varchar(255) DEFAULT NULL,
  `featured` tinyint(4) NOT NULL DEFAULT '0',
  `status` tinyint(4) NOT NULL DEFAULT '1',
  `meta_title` varchar(255) DEFAULT NULL,
  `meta_keyword` varchar(255) DEFAULT NULL,
  `meta_description` varchar(255) DEFAULT NULL,
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `case_studies`
--

INSERT INTO `case_studies` (`id`, `category_id`, `pages_id`, `title`, `slug`, `brief`, `description`, `sub_title`, `image`, `pdf`, `sort_order`, `author_name`, `featured`, `status`, `meta_title`, `meta_keyword`, `meta_description`, `created_at`, `updated_at`) VALUES
(3, 1, '10', 'Reducing the effective logistics costs of products by 8% for an FMCG giant', 'reducing-the-effective-logistics-costs-of-products-by-8-for-an-fmcg-giant', 'Explore how we enabled an industry leader in the FMCG sector to boost its profits by optimising its warehousing & secondary distribution.', '<h2 class=\"caseStudySectCat\"><a href=\"#\">CHALLENGES</a></h2>\r\n\r\n<div class=\"singleContentSect caseStudyCont caseStudymain\">\r\n<p><span>A radical shift was desired in the way the company managed the movements of goods from its plants to warehouses and regional distribution centres. After a thorough assessment of its operations and value chain study, we identified the following key challenges: </span></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>1. Unpredictable vehicle availability</strong></p>\r\n\r\n<p><br />\r\nThe company was working with local transporters constantly competing with one another. This, coupled with intensive fluctuating business seasons, made vehicle shortage a regular phenomenon. It led to significant delays in the delivery of products to distribution centres and eventually the market. It also made budgeting, forecasting &amp; planning incredibly difficult.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>2. Poor load planning</strong></p>\r\n\r\n<p><br />\r\nThe company required an integrated perspective on its secondary distribution operations. Its existing system of loading goods into trucks was inefficient with respect to both load optimisation (underutilised tonnage and/or volume) and loading time (24 hours).</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>3. Inefficiencies at the warehouse</strong></p>\r\n\r\n<p><br />\r\nInefficient management of operations at the warehouse resulted in high operating costs, that also included ancillary costs in the form of high loading time and demurrage.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>4. Lack of in-transit visibility</strong></p>\r\n\r\n<p><br />\r\nWorking with local transporters meant no in-transit shipment visibility and total lack of accurate transit time estimations. This dealt a fatal blow to the inventory planning at the distribution level and led to high detention cost.</p>\r\n\r\n<p>&nbsp;</p>\r\n</div>\r\n\r\n<h2 class=\"caseStudySectCat\"><a href=\"#\">SOLUTION</a></h2>\r\n\r\n<div class=\"singleContentSect caseStudyCont caseStudymain\">\r\n<p><span>To tackle rising costs and enable better inventory management with shorter transit times and more efficient operations, Varuna Group devised an integrated approach. Realising that the root cause of the challenges that the company was facing was the lack of an efficient 3PL network, we helped design and create the same around its manufacturing plants and regional distribution centres. </span></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>1. Ensuring vehicle availability through dedicated allocations</strong></p>\r\n\r\n<p><br />\r\nSince market vehicles were at the mercy of seasonal demands, we allocated a fixed number of trucks from our fleet to the company to cope with the situation and warrant timely placements. To ensure continuous return movement for constant vehicle availability and also contain the cost of dedicating a part of our fleet, we assigned equal and opposite return loads to the vehicles.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>2. Identifying the right vehicle fit &amp; utilizing technology to ensure load optimisation</strong></p>\r\n\r\n<p><br />\r\nAfter a thorough analysis of the company&rsquo;s products, we selected the right vehicle type. We moved away from manual load planning and introduced an advanced software to generate an optimum load plan basis the SKUs under consideration and the vehicle to be used. This enabled us to upgrade the space utilisation from 65% to 95% and facilitate cost-effective transportation.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>3. Utilising buffer warehouses for better inventory management</strong></p>\r\n\r\n<p><br />\r\nThe company had established a kitting warehouse next to its manufacturing units. After a thorough examination, our team introduced aggregation at this warehouse, using it as a buffer warehouse. We also kicked off strategic, streamlined measures such as 24x7 operations leading to optimized transit times&nbsp;and reduced detention through better inventory management.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>4. Ensuring efficient operations</strong></p>\r\n\r\n<p><br />\r\nStrict adherence to global quality standards, developing comprehensive SOPs and periodic training of the workforce ensured seamless management of operations, significantly bringing down the costs related to demurrage, damages and other ancillary cost leakages.</p>\r\n\r\n<p>&nbsp;</p>\r\n</div>\r\n\r\n<h2 class=\"caseStudySectCat\"><a href=\"#\">OUR PERFORMANCE</a></h2>\r\n\r\n<div class=\"singleContentSect caseStudyCont caseStudymain\">\r\n<p>1. 50% Reduction in transit times</p>\r\n\r\n<p>2. 100% En route vehicle visibility</p>\r\n\r\n<p>3. 0.04% Dispatch error</p>\r\n\r\n<p>4. 98% Placement efficiency</p>\r\n\r\n<p>5. Increase in vehicle space utilization from 65% to 95%</p>\r\n</div>\r\n\r\n<h2 class=\"caseStudySectCat\"><a href=\"#\">RESULTS</a></h2>\r\n\r\n<div class=\"singleContentSect caseStudyCont caseStudymain\">\r\n<p><span>As a result of our systematic, transparent and predictable operations, the company not only experienced massive improvements in its distribution chain but was also able to boost its profits. It was able to:</span></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>1. Reduce cost per tonne</p>\r\n\r\n<p>2. Reduce time to market</p>\r\n\r\n<p>3. Reduce inventory size</p>\r\n\r\n<p>4. Register 8% reduction in the effective logistical cost&nbsp;of products</p>\r\n\r\n<p>&nbsp;</p>\r\n</div>', 'Our customer is an industry leader in the FMCG sector with a formidable multi-national presence. Within India, owing to the vast geographical spread of its supply chain, the company was facing myriad challenges in its warehousing and secondary distribution. This led to systemic losses and opportunity costs, eventually affecting the company’s growth and bottom-line.', '190920120722-CaseStudykk.png', NULL, 2, 'test', 1, 1, 'Reducing the Effective Logistics Costs of Products by 8% for an FMCG Giant | Varuna Group', 'Reducing the working capital requirement by 49% to drive growth', 'Our customer is an industry leader in the FMCG sector with a formidable multi-national presence. Within India, owing to the vast geographical spread of its supply chain, the company was facing myriad challenges in its warehousing and secondary distributio', '2020-04-06 14:20:57', '2021-07-26 05:40:47'),
(4, NULL, '10', 'Bringing down In-transit Damages from 9% to 0.5%, Resulting in Significant Cost Savings.', 'bringing-down-in-transit-damages-from-9-to-0-5-resulting-in-significant-cost-savings', 'Explore how we helped a leading manufacturer of wines & spirits save more by\r\nreducing in-transit damages and improving transit times.', '<h2 class=\"caseStudySectCat\"><a href=\"#\">CHALLENGES</a></h2>\r\n\r\n<div class=\"singleContentSect caseStudyCont caseStudymain\">\r\n<p><span>The company, working with local transporters for the movement of empty glass bottles to its bottling plants, faced multiple challenges: </span></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>1. Wrong vehicle type &amp; inefficient load optimisation</strong></p>\r\n\r\n<p><br />\r\nThe small-time transporters were using open body trucks to transport poorly stacked empty bottles with practically no robust shielding against in-transit damages. Although the government had officially increased the maximum load-carrying capacity of heavy vehicles, including trucks, by 20-25% in 2018, the transporters were still not utilising it, resulting in a higher cost per bottle for the company.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>2. Negligible In-transit visibility</strong></p>\r\n\r\n<p><br />\r\nWorking with unorganized players resulted in no visibility or predictability of logistics operations. Lack of transparency forced the client to maintain surplus inventory at&nbsp;warehouses to ensure product availability resulting in higher working capital requirements.</p>\r\n\r\n<p><br />\r\n<strong>3. Lack of right skills&nbsp;&amp; no technological integrations</strong></p>\r\n\r\n<p><br />\r\nUntrained team members and zero technological integrations further escalated unpredictability resulting in increased incidences of error and inaccurate planning. The above challenges eventually cost the company a significant amount of working capital.</p>\r\n\r\n<p>&nbsp;</p>\r\n</div>\r\n\r\n<h2 class=\"caseStudySectCat\"><a href=\"#\">SOLUTION</a></h2>\r\n\r\n<div class=\"singleContentSect caseStudyCont caseStudymain\">\r\n<p><span>To tackle rising costs and enable better transportation of empty glass bottles with shorter transit times and more efficient operations, we began devising a comprehensive approach and took the following steps: </span></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>1. Right vehicle fit &amp; better loadability</strong></p>\r\n\r\n<p><br />\r\nWe designated 32 feet multi-axle trucks with closed containerised bodies as the vehicles to be used for transporting the products. With this, we were not only ensuring minimal in-transit damages but also maximising the loadability, in tune with the government&rsquo;s updated policies.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>&nbsp;2. Industry-leading transit times with real-time tracking</strong></p>\r\n\r\n<p><br />\r\nOur GPS-enabled fleet monitored via a centralised control tower empowered the client to track &amp; monitor vehicles in real-time. With our operationally excellent DNA, we were also successful at offering better-than-market transit times.</p>\r\n\r\n<p><br />\r\n&nbsp;<br />\r\n<strong>3. Skilled team &amp; greater efficiency</strong></p>\r\n\r\n<p><br />\r\nWe deployed our comprehensively trained workforce and debriefed them regarding the project. Right from the drivers to the loading clerks, everyone had 100% clarity on what they had to do to enable maximum efficiency for our customer.</p>\r\n\r\n<p>&nbsp;</p>\r\n</div>\r\n\r\n<p>Through collaboration, continuous monitoring and optimization of operations to solve challenges at each stage, we were able to drive tangible results for the company.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><img alt=\"table-1.png\" class=\"img-fluid\" src=\"/assets/themes/theme-1/images/table-1.png\" /></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<h2 class=\"caseStudySectCat\"><a href=\"#\">45% &nbsp;reduction in transit times&nbsp;</a></h2>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><img alt=\"table-1.png\" class=\"img-fluid\" src=\"/assets/themes/theme-1/images/table-2.png\" /></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<h2 class=\"caseStudySectCat\"><a href=\"#\">RESULTS</a></h2>\r\n\r\n<div class=\"singleContentSect caseStudyCont caseStudymain\">\r\n<p><span>By introducing efficiencies into the primary logistics setup of the company and driving seamless coordination, complete visibility &amp; greater savings, we were able to turn a 2-month trial project into a permanent association for more than 50% of its transport operations. &nbsp;</span></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>1. <strong> Reducing the cost per bottle: </strong> With the help of the right vehicles and a trained team that followed the best stacking practices, we were able to improve the loadability and therefore bring down the cost per bottle borne by the company.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>2. <strong>Further efficiency optimization with Varuna Group: </strong> In an effort to minimise potential detention costs arising due to the warehouses being located at the final destinations, we are working to establish a buffer warehouse close to the bottling plant of the company.</p>\r\n\r\n<p>&nbsp;</p>\r\n</div>', 'Our customer is one of the leading manufacturers of wines & spirits across the globe, with a\r\nmonumental presence in 160+ markets. It generates annual revenue of Rs. 16,000 crores and\r\nowns more than 15 of the top 100 spirit brands. In India, the company was bearing the brunt of\r\ninefficient primary transportation operations in the form of damages and losses.', '190920122304-Case Study_PR.png', NULL, 1, NULL, 0, 0, NULL, NULL, NULL, '2020-09-19 12:21:29', '2021-07-26 05:40:41'),
(5, NULL, '15,12,10', 'Adding INR 5.28 Cr to the bottom line of a rapidly growing FMCG brand', 'adding-inr-5-28-cr-to-the-bottom-line-of-a-rapidly-growing-fmcg-brand', 'Explore how we helped one of the leading manufacturers of pet food in India improve its bottom line by building an efficient primary transportation system.', '<h2>CHALLENGES</h2>\r\n\r\n<p>The company was collaborating with a number of local, unorganised service providers for its primary transportation needs, giving rise to multiple challenges:</p>\r\n\r\n<ol>\r\n	<li><strong>Absence of a Transportation Hub Nearby Causing Placement Delays</strong><br />\r\n	The company&rsquo;s manufacturing plant is situated in a remote location in Raipur with no transportation hub in close proximity. To resolve this, it hired multiple vendors but even after 72 hours of raising an indent, the company had no guarantee of vehicles being placed. Owing to this, it also had to keep more stock than necessary to ensure uninterrupted supply to distributors.<br />\r\n	&nbsp;</li>\r\n	<li><strong>Inefficient Load Optimization Led to In-transit Damages&nbsp;</strong><br />\r\n	While its products should ideally have been transported via a 32 feet multi-axle containerised truck, the company was compelled to work with whatever vehicle the transport services providers were offering. As the company&rsquo;s packages were heavy but non-bulky, the remaining space was often utilised by squeezing &nbsp;a second type of goods for maximum throughput. The local transporters also indulged in fraudulent practices of loading goods from different clients within the same truck which resulted in significant damages to the packages during transit.<br />\r\n	&nbsp;</li>\r\n	<li><strong>Higher Transit Times + Operational Inefficiencies = High Working Capital</strong><br />\r\n	As the company was working with unorganized transport services providers, its transit times remained significantly high, adding to the overall inventory carrying costs. Moreover, these associations combined with minimal technological intervention and unskilled team members riddled the company&rsquo;s logistics operations with sub-optimum practices and intensive manual work. This led to a steep rise in the error margin, eventually costing the company a significant amount of working capital.</li>\r\n</ol>\r\n\r\n<p>These challenges were affecting two key growth areas of the company -</p>\r\n\r\n<ul>\r\n	<li>A huge chunk of the working capital which could be diverted towards core functions was being spent on managing logistics operations&nbsp;</li>\r\n	<li>Unable to expand online due to the strict logistics compliance requirements of online aggregators which the current service providers couldn&rsquo;t meet</li>\r\n</ul>\r\n\r\n<h2><br />\r\nSOLUTION</h2>\r\n\r\n<p>In order to tackle rising costs and enable better transportation of shipments with shorter transit times and more efficient operations, we began devising a comprehensive approach and took the following steps:</p>\r\n\r\n<ol>\r\n	<li>On-time vehicle availability<br />\r\n	We moved our vehicles closer to the company&rsquo;s manufacturing plant and started providing them 3 trucks per day even if it meant that the trucks had to travel empty for more than 500 km to reach their destination to ensure predictable placements.&nbsp;<br />\r\n	&nbsp;</li>\r\n	<li>Identifying the right vehicle fit&nbsp;<br />\r\n	As per our solution, we identified 32 feet multi-axle containerised trucks as the only vehicle to be used for the transportation of the client&rsquo;s packages in order to bring down in-transit damages to a negligible amount as well as maximise loadability<br />\r\n	&nbsp;</li>\r\n	<li>Industry-leading transit times with real-time tracking<br />\r\n	With an operationally excellent DNA, a GPS enabled fleet and a centralised control tower offering complete visibility and transparency , we offered unbeatable transit times along with real-time tracking &amp; monitoring of vehicles. &nbsp;</li>\r\n	<li>&nbsp;</li>\r\n</ol>\r\n\r\n<p>Through collaboration, continuous monitoring and optimization of operations to solve challenges at each stage, we were able to drive tangible results for the company.</p>\r\n\r\n<p><br />\r\nReduction in warehousing space resulting in <strong>&nbsp;INR 44,88,000 annual savings</strong><br />\r\n50% reduction in inventory days resulting in &nbsp;<strong>INR 94,58,182 annual savings</strong><br />\r\nReduction in DEPS resulting in<strong> &nbsp;INR 3,65,94,720 annual savings</strong></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<h3><em>&ldquo;With Varuna Logistics, our primary transportation is sorted. They are delivering our products safely &amp; swiftly while reducing the total cost of our logistics operations.&rdquo;</em></h3>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<h2>Operating amidst the COVID-19 Lockdown</h2>\r\n\r\n<p>When the pandemic was disrupting every industry imaginable, we successfully brought our client&rsquo;s operations back on track with our transparent, predictable and consistent service.&nbsp;</p>\r\n\r\n<p>Having a vertically owned supply chain, our client faced an unprecedented demand as the competitor&rsquo;s imports were curbed due to the government imposed lockdown. Though<br />\r\nvehicle movement was restricted, manpower was drastically reduced and ensuring compliances related to hygiene and safety became critical roadblocks to getting the product in the market, we were committed to keep our customer&rsquo;s supply chain running and so we did.</p>\r\n\r\n<ul>\r\n	<li>97% Placement Performance: The company raised indents for 88 vehicles during the lockdown and we were able to successfully place 86 of them.&nbsp;</li>\r\n	<li>Reliable Transit Time: Post 1st of April, we were able to generate the same TAT performance that we had delivered before the lockdown.</li>\r\n	<li>Contactless Logistics: To ensure minimum human touch, we pioneered digital LR during the lockdown period to ensure greater workforce safety, error reduction and cost optimisation.&nbsp;</li>\r\n	<li>&nbsp;</li>\r\n</ul>\r\n\r\n<h3><em>&ldquo;After some initial hiccups, not only was Varuna Logistics able to get our products to the market, they did so in half the expected time despite the lockdown.&rdquo;</em></h3>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<h2>RESULTS</h2>\r\n\r\n<p><strong>5, 28,95,006 annual savings due to efficient, predictable and reliable logistics service.</strong></p>\r\n\r\n<p>In one year of our engagement with the company, we have been able to build more efficiencies into its primary transportation setup, enabling seamless coordination, complete visibility and greater savings.</p>\r\n\r\n<ul>\r\n	<li><strong>Saving Warehousing Cost</strong>: Initially, the company had decided to expand its Delhi warehouse from 25,000 square feet to 35,000 square feet. After experiencing our performance, it decided to reduce the warehousing space to just 18,000 square feet as all the redundancies within the system were driven out. It has also initiated efforts to bring down its Guwahati warehouse space by 30-35%.&nbsp;</li>\r\n	<li><strong>Saving Inventory Carrying Cost:</strong> With an efficient logistics system, the need to carry and store excessive inventory has been reduced by up to 50% from 25 days, saving the company a significant portion of its working capital.</li>\r\n	<li><strong>Optimizing Manpower Cost:</strong> As the status of operations became completely transparent &amp; visible, the daily hassles reduced. The company is now working with a single vendor and raising indents on our customer portal owing to which regular alignments have become systematic &amp; streamlined and manpower costs have been optimised.&nbsp;</li>\r\n	<li><strong>Online Growth:</strong> Complete alignment with aggregator compliances along with a reliable delivery setup has enabled the company to expand its online presence and boost online sales. &nbsp;</li>\r\n</ul>', 'Our customer is one of the leading manufacturers of pet foods in India and a part of one of the country’s top conglomerates. With a growth rate in double digits and a pan-India presence, the company was poised to soar albeit one critical challenge - inefficient logistics operations.', '121120073427-rsz_blog-img5.jpg', NULL, 0, NULL, 0, 0, NULL, NULL, NULL, '2020-11-11 05:10:29', '2021-07-26 05:40:38'),
(7, NULL, '', 'test', 'test', 'test', '<p>test&nbsp;test&nbsp;testtesttesttesttesttesttesttesttesttesttesttesttesttesttesttesttesttesttesttesttesttesttesttesttesttest</p>', 'test', '260721055025-WIP-6th-anniversary-wallpaper-dark.jpg', NULL, 1, NULL, 1, 1, 'test', NULL, 'test', '2021-07-26 05:50:25', '2021-07-26 05:50:27');

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

DROP TABLE IF EXISTS `categories`;
CREATE TABLE IF NOT EXISTS `categories` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `parent_id` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `name` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(255) DEFAULT NULL,
  `sort_order` int(11) DEFAULT NULL,
  `having_child` tinyint(4) DEFAULT '0',
  `status` tinyint(4) DEFAULT NULL,
  `featured` tinyint(4) DEFAULT NULL,
  `meta_title` varchar(255) DEFAULT NULL,
  `meta_keyword` varchar(255) DEFAULT NULL,
  `meta_description` varchar(255) DEFAULT NULL,
  `created_at` datetime DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `idx_categories_name` (`name`),
  KEY `idx_categories_slug` (`slug`),
  KEY `idx_categories_parent_id` (`parent_id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `parent_id`, `name`, `slug`, `description`, `sort_order`, `having_child`, `status`, `featured`, `meta_title`, `meta_keyword`, `meta_description`, `created_at`, `updated_at`) VALUES
(1, 0, 'Category 1', 'category-1', 'Category 1', 1, 0, 1, 0, NULL, NULL, NULL, '2019-08-05 12:32:47', '2019-08-05 12:32:47'),
(2, 0, 'Men', 'men', 'Men', 1, 1, 1, 0, 'Men', 'Men', 'Men', '2019-08-05 13:01:43', '2019-08-05 13:02:06'),
(3, 2, 'Half Sleeves', 'half-sleeves', 'Half Sleeves', 1, 1, 1, 0, 'Half Sleeves', 'Half Sleeves', 'Half Sleeves', '2019-08-05 13:02:06', '2019-08-05 13:02:23'),
(4, 3, 'Shirts', 'shirts', 'Shirts', 1, 0, 1, 0, 'Shirts', 'Shirts', 'Shirts', '2019-08-05 13:02:23', '2019-08-05 13:02:23'),
(5, 3, 'T-Shirts', 't-shirts', 'T-Shirts', 2, 0, 1, 0, 'T-Shirts', 'T-Shirts', 'T-Shirts', '2019-08-05 13:02:42', '2019-08-05 13:02:42');

-- --------------------------------------------------------

--
-- Table structure for table `categories_blog`
--

DROP TABLE IF EXISTS `categories_blog`;
CREATE TABLE IF NOT EXISTS `categories_blog` (
  `blog_id` int(11) NOT NULL,
  `blog_category_id` int(11) NOT NULL,
  `is_main` int(11) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `categories_blog`
--

INSERT INTO `categories_blog` (`blog_id`, `blog_category_id`, `is_main`) VALUES
(23, 32, 1),
(1, 27, 1),
(2, 27, 1),
(3, 27, 1),
(4, 30, 1),
(5, 30, 1),
(6, 31, 1),
(7, 31, 1),
(8, 31, 1),
(9, 31, 1),
(10, 30, 1),
(11, 30, 1),
(12, 30, 1),
(13, 33, 1),
(14, 33, 1),
(15, 33, 1);

-- --------------------------------------------------------

--
-- Table structure for table `category_attributes`
--

DROP TABLE IF EXISTS `category_attributes`;
CREATE TABLE IF NOT EXISTS `category_attributes` (
  `category_id` int(11) DEFAULT '0',
  `label` varchar(100) DEFAULT NULL,
  `sort_order` int(11) DEFAULT '0',
  `created_at` datetime DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `category_attributes`
--

INSERT INTO `category_attributes` (`category_id`, `label`, `sort_order`, `created_at`, `updated_at`) VALUES
(3, NULL, 0, '2019-06-10 10:20:41', '2019-06-10 10:20:41'),
(4, NULL, 0, '2019-06-10 10:21:22', '2019-06-10 10:21:22'),
(7, NULL, 0, '2019-06-10 10:38:37', '2019-06-10 10:38:37'),
(2, 'S-Attr1', 1, '2019-06-18 13:03:12', '2019-06-18 13:03:12'),
(2, 'S-Attr2', 2, '2019-06-18 13:03:12', '2019-06-18 13:03:12'),
(2, 'S-Attr3', 3, '2019-06-18 13:03:12', '2019-06-18 13:03:12'),
(9, 'S-s-Attr1', 0, '2019-06-18 13:04:32', '2019-06-18 13:04:32'),
(8, 'S-s-Attr1', 0, '2019-06-18 13:30:28', '2019-06-18 13:30:28'),
(8, 'S-s-Attr1', 0, '2019-06-18 13:30:28', '2019-06-18 13:30:28'),
(8, 'S-s-Attr1', 0, '2019-06-18 13:30:28', '2019-06-18 13:30:28'),
(11, 'test', 0, '2019-08-01 11:56:00', '2019-08-01 11:56:00'),
(1, 'Fabric', 1, '2019-08-02 11:06:06', '2019-08-02 11:06:06'),
(1, 'Pattern', 3, '2019-08-02 11:06:06', '2019-08-02 11:06:06'),
(1, 'Sleeve Length', 4, '2019-08-02 11:06:06', '2019-08-02 11:06:06'),
(1, 'Neck', 2, '2019-08-02 11:06:06', '2019-08-02 11:06:06'),
(1, 'Wash Care', 5, '2019-08-02 11:06:06', '2019-08-02 11:06:06');

-- --------------------------------------------------------

--
-- Table structure for table `category_images`
--

DROP TABLE IF EXISTS `category_images`;
CREATE TABLE IF NOT EXISTS `category_images` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `category_id` int(11) DEFAULT '0',
  `image` varchar(100) DEFAULT NULL,
  `is_default` tinyint(4) DEFAULT '0' COMMENT '1=Yes; 0=No',
  `created_at` datetime DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `category_images`
--

INSERT INTO `category_images` (`id`, `category_id`, `image`, `is_default`, `created_at`, `updated_at`) VALUES
(5, 1, '070619114925-blog1.jpg', 0, '2019-06-07 17:19:25', '2019-06-07 12:56:04'),
(6, 1, '070619114925-blog2.jpg', 1, '2019-06-07 17:19:25', '2019-06-07 12:56:04'),
(7, 1, '070619120258-blog3.jpg', 0, '2019-06-07 17:32:58', '2019-06-07 12:56:04'),
(8, 2, '100619044529-des-adventure.jpg', 1, '2019-06-10 10:15:30', '2019-06-10 04:57:02'),
(9, 2, '100619044530-des-flower.jpg', 0, '2019-06-10 10:15:30', '2019-06-10 10:15:30'),
(10, 2, '100619044530-des-hedghog.jpg', 0, '2019-06-10 10:15:30', '2019-06-10 10:15:30'),
(14, 8, '100619010641-img-5794.JPG', 1, '2019-06-10 18:36:42', '2019-06-10 13:06:42'),
(15, 67, '010819102905-Screenshot from 2019-03-18 15-57-37.png', 1, '2019-08-01 15:59:05', '2019-08-01 10:29:05'),
(16, 1, '050819123247-banner_image_2.jpg', 0, '2019-08-05 18:02:47', '2019-08-05 18:02:47');

-- --------------------------------------------------------

--
-- Table structure for table `cities`
--

DROP TABLE IF EXISTS `cities`;
CREATE TABLE IF NOT EXISTS `cities` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `state` varchar(255) NOT NULL,
  `state_id` int(11) NOT NULL,
  `gst_code` int(11) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1313 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `cities`
--

INSERT INTO `cities` (`id`, `name`, `state`, `state_id`, `gst_code`, `status`, `created_at`, `updated_at`) VALUES
(1, 'BHUBANESHWAR', 'ORISSA', 29, 21, 1, '2019-04-26 13:42:06', '2019-04-26 13:42:06'),
(2, 'CUTTACK', 'ORISSA', 29, 21, 1, '2019-04-26 13:42:06', '2019-04-26 13:42:06'),
(3, 'CUTTACK SADAR', 'ORISSA', 29, 21, 1, '2019-04-26 13:42:06', '2019-04-26 13:42:06'),
(4, 'SAMBALPUR', 'ORISSA', 29, 21, 1, '2019-04-26 13:42:06', '2019-04-26 13:42:06'),
(5, 'SARDAR', 'ORISSA', 29, 21, 1, '2019-04-26 13:42:06', '2019-04-26 13:42:06'),
(6, 'ALIPORE', 'WEST BENGAL', 41, 19, 1, '2019-04-26 13:42:06', '2019-04-26 13:42:06'),
(7, 'BALLY JAGACHHA', 'WEST BENGAL', 41, 19, 1, '2019-04-26 13:42:06', '2019-04-26 13:42:06'),
(8, 'BELUR', 'WEST BENGAL', 41, 19, 1, '2019-04-26 13:42:06', '2019-04-26 13:42:06'),
(9, 'DISPUR', 'ASSAM', 4, 18, 1, '2019-04-26 13:42:06', '2019-04-26 13:42:06'),
(10, 'DURGAPUR', 'WEST BENGAL', 41, 19, 1, '2019-04-26 13:42:06', '2019-04-26 13:42:06'),
(11, 'DURGAPUR MC', 'WEST BENGAL', 41, 19, 1, '2019-04-26 13:42:06', '2019-04-26 13:42:06'),
(12, 'GUWAHATI', 'ASSAM', 4, 18, 1, '2019-04-26 13:42:06', '2019-04-26 13:42:06'),
(13, 'HOWRAH', 'WEST BENGAL', 41, 19, 1, '2019-04-26 13:42:06', '2019-04-26 13:42:06'),
(14, 'KOLKATA', 'WEST BENGAL', 41, 19, 1, '2019-04-26 13:42:06', '2019-04-26 13:42:06'),
(15, 'KOLKATA  BURRA BAZAR ', 'WEST BENGAL', 41, 19, 1, '2019-04-26 13:42:06', '2019-04-26 13:42:06'),
(16, 'KURSEONG', 'WEST BENGAL', 41, 19, 1, '2019-04-26 13:42:06', '2019-04-26 13:42:06'),
(17, 'NEW GARIA', 'WEST BENGAL', 41, 19, 1, '2019-04-26 13:42:06', '2019-04-26 13:42:06'),
(18, 'NOAPARA', 'WEST BENGAL', 41, 19, 1, '2019-04-26 13:42:06', '2019-04-26 13:42:06'),
(19, 'NORTH 24 PARAGANAS', 'WEST BENGAL', 41, 19, 1, '2019-04-26 13:42:06', '2019-04-26 13:42:06'),
(20, 'RAJARHAT', 'WEST BENGAL', 41, 19, 1, '2019-04-26 13:42:06', '2019-04-26 13:42:06'),
(21, 'RAJGANJ', 'WEST BENGAL', 41, 19, 1, '2019-04-26 13:42:06', '2019-04-26 13:42:06'),
(22, 'RANGPO', 'WEST BENGAL', 41, 19, 1, '2019-04-26 13:42:06', '2019-04-26 13:42:06'),
(23, 'SIBPUR', 'WEST BENGAL', 41, 19, 1, '2019-04-26 13:42:06', '2019-04-26 13:42:06'),
(24, 'SILIGURI', 'WEST BENGAL', 41, 19, 1, '2019-04-26 13:42:06', '2019-04-26 13:42:06'),
(25, 'BAHARAGORA', 'CHHATISGARH', 7, 22, 1, '2019-04-26 13:42:06', '2019-04-26 13:42:06'),
(26, 'DANAPUR', 'BIHAR', 5, 10, 1, '2019-04-26 13:42:06', '2019-04-26 13:42:06'),
(27, 'JAMSHEDPUR', 'JHARKHAND', 16, 20, 1, '2019-04-26 13:42:06', '2019-04-26 13:42:06'),
(28, 'PATNA', 'BIHAR', 5, 10, 1, '2019-04-26 13:42:06', '2019-04-26 13:42:06'),
(29, 'RANCHI', 'JHARKHAND', 16, 20, 1, '2019-04-26 13:42:06', '2019-04-26 13:42:06'),
(30, 'TATANAGAR', 'JHARKHAND', 16, 20, 1, '2019-04-26 13:42:06', '2019-04-26 13:42:06'),
(31, 'BILASPUR  (GURGAON)', 'HARYANA', 13, 6, 1, '2019-04-26 13:42:06', '2019-04-26 13:42:06'),
(32, 'DUNOIDAHERA', 'HARYANA', 13, 6, 1, '2019-04-26 13:42:06', '2019-04-26 13:42:06'),
(33, 'ELECTRONIC CITY (GURGAON)', 'HARYANA', 13, 6, 1, '2019-04-26 13:42:06', '2019-04-26 13:42:06'),
(34, 'FARRUKH NAGAR', 'HARYANA', 13, 6, 1, '2019-04-26 13:42:06', '2019-04-26 13:42:06'),
(35, 'GOPALPUR-HR', 'HARYANA', 13, 6, 1, '2019-04-26 13:42:06', '2019-04-26 13:42:06'),
(36, 'GURGAON', 'HARYANA', 13, 6, 1, '2019-04-26 13:42:06', '2019-04-26 13:42:06'),
(37, 'JAMALPUR', 'HARYANA', 13, 6, 1, '2019-04-26 13:42:06', '2019-04-26 13:42:06'),
(38, 'MANESAR', 'HARYANA', 13, 6, 1, '2019-04-26 13:42:06', '2019-04-26 13:42:06'),
(39, 'PANCHGAON', 'HARYANA', 13, 6, 1, '2019-04-26 13:42:06', '2019-04-26 13:42:06'),
(40, 'AMBALA', 'HARYANA', 13, 6, 1, '2019-04-26 13:42:06', '2019-04-26 13:42:06'),
(41, 'AMRITSAR', 'PUNJAB', 32, 3, 1, '2019-04-26 13:42:06', '2019-04-26 13:42:06'),
(42, 'BADDI', 'HIMACHAL PRADESH', 14, 2, 1, '2019-04-26 13:42:06', '2019-04-26 13:42:06'),
(43, 'CHANDIGARH', 'CHANDIGARH', 6, 4, 1, '2019-04-26 13:42:06', '2019-04-26 13:42:06'),
(44, 'GHANUR', 'PUNJAB', 32, 3, 1, '2019-04-26 13:42:06', '2019-04-26 13:42:06'),
(45, 'JALANDHAR', 'PUNJAB', 32, 3, 1, '2019-04-26 13:42:06', '2019-04-26 13:42:06'),
(46, 'KALKA', 'HARYANA', 13, 6, 1, '2019-04-26 13:42:06', '2019-04-26 13:42:06'),
(47, 'KARNAL', 'HARYANA', 13, 6, 1, '2019-04-26 13:42:06', '2019-04-26 13:42:06'),
(48, 'KUNDLI', 'HARYANA', 13, 6, 1, '2019-04-26 13:42:06', '2019-04-26 13:42:06'),
(49, 'LALRU', 'HARYANA', 13, 6, 1, '2019-04-26 13:42:06', '2019-04-26 13:42:06'),
(50, 'LUDHIANA', 'PUNJAB', 32, 3, 1, '2019-04-26 13:42:06', '2019-04-26 13:42:06'),
(51, 'MANIMAJRA', 'CHANDIGARH', 6, 4, 1, '2019-04-26 13:42:06', '2019-04-26 13:42:06'),
(52, 'MOHALI', 'PUNJAB', 32, 3, 1, '2019-04-26 13:42:06', '2019-04-26 13:42:06'),
(53, 'NALAGARH', 'HIMACHAL PRADESH', 14, 2, 1, '2019-04-26 13:42:06', '2019-04-26 13:42:06'),
(54, 'PANCHKULA', 'HARYANA', 13, 6, 1, '2019-04-26 13:42:06', '2019-04-26 13:42:06'),
(55, 'PANIPAT', 'HARYANA', 13, 6, 1, '2019-04-26 13:42:06', '2019-04-26 13:42:06'),
(56, 'PARWANOO', 'HIMACHAL PRADESH', 14, 2, 1, '2019-04-26 13:42:06', '2019-04-26 13:42:06'),
(57, 'PATIALA', 'PUNJAB', 32, 3, 1, '2019-04-26 13:42:06', '2019-04-26 13:42:06'),
(58, 'PINJORE', 'PUNJAB', 32, 3, 1, '2019-04-26 13:42:06', '2019-04-26 13:42:06'),
(59, 'RAJPURA', 'PUNJAB', 32, 3, 1, '2019-04-26 13:42:06', '2019-04-26 13:42:06'),
(60, 'SHAHABAD', 'HARYANA', 13, 6, 1, '2019-04-26 13:42:06', '2019-04-26 13:42:06'),
(61, 'SOLAN', 'HIMACHAL PRADESH', 14, 2, 1, '2019-04-26 13:42:06', '2019-04-26 13:42:06'),
(62, 'ZIRAKPUR', 'PUNJAB', 32, 3, 1, '2019-04-26 13:42:06', '2019-04-26 13:42:06'),
(63, 'NEW DELHI', 'DELHI', 10, 7, 1, '2019-04-26 13:42:06', '2019-04-26 13:42:06'),
(64, 'BHIWADI', 'RAJASTHAN', 33, 8, 1, '2019-04-26 13:42:06', '2019-04-26 13:42:06'),
(65, 'JAIPUR', 'RAJASTHAN', 33, 8, 1, '2019-04-26 13:42:06', '2019-04-26 13:42:06'),
(66, 'BALLABHGARH', 'HARYANA', 13, 6, 1, '2019-04-26 13:42:06', '2019-04-26 13:42:06'),
(67, 'FARIDABAD', 'HARYANA', 13, 6, 1, '2019-04-26 13:42:06', '2019-04-26 13:42:06'),
(68, 'SURAJKUND', 'HARYANA', 13, 6, 1, '2019-04-26 13:42:06', '2019-04-26 13:42:06'),
(69, 'AGRA', 'UTTAR PRADESH', 38, 9, 1, '2019-04-26 13:42:06', '2019-04-26 13:42:06'),
(70, 'ALLAHABAD', 'UTTAR PRADESH', 38, 9, 1, '2019-04-26 13:42:06', '2019-04-26 13:42:06'),
(71, 'CHIKAMBARPUR', 'UTTAR PRADESH', 38, 9, 1, '2019-04-26 13:42:06', '2019-04-26 13:42:06'),
(72, 'DEHRADUN', 'Uttrakhand', 39, 5, 1, '2019-04-26 13:42:06', '2019-04-26 13:42:06'),
(73, 'GADARPUR', 'Uttrakhand', 39, 5, 1, '2019-04-26 13:42:06', '2019-04-26 13:42:06'),
(74, 'GANGAGANJ', 'UTTAR PRADESH', 38, 9, 1, '2019-04-26 13:42:06', '2019-04-26 13:42:06'),
(75, 'GHAZIABAD', 'UTTAR PRADESH', 38, 9, 1, '2019-04-26 13:42:06', '2019-04-26 13:42:06'),
(76, 'HARIDWAR', 'Uttrakhand', 39, 5, 1, '2019-04-26 13:42:06', '2019-04-26 13:42:06'),
(77, 'KANPUR', 'UTTAR PRADESH', 38, 9, 1, '2019-04-26 13:42:06', '2019-04-26 13:42:06'),
(78, 'KASHIPUR', 'Uttrakhand', 39, 5, 1, '2019-04-26 13:42:06', '2019-04-26 13:42:06'),
(79, 'KAUSHAMBI', 'UTTAR PRADESH', 38, 9, 1, '2019-04-26 13:42:06', '2019-04-26 13:42:06'),
(80, 'LUCKNOW', 'UTTAR PRADESH', 38, 9, 1, '2019-04-26 13:42:06', '2019-04-26 13:42:06'),
(81, 'MEERUT', 'UTTAR PRADESH', 38, 9, 1, '2019-04-26 13:42:06', '2019-04-26 13:42:06'),
(82, 'MOHAN NAGAR', 'UTTAR PRADESH', 38, 9, 1, '2019-04-26 13:42:06', '2019-04-26 13:42:06'),
(83, 'MORADABAD', 'UTTAR PRADESH', 38, 9, 1, '2019-04-26 13:42:06', '2019-04-26 13:42:06'),
(84, 'NOIDA', 'UTTAR PRADESH', 38, 9, 1, '2019-04-26 13:42:06', '2019-04-26 13:42:06'),
(85, 'NOIDA PHASE-2', 'UTTAR PRADESH', 38, 9, 1, '2019-04-26 13:42:06', '2019-04-26 13:42:06'),
(86, 'ROORKEE', 'Uttrakhand', 39, 5, 1, '2019-04-26 13:42:06', '2019-04-26 13:42:06'),
(87, 'RUDARPUR', 'Uttrakhand', 39, 5, 1, '2019-04-26 13:42:06', '2019-04-26 13:42:06'),
(88, 'SAHIBABAD', 'UTTAR PRADESH', 38, 9, 1, '2019-04-26 13:42:06', '2019-04-26 13:42:06'),
(89, 'UDHAM SINGH NAGAR', 'Uttrakhand', 39, 5, 1, '2019-04-26 13:42:06', '2019-04-26 13:42:06'),
(90, 'VARANASI', 'UTTAR PRADESH', 38, 9, 1, '2019-04-26 13:42:06', '2019-04-26 13:42:06'),
(91, 'ANEKAL', 'KARNATAKA', 17, 29, 1, '2019-04-26 13:42:06', '2019-04-26 13:42:06'),
(92, 'ANJUNA', 'GOA', 11, 30, 1, '2019-04-26 13:42:06', '2019-04-26 13:42:06'),
(93, 'ARAMBOL', 'GOA', 11, 30, 1, '2019-04-26 13:42:06', '2019-04-26 13:42:06'),
(94, 'ASSOLNA', 'GOA', 11, 30, 1, '2019-04-26 13:42:06', '2019-04-26 13:42:06'),
(95, 'BANGALORE', 'KARNATAKA', 17, 29, 1, '2019-04-26 13:42:06', '2019-04-26 13:42:06'),
(96, 'BANGALORE CHICKPET ', 'KARNATAKA', 17, 29, 1, '2019-04-26 13:42:06', '2019-04-26 13:42:06'),
(97, 'BANGALORE H S R LAYOUT ', 'KARNATAKA', 17, 29, 1, '2019-04-26 13:42:06', '2019-04-26 13:42:06'),
(98, 'BANGALORE K R PURAM ', 'KARNATAKA', 17, 29, 1, '2019-04-26 13:42:06', '2019-04-26 13:42:06'),
(99, 'BANGALORE MADIWALA ', 'KARNATAKA', 17, 29, 1, '2019-04-26 13:42:06', '2019-04-26 13:42:06'),
(100, 'BANGALORE MAHADEVAPURA ', 'KARNATAKA', 17, 29, 1, '2019-04-26 13:42:06', '2019-04-26 13:42:06'),
(101, 'BANGALORE PEENYA ', 'KARNATAKA', 17, 29, 1, '2019-04-26 13:42:06', '2019-04-26 13:42:06'),
(102, 'BANGALORE YESWANTHPUR ', 'KARNATAKA', 17, 29, 1, '2019-04-26 13:42:06', '2019-04-26 13:42:06'),
(103, 'BARDEZ', 'GOA', 11, 30, 1, '2019-04-26 13:42:06', '2019-04-26 13:42:06'),
(104, 'BELGAUM', 'KARNATAKA', 17, 29, 1, '2019-04-26 13:42:06', '2019-04-26 13:42:06'),
(105, 'BENAVALIM', 'GOA', 11, 30, 1, '2019-04-26 13:42:06', '2019-04-26 13:42:06'),
(106, 'BICHOLIM', 'GOA', 11, 30, 1, '2019-04-26 13:42:06', '2019-04-26 13:42:06'),
(107, 'BOMMASANDRA', 'KARNATAKA', 17, 29, 1, '2019-04-26 13:42:06', '2019-04-26 13:42:06'),
(108, 'BOODHIHAL VILLAGE', 'KARNATAKA', 17, 29, 1, '2019-04-26 13:42:06', '2019-04-26 13:42:06'),
(109, 'CALANGUTE', 'GOA', 11, 30, 1, '2019-04-26 13:42:06', '2019-04-26 13:42:06'),
(110, 'CANACONA', 'GOA', 11, 30, 1, '2019-04-26 13:42:06', '2019-04-26 13:42:06'),
(111, 'CARMONA', 'GOA', 11, 30, 1, '2019-04-26 13:42:06', '2019-04-26 13:42:06'),
(112, 'CHINCHINIM', 'GOA', 11, 30, 1, '2019-04-26 13:42:06', '2019-04-26 13:42:06'),
(113, 'CORLIM', 'GOA', 11, 30, 1, '2019-04-26 13:42:06', '2019-04-26 13:42:06'),
(114, 'CUROTORIM', 'GOA', 11, 30, 1, '2019-04-26 13:42:06', '2019-04-26 13:42:06'),
(115, 'DABOLIM', 'GOA', 11, 30, 1, '2019-04-26 13:42:06', '2019-04-26 13:42:06'),
(116, 'DRAMPUR', 'GOA', 11, 30, 1, '2019-04-26 13:42:06', '2019-04-26 13:42:06'),
(117, 'HOSUR', 'KARNATAKA', 17, 29, 1, '2019-04-26 13:42:06', '2019-04-26 13:42:06'),
(118, 'HUBLI', 'KARNATAKA', 17, 29, 1, '2019-04-26 13:42:06', '2019-04-26 13:42:06'),
(119, 'LBETUL', 'GOA', 11, 30, 1, '2019-04-26 13:42:06', '2019-04-26 13:42:06'),
(120, 'LOUTULIM', 'GOA', 11, 30, 1, '2019-04-26 13:42:06', '2019-04-26 13:42:06'),
(121, 'MADGAON', 'GOA', 11, 30, 1, '2019-04-26 13:42:06', '2019-04-26 13:42:06'),
(122, 'MAJORDA', 'GOA', 11, 30, 1, '2019-04-26 13:42:06', '2019-04-26 13:42:06'),
(123, 'MANDREM', 'GOA', 11, 30, 1, '2019-04-26 13:42:06', '2019-04-26 13:42:06'),
(124, 'MANGALORE', 'KARNATAKA', 17, 29, 1, '2019-04-26 13:42:06', '2019-04-26 13:42:06'),
(125, 'MAPUSA', 'GOA', 11, 30, 1, '2019-04-26 13:42:06', '2019-04-26 13:42:06'),
(126, 'MORMUGAO', 'GOA', 11, 30, 1, '2019-04-26 13:42:06', '2019-04-26 13:42:06'),
(127, 'MYSORE', 'KARNATAKA', 17, 29, 1, '2019-04-26 13:42:06', '2019-04-26 13:42:06'),
(128, 'NAGAMANGALA', 'KARNATAKA', 17, 29, 1, '2019-04-26 13:42:06', '2019-04-26 13:42:06'),
(129, 'NELAMANGALA', 'KARNATAKA', 17, 29, 1, '2019-04-26 13:42:06', '2019-04-26 13:42:06'),
(130, 'PANAJI', 'GOA', 11, 30, 1, '2019-04-26 13:42:06', '2019-04-26 13:42:06'),
(131, 'PANJIM', 'GOA', 11, 30, 1, '2019-04-26 13:42:06', '2019-04-26 13:42:06'),
(132, 'PERNEM', 'GOA', 11, 30, 1, '2019-04-26 13:42:06', '2019-04-26 13:42:06'),
(133, 'PONDA', 'GOA', 11, 30, 1, '2019-04-26 13:42:06', '2019-04-26 13:42:06'),
(134, 'QUEPEM', 'GOA', 11, 30, 1, '2019-04-26 13:42:06', '2019-04-26 13:42:06'),
(135, 'SALCETE', 'GOA', 11, 30, 1, '2019-04-26 13:42:06', '2019-04-26 13:42:06'),
(136, 'SANGAUM', 'GOA', 11, 30, 1, '2019-04-26 13:42:06', '2019-04-26 13:42:06'),
(137, 'SANQUELIM', 'GOA', 11, 30, 1, '2019-04-26 13:42:06', '2019-04-26 13:42:06'),
(138, 'SATTARI', 'GOA', 11, 30, 1, '2019-04-26 13:42:06', '2019-04-26 13:42:06'),
(139, 'SINQUERIM', 'GOA', 11, 30, 1, '2019-04-26 13:42:06', '2019-04-26 13:42:06'),
(140, 'TISWADI', 'GOA', 11, 30, 1, '2019-04-26 13:42:06', '2019-04-26 13:42:06'),
(141, 'USGAON', 'GOA', 11, 30, 1, '2019-04-26 13:42:06', '2019-04-26 13:42:06'),
(142, 'VERNA', 'GOA', 11, 30, 1, '2019-04-26 13:42:06', '2019-04-26 13:42:06'),
(143, 'WHITEFEILD', 'KARNATAKA', 17, 29, 1, '2019-04-26 13:42:06', '2019-04-26 13:42:06'),
(144, 'YELAHANKA', 'KARNATAKA', 17, 29, 1, '2019-04-26 13:42:06', '2019-04-26 13:42:06'),
(145, 'ZUARINAGAR', 'GOA', 11, 30, 1, '2019-04-26 13:42:06', '2019-04-26 13:42:06'),
(146, 'CHENNAI', 'TAMILNADU', 35, 33, 1, '2019-04-26 13:42:06', '2019-04-26 13:42:06'),
(147, 'CHENNAI MOUNT ROAD', 'TAMILNADU', 35, 33, 1, '2019-04-26 13:42:06', '2019-04-26 13:42:06'),
(148, 'CHENNAI POONAMALLE', 'TAMILNADU', 35, 33, 1, '2019-04-26 13:42:06', '2019-04-26 13:42:06'),
(149, 'GINGEE', 'TAMILNADU', 35, 33, 1, '2019-04-26 13:42:06', '2019-04-26 13:42:06'),
(150, 'GUINDY ', 'TAMILNADU', 35, 33, 1, '2019-04-26 13:42:06', '2019-04-26 13:42:06'),
(151, 'MADHAVARAM', 'TAMILNADU', 35, 33, 1, '2019-04-26 13:42:06', '2019-04-26 13:42:06'),
(152, 'PONDICHERRY', 'PONDICHERY', 31, 34, 1, '2019-04-26 13:42:06', '2019-04-26 13:42:06'),
(153, 'SAIDAPET', 'TAMILNADU', 35, 33, 1, '2019-04-26 13:42:06', '2019-04-26 13:42:06'),
(154, 'SRIPERUMBUDUR', 'TAMILNADU', 35, 33, 1, '2019-04-26 13:42:06', '2019-04-26 13:42:06'),
(155, 'TAMBARAM', 'TAMILNADU', 35, 33, 1, '2019-04-26 13:42:06', '2019-04-26 13:42:06'),
(156, 'VELACHENNAIRI', 'TAMILNADU', 35, 33, 1, '2019-04-26 13:42:06', '2019-04-26 13:42:06'),
(157, 'ATTAYAMPATTI', 'TAMILNADU', 35, 33, 1, '2019-04-26 13:42:06', '2019-04-26 13:42:06'),
(158, 'AVANASHI', 'TAMILNADU', 35, 33, 1, '2019-04-26 13:42:06', '2019-04-26 13:42:06'),
(159, 'AYOTHIYAPATTINAM', 'TAMILNADU', 35, 33, 1, '2019-04-26 13:42:06', '2019-04-26 13:42:06'),
(160, 'BHAVANI', 'TAMILNADU', 35, 33, 1, '2019-04-26 13:42:06', '2019-04-26 13:42:06'),
(161, 'COIMBATORE', 'TAMILNADU', 35, 33, 1, '2019-04-26 13:42:06', '2019-04-26 13:42:06'),
(162, 'COIMBATORE KARUMATHAMPATTI ', 'TAMILNADU', 35, 33, 1, '2019-04-26 13:42:06', '2019-04-26 13:42:06'),
(163, 'ERODE', 'TAMILNADU', 35, 33, 1, '2019-04-26 13:42:06', '2019-04-26 13:42:06'),
(164, 'KARUR', 'TAMILNADU', 35, 33, 1, '2019-04-26 13:42:06', '2019-04-26 13:42:06'),
(165, 'MADURAI', 'TAMILNADU', 35, 33, 1, '2019-04-26 13:42:06', '2019-04-26 13:42:06'),
(166, 'OMALUR', 'TAMILNADU', 35, 33, 1, '2019-04-26 13:42:06', '2019-04-26 13:42:06'),
(167, 'PANAMARATHUPATTI', 'TAMILNADU', 35, 33, 1, '2019-04-26 13:42:06', '2019-04-26 13:42:06'),
(168, 'SALEM', 'TAMILNADU', 35, 33, 1, '2019-04-26 13:42:06', '2019-04-26 13:42:06'),
(169, 'TIRUCHIRAPPALLI', 'TAMILNADU', 35, 33, 1, '2019-04-26 13:42:06', '2019-04-26 13:42:06'),
(170, 'TIRUPUR', 'TAMILNADU', 35, 33, 1, '2019-04-26 13:42:06', '2019-04-26 13:42:06'),
(171, 'TRICHY', 'TAMILNADU', 35, 33, 1, '2019-04-26 13:42:06', '2019-04-26 13:42:06'),
(172, 'TUTICORIN', 'TAMILNADU', 35, 33, 1, '2019-04-26 13:42:06', '2019-04-26 13:42:06'),
(173, 'ALUVA', 'KERALA', 19, 32, 1, '2019-04-26 13:42:06', '2019-04-26 13:42:06'),
(174, 'COCHIN', 'KERALA', 19, 32, 1, '2019-04-26 13:42:06', '2019-04-26 13:42:06'),
(175, 'ERNAKULAM', 'KERALA', 19, 32, 1, '2019-04-26 13:42:06', '2019-04-26 13:42:06'),
(176, 'CALICUT', 'KERALA', 19, 32, 1, '2019-04-26 13:42:06', '2019-04-26 13:42:06'),
(177, 'PALAKKAD', 'KERALA', 19, 32, 1, '2019-04-26 13:42:06', '2019-04-26 13:42:06'),
(178, 'PALGHAT', 'KERALA', 19, 32, 1, '2019-04-26 13:42:06', '2019-04-26 13:42:06'),
(179, 'THIRUVANANTHAPURAM', 'KERALA', 19, 32, 1, '2019-04-26 13:42:06', '2019-04-26 13:42:06'),
(180, 'THRISSUR', 'KERALA', 19, 32, 1, '2019-04-26 13:42:06', '2019-04-26 13:42:06'),
(181, 'TRICHUR', 'KERALA', 19, 32, 1, '2019-04-26 13:42:06', '2019-04-26 13:42:06'),
(182, 'TRIVANDRUM', 'KERALA', 19, 32, 1, '2019-04-26 13:42:06', '2019-04-26 13:42:06'),
(183, 'AGANAMPUDI', 'ANDHRA PRADESH', 2, 37, 1, '2019-04-26 13:42:06', '2019-04-26 13:42:06'),
(184, 'ANAKAPALLY', 'ANDHRA PRADESH', 2, 37, 1, '2019-04-26 13:42:06', '2019-04-26 13:42:06'),
(185, 'BOLARUM', 'ANDHRA PRADESH', 2, 37, 1, '2019-04-26 13:42:06', '2019-04-26 13:42:06'),
(186, 'GAJUWAKA', 'ANDHRA PRADESH', 2, 37, 1, '2019-04-26 13:42:06', '2019-04-26 13:42:06'),
(187, 'HABSIGUDA', 'ANDHRA PRADESH', 2, 37, 1, '2019-04-26 13:42:06', '2019-04-26 13:42:06'),
(188, 'HYDERABAD', 'ANDHRA PRADESH', 2, 37, 1, '2019-04-26 13:42:06', '2019-04-26 13:42:06'),
(189, 'HYDERABAD UPPAL ', 'ANDHRA PRADESH', 2, 37, 1, '2019-04-26 13:42:06', '2019-04-26 13:42:06'),
(190, 'RAJAMUNDRY', 'ANDHRA PRADESH', 2, 37, 1, '2019-04-26 13:42:06', '2019-04-26 13:42:06'),
(191, 'JEDIMETTLA', 'ANDHRA PRADESH', 2, 37, 1, '2019-04-26 13:42:06', '2019-04-26 13:42:06'),
(192, 'KONOIDAPUR', 'ANDHRA PRADESH', 2, 37, 1, '2019-04-26 13:42:06', '2019-04-26 13:42:06'),
(193, 'KUKATPALLY', 'ANDHRA PRADESH', 2, 37, 1, '2019-04-26 13:42:06', '2019-04-26 13:42:06'),
(194, 'KURNOOL', 'ANDHRA PRADESH', 2, 37, 1, '2019-04-26 13:42:06', '2019-04-26 13:42:06'),
(195, 'MADHURAWADA', 'ANDHRA PRADESH', 2, 37, 1, '2019-04-26 13:42:06', '2019-04-26 13:42:06'),
(196, 'PARAVADA', 'ANDHRA PRADESH', 2, 37, 1, '2019-04-26 13:42:06', '2019-04-26 13:42:06'),
(197, 'SECUNDRABAD', 'ANDHRA PRADESH', 2, 37, 1, '2019-04-26 13:42:06', '2019-04-26 13:42:06'),
(198, 'VIJAYWADA', 'ANDHRA PRADESH', 2, 37, 1, '2019-04-26 13:42:06', '2019-04-26 13:42:06'),
(199, 'VISHAKHAPATNAM', 'ANDHRA PRADESH', 2, 37, 1, '2019-04-26 13:42:06', '2019-04-26 13:42:06'),
(200, 'WALTAIR', 'ANDHRA PRADESH', 2, 37, 1, '2019-04-26 13:42:06', '2019-04-26 13:42:06'),
(201, 'AHMEDABAD', 'GUJARAT', 12, 24, 1, '2019-04-26 13:42:06', '2019-04-26 13:42:06'),
(202, 'AHMEDABAD-KHOKHRA', 'GUJARAT', 12, 24, 1, '2019-04-26 13:42:06', '2019-04-26 13:42:06'),
(203, 'AHMEDABAD-SANATHAL', 'GUJARAT', 12, 24, 1, '2019-04-26 13:42:06', '2019-04-26 13:42:06'),
(204, 'ASLALI', 'GUJARAT', 12, 24, 1, '2019-04-26 13:42:06', '2019-04-26 13:42:06'),
(205, 'BAJWA', 'GUJARAT', 12, 24, 1, '2019-04-26 13:42:06', '2019-04-26 13:42:06'),
(206, 'BARODA', 'GUJARAT', 12, 24, 1, '2019-04-26 13:42:06', '2019-04-26 13:42:06'),
(207, 'BAVLA', 'GUJARAT', 12, 24, 1, '2019-04-26 13:42:06', '2019-04-26 13:42:06'),
(208, 'CHATTRAL', 'GUJARAT', 12, 24, 1, '2019-04-26 13:42:06', '2019-04-26 13:42:06'),
(209, 'CHORYASI', 'GUJARAT', 12, 24, 1, '2019-04-26 13:42:06', '2019-04-26 13:42:06'),
(210, 'DADRA', 'GUJARAT', 12, 24, 1, '2019-04-26 13:42:06', '2019-04-26 13:42:06'),
(211, 'DAMAN', 'Daman & Diu', 9, 25, 1, '2019-04-26 13:42:06', '2019-04-26 13:42:06'),
(212, 'DASKROI', 'GUJARAT', 12, 24, 1, '2019-04-26 13:42:06', '2019-04-26 13:42:06'),
(213, 'DHANSURA', 'GUJARAT', 12, 24, 1, '2019-04-26 13:42:06', '2019-04-26 13:42:06'),
(214, 'FERTILIZER NAGAR', 'GUJARAT', 12, 24, 1, '2019-04-26 13:42:06', '2019-04-26 13:42:06'),
(215, 'GANDHINAGAR', 'GUJARAT', 12, 24, 1, '2019-04-26 13:42:06', '2019-04-26 13:42:06'),
(216, 'GOTA', 'GUJARAT', 12, 24, 1, '2019-04-26 13:42:06', '2019-04-26 13:42:06'),
(217, 'KADI', 'GUJARAT', 12, 24, 1, '2019-04-26 13:42:06', '2019-04-26 13:42:06'),
(218, 'KADODRA', 'GUJARAT', 12, 24, 1, '2019-04-26 13:42:06', '2019-04-26 13:42:06'),
(219, 'KALIGAON', 'GUJARAT', 12, 24, 1, '2019-04-26 13:42:06', '2019-04-26 13:42:06'),
(220, 'KALOL', 'GUJARAT', 12, 24, 1, '2019-04-26 13:42:06', '2019-04-26 13:42:06'),
(221, 'KAMREJ', 'GUJARAT', 12, 24, 1, '2019-04-26 13:42:06', '2019-04-26 13:42:06'),
(222, 'KARJAN', 'GUJARAT', 12, 24, 1, '2019-04-26 13:42:06', '2019-04-26 13:42:06'),
(223, 'KATHWADA GIDC', 'GUJARAT', 12, 24, 1, '2019-04-26 13:42:06', '2019-04-26 13:42:06'),
(224, 'MAKARPURA', 'GUJARAT', 12, 24, 1, '2019-04-26 13:42:06', '2019-04-26 13:42:06'),
(225, 'MANJUSAR', 'GUJARAT', 12, 24, 1, '2019-04-26 13:42:06', '2019-04-26 13:42:06'),
(226, 'MEHSANA', 'GUJARAT', 12, 24, 1, '2019-04-26 13:42:06', '2019-04-26 13:42:06'),
(227, 'NARANPURA', 'GUJARAT', 12, 24, 1, '2019-04-26 13:42:06', '2019-04-26 13:42:06'),
(228, 'NARODA', 'GUJARAT', 12, 24, 1, '2019-04-26 13:42:06', '2019-04-26 13:42:06'),
(229, 'NAROL', 'GUJARAT', 12, 24, 1, '2019-04-26 13:42:06', '2019-04-26 13:42:06'),
(230, 'NAVRANAGPURURA', 'GUJARAT', 12, 24, 1, '2019-04-26 13:42:06', '2019-04-26 13:42:06'),
(231, 'PALSANA', 'GUJARAT', 12, 24, 1, '2019-04-26 13:42:06', '2019-04-26 13:42:06'),
(232, 'RAJKOT', 'GUJARAT', 12, 24, 1, '2019-04-26 13:42:06', '2019-04-26 13:42:06'),
(233, 'SURAT', 'GUJARAT', 12, 24, 1, '2019-04-26 13:42:06', '2019-04-26 13:42:06'),
(234, 'UMARGAM', 'GUJARAT', 12, 24, 1, '2019-04-26 13:42:06', '2019-04-26 13:42:06'),
(235, 'VAPI', 'GUJARAT', 12, 24, 1, '2019-04-26 13:42:06', '2019-04-26 13:42:06'),
(236, 'VATWA', 'GUJARAT', 12, 24, 1, '2019-04-26 13:42:06', '2019-04-26 13:42:06'),
(237, 'VEJLAPUR', 'GUJARAT', 12, 24, 1, '2019-04-26 13:42:06', '2019-04-26 13:42:06'),
(238, 'WADAJ', 'GUJARAT', 12, 24, 1, '2019-04-26 13:42:06', '2019-04-26 13:42:06'),
(239, 'WAGHODIA', 'GUJARAT', 12, 24, 1, '2019-04-26 13:42:06', '2019-04-26 13:42:06'),
(240, 'BHOPAL', 'MADHYA PRADESH', 21, 23, 1, '2019-04-26 13:42:06', '2019-04-26 13:42:06'),
(241, 'DEPALPUR', 'MADHYA PRADESH', 21, 23, 1, '2019-04-26 13:42:06', '2019-04-26 13:42:06'),
(242, 'INDORE', 'MADHYA PRADESH', 21, 23, 1, '2019-04-26 13:42:06', '2019-04-26 13:42:06'),
(243, 'MANDIDEEP', 'MADHYA PRADESH', 21, 23, 1, '2019-04-26 13:42:06', '2019-04-26 13:42:06'),
(244, 'MHOW', 'MADHYA PRADESH', 21, 23, 1, '2019-04-26 13:42:06', '2019-04-26 13:42:06'),
(245, 'AIROLI', 'MAHARASHTRA', 22, 27, 1, '2019-04-26 13:42:06', '2019-04-26 13:42:06'),
(246, 'AMBERNATH', 'MAHARASHTRA', 22, 27, 1, '2019-04-26 13:42:06', '2019-04-26 13:42:06'),
(247, 'BELAPUR', 'MAHARASHTRA', 22, 27, 1, '2019-04-26 13:42:06', '2019-04-26 13:42:06'),
(248, 'BHIWANDI', 'MAHARASHTRA', 22, 27, 1, '2019-04-26 13:42:06', '2019-04-26 13:42:06'),
(249, 'BOISAR', 'MAHARASHTRA', 22, 27, 1, '2019-04-26 13:42:06', '2019-04-26 13:42:06'),
(250, 'DOMBIVALI ', 'MAHARASHTRA', 22, 27, 1, '2019-04-26 13:42:06', '2019-04-26 13:42:06'),
(251, 'KALAMBOLI', 'MAHARASHTRA', 22, 27, 1, '2019-04-26 13:42:06', '2019-04-26 13:42:06'),
(252, 'KALWA', 'MAHARASHTRA', 22, 27, 1, '2019-04-26 13:42:06', '2019-04-26 13:42:06'),
(253, 'KALYAN', 'MAHARASHTRA', 22, 27, 1, '2019-04-26 13:42:06', '2019-04-26 13:42:06'),
(254, 'KOPAR KHAIRANE', 'MAHARASHTRA', 22, 27, 1, '2019-04-26 13:42:06', '2019-04-26 13:42:06'),
(255, 'MAHAPE', 'MAHARASHTRA', 22, 27, 1, '2019-04-26 13:42:06', '2019-04-26 13:42:06'),
(256, 'MUMBAI', 'MAHARASHTRA', 22, 27, 1, '2019-04-26 13:42:06', '2019-04-26 13:42:06'),
(257, 'MUMBAI GOREGAON ', 'MAHARASHTRA', 22, 27, 1, '2019-04-26 13:42:06', '2019-04-26 13:42:06'),
(258, 'MUMBAI SAHAR AIRPORT ', 'MAHARASHTRA', 22, 27, 1, '2019-04-26 13:42:06', '2019-04-26 13:42:06'),
(259, 'MUMBAI SEWREE ', 'MAHARASHTRA', 22, 27, 1, '2019-04-26 13:42:06', '2019-04-26 13:42:06'),
(260, 'MUMBAI VIKHROLI ', 'MAHARASHTRA', 22, 27, 1, '2019-04-26 13:42:06', '2019-04-26 13:42:06'),
(261, 'NAVI MUMBAI', 'MAHARASHTRA', 22, 27, 1, '2019-04-26 13:42:06', '2019-04-26 13:42:06'),
(262, 'NERUL ', 'MAHARASHTRA', 22, 27, 1, '2019-04-26 13:42:06', '2019-04-26 13:42:06'),
(263, 'PALASPE', 'MAHARASHTRA', 22, 27, 1, '2019-04-26 13:42:06', '2019-04-26 13:42:06'),
(264, 'PALGHAR', 'MAHARASHTRA', 22, 27, 1, '2019-04-26 13:42:06', '2019-04-26 13:42:06'),
(265, 'PANVEL', 'MAHARASHTRA', 22, 27, 1, '2019-04-26 13:42:06', '2019-04-26 13:42:06'),
(266, 'RABALE', 'MAHARASHTRA', 22, 27, 1, '2019-04-26 13:42:06', '2019-04-26 13:42:06'),
(267, 'TALOJA', 'MAHARASHTRA', 22, 27, 1, '2019-04-26 13:42:06', '2019-04-26 13:42:06'),
(269, 'THANE', 'MAHARASHTRA', 22, 27, 1, '2019-04-26 13:42:06', '2019-04-26 13:42:06'),
(270, 'ULHAS NAGAR', 'MAHARASHTRA', 22, 27, 1, '2019-04-26 13:42:06', '2019-04-26 13:42:06'),
(271, 'VASAI', 'MAHARASHTRA', 22, 27, 1, '2019-04-26 13:42:06', '2019-04-26 13:42:06'),
(272, 'BUTIBORI', 'MAHARASHTRA', 22, 27, 1, '2019-04-26 13:42:06', '2019-04-26 13:42:06'),
(273, 'NAGPUR', 'MAHARASHTRA', 22, 27, 1, '2019-04-26 13:42:06', '2019-04-26 13:42:06'),
(274, 'NAGPUR GANDHIBAGH', 'MAHARASHTRA', 22, 27, 1, '2019-04-26 13:42:06', '2019-04-26 13:42:06'),
(275, 'RAIPUR', 'CHHATISGARH', 7, 22, 1, '2019-04-26 13:42:06', '2019-04-26 13:42:06'),
(276, 'WADI', 'MAHARASHTRA', 22, 27, 1, '2019-04-26 13:42:06', '2019-04-26 13:42:06'),
(277, 'AHMEDNAGAR', 'MAHARASHTRA', 22, 27, 1, '2019-04-26 13:42:06', '2019-04-26 13:42:06'),
(278, 'AKURDI', 'MAHARASHTRA', 22, 27, 1, '2019-04-26 13:42:06', '2019-04-26 13:42:06'),
(279, 'AMBAD', 'MAHARASHTRA', 22, 27, 1, '2019-04-26 13:42:06', '2019-04-26 13:42:06'),
(280, 'ATIT', 'MAHARASHTRA', 22, 27, 1, '2019-04-26 13:42:06', '2019-04-26 13:42:06'),
(281, 'AURANGABAD', 'MAHARASHTRA', 22, 27, 1, '2019-04-26 13:42:06', '2019-04-26 13:42:06'),
(282, 'CHAKAN', 'MAHARASHTRA', 22, 27, 1, '2019-04-26 13:42:06', '2019-04-26 13:42:06'),
(283, 'CHIKALTHANA', 'MAHARASHTRA', 22, 27, 1, '2019-04-26 13:42:06', '2019-04-26 13:42:06'),
(284, 'CHINCHWAD', 'MAHARASHTRA', 22, 27, 1, '2019-04-26 13:42:06', '2019-04-26 13:42:06'),
(285, 'DEHU ROAD', 'MAHARASHTRA', 22, 27, 1, '2019-04-26 13:42:06', '2019-04-26 13:42:06'),
(286, 'GHORE BHUDRUK', 'MAHARASHTRA', 22, 27, 1, '2019-04-26 13:42:06', '2019-04-26 13:42:06'),
(287, 'HADAPSAR', 'MAHARASHTRA', 22, 27, 1, '2019-04-26 13:42:06', '2019-04-26 13:42:06'),
(288, 'HAVELI', 'MAHARASHTRA', 22, 27, 1, '2019-04-26 13:42:06', '2019-04-26 13:42:06'),
(289, 'HINJWADI', 'MAHARASHTRA', 22, 27, 1, '2019-04-26 13:42:06', '2019-04-26 13:42:06'),
(290, 'KATRAJ', 'MAHARASHTRA', 22, 27, 1, '2019-04-26 13:42:06', '2019-04-26 13:42:06'),
(291, 'KHADAKWASLA', 'MAHARASHTRA', 22, 27, 1, '2019-04-26 13:42:06', '2019-04-26 13:42:06'),
(292, 'KHADKI', 'MAHARASHTRA', 22, 27, 1, '2019-04-26 13:42:06', '2019-04-26 13:42:06'),
(293, 'KHANDALA', 'MAHARASHTRA', 22, 27, 1, '2019-04-26 13:42:06', '2019-04-26 13:42:06'),
(294, 'KOLHAPUR', 'MAHARASHTRA', 22, 27, 1, '2019-04-26 13:42:06', '2019-04-26 13:42:06'),
(295, 'LOHGAON', 'MAHARASHTRA', 22, 27, 1, '2019-04-26 13:42:06', '2019-04-26 13:42:06'),
(296, 'MULSHI', 'MAHARASHTRA', 22, 27, 1, '2019-04-26 13:42:06', '2019-04-26 13:42:06'),
(297, 'NASIK', 'MAHARASHTRA', 22, 27, 1, '2019-04-26 13:42:06', '2019-04-26 13:42:06'),
(298, 'PIMPRI', 'MAHARASHTRA', 22, 27, 1, '2019-04-26 13:42:06', '2019-04-26 13:42:06'),
(299, 'PIRANGUT', 'MAHARASHTRA', 22, 27, 1, '2019-04-26 13:42:06', '2019-04-26 13:42:06'),
(300, 'PUNE', 'MAHARASHTRA', 22, 27, 1, '2019-04-26 13:42:06', '2019-04-26 13:42:06'),
(301, 'PUNE KASARWADI ', 'MAHARASHTRA', 22, 27, 1, '2019-04-26 13:42:06', '2019-04-26 13:42:06'),
(302, 'PURSUNGHI', 'MAHARASHTRA', 22, 27, 1, '2019-04-26 13:42:06', '2019-04-26 13:42:06'),
(303, 'PUNE SHIVAJI NAGAR ', 'MAHARASHTRA', 22, 27, 1, '2019-04-26 13:42:06', '2019-04-26 13:42:06'),
(304, 'PUNE TATHAWADE ', 'MAHARASHTRA', 22, 27, 1, '2019-04-26 13:42:06', '2019-04-26 13:42:06'),
(305, 'PUNE WAGHOLI ', 'MAHARASHTRA', 22, 27, 1, '2019-04-26 13:42:06', '2019-04-26 13:42:06'),
(306, 'SANGOLE', 'MAHARASHTRA', 22, 27, 1, '2019-04-26 13:42:06', '2019-04-26 13:42:06'),
(307, 'SATARA', 'MAHARASHTRA', 22, 27, 1, '2019-04-26 13:42:06', '2019-04-26 13:42:06'),
(308, 'SOLAPUR', 'MAHARASHTRA', 22, 27, 1, '2019-04-26 13:42:06', '2019-04-26 13:42:06'),
(309, 'TALEGAON', 'MAHARASHTRA', 22, 27, 1, '2019-04-26 13:42:06', '2019-04-26 13:42:06'),
(310, 'WAGHOLI ', 'MAHARASHTRA', 22, 27, 1, '2019-04-26 13:42:06', '2019-04-26 13:42:06'),
(311, 'ANGUL', 'ORISSA', 29, 21, 1, '2019-04-26 13:42:06', '2019-04-26 13:42:06'),
(312, 'BALASORE', 'ORISSA', 29, 21, 1, '2019-04-26 13:42:06', '2019-04-26 13:42:06'),
(313, 'BALESHWAR SADAR', 'ORISSA', 29, 21, 1, '2019-04-26 13:42:06', '2019-04-26 13:42:06'),
(314, 'BARGARH', 'ORISSA', 29, 21, 1, '2019-04-26 13:42:06', '2019-04-26 13:42:06'),
(315, 'BARIPADA', 'ORISSA', 29, 21, 1, '2019-04-26 13:42:06', '2019-04-26 13:42:06'),
(316, 'BARPALI', 'ORISSA', 29, 21, 1, '2019-04-26 13:42:06', '2019-04-26 13:42:06'),
(317, 'BERHAMPUR', 'ORISSA', 29, 21, 1, '2019-04-26 13:42:06', '2019-04-26 13:42:06'),
(318, 'BHADRAK', 'ORISSA', 29, 21, 1, '2019-04-26 13:42:06', '2019-04-26 13:42:06'),
(319, 'BIRMITRAPUR', 'ORISSA', 29, 21, 1, '2019-04-26 13:42:06', '2019-04-26 13:42:06'),
(320, 'BISRA', 'ORISSA', 29, 21, 1, '2019-04-26 13:42:06', '2019-04-26 13:42:06'),
(321, 'BOLAGARH', 'ORISSA', 29, 21, 1, '2019-04-26 13:42:06', '2019-04-26 13:42:06'),
(322, 'BOUDH', 'ORISSA', 29, 21, 1, '2019-04-26 13:42:06', '2019-04-26 13:42:06'),
(323, 'BRAHMAPUR SADAR', 'ORISSA', 29, 21, 1, '2019-04-26 13:42:06', '2019-04-26 13:42:06'),
(324, 'BRAJARAJNAGAR', 'ORISSA', 29, 21, 1, '2019-04-26 13:42:06', '2019-04-26 13:42:06'),
(325, 'BUGUDA', 'ORISSA', 29, 21, 1, '2019-04-26 13:42:06', '2019-04-26 13:42:06'),
(326, 'BURLA', 'ORISSA', 29, 21, 1, '2019-04-26 13:42:06', '2019-04-26 13:42:06'),
(327, 'CHANDBALI', 'ORISSA', 29, 21, 1, '2019-04-26 13:42:06', '2019-04-26 13:42:06'),
(328, 'CHANDIKHOL', 'ORISSA', 29, 21, 1, '2019-04-26 13:42:06', '2019-04-26 13:42:06'),
(329, 'CHANDIPUR', 'ORISSA', 29, 21, 1, '2019-04-26 13:42:06', '2019-04-26 13:42:06'),
(330, 'CHHATRAPUR', 'ORISSA', 29, 21, 1, '2019-04-26 13:42:06', '2019-04-26 13:42:06'),
(331, 'CHHENDIPADA', 'ORISSA', 29, 21, 1, '2019-04-26 13:42:06', '2019-04-26 13:42:06'),
(332, 'DAITARI', 'ORISSA', 29, 21, 1, '2019-04-26 13:42:06', '2019-04-26 13:42:06'),
(333, 'DASPALLA', 'ORISSA', 29, 21, 1, '2019-04-26 13:42:06', '2019-04-26 13:42:06'),
(334, 'DEOGARH', 'ORISSA', 29, 21, 1, '2019-04-26 13:42:06', '2019-04-26 13:42:06'),
(335, 'DHAMRA', 'ORISSA', 29, 21, 1, '2019-04-26 13:42:06', '2019-04-26 13:42:06'),
(336, 'DHANMANOIDAL', 'ORISSA', 29, 21, 1, '2019-04-26 13:42:06', '2019-04-26 13:42:06'),
(337, 'DHENKANAL', 'ORISSA', 29, 21, 1, '2019-04-26 13:42:06', '2019-04-26 13:42:06'),
(338, 'ERASMA', 'ORISSA', 29, 21, 1, '2019-04-26 13:42:06', '2019-04-26 13:42:06'),
(339, 'JAGATSINGHAPUR', 'ORISSA', 29, 21, 1, '2019-04-26 13:42:06', '2019-04-26 13:42:06'),
(340, 'JAJAPUR', 'ORISSA', 29, 21, 1, '2019-04-26 13:42:06', '2019-04-26 13:42:06'),
(341, 'JATANI', 'ORISSA', 29, 21, 1, '2019-04-26 13:42:06', '2019-04-26 13:42:06'),
(342, 'JHARSUGUDA', 'ORISSA', 29, 21, 1, '2019-04-26 13:42:06', '2019-04-26 13:42:06'),
(343, 'KAMAKHYANAGAR', 'ORISSA', 29, 21, 1, '2019-04-26 13:42:06', '2019-04-26 13:42:06'),
(344, 'KANIA', 'ORISSA', 29, 21, 1, '2019-04-26 13:42:06', '2019-04-26 13:42:06'),
(345, 'KENDRAPARA', 'ORISSA', 29, 21, 1, '2019-04-26 13:42:06', '2019-04-26 13:42:06'),
(346, 'KEONJHAR', 'ORISSA', 29, 21, 1, '2019-04-26 13:42:06', '2019-04-26 13:42:06'),
(347, 'KHALIKOTE', 'ORISSA', 29, 21, 1, '2019-04-26 13:42:06', '2019-04-26 13:42:06'),
(348, 'KHUNTUNI', 'ORISSA', 29, 21, 1, '2019-04-26 13:42:06', '2019-04-26 13:42:06'),
(349, 'KHURDA', 'ORISSA', 29, 21, 1, '2019-04-26 13:42:06', '2019-04-26 13:42:06'),
(350, 'KONARK', 'ORISSA', 29, 21, 1, '2019-04-26 13:42:06', '2019-04-26 13:42:06'),
(351, 'KUCHINDA', 'ORISSA', 29, 21, 1, '2019-04-26 13:42:06', '2019-04-26 13:42:06'),
(352, 'KUJANG', 'ORISSA', 29, 21, 1, '2019-04-26 13:42:06', '2019-04-26 13:42:06'),
(353, 'LATHIKATA', 'ORISSA', 29, 21, 1, '2019-04-26 13:42:06', '2019-04-26 13:42:06'),
(354, 'MERAMANOIDALI', 'ORISSA', 29, 21, 1, '2019-04-26 13:42:06', '2019-04-26 13:42:06'),
(355, 'NAYAGARH', 'ORISSA', 29, 21, 1, '2019-04-26 13:42:06', '2019-04-26 13:42:06'),
(356, 'NIMAPARA', 'ORISSA', 29, 21, 1, '2019-04-26 13:42:06', '2019-04-26 13:42:06'),
(357, 'PADAMPUR', 'ORISSA', 29, 21, 1, '2019-04-26 13:42:06', '2019-04-26 13:42:06'),
(358, 'PANIKOLI', 'ORISSA', 29, 21, 1, '2019-04-26 13:42:06', '2019-04-26 13:42:06'),
(359, 'PANPOSH', 'ORISSA', 29, 21, 1, '2019-04-26 13:42:06', '2019-04-26 13:42:06'),
(360, 'PARADIP', 'ORISSA', 29, 21, 1, '2019-04-26 13:42:06', '2019-04-26 13:42:06'),
(361, 'PATTAMUNDAI', 'ORISSA', 29, 21, 1, '2019-04-26 13:42:06', '2019-04-26 13:42:06'),
(362, 'PIPILI', 'ORISSA', 29, 21, 1, '2019-04-26 13:42:06', '2019-04-26 13:42:06'),
(363, 'PIPLI -BBI', 'ORISSA', 29, 21, 1, '2019-04-26 13:42:06', '2019-04-26 13:42:06'),
(364, 'PURI', 'ORISSA', 29, 21, 1, '2019-04-26 13:42:06', '2019-04-26 13:42:06'),
(365, 'RAGHUNATHAPALI', 'ORISSA', 29, 21, 1, '2019-04-26 13:42:06', '2019-04-26 13:42:06'),
(366, 'RAJAGANGAPUR', 'ORISSA', 29, 21, 1, '2019-04-26 13:42:06', '2019-04-26 13:42:06'),
(367, 'RAJGANGPUR', 'ORISSA', 29, 21, 1, '2019-04-26 13:42:06', '2019-04-26 13:42:06'),
(368, 'RAMBALAHA', 'ORISSA', 29, 21, 1, '2019-04-26 13:42:06', '2019-04-26 13:42:06'),
(369, 'RANGALI', 'ORISSA', 29, 21, 1, '2019-04-26 13:42:06', '2019-04-26 13:42:06'),
(370, 'RAURKELA (M)', 'ORISSA', 29, 21, 1, '2019-04-26 13:42:06', '2019-04-26 13:42:06'),
(371, 'RAYAGADA', 'ORISSA', 29, 21, 1, '2019-04-26 13:42:06', '2019-04-26 13:42:06'),
(372, 'REMUNA', 'ORISSA', 29, 21, 1, '2019-04-26 13:42:06', '2019-04-26 13:42:06'),
(373, 'SALIPUR', 'ORISSA', 29, 21, 1, '2019-04-26 13:42:06', '2019-04-26 13:42:06'),
(374, 'SATYABADI', 'ORISSA', 29, 21, 1, '2019-04-26 13:42:06', '2019-04-26 13:42:06'),
(375, 'SOHELA', 'ORISSA', 29, 21, 1, '2019-04-26 13:42:06', '2019-04-26 13:42:06'),
(376, 'SONEPUR', 'ORISSA', 29, 21, 1, '2019-04-26 13:42:06', '2019-04-26 13:42:06'),
(377, 'SORO', 'ORISSA', 29, 21, 1, '2019-04-26 13:42:06', '2019-04-26 13:42:06'),
(378, 'SUKINOIDA', 'ORISSA', 29, 21, 1, '2019-04-26 13:42:06', '2019-04-26 13:42:06'),
(379, 'SUNDERGARH', 'ORISSA', 29, 21, 1, '2019-04-26 13:42:06', '2019-04-26 13:42:06'),
(380, 'TALCHER', 'ORISSA', 29, 21, 1, '2019-04-26 13:42:06', '2019-04-26 13:42:06'),
(381, 'TANGI', 'ORISSA', 29, 21, 1, '2019-04-26 13:42:06', '2019-04-26 13:42:06'),
(382, 'TIGIRIA', 'ORISSA', 29, 21, 1, '2019-04-26 13:42:06', '2019-04-26 13:42:06'),
(383, 'TIRTOL', 'ORISSA', 29, 21, 1, '2019-04-26 13:42:06', '2019-04-26 13:42:06'),
(384, 'TITILAGARH', 'ORISSA', 29, 21, 1, '2019-04-26 13:42:06', '2019-04-26 13:42:06'),
(385, 'ADDCONAGAR', 'WEST BENGAL', 41, 19, 1, '2019-04-26 13:42:06', '2019-04-26 13:42:06'),
(386, 'AGARPARA', 'WEST BENGAL', 41, 19, 1, '2019-04-26 13:42:06', '2019-04-26 13:42:06'),
(387, 'ALIPURDUAR', 'WEST BENGAL', 41, 19, 1, '2019-04-26 13:42:06', '2019-04-26 13:42:06'),
(388, 'AMDANGA', 'WEST BENGAL', 41, 19, 1, '2019-04-26 13:42:06', '2019-04-26 13:42:06'),
(389, 'ANDAL', 'WEST BENGAL', 41, 19, 1, '2019-04-26 13:42:06', '2019-04-26 13:42:06'),
(390, 'ARAMBAGH', 'WEST BENGAL', 41, 19, 1, '2019-04-26 13:42:06', '2019-04-26 13:42:06'),
(391, 'ASANSOL', 'WEST BENGAL', 41, 19, 1, '2019-04-26 13:42:06', '2019-04-26 13:42:06'),
(392, 'ASANSOL MC', 'WEST BENGAL', 41, 19, 1, '2019-04-26 13:42:06', '2019-04-26 13:42:06'),
(393, 'BAIDVABATI', 'WEST BENGAL', 41, 19, 1, '2019-04-26 13:42:06', '2019-04-26 13:42:06'),
(394, 'BAKULTALA', 'WEST BENGAL', 41, 19, 1, '2019-04-26 13:42:06', '2019-04-26 13:42:06'),
(395, 'BALTIKURI', 'WEST BENGAL', 41, 19, 1, '2019-04-26 13:42:06', '2019-04-26 13:42:06'),
(396, 'BALURGHAT', 'WEST BENGAL', 41, 19, 1, '2019-04-26 13:42:06', '2019-04-26 13:42:06'),
(397, 'BANDEL', 'WEST BENGAL', 41, 19, 1, '2019-04-26 13:42:06', '2019-04-26 13:42:06'),
(398, 'BANKURA', 'WEST BENGAL', 41, 19, 1, '2019-04-26 13:42:06', '2019-04-26 13:42:06'),
(399, 'BANSBERIA', 'WEST BENGAL', 41, 19, 1, '2019-04-26 13:42:06', '2019-04-26 13:42:06'),
(400, 'BARABANI', 'WEST BENGAL', 41, 19, 1, '2019-04-26 13:42:06', '2019-04-26 13:42:06'),
(401, 'BARASAT', 'WEST BENGAL', 41, 19, 1, '2019-04-26 13:42:06', '2019-04-26 13:42:06'),
(402, 'BARDHAMAN', 'WEST BENGAL', 41, 19, 1, '2019-04-26 13:42:06', '2019-04-26 13:42:06'),
(403, 'BARRACKPORE', 'WEST BENGAL', 41, 19, 1, '2019-04-26 13:42:06', '2019-04-26 13:42:06'),
(404, 'BARUIPUR', 'WEST BENGAL', 41, 19, 1, '2019-04-26 13:42:06', '2019-04-26 13:42:06'),
(405, 'BASIRHAT', 'WEST BENGAL', 41, 19, 1, '2019-04-26 13:42:06', '2019-04-26 13:42:06'),
(406, 'BERHAMPORE', 'WEST BENGAL', 41, 19, 1, '2019-04-26 13:42:06', '2019-04-26 13:42:06'),
(407, 'BHADRESWAR', 'WEST BENGAL', 41, 19, 1, '2019-04-26 13:42:06', '2019-04-26 13:42:06'),
(408, 'BHAGAWANGOLA - I', 'WEST BENGAL', 41, 19, 1, '2019-04-26 13:42:06', '2019-04-26 13:42:06'),
(409, 'BINAGURI', 'WEST BENGAL', 41, 19, 1, '2019-04-26 13:42:06', '2019-04-26 13:42:06'),
(410, 'BIRNAGAR', 'WEST BENGAL', 41, 19, 1, '2019-04-26 13:42:06', '2019-04-26 13:42:06'),
(411, 'BOKAKHAT', 'ASSAM', 4, 18, 1, '2019-04-26 13:42:06', '2019-04-26 13:42:06'),
(412, 'BOLPUR', 'WEST BENGAL', 41, 19, 1, '2019-04-26 13:42:06', '2019-04-26 13:42:06'),
(413, 'BONGAIGAON', 'ASSAM', 4, 18, 1, '2019-04-26 13:42:06', '2019-04-26 13:42:06'),
(414, 'BONGAON', 'WEST BENGAL', 41, 19, 1, '2019-04-26 13:42:06', '2019-04-26 13:42:06'),
(415, 'BUDGE BUDGE', 'WEST BENGAL', 41, 19, 1, '2019-04-26 13:42:06', '2019-04-26 13:42:06'),
(416, 'BURDWAN', 'WEST BENGAL', 41, 19, 1, '2019-04-26 13:42:06', '2019-04-26 13:42:06'),
(417, 'BURO SHIBIALA', 'WEST BENGAL', 41, 19, 1, '2019-04-26 13:42:06', '2019-04-26 13:42:06'),
(418, 'BYRNIHAT', 'ASSAM', 4, 18, 1, '2019-04-26 13:42:06', '2019-04-26 13:42:06'),
(419, 'CACHAR', 'ASSAM', 4, 18, 1, '2019-04-26 13:42:06', '2019-04-26 13:42:06'),
(420, 'CHAKDAH', 'WEST BENGAL', 41, 19, 1, '2019-04-26 13:42:06', '2019-04-26 13:42:06'),
(421, 'CHAMPADANGA', 'WEST BENGAL', 41, 19, 1, '2019-04-26 13:42:06', '2019-04-26 13:42:06'),
(422, 'CHANDANNAGAR', 'WEST BENGAL', 41, 19, 1, '2019-04-26 13:42:06', '2019-04-26 13:42:06'),
(423, 'CHANDITALA', 'WEST BENGAL', 41, 19, 1, '2019-04-26 13:42:06', '2019-04-26 13:42:06'),
(424, 'CHANDPARA', 'WEST BENGAL', 41, 19, 1, '2019-04-26 13:42:06', '2019-04-26 13:42:06'),
(425, 'CHATRA HOOGHLY', 'WEST BENGAL', 41, 19, 1, '2019-04-26 13:42:06', '2019-04-26 13:42:06'),
(426, 'CHINSURA', 'WEST BENGAL', 41, 19, 1, '2019-04-26 13:42:06', '2019-04-26 13:42:06'),
(427, 'CHINSURAH - MAGRA', 'WEST BENGAL', 41, 19, 1, '2019-04-26 13:42:06', '2019-04-26 13:42:06'),
(428, 'CHITTARANJAN', 'WEST BENGAL', 41, 19, 1, '2019-04-26 13:42:06', '2019-04-26 13:42:06'),
(429, 'CONTAI', 'WEST BENGAL', 41, 19, 1, '2019-04-26 13:42:06', '2019-04-26 13:42:06'),
(430, 'COOCH BEHAR', 'WEST BENGAL', 41, 19, 1, '2019-04-26 13:42:06', '2019-04-26 13:42:06'),
(431, 'DEBAGRAAM', 'WEST BENGAL', 41, 19, 1, '2019-04-26 13:42:06', '2019-04-26 13:42:06'),
(432, 'DHANIAKHALI', 'WEST BENGAL', 41, 19, 1, '2019-04-26 13:42:06', '2019-04-26 13:42:06'),
(433, 'DHEKIAJULI', 'ASSAM', 4, 18, 1, '2019-04-26 13:42:06', '2019-04-26 13:42:06'),
(434, 'DHULIAN', 'WEST BENGAL', 41, 19, 1, '2019-04-26 13:42:06', '2019-04-26 13:42:06'),
(435, 'DHUPGURI', 'WEST BENGAL', 41, 19, 1, '2019-04-26 13:42:06', '2019-04-26 13:42:06'),
(436, 'DIAMOND HARBOUR', 'WEST BENGAL', 41, 19, 1, '2019-04-26 13:42:06', '2019-04-26 13:42:06'),
(437, 'DIGARU', 'ASSAM', 4, 18, 1, '2019-04-26 13:42:06', '2019-04-26 13:42:06'),
(438, 'DOMKOL', 'WEST BENGAL', 41, 19, 1, '2019-04-26 13:42:06', '2019-04-26 13:42:06'),
(439, 'ENGLISHBAZAR', 'WEST BENGAL', 41, 19, 1, '2019-04-26 13:42:06', '2019-04-26 13:42:06'),
(440, 'FARAKKA', 'WEST BENGAL', 41, 19, 1, '2019-04-26 13:42:06', '2019-04-26 13:42:06'),
(441, 'FARIDPUR DURGAPUR', 'WEST BENGAL', 41, 19, 1, '2019-04-26 13:42:06', '2019-04-26 13:42:06'),
(442, 'GAIGHATA', 'WEST BENGAL', 41, 19, 1, '2019-04-26 13:42:06', '2019-04-26 13:42:06'),
(443, 'GALSI', 'WEST BENGAL', 41, 19, 1, '2019-04-26 13:42:06', '2019-04-26 13:42:06'),
(444, 'GARALGACHA', 'WEST BENGAL', 41, 19, 1, '2019-04-26 13:42:06', '2019-04-26 13:42:06'),
(445, 'GHUSURI', 'WEST BENGAL', 41, 19, 1, '2019-04-26 13:42:06', '2019-04-26 13:42:06'),
(446, 'GOGHAT', 'WEST BENGAL', 41, 19, 1, '2019-04-26 13:42:06', '2019-04-26 13:42:06'),
(447, 'GOGHAT-II', 'WEST BENGAL', 41, 19, 1, '2019-04-26 13:42:06', '2019-04-26 13:42:06'),
(448, 'GOPALPUR-WB', 'WEST BENGAL', 41, 19, 1, '2019-04-26 13:42:06', '2019-04-26 13:42:06'),
(449, 'GUMA', 'WEST BENGAL', 41, 19, 1, '2019-04-26 13:42:06', '2019-04-26 13:42:06'),
(450, 'GUPTIPARA', 'WEST BENGAL', 41, 19, 1, '2019-04-26 13:42:06', '2019-04-26 13:42:06'),
(451, 'GUSHKARA', 'WEST BENGAL', 41, 19, 1, '2019-04-26 13:42:06', '2019-04-26 13:42:06'),
(452, 'HABRA', 'WEST BENGAL', 41, 19, 1, '2019-04-26 13:42:06', '2019-04-26 13:42:06'),
(453, 'HALDIA', 'WEST BENGAL', 41, 19, 1, '2019-04-26 13:42:06', '2019-04-26 13:42:06'),
(454, 'HANSKHALI', 'WEST BENGAL', 41, 19, 1, '2019-04-26 13:42:06', '2019-04-26 13:42:06'),
(455, 'HARINGHATA', 'WEST BENGAL', 41, 19, 1, '2019-04-26 13:42:06', '2019-04-26 13:42:06'),
(456, 'HARIPAL', 'WEST BENGAL', 41, 19, 1, '2019-04-26 13:42:06', '2019-04-26 13:42:06'),
(457, 'HARISHCHANDRAPUR', 'WEST BENGAL', 41, 19, 1, '2019-04-26 13:42:06', '2019-04-26 13:42:06'),
(458, 'HASIMARA', 'WEST BENGAL', 41, 19, 1, '2019-04-26 13:42:06', '2019-04-26 13:42:06'),
(459, 'HINDMOTOR', 'WEST BENGAL', 41, 19, 1, '2019-04-26 13:42:06', '2019-04-26 13:42:06'),
(460, 'HOOGLY', 'WEST BENGAL', 41, 19, 1, '2019-04-26 13:42:06', '2019-04-26 13:42:06'),
(461, 'HRIDAYPUR', 'WEST BENGAL', 41, 19, 1, '2019-04-26 13:42:06', '2019-04-26 13:42:06'),
(462, 'ICHAPUR', 'WEST BENGAL', 41, 19, 1, '2019-04-26 13:42:06', '2019-04-26 13:42:06'),
(463, 'JAIGAON', 'WEST BENGAL', 41, 19, 1, '2019-04-26 13:42:06', '2019-04-26 13:42:06'),
(464, 'JHAROBARI BLOCK', 'ASSAM', 4, 18, 1, '2019-04-26 13:42:06', '2019-04-26 13:42:06'),
(465, 'JOKA', 'WEST BENGAL', 41, 19, 1, '2019-04-26 13:42:06', '2019-04-26 13:42:06'),
(466, 'KALNA', 'WEST BENGAL', 41, 19, 1, '2019-04-26 13:42:06', '2019-04-26 13:42:06'),
(467, 'KALYANI', 'WEST BENGAL', 41, 19, 1, '2019-04-26 13:42:06', '2019-04-26 13:42:06'),
(468, 'KANCHRAPARA', 'WEST BENGAL', 41, 19, 1, '2019-04-26 13:42:06', '2019-04-26 13:42:06'),
(469, 'KARIMGANJ', 'ASSAM', 4, 18, 1, '2019-04-26 13:42:06', '2019-04-26 13:42:06'),
(470, 'KARIMPUR', 'WEST BENGAL', 41, 19, 1, '2019-04-26 13:42:06', '2019-04-26 13:42:06'),
(471, 'KATWA', 'WEST BENGAL', 41, 19, 1, '2019-04-26 13:42:06', '2019-04-26 13:42:06'),
(472, 'KHARAGPUR', 'WEST BENGAL', 41, 19, 1, '2019-04-26 13:42:06', '2019-04-26 13:42:06'),
(473, 'KHARDAH', 'WEST BENGAL', 41, 19, 1, '2019-04-26 13:42:06', '2019-04-26 13:42:06'),
(474, 'KOKRAJHAR', 'ASSAM', 4, 18, 1, '2019-04-26 13:42:06', '2019-04-26 13:42:06'),
(475, 'KOLAGHAT', 'WEST BENGAL', 41, 19, 1, '2019-04-26 13:42:06', '2019-04-26 13:42:06'),
(476, 'KONNAGAR', 'WEST BENGAL', 41, 19, 1, '2019-04-26 13:42:06', '2019-04-26 13:42:06'),
(477, 'KRISHNAGAR', 'WEST BENGAL', 41, 19, 1, '2019-04-26 13:42:06', '2019-04-26 13:42:06'),
(478, 'KRISHNANAGAR', 'WEST BENGAL', 41, 19, 1, '2019-04-26 13:42:06', '2019-04-26 13:42:06'),
(479, 'MAL', 'WEST BENGAL', 41, 19, 1, '2019-04-26 13:42:06', '2019-04-26 13:42:06'),
(480, 'MALDA', 'WEST BENGAL', 41, 19, 1, '2019-04-26 13:42:06', '2019-04-26 13:42:06'),
(481, 'MALDAH ', 'WEST BENGAL', 41, 19, 1, '2019-04-26 13:42:06', '2019-04-26 13:42:06'),
(482, 'MATHURAPUR', 'WEST BENGAL', 41, 19, 1, '2019-04-26 13:42:06', '2019-04-26 13:42:06'),
(483, 'MAYAPUR', 'WEST BENGAL', 41, 19, 1, '2019-04-26 13:42:06', '2019-04-26 13:42:06'),
(484, 'MAYNAGURI', 'WEST BENGAL', 41, 19, 1, '2019-04-26 13:42:06', '2019-04-26 13:42:06'),
(485, 'MEMARI', 'WEST BENGAL', 41, 19, 1, '2019-04-26 13:42:06', '2019-04-26 13:42:06'),
(486, 'MIDNAPORE', 'WEST BENGAL', 41, 19, 1, '2019-04-26 13:42:06', '2019-04-26 13:42:06'),
(487, 'MORAN', 'ASSAM', 4, 18, 1, '2019-04-26 13:42:06', '2019-04-26 13:42:06'),
(488, 'MURSHIDABAD', 'WEST BENGAL', 41, 19, 1, '2019-04-26 13:42:06', '2019-04-26 13:42:06'),
(489, 'MURSHIDABAD JIAGANJ', 'WEST BENGAL', 41, 19, 1, '2019-04-26 13:42:06', '2019-04-26 13:42:06'),
(490, 'NAIHATI', 'WEST BENGAL', 41, 19, 1, '2019-04-26 13:42:06', '2019-04-26 13:42:06'),
(491, 'NALBARI', 'ASSAM', 4, 18, 1, '2019-04-26 13:42:06', '2019-04-26 13:42:06'),
(492, 'NAMRUP', 'ASSAM', 4, 18, 1, '2019-04-26 13:42:06', '2019-04-26 13:42:06'),
(493, 'NAZIRA', 'ASSAM', 4, 18, 1, '2019-04-26 13:42:06', '2019-04-26 13:42:06'),
(494, 'PALASI', 'WEST BENGAL', 41, 19, 1, '2019-04-26 13:42:06', '2019-04-26 13:42:06'),
(495, 'PALTA', 'WEST BENGAL', 41, 19, 1, '2019-04-26 13:42:06', '2019-04-26 13:42:06'),
(496, 'PANAGARH', 'WEST BENGAL', 41, 19, 1, '2019-04-26 13:42:06', '2019-04-26 13:42:06'),
(497, 'PANDUA', 'WEST BENGAL', 41, 19, 1, '2019-04-26 13:42:06', '2019-04-26 13:42:06'),
(498, 'PANIHATI', 'WEST BENGAL', 41, 19, 1, '2019-04-26 13:42:06', '2019-04-26 13:42:06'),
(499, 'PATHSALA', 'ASSAM', 4, 18, 1, '2019-04-26 13:42:06', '2019-04-26 13:42:06'),
(500, 'PAYRADANGA', 'WEST BENGAL', 41, 19, 1, '2019-04-26 13:42:06', '2019-04-26 13:42:06'),
(501, 'PHANSIDEWA', 'WEST BENGAL', 41, 19, 1, '2019-04-26 13:42:06', '2019-04-26 13:42:06'),
(502, 'RAHARA', 'WEST BENGAL', 41, 19, 1, '2019-04-26 13:42:06', '2019-04-26 13:42:06'),
(503, 'RAIGANJ', 'WEST BENGAL', 41, 19, 1, '2019-04-26 13:42:06', '2019-04-26 13:42:06'),
(504, 'RAINA', 'WEST BENGAL', 41, 19, 1, '2019-04-26 13:42:06', '2019-04-26 13:42:06'),
(505, 'RAMPURHAT', 'WEST BENGAL', 41, 19, 1, '2019-04-26 13:42:06', '2019-04-26 13:42:06'),
(506, 'RANAGHAT', 'WEST BENGAL', 41, 19, 1, '2019-04-26 13:42:06', '2019-04-26 13:42:06'),
(507, 'RANAGHAT - I', 'WEST BENGAL', 41, 19, 1, '2019-04-26 13:42:06', '2019-04-26 13:42:06'),
(508, 'RANAGHAT-I', 'WEST BENGAL', 41, 19, 1, '2019-04-26 13:42:06', '2019-04-26 13:42:06'),
(509, 'RANGIA BLOCK', 'ASSAM', 4, 18, 1, '2019-04-26 13:42:06', '2019-04-26 13:42:06'),
(510, 'RANI BLOCK', 'ASSAM', 4, 18, 1, '2019-04-26 13:42:06', '2019-04-26 13:42:06'),
(511, 'RANIGANJ', 'WEST BENGAL', 41, 19, 1, '2019-04-26 13:42:06', '2019-04-26 13:42:06'),
(512, 'RISHRA', 'WEST BENGAL', 41, 19, 1, '2019-04-26 13:42:06', '2019-04-26 13:42:06'),
(513, 'SERAMPORE', 'WEST BENGAL', 41, 19, 1, '2019-04-26 13:42:06', '2019-04-26 13:42:06'),
(514, 'SERAMPUR UTTARPARA', 'WEST BENGAL', 41, 19, 1, '2019-04-26 13:42:06', '2019-04-26 13:42:06'),
(515, 'SHYAMNAGAR', 'WEST BENGAL', 41, 19, 1, '2019-04-26 13:42:06', '2019-04-26 13:42:06'),
(516, 'SIBSAGAR', 'ASSAM', 4, 18, 1, '2019-04-26 13:42:06', '2019-04-26 13:42:06'),
(517, 'SINGUR', 'WEST BENGAL', 41, 19, 1, '2019-04-26 13:42:06', '2019-04-26 13:42:06'),
(518, 'SONAMUKHI', 'WEST BENGAL', 41, 19, 1, '2019-04-26 13:42:06', '2019-04-26 13:42:06'),
(519, 'SONAPUR BLOCK', 'ASSAM', 4, 18, 1, '2019-04-26 13:42:06', '2019-04-26 13:42:06'),
(520, 'SONARPUR', 'WEST BENGAL', 41, 19, 1, '2019-04-26 13:42:06', '2019-04-26 13:42:06'),
(521, 'SREERAMPORE', 'WEST BENGAL', 41, 19, 1, '2019-04-26 13:42:06', '2019-04-26 13:42:06'),
(522, 'TAHERPUR', 'WEST BENGAL', 41, 19, 1, '2019-04-26 13:42:06', '2019-04-26 13:42:06'),
(523, 'TARAKESHWAR', 'WEST BENGAL', 41, 19, 1, '2019-04-26 13:42:06', '2019-04-26 13:42:06'),
(524, 'TEZPUR', 'ASSAM', 4, 18, 1, '2019-04-26 13:42:06', '2019-04-26 13:42:06'),
(525, 'THAKURPUKUR MAHESTOLA', 'WEST BENGAL', 41, 19, 1, '2019-04-26 13:42:06', '2019-04-26 13:42:06'),
(526, 'THIU', 'ASSAM', 4, 18, 1, '2019-04-26 13:42:06', '2019-04-26 13:42:06'),
(527, 'TINSUKIA', 'ASSAM', 4, 18, 1, '2019-04-26 13:42:06', '2019-04-26 13:42:06'),
(528, 'TITAGARH', 'WEST BENGAL', 41, 19, 1, '2019-04-26 13:42:06', '2019-04-26 13:42:06'),
(529, 'TUFANGANJ', 'WEST BENGAL', 41, 19, 1, '2019-04-26 13:42:06', '2019-04-26 13:42:06'),
(530, 'ULUBERIA', 'WEST BENGAL', 41, 19, 1, '2019-04-26 13:42:06', '2019-04-26 13:42:06'),
(531, 'UTTARPARA', 'WEST BENGAL', 41, 19, 1, '2019-04-26 13:42:06', '2019-04-26 13:42:06'),
(532, 'ARARIA', 'BIHAR', 5, 10, 1, '2019-04-26 13:42:06', '2019-04-26 13:42:06'),
(533, 'ARRAH', 'BIHAR', 5, 10, 1, '2019-04-26 13:42:06', '2019-04-26 13:42:06'),
(534, 'BANKA', 'BIHAR', 5, 10, 1, '2019-04-26 13:42:06', '2019-04-26 13:42:06'),
(535, 'BARAUNI', 'BIHAR', 5, 10, 1, '2019-04-26 13:42:06', '2019-04-26 13:42:06'),
(536, 'BEGUSARAI', 'BIHAR', 5, 10, 1, '2019-04-26 13:42:06', '2019-04-26 13:42:06'),
(537, 'BHAGALPUR', 'BIHAR', 5, 10, 1, '2019-04-26 13:42:06', '2019-04-26 13:42:06'),
(538, 'BIHAR SHARIF', 'BIHAR', 5, 10, 1, '2019-04-26 13:42:06', '2019-04-26 13:42:06'),
(539, 'BOKARO', 'JHARKHAND', 16, 20, 1, '2019-04-26 13:42:06', '2019-04-26 13:42:06'),
(540, 'BUXAR', 'BIHAR', 5, 10, 1, '2019-04-26 13:42:06', '2019-04-26 13:42:06'),
(541, 'CHAPRA', 'BIHAR', 5, 10, 1, '2019-04-26 13:42:06', '2019-04-26 13:42:06'),
(542, 'DALSINGSARAI', 'BIHAR', 5, 10, 1, '2019-04-26 13:42:06', '2019-04-26 13:42:06'),
(543, 'DARBHANGA', 'BIHAR', 5, 10, 1, '2019-04-26 13:42:06', '2019-04-26 13:42:06'),
(544, 'DEOGHAR', 'JHARKHAND', 16, 20, 1, '2019-04-26 13:42:06', '2019-04-26 13:42:06'),
(545, 'DHANBAD', 'JHARKHAND', 16, 20, 1, '2019-04-26 13:42:06', '2019-04-26 13:42:06'),
(546, 'DINAPUR-CUM-KHAGAUL', 'BIHAR', 5, 10, 1, '2019-04-26 13:42:06', '2019-04-26 13:42:06'),
(547, 'DUMKA', 'JHARKHAND', 16, 20, 1, '2019-04-26 13:42:06', '2019-04-26 13:42:06'),
(548, 'GAYA', 'BIHAR', 5, 10, 1, '2019-04-26 13:42:06', '2019-04-26 13:42:06'),
(549, 'GOPALGANJ', 'BIHAR', 5, 10, 1, '2019-04-26 13:42:06', '2019-04-26 13:42:06'),
(550, 'GUMLA', 'JHARKHAND', 16, 20, 1, '2019-04-26 13:42:06', '2019-04-26 13:42:06'),
(551, 'HAZARIBAG', 'JHARKHAND', 16, 20, 1, '2019-04-26 13:42:06', '2019-04-26 13:42:06'),
(552, 'HAZIPUR', 'BIHAR', 5, 10, 1, '2019-04-26 13:42:06', '2019-04-26 13:42:06'),
(553, 'JAGDISHPUR -BH', 'BIHAR', 5, 10, 1, '2019-04-26 13:42:06', '2019-04-26 13:42:06'),
(554, 'JEHANABAD', 'BIHAR', 5, 10, 1, '2019-04-26 13:42:06', '2019-04-26 13:42:06'),
(555, 'JHARIA', 'JHARKHAND', 16, 20, 1, '2019-04-26 13:42:06', '2019-04-26 13:42:06'),
(556, 'KAHARA', 'BIHAR', 5, 10, 1, '2019-04-26 13:42:06', '2019-04-26 13:42:06'),
(557, 'KATIHAR', 'BIHAR', 5, 10, 1, '2019-04-26 13:42:06', '2019-04-26 13:42:06'),
(558, 'KHAGARIA', 'BIHAR', 5, 10, 1, '2019-04-26 13:42:06', '2019-04-26 13:42:06'),
(559, 'KISHANGANJ', 'BIHAR', 5, 10, 1, '2019-04-26 13:42:06', '2019-04-26 13:42:06'),
(560, 'LAHERIASARAI', 'BIHAR', 5, 10, 1, '2019-04-26 13:42:06', '2019-04-26 13:42:06'),
(561, 'LAKHISARAI', 'BIHAR', 5, 10, 1, '2019-04-26 13:42:06', '2019-04-26 13:42:06'),
(562, 'MADHUBANI', 'BIHAR', 5, 10, 1, '2019-04-26 13:42:06', '2019-04-26 13:42:06'),
(563, 'MOKAMA', 'BIHAR', 5, 10, 1, '2019-04-26 13:42:06', '2019-04-26 13:42:06'),
(564, 'MOTIHARI', 'BIHAR', 5, 10, 1, '2019-04-26 13:42:06', '2019-04-26 13:42:06'),
(565, 'MUNGER', 'BIHAR', 5, 10, 1, '2019-04-26 13:42:06', '2019-04-26 13:42:06'),
(566, 'MUSHAHARI', 'BIHAR', 5, 10, 1, '2019-04-26 13:42:06', '2019-04-26 13:42:06'),
(567, 'NAWADA', 'BIHAR', 5, 10, 1, '2019-04-26 13:42:06', '2019-04-26 13:42:06'),
(568, 'PURNIA', 'BIHAR', 5, 10, 1, '2019-04-26 13:42:06', '2019-04-26 13:42:06'),
(569, 'RAJGIR', 'BIHAR', 5, 10, 1, '2019-04-26 13:42:06', '2019-04-26 13:42:06'),
(570, 'RAMGARH', 'JHARKHAND', 16, 20, 1, '2019-04-26 13:42:06', '2019-04-26 13:42:06'),
(571, 'SAMASTIPUR', 'BIHAR', 5, 10, 1, '2019-04-26 13:42:06', '2019-04-26 13:42:06'),
(572, 'SASARAM', 'BIHAR', 5, 10, 1, '2019-04-26 13:42:06', '2019-04-26 13:42:06'),
(573, 'SIMRI BAKHTIARPUR', 'BIHAR', 5, 10, 1, '2019-04-26 13:42:06', '2019-04-26 13:42:06'),
(574, 'SINDRI', 'JHARKHAND', 16, 20, 1, '2019-04-26 13:42:06', '2019-04-26 13:42:06'),
(575, 'SINGHBHUM', 'JHARKHAND', 16, 20, 1, '2019-04-26 13:42:06', '2019-04-26 13:42:06');
INSERT INTO `cities` (`id`, `name`, `state`, `state_id`, `gst_code`, `status`, `created_at`, `updated_at`) VALUES
(576, 'SITAMARHI', 'BIHAR', 5, 10, 1, '2019-04-26 13:42:06', '2019-04-26 13:42:06'),
(577, 'SIWAN', 'BIHAR', 5, 10, 1, '2019-04-26 13:42:06', '2019-04-26 13:42:06'),
(578, 'UDAKISHANGANJ', 'BIHAR', 5, 10, 1, '2019-04-26 13:42:06', '2019-04-26 13:42:06'),
(579, 'BAHADURGARH ', 'HARYANA', 13, 6, 1, '2019-04-26 13:42:06', '2019-04-26 13:42:06'),
(580, 'BAWAL', 'HARYANA', 13, 6, 1, '2019-04-26 13:42:06', '2019-04-26 13:42:06'),
(581, 'BHIWANI', 'HARYANA', 13, 6, 1, '2019-04-26 13:42:06', '2019-04-26 13:42:06'),
(582, 'BUDHKHERA', 'HARYANA', 13, 6, 1, '2019-04-26 13:42:06', '2019-04-26 13:42:06'),
(583, 'DHARUHERA', 'HARYANA', 13, 6, 1, '2019-04-26 13:42:06', '2019-04-26 13:42:06'),
(584, 'FATEHABAD', 'HARYANA', 13, 6, 1, '2019-04-26 13:42:06', '2019-04-26 13:42:06'),
(585, 'HANSI', 'HARYANA', 13, 6, 1, '2019-04-26 13:42:06', '2019-04-26 13:42:06'),
(586, 'HASANGARH', 'HARYANA', 13, 6, 1, '2019-04-26 13:42:06', '2019-04-26 13:42:06'),
(587, 'HATHIN', 'HARYANA', 13, 6, 1, '2019-04-26 13:42:06', '2019-04-26 13:42:06'),
(588, 'HISSAR', 'HARYANA', 13, 6, 1, '2019-04-26 13:42:06', '2019-04-26 13:42:06'),
(589, 'JHAJJAR', 'HARYANA', 13, 6, 1, '2019-04-26 13:42:06', '2019-04-26 13:42:06'),
(590, 'JIND', 'HARYANA', 13, 6, 1, '2019-04-26 13:42:06', '2019-04-26 13:42:06'),
(591, 'NARWANA', 'HARYANA', 13, 6, 1, '2019-04-26 13:42:06', '2019-04-26 13:42:06'),
(592, 'REWARI', 'HARYANA', 13, 6, 1, '2019-04-26 13:42:06', '2019-04-26 13:42:06'),
(593, 'ROHTAK', 'HARYANA', 13, 6, 1, '2019-04-26 13:42:06', '2019-04-26 13:42:06'),
(594, 'SAMPLA', 'HARYANA', 13, 6, 1, '2019-04-26 13:42:06', '2019-04-26 13:42:06'),
(595, 'SIRSA', 'HARYANA', 13, 6, 1, '2019-04-26 13:42:06', '2019-04-26 13:42:06'),
(596, 'SIWANI', 'HARYANA', 13, 6, 1, '2019-04-26 13:42:06', '2019-04-26 13:42:06'),
(597, 'SOHNA', 'HARYANA', 13, 6, 1, '2019-04-26 13:42:06', '2019-04-26 13:42:06'),
(598, 'TOHANA', 'HARYANA', 13, 6, 1, '2019-04-26 13:42:06', '2019-04-26 13:42:06'),
(599, 'TOSHAM', 'HARYANA', 13, 6, 1, '2019-04-26 13:42:06', '2019-04-26 13:42:06'),
(600, 'ABOHAR', 'PUNJAB', 32, 3, 1, '2019-04-26 13:42:06', '2019-08-02 07:07:22'),
(601, 'BALACHAUR', 'PUNJAB', 32, 3, 1, '2019-04-26 13:42:06', '2019-04-26 13:42:06'),
(602, 'BANGA', 'PUNJAB', 32, 3, 1, '2019-04-26 13:42:06', '2019-04-26 13:42:06'),
(603, 'BARNALA', 'PUNJAB', 32, 3, 1, '2019-04-26 13:42:06', '2019-04-26 13:42:06'),
(604, 'BATALA', 'PUNJAB', 32, 3, 1, '2019-04-26 13:42:06', '2019-04-26 13:42:06'),
(605, 'BATHINDA', 'PUNJAB', 32, 3, 1, '2019-04-26 13:42:06', '2019-04-26 13:42:06'),
(606, 'BHADSON', 'PUNJAB', 32, 3, 1, '2019-04-26 13:42:06', '2019-04-26 13:42:06'),
(607, 'BILASPUR -HP', 'HIMACHAL PRADESH', 14, 2, 1, '2019-04-26 13:42:06', '2019-04-26 13:42:06'),
(608, 'DHARAMSALA', 'HIMACHAL PRADESH', 14, 2, 1, '2019-04-26 13:42:06', '2019-04-26 13:42:06'),
(609, 'FEROJPUR', 'PUNJAB', 32, 3, 1, '2019-04-26 13:42:06', '2019-04-26 13:42:06'),
(610, 'GANAUR', 'HARYANA', 13, 6, 1, '2019-04-26 13:42:06', '2019-04-26 13:42:06'),
(611, 'GOHANA', 'HARYANA', 13, 6, 1, '2019-04-26 13:42:06', '2019-04-26 13:42:06'),
(612, 'GURAYA', 'PUNJAB', 32, 3, 1, '2019-04-26 13:42:06', '2019-04-26 13:42:06'),
(613, 'GURDASPUR', 'PUNJAB', 32, 3, 1, '2019-04-26 13:42:06', '2019-04-26 13:42:06'),
(614, 'HAMIRPUR', 'HIMACHAL PRADESH', 14, 2, 1, '2019-04-26 13:42:06', '2019-04-26 13:42:06'),
(615, 'HOSHIARPUR', 'PUNJAB', 32, 3, 1, '2019-04-26 13:42:06', '2019-04-26 13:42:06'),
(616, 'JAGADHARI', 'HARYANA', 13, 6, 1, '2019-04-26 13:42:06', '2019-04-26 13:42:06'),
(617, 'JAKHAL', 'HARYANA', 13, 6, 1, '2019-04-26 13:42:06', '2019-04-26 13:42:06'),
(618, 'JANDIALA', 'PUNJAB', 32, 3, 1, '2019-04-26 13:42:06', '2019-04-26 13:42:06'),
(619, 'KAITHAL', 'HARYANA', 13, 6, 1, '2019-04-26 13:42:06', '2019-04-26 13:42:06'),
(620, 'KANGRA', 'HIMACHAL PRADESH', 14, 2, 1, '2019-04-26 13:42:06', '2019-04-26 13:42:06'),
(621, 'KAPURTHALA', 'PUNJAB', 32, 3, 1, '2019-04-26 13:42:06', '2019-04-26 13:42:06'),
(622, 'KHANNA', 'PUNJAB', 32, 3, 1, '2019-04-26 13:42:06', '2019-04-26 13:42:06'),
(623, 'KHARAR', 'PUNJAB', 32, 3, 1, '2019-04-26 13:42:06', '2019-04-26 13:42:06'),
(624, 'KHURUSHETRA', 'HARYANA', 13, 6, 1, '2019-04-26 13:42:06', '2019-04-26 13:42:06'),
(625, 'KOHARA', 'PUNJAB', 32, 3, 1, '2019-04-26 13:42:06', '2019-04-26 13:42:06'),
(626, 'KULLU', 'HIMACHAL PRADESH', 14, 2, 1, '2019-04-26 13:42:06', '2019-04-26 13:42:06'),
(627, 'KURUKSHETRA', 'HARYANA', 13, 6, 1, '2019-04-26 13:42:06', '2019-04-26 13:42:06'),
(628, 'LADWA', 'HARYANA', 13, 6, 1, '2019-04-26 13:42:06', '2019-04-26 13:42:06'),
(629, 'LEHRA MOHABBAT', 'PUNJAB', 32, 3, 1, '2019-04-26 13:42:06', '2019-04-26 13:42:06'),
(630, 'MALERKOTLA', 'PUNJAB', 32, 3, 1, '2019-04-26 13:42:06', '2019-04-26 13:42:06'),
(631, 'MANALI', 'HIMACHAL PRADESH', 14, 2, 1, '2019-04-26 13:42:06', '2019-04-26 13:42:06'),
(632, 'MANDI', 'HIMACHAL PRADESH', 14, 2, 1, '2019-04-26 13:42:06', '2019-04-26 13:42:06'),
(633, 'MANSA', 'PUNJAB', 32, 3, 1, '2019-04-26 13:42:06', '2019-04-26 13:42:06'),
(634, 'MOGA', 'PUNJAB', 32, 3, 1, '2019-04-26 13:42:06', '2019-04-26 13:42:06'),
(635, 'MUKTSAR', 'PUNJAB', 32, 3, 1, '2019-04-26 13:42:06', '2019-04-26 13:42:06'),
(636, 'NABHA', 'PUNJAB', 32, 3, 1, '2019-04-26 13:42:06', '2019-04-26 13:42:06'),
(637, 'NAHAN', 'HIMACHAL PRADESH', 14, 2, 1, '2019-04-26 13:42:06', '2019-04-26 13:42:06'),
(638, 'NARAYANGARH', 'HARYANA', 13, 6, 1, '2019-04-26 13:42:06', '2019-04-26 13:42:06'),
(639, 'NAULTHA', 'HARYANA', 13, 6, 1, '2019-04-26 13:42:06', '2019-04-26 13:42:06'),
(640, 'NAWASAHAR', 'PUNJAB', 32, 3, 1, '2019-04-26 13:42:06', '2019-04-26 13:42:06'),
(641, 'NILOKHERI', 'HARYANA', 13, 6, 1, '2019-04-26 13:42:06', '2019-04-26 13:42:06'),
(642, 'NOORPUR', 'HIMACHAL PRADESH', 14, 2, 1, '2019-04-26 13:42:06', '2019-04-26 13:42:06'),
(643, 'PATHANKOT', 'PUNJAB', 32, 3, 1, '2019-04-26 13:42:06', '2019-04-26 13:42:06'),
(644, 'PATRAN', 'PUNJAB', 32, 3, 1, '2019-04-26 13:42:06', '2019-04-26 13:42:06'),
(645, 'PHAGWARA', 'PUNJAB', 32, 3, 1, '2019-04-26 13:42:06', '2019-04-26 13:42:06'),
(646, 'ROPAR', 'PUNJAB', 32, 3, 1, '2019-04-26 13:42:06', '2019-04-26 13:42:06'),
(647, 'RUPNAGAR', 'PUNJAB', 32, 3, 1, '2019-04-26 13:42:06', '2019-04-26 13:42:06'),
(648, 'SADAR', 'HIMACHAL PRADESH', 14, 2, 1, '2019-04-26 13:42:06', '2019-04-26 13:42:06'),
(649, 'SAHNEWAL', 'PUNJAB', 32, 3, 1, '2019-04-26 13:42:06', '2019-04-26 13:42:06'),
(650, 'SAIFIDON', 'HARYANA', 13, 6, 1, '2019-04-26 13:42:06', '2019-04-26 13:42:06'),
(651, 'SAMANA', 'PUNJAB', 32, 3, 1, '2019-04-26 13:42:06', '2019-04-26 13:42:06'),
(652, 'SANGRUR', 'PUNJAB', 32, 3, 1, '2019-04-26 13:42:06', '2019-04-26 13:42:06'),
(653, 'SHIMLA', 'HIMACHAL PRADESH', 14, 2, 1, '2019-04-26 13:42:06', '2019-04-26 13:42:06'),
(654, 'SONIPAT', 'HARYANA', 13, 6, 1, '2019-04-26 13:42:06', '2019-04-26 13:42:06'),
(655, 'SUNAM', 'PUNJAB', 32, 3, 1, '2019-04-26 13:42:06', '2019-04-26 13:42:06'),
(656, 'UNA-HP', 'HIMACHAL PRADESH', 14, 2, 1, '2019-04-26 13:42:06', '2019-04-26 13:42:06'),
(657, 'YAMUNANAGAR', 'HARYANA', 13, 6, 1, '2019-04-26 13:42:06', '2019-04-26 13:42:06'),
(658, 'AJMER', 'RAJASTHAN', 33, 8, 1, '2019-04-26 13:42:06', '2019-04-26 13:42:06'),
(659, 'ALWAR', 'RAJASTHAN', 33, 8, 1, '2019-04-26 13:42:06', '2019-04-26 13:42:06'),
(660, 'BAHROR', 'RAJASTHAN', 33, 8, 1, '2019-04-26 13:42:06', '2019-04-26 13:42:06'),
(661, 'BHILWARA', 'RAJASTHAN', 33, 8, 1, '2019-04-26 13:42:06', '2019-04-26 13:42:06'),
(662, 'JHUJHUNU', 'RAJASTHAN', 33, 8, 1, '2019-04-26 13:42:06', '2019-04-26 13:42:06'),
(663, 'JODHPUR', 'RAJASTHAN', 33, 8, 1, '2019-04-26 13:42:06', '2019-04-26 13:42:06'),
(664, 'KOTA', 'RAJASTHAN', 33, 8, 1, '2019-04-26 13:42:06', '2019-04-26 13:42:06'),
(665, 'NEEMRANA', 'RAJASTHAN', 33, 8, 1, '2019-04-26 13:42:06', '2019-04-26 13:42:06'),
(666, 'PILANI', 'RAJASTHAN', 33, 8, 1, '2019-04-26 13:42:06', '2019-04-26 13:42:06'),
(667, 'UDAIPUR ', 'RAJASTHAN', 33, 8, 1, '2019-04-26 13:42:06', '2019-04-26 13:42:06'),
(668, 'HODAL', 'HARYANA', 13, 6, 1, '2019-04-26 13:42:06', '2019-04-26 13:42:06'),
(669, 'PALWAL', 'HARYANA', 13, 6, 1, '2019-04-26 13:42:06', '2019-04-26 13:42:06'),
(670, 'ALIGARH', 'UTTAR PRADESH', 38, 9, 1, '2019-04-26 13:42:06', '2019-04-26 13:42:06'),
(671, 'AMETHI', 'UTTAR PRADESH', 38, 9, 1, '2019-04-26 13:42:06', '2019-04-26 13:42:06'),
(672, 'BADAUN', 'UTTAR PRADESH', 38, 9, 1, '2019-04-26 13:42:06', '2019-04-26 13:42:06'),
(673, 'BAGPAT', 'UTTAR PRADESH', 38, 9, 1, '2019-04-26 13:42:06', '2019-04-26 13:42:06'),
(674, 'BALRAMPUR', 'UTTAR PRADESH', 38, 9, 1, '2019-04-26 13:42:06', '2019-04-26 13:42:06'),
(675, 'BARABANKI', 'UTTAR PRADESH', 38, 9, 1, '2019-04-26 13:42:06', '2019-04-26 13:42:06'),
(676, 'BAREILLY', 'UTTAR PRADESH', 38, 9, 1, '2019-04-26 13:42:06', '2019-04-26 13:42:06'),
(677, 'BASTI', 'UTTAR PRADESH', 38, 9, 1, '2019-04-26 13:42:06', '2019-04-26 13:42:06'),
(678, 'BEHAT', 'UTTAR PRADESH', 38, 9, 1, '2019-04-26 13:42:06', '2019-04-26 13:42:06'),
(679, 'BHADOI', 'UTTAR PRADESH', 38, 9, 1, '2019-04-26 13:42:06', '2019-04-26 13:42:06'),
(680, 'BHAGNIPUR', 'UTTAR PRADESH', 38, 9, 1, '2019-04-26 13:42:06', '2019-04-26 13:42:06'),
(681, 'BIJNORE', 'UTTAR PRADESH', 38, 9, 1, '2019-04-26 13:42:06', '2019-04-26 13:42:06'),
(682, 'BILTHRA', 'UTTAR PRADESH', 38, 9, 1, '2019-04-26 13:42:06', '2019-04-26 13:42:06'),
(683, 'BULANDSHAHAR', 'UTTAR PRADESH', 38, 9, 1, '2019-04-26 13:42:06', '2019-04-26 13:42:06'),
(684, 'CHAUBEPUR', 'UTTAR PRADESH', 38, 9, 1, '2019-04-26 13:42:06', '2019-04-26 13:42:06'),
(685, 'CHAUDASI', 'UTTAR PRADESH', 38, 9, 1, '2019-04-26 13:42:06', '2019-04-26 13:42:06'),
(686, 'DADRI', 'UTTAR PRADESH', 38, 9, 1, '2019-04-26 13:42:06', '2019-04-26 13:42:06'),
(687, 'DEORIA', 'UTTAR PRADESH', 38, 9, 1, '2019-04-26 13:42:06', '2019-04-26 13:42:06'),
(688, 'DHAMPUR', 'UTTAR PRADESH', 38, 9, 1, '2019-04-26 13:42:06', '2019-04-26 13:42:06'),
(689, 'DUDHI', 'UTTAR PRADESH', 38, 9, 1, '2019-04-26 13:42:06', '2019-04-26 13:42:06'),
(690, 'ETAWAH', 'UTTAR PRADESH', 38, 9, 1, '2019-04-26 13:42:06', '2019-04-26 13:42:06'),
(691, 'FAIZABAD', 'UTTAR PRADESH', 38, 9, 1, '2019-04-26 13:42:06', '2019-04-26 13:42:06'),
(692, 'FARRUKHABAD', 'UTTAR PRADESH', 38, 9, 1, '2019-04-26 13:42:06', '2019-04-26 13:42:06'),
(693, 'FATEHGARH', 'UTTAR PRADESH', 38, 9, 1, '2019-04-26 13:42:06', '2019-04-26 13:42:06'),
(694, 'FATEHPUR', 'UTTAR PRADESH', 38, 9, 1, '2019-04-26 13:42:06', '2019-04-26 13:42:06'),
(695, 'FATHEPUR', 'UTTAR PRADESH', 38, 9, 1, '2019-04-26 13:42:06', '2019-04-26 13:42:06'),
(696, 'FIROZABAD', 'UTTAR PRADESH', 38, 9, 1, '2019-04-26 13:42:06', '2019-04-26 13:42:06'),
(697, 'GARMUKTESWAR', 'UTTAR PRADESH', 38, 9, 1, '2019-04-26 13:42:06', '2019-04-26 13:42:06'),
(698, 'GAURYGANJ', 'UTTAR PRADESH', 38, 9, 1, '2019-04-26 13:42:06', '2019-04-26 13:42:06'),
(699, 'GHAZIPUR', 'UTTAR PRADESH', 38, 9, 1, '2019-04-26 13:42:06', '2019-04-26 13:42:06'),
(700, 'GORAKHPUR', 'UTTAR PRADESH', 38, 9, 1, '2019-04-26 13:42:06', '2019-04-26 13:42:06'),
(701, 'GREATER NOIDA', 'UTTAR PRADESH', 38, 9, 1, '2019-04-26 13:42:06', '2019-04-26 13:42:06'),
(702, 'HALDWANI', 'Uttrakhand', 39, 5, 1, '2019-04-26 13:42:06', '2019-04-26 13:42:06'),
(703, 'HAMIRPUR-UP', 'UTTAR PRADESH', 38, 9, 1, '2019-04-26 13:42:06', '2019-04-26 13:42:06'),
(704, 'HAPUR', 'UTTAR PRADESH', 38, 9, 1, '2019-04-26 13:42:06', '2019-04-26 13:42:06'),
(705, 'HARDOI', 'UTTAR PRADESH', 38, 9, 1, '2019-04-26 13:42:06', '2019-04-26 13:42:06'),
(706, 'HATHRAS', 'UTTAR PRADESH', 38, 9, 1, '2019-04-26 13:42:06', '2019-04-26 13:42:06'),
(707, 'JAGDISHPUR - UP', 'UTTAR PRADESH', 38, 9, 1, '2019-04-26 13:42:06', '2019-04-26 13:42:06'),
(708, 'JAINPUR', 'UTTAR PRADESH', 38, 9, 1, '2019-04-26 13:42:06', '2019-04-26 13:42:06'),
(709, 'JAIS', 'UTTAR PRADESH', 38, 9, 1, '2019-04-26 13:42:06', '2019-04-26 13:42:06'),
(710, 'JAUNPUR', 'UTTAR PRADESH', 38, 9, 1, '2019-04-26 13:42:06', '2019-04-26 13:42:06'),
(711, 'JHANSI', 'UTTAR PRADESH', 38, 9, 1, '2019-04-26 13:42:06', '2019-04-26 13:42:06'),
(712, 'KANNAUJ', 'UTTAR PRADESH', 38, 9, 1, '2019-04-26 13:42:06', '2019-04-26 13:42:06'),
(713, 'KASGANJ', 'UTTAR PRADESH', 38, 9, 1, '2019-04-26 13:42:06', '2019-04-26 13:42:06'),
(714, 'KATHGODAM', 'Uttrakhand', 39, 5, 1, '2019-04-26 13:42:06', '2019-04-26 13:42:06'),
(715, 'KHURJA', 'UTTAR PRADESH', 38, 9, 1, '2019-04-26 13:42:06', '2019-04-26 13:42:06'),
(716, 'KICHHA', 'Uttrakhand', 39, 5, 1, '2019-04-26 13:42:06', '2019-04-26 13:42:06'),
(717, 'KOTDWAR', 'Uttrakhand', 39, 5, 1, '2019-04-26 13:42:06', '2019-04-26 13:42:06'),
(718, 'KUSHINAGAR', 'UTTAR PRADESH', 38, 9, 1, '2019-04-26 13:42:06', '2019-04-26 13:42:06'),
(719, 'LAKHIMPUR', 'ASSAM', 4, 18, 1, '2019-04-26 13:42:06', '2019-04-26 13:42:06'),
(720, 'LAKHIMPUR KHERI', 'UTTAR PRADESH', 38, 9, 1, '2019-04-26 13:42:06', '2019-04-26 13:42:06'),
(721, 'LAKSAR', 'Uttrakhand', 39, 5, 1, '2019-04-26 13:42:06', '2019-04-26 13:42:06'),
(722, 'LALITPUR', 'UTTAR PRADESH', 38, 9, 1, '2019-04-26 13:42:06', '2019-04-26 13:42:06'),
(723, 'LONI - UP', 'UTTAR PRADESH', 38, 9, 1, '2019-04-26 13:42:06', '2019-04-26 13:42:06'),
(724, 'MALIHABAD', 'UTTAR PRADESH', 38, 9, 1, '2019-04-26 13:42:06', '2019-04-26 13:42:06'),
(725, 'MANKAPUR', 'UTTAR PRADESH', 38, 9, 1, '2019-04-26 13:42:06', '2019-04-26 13:42:06'),
(726, 'MATHURA', 'UTTAR PRADESH', 38, 9, 1, '2019-04-26 13:42:06', '2019-04-26 13:42:06'),
(727, 'MAU', 'UTTAR PRADESH', 38, 9, 1, '2019-04-26 13:42:06', '2019-04-26 13:42:06'),
(728, 'MIRZAPUR', 'UTTAR PRADESH', 38, 9, 1, '2019-04-26 13:42:06', '2019-04-26 13:42:06'),
(729, 'MOHANLALGANJ', 'UTTAR PRADESH', 38, 9, 1, '2019-04-26 13:42:06', '2019-04-26 13:42:06'),
(730, 'MUGALSARAI', 'UTTAR PRADESH', 38, 9, 1, '2019-04-26 13:42:06', '2019-04-26 13:42:06'),
(731, 'MUNSIYARI', 'Uttrakhand', 39, 5, 1, '2019-04-26 13:42:06', '2019-04-26 13:42:06'),
(732, 'MUSAFIRKHANA', 'UTTAR PRADESH', 38, 9, 1, '2019-04-26 13:42:06', '2019-04-26 13:42:06'),
(733, 'MUZAFFARNAGAR', 'UTTAR PRADESH', 38, 9, 1, '2019-04-26 13:42:06', '2019-04-26 13:42:06'),
(734, 'NAINITAL', 'Uttrakhand', 39, 5, 1, '2019-04-26 13:42:06', '2019-04-26 13:42:06'),
(735, 'NAJIBABAD', 'UTTAR PRADESH', 38, 9, 1, '2019-04-26 13:42:06', '2019-04-26 13:42:06'),
(736, 'NANITAL', 'Uttrakhand', 39, 5, 1, '2019-04-26 13:42:06', '2019-04-26 13:42:06'),
(737, 'NAWABGANJ', 'UTTAR PRADESH', 38, 9, 1, '2019-04-26 13:42:06', '2019-04-26 13:42:06'),
(738, 'ORAI', 'UTTAR PRADESH', 38, 9, 1, '2019-04-26 13:42:06', '2019-04-26 13:42:06'),
(739, 'PADARUNA', 'UTTAR PRADESH', 38, 9, 1, '2019-04-26 13:42:06', '2019-04-26 13:42:06'),
(740, 'PHOOLPUR', 'UTTAR PRADESH', 38, 9, 1, '2019-04-26 13:42:06', '2019-04-26 13:42:06'),
(741, 'PILIBHIT', 'Uttrakhand', 39, 5, 1, '2019-04-26 13:42:06', '2019-04-26 13:42:06'),
(742, 'PITHORAGARH', 'Uttrakhand', 39, 5, 1, '2019-04-26 13:42:06', '2019-04-26 13:42:06'),
(743, 'PRATAPGARH', 'UTTAR PRADESH', 38, 9, 1, '2019-04-26 13:42:06', '2019-04-26 13:42:06'),
(744, 'RAEBARELI', 'UTTAR PRADESH', 38, 9, 1, '2019-04-26 13:42:06', '2019-04-26 13:42:06'),
(745, 'RAM SANEHI GHAT', 'UTTAR PRADESH', 38, 9, 1, '2019-04-26 13:42:06', '2019-04-26 13:42:06'),
(746, 'RAMNAGAR', 'UTTAR PRADESH', 38, 9, 1, '2019-04-26 13:42:06', '2019-04-26 13:42:06'),
(747, 'RAMPUR', 'UTTAR PRADESH', 38, 9, 1, '2019-04-26 13:42:06', '2019-04-26 13:42:06'),
(748, 'RANIKHET', 'Uttrakhand', 39, 5, 1, '2019-04-26 13:42:06', '2019-04-26 13:42:06'),
(749, 'RISHIKESH', 'Uttrakhand', 39, 5, 1, '2019-04-26 13:42:06', '2019-04-26 13:42:06'),
(750, 'ROBERTSGANJ', 'UTTAR PRADESH', 38, 9, 1, '2019-04-26 13:42:06', '2019-04-26 13:42:06'),
(751, 'SAHARANPUR', 'UTTAR PRADESH', 38, 9, 1, '2019-04-26 13:42:06', '2019-04-26 13:42:06'),
(752, 'SANT RAVIDAS NAGAR', 'UTTAR PRADESH', 38, 9, 1, '2019-04-26 13:42:06', '2019-04-26 13:42:06'),
(753, 'SARNATH', 'UTTAR PRADESH', 38, 9, 1, '2019-04-26 13:42:06', '2019-04-26 13:42:06'),
(754, 'SHAHJAHANPUR', 'UTTAR PRADESH', 38, 9, 1, '2019-04-26 13:42:06', '2019-04-26 13:42:06'),
(755, 'SHAMLI', 'UTTAR PRADESH', 38, 9, 1, '2019-04-26 13:42:06', '2019-04-26 13:42:06'),
(756, 'SIKANDRABAD', 'UTTAR PRADESH', 38, 9, 1, '2019-04-26 13:42:06', '2019-04-26 13:42:06'),
(757, 'SIRATHU', 'UTTAR PRADESH', 38, 9, 1, '2019-04-26 13:42:06', '2019-04-26 13:42:06'),
(758, 'SITAPUR', 'UTTAR PRADESH', 38, 9, 1, '2019-04-26 13:42:06', '2019-04-26 13:42:06'),
(759, 'SITARGANJ', 'UTTAR PRADESH', 38, 9, 1, '2019-04-26 13:42:06', '2019-04-26 13:42:06'),
(760, 'SULTANPUR', 'UTTAR PRADESH', 38, 9, 1, '2019-04-26 13:42:06', '2019-04-26 13:42:06'),
(761, 'SURAJPUR', 'UTTAR PRADESH', 38, 9, 1, '2019-04-26 13:42:06', '2019-04-26 13:42:06'),
(762, 'TANAKPUR', 'Uttrakhand', 39, 5, 1, '2019-04-26 13:42:06', '2019-04-26 13:42:06'),
(763, 'TANDA', 'UTTAR PRADESH', 38, 9, 1, '2019-04-26 13:42:06', '2019-04-26 13:42:06'),
(764, 'UNCHAHAR', 'UTTAR PRADESH', 38, 9, 1, '2019-04-26 13:42:06', '2019-04-26 13:42:06'),
(765, 'UNNAO', 'UTTAR PRADESH', 38, 9, 1, '2019-04-26 13:42:06', '2019-04-26 13:42:06'),
(766, 'VRINOIDAVAN', 'UTTAR PRADESH', 38, 9, 1, '2019-04-26 13:42:06', '2019-04-26 13:42:06'),
(767, 'ARASIKERE', 'KARNATAKA', 17, 29, 1, '2019-04-26 13:42:06', '2019-04-26 13:42:06'),
(768, 'ARSIKERE', 'KARNATAKA', 17, 29, 1, '2019-04-26 13:42:06', '2019-04-26 13:42:06'),
(769, 'ATHANI', 'KARNATAKA', 17, 29, 1, '2019-04-26 13:42:06', '2019-04-26 13:42:06'),
(770, 'BANGARAPET', 'KARNATAKA', 17, 29, 1, '2019-04-26 13:42:06', '2019-04-26 13:42:06'),
(771, 'BANTVAL', 'KARNATAKA', 17, 29, 1, '2019-04-26 13:42:06', '2019-04-26 13:42:06'),
(772, 'BANTWAL', 'KARNATAKA', 17, 29, 1, '2019-04-26 13:42:06', '2019-04-26 13:42:06'),
(773, 'BELLARY', 'KARNATAKA', 17, 29, 1, '2019-04-26 13:42:06', '2019-04-26 13:42:06'),
(774, 'BELTHANGADY', 'KARNATAKA', 17, 29, 1, '2019-04-26 13:42:06', '2019-04-26 13:42:06'),
(775, 'BRAHMAVAR', 'KARNATAKA', 17, 29, 1, '2019-04-26 13:42:06', '2019-04-26 13:42:06'),
(776, 'BUDIGERE', 'KARNATAKA', 17, 29, 1, '2019-04-26 13:42:06', '2019-04-26 13:42:06'),
(777, 'BYADGI', 'KARNATAKA', 17, 29, 1, '2019-04-26 13:42:06', '2019-04-26 13:42:06'),
(778, 'BYNDOOR', 'KARNATAKA', 17, 29, 1, '2019-04-26 13:42:06', '2019-04-26 13:42:06'),
(779, 'CHAMARAJANAGARA', 'KARNATAKA', 17, 29, 1, '2019-04-26 13:42:06', '2019-04-26 13:42:06'),
(780, 'CHAMRAJNAGAR', 'KARNATAKA', 17, 29, 1, '2019-04-26 13:42:06', '2019-04-26 13:42:06'),
(781, 'CHANNAPATNA', 'KARNATAKA', 17, 29, 1, '2019-04-26 13:42:06', '2019-04-26 13:42:06'),
(782, 'CHANNARAYAPATNA', 'KARNATAKA', 17, 29, 1, '2019-04-26 13:42:06', '2019-04-26 13:42:06'),
(783, 'CHICKBALLAPUR', 'KARNATAKA', 17, 29, 1, '2019-04-26 13:42:06', '2019-04-26 13:42:06'),
(784, 'CHIKKODI', 'KARNATAKA', 17, 29, 1, '2019-04-26 13:42:06', '2019-04-26 13:42:06'),
(785, 'CHITRADURGA', 'KARNATAKA', 17, 29, 1, '2019-04-26 13:42:06', '2019-04-26 13:42:06'),
(786, 'DAKSHINA KANNADA', 'KARNATAKA', 17, 29, 1, '2019-04-26 13:42:06', '2019-04-26 13:42:06'),
(787, 'DAVANGARE', 'KARNATAKA', 17, 29, 1, '2019-04-26 13:42:06', '2019-04-26 13:42:06'),
(788, 'DEVANAHALLI', 'KARNATAKA', 17, 29, 1, '2019-04-26 13:42:06', '2019-04-26 13:42:06'),
(789, 'DHARWAD', 'KARNATAKA', 17, 29, 1, '2019-04-26 13:42:06', '2019-04-26 13:42:06'),
(790, 'DODDABALLAPURA', 'KARNATAKA', 17, 29, 1, '2019-04-26 13:42:06', '2019-04-26 13:42:06'),
(791, 'GAURIBIDANUR', 'KARNATAKA', 17, 29, 1, '2019-04-26 13:42:06', '2019-04-26 13:42:06'),
(792, 'GOKAK', 'KARNATAKA', 17, 29, 1, '2019-04-26 13:42:06', '2019-04-26 13:42:06'),
(793, 'GUBBI', 'KARNATAKA', 17, 29, 1, '2019-04-26 13:42:06', '2019-04-26 13:42:06'),
(794, 'GUNDLUPET', 'KARNATAKA', 17, 29, 1, '2019-04-26 13:42:06', '2019-04-26 13:42:06'),
(795, 'HASSAN', 'KARNATAKA', 17, 29, 1, '2019-04-26 13:42:06', '2019-04-26 13:42:06'),
(796, 'HAVERI', 'KARNATAKA', 17, 29, 1, '2019-04-26 13:42:06', '2019-04-26 13:42:06'),
(797, 'HIREHALI', 'KARNATAKA', 17, 29, 1, '2019-04-26 13:42:06', '2019-04-26 13:42:06'),
(798, 'HOLENARSIPUR', 'KARNATAKA', 17, 29, 1, '2019-04-26 13:42:06', '2019-04-26 13:42:06'),
(799, 'HOSAKOTE', 'KARNATAKA', 17, 29, 1, '2019-04-26 13:42:06', '2019-04-26 13:42:06'),
(800, 'HOSKOTE', 'KARNATAKA', 17, 29, 1, '2019-04-26 13:42:06', '2019-04-26 13:42:06'),
(801, 'HUNGUND', 'GOA', 11, 30, 1, '2019-04-26 13:42:06', '2019-04-26 13:42:06'),
(802, 'HUNSUR', 'KARNATAKA', 17, 29, 1, '2019-04-26 13:42:06', '2019-04-26 13:42:06'),
(803, 'KALGHATGI', 'KARNATAKA', 17, 29, 1, '2019-04-26 13:42:06', '2019-04-26 13:42:06'),
(804, 'KANAKAPURA', 'KARNATAKA', 17, 29, 1, '2019-04-26 13:42:06', '2019-04-26 13:42:06'),
(805, 'KARKALA', 'KARNATAKA', 17, 29, 1, '2019-04-26 13:42:06', '2019-04-26 13:42:06'),
(806, 'KARWAR', 'KARNATAKA', 17, 29, 1, '2019-04-26 13:42:06', '2019-04-26 13:42:06'),
(807, 'KATIPALLIA', 'KARNATAKA', 17, 29, 1, '2019-04-26 13:42:06', '2019-04-26 13:42:06'),
(808, 'KOLAR', 'KARNATAKA', 17, 29, 1, '2019-04-26 13:42:06', '2019-04-26 13:42:06'),
(809, 'KOLLEGAL', 'KARNATAKA', 17, 29, 1, '2019-04-26 13:42:06', '2019-04-26 13:42:06'),
(810, 'KOPPA', 'KARNATAKA', 17, 29, 1, '2019-04-26 13:42:06', '2019-04-26 13:42:06'),
(811, 'KRISHNARAJANAGARA', 'KARNATAKA', 17, 29, 1, '2019-04-26 13:42:06', '2019-04-26 13:42:06'),
(812, 'KUMBALGODU', 'KARNATAKA', 17, 29, 1, '2019-04-26 13:42:06', '2019-04-26 13:42:06'),
(813, 'KUMTA', 'KARNATAKA', 17, 29, 1, '2019-04-26 13:42:06', '2019-04-26 13:42:06'),
(814, 'KUNDAPURA', 'KARNATAKA', 17, 29, 1, '2019-04-26 13:42:06', '2019-04-26 13:42:06'),
(815, 'KUNIGAL', 'KARNATAKA', 17, 29, 1, '2019-04-26 13:42:06', '2019-04-26 13:42:06'),
(816, 'MADDUR', 'KARNATAKA', 17, 29, 1, '2019-04-26 13:42:06', '2019-04-26 13:42:06'),
(817, 'MADHUGIRI', 'KARNATAKA', 17, 29, 1, '2019-04-26 13:42:06', '2019-04-26 13:42:06'),
(818, 'MADIKERI', 'KARNATAKA', 17, 29, 1, '2019-04-26 13:42:06', '2019-04-26 13:42:06'),
(819, 'MAGADI', 'KARNATAKA', 17, 29, 1, '2019-04-26 13:42:06', '2019-04-26 13:42:06'),
(820, 'MALAVALLI', 'KARNATAKA', 17, 29, 1, '2019-04-26 13:42:06', '2019-04-26 13:42:06'),
(821, 'MALUR', 'KARNATAKA', 17, 29, 1, '2019-04-26 13:42:06', '2019-04-26 13:42:06'),
(822, 'MANDAY', 'KARNATAKA', 17, 29, 1, '2019-04-26 13:42:06', '2019-04-26 13:42:06'),
(823, 'MANDYA', 'KARNATAKA', 17, 29, 1, '2019-04-26 13:42:06', '2019-04-26 13:42:06'),
(824, 'MANIPAL ', 'KARNATAKA', 17, 29, 1, '2019-04-26 13:42:06', '2019-04-26 13:42:06'),
(825, 'MUDIGERE', 'KARNATAKA', 17, 29, 1, '2019-04-26 13:42:06', '2019-04-26 13:42:06'),
(826, 'MULKI', 'KARNATAKA', 17, 29, 1, '2019-04-26 13:42:06', '2019-04-26 13:42:06'),
(827, 'NANJANGUD', 'KARNATAKA', 17, 29, 1, '2019-04-26 13:42:06', '2019-04-26 13:42:06'),
(828, 'NIPPANI', 'KARNATAKA', 17, 29, 1, '2019-04-26 13:42:06', '2019-04-26 13:42:06'),
(829, 'PUTTUR', 'KARNATAKA', 17, 29, 1, '2019-04-26 13:42:06', '2019-04-26 13:42:06'),
(830, 'RAMANAGAR', 'KARNATAKA', 17, 29, 1, '2019-04-26 13:42:06', '2019-04-26 13:42:06'),
(831, 'RAMANAGARA', 'KARNATAKA', 17, 29, 1, '2019-04-26 13:42:06', '2019-04-26 13:42:06'),
(832, 'SAKLESHPUR', 'KARNATAKA', 17, 29, 1, '2019-04-26 13:42:06', '2019-04-26 13:42:06'),
(833, 'SAMPGAON', 'KARNATAKA', 17, 29, 1, '2019-04-26 13:42:06', '2019-04-26 13:42:06'),
(834, 'SANKESHWAR', 'KARNATAKA', 17, 29, 1, '2019-04-26 13:42:06', '2019-04-26 13:42:06'),
(835, 'SHIMOGA', 'KARNATAKA', 17, 29, 1, '2019-04-26 13:42:06', '2019-04-26 13:42:06'),
(836, 'SIRA', 'KARNATAKA', 17, 29, 1, '2019-04-26 13:42:06', '2019-04-26 13:42:06'),
(837, 'SOMWARPET', 'KARNATAKA', 17, 29, 1, '2019-04-26 13:42:06', '2019-04-26 13:42:06'),
(838, 'SRIRANGAPATNA', 'KARNATAKA', 17, 29, 1, '2019-04-26 13:42:06', '2019-04-26 13:42:06'),
(839, 'SULYA', 'KARNATAKA', 17, 29, 1, '2019-04-26 13:42:06', '2019-04-26 13:42:06'),
(840, 'T NARASIPURA', 'KARNATAKA', 17, 29, 1, '2019-04-26 13:42:06', '2019-04-26 13:42:06'),
(841, 'TIPTUR', 'KARNATAKA', 17, 29, 1, '2019-04-26 13:42:06', '2019-04-26 13:42:06'),
(842, 'TURUVEKERE', 'KARNATAKA', 17, 29, 1, '2019-04-26 13:42:06', '2019-04-26 13:42:06'),
(843, 'UDUPI', 'KARNATAKA', 17, 29, 1, '2019-04-26 13:42:06', '2019-04-26 13:42:06'),
(844, 'UPPINANGADY', 'KARNATAKA', 17, 29, 1, '2019-04-26 13:42:06', '2019-04-26 13:42:06'),
(845, 'VIRAJPET', 'KARNATAKA', 17, 29, 1, '2019-04-26 13:42:06', '2019-04-26 13:42:06'),
(846, 'AMBATTUR', 'TAMILNADU', 35, 33, 1, '2019-04-26 13:42:06', '2019-04-26 13:42:06'),
(847, 'ANOIDARKUPPAM', 'TAMILNADU', 35, 33, 1, '2019-04-26 13:42:06', '2019-04-26 13:42:06'),
(848, 'ARAKONAM', 'TAMILNADU', 35, 33, 1, '2019-04-26 13:42:06', '2019-04-26 13:42:06'),
(849, 'ARCOT', 'TAMILNADU', 35, 33, 1, '2019-04-26 13:42:06', '2019-04-26 13:42:06'),
(850, 'BANDIKAVANUR', 'TAMILNADU', 35, 33, 1, '2019-04-26 13:42:06', '2019-04-26 13:42:06'),
(851, 'CHENGALPATTU', 'TAMILNADU', 35, 33, 1, '2019-04-26 13:42:06', '2019-04-26 13:42:06'),
(852, 'CHIDAMBALAARAM', 'TAMILNADU', 35, 33, 1, '2019-04-26 13:42:06', '2019-04-26 13:42:06'),
(853, 'CUDDALORE', 'TAMILNADU', 35, 33, 1, '2019-04-26 13:42:06', '2019-04-26 13:42:06'),
(854, 'ENNORE', 'TAMILNADU', 35, 33, 1, '2019-04-26 13:42:06', '2019-04-26 13:42:06'),
(855, 'GUDIYATHAM', 'TAMILNADU', 35, 33, 1, '2019-04-26 13:42:06', '2019-04-26 13:42:06'),
(856, 'GUDUVANCHERI', 'TAMILNADU', 35, 33, 1, '2019-04-26 13:42:06', '2019-04-26 13:42:06'),
(857, 'GUDUVANCHERRY', 'TAMILNADU', 35, 33, 1, '2019-04-26 13:42:06', '2019-04-26 13:42:06'),
(858, 'GUMMIDIPOONDI', 'TAMILNADU', 35, 33, 1, '2019-04-26 13:42:06', '2019-04-26 13:42:06'),
(859, 'KALPAKKAM', 'TAMILNADU', 35, 33, 1, '2019-04-26 13:42:06', '2019-04-26 13:42:06'),
(860, 'KANCHIPURAM', 'TAMILNADU', 35, 33, 1, '2019-04-26 13:42:06', '2019-04-26 13:42:06'),
(861, 'KAVARAPATTAI', 'TAMILNADU', 35, 33, 1, '2019-04-26 13:42:06', '2019-04-26 13:42:06'),
(862, 'MADURANTAKAM', 'TAMILNADU', 35, 33, 1, '2019-04-26 13:42:06', '2019-04-26 13:42:06'),
(863, 'MAHABALIPURAM', 'TAMILNADU', 35, 33, 1, '2019-04-26 13:42:06', '2019-04-26 13:42:06'),
(864, 'MARAIMALAI NAGAR', 'TAMILNADU', 35, 33, 1, '2019-04-26 13:42:06', '2019-04-26 13:42:06'),
(866, 'MINJUR', 'TAMILNADU', 35, 33, 1, '2019-04-26 13:42:06', '2019-04-26 13:42:06'),
(867, 'NEYVELI', 'TAMILNADU', 35, 33, 1, '2019-04-26 13:42:06', '2019-04-26 13:42:06'),
(868, 'PADUR', 'TAMILNADU', 35, 33, 1, '2019-04-26 13:42:06', '2019-04-26 13:42:06'),
(869, 'PONNERI', 'TAMILNADU', 35, 33, 1, '2019-04-26 13:42:06', '2019-04-26 13:42:06'),
(870, 'PONNERY', 'TAMILNADU', 35, 33, 1, '2019-04-26 13:42:06', '2019-04-26 13:42:06'),
(871, 'POOCHIATHIPATTU', 'TAMILNADU', 35, 33, 1, '2019-04-26 13:42:06', '2019-04-26 13:42:06'),
(872, 'RANIPET ', 'TAMILNADU', 35, 33, 1, '2019-04-26 13:42:06', '2019-04-26 13:42:06'),
(873, 'SIRUSERI', 'TAMILNADU', 35, 33, 1, '2019-04-26 13:42:06', '2019-04-26 13:42:06'),
(874, 'THALLY', 'TAMILNADU', 35, 33, 1, '2019-04-26 13:42:06', '2019-04-26 13:42:06'),
(875, 'THOGARAPALLI', 'TAMILNADU', 35, 33, 1, '2019-04-26 13:42:06', '2019-04-26 13:42:06'),
(876, 'TINDIVANAM', 'TAMILNADU', 35, 33, 1, '2019-04-26 13:42:06', '2019-04-26 13:42:06'),
(877, 'TIRUCHITRAMBALAALAM', 'TAMILNADU', 35, 33, 1, '2019-04-26 13:42:06', '2019-04-26 13:42:06'),
(878, 'TIRUKANOIDALAM', 'TAMILNADU', 35, 33, 1, '2019-04-26 13:42:06', '2019-04-26 13:42:06'),
(879, 'TIRUPATTUR', 'TAMILNADU', 35, 33, 1, '2019-04-26 13:42:06', '2019-04-26 13:42:06'),
(880, 'TIRUVANNAMALAI', 'TAMILNADU', 35, 33, 1, '2019-04-26 13:42:06', '2019-04-26 13:42:06'),
(881, 'VANIYAMBADI', 'TAMILNADU', 35, 33, 1, '2019-04-26 13:42:06', '2019-04-26 13:42:06'),
(882, 'VELLORE', 'TAMILNADU', 35, 33, 1, '2019-04-26 13:42:06', '2019-04-26 13:42:06'),
(883, 'VILLUPURAM', 'TAMILNADU', 35, 33, 1, '2019-04-26 13:42:06', '2019-04-26 13:42:06'),
(884, 'VILUPPURAM', 'TAMILNADU', 35, 33, 1, '2019-04-26 13:42:06', '2019-04-26 13:42:06'),
(885, 'VIRUDHACHALAM', 'TAMILNADU', 35, 33, 1, '2019-04-26 13:42:06', '2019-04-26 13:42:06'),
(886, 'WALAJAPET', 'TAMILNADU', 35, 33, 1, '2019-04-26 13:42:06', '2019-04-26 13:42:06'),
(887, 'WALLAJAH', 'TAMILNADU', 35, 33, 1, '2019-04-26 13:42:06', '2019-04-26 13:42:06'),
(888, 'ALANGUDI', 'TAMILNADU', 35, 33, 1, '2019-04-26 13:42:06', '2019-04-26 13:42:06'),
(889, 'ALANGULAM', 'TAMILNADU', 35, 33, 1, '2019-04-26 13:42:06', '2019-04-26 13:42:06'),
(890, 'AMBASAMUDRAM', 'TAMILNADU', 35, 33, 1, '2019-04-26 13:42:06', '2019-04-26 13:42:06'),
(891, 'ARANTANGI', 'TAMILNADU', 35, 33, 1, '2019-04-26 13:42:06', '2019-04-26 13:42:06'),
(892, 'ARIYALUR', 'TAMILNADU', 35, 33, 1, '2019-04-26 13:42:06', '2019-04-26 13:42:06'),
(893, 'ARUPPUKKOTTAI', 'TAMILNADU', 35, 33, 1, '2019-04-26 13:42:06', '2019-04-26 13:42:06'),
(894, 'ATTUR', 'TAMILNADU', 35, 33, 1, '2019-04-26 13:42:06', '2019-04-26 13:42:06'),
(895, 'CHINNASENGAL', 'TAMILNADU', 35, 33, 1, '2019-04-26 13:42:06', '2019-04-26 13:42:06'),
(896, 'COONOOR', 'TAMILNADU', 35, 33, 1, '2019-04-26 13:42:06', '2019-04-26 13:42:06'),
(897, 'CUMBUM', 'TAMILNADU', 35, 33, 1, '2019-04-26 13:42:06', '2019-04-26 13:42:06'),
(898, 'DALAVOI', 'TAMILNADU', 35, 33, 1, '2019-04-26 13:42:06', '2019-04-26 13:42:06'),
(899, 'DHARMAPURI', 'TAMILNADU', 35, 33, 1, '2019-04-26 13:42:06', '2019-04-26 13:42:06'),
(900, 'DINDIGUL', 'TAMILNADU', 35, 33, 1, '2019-04-26 13:42:06', '2019-04-26 13:42:06'),
(901, 'ERIYODU', 'TAMILNADU', 35, 33, 1, '2019-04-26 13:42:06', '2019-04-26 13:42:06'),
(902, 'GOBICHETTIPALAYAM', 'TAMILNADU', 35, 33, 1, '2019-04-26 13:42:06', '2019-04-26 13:42:06'),
(903, 'GUDIMANGALAM', 'TAMILNADU', 35, 33, 1, '2019-04-26 13:42:06', '2019-04-26 13:42:06'),
(904, 'GUZILIYAMPARAI', 'TAMILNADU', 35, 33, 1, '2019-04-26 13:42:06', '2019-04-26 13:42:06'),
(905, 'HARUR', 'TAMILNADU', 35, 33, 1, '2019-04-26 13:42:06', '2019-04-26 13:42:06'),
(906, 'IDAPPADI', 'TAMILNADU', 35, 33, 1, '2019-04-26 13:42:06', '2019-04-26 13:42:06'),
(907, 'JEDARPALAYAM', 'TAMILNADU', 35, 33, 1, '2019-04-26 13:42:06', '2019-04-26 13:42:06'),
(908, 'KADAVOOR', 'TAMILNADU', 35, 33, 1, '2019-04-26 13:42:06', '2019-04-26 13:42:06'),
(909, 'KALKULAM', 'TAMILNADU', 35, 33, 1, '2019-04-26 13:42:06', '2019-04-26 13:42:06'),
(910, 'KALLAKURICHI', 'TAMILNADU', 35, 33, 1, '2019-04-26 13:42:06', '2019-04-26 13:42:06'),
(911, 'KANYAKUMARI', 'TAMILNADU', 35, 33, 1, '2019-04-26 13:42:06', '2019-04-26 13:42:06'),
(912, 'KARAIKAL', 'TAMILNADU', 35, 33, 1, '2019-04-26 13:42:06', '2019-04-26 13:42:06'),
(913, 'KARAIKUDI', 'TAMILNADU', 35, 33, 1, '2019-04-26 13:42:06', '2019-04-26 13:42:06'),
(914, 'KARAMADAI', 'TAMILNADU', 35, 33, 1, '2019-04-26 13:42:06', '2019-04-26 13:42:06'),
(915, 'KARUR PARAMATHY', 'TAMILNADU', 35, 33, 1, '2019-04-26 13:42:06', '2019-04-26 13:42:06'),
(916, 'KOILPATTI', 'TAMILNADU', 35, 33, 1, '2019-04-26 13:42:06', '2019-04-26 13:42:06'),
(917, 'KOTAGIRI', 'TAMILNADU', 35, 33, 1, '2019-04-26 13:42:06', '2019-04-26 13:42:06'),
(918, 'KRISHNAGIRI', 'TAMILNADU', 35, 33, 1, '2019-04-26 13:42:06', '2019-04-26 13:42:06'),
(919, 'KULITHALAI', 'TAMILNADU', 35, 33, 1, '2019-04-26 13:42:06', '2019-04-26 13:42:06'),
(920, 'KUMARASAMY RAJA NAGAR', 'TAMILNADU', 35, 33, 1, '2019-04-26 13:42:06', '2019-04-26 13:42:06'),
(921, 'KUMBAKONAM', 'TAMILNADU', 35, 33, 1, '2019-04-26 13:42:06', '2019-04-26 13:42:06'),
(922, 'KUZHITURAI', 'TAMILNADU', 35, 33, 1, '2019-04-26 13:42:06', '2019-04-26 13:42:06'),
(923, 'LALAPETTAI', 'TAMILNADU', 35, 33, 1, '2019-04-26 13:42:06', '2019-04-26 13:42:06'),
(924, 'LALGUDI', 'TAMILNADU', 35, 33, 1, '2019-04-26 13:42:06', '2019-04-26 13:42:06'),
(925, 'MALAIKOVILUR', 'TAMILNADU', 35, 33, 1, '2019-04-26 13:42:06', '2019-04-26 13:42:06'),
(926, 'MANACHANALLOOR', 'TAMILNADU', 35, 33, 1, '2019-04-26 13:42:06', '2019-04-26 13:42:06'),
(927, 'MANAMADURAI', 'TAMILNADU', 35, 33, 1, '2019-04-26 13:42:06', '2019-04-26 13:42:06'),
(928, 'MANAPPARAI', 'TAMILNADU', 35, 33, 1, '2019-04-26 13:42:06', '2019-04-26 13:42:06'),
(929, 'MARTHANOIDAM', 'TAMILNADU', 35, 33, 1, '2019-04-26 13:42:06', '2019-04-26 13:42:06'),
(930, 'MAYILADUTHURAI', 'TAMILNADU', 35, 33, 1, '2019-04-26 13:42:06', '2019-04-26 13:42:06'),
(931, 'MECHERI', 'TAMILNADU', 35, 33, 1, '2019-04-26 13:42:06', '2019-04-26 13:42:06'),
(932, 'METTUPALAYAM', 'TAMILNADU', 35, 33, 1, '2019-04-26 13:42:06', '2019-04-26 13:42:06'),
(933, 'MOHANUR', 'TAMILNADU', 35, 33, 1, '2019-04-26 13:42:06', '2019-04-26 13:42:06'),
(934, 'MUSIRI', 'TAMILNADU', 35, 33, 1, '2019-04-26 13:42:06', '2019-04-26 13:42:06'),
(935, 'NAGAPATTINAM', 'TAMILNADU', 35, 33, 1, '2019-04-26 13:42:06', '2019-04-26 13:42:06'),
(936, 'NAGORE', 'TAMILNADU', 35, 33, 1, '2019-04-26 13:42:06', '2019-04-26 13:42:06'),
(937, 'NAMAKKAL', 'TAMILNADU', 35, 33, 1, '2019-04-26 13:42:06', '2019-04-26 13:42:06'),
(938, 'NANGAVALLI', 'TAMILNADU', 35, 33, 1, '2019-04-26 13:42:06', '2019-04-26 13:42:06'),
(939, 'NILIGARI', 'TAMILNADU', 35, 33, 1, '2019-04-26 13:42:06', '2019-04-26 13:42:06'),
(940, 'ODDANCHATHIRAM', 'TAMILNADU', 35, 33, 1, '2019-04-26 13:42:06', '2019-04-26 13:42:06'),
(941, 'OTTUPATTI', 'TAMILNADU', 35, 33, 1, '2019-04-26 13:42:06', '2019-04-26 13:42:06'),
(942, 'PACHAL', 'TAMILNADU', 35, 33, 1, '2019-04-26 13:42:06', '2019-04-26 13:42:06'),
(943, 'PALANI', 'TAMILNADU', 35, 33, 1, '2019-04-26 13:42:06', '2019-04-26 13:42:06'),
(944, 'PALAYAM', 'TAMILNADU', 35, 33, 1, '2019-04-26 13:42:06', '2019-04-26 13:42:06'),
(945, 'PALAYAMKOTTAI', 'TAMILNADU', 35, 33, 1, '2019-04-26 13:42:06', '2019-04-26 13:42:06'),
(946, 'PALLADAM', 'TAMILNADU', 35, 33, 1, '2019-04-26 13:42:06', '2019-04-26 13:42:06'),
(947, 'PALLAPATTI', 'TAMILNADU', 35, 33, 1, '2019-04-26 13:42:06', '2019-04-26 13:42:06'),
(948, 'PARAMAKUDI', 'TAMILNADU', 35, 33, 1, '2019-04-26 13:42:06', '2019-04-26 13:42:06'),
(949, 'PARAMATHI-VELUR', 'TAMILNADU', 35, 33, 1, '2019-04-26 13:42:06', '2019-04-26 13:42:06'),
(950, 'PATTUKOTTAI', 'TAMILNADU', 35, 33, 1, '2019-04-26 13:42:06', '2019-04-26 13:42:06'),
(951, 'PERAMBALUR', 'TAMILNADU', 35, 33, 1, '2019-04-26 13:42:06', '2019-04-26 13:42:06'),
(952, 'POLLACHI', 'TAMILNADU', 35, 33, 1, '2019-04-26 13:42:06', '2019-04-26 13:42:06'),
(953, 'PONGALUR', 'TAMILNADU', 35, 33, 1, '2019-04-26 13:42:06', '2019-04-26 13:42:06'),
(954, 'PUDUCHATRAM', 'TAMILNADU', 35, 33, 1, '2019-04-26 13:42:06', '2019-04-26 13:42:06'),
(955, 'PUDUKKOTTAI', 'TAMILNADU', 35, 33, 1, '2019-04-26 13:42:06', '2019-04-26 13:42:06'),
(956, 'RAJAPALAYAM', 'TAMILNADU', 35, 33, 1, '2019-04-26 13:42:06', '2019-04-26 13:42:06'),
(957, 'RAMANATHAPURAM', 'TAMILNADU', 35, 33, 1, '2019-04-26 13:42:06', '2019-04-26 13:42:06'),
(958, 'RASIPURAM', 'TAMILNADU', 35, 33, 1, '2019-04-26 13:42:06', '2019-04-26 13:42:06'),
(959, 'SANKAR NAGAR', 'TAMILNADU', 35, 33, 1, '2019-04-26 13:42:06', '2019-04-26 13:42:06'),
(960, 'SANKARANKOVIL', 'TAMILNADU', 35, 33, 1, '2019-04-26 13:42:06', '2019-04-26 13:42:06'),
(961, 'SATHANKULAM', 'TAMILNADU', 35, 33, 1, '2019-04-26 13:42:06', '2019-04-26 13:42:06'),
(962, 'SATTUR', 'TAMILNADU', 35, 33, 1, '2019-04-26 13:42:06', '2019-04-26 13:42:06'),
(963, 'SHOLAYAR', 'TAMILNADU', 35, 33, 1, '2019-04-26 13:42:06', '2019-04-26 13:42:06'),
(964, 'SIRUMUGAI', 'TAMILNADU', 35, 33, 1, '2019-04-26 13:42:06', '2019-04-26 13:42:06'),
(965, 'SIVAGANGA', 'TAMILNADU', 35, 33, 1, '2019-04-26 13:42:06', '2019-04-26 13:42:06'),
(966, 'SIVAKASI', 'TAMILNADU', 35, 33, 1, '2019-04-26 13:42:06', '2019-04-26 13:42:06'),
(967, 'SIVAYAM', 'TAMILNADU', 35, 33, 1, '2019-04-26 13:42:06', '2019-04-26 13:42:06'),
(968, 'SOMANUR', 'TAMILNADU', 35, 33, 1, '2019-04-26 13:42:06', '2019-04-26 13:42:06'),
(969, 'SRIRANGAM', 'TAMILNADU', 35, 33, 1, '2019-04-26 13:42:06', '2019-04-26 13:42:06'),
(970, 'SRIVILLIPUTHUR', 'TAMILNADU', 35, 33, 1, '2019-04-26 13:42:06', '2019-04-26 13:42:06'),
(971, 'TENKSI', 'TAMILNADU', 35, 33, 1, '2019-04-26 13:42:06', '2019-04-26 13:42:06'),
(972, 'TENNILAI', 'TAMILNADU', 35, 33, 1, '2019-04-26 13:42:06', '2019-04-26 13:42:06'),
(973, 'THANJAVUR', 'TAMILNADU', 35, 33, 1, '2019-04-26 13:42:06', '2019-04-26 13:42:06'),
(974, 'THENI', 'TAMILNADU', 35, 33, 1, '2019-04-26 13:42:06', '2019-04-26 13:42:06'),
(975, 'THIRUMAYAM', 'TAMILNADU', 35, 33, 1, '2019-04-26 13:42:06', '2019-04-26 13:42:06'),
(976, 'THIRUTHANI', 'TAMILNADU', 35, 33, 1, '2019-04-26 13:42:06', '2019-04-26 13:42:06'),
(977, 'THIRUVALLUR', 'TAMILNADU', 35, 33, 1, '2019-04-26 13:42:06', '2019-04-26 13:42:06'),
(978, 'THOTTIAM', 'TAMILNADU', 35, 33, 1, '2019-04-26 13:42:06', '2019-04-26 13:42:06'),
(979, 'THUVARANKURICHI', 'TAMILNADU', 35, 33, 1, '2019-04-26 13:42:06', '2019-04-26 13:42:06'),
(980, 'TIRUCHENDUR', 'TAMILNADU', 35, 33, 1, '2019-04-26 13:42:06', '2019-04-26 13:42:06'),
(981, 'TIRUCHENGODE', 'TAMILNADU', 35, 33, 1, '2019-04-26 13:42:06', '2019-04-26 13:42:06'),
(982, 'TIRUNELVELI', 'TAMILNADU', 35, 33, 1, '2019-04-26 13:42:06', '2019-04-26 13:42:06'),
(983, 'TIRUVALLUR', 'TAMILNADU', 35, 33, 1, '2019-04-26 13:42:06', '2019-04-26 13:42:06'),
(984, 'UDUMALAIPETTAI', 'TAMILNADU', 35, 33, 1, '2019-04-26 13:42:06', '2019-04-26 13:42:06'),
(985, 'UDUMALPET', 'TAMILNADU', 35, 33, 1, '2019-04-26 13:42:06', '2019-04-26 13:42:06'),
(986, 'VALAPADY', 'TAMILNADU', 35, 33, 1, '2019-04-26 13:42:06', '2019-04-26 13:42:06'),
(987, 'VIRALIMALAI', 'TAMILNADU', 35, 33, 1, '2019-04-26 13:42:06', '2019-04-26 13:42:06'),
(988, 'VIRUDHUNAGAR', 'TAMILNADU', 35, 33, 1, '2019-04-26 13:42:06', '2019-04-26 13:42:06'),
(989, 'ADOOR', 'KERALA', 19, 32, 1, '2019-04-26 13:42:06', '2019-04-26 13:42:06'),
(990, 'ALATHUR', 'KERALA', 19, 32, 1, '2019-04-26 13:42:06', '2019-04-26 13:42:06'),
(991, 'ALLAPRA', 'KERALA', 19, 32, 1, '2019-04-26 13:42:06', '2019-04-26 13:42:06'),
(992, 'ALLEPPEY', 'KERALA', 19, 32, 1, '2019-04-26 13:42:06', '2019-04-26 13:42:06'),
(993, 'AMBALAPPUZHA', 'KERALA', 19, 32, 1, '2019-04-26 13:42:06', '2019-04-26 13:42:06'),
(994, 'AMBALAPUZHA', 'KERALA', 19, 32, 1, '2019-04-26 13:42:06', '2019-04-26 13:42:06'),
(995, 'ANNAMANADA', 'KERALA', 19, 32, 1, '2019-04-26 13:42:06', '2019-04-26 13:42:06'),
(996, 'ATTINGAL', 'KERALA', 19, 32, 1, '2019-04-26 13:42:06', '2019-04-26 13:42:06'),
(997, 'BADAGARA', 'KERALA', 19, 32, 1, '2019-04-26 13:42:06', '2019-04-26 13:42:06'),
(998, 'CHALAKUDI', 'KERALA', 19, 32, 1, '2019-04-26 13:42:06', '2019-04-26 13:42:06'),
(999, 'CHANGANACHERRY', 'KERALA', 19, 32, 1, '2019-04-26 13:42:06', '2019-04-26 13:42:06'),
(1000, 'CHAVAKKAD', 'KERALA', 19, 32, 1, '2019-04-26 13:42:06', '2019-04-26 13:42:06'),
(1001, 'CHENGANNUR', 'KERALA', 19, 32, 1, '2019-04-26 13:42:06', '2019-04-26 13:42:06'),
(1002, 'CHERTHLA', 'KERALA', 19, 32, 1, '2019-04-26 13:42:06', '2019-04-26 13:42:06'),
(1003, 'ETTUMANOOR', 'KERALA', 19, 32, 1, '2019-04-26 13:42:06', '2019-04-26 13:42:06'),
(1004, 'GOVINOIDAPURAM', 'KERALA', 19, 32, 1, '2019-04-26 13:42:06', '2019-04-26 13:42:06'),
(1005, 'GURUVAYOOR', 'KERALA', 19, 32, 1, '2019-04-26 13:42:06', '2019-04-26 13:42:06'),
(1006, 'IRINJALANDHARIKUDA', 'KERALA', 19, 32, 1, '2019-04-26 13:42:06', '2019-04-26 13:42:06'),
(1007, 'KALLETTUMKARA', 'KERALA', 19, 32, 1, '2019-04-26 13:42:06', '2019-04-26 13:42:06'),
(1008, 'KANAYANNUR', 'KERALA', 19, 32, 1, '2019-04-26 13:42:06', '2019-04-26 13:42:06'),
(1009, 'KANCHANGAD', 'KERALA', 19, 32, 1, '2019-04-26 13:42:06', '2019-04-26 13:42:06'),
(1010, 'KANJIRAPALLI', 'KERALA', 19, 32, 1, '2019-04-26 13:42:06', '2019-04-26 13:42:06'),
(1011, 'KANNAKAVOOR', 'KERALA', 19, 32, 1, '2019-04-26 13:42:06', '2019-04-26 13:42:06'),
(1012, 'KANNUR', 'KERALA', 19, 32, 1, '2019-04-26 13:42:06', '2019-04-26 13:42:06'),
(1013, 'KARIKULAM', 'KERALA', 19, 32, 1, '2019-04-26 13:42:06', '2019-04-26 13:42:06'),
(1014, 'KARUNAGAPPALLY', 'KERALA', 19, 32, 1, '2019-04-26 13:42:06', '2019-04-26 13:42:06'),
(1015, 'KASARAGOD', 'KERALA', 19, 32, 1, '2019-04-26 13:42:06', '2019-04-26 13:42:06'),
(1016, 'KINASSERI', 'KERALA', 19, 32, 1, '2019-04-26 13:42:06', '2019-04-26 13:42:06'),
(1017, 'KINAVALLUR', 'KERALA', 19, 32, 1, '2019-04-26 13:42:06', '2019-04-26 13:42:06'),
(1018, 'KODUNGALLUR', 'KERALA', 19, 32, 1, '2019-04-26 13:42:06', '2019-04-26 13:42:06'),
(1019, 'KOLLAM', 'KERALA', 19, 32, 1, '2019-04-26 13:42:06', '2019-04-26 13:42:06'),
(1020, 'KORATTY', 'KERALA', 19, 32, 1, '2019-04-26 13:42:06', '2019-04-26 13:42:06'),
(1021, 'KOTHAMANGALAM', 'KERALA', 19, 32, 1, '2019-04-26 13:42:06', '2019-04-26 13:42:06'),
(1022, 'KOTTAKKAL', 'KERALA', 19, 32, 1, '2019-04-26 13:42:06', '2019-04-26 13:42:06'),
(1023, 'KOTTARAKKARA', 'KERALA', 19, 32, 1, '2019-04-26 13:42:06', '2019-04-26 13:42:06'),
(1024, 'KOTTAYAM', 'KERALA', 19, 32, 1, '2019-04-26 13:42:06', '2019-04-26 13:42:06'),
(1025, 'KUNNAMKULAM', 'KERALA', 19, 32, 1, '2019-04-26 13:42:06', '2019-04-26 13:42:06'),
(1026, 'MAHE', 'KERALA', 19, 32, 1, '2019-04-26 13:42:06', '2019-04-26 13:42:06'),
(1027, 'MALA', 'KERALA', 19, 32, 1, '2019-04-26 13:42:06', '2019-04-26 13:42:06'),
(1028, 'MALAPURAM', 'KERALA', 19, 32, 1, '2019-04-26 13:42:06', '2019-04-26 13:42:06'),
(1029, 'MANJERI', 'KERALA', 19, 32, 1, '2019-04-26 13:42:06', '2019-04-26 13:42:06'),
(1030, 'MANNARKAD', 'KERALA', 19, 32, 1, '2019-04-26 13:42:06', '2019-04-26 13:42:06'),
(1031, 'MANNARKKAD', 'KERALA', 19, 32, 1, '2019-04-26 13:42:06', '2019-04-26 13:42:06'),
(1032, 'MAVELIKKARA', 'KERALA', 19, 32, 1, '2019-04-26 13:42:06', '2019-04-26 13:42:06'),
(1033, 'MEENACHIL', 'KERALA', 19, 32, 1, '2019-04-26 13:42:06', '2019-04-26 13:42:06'),
(1034, 'MELADOOR', 'KERALA', 19, 32, 1, '2019-04-26 13:42:06', '2019-04-26 13:42:06'),
(1035, 'MUNNAR', 'KERALA', 19, 32, 1, '2019-04-26 13:42:06', '2019-04-26 13:42:06'),
(1036, 'NEMMARA', 'KERALA', 19, 32, 1, '2019-04-26 13:42:06', '2019-04-26 13:42:06'),
(1037, 'NEYYATTINKARA', 'KERALA', 19, 32, 1, '2019-04-26 13:42:06', '2019-04-26 13:42:06'),
(1038, 'OTTAPPALAM', 'KERALA', 19, 32, 1, '2019-04-26 13:42:06', '2019-04-26 13:42:06'),
(1039, 'PANOIDALAM', 'KERALA', 19, 32, 1, '2019-04-26 13:42:06', '2019-04-26 13:42:06'),
(1040, 'PARAVUR', 'KERALA', 19, 32, 1, '2019-04-26 13:42:06', '2019-04-26 13:42:06'),
(1041, 'PARIYARAM', 'KERALA', 19, 32, 1, '2019-04-26 13:42:06', '2019-04-26 13:42:06'),
(1042, 'PATHANAMTHITTA', 'KERALA', 19, 32, 1, '2019-04-26 13:42:06', '2019-04-26 13:42:06'),
(1043, 'PATTAMBALAI', 'KERALA', 19, 32, 1, '2019-04-26 13:42:06', '2019-04-26 13:42:06'),
(1044, 'PAYYANOOR', 'KERALA', 19, 32, 1, '2019-04-26 13:42:06', '2019-04-26 13:42:06'),
(1045, 'PERAMBALARA', 'KERALA', 19, 32, 1, '2019-04-26 13:42:06', '2019-04-26 13:42:06'),
(1046, 'PERINTALMANNA', 'KERALA', 19, 32, 1, '2019-04-26 13:42:06', '2019-04-26 13:42:06'),
(1047, 'PERUMBAVOOR', 'KERALA', 19, 32, 1, '2019-04-26 13:42:06', '2019-04-26 13:42:06'),
(1048, 'PONKUNNAM', 'KERALA', 19, 32, 1, '2019-04-26 13:42:06', '2019-04-26 13:42:06'),
(1049, 'QUILON', 'KERALA', 19, 32, 1, '2019-04-26 13:42:06', '2019-04-26 13:42:06'),
(1050, 'SHORNNUR', 'KERALA', 19, 32, 1, '2019-04-26 13:42:06', '2019-04-26 13:42:06'),
(1051, 'SREE KRISHNAPURAM', 'KERALA', 19, 32, 1, '2019-04-26 13:42:06', '2019-04-26 13:42:06'),
(1052, 'TALAPPILLY', 'KERALA', 19, 32, 1, '2019-04-26 13:42:06', '2019-04-26 13:42:06'),
(1053, 'TALIPARAMBA', 'KERALA', 19, 32, 1, '2019-04-26 13:42:06', '2019-04-26 13:42:06'),
(1054, 'TELICHERY', 'KERALA', 19, 32, 1, '2019-04-26 13:42:06', '2019-04-26 13:42:06'),
(1055, 'TENUR', 'KERALA', 19, 32, 1, '2019-04-26 13:42:06', '2019-04-26 13:42:06'),
(1056, 'THIRUVALLA', 'KERALA', 19, 32, 1, '2019-04-26 13:42:06', '2019-04-26 13:42:06'),
(1057, 'THODUPUZHA', 'KERALA', 19, 32, 1, '2019-04-26 13:42:06', '2019-04-26 13:42:06'),
(1058, 'TIRUNILAYI', 'KERALA', 19, 32, 1, '2019-04-26 13:42:06', '2019-04-26 13:42:06'),
(1059, 'TIRUR', 'KERALA', 19, 32, 1, '2019-04-26 13:42:06', '2019-04-26 13:42:06'),
(1060, 'TIRURANGADI', 'KERALA', 19, 32, 1, '2019-04-26 13:42:06', '2019-04-26 13:42:06'),
(1061, 'VARKALA', 'KERALA', 19, 32, 1, '2019-04-26 13:42:06', '2019-04-26 13:42:06'),
(1062, 'ADILABAD', 'ANDHRA PRADESH', 2, 37, 1, '2019-04-26 13:42:06', '2019-04-26 13:42:06'),
(1063, 'ANANTHAPUR', 'ANDHRA PRADESH', 2, 37, 1, '2019-04-26 13:42:06', '2019-04-26 13:42:06'),
(1064, 'BADVEL', 'ANDHRA PRADESH', 2, 37, 1, '2019-04-26 13:42:06', '2019-04-26 13:42:06'),
(1065, 'BAPATLA', 'ANDHRA PRADESH', 2, 37, 1, '2019-04-26 13:42:06', '2019-04-26 13:42:06'),
(1066, 'BHADRACHALAM', 'ANDHRA PRADESH', 2, 37, 1, '2019-04-26 13:42:06', '2019-04-26 13:42:06'),
(1067, 'BHIMAVARAM', 'ANDHRA PRADESH', 2, 37, 1, '2019-04-26 13:42:06', '2019-04-26 13:42:06'),
(1068, 'BHIMAVRAM', 'ANDHRA PRADESH', 2, 37, 1, '2019-04-26 13:42:06', '2019-04-26 13:42:06'),
(1069, 'BOBBILI', 'ANDHRA PRADESH', 2, 37, 1, '2019-04-26 13:42:06', '2019-04-26 13:42:06'),
(1070, 'CHIPURUPALLE', 'ANDHRA PRADESH', 2, 37, 1, '2019-04-26 13:42:06', '2019-04-26 13:42:06'),
(1071, 'CHIRALA', 'ANDHRA PRADESH', 2, 37, 1, '2019-04-26 13:42:06', '2019-04-26 13:42:06'),
(1072, 'CHITOOR', 'ANDHRA PRADESH', 2, 37, 1, '2019-04-26 13:42:06', '2019-04-26 13:42:06'),
(1073, 'CHITYALA', 'ANDHRA PRADESH', 2, 37, 1, '2019-04-26 13:42:06', '2019-04-26 13:42:06'),
(1074, 'CHODAVARAM', 'ANDHRA PRADESH', 2, 37, 1, '2019-04-26 13:42:06', '2019-04-26 13:42:06'),
(1075, 'CUDDAPAH', 'ANDHRA PRADESH', 2, 37, 1, '2019-04-26 13:42:06', '2019-04-26 13:42:06'),
(1076, 'ELURU', 'ANDHRA PRADESH', 2, 37, 1, '2019-04-26 13:42:06', '2019-04-26 13:42:06'),
(1077, 'GAJAPATHINAGARAM', 'ANDHRA PRADESH', 2, 37, 1, '2019-04-26 13:42:06', '2019-04-26 13:42:06'),
(1078, 'GOOTY', 'ANDHRA PRADESH', 2, 37, 1, '2019-04-26 13:42:06', '2019-04-26 13:42:06'),
(1079, 'GORANTLA', 'ANDHRA PRADESH', 2, 37, 1, '2019-04-26 13:42:06', '2019-04-26 13:42:06'),
(1080, 'GUDIWADA', 'ANDHRA PRADESH', 2, 37, 1, '2019-04-26 13:42:06', '2019-04-26 13:42:06'),
(1081, 'GUDUR', 'ANDHRA PRADESH', 2, 37, 1, '2019-04-26 13:42:06', '2019-04-26 13:42:06'),
(1082, 'GUDURU', 'ANDHRA PRADESH', 2, 37, 1, '2019-04-26 13:42:06', '2019-04-26 13:42:06'),
(1083, 'GUNTAKAL', 'ANDHRA PRADESH', 2, 37, 1, '2019-04-26 13:42:06', '2019-04-26 13:42:06'),
(1084, 'GUNTUR', 'ANDHRA PRADESH', 2, 37, 1, '2019-04-26 13:42:06', '2019-04-26 13:42:06'),
(1085, 'HANAMKONDA', 'ANDHRA PRADESH', 2, 37, 1, '2019-04-26 13:42:06', '2019-04-26 13:42:06'),
(1086, 'HINDUPUR', 'ANDHRA PRADESH', 2, 37, 1, '2019-04-26 13:42:06', '2019-04-26 13:42:06'),
(1087, 'IBRAHIMPATNAM MANDAL', 'ANDHRA PRADESH', 2, 37, 1, '2019-04-26 13:42:06', '2019-04-26 13:42:06'),
(1088, 'ICHAPURAM', 'ANDHRA PRADESH', 2, 37, 1, '2019-04-26 13:42:06', '2019-04-26 13:42:06'),
(1089, 'KAKINADA', 'ANDHRA PRADESH', 2, 37, 1, '2019-04-26 13:42:06', '2019-04-26 13:42:06'),
(1090, 'KALLUR', 'ANDHRA PRADESH', 2, 37, 1, '2019-04-26 13:42:06', '2019-04-26 13:42:06'),
(1091, 'KALYANDURG', 'ANDHRA PRADESH', 2, 37, 1, '2019-04-26 13:42:06', '2019-04-26 13:42:06'),
(1092, 'KAMAREDDY', 'ANDHRA PRADESH', 2, 37, 1, '2019-04-26 13:42:06', '2019-04-26 13:42:06'),
(1093, 'KARIM NAGAR', 'ANDHRA PRADESH', 2, 37, 1, '2019-04-26 13:42:06', '2019-04-26 13:42:06'),
(1094, 'KAVALI', 'ANDHRA PRADESH', 2, 37, 1, '2019-04-26 13:42:06', '2019-04-26 13:42:06'),
(1095, 'KHAMMAM', 'ANDHRA PRADESH', 2, 37, 1, '2019-04-26 13:42:06', '2019-04-26 13:42:06'),
(1096, 'KHAZIPET', 'ANDHRA PRADESH', 2, 37, 1, '2019-04-26 13:42:06', '2019-04-26 13:42:06'),
(1097, 'KOTAPADU', 'ANDHRA PRADESH', 2, 37, 1, '2019-04-26 13:42:06', '2019-04-26 13:42:06'),
(1098, 'KOTHAGUDEM', 'ANDHRA PRADESH', 2, 37, 1, '2019-04-26 13:42:06', '2019-04-26 13:42:06'),
(1099, 'KRISHNA', 'ANDHRA PRADESH', 2, 37, 1, '2019-04-26 13:42:06', '2019-04-26 13:42:06'),
(1100, 'KUSUMANCHI', 'ANDHRA PRADESH', 2, 37, 1, '2019-04-26 13:42:06', '2019-04-26 13:42:06'),
(1101, 'MACHILIPATNAM', 'ANDHRA PRADESH', 2, 37, 1, '2019-04-26 13:42:06', '2019-04-26 13:42:06'),
(1102, 'MAHABUB NAGAR', 'ANDHRA PRADESH', 2, 37, 1, '2019-04-26 13:42:06', '2019-04-26 13:42:06'),
(1103, 'MAHABUBABAD', 'ANDHRA PRADESH', 2, 37, 1, '2019-04-26 13:42:06', '2019-04-26 13:42:06'),
(1104, 'MAHBOOB NAGAR', 'ANDHRA PRADESH', 2, 37, 1, '2019-04-26 13:42:06', '2019-04-26 13:42:06'),
(1105, 'MAKAVARAPALEM', 'ANDHRA PRADESH', 2, 37, 1, '2019-04-26 13:42:06', '2019-04-26 13:42:06'),
(1106, 'MALIKIPURAM', 'ANDHRA PRADESH', 2, 37, 1, '2019-04-26 13:42:06', '2019-04-26 13:42:06'),
(1107, 'MARKAPUR', 'ANDHRA PRADESH', 2, 37, 1, '2019-04-26 13:42:06', '2019-04-26 13:42:06'),
(1108, 'MEDAK', 'ANDHRA PRADESH', 2, 37, 1, '2019-04-26 13:42:06', '2019-04-26 13:42:06'),
(1109, 'NAGARI', 'ANDHRA PRADESH', 2, 37, 1, '2019-04-26 13:42:06', '2019-04-26 13:42:06'),
(1110, 'NAIDUPETA', 'ANDHRA PRADESH', 2, 37, 1, '2019-04-26 13:42:06', '2019-04-26 13:42:06'),
(1111, 'NAKKAPALLY', 'ANDHRA PRADESH', 2, 37, 1, '2019-04-26 13:42:06', '2019-04-26 13:42:06'),
(1112, 'NALGONDA', 'ANDHRA PRADESH', 2, 37, 1, '2019-04-26 13:42:06', '2019-04-26 13:42:06'),
(1113, 'NANDIGAON', 'ANDHRA PRADESH', 2, 37, 1, '2019-04-26 13:42:06', '2019-04-26 13:42:06'),
(1114, 'NANDYAL', 'ANDHRA PRADESH', 2, 37, 1, '2019-04-26 13:42:06', '2019-04-26 13:42:06'),
(1115, 'NARASANNAPETA', 'ANDHRA PRADESH', 2, 37, 1, '2019-04-26 13:42:06', '2019-04-26 13:42:06'),
(1116, 'NARSAPUR', 'ANDHRA PRADESH', 2, 37, 1, '2019-04-26 13:42:06', '2019-04-26 13:42:06'),
(1117, 'NARSIPATNAM', 'ANDHRA PRADESH', 2, 37, 1, '2019-04-26 13:42:06', '2019-04-26 13:42:06'),
(1118, 'NELLORE', 'ANDHRA PRADESH', 2, 37, 1, '2019-04-26 13:42:06', '2019-04-26 13:42:06'),
(1119, 'NIZAMABAD', 'ANDHRA PRADESH', 2, 37, 1, '2019-04-26 13:42:06', '2019-04-26 13:42:06'),
(1120, 'ONGOLE', 'ANDHRA PRADESH', 2, 37, 1, '2019-04-26 13:42:06', '2019-04-26 13:42:06'),
(1121, 'PADERU', 'ANDHRA PRADESH', 2, 37, 1, '2019-04-26 13:42:06', '2019-04-26 13:42:06'),
(1122, 'PALAKOL', 'ANDHRA PRADESH', 2, 37, 1, '2019-04-26 13:42:06', '2019-04-26 13:42:06'),
(1123, 'PALAKOL (MDL)', 'ANDHRA PRADESH', 2, 37, 1, '2019-04-26 13:42:06', '2019-04-26 13:42:06'),
(1124, 'PALAKONOIDA', 'ANDHRA PRADESH', 2, 37, 1, '2019-04-26 13:42:06', '2019-04-26 13:42:06'),
(1125, 'PALAMANERU', 'ANDHRA PRADESH', 2, 37, 1, '2019-04-26 13:42:06', '2019-04-26 13:42:06'),
(1126, 'PALASA', 'ANDHRA PRADESH', 2, 37, 1, '2019-04-26 13:42:06', '2019-04-26 13:42:06'),
(1127, 'PARVATHIPURAM', 'ANDHRA PRADESH', 2, 37, 1, '2019-04-26 13:42:06', '2019-04-26 13:42:06'),
(1128, 'PASHAMAILARAM', 'ANDHRA PRADESH', 2, 37, 1, '2019-04-26 13:42:06', '2019-04-26 13:42:06'),
(1129, 'PRAKASAM', 'ANDHRA PRADESH', 2, 37, 1, '2019-04-26 13:42:06', '2019-04-26 13:42:06'),
(1130, 'PRODDATUR', 'ANDHRA PRADESH', 2, 37, 1, '2019-04-26 13:42:06', '2019-04-26 13:42:06'),
(1131, 'PUTTAPARTHI', 'ANDHRA PRADESH', 2, 37, 1, '2019-04-26 13:42:06', '2019-04-26 13:42:06'),
(1132, 'PYDIBHIMAVARAM', 'ANDHRA PRADESH', 2, 37, 1, '2019-04-26 13:42:06', '2019-04-26 13:42:06'),
(1133, 'RAJANAGARAM', 'ANDHRA PRADESH', 2, 37, 1, '2019-04-26 13:42:06', '2019-04-26 13:42:06'),
(1134, 'RAMACHANDRAPURAM', 'ANDHRA PRADESH', 2, 37, 1, '2019-04-26 13:42:06', '2019-04-26 13:42:06'),
(1135, 'RAMAGUNDAM', 'ANDHRA PRADESH', 2, 37, 1, '2019-04-26 13:42:06', '2019-04-26 13:42:06'),
(1136, 'RAYACHOTI', 'ANDHRA PRADESH', 2, 37, 1, '2019-04-26 13:42:06', '2019-04-26 13:42:06'),
(1137, 'RENIGUNTA', 'ANDHRA PRADESH', 2, 37, 1, '2019-04-26 13:42:06', '2019-04-26 13:42:06'),
(1138, 'REPALLY', 'ANDHRA PRADESH', 2, 37, 1, '2019-04-26 13:42:06', '2019-04-26 13:42:06'),
(1139, 'RUDRARAM', 'ANDHRA PRADESH', 2, 37, 1, '2019-04-26 13:42:06', '2019-04-26 13:42:06'),
(1140, 'S KOTA', 'ANDHRA PRADESH', 2, 37, 1, '2019-04-26 13:42:06', '2019-04-26 13:42:06');
INSERT INTO `cities` (`id`, `name`, `state`, `state_id`, `gst_code`, `status`, `created_at`, `updated_at`) VALUES
(1141, 'SADASIVPET', 'ANDHRA PRADESH', 2, 37, 1, '2019-04-26 13:42:06', '2019-04-26 13:42:06'),
(1142, 'SALUR', 'ANDHRA PRADESH', 2, 37, 1, '2019-04-26 13:42:06', '2019-04-26 13:42:06'),
(1143, 'SANGAREDDY', 'ANDHRA PRADESH', 2, 37, 1, '2019-04-26 13:42:06', '2019-04-26 13:42:06'),
(1144, 'SARAPAKA', 'ANDHRA PRADESH', 2, 37, 1, '2019-04-26 13:42:06', '2019-04-26 13:42:06'),
(1145, 'SOMPETA', 'ANDHRA PRADESH', 2, 37, 1, '2019-04-26 13:42:06', '2019-04-26 13:42:06'),
(1146, 'SRIKAKULAM', 'ANDHRA PRADESH', 2, 37, 1, '2019-04-26 13:42:06', '2019-04-26 13:42:06'),
(1147, 'SRIKALAHASTI', 'ANDHRA PRADESH', 2, 37, 1, '2019-04-26 13:42:06', '2019-04-26 13:42:06'),
(1148, 'TADA', 'ANDHRA PRADESH', 2, 37, 1, '2019-04-26 13:42:06', '2019-04-26 13:42:06'),
(1149, 'TADEPALLIGUDEM', 'ANDHRA PRADESH', 2, 37, 1, '2019-04-26 13:42:06', '2019-04-26 13:42:06'),
(1150, 'TADPATRI', 'ANDHRA PRADESH', 2, 37, 1, '2019-04-26 13:42:06', '2019-04-26 13:42:06'),
(1151, 'TANUKU', 'ANDHRA PRADESH', 2, 37, 1, '2019-04-26 13:42:06', '2019-04-26 13:42:06'),
(1152, 'TANUKU (MDL)', 'ANDHRA PRADESH', 2, 37, 1, '2019-04-26 13:42:06', '2019-04-26 13:42:06'),
(1153, 'TENALI', 'ANDHRA PRADESH', 2, 37, 1, '2019-04-26 13:42:06', '2019-04-26 13:42:06'),
(1154, 'TIRUPATI', 'ANDHRA PRADESH', 2, 37, 1, '2019-04-26 13:42:06', '2019-04-26 13:42:06'),
(1155, 'TUNI', 'ANDHRA PRADESH', 2, 37, 1, '2019-04-26 13:42:06', '2019-04-26 13:42:06'),
(1156, 'VIZAINAGARAM', 'ANDHRA PRADESH', 2, 37, 1, '2019-04-26 13:42:06', '2019-04-26 13:42:06'),
(1157, 'WARANGAL', 'ANDHRA PRADESH', 2, 37, 1, '2019-04-26 13:42:06', '2019-04-26 13:42:06'),
(1158, 'YELAMANCHILI', 'ANDHRA PRADESH', 2, 37, 1, '2019-04-26 13:42:06', '2019-04-26 13:42:06'),
(1159, 'ZAHIRABAD', 'ANDHRA PRADESH', 2, 37, 1, '2019-04-26 13:42:06', '2019-04-26 13:42:06'),
(1160, 'AMOD', 'GUJARAT', 12, 24, 1, '2019-04-26 13:42:06', '2019-04-26 13:42:06'),
(1161, 'ANAND', 'GUJARAT', 12, 24, 1, '2019-04-26 13:42:06', '2019-04-26 13:42:06'),
(1162, 'ANJAR', 'GUJARAT', 12, 24, 1, '2019-04-26 13:42:06', '2019-04-26 13:42:06'),
(1163, 'ANKALESHWAR', 'GUJARAT', 12, 24, 1, '2019-04-26 13:42:06', '2019-04-26 13:42:06'),
(1164, 'ANKLESHWAR', 'GUJARAT', 12, 24, 1, '2019-04-26 13:42:06', '2019-04-26 13:42:06'),
(1165, 'BARDOLI', 'GUJARAT', 12, 24, 1, '2019-04-26 13:42:06', '2019-04-26 13:42:06'),
(1166, 'BHACHAU', 'GUJARAT', 12, 24, 1, '2019-04-26 13:42:06', '2019-04-26 13:42:06'),
(1167, 'BHARUCH', 'GUJARAT', 12, 24, 1, '2019-04-26 13:42:06', '2019-04-26 13:42:06'),
(1168, 'BHAV NAGAR', 'GUJARAT', 12, 24, 1, '2019-04-26 13:42:06', '2019-04-26 13:42:06'),
(1169, 'BHILODA', 'GUJARAT', 12, 24, 1, '2019-04-26 13:42:06', '2019-04-26 13:42:06'),
(1170, 'BHUJ', 'GUJARAT', 12, 24, 1, '2019-04-26 13:42:06', '2019-04-26 13:42:06'),
(1171, 'CHIKHLI', 'GUJARAT', 12, 24, 1, '2019-04-26 13:42:06', '2019-04-26 13:42:06'),
(1172, 'DAHOD', 'GUJARAT', 12, 24, 1, '2019-04-26 13:42:06', '2019-04-26 13:42:06'),
(1173, 'DHOLKA', 'GUJARAT', 12, 24, 1, '2019-04-26 13:42:06', '2019-04-26 13:42:06'),
(1174, 'DHORAJEE', 'GUJARAT', 12, 24, 1, '2019-04-26 13:42:06', '2019-04-26 13:42:06'),
(1175, 'DWARAKA', 'GUJARAT', 12, 24, 1, '2019-04-26 13:42:06', '2019-04-26 13:42:06'),
(1176, 'GANDEVI', 'GUJARAT', 12, 24, 1, '2019-04-26 13:42:06', '2019-04-26 13:42:06'),
(1177, 'GANDHIDHAM', 'GUJARAT', 12, 24, 1, '2019-04-26 13:42:06', '2019-04-26 13:42:06'),
(1178, 'GODHRA', 'GUJARAT', 12, 24, 1, '2019-04-26 13:42:06', '2019-04-26 13:42:06'),
(1179, 'GONOIDAL', 'GUJARAT', 12, 24, 1, '2019-04-26 13:42:06', '2019-04-26 13:42:06'),
(1180, 'HALOL', 'GUJARAT', 12, 24, 1, '2019-04-26 13:42:06', '2019-04-26 13:42:06'),
(1181, 'HIMMAT NAGAR', 'GUJARAT', 12, 24, 1, '2019-04-26 13:42:06', '2019-04-26 13:42:06'),
(1182, 'IDAR', 'GUJARAT', 12, 24, 1, '2019-04-26 13:42:06', '2019-04-26 13:42:06'),
(1184, 'JAMNAGAR ', 'GUJARAT', 12, 24, 1, '2019-04-26 13:42:06', '2019-04-26 13:42:06'),
(1185, 'JUNAGAH', 'GUJARAT', 12, 24, 1, '2019-04-26 13:42:06', '2019-04-26 13:42:06'),
(1186, 'KALAVAD', 'GUJARAT', 12, 24, 1, '2019-04-26 13:42:06', '2019-04-26 13:42:06'),
(1187, 'KANDLA', 'GUJARAT', 12, 24, 1, '2019-04-26 13:42:06', '2019-04-26 13:42:06'),
(1188, 'KHEDA', 'GUJARAT', 12, 24, 1, '2019-04-26 13:42:06', '2019-04-26 13:42:06'),
(1189, 'MANDVI', 'GUJARAT', 12, 24, 1, '2019-04-26 13:42:06', '2019-04-26 13:42:06'),
(1190, 'MODASA', 'GUJARAT', 12, 24, 1, '2019-04-26 13:42:06', '2019-04-26 13:42:06'),
(1191, 'MORBI', 'GUJARAT', 12, 24, 1, '2019-04-26 13:42:06', '2019-04-26 13:42:06'),
(1192, 'MUNDRA', 'GUJARAT', 12, 24, 1, '2019-04-26 13:42:06', '2019-04-26 13:42:06'),
(1193, 'NADIAD', 'GUJARAT', 12, 24, 1, '2019-04-26 13:42:06', '2019-04-26 13:42:06'),
(1194, 'NAVAGAM', 'GUJARAT', 12, 24, 1, '2019-04-26 13:42:06', '2019-04-26 13:42:06'),
(1195, 'NAVSARI', 'GUJARAT', 12, 24, 1, '2019-04-26 13:42:06', '2019-04-26 13:42:06'),
(1196, 'OLPAD', 'GUJARAT', 12, 24, 1, '2019-04-26 13:42:06', '2019-04-26 13:42:06'),
(1197, 'PALANPUR', 'GUJARAT', 12, 24, 1, '2019-04-26 13:42:06', '2019-04-26 13:42:06'),
(1198, 'PANOLI', 'GUJARAT', 12, 24, 1, '2019-04-26 13:42:06', '2019-04-26 13:42:06'),
(1199, 'PORBANDAR', 'GUJARAT', 12, 24, 1, '2019-04-26 13:42:06', '2019-04-26 13:42:06'),
(1200, 'SURENOIDAR NAGAR', 'GUJARAT', 12, 24, 1, '2019-04-26 13:42:06', '2019-04-26 13:42:06'),
(1201, 'UNA-GJ', 'GUJARAT', 12, 24, 1, '2019-04-26 13:42:06', '2019-04-26 13:42:06'),
(1202, 'VALLABH VIDYA NAGAR', 'GUJARAT', 12, 24, 1, '2019-04-26 13:42:06', '2019-04-26 13:42:06'),
(1203, 'VALSAD', 'GUJARAT', 12, 24, 1, '2019-04-26 13:42:06', '2019-04-26 13:42:06'),
(1204, 'VIRAMGAM', 'GUJARAT', 12, 24, 1, '2019-04-26 13:42:06', '2019-04-26 13:42:06'),
(1205, 'VYARA', 'GUJARAT', 12, 24, 1, '2019-04-26 13:42:06', '2019-04-26 13:42:06'),
(1206, 'BURHANPUR', 'MADHYA PRADESH', 21, 23, 1, '2019-04-26 13:42:06', '2019-04-26 13:42:06'),
(1207, 'DEWAS', 'MADHYA PRADESH', 21, 23, 1, '2019-04-26 13:42:06', '2019-04-26 13:42:06'),
(1208, 'DHARAMPURI', 'MADHYA PRADESH', 21, 23, 1, '2019-04-26 13:42:06', '2019-04-26 13:42:06'),
(1209, 'GUNA', 'MADHYA PRADESH', 21, 23, 1, '2019-04-26 13:42:06', '2019-04-26 13:42:06'),
(1210, 'HOSHANGABAD', 'MADHYA PRADESH', 21, 23, 1, '2019-04-26 13:42:06', '2019-04-26 13:42:06'),
(1211, 'ITARSI', 'MADHYA PRADESH', 21, 23, 1, '2019-04-26 13:42:06', '2019-04-26 13:42:06'),
(1212, 'JABALPUR', 'MADHYA PRADESH', 21, 23, 1, '2019-04-26 13:42:06', '2019-04-26 13:42:06'),
(1213, 'JHABUA', 'MADHYA PRADESH', 21, 23, 1, '2019-04-26 13:42:06', '2019-04-26 13:42:06'),
(1214, 'KHARGONE', 'MADHYA PRADESH', 21, 23, 1, '2019-04-26 13:42:06', '2019-04-26 13:42:06'),
(1215, 'MAUGANJ', 'MADHYA PRADESH', 21, 23, 1, '2019-04-26 13:42:06', '2019-04-26 13:42:06'),
(1216, 'RATLAM', 'MADHYA PRADESH', 21, 23, 1, '2019-04-26 13:42:06', '2019-04-26 13:42:06'),
(1217, 'SEHORE', 'MADHYA PRADESH', 21, 23, 1, '2019-04-26 13:42:06', '2019-04-26 13:42:06'),
(1218, 'UJJAIN', 'MADHYA PRADESH', 21, 23, 1, '2019-04-26 13:42:06', '2019-04-26 13:42:06'),
(1219, 'VIDISHA', 'MADHYA PRADESH', 21, 23, 1, '2019-04-26 13:42:06', '2019-04-26 13:42:06'),
(1220, 'AMBALAIVALI', 'MAHARASHTRA', 22, 27, 1, '2019-04-26 13:42:06', '2019-04-26 13:42:06'),
(1221, 'SHAHPUR - THN', 'MAHARASHTRA', 22, 27, 1, '2019-04-26 13:42:06', '2019-04-26 13:42:06'),
(1222, 'TARAPUR', 'MAHARASHTRA', 22, 27, 1, '2019-04-26 13:42:06', '2019-04-26 13:42:06'),
(1223, 'WADA', 'MAHARASHTRA', 22, 27, 1, '2019-04-26 13:42:06', '2019-04-26 13:42:06'),
(1224, 'AKOLA', 'MAHARASHTRA', 22, 27, 1, '2019-04-26 13:42:06', '2019-04-26 13:42:06'),
(1225, 'AMRAVATI', 'MAHARASHTRA', 22, 27, 1, '2019-04-26 13:42:06', '2019-04-26 13:42:06'),
(1226, 'BALLARPUR', 'MAHARASHTRA', 22, 27, 1, '2019-04-26 13:42:06', '2019-04-26 13:42:06'),
(1227, 'BALOD', 'CHHATISGARH', 7, 22, 1, '2019-04-26 13:42:06', '2019-04-26 13:42:06'),
(1228, 'BHANDARA', 'MAHARASHTRA', 22, 27, 1, '2019-04-26 13:42:06', '2019-04-26 13:42:06'),
(1229, 'BHUSAWAL', 'MAHARASHTRA', 22, 27, 1, '2019-04-26 13:42:06', '2019-04-26 13:42:06'),
(1230, 'BILASPUR', 'CHHATISGARH', 7, 22, 1, '2019-04-26 13:42:06', '2019-04-26 13:42:06'),
(1231, 'BULDHANA', 'MAHARASHTRA', 22, 27, 1, '2019-04-26 13:42:06', '2019-04-26 13:42:06'),
(1232, 'CHANDRAPUR', 'MAHARASHTRA', 22, 27, 1, '2019-04-26 13:42:06', '2019-04-26 13:42:06'),
(1233, 'CHANDUR BAZAR', 'MAHARASHTRA', 22, 27, 1, '2019-04-26 13:42:06', '2019-04-26 13:42:06'),
(1234, 'DHAMTARI', 'CHHATISGARH', 7, 22, 1, '2019-04-26 13:42:06', '2019-04-26 13:42:06'),
(1235, 'GONDIA', 'MAHARASHTRA', 22, 27, 1, '2019-04-26 13:42:06', '2019-04-26 13:42:06'),
(1236, 'HINGANGHAT', 'MAHARASHTRA', 22, 27, 1, '2019-04-26 13:42:06', '2019-04-26 13:42:06'),
(1237, 'KAWARDHA', 'CHHATISGARH', 7, 22, 1, '2019-04-26 13:42:06', '2019-04-26 13:42:06'),
(1238, 'KHAMGAON', 'MAHARASHTRA', 22, 27, 1, '2019-04-26 13:42:06', '2019-04-26 13:42:06'),
(1239, 'KORBA', 'CHHATISGARH', 7, 22, 1, '2019-04-26 13:42:06', '2019-04-26 13:42:06'),
(1240, 'MALKAPUR', 'MAHARASHTRA', 22, 27, 1, '2019-04-26 13:42:06', '2019-04-26 13:42:06'),
(1241, 'MORSHI', 'MAHARASHTRA', 22, 27, 1, '2019-04-26 13:42:06', '2019-04-26 13:42:06'),
(1242, 'PARATWADA', 'MAHARASHTRA', 22, 27, 1, '2019-04-26 13:42:06', '2019-04-26 13:42:06'),
(1243, 'PULGAON', 'MAHARASHTRA', 22, 27, 1, '2019-04-26 13:42:06', '2019-04-26 13:42:06'),
(1244, 'PUSAD', 'MAHARASHTRA', 22, 27, 1, '2019-04-26 13:42:06', '2019-04-26 13:42:06'),
(1245, 'RAIGARH', 'CHHATISGARH', 7, 22, 1, '2019-04-26 13:42:06', '2019-04-26 13:42:06'),
(1246, 'RAJNANDGAON', 'CHHATISGARH', 7, 22, 1, '2019-04-26 13:42:06', '2019-04-26 13:42:06'),
(1247, 'SAKTI', 'CHHATISGARH', 7, 22, 1, '2019-04-26 13:42:06', '2019-04-26 13:42:06'),
(1248, 'SARAIPALI', 'CHHATISGARH', 7, 22, 1, '2019-04-26 13:42:06', '2019-04-26 13:42:06'),
(1249, 'SEEPAT', 'CHHATISGARH', 7, 22, 1, '2019-04-26 13:42:06', '2019-04-26 13:42:06'),
(1250, 'SELU', 'MAHARASHTRA', 22, 27, 1, '2019-04-26 13:42:06', '2019-04-26 13:42:06'),
(1251, 'WARORA', 'MAHARASHTRA', 22, 27, 1, '2019-04-26 13:42:06', '2019-04-26 13:42:06'),
(1252, 'WARUD', 'MAHARASHTRA', 22, 27, 1, '2019-04-26 13:42:06', '2019-04-26 13:42:06'),
(1253, 'YAVATMAL', 'MAHARASHTRA', 22, 27, 1, '2019-04-26 13:42:06', '2019-04-26 13:42:06'),
(1254, 'ALANDI ( MARKAL)', 'MAHARASHTRA', 22, 27, 1, '2019-04-26 13:42:06', '2019-04-26 13:42:06'),
(1255, 'ALEPHATA', 'MAHARASHTRA', 22, 27, 1, '2019-04-26 13:42:06', '2019-04-26 13:42:06'),
(1256, 'AMBEGAON', 'MAHARASHTRA', 22, 27, 1, '2019-04-26 13:42:06', '2019-04-26 13:42:06'),
(1257, 'BARAMATI', 'MAHARASHTRA', 22, 27, 1, '2019-04-26 13:42:06', '2019-04-26 13:42:06'),
(1258, 'BEED', 'MAHARASHTRA', 22, 27, 1, '2019-04-26 13:42:06', '2019-04-26 13:42:06'),
(1259, 'BHOR', 'MAHARASHTRA', 22, 27, 1, '2019-04-26 13:42:06', '2019-04-26 13:42:06'),
(1260, 'CHALISGAON', 'MAHARASHTRA', 22, 27, 1, '2019-04-26 13:42:06', '2019-04-26 13:42:06'),
(1261, 'CHIPLUN', 'MAHARASHTRA', 22, 27, 1, '2019-04-26 13:42:06', '2019-04-26 13:42:06'),
(1262, 'DOUND', 'MAHARASHTRA', 22, 27, 1, '2019-04-26 13:42:06', '2019-04-26 13:42:06'),
(1263, 'HINGOLI', 'MAHARASHTRA', 22, 27, 1, '2019-04-26 13:42:06', '2019-04-26 13:42:06'),
(1264, 'IGATPURI', 'MAHARASHTRA', 22, 27, 1, '2019-04-26 13:42:06', '2019-04-26 13:42:06'),
(1265, 'INDAPUR', 'MAHARASHTRA', 22, 27, 1, '2019-04-26 13:42:06', '2019-04-26 13:42:06'),
(1266, 'JEJURI', 'MAHARASHTRA', 22, 27, 1, '2019-04-26 13:42:06', '2019-04-26 13:42:06'),
(1267, 'JUNNAR', 'MAHARASHTRA', 22, 27, 1, '2019-04-26 13:42:06', '2019-04-26 13:42:06'),
(1268, 'KAGAL', 'MAHARASHTRA', 22, 27, 1, '2019-04-26 13:42:06', '2019-04-26 13:42:06'),
(1269, 'KARAD', 'MAHARASHTRA', 22, 27, 1, '2019-04-26 13:42:06', '2019-04-26 13:42:06'),
(1270, 'KHED', 'MAHARASHTRA', 22, 27, 1, '2019-04-26 13:42:06', '2019-04-26 13:42:06'),
(1271, 'KONDHAPURI', 'MAHARASHTRA', 22, 27, 1, '2019-04-26 13:42:06', '2019-04-26 13:42:06'),
(1272, 'KOPERGAON', 'MAHARASHTRA', 22, 27, 1, '2019-04-26 13:42:06', '2019-04-26 13:42:06'),
(1273, 'KOREGAON', 'MAHARASHTRA', 22, 27, 1, '2019-04-26 13:42:06', '2019-04-26 13:42:06'),
(1274, 'KURKUMB', 'MAHARASHTRA', 22, 27, 1, '2019-04-26 13:42:06', '2019-04-26 13:42:06'),
(1275, 'LATUR', 'MAHARASHTRA', 22, 27, 1, '2019-04-26 13:42:06', '2019-04-26 13:42:06'),
(1276, 'LONAWALA', 'MAHARASHTRA', 22, 27, 1, '2019-04-26 13:42:06', '2019-04-26 13:42:06'),
(1277, 'LONI', 'MAHARASHTRA', 22, 27, 1, '2019-04-26 13:42:06', '2019-04-26 13:42:06'),
(1278, 'MAHABALESHWAR', 'MAHARASHTRA', 22, 27, 1, '2019-04-26 13:42:06', '2019-04-26 13:42:06'),
(1279, 'MALEGAON', 'MAHARASHTRA', 22, 27, 1, '2019-04-26 13:42:06', '2019-04-26 13:42:06'),
(1280, 'MANMAD', 'MAHARASHTRA', 22, 27, 1, '2019-04-26 13:42:06', '2019-04-26 13:42:06'),
(1281, 'MASUR', 'MAHARASHTRA', 22, 27, 1, '2019-04-26 13:42:06', '2019-04-26 13:42:06'),
(1282, 'MAVAL', 'MAHARASHTRA', 22, 27, 1, '2019-04-26 13:42:06', '2019-04-26 13:42:06'),
(1283, 'MIRAJ', 'MAHARASHTRA', 22, 27, 1, '2019-04-26 13:42:06', '2019-04-26 13:42:06'),
(1284, 'NANDED', 'MAHARASHTRA', 22, 27, 1, '2019-04-26 13:42:06', '2019-04-26 13:42:06'),
(1285, 'NEVASA', 'MAHARASHTRA', 22, 27, 1, '2019-04-26 13:42:06', '2019-04-26 13:42:06'),
(1286, 'NIRA', 'MAHARASHTRA', 22, 27, 1, '2019-04-26 13:42:06', '2019-04-26 13:42:06'),
(1287, 'OSMANABAD', 'MAHARASHTRA', 22, 27, 1, '2019-04-26 13:42:06', '2019-04-26 13:42:06'),
(1288, 'PAITHAN', 'MAHARASHTRA', 22, 27, 1, '2019-04-26 13:42:06', '2019-04-26 13:42:06'),
(1289, 'PANCHGANI', 'MAHARASHTRA', 22, 27, 1, '2019-04-26 13:42:06', '2019-04-26 13:42:06'),
(1290, 'PANDHARPUR', 'MAHARASHTRA', 22, 27, 1, '2019-04-26 13:42:06', '2019-04-26 13:42:06'),
(1291, 'PANHALA', 'MAHARASHTRA', 22, 27, 1, '2019-04-26 13:42:06', '2019-04-26 13:42:06'),
(1292, 'PARBHANI', 'MAHARASHTRA', 22, 27, 1, '2019-04-26 13:42:06', '2019-04-26 13:42:06'),
(1293, 'PAROLA', 'MAHARASHTRA', 22, 27, 1, '2019-04-26 13:42:06', '2019-04-26 13:42:06'),
(1294, 'PHALTAN', 'MAHARASHTRA', 22, 27, 1, '2019-04-26 13:42:06', '2019-04-26 13:42:06'),
(1295, 'RAHURI', 'MAHARASHTRA', 22, 27, 1, '2019-04-26 13:42:06', '2019-04-26 13:42:06'),
(1296, 'RAJAGURUNAGAR', 'MAHARASHTRA', 22, 27, 1, '2019-04-26 13:42:06', '2019-04-26 13:42:06'),
(1297, 'RATNAGIRI', 'MAHARASHTRA', 22, 27, 1, '2019-04-26 13:42:06', '2019-04-26 13:42:06'),
(1298, 'SANASWADI', 'MAHARASHTRA', 22, 27, 1, '2019-04-26 13:42:06', '2019-04-26 13:42:06'),
(1299, 'SANGAMNER', 'MAHARASHTRA', 22, 27, 1, '2019-04-26 13:42:06', '2019-04-26 13:42:06'),
(1300, 'SANGLI', 'MAHARASHTRA', 22, 27, 1, '2019-04-26 13:42:06', '2019-04-26 13:42:06'),
(1301, 'SASWAD', 'MAHARASHTRA', 22, 27, 1, '2019-04-26 13:42:06', '2019-04-26 13:42:06'),
(1302, 'SHIRDI', 'MAHARASHTRA', 22, 27, 1, '2019-04-26 13:42:06', '2019-04-26 13:42:06'),
(1303, 'SHIROL', 'MAHARASHTRA', 22, 27, 1, '2019-04-26 13:42:06', '2019-04-26 13:42:06'),
(1304, 'SHIRUR', 'MAHARASHTRA', 22, 27, 1, '2019-04-26 13:42:06', '2019-04-26 13:42:06'),
(1305, 'SHIRWAL', 'MAHARASHTRA', 22, 27, 1, '2019-04-26 13:42:06', '2019-04-26 13:42:06'),
(1306, 'SHRIGONDA', 'MAHARASHTRA', 22, 27, 1, '2019-04-26 13:42:06', '2019-04-26 13:42:06'),
(1307, 'SHRIRAMPUR', 'MAHARASHTRA', 22, 27, 1, '2019-04-26 13:42:06', '2019-04-26 13:42:06'),
(1308, 'SINDEWADI', 'MAHARASHTRA', 22, 27, 1, '2019-04-26 13:42:06', '2019-04-26 13:42:06'),
(1309, 'SINNAR', 'MAHARASHTRA', 22, 27, 1, '2019-04-26 13:42:06', '2019-04-26 13:42:06'),
(1310, 'TAKVE', 'MAHARASHTRA', 22, 27, 1, '2019-04-26 13:42:06', '2019-04-26 13:42:06'),
(1311, 'WAI', 'MAHARASHTRA', 22, 27, 1, '2019-04-26 13:42:06', '2019-04-26 13:42:06'),
(1312, 'DHAMPUR', '', 38, 0, 1, '2019-04-26 13:42:06', '2019-04-26 13:42:06');

-- --------------------------------------------------------

--
-- Table structure for table `cms_case_study`
--

DROP TABLE IF EXISTS `cms_case_study`;
CREATE TABLE IF NOT EXISTS `cms_case_study` (
  `cms_page_id` int(11) NOT NULL,
  `casestudy_category_id` int(11) NOT NULL,
  `is_main` int(11) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `cms_insights`
--

DROP TABLE IF EXISTS `cms_insights`;
CREATE TABLE IF NOT EXISTS `cms_insights` (
  `cms_page_id` int(11) NOT NULL,
  `blog_category_id` int(11) NOT NULL,
  `is_main` int(11) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `cms_media`
--

DROP TABLE IF EXISTS `cms_media`;
CREATE TABLE IF NOT EXISTS `cms_media` (
  `cms_page_id` int(11) NOT NULL,
  `casestudy_category_id` int(11) NOT NULL,
  `is_main` int(11) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `cms_pages`
--

DROP TABLE IF EXISTS `cms_pages`;
CREATE TABLE IF NOT EXISTS `cms_pages` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `parent_id` int(11) DEFAULT '0',
  `name` varchar(100) DEFAULT NULL,
  `slug` varchar(255) NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `heading` varchar(255) DEFAULT NULL,
  `brief` text,
  `template` varchar(255) DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `banner_image` varchar(255) DEFAULT NULL,
  `content` text,
  `old_content` text,
  `default_content` text,
  `meta_title` varchar(650) DEFAULT NULL,
  `meta_keyword` varchar(650) DEFAULT NULL,
  `meta_description` varchar(650) DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT '1',
  `featured` tinyint(4) NOT NULL DEFAULT '0',
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=35 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `cms_pages`
--

INSERT INTO `cms_pages` (`id`, `parent_id`, `name`, `slug`, `title`, `heading`, `brief`, `template`, `image`, `banner_image`, `content`, `old_content`, `default_content`, `meta_title`, `meta_keyword`, `meta_description`, `status`, `featured`, `created_at`, `updated_at`) VALUES
(1, 0, 'Services', 'services', 'Services', 'OUR SERVICES', 'Technology-enabled <span class=\"bannerNewLine\"></span> services that keep <span class=\"displayNewLine\"></span> you going', 'pages.corporate', NULL, '171020093223-220920061940-rsz_landing_banner.png', '<section class=\"allServices wow fadeInDown allServicespleftRight\">\r\n<div class=\"allServicesBox\">\r\n<div class=\"container-fluid\">\r\n<div class=\"row\">\r\n<div class=\"col-12 col-md-9 col-sm-9 col-lg-9 col-xl-9 mb50\">\r\n<div class=\"servicesBoxImg newsButton\" style=\"background: url(\'/assets/themes/theme-1/images/Career_LandingleftImg.png\');\">&nbsp;</div>\r\n</div>\r\n\r\n<div class=\"col-12 col-md-3 col-sm-3 col-lg-3 col-xl-3 mb50\">\r\n<div class=\"blueOverLayBox\">\r\n<h1 class=\"title_text\">Varuna Logistics</h1>\r\n\r\n<p>With more than two decades of operational excellence in transportation services backed by the country&rsquo;s largest owned fleet, Varuna Logistics helps you drive business growth with high efficiency. Experience total en route visibility, industry-leading transit times &amp; much more.</p>\r\n\r\n<div class=\"newsButton blueOverLayBtn\"><a href=\"/logistics-management-services\">READ MORE</a></div>\r\n</div>\r\n<!-- blueOverLayBox --></div>\r\n\r\n<div class=\"col-12 col-md-3 col-sm-3 col-lg-3 col-xl-3 mb50\">\r\n<div class=\"yellowOverLayBox\">\r\n<h2 class=\"title_text\">Varuna Warehousing</h2>\r\n\r\n<p>Leverage the advantage of efficient inventory management supported by primary and secondary transportation services to our pan India network of 25+ warehousing facilities. For your short-term, long-term or flexible warehousing needs, experience our dedicated warehousing solutions, value added services or multi user facilities via pay-per-use model to experience improved planning and enhanced cost reduction.</p>\r\n\r\n<div class=\"newsButton yellowOverLayBtn\"><a href=\"/warehousing-management-services\">READ MORE</a></div>\r\n</div>\r\n<!-- yellowOverLayBox --></div>\r\n\r\n<div class=\"col-12 col-md-9 col-sm-9 col-lg-9 col-xl-9 mb50\">\r\n<div class=\"servicesBoxImg newsButton\" style=\"background: url(\'/assets/themes/theme-1/images/Career_LandingleftImg2.jpg\');\">&nbsp;</div>\r\n</div>\r\n<!--\r\n<div class=\"col-12 col-md-9 col-sm-9 col-lg-9 col-xl-9 mb50\">\r\n<div class=\"servicesBoxImg newsButton\" style=\"background: url(\'/assets/themes/theme-1/images/Career_LandingleftImg3.png\');\"> </div>\r\n</div>\r\n\r\n<div class=\"col-12 col-md-3 col-sm-3 col-lg-3 col-xl-3\">\r\n<div class=\"blueOverLayBox\">\r\n<h4>Varuna Integrated Services</h4>\r\n\r\n<p>Tired of managing an ever-expanding supply chain alone? As your single point of contact for integrated services, we can seamlessly consolidate multiple logistics operations, taking the load off your shoulders, so that you can run your business more effectively.</p>\r\n\r\n<div class=\"newsButton blueOverLayBtn\"><a href=\"/service-integrate\">READ MORE</a></div>\r\n</div>\r\n<!-- blueOverLayBox --></div>\r\n</div>\r\n<!-- row --></div>\r\n<!--- container-fluid --><!--allServicesBox --></section>', NULL, NULL, 'End to End logistics (3PL) Services, Warehouse Value Added Services, Contract Logistics in India', NULL, 'Varuna is one of the best end to end logistics (3PL) service provider in India. We offer professional warehouse value added services and contract logistics services in India.', 1, 0, '2020-07-23 06:21:34', '2021-02-13 06:37:48'),
(2, 0, 'Home Page', 'home-page', 'Home Page', NULL, NULL, NULL, NULL, NULL, '<section class=\"home__sec__one wow fadeInDown\">\r\n<div class=\"container-fluid\">\r\n<div class=\"row\">\r\n<div class=\"col-sm-4 col-12 col-md-4 col-xl-4 col-lg-4\">\r\n<div class=\"home__our__services\">\r\n<h1>OUR SERVICES</h1>\r\n\r\n<p>Experience exceptional 3PL, warehousing and logistics services driven by an operationally excellent DNA.</p>\r\n</div>\r\n<!-- home__our__services -->\r\n\r\n<ul class=\"nav home__pills\">\r\n	<li class=\"nav-item\"><a class=\"nav-link active\" data-toggle=\"tab\" href=\"#panel11\" role=\"tab\">Varuna Logistics</a></li>\r\n	<li class=\"nav-item\"><a class=\"nav-link\" data-toggle=\"tab\" href=\"#panel12\" role=\"tab\">Varuna Warehousing</a></li>\r\n</ul>\r\n</div>\r\n<!-- col-sm-6 -->\r\n\r\n<div class=\"col-sm-8 col-12 col-md-8 col-xl-8 col-lg-8\"><!-- Tab panels -->\r\n<div class=\"tab-content pt-0\"><!--Panel 1-->\r\n<div class=\"tab-pane fade in show active home__tab__pane\" id=\"panel11\" role=\"tabpanel\">\r\n<div class=\"tabOverlay__main\">\r\n<div class=\"tabOverlay__bg lazy\" data-src=\"/assets/themes/theme-1/images/our-services-1.jpg\">&nbsp;</div>\r\n\r\n<div class=\"tabOverlay__cont\">\r\n<p>Reach any part of India in record time with the country&#39;s largest owned fleet comprising 1800+ dry cargo container trucks.</p>\r\n\r\n<div class=\"tab__homeReadmore\"><a href=\"/logistics-management-services\">Know More</a></div>\r\n</div>\r\n</div>\r\n<!-- tabOverlay__main --></div>\r\n<!--/.Panel 1--><!--Panel 2-->\r\n\r\n<div class=\"tab-pane fade\" id=\"panel12\" role=\"tabpanel\">\r\n<div class=\"tabOverlay__main\">\r\n<div class=\"tabOverlay__bg lazy\" data-src=\"/assets/themes/theme-1/images/Our-Services-2.jpg\">&nbsp;</div>\r\n\r\n<div class=\"tabOverlay__cont\">\r\n<p>Experience efficient inventory management with Grade A infrastructure at 25+ strategically located, modern storage facilities.</p>\r\n\r\n<div class=\"tab__homeReadmore\"><a href=\"/warehousing-management-services\">Know More</a></div>\r\n</div>\r\n</div>\r\n<!-- tabOverlay__main --></div>\r\n<!--/.Panel 2--></div>\r\n<!-- tab-content --></div>\r\n<!-- col-sm-6 --></div>\r\n<!-- row --></div>\r\n<!--  container-fluid --></section>\r\n\r\n<section class=\"overLayIageSection wow fadeInDown\">\r\n<div class=\"embed-responsive embed-responsive-21by9 \"><!-- <iframe allowfullscreen=\"\" frameborder=\"0\" height=\"315\" src=\"https://www.youtube.com/embed/gZ5MuUPe7Bk?&autoplay=1&controls=0&&showinfo=0&loop=1\" width=\"560\"></iframe> -->\r\n<div class=\"youtube\" data-embed=\"4m_0V5EqS3Q\">\r\n<div class=\"play-button\">&nbsp;</div>\r\n</div>\r\n</div>\r\n\r\n<div class=\"container-fluid paddingleftRight overlaybox overlaySideImgHide\">\r\n<div class=\"row  justify-content-center\">\r\n<div class=\"col-sm-5 col-md-5 col-lg-5 col-xl-5 col-12\">\r\n<h4>MULTI USER FACILITIES</h4>\r\n\r\n<div class=\"becomeIndia\">Experience flexible warehousing <!--span class=\"displayNewLine\"></span--></div>\r\n</div>\r\n\r\n<div class=\"col-sm-6 col-md-6 col-lg-6 col-xl-5 col-12\">\r\n<p>Fulfil your short, medium or long-term storage needs efficiently with our world-class Multi User Facilities. Enjoy the unmatched advantage of a well-trained workforce, advanced technologies, streamlined processes and a robust quality management system, at a fraction of the cost.</p>\r\n\r\n<div class=\"knowMoreWhite\"><a href=\"/multi-user-facilities\">Know More</a></div>\r\n</div>\r\n</div>\r\n</div>\r\n</section>\r\n\r\n<section class=\"home__sec__two hide__in__mob wow fadeInDown\">\r\n<div class=\"container\">\r\n<ul class=\"home__numbers\">\r\n	<li>\r\n	<div class=\"numbers__main__box\">\r\n	<div class=\"numbers__img\">&nbsp;</div>\r\n\r\n	<div class=\"numbers__numbr\">500+\r\n	<div>Companies Served</div>\r\n	</div>\r\n	</div>\r\n	</li>\r\n	<li>\r\n	<div class=\"numbers__main__box\">\r\n	<div class=\"numbers__img\">&nbsp;</div>\r\n\r\n	<div class=\"numbers__numbr\">1500+\r\n	<div>Team Members</div>\r\n	</div>\r\n	</div>\r\n	</li>\r\n	<li>\r\n	<div class=\"numbers__main__box\">\r\n	<div class=\"numbers__img\">&nbsp;</div>\r\n\r\n	<div class=\"numbers__numbr\">1800+\r\n	<div>Owned Trucks</div>\r\n	</div>\r\n	</div>\r\n	</li>\r\n</ul>\r\n</div>\r\n</section>\r\n\r\n<section class=\"home__sec__two home__sec__twoMob wow fadeInDown\">\r\n<div class=\"container\">\r\n<div class=\"owl-carousel home__slider__mob\">\r\n<div class=\"item\">\r\n<div class=\"numbers__main__box\">\r\n<div class=\"numbers__img\"><img alt=\"Companies Served\" src=\"/assets/themes/theme-1/images/imgsecond__1.png\" /></div>\r\n\r\n<div class=\"numbers__numbr\">1500+\r\n<div>Companies Served</div>\r\n</div>\r\n</div>\r\n</div>\r\n<!-- item -->\r\n\r\n<div class=\"item\">\r\n<div class=\"numbers__main__box\">\r\n<div class=\"numbers__img\"><img alt=\"Team Members\" src=\"/assets/themes/theme-1/images/imgsecond__2.png\" /></div>\r\n\r\n<div class=\"numbers__numbr\">1600+\r\n<div>Team Members</div>\r\n</div>\r\n</div>\r\n</div>\r\n<!-- item -->\r\n\r\n<div class=\"item\">\r\n<div class=\"numbers__main__box\">\r\n<div class=\"numbers__img\"><img alt=\"Owned Trucks\" src=\"/assets/themes/theme-1/images/imgsecond__3.png\" /></div>\r\n\r\n<div class=\"numbers__numbr\">1800+\r\n<div>Owned Trucks</div>\r\n</div>\r\n</div>\r\n</div>\r\n<!-- item --></div>\r\n<!-- home__slider__mob --></div>\r\n</section>\r\n<!-- <section class=\"home__sec__three wow fadeInDown\">\r\n<div class=\"container\">\r\n<div class=\"top__cont__slider\">\r\n<h5>Key Industries</h5>\r\n\r\n<p>Offering leading-edge solutions for your business</p>\r\n</div>\r\n\r\n<div class=\"owl-carousel home__slider\">\r\n<div class=\"item\">\r\n<div class=\"home__SecWrp\">\r\n<div class=\"img__overlay\"><a href=\"/industry-healthcare\"> </a></div>\r\n<a href=\"/industry-healthcare\"><img class=\"img-fluid\" src=\"/assets/themes/theme-1/images/key-ndustries-1.png\" /></a></div>\r\n\r\n<div class=\"h__slider__content\"><a href=\"/industry-healthcare\">Pharma & Healthcare</a></div>\r\n</div>\r\n\r\n<div class=\"item\">\r\n<div class=\"home__SecWrp\">\r\n<div class=\"img__overlay1\"><a href=\"javascript:void(0);\"> </a></div>\r\n<a href=\"javascript:void(0);\"><img alt=\"\" class=\"img-fluid\" src=\"/assets/themes/theme-1/images/key-ndustries-2.png\" /></a></div>\r\n\r\n<div class=\"h__slider__content\"><a href=\"/industry-automotive\">Auto & Tyre</a></div>\r\n</div>\r\n\r\n\r\n<div class=\"item\">\r\n<div class=\"home__SecWrp\">\r\n<div class=\"img__overlay2\"><a href=\"javascript:void(0);\"> </a></div>\r\n<a href=\"javascript:void(0);\"><img alt=\"\" class=\"img-fluid\" src=\"/assets/themes/theme-1/images/key-ndustries-3.png\" /></a></div>\r\n\r\n<div class=\"h__slider__content\"><a href=\"/food-beverage\">Food & Beverage</a></div>\r\n</div>\r\n\r\n<div class=\"item\">\r\n<div class=\"home__SecWrp\">\r\n<div class=\"img__overlay3\"><a href=\"javascript:void(0);\"> </a></div>\r\n<a href=\"javascript:void(0);\"><img alt=\"\" class=\"img-fluid\" src=\"/assets/themes/theme-1/images/key-ndustries-4.png\" /></a></div>\r\n\r\n<div class=\"h__slider__content\"><a href=\"/industry-electrical\">Electrical</a></div>\r\n</div>\r\n\r\n\r\n<div class=\"item\">\r\n<div class=\"home__SecWrp\">\r\n<div class=\"img__overlay4\"><a href=\"javascript:void(0);\"> </a></div>\r\n<a href=\"javascript:void(0);\"><img alt=\"\" class=\"img-fluid\" src=\"/assets/themes/theme-1/images/key-ndustries-5.png\" /></a></div>\r\n\r\n<div class=\"h__slider__content\"><a href=\"/industry-omnichannel\">Omnichannel Retail</a></div>\r\n</div>\r\n\r\n\r\n<div class=\"item\">\r\n<div class=\"home__SecWrp\">\r\n<div class=\"img__overlay5\"><a href=\"javascript:void(0);\"> </a></div>\r\n<a href=\"javascript:void(0);\"><img alt=\"\" class=\"img-fluid\" src=\"/assets/themes/theme-1/images/key-ndustries-6.png\" /></a></div>\r\n\r\n<div class=\"h__slider__content\"><a href=\"/industry-fmcg\">FMCG</a></div>\r\n</div>\r\n</div>\r\n</div>\r\n</section> -->\r\n\r\n<section class=\"emplandingTwobox wow fadeInDown\">\r\n<div class=\"empl__banner__bg\">\r\n<div class=\"empl__banner2 home__sect lazy\" data-src=\"/assets/themes/theme-1/images/slider__home__2.jpg\">&nbsp;</div>\r\n\r\n<div class=\"homeemp__sect\">\r\n<h5>Building the Future of Supply Chain Management</h5>\r\n\r\n<p>We are continually embracing advanced technology integrations to uplevel your supply chain and help you experience the distinctive service excellence that you know us for.</p>\r\n\r\n<div class=\"newsButton empl__button home__buttonSec\"><a href=\"/capability-technology\">READ MORE</a></div>\r\n</div>\r\n</div>\r\n</section>\r\n\r\n<section class=\"home__sec__five wow fadeInDown\">\r\n<div class=\"container-fluid\">\r\n<div class=\"row\">\r\n<div class=\"col-sm-5 col-12 col-md-12 col-xl-5 col-lg-5\">\r\n<div class=\"life__at__varuna\">\r\n<h2>LIFE AT VARUNA</h2>\r\n\r\n<p>We foster new ideas and appreciate an appetite for risk-taking. We make sure that every employee advances on the path of their choosing, along with their colleagues and the organisation.</p>\r\n\r\n<div class=\"homeknowMore__yellow\"><a href=\"/career-life-at-varuna\">KNOW MORE</a></div>\r\n</div>\r\n</div>\r\n\r\n<div class=\"col-sm-7 col-12 col-md-12 col-xl-7 col-lg-7\">\r\n<div class=\"owl-carousel  home__lifeAtveruna\">\r\n<div class=\"item\">\r\n<div><img alt=\"LIFE AT VARUNA\" class=\"img-fluid\" src=\"/assets/themes/theme-1/images/life-varuna1.jpg\" /></div>\r\n</div>\r\n<!-- item -->\r\n\r\n<div class=\"item\">\r\n<div><img alt=\"LIFE AT VARUNA\" class=\"img-fluid\" src=\"/assets/themes/theme-1/images/life-varuna2.jpg\" /></div>\r\n</div>\r\n<!-- item --><!-- item --></div>\r\n<!-- owl-carousel  home__lifeAtveruna --></div>\r\n<!-- col --></div>\r\n</div>\r\n</section>', NULL, NULL, 'Varuna Group', NULL, 'Varuna Group', 1, 0, '2020-07-23 17:33:48', '2021-02-15 06:35:19'),
(3, 0, 'About', 'about', 'About', 'About us', 'Our commitment to <span class=\"bannerNewLine\"></span> excellence powers <span class=\"bannerNewLine\"></span>  our growth', 'pages.about', NULL, '150920052856-slider.jpg', '<section class=\"wlcomeSec wow fadeInDown bgcolorFFFCF3\">\r\n<div class=\"container\">\r\n<h1>Welcome to Varuna Group</h1>\r\n\r\n<p>Varuna Group was founded in 1996 with customer-centricity, operational excellence and transparency fuelling its core. Today, we are the priority partner for India&#39;s supply chain leaders who count on us to efficiently manage their end-to-end logistics operations and reduce the effective landed cost of products.</p>\r\n\r\n<div class=\"knowMoreYellow\"><a href=\"/corporate\">Know More</a></div>\r\n</div>\r\n</section>\r\n\r\n<section class=\"gallerySec wow fadeInDown galleryLargeSec\">\r\n<div class=\"gallerySubSec\">\r\n<div class=\"allGal\" style=\"background: url(\'/assets/themes/theme-1/images/gal1.jpg\');\">&nbsp;</div>\r\n\r\n<div class=\"allGal\" style=\"background: url(\'/assets/themes/theme-1/images/gal2.jpg\');\">&nbsp;</div>\r\n\r\n<div class=\"allGal\" style=\"background: url(\'/assets/themes/theme-1/images/gal3.jpg\');\">&nbsp;</div>\r\n\r\n<div class=\"allGal\" style=\"background: url(\'/assets/themes/theme-1/images/gal4.jpg\');\">&nbsp;</div>\r\n\r\n<div class=\"allGal\" style=\"background: url(\'/assets/themes/theme-1/images/gal5.jpg\');\">&nbsp;</div>\r\n\r\n<div class=\"allGal\" style=\"background: url(\'/assets/themes/theme-1/images/gal6.jpg\');\">&nbsp;</div>\r\n</div>\r\n</section>\r\n\r\n<section class=\"galleryMobileSec wow fadeInDown\">\r\n<div class=\"container\">\r\n<div class=\"owl-carousel mobileBnnerSlider\">\r\n<div class=\"item\">\r\n<div class=\"galleryMobileSecWrp\"><img alt=\"Top Third Party Logistics (3PL) Companies\" class=\"img-fluid\" src=\"/assets/themes/theme-1/images/gal1.jpg\" /></div>\r\n</div>\r\n\r\n<div class=\"item\">\r\n<div class=\"galleryMobileSecWrp\"><img alt=\"Warehouse Management Companies in India\" class=\"img-fluid\" src=\"/assets/themes/theme-1/images/gal2.jpg\" /></div>\r\n</div>\r\n\r\n<div class=\"item\">\r\n<div class=\"galleryMobileSecWrp\"><img alt=\"3PL Companies\" class=\"img-fluid\" src=\"/assets/themes/theme-1/images/gal3.jpg\" /></div>\r\n</div>\r\n\r\n<div class=\"item\">\r\n<div class=\"galleryMobileSecWrp\"><img alt=\"Warehouse Management Services in India\" class=\"img-fluid\" src=\"/assets/themes/theme-1/images/gal4.jpg\" /></div>\r\n</div>\r\n\r\n<div class=\"item\">\r\n<div class=\"galleryMobileSecWrp\"><img alt=\"Top Third Party Logistics Companies\" class=\"img-fluid\" src=\"/assets/themes/theme-1/images/gal5.jpg\" /></div>\r\n</div>\r\n\r\n<div class=\"item\">\r\n<div class=\"galleryMobileSecWrp\"><img alt=\"Logistics Companies in India\" class=\"img-fluid\" src=\"/assets/themes/theme-1/images/gal6.jpg\" /></div>\r\n</div>\r\n</div>\r\n</div>\r\n</section>\r\n\r\n<section class=\"leadershipSection indexleadershipsec  indexleadershipsecOne wow fadeInDown\">\r\n<div class=\"container\">\r\n<div class=\"userImgOne\">\r\n<h4 class=\"h4comman\">LEADERSHIP</h4>\r\n</div>\r\n\r\n<div class=\"row  justify-content-center\">\r\n<div class=\"col-sm-6 col-lg-6 col-xl-6 col-12 col-md-6 userImgOne\"><img alt=\"VIKAS JUNEJA\" class=\"img-fluid borderRadius5\" src=\"/assets/themes/theme-1/images/man-1.png\" /></div>\r\n\r\n<div class=\"col-sm-6 col-lg-6 col-xl-6 col-12 col-md-6 userOne\">\r\n<h4>VIKAS JUNEJA</h4>\r\n\r\n<h5>Founder &amp; Chairman</h5>\r\n\r\n<p>Mr Vikas Juneja is a visionary businessman, a seasoned entrepreneur and an inspiring leader. With 30+ years of experience in managing large fleet operations, he has played a key role in developing some of the best industry practices in the country.</p>\r\n</div>\r\n\r\n<div class=\"col-sm-6 col-lg-5 col-xl-6 col-12 col-md-6 userTwo\">\r\n<h4>VIVEK JUNEJA</h4>\r\n\r\n<h5>Founder &amp; Managing Director</h5>\r\n\r\n<p>Mr Vivek Juneja has been pivotal in ushering transparent and fair business practices in the industry. Under his remarkable leadership, Varuna Group has delivered superior service to its clients while fostering customer-centricity and a DNA of operational excellence.</p>\r\n</div>\r\n\r\n<div class=\"col-sm-6 col-lg-6 col-xl-6 col-12 col-md-6 userImgOne\"><img alt=\"VIVEK JUNEJA\" class=\"img-fluid borderRadius5\" src=\"/assets/themes/theme-1/images/man-2.jpg\" /></div>\r\n</div>\r\n</div>\r\n</section>\r\n\r\n<section class=\"overLayIageSection wow fadeInDown\"><img alt=\"OUR JOURNEY\" class=\"img-fluid\" src=\"/assets/themes/theme-1/images/ourJourney.jpg\" />\r\n<div class=\"container-fluid paddingleftRight overlaybox overlaySideImgHide\">\r\n<div class=\"row  justify-content-center\">\r\n<div class=\"col-sm-5 col-md-5 col-lg-5 col-xl-5 col-12\">\r\n<h4>OUR JOURNEY</h4>\r\n\r\n<div class=\"becomeIndia\">Becoming one of India&#39;s top 3PL, warehousing and logistics services provider</div>\r\n</div>\r\n\r\n<div class=\"col-sm-6 col-md-6 col-lg-6 col-xl-5 col-12\">\r\n<p>Our unswerving commitment to our foundational principles - staying transparent, agile &amp; ethical with our clients - has played an instrumental<br />\r\nrole in our growth.</p>\r\n\r\n<div class=\"knowMoreWhite\"><a href=\"/journey\">Know More</a></div>\r\n</div>\r\n</div>\r\n</div>\r\n</section>\r\n\r\n<section class=\"knowMoreAbout wow fadeInDown\">\r\n<div class=\"container\">\r\n<div class=\"row justify-content-center\">\r\n<div class=\"col-sm-8 col-lg-8 col-xl-8 col-md-8 col-12\">\r\n<p>Investing in passionate people, robust technologies and the right systems to ascend your growth.</p>\r\n</div>\r\n\r\n<div class=\"col-sm-4 col-lg-4 col-xl-4 col-md-4 col-12\">\r\n<div class=\"knowMore\"><a href=\"/capabilities\">View Capabilities</a></div>\r\n</div>\r\n</div>\r\n</div>\r\n</section>', NULL, NULL, 'Third Party Logistics Companies, Top 3PL Companies, 3PL Solution Providers in India', NULL, 'Third Party Logistics Company- Varuna is one of the best third party logistics (3PL) companies in India. We provide professional third party logistics (3PL) solutions.', 1, 0, '2020-07-23 17:54:38', '2021-02-13 07:07:02'),
(4, 3, 'Corporate', 'corporate', 'Corporate', 'Corporate Overview', 'Setting the precedent for <br />service excellence', 'pages.corporate', NULL, '070121012145-ezgif.com-gif-maker (33).jpg', '<section class=\"commLeftSect bgcolorFFF8E7 wow fadeInDown\">\r\n<div class=\"container\">\r\n<h1>About Varuna Group</h1>\r\n\r\n<p>The foundation of Varuna Group was laid in 1996, at the threshold of a new era in Indian logistics. With the principles of customer-centricity, operational excellence and transparency at the nexus, today, we partner with supply chain leaders in managing their end-to-end logistics operations to reduce the effective landed cost of products. Our 1500+ trained specialists in 60+ branches across India are focused on accelerating the growth of our clients through high operational efficiency and incredible service.</p>\r\n</div>\r\n</section>\r\n\r\n<section class=\"leadershipSection wow fadeInDown\">\r\n<div class=\"container borderBottom\">\r\n<div class=\"topUserSectionHeading\">\r\n<div class=\"common_top_upper color_white\">OUR PROMISE</div>\r\n\r\n<p>Work with us to consistently experience excellent service, accelerated growth and reduced effective landed cost of products.</p>\r\n</div>\r\n\r\n<div class=\"row  justify-content-center\">\r\n<div class=\"col-sm-6 col-lg-6 col-xl-6 col-12 col-md-6 userImgOne\"><img alt=\"Service Excellence\" class=\"img-fluid borderRadius5\" src=\"/assets/themes/theme-1/images/newcorpo.png\" /></div>\r\n\r\n<div class=\"col-sm-6 col-lg-6 col-xl-6 col-12 col-md-6 userOne\">\r\n<div class=\"landingHeading_employee_stories\">Service Excellence</div>\r\n\r\n<p>We surpass your expectations, every single time, through our relentless commitment to excellence.</p>\r\n\r\n<div class=\"smallYellowLine\">&nbsp;</div>\r\n</div>\r\n\r\n<div class=\"col-sm-6 col-lg-5 col-xl-6 col-12 col-md-6 userTwo\">\r\n<div class=\"landingHeading_employee_stories\">Reduced Effective Landed Cost of Products</div>\r\n\r\n<p>We aid in reducing the effective landed cost of products through our single-minded focus on operational efficiency.</p>\r\n\r\n<div class=\"smallYellowLine\">&nbsp;</div>\r\n</div>\r\n\r\n<div class=\"col-sm-6 col-lg-6 col-xl-6 col-12 col-md-6 userImgOne\"><img alt=\"Reduced Effective Landed Cost of Products\" class=\"img-fluid borderRadius5\" src=\"/assets/themes/theme-1/images/newcorpo1.jpg\" /></div>\r\n\r\n<div class=\"col-sm-6 col-lg-6 col-xl-6 col-12 col-md-6 userImgOne\"><img alt=\"Growth Acceleration\" class=\"img-fluid borderRadius5\" src=\"/assets/themes/theme-1/images/newcorpo2.jpg\" /></div>\r\n\r\n<div class=\"col-sm-6 col-lg-6 col-xl-6 col-12 col-md-6 userOne\">\r\n<div class=\"landingHeading_employee_stories\">Growth Acceleration</div>\r\n\r\n<p>With the promise of 100% order fullfillment, market leading transit times, 0.01% damage ratio we act as a catlayst for your business growth.</p>\r\n\r\n<div class=\"smallYellowLine\">&nbsp;</div>\r\n</div>\r\n</div>\r\n</div>\r\n</section>\r\n\r\n<section class=\"missionSec wow fadeInDown\">\r\n<div class=\"container\">\r\n<div class=\"topUserSectionHeading\">\r\n<div class=\"common_top_upper\">Mission</div>\r\n</div>\r\n\r\n<div class=\"row\">\r\n<div class=\"col-sm-6\">\r\n<div class=\"missionBoxOne\">\r\n<div class=\"text_head\">For Customers</div>\r\n\r\n<p>To provide an efficient, predictable and transparent service that reduces the effective landed cost of products and enhances market competitiveness.</p>\r\n</div>\r\n</div>\r\n\r\n<div class=\"col-sm-6\">\r\n<div class=\"missionBoxTwo\">\r\n<div class=\"text_head\">For Employees</div>\r\n\r\n<p>To provide an equitable workplace that rewards persistent commitment and results in a fulfilling, meaningful and a high growth career.</p>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</section>\r\n\r\n<section class=\"overLayIageSection wow fadeInDown\"><img alt=\"Our Vision\" class=\"img-fluid\" src=\"/assets/themes/theme-1/images/visionNew.jpg\" />\r\n<div class=\"container-fluid paddingleftRight overlaybox\">\r\n<div class=\"row  justify-content-center\">\r\n<div class=\"col-sm-5 col-md-5 col-lg-5 col-xl-5 col-12\">\r\n<div class=\"common_top_upper color_white\">Vision</div>\r\n\r\n<div class=\"becomeIndia\">To be India&#39;s leading shared<br />\r\nlogistics network operator</div>\r\n</div>\r\n\r\n<div class=\"col-sm-6 col-md-6 col-lg-6 col-xl-5 col-12\">\r\n<p>In a shared logistics network, multiple companies align to share resources across their supply chains to optimise landed costs basis the complementary materials they produce. Key resources like warehouse space, vehicle capacity, manpower and administrative support may be shared in suitable ratios with others via a built-in pay-as-you-use component, ensuring a win-win situation.</p>\r\n</div>\r\n</div>\r\n</div>\r\n</section>\r\n\r\n<section class=\"experienceexcSec exoCorporateSec wow fadeInDown\">\r\n<div class=\"container borderBottom\">\r\n<div class=\"row\">\r\n<div class=\"col-sm-6 col-md-12 col-lg-6 col-xl6 col-12\">\r\n<div class=\"experienceexcSecHed\">\r\n<h4>experience excellence</h4>\r\n</div>\r\n</div>\r\n\r\n<div class=\"col-sm-6 col-md-12 col-lg-6 col-xl6 col-12\">\r\n<div class=\"experienceexcSecTex\">\r\n<p><strong>Our tagline is inspired by the way we have always functioned -</strong> benchmarking ourselves against the best while guranteeing nothing but excellence to you. It is both our motivation to seek continuous improvement in everything we do and our promise of a perfect service to you.</p>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</section>\r\n\r\n<section class=\"coreVal wow fadeInDown\">\r\n<div class=\"container\">\r\n<div class=\"topUserSectionHeading exoCorporateSecHead\">\r\n<div class=\"common_top_upper\">Core values</div>\r\n</div>\r\n\r\n<div class=\"row\">\r\n<div class=\"col-sm-4 col-md-4 col-lg4 col-xl-4 col-12\">\r\n<div class=\"coreValYellowBox\"><img alt=\"We are transparent\" class=\"img-fluid\" src=\"/assets/themes/theme-1/images/icon-3.png\" />\r\n<div class=\"main_text\">We are transparent</div>\r\n\r\n<p>We share our ideas, doubts and suggestions proactively and with complete honesty.</p>\r\n</div>\r\n</div>\r\n\r\n<div class=\"col-sm-4 col-md-4 col-lg4 col-xl-4 col-12\">\r\n<div class=\"coreValBlueBox\"><img alt=\"Always say the truth\" class=\"img-fluid\" src=\"/assets/themes/theme-1/images/whatsapp.png\" />\r\n<div class=\"main_text\">Always say the truth</div>\r\n\r\n<p>Truth is what we say and what we do. Whatever the situation, we choose truth over comfort.</p>\r\n</div>\r\n</div>\r\n\r\n<div class=\"col-sm-4 col-md-4 col-lg4 col-xl-4 col-12\">\r\n<div class=\"coreValYellowBox\"><img alt=\"Deliver on commitment\" class=\"img-fluid\" src=\"/assets/themes/theme-1/images/icon4.png\" style=\"    width: 33%;\" />\r\n<div class=\"main_text\">Deliver on commitment</div>\r\n\r\n<p>Be it with each other or with our clients, we deliver what we promise.</p>\r\n</div>\r\n</div>\r\n\r\n<div class=\"col-sm-4 col-md-4 col-lg4 col-xl-4 col-12\">\r\n<div class=\"coreValBlueBox\"><img alt=\"Technology first\" class=\"img-fluid\" src=\"/assets/themes/theme-1/images/icon2.png\" />\r\n<div class=\"main_text\">Technology first</div>\r\n\r\n<p>We utilise technology to drive efficiency and reliability into our services.</p>\r\n</div>\r\n</div>\r\n\r\n<div class=\"col-sm-4 col-md-4 col-lg4 col-xl-4 col-12\">\r\n<div class=\"coreValYellowBox\"><img alt=\"Do the right thing, even when no one is watching\" class=\"img-fluid\" src=\"/assets/themes/theme-1/images/icon5.png\" />\r\n<div class=\"main_text\">Do the right thing, even when no one is watching</div>\r\n\r\n<p>We honour our commitments with integrity and conduct our business the right way.</p>\r\n</div>\r\n</div>\r\n\r\n<div class=\"col-sm-4 col-md-4 col-lg4 col-xl-4 col-12\">\r\n<div class=\"coreValBlueBox\"><img alt=\"Challenge the status quo\" class=\"img-fluid\" src=\"/assets/themes/theme-1/images/icon6.png\" />\r\n<div class=\"main_text\">Challenge the status quo</div>\r\n\r\n<p>We constantly push our limits and keep moving, establishing new standards along the way.</p>\r\n</div>\r\n</div>\r\n\r\n<div class=\"col-sm-4 col-md-4 col-lg4 col-xl-4 col-12\">\r\n<div class=\"coreValYellowBox\"><img alt=\"Make our customers successful\" class=\"img-fluid cust-width\" src=\"/assets/themes/theme-1/images/icon7.png\" />\r\n<div class=\"main_text\">Make our customers successful</div>\r\n\r\n<p>We are constantly helping our clients deliver on their commitments to the market.</p>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</section>\r\n\r\n<section class=\"awardsSec wow fadeInDown\">\r\n<div class=\"container\">\r\n<div class=\"topUserSectionHeading\">\r\n<div class=\"common_top_upper\">Awards</div>\r\n</div>\r\n\r\n<div class=\"row\">\r\n<div class=\"col-12\">\r\n<div class=\"owl-carousel awardSlider\">\r\n<div class=\"item\">\r\n<div class=\"awardSlWrp\"><img alt=\"Awards 1\" class=\"img-fluid\" src=\"/assets/themes/theme-1/images/Awards1.png\" />\r\n<div class=\"awardInfo\">\r\n<div class=\"text_info\">JK Tyre</div>\r\n\r\n<p>JK Tyre awarded us for our Excellent Vehicle Maintenance Practices in the year 2018-19. Our state-of-the-art maintenance of vehicles help us keep our fleet on the road for maximum possible time with least breakdowns.</p>\r\n</div>\r\n</div>\r\n</div>\r\n<!-- item -->\r\n\r\n<div class=\"item\">\r\n<div class=\"awardSlWrp\"><img alt=\"Awards 2\" class=\"img-fluid\" src=\"/assets/themes/theme-1/images/Awards2.png\" />\r\n<div class=\"awardInfo\">\r\n<div class=\"text_info\">ATMA</div>\r\n\r\n<p>ATMA Awarded us for our Excellent HR/Driver training.Our maintenance facility houses a driver training department which takes care of periodic training of drivers basis the results of the data from the tracking devices. This includes driver speed, turning angle,etc</p>\r\n</div>\r\n</div>\r\n</div>\r\n<!-- item -->\r\n\r\n<div class=\"item\">\r\n<div class=\"awardSlWrp\"><img alt=\"Awards 3\" class=\"img-fluid\" src=\"/assets/themes/theme-1/images/Awards3.png\" />\r\n<div class=\"awardInfo\">\r\n<div class=\"text_info\">Unilever</div>\r\n\r\n<p>Unilever awarded us with Unilevers&#39; &#39;Winning through Capacity &amp; Capability&#39; award as part of Unilevers&#39; international &#39;Partner To Win&#39; programme- an initiative to recognise and award outstanding strategic suppliers during &#39;South Asia Partner to Win Summit&#39; in Mumbai. We were one of only 15 awardees out of the 109 key suppliers filtered out of its 1000 odd suppliers across South Asia.</p>\r\n</div>\r\n</div>\r\n</div>\r\n<!-- item -->\r\n\r\n<div class=\"item\">\r\n<div class=\"awardSlWrp\"><img alt=\"Awards 4\" class=\"img-fluid\" src=\"/assets/themes/theme-1/images/Awards4.png\" />\r\n<div class=\"awardInfo\">\r\n<div class=\"text_info\">MCPI</div>\r\n\r\n<p>MCCPTA recognized us in 2019 for maintaining a record of zero accidents for an entire year, they supply multinationals manufacturers with crucial components where any minor accident of vehicle results in rejection of the entire load. MCCPTA recognized us in 2011 for our all-round performance in transportation.</p>\r\n</div>\r\n</div>\r\n</div>\r\n<!-- item -->\r\n\r\n<div class=\"item\">\r\n<div class=\"awardSlWrp\"><img alt=\"Awards 5\" class=\"img-fluid\" src=\"/assets/themes/theme-1/images/Awards5.png\" />\r\n<div class=\"awardInfo\">\r\n<div class=\"text_info\">P&amp;G</div>\r\n\r\n<p>P&amp;G recognised us with &#39;Rookie of the year&#39;, &#39;Highest improvement in containerization on Manesar-Kolkata lane&#39; and &#39;Runners up Transporter - Customer Complaints (DA)&#39; in the year 2011 at their transportation symposium, held at Udaipur.</p>\r\n</div>\r\n</div>\r\n</div>\r\n<!-- item -->\r\n\r\n<div class=\"item\">\r\n<div class=\"awardSlWrp\"><img alt=\"Awards 6\" class=\"img-fluid\" src=\"/assets/themes/theme-1/images/Awards6.png\" />\r\n<div class=\"awardInfo\">\r\n<div class=\"text_info\">HUL</div>\r\n\r\n<p>In 2004 HUL recognized us for our contribution to Inbound and outbound Supply Chain Operations at Haridwar Plant. But Haridwar being a slightly remote location, not many transporters were ready to provide services there. We provided our services there and for the first time in the history of HUL, they rewarded a partner with a cash reward of Rs 2 lac.</p>\r\n</div>\r\n</div>\r\n</div>\r\n<!-- item -->\r\n\r\n<div class=\"item\">\r\n<div class=\"awardSlWrp\"><img alt=\"Awards 7\" class=\"img-fluid\" src=\"/assets/themes/theme-1/images/Awards7.png\" />\r\n<div class=\"awardInfo\">\r\n<div class=\"text_info\">MCC PTA</div>\r\n\r\n<p>MCCPTA recognized us in 2011 for our all-round performance in transportation.</p>\r\n</div>\r\n</div>\r\n</div>\r\n<!-- item -->\r\n\r\n<div class=\"item\">\r\n<div class=\"awardSlWrp\"><img alt=\"Awards 8\" class=\"img-fluid\" src=\"/assets/themes/theme-1/images/Awards8.png\" />\r\n<div class=\"awardInfo\">\r\n<div class=\"text_info\">LG</div>\r\n\r\n<p>LG recognized us for setting up base near their new plant at LG Gandhidham, a very remote location with tough climatic conditions, no one was ready to provide services there. We took the charge to provide inbound and outbound transportation there and helped them operate successfully.</p>\r\n</div>\r\n</div>\r\n</div>\r\n<!-- item -->\r\n\r\n<div class=\"item\">\r\n<div class=\"awardSlWrp\"><img alt=\"Awards 9\" class=\"img-fluid\" src=\"/assets/themes/theme-1/images/Awards9.png\" />\r\n<div class=\"awardInfo\">\r\n<div class=\"text_info\">GSK</div>\r\n\r\n<p>GSK recognized us for our all -round performance during the year 2017-18 during their annual quality meet in 2018.</p>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</section>\r\n\r\n<section class=\"posImpact wow fadeInDown\">\r\n<h6><img alt=\"CSR Initiatives\" class=\"img-fluid\" src=\"/assets/themes/theme-1/images/schoolGirls.jpg\" style=\"font-size: 13px;\" /></h6>\r\n\r\n<div class=\"posImpactImgText pos__impact\">\r\n<h6>CSR Initiatives<br />\r\n<span class=\"yellowHeading\">Going the extra mile to create a positive impact</span></h6>\r\n</div>\r\n</section>\r\n\r\n<section class=\"wow fadeInDown\">\r\n<div class=\"posImpactContectSec\">\r\n<div class=\"container\">\r\n<div class=\"row\">\r\n<div class=\"col-sm-6\">\r\n<p>We are a socially, economically &amp; environmentally conscious company, striving to build a sustainable future.<br />\r\nWe strongly believe that as we move ahead, our actions should have a<br />\r\npositive impact.</p>\r\n</div>\r\n\r\n<div class=\"col-sm-6\">\r\n<h6>Some of our CSR initiatives include:</h6>\r\n\r\n<ul>\r\n	<li>Establishing a Computer Lab and a Solar Power Centre at an Asha Kiran (NGO) in Dharuhera, Haryana</li>\r\n	<br />\r\n	<li>Sponsoring Girl Child Education at Aarushi Homes, a centre under the Salaam Baalak Trust</li>\r\n	<br />\r\n	<li>Granting scholarships for the higher education of the girl children of our team members who cannot afford it</li>\r\n</ul>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</section>\r\n\r\n<section class=\"knowMoreAbout wow fadeInDown\">\r\n<div class=\"container\">\r\n<div class=\"row justify-content-center\">\r\n<div class=\"col-sm-8 col-lg-8 col-xl-8 col-md-8 col-12\">\r\n<p>Investing in passionate people, robust technologies and the right systems to ascend your growth.</p>\r\n</div>\r\n\r\n<div class=\"col-sm-4 col-lg-4 col-xl-4 col-md-4 col-12\">\r\n<div class=\"knowMore\"><a href=\"/capabilities\">View Capabilities</a></div>\r\n</div>\r\n</div>\r\n</div>\r\n</section>', NULL, NULL, 'Corporate Overview | Varuna Group', NULL, 'The foundation of Varuna Group was laid in 1996, at the threshold of a new era in Indian logistics with the principles of customer-centricity, operational excellence and transparency.', 1, 0, '2020-07-23 17:56:59', '2021-01-22 09:04:51'),
(5, 3, 'Journey', 'journey', 'Journey', 'Our Journey', 'Achieving one <br />milestone at a time', 'pages.corporate', NULL, '070121011249-051020090912-rsz_1our_journey_banner-02.jpg', '<section class=\"commLeftSect bgcolorFFF8E7 wow fadeInDown\">\r\n<div class=\"container\">\r\n<h1>Excellence at every turn</h1>\r\n\r\n<p>As we reminisce the journey of our organisation, we realise that over all these years our customers have always been at the centre of our goals. Be it our adherence to transparent communication, a strong moral code of conduct and using technology to usher in more efficiency, we have partnered with the best in the business while staying true to our founding principles. It has helped us deliver exceptional experiences at every turn while building resilient supply chains for our clientele.</p>\r\n</div>\r\n</section>\r\n\r\n<section class=\"blogSection wow fadeInDown\">\r\n<div class=\"container borderBottom\">\r\n<div class=\"row justify-content-center\">\r\n<div class=\"col-sm-6 col-lg-6 col-xl-6 col-md-6 col-12 commpadding\">\r\n<div class=\"blogImg\"><img alt=\"Inception &amp; Growth\" class=\"img-fluid borderRadius5\" src=\"/assets/themes/theme-1/images/blog-img1.png\" /></div>\r\n</div>\r\n\r\n<div class=\"col-sm-6 col-lg-6 col-xl-6 col-md-6 col-12 commpadding\">\r\n<div class=\"blogContent BlogContent\">\r\n<div class=\"years_area\">1990 - 2005</div>\r\n\r\n<div class=\"year_content\">Inception &amp; Growth</div>\r\n\r\n<div class=\"year_orange\">1996 - 1999</div>\r\n\r\n<p>Varuna Group was founded by Vikas Juneja &amp; Vivek Juneja in 1996. The company commenced operations in Bareilly with 2 trucks.</p>\r\n\r\n<p>During our early years, we were a contractor to express service providers in Delhi.</p>\r\n\r\n<div class=\"year_orange\">2003 - 2004</div>\r\n\r\n<p>We became the partner of choice for MNCs in FMCG and Tyres.</p>\r\n\r\n<p>We pioneered 32&rdquo; multi-axle trucks, modifying 22&rdquo; Taurus, to facilitate transportation of big shipments, especially for long haul transport.</p>\r\n</div>\r\n<!-- blogContent--></div>\r\n\r\n<div class=\"borderTop\">&nbsp;</div>\r\n\r\n<div class=\"col-sm-6 col-lg-6 col-xl-6 col-md-6 col-12 commpadding\">\r\n<div class=\"blogImg\"><img alt=\"Forging Our Way Forward\" class=\"img-fluid insideImg borderRadius5\" src=\"/assets/themes/theme-1/images/Varuna-Journey-new-copy.png\" /> <img alt=\"Our fleet grew to 500+ owned trucks.\" class=\"img-fluid borderRadius5\" src=\"/assets/themes/theme-1/images/blog-img3.png\" /></div>\r\n</div>\r\n\r\n<div class=\"col-sm-6 col-lg-6 col-xl-6 col-md-6 col-12 commpadding\">\r\n<div class=\"BlogContent\">\r\n<div class=\"years_area\">2006 - 2015</div>\r\n\r\n<div class=\"year_content\">Forging Our Way Forward</div>\r\n\r\n<div class=\"year_orange\">2008 - 2009</div>\r\n\r\n<p>Varuna Group became an ISO 9001:2008 certified organisation in 2008.</p>\r\n\r\n<p>We continued to focus on FMCG &amp; Tyres. During the same period, we restructured all non-scalable and non-sustainable business practices.</p>\r\n\r\n<p>We also installed GPS units in our entire fleet, enabling 100% in-transit visibility.</p>\r\n\r\n<h6>2010</h6>\r\n\r\n<p>Our fleet grew to 500+ owned trucks.</p>\r\n\r\n<div class=\"year_orange\">2011</div>\r\n\r\n<p>We became the preferred partner for leading companies in FMCG &amp; Auto.</p>\r\n\r\n<p>We underwent a strategic shift and began offering warehousing and value-added services.</p>\r\n</div>\r\n</div>\r\n\r\n<div class=\"borderTop\">&nbsp;</div>\r\n\r\n<div class=\"col-sm-6 col-lg-6 col-xl-6 col-md-6 col-12 commpadding\">\r\n<div class=\"blogImg\"><img alt=\"\" src=\"https://varuna.net/storage/ck/230221050823-MUF Image will be change- A-6.jpeg\" style=\"width: 590px; height: 400px;\" /><img alt=\"\" src=\"https://varuna.net/storage/ck/230221050757-Warehouse Image- R-59.jpeg\" style=\"width: 590px; height: 400px;\" /><img alt=\"Warehouse Management System (WMS\" class=\"img-fluid blogImg borderRadius5\" src=\"/assets/themes/theme-1/images/blog-img6.png\" /></div>\r\n</div>\r\n\r\n<div class=\"col-sm-6 col-lg-6 col-xl-6 col-md-6 col-12 commpadding\">\r\n<div class=\"BlogContent\">\r\n<div class=\"years_area\">2015 - Present</div>\r\n\r\n<div class=\"year_content\">Delivering Excellence</div>\r\n\r\n<div class=\"year_orange\">2015</div>\r\n\r\n<p>With yet another strategic shift, we began offering supply chain consulting services. We established a supply chain lab and 5 MRO Hubs.</p>\r\n\r\n<div class=\"year_orange\">2016</div>\r\n\r\n<p>We were managing 15 top-notch storage facilities covering ~500,000 sq. ft. and had incorporated fleet&nbsp;hubs&nbsp;across India.</p>\r\n\r\n<div class=\"year_orange\">2017</div>\r\n\r\n<p>We expanded our fleet size to 1600+ trucks.</p>\r\n\r\n<div class=\"year_orange\">2018</div>\r\n\r\n<p>We added another 100 trucks to our fleet, growing it to 1700+ trucks.</p>\r\n\r\n<p>We were now managing 750,000 sq. ft. of warehousing space.</p>\r\n\r\n<h6>2019</h6>\r\n\r\n<p>We opened a Multi User Facility (4.3 lakh sq. ft.) at Shambhu Naka near Ambala in Punjab, the largest of its kind in the area.</p>\r\n\r\n<p>Our warehousing area increased to 1,200,000 sq. ft.</p>\r\n\r\n<p>We unified and re-distributed our services to form three new lines of business - Logistics, Warehousing and Integrated Services - under the umbrella of the Varuna Group.</p>\r\n\r\n<div class=\"year_orange\">2020</div>\r\n\r\n<p>During the COVID-19 lockdown, we ramped up our digitisation efforts and instated contactless logistics while pioneering Digital Lorry Receipts (LR) and setting up a Warehouse Management System (WMS). We turned the crisis to our advantage, helping our existing and new customers transport essential goods across India.</p>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</section>\r\n\r\n<section class=\"knowMoreAbout wow fadeInDown\">\r\n<div class=\"container\">\r\n<div class=\"row justify-content-center\">\r\n<div class=\"col-sm-8 col-lg-8 col-xl-8 col-md-8 col-12\">\r\n<p>Investing in passionate people, robust technologies and the right systems to ascend your growth.</p>\r\n</div>\r\n\r\n<div class=\"col-sm-4 col-lg-4 col-xl-4 col-md-4 col-12\">\r\n<div class=\"knowMore\"><a href=\"/capabilities\">View Capabilities</a></div>\r\n</div>\r\n</div>\r\n</div>\r\n</section>', NULL, NULL, 'Our Journey | Varuna Group', 'Journey', 'As we reminisce the journey of our organisation, we realise that over all these years our customers have always been at the centre of our goals.', 1, 0, '2020-07-23 18:24:16', '2021-02-23 05:08:30'),
(6, 0, 'contact Us', 'contact-us', 'Contact', 'Contact Us', 'We’ll help you  <span class=\"bannerNewLine\"></span> solve your most  <span class=\"bannerNewLine\"></span> pressing challenges', 'pages.contact', NULL, '140820101324-contactbanner.png', '<section class=\"contactSecti wow fadeInDown\">\r\n<div class=\"container\">\r\n<div class=\"topUserSectionHeading\">\r\n<h1 class=\"h3_heading_seo pt40\">Receive a delightful service. Pass on the joy to your customers.</h1>\r\n\r\n<p>Get custom-built solutions, accelerated growth and tangible savings in the effective landed cost of your products. Connect with us today.</p>\r\n</div>\r\n\r\n<div class=\"contHeadquarters\">\r\n<div class=\"row\">\r\n<div class=\"col-md-4 col-sm-4 col-md-4 col-12 col-lg-4 col-xl-4\">\r\n<div class=\"contHeadOne\">\r\n<div class=\"contText\">Headquarters</div>\r\n\r\n<div class=\"contAdd\">Plot no 572, Near Nawab Honda, Pace City II, Sector 37, Gurugram, Haryana 122001</div>\r\n\r\n<div class=\"directionBtn\"><a href=\"https://www.google.com/maps/dir//Plot+no+572,+Near+Nawab+Honda,+Pace+City+II,+Sector+37,+Gurugram,+Haryana+122001/@28.4346493,76.924245,12z/data=!3m1!4b1!4m9!4m8!1m1!4e2!1m5!1m1!1s0x390d17ef65554a8f:0xdfb25769390d1e44!2m2!1d76.9942853!2d28.4346672\" target=\"_blank\">Get Directions</a></div>\r\n</div>\r\n</div>\r\n<!-- col -->\r\n\r\n<div class=\"col-md-4 col-sm-4 col-md-4 col-12 col-lg-4 col-xl-4\">\r\n<div class=\"contHeadOne\">\r\n<div class=\"contText\">Contacts</div>\r\n\r\n<div class=\"contAdd\"><a href=\"tel:0124-2373214\">T: 0124-2373214</a> | F:<a hre=\"tel:0124-2373214\">0124-2373214</a></div>\r\n</div>\r\n</div>\r\n\r\n<div class=\"col-md-4 col-sm-4 col-md-4 col-12 col-lg-4 col-xl-4\">\r\n<div class=\"contHeadOne\">\r\n<div class=\"contText\">Email</div>\r\n\r\n<div class=\"contAdd\"><a href=\"mailto:info@varuna.net\">info@varuna.net</a></div>\r\n</div>\r\n</div>\r\n<!-- col --></div>\r\n<!-- row --></div>\r\n<!-- contHeadquarters --></div>\r\n<!-- container--></section>\r\n\r\n<section class=\"regionalOffSecti wow fadeInDown\">\r\n<div class=\"container\">\r\n<h4 class=\"regionalOffh4 textUppercase\">Regional Offices</h4>\r\n\r\n<div class=\"row\">\r\n<div class=\"col-md-4 col-sm-4 col-md-4 col-12 col-lg-4 col-xl-4\">\r\n<div class=\"allAddres\">\r\n<div class=\"contText\">West</div>\r\n\r\n<div class=\"contGray\">218, Second Floor, Orion Business Park, Next to Cinemax, Kapurbawdi, Thane (W)- 400607, MH</div>\r\n\r\n<div class=\"contMail\">T: <a href=\"tel:9053811112\">9053811112</a><br />\r\nE: <a href=\"mailto:hrwest@varuna.net\">hrwest@varuna.net</a></div>\r\n\r\n<div class=\"directionBtn\"><a href=\"https://www.google.com/maps/dir//218,+Second+Floor,+Orion+Business+Park,+Next+to+Cinemax,+Kapurbawdi,+Thane+(W)-+400607,/@19.2211463,72.9069306,12z/data=!3m1!4b1!4m9!4m8!1m1!4e2!1m5!1m1!1s0x3be7b982c25d871b:0x2a909950b2e759aa!2m2!1d72.9769711!2d19.2211596\" target=\"_blank\">Get Directions</a></div>\r\n</div>\r\n<!-- contHeadOne --></div>\r\n\r\n<div class=\"col-md-4 col-sm-4 col-md-4 col-12 col-lg-4 col-xl-4\">\r\n<div class=\"allAddres\">\r\n<div class=\"contText\">North</div>\r\n\r\n<div class=\"contGray\">Unit No-307, 3rd Floor, K M Trade Tower, Kaushambi, Ghaziabad &ndash; 201010, UP</div>\r\n\r\n<div class=\"contMail\">T: 9312402390<br />\r\nE: hrnorth@varuna.net</div>\r\n\r\n<div class=\"directionBtn\"><a href=\"https://www.google.com/maps/dir//Unit+No-307,+3rd+Floor,+K+M+Trade+Tower,+Kaushambi,+Ghaziabad+%E2%80%93+201010,+UP/@28.63619,77.258158,12z/data=!3m1!4b1!4m9!4m8!1m1!4e2!1m5!1m1!1s0x390cfbefb1bab247:0xe7e6522a35d3f9cf!2m2!1d77.3281983!2d28.636208\" target=\"_blank\">Get Directions</a></div>\r\n</div>\r\n<!-- contHeadOne --></div>\r\n\r\n<div class=\"col-md-4 col-sm-4 col-md-4 col-12 col-lg-4 col-xl-4\">\r\n<div class=\"allAddres\">\r\n<div class=\"contText\">South l</div>\r\n\r\n<div class=\"contGray\">Door No: 149. Office No: T15 &amp; 17, 3rd&nbsp;Floor, Alsa Mall, Montieth Rd, Egmore, Chennai- 600008, TN</div>\r\n\r\n<div class=\"contMail\">T: 7338829361<br />\r\nE: hrsouth@varuna.net</div>\r\n\r\n<div class=\"directionBtn\"><a href=\"https://www.google.com/maps/place/Alsa+Mall/@13.0686817,80.2550745,17z/data=!3m1!4b1!4m5!3m4!1s0x3a526612f512f0ff:0x2bb035548a9c2ff2!8m2!3d13.0686817!4d80.2572632\" target=\"_blank\">Get Directions</a></div>\r\n</div>\r\n<!-- contHeadOne --></div>\r\n\r\n<div class=\"col-md-4 col-sm-4 col-md-4 col-12 col-lg-4 col-xl-4\">\r\n<div class=\"allAddres padingTop60\">\r\n<div class=\"contText\">South ll</div>\r\n\r\n<div class=\"contGray\">6-3-1239/2/B/1, Renuka Enclave, Somajiguda, Hyderabad - 500089, TG</div>\r\n\r\n<div class=\"contMail\">T: 9810339239<br />\r\nE: hr.south2@varuna.net</div>\r\n\r\n<div class=\"directionBtn\"><a href=\"https://www.google.com/maps/dir//6-3-1239%2F2%2FB%2F1,+Renuka+Enclave,+Somajiguda,+Hyderabad+-+500089,+Telangana/data=!4m6!4m5!1m1!4e2!1m2!1m1!1s0x3bcb974f8ae45931:0x532c519ded507895?sa=X&amp;ved=2ahUKEwiF2tGNztHrAhXxzzgGHfVMDwAQ9RcwDHoECBEQBA\" target=\"_blank\">Get Directions</a></div>\r\n</div>\r\n<!-- contHeadOne --></div>\r\n\r\n<div class=\"col-md-4 col-sm-4 col-md-4 col-12 col-lg-4 col-xl-4\">\r\n<div class=\"allAddres padingTop60\">\r\n<div class=\"contText\">East</div>\r\n\r\n<div class=\"contGray\">Off. No. 407, 4th Floor, PS IXL Building, Beside Holiday Inn, Chinar Park, Kolkata - 700136, WB</div>\r\n\r\n<div class=\"contGray\">T: 7603005360<br />\r\nE: hreast@varuna.net</div>\r\n\r\n<div class=\"directionBtn\"><a href=\"https://www.google.com/maps/dir//Off.+No.+407,+4th+Floor,+PS+IXL+Building,+Beside+Holiday+Inn,+Chinar+Park,+Kolkata+-+700136,+WB/@22.6232533,88.3737771,12z/data=!3m1!4b1!4m9!4m8!1m1!4e2!1m5!1m1!1s0x39f89fd26e5dec01:0xec58f742f430492f!2m2!1d88.4438175!2d22.6232685\" target=\"_blank\">Get Directions</a></div>\r\n</div>\r\n<!-- contHeadOne --></div>\r\n</div>\r\n<!-- row --></div>\r\n<!-- container --></section>', NULL, NULL, 'Contact us | Varuna Group', NULL, 'Feel free to contact us for warehousing and logistics services in India. We provide highly professional warehousing and logistics services.', 1, 0, '2020-07-24 05:17:05', '2021-03-13 07:56:29');
INSERT INTO `cms_pages` (`id`, `parent_id`, `name`, `slug`, `title`, `heading`, `brief`, `template`, `image`, `banner_image`, `content`, `old_content`, `default_content`, `meta_title`, `meta_keyword`, `meta_description`, `status`, `featured`, `created_at`, `updated_at`) VALUES
(7, 13, 'Capability Quality', 'capability-quality', 'Quality', 'QUALITY ASSURANCE', 'Exacting quality <br />standards, every<br /> step of the way', 'pages.capablity-quality', NULL, '171020072811-ezgif.com-gif-maker (4).jpg', '<section class=\"commLeftSect bgcolorFFF8E7  wow fadeInDown\">\r\n<div class=\"container\">\r\n<h1>Build a robust, efficient and<br />\r\nscalable business with us</h1>\r\n\r\n<p class=\"fontWeight400\">When it comes to our operations &amp; service, Varuna Group follows the best industry practices, prioritising transparency, quality &amp; efficiency. We have implemented a bespoke Quality Management System (QMS) for our clients in line with ISO 9001:2015 guidelines, promising &amp; delivering excellence in everything we do. Our adherence to ethical business practices along with quality assurance &amp; control has helped us emerge as India&rsquo;s preferred logistics services provider.</p>\r\n</div>\r\n</section>\r\n\r\n<section class=\"overLayIageSection wow fadeInDown\"><img alt=\"FOCUSED ON QUALITY\" class=\"img-fluid\" src=\"/assets/themes/theme-1/images/quality2.jpg\" />\r\n<div class=\"container-fluid paddingleftRight overlaybox overlaySideImgHide\">\r\n<div class=\"row  justify-content-center\">\r\n<div class=\"col-sm-5 col-md-5 col-lg-5 col-xl-5 col-12\">\r\n<div class=\"haed_with_logos\"><img alt=\"Varuna QAC\" class=\"img-fluid\" src=\"/assets/themes/theme-1/images/capability-head-icon.png\" />\r\n<div class=\"fontWeight300 lg_text\">FOCUSED ON<br />\r\nQUALITY</div>\r\n</div>\r\n\r\n<div class=\"becomeIndia\">Standardising our methodology</div>\r\n</div>\r\n\r\n<div class=\"col-sm-6 col-md-6 col-lg-6 col-xl-5 col-12\">\r\n<p>Since our inception, we have progressively incorporated stringent measures for quality assurance &amp; control into our operations. Over the years, quality management has become an indispensable part of the Varuna DNA. Our team takes extra care to ensure that every client-related activity or process gets executed following well laid out SOPs with the intent to deliver the highest level of excellence. This passion for quality is further reflected in everything we do, enabling us to deliver consistent service.</p>\r\n</div>\r\n</div>\r\n</div>\r\n</section>\r\n\r\n<section class=\"qutmesSec wow fadeInDown\">\r\n<div class=\"container\">\r\n<div class=\"h3_heading_seo pt40\">Quality measures that set us apart</div>\r\n\r\n<div class=\"row\">\r\n<div class=\"col-sm-6 col-md-6 col-12 col-lg-6 col-xl-6\">\r\n<ul class=\"yellowStyleList\">\r\n	<li>A dedicated online platform for rigorous quality management</li>\r\n	<li>ISO compliance to maintain consistent quality assurance</li>\r\n	<li>JMP to ensure incident-free, safe trips for drivers</li>\r\n</ul>\r\n</div>\r\n\r\n<div class=\"col-sm-6 col-md-6 col-12 col-lg-6 col-xl-6\">\r\n<ul class=\"yellowStyleList\">\r\n	<li>EHS training &amp; adherence to ensure workplace safety</li>\r\n	<li>Use of proper PPE to enhance personnel safety</li>\r\n	<li>Dedicated Kaizen team for continuous improvement</li>\r\n</ul>\r\n</div>\r\n</div>\r\n</div>\r\n</section>\r\n\r\n<section class=\"posImpact posImpac_mver wow fadeInDown\"><img alt=\"Practices that ensure consistent quality\" src=\"/storage/ck/171020093827-ezgif.com-gif-maker (6).jpg\" style=\"width:100%\" />\r\n<div class=\"quality__imgcontt\">\r\n<div class=\"text_over\">Overseeing every<br />\r\nshipment thoroughly <span class=\"yellowHeading\">Practices that ensure consistent quality</span></div>\r\n</div>\r\n</section>\r\n\r\n<section class=\"wow fadeInDown ligtYellowBoxSec\">\r\n<div class=\"container\">\r\n<div class=\"row\">\r\n<div class=\"col-sm-4 col-lg-4 col-xl-4 col-md-4\">\r\n<div class=\"ligtYellowBox lightYellowImg\"><img alt=\"Process Design &amp; Rollout\" class=\"img-fluid\" src=\"/assets/themes/theme-1/images/icon_Quality-02.png\" />\r\n<div class=\"text_lg\">Process Design &amp; Rollout</div>\r\n\r\n<p>We outline and introduce multiple quality processes after a thorough industry-wide requirements analysis and enable their execution across all our departments.</p>\r\n</div>\r\n</div>\r\n\r\n<div class=\"col-sm-4 col-lg-4 col-xl-4 col-md-4\">\r\n<div class=\"ligtYellowBox lightYellowImg\"><img alt=\"Quality Checks &amp; Closure of Non-Compliance\" class=\"img-fluid\" src=\"/assets/themes/theme-1/images/icon_Quality-03.png\" />\r\n<div class=\"text_lg\">Quality Checks &amp; Closure of Non-Compliance</div>\r\n\r\n<p>We ensure the completion of each quality check as per the defined SOPs so that it&#39;s easier to spot non-compliance issues &amp; speed up their&nbsp;resolution.</p>\r\n</div>\r\n</div>\r\n\r\n<div class=\"col-sm-4 col-lg-4 col-xl-4 col-md-4\">\r\n<div class=\"ligtYellowBox lightYellowImg\"><img alt=\"Employee Health &amp; Safety\" class=\"img-fluid\" src=\"/assets/themes/theme-1/images/icon_Quality-04.png\" />\r\n<div class=\"text_lg\">Employee Health &amp; Safety</div>\r\n\r\n<p>We prioritise the health &amp; safety of our team members and continuously optimise our processes to ensure a workplace that is secure and safe for them.</p>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</section>', NULL, NULL, 'Quality | Varuna Group', NULL, 'When it comes to our operations & service, Varuna Group follows the best industry practices, prioritising transparency, quality & efficiency.', 1, 0, '2020-07-24 05:43:47', '2021-01-15 12:33:51'),
(8, 13, 'Capability People', 'capability-people', 'People', 'OUR PEOPLE', 'Fostering excellence,<br />one individual at a time</p>', 'pages.capability-people', NULL, '070121015831-ezgif.com-gif-maker (38).jpg', '<section class=\"threeYellowBox sep_box_mob  wow fadeInDown\">\r\n<div class=\"container\">\r\n<div class=\"row\">\r\n<div class=\"col-sm-4 col-md-4 col-lg-4 col-xl-4 col-12\">\r\n<div class=\"yellowBox__One\">\r\n<div class=\"yellowBoxdiv\">32 <span>YEARS </span></div>\r\n\r\n<p class=\"yellowBoxp\">average age</p>\r\n</div>\r\n</div>\r\n\r\n<div class=\"col-sm-4 col-md-4 col-lg-4 col-xl-4 col-12\">\r\n<div class=\"yellowBox__Two\">\r\n<div class=\"yellowBoxdiv\">6000+ <span>YEARS </span></div>\r\n\r\n<p class=\"yellowBoxp\">cumulative experience</p>\r\n</div>\r\n</div>\r\n\r\n<div class=\"col-sm-4 col-md-4 col-lg-4 col-xl-4 col-12\">\r\n<div class=\"yellowBox__Three\">\r\n<div class=\"yellowBoxdiv\">1600+ <span> </span></div>\r\n\r\n<p class=\"yellowBoxp\">team strength</p>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</section>\r\n\r\n<section class=\"commLeftSect commLeftSectPeopl  wow fadeInDown\">\r\n<div class=\"container\">\r\n<h1>We are passionate about serving you</h1>\r\n\r\n<p>Right from our inception days, we took a conscious call to invest in our people, inspiring them to become focused on delivering excellence in everything they do. Their passion &amp; commitment has enabled us to become one of the most trusted logistics service providers in the country. We have grown into an organisation that&rsquo;s quick to respond and adapt to the dynamic industry landscape.</p>\r\n</div>\r\n</section>\r\n\r\n<section class=\"overLayIageSection wow fadeInDown\"><img alt=\"OUR LEADERSHIP\" class=\"img-fluid\" src=\"/assets/themes/theme-1/images/peopleBanner2.jpg\" />\r\n<div class=\"container-fluid paddingleftRight overlaybox overlaySideImgHide\">\r\n<div class=\"row  justify-content-center\">\r\n<div class=\"col-sm-5 col-md-5 col-lg-5 col-xl-5 col-12\">\r\n<h4 class=\"fontWeight300\">OUR LEADERSHIP</h4>\r\n\r\n<div class=\"becomeIndia fontWeight300\">The driving force behind Varuna Group</div>\r\n</div>\r\n\r\n<div class=\"col-sm-6 col-md-6 col-lg-6 col-xl-5 col-12\">\r\n<ul class=\"yellowStyleList colorfff fweight400\">\r\n	<li>Combined experience of 650+ years</li>\r\n	<li>Worked across 20+ industries</li>\r\n	<li>Veterans of supply chain management</li>\r\n</ul>\r\n</div>\r\n</div>\r\n</div>\r\n</section>\r\n\r\n<section class=\"twoColFourBox  wow fadeInDown\">\r\n<div class=\"container\">\r\n<div class=\"row  justify-content-center eaq_box\">\r\n<div class=\"col-sm-6 col-md-6 col-lg-5 col-xl-6 col-12\">\r\n<h2 class=\"h1heading\">Our Managers, Executives &amp;<br />\r\nFrontline Team</h2>\r\n\r\n<p class=\"twoColFourBoxp\">From business analysts &amp; operations executives to our frontline team, our people effectively leverage their logistics expertise in combination with a data-oriented approach to deliver you the best-in-class experience.</p>\r\n</div>\r\n\r\n<div class=\"col-sm-6 col-md-6 col-lg-6 col-xl-6 col-12 pt21\">\r\n<div class=\"container capability_people_mob\">\r\n<div class=\"row\">\r\n<div class=\"col-sm-6 col-md-6 col-lg-6 col-xl-6 col-12 mb24\">\r\n<div class=\"yellowBoxOne\">\r\n<p class=\"fourBoxHeading\">700+ Managers &amp; Executives</p>\r\n</div>\r\n</div>\r\n\r\n<div class=\"col-sm-6 col-md-6 col-lg-6 col-xl-6 col-12 mb24\">\r\n<div class=\"yellowBoxTwo\">\r\n<p class=\"fourBoxHeading\">800+ Frontline Team Members</p>\r\n</div>\r\n</div>\r\n\r\n<div class=\"col-sm-6 col-md-6 col-lg-6 col-xl-6 col-12\">\r\n<div class=\"yellowBoxTwo\">\r\n<p class=\"fourBoxHeading\">Kaizen for Continuous Improvement</p>\r\n</div>\r\n</div>\r\n\r\n<div class=\"col-sm-6 col-md-6 col-lg-6 col-xl-6 col-12\">\r\n<div class=\"yellowBoxThree\">\r\n<p class=\"fourBoxHeading\">Continuous Investment in Building Competencies</p>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</section>\r\n\r\n<section class=\"overLayIageSection wow fadeInDown\"><img alt=\"OUR DRIVERS\" class=\"img-fluid\" src=\"/assets/themes/theme-1/images/peopleBanner3.jpg\" />\r\n<div class=\"container-fluid paddingleftRight overlaybox overlaySideImgHide\">\r\n<div class=\"row  justify-content-center\">\r\n<div class=\"col-sm-5 col-md-5 col-lg-5 col-xl-5 col-12\">\r\n<div class=\"h3_heading_seo color_white\">OUR DRIVERS</div>\r\n\r\n<div class=\"becomeIndia fontWeight300\">Steering you towards excellence</div>\r\n</div>\r\n\r\n<div class=\"col-sm-6 col-md-6 col-lg-6 col-xl-5 col-12\">\r\n<p>Our drivers are our leaders on the road. As our most important assets, they utilise the largest owned dry cargo fleet in the country &amp; our proprietary technological innovations to deliver your consignments punctually and reliably, to every part of India.</p>\r\n</div>\r\n</div>\r\n</div>\r\n</section>\r\n\r\n<section class=\"threeLightYellowBox threeLight_mob_icon  wow fadeInDown\">\r\n<div class=\"container\">\r\n<div class=\"row justify-content-left\">\r\n<div class=\"col-sm-4 col-md-4 col-lg-4 col-xl-4 col-12 threeBoxWidth\">\r\n<div class=\"lightYellowBoxOne\">\r\n<div class=\"twoColm\">\r\n<div class=\"twoColmOne\">\r\n<div class=\"twocomImg\" style=\"background-image: url(\'/assets/themes/theme-1/images/regular.png\');\">&nbsp;</div>\r\n</div>\r\n\r\n<div class=\"twoColmTwo\">\r\n<p>Regular Training</p>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n<!-- col -->\r\n\r\n<div class=\"col-sm-4 col-md-4 col-lg-4 col-xl-4 col-12 threeBoxWidth\">\r\n<div class=\"lightYellowBoxTwo\">\r\n<div class=\"twoColm\">\r\n<div class=\"twoColmOne\">\r\n<div class=\"twocomImg\" style=\"background-image: url(\'/assets/themes/theme-1/images/compelete.png\');\">&nbsp;</div>\r\n</div>\r\n\r\n<div class=\"twoColmTwo\">\r\n<p>Complete Monitoring</p>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n<!-- col -->\r\n\r\n<div class=\"col-sm-4 col-md-4 col-lg-4 col-xl-4 col-12 threeBoxWidth\">\r\n<div class=\"lightYellowBoxThree\">\r\n<div class=\"twoColm\">\r\n<div class=\"twoColmOne\">\r\n<div class=\"twocomImg\" style=\"background-image: url(\'/assets/themes/theme-1/images/facilitating.png\');\">&nbsp;</div>\r\n</div>\r\n\r\n<div class=\"twoColmTwo\">\r\n<p>Facilitating Care</p>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n<!--col --></div>\r\n<!-- row --></div>\r\n<!-- container --></section>\r\n\r\n<section class=\"nesSection wow fadeInDown\">\r\n<div class=\"container borderBottom\">\r\n<div class=\"row justify-content-center\">\r\n<div class=\"col-sm-5 col-md-6 col-lg-5 col-xl-5 col-12\">\r\n<div class=\"newsBox peopleNewsBox\">\r\n<div class=\"common_heading_seo fontSize40\">We never<br />\r\ncease to learn</div>\r\n\r\n<p>To serve you well, we keep our team abreast of the developments relevant to your industry.</p>\r\n\r\n<div class=\"newsButton peoplenewsBtn\"><a href=\"/learning-development\">LEARNING &amp; DEVELOPMENT</a></div>\r\n</div>\r\n</div>\r\n\r\n<div class=\"col-sm-7 col-md-6 col-lg-7 col-xl-7 col-12 \">\r\n<div class=\"newsBoxImgSec\">\r\n<div class=\"newsBoxImg\" style=\"background-image: url(\'/assets/themes/theme-1/images/news2.png\');\">&nbsp;</div>\r\n</div>\r\n</div>\r\n\r\n<div class=\"col-sm-5 col-md-6 col-lg-5 col-xl-5 col-12\">\r\n<div class=\"newsBox peopleNewsBox\">\r\n<div class=\"common_heading_seo fontSize40\">Know our side<br />\r\nof the world</div>\r\n\r\n<p>Get to know what&#39;s it like to be part of a team that is obsessed with delivering excellence.</p>\r\n\r\n<div class=\"newsButton peoplenewsBtn\"><a href=\"/employee-stories\">EMPLOYEE STORIES</a></div>\r\n</div>\r\n</div>\r\n\r\n<div class=\"col-sm-7 col-md-6 col-lg-7 col-xl-7 col-12\">\r\n<div class=\"newsBoxImgSec\">\r\n<div class=\"newsBoxImg\" style=\"background-image: url(\'/assets/themes/theme-1/images/news1.jpg\');\">&nbsp;</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</section>', NULL, NULL, 'Our People | Varuna Group', NULL, 'Right from our inception days, we took a conscious call to invest in our people, inspiring them to become focused on delivering excellence in everything they do.', 1, 0, '2020-07-27 12:13:19', '2021-01-28 12:58:05'),
(9, 13, 'Capability Network', 'capability-network', 'Network', 'OUR NETWORK', 'You\'ll always find us <span class=\"bannerNewLine\"></span> by your side', 'pages.capablity-network', NULL, '070121014738-ezgif.com-gif-maker (37).jpg', '<section class=\"threeYellowBox  wow fadeInDown\">\r\n<div class=\"container\">\r\n<div class=\"row\">\r\n<div class=\"col-sm-3 col-md-6 col-lg-3 col-xl-3 col-12\">\r\n<div class=\"yellowBoxOne\">\r\n<div class=\"yellowBoxdiv\">25+ <span>&nbsp; </span></div>\r\n\r\n<p class=\"yellowBoxp\">Modern Warehouses</p>\r\n</div>\r\n</div>\r\n\r\n<div class=\"col-sm-3 col-md-6 col-lg-3 col-xl-3 col-12\">\r\n<div class=\"yellowBoxTwo\">\r\n<div class=\"yellowBoxdiv\">60+ <span> &nbsp;</span></div>\r\n\r\n<p class=\"yellowBoxp\">Branches</p>\r\n</div>\r\n</div>\r\n\r\n<div class=\"col-sm-3 col-md-6 col-lg-3 col-xl-3 col-12\">\r\n<div class=\"yellowBoxThree\">\r\n<div class=\"yellowBoxdiv\">700+</div>\r\n\r\n<p class=\"yellowBoxp\">Loading/Unloading Points</p>\r\n</div>\r\n</div>\r\n\r\n<div class=\"col-sm-3 col-md-6 col-lg-3 col-xl-3 col-12\">\r\n<div class=\"yellowBoxTwo\">\r\n<div class=\"yellowBoxdiv\">5<span> &nbsp;</span></div>\r\n\r\n<p class=\"yellowBoxp\">Zonal Hubs</p>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</section>\r\n\r\n<section class=\"qutmesSec wow fadeInDown\">\r\n<div class=\"container\">\r\n<h1 class=\"h4commanlowrcase common_top_upper\">YOUR BUSINESS. AT FULL THROTTLE.</h1>\r\n\r\n<p class=\"fontSize22 fontSize20\">Transform your supply chain into a competitive advantage with our uninterrupted service.</p>\r\n\r\n<div class=\"row\">\r\n<div class=\"col-sm-6 col-md-6 col-12 col-lg-6 col-xl-6\">\r\n<ul class=\"yellowStyleList\">\r\n	<li>Pan India presence</li>\r\n	<li>Quick maintenance turn-around</li>\r\n	<li>Safe &amp; secure delivery of consignments</li>\r\n	<li>Excellent on-time performance based on committed delivery schedule</li>\r\n</ul>\r\n</div>\r\n\r\n<div class=\"col-sm-6 col-md-6 col-12 col-lg-6 col-xl-6\">\r\n<ul class=\"yellowStyleList\">\r\n	<li>24x7 consignment tracking &amp; monitoring via Control Tower</li>\r\n	<li>Strategic vehicle distribution in different hubs for better availability and access</li>\r\n	<li>Dedicated teams at loading &amp; unloading points</li>\r\n</ul>\r\n</div>\r\n</div>\r\n</div>\r\n</section>', NULL, NULL, 'Our Warehousing, Logistics & Distribution Network in India | Varuna Group', 'Capabilities Network', 'Transform your supply chain into a competitive advantage with our warehousing, logistics & distribution network in India.', 1, 0, '2020-08-14 09:08:17', '2021-02-02 08:01:44'),
(10, 1, 'Service Logistics', 'logistics-management-services', 'Service Logistics', 'Varuna Logistics', 'From one destination <span class=\"bannerNewLine\"></span> to the next, <span class=\"bannerNewLine\"></span> keep moving forward', 'pages.services_logistics', NULL, '270121123259-banner-new.jpg', '<section class=\"threeYellowBox wow fadeInDown\">\r\n<div class=\"container\">\r\n<div class=\"row\">\r\n<div class=\"col-sm-3 col-md-6 col-lg-3 col-xl-3 col-12\">\r\n<div class=\"yellowBoxOne\">\r\n<div>\r\n<div class=\"yellowBoxdiv\">100%</div>\r\n\r\n<p class=\"yellowBoxp\">in-transit visibility</p>\r\n</div>\r\n</div>\r\n</div>\r\n\r\n<div class=\"col-sm-3 col-md-6 col-lg-3 col-xl-3 col-12\">\r\n<div class=\"yellowBoxTwo\">\r\n<div>\r\n<div class=\"yellowBoxdiv\">95%</div>\r\n\r\n<p class=\"yellowBoxp\">on-time placement</p>\r\n</div>\r\n</div>\r\n</div>\r\n\r\n<div class=\"col-sm-3 col-md-6 col-lg-3 col-xl-3 col-12\">\r\n<div class=\"yellowBoxThree\">\r\n<div>\r\n<div class=\"yellowBoxdiv\">~50%</div>\r\n\r\n<p class=\"yellowBoxp\">savings on transit times</p>\r\n</div>\r\n</div>\r\n</div>\r\n\r\n<div class=\"col-sm-3 col-md-6 col-lg-3 col-xl-3 col-12\">\r\n<div class=\"yellowBoxTwo\">\r\n<div>\r\n<div class=\"yellowBoxdiv\">0.01%</div>\r\n\r\n<p class=\"yellowBoxp\">damage ratio</p>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</section>\r\n\r\n<section class=\"commLeftSect  SwiftDel wow fadeInDown pt0 pb0\">\r\n<div class=\"container\">\r\n<h1>Swift, safe and on-time delivery pan India</h1>\r\n\r\n<p>Over the last 20+ years, Varuna Group has built deep operational capabilities while addressing key challenges commonly faced by the Indian logistics industry such as high transit times, lack of real-time vehicle tracking data, high incidence of en-route damages and rampant malpractices in goods handling. As owners and operators of the country&rsquo;s largest dry cargo container fleet comprising 1800+ vehicles, supported by a robust digital infrastructure and a team of highly trained professionals, we provide our customers a logistics management experience they can trust.</p>\r\n</div>\r\n</section>\r\n\r\n<section class=\"leadershipSection wow fadeInDown\">\r\n<div class=\"container\">\r\n<div class=\"topUserSectionHeading\">\r\n<div class=\"common_top_upper\">OUR OFFERINGS</div>\r\n</div>\r\n\r\n<div class=\"row  justify-content-center\">\r\n<div class=\"col-sm-6 col-lg-6 col-xl-6 col-12 col-md-6 userImgOne\"><img alt=\"Primary Transportation Services\" class=\"img-fluid\" src=\"/assets/themes/theme-1/images/logistics1.jpg\" /></div>\r\n\r\n<div class=\"col-sm-6 col-lg-6 col-xl-6 col-12 col-md-6 userOne\">\r\n<div class=\"landingHeading_employee_stories\">Primary Transportation Services</div>\r\n\r\n<p>Ship your finished or unfinished goods from suppliers to manufacturing facilities or assembly plants and warehouses with industry-leading placement efficiency and transit times, anywhere in India.</p>\r\n\r\n<div class=\"smallYellowLine\">&nbsp;</div>\r\n</div>\r\n\r\n<div class=\"col-sm-6 col-lg-5 col-xl-6 col-12 col-md-6 userTwo\">\r\n<div class=\"landingHeading_employee_stories\">Secondary Transportation Services</div>\r\n\r\n<p>Leverage our last-mile delivery services to ship products from warehouses and distribution centres to smaller distribution centres and/or retailers.</p>\r\n\r\n<div class=\"smallYellowLine\">&nbsp;</div>\r\n</div>\r\n\r\n<div class=\"col-sm-6 col-lg-6 col-xl-6 col-12 col-md-6 userImgOne\"><img alt=\"Secondary Transportation Services\" class=\"img-fluid\" src=\"/assets/themes/theme-1/images/logistics2.jpg\" /></div>\r\n\r\n<div class=\"col-sm-6 col-lg-6 col-xl-6 col-12 col-md-6 userImgOne\"><img alt=\"Expedited Transportation Services\" class=\"img-fluid\" src=\"/assets/themes/theme-1/images/logistics3.jpg\" /></div>\r\n\r\n<div class=\"col-sm-6 col-lg-6 col-xl-6 col-12 col-md-6 userOne\">\r\n<div class=\"landingHeading_employee_stories\">Expedited Transportation Services</div>\r\n\r\n<p>Trust us to ship your critical supplies that prioritise JIT deliveries with the help of our dedicated fleet, skilled drivers and centralized control tower.</p>\r\n\r\n<div class=\"smallYellowLine\">&nbsp;</div>\r\n</div>\r\n\r\n<div class=\"col-sm-6 col-lg-6 col-xl-6 col-12 col-md-6 userOne\">\r\n<div class=\"landingHeading_employee_stories\">Project Cargo Services</div>\r\n\r\n<p>Leverage our specialized infrastructure and experienced team for handling and transporting your large, complex and heavy lift cargo for projects, anywhere in India.</p>\r\n\r\n<div class=\"smallYellowLine\">&nbsp;</div>\r\n</div>\r\n\r\n<div class=\"col-sm-6 col-lg-6 col-xl-6 col-12 col-md-6 userImgOne\"><img alt=\"Project Cargo Services\" class=\"img-fluid\" src=\"/assets/themes/theme-1/images/logistics4.jpg\" /></div>\r\n</div>\r\n</div>\r\n</section>\r\n\r\n<section class=\"cargoContainer wow fadeInDown\">\r\n<div class=\"container\">\r\n<h2 class=\"h4commanlowrcase\">Be unstoppable with<br />\r\nIndia&rsquo;s largest dry cargo container fleet</h2>\r\n\r\n<div class=\"row\">\r\n<div class=\"col-lg-6 col-12 col-md-6 col-xl-6\">\r\n<div class=\"beUnstoppableBox1\">\r\n<div class=\"beUnstoppableBoxOne\"><img alt=\"Vehicle Maintenance\" class=\"img-fluid ImgOne\" src=\"/assets/themes/theme-1/images/Vehicle-Maintenance.png\" /></div>\r\n\r\n<div class=\"beUnstoppableBoxTwo\">\r\n<div class=\"head\">Vehicle Maintenance</div>\r\n</div>\r\n</div>\r\n\r\n<ul class=\"cargoContainerUl\">\r\n	<li>400+ fleet management staff and 5 world-class MRO hubs at par with OEM certified facilities</li>\r\n	<li>An advanced preventive fleet diagnostics &amp; maintenance system to check 27 parameters before a trip, record en-route fleet maintenance, among others</li>\r\n</ul>\r\n</div>\r\n\r\n<div class=\"col-lg-6 col-12 col-md-6 col-xl-6\">\r\n<div class=\"beUnstoppableBox2\">\r\n<div class=\"beUnstoppableBoxOne\"><img alt=\"Vehicle Tracking &amp; Monitoring\" class=\"img-fluid Imgtwo\" src=\"/assets/themes/theme-1/images/Vehicle-Tracking-&amp;-Monitoring.png\" /></div>\r\n\r\n<div class=\"beUnstoppableBoxTwo\">\r\n<div class=\"head\">Vehicle Tracking &amp; Monitoring</div>\r\n</div>\r\n</div>\r\n\r\n<ul class=\"cargoContainerUl\">\r\n	<li>A Control Tower and an IoT enabled tracking dashboard that operates on automated vehicle-based notifications in real-time to monitor the entire fleet</li>\r\n	<li>GPS installation in all vehicles</li>\r\n</ul>\r\n</div>\r\n\r\n<div class=\"col-lg-6 col-12 col-md-6 col-xl-6\">\r\n<div class=\"beUnstoppableBox3\">\r\n<div class=\"beUnstoppableBoxOne\"><img alt=\"Goods Safety\" class=\"img-fluid ImgThree\" src=\"/assets/themes/theme-1/images/Goods-safety.png\" /></div>\r\n\r\n<div class=\"beUnstoppableBoxTwo\">\r\n<div class=\"head\">Goods Safety</div>\r\n</div>\r\n</div>\r\n\r\n<ul class=\"cargoContainerUl\">\r\n	<li>Safe lock mechanism (One time locks)</li>\r\n	<li>Regular shower &amp; light checks</li>\r\n	<li>Custom built bodies with extra safety measures</li>\r\n</ul>\r\n</div>\r\n\r\n<div class=\"col-lg-6 col-12 col-md-6 col-xl-6\">\r\n<div class=\"beUnstoppableBox4\">\r\n<div class=\"beUnstoppableBoxOne\"><img alt=\"Vehicle Safety\" class=\"img-fluid ImgFour\" src=\"/assets/themes/theme-1/images/Vehicle-Safety.png\" /></div>\r\n\r\n<div class=\"beUnstoppableBoxTwo\">\r\n<div class=\"head\">Vehicle Safety</div>\r\n</div>\r\n</div>\r\n\r\n<ul class=\"cargoContainerUl\">\r\n	<li>Panic button in all vehicles</li>\r\n	<li>On-road accident and maintenance team to ensure that consignments resume journey within 4 hours post vehicle repair</li>\r\n</ul>\r\n</div>\r\n</div>\r\n</div>\r\n</section>\r\n\r\n<section class=\"drivingeffiSec wow fadeInDown\">\r\n<div class=\"container\">\r\n<div class=\"topUserSectionHeading\">\r\n<h4 class=\"h4commanlowrcase\">Driving efficiency at every<br />\r\nmilestone through digital technologies</h4>\r\n\r\n<p>Our digital-first approach enables us to steer your logistics operations with ease, efficiency and complete transparency.</p>\r\n</div>\r\n\r\n<div class=\"headingh6\">Our Systems</div>\r\n\r\n<div class=\"row\">\r\n<div class=\"col-sm-6 col-12 col-md-6 col-xl-6 col-lg-6\">\r\n<div class=\"logiMainSect bgColor202d5d\"><img alt=\"Customized ERP\" class=\"img-fluid\" src=\"/assets/themes/theme-1/images/ERP-Transport.png\" />\r\n<div class=\"logiContSect\">\r\n<div class=\"logiContSect_head\">Customized ERP</div>\r\n\r\n<p class=\"fontWeight600\">Digitisation of indents, payments, loading point operations, POD &amp; more</p>\r\n</div>\r\n</div>\r\n<!-- logiContSect --></div>\r\n\r\n<div class=\"col-sm-6 col-12 col-md-6 col-xl-6 col-lg-6\">\r\n<div class=\"logiMainSect bgColor202d5d\"><img alt=\"Vehicle Maintenance Portal\" class=\"img-fluid paddintTop23\" src=\"/assets/themes/theme-1/images/Vehicle-Maintenance-2.png\" />\r\n<div class=\"logiContSect\">\r\n<div class=\"logiContSect_head\">Vehicle Maintenance Portal</div>\r\n\r\n<p class=\"fontWeight600\">Regularly monitors and optimises fleet maintenance</p>\r\n</div>\r\n</div>\r\n<!-- logiContSect --></div>\r\n</div>\r\n<!-- row --></div>\r\n<!-- container --></section>\r\n\r\n<section class=\"ourInterfacesSec wow fadeInDown\">\r\n<div class=\"container\">\r\n<div class=\"headingh6\">Our Interfaces</div>\r\n\r\n<div class=\"row\">\r\n<div class=\"col-sm-4 col-12 col-md-4 col-xl-4 col-lg-4\">\r\n<div class=\"yellowMainSect bgColorffc908 yellowMainBoxSec\"><img alt=\"V-Connect\" class=\"img-fluid\" src=\"/assets/themes/theme-1/images/V-connect.png\" /></div>\r\n<!-- logiContSect -->\r\n\r\n<div class=\"yellowContSect\">\r\n<div class=\"logiContSect_head_color\">V-Connect</div>\r\n\r\n<p class=\"fontWeight600\">An internal app for sourcing vehicles<br />\r\non demand from an approved fleet for<br />\r\nspot indents</p>\r\n</div>\r\n</div>\r\n\r\n<div class=\"col-sm-4 col-12 col-md-4 col-xl-4 col-lg-4\">\r\n<div class=\"yellowMainSect bgColorffc908 yellowMainBoxSec\"><img alt=\"V-Track\" class=\"img-fluid\" src=\"/assets/themes/theme-1/images/V-track.png\" /></div>\r\n<!-- logiContSect -->\r\n\r\n<div class=\"yellowContSect\">\r\n<div class=\"logiContSect_head_color\">V-Track</div>\r\n\r\n<p class=\"fontWeight600\">A dedicated customer portal for<br />\r\ntracking shipments and access order history</p>\r\n</div>\r\n</div>\r\n\r\n<div class=\"col-sm-4 col-12 col-md-4 col-xl-4 col-lg-4\">\r\n<div class=\"yellowMainSect bgColorffc908 yellowMainBoxSec\"><img alt=\"V-Manage\" class=\"img-fluid\" src=\"/assets/themes/theme-1/images/V-manage.png\" /></div>\r\n<!-- logiContSect -->\r\n\r\n<div class=\"yellowContSect\">\r\n<div class=\"logiContSect_head_color\">V-Manage</div>\r\n\r\n<p class=\"fontWeight600\">A mobile app for our on-ground<br />\r\nteam to help them manage their<br />\r\nresponsibilities seamlessly</p>\r\n</div>\r\n</div>\r\n</div>\r\n<!-- row --></div>\r\n<!-- container --></section>\r\n\r\n<section class=\"logiTwoColmBanner wow fadeInDown\">\r\n<div class=\"towColWrap\">\r\n<div class=\"logiColmLeft center_blue_content\">\r\n<div class=\"blue_bg_text_y colorffc908 yellowHeding\">Empowering our<br />\r\nmost valuable assets,<br />\r\nour drivers</div>\r\n</div>\r\n\r\n<div class=\"logiColmRight\">\r\n<div class=\"logiRightBanner\" style=\"background:url(\'/assets/themes/theme-1/images/logiRightBanner.jpg\');\">&nbsp;</div>\r\n</div>\r\n</div>\r\n</section>\r\n\r\n<section class=\"leadershipSection wow fadeInDown logisticLeader\">\r\n<div class=\"container\">\r\n<div class=\"row  justify-content-center\">\r\n<div class=\"col-sm-6 col-lg-6 col-xl-6 col-12 col-md-6 userImgOne\"><img alt=\"Training\" class=\"img-fluid\" src=\"/assets/themes/theme-1/images/traning.jpg\" /></div>\r\n\r\n<div class=\"col-sm-6 col-lg-6 col-xl-6 col-12 col-md-6 userOne\">\r\n<div class=\"landingHeading_employee_stories\">Training</div>\r\n\r\n<ul class=\"cargoContainerUlLi\">\r\n	<li>A comprehensive training program on safe driving practices</li>\r\n	<li>Regular upskilling &amp; reskilling to ease the adoption of new practices</li>\r\n</ul>\r\n\r\n<div class=\"smallYellowLine\">&nbsp;</div>\r\n</div>\r\n\r\n<div class=\"col-sm-6 col-lg-5 col-xl-6 col-12 col-md-6 userTwo\">\r\n<div class=\"landingHeading_employee_stories\">Monitoring</div>\r\n\r\n<ul class=\"cargoContainerUlLi\">\r\n	<li>Polygon geofencing for efficient vehicle tracking &amp; complete visibility</li>\r\n	<li>Video monitoring at key checkpoints, tracking in-transit driver behaviour &amp; sending voice/video messages offering corrective measures via a dedicated driver app</li>\r\n</ul>\r\n\r\n<div class=\"smallYellowLine\">&nbsp;</div>\r\n</div>\r\n\r\n<div class=\"col-sm-6 col-lg-6 col-xl-6 col-12 col-md-6 userImgOne\"><img alt=\"Monitoring\" class=\"img-fluid\" src=\"/assets/themes/theme-1/images/traning2.jpg\" /></div>\r\n\r\n<div class=\"col-sm-6 col-lg-6 col-xl-6 col-12 col-md-6 userImgOne\"><img alt=\"Care\" class=\"img-fluid\" src=\"/assets/themes/theme-1/images/traning3.jpg\" /></div>\r\n\r\n<div class=\"col-sm-6 col-lg-6 col-xl-6 col-12 col-md-6 userOne\">\r\n<div class=\"landingHeading_employee_stories\">Care</div>\r\n\r\n<ul class=\"cargoContainerUlLi\">\r\n	<li>Strict adherence to HSE norms</li>\r\n	<li>Provision of healthy food at subsidised prices</li>\r\n	<li>Prepaid cards to facilitate cashless payments for fuel, tolls &amp; self-care</li>\r\n</ul>\r\n\r\n<div class=\"smallYellowLine\">&nbsp;</div>\r\n</div>\r\n</div>\r\n</div>\r\n</section>\r\n\r\n<section class=\"overLayIageSection wow fadeInDown\"><img alt=\"Our Team\" class=\"img-fluid\" src=\"/assets/themes/theme-1/images/logisticsbanner3.jpg\" />\r\n<div class=\"container-fluid paddingleftRight overlaybox overlaySideImgHide\">\r\n<div class=\"row  justify-content-center\">\r\n<div class=\"col-sm-5 col-md-5 col-lg-5 col-xl-5 col-12\">\r\n<div class=\"landingHeading_employee_stories color_white\">AT YOUR SERVICE</div>\r\n\r\n<div class=\"becomeIndia\">Empowering you to succeed</div>\r\n</div>\r\n\r\n<div class=\"col-sm-6 col-md-6 col-lg-6 col-xl-5 col-12\">\r\n<p>Our skilled and dedicated specialists work closely with you to understand the challenges that you&#39;re facing and recommend the right solutions at the right time. They uphold our commitment to operational efficiency which ultimately translates into service excellence &amp; growth acceleration for you.</p>\r\n<!--div class=\"knowMoreWhite\">\r\n                    <a href=\"\">Know More</a>\r\n                </div--></div>\r\n</div>\r\n</div>\r\n</section>', NULL, NULL, 'Logistics Management Solution, Logistics Service Provider Company in Delhi, Gurgaon, Bangalore, Hyderabad, Mumbai, Pune, Kolkata, India', 'Services Logistics', 'Logistics Management Solution- Keep your business operation intact with logistic services in a cost-effective manner with the logistics companies in Delhi, Gurgaon, Bangalore, Hyderabad, Mumbai, Pune, Kolkata in India.', 1, 0, '2020-08-14 09:31:26', '2021-02-13 06:38:25'),
(11, 0, 'Industry Solution', 'industry-solution', 'Industry Solution', 'INDUSTRY SOLUTIONS', 'Offering solutions designed to address<span class=\"bannerNewLine\"></span> your unique requirements', 'pages.corporate', NULL, '070121010236-140820095611-Industry_banner.jpg', '<section class=\"heroContent__pharma industryBoxSec pb0 wow fadeInDown\">\r\n<div class=\"container\">\r\n<div class=\"row\">\r\n<div class=\"heroSection col-sm-4 col-md-4 col-lg-4 col-xl-4 col-12 activee\" data-content=\"pharmaOne\">\r\n<div>\r\n<div class=\"industryBoxYellow\"><img alt=\"Pharma &amp; Healthcare\" class=\"img-fluid\" src=\"/assets/themes/theme-1/images/Pharma.png\" /></div>\r\n\r\n<h1 class=\"industryBoxText\"><a href=\"javascript:void(0)\">Pharma &amp; Healthcare</a></h1>\r\n</div>\r\n</div>\r\n\r\n<div class=\"heroSection col-sm-4 col-md-4 col-lg-4 col-xl-4 col-12\" data-content=\"pharmaTwo\">\r\n<div>\r\n<div class=\"industryBoxblue\"><img alt=\"Omnichannel Retail\" class=\"img-fluid\" src=\"/assets/themes/theme-1/images/omnichannel.png\" /></div>\r\n\r\n<h2 class=\"industryBoxText\"><a href=\"javascript:void(0)\">Omnichannel Retail</a></h2>\r\n</div>\r\n</div>\r\n\r\n<div class=\"heroSection col-sm-4 col-md-4 col-lg-4 col-xl-4 col-12\" data-content=\"pharmaThree\">\r\n<div>\r\n<h2 class=\"industryBoxYellow\"><img alt=\"Auto Components Tyres\" class=\"img-fluid\" src=\"/assets/themes/theme-1/images/Auto.png\" /></h2>\r\n\r\n<h3 class=\"industryBoxText\"><a href=\"javascript:void(0)\">Auto Components &amp; Tyres</a></h3>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n\r\n<div class=\"container\">\r\n<h3 class=\"industryBottomLine\">&nbsp;</h3>\r\n</div>\r\n</section>\r\n\r\n<section class=\"industryTwoColm   wow fadeInDown\">\r\n<div class=\"container\">\r\n<div class=\"industryConte hero__pharmaOne\">\r\n<p>We understand that the transportation and storage of pharma &amp; healthcare products require a specialised approach. We provide facilities such as cold storage and temperature control enabled fleet to ensure efficient and safe supply chain operations.</p>\r\n\r\n<div class=\"industryKnowMore\"><a href=\"/industry-healthcare\">Know More</a></div>\r\n</div>\r\n\r\n<div class=\"industryConte hero__pharmaTwo\">\r\n<p>Our supply chain solutions can effectively meet the herculean demands of the omnichannel retail industry, enabling the reduction of the effective landed cost of products through punctual, dependable and safe deliveries.</p>\r\n\r\n<div class=\"industryKnowMore\"><a href=\"/industry-omnichannel\">Know More</a></div>\r\n</div>\r\n\r\n<div class=\"industryConte hero__pharmaThree\">\r\n<p>Since our inception, we have been extensively catering to the Auto &amp; Tyre industry. The strategic placement of our warehouses and fleet hubs enables us to offer services like JIT deliveries. To ensure the smooth working of this industry&rsquo;s supply chains, we have cultivated remarkable capabilities like industry-leading turnaround times that reduce your total cost of logistics</p>\r\n\r\n<div class=\"industryKnowMore\"><a href=\"/industry-automotive\">Know More</a></div>\r\n</div>\r\n</div>\r\n</section>\r\n\r\n<section class=\"industryBoxSec wow pb0 fadeInDown\">\r\n<div class=\"container\">\r\n<div class=\"row\">\r\n<div class=\"heroSection__new col-sm-4 col-md-4 col-lg-4 col-xl-4 col-12\" data-content=\"pharma-One\">\r\n<div>\r\n<div class=\"industryBoxblue\"><img alt=\"Food\" class=\"img-fluid\" src=\"/assets/themes/theme-1/images/Food.png\" /></div>\r\n\r\n<h3 class=\"industryBoxText\"><a href=\"javascript:void(0)\">Food &amp; Beverage</a></h3>\r\n</div>\r\n</div>\r\n\r\n<div class=\"heroSection__new col-sm-4 col-md-4 col-lg-4 col-xl-4 col-12\" data-content=\"pharma-Two\">\r\n<div>\r\n<div class=\"industryBoxYellow\"><img alt=\"Electrical\" class=\"img-fluid\" src=\"/assets/themes/theme-1/images/Electrical.png\" /></div>\r\n\r\n<h3 class=\"industryBoxText\"><a href=\"javascript:void(0)\">Electrical</a></h3>\r\n</div>\r\n</div>\r\n\r\n<div class=\"heroSection__new col-sm-4 col-md-4 col-lg-4 col-xl-4 col-12\" data-content=\"pharma-Three\">\r\n<div>\r\n<div class=\"industryBoxblue\"><img alt=\"FMCG\" class=\"img-fluid\" src=\"/assets/themes/theme-1/images/FMCD.png\" /></div>\r\n\r\n<h3 class=\"industryBoxText\"><a href=\"javascript:void(0)\">FMCG</a></h3>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n\r\n<div class=\"container\">\r\n<div class=\"industryBottomLine\">&nbsp;</div>\r\n</div>\r\n</section>\r\n\r\n<section class=\"industryTwoColm  wow fadeInDown\">\r\n<div class=\"container\">\r\n<div class=\"industryContee hero__pharma-One\">\r\n<p>The transportation and warehousing of the food &amp; beverage industry requires specialized capabilities and infrastructure. Our experts have developed optimal supply chain solutions which ensure highest quality of the consignment, reduced transit times and predictable placements to facilitate exponential growth.</p>\r\n\r\n<div class=\"industryKnowMore\"><a href=\"/food-beverage\">Know More</a></div>\r\n</div>\r\n\r\n<div class=\"industryContee hero__pharma-Two\">\r\n<p>We understand the people, equipment and operational requirements of this industry. Realizing the critical pain points, we have continuously invested in a strict quality management systems and technological advancements along with value added service to ensure reliable and predictable service to our customers</p>\r\n\r\n<div class=\"industryKnowMore\"><a href=\"/industry-electrical\">Know More</a></div>\r\n</div>\r\n\r\n<div class=\"industryContee hero__pharma-Three\">\r\n<p>With years of experience by our side, we have gained optimum efficiency in transportation and storage of FMCG products. We offer the best-in-class infrastructural facilities, trained workforce and technology enabled operations to ensure swift, safe &amp; smooth operations.</p>\r\n\r\n<div class=\"industryKnowMore\"><a href=\"/industry-fmcg\">Know More</a></div>\r\n</div>\r\n</div>\r\n<!-- container --></section>', NULL, NULL, 'Industrial Logistics & Warehousing Solutions | Varuna Group', NULL, 'Varuna Group is offering professional logistics & warehousing solutions to the industry like pharma & healthcare, omnichannel retail, auto components & tyres, food & beverage, electrical, FMCG', 1, 0, '2020-08-14 09:54:38', '2021-01-22 09:11:51'),
(12, 1, 'Service Warehousing', 'warehousing-management-services', 'Service Warehousing', 'VARUNA WAREHOUSING', 'Give an efficiency<span class=\"bannerNewLine\"></span> boost to your<span class=\"bannerNewLine\"></span>inventory management', 'pages.services_warehousing', NULL, '110121015132-ezgif.com-gif-maker (57).jpg', '<section class=\"threeYellowBox  wow fadeInDown\">\r\n<div class=\"container\">\r\n<div class=\"row\">\r\n<div class=\"col-sm-3 col-md-6 col-lg-3 col-xl-3 col-12\">\r\n<div class=\"whreHouseValYellowBox\">\r\n<div class=\"yellowBoxdiv\">1 Mn+</div>\r\n\r\n<p class=\"yellowBoxp\">sq. ft. warehouse space</p>\r\n</div>\r\n</div>\r\n\r\n<div class=\"col-sm-3 col-md-6 col-lg-3 col-xl-3 col-12\">\r\n<div class=\"whreHouseValBlueBox\">\r\n<div class=\"yellowBoxdiv\">250+</div>\r\n\r\n<p class=\"yellowBoxp\">skilled<br />\r\nworkforce</p>\r\n</div>\r\n</div>\r\n\r\n<div class=\"col-sm-3 col-md-6 col-lg-3 col-xl-3 col-12\">\r\n<div class=\"whreHouseValYellowBox\">\r\n<div class=\"yellowBoxdiv\">25+ Grade A</div>\r\n\r\n<p class=\"yellowBoxp\">warehouses pan India</p>\r\n</div>\r\n</div>\r\n\r\n<div class=\"col-sm-3 col-md-6 col-lg-3 col-xl-3 col-12\">\r\n<div class=\"whreHouseValBlueBox\">\r\n<div class=\"yellowBoxdiv\">5L+</div>\r\n\r\n<p class=\"yellowBoxp\">square feet<br />\r\nMulti User Facilities</p>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</section>\r\n\r\n<section class=\"commLeftSect  whereComanPadding SwiftDel wow fadeInDown\">\r\n<div class=\"container\">\r\n<h1>Consistent, reliable and efficient<br />\r\nwarehouse management</h1>\r\n\r\n<p>Varuna Group maintains and manages a network of Grade A warehousing facilities strategically located across India. Our warehousing services are trusted by the industry&#39;s front-runners for their consistent, reliable and efficient performance. Our experienced team makes use of the dedicated Warehouse Management System (WMS) &amp; Transport Management System (TMS) that provides real-time data intelligence to re-model inventory management, driving measurable cost reductions.</p>\r\n</div>\r\n</section>\r\n\r\n<section class=\"leadershipSection wow fadeInDown\">\r\n<div class=\"container\">\r\n<div class=\"whreHouseHeading\">\r\n<h2 class=\"common_top_upper\">OUR OFFERINGS</h2>\r\n</div>\r\n\r\n<div class=\"row  justify-content-center\">\r\n<div class=\"col-sm-6 col-lg-6 col-xl-6 col-12 col-md-6 whreHouseImgOne\"><img alt=\"Distribution Warehousing\" class=\"img-fluid\" src=\"/assets/themes/theme-1/images/whereHouse1.jpg\" /></div>\r\n\r\n<div class=\"col-sm-6 col-lg-6 col-xl-6 col-12 col-md-6 whreHouseContOne\">\r\n<div class=\"landingHeading_employee_stories\">Distribution Warehousing</div>\r\n\r\n<p>Leverage our capabilities in developing and managing distribution centres in a dedicated/shared services model focused on driving 100% order fulfilment. We utilise efficient resource management and automation techniques coupled with digitally-enabled purchase order and sales order management. This ensures seamless planning and execution of order fulfillment and provides real time inventory tracking and monitoring.</p>\r\n\r\n<div class=\"smallYellowLine\">&nbsp;</div>\r\n</div>\r\n\r\n<div class=\"col-sm-6 col-lg-5 col-xl-6 col-12 col-md-6 whreHouseContOne\">\r\n<div class=\"landingHeading_employee_stories\">Consolidation Warehousing</div>\r\n\r\n<p>Use our expertise and warehousing facilities to reduce your inventory level and capital investment by consolidating your small shipments from a number of suppliers in the same geographical area and combine them into larger, more economical shipping loads intended for the same area at a warehouse that act as a singular hub.</p>\r\n\r\n<div class=\"smallYellowLine\">&nbsp;</div>\r\n</div>\r\n\r\n<div class=\"col-sm-6 col-lg-6 col-xl-6 col-12 col-md-6 whreHouseImgOne\"><img alt=\"\" src=\"https://varuna.net/storage/ck/150221070403-Consolidation Warehousing- Image No- A-26.jpeg\" style=\"width: 590px; height: 400px;\" /></div>\r\n\r\n<div class=\"col-sm-6 col-lg-6 col-xl-6 col-12 col-md-6 whreHouseImgOne\"><img alt=\"In-Plant Warehousing\" class=\"img-fluid\" src=\"/assets/themes/theme-1/images/whereHouse3.jpg\" /></div>\r\n\r\n<div class=\"col-sm-6 col-lg-6 col-xl-6 col-12 col-md-6 whreHouseContOne\">\r\n<div class=\"landingHeading_employee_stories\">In-Plant Warehousing</div>\r\n\r\n<p>Our in-plant warehousing services act as a bridge between your suppliers and your manufacturing units. We follow the lean supply chain methodology, providing just the right amount of material necessary for production, to keep the holding cost low and enable JIT operations.</p>\r\n\r\n<div class=\"smallYellowLine\">&nbsp;</div>\r\n</div>\r\n</div>\r\n</div>\r\n</section>\r\n\r\n<section class=\"overLayIageSection whrHouseoverLayIage wow fadeInDown\"><img alt=\"Improving efficiencies by expanding capabilities\" class=\"img-fluid\" src=\"/assets/themes/theme-1/images/WarehousingBanner2.jpg\" />\r\n<div class=\"container-fluid paddingleftRight overlaybox overlaySideImgHide\">\r\n<div class=\"row  justify-content-center\">\r\n<div class=\"col-sm-5 col-md-5 col-lg-5 col-xl-5 col-12\">\r\n<div class=\"lg_text\">Value Added Services</div>\r\n\r\n<div class=\"becomeIndia\">Improving efficiencies by expanding capabilities</div>\r\n</div>\r\n\r\n<div class=\"col-sm-6 col-md-6 col-lg-6 col-xl-5 col-12\">\r\n<p>With operational and service excellence as our cornerstones, we offer a bouquet of services that complement our warehousing and transportation capabilities. These include:</p>\r\n\r\n<ul class=\"whiteUlLi\">\r\n	<li><a href=\"#\">Labelling</a></li>\r\n	<li><a href=\"#\">Reverse logistics</a></li>\r\n	<li><a href=\"#\">Kitting/Dekitting</a></li>\r\n	<li><a href=\"#\">Returns handling</a></li>\r\n	<li><a href=\"#\">Quality checks</a></li>\r\n	<li><a href=\"#\">Refurbishing</a></li>\r\n</ul>\r\n<!--div class=\"knowMoreWhite\">•  Reverse logistics •  Returns handling •  Refurbishing\r\n                    <a href=\"\">Know More</a>\r\n                </div--></div>\r\n</div>\r\n</div>\r\n</section>\r\n\r\n<section class=\"whreHouseContainer wow fadeInDown\">\r\n<div class=\"container\">\r\n<div class=\"h4commanlowrcase whreHouseLoweCseHed h3_heading_seo\">Make efficiency your<br />\r\ncompetitive advantage</div>\r\n\r\n<div class=\"row\">\r\n<div class=\"col-lg-6 col-12 col-md-6 col-xl-6\">\r\n<div class=\"whereHouseBox1\">\r\n<div class=\"whereHouseMain\">\r\n<div class=\"whereHouseBoxLeft\"><img alt=\"Quality &amp; Compliance\" class=\"img-fluid\" src=\"/assets/themes/theme-1/images/whre4box1.png\" /></div>\r\n<!-- whereHouseBoxLeft -->\r\n\r\n<div class=\"whereHouseBoxRight\">\r\n<div class=\"head\">Quality &amp; Compliance</div>\r\n</div>\r\n<!-- whereHouseBoxRight --></div>\r\n\r\n<div class=\"whereHouseBoxCont\">\r\n<p>Our warehouses are compliant with CLU &amp; government regulations and adhere to the 5S methodology. We have implemented TQM with centralised monitoring and conduct periodic audits.</p>\r\n</div>\r\n</div>\r\n</div>\r\n\r\n<div class=\"col-lg-6 col-12 col-md-6 col-xl-6\">\r\n<div class=\"whereHouseBox1\">\r\n<div class=\"whereHouseMain\">\r\n<div class=\"whereHouseBoxLeft\"><img alt=\"Safety &amp; Security\" class=\"img-fluid\" src=\"/assets/themes/theme-1/images/whre4box2.png\" /></div>\r\n<!-- whereHouseBoxLeft -->\r\n\r\n<div class=\"whereHouseBoxRight\">\r\n<div class=\"head\">Safety &amp; Security</div>\r\n</div>\r\n<!-- whereHouseBoxRight --></div>\r\n\r\n<div class=\"whereHouseBoxCont\">\r\n<p>We aim to provide a safe &amp; ergonomic working environment to maximise &lsquo;Accident-free days&rsquo;. All our facilities have 24*7 security surveillance across all areas.</p>\r\n</div>\r\n</div>\r\n</div>\r\n\r\n<div class=\"col-lg-6 col-12 col-md-6 col-xl-6\">\r\n<div class=\"whereHouseBox1\">\r\n<div class=\"whereHouseMain\">\r\n<div class=\"whereHouseBoxLeft\"><img alt=\"Robust Technology\" class=\"img-fluid\" src=\"/assets/themes/theme-1/images/whre4box3.png\" /></div>\r\n<!-- whereHouseBoxLeft -->\r\n\r\n<div class=\"whereHouseBoxRight whrContpl\">\r\n<div class=\"head\">Robust Technology</div>\r\n</div>\r\n<!-- whereHouseBoxRight --></div>\r\n\r\n<div class=\"whereHouseBoxCont\">\r\n<p>A dedicated and robust Warehouse Management System (WMS) and Transport Management System (TMS) helps us ensure greater operational efficiency.</p>\r\n</div>\r\n</div>\r\n</div>\r\n\r\n<div class=\"col-lg-6 col-12 col-md-6 col-xl-6\">\r\n<div class=\"whereHouseBox1\">\r\n<div class=\"whereHouseMain\">\r\n<div class=\"whereHouseBoxLeft\"><img alt=\"World Class Infrastructure\" class=\"img-fluid\" src=\"/assets/themes/theme-1/images/whre4box4.png\" /></div>\r\n<!-- whereHouseBoxLeft -->\r\n\r\n<div class=\"whereHouseBoxRight whrContpl\">\r\n<div class=\"head\">World Class Infrastructure</div>\r\n</div>\r\n<!-- whereHouseBoxRight --></div>\r\n\r\n<div class=\"whereHouseBoxCont\">\r\n<p>Our warehouses are equipped with state-of-the-art Material Handling Equipment (MHE), coding machines, racking systems and a host of other best-in-class facilities.</p>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</section>\r\n\r\n<section class=\"learningDevelopment payAsYou wow fadeInDown\">\r\n<div class=\"container\">\r\n<div class=\"row  justify-content-center\">\r\n<div class=\"col-sm-6 col-lg-6 col-12 col-md-6 col-xl-6\">\r\n<div class=\"careerLernDev whreHouseTwoColBox\">\r\n<div class=\"h3_heading_seo\">Experience Flexible Warehousing</div>\r\n\r\n<div class=\"landingHeading_employee_stories\"><strong>Are you paying as per fixed terms when your requirements are dynamic?</strong></div>\r\n\r\n<p>Forget rigid contracts spanning years and leverage the on-demand services of our Multi User Facilities (MUFs) through a pay-per-use model. Get the unflinching support of a team of specialists, dedicated to helping you reduce costs, enhance customer service and drive efficiencies.</p>\r\n\r\n<div class=\"newsButton whreHouseLandingBtn\"><a href=\"/multi-user-facilities\">Know more</a></div>\r\n</div>\r\n</div>\r\n\r\n<div class=\"col-sm-6 col-lg-6 col-12 col-md-6 col-xl-6\"><img alt=\"\" src=\"https://varuna.net/storage/ck/150221070604-Experience flexible warehousing- Image No- A-33.jpeg\" style=\"width: 590px; height: 400px;\" /></div>\r\n</div>\r\n</div>\r\n</section>', NULL, NULL, 'Consolidation Warehousing Services India, Warehouse Solution Company in Delhi NCR, Mumbai, Bangalore, Ambala, Guwahati, Hyderabad, India', NULL, 'Consolidation Warehousing Services in India- Accelerate your supply chain with the state-of-the-art storage facilities and warehouse management solution company in Delhi NCR, Mumbai, Bangalore, Ambala, Guwahati, Hyderabad, India.', 1, 0, '2020-08-14 10:21:51', '2021-02-15 07:06:14');
INSERT INTO `cms_pages` (`id`, `parent_id`, `name`, `slug`, `title`, `heading`, `brief`, `template`, `image`, `banner_image`, `content`, `old_content`, `default_content`, `meta_title`, `meta_keyword`, `meta_description`, `status`, `featured`, `created_at`, `updated_at`) VALUES
(13, 0, 'Capabilities', 'capabilities', 'Capabilities', 'CAPABILITIES', 'Maximising the potential<br /> of your supply chain', 'pages.capabilities', NULL, '070121011543-ezgif.com-gif-maker (32).jpg', '<section class=\"twoColConSection wow fadeInDown\">\r\n<div class=\"container-fluid\">\r\n<div class=\"twoColContent pb-0\">\r\n<div class=\"row  justify-content-center\">\r\n<div class=\"col-sm-5 col-md-5 mt-4 mb-4\">\r\n<div class=\"leftContEmp\">\r\n<h1 class=\"landingHeading\">Technology that<br />\r\ngives you an edge</h1>\r\n\r\n<p>Make your supply chain agile &amp; predictable with the help of our innovative digital technology solutions.</p>\r\n\r\n<div class=\"newsButton\"><a href=\"/capability-technology\">READ MORE</a></div>\r\n</div>\r\n<!-- leftContEmp --></div>\r\n<!-- col-sm-5  -->\r\n\r\n<div class=\"col-sm-7 col-md-7 mt-4 mb-4\"><img alt=\"Technology that gives you an edge\" class=\"img-fluid imgRadious flex-left\" src=\"/assets/themes/theme-1/images/empLanding1.png\" /></div>\r\n<!-- col-sm-7  --></div>\r\n<!-- row --></div>\r\n<!-- twoColContent --></div>\r\n<!-- container-fluid --></section>\r\n\r\n<section class=\"emplandingTwobox wow fadeInDown\">\r\n<div class=\"empl__banner__bg\">\r\n<div class=\"empl__banner2\" style=\"background-image:url(\'/assets/themes/theme-1/images/emp-landingbanner2.png\');\">&nbsp;</div>\r\n\r\n<div class=\"empl__banner2Text\">\r\n<h2 class=\"empl_text\">Fleet that<br />\r\nkeeps you going</h2>\r\n\r\n<p>Experience industry-leading transit times with India&rsquo;s largest owned fleet comprising 1800+ dry cargo containers.</p>\r\n\r\n<div class=\"newsButton empl__button\"><a href=\"/capability-fleet\">READ MORE</a></div>\r\n</div>\r\n</div>\r\n</section>\r\n\r\n<section class=\"emplandingThreebox wow fadeInDown\">\r\n<div class=\"container-fluid\">\r\n<div class=\"twoColContent pb-0\">\r\n<div class=\"row  justify-content-center\">\r\n<div class=\"col-sm-5 col-md-5 mt-4 mb-4\">\r\n<div class=\"leftContEmp\">\r\n<h3 class=\"landingHeading\">People who are committed to<br />\r\nyour success</h3>\r\n\r\n<p>Experience consistent operational excellence backed by our team&rsquo;s commitment to deliver you an incredible service experience.</p>\r\n\r\n<div class=\"newsButton\"><a href=\"/capability-people\">READ MORE</a></div>\r\n</div>\r\n<!-- leftContEmp --></div>\r\n<!-- col-sm-5  -->\r\n\r\n<div class=\"col-sm-7 col-md-7 mt-4 mb-4\"><img alt=\"People who are committed to your success\" class=\"img-fluid imgRadious flex-left\" src=\"/assets/themes/theme-1/images/empLanding3.png\" /></div>\r\n<!-- col-sm-7  --></div>\r\n<!-- row --></div>\r\n<!-- twoColContent --></div>\r\n<!-- container-fluid --></section>\r\n\r\n<section class=\"overLayIageSection emplandingFourbox wow fadeInDown\"><img alt=\"Varuna Group\" class=\"img-fluid\" src=\"/assets/themes/theme-1/images/emp-landingbanner5.jpg\" />\r\n<div class=\"container-fluid paddingleftRight overlaybox overlaySideImgHide\">\r\n<div class=\"row  justify-content-center\">\r\n<div class=\"col-sm-5 col-md-5 col-lg-5 col-xl-5 col-12\">\r\n<div class=\"lg_text\">Multi User Facilities&nbsp;</div>\r\n\r\n<div class=\"becomeIndia\">Flexibilities with a pay-per-use model</div>\r\n</div>\r\n\r\n<div class=\"col-sm-6 col-md-6 col-lg-6 col-xl-5 col-12\">\r\n<p>Fulfil your dynamic business needs and reduce your total cost of logistics with our flexible warehousing services through pay-per-use model.</p>\r\n\r\n<div class=\"knowMoreWhite\"><a href=\"/multi-user-facilities\">Know More</a></div>\r\n</div>\r\n</div>\r\n</div>\r\n</section>\r\n\r\n<section class=\"emplandingFivebox wow fadeInDown\">\r\n<div class=\"container-fluid\">\r\n<div class=\"twoColContent pb-0\">\r\n<div class=\"row  justify-content-center\">\r\n<div class=\"col-sm-5 col-md-5 mt-4 mb-4\">\r\n<div class=\"leftContEmp\">\r\n<h3 class=\"landingHeading\">Quality assurance that<br />\r\ndrives excellence</h3>\r\n\r\n<p>Drive excellence across your supply chain operations with the help of our robust Quality Management System (QMS).</p>\r\n\r\n<div class=\"newsButton\"><a href=\"/capability-quality\">READ MORE</a></div>\r\n</div>\r\n<!-- leftContEmp --></div>\r\n<!-- col-sm-5  -->\r\n\r\n<div class=\"col-sm-7 col-md-7 mt-4 mb-4\"><img alt=\"\" src=\"https://varuna.net/storage/ck/150221065440-Quality assurance that drives excellence- Image No- R-127.jpeg\" style=\"width: 847px; height: 700px;\" /></div>\r\n<!-- col-sm-7  --></div>\r\n<!-- row --></div>\r\n<!-- twoColContent --></div>\r\n<!-- container-fluid --></section>\r\n\r\n<section class=\"emplandingTwobox wow fadeInDown\">\r\n<div class=\"empl__banner__bg\">\r\n<div class=\"empl__banner2\" style=\"background-image:url(\'/assets/themes/theme-1/images/emp-landingbanner3.png\');\">&nbsp;</div>\r\n\r\n<div class=\"empl__banner2Text\">\r\n<div class=\"empl_text\">Network that puts you close to your customers</div>\r\n\r\n<p>Whether you are looking to send your goods to a remote location or wish to optimise your distribution network, you will find us nearby.</p>\r\n\r\n<div class=\"newsButton empl__button\"><a href=\"/capability-network\">READ MORE</a></div>\r\n</div>\r\n</div>\r\n</section>\r\n\r\n<section class=\"knowMoreAbout wow fadeInDown\">\r\n<div class=\"container\">\r\n<div class=\"row justify-content-center\">\r\n<div class=\"col-sm-8 col-lg-8 col-xl-8 col-md-8 col-12\">\r\n<p>Drive efficiencies throughout your supply chain with the help of our technology-enabled services.</p>\r\n</div>\r\n\r\n<div class=\"col-sm-4 col-lg-4 col-xl-4 col-md-4 col-12\">\r\n<div class=\"knowMore\"><a href=\"/services\">View Services</a></div>\r\n</div>\r\n</div>\r\n</div>\r\n</section>', NULL, NULL, 'Our Logistic & Warehousing Capabilities | Varuna Group', 'Capabilities', 'Experience industry-leading transit times with India’s largest owned fleet with best logistic & warehousing capabilities', 1, 0, '2020-07-22 10:43:30', '2021-02-15 06:54:51'),
(14, 13, 'Multi User Facilities', 'multi-user-facilities', 'Multi User Facilities', 'Multi User Facility', 'Offering flexibility and<span class=\"displayNewLine\"></span> savings all year round', 'pages.muf-capabilities', NULL, '150221065833-Multi-user facility Banner Image- Image No- A-39.jpeg', '<section class=\"threeYellowBox  wow fadeInDown\">\r\n<div class=\"container\">\r\n<div class=\"row\">\r\n<div class=\"col-sm-3 col-md-6 col-lg-3 col-xl-3 col-12\">\r\n<div class=\"whreHouseValYellowBox\">\r\n<div class=\"yellowBoxdiv\">5 Lacs+</div>\r\n\r\n<p class=\"yellowBoxp\">Sq.&nbsp;ft.&nbsp;MUF space</p>\r\n</div>\r\n</div>\r\n\r\n<div class=\"col-sm-3 col-md-6 col-lg-3 col-xl-3 col-12\">\r\n<div class=\"whreHouseValBlueBox\">\r\n<div class=\"yellowBoxdiv\">Upto 30%</div>\r\n\r\n<p class=\"yellowBoxp\">space for flexible use</p>\r\n</div>\r\n</div>\r\n\r\n<div class=\"col-sm-3 col-md-6 col-lg-3 col-xl-3 col-12\">\r\n<div class=\"whreHouseValYellowBox\">\r\n<div class=\"yellowBoxdiv\">Upto 10%</div>\r\n\r\n<p class=\"yellowBoxp\">cost reduction</p>\r\n</div>\r\n</div>\r\n\r\n<div class=\"col-sm-3 col-md-6 col-lg-3 col-xl-3 col-12\">\r\n<div class=\"whreHouseValBlueBox\">\r\n<div class=\"yellowBoxdiv\">Pay-Per-Use</div>\r\n\r\n<p class=\"yellowBoxp\">Grade A warehouses</p>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</section>\r\n\r\n<section class=\"commLeftSect whereComanPadding  SwiftDel wow fadeInDown\">\r\n<div class=\"container\">\r\n<div class=\"title_text\">Varuna Logistics</div>\r\n\r\n<p>Our Multi User Facilities (MUF) are designed to offer flexible warehousing capable of fulfilling your short, medium and long term warehousing needs efficiently, MUFs offer a cost-effective solution wherein multiple clients share the cost of a Grade A warehousing space, expert resources &amp; material handling equipment. With a unique &lsquo;pay-per-use&rsquo; model, you can book only a portion of the warehouse anytime and simply pay for the space occupied and the value added services most suitable to your needs. This is especially beneficial for clients in sectors where seasonal or uncertain demands are common. Powered by a well-trained workforce, advanced digital technologies, streamlined processes and a robust quality management system, make the most of these facilities and witness your supply chain getting leaner, agile and more cost effective over time.</p>\r\n</div>\r\n</section>\r\n\r\n<div class=\"container\">\r\n<div class=\"whreHouseBorder\">&nbsp;</div>\r\n</div>\r\n\r\n<section class=\"mufKeybenifits wow fadeInDown\">\r\n<div class=\"container\">\r\n<h1 class=\"common_top_upper\">KEY BENEFITS</h1>\r\n\r\n<div class=\"perkSubHead\">Access our Grade A Multi User&nbsp;Facilities where you pay only for the space you use, experience on-demand value added services, and sustained savings, all year round.</div>\r\n\r\n<div class=\"row  justify-content-left\">\r\n<div class=\"col-sm-6 col-lg-6 col-12 col-md-6 col-xl-6\">\r\n<div class=\"row  justify-content-left\">\r\n<div class=\"col-sm-3\">\r\n<div class=\"imgBorderradus\"><img alt=\"Dedicated &amp; trained workforce\" class=\"img-fluid\" src=\"/assets/themes/theme-1/images/mufIcon1.png\" /></div>\r\n</div>\r\n\r\n<div class=\"col-sm-8\">\r\n<div class=\"pmufKeuBanCont\">\r\n<div class=\"text_lg\">Dedicated &amp; trained workforce</div>\r\n\r\n<div>&nbsp;</div>\r\n</div>\r\n</div>\r\n\r\n<div class=\"col-sm-3\">\r\n<div class=\"imgBorderradus\"><img alt=\"Skilled in handling of special products\" class=\"img-fluid\" src=\"/assets/themes/theme-1/images/mufIcon4.png\" /></div>\r\n</div>\r\n\r\n<div class=\"col-sm-8\">\r\n<div class=\"pmufKeuBanCont\">\r\n<div class=\"text_lg\">Skilled in handling of special products</div>\r\n</div>\r\n</div>\r\n\r\n<div class=\"col-sm-3\">\r\n<div class=\"imgBorderradus\"><img alt=\"Automation enabled\" class=\"img-fluid\" src=\"/assets/themes/theme-1/images/mufIcon5.png\" /></div>\r\n</div>\r\n\r\n<div class=\"col-sm-8\">\r\n<div class=\"pmufKeuBanCont\">\r\n<div class=\"text_lg\">Automation enabled</div>\r\n</div>\r\n</div>\r\n</div>\r\n<!-- row --></div>\r\n\r\n<div class=\"col-sm-6 col-lg-6 col-12 col-md-6 col-xl-6\">\r\n<div class=\"row  justify-content-center\">\r\n<div class=\"col-sm-3\">\r\n<div class=\"imgBorderradus\"><img alt=\"Robust and flexible warehousing system\" class=\"img-fluid\" src=\"/assets/themes/theme-1/images/mufIcon2.png\" /></div>\r\n</div>\r\n\r\n<div class=\"col-sm-8\">\r\n<div class=\"pmufKeuBanCont\">\r\n<div class=\"text_lg\">Robust and flexible warehousing system</div>\r\n\r\n<div>&nbsp;</div>\r\n</div>\r\n</div>\r\n\r\n<div class=\"col-sm-3\">\r\n<div class=\"imgBorderradus\"><img alt=\"Stringent quality compliances\" class=\"img-fluid\" src=\"/assets/themes/theme-1/images/mufIcon3.png\" /></div>\r\n</div>\r\n\r\n<div class=\"col-sm-8\">\r\n<div class=\"pmufKeuBanCont\">\r\n<div class=\"text_lg\">Stringent quality compliances</div>\r\n</div>\r\n</div>\r\n\r\n<div class=\"col-sm-3\">\r\n<div class=\"imgBorderradus\"><img alt=\"Cold storage ready\" class=\"img-fluid\" src=\"/assets/themes/theme-1/images/mufIcon6.png\" /></div>\r\n</div>\r\n\r\n<div class=\"col-sm-8\">\r\n<div class=\"pmufKeuBanCont\">\r\n<div class=\"text_lg\">Cold storage ready</div>\r\n</div>\r\n</div>\r\n</div>\r\n<!-- row --></div>\r\n<!-- col-6 --></div>\r\n</div>\r\n</section>\r\n\r\n<div class=\"container\">\r\n<div class=\"whreHouseBorder\">&nbsp;</div>\r\n</div>\r\n\r\n<section class=\"OptiSolSection\">\r\n<div class=\"container\">\r\n<div class=\"h3_heading_seo\">Access world class infrastructure,<br />\r\nat a fraction of the cost</div>\r\n\r\n<div class=\"row\">\r\n<div class=\"col-md-6 col-sm-6 col-md-6 col-12 col-lg-5 col-xl-6\">\r\n<div class=\"mufYelloBgBox acss__w__clss\"><img alt=\"Sustained Cost Reduction\" class=\"img-fluid\" src=\"/assets/themes/theme-1/images/Optimised1.jpg\" style=\"width:100%\" />\r\n<div class=\"mufBoxText mufBoxNewsptop mufBoxNewspbottom\">\r\n<div class=\"text_head\"><a href=\"#\">Sustained Cost Reduction</a></div>\r\n\r\n<p>Experience an increase in your savings and profit as you pay only for the space and services you utilise, reducing the inventory carrying costs.</p>\r\n</div>\r\n</div>\r\n</div>\r\n\r\n<div class=\"col-md-6 col-sm-6 col-md-6 col-12 col-lg-5 col-xl-6\">\r\n<div class=\"mufYelloBgBox acss__w__clss\"><img alt=\"Faster Time to Market\" class=\"img-fluid\" src=\"/assets/themes/theme-1/images/Optimised2.jpg\" style=\"width:100%\" />\r\n<div class=\"mufBoxText mufBoxNewsptop mufBoxNewspbottom\">\r\n<div class=\"text_head\"><a href=\"#\">Faster Time to Market</a></div>\r\n\r\n<p>With presence in all major hubs across India and access to our dedicated fleet, you experience efficient handling and on-timer performance in a reliable environment.</p>\r\n</div>\r\n</div>\r\n</div>\r\n\r\n<div class=\"col-md-6 col-sm-6 col-md-6 col-12 col-lg-5 col-xl-6\">\r\n<div class=\"mufYelloBgBox acss__w__clss\"><img alt=\"\" src=\"https://varuna.net/storage/ck/230221050337-Access to advanced technology A-45.jpeg\" style=\"width: 590px; height: 400px;\" />\r\n<div class=\"mufBoxText mufBoxNewsptop\">\r\n<div class=\"text_head\"><a href=\"#\">Access to Advanced Technology</a></div>\r\n\r\n<p>Our MUFs are supported by a dedicated WMS and TMS providing you complete transparency and control of your inventory storage and movement at reasonable costs.</p>\r\n</div>\r\n</div>\r\n</div>\r\n\r\n<div class=\"col-md-6 col-sm-6 col-md-6 col-12 col-lg-5 col-xl-6\">\r\n<div class=\"mufYelloBgBox acss__w__clss\"><img alt=\"Enhanced Flexibility\" class=\"img-fluid\" src=\"/assets/themes/theme-1/images/Optimised4.jpg\" style=\"width:100%\" />\r\n<div class=\"mufBoxText mufBoxNewsptop\">\r\n<div class=\"text_head\"><a href=\"#\">Enhanced Flexibility</a></div>\r\n\r\n<p>You can increase/decrease the space in our pay per use warehouses, based on the seasonal and ad-hoc demand fluctuation.</p>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</section>\r\n\r\n<section class=\"overLayIageSection whrHouseoverLayIage wow fadeInDown\"><img alt=\"Our Flagship\" class=\"img-fluid\" src=\"/assets/themes/theme-1/images/Our-Flagship.jpg\" />\r\n<div class=\"container-fluid paddingleftRight overlaybox overlaySideImgHide\">\r\n<div class=\"row  justify-content-center\">\r\n<div class=\"col-sm-5 col-md-5 col-lg-5 col-xl-5 col-12\"><!--h4>VALUE ADDED <span class=\"displayNewLine\"></span> SERVICES</h4-->\r\n<div class=\"newYellowText\">Our Flagship MUF Serves Markets in North India</div>\r\n</div>\r\n\r\n<div class=\"col-sm-6 col-md-6 col-lg-6 col-xl-5 col-12\">\r\n<p>Our Multi User Facility (MUF), at Shambhu Naka near Ambala in Punjab, offers a Grade A warehouse experience with world class infrastructure and expertly delivered value added services to our clients, workers as well as drivers. The MUF has been designed and built meticulously to address challenges faced by our clients using or considering use of dedicated warehouses in this region.</p>\r\n<!--div class=\"knowMoreWhite\">•  Reverse logistics •  Returns handling •  Refurbishing\r\n                    <a href=\"\">Know More</a>\r\n                </div--></div>\r\n</div>\r\n</div>\r\n</section>\r\n\r\n<section class=\"starArrowSect wow fadeInDown\">\r\n<div class=\"container\">\r\n<ul class=\"starArrowUl\">\r\n	<li>A single block of 4.2&nbsp;lac sq. ft.</li>\r\n	<li>Robust machinery</li>\r\n	<li>60 feet approach road</li>\r\n	<li>40 feet truck turning radius</li>\r\n	<li>200 meters from NH-44</li>\r\n	<li>6 tonnes/sq.mt. load carrying capacity</li>\r\n	<li>Clear Height: 10.5 meter</li>\r\n	<li>Parking space for 120 trucks</li>\r\n	<li>Center Height: 15 meter</li>\r\n	<li>Strategic parking bays and parking lots</li>\r\n	<li>G+ 6 racking</li>\r\n</ul>\r\n</div>\r\n</section>\r\n\r\n<div>&nbsp;</div>\r\n\r\n<div class=\"container\">\r\n<div class=\"whreHouseBorder\">&nbsp;</div>\r\n</div>\r\n\r\n<section class=\"sustainbilitySec wow fadeInDown\">\r\n<div class=\"container\">\r\n<div class=\"sustainbilityHead\">\r\n<div class=\"h4comman text-center common_top_upper\">SUSTAINABILITY</div>\r\n</div>\r\n\r\n<div class=\"row\">\r\n<div class=\"col-md-6 col-sm-6 col-md-6 col-12 col-lg-5 col-xl-6\">\r\n<div class=\"industryBoxblue mufYelloBgBox\"><img alt=\"Rainwater Harvesting\" class=\"img-fluid\" src=\"/assets/themes/theme-1/images/Rainwater-Harvesting.png\" /></div>\r\n\r\n<div class=\"mufBoxText mufBoxTextPdding\">\r\n<div class=\"text_lg\"><a href=\"#\">Rainwater Harvesting</a></div>\r\n\r\n<p>The facility has a rainwater harvesting system to ensure sustained water conservation.</p>\r\n</div>\r\n</div>\r\n\r\n<div class=\"col-md-6 col-sm-6 col-md-6 col-12 col-lg-5 col-xl-6\">\r\n<div class=\"industryBoxYellow mufYelloBgBox\"><img alt=\"Turbo Fans\" class=\"img-fluid\" src=\"/assets/themes/theme-1/images/Turbo-Fans.png\" style=\"width: 35%;\" /></div>\r\n\r\n<div class=\"mufBoxText\">\r\n<div class=\"text_lg\"><a href=\"#\">Turbo Fans</a></div>\r\n\r\n<p>Turbo fan installations within the facility reduce the internal warehouse temperature by 2-3 degrees.</p>\r\n</div>\r\n</div>\r\n\r\n<div class=\"col-md-6 col-sm-6 col-md-6 col-12 col-lg-5 col-xl-6 mufYelloBgBoxPadd\">\r\n<div class=\"industryBoxYellow mufYelloBgBox\"><img alt=\"Solar Panels\" class=\"img-fluid\" src=\"/assets/themes/theme-1/images/Solar-Panels.png\" style=\"width: 35%;\" /></div>\r\n\r\n<div class=\"mufBoxText\">\r\n<div class=\"text_lg\"><a href=\"#\">Solar Panels</a></div>\r\n\r\n<p>We have installed solar panels in the facility to ensure your logistics carbon footprint is kept to the minimum.</p>\r\n</div>\r\n</div>\r\n\r\n<div class=\"col-md-6 col-sm-6 col-md-6 col-12 col-lg-5 col-xl-6 mufYelloBgBoxPadd\">\r\n<div class=\"industryBoxblue mufYelloBgBox\"><img alt=\"5-10% Transparent Roofing\" class=\"img-fluid\" src=\"/assets/themes/theme-1/images/Transparent-Roofing.png\" /></div>\r\n\r\n<div class=\"mufBoxText\">\r\n<div class=\"text_lg\"><a href=\"#\">5-10% Transparent Roofing </a></div>\r\n\r\n<p>The roof of the facility is partially transparent, which saves power during the day and reduces the dependence on artificial light.</p>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</section>\r\n\r\n<section class=\"youTubeVideoSection wow fadeInDown\">\r\n<div class=\"container\">\r\n<div class=\"embed-responsive embed-responsive-16by9\"><iframe allow=\"accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen=\"\" class=\"embed-responsive-item youtubeplayer\" frameborder=\"0\" src=\"https://www.youtube.com/embed/gZ5MuUPe7Bk\"></iframe></div>\r\n</div>\r\n</section>', NULL, NULL, 'Multi User Facility, Multi User Warehouse, Pay Per Use Warehouse', NULL, 'Multi-user warehousing facilities & pay per use warehousing solution ensure customers business goods are stored, protected and transported under cost efficient way.', 1, 0, '2020-08-14 10:50:25', '2021-02-23 05:03:43'),
(15, 1, 'Service Integrate', 'service-integrate', 'Service Integrate', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, '2020-08-14 11:25:24', '2020-09-09 04:40:01'),
(16, 24, 'Career Life at Varuna', 'career-life-at-varuna', 'Career Life at Varuna', 'LIFE AT VARUNA', 'We\'ll help bring out <span class=\"bannerNewLine\"></span>  the best in you', 'pages.capability-people', NULL, '070121014339-ezgif.com-gif-maker (36).jpg', '<section class=\"commLeftSect beaPartSec  bgcolorFFF8E7 wow fadeInDown\">\r\n<div class=\"container\">\r\n<h1>Be a part of the Varuna experience</h1>\r\n\r\n<p>We are a value-driven organisation which believes that a strong, cohesive team can achieve anything it aspires to. Inspired to enhance the levels of excellence &amp; collaboration within ours, we foster new &amp; innovative ideas, appreciate risk-taking and encourage diverse perspectives. With constant support in the form of training, mentoring &amp; other essential benefits, we motivate our people to not only strive for brilliance but also galvanise their colleagues into action.</p>\r\n</div>\r\n</section>\r\n\r\n<section class=\"fullGalSecti wow fadeInDown\">\r\n<div class=\"fullGalWrapp\"><img alt=\"Career at Varuna Group\" src=\"/storage/ck/111120102057-2020-11-11.jpg\" style=\"width:100%\" /></div>\r\n</section>\r\n\r\n<section class=\"coreVal wow fadeInDown\">\r\n<div class=\"container\">\r\n<div class=\"topUserSectionHeading\">\r\n<div class=\"common_top_upper pb20\">OUR CORE VALUES</div>\r\n</div>\r\n\r\n<div class=\"row\">\r\n<div class=\"col-sm-4 col-md-4 col-lg4 col-xl-4 col-12\">\r\n<div class=\"coreValYellowBox\"><img alt=\"We are transparent\" class=\"img-fluid\" src=\"/assets/themes/theme-1/images/icon-3.png\" />\r\n<div class=\"main_text\">We are transparent</div>\r\n\r\n<p>We share our ideas, doubts and suggestions proactively and with complete honesty.</p>\r\n</div>\r\n</div>\r\n\r\n<div class=\"col-sm-4 col-md-4 col-lg4 col-xl-4 col-12\">\r\n<div class=\"coreValBlueBox\"><img alt=\"Always say the truth\" class=\"img-fluid\" src=\"/assets/themes/theme-1/images/whatsapp.png\" />\r\n<div class=\"main_text\">Always say the truth</div>\r\n\r\n<p>Truth is what we say and what we do. Whatever the situation, we choose truth over comfort.</p>\r\n</div>\r\n</div>\r\n\r\n<div class=\"col-sm-4 col-md-4 col-lg4 col-xl-4 col-12\">\r\n<div class=\"coreValYellowBox\"><img alt=\"Deliver on commitment\" class=\"img-fluid\" src=\"/assets/themes/theme-1/images/icon4.png\" style=\"width: 100px;\" />\r\n<div class=\"main_text\">Deliver on commitment</div>\r\n\r\n<p>Be it with each other or with our clients, we deliver what we promise.</p>\r\n</div>\r\n</div>\r\n\r\n<div class=\"col-sm-4 col-md-4 col-lg4 col-xl-4 col-12\">\r\n<div class=\"coreValBlueBox tec__box\"><img alt=\"Technology first\" class=\"img-fluid\" src=\"/assets/themes/theme-1/images/icon2.png\" />\r\n<div class=\"main_text\">Technology first</div>\r\n\r\n<p>We utilise technology to drive efficiency and reliability into our services.</p>\r\n</div>\r\n</div>\r\n\r\n<div class=\"col-sm-4 col-md-4 col-lg4 col-xl-4 col-12\">\r\n<div class=\"coreValYellowBox\"><img alt=\"Do the right thing, even when no one is watching\" class=\"img-fluid\" src=\"/assets/themes/theme-1/images/icon5.png\" />\r\n<div class=\"main_text\">Do the right thing, even when no one is watching</div>\r\n\r\n<p>We honour our commitments with integrity and conduct our business the right way.</p>\r\n</div>\r\n</div>\r\n\r\n<div class=\"col-sm-4 col-md-4 col-lg4 col-xl-4 col-12\">\r\n<div class=\"coreValBlueBox Chall__box\"><img alt=\"Challenge the status quo\" class=\"img-fluid\" src=\"/assets/themes/theme-1/images/icon6.png\" />\r\n<div class=\"main_text\">Challenge the status quo</div>\r\n\r\n<p>We constantly push our limits and keep moving, establishing new standards along the way.</p>\r\n</div>\r\n</div>\r\n\r\n<div class=\"col-sm-4 col-md-4 col-lg4 col-xl-4 col-12\">\r\n<div class=\"coreValYellowBox\"><img alt=\"Make our customers successful\" class=\"img-fluid cust-width\" src=\"/assets/themes/theme-1/images/icon7.png\" />\r\n<div class=\"main_text\">Make our customers successful</div>\r\n\r\n<p>Customer success is an integral part of our culture. We are constantly helping our clients deliver on their commitments to the market.</p>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</section>\r\n\r\n<section class=\"overLayIageSection posImpact wow fadeInDown\"><img alt=\"Our people help us\" class=\"img-fluid\" src=\"/assets/themes/theme-1/images/career_lifeBanner2.jpg\" />\r\n<div class=\"careerHelpUs\">\r\n<div class=\"whiteText\">Our people help us<br />\r\n<span class=\"yellowHeading\">foster excellence</span></div>\r\n\r\n<div class=\"knowMoreYellow knowMoreYellowB car__help\"><a href=\"/capability-people\">Know More</a></div>\r\n</div>\r\n</section>\r\n\r\n<section class=\"perksOfBeing wow fadeInDown\">\r\n<div class=\"container\">\r\n<div class=\"heading4Lowercse\">The perks of being on our team</div>\r\n\r\n<div class=\"perkSubHead\">Discover what makes Varuna Group a sought-after employer in the Indian logistics space.</div>\r\n\r\n<div class=\"row  justify-content-left\">\r\n<div class=\"col-sm-6 col-lg-6 col-12 col-md-6 col-xl-6\">\r\n<div class=\"row  justify-content-left\">\r\n<div class=\"col-sm-3\">\r\n<div class=\"imgBorderradus\"><img alt=\"Get access to quality infrastructure\" class=\"img-fluid\" src=\"/assets/themes/theme-1/images/Life1.png\" /></div>\r\n</div>\r\n\r\n<div class=\"col-sm-8\">\r\n<div class=\"perksOfBeingCont\">\r\n<div class=\"text_sm\">Get access to quality infrastructure</div>\r\n\r\n<div>Sustainable office premises, dedicated cafeteria and great ambience</div>\r\n</div>\r\n</div>\r\n\r\n<div class=\"col-sm-3\">\r\n<div class=\"imgBorderradus\"><img alt=\"Thrive in an inspiring workplace\" class=\"img-fluid\" src=\"/assets/themes/theme-1/images/Life2.png\" /></div>\r\n</div>\r\n\r\n<div class=\"col-sm-8\">\r\n<div class=\"perksOfBeingCont\">\r\n<div class=\"text_sm\">Thrive in an inspiring workplace</div>\r\n\r\n<div>Flexible work timings, regular upskilling and complete transparency</div>\r\n</div>\r\n</div>\r\n\r\n<div class=\"col-sm-3\">\r\n<div class=\"imgBorderradus\"><img alt=\"Receive rewards &amp; recognition\" class=\"img-fluid\" src=\"/assets/themes/theme-1/images/Life3.png\" /></div>\r\n</div>\r\n\r\n<div class=\"col-sm-8\">\r\n<div class=\"perksOfBeingCont\">\r\n<div class=\"text_sm\">Receive rewards &amp; recognition</div>\r\n\r\n<div>Due appreciation for the value you bring to the organisation</div>\r\n</div>\r\n</div>\r\n</div>\r\n<!-- row --></div>\r\n\r\n<div class=\"col-sm-6 col-lg-6 col-12 col-md-6 col-xl-6\">\r\n<div class=\"row  justify-content-center\">\r\n<div class=\"col-sm-3\">\r\n<div class=\"imgBorderradus\"><img alt=\"Work with a vibrant team\" class=\"img-fluid\" src=\"/assets/themes/theme-1/images/Life4.png\" /></div>\r\n</div>\r\n\r\n<div class=\"col-sm-8\">\r\n<div class=\"perksOfBeingCont\">\r\n<div class=\"text_sm\">Work with a vibrant team</div>\r\n\r\n<div>A young &amp; dynamic set of people with a forward-thinking outlook</div>\r\n</div>\r\n</div>\r\n\r\n<div class=\"col-sm-3\">\r\n<div class=\"imgBorderradus\"><img alt=\"Get performance-linked incentives\" class=\"img-fluid\" src=\"/assets/themes/theme-1/images/Life5.png\" /></div>\r\n</div>\r\n\r\n<div class=\"col-sm-8\">\r\n<div class=\"perksOfBeingCont\">\r\n<div class=\"text_sm\">Get performance-linked incentives</div>\r\n\r\n<div>Thoughtfully outlined programmes for individuals &amp; groups</div>\r\n</div>\r\n</div>\r\n\r\n<div class=\"col-sm-3\">\r\n<div class=\"imgBorderradus\"><img alt=\"Get diverse opportunities to grow\" class=\"img-fluid\" src=\"/assets/themes/theme-1/images/Life6.png\" /></div>\r\n</div>\r\n\r\n<div class=\"col-sm-8\">\r\n<div class=\"perksOfBeingCont\">\r\n<div class=\"text_sm\">Get diverse opportunities to grow</div>\r\n\r\n<div>Multiple career choices and comprehensive training in your preferred area</div>\r\n</div>\r\n</div>\r\n</div>\r\n<!-- row --></div>\r\n<!-- col-6 --></div>\r\n</div>\r\n</section>\r\n\r\n<section class=\"learningDevelopment wow fadeInDown\">\r\n<div class=\"container\">\r\n<div class=\"row  justify-content-center\">\r\n<div class=\"col-sm-5 col-lg-5 col-12 col-md-6 col-xl-5\">\r\n<div class=\"leftContEmp careerLernDev\">\r\n<div class=\"text_thin\">LEARNING &amp; DEVELOPMENT</div>\r\n\r\n<p>Our people are regularly exposed to opportunities to improve their existing skills and develop new ones with the help of a well-planned system for learning &amp; development.</p>\r\n\r\n<div class=\"knowMoreYellow knowMoreYellowB\"><a href=\"/learning-development\">Know More</a></div>\r\n</div>\r\n</div>\r\n\r\n<div class=\"col-sm-7 col-lg-7 col-12 col-md-6 col-xl-7\"><img alt=\"Card image cap\" class=\"img-fluid borderRadius5\" src=\"/assets/themes/theme-1/images/learn-and-dev1.png\" /></div>\r\n</div>\r\n</div>\r\n</section>\r\n\r\n<section class=\"overLayIageSection wow fadeInDown\"><img alt=\"OUR TRUE TESTIMONIES\" class=\"img-fluid\" src=\"/storage/ck/121120124111-2020-11-12.jpg\" />\r\n<div class=\"container-fluid paddingleftRight overlaybox overlaySideImgHide\">\r\n<div class=\"row  justify-content-center\">\r\n<div class=\"col-sm-5 col-md-5 col-lg-5 col-xl-5 col-12\">\r\n<div class=\"lg_text\">OUR TRUE TESTIMONIES</div>\r\n\r\n<div class=\"becomeIndia\">The inspiring stories of our people &amp; their life at Varuna Group</div>\r\n</div>\r\n\r\n<div class=\"col-sm-6 col-md-6 col-lg-6 col-xl-5 col-12\">\r\n<p>With over 1500+ people at 60+ branch locations, we bring to you diverse stories from different departments of our organisation. Read the firsthand accounts of our employees and experience our side of the world, from their perspective. Discover how they started, how their career has evolved and what their journey has taught them.</p>\r\n\r\n<div class=\"knowMoreWhite\"><a href=\"/employee-stories\">Know More</a></div>\r\n</div>\r\n</div>\r\n</div>\r\n</section>', NULL, NULL, 'Career Life at Varuna', NULL, 'We are a value-driven organization which believes that a strong, cohesive team can achieve anything.', 1, 0, '2020-08-14 11:42:52', '2021-01-28 10:14:20'),
(18, 11, 'Industry Healthcare', 'industry-healthcare', 'Pharma and Healthcare', 'Healthcare & Pharmaceutical Industry', 'Customised supply chain solutions for safe transportation of healthcare & pharmaceutical products', 'pages.industry_healthcare', NULL, '070121013138-ezgif.com-gif-maker (34).jpg', '<section class=\"threeYellowBox  wow fadeInDown\">\r\n<div class=\"container\">\r\n<div class=\"row\">\r\n<div class=\"col-sm-3 col-md-6 col-lg-3 col-xl-3 col-12\">\r\n<div class=\"whreHouseValYellowBox\">\r\n<div class=\"yellowBoxdiv\">99%</div>\r\n\r\n<p class=\"yellowBoxp\">Placement</p>\r\n</div>\r\n</div>\r\n\r\n<div class=\"col-sm-3 col-md-6 col-lg-3 col-xl-3 col-12\">\r\n<div class=\"whreHouseValBlueBox\">\r\n<div class=\"yellowBoxdiv\">100%</div>\r\n\r\n<p class=\"yellowBoxp\">in-transit visibility</p>\r\n</div>\r\n</div>\r\n\r\n<div class=\"col-sm-3 col-md-6 col-lg-3 col-xl-3 col-12\">\r\n<div class=\"whreHouseValYellowBox\">\r\n<p class=\"yellowBoxp\">Temperature controlled vehicles</p>\r\n</div>\r\n</div>\r\n\r\n<div class=\"col-sm-3 col-md-6 col-lg-3 col-xl-3 col-12\">\r\n<div class=\"whreHouseValBlueBox\">\r\n<p class=\"yellowBoxp\">Cold storage ready</p>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</section>\r\n\r\n<section class=\"electricaSectOne wow fadeInDown\">\r\n<div class=\"container\">\r\n<h1>OVERVIEW</h1>\r\n\r\n<p>The Indian healthcare &amp; pharmaceutical industry is ranked third in terms of the volume of drug production. With a high customer demand, stringent government regulations and temperature sensitive products, it is to have an optimised supply chain that ensures availability of the right products in the market on time.</p>\r\n</div>\r\n</section>\r\n\r\n<section class=\"electricaSectTwo wow fadeInDown\">\r\n<div class=\"container\">\r\n<div class=\"row justify-content-center\">\r\n<div class=\"col-sm-9 col-lg-9 col-xl-9 col-md-9 col-12\">\r\n<div class=\"electricablueBox\">\r\n<div class=\"electlImgSec\"><img alt=\"Our Approach\" class=\"img-fluid\" src=\"/assets/themes/theme-1/images/Hc-Yellow-Image.png\" /></div>\r\n\r\n<div class=\"electlContSec\">\r\n<h4>Our Approach</h4>\r\n\r\n<p>We are partners to the leading names in the healthcare &amp; pharmaceutical industry and have developed advanced logistical capabilities empowered by a high turnaround time, temperature controlled fleet &amp; warehouses, and value-added services. A few of these are discussed below.</p>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</section>\r\n\r\n<section class=\"electricaSectThree wow fadeInDown\">\r\n<div class=\"container\">\r\n<div class=\"row justify-content-center\">\r\n<div class=\"col-sm-9 col-lg-9 col-xl-9 col-md-9 col-12\">\r\n<h6>Temperature Control Capabilities</h6>\r\n\r\n<p>Healthcare &amp; pharmaceutical products, be it drugs or devices, require a proper atmosphere during transit and storage. Varuna Group fulfills these unique requirements as per the standard regulations. Our temperature controlled fleet &amp; warehouses ensure safe delivery of the consignment.</p>\r\n\r\n<h6>Value-added Services</h6>\r\n\r\n<p>Varuna Group provides customised labelling and kitting as well as repacking of the consignment as a value add, giving a holistic range of services to you.</p>\r\n\r\n<h6>Systematic Operations</h6>\r\n\r\n<p>To maintain the quality of the entire consignment, our warehouses have adopted the global standard of FEFO (First Expired, First Out) and follow it religiously.</p>\r\n</div>\r\n</div>\r\n</div>\r\n</section>', NULL, NULL, 'Logistics and Warehousing Solution for Healthcare & Pharmaceutical Industry in India', NULL, 'Varuna Group is the best logistics and warehousing solution provider company for healthcare & pharmaceutical Industry in India. We offer professional healthcare & pharmaceutical distribution and logistics services in India.', 1, 0, '2020-08-26 08:25:34', '2021-02-02 07:21:11'),
(19, 11, 'Industry Electrical', 'industry-electrical', 'Electrical', 'Electrical Industry', 'Ensuring safe and timely <span class=\"bannerNewLine\"></span>transportation of electrical<span class=\"bannerNewLine\"></span>  products all across the country', 'pages.industry_electrical', NULL, '120121075256-011020082125-rsz_1electronics_landing_page.jpg', '<section class=\"threeYellowBox  wow fadeInDown\">\r\n<div class=\"container\">\r\n<div class=\"row\">\r\n<div class=\"col-sm-3 col-md-6 col-lg-3 col-xl-3 col-12\">\r\n<div class=\"whreHouseValYellowBox\">\r\n<div class=\"yellowBoxdiv\">100%</div>\r\n\r\n<p class=\"yellowBoxp\">intransit visibility</p>\r\n</div>\r\n</div>\r\n\r\n<div class=\"col-sm-3 col-md-6 col-lg-3 col-xl-3 col-12\">\r\n<div class=\"whreHouseValBlueBox\">\r\n<div class=\"yellowBoxdiv\">X</div>\r\n\r\n<p class=\"yellowBoxp\">inventory turns</p>\r\n</div>\r\n</div>\r\n\r\n<div class=\"col-sm-3 col-md-6 col-lg-3 col-xl-3 col-12\">\r\n<div class=\"whreHouseValYellowBox\">\r\n<div class=\"yellowBoxdiv\">0.01</div>\r\n\r\n<p class=\"yellowBoxp\">DEPS</p>\r\n</div>\r\n</div>\r\n\r\n<div class=\"col-sm-3 col-md-6 col-lg-3 col-xl-3 col-12\">\r\n<div class=\"whreHouseValBlueBox\">\r\n<div class=\"yellowBoxdiv\">100%</div>\r\n\r\n<p class=\"yellowBoxp\">order fulfillment</p>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</section>\r\n\r\n<section class=\"electricaSectOne wow fadeInDown\">\r\n<div class=\"container\">\r\n<h1>OVERVIEW</h1>\r\n\r\n<p>The electrical industry manufactures equipment for other industries as well as consumer electric products. It is one of the rapidly growing sectors due to an increase in demand for electrical equipment in the emerging market economies. Storing and shipping of such products require strict adherence to quality standards to ensure order fulfillment with minimum damages.</p>\r\n</div>\r\n</section>\r\n\r\n<section class=\"electricaSectTwo wow fadeInDown\">\r\n<div class=\"container\">\r\n<div class=\"row justify-content-center\">\r\n<div class=\"col-sm-9 col-lg-9 col-xl-9 col-md-9 col-12\">\r\n<div class=\"electricablueBox\">\r\n<div class=\"electlImgSec\"><img alt=\"Industry Specific Approach\" class=\"img-fluid\" src=\"/assets/themes/theme-1/images/bulb.png\" /></div>\r\n\r\n<div class=\"electlContSec\">\r\n<h4>Industry Specific Approach</h4>\r\n\r\n<p>Varuna Group partners with India&rsquo;s leading manufacturers of electrical products to drive transparency, reliability and predictability across their supply chain. Our team of experts have continuously innovated to make our systems robust for storing and transporting of electrical products, some of which are listed below</p>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</section>\r\n\r\n<section class=\"electricaSectThree wow fadeInDown\">\r\n<div class=\"container\">\r\n<div class=\"row justify-content-center\">\r\n<div class=\"col-sm-9 col-lg-9 col-xl-9 col-md-9 col-12\">\r\n<h6>Powerful WMS and TMS</h6>\r\n\r\n<p>Tech-enabled management of orders, value added services and administrative tasks coupled with real time tracking and monitoring of inventory even during transit, ensures electrical products are delivered safely, quickly and in time.</p>\r\n\r\n<h6>Strict adherence to Quality standards</h6>\r\n\r\n<p>Electrical products need to be handled with care and kept in an absolutely clean environment. We follow 5S, lean sigma &amp; HSSE measures and conduct periodic audits as a part of our well defined quality management system.</p>\r\n\r\n<h6>Systematic and streamlined operations</h6>\r\n\r\n<p>Varuna Group strictly follows the global standards for FEFO, FIFO etc to practise high maintenance of the quality of the products being transported.</p>\r\n</div>\r\n</div>\r\n</div>\r\n</section>', NULL, NULL, 'Logistics and Warehousing Solution for Electrical Industry in India', NULL, 'Varuna Group is the best logistics and warehousing solution provider company for electrical industry in India. We offer professional electrical products distribution and logistics services in India.', 1, 0, '2020-08-27 04:30:02', '2021-02-02 07:22:46'),
(20, 11, 'Industry Automotive', 'industry-automotive', 'Auto & Tyre', 'Automotive Industry', 'Innovative solutions simplifying <br>the logistics associated with <br> automotive products', 'pages.industry_automotive', NULL, '120121080034-011020075137-rsz_automobile-27.jpg', '<section class=\"threeYellowBox  wow fadeInDown\">\r\n<div class=\"container\">\r\n<div class=\"row\">\r\n<div class=\"col-sm-3 col-md-6 col-lg-3 col-xl-3 col-12\">\r\n<div class=\"whreHouseValYellowBox\">\r\n<div class=\"yellowBoxdiv\">99%</div>\r\n\r\n<p class=\"yellowBoxp\">Placement</p>\r\n</div>\r\n</div>\r\n\r\n<div class=\"col-sm-3 col-md-6 col-lg-3 col-xl-3 col-12\">\r\n<div class=\"whreHouseValBlueBox\">\r\n<div class=\"yellowBoxdiv\">100%</div>\r\n\r\n<p class=\"yellowBoxp\">in-transit visibility</p>\r\n</div>\r\n</div>\r\n\r\n<div class=\"col-sm-3 col-md-6 col-lg-3 col-xl-3 col-12\">\r\n<div class=\"whreHouseValYellowBox\">\r\n<div class=\"yellowBoxdiv\">50%</div>\r\n\r\n<p class=\"yellowBoxp\">TAT saving</p>\r\n</div>\r\n</div>\r\n\r\n<div class=\"col-sm-3 col-md-6 col-lg-3 col-xl-3 col-12\">\r\n<div class=\"whreHouseValBlueBox\">\r\n<div class=\"yellowBoxdiv\">JIT</div>\r\n\r\n<p class=\"yellowBoxp\">deliveries</p>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</section>\r\n\r\n<section class=\"electricaSectOne wow fadeInDown\">\r\n<div class=\"container\">\r\n<h1>OVERVIEW</h1>\r\n\r\n<p>A highly competitive sector, players in the automotive industry succeed on the basis of rigour, quality and agility of their logistics. The optimisation of logistics and warehousing functions play a vital role in determining the cost of the final product. A well thought out strategy for logistics and warehousing enables you to make the most of new market opportunities and maintain a competitive edge.</p>\r\n</div>\r\n</section>\r\n\r\n<section class=\"electricaSectTwo wow fadeInDown\">\r\n<div class=\"container\">\r\n<div class=\"row justify-content-center\">\r\n<div class=\"col-sm-9 col-lg-9 col-xl-9 col-md-9 col-12\">\r\n<div class=\"electricablueBox\">\r\n<div class=\"electlImgSec\"><img alt=\"Our Approach\" class=\"img-fluid\" src=\"/assets/themes/theme-1/images/automotiveYellowImg.png\" /></div>\r\n\r\n<div class=\"electlContSec\">\r\n<h4>Our Approach</h4>\r\n\r\n<p>Working with industry leaders in the automotive industry has given us an opportunity to showcase our capabilities of streamlining operations, minimising risk and maximising profitability by matching the pace of the market demand. Our team of experts helps fine tune your operations and offer optimal support.</p>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</section>\r\n\r\n<section class=\"electricaSectThree wow fadeInDown\">\r\n<div class=\"container\">\r\n<div class=\"row justify-content-center\">\r\n<div class=\"col-sm-9 col-lg-9 col-xl-9 col-md-9 col-12\">\r\n<h6>Robust Order Fulfilment through Just-in-time (JIT)</h6>\r\n\r\n<p>JIT deliveries empower us to give you a remarkable advantage over your competitors. A network of strategically placed warehouses enables such deliveries and helps you meet the market demands. Our impeccable MRO further adds an edge to our operations.</p>\r\n\r\n<h6>Kitting Services</h6>\r\n\r\n<p>Varuna Group provides efficient and accurate in-house kitting service. It allows us to manage your inventory conveniently. Meticulously packing and delivering your products ensures high inventory accuracy.</p>\r\n\r\n<h6>Robust WMS &amp; Dust Free Facilities</h6>\r\n\r\n<p>Using advanced technology that powers our WMS, Varuna Group has been able to continuously optimize and refine order management &amp; inventory planning, amongst other things. For tyre manufacturers, we provide dust-free facilities to uphold the quality of their products.</p>\r\n</div>\r\n</div>\r\n</div>\r\n</section>', NULL, NULL, 'Logistics and Warehousing Solution for Automotive Industry in India', NULL, 'Varuna Group is the best logistics and warehousing solution provider company for automotive industry in India. We offer professional automotive products distribution and logistics services in India.', 1, 0, '2020-08-27 05:50:58', '2021-07-27 12:29:19'),
(21, 11, 'Food & Beverage', 'food-beverage', 'Food & Beverage', 'Food & Beverage', '<p class=\"whiteText\">Efficient operations   <span class=\"bannerNewLine\"></span> maintaining the quality    <span class=\"bannerNewLine\"></span> of the consignment </p>', 'pages.food-beverage', NULL, '240920013402-food-banner.jpg', '<section class=\"threeYellowBox  wow fadeInDown\">\r\n<div class=\"container\">\r\n<div class=\"row\">\r\n<div class=\"col-sm-3 col-md-6 col-lg-3 col-xl-3 col-12\">\r\n<div class=\"whreHouseValYellowBox\">\r\n<div class=\"yellowBoxdiv\">100%</div>\r\n\r\n<p class=\"yellowBoxp\">in-transit visibility</p>\r\n</div>\r\n</div>\r\n\r\n<div class=\"col-sm-3 col-md-6 col-lg-3 col-xl-3 col-12\">\r\n<div class=\"whreHouseValBlueBox\">\r\n<div class=\"yellowBoxdiv\">100%</div>\r\n\r\n<p class=\"yellowBoxp\">order fulfilment</p>\r\n</div>\r\n</div>\r\n\r\n<div class=\"col-sm-3 col-md-6 col-lg-3 col-xl-3 col-12\">\r\n<div class=\"whreHouseValYellowBox\">\r\n<div class=\"yellowBoxdiv\">50%</div>\r\n\r\n<p class=\"yellowBoxp\">TAT saving</p>\r\n</div>\r\n</div>\r\n\r\n<div class=\"col-sm-3 col-md-6 col-lg-3 col-xl-3 col-12\">\r\n<div class=\"whreHouseValBlueBox\">\r\n<div class=\"yellowBoxdiv\">0.01%</div>\r\n\r\n<p class=\"yellowBoxp\">DEPS</p>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</section>\r\n\r\n<section class=\"electricaSectOne wow fadeInDown\">\r\n<div class=\"container\">\r\n<h1>OVERVIEW</h1>\r\n\r\n<p>The Indian Food &amp; Beverage (F&amp;B) sector is the global leader as the number of consumers is the highest. The industry is the fifth-largest sector in manufacturing. There are certain segments within the industry that are gaining immense acceptability amongst the customers. This is giving the opportunity to many players in the sector. To meet the ever increasing demand it is crucial for the logistics and warehousing industry to streamline the operations for the F&amp;B industry.</p>\r\n</div>\r\n</section>\r\n\r\n<section class=\"electricaSectTwo wow fadeInDown\">\r\n<div class=\"container\">\r\n<div class=\"row justify-content-center\">\r\n<div class=\"col-sm-9 col-lg-9 col-xl-9 col-md-9 col-12\">\r\n<div class=\"electricablueBox\">\r\n<div class=\"electlImgSec\"><img alt=\"Our Approach\" src=\"/assets/themes/theme-1/images/food-img1.jpg\" /></div>\r\n\r\n<div class=\"electlContSec\">\r\n<h4>Our Approach</h4>\r\n\r\n<p>We have forged a strong relationship with leading players of the F&amp;B industry and have enabled them to maximise their profits while minimising the risk. We have showcased our capabilities of transparency, reliability and predictability to optimally meet the customer expectations. A constant development in our transportation and warehousing facilities has also enabled us to transport and store your F&amp;B products.</p>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</section>\r\n\r\n<section class=\"common_padding ques_block_wrap pb0\">\r\n<div class=\"container\">\r\n<div class=\"ques_block\">\r\n<div class=\"ques\">Efficient Transportation</div>\r\n\r\n<p>Varuna Group&rsquo;s MUF and the fleet of Multi-axle vehicles are duly equipped with climate control to maintain the ideal atmosphere during transportation and storage of F&amp;B products.</p>\r\n\r\n<div class=\"ques\">Systematic Operations</div>\r\n\r\n<p>We, at Varuna Group, follow the global standard of FEFO (First Expired, First Out) that helps maintain the quality of the products, streamlining the operations of the F&amp;B industry.</p>\r\n\r\n<div class=\"ques\">Stringent Quality Checks</div>\r\n\r\n<p>To reduce the in-transit damage and to ensure the high quality of consignment, every consignment undergoes a myriad of rigorous quality checks like 5S, QMS, FSSAI, Fire and follow a set of their own SOPs.</p>\r\n</div>\r\n</div>\r\n</section>', NULL, NULL, 'Food & Beverage Logistics and Warehousing Solution in India | Varuna Group', NULL, 'Varuna Group is the best food & beverage logistics and warehousing solution provider company in India. We offer professional food and beverage distribution and logistics services in India.', 1, 0, '2020-08-27 07:42:45', '2021-07-27 13:18:52');
INSERT INTO `cms_pages` (`id`, `parent_id`, `name`, `slug`, `title`, `heading`, `brief`, `template`, `image`, `banner_image`, `content`, `old_content`, `default_content`, `meta_title`, `meta_keyword`, `meta_description`, `status`, `featured`, `created_at`, `updated_at`) VALUES
(22, 11, 'Industry FMCG', 'industry-fmcg', 'FMCG', 'FMCG', '<p class=\"whiteText\">Manage soaring customer   <span class=\"bannerNewLine\"></span> expectations with    <span class=\"bannerNewLine\"></span> remarkable efficiency </p>', 'pages.food-beverage', NULL, '240920015017-fmcg-banner.jpg', '<section class=\"threeYellowBox  wow fadeInDown\">\r\n<div class=\"container\">\r\n<div class=\"row\">\r\n<div class=\"col-sm-3 col-md-6 col-lg-3 col-xl-3 col-12\">\r\n<div class=\"whreHouseValYellowBox\">\r\n<div class=\"yellowBoxdiv\">100%</div>\r\n\r\n<p class=\"yellowBoxp\">in-transit visibility</p>\r\n</div>\r\n</div>\r\n\r\n<div class=\"col-sm-3 col-md-6 col-lg-3 col-xl-3 col-12\">\r\n<div class=\"whreHouseValBlueBox\">\r\n<div class=\"yellowBoxdiv\">100%</div>\r\n\r\n<p class=\"yellowBoxp\">order fulfilment</p>\r\n</div>\r\n</div>\r\n\r\n<div class=\"col-sm-3 col-md-6 col-lg-3 col-xl-3 col-12\">\r\n<div class=\"whreHouseValYellowBox\">\r\n<div class=\"yellowBoxdiv\">50%</div>\r\n\r\n<p class=\"yellowBoxp\">TAT saving</p>\r\n</div>\r\n</div>\r\n\r\n<div class=\"col-sm-3 col-md-6 col-lg-3 col-xl-3 col-12\">\r\n<div class=\"whreHouseValBlueBox\">\r\n<div class=\"yellowBoxdiv\">0.01%</div>\r\n\r\n<p class=\"yellowBoxp\">DEPS</p>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</section>\r\n\r\n<section class=\"electricaSectOne wow fadeInDown\">\r\n<div class=\"container\">\r\n<h1>OVERVIEW</h1>\r\n\r\n<p>Fast Moving Consumer Goods (FMCG) sector is the fourth largest sector in, and naturally a significant contributor to, the Indian economy. Every house in the country, across the societal strata, spends a large portion of their income on these products. The sector is set to flourish rapidly in the coming years, egged on by growing awareness, ready access and changing lifestyles. As customer demands grow and new trends rise, Varuna Group makes sure that you can take care of them with aplomb with our robust portfolio of technology-enabled logistics services, enabling you to observe safe &amp; secure transportation, peak en route visibility, incredible transit time savings and 100% order fulfilment while cutting down on the effective logistical costs of products.</p>\r\n</div>\r\n</section>\r\n\r\n<section class=\"electricaSectTwo wow fadeInDown\">\r\n<div class=\"container\">\r\n<div class=\"row justify-content-center\">\r\n<div class=\"col-sm-9 col-lg-9 col-xl-9 col-md-9 col-12\">\r\n<div class=\"electricablueBox\">\r\n<div class=\"electlImgSec\"><img alt=\"Our Approach\" src=\"/assets/themes/theme-1/images/fmcg.jpg\" /></div>\r\n\r\n<div class=\"electlContSec\">\r\n<h4>Our Approach</h4>\r\n\r\n<p>We are proud to assist some of India&rsquo;s leading FMCG players in achieving transparency, reliability and predictability across their supply chains, and fulfil customer expectations in a remarkably consistent manner. With excellence as our inspiration, we are constantly innovating and improving to make our systems robust for storing and transporting FMCG products.</p>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</section>\r\n\r\n<section class=\"common_padding ques_block_wrap pb0\">\r\n<div class=\"container\">\r\n<div class=\"ques_block\">\r\n<div class=\"ques\">Flexible Warehousing with Efficient Transportation</div>\r\n\r\n<div class=\"color_blue\">(MUF and MXL vehicles of 3 different types - single, double and<br />\r\ntriple dedicated climate-controlled storage and transportation facility for FMCG products)</div>\r\n\r\n<p>To maintain the optimum transportation and storage atmosphere, the FMCG products are stored in Varuna&rsquo;s MUF and transported by Multi-axle vehicles, both of which are equipped with climate control to maintain the correct temperature</p>\r\n\r\n<div class=\"ques\">Stringent Quality Standards</div>\r\n\r\n<div class=\"color_blue\">(Assure quality through - 5S, QMS, FSSAI, Fire and our own SOP&#39;s)</div>\r\n\r\n<p>To ensure that the consignment reaches the destination with its quality intact, Varuna keeps a keen eye on the quality standard through various quality checks like 5S, QMS, FSSAI, Fire and follow their own laid out SOPs</p>\r\n\r\n<div class=\"ques\">Streamlined operations</div>\r\n\r\n<div class=\"color_blue\">(FEFO - QMS)</div>\r\n\r\n<p>Varuna has laid out a systematic approach for its operations and follows the global standard of FEFO (First Expired, First Out) to maintain the quality of the consignment.</p>\r\n</div>\r\n</div>\r\n</section>', NULL, NULL, 'Logistics and Warehousing Solution for FMCG Industry in India', NULL, 'Varuna Group is the best logistics and warehousing solution provider company for FMCG Industry in India. We offer professional FMCG distribution and logistics services in India.', 1, 0, '2020-09-04 12:20:10', '2021-08-16 15:30:56'),
(23, 11, 'Industry Omnichannel', 'industry-omnichannel', 'Omnichannel Retail', 'Omni Channel Retail', '<p class=\"whiteText\">Increasing business  <span class=\"bannerNewLine\"></span> reach through efficient   <span class=\"bannerNewLine\"></span> supply chain </p>', 'pages.food-beverage', NULL, '240920014124-omnichannel-banner.jpg', '<section class=\"common_padding wow fadeInDown pb_mob0\">\r\n<div class=\"container\">\r\n<div class=\"row\">\r\n<div class=\"col-sm-3 col-md-6 col-lg-3 col-xl-3 col-12\">\r\n<div class=\"whreHouseValYellowBox\">\r\n<div class=\"yellowBoxdiv\">99%</div>\r\n\r\n<p class=\"yellowBoxp\">Placement</p>\r\n</div>\r\n</div>\r\n\r\n<div class=\"col-sm-3 col-md-6 col-lg-3 col-xl-3 col-12\">\r\n<div class=\"whreHouseValBlueBox\">\r\n<div class=\"yellowBoxdiv\">100%</div>\r\n\r\n<p class=\"yellowBoxp\">in-transit visibility</p>\r\n</div>\r\n</div>\r\n\r\n<div class=\"col-sm-3 col-md-6 col-lg-3 col-xl-3 col-12\">\r\n<div class=\"whreHouseValYellowBox\">\r\n<div class=\"yellowBoxdiv\">50%</div>\r\n\r\n<p class=\"yellowBoxp\">TAT saving</p>\r\n</div>\r\n</div>\r\n\r\n<div class=\"col-sm-3 col-md-6 col-lg-3 col-xl-3 col-12\">\r\n<div class=\"whreHouseValBlueBox\">\r\n<div class=\"yellowBoxdiv\">JIT</div>\r\n\r\n<p class=\"yellowBoxp\">deliveries</p>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n<!-- container--></section>\r\n\r\n<section class=\"electricaSectOne wow fadeInDown\">\r\n<div class=\"container\">\r\n<h1>OVERVIEW</h1>\r\n\r\n<p>With technological advancements, most businesses are shifting from single or multi channel retail to omni channel retail. The omni channel retail system gives a seamless experience to customers and business owners alike. The millennial generation is dependent on the internet for the majority of their purchases and to ease that experience the data is centralized. This enables the businesses to sell the same product from a brick-and-mortar store, their website and even through a third-party vendor. But to successfully implement the omni channel strategy it is crucial to have a strong and integrated logistics system.</p>\r\n</div>\r\n</section>\r\n\r\n<section class=\"electricaSectTwo wow fadeInDown\">\r\n<div class=\"container\">\r\n<div class=\"row justify-content-center\">\r\n<div class=\"col-sm-9 col-lg-9 col-xl-9 col-md-9 col-12\">\r\n<div class=\"electricablueBox\">\r\n<div class=\"electlImgSec\"><img alt=\"Our Approach\" src=\"/assets/themes/theme-1/images/omnichannel-img1.jpg\" /></div>\r\n\r\n<div class=\"electlContSec\">\r\n<h4>Our Approach</h4>\r\n\r\n<p>Varuna Group has partnered with numerous omni channel retailers to provide them with a seamless logistics experience for their online and offline customers. The flexibility and transparency of transportation and warehousing facilities provided by Varuna fine tune the operations, providing optimal support.</p>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</section>\r\n\r\n<section class=\"common_padding ques_block_wrap pb_mob0\">\r\n<div class=\"container\">\r\n<div class=\"ques_block\">\r\n<div class=\"ques\">Flexible Warehousing Facility</div>\r\n\r\n<p>Omni channel businesses require flexibility in terms of size, services and location to meet the customer demand in the shortest possible time. To meet all these requirements the MUFs of Varuna Group have supported the businesses in many ways.</p>\r\n\r\n<div class=\"ques\">In-transit Visibility of Consignment</div>\r\n\r\n<p>Varuna Group being technologically inclined provides the customers with complete visibility of real-time updates on the consignment throughout its journey. This optimises the operations of the customer allowing them to meet the customer demands.</p>\r\n\r\n<div class=\"ques\">Predictable Order Fulfillment Process</div>\r\n\r\n<p>To meet the promises of same-day or next-day delivery and return, it is important for the logistics company to be rightly placed. With the perfect placement of warehouses of Varuna Group, we have been able to keep up with the promises made to the customer.</p>\r\n</div>\r\n</div>\r\n</section>', NULL, NULL, 'Omni Channel Logistics and Warehousing Solution Provider in India', NULL, 'Varuna Group is the best omni channel logistics and warehousing solution provider company in India. We offer professional Omni Channel logistics & warehousing services in India.', 1, 0, '2020-09-04 12:21:09', '2021-07-27 13:17:48'),
(24, 0, 'Varuna Career', 'varuna-career', 'Varuna Career', 'CAREERS', 'Set yourself up <span class=\"bannerNewLine\"></span> to achieve the <span class=\"bannerNewLine\"></span> extraordinary', 'pages.careers', NULL, '120121081047-170920091403-Career_Landing-banner.jpg', '<section class=\"twoColConSection wow fadeInDown\">\r\n<div class=\"container-fluid\">\r\n<div class=\"twoColContent pt-5 clpb-5\">\r\n<div class=\"row  justify-content-center\">\r\n<div class=\"col-sm-8 col-md-6 col-12 col-lg-8 col-xl-8\"><img alt=\"LIVE &amp; BREATHE EXCELLENCE\" class=\"img-fluid\" src=\"/assets/themes/theme-1/images/carlandingImage.jpg\" /></div>\r\n<!-- col-sm-7  -->\r\n\r\n<div class=\"col-sm-4 col-md-6 col-12 col-lg-4 col-xl-4\">\r\n<div class=\"carerLeftEmp\">\r\n<h1 class=\"landingHeading\">LIVE &amp; BREATHE EXCELLENCE</h1>\r\n\r\n<p>Work with a pool of talented professionals who nurture an appetite for growth and are passionate about solving complex business challenges.</p>\r\n\r\n<div class=\"newsButton carerLandingBtn\"><a href=\"/career-life-at-varuna\">LEARN MORE</a></div>\r\n</div>\r\n</div>\r\n<!-- col-sm-5  --></div>\r\n</div>\r\n</div>\r\n</section>\r\n\r\n<section class=\"landingBannerSect wow fadeInDown\">\r\n<div class=\"landingBannerImg\">\r\n<div class=\"bgImgLanding\" style=\"background-image:url(\'/assets/themes/theme-1/images/Career_Landing_banner2.png\');\">&nbsp;</div>\r\n\r\n<div class=\"container-fluid twoColContent landingBannerCont\">\r\n<div class=\"row justify-content-left\">\r\n<div class=\"col-sm-5 col-md-5\">\r\n<div class=\"leftCont\">\r\n<h2 class=\"landingHeading\">HEAR FROM OUR PEOPLE</h2>\r\n\r\n<p>The drive &amp; commitment of our people has shaped us into who we are today. They are our inspiration. Hear them talk about their experience with our company.</p>\r\n\r\n<div class=\"newsButton carerLandingBtn\"><a href=\"/employee-stories\">LEARN MORE</a></div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n<!-- container-fluid --></div>\r\n</section>\r\n\r\n<section class=\"twoColConSection wow fadeInDown\">\r\n<div class=\"container-fluid\">\r\n<div class=\"twoColContent pt-5 pb-5\">\r\n<div class=\"row  justify-content-center\">\r\n<div class=\"col-sm-8 col-md-6 col-12 col-lg-8 col-xl-8\"><img alt=\"EXPERIENCE GROWTH LIKE NEVER BEFORE\" class=\"img-fluid imgRadious\" src=\"/assets/themes/theme-1/images/Career_LandingleftImgg.jpg\" /></div>\r\n<!-- col-sm-7  -->\r\n\r\n<div class=\"col-sm-4 col-md-6 col-12 col-lg-4 col-xl-4\">\r\n<div class=\"leftContEmp\">\r\n<h3 class=\"landingHeading\">EXPERIENCE GROWTH LIKE NEVER BEFORE</h3>\r\n\r\n<p>Our mindfully conceived growth plans help our people embrace continuous development as a way of life and keep moving ahead in their respective roles.</p>\r\n\r\n<div class=\"newsButton carerLandingBtn\"><a href=\"/learning-development\">LEARN MORE</a></div>\r\n</div>\r\n</div>\r\n<!-- col-sm-5  --></div>\r\n</div>\r\n</div>\r\n</section>\r\n\r\n<div class=\"container-fluid listPadding\">\r\n<div class=\"borderTopLanding\">&nbsp;</div>\r\n</div>', NULL, NULL, 'Career | Varuna Group', NULL, 'Work with a pool of talented professionals who nurture an appetite for growth and are passionate about solving complex business challenges.', 1, 0, '2020-09-04 12:24:58', '2021-02-08 05:39:02'),
(25, 13, 'Capability Fleet', 'capability-fleet', 'Fleet', 'OUR FLEET', 'At your service,<br />India\'s largest <br />owned fleet', 'pages.careers', NULL, '171020081947-190920091943-banner-Fleet-05.jpg', '<section class=\"threeYellowBox  wow fadeInDown\">\r\n<div class=\"container\">\r\n<div class=\"row\">\r\n<div class=\"col-sm-3 col-md-6 col-lg-3 col-xl-3 col-12\">\r\n<div class=\"yellowBoxOne\">\r\n<div class=\"yellowBoxdiv\">1800+</div>\r\n\r\n<p class=\"yellowBoxp\">owned trucks</p>\r\n</div>\r\n</div>\r\n\r\n<div class=\"col-sm-3 col-md-6 col-lg-3 col-xl-3 col-12\">\r\n<div class=\"yellowBoxTwo\">\r\n<div class=\"yellowBoxdiv\">400+</div>\r\n\r\n<p class=\"yellowBoxp\">fleet management staff</p>\r\n</div>\r\n</div>\r\n\r\n<div class=\"col-sm-3 col-md-6 col-lg-3 col-xl-3 col-12\">\r\n<div class=\"yellowBoxThree\">\r\n<div class=\"yellowBoxdiv\">24x7</div>\r\n\r\n<p class=\"yellowBoxp\">monitoring &amp; assistance</p>\r\n</div>\r\n</div>\r\n\r\n<div class=\"col-sm-3 col-md-6 col-lg-3 col-xl-3 col-12\">\r\n<div class=\"yellowBoxTwo\">\r\n<div class=\"yellowBoxdiv\">5</div>\r\n\r\n<p class=\"yellowBoxp\">maintenance, repair &amp; overhaul hubs</p>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</section>\r\n\r\n<section class=\"commLeftSect wow fadeInDown pb0\">\r\n<div class=\"container\">\r\n<h1 class=\"h1_heading_seo\">Keep ahead of the competition</h1>\r\n\r\n<p>We have the largest dry cargo container fleet in the country. It&rsquo;s fuelled by the exceptional commitment of our trained specialists and on-ground team who make use of digital technology and their vast experience to ensure safe transportation of your consignments anywhere to anywhere in India at industry-leading transit times, with 95% on-time placement, 0.01% damage ratio and 100% en-route visibility. Be it primary, secondary, or express delivery, our fleet helps you stay ahead of the competition, at every turn and destination.</p>\r\n</div>\r\n\r\n<div class=\"container-fluid paddingleftRight\">\r\n<div class=\"borderTopFleet\">&nbsp;</div>\r\n</div>\r\n</section>\r\n\r\n<section class=\"commSixBoxNews wow fadeInDown\">\r\n<div class=\"container\">\r\n<h2 class=\"sixBoxNewsHead\">Stay in the lead</h2>\r\n\r\n<div class=\"row\">\r\n<div class=\"col-sm-4 col-lg-4 col-xl-4 col-md-4\"><img alt=\" tech-enabled Control Tower for efficient vehicle management\" class=\"img-fluid\" src=\"/assets/themes/theme-1/images/newSix1.png\" />\r\n<div class=\"text_lg\">A tech-enabled Control Tower for efficient vehicle management</div>\r\n</div>\r\n\r\n<div class=\"col-sm-4 col-lg-4 col-xl-4 col-md-4\"><img alt=\"5 world-class MRO hubs certified by OEMs\" class=\"img-fluid\" src=\"/assets/themes/theme-1/images/newSix2.png\" />\r\n<div class=\"text_lg\">5 world-class MRO hubs certified by OEMs</div>\r\n</div>\r\n\r\n<div class=\"col-sm-4 col-lg-4 col-xl-4 col-md-4\"><img alt=\"Fleet maintenance staff, technically trained by OEMs\" class=\"img-fluid\" src=\"/assets/themes/theme-1/images/newSix3.png\" />\r\n<div class=\"text_lg\">Fleet maintenance staff, technically trained by OEMs</div>\r\n</div>\r\n\r\n<div class=\"col-sm-4 col-lg-4 col-xl-4 col-md-4\"><img alt=\"Comprehensive Journey Management Planning (JMP)\" class=\"img-fluid\" src=\"/assets/themes/theme-1/images/newSix4.png\" />\r\n<div class=\"text_lg\">Comprehensive Journey Management Planning (JMP)</div>\r\n</div>\r\n\r\n<div class=\"col-sm-4 col-lg-4 col-xl-4 col-md-4\"><img alt=\"Strict adherence to HSE norms at our facilities\" class=\"img-fluid\" src=\"/assets/themes/theme-1/images/newSix5.png\" />\r\n<div class=\"text_lg\">Strict adherence to HSE norms at our facilities</div>\r\n</div>\r\n\r\n<div class=\"col-sm-4 col-lg-4 col-xl-4 col-md-4\"><img alt=\"A national service network for on-road repair &amp; recovery within 4 hours\" class=\"img-fluid\" src=\"/assets/themes/theme-1/images/newSix6.jpg\" />\r\n<div class=\"text_lg\">A national service network for on-road repair &amp; recovery within 4 hours</div>\r\n</div>\r\n</div>\r\n</div>\r\n</section>\r\n\r\n<section class=\"posImpact wow fadeInDown\"><img alt=\"Agility &amp; excellence powered by technology\" class=\"img-fluid\" src=\"/assets/themes/theme-1/images/Fleet-banner2.jpg\" />\r\n<div class=\"posImpactImgText\">\r\n<div class=\"common_heading_seo\"><span class=\"yellowHeading fleetYellow\">Agility &amp; excellence </span><br />\r\npowered by technology</div>\r\n</div>\r\n</section>\r\n\r\n<section class=\"wow fadeInDown ligtYellowBoxSec\">\r\n<div class=\"container\">\r\n<div class=\"row\">\r\n<div class=\"col-sm-4 col-lg-4 col-xl-4 col-md-4\">\r\n<div class=\"ligtYellowBox fleetImg\"><img alt=\"Fleet Maintenance Portal\" class=\"img-fluid\" src=\"/assets/themes/theme-1/images/fleet-Icons-01.png\" />\r\n<div class=\"text-center text_lg\">Fleet Maintenance Portal</div>\r\n\r\n<p class=\"text-center\">Our fleet maintenance portal optimises the maintenance processes to ensure timely preventive maintenance, routine inspections and repairs. It enables the upkeep of a robust fleet across the country while closely tracking compliance, efficiency and costs.</p>\r\n</div>\r\n</div>\r\n\r\n<div class=\"col-sm-4 col-lg-4 col-xl-4 col-md-4\">\r\n<div class=\"ligtYellowBox fleetImg text-center\"><img alt=\"Customised ERP\" class=\"img-fluid\" src=\"/assets/themes/theme-1/images/fleet-Icons-02.png\" />\r\n<div class=\"text-center text_lg\">Customised ERP</div>\r\n\r\n<p class=\"text-center\">Our custom-built ERP system is the backbone of our operations. It tracks, monitors and optimises all the necessary information and documentation - from indents and proof of delivery (POD) to invoicing and payment - and drives greater efficiency, transparency and visibility for you.</p>\r\n</div>\r\n</div>\r\n\r\n<div class=\"col-sm-4 col-lg-4 col-xl-4 col-md-4\">\r\n<div class=\"ligtYellowBox fleetImg\"><img alt=\"Transport Management System\" class=\"img-fluid\" src=\"/assets/themes/theme-1/images/fleet-Icons-03.png\" />\r\n<div class=\"text-center text_lg\">Transport Management System</div>\r\n\r\n<p class=\"text-center\">Our Transport Management System (TMS) is critical to the successful functioning of our warehousing &amp; transportation operations. Whether it&#39;s determining the right load, en route inventory visibility or any other operation, the TMS ensures swift, predictable and efficient service delivery.</p>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</section>\r\n\r\n<section class=\"overLayIageSection wow fadeInDown\"><img alt=\"Dedicated Fleet MRO Hubs\" src=\"/storage/ck/050121105518-2021-01-05.jpg\" style=\"width: 1900px; height: 520px;\" />\r\n<div class=\"container-fluid paddingleftRight overlaybox overlaySideImgHide\">\r\n<div class=\"row  justify-content-center\">\r\n<div class=\"col-sm-5 col-md-5 col-lg-5 col-xl-5 col-12\">\r\n<div class=\"lg_text\">Dedicated Fleet<br />\r\nMRO Hubs</div>\r\n\r\n<div class=\"becomeIndia\">Preparing every vehicle<br />\r\nfor the long haul</div>\r\n</div>\r\n\r\n<div class=\"col-sm-6 col-md-6 col-lg-6 col-xl-5 col-12\">\r\n<p>To ensure you experience hassle-free service making use of our fleet, we have developed five world-class Maintenance, Repair &amp; Overhaul (MRO) hubs at strategically important locations in India. These OEM-certified facilities are ably supported by a team of well-trained technical experts who ensure the vehicles used for your consignments are in prime condition, at all times.</p>\r\n</div>\r\n</div>\r\n</div>\r\n</section>\r\n\r\n<section class=\"fleetTruckSection\">\r\n<div class=\"continer\">\r\n<div class=\"fleetTruckBox\"><img alt=\"Truck\" class=\"img-fluid\" src=\"/assets/themes/theme-1/images/Fleet-truck.png\" /></div>\r\n</div>\r\n</section>', NULL, NULL, 'Our Transportation and Fleet Management Services | Varuna Group', NULL, 'We have the largest dry cargo container fleet in the country. Our trained team makes use of digital technology & vast experience to ensure the safe transportation of consignments across India.', 1, 0, '2020-09-04 12:32:51', '2021-02-02 11:54:39'),
(26, 13, 'Capability Technology', 'capability-technology', 'Technology', 'TECHNOLOGY', 'Leveraging technology <span class=\"bannerNewLine\"></span>to simplify your supply  <span class=\"bannerNewLine\"></span>chain dynamics', 'pages.capability-technology', NULL, '180920020843-Varuna-Capablities-_-tech-05.jpg', '<section class=\"threeYellowBox capability_boxs  wow fadeInDown\">\r\n<div class=\"container\">\r\n<div class=\"row eaq_box\">\r\n<div class=\"col-sm-3 col-md-6 col-lg-3 col-xl-3 col-12\">\r\n<div class=\"yellowBoxOne yellowBoxOneTech\">\r\n<p class=\"yellowBoxCont\">Integrated Management System</p>\r\n</div>\r\n</div>\r\n\r\n<div class=\"col-sm-3 col-md-6 col-lg-3 col-xl-3 col-12\">\r\n<div class=\"yellowBoxTwo yellowBoxOneTech\">\r\n<p class=\"yellowBoxCont\">Dedicated Apps for Different Operations</p>\r\n</div>\r\n</div>\r\n\r\n<div class=\"col-sm-3 col-md-6 col-lg-3 col-xl-3 col-12\">\r\n<div class=\"yellowBoxThree yellowBoxOneTech\">\r\n<p class=\"yellowBoxCont\">Tech-enabled Vehicle Tracking</p>\r\n</div>\r\n</div>\r\n\r\n<div class=\"col-sm-3 col-md-6 col-lg-3 col-xl-3 col-12\">\r\n<div class=\"yellowBoxTwo yellowBoxOneTech\">\r\n<p class=\"yellowBoxCont\">Centralised Data Centre</p>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</section>\r\n\r\n<section class=\"commLeftSect commLeftSectPeopl pb0  wow fadeInDown\" style=\"visibility: visible; animation-name: fadeInDown;\">\r\n<div class=\"container\">\r\n<h1>Technology is in our DNA</h1>\r\n\r\n<p>Technology is a strategic focus area at Varuna Group. As a company operating in the connected age, we understand the transformative power of customer-centered digital experiences and are continuously investing in them in order to strengthen your rapidly evolving supply chains. We are developing and leveraging digital technologies such as Internet of Things (IoT), Artificial Intelligence (AI), Data Intelligence, among others to develop capabilities that help you experience complete visibility, enhanced efficiency and greater profitability.</p>\r\n</div>\r\n</section>\r\n\r\n<section class=\"techBoxSec text-center wow fadeInDown\">\r\n<div class=\"container\">\r\n<div class=\"row\">\r\n<div class=\"col-md-4 col-sm-4 col-md-4 col-12 col-lg-4 col-xl-4\">\r\n<div class=\"techYellowBox colorYellowBox\"><img alt=\"Artificial Intelligence\" class=\"img-fluid techImgWidth\" src=\"/assets/themes/theme-1/images/Artificial-intelligence.png\" /></div>\r\n\r\n<div class=\"techContBox\">\r\n<div class=\"h4_heading_boot\"><a href=\"#\">Artificial intelligence</a></div>\r\n\r\n<p>AI helps reduce redundancy, errors and slow-downs. It improves and enhances the accuracy, productivity and cost effectiveness of supply chain operations.</p>\r\n</div>\r\n<!-- techContBox--></div>\r\n\r\n<div class=\"col-md-4 col-sm-4 col-md-4 col-12 col-lg-4 col-xl-4\">\r\n<div class=\"techBlueBox colorBlueBox\"><img alt=\"Internet Things\" class=\"img-fluid techImgWidth\" src=\"/assets/themes/theme-1/images/Internet-Things.png\" /></div>\r\n\r\n<div class=\"techContBox\">\r\n<div class=\"h4_heading_boot\"><a href=\"#\">Internet of Things </a></div>\r\n\r\n<p>Beacons, sensors and RFID ensure high visibility and accurate data capturing. This drives more predictability, efficiency and reliability within the entire supply chain ecosystem.</p>\r\n</div>\r\n<!-- techContBox--></div>\r\n\r\n<div class=\"col-md-4 col-sm-4 col-md-4 col-12 col-lg-4 col-xl-4\">\r\n<div class=\"techYellowBox colorYellowBox\"><img alt=\"Data Analytics\" class=\"img-fluid techImgWidth\" src=\"/assets/themes/theme-1/images/Data-Analytics.png\" /></div>\r\n\r\n<div class=\"techContBox\">\r\n<div class=\"h4_heading_boot\"><a href=\"#\">Data Analytics </a></div>\r\n\r\n<p>Data analytics optimises various operations like enabling better forecasting and planning by structuring and analysing big chunks of data sets captured at various points in the supply chain.</p>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</section>\r\n\r\n<section class=\"techForteringSect wow fadeInDown\"><img alt=\"Fostering an agile and resilient supply chain\" class=\"img-fluid al_text_center\" src=\"/assets/themes/theme-1/images/logisticsBanner.jpg\" />\r\n<div class=\"techFortering\">\r\n<div class=\"techwhiteText\">Fostering an agile<br />\r\nand resilient supply chain</div>\r\n</div>\r\n</section>\r\n\r\n<section class=\"leadershipSection wow fadeInDown logisticLeader\">\r\n<div class=\"container\">\r\n<div class=\"row  justify-content-center\">\r\n<div class=\"col-sm-6 col-lg-5 col-xl-6 col-12 col-md-6 userTwo\">\r\n<div class=\"h4_heading_boot\">Custom ERP</div>\r\n\r\n<p>The custom ERP tracks, monitors and optimises our transportation service. The backbone of our operations, it integrates indent generation, control tower, billing, and many other operations while ensuring greater efficiency, transparency and visibility in the system.</p>\r\n\r\n<div class=\"smallYellowLine\">&nbsp;</div>\r\n</div>\r\n\r\n<div class=\"col-sm-6 col-lg-6 col-xl-6 col-12 col-md-6 userImgOne\"><img alt=\"Custom ERP\" class=\"img-fluid borderRadius5\" src=\"/assets/themes/theme-1/images/erp.png\" /></div>\r\n\r\n<div class=\"col-sm-6 col-lg-6 col-xl-6 col-12 col-md-6 userImgOne\"><img alt=\"Fleet Maintenance Portal\" class=\"img-fluid borderRadius5\" src=\"/assets/themes/theme-1/images/Vehicle-Platform.png\" /></div>\r\n\r\n<div class=\"col-sm-6 col-lg-6 col-xl-6 col-12 col-md-6 userOne\">\r\n<h4>Fleet Maintenance Portal</h4>\r\n\r\n<p>The fleet maintenance portal optimises vehicle care and never lets preventive maintenance, routine inspections or repairs be neglected. It enables the upkeep of a robust fleet across the country while keeping a track on compliance, productivity and costs.</p>\r\n\r\n<div class=\"smallYellowLine\">&nbsp;</div>\r\n</div>\r\n\r\n<div class=\"col-sm-6 col-lg-5 col-xl-6 col-12 col-md-6 userTwo\">\r\n<div class=\"h4_heading_boot\">Warehouse Management System (WMS)</div>\r\n\r\n<p>The WMS enables us to efficiently control, administer and manage the warehousing operations, right from the time of entry of shipments in the warehouse to the time they exit. It also offers us complete visibility pertaining to the location of inventory, at any time. It is integrable with your system.</p>\r\n\r\n<div class=\"smallYellowLine\">&nbsp;</div>\r\n</div>\r\n\r\n<div class=\"col-sm-6 col-lg-6 col-xl-6 col-12 col-md-6 userImgOne\"><img alt=\"Warehouse Management System (WMS)\" class=\"img-fluid\" src=\"/assets/themes/theme-1/images/wms.png\" /></div>\r\n\r\n<div class=\"col-sm-6 col-lg-6 col-xl-6 col-12 col-md-6 userImgOne\"><img alt=\"Transport Management System (TMS)\" class=\"img-fluid borderRadius5\" src=\"/assets/themes/theme-1/images/tms.png\" /></div>\r\n\r\n<div class=\"col-sm-6 col-lg-5 col-xl-6 col-12 col-md-6 userTwo\">\r\n<div class=\"h4_heading_boot\">Transport Management System (TMS)</div>\r\n\r\n<p>The Transport Management System (TMS) is critical to the successful functioning of our warehouses pan India and can easily be integrated with existing systems. Whether it&#39;s determining the right load or accurate in-transit inventory visibility, TMS ensures swift, predictable and effective delivery across the board.</p>\r\n\r\n<div class=\"smallYellowLine\">&nbsp;</div>\r\n</div>\r\n\r\n<div class=\"col-sm-6 col-lg-5 col-xl-6 col-12 col-md-6 userTwo\">\r\n<div class=\"h4_heading_boot\">Centralised Financial System</div>\r\n\r\n<p>An organisational asset, the centralised financial system tracks, manages and optimises the cumbersome billing and invoicing processes in a streamlined and systematic manner, ensuring accuracy and speed in operations.</p>\r\n\r\n<div class=\"smallYellowLine\">&nbsp;</div>\r\n</div>\r\n\r\n<div class=\"col-sm-6 col-lg-6 col-xl-6 col-12 col-md-6 userImgOne\"><img alt=\"Centralised Financial System\" class=\"img-fluid borderRadius5\" src=\"/assets/themes/theme-1/images/cfs.png\" /></div>\r\n</div>\r\n<!-- row --></div>\r\n<!-- container --></section>\r\n\r\n<section class=\"largeImgSection\">\r\n<div><img alt=\"Our Technology Infrastructure\" class=\"img-fluid\" src=\"/assets/themes/theme-1/images/techBanner.png\" /></div>\r\n</section>\r\n\r\n<section class=\"tchLandingSixBoxSec wow fadeInDown\">\r\n<div class=\"container\">\r\n<div class=\"row  justify-content-center\">\r\n<div class=\"col-sm-6 col-lg-6 col-xl-6 col-12 col-md-6 userImgOne\">\r\n<div class=\"colorBlueBox tchLandingSixBox\"><img alt=\"V-Track\" class=\"img-fluid techImgWidth\" src=\"/assets/themes/theme-1/images/V---trac.png\" /></div>\r\n</div>\r\n<!-- col -->\r\n\r\n<div class=\"col-sm-6 col-lg-6 col-xl-6 col-12 col-md-6 userOne\">\r\n<div class=\"h4_heading_boot\">V-Track</div>\r\n\r\n<p>This app allows you to generate indents, track and analyse consignments, from the moment they&#39;re loaded in a vehicle until they are delivered. It is the single point that offers you multiple functionalities like tracking the performance of your logistics operations, checking your order history, accessing your documentation, and much more.</p>\r\n\r\n<div class=\"smallYellowLine\">&nbsp;</div>\r\n</div>\r\n\r\n<div class=\"col-sm-6 col-lg-5 col-xl-6 col-12 col-md-6 userTwo\">\r\n<div class=\"h4_heading_boot\">V-Connect</div>\r\n\r\n<p>This app has been designed for internal use by our team to swiftly serve the vehicle demands placed by you. It connects us to our officially approved fleet and lets us earmark the available vehicles for spot indents.</p>\r\n\r\n<div class=\"smallYellowLine\">&nbsp;</div>\r\n</div>\r\n\r\n<div class=\"col-sm-6 col-lg-6 col-xl-6 col-12 col-md-6 userImgOne\">\r\n<div class=\"colorYellowBox tchLandingSixBox\"><img alt=\"V-Connect\" class=\"img-fluid techImgWidth\" src=\"/assets/themes/theme-1/images/v---connect.png\" /></div>\r\n</div>\r\n\r\n<div class=\"col-sm-6 col-lg-6 col-xl-6 col-12 col-md-6 userImgOne\">\r\n<div class=\"colorBlueBox tchLandingSixBox\"><img alt=\"V-Cafe\" class=\"img-fluid techImgWidth\" src=\"/assets/themes/theme-1/images/V---cafee.png\" /></div>\r\n</div>\r\n\r\n<div class=\"col-sm-6 col-lg-6 col-xl-6 col-12 col-md-6 userOne\">\r\n<div class=\"h4_heading_boot\">V-Cafe</div>\r\n\r\n<p>This is our internal HRMS portal. It&#39;s the one-stop digital destination for our team members to keep tabs on their personal information, get the latest company updates, partake in learning &amp; development activities and receive rewards &amp; recognition.</p>\r\n\r\n<div class=\"smallYellowLine\">&nbsp;</div>\r\n</div>\r\n\r\n<div class=\"col-sm-6 col-lg-5 col-xl-6 col-12 col-md-6 userTwo\">\r\n<div class=\"h4_heading_boot\">V-WMS</div>\r\n\r\n<p>The V-Warehouse Management System (V-WMS) enhances the efficiency of warehousing operations. It enables you to track your inventory throughout the warehousing cycle while planning, managing and controlling the same.</p>\r\n\r\n<div class=\"smallYellowLine\">&nbsp;</div>\r\n</div>\r\n\r\n<div class=\"col-sm-6 col-lg-6 col-xl-6 col-12 col-md-6 userImgOne\">\r\n<div class=\"colorYellowBox tchLandingSixBox\"><img alt=\"V-WMS\" class=\"img-fluid techImgWidth\" src=\"/assets/themes/theme-1/images/V---wms.png\" /></div>\r\n</div>\r\n\r\n<div class=\"col-sm-6 col-lg-6 col-xl-6 col-12 col-md-6 userImgOne\">\r\n<div class=\"colorBlueBox tchLandingSixBox\"><img alt=\"V-Manage\" class=\"img-fluid techImgWidth\" src=\"/assets/themes/theme-1/images/v---manage.png\" /></div>\r\n</div>\r\n\r\n<div class=\"col-sm-6 col-lg-6 col-xl-6 col-12 col-md-6 userOne\">\r\n<div class=\"h4_heading_boot\">V-Manage</div>\r\n\r\n<p>A progressive step towards digitisation of logistics, this app acts as a mobile workstation for the on-ground staff, enabling greater efficiency and swiftness.</p>\r\n\r\n<div class=\"smallYellowLine\">&nbsp;</div>\r\n</div>\r\n</div>\r\n<!-- row --></div>\r\n</section>\r\n\r\n<section class=\"BlueBgSliderSect wow fadeInDown\">\r\n<div class=\"container\">\r\n<div class=\"blueBnnerWrp\">\r\n<h2 class=\"h2_heading_seo text-left color_white\">Discover our Digitization Journey<br />\r\nand Roadmap</h2>\r\n\r\n<div class=\"sliderSect\">\r\n<div class=\"top--sider--nav\"><a class=\"button secondary url item-2008-2010 active\" href=\"#2008-2010\">2008-2010</a> <a class=\"button secondary url item-2012-2015\" href=\"#2012-2015\">2012-2015</a> <a class=\"button secondary url item-2016\" href=\"#2016\">2016</a> <a class=\"button secondary url item-2017-2019\" href=\"#2017-2019\">2017-2019</a> <a class=\"button secondary url item-2020\" href=\"#2020\">2020 <span>Year Of Digitization</span></a></div>\r\n\r\n<div class=\"owl-carousel owl-theme owl-NewbannerSlider\">\r\n<div class=\"item\" data-hash=\"2008-2010\">\r\n<div id=\"myTabContent\">\r\n<ul class=\"starArrowUlSlider\">\r\n	<li>Deployed transport management application</li>\r\n	<li>100% GPS enablement in our fleet</li>\r\n</ul>\r\n</div>\r\n<!-- myTabContent --></div>\r\n\r\n<div class=\"item\" data-hash=\"2012-2015\">\r\n<div id=\"myTabContent\">\r\n<ul class=\"starArrowUlSlider\">\r\n	<li>Digitization of fleet maintenance</li>\r\n	<li>Real-time tracking of vehicle status</li>\r\n	<li>100% polygon geofencing of the customer sites, fleet hubs, toll plazas, driver homes, state borders and routes</li>\r\n</ul>\r\n</div>\r\n<!-- myTabContent --></div>\r\n\r\n<div class=\"item\" data-hash=\"2016\">\r\n<div id=\"myTabContent\">\r\n<ul class=\"starArrowUlSlider\">\r\n	<li>Deployment of mobility platform</li>\r\n	<li>100% capture of real-time field operations data</li>\r\n	<li>Enablement of cashless driver payments</li>\r\n</ul>\r\n</div>\r\n<!-- myTabContent --></div>\r\n\r\n<div class=\"item\" data-hash=\"2017-2019\">\r\n<div id=\"myTabContent\">\r\n<ul class=\"starArrowUlSlider\">\r\n	<li>Centralization of control tower operations pan India</li>\r\n	<li>App based training and assessment of driver behaviour</li>\r\n</ul>\r\n</div>\r\n<!-- myTabContent --></div>\r\n<!-- item -->\r\n\r\n<div class=\"item\" data-hash=\"2020\">\r\n<div id=\"myTabContent\">\r\n<ul class=\"starArrowUlSlider\">\r\n	<li>Digitization of Multi User Facilities (MUFs) and enablement of WMS</li>\r\n	<li>Implementation of e-billing/e-invoicing</li>\r\n	<li>Implementation of digital LR during COVID-19 pandemic</li>\r\n</ul>\r\n</div>\r\n<!-- myTabContent --></div>\r\n<!-- item --></div>\r\n<!-- owl-carousel owl-theme owl-NewbannerSlider--></div>\r\n<!-- sliderSect --></div>\r\n</div>\r\n<!--  container --></section>', NULL, NULL, 'Warehouse Management System (WMS), Transport Management System (TMS), V-Track, V-Connect, V-Cafe, V-WMS', NULL, 'Leveraging technology to simplify your supply chain dynamics wth our warehouse management system (WMS), transport management system (TMS), V-Track, V-Connect, V-Cafe, V-WMS', 1, 0, '2020-09-04 12:34:31', '2021-02-13 07:00:43'),
(27, 24, 'Learning & Development', 'learning-development', 'Learning & Development', 'LEARNING & DEVELOPMENT', 'Be inspired to grow <br /> without limits', 'pages.careers', NULL, '230221050001-L&D R128.jpeg', '<section class=\"commLeftSect L_D__mainSec wow fadeInDown\">\r\n<div class=\"container\">\r\n<h1>Nurturing your potential, today &amp; always</h1>\r\n\r\n<p>Our people drive us forward. Their energy, passion and willingness to deliver excellence inspire us to be more and do more for them as an organisation every day. That&#39;s why we have carefully charted paths for our employees to grow in any role that they choose to pursue with us. These are coupled with extensive training &amp; development modules, across all levels in the company. While the modules identified for each role are different, a few key areas that we lay equal emphasis on for all, include:</p>\r\n</div>\r\n</section>\r\n\r\n<section class=\"ldTowBoxSection L_D__TowBoxSect wow fadeInDown\">\r\n<div class=\"container\">\r\n<div class=\"row  justify-content-center\">\r\n<div class=\"col-sm-6 col-md-6 col-12 col-lg-6 col-xl-6\">\r\n<div class=\"L__D__img\"><img alt=\"Understanding Brand Varuna\" class=\"img-fluid\" src=\"/assets/themes/theme-1/images/UnderstandingUnderstanding.png\" /></div>\r\n\r\n<div class=\"head_text\">Understanding Brand Varuna</div>\r\n\r\n<p>Getting to know our ethos, what we believe in &amp; what we strive to be</p>\r\n\r\n<div class=\"smallYellowLine\">&nbsp;</div>\r\n</div>\r\n\r\n<div class=\"col-sm-6 col-md-6 col-12 col-lg-6 col-xl-6\">\r\n<div class=\"L__D__img\"><img alt=\"Practising effective communication\" class=\"img-fluid\" src=\"/assets/themes/theme-1/images/Practising.png\" style=\"width: 31%;\" /></div>\r\n\r\n<div class=\"head_text\">Practising effective communication</div>\r\n\r\n<p>Extensive guidance on how to master the art of communication</p>\r\n\r\n<div class=\"smallYellowLine\">&nbsp;</div>\r\n</div>\r\n\r\n<div class=\"col-sm-6 col-md-6 col-12 col-lg-6 col-xl-6\">\r\n<div class=\"L__D__img\"><img alt=\"Improving gradually yet steadily\" class=\"img-fluid\" src=\"/assets/themes/theme-1/images/Improving-gradually.png\" style=\"width: 24%;\" /></div>\r\n\r\n<div class=\"head_text\">Improving gradually yet steadily</div>\r\n\r\n<p>Understanding Kaizen &amp; practising it every day to enhance productivity</p>\r\n\r\n<div class=\"smallYellowLine\">&nbsp;</div>\r\n</div>\r\n\r\n<div class=\"col-sm-6 col-md-6 col-12 col-lg-6 col-xl-6\">\r\n<div class=\"L__D__img\"><img alt=\"Prioritising technology in your day-to-day\" class=\"img-fluid\" src=\"/assets/themes/theme-1/images/Prioritising.png\" /></div>\r\n\r\n<div class=\"head_text\">Prioritising technology in your day-to-day</div>\r\n\r\n<p>Embracing technology &amp; leveraging it to get better at what you do</p>\r\n\r\n<div class=\"smallYellowLine\">&nbsp;</div>\r\n</div>\r\n</div>\r\n<!-- row --></div>\r\n<!-- container --></section>\r\n\r\n<section class=\"leadershipSection  wow fadeInDown\">\r\n<div class=\"container\">\r\n<div class=\"L__D__secionNews\">\r\n<div class=\"L__D__heading\">Specialised training for every role</div>\r\n\r\n<p>Our thoughtfully designed learning programmes help our team members acquire the knowledge to do their jobs perfectly while delivering on-point customer experience and learning the right skills to make great strides in their career.</p>\r\n</div>\r\n\r\n<div class=\"row  justify-content-center\">\r\n<div class=\"col-sm-6 col-lg-6 col-xl-6 col-12 col-md-6 userImgOne\"><img alt=\"\" src=\"https://varuna.net/storage/ck/230221045453-Management Team G164.jpeg\" style=\"width: 590px; height: 400px;\" /></div>\r\n\r\n<div class=\"col-sm-6 col-lg-6 col-xl-6 col-12 col-md-6 userOne\">\r\n<div class=\"landingHeading_employee_stories\">Management Team</div>\r\n\r\n<p>Our management team undergoes specialised training sessions on Project Management &amp; Implementation, SOPs &amp; Automation, Auditing, and other managerial tasks.</p>\r\n\r\n<div class=\"smallYellowLine\">&nbsp;</div>\r\n</div>\r\n\r\n<div class=\"col-sm-6 col-lg-5 col-xl-6 col-12 col-md-6 userTwo\">\r\n<div class=\"landingHeading_employee_stories\">Executives &amp; On-ground<br />\r\nOperations team</div>\r\n\r\n<p>Our executives &amp; on-ground operations team benefit from the training modules focusing on SOPs, online applications, effective team collaboration, and more.</p>\r\n\r\n<div class=\"smallYellowLine\">&nbsp;</div>\r\n</div>\r\n\r\n<div class=\"col-sm-6 col-lg-6 col-xl-6 col-12 col-md-6 userImgOne\"><img alt=\"Operations team\" class=\"img-fluid\" src=\"/assets/themes/theme-1/images/ldtraining2.png\" /></div>\r\n\r\n<div class=\"col-sm-6 col-lg-6 col-xl-6 col-12 col-md-6 userImgOne\"><img alt=\"Fleet Staff\" class=\"img-fluid\" src=\"/assets/themes/theme-1/images/ldtraining3.png\" /></div>\r\n\r\n<div class=\"col-sm-6 col-lg-6 col-xl-6 col-12 col-md-6 userOne\">\r\n<div class=\"landingHeading_employee_stories\">Fleet Staff</div>\r\n\r\n<p>The members of our fleet team receive extensive training on Weight Survey of vehicles, Battery Maintenance, Data Feeding, Slack Adjuster, and other key measures.</p>\r\n\r\n<div class=\"smallYellowLine\">&nbsp;</div>\r\n</div>\r\n\r\n<div class=\"col-sm-6 col-lg-6 col-xl-6 col-12 col-md-6 userOne\">\r\n<div class=\"landingHeading_employee_stories\">Driving Team</div>\r\n\r\n<p>Our driving team undergoes a focused training module outlining season and/or time specific precautions, on-route information &amp; safety points, and other crucial areas of learning.</p>\r\n\r\n<div class=\"smallYellowLine\">&nbsp;</div>\r\n</div>\r\n\r\n<div class=\"col-sm-6 col-lg-6 col-xl-6 col-12 col-md-6 userImgOne\"><img alt=\"Driving Team\" class=\"img-fluid\" src=\"/assets/themes/theme-1/images/ldtraining4.png\" /></div>\r\n</div>\r\n</div>\r\n</section>\r\n\r\n<section class=\"ldthreeImages groth__main__box wow fadeInDown\" style=\"border-bottom: 3px solid;\">\r\n<div class=\"container\">\r\n<div class=\"row  justify-content-left\">\r\n<div class=\"col-sm-12 col-md-12 col-12 col-lg-12 col-xl-12\">\r\n<div class=\"careerGrowthDiv\">\r\n<h4 class=\"h4careerGrowth\">Career Growth at Varuna Group</h4>\r\n<span class=\"fontSize22 fontSize20\">Kickstart your journey of becoming a master in logistics with us.</span></div>\r\n</div>\r\n\r\n<div class=\"col-12 col-sm-4 col-lg-4 col-xl-4 col-md-4\">\r\n<div class=\"career__growth career__growth1\">\r\n<div class=\"yellow__growth yellow__1\"><span class=\"tooltip__growth\"><a href=\"\">E1</a> <a class=\"tooltiptext___growth\"> Un Skilled/ House Keeping (Housekeeping/ Trainee-Loading &amp; Unloading) </a> </span></div>\r\n\r\n<div class=\"yellow__growth yellow__2\"><span class=\"tooltip__growth\"><a href=\"\">E2</a> <a class=\"tooltiptext___growth\"> Associate (Assistant/ Loading Clerk/ Operator/ Picker) </a> </span></div>\r\n\r\n<div class=\"yellow__growth yellow__3\"><span class=\"tooltip__growth\"><a href=\"\">E3</a> <a class=\"tooltiptext___growth\"> Sr. Associate (Loading Supervisor/ Senior Assistant/Supervisor) </a> </span></div>\r\n\r\n<div class=\"yellow__growth yellow__4\"><span class=\"tooltip__growth\"><a href=\"\">E4</a> <a class=\"tooltiptext___growth\"> Assistant Executive (Management Trainee/ Data Entry Operator/ Sr. Loading Supervisor) </a> </span></div>\r\n\r\n<div class=\"yellow__growth yellow__5\"><span class=\"tooltip__growth\"><a href=\"\">E5</a> <a class=\"tooltiptext___growth\"> Executive </a> </span></div>\r\n\r\n<div class=\"yellow__growth yellow__6\"><span class=\"tooltip__growth\"><a href=\"\">E6</a> <a class=\"tooltiptext___growth\"> Senior Executive </a> </span></div>\r\n\r\n<div class=\"content__over\">EXECUTIVE<br />\r\nLEVEL</div>\r\n</div>\r\n<!-- career__growth --></div>\r\n<!-- col -->\r\n\r\n<div class=\"col-12 col-sm-4 col-lg-4 col-xl-4 col-md-4\">\r\n<div class=\"career__growth career__growth2\">\r\n<div class=\"ornge__growth ornge__1\"><span class=\"tooltip__growth\"><a href=\"\">M1</a><a class=\"tooltiptext___growth\"> Assistant Manager </a> </span></div>\r\n\r\n<div class=\"ornge__growth ornge__2\"><span class=\"tooltip__growth\"><a href=\"\">M2</a><a class=\"tooltiptext___growth\"> Deputy Manager </a> </span></div>\r\n\r\n<div class=\"ornge__growth ornge__3\"><span class=\"tooltip__growth\"><a href=\"\">M3</a><a class=\"tooltiptext___growth\"> Manager </a> </span></div>\r\n\r\n<div class=\"ornge__growth ornge__4\"><span class=\"tooltip__growth\"><a href=\"\">M4</a><a class=\"tooltiptext___growth\"> Senior Manager </a> </span></div>\r\n\r\n<div class=\"ornge__growth ornge__5\"><span class=\"tooltip__growth\"><a href=\"\">M5</a><a class=\"tooltiptext___growth\"> Assistant General Manager </a> </span></div>\r\n\r\n<div class=\"ornge__growth ornge__6\"><span class=\"tooltip__growth\"><a href=\"\">M6</a><a class=\"tooltiptext___growth\"> Deputy General Manager </a> </span></div>\r\n\r\n<div class=\"content__over\">MID<br />\r\nLEVEL</div>\r\n</div>\r\n<!-- career__growth --></div>\r\n<!-- col -->\r\n\r\n<div class=\"col-12 col-sm-4 col-lg-4 col-xl-4 col-md-4\">\r\n<div class=\"career__growth career__growth3\">\r\n<div class=\"blue__growth blue__1\"><span class=\"tooltip__growth\"><a href=\"\">S1</a><a class=\"tooltiptext___growth\"> General Manager </a> </span></div>\r\n\r\n<div class=\"blue__growth blue__2\"><span class=\"tooltip__growth\"><a href=\"\">S2</a><a class=\"tooltiptext___growth\"> Senior General Manager </a> </span></div>\r\n\r\n<div class=\"blue__growth blue__3\"><span class=\"tooltip__growth\"><a href=\"\">S3</a><a class=\"tooltiptext___growth\"> Assistant Vice Present </a> </span></div>\r\n\r\n<div class=\"blue__growth blue__4\"><span class=\"tooltip__growth\"><a href=\"\">S4</a><a class=\"tooltiptext___growth\"> Vice President/ Associate Director </a> </span></div>\r\n\r\n<div class=\"blue__growth blue__5\"><span class=\"tooltip__growth\"><a href=\"\">S5</a><a class=\"tooltiptext___growth\"> Senior Vice President </a> </span></div>\r\n\r\n<div class=\"blue__growth blue__6\"><span class=\"tooltip__growth\"><a href=\"\">S6</a><a class=\"tooltiptext___growth\"> President/ Executive Director/ Director/ BU-Managing Director </a> </span></div>\r\n\r\n<div class=\"content__over\">SENIOR<br />\r\nLEVEL</div>\r\n</div>\r\n<!-- career__growth --></div>\r\n<!-- col --></div>\r\n<!-- row --></div>\r\n<!-- container --></section>\r\n\r\n<section class=\"wow fadeInDown mmobileld__growth__chatt\">\r\n<div class=\"container\">\r\n<div class=\"ld__m_mainImg\"><img alt=\"Career Growth at Varuna Group\" src=\"/assets/themes/theme-1/images/topstaticHeading.png\" /></div>\r\n\r\n<div class=\"owl-carousel ld__growth__chart\">\r\n<div class=\"item\">\r\n<div class=\"ld__m__all\"><img alt=\"Executive Level\" src=\"/assets/themes/theme-1/images/yellowld__chart.png\" /></div>\r\n</div>\r\n<!-- item -->\r\n\r\n<div class=\"item\">\r\n<div class=\"ld__m__all\"><img alt=\"Mid Level\" src=\"/assets/themes/theme-1/images/orageldchart.jpg\" /></div>\r\n</div>\r\n<!-- item -->\r\n\r\n<div class=\"item\">\r\n<div class=\"ld__m__all\"><img alt=\"Senior Level\" src=\"/assets/themes/theme-1/images/blueldchart.jpg\" /></div>\r\n</div>\r\n<!-- item --></div>\r\n<!-- mobileld__growth__chatt --></div>\r\n<!-- container --></section>\r\n\r\n<section class=\"knowMoreAbout wow fadeInDown\">\r\n<div class=\"container\">\r\n<div class=\"row justify-content-center\">\r\n<div class=\"col-sm-8 col-lg-8 col-xl-8 col-md-8 col-12\">\r\n<p>Wish to work with one of India&#39;s top logistics services providers and experience what unlimited growth feels like?</p>\r\n</div>\r\n\r\n<div class=\"col-sm-4 col-lg-4 col-xl-4 col-md-4 col-12\">\r\n<div class=\"knowMore\"><a href=\"/careers\">Apply Now</a></div>\r\n</div>\r\n</div>\r\n</div>\r\n</section>', NULL, NULL, 'Learning & Development | Varuna Group', NULL, 'Our people drive us forward. Their energy, passion and willingness to deliver excellence inspire us to be more and do more for them as an organisation every day.', 1, 0, '2020-09-05 11:46:13', '2021-02-23 05:00:02');
INSERT INTO `cms_pages` (`id`, `parent_id`, `name`, `slug`, `title`, `heading`, `brief`, `template`, `image`, `banner_image`, `content`, `old_content`, `default_content`, `meta_title`, `meta_keyword`, `meta_description`, `status`, `featured`, `created_at`, `updated_at`) VALUES
(28, 0, NULL, 'privacy-policy', 'Privacy Policy', NULL, NULL, NULL, NULL, NULL, '<div class=\"teams_pages\">\r\n<div class=\"pont_head\">Your privacy is critically important to us.</div>\r\n\r\n<p>It is Varuna Group&rsquo; policy to respect your privacy regarding any information we may collect while operating our website. This Privacy Policy applies to ---------&nbsp;We respect your privacy and are committed to protecting personally identifiable information you may provide us through the Website. We have adopted this privacy policy to explain what information may be collected on our Website, how we use this information, and under what circumstances we may disclose the information to third parties. This Privacy Policy applies only to information we collect through the Website and does not apply to our collection of information from other sources.</p>\r\n\r\n<p>We only retain collected information for as long as necessary to provide you with your requested service. What data we store, we&rsquo;ll protect within commercially acceptable means to prevent loss and theft, as well as unauthorized access, disclosure, copying, use or modification.</p>\r\n\r\n<p>We only retain collected information for as long as necessary to provide you with your requested service. What data we store, we&rsquo;ll protect within commercially acceptable means to prevent loss and theft, as well as unauthorized access, disclosure, copying, use or modification.</p>\r\n\r\n<p>This Privacy Policy applies only to our online activities and is valid for visitors to our website with regards to the information that they shared and/or collect in varuna.net. This policy is not applicable to any information collected offline or via channels other than this website.</p>\r\n\r\n<p>If you have additional questions or require more information about our Privacy Policy, do not hesitate to contact us.</p>\r\n\r\n<div class=\"pont_head\">1. Consent</div>\r\n1.1. &nbsp;By using our website, you hereby consent to our Privacy Policy and agree to its terms.\r\n\r\n<p>&nbsp;</p>\r\n\r\n<div class=\"pont_head\">2. Information we collect</div>\r\n2.1. The personal information that you are asked to provide, and the reasons why you are asked to provide it, will be made clear to you at the point we ask you to provide your personal information.<br />\r\n2.2. If you contact us directly, we may receive additional information about you such as your name, email address, phone number, the contents of the message and/or attachments you may send us, and any other information you may choose to provide.<br />\r\n2.3. When you register for an Account, we may ask for your contact information, including items such as name, company name, address, email address, and telephone number.\r\n<p>&nbsp;</p>\r\n\r\n<div class=\"pont_head\">3. How we use your information</div>\r\n3.1. We use the information we collect in various ways, including to:<br />\r\n3.1.1. Provide, operate, and maintain our website.<br />\r\n3.1.2. Improve, personalize, and expand our website.<br />\r\n3.1.3. Understand and analyse how you use our website.<br />\r\n3.1.4. Develop new products, services, features, and functionality.<br />\r\n3.1.5. Communicate with you, either directly or through one of our partners, including for customer service, to provide you with updates and other information relating to the website, and for marketing and promotional purposes.<br />\r\n3.1.6. Send you emails.<br />\r\n3.1.7. Find and prevent fraud.\r\n<p>&nbsp;</p>\r\n\r\n<div class=\"pont_head\">4. Website Visitors</div>\r\n4.1. Like most website operators, Varuna Group collects non-personally-identifying information of the sort that web browsers and servers typically make available, such as the browser type, language preference, referring site, and the date and time of each visitor request. Varuna Group&rsquo; purpose in collecting non-personally identifying information is to better understand how Varuna Group&rsquo; visitors use its website. From time to time, Varuna Group may release non-personally-identifying information in the aggregate, e.g., by publishing a report on trends in the usage of its website.<br />\r\n4.2. Varuna Group also collects potentially personally-identifying information like Internet Protocol (IP) addresses for logged in users and for users leaving comments on https://varuna.net/ blog posts. Varuna Group only discloses logged in user and commenter IP addresses under the same circumstances that it uses and discloses personally-identifying information as described below.\r\n<p>&nbsp;</p>\r\n\r\n<div class=\"pont_head\">5. Log Files</div>\r\n5.1. We follow a standard procedure of using log files. These files log visitors when they visit websites. All hosting companies do this and a part of hosting services&rsquo; analytics. The information collected by log files include internet protocol (IP) addresses, browser type, Internet Service Provider (ISP), date and time stamp, referring/exit pages, and possibly the number of clicks. These are not linked to any information that is personally identifiable. The purpose of the information is for analysing trends, administering the site, tracking users&rsquo; movement on the website, and gathering demographic information.\r\n\r\n<p>&nbsp;</p>\r\n\r\n<div class=\"pont_head\">6. Cookies and Web Beacons</div>\r\n6.1. Like any other website, varuna.net uses &lsquo;cookies&rsquo;. These cookies are used to store information including visitors&rsquo; preferences, and the pages on the website that the visitor accessed or visited. The information is used to optimize the users&rsquo; experience by customizing our web page content based on visitors&rsquo; browser type and/or other information.<br />\r\n6.2. A cookie is a string of information that a website stores on a visitor&rsquo;s computer, and that the visitor&rsquo;s browser provides to the website each time the visitor returns. Varuna Group uses cookies to help Varuna Group identify and track visitors, their usage of https://varuna.net/, and their website access preferences. Varuna Group visitors who do not wish to have cookies placed on their computers should set their browsers to refuse cookies before using Varuna Group&rsquo; websites, with the drawback that certain features of Varuna Group&rsquo; websites may not function properly without the aid of cookies.<br />\r\n6.3. By continuing to navigate our website without changing your cookie settings, you hereby acknowledge and agree to Varuna Group&rsquo; use of cookies.\r\n<p>&nbsp;</p>\r\n\r\n<div class=\"pont_head\">7. Advertising Partners Privacy Policies</div>\r\n7.1. You may consult this list to find the Privacy Policy for each of the advertising partners of varuna.net.<br />\r\n7.2. Third-party ad servers or ad networks uses technologies like cookies, JavaScript, or Web Beacons that are used in their respective advertisements and links that appear on varuna.net, which are sent directly to users&rsquo; browser. They automatically receive your IP address when this occurs. These technologies are used to measure the effectiveness of their advertising campaigns and/or to personalize the advertising content that you see on websites that you visit.<br />\r\n7.3. Note that varuna.net has no access to or control over these cookies that are used by third-party advertisers.\r\n<p>&nbsp;</p>\r\n\r\n<div class=\"pont_head\">8. Third Party Privacy Policies</div>\r\n8.1. Privacy Policy does not apply to other advertisers or websites. Thus, we are advising you to consult the respective Privacy Policies of these third-party ad servers for more detailed information. It may include their practices and instructions about how to opt-out of certain options.<br />\r\n8.2. You can choose to disable cookies through your individual browser options. To know more detailed information about cookie management with specific web browsers, it can be found at the browsers&rsquo; respective websites.\r\n<p>&nbsp;</p>\r\n\r\n<div class=\"pont_head\">9. Security</div>\r\n9.1. The security of your Personal Information is important to us, but remember that no method of transmission over the Internet, or method of electronic storage is 100% secure. While we strive to use commercially acceptable means to protect your Personal Information, we cannot guarantee its absolute security.\r\n\r\n<p>&nbsp;</p>\r\n\r\n<div class=\"pont_head\">10. Aggregated Statistics</div>\r\n10.1. Varuna Group may collect statistics about the behaviour of visitors to its website. Varuna Group may display this information publicly or provide it to others. However, Varuna Group does not disclose your personally-identifying information.\r\n\r\n<p>&nbsp;</p>\r\n\r\n<div class=\"pont_head\">11. E-commerce</div>\r\n11.1. Those who engage in transactions with Varuna Group &ndash; by purchasing Varuna Group&rsquo; services or products, are asked to provide additional information, including as necessary the personal and financial information required to process those transactions. In each case, Varuna Group collects such information only insofar as is necessary or appropriate to fulfil the purpose of the visitor&rsquo;s interaction with Varuna Group. Varuna Group does not disclose personally-identifying information other than as described below. And visitors can always refuse to supply personally-identifying information, with the caveat that it may prevent them from engaging in certain website-related activities.\r\n\r\n<p>&nbsp;</p>\r\n\r\n<div class=\"pont_head\">12. Children&rsquo;s Information</div>\r\n12.1. Another part of our priority is adding protection for children while using the internet. We encourage parents and guardians to observe, participate in, and/or monitor and guide their online activity.<br />\r\n12.2. We do not knowingly collect any Personal Identifiable Information from children under the age of 18. If you think that your child provided this kind of information on our website, we strongly encourage you to contact us immediately and we will do our best efforts to promptly remove such information from our records.\r\n<p>&nbsp;</p>\r\n\r\n<div class=\"pont_head\">13. Privacy Policy Changes</div>\r\n13.1. Although most changes are likely to be minor, Varuna Group may change its Privacy Policy from time to time, and in Varuna Group&rsquo; sole discretion. Varuna Group encourages visitors to frequently check this page for any changes to its Privacy Policy. Your continued use of this site after any change in this Privacy Policy will constitute your acceptance of such change.\r\n\r\n<p>&nbsp;</p>\r\n\r\n<div class=\"pont_head\">14. Compliance with Laws and Regulations, and Commitment to this Policy</div>\r\n14.1. We fully abide by all the laws and regulations concerning personal information protection under the Laws of India. Moreover, we are committed to compliance with the provisions of this Privacy Policy.\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>We are located at:</p>\r\n\r\n<p><strong>Varuna Group<br />\r\nPlot no 572, Sector 37, Gurugram, Haryana<br />\r\nHaryana, India<br />\r\n0124-2373214</strong><br />\r\n&nbsp;</p>\r\n</div>', NULL, NULL, 'Privacy Policy | Varuna Group', NULL, 'It is Varuna Group’ policy to respect your privacy regarding any information we may collect while operating our website.', 1, 0, '2020-10-28 05:24:11', '2020-12-29 05:18:08'),
(29, 0, NULL, 'term-of-use', 'Term of Use', 'Term of Use', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Term of Use | Varuna Group', NULL, 'Read the terms and conditions of Varuna Group.', 1, 0, '2020-10-28 05:24:28', '2020-12-29 05:21:24'),
(30, 0, NULL, 'thank-you', 'Thank You', 'Thank You', 'Thank you for connecting.', 'pages.thankyou', NULL, '041220104914-thankyou.jpg', NULL, NULL, NULL, 'Thank You', NULL, 'Thank You', 1, 0, '2020-11-13 08:24:33', '2020-12-04 10:49:48'),
(32, 11, 'Industry Omnichannel', 'industry-omnichannel', 'Fruits', 'Omni Channel Retail', '<p class=\"whiteText\">Increasing business  <span class=\"bannerNewLine\"></span> reach through efficient   <span class=\"bannerNewLine\"></span> supply chain </p>', 'pages.food-beverage', NULL, '240920014124-omnichannel-banner.jpg', '<section class=\"common_padding wow fadeInDown pb_mob0\">\r\n<div class=\"container\">\r\n<div class=\"row\">\r\n<div class=\"col-sm-3 col-md-6 col-lg-3 col-xl-3 col-12\">\r\n<div class=\"whreHouseValYellowBox\">\r\n<div class=\"yellowBoxdiv\">99%</div>\r\n\r\n<p class=\"yellowBoxp\">Placement</p>\r\n</div>\r\n</div>\r\n\r\n<div class=\"col-sm-3 col-md-6 col-lg-3 col-xl-3 col-12\">\r\n<div class=\"whreHouseValBlueBox\">\r\n<div class=\"yellowBoxdiv\">100%</div>\r\n\r\n<p class=\"yellowBoxp\">in-transit visibility</p>\r\n</div>\r\n</div>\r\n\r\n<div class=\"col-sm-3 col-md-6 col-lg-3 col-xl-3 col-12\">\r\n<div class=\"whreHouseValYellowBox\">\r\n<div class=\"yellowBoxdiv\">50%</div>\r\n\r\n<p class=\"yellowBoxp\">TAT saving</p>\r\n</div>\r\n</div>\r\n\r\n<div class=\"col-sm-3 col-md-6 col-lg-3 col-xl-3 col-12\">\r\n<div class=\"whreHouseValBlueBox\">\r\n<div class=\"yellowBoxdiv\">JIT</div>\r\n\r\n<p class=\"yellowBoxp\">deliveries</p>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n<!-- container--></section>\r\n\r\n<section class=\"electricaSectOne wow fadeInDown\">\r\n<div class=\"container\">\r\n<h1>OVERVIEW</h1>\r\n\r\n<p>With technological advancements, most businesses are shifting from single or multi channel retail to omni channel retail. The omni channel retail system gives a seamless experience to customers and business owners alike. The millennial generation is dependent on the internet for the majority of their purchases and to ease that experience the data is centralized. This enables the businesses to sell the same product from a brick-and-mortar store, their website and even through a third-party vendor. But to successfully implement the omni channel strategy it is crucial to have a strong and integrated logistics system.</p>\r\n</div>\r\n</section>\r\n\r\n<section class=\"electricaSectTwo wow fadeInDown\">\r\n<div class=\"container\">\r\n<div class=\"row justify-content-center\">\r\n<div class=\"col-sm-9 col-lg-9 col-xl-9 col-md-9 col-12\">\r\n<div class=\"electricablueBox\">\r\n<div class=\"electlImgSec\"><img alt=\"Our Approach\" src=\"/assets/themes/theme-1/images/omnichannel-img1.jpg\" /></div>\r\n\r\n<div class=\"electlContSec\">\r\n<h4>Our Approach</h4>\r\n\r\n<p>Varuna Group has partnered with numerous omni channel retailers to provide them with a seamless logistics experience for their online and offline customers. The flexibility and transparency of transportation and warehousing facilities provided by Varuna fine tune the operations, providing optimal support.</p>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</section>\r\n\r\n<section class=\"common_padding ques_block_wrap pb_mob0\">\r\n<div class=\"container\">\r\n<div class=\"ques_block\">\r\n<div class=\"ques\">Flexible Warehousing Facility</div>\r\n\r\n<p>Omni channel businesses require flexibility in terms of size, services and location to meet the customer demand in the shortest possible time. To meet all these requirements the MUFs of Varuna Group have supported the businesses in many ways.</p>\r\n\r\n<div class=\"ques\">In-transit Visibility of Consignment</div>\r\n\r\n<p>Varuna Group being technologically inclined provides the customers with complete visibility of real-time updates on the consignment throughout its journey. This optimises the operations of the customer allowing them to meet the customer demands.</p>\r\n\r\n<div class=\"ques\">Predictable Order Fulfillment Process</div>\r\n\r\n<p>To meet the promises of same-day or next-day delivery and return, it is important for the logistics company to be rightly placed. With the perfect placement of warehouses of Varuna Group, we have been able to keep up with the promises made to the customer.</p>\r\n</div>\r\n</div>\r\n</section>', NULL, NULL, 'Omni Channel Logistics and Warehousing Solution Provider in India', NULL, 'Varuna Group is the best omni channel logistics and warehousing solution provider company in India. We offer professional Omni Channel logistics & warehousing services in India.', 1, 0, '2020-09-04 12:21:09', '2021-08-13 13:13:10'),
(33, 11, 'Industry Omnichannel', 'industry-omnichannel', 'vegetables', 'Omni Channel Retail', '<p class=\"whiteText\">Increasing business  <span class=\"bannerNewLine\"></span> reach through efficient   <span class=\"bannerNewLine\"></span> supply chain </p>', 'pages.food-beverage', NULL, '240920014124-omnichannel-banner.jpg', '<section class=\"common_padding wow fadeInDown pb_mob0\">\r\n<div class=\"container\">\r\n<div class=\"row\">\r\n<div class=\"col-sm-3 col-md-6 col-lg-3 col-xl-3 col-12\">\r\n<div class=\"whreHouseValYellowBox\">\r\n<div class=\"yellowBoxdiv\">99%</div>\r\n\r\n<p class=\"yellowBoxp\">Placement</p>\r\n</div>\r\n</div>\r\n\r\n<div class=\"col-sm-3 col-md-6 col-lg-3 col-xl-3 col-12\">\r\n<div class=\"whreHouseValBlueBox\">\r\n<div class=\"yellowBoxdiv\">100%</div>\r\n\r\n<p class=\"yellowBoxp\">in-transit visibility</p>\r\n</div>\r\n</div>\r\n\r\n<div class=\"col-sm-3 col-md-6 col-lg-3 col-xl-3 col-12\">\r\n<div class=\"whreHouseValYellowBox\">\r\n<div class=\"yellowBoxdiv\">50%</div>\r\n\r\n<p class=\"yellowBoxp\">TAT saving</p>\r\n</div>\r\n</div>\r\n\r\n<div class=\"col-sm-3 col-md-6 col-lg-3 col-xl-3 col-12\">\r\n<div class=\"whreHouseValBlueBox\">\r\n<div class=\"yellowBoxdiv\">JIT</div>\r\n\r\n<p class=\"yellowBoxp\">deliveries</p>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n<!-- container--></section>\r\n\r\n<section class=\"electricaSectOne wow fadeInDown\">\r\n<div class=\"container\">\r\n<h1>OVERVIEW</h1>\r\n\r\n<p>With technological advancements, most businesses are shifting from single or multi channel retail to omni channel retail. The omni channel retail system gives a seamless experience to customers and business owners alike. The millennial generation is dependent on the internet for the majority of their purchases and to ease that experience the data is centralized. This enables the businesses to sell the same product from a brick-and-mortar store, their website and even through a third-party vendor. But to successfully implement the omni channel strategy it is crucial to have a strong and integrated logistics system.</p>\r\n</div>\r\n</section>\r\n\r\n<section class=\"electricaSectTwo wow fadeInDown\">\r\n<div class=\"container\">\r\n<div class=\"row justify-content-center\">\r\n<div class=\"col-sm-9 col-lg-9 col-xl-9 col-md-9 col-12\">\r\n<div class=\"electricablueBox\">\r\n<div class=\"electlImgSec\"><img alt=\"Our Approach\" src=\"/assets/themes/theme-1/images/omnichannel-img1.jpg\" /></div>\r\n\r\n<div class=\"electlContSec\">\r\n<h4>Our Approach</h4>\r\n\r\n<p>Varuna Group has partnered with numerous omni channel retailers to provide them with a seamless logistics experience for their online and offline customers. The flexibility and transparency of transportation and warehousing facilities provided by Varuna fine tune the operations, providing optimal support.</p>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</section>\r\n\r\n<section class=\"common_padding ques_block_wrap pb_mob0\">\r\n<div class=\"container\">\r\n<div class=\"ques_block\">\r\n<div class=\"ques\">Flexible Warehousing Facility</div>\r\n\r\n<p>Omni channel businesses require flexibility in terms of size, services and location to meet the customer demand in the shortest possible time. To meet all these requirements the MUFs of Varuna Group have supported the businesses in many ways.</p>\r\n\r\n<div class=\"ques\">In-transit Visibility of Consignment</div>\r\n\r\n<p>Varuna Group being technologically inclined provides the customers with complete visibility of real-time updates on the consignment throughout its journey. This optimises the operations of the customer allowing them to meet the customer demands.</p>\r\n\r\n<div class=\"ques\">Predictable Order Fulfillment Process</div>\r\n\r\n<p>To meet the promises of same-day or next-day delivery and return, it is important for the logistics company to be rightly placed. With the perfect placement of warehouses of Varuna Group, we have been able to keep up with the promises made to the customer.</p>\r\n</div>\r\n</div>\r\n</section>', NULL, NULL, 'Omni Channel Logistics and Warehousing Solution Provider in India', NULL, 'Varuna Group is the best omni channel logistics and warehousing solution provider company in India. We offer professional Omni Channel logistics & warehousing services in India.', 1, 0, '2020-09-04 12:21:09', '2021-07-27 13:17:48'),
(34, 11, 'Industry Omnichannel', 'industry-omnichannel', 'Rice', 'Omni Channel Retail', '<p class=\"whiteText\">Increasing business  <span class=\"bannerNewLine\"></span> reach through efficient   <span class=\"bannerNewLine\"></span> supply chain </p>', 'pages.food-beverage', NULL, '240920014124-omnichannel-banner.jpg', '<section class=\"common_padding wow fadeInDown pb_mob0\">\r\n<div class=\"container\">\r\n<div class=\"row\">\r\n<div class=\"col-sm-3 col-md-6 col-lg-3 col-xl-3 col-12\">\r\n<div class=\"whreHouseValYellowBox\">\r\n<div class=\"yellowBoxdiv\">99%</div>\r\n\r\n<p class=\"yellowBoxp\">Placement</p>\r\n</div>\r\n</div>\r\n\r\n<div class=\"col-sm-3 col-md-6 col-lg-3 col-xl-3 col-12\">\r\n<div class=\"whreHouseValBlueBox\">\r\n<div class=\"yellowBoxdiv\">100%</div>\r\n\r\n<p class=\"yellowBoxp\">in-transit visibility</p>\r\n</div>\r\n</div>\r\n\r\n<div class=\"col-sm-3 col-md-6 col-lg-3 col-xl-3 col-12\">\r\n<div class=\"whreHouseValYellowBox\">\r\n<div class=\"yellowBoxdiv\">50%</div>\r\n\r\n<p class=\"yellowBoxp\">TAT saving</p>\r\n</div>\r\n</div>\r\n\r\n<div class=\"col-sm-3 col-md-6 col-lg-3 col-xl-3 col-12\">\r\n<div class=\"whreHouseValBlueBox\">\r\n<div class=\"yellowBoxdiv\">JIT</div>\r\n\r\n<p class=\"yellowBoxp\">deliveries</p>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n<!-- container--></section>\r\n\r\n<section class=\"electricaSectOne wow fadeInDown\">\r\n<div class=\"container\">\r\n<h1>OVERVIEW</h1>\r\n\r\n<p>With technological advancements, most businesses are shifting from single or multi channel retail to omni channel retail. The omni channel retail system gives a seamless experience to customers and business owners alike. The millennial generation is dependent on the internet for the majority of their purchases and to ease that experience the data is centralized. This enables the businesses to sell the same product from a brick-and-mortar store, their website and even through a third-party vendor. But to successfully implement the omni channel strategy it is crucial to have a strong and integrated logistics system.</p>\r\n</div>\r\n</section>\r\n\r\n<section class=\"electricaSectTwo wow fadeInDown\">\r\n<div class=\"container\">\r\n<div class=\"row justify-content-center\">\r\n<div class=\"col-sm-9 col-lg-9 col-xl-9 col-md-9 col-12\">\r\n<div class=\"electricablueBox\">\r\n<div class=\"electlImgSec\"><img alt=\"Our Approach\" src=\"/assets/themes/theme-1/images/omnichannel-img1.jpg\" /></div>\r\n\r\n<div class=\"electlContSec\">\r\n<h4>Our Approach</h4>\r\n\r\n<p>Varuna Group has partnered with numerous omni channel retailers to provide them with a seamless logistics experience for their online and offline customers. The flexibility and transparency of transportation and warehousing facilities provided by Varuna fine tune the operations, providing optimal support.</p>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</section>\r\n\r\n<section class=\"common_padding ques_block_wrap pb_mob0\">\r\n<div class=\"container\">\r\n<div class=\"ques_block\">\r\n<div class=\"ques\">Flexible Warehousing Facility</div>\r\n\r\n<p>Omni channel businesses require flexibility in terms of size, services and location to meet the customer demand in the shortest possible time. To meet all these requirements the MUFs of Varuna Group have supported the businesses in many ways.</p>\r\n\r\n<div class=\"ques\">In-transit Visibility of Consignment</div>\r\n\r\n<p>Varuna Group being technologically inclined provides the customers with complete visibility of real-time updates on the consignment throughout its journey. This optimises the operations of the customer allowing them to meet the customer demands.</p>\r\n\r\n<div class=\"ques\">Predictable Order Fulfillment Process</div>\r\n\r\n<p>To meet the promises of same-day or next-day delivery and return, it is important for the logistics company to be rightly placed. With the perfect placement of warehouses of Varuna Group, we have been able to keep up with the promises made to the customer.</p>\r\n</div>\r\n</div>\r\n</section>', NULL, NULL, 'Omni Channel Logistics and Warehousing Solution Provider in India', NULL, 'Varuna Group is the best omni channel logistics and warehousing solution provider company in India. We offer professional Omni Channel logistics & warehousing services in India.', 1, 0, '2020-09-04 12:21:09', '2021-07-27 13:27:45');

-- --------------------------------------------------------

--
-- Table structure for table `colors_master`
--

DROP TABLE IF EXISTS `colors_master`;
CREATE TABLE IF NOT EXISTS `colors_master` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `parent_id` int(11) DEFAULT '0',
  `name` varchar(100) DEFAULT NULL,
  `slug` varchar(100) DEFAULT NULL,
  `code` varchar(50) DEFAULT NULL,
  `status` tinyint(4) DEFAULT '1',
  `created_at` datetime DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `colors_master`
--

INSERT INTO `colors_master` (`id`, `parent_id`, `name`, `slug`, `code`, `status`, `created_at`, `updated_at`) VALUES
(2, 0, 'White', 'white', '#FFFFFF', 1, '2019-01-08 15:34:10', '2019-06-28 05:01:38'),
(3, 0, 'Beige', 'beige', '#f5f5dc', 1, '2019-01-08 15:34:10', '2019-06-18 05:38:22'),
(6, 0, 'Blue Gray', 'blue-gray', '#6699cc', 1, '2019-01-08 15:35:09', '2019-06-18 05:38:25'),
(7, 0, 'Black', 'black', '#2a2a2a', 1, '2019-06-19 06:58:32', '2019-06-19 06:59:52'),
(8, 0, 'Red', 'red', '#d60c2c', 1, '2019-06-19 07:02:21', '2019-06-19 07:02:21'),
(9, 0, 'Maroon', 'maroon', '#22100e', 1, '2019-06-19 07:03:54', '2019-06-19 07:03:54'),
(11, 0, 'BLUE', 'blue', '#1f1b3d', 1, '2019-06-19 07:05:35', '2019-06-19 07:05:35'),
(12, 0, 'Grey', 'grey', '#4a4947', 1, '2019-06-19 07:07:52', '2019-06-19 07:07:52'),
(13, 0, 'Coral Pink', 'coral-pink', '#fd836c', 1, '2019-06-19 07:08:31', '2019-06-19 07:08:31'),
(14, 0, 'Yellow', 'yellow', '#fef687', 1, '2019-06-19 07:12:24', '2019-06-19 09:59:14'),
(15, 0, 'Grey Melange', 'grey-melange', '#c6c1c5', 1, '2019-06-19 07:27:55', '2019-06-19 07:27:55'),
(16, 0, 'Fuchsia Pink', 'fuchsia-pink', '#fd3870', 1, '2019-06-19 07:28:43', '2019-06-19 07:28:43'),
(17, 0, 'Charcoal Grey', 'charcoal-grey', '#696876', 1, '2019-06-19 07:31:57', '2019-06-19 07:31:57'),
(18, 0, 'Orange', 'orange', '#d95026', 1, '2019-06-19 07:33:34', '2019-06-19 07:33:34'),
(19, 0, 'Astral Navy', 'astral-navy', '#282938', 1, '2019-06-19 07:39:53', '2019-06-19 07:39:53'),
(20, 0, 'Navy Blue', 'navy-blue', '#353243', 1, '2019-06-19 07:43:01', '2019-06-19 07:43:01'),
(21, 0, 'Burgundy', 'burgundy', '#7c3e4c', 1, '2019-06-19 07:44:07', '2019-06-19 07:44:07'),
(22, 0, 'Khaki', 'khaki', '#655546', 1, '2019-06-19 10:42:14', '2019-06-19 10:43:12'),
(23, 0, 'Salmon Peach', 'salmon-peach', '#f6b3a2', 1, '2019-06-19 10:51:40', '2019-06-19 10:51:40'),
(24, 0, 'Amparo Blue', 'amparo-blue', '#57619e', 1, '2019-06-19 11:37:48', '2019-06-19 11:37:48'),
(25, 0, 'Fuchsia-Golden', 'fuchsia-golden', '#de2960', 1, '2019-07-04 12:19:23', '2019-07-04 12:19:23');

-- --------------------------------------------------------

--
-- Table structure for table `common_images`
--

DROP TABLE IF EXISTS `common_images`;
CREATE TABLE IF NOT EXISTS `common_images` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `tbl_id` int(11) DEFAULT NULL,
  `tbl_name` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `link` varchar(255) DEFAULT NULL,
  `sort_order` int(11) DEFAULT '0',
  `created_at` datetime DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `common_images`
--

INSERT INTO `common_images` (`id`, `tbl_id`, `tbl_name`, `name`, `title`, `link`, `sort_order`, `created_at`, `updated_at`) VALUES
(1, 0, 'gallery', '240720052714-award-3.png', NULL, NULL, 0, '2020-07-24 05:27:15', '2020-07-24 05:27:15'),
(2, 0, 'gallery', '240720052717-award-2.png', NULL, NULL, 0, '2020-07-24 05:27:18', '2020-07-24 05:27:18'),
(3, 0, 'gallery', '240720052718-gal2.jpg', NULL, NULL, 0, '2020-07-24 05:27:18', '2020-07-24 05:27:18'),
(4, 0, 'gallery', '240720052721-gal1.jpg', NULL, NULL, 0, '2020-07-24 05:27:21', '2020-07-24 05:27:21'),
(5, 0, 'gallery', '240720052722-award-1.png', NULL, NULL, 0, '2020-07-24 05:27:22', '2020-07-24 05:27:22'),
(6, 0, 'gallery', '240720052723-gal5.jpg', NULL, NULL, 0, '2020-07-24 05:27:23', '2020-07-24 05:27:23'),
(7, 0, 'gallery', '240720052725-gal4.jpg', NULL, NULL, 0, '2020-07-24 05:27:25', '2020-07-24 05:27:25'),
(8, 0, 'gallery', '240720052726-gal3.jpg', NULL, NULL, 0, '2020-07-24 05:27:26', '2020-07-24 05:27:26'),
(9, 0, 'gallery', '240720052726-gal1.png', NULL, NULL, 0, '2020-07-24 05:27:26', '2020-07-24 05:27:26'),
(10, 0, 'gallery', '240720052727-gal6.jpg', NULL, NULL, 0, '2020-07-24 05:27:27', '2020-07-24 05:27:27');

-- --------------------------------------------------------

--
-- Table structure for table `common_videos`
--

DROP TABLE IF EXISTS `common_videos`;
CREATE TABLE IF NOT EXISTS `common_videos` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL,
  `tbl_id` int(11) DEFAULT NULL,
  `tbl_name` varchar(255) DEFAULT NULL,
  `link` text NOT NULL,
  `sort_order` int(11) DEFAULT NULL,
  `featured` tinyint(4) NOT NULL DEFAULT '0',
  `status` tinyint(4) NOT NULL DEFAULT '1',
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `countries`
--

DROP TABLE IF EXISTS `countries`;
CREATE TABLE IF NOT EXISTS `countries` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `iso` char(2) NOT NULL,
  `name` varchar(80) NOT NULL,
  `nicename` varchar(80) NOT NULL,
  `iso3` char(3) DEFAULT NULL,
  `numcode` smallint(6) DEFAULT NULL,
  `phonecode` int(5) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=240 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `countries`
--

INSERT INTO `countries` (`id`, `iso`, `name`, `nicename`, `iso3`, `numcode`, `phonecode`, `status`, `created_at`, `updated_at`) VALUES
(1, 'AF', 'AFGHANISTAN', 'Afghanistan', 'AFG', 4, 93, 1, '2019-04-25 11:32:40', '2019-06-29 10:06:39'),
(2, 'AL', 'ALBANIA', 'Albania', 'ALB', 8, 355, 1, '2019-04-25 11:32:40', '2019-04-25 11:32:40'),
(3, 'DZ', 'ALGERIA', 'Algeria', 'DZA', 12, 213, 1, '2019-04-25 11:32:40', '2019-04-25 11:32:40'),
(4, 'AS', 'AMERICAN SAMOA', 'American Samoa', 'ASM', 16, 1684, 1, '2019-04-25 11:32:40', '2019-04-25 11:32:40'),
(5, 'AD', 'ANDORRA', 'Andorra', 'AND', 20, 376, 1, '2019-04-25 11:32:40', '2019-04-25 11:32:40'),
(6, 'AO', 'ANGOLA', 'Angola', 'AGO', 24, 244, 1, '2019-04-25 11:32:40', '2019-04-25 11:32:40'),
(7, 'AI', 'ANGUILLA', 'Anguilla', 'AIA', 660, 1264, 1, '2019-04-25 11:32:40', '2019-04-25 11:32:40'),
(8, 'AQ', 'ANTARCTICA', 'Antarctica', NULL, NULL, 0, 1, '2019-04-25 11:32:40', '2019-04-25 11:32:40'),
(9, 'AG', 'ANTIGUA AND BARBUDA', 'Antigua and Barbuda', 'ATG', 28, 1268, 1, '2019-04-25 11:32:40', '2019-04-25 11:32:40'),
(10, 'AR', 'ARGENTINA', 'Argentina', 'ARG', 32, 54, 1, '2019-04-25 11:32:40', '2019-04-25 11:32:40'),
(11, 'AM', 'ARMENIA', 'Armenia', 'ARM', 51, 374, 1, '2019-04-25 11:32:40', '2019-04-25 11:32:40'),
(12, 'AW', 'ARUBA', 'Aruba', 'ABW', 533, 297, 1, '2019-04-25 11:32:40', '2019-04-25 11:32:40'),
(13, 'AU', 'AUSTRALIA', 'Australia', 'AUS', 36, 61, 1, '2019-04-25 11:32:40', '2019-04-25 11:32:40'),
(14, 'AT', 'AUSTRIA', 'Austria', 'AUT', 40, 43, 1, '2019-04-25 11:32:40', '2019-04-25 11:32:40'),
(15, 'AZ', 'AZERBAIJAN', 'Azerbaijan', 'AZE', 31, 994, 1, '2019-04-25 11:32:40', '2019-04-25 11:32:40'),
(16, 'BS', 'BAHAMAS', 'Bahamas', 'BHS', 44, 1242, 1, '2019-04-25 11:32:40', '2019-04-25 11:32:40'),
(17, 'BH', 'BAHRAIN', 'Bahrain', 'BHR', 48, 973, 1, '2019-04-25 11:32:40', '2019-04-25 11:32:40'),
(18, 'BD', 'BANGLADESH', 'Bangladesh', 'BGD', 50, 880, 1, '2019-04-25 11:32:40', '2019-04-25 11:32:40'),
(19, 'BB', 'BARBADOS', 'Barbados', 'BRB', 52, 1246, 1, '2019-04-25 11:32:40', '2019-04-25 11:32:40'),
(20, 'BY', 'BELARUS', 'Belarus', 'BLR', 112, 375, 1, '2019-04-25 11:32:40', '2019-04-25 11:32:40'),
(21, 'BE', 'BELGIUM', 'Belgium', 'BEL', 56, 32, 1, '2019-04-25 11:32:40', '2019-04-25 11:32:40'),
(22, 'BZ', 'BELIZE', 'Belize', 'BLZ', 84, 501, 1, '2019-04-25 11:32:40', '2019-04-25 11:32:40'),
(23, 'BJ', 'BENIN', 'Benin', 'BEN', 204, 229, 1, '2019-04-25 11:32:40', '2019-04-25 11:32:40'),
(24, 'BM', 'BERMUDA', 'Bermuda', 'BMU', 60, 1441, 1, '2019-04-25 11:32:40', '2019-04-25 11:32:40'),
(25, 'BT', 'BHUTAN', 'Bhutan', 'BTN', 64, 975, 1, '2019-04-25 11:32:40', '2019-04-25 11:32:40'),
(26, 'BO', 'BOLIVIA', 'Bolivia', 'BOL', 68, 591, 1, '2019-04-25 11:32:40', '2019-04-25 11:32:40'),
(27, 'BA', 'BOSNIA AND HERZEGOVINA', 'Bosnia and Herzegovina', 'BIH', 70, 387, 1, '2019-04-25 11:32:40', '2019-04-25 11:32:40'),
(28, 'BW', 'BOTSWANA', 'Botswana', 'BWA', 72, 267, 1, '2019-04-25 11:32:40', '2019-04-25 11:32:40'),
(29, 'BV', 'BOUVET ISLAND', 'Bouvet Island', NULL, NULL, 0, 1, '2019-04-25 11:32:40', '2019-04-25 11:32:40'),
(30, 'BR', 'BRAZIL', 'Brazil', 'BRA', 76, 55, 1, '2019-04-25 11:32:40', '2019-04-25 11:32:40'),
(31, 'IO', 'BRITISH INDIAN OCEAN TERRITORY', 'British Indian Ocean Territory', NULL, NULL, 246, 1, '2019-04-25 11:32:40', '2019-04-25 11:32:40'),
(32, 'BN', 'BRUNEI DARUSSALAM', 'Brunei Darussalam', 'BRN', 96, 673, 1, '2019-04-25 11:32:40', '2019-04-25 11:32:40'),
(33, 'BG', 'BULGARIA', 'Bulgaria', 'BGR', 100, 359, 1, '2019-04-25 11:32:40', '2019-04-25 11:32:40'),
(34, 'BF', 'BURKINA FASO', 'Burkina Faso', 'BFA', 854, 226, 1, '2019-04-25 11:32:40', '2019-04-25 11:32:40'),
(35, 'BI', 'BURUNDI', 'Burundi', 'BDI', 108, 257, 1, '2019-04-25 11:32:40', '2019-04-25 11:32:40'),
(36, 'KH', 'CAMBODIA', 'Cambodia', 'KHM', 116, 855, 1, '2019-04-25 11:32:40', '2019-04-25 11:32:40'),
(37, 'CM', 'CAMEROON', 'Cameroon', 'CMR', 120, 237, 1, '2019-04-25 11:32:40', '2019-04-25 11:32:40'),
(38, 'CA', 'CANADA', 'Canada', 'CAN', 124, 1, 1, '2019-04-25 11:32:40', '2019-04-25 11:32:40'),
(39, 'CV', 'CAPE VERDE', 'Cape Verde', 'CPV', 132, 238, 1, '2019-04-25 11:32:40', '2019-04-25 11:32:40'),
(40, 'KY', 'CAYMAN ISLANDS', 'Cayman Islands', 'CYM', 136, 1345, 1, '2019-04-25 11:32:40', '2019-04-25 11:32:40'),
(41, 'CF', 'CENTRAL AFRICAN REPUBLIC', 'Central African Republic', 'CAF', 140, 236, 1, '2019-04-25 11:32:40', '2019-04-25 11:32:40'),
(42, 'TD', 'CHAD', 'Chad', 'TCD', 148, 235, 1, '2019-04-25 11:32:40', '2019-04-25 11:32:40'),
(43, 'CL', 'CHILE', 'Chile', 'CHL', 152, 56, 1, '2019-04-25 11:32:40', '2019-04-25 11:32:40'),
(44, 'CN', 'CHINA', 'China', 'CHN', 156, 86, 1, '2019-04-25 11:32:40', '2019-04-25 11:32:40'),
(45, 'CX', 'CHRISTMAS ISLAND', 'Christmas Island', NULL, NULL, 61, 1, '2019-04-25 11:32:40', '2019-04-25 11:32:40'),
(46, 'CC', 'COCOS (KEELING) ISLANDS', 'Cocos (Keeling) Islands', NULL, NULL, 672, 1, '2019-04-25 11:32:40', '2019-04-25 11:32:40'),
(47, 'CO', 'COLOMBIA', 'Colombia', 'COL', 170, 57, 1, '2019-04-25 11:32:40', '2019-04-25 11:32:40'),
(48, 'KM', 'COMOROS', 'Comoros', 'COM', 174, 269, 1, '2019-04-25 11:32:40', '2019-04-25 11:32:40'),
(49, 'CG', 'CONGO', 'Congo', 'COG', 178, 242, 1, '2019-04-25 11:32:40', '2019-04-25 11:32:40'),
(50, 'CD', 'CONGO, THE DEMOCRATIC REPUBLIC OF THE', 'Congo, the Democratic Republic of the', 'COD', 180, 242, 1, '2019-04-25 11:32:40', '2019-04-25 11:32:40'),
(51, 'CK', 'COOK ISLANDS', 'Cook Islands', 'COK', 184, 682, 1, '2019-04-25 11:32:40', '2019-04-25 11:32:40'),
(52, 'CR', 'COSTA RICA', 'Costa Rica', 'CRI', 188, 506, 1, '2019-04-25 11:32:40', '2019-04-25 11:32:40'),
(53, 'CI', 'COTE D\'IVOIRE', 'Cote D\'Ivoire', 'CIV', 384, 225, 1, '2019-04-25 11:32:40', '2019-04-25 11:32:40'),
(54, 'HR', 'CROATIA', 'Croatia', 'HRV', 191, 385, 1, '2019-04-25 11:32:40', '2019-04-25 11:32:40'),
(55, 'CU', 'CUBA', 'Cuba', 'CUB', 192, 53, 1, '2019-04-25 11:32:40', '2019-04-25 11:32:40'),
(56, 'CY', 'CYPRUS', 'Cyprus', 'CYP', 196, 357, 1, '2019-04-25 11:32:40', '2019-04-25 11:32:40'),
(57, 'CZ', 'CZECH REPUBLIC', 'Czech Republic', 'CZE', 203, 420, 1, '2019-04-25 11:32:40', '2019-04-25 11:32:40'),
(58, 'DK', 'DENMARK', 'Denmark', 'DNK', 208, 45, 1, '2019-04-25 11:32:40', '2019-04-25 11:32:40'),
(59, 'DJ', 'DJIBOUTI', 'Djibouti', 'DJI', 262, 253, 1, '2019-04-25 11:32:40', '2019-04-25 11:32:40'),
(60, 'DM', 'DOMINICA', 'Dominica', 'DMA', 212, 1767, 1, '2019-04-25 11:32:40', '2019-04-25 11:32:40'),
(61, 'DO', 'DOMINICAN REPUBLIC', 'Dominican Republic', 'DOM', 214, 1809, 1, '2019-04-25 11:32:40', '2019-04-25 11:32:40'),
(62, 'EC', 'ECUADOR', 'Ecuador', 'ECU', 218, 593, 1, '2019-04-25 11:32:40', '2019-04-25 11:32:40'),
(63, 'EG', 'EGYPT', 'Egypt', 'EGY', 818, 20, 1, '2019-04-25 11:32:40', '2019-04-25 11:32:40'),
(64, 'SV', 'EL SALVADOR', 'El Salvador', 'SLV', 222, 503, 1, '2019-04-25 11:32:40', '2019-04-25 11:32:40'),
(65, 'GQ', 'EQUATORIAL GUINEA', 'Equatorial Guinea', 'GNQ', 226, 240, 1, '2019-04-25 11:32:40', '2019-04-25 11:32:40'),
(66, 'ER', 'ERITREA', 'Eritrea', 'ERI', 232, 291, 1, '2019-04-25 11:32:40', '2019-04-25 11:32:40'),
(67, 'EE', 'ESTONIA', 'Estonia', 'EST', 233, 372, 1, '2019-04-25 11:32:40', '2019-04-25 11:32:40'),
(68, 'ET', 'ETHIOPIA', 'Ethiopia', 'ETH', 231, 251, 1, '2019-04-25 11:32:40', '2019-04-25 11:32:40'),
(69, 'FK', 'FALKLAND ISLANDS (MALVINAS)', 'Falkland Islands (Malvinas)', 'FLK', 238, 500, 1, '2019-04-25 11:32:40', '2019-04-25 11:32:40'),
(70, 'FO', 'FAROE ISLANDS', 'Faroe Islands', 'FRO', 234, 298, 1, '2019-04-25 11:32:40', '2019-04-25 11:32:40'),
(71, 'FJ', 'FIJI', 'Fiji', 'FJI', 242, 679, 1, '2019-04-25 11:32:40', '2019-04-25 11:32:40'),
(72, 'FI', 'FINLAND', 'Finland', 'FIN', 246, 358, 1, '2019-04-25 11:32:40', '2019-04-25 11:32:40'),
(73, 'FR', 'FRANCE', 'France', 'FRA', 250, 33, 1, '2019-04-25 11:32:40', '2019-04-25 11:32:40'),
(74, 'GF', 'FRENCH GUIANA', 'French Guiana', 'GUF', 254, 594, 1, '2019-04-25 11:32:40', '2019-04-25 11:32:40'),
(75, 'PF', 'FRENCH POLYNESIA', 'French Polynesia', 'PYF', 258, 689, 1, '2019-04-25 11:32:40', '2019-04-25 11:32:40'),
(76, 'TF', 'FRENCH SOUTHERN TERRITORIES', 'French Southern Territories', NULL, NULL, 0, 1, '2019-04-25 11:32:40', '2019-04-25 11:32:40'),
(77, 'GA', 'GABON', 'Gabon', 'GAB', 266, 241, 1, '2019-04-25 11:32:40', '2019-04-25 11:32:40'),
(78, 'GM', 'GAMBIA', 'Gambia', 'GMB', 270, 220, 1, '2019-04-25 11:32:40', '2019-04-25 11:32:40'),
(79, 'GE', 'GEORGIA', 'Georgia', 'GEO', 268, 995, 1, '2019-04-25 11:32:40', '2019-04-25 11:32:40'),
(80, 'DE', 'GERMANY', 'Germany', 'DEU', 276, 49, 1, '2019-04-25 11:32:40', '2019-04-25 11:32:40'),
(81, 'GH', 'GHANA', 'Ghana', 'GHA', 288, 233, 1, '2019-04-25 11:32:40', '2019-04-25 11:32:40'),
(82, 'GI', 'GIBRALTAR', 'Gibraltar', 'GIB', 292, 350, 1, '2019-04-25 11:32:40', '2019-04-25 11:32:40'),
(83, 'GR', 'GREECE', 'Greece', 'GRC', 300, 30, 1, '2019-04-25 11:32:40', '2019-04-25 11:32:40'),
(84, 'GL', 'GREENLAND', 'Greenland', 'GRL', 304, 299, 1, '2019-04-25 11:32:40', '2019-04-25 11:32:40'),
(85, 'GD', 'GRENADA', 'Grenada', 'GRD', 308, 1473, 1, '2019-04-25 11:32:40', '2019-04-25 11:32:40'),
(86, 'GP', 'GUADELOUPE', 'Guadeloupe', 'GLP', 312, 590, 1, '2019-04-25 11:32:40', '2019-04-25 11:32:40'),
(87, 'GU', 'GUAM', 'Guam', 'GUM', 316, 1671, 1, '2019-04-25 11:32:40', '2019-04-25 11:32:40'),
(88, 'GT', 'GUATEMALA', 'Guatemala', 'GTM', 320, 502, 1, '2019-04-25 11:32:40', '2019-04-25 11:32:40'),
(89, 'GN', 'GUINEA', 'Guinea', 'GIN', 324, 224, 1, '2019-04-25 11:32:40', '2019-04-25 11:32:40'),
(90, 'GW', 'GUINEA-BISSAU', 'Guinea-Bissau', 'GNB', 624, 245, 1, '2019-04-25 11:32:40', '2019-04-25 11:32:40'),
(91, 'GY', 'GUYANA', 'Guyana', 'GUY', 328, 592, 1, '2019-04-25 11:32:40', '2019-04-25 11:32:40'),
(92, 'HT', 'HAITI', 'Haiti', 'HTI', 332, 509, 1, '2019-04-25 11:32:40', '2019-04-25 11:32:40'),
(93, 'HM', 'HEARD ISLAND AND MCDONALD ISLANDS', 'Heard Island and Mcdonald Islands', NULL, NULL, 0, 1, '2019-04-25 11:32:40', '2019-04-25 11:32:40'),
(94, 'VA', 'HOLY SEE (VATICAN CITY STATE)', 'Holy See (Vatican City State)', 'VAT', 336, 39, 1, '2019-04-25 11:32:40', '2019-04-25 11:32:40'),
(95, 'HN', 'HONDURAS', 'Honduras', 'HND', 340, 504, 1, '2019-04-25 11:32:40', '2019-04-25 11:32:40'),
(96, 'HK', 'HONG KONG', 'Hong Kong', 'HKG', 344, 852, 1, '2019-04-25 11:32:40', '2019-04-25 11:32:40'),
(97, 'HU', 'HUNGARY', 'Hungary', 'HUN', 348, 36, 1, '2019-04-25 11:32:40', '2019-04-25 11:32:40'),
(98, 'IS', 'ICELAND', 'Iceland', 'ISL', 352, 354, 1, '2019-04-25 11:32:40', '2019-04-25 11:32:40'),
(99, 'IN', 'INDIA', 'India', 'IND', 356, 91, 1, '2019-04-25 11:32:40', '2019-04-25 11:32:40'),
(100, 'ID', 'INDONESIA', 'Indonesia', 'IDN', 360, 62, 1, '2019-04-25 11:32:40', '2019-04-25 11:32:40'),
(101, 'IR', 'IRAN, ISLAMIC REPUBLIC OF', 'Iran, Islamic Republic of', 'IRN', 364, 98, 1, '2019-04-25 11:32:40', '2019-04-25 11:32:40'),
(102, 'IQ', 'IRAQ', 'Iraq', 'IRQ', 368, 964, 1, '2019-04-25 11:32:40', '2019-04-25 11:32:40'),
(103, 'IE', 'IRELAND', 'Ireland', 'IRL', 372, 353, 1, '2019-04-25 11:32:40', '2019-04-25 11:32:40'),
(104, 'IL', 'ISRAEL', 'Israel', 'ISR', 376, 972, 1, '2019-04-25 11:32:40', '2019-04-25 11:32:40'),
(105, 'IT', 'ITALY', 'Italy', 'ITA', 380, 39, 1, '2019-04-25 11:32:40', '2019-04-25 11:32:40'),
(106, 'JM', 'JAMAICA', 'Jamaica', 'JAM', 388, 1876, 1, '2019-04-25 11:32:40', '2019-04-25 11:32:40'),
(107, 'JP', 'JAPAN', 'Japan', 'JPN', 392, 81, 1, '2019-04-25 11:32:40', '2019-04-25 11:32:40'),
(108, 'JO', 'JORDAN', 'Jordan', 'JOR', 400, 962, 1, '2019-04-25 11:32:40', '2019-04-25 11:32:40'),
(109, 'KZ', 'KAZAKHSTAN', 'Kazakhstan', 'KAZ', 398, 7, 1, '2019-04-25 11:32:40', '2019-04-25 11:32:40'),
(110, 'KE', 'KENYA', 'Kenya', 'KEN', 404, 254, 1, '2019-04-25 11:32:40', '2019-04-25 11:32:40'),
(111, 'KI', 'KIRIBATI', 'Kiribati', 'KIR', 296, 686, 1, '2019-04-25 11:32:40', '2019-04-25 11:32:40'),
(112, 'KP', 'KOREA, DEMOCRATIC PEOPLE\'S REPUBLIC OF', 'Korea, Democratic People\'s Republic of', 'PRK', 408, 850, 1, '2019-04-25 11:32:40', '2019-04-25 11:32:40'),
(113, 'KR', 'KOREA, REPUBLIC OF', 'Korea, Republic of', 'KOR', 410, 82, 1, '2019-04-25 11:32:40', '2019-04-25 11:32:40'),
(114, 'KW', 'KUWAIT', 'Kuwait', 'KWT', 414, 965, 1, '2019-04-25 11:32:40', '2019-04-25 11:32:40'),
(115, 'KG', 'KYRGYZSTAN', 'Kyrgyzstan', 'KGZ', 417, 996, 1, '2019-04-25 11:32:40', '2019-04-25 11:32:40'),
(116, 'LA', 'LAO PEOPLE\'S DEMOCRATIC REPUBLIC', 'Lao People\'s Democratic Republic', 'LAO', 418, 856, 1, '2019-04-25 11:32:40', '2019-04-25 11:32:40'),
(117, 'LV', 'LATVIA', 'Latvia', 'LVA', 428, 371, 1, '2019-04-25 11:32:40', '2019-04-25 11:32:40'),
(118, 'LB', 'LEBANON', 'Lebanon', 'LBN', 422, 961, 1, '2019-04-25 11:32:40', '2019-04-25 11:32:40'),
(119, 'LS', 'LESOTHO', 'Lesotho', 'LSO', 426, 266, 1, '2019-04-25 11:32:40', '2019-04-25 11:32:40'),
(120, 'LR', 'LIBERIA', 'Liberia', 'LBR', 430, 231, 1, '2019-04-25 11:32:40', '2019-04-25 11:32:40'),
(121, 'LY', 'LIBYAN ARAB JAMAHIRIYA', 'Libyan Arab Jamahiriya', 'LBY', 434, 218, 1, '2019-04-25 11:32:40', '2019-04-25 11:32:40'),
(122, 'LI', 'LIECHTENSTEIN', 'Liechtenstein', 'LIE', 438, 423, 1, '2019-04-25 11:32:40', '2019-04-25 11:32:40'),
(123, 'LT', 'LITHUANIA', 'Lithuania', 'LTU', 440, 370, 1, '2019-04-25 11:32:40', '2019-04-25 11:32:40'),
(124, 'LU', 'LUXEMBOURG', 'Luxembourg', 'LUX', 442, 352, 1, '2019-04-25 11:32:40', '2019-04-25 11:32:40'),
(125, 'MO', 'MACAO', 'Macao', 'MAC', 446, 853, 1, '2019-04-25 11:32:40', '2019-04-25 11:32:40'),
(126, 'MK', 'MACEDONIA, THE FORMER YUGOSLAV REPUBLIC OF', 'Macedonia, the Former Yugoslav Republic of', 'MKD', 807, 389, 1, '2019-04-25 11:32:40', '2019-04-25 11:32:40'),
(127, 'MG', 'MADAGASCAR', 'Madagascar', 'MDG', 450, 261, 1, '2019-04-25 11:32:40', '2019-04-25 11:32:40'),
(128, 'MW', 'MALAWI', 'Malawi', 'MWI', 454, 265, 1, '2019-04-25 11:32:40', '2019-04-25 11:32:40'),
(129, 'MY', 'MALAYSIA', 'Malaysia', 'MYS', 458, 60, 1, '2019-04-25 11:32:40', '2019-04-25 11:32:40'),
(130, 'MV', 'MALDIVES', 'Maldives', 'MDV', 462, 960, 1, '2019-04-25 11:32:40', '2019-04-25 11:32:40'),
(131, 'ML', 'MALI', 'Mali', 'MLI', 466, 223, 1, '2019-04-25 11:32:40', '2019-04-25 11:32:40'),
(132, 'MT', 'MALTA', 'Malta', 'MLT', 470, 356, 1, '2019-04-25 11:32:40', '2019-04-25 11:32:40'),
(133, 'MH', 'MARSHALL ISLANDS', 'Marshall Islands', 'MHL', 584, 692, 1, '2019-04-25 11:32:40', '2019-04-25 11:32:40'),
(134, 'MQ', 'MARTINIQUE', 'Martinique', 'MTQ', 474, 596, 1, '2019-04-25 11:32:40', '2019-04-25 11:32:40'),
(135, 'MR', 'MAURITANIA', 'Mauritania', 'MRT', 478, 222, 1, '2019-04-25 11:32:40', '2019-04-25 11:32:40'),
(136, 'MU', 'MAURITIUS', 'Mauritius', 'MUS', 480, 230, 1, '2019-04-25 11:32:40', '2019-04-25 11:32:40'),
(137, 'YT', 'MAYOTTE', 'Mayotte', NULL, NULL, 269, 1, '2019-04-25 11:32:40', '2019-04-25 11:32:40'),
(138, 'MX', 'MEXICO', 'Mexico', 'MEX', 484, 52, 1, '2019-04-25 11:32:40', '2019-04-25 11:32:40'),
(139, 'FM', 'MICRONESIA, FEDERATED STATES OF', 'Micronesia, Federated States of', 'FSM', 583, 691, 1, '2019-04-25 11:32:40', '2019-04-25 11:32:40'),
(140, 'MD', 'MOLDOVA, REPUBLIC OF', 'Moldova, Republic of', 'MDA', 498, 373, 1, '2019-04-25 11:32:40', '2019-04-25 11:32:40'),
(141, 'MC', 'MONACO', 'Monaco', 'MCO', 492, 377, 1, '2019-04-25 11:32:40', '2019-04-25 11:32:40'),
(142, 'MN', 'MONGOLIA', 'Mongolia', 'MNG', 496, 976, 1, '2019-04-25 11:32:40', '2019-04-25 11:32:40'),
(143, 'MS', 'MONTSERRAT', 'Montserrat', 'MSR', 500, 1664, 1, '2019-04-25 11:32:40', '2019-04-25 11:32:40'),
(144, 'MA', 'MOROCCO', 'Morocco', 'MAR', 504, 212, 1, '2019-04-25 11:32:40', '2019-04-25 11:32:40'),
(145, 'MZ', 'MOZAMBIQUE', 'Mozambique', 'MOZ', 508, 258, 1, '2019-04-25 11:32:40', '2019-04-25 11:32:40'),
(146, 'MM', 'MYANMAR', 'Myanmar', 'MMR', 104, 95, 1, '2019-04-25 11:32:40', '2019-04-25 11:32:40'),
(147, 'NA', 'NAMIBIA', 'Namibia', 'NAM', 516, 264, 1, '2019-04-25 11:32:40', '2019-04-25 11:32:40'),
(148, 'NR', 'NAURU', 'Nauru', 'NRU', 520, 674, 1, '2019-04-25 11:32:40', '2019-04-25 11:32:40'),
(149, 'NP', 'NEPAL', 'Nepal', 'NPL', 524, 977, 1, '2019-04-25 11:32:40', '2019-04-25 11:32:40'),
(150, 'NL', 'NETHERLANDS', 'Netherlands', 'NLD', 528, 31, 1, '2019-04-25 11:32:40', '2019-04-25 11:32:40'),
(151, 'AN', 'NETHERLANDS ANTILLES', 'Netherlands Antilles', 'ANT', 530, 599, 1, '2019-04-25 11:32:40', '2019-04-25 11:32:40'),
(152, 'NC', 'NEW CALEDONIA', 'New Caledonia', 'NCL', 540, 687, 1, '2019-04-25 11:32:40', '2019-04-25 11:32:40'),
(153, 'NZ', 'NEW ZEALAND', 'New Zealand', 'NZL', 554, 64, 1, '2019-04-25 11:32:40', '2019-04-25 11:32:40'),
(154, 'NI', 'NICARAGUA', 'Nicaragua', 'NIC', 558, 505, 1, '2019-04-25 11:32:40', '2019-04-25 11:32:40'),
(155, 'NE', 'NIGER', 'Niger', 'NER', 562, 227, 1, '2019-04-25 11:32:40', '2019-04-25 11:32:40'),
(156, 'NG', 'NIGERIA', 'Nigeria', 'NGA', 566, 234, 1, '2019-04-25 11:32:40', '2019-04-25 11:32:40'),
(157, 'NU', 'NIUE', 'Niue', 'NIU', 570, 683, 1, '2019-04-25 11:32:40', '2019-04-25 11:32:40'),
(158, 'NF', 'NORFOLK ISLAND', 'Norfolk Island', 'NFK', 574, 672, 1, '2019-04-25 11:32:40', '2019-04-25 11:32:40'),
(159, 'MP', 'NORTHERN MARIANA ISLANDS', 'Northern Mariana Islands', 'MNP', 580, 1670, 1, '2019-04-25 11:32:40', '2019-04-25 11:32:40'),
(160, 'NO', 'NORWAY', 'Norway', 'NOR', 578, 47, 1, '2019-04-25 11:32:40', '2019-04-25 11:32:40'),
(161, 'OM', 'OMAN', 'Oman', 'OMN', 512, 968, 1, '2019-04-25 11:32:40', '2019-04-25 11:32:40'),
(162, 'PK', 'PAKISTAN', 'Pakistan', 'PAK', 586, 92, 1, '2019-04-25 11:32:40', '2019-04-25 11:32:40'),
(163, 'PW', 'PALAU', 'Palau', 'PLW', 585, 680, 1, '2019-04-25 11:32:40', '2019-04-25 11:32:40'),
(164, 'PS', 'PALESTINIAN TERRITORY, OCCUPIED', 'Palestinian Territory, Occupied', NULL, NULL, 970, 1, '2019-04-25 11:32:40', '2019-04-25 11:32:40'),
(165, 'PA', 'PANAMA', 'Panama', 'PAN', 591, 507, 1, '2019-04-25 11:32:40', '2019-04-25 11:32:40'),
(166, 'PG', 'PAPUA NEW GUINEA', 'Papua New Guinea', 'PNG', 598, 675, 1, '2019-04-25 11:32:40', '2019-04-25 11:32:40'),
(167, 'PY', 'PARAGUAY', 'Paraguay', 'PRY', 600, 595, 1, '2019-04-25 11:32:40', '2019-04-25 11:32:40'),
(168, 'PE', 'PERU', 'Peru', 'PER', 604, 51, 1, '2019-04-25 11:32:40', '2019-04-25 11:32:40'),
(169, 'PH', 'PHILIPPINES', 'Philippines', 'PHL', 608, 63, 1, '2019-04-25 11:32:40', '2019-04-25 11:32:40'),
(170, 'PN', 'PITCAIRN', 'Pitcairn', 'PCN', 612, 0, 1, '2019-04-25 11:32:40', '2019-04-25 11:32:40'),
(171, 'PL', 'POLAND', 'Poland', 'POL', 616, 48, 1, '2019-04-25 11:32:40', '2019-04-25 11:32:40'),
(172, 'PT', 'PORTUGAL', 'Portugal', 'PRT', 620, 351, 1, '2019-04-25 11:32:40', '2019-04-25 11:32:40'),
(173, 'PR', 'PUERTO RICO', 'Puerto Rico', 'PRI', 630, 1787, 1, '2019-04-25 11:32:40', '2019-04-25 11:32:40'),
(174, 'QA', 'QATAR', 'Qatar', 'QAT', 634, 974, 1, '2019-04-25 11:32:40', '2019-04-25 11:32:40'),
(175, 'RE', 'REUNION', 'Reunion', 'REU', 638, 262, 1, '2019-04-25 11:32:40', '2019-04-25 11:32:40'),
(176, 'RO', 'ROMANIA', 'Romania', 'ROM', 642, 40, 1, '2019-04-25 11:32:40', '2019-04-25 11:32:40'),
(177, 'RU', 'RUSSIAN FEDERATION', 'Russian Federation', 'RUS', 643, 70, 1, '2019-04-25 11:32:40', '2019-04-25 11:32:40'),
(178, 'RW', 'RWANDA', 'Rwanda', 'RWA', 646, 250, 1, '2019-04-25 11:32:40', '2019-04-25 11:32:40'),
(179, 'SH', 'SAINT HELENA', 'Saint Helena', 'SHN', 654, 290, 1, '2019-04-25 11:32:40', '2019-04-25 11:32:40'),
(180, 'KN', 'SAINT KITTS AND NEVIS', 'Saint Kitts and Nevis', 'KNA', 659, 1869, 1, '2019-04-25 11:32:40', '2019-04-25 11:32:40'),
(181, 'LC', 'SAINT LUCIA', 'Saint Lucia', 'LCA', 662, 1758, 1, '2019-04-25 11:32:40', '2019-04-25 11:32:40'),
(182, 'PM', 'SAINT PIERRE AND MIQUELON', 'Saint Pierre and Miquelon', 'SPM', 666, 508, 1, '2019-04-25 11:32:40', '2019-04-25 11:32:40'),
(183, 'VC', 'SAINT VINCENT AND THE GRENADINES', 'Saint Vincent and the Grenadines', 'VCT', 670, 1784, 1, '2019-04-25 11:32:40', '2019-04-25 11:32:40'),
(184, 'WS', 'SAMOA', 'Samoa', 'WSM', 882, 684, 1, '2019-04-25 11:32:40', '2019-04-25 11:32:40'),
(185, 'SM', 'SAN MARINO', 'San Marino', 'SMR', 674, 378, 1, '2019-04-25 11:32:40', '2019-04-25 11:32:40'),
(186, 'ST', 'SAO TOME AND PRINCIPE', 'Sao Tome and Principe', 'STP', 678, 239, 1, '2019-04-25 11:32:40', '2019-04-25 11:32:40'),
(187, 'SA', 'SAUDI ARABIA', 'Saudi Arabia', 'SAU', 682, 966, 1, '2019-04-25 11:32:40', '2019-04-25 11:32:40'),
(188, 'SN', 'SENEGAL', 'Senegal', 'SEN', 686, 221, 1, '2019-04-25 11:32:40', '2019-04-25 11:32:40'),
(189, 'CS', 'SERBIA AND MONTENEGRO', 'Serbia and Montenegro', NULL, NULL, 381, 1, '2019-04-25 11:32:40', '2019-04-25 11:32:40'),
(190, 'SC', 'SEYCHELLES', 'Seychelles', 'SYC', 690, 248, 1, '2019-04-25 11:32:40', '2019-04-25 11:32:40'),
(191, 'SL', 'SIERRA LEONE', 'Sierra Leone', 'SLE', 694, 232, 1, '2019-04-25 11:32:40', '2019-04-25 11:32:40'),
(192, 'SG', 'SINGAPORE', 'Singapore', 'SGP', 702, 65, 1, '2019-04-25 11:32:40', '2019-04-25 11:32:40'),
(193, 'SK', 'SLOVAKIA', 'Slovakia', 'SVK', 703, 421, 1, '2019-04-25 11:32:40', '2019-04-25 11:32:40'),
(194, 'SI', 'SLOVENIA', 'Slovenia', 'SVN', 705, 386, 1, '2019-04-25 11:32:40', '2019-04-25 11:32:40'),
(195, 'SB', 'SOLOMON ISLANDS', 'Solomon Islands', 'SLB', 90, 677, 1, '2019-04-25 11:32:40', '2019-04-25 11:32:40'),
(196, 'SO', 'SOMALIA', 'Somalia', 'SOM', 706, 252, 1, '2019-04-25 11:32:40', '2019-04-25 11:32:40'),
(197, 'ZA', 'SOUTH AFRICA', 'South Africa', 'ZAF', 710, 27, 1, '2019-04-25 11:32:40', '2019-04-25 11:32:40'),
(198, 'GS', 'SOUTH GEORGIA AND THE SOUTH SANDWICH ISLANDS', 'South Georgia and the South Sandwich Islands', NULL, NULL, 0, 1, '2019-04-25 11:32:40', '2019-04-25 11:32:40'),
(199, 'ES', 'SPAIN', 'Spain', 'ESP', 724, 34, 1, '2019-04-25 11:32:40', '2019-04-25 11:32:40'),
(200, 'LK', 'SRI LANKA', 'Sri Lanka', 'LKA', 144, 94, 1, '2019-04-25 11:32:40', '2019-04-25 11:32:40'),
(201, 'SD', 'SUDAN', 'Sudan', 'SDN', 736, 249, 1, '2019-04-25 11:32:40', '2019-04-25 11:32:40'),
(202, 'SR', 'SURINAME', 'Suriname', 'SUR', 740, 597, 1, '2019-04-25 11:32:40', '2019-04-25 11:32:40'),
(203, 'SJ', 'SVALBARD AND JAN MAYEN', 'Svalbard and Jan Mayen', 'SJM', 744, 47, 1, '2019-04-25 11:32:40', '2019-04-25 11:32:40'),
(204, 'SZ', 'SWAZILAND', 'Swaziland', 'SWZ', 748, 268, 1, '2019-04-25 11:32:40', '2019-04-25 11:32:40'),
(205, 'SE', 'SWEDEN', 'Sweden', 'SWE', 752, 46, 1, '2019-04-25 11:32:40', '2019-04-25 11:32:40'),
(206, 'CH', 'SWITZERLAND', 'Switzerland', 'CHE', 756, 41, 1, '2019-04-25 11:32:40', '2019-04-25 11:32:40'),
(207, 'SY', 'SYRIAN ARAB REPUBLIC', 'Syrian Arab Republic', 'SYR', 760, 963, 1, '2019-04-25 11:32:40', '2019-04-25 11:32:40'),
(208, 'TW', 'TAIWAN, PROVINCE OF CHINA', 'Taiwan, Province of China', 'TWN', 158, 886, 1, '2019-04-25 11:32:40', '2019-04-25 11:32:40'),
(209, 'TJ', 'TAJIKISTAN', 'Tajikistan', 'TJK', 762, 992, 1, '2019-04-25 11:32:40', '2019-04-25 11:32:40'),
(210, 'TZ', 'TANZANIA, UNITED REPUBLIC OF', 'Tanzania, United Republic of', 'TZA', 834, 255, 1, '2019-04-25 11:32:40', '2019-04-25 11:32:40'),
(211, 'TH', 'THAILAND', 'Thailand', 'THA', 764, 66, 1, '2019-04-25 11:32:40', '2019-04-25 11:32:40'),
(212, 'TL', 'TIMOR-LESTE', 'Timor-Leste', NULL, NULL, 670, 1, '2019-04-25 11:32:40', '2019-04-25 11:32:40'),
(213, 'TG', 'TOGO', 'Togo', 'TGO', 768, 228, 1, '2019-04-25 11:32:40', '2019-04-25 11:32:40'),
(214, 'TK', 'TOKELAU', 'Tokelau', 'TKL', 772, 690, 1, '2019-04-25 11:32:40', '2019-04-25 11:32:40'),
(215, 'TO', 'TONGA', 'Tonga', 'TON', 776, 676, 1, '2019-04-25 11:32:40', '2019-04-25 11:32:40'),
(216, 'TT', 'TRINIDAD AND TOBAGO', 'Trinidad and Tobago', 'TTO', 780, 1868, 1, '2019-04-25 11:32:40', '2019-04-25 11:32:40'),
(217, 'TN', 'TUNISIA', 'Tunisia', 'TUN', 788, 216, 1, '2019-04-25 11:32:40', '2019-04-25 11:32:40'),
(218, 'TR', 'TURKEY', 'Turkey', 'TUR', 792, 90, 1, '2019-04-25 11:32:40', '2019-04-25 11:32:40'),
(219, 'TM', 'TURKMENISTAN', 'Turkmenistan', 'TKM', 795, 7370, 1, '2019-04-25 11:32:40', '2019-04-25 11:32:40'),
(220, 'TC', 'TURKS AND CAICOS ISLANDS', 'Turks and Caicos Islands', 'TCA', 796, 1649, 1, '2019-04-25 11:32:40', '2019-04-25 11:32:40'),
(221, 'TV', 'TUVALU', 'Tuvalu', 'TUV', 798, 688, 1, '2019-04-25 11:32:40', '2019-04-25 11:32:40'),
(222, 'UG', 'UGANDA', 'Uganda', 'UGA', 800, 256, 1, '2019-04-25 11:32:40', '2019-04-25 11:32:40'),
(223, 'UA', 'UKRAINE', 'Ukraine', 'UKR', 804, 380, 1, '2019-04-25 11:32:40', '2019-04-25 11:32:40'),
(224, 'AE', 'UNITED ARAB EMIRATES', 'United Arab Emirates', 'ARE', 784, 971, 1, '2019-04-25 11:32:40', '2019-04-25 11:32:40'),
(225, 'GB', 'UNITED KINGDOM', 'United Kingdom', 'GBR', 826, 44, 1, '2019-04-25 11:32:40', '2019-04-25 11:32:40'),
(226, 'US', 'UNITED STATES', 'United States', 'USA', 840, 1, 1, '2019-04-25 11:32:40', '2019-04-25 11:32:40'),
(227, 'UM', 'UNITED STATES MINOR OUTLYING ISLANDS', 'United States Minor Outlying Islands', NULL, NULL, 1, 1, '2019-04-25 11:32:40', '2019-04-25 11:32:40'),
(228, 'UY', 'URUGUAY', 'Uruguay', 'URY', 858, 598, 1, '2019-04-25 11:32:40', '2019-04-25 11:32:40'),
(229, 'UZ', 'UZBEKISTAN', 'Uzbekistan', 'UZB', 860, 998, 1, '2019-04-25 11:32:40', '2019-04-25 11:32:40'),
(230, 'VU', 'VANUATU', 'Vanuatu', 'VUT', 548, 678, 1, '2019-04-25 11:32:40', '2019-04-25 11:32:40'),
(231, 'VE', 'VENEZUELA', 'Venezuela', 'VEN', 862, 58, 1, '2019-04-25 11:32:40', '2019-04-25 11:32:40'),
(232, 'VN', 'VIET NAM', 'Viet Nam', 'VNM', 704, 84, 1, '2019-04-25 11:32:40', '2019-04-25 11:32:40'),
(233, 'VG', 'VIRGIN ISLANDS, BRITISH', 'Virgin Islands, British', 'VGB', 92, 1284, 1, '2019-04-25 11:32:40', '2019-04-25 11:32:40'),
(234, 'VI', 'VIRGIN ISLANDS, U.S.', 'Virgin Islands, U.s.', 'VIR', 850, 1340, 1, '2019-04-25 11:32:40', '2019-04-25 11:32:40'),
(235, 'WF', 'WALLIS AND FUTUNA', 'Wallis and Futuna', 'WLF', 876, 681, 1, '2019-04-25 11:32:40', '2019-04-25 11:32:40'),
(236, 'EH', 'WESTERN SAHARA', 'Western Sahara', 'ESH', 732, 212, 1, '2019-04-25 11:32:40', '2019-04-25 11:32:40'),
(237, 'YE', 'YEMEN', 'Yemen', 'YEM', 887, 967, 1, '2019-04-25 11:32:40', '2019-04-25 11:32:40'),
(238, 'ZM', 'ZAMBIA', 'Zambia', 'ZMB', 894, 260, 1, '2019-04-25 11:32:40', '2019-04-25 11:32:40'),
(239, 'ZW', 'ZIMBABWE', 'Zimbabwe', 'ZWE', 716, 263, 1, '2019-04-25 11:32:40', '2019-04-25 11:32:40');

-- --------------------------------------------------------

--
-- Table structure for table `coupons`
--

DROP TABLE IF EXISTS `coupons`;
CREATE TABLE IF NOT EXISTS `coupons` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `code` varchar(100) DEFAULT NULL,
  `type` varchar(20) DEFAULT '1' COMMENT 'value/percentage',
  `discount` decimal(10,2) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `use_limit` int(11) DEFAULT NULL,
  `min_amount` decimal(15,2) DEFAULT '0.00',
  `max_amount` decimal(15,2) DEFAULT '0.00',
  `max_discount_amt` decimal(10,2) DEFAULT '0.00',
  `start_date` datetime DEFAULT NULL,
  `expiry_date` datetime DEFAULT NULL,
  `status` tinyint(1) DEFAULT '1',
  `created_at` datetime DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `coupons`
--

INSERT INTO `coupons` (`id`, `name`, `code`, `type`, `discount`, `description`, `use_limit`, `min_amount`, `max_amount`, `max_discount_amt`, `start_date`, `expiry_date`, `status`, `created_at`, `updated_at`) VALUES
(4, 'First Order 50% Discount', 'SJFO50', 'value', '50.00', NULL, -1, '0.00', '0.00', '50.00', '2019-01-01 00:00:00', '2019-12-31 00:00:00', 1, '2019-01-16 11:59:25', '2019-07-08 12:09:02'),
(6, 'Summer Sale', 'SJDIS100', 'value', '100.00', 'Rs. 300 off on minimum purchase of Rs. 599.0.', 995, '0.00', '0.00', '100.00', '2019-06-01 00:00:00', '2019-08-31 00:00:00', 1, '2019-01-16 12:22:15', '2019-06-27 15:42:32'),
(7, 'JUNE OFFER', 'JUNEOFF', 'percentage', '30.00', 'TEST', 5, '1800.00', '0.00', '100.00', '2019-06-27 00:00:00', '2019-07-04 00:00:00', 1, '2019-06-28 13:45:56', '2019-07-02 11:07:49'),
(8, 'July08', 'JULY08', 'percentage', '5.00', 'Get 5% discount upto Rs. 500 on order cost Rs. 2000 or above.', 2, '2000.00', '0.00', '500.00', '2019-07-08 00:00:00', '2019-12-31 00:00:00', 1, '2019-07-08 12:28:33', '2019-07-08 12:28:42');

-- --------------------------------------------------------

--
-- Table structure for table `currencies`
--

DROP TABLE IF EXISTS `currencies`;
CREATE TABLE IF NOT EXISTS `currencies` (
  `currency` char(3) NOT NULL DEFAULT '',
  `rate` float NOT NULL DEFAULT '0',
  `updated_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`currency`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `currencies`
--

INSERT INTO `currencies` (`currency`, `rate`, `updated_at`) VALUES
('EUR', 1, '2019-06-05 15:17:07'),
('USD', 1.1316, '2019-06-24 15:42:51'),
('JPY', 121.64, '2019-06-24 15:42:51'),
('BGN', 1.9558, '2019-06-05 10:44:11'),
('CZK', 25.609, '2019-06-24 15:42:51'),
('DKK', 7.4657, '2019-06-24 15:42:51'),
('GBP', 0.89425, '2019-06-24 15:42:51'),
('HUF', 323.97, '2019-06-24 15:42:51'),
('PLN', 4.2584, '2019-06-24 15:42:51'),
('RON', 4.7239, '2019-06-24 15:42:51'),
('SEK', 10.6308, '2019-06-24 15:42:51'),
('CHF', 1.1107, '2019-06-24 15:42:51'),
('ISK', 141.5, '2019-06-24 15:42:51'),
('NOK', 9.686, '2019-06-24 15:42:51'),
('HRK', 7.4013, '2019-06-24 15:42:51'),
('RUB', 71.5191, '2019-06-24 15:42:51'),
('TRY', 6.5806, '2019-06-24 15:42:51'),
('AUD', 1.6386, '2019-06-24 15:42:51'),
('BRL', 4.3357, '2019-06-24 15:42:51'),
('CAD', 1.4928, '2019-06-24 15:42:51'),
('CNY', 7.7792, '2019-06-24 15:42:51'),
('HKD', 8.8424, '2019-06-24 15:42:51'),
('IDR', 15987, '2019-06-24 15:42:51'),
('ILS', 4.0785, '2019-06-24 15:42:51'),
('INR', 78.6985, '2019-06-24 15:42:51'),
('KRW', 1314.41, '2019-06-24 15:42:51'),
('MXN', 21.5698, '2019-06-24 15:42:51'),
('MYR', 4.7002, '2019-06-24 15:42:51'),
('NZD', 1.7261, '2019-06-24 15:42:51'),
('PHP', 58.253, '2019-06-24 15:42:51'),
('SGD', 1.5362, '2019-06-24 15:42:51'),
('THB', 34.859, '2019-06-24 15:42:51'),
('ZAR', 16.2178, '2019-06-24 15:42:51');

-- --------------------------------------------------------

--
-- Table structure for table `demos`
--

DROP TABLE IF EXISTS `demos`;
CREATE TABLE IF NOT EXISTS `demos` (
  `id` int(100) NOT NULL AUTO_INCREMENT,
  `firstname` varchar(100) NOT NULL,
  `lastname` varchar(100) NOT NULL,
  `country` varchar(100) NOT NULL,
  `subject` varchar(1000) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `demos`
--

INSERT INTO `demos` (`id`, `firstname`, `lastname`, `country`, `subject`) VALUES
(1, 'Kaseem', 'Ahmad', 'australia', 'hhh'),
(2, 'tser', 'test', 'australia', '?????? ???? ???? ?? - ?????????? ??? ????? ????????? ?????\r\nStarting & Last Sentence of Letter');

-- --------------------------------------------------------

--
-- Table structure for table `discounts`
--

DROP TABLE IF EXISTS `discounts`;
CREATE TABLE IF NOT EXISTS `discounts` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `type` varchar(50) DEFAULT NULL COMMENT 'fabric/printing',
  `min_len` int(11) DEFAULT NULL COMMENT 'in meter',
  `max_len` int(11) DEFAULT NULL COMMENT 'in meter',
  `value` decimal(15,2) DEFAULT '0.00' COMMENT 'in percentage',
  `status` tinyint(4) DEFAULT NULL,
  `created_at` datetime DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `discounts`
--

INSERT INTO `discounts` (`id`, `type`, `min_len`, `max_len`, `value`, `status`, `created_at`, `updated_at`) VALUES
(2, 'fabric', 1, 25, '10.00', 1, '2019-01-10 08:08:48', '2019-04-19 06:44:50'),
(3, 'fabric', 51, 100, '15.00', 1, '2019-01-10 08:08:58', '2019-04-30 07:13:38'),
(5, 'printing', 1, 25, '5.00', 1, '2019-01-10 08:11:31', '2019-04-19 06:47:35'),
(6, 'printing', 26, 50, '10.00', 1, '2019-01-10 08:11:39', '2019-04-19 06:47:47'),
(7, 'printing', 51, 100, '15.00', 1, '2019-01-10 08:11:51', '2019-04-19 06:47:56'),
(10, 'designer_commission', 1, 25, '5.00', 1, '2019-04-18 11:21:24', '2019-04-19 07:19:13'),
(11, 'fabric', 26, 50, '12.00', 1, '2019-04-19 06:45:00', '2019-04-19 07:27:17'),
(12, 'designer_commission', 26, 50, '3.00', 1, '2019-04-19 07:19:22', '2019-04-19 07:19:22'),
(13, 'designer_commission', 51, 100, '2.00', 1, '2019-04-19 07:19:30', '2019-04-19 07:19:30');

-- --------------------------------------------------------

--
-- Table structure for table `employee_stories`
--

DROP TABLE IF EXISTS `employee_stories`;
CREATE TABLE IF NOT EXISTS `employee_stories` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `category_id` int(11) DEFAULT NULL,
  `pages_id` varchar(255) DEFAULT NULL,
  `title` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `subtitle` varchar(255) DEFAULT NULL,
  `designation` varchar(255) DEFAULT NULL,
  `heading1` text,
  `brief` text,
  `description` text,
  `image` varchar(255) DEFAULT NULL,
  `pdf` varchar(255) DEFAULT NULL,
  `sort_order` int(11) DEFAULT NULL,
  `author_name` varchar(255) DEFAULT NULL,
  `featured` tinyint(4) NOT NULL DEFAULT '0',
  `status` tinyint(4) NOT NULL DEFAULT '1',
  `meta_title` varchar(255) DEFAULT NULL,
  `meta_keyword` varchar(255) DEFAULT NULL,
  `meta_description` varchar(255) DEFAULT NULL,
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `employee_stories`
--

INSERT INTO `employee_stories` (`id`, `category_id`, `pages_id`, `title`, `slug`, `subtitle`, `designation`, `heading1`, `brief`, `description`, `image`, `pdf`, `sort_order`, `author_name`, `featured`, `status`, `meta_title`, `meta_keyword`, `meta_description`, `created_at`, `updated_at`) VALUES
(8, 1, '', 'Parminder Singh', 'parminder-singh', 'Fostering Honesty,  Dedication & Drive', 'Senior Warehouse Manager', '“I’m big on honesty & transparency in work relations. Emphasise cultivating them in your team with fervour.”', '<p>A cheerful &amp; energetic individual, Parminder Singh was born and raised in Ambala, Haryana and finished his undergraduate degree from the same city. His willingness to take on new challenges, ability to learn at a swift pace and prior experience in one of India&rsquo;s leading FMCG companies earned him his current role as the Senior Warehouse Manager in Rudrapur, Uttarakhand.</p>', '<section class=\"blueSectBoxBlog  emploeStrorih2  emploeStroriFullText wow fadeInDown\">\r\n<div class=\"container\">\r\n<div class=\"row  justify-content-center\">\r\n<div class=\"col-sm-6 col-md-6 col-lg-6 col-xl-6 col-12\">\r\n<div class=\"blueSectBlogCont\">\r\n<div class=\"employee_common_head\">&ldquo;A mind with a blank canvas keeps me unbiased and gives me a strong vantage point.&rdquo;</div>\r\n\r\n<p>In his own words, Parminder has been continually entrusted with new &amp; exciting responsibilities at Varuna Group. His present role requires him to manage critical areas of warehousing like effective workforce management, overseeing inbound &amp; outbound material and facilitating embellishments for one of the company&rsquo;s largest multinational clients.</p>\r\n</div>\r\n</div>\r\n\r\n<div class=\"col-sm-6 col-md-6 col-lg-6 col-xl-6 col-12\">\r\n<div class=\"blueSectBlogCont\"><img alt=\"Parminder Singh\" src=\"/storage/ck/290920093355-parminder-singh1 (1).jpg\" style=\"width: 590px; height: 393px;\" /></div>\r\n</div>\r\n</div>\r\n</div>\r\n</section>\r\n\r\n<section class=\"blueSectBox wow fadeInDown  newSectopnClass\">\r\n<div class=\"container-fluid overlaybox overlaySideImgHide\">\r\n<div class=\"row  justify-content-center\">\r\n<div class=\"col-sm-5 col-md-5 col-lg-5 col-xl-5 col-12\">\r\n<div class=\"employee_common_head\" style=\"color:#fff\">Endowed nager helps me bring out the best in my team.&quot;</div>\r\n</div>\r\n\r\n<div class=\"col-sm-6 col-md-6 col-lg-6 col-xl-5 col-12\">\r\n<p>As the helmsman of the warehouse, Parminder is efficiently steering a team of 500 employees to successfully meet all SLAs &amp; targets. Early on in the role, he deciphered the client&#39;s needs and responded with actions leading to maximum manpower productivity and error-free solutions. The quality checks necessitated by him are resulting in 0.1% damage ratio, 100% inventory accuracy and zero safety issues, till date. Under his lead, Parminder&rsquo;s team is consistently able to generate a significant savings margin for Varuna as well as the client.</p>\r\n</div>\r\n</div>\r\n</div>\r\n</section>\r\n\r\n<section class=\"emploeStroriSect emploeStrorih1 emploeStroriCont wow fadeInDown\">\r\n<div class=\"container\">\r\n<div class=\"employee_common_head\">&quot;Varuna&#39;s sense of community and constant team feedback give me the zest that every opportunity demands.&quot;</div>\r\n\r\n<p>Parminder believes in staying honest with his work and inspires his colleagues to foster ethical practices in the entire workforce as well. &ldquo;It&rsquo;s really important for me to have honest and open relationships with everyone in my organisation,&rdquo; he says. He also believes that a mindful approach can solve problems at the grassroot level. He stands by his values and dreams to see his team practice the same. Additionally, as a fairly detail-oriented professional, he always focuses on identifying and following the correct way of doing things to maximise productivity.</p>\r\n</div>\r\n</section>\r\n\r\n<section class=\"blueSectBox wow fadeInDown newSectopnClass\">\r\n<div class=\"container-fluid overlaybox overlaySideImgHide\">\r\n<div class=\"row  justify-content-center\">\r\n<div class=\"col-sm-5 col-md-5 col-lg-5 col-xl-5 col-12\">\r\n<div class=\"becomeIndia\">&quot;Being a quick learner and a self-motivated manager helps me bring out the best in my team.&quot;</div>\r\n</div>\r\n\r\n<div class=\"col-sm-6 col-md-6 col-lg-6 col-xl-5 col-12\">\r\n<p>Parminder, with his go-getter attitude, doesn&#39;t back down when presented with a task he has no prior experience in. He says, &quot;New excites me. It pumps me up. I know I can face any challenge and do whatever it takes to achieve it.&quot; It&rsquo;s this attitude that helped him take on embellishments, a value-added service that he hadn&rsquo;t worked on ever, and not only manage it successfully but also bring down the total time invested on the task by a record breakthrough of 50%.</p>\r\n</div>\r\n</div>\r\n</div>\r\n</section>\r\n\r\n<section class=\"blueSectBoxBlog  emploeStrorih2  emploeStroriFullText wow fadeInDown\">\r\n<div class=\"container\">\r\n<div class=\"row  justify-content-center\">\r\n<div class=\"col-sm-6 col-md-6 col-lg-6 col-xl-6 col-12\">\r\n<div class=\"blueSectBlogCont\">\r\n<div class=\"employee_common_head\">&quot;Leading every new project fearlessly&quot;</div>\r\n\r\n<p>Despite the COVID-19 pandemic lockdown, Parminder has managed to maintain his team&#39;s morale and run the Rudrapur warehouse at an incredible 154% efficiency. When he couldn&#39;t drive to work, he took a truck to the warehouse and got things rolling! His team initiated a series of measures for drivers, like timely distribution of ration kits, pandemic-focused safety training workshops and more, making it easier on drivers and providing assistance in Varuna&#39;s vehicle transportation.</p>\r\n\r\n<p>Parminder enjoys seeing his team work cohesively. He facilitates an environment where everyone can count on each other by collaborating on ideas, setting things in motion and making them happen. He constantly fosters such solutions that can help his team operate with minimum manpower, time &amp; effort. &quot;My accomplishments give me the confidence to envision myself as the head of logistics two years down the line and subsequently, be a much more significant cog in the wheel&quot;, he adds. Outside of work, Parminder loves grooving to Punjabi folk music and spending time with family.</p>\r\n</div>\r\n</div>\r\n\r\n<div class=\"col-sm-6 col-md-6 col-lg-6 col-xl-6 col-12\">\r\n<div class=\"blueSectBlogCont\"><img alt=\"Parminder Singh\" src=\"/storage/ck/290920092747-parminder-singh2 (1).jpg\" style=\"width: 590px; height: 393px;\" /></div>\r\n</div>\r\n</div>\r\n</div>\r\n</section>', '101120011540-R-145 (1).JPG', NULL, 0, 'test', 1, 1, 'Parminder Singh, Senior Warehouse Manager at Varuna Group', 'Reducing the working capital requirement by 49% to drive growth', 'Parminder has been continually entrusted with new & exciting responsibilities at Varuna Group. He is efficiently steering a team of 500 employees to successfully meet all SLAs & targets.', '2020-09-06 16:11:01', '2021-01-22 09:38:30'),
(9, 1, '', 'Manish Kumar', 'manish-kumar1', 'Designing Effective <br> Solutions through <br> Passion & Collaboration', 'Senior Manager- Loss Prevention and Audit', '“I value the freedom my organisation has bestowed on me and make it a point to use it mindfully. I am driven to hone the very manner in which the team operates”.', '<p>Manish Kumar hails from Ghaziabad, Uttar Pradesh where he earned his bachelors&rsquo; degree and a postgraduate diploma in Finance Management. Post his course completion, a leading courier company recognised this budding talent and recruited him immediately.&nbsp;</p>', '<section class=\"blueSectBoxBlog  emploeStrorih2  emploeStroriFullText wow fadeInDown\">\r\n<div class=\"container\">\r\n<div class=\"row  justify-content-center\">\r\n<div class=\"col-sm-6 col-md-6 col-lg-6 col-xl-6 col-12\">\r\n<div class=\"blueSectBlogCont\">\r\n<h2>&ldquo;Whenever I come across a gap in the system, I examine it from all angles. A detailed understanding helps me bridge the gap effectively.&rdquo;</h2>\r\n\r\n<p>After his first stint, he worked with a leading cargo company in India as an Accounts Official. Eventually, his prior education and background helped him secure the role of an Assistant Manager at Varuna Group. His keenness to learn, ability to handle hurdles with finesse, and his adaptable &amp; cooperative nature got him promoted to his current position of Senior Manager in a short time.</p>\r\n</div>\r\n</div>\r\n\r\n<div class=\"col-sm-6 col-md-6 col-lg-6 col-xl-6 col-12\">\r\n<div class=\"blueSectBlogCont\"><img alt=\"Sudhir Kumar\" class=\"img-fluid\" src=\"https://varuna.net/storage/ck/010221065344-Manish_website (1).jpeg\" style=\"width: 590px; height: 400px;\" /></div>\r\n</div>\r\n</div>\r\n</div>\r\n</section>\r\n\r\n<section class=\"emploeStroriSect emploeStrorih1 emploeStroriCont wow fadeInDown\">\r\n<div class=\"container\">\r\n<div class=\"employee_common_head\">A disciplined, detail-oriented mind, focused on building solutions&nbsp;</div>\r\n\r\n<p>Manish is a highly adaptive manager, a supportive co-worker and a true collaborator. He confidently holds himself accountable for any downfalls Varuna faces. Ambitious and articulate, he possesses the quality of seeing everything in a positive light. His integrity and diligence drive him to do the right thing even when no one is watching, and he expects the same from everyone around him.</p>\r\n</div>\r\n</section>\r\n\r\n<section class=\"blueSectBox wow fadeInDown\">\r\n<div class=\"container-fluid overlaybox overlaySideImgHide\">\r\n<div class=\"row  justify-content-center\">\r\n<div class=\"col-sm-5 col-md-5 col-lg-5 col-xl-5 col-12\">\r\n<div class=\"becomeIndia\">&ldquo;It is important to be flexible and adapt to market fluctuations. I believe Varuna has been doing that proficiently.&rdquo;</div>\r\n</div>\r\n\r\n<div class=\"col-sm-6 col-md-6 col-lg-6 col-xl-5 col-12\">\r\n<p>Manish&rsquo;s roles and responsibilities mainly revolve around ensuring compliance with established internal control procedures by examining records, reports, operating practices, and documentation and verifying assets &amp; liabilities. He is majorly involved in identifying discrepancies and issues within audits, enforcing adherence to requirements and advising the key people on the most efficient course of action. &ldquo;We are currently sitting in our corporate headquarters, which allows us to plan our site visits, understand groundwork and ideate ways to prevent revenue and resource loss&rdquo;, he adds.&nbsp;</p>\r\n</div>\r\n</div>\r\n</div>\r\n</section>\r\n\r\n<section class=\"emploeStroriSect emploeStrorih1 emploeStroriCont wow fadeInDown\">\r\n<div class=\"container\">\r\n<div class=\"employee_common_head\">Continuous improvement through continuous learning</div>\r\n\r\n<p>Manish is glad that Varuna provides a healthy workspace and gives space for independent ideas and thinking. It respects everyone&rsquo;s ideas, gives way for critical thinking and promotes a learning culture, which helps each employee grow. He gives utmost importance to building and maintaining trust among colleagues and customers alike. &ldquo;We believe in our individual strengths and thus we believe in first mining and analysing our individual hurdles. When one truly needs another hand, that&#39;s when we intervene and brainstorm&rdquo;, he comments. He also believes in continuous upskilling and follows his passion to foster new skills. To enhance his understand and knowledge of the subject and industry, he did a certificate course in Supply Chain Analytics from IIT Roorkee while working at Varuna.</p>\r\n</div>\r\n</section>\r\n\r\n<section class=\"blueSectBoxBlog  emploeStrorih2  emploeStroriFullText wow fadeInDown\">\r\n<div class=\"container\">\r\n<div class=\"row  justify-content-center\">\r\n<div class=\"col-sm-6 col-md-6 col-lg-6 col-xl-6 col-12\">\r\n<div class=\"blueSectBlogCont\">\r\n<div class=\"employee_common_head\">&ldquo;Varuna, as an organisation, is solution-oriented, quick and inventive. This has enabled us to sail smoothly through major hiccups.&rdquo;</div>\r\n\r\n<p>Manish is grateful towards Varuna for standing beside him in his ups and downs. He recalls a difficult time in his life and says &ldquo;I was quite stressed when my wife was facing health issues. I can never thank Varuna enough for giving me the kind of support I needed&rdquo;, he adds. He developed and secured some truly strong bonds with his team members and superiors during the time. Manish has two daughters and is a thoughtful, responsible and true family man. Today, he is he is more driven than ever to explore new facets of both his personal and professional life.</p>\r\n</div>\r\n</div>\r\n\r\n<div class=\"col-sm-6 col-md-6 col-lg-6 col-xl-6 col-12\">\r\n<div class=\"blueSectBlogCont\"><img alt=\"Sudhir Kumar\" src=\"https://varuna.net/storage/ck/010221075146-Manish_website.jfif\" style=\"width: 590px; height: 400px;\" /></div>\r\n</div>\r\n</div>\r\n</div>\r\n</section>', '010221070238-Manish_website02 (1).jpeg', NULL, 0, 'test', 1, 1, 'Manish Kumar, Senior Manager- Loss Prevention and Audit', 'Reducing the working capital requirement by 49% to drive growth', 'Manish Kumar hails from Ghaziabad, Uttar Pradesh where he earned his bachelors’ degree and a postgraduate diploma in Finance Management. Post his course completion, a leading courier company recognized this budding talent and recruited him immediately. ', '2020-09-08 09:14:10', '2021-02-01 07:51:53'),
(10, 1, '', 'Srinivasan Bhavan', 'srinivasan-bhavan', 'Embedding Varuna In The Hearts Of Employees  And Customers, Alike', 'Manager of Fleet (Dharuhera)', '“I’m not just associated with Varuna - it’s in my blood! With my team’s help, I am driving the change to turn Varuna into India’s leading logistics company.”', '<p>Born and raised in Delhi, Srinivasan Bhavan is the General Manager of Fleet Maintenance, at Varuna. He started his career in 1987 after securing a degree in engineering. Since then he has been associated with renowned organisations like Ashok Leyland, Tata and Maruti. For the entirety of his career, Mr. Bhavan has played a major role in shaping the branding strategies in most of these organisations.</p>', '<section class=\"blueSectBoxBlog  emploeStrorih2  emploeStroriFullText wow fadeInDown\">\r\n<div class=\"container\">\r\n<div class=\"row  justify-content-center\">\r\n<div class=\"col-sm-6 col-md-6 col-lg-6 col-xl-6 col-12\">\r\n<div class=\"blueSectBlogCont\">\r\n<h2>I don&rsquo;t feel like an employee, I act like an owner at Varuna</h2>\r\n\r\n<p>Mr. Bhavan commenced his journey with Varuna in 2017 as GM Fleet. From 2017 till date, Mr. Bhavan has wholeheartedly dedicated himself into shaping a strong future for Varuna. He takes care of the new developments &amp; innovations while supporting the sales team pan-India. He focused on the procurement, better maintenance and improvement in vehicles, and then channeled his energy towards introducing intensive training sessions for drivers in Dharuhera. He built a strong technical team, and helped Varuna upgrade its mechanics by making them ready for BS-VI.</p>\r\n</div>\r\n</div>\r\n\r\n<div class=\"col-sm-6 col-md-6 col-lg-6 col-xl-6 col-12\">\r\n<div class=\"blueSectBlogCont\"><img class=\"img-fluid\" src=\"/public/assets/themes/theme-1/images/R-236.JPG\" /></div>\r\n</div>\r\n</div>\r\n</div>\r\n</section>\r\n\r\n<section class=\"emploeStroriSect emploeStrorih1 emploeStroriCont wow fadeInDown\">\r\n<div class=\"container\">\r\n<h1>Give your 100% to experience the brand&rsquo;s success</h1>\r\n\r\n<p>&ldquo;I joined Varuna with the determination to bring about a change, and I can see that change taking shape&rdquo;, recalls Mr. Bhavan. One of the first changes he brought within Varuna was to build a strong, coherent brand identity, something with which even the employees would resonate. He feels that having a uniform with the brand logo close to the heart would imbibe a spirit of brand ownership. He reasons, &ldquo;One should always consider themselves as part of the Varuna family and not an employee.&rdquo;</p>\r\n</div>\r\n</section>\r\n\r\n<section class=\"blueSectBox wow fadeInDown  newSectopnClass\">\r\n<div class=\"container-fluid overlaybox overlaySideImgHide\">\r\n<div class=\"row  justify-content-center\">\r\n<div class=\"col-sm-5 col-md-5 col-lg-5 col-xl-5 col-12\">\r\n<div class=\"becomeIndia\">&quot;Embody the spirit of the organization to achieve goals for the company and for yourself.&quot;</div>\r\n</div>\r\n\r\n<div class=\"col-sm-6 col-md-6 col-lg-6 col-xl-5 col-12\">\r\n<p>With a motivated team at his stride, Mr. Bhavan further developed on a Varuna-owned container body fleet that was started in 2008. This fleet is long-lasting, light weight, waterproof and can carry more weight. His aim has always been to bring about change, every single day! Since his first day at Varuna, Mr. Bhavan has been an integral part of the core operations team. It is his knowledge and experience with some nationally acclaimed companies that enables him to bring a new perspective in establishing Varuna as a strong brand.</p>\r\n</div>\r\n</div>\r\n</div>\r\n</section>\r\n\r\n<section class=\"emploeStroriSect emploeStrorih1 emploeStroriCont wow fadeInDown\">\r\n<div class=\"container\">\r\n<h1>Following the 3C&rsquo;s - Communication, Confidence &amp; Commitment</h1>\r\n\r\n<p>The key reason behind Mr. Bhavan joining Varuna is Vikas Juneja, Founder &amp; Chairman. He found Mr. Juneja to be a vessel of knowledge from whom he could learn plenty and see the world of logistics through a new lens. His 6 years of experience within the logistics domain, has helped Mr. Bhavan to work even harder while at the same time maintaining his calm. He recalls, &ldquo;One has to understand, that within the logistics industry, you interact with a range of minds: educated and learned people, as well as drivers who might take time to decipher and implement the changes that you are proposing.&rdquo;</p>\r\n</div>\r\n</section>\r\n\r\n<section class=\"blueSectBoxBlog  emploeStrorih2  emploeStroriFullText wow fadeInDown\">\r\n<div class=\"container\">\r\n<div class=\"row  justify-content-center\">\r\n<div class=\"col-sm-6 col-md-6 col-lg-6 col-xl-6 col-12\">\r\n<div class=\"blueSectBlogCont\">\r\n<h2>&ldquo;I&rsquo;m committed to see Varuna through the culmination of all its goals.&rdquo;</h2>\r\n\r\n<p>Mr. Bhavan also has a strong sense of social responsibility and plans to play an active role in CSR &amp; other volunteering opportunities, in future. Till then, he intends to play an active role in making Varuna a leading supply chain logistics company. &ldquo;I tell everyone who works with me, Varuna is in my blood&rdquo;, says Mr. Bhavan, that&rsquo;s how deep his love for Varuna is.</p>\r\n</div>\r\n</div>\r\n\r\n<div class=\"col-sm-6 col-md-6 col-lg-6 col-xl-6 col-12\">\r\n<div class=\"blueSectBlogCont\"><img alt=\"\" class=\"img-fluid\" src=\"/public/assets/themes/theme-1/images/R-238.JPG\" /></div>\r\n</div>\r\n</div>\r\n</div>\r\n</section>\r\n\r\n<section class=\"emploeStroriSect emploeStrorih1 emploeStroriCont wow fadeInDown\">\r\n<div class=\"container\">\r\n<p>His passion to see the brand Varuna at its peak reflects when he speaks with his enterprising demeanour. His sheer determination, strong will-power and technical skills make Srinivasan an effective communicator and a truly enterprising professional. He aims to make Varuna a leader in the logistics &amp; supply chain business and desires that its name be taken in the same breath as the leading brands of today.</p>\r\n\r\n<p>Besides these, Srinivsan also has a strong sense of social responsibility and plans to play an active role in CSR &amp; other volunteering opportunities, in the future. Till then, he intends to play an active role in making Varuna a leading logistics company. &ldquo;I tell everyone who works with me that Varuna is in my blood&rdquo; and that&rsquo;s exactly how deep and true his devotion runs.</p>\r\n</div>\r\n</section>', '121020010626-Srinivasan-Bhavan.jpg', NULL, 0, 'test', 1, 0, 'Reducing the working capital requirement by 49% to drive growth', 'Reducing the working capital requirement by 49% to drive growth', 'Reducing the working capital requirement by 49% to drive growth', '2020-09-22 07:03:21', '2020-11-10 15:02:37'),
(11, 1, '', 'Rita Joshi', 'rita-joshi', 'Breaking Conventions from Kitchen to Credit Control', 'Credit Control Executive', '“Varuna has been a great support in my journey from a home maker to a professional. It keeps me inspired even in the most challenging adversities.”', '<p>We often hear stories of stellar women with influential and driven personalities. One such inspiring employee in Varuna is Rita Joshi.<br />\r\nHailing from Kotdwar, Uttarakhand, and with a Bachelor&rsquo;s degree in arts, she joined Varuna as an executive&nbsp;in 2013, and later became a significant part of the billing team.<br />\r\nHowever, Rita&rsquo;s corporate life wasn&#39;t a planned choice. Long before she joined in, she was a committed homemaker and wife to one of Varuna&rsquo;s dedicated branch managers. Every day for 7&nbsp;years, her husband focussed on his arduous managerial role at Varuna with rigour and a kind heart. Meanwhile, back at home, Rita&rsquo;s ardent work maintained a happy household. Her life suddenly took a turn when one day in 2013, she was hit with her husband&rsquo;s untimely demise.<br />\r\nShe was then only a housewife, unaware of the corporate demands of the industry. Nonetheless, her adamance on wanting to provide for her daughter, who was then just a few months old, pushed her to stand up on her own feet. She joined Varuna when the HR team nudged her in their direction, and shifted gears with a fearless attempt at giving logistics a shot.</p>', '<section class=\"blueSectBoxBlog  emploeStrorih2  emploeStroriFullText wow fadeInDown\">\r\n<div class=\"container\">\r\n<div class=\"row  justify-content-center\">\r\n<div class=\"col-sm-6 col-md-6 col-lg-6 col-xl-6 col-12\">\r\n<div class=\"blueSectBlogCont\">\r\n<div class=\"employee_common_head\">Once Rita stepped into the world of logistics, there was no looking back</div>\r\n\r\n<p>She made a kickstart with only a little industry know-how that she learnt from her husband and a mind that was set to work dedicatedly. Her job involves checking bills, sorting out queries and rectifying document errors. She proved her mettle when she participated in a Mail Writing competition held internally and stood 3rd pan-india.</p>\r\n</div>\r\n</div>\r\n\r\n<div class=\"col-sm-6 col-md-6 col-lg-6 col-xl-6 col-12\">\r\n<div class=\"blueSectBlogCont\"><img alt=\"Rita Joshi\" src=\"/storage/ck/290920093704-rita (1).jpg\" style=\"width: 590px; height: 393px;\" /></div>\r\n</div>\r\n</div>\r\n</div>\r\n</section>\r\n\r\n<section class=\"emploeStroriSect emploeStrorih1 emploeStroriCont wow fadeInDown\">\r\n<div class=\"container\">\r\n<div class=\"employee_common_head\">A Clean Heart and A Clearer Conscience</div>\r\n\r\n<p>Rita&rsquo;s meticulous approach reflects in her work accuracy. Emotionally balanced and submissive, Rita has always stood her ground and has politely fought for herself at work. On the other hand, when at fault, she has bravely admitted her errors and gone out on a limb to rectify them.</p>\r\n</div>\r\n</section>\r\n\r\n<section class=\"blueSectBox wow fadeInDown\">\r\n<div class=\"container-fluid overlaybox overlaySideImgHide\">\r\n<div class=\"row  justify-content-center\">\r\n<div class=\"col-sm-5 col-md-5 col-lg-5 col-xl-5 col-12\">\r\n<div class=\"becomeIndia\">&quot;Working with Varuna helped me become self-reliant&quot;</div>\r\n</div>\r\n\r\n<div class=\"col-sm-6 col-md-6 col-lg-6 col-xl-5 col-12\">\r\n<p>She strongly believes that frivolous and negative mindframes will never foster problem solving attitudes. &ldquo;Every employee at Varuna works in synergy to help create a free and flexible atmosphere, where everyone can work with a positive mind. As a single working mother, I highly value their emphasis on maintaining a work-life balance.&rdquo; She says conditioning herself to adapt in this workspace has taught her to be immensely brave and mindful. Over the years, her responsibilities have shifted from managing basic tasks to more complex duties.</p>\r\n</div>\r\n</div>\r\n</div>\r\n</section>\r\n\r\n<section class=\"emploeStroriSect emploeStrorih1 emploeStroriCont wow fadeInDown\">\r\n<div class=\"container\">\r\n<div class=\"employee_common_head\">Rita has proven to be a symbol of undeterred will</div>\r\n\r\n<p>Her striking confidence makes her way for an ambitious future, where she sees herself managing a strong and agile workforce. Rita has always aspired to be as resilient and sincere as her husband. &ldquo;Being disheartened when things don&rsquo;t go your way will only push you down. Things fell in place for me when I honoured my husband&rsquo;s dreams, and his love and support for his family.&rdquo;</p>\r\n</div>\r\n</section>', '220920074107-G-4.JPG', NULL, 0, 'test', 1, 1, 'Rita Joshi, Credit Control Executive at Varuna Group', 'Reducing the working capital requirement by 49% to drive growth', 'We often hear stories of stellar women with influential and driven personalities. One such inspiring employee in Varuna is Rita Joshi.', '2020-09-22 07:27:33', '2021-01-19 13:21:28'),
(13, 1, '', 'Piyush Jain', 'piyush-jain', 'Leveraging data <br>to identify <br>customer needs', 'Business Analyst', '\"Varuna’s highly collaborative and integrated culture makes it the best place to nurture fresh talent in data analytics\"', '<p>Piyush Jain, an agile Business Analyst in Varuna, completed his graduation in Computer Applications at Aligarh Muslim University. He later pursued MBA in the University of Petroleum and Energy Studies, Dehradun with a major in business analytics. When Varuna identified this promising talent budding in Uttarakhand&#39;s winter capital, it recruited Piyush straight out of college. This happened in May 2018 and since then, Jain&rsquo;s knowledge and skills have had a rapid growth trajectory.&nbsp;</p>', '<section class=\"blueSectBoxBlog  emploeStrorih2  emploeStroriFullText wow fadeInDown\">\r\n<div class=\"container\">\r\n<div class=\"row  justify-content-center\">\r\n<div class=\"col-sm-6 col-md-6 col-lg-6 col-xl-6 col-12\">\r\n<div class=\"blueSectBlogCont\">\r\n<h2>Understanding Clients, Analysing Data And Strategising Business Solutions.&nbsp;</h2>\r\n\r\n<p>Piyush&#39;s&nbsp;&nbsp;profile involves operating around a lot of data that generates essential customer insights. &ldquo;A considerable amount of effort goes into understanding each client&rsquo;s business scenario.&rdquo; Once he&rsquo;s well versed with core challenges and problems that his clients face, he dives into an intense strategy plan to carry out a smooth data solutioning.&nbsp;<br />\r\nHis experience with a diverse set of customers helps him foresee major challenges. He decodes his way through every client&rsquo;s convoluted operations by analysing data and providing warehousing solutions. &ldquo;Optimising supply chains has helped streamline all areas of business development.&rdquo; He responds to RFQs by gathering inputs from other fellow experts.</p>\r\n</div>\r\n</div>\r\n\r\n<div class=\"col-sm-6 col-md-6 col-lg-6 col-xl-6 col-12\">\r\n<div class=\"blueSectBlogCont\"><img alt=\"Piyush Jain\" src=\"/storage/ck/191220021839-G-151.jpg\" style=\"width: 590px; height: 400px;\" /></div>\r\n\r\n<div class=\"blueSectBlogCont\">&nbsp;</div>\r\n</div>\r\n</div>\r\n</div>\r\n</section>\r\n\r\n<section class=\"emploeStroriSect emploeStrorih1 emploeStroriCont wow fadeInDown\">\r\n<div class=\"container\">\r\n<div class=\"landingHeading_employee_stories\">Data provides me an opportunity to understand customers better.</div>\r\n\r\n<p>Fascinated by data, he is always on his toes when it comes to emerging new trends in analytics. &ldquo;Working in data introduces me to people working across multiple industries, from pharmaceuticals to oil lubricants, giving me exposure to varying operations and slants.&rdquo;&nbsp;&nbsp;For his future plans, Piyush is prepared to take data analytics in Varuna to towering heights by handling warehousing solutions for Varuna pan-India. He is looking to continuously invest in his upskilling&nbsp;and take advantage of Varuna&#39;s L&amp;D programmes.&nbsp;He&rsquo;s a natural explorer and loves travelling. In his free time, he likes playing cricket and table tennis.</p>\r\n</div>\r\n</section>\r\n\r\n<section class=\"blueSectBox wow fadeInDown\">\r\n<div class=\"container-fluid overlaybox overlaySideImgHide\">\r\n<div class=\"row  justify-content-center\">\r\n<div class=\"col-sm-5 col-md-5 col-lg-5 col-xl-5 col-12\">\r\n<div class=\"becomeIndia\">&quot;Good learnings, great mentorship and wonderful colleagues - that is Varuna for me.&quot;</div>\r\n</div>\r\n\r\n<div class=\"col-sm-6 col-md-6 col-lg-6 col-xl-5 col-12\">\r\n<p>Leading and growth-oriented mentors at Varuna have made his experience and time truly rewarding. It trains its team from scratch and helps enhance knowledge and skills that chart a promising path. &ldquo;Getting opportunities to produce such high quality results at an MNC, would be next to impossible.&rdquo; He finds that Varuna&rsquo;s highly collaborative and integrated culture makes it the best place to venture in data analytics and supply chain management.</p>\r\n</div>\r\n</div>\r\n</div>\r\n</section>\r\n\r\n<section class=\"blueSectBoxBlog  emploeStrorih2  emploeStroriFullText wow fadeInDown\">\r\n<div class=\"container\">\r\n<div class=\"row  justify-content-center\">\r\n<div class=\"col-sm-6 col-md-6 col-lg-6 col-xl-6 col-12\">\r\n<div class=\"blueSectBlogCont\">\r\n<h2>&ldquo;Work brings you joy when you really care for what you do.&rdquo;</h2>\r\n\r\n<p>&ldquo;I&rsquo;m deeply convinced with the saying - &lsquo;If you love your job, you don&rsquo;t work for a single day.&rsquo; This has always been my guiding principle, especially at work&rdquo;, Piyush says in his dynamic persona. His rational approach, impeccable communication skills, analytical thinking and effective time management has made him client focused, eventually running a marathon, with every stride more systematic than before.</p>\r\n</div>\r\n</div>\r\n\r\n<div class=\"col-sm-6 col-md-6 col-lg-6 col-xl-6 col-12\">\r\n<div class=\"blueSectBlogCont\"><img alt=\"Work brings you joy\" src=\"/storage/ck/191220023030-WhatsApp Image 2020-12-19 at 7.58.57 PM.jpeg\" style=\"width: 590px; height: 400px;\" /></div>\r\n</div>\r\n</div>\r\n</div>\r\n</section>', '010221072123-G-167.JPG', NULL, 0, 'test', 1, 1, 'Piyush Jain, Business Analyst at Varuna Group', 'Reducing the working capital requirement by 49% to drive growth', 'Piyush Jain, an agile Business Analyst in Varuna, completed his graduation in Computer Applications at Aligarh Muslim University.', '2020-12-19 13:20:26', '2021-02-01 07:21:24'),
(14, 1, '', 'Sudhir Kumar1', 'sudhir-kumar12', 'Nurturing leaders and<br>fostering a sense<br>of community', 'HR Manager', '“I put my heart & soul into ensuring that our team members feel valued and closely connected to each other.”', '<p>A simple man with a kind heart and lofty aspirations, Sudhir Kumar has been managing Varuna&rsquo;s HR operations at the fleet level in Dharuhera, Haryana since 2011. Born and brought up in the same state, he completed his graduation from Rohtak and MBA from Hisar before accepting a role in the HR department of a textile manufacturing firm in 2008. In 3 years, Sudhir decided to make the shift to Varuna and hasn&rsquo;t looked back since.</p>', '<section class=\"blueSectBoxBlog  emploeStrorih2  emploeStroriFullText wow fadeInDown\">\r\n<div class=\"container\">\r\n<div class=\"row  justify-content-center\">\r\n<div class=\"col-sm-6 col-md-6 col-lg-6 col-xl-6 col-12\">\r\n<div class=\"blueSectBlogCont\">\r\n<h2>&ldquo;When I joined, I was good at personnel administration. Varuna taught me the art of engaging &amp; truly connecting with people.&rdquo;</h2>\r\n\r\n<p>Sudhir&rsquo;s typical day at work is bustling with activity. &ldquo;I handle the HR operations for 5 fleets and am directly responsible for a 400+ strong team&rdquo;, he adds. A remarkable planner and a people&rsquo;s person, he is exceptional in his ability to form connections with people from different backgrounds, experiences and capabilities. Be it coordinating across departments, having a heart-to-heart with his colleagues or hiring the right individuals, Sudhir constantly goes beyond the call of duty to ensure that his team gets the best experience.</p>\r\n</div>\r\n</div>\r\n\r\n<div class=\"col-sm-6 col-md-6 col-lg-6 col-xl-6 col-12\">\r\n<div class=\"blueSectBlogCont\"><img alt=\"\" class=\"img-fluid\" src=\"/assets/themes/theme-1/images/sudhirTwo.JPG\" /></div>\r\n</div>\r\n</div>\r\n</div>\r\n</section>\r\n\r\n<section class=\"emploeStroriSect emploeStrorih1 emploeStroriCont wow fadeInDown\">\r\n<div class=\"container\">\r\n<h1>Taking his vocation to the next level</h1>\r\n\r\n<p>Sudhir has been instrumental in the success of several projects &amp; initiatives during his tenure. In line with his mantra to keep the team focused &amp; engaged, he has streamlined and systemized employee-centric processes to a great degree. &quot;When I joined Varuna, onboarding formalities used to take up to 8 days. We&#39;ve successfully brought it down to just one day, &quot; he comments. Sudhir has implemented HRMS across all levels to usher in complete transparency and hence greater productivity. He has inspired the adoption of automation &amp; digital systems in the HR department while bringing down the total paperwork to a mere 20%. Sensing Varuna&rsquo;s affinity for technology and the technical challenges BS VI&nbsp;adoption may pose, he has upgraded the employee skill set criterion.</p>\r\n</div>\r\n</section>\r\n\r\n<section class=\"blueSectBox wow fadeInDown\">\r\n<div class=\"container-fluid overlaybox overlaySideImgHide\">\r\n<div class=\"row  justify-content-center\">\r\n<div class=\"col-sm-5 col-md-5 col-lg-5 col-xl-5 col-12\">\r\n<div class=\"becomeIndia\">&quot;My team members are my greatest motivation. I want to help them hone their potential and grow into inspiring leaders.&quot;</div>\r\n</div>\r\n\r\n<div class=\"col-sm-6 col-md-6 col-lg-6 col-xl-5 col-12\">\r\n<p>Sudhir, working closely with the fleet head, is passionate about nurturing leaders in the team. Aiming to help everyone feel heard &amp; understand the gravitas of their presence in the company, Sudhir organises and conducts annual feedback surveys. He further explains, &quot;Feedbacks empower our people and make us more cohesive as a team. Our surveys are quite useful in bridging the generational gap between the policy-makers and the rest of us&quot;.</p>\r\n</div>\r\n</div>\r\n</div>\r\n</section>\r\n\r\n<section class=\"emploeStroriSect emploeStrorih1 emploeStroriCont wow fadeInDown\">\r\n<div class=\"container\">\r\n<h1>Thoughtful, thankful and thriving</h1>\r\n\r\n<p>Sudhir admiringly remembers an old conversation with Vikas Juneja, Founder &amp; Chairman. &quot;He knows a lot about trucks, but he also knows a lot more about humans&quot;. When one of his team members fell severely ill and had to be hospitalised, Sudhir received a call from the Chairman, asking him to ensure that he gets the best treatment and that nothing else matters. He further mentions that moments like these come naturally to the people at Varuna because much like a family, they value each other and are closely connected.</p>\r\n</div>\r\n</section>\r\n\r\n<section class=\"blueSectBoxBlog  emploeStrorih2  emploeStroriFullText wow fadeInDown\">\r\n<div class=\"container\">\r\n<div class=\"row  justify-content-center\">\r\n<div class=\"col-sm-6 col-md-6 col-lg-6 col-xl-6 col-12\">\r\n<div class=\"blueSectBlogCont\">\r\n<h2>&quot;The best thing about Varuna is that no policies are made in a closed room.&quot;</h2>\r\n\r\n<p>From a senior executive to now an HR manager, Sudhir&rsquo;s potential has been thoroughly nurtured. Till date, he has taken on several major responsibilities &amp; assignments and seen them through to successful completion. Along the course, he has taken the effort to connect with people at a deeper level and, rightly so, they have found in him a confidant and a reliable partner.</p>\r\n</div>\r\n</div>\r\n\r\n<div class=\"col-sm-6 col-md-6 col-lg-6 col-xl-6 col-12\">\r\n<div class=\"blueSectBlogCont\"><img alt=\"\" src=\"/storage/ck/050920065226-empStorie1.png\" style=\"width: 485px; height: 400px;\" /></div>\r\n</div>\r\n</div>\r\n</div>\r\n</section>', '121020115606-Sudhir-Kumar.jpg', NULL, 0, 'test', 0, 0, 'Reducing the working capital requirement by 49% to drive growth', 'Reducing the working capital requirement by 49% to drive growth', 'Reducing the working capital requirement by 49% to drive growth', '2020-12-19 13:49:09', '2021-01-04 13:28:10'),
(16, 1, '', 'Manish Kumar', 'manish-kumar', 'Designing Effective <br> Solutions through <br> Passion & Collaboration', 'Senior Manager, Loss Prevention & Audit', '“I value the freedom my organisation has bestowed on me and make it a point to use it mindfully. I am driven to hone the very manner in which the team operates”.', '<p>Manish Kumar hails from Ghaziabad, Uttar Pradesh where he earned his bachelors&rsquo; degree and a postgraduate diploma in Finance Management. Post his course completion, a leading courier company recognised this budding talent and recruited him immediately.</p>', '<section class=\"blueSectBoxBlog  emploeStrorih2  emploeStroriFullText wow fadeInDown\">\r\n<div class=\"container\">\r\n<div class=\"row  justify-content-center\">\r\n<div class=\"col-sm-6 col-md-6 col-lg-6 col-xl-6 col-12\">\r\n<div class=\"blueSectBlogCont\">\r\n<h2><br />\r\n<strong>&ldquo;Whenever I come across a gap in the system, I examine it from all angles. A detailed understanding helps me bridge the gap effectively.&rdquo;</strong>&nbsp;</h2>\r\n\r\n<p>After his first stint, he worked with a leading cargo company in India as an Accounts Official. Eventually, his prior education and background helped him secure the role of an Assistant Manager at Varuna Group. His keenness to learn, ability to handle hurdles with finesse, and his adaptable &amp; cooperative nature got him promoted to his current position of Senior Manager in a short time.</p>\r\n</div>\r\n</div>\r\n\r\n<div class=\"col-sm-6 col-md-6 col-lg-6 col-xl-6 col-12\">\r\n<div class=\"blueSectBlogCont\"><img alt=\"Piyush Jain\" src=\"https://varuna.net/storage/ck/280121085359-Manish_website.jpeg\" style=\"width: 590px; height: 400px;\" /></div>\r\n\r\n<div class=\"blueSectBlogCont\">&nbsp;</div>\r\n\r\n<div class=\"blueSectBlogCont\">\r\n<div class=\"col-sm-5 col-md-5 col-lg-5 col-xl-5 col-12\">\r\n<div class=\"becomeIndia\"><strong>A disciplined, detail-oriented mind, focused on building solutions</strong></div>\r\n</div>\r\n\r\n<div class=\"col-sm-6 col-md-6 col-lg-6 col-xl-5 col-12\">&nbsp;</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</section>\r\n\r\n<section class=\"emploeStroriSect emploeStrorih1 emploeStroriCont wow fadeInDown\">\r\n<div class=\"container\">\r\n<p>Manish is a highly adaptive manager, a supportive co-worker and a true collaborator. He confidently holds himself accountable for any downfalls Varuna faces. Ambitious and articulate, he possesses the quality of seeing everything in a positive light. His integrity and diligence drive him to do the right thing even when no one is watching, and he expects the same from everyone around him.</p>\r\n</div>\r\n</section>\r\n\r\n<section class=\"blueSectBox wow fadeInDown\">\r\n<div class=\"container-fluid overlaybox overlaySideImgHide\">\r\n<div class=\"row  justify-content-center\">\r\n<div class=\"col-sm-5 col-md-5 col-lg-5 col-xl-5 col-12\">\r\n<div class=\"becomeIndia\"><strong>&ldquo;It is important to be flexible and adapt to market fluctuations. I believe Varuna has been doing that proficiently.&rdquo;</strong></div>\r\n</div>\r\n\r\n<div class=\"col-sm-6 col-md-6 col-lg-6 col-xl-5 col-12\">\r\n<p>Manish&rsquo;s roles and responsibilities mainly revolve around ensuring compliance with established internal control procedures by examining records, reports, operating practices, and documentation and verifying assets &amp; liabilities. He is majorly involved in identifying discrepancies and issues within audits, enforcing adherence to requirements and advising the key people on the most efficient course of action. &ldquo;We are currently sitting in our corporate headquarters, which allows us to plan our site visits, understand groundwork and ideate ways to prevent revenue and resource loss&rdquo;, he adds.</p>\r\n</div>\r\n</div>\r\n</div>\r\n</section>\r\n\r\n<section class=\"blueSectBoxBlog  emploeStrorih2  emploeStroriFullText wow fadeInDown\">\r\n<div class=\"container\">\r\n<div class=\"row  justify-content-center\">\r\n<div class=\"col-sm-6 col-md-6 col-lg-6 col-xl-6 col-12\">\r\n<div class=\"blueSectBlogCont\">\r\n<h2><strong>Continuous improvement through continuous learning</strong></h2>\r\n\r\n<p>Manish is glad that Varuna provides a healthy workspace and gives space for independent ideas and thinking. It respects everyone&rsquo;s ideas, gives way for critical thinking and promotes a learning culture, which helps each employee grow. He gives utmost importance to building and maintaining trust among colleagues and customers alike. &ldquo;We believe in our individual strengths and thus we believe in first mining and analysing our individual hurdles. When one truly needs another hand, that&#39;s when we intervene and brainstorm&rdquo;, he comments. He also believes in continuous upskilling and follows his passion to foster new skills. To enhance his understand and knowledge of the subject and industry, he did a certificate course in Supply Chain Analytics from IIT Roorkee while working at Varuna.</p>\r\n\r\n<section class=\"blueSectBoxBlog  emploeStrorih2  emploeStroriFullText wow fadeInDown\">\r\n<div class=\"container\">\r\n<div class=\"row  justify-content-center\">\r\n<div class=\"col-sm-6 col-md-6 col-lg-6 col-xl-6 col-12\">\r\n<div class=\"blueSectBlogCont\"><strong>&ldquo;Varuna, as an organisation, is solution-oriented, quick and inventive. This has enabled us to sail smoothly through major hiccups.&rdquo;</strong></div>\r\n</div>\r\n</div>\r\n</div>\r\n</section>\r\n\r\n<section class=\"emploeStroriSect emploeStrorih1 emploeStroriCont wow fadeInDown\">\r\n<div class=\"container\">\r\n<p>Manish is grateful towards Varuna for standing beside him in his ups and downs. He recalls a difficult time in his life and says &ldquo;I was quite stressed when my wife was facing health issues. I can never thank Varuna enough for giving me the kind of support I needed&rdquo;, he adds. He developed and secured some truly strong bonds with his team members and superiors during the time. Manish has two daughters and is a thoughtful, responsible and true family man. Today, he is he is more driven than ever to explore new facets of both his personal and professional life.</p>\r\n</div>\r\n</section>\r\n</div>\r\n</div>\r\n\r\n<div class=\"col-sm-6 col-md-6 col-lg-6 col-xl-6 col-12\">\r\n<div class=\"blueSectBlogCont\"><img alt=\"Work brings you joy\" src=\"https://varuna.net/storage/ck/280121092030-6661.jpg\" style=\"width: 590px; height: 400px;\" /></div>\r\n</div>\r\n</div>\r\n</div>\r\n</section>', '280121084959-Manish_website02.jpeg', NULL, 0, 'test', 1, 0, 'Manish Kumar, Senior Manager, Loss & Prevention', 'Reducing the working capital requirement by 49% to drive growth', 'Manish Kumar hails from Ghaziabad, Uttar Pradesh where he earned his bachelors’ degree and a postgraduate diploma in Finance Management. Post his course completion, a leading courier company recognized this budding talent and recruited him immediately. ', '2021-01-28 07:45:21', '2021-02-01 06:48:51');
INSERT INTO `employee_stories` (`id`, `category_id`, `pages_id`, `title`, `slug`, `subtitle`, `designation`, `heading1`, `brief`, `description`, `image`, `pdf`, `sort_order`, `author_name`, `featured`, `status`, `meta_title`, `meta_keyword`, `meta_description`, `created_at`, `updated_at`) VALUES
(17, 1, '', 'Sudhir Kumar', 'sudhir-kumar', 'Nurturing leaders and<br>fostering a sense<br>of community', 'HR Manager', '“I put my heart & soul into ensuring that our team members feel valued and closely connected to each other.”', '<p>A simple man with a kind heart and lofty aspirations, Sudhir Kumar has been managing Varuna&rsquo;s HR operations at the fleet level in Dharuhera, Haryana since 2011. Born and brought up in the same state, he completed his graduation from Rohtak and MBA from Hisar before accepting a role in the HR department of a textile manufacturing firm in 2008. In 3 years, Sudhir decided to make the shift to Varuna and hasn&rsquo;t looked back since.</p>', '<section class=\"blueSectBoxBlog  emploeStrorih2  emploeStroriFullText wow fadeInDown\">\r\n<div class=\"container\">\r\n<div class=\"row  justify-content-center\">\r\n<div class=\"col-sm-6 col-md-6 col-lg-6 col-xl-6 col-12\">\r\n<div class=\"blueSectBlogCont\">\r\n<h2>&ldquo;When I joined, I was good at personnel administration. Varuna taught me the art of engaging &amp; truly connecting with people.&rdquo;</h2>\r\n\r\n<p>Sudhir&rsquo;s typical day at work is bustling with activity. &ldquo;I handle the HR operations for 5 fleets and am directly responsible for a 400+ strong team&rdquo;, he adds. A remarkable planner and a people&rsquo;s person, he is exceptional in his ability to form connections with people from different backgrounds, experiences and capabilities. Be it coordinating across departments, having a heart-to-heart with his colleagues or hiring the right individuals, Sudhir constantly goes beyond the call of duty to ensure that his team gets the best experience.</p>\r\n</div>\r\n</div>\r\n\r\n<div class=\"col-sm-6 col-md-6 col-lg-6 col-xl-6 col-12\">\r\n<div class=\"blueSectBlogCont\"><img alt=\"Sudhir Kumar\" class=\"img-fluid\" src=\"/assets/themes/theme-1/images/sudhirTwo.JPG\" /></div>\r\n</div>\r\n</div>\r\n</div>\r\n</section>\r\n\r\n<section class=\"emploeStroriSect emploeStrorih1 emploeStroriCont wow fadeInDown\">\r\n<div class=\"container\">\r\n<div class=\"employee_common_head\">Taking his vocation to the next level</div>\r\n\r\n<p>Sudhir has been instrumental in the success of several projects &amp; initiatives during his tenure. In line with his mantra to keep the team focused &amp; engaged, he has streamlined and systemized employee-centric processes to a great degree. &quot;When I joined Varuna, onboarding formalities used to take up to 8 days. We&#39;ve successfully brought it down to just one day, &quot; he comments. Sudhir has implemented HRMS across all levels to usher in complete transparency and hence greater productivity. He has inspired the adoption of automation &amp; digital systems in the HR department while bringing down the total paperwork to a mere 20%. Sensing Varuna&rsquo;s affinity for technology and the technical challenges BS VI&nbsp;adoption may pose, he has upgraded the employee skill set criterion.</p>\r\n</div>\r\n</section>\r\n\r\n<section class=\"blueSectBox wow fadeInDown\">\r\n<div class=\"container-fluid overlaybox overlaySideImgHide\">\r\n<div class=\"row  justify-content-center\">\r\n<div class=\"col-sm-5 col-md-5 col-lg-5 col-xl-5 col-12\">\r\n<div class=\"becomeIndia\">&quot;My team members are my greatest motivation. I want to help them hone their potential and grow into inspiring leaders.&quot;</div>\r\n</div>\r\n\r\n<div class=\"col-sm-6 col-md-6 col-lg-6 col-xl-5 col-12\">\r\n<p>Sudhir, working closely with the fleet head, is passionate about nurturing leaders in the team. Aiming to help everyone feel heard &amp; understand the gravitas of their presence in the company, Sudhir organises and conducts annual feedback surveys. He further explains, &quot;Feedbacks empower our people and make us more cohesive as a team. Our surveys are quite useful in bridging the generational gap between the policy-makers and the rest of us&quot;.</p>\r\n</div>\r\n</div>\r\n</div>\r\n</section>\r\n\r\n<section class=\"emploeStroriSect emploeStrorih1 emploeStroriCont wow fadeInDown\">\r\n<div class=\"container\">\r\n<div class=\"employee_common_head\">Thoughtful, thankful and thriving</div>\r\n\r\n<p>Sudhir admiringly remembers an old conversation with Vikas Juneja, Founder &amp; Chairman. &quot;He knows a lot about trucks, but he also knows a lot more about humans&quot;. When one of his team members fell severely ill and had to be hospitalised, Sudhir received a call from the Chairman, asking him to ensure that he gets the best treatment and that nothing else matters. He further mentions that moments like these come naturally to the people at Varuna because much like a family, they value each other and are closely connected.</p>\r\n</div>\r\n</section>\r\n\r\n<section class=\"blueSectBoxBlog  emploeStrorih2  emploeStroriFullText wow fadeInDown\">\r\n<div class=\"container\">\r\n<div class=\"row  justify-content-center\">\r\n<div class=\"col-sm-6 col-md-6 col-lg-6 col-xl-6 col-12\">\r\n<div class=\"blueSectBlogCont\">\r\n<div class=\"employee_common_head\">&quot;The best thing about Varuna is that no policies are made in a closed room.&quot;</div>\r\n\r\n<p>From a senior executive to now an HR manager, Sudhir&rsquo;s potential has been thoroughly nurtured. Till date, he has taken on several major responsibilities &amp; assignments and seen them through to successful completion. Along the course, he has taken the effort to connect with people at a deeper level and, rightly so, they have found in him a confidant and a reliable partner.</p>\r\n</div>\r\n</div>\r\n\r\n<div class=\"col-sm-6 col-md-6 col-lg-6 col-xl-6 col-12\">\r\n<div class=\"blueSectBlogCont\"><img alt=\"Sudhir Kumar\" src=\"/storage/ck/050920065226-empStorie1.png\" style=\"width: 485px; height: 400px;\" /></div>\r\n</div>\r\n</div>\r\n</div>\r\n</section>', '010221071706-D-4 (1).JPG', NULL, 0, 'test', 1, 1, 'Sudhir Kumar, HR Manager at Varuna Group', 'Reducing the working capital requirement by 49% to drive growth', 'A simple man with a kind heart and lofty aspirations, Sudhir Kumar has been managing Varuna’s HR operations at the fleet level in Dharuhera, Haryana since 2011.', '2021-02-01 06:48:35', '2021-02-01 07:17:07');

-- --------------------------------------------------------

--
-- Table structure for table `enquiries`
--

DROP TABLE IF EXISTS `enquiries`;
CREATE TABLE IF NOT EXISTS `enquiries` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `form_id` int(11) DEFAULT NULL,
  `type` varchar(50) DEFAULT NULL,
  `name` varchar(50) DEFAULT NULL,
  `first_name` varchar(255) DEFAULT NULL,
  `last_name` varchar(255) DEFAULT NULL,
  `phone` varchar(20) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `annual_sales` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `zip` varchar(255) DEFAULT NULL,
  `company` varchar(255) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `subject` varchar(100) DEFAULT NULL,
  `comment` text,
  `data` text,
  `document` varchar(255) DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT '1',
  `created_at` datetime DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=224 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `enquiries`
--

INSERT INTO `enquiries` (`id`, `form_id`, `type`, `name`, `first_name`, `last_name`, `phone`, `email`, `annual_sales`, `zip`, `company`, `title`, `subject`, `comment`, `data`, `document`, `status`, `created_at`, `updated_at`) VALUES
(1, NULL, NULL, NULL, 'Ramji', 'sharma', '7017763206', 'ramji@ehostinguk.com', 'option2', '201014', NULL, NULL, NULL, 'test', NULL, NULL, 1, '2020-07-24 12:29:05', '2020-07-24 12:29:05'),
(2, NULL, NULL, NULL, 'Ramji', 'sharma', '7017763206', 'ramji@ehostinguk.com', '?2 crores - ?9.9 crores', '201014', NULL, NULL, NULL, 'this is test', NULL, NULL, 1, '2020-07-24 12:33:29', '2020-07-24 12:33:29'),
(3, NULL, NULL, NULL, 'teset', 'test', '7017763206', 'ramji@ehostinguk.com', 'Under ₹2 crores', '201014', NULL, NULL, NULL, 'test', NULL, NULL, 1, '2020-07-24 12:36:31', '2020-07-24 12:36:31'),
(4, NULL, NULL, NULL, 'Ramji', 'sharma', '7017763206', 'ramji@ehostinguk.com', '₹10 crores - ₹49.9 crores', '201014', NULL, NULL, NULL, 'test', NULL, NULL, 1, '2020-07-24 12:50:10', '2020-07-24 12:50:10'),
(5, NULL, NULL, NULL, 'Ramji', 'sharma', '7017763206', 'ramji@ehostinguk.com', '₹2 crores - ₹9.9 crores', '201014', '20 MICRONS LTD.', 'test', NULL, 'ths i test', NULL, NULL, 1, '2020-07-28 18:13:21', '2020-07-28 18:13:21'),
(6, NULL, NULL, NULL, 'sanyogita', 'patel', '988987678', 'sanyogita@ehostinguk.com', 'Under ₹2 crores', 'testing', 'testing', 'Testing of news content', NULL, 'testing', NULL, NULL, 1, '2020-07-28 18:31:43', '2020-07-28 18:31:43'),
(7, NULL, NULL, NULL, 'Ramji', 'sharma', '7017763206', 'ramji@ehostinguk.com', '', '', '20 MICRONS LTD.', '', NULL, '', NULL, NULL, 1, '2020-09-02 13:12:34', '2020-09-02 13:12:34'),
(8, NULL, NULL, NULL, 'Ramji', 'sharma', '7017763206', 'ramji@ehostinguk.com', '', '', '20 MICRONS LTD.', '', NULL, '', NULL, NULL, 1, '2020-09-02 13:32:52', '2020-09-02 13:32:52'),
(9, NULL, NULL, NULL, 'Ramji', 'sharma', '7017763206', 'ramji@ehostinguk.com', '', '', '20 MICRONS LTD.', '', NULL, '', NULL, NULL, 1, '2020-09-02 13:35:18', '2020-09-02 13:35:18'),
(10, NULL, NULL, NULL, 'India', 'Internets', '988987678', 'sanyogita@ehostinguk.com', '0-25 crores', '', 'india internets', '', NULL, 'testing', NULL, NULL, 1, '2020-10-26 11:47:21', '2020-10-26 11:47:21'),
(11, NULL, NULL, NULL, 'sanyogita', 'Internets', '988987678', 'sanyogita@ehostinguk.com', '26-100 crores', '', 'india internets', 'FAQs', NULL, 'test', NULL, NULL, 1, '2020-10-26 11:47:59', '2020-10-26 11:47:59'),
(12, NULL, NULL, NULL, 'sanyogita', 'patel', '9685805313', 'sanyogita@ehostinguk.com', '1000+ crores', '', 'food b', 'tester', NULL, 'testing', NULL, NULL, 1, '2020-10-26 12:18:07', '2020-10-26 12:18:07'),
(13, NULL, NULL, NULL, 'Ramji', 'sharma', '07017763206', 'ramji@indiaint.com', '26-100 crores', '', 'Alliance Web Solutions', 'wordpress', NULL, 'test', NULL, NULL, 1, '2020-10-27 13:59:48', '2020-10-27 13:59:48'),
(14, NULL, NULL, NULL, 'sanyogita', 'patel', '989878987', 'sanyogita@ehostinguk.com', '0-25 crores', '', 'india internets', 'FAQs', NULL, 'test', NULL, NULL, 1, '2020-11-12 11:20:39', '2020-11-12 11:20:39'),
(15, NULL, NULL, NULL, 'sanyogita', 'patel', '9878987898', 'sanyogita@ehostinguk.com', '26-100 crores', '', 'india internets', 'test', NULL, 'test', NULL, NULL, 1, '2020-11-12 11:21:36', '2020-11-12 11:21:36'),
(16, NULL, NULL, NULL, 'ramji', 'sharma', '7017763206', 'ramji@ehostinguk.com', '26-100 crores', '', 'Alliance Web Solutions', 'test', NULL, 'This is test', NULL, NULL, 1, '2020-11-12 05:22:00', '2020-11-12 05:22:00'),
(17, NULL, NULL, NULL, 'India', 'Internets', '988987678', 'sanyogita@ehostinguk.com', '26-100 crores', '', 'india internets test', '', NULL, 'test', NULL, NULL, 1, '2020-11-12 05:22:26', '2020-11-12 05:22:26'),
(18, NULL, NULL, NULL, 'India', 'Internets', '988987678', 'sanyogita@ehostinguk.com', '26-100 crores', '', 'india internets', '', NULL, 'test', NULL, NULL, 1, '2020-11-12 05:45:25', '2020-11-12 05:45:25'),
(19, NULL, NULL, NULL, 'Ramji', 'sharma', '07017763206', 'ramji@indiaint.com', '0-25 crores', '', 'Alliance Web Solutions', 'test', NULL, 'test', NULL, NULL, 1, '2020-11-12 05:45:58', '2020-11-12 05:45:58'),
(20, NULL, NULL, NULL, 'sanyogita', 'Internets', '988987678', 'sanyogita@ehostinguk.com', '101-500 crores', '', 'test', 'FAQs', NULL, 'test', NULL, NULL, 1, '2020-11-12 05:46:40', '2020-11-12 05:46:40'),
(21, NULL, NULL, NULL, 'Ramji', 'sharma', '07017763206', 'ramji@indiaint.com', '26-100 crores', '', 'Alliance Web Solutions', 'test', NULL, 'test', NULL, NULL, 1, '2020-11-12 05:47:49', '2020-11-12 05:47:49'),
(22, NULL, NULL, NULL, 'SANYOGITA', 'PATEL', '9685805313', 'sanyogita@ehostinguk.com', '26-100 crores', '', 'india internets', 'Volume I - Issue 3', NULL, 'test', NULL, NULL, 1, '2020-11-12 05:48:35', '2020-11-12 05:48:35'),
(23, NULL, NULL, NULL, 'sanyogita', 'patel', '989878987', 'sanyogita@ehostinguk.com', '26-100 crores', '', 'india internets', 'FAQs', NULL, 'test', NULL, NULL, 1, '2020-11-12 07:47:30', '2020-11-12 07:47:30'),
(24, NULL, NULL, NULL, 'India Internet', 'India Internet', '7017763206', 'test@indiaint.com', '0-25 crores', '', 'Alliance Web Solutions', 'test', NULL, 'This is test', NULL, NULL, 1, '2020-11-13 01:26:16', '2020-11-13 01:26:16'),
(25, NULL, NULL, NULL, 'Fathima', '', '9985815641', 'fareensastrite@gmail.com', '', '', 'Kings warehouse', 'Owner', NULL, 'We have a warehouse at trichy and is available for rent.current built up is 10000sqft located on a 40000sqft land. Do let us know if you have any requirement. Its 10 mins drive from trichy railway station and on trichy dindugal road. Pls reach us at 9985815641/9052799940', NULL, NULL, 1, '2020-11-15 05:31:34', '2020-11-15 05:31:34'),
(26, NULL, NULL, NULL, 'Tarkeswar', 'Reddy', '6370140193', 'tarkeswar666@gmail.com', '0-25 crores', '', 'Navata Road Transport', 'Clerk', NULL, 'I want join in your organization. \r\n\r\nNo issue in salary whatever.', NULL, NULL, 1, '2020-11-15 06:35:52', '2020-11-15 06:35:52'),
(27, NULL, NULL, NULL, 'Tarkeswar', 'Reddy', '6370140193', 'tarkeswar666@gmail.com', '0-25 crores', '', 'Navata Road Transport', 'Clerk', NULL, 'I want join in your organization. \r\n\r\nNo issue in salary whatever.', NULL, NULL, 1, '2020-11-15 06:35:58', '2020-11-15 06:35:58'),
(28, NULL, NULL, NULL, 'NRUSINGHA', 'SAHU', '+919776735552', 'sahunp@yahoo.co.in', '501-1000 crores', '', 'SURAT GOODS TRANSPORT PVT. LTD', 'SENIOR MANAGER CREDIT CONTROL', NULL, 'Dear Sir,\r\nI have career experience of 15 years & 09 years of experience working as Manager Credit Control.\r\nI want to join in your esteemed organisation.', NULL, NULL, 1, '2020-11-16 07:44:12', '2020-11-16 07:44:12'),
(29, NULL, NULL, NULL, 'Pankaj', 'Tiwari', '8459328610', 'pankaj35473@gmail.com', '', '', 'Tci freight', 'Super vaijar', NULL, '', NULL, NULL, 1, '2020-11-16 09:25:23', '2020-11-16 09:25:23'),
(30, NULL, NULL, NULL, 'Himanshu', 'Dadhich', '8860432435', 'himanshubanti02@gmail.com', '', '', 'Independent', 'Manager', NULL, 'Searching a job in warehouse or logistics', NULL, NULL, 1, '2020-11-19 00:03:31', '2020-11-19 00:03:31'),
(31, NULL, NULL, NULL, 'Himanshu', 'Dadhich', '8860432435', 'himanshubanti02@gmail.com', '0-25 crores', '', 'Independent', 'Manager', NULL, 'Searching a job in warehouse or logistics', NULL, NULL, 1, '2020-11-19 00:03:36', '2020-11-19 00:03:36'),
(32, NULL, NULL, NULL, 'Mohit', 'Dung', '9711497348', 'mohit.dung@jublfood.com', '1000+ crores', '', 'JFL', 'Manager', NULL, 'Inquiry on digital LR', NULL, NULL, 1, '2020-11-19 20:57:37', '2020-11-19 20:57:37'),
(33, NULL, NULL, NULL, 'Mohit', 'Dung', '9711497348', 'mohit.dung@jublfood.com', '1000+ crores', '', 'JFL', 'Manager', NULL, 'Inquiry on digital LR', NULL, NULL, 1, '2020-11-19 20:57:40', '2020-11-19 20:57:40'),
(34, NULL, NULL, NULL, 'Bipinchandra', 'patel', '9265285928', 'rtpsbrp@gmail.com', '0-25 crores', '', 'B and  B petroleum', 'partner', NULL, 'we are  selling quality product diesel     we located in Gujarat next to Rajshathan   we hv Essar Oil petrol pump  on  the way to Delhi  Mumbai highay  NR  Malpur Toll Nakaj  Name  B and B Petrolum company  open 24 hrs  we look forwad your reply to  give us chance to serve your fleet  Daily nos of  vechicle passing .  pls reply  we   will  work accordingly your company policy and rules strickly . we  wait for your positive reply  Bipin Patel', NULL, NULL, 1, '2020-11-20 22:02:38', '2020-11-20 22:02:38'),
(35, NULL, NULL, NULL, 'Bipinchandra', 'patel', '9265285928', 'rtpsbrp@gmail.com', '0-25 crores', '', 'B and  B petroleum', 'partner', NULL, 'we are  selling quality product diesel     we located in Gujarat next to Rajshathan   we hv Essar Oil petrol pump  on  the way to Delhi  Mumbai highay  NR  Malpur Toll Nakaj  Name  B and B Petrolum company  open 24 hrs  we look forwad your reply to  give us chance to serve your fleet  Daily nos of  vechicle passing .  pls reply  we   will  work accordingly your company policy and rules strickly . we  wait for your positive reply  Bipin Patel', NULL, NULL, 1, '2020-11-20 22:02:40', '2020-11-20 22:02:40'),
(36, NULL, NULL, NULL, 'test', 'test', '7017763206', 'ramji@indiaint.com', '0-25 crores', '', 'Alliance Web Solutions', '', NULL, 'This is test', NULL, NULL, 1, '2020-11-24 01:05:08', '2020-11-24 01:05:08'),
(37, NULL, NULL, NULL, 'India', 'Internets', '988987678', 'sanyogita@ehostinguk.com', '26-100 crores', '', 'india internets', 'Tester', NULL, 'testing for email logo', NULL, NULL, 1, '2020-11-24 06:08:02', '2020-11-24 06:08:02'),
(38, NULL, NULL, NULL, 'India', 'Internets', '988987678', 'sanyogita@ehostinguk.com', '26-100 crores', '', 'india internets', 'testing', NULL, 'test', NULL, NULL, 1, '2020-11-24 06:11:40', '2020-11-24 06:11:40'),
(39, NULL, NULL, NULL, 'Sureshbhai', 'Baria', '08141885158', 'sbaria1101@gmail.com', '0-25 crores', '', 'Lear Automotive india pvt ltd', 'Computer Operator ,Data Entry , QAD invoicing and Leadership', NULL, 'Job for inquiry\r\nLogistics Store and Dispatch Experience 6 year\r\nERP invoicing , Documents , Data Entry  and planning Dispatch', NULL, NULL, 1, '2020-11-27 03:46:58', '2020-11-27 03:46:58'),
(40, NULL, NULL, NULL, 'Varun', 'Lohia', '8527811849', 'varun.lohia@live.in', '101-500 crores', '', 'Matrumal Dhannalal Oil Mill', 'Director', NULL, '', NULL, NULL, 1, '2020-11-27 23:18:34', '2020-11-27 23:18:34'),
(41, NULL, NULL, NULL, 'Vivek', 'Sharma', '7014964026', 'vs343141@gmail.com', '', '', 'G. N logistics', 'Delhi', NULL, '', NULL, NULL, 1, '2020-11-29 04:08:39', '2020-11-29 04:08:39'),
(42, NULL, NULL, NULL, 'DILIP KUMAR', 'SINGH', '9924270913', 'dilip.singh2@outlook.com', '', '', 'INDIA', 'AHMEDABAD', NULL, 'FOR JOB', NULL, NULL, 1, '2020-11-30 03:22:32', '2020-11-30 03:22:32'),
(43, NULL, NULL, NULL, 'HARI SHANKAR', 'JHA', '9718165866', 'harishankarjha4@gmail.com', '101-500 crores', '', 'TCI', 'SUPERWISIOR', NULL, 'I WANT TO JOIN THIS COMPANY', NULL, NULL, 1, '2020-11-30 05:11:48', '2020-11-30 05:11:48'),
(44, NULL, NULL, NULL, 'HARI SHANKAR', 'JHA', '9718165866', 'harishankarjha4@gmail.com', '101-500 crores', '', 'TCI', 'SUPERWISIOR', NULL, 'I WANT TO JOIN THIS COMPANY', NULL, NULL, 1, '2020-11-30 05:11:48', '2020-11-30 05:11:48'),
(45, NULL, NULL, NULL, 'HARI SHANKAR', 'JHA', '9718165866', 'harishankarjha4@gmail.com', '101-500 crores', '', 'TCI', 'SUPERWISIOR', NULL, 'I WANT TO JOIN THIS COMPANY', NULL, NULL, 1, '2020-11-30 05:11:48', '2020-11-30 05:11:48'),
(46, NULL, NULL, NULL, 'Bipin kumar j', 'Jha', '9250776175', 'Bipin.jhaji2@gmail.com', '1000+ crores', '', 'Safexpress pvt ltd', 'Branch head', NULL, 'We have 20 year experiance of operation and finance depatrment', NULL, NULL, 1, '2020-11-30 09:47:46', '2020-11-30 09:47:46'),
(47, NULL, NULL, NULL, 'Ram diwakar', 'Bhatt', '9839563396', 'ramdiwakarbhatt@gmail.com', '0-25 crores', '', 'Sampark india logistics pvt limited', 'Operation supervisor', NULL, '', NULL, NULL, 1, '2020-12-01 11:07:19', '2020-12-01 11:07:19'),
(48, NULL, NULL, NULL, 'Ram diwakar', 'Bhatt', '9839563396', 'ramdiwakarbhatt@gmail.com', '0-25 crores', '', 'Sampark india logistics pvt limited', 'Operation supervisor', NULL, '', NULL, NULL, 1, '2020-12-01 11:09:03', '2020-12-01 11:09:03'),
(49, NULL, NULL, NULL, 'Pritiranjan behera', 'Om', '9933170049', 'oram51569@gmail.com', '0-25 crores', '', 'Lets transport', 'City operation manager', NULL, 'Dear Sir Madam\r\nMy self pritiranjan behera\r\nMy work experience 12 years Logistics operations', NULL, NULL, 1, '2020-12-02 08:20:21', '2020-12-02 08:20:21'),
(50, NULL, NULL, NULL, 'OBAIDUR RAHMAN', 'KHAN', '9637417885', 'rahmanobaidur336@gmail.com', '0-25 crores', '', 'SABA LOGISTICS', 'MUMBAI', NULL, 'I WANT TO ATTACHED MY CONTAINERS FLEET IN YOUR COMPANY FOR LOADINGS', NULL, NULL, 1, '2020-12-02 12:37:45', '2020-12-02 12:37:45'),
(51, NULL, NULL, NULL, 'PANKAJ', 'RANAKOTI', '09917619100', 'ranakotipankaj111@gmail.com', '', '', 'Genius consultant ltd', 'HR', NULL, '', NULL, NULL, 1, '2020-12-03 21:27:01', '2020-12-03 21:27:01'),
(52, NULL, NULL, NULL, 'Muneesh', 'Kumar', '9882717717', 'munish.kanyan7717@gmail.com', '1000+ crores', '', 'Tvs supply chain solution', 'Asst Manager', NULL, '', NULL, NULL, 1, '2020-12-03 23:05:46', '2020-12-03 23:05:46'),
(53, NULL, NULL, NULL, 'umesh', 'gupta', '998877665544', 'umeshg@ehostinguk.com', '101-500 crores', '', 'Indiainternet', 'test', NULL, 'redsds', NULL, NULL, 1, '2020-12-04 03:17:27', '2020-12-04 03:17:27'),
(54, NULL, NULL, NULL, 'Test', 'Test', '1234567890', 'rahul.sh@ehostinguk.com', '', '', 'test', 'test', NULL, '', NULL, NULL, 1, '2020-12-04 03:41:52', '2020-12-04 03:41:52'),
(55, NULL, NULL, NULL, 'test', 'test', '1234567890', 'rahul.sh@ehostinguk.com', '0-25 crores', '', 'test', 'test', NULL, '', NULL, NULL, 1, '2020-12-04 03:53:34', '2020-12-04 03:53:34'),
(56, NULL, NULL, NULL, 'Chetan', 'Sukhadia', '7977300622', 'chetan.sukhadia@nhtglobal.com', '0-25 crores', '', 'NHT GLOBAL', 'Office and Distribution Manager', NULL, 'Dear team Varuna logistics,\r\nI am Chetan from NHT Global. We are looking forward to appoint a 3PL for end to end supply chain operations (Import, warehousing and distribution) for our India market.\r\nCan someone from team call me to discuss our requirement in detail?', NULL, NULL, 1, '2020-12-04 05:15:54', '2020-12-04 05:15:54'),
(57, NULL, NULL, NULL, 'Krishna', 'Dubey', '8510088921', 'krishnadubeyd7@gmail.com', '', '', 'Om logistics ltd', 'Coordinator', NULL, '', NULL, NULL, 1, '2020-12-04 05:51:37', '2020-12-04 05:51:37'),
(58, NULL, NULL, NULL, 'Pratik', 'Mishra', '9415144299', 'pratikmishra1511@gmail.com', '', '', 'Safe express', 'Operation Assistance', NULL, '', NULL, NULL, 1, '2020-12-05 09:42:33', '2020-12-05 09:42:33'),
(59, NULL, NULL, NULL, 'Ravi Singh', 'Baroliya', '8475968226', 'ravibaroliya43@gmail.com', '0-25 crores', '', 'Mahindra logistics Ltd', 'Logistics exucetive', NULL, '', NULL, NULL, 1, '2020-12-07 01:51:25', '2020-12-07 01:51:25'),
(60, NULL, NULL, NULL, 'ABHILASH', 'YADAV', '7905055302', 'Abhilash912yadav@gmail.com', '101-500 crores', '', 'Helvoet rubber and plastics Technology India pvt ltd', '', NULL, 'any vacancies in production', NULL, NULL, 1, '2020-12-10 08:30:32', '2020-12-10 08:30:32'),
(61, NULL, NULL, NULL, 'ABHILASH', 'YADAV', '7905055302', 'Abhilash912yadav@gmail.com', '101-500 crores', '', 'Helvoet rubber and plastics Technology India pvt ltd', '', NULL, 'any vacancies in production', NULL, NULL, 1, '2020-12-10 08:30:32', '2020-12-10 08:30:32'),
(62, NULL, NULL, NULL, 'Mohsin gulamrasul', 'shaikh', '9372902386', 'mmshaikh825@gmail.com', '', '', 'Blackbuck zinka Logistics jalgaon maharashtra', 'Operation', NULL, '', NULL, NULL, 1, '2020-12-11 01:32:55', '2020-12-11 01:32:55'),
(63, NULL, NULL, NULL, 'Lalit', 'Prakash', '9639774534', 'lalitarya.dwt@gmail.com', '101-500 crores', '', 'Vinayak pharma Chem Equipment', 'Store Incharge', NULL, 'Can I Join your Logistics..I want join your logistics please promote me ...\r\nMy last Company was Schneider Electric  in Rudrapur( Bagwara).. my  destination  Ware House Associate Total experience 9 Year\r\nMy Current company is Vinayak Pharma in Haridwar as store Incharge .......', NULL, NULL, 1, '2020-12-11 20:34:13', '2020-12-11 20:34:13'),
(64, NULL, NULL, NULL, 'Lalit', 'Prakash', '9639774534', 'lalitarya.dwt@gmail.com', '101-500 crores', '', 'Vinayak pharma Chem Equipment', 'Store Incharge', NULL, 'Can I Join your Logistics..I want join your logistics please promote me ...\r\nMy last Company was Schneider Electric  in Rudrapur( Bagwara).. my  destination  Ware House Associate Total experience 9 Year\r\nMy Current company is Vinayak Pharma in Haridwar as store Incharge .......', NULL, NULL, 1, '2020-12-11 20:34:17', '2020-12-11 20:34:17'),
(65, NULL, NULL, NULL, 'Sanjay', 'Singh', '9818909179', 'indiapeb.sanjay@gmail.com', '26-100 crores', '', 'SPS Buildings Structure Pvt. Ltd', 'Dy. Manager', NULL, 'We are manufacturer of Pre - Engineered Building and we would like to associate with your organisation', NULL, NULL, 1, '2020-12-12 04:41:03', '2020-12-12 04:41:03'),
(66, NULL, NULL, NULL, 'Ravi Singh', 'Baroliya', '8475968226', 'ravibaroliya43@gmail.com', '26-100 crores', '', 'Ml logistics', 'Logistics exucetive', NULL, '', NULL, NULL, 1, '2020-12-15 23:23:23', '2020-12-15 23:23:23'),
(67, NULL, NULL, NULL, 'govind singh', 'bisht', '8126621527', 'govindb92@gmail.com', '0-25 crores', '', 'delhivery', 'dispatch executive', NULL, '', NULL, NULL, 1, '2020-12-17 02:03:10', '2020-12-17 02:03:10'),
(68, NULL, NULL, NULL, 'govind singh', 'bisht', '8126621527', 'govindb92@gmail.com', '0-25 crores', '', 'delhivery', 'dispatch executive', NULL, '', NULL, NULL, 1, '2020-12-17 02:03:13', '2020-12-17 02:03:13'),
(69, NULL, NULL, NULL, 'govind singh', 'bisht', '8126621527', 'govindb92@gmail.com', '0-25 crores', '', 'delhivery', 'dispatch executive', NULL, '', NULL, NULL, 1, '2020-12-17 02:03:14', '2020-12-17 02:03:14'),
(70, NULL, NULL, NULL, 'Vanktesh kumarr', 'SHARMA', '+19780743583', 'sivamkumar2015@gmail.com', '', '', 'Alkem', 'manpower supply', NULL, 'Sor rajput bamboo barrier', NULL, NULL, 1, '2020-12-17 03:17:59', '2020-12-17 03:17:59'),
(71, NULL, NULL, NULL, 'Vanktesh kumarr', 'SHARMA', '+19780743583', 'sivamkumar2015@gmail.com', '', '', 'Alkem', 'manpower supply', NULL, 'Sor rajput bamboo barrier', NULL, NULL, 1, '2020-12-17 03:18:03', '2020-12-17 03:18:03'),
(72, NULL, NULL, NULL, 'Priyavrat', 'Raj', '8271280914', 'priyavrat73@gmail.com', '0-25 crores', '', 'Sugam trasnport Pvt.Ltd', 'Operation excuitive', NULL, '', NULL, NULL, 1, '2020-12-17 10:12:11', '2020-12-17 10:12:11'),
(73, NULL, NULL, NULL, 'Rahul', 'Kashyap', '9161485995', 'kashyaprahul9161@gmail.com', '0-25 crores', '', 'Amazon', 'Manager', NULL, '', NULL, NULL, 1, '2020-12-18 06:44:21', '2020-12-18 06:44:21'),
(74, NULL, NULL, NULL, 'RAMESH KUMAR', 'YADAV', '7568426372', 'rameshry707174@gmail.com', '', '', 'kokoku', 'qulity assistance', NULL, 'new job', NULL, NULL, 1, '2020-12-21 23:20:52', '2020-12-21 23:20:52'),
(75, NULL, NULL, NULL, 'jamir', 'sheikh', '9922880047', 'jamir2016sheikh@gmail.com', '', '', 'AJ courier service', 'yes', NULL, '', NULL, NULL, 1, '2020-12-22 05:42:20', '2020-12-22 05:42:20'),
(76, NULL, NULL, NULL, 'Prakash', 'Choudhary', '9323622231', 'pchoudhary@sapat.com', '26-100 crores', '', 'Sapat', 'Supply Chain Manager', NULL, 'Need logistics solution', NULL, NULL, 1, '2020-12-22 06:20:18', '2020-12-22 06:20:18'),
(77, NULL, NULL, NULL, 'Ravish chandra', 'Dubey', '7309401682', 'ravish3151999@gmail.com', '', '', 'Arm logistics', '', NULL, 'Dear sir koi requirement h kya job ke liye Noida Ghaziabad site ho to pls call me', NULL, NULL, 1, '2020-12-22 23:04:04', '2020-12-22 23:04:04'),
(78, NULL, NULL, NULL, 'Amit', 'Koley', '9830194025', 'amit@sailashipping.com', '0-25 crores', '', 'SAILA SHIPPING', 'Director', NULL, 'Requirements of transportation all India.', NULL, NULL, 1, '2020-12-24 00:10:42', '2020-12-24 00:10:42'),
(79, NULL, NULL, NULL, 'Nikhil', 'Agarwal', '07677077077', 'contact@implexindia.co.in', '', '', 'Implex Enterprises Pvt Ltd', 'Director', NULL, 'Hello,\r\n\r\n\r\n\r\nHope you are in keeping safe and in good health.\r\n\r\n\r\nThis email is with regards to providing warehouses and fulfillment centers to corporates across all major cities in India.\r\n\r\n\r\nJust to name a few, we have plots available in Jamshedpur ranging from 1 acre to 5 acres which we are developing into warehouses/fulfillment centers as per the company’s requirement. The plots are right on the 4 lane highway connecting Jamshedpur to Ranchi/Kolkata/Odisha .\r\n\r\n\r\nWe also have warehousing land in Kolkata, Chennai, New Delhi, Bhubaneswar & Cuttack. All of which are right on the highway which is a very advantageous location in terms of connectivity.\r\n\r\n\r\nAll the designing and construction are done as per the company’s requirements and specifications and the warehouses are handed over for operations to the company within 4 months from the date of contract signing. \r\n\r\n\r\nWe are looking for companies who are on the lookout for state of the art warehouses. Would like to know how can your company help us in getting such companies or partnering with your company.\r\n\r\n\r\nHope to hear from you soon and looking forward for a healthy business relation. Please feel free to contact us for any further query.', NULL, NULL, 1, '2020-12-28 01:08:14', '2020-12-28 01:08:14'),
(80, NULL, NULL, NULL, 'mohan', 'sastha', '9486096223', 'mohansastha91@gmail.com', '', '', 'Southern Roadways Ltd', 'Office incharge', NULL, '', NULL, NULL, 1, '2020-12-31 03:58:26', '2020-12-31 03:58:26'),
(81, NULL, NULL, NULL, 'Sanyogita', 'Patel', '02147483647', 'sanyogita@indiaint.com', '0-25 crores', '', 'india internets', '', NULL, 'testing', NULL, NULL, 1, '2021-01-05 15:06:58', '2021-01-05 15:06:58'),
(82, NULL, NULL, NULL, 'sanyu', 'patel', '09893144604', 'sanyogita@ehostinguk.com', '0-25 crores', '', 'india internets', 'admin', NULL, 'testing', NULL, NULL, 1, '2021-01-05 15:23:18', '2021-01-05 15:23:18'),
(83, NULL, NULL, NULL, 'Dhruv', 'Garg', '9873500899', 'gargdhruv06@gmail.com', '101-500 crores', '', 'Max Standard Stores Pvt Ltd.', 'CEO', NULL, 'We are looking to outsource our central warehouse in Delhi NCR region. We have 15 retail stores with an area of more than 2 lac sq ft along with a wholesale wing where we supply apparel all over India. \r\nwww.globalrepublic.in', NULL, NULL, 1, '2021-01-08 12:57:05', '2021-01-08 12:57:05'),
(84, NULL, NULL, NULL, 'Dhruv', 'Garg', '9873500899', 'gargdhruv06@gmail.com', '101-500 crores', '', 'Max Standard Stores Pvt Ltd.', 'CEO', NULL, 'We are looking to outsource our central warehouse in Delhi NCR region. We have 15 retail stores with an area of more than 2 lac sq ft along with a wholesale wing where we supply apparel all over India. \r\nwww.globalrepublic.in', NULL, NULL, 1, '2021-01-08 12:57:06', '2021-01-08 12:57:06'),
(85, NULL, NULL, NULL, 'Dhruv', 'Garg', '9873500899', 'gargdhruv06@gmail.com', '101-500 crores', '', 'Max Standard Stores Pvt Ltd.', 'CEO', NULL, 'We are looking to outsource our central warehouse in Delhi NCR region. We have 15 retail stores with an area of more than 2 lac sq ft along with a wholesale wing where we supply apparel all over India. \r\nwww.globalrepublic.in', NULL, NULL, 1, '2021-01-08 12:57:07', '2021-01-08 12:57:07'),
(86, NULL, NULL, NULL, 'Deepak', 'Kumar', '7073847293', 'deepak11kumarsihag@gmail.com', '', '', 'All india contanior service', 'Cantanior', NULL, '', NULL, NULL, 1, '2021-01-09 07:55:13', '2021-01-09 07:55:13'),
(87, NULL, NULL, NULL, 'Amit Kumar', 'Verma', '9646030990', 'akvchd@rediff.com', '', '', 'Modern Automobiles', 'GM', NULL, 'Sir, I am working as GM in Modern Automobiles, Ambala, Here i am looking Sales,Services  for Eicher Trucks and Buses, Now, I wants to explore my skills and ability in the field for transport. You are requested to please guide me how to associate with you as transporter.\r\nthanks & regards', NULL, NULL, 1, '2021-01-10 01:13:54', '2021-01-10 01:13:54'),
(88, NULL, NULL, NULL, 'Amit Kumar', 'Verma', '9646030990', 'akvchd@rediff.com', '', '', 'Modern Automobiles', 'GM', NULL, 'Sir, I am working as GM in Modern Automobiles, Ambala, Here i am looking Sales,Services  for Eicher Trucks and Buses, Now, I wants to explore my skills and ability in the field for transport. You are requested to please guide me how to associate with you as transporter.\r\nthanks & regards', NULL, NULL, 1, '2021-01-10 01:13:56', '2021-01-10 01:13:56'),
(89, NULL, NULL, NULL, 'Wasim Saadullah Khan', 'Khan', '9372895876', 'wasimchefgfood@gmail.com', '0-25 crores', '', 'KD Logistics', 'Back office Executive', NULL, '', NULL, NULL, 1, '2021-01-11 10:02:58', '2021-01-11 10:02:58'),
(90, NULL, NULL, NULL, 'Mamidala', 'Harish', '09700092979', 'harishmamidala2@gmail.com', '', '', 'MBD Group', 'Warehouse supervisor', NULL, 'Dear sir/Ma\'m,\r\n\r\nThis is M.HARISH\r\n\r\nThis mail is Regarding applying for job (warehouse operations ,logistics,  executive)\r\n\r\nPlease consider my resume if any vacancies are there in your company\r\n\r\n(Resume.doc attached) \r\n\r\n---------------------------------------------------------------------------------------\r\nREGARDS\r\n\r\nM.HARISH\r\n9700092979\r\nHyderabad \r\n---------------------------------------------------------------------------------------\r\nThanks in advance', NULL, NULL, 1, '2021-01-12 01:30:37', '2021-01-12 01:30:37'),
(91, NULL, NULL, NULL, 'test', 'test', '01111111111', 'test@gmail.com', '101-500 crores', '', 'test', 'test', NULL, 'test mail', NULL, NULL, 1, '2021-01-13 00:37:02', '2021-01-13 00:37:02'),
(92, NULL, NULL, NULL, 'Vinod', 'Dixit', '7056762188', 'vinod.dixit@varuna.net', '', '', 'Varuna integrated logistic privet limited', 'Asst.manager', NULL, '', NULL, NULL, 1, '2021-01-14 23:43:47', '2021-01-14 23:43:47'),
(93, NULL, NULL, NULL, 'Vinod', 'Dixit', '7056762188', 'vinod.dixit@varuna.net', '', '', 'Varuna integrated logistic privet limited', 'Asst.manager', NULL, '', NULL, NULL, 1, '2021-01-14 23:43:49', '2021-01-14 23:43:49'),
(94, NULL, NULL, NULL, 'Vinod', 'Dixit', '7056762188', 'vinod.dixit@varuna.net', '', '', 'Varuna integrated logistic privet limited', 'Asst.manager', NULL, '', NULL, NULL, 1, '2021-01-14 23:43:52', '2021-01-14 23:43:52'),
(95, NULL, NULL, NULL, 'Sagar', 'garg', '+919464333111', 'info@haripharmaceuticals.com', '0-25 crores', '', 'Hari Pharmaceuticals', 'Properietor', NULL, 'I have warehouse located at National highway NH-7 with 10000 square feet. If required then please call.', NULL, NULL, 1, '2021-01-15 02:45:45', '2021-01-15 02:45:45'),
(96, NULL, NULL, NULL, 'atul', 'srivastav', '8173006953', 'atul92540@gmail.com', '', '', 'apml', 'cashier', NULL, 'looking for vacancy', NULL, NULL, 1, '2021-01-15 05:35:31', '2021-01-15 05:35:31'),
(97, NULL, NULL, NULL, 'NAYAN', 'Lohi', '8390821117', 'nayanlohi173314@gmail.com', '0-25 crores', '', 'Shree naveen oriant', 'Manager', NULL, '', NULL, NULL, 1, '2021-01-17 06:03:02', '2021-01-17 06:03:02'),
(98, NULL, NULL, NULL, 'Gaurav', 'Patankar', '9850211455', 'patankarg84@gmail.com', '0-25 crores', '', 'Shree Navin Orient Mailspeed transport service', 'Manger', NULL, 'I have many experience in share Navin Orient Mailspeed transport service in Mumbai and my branch office nagpur', NULL, NULL, 1, '2021-01-17 06:03:40', '2021-01-17 06:03:40'),
(99, NULL, NULL, NULL, 'Gaurav', 'Patankar', '9850211455', 'patankarg84@gmail.com', '0-25 crores', '', 'Shree Navin Orient Mailspeed transport service', 'Manger', NULL, 'I have many experience in share Navin Orient Mailspeed transport service in Mumbai and my branch office nagpur', NULL, NULL, 1, '2021-01-17 06:03:45', '2021-01-17 06:03:45'),
(100, NULL, NULL, NULL, 'Gaurav', 'Patankar', '9850211455', 'patankarg84@gmail.com', '0-25 crores', '', 'Shree Navin Orient Mailspeed transport service', 'Manger', NULL, 'I have many experience in SNOMTS', NULL, NULL, 1, '2021-01-17 06:07:03', '2021-01-17 06:07:03'),
(101, NULL, NULL, NULL, 'Gaurav', 'Patankar', '9850211455', 'patankarg84@gmail.com', '0-25 crores', '', 'Shree Navin Orient Mailspeed transport service', 'Manger', NULL, 'I have many experience in SNOMTS', NULL, NULL, 1, '2021-01-17 06:07:05', '2021-01-17 06:07:05'),
(102, NULL, NULL, NULL, 'Krishna', 'Bhagat', '8620974398', 'krishnabhagat.8620@gmail.com', '0-25 crores', '', 'Teleperfomance', 'CSA', NULL, 'Is there any job openings in this reputed company I\'m interested for doing work with a reputed company like yours.please reply', NULL, NULL, 1, '2021-01-17 10:08:59', '2021-01-17 10:08:59'),
(103, NULL, NULL, NULL, 'Ranjeet Singh', '8107063413', '8700687521', 'ranjeet.singh@safexpess.com', '0-25 crores', '', 'Experiance = 3 sale company name= safexpress transport logistic', 'Company name transport Logistics safexpress', NULL, '', NULL, NULL, 1, '2021-01-18 03:53:51', '2021-01-18 03:53:51'),
(104, NULL, NULL, NULL, 'Ranjeet Singh', '8107063413', '8700687521', 'ranjeet.singh@safexpess.com', '0-25 crores', '', 'Experiance = 3 sale company name= safexpress transport logistic', 'Company name transport Logistics safexpress', NULL, '', NULL, NULL, 1, '2021-01-18 03:53:54', '2021-01-18 03:53:54'),
(105, NULL, NULL, NULL, 'Gurudutt', 'Rustogi', '8147700785', 'ccfblr@outlook.com', '0-25 crores', '', 'Care Cargo Forwarders', 'Manager', NULL, 'We require 6-7 Single Axel 32 feet Containers in a week', NULL, NULL, 1, '2021-01-18 05:40:12', '2021-01-18 05:40:12'),
(106, NULL, NULL, NULL, 'Terry', 'D.', '8102440753', 'adi@ndmails.com', '', '', 'Terry D.', '', NULL, 'Just wanted to ask if you would be interested in getting external help with graphic design? We do all design work like banners, advertisements, photo edits, logos, flyers, etc. for a fixed monthly fee. \r\n\r\nWe don\'t charge for each task. What kind of work do you need on a regular basis? Let me know and I\'ll share my portfolio with you.', NULL, NULL, 1, '2021-01-19 03:32:29', '2021-01-19 03:32:29'),
(107, NULL, NULL, NULL, 'SUNILKUMAR', 'SHAH', '9898285336', 'shah.sj3@gmail.com', '0-25 crores', '', 'Chirag petroleum', 'Petrol pump', NULL, 'DIESEL SALES', NULL, NULL, 1, '2021-01-19 04:44:33', '2021-01-19 04:44:33'),
(108, NULL, NULL, NULL, 'Umesh', 'Prajapati', '9324370559', 'umeshprajapati@09rediffmail.com', '26-100 crores', '', 'Pnx logistics pvt Ltd', 'Oppration incharge', NULL, '', NULL, NULL, 1, '2021-01-20 04:31:09', '2021-01-20 04:31:09'),
(109, NULL, NULL, NULL, 'Umesh', 'Prajapati', '9324370559', 'umeshprajapati8879288503@gmail.com', '26-100 crores', '', 'Pnx logistics pvt Ltd', 'Oppration incharge', NULL, 'Yes', NULL, NULL, 1, '2021-01-20 04:34:23', '2021-01-20 04:34:23'),
(110, NULL, NULL, NULL, 'Jyoti', 'Yadav', '09996822690', 'Jyotiyadav277@gmail.com', '', '', 'Searching job', '', NULL, 'I am looking for job.', NULL, NULL, 1, '2021-01-20 04:41:11', '2021-01-20 04:41:11'),
(111, NULL, NULL, NULL, 'Ashish', 'Shukla', '72368229999', 'ashishshukla18691@gmail.com', '1000+ crores', '', 'Delhivery', 'Team Leader', NULL, 'Welll', NULL, NULL, 1, '2021-01-20 10:29:49', '2021-01-20 10:29:49'),
(112, NULL, NULL, NULL, 'Deepak', 'Tiwari', '08543071708', 'deepakons1996@gmail.com', '0-25 crores', '', 'Surekha technik Pvt Ltd', 'Store Incharge', NULL, 'Aap ke Wearhouse me vacancy hai', NULL, NULL, 1, '2021-01-20 19:25:55', '2021-01-20 19:25:55'),
(113, NULL, NULL, NULL, 'Deepak', 'Tiwari', '08543071708', 'deepakons1996@gmail.com', '0-25 crores', '', 'Surekha technik Pvt Ltd', 'Store Incharge', NULL, 'Aap ke Wearhouse me vacancy hai', NULL, NULL, 1, '2021-01-20 19:25:55', '2021-01-20 19:25:55'),
(114, NULL, NULL, NULL, 'Dharmesh', 'Sakariya', '9714886861', 'kurmy.corporations@gmail.com', '0-25 crores', '', 'KURMY CORPORATIONS', 'MANAGER', NULL, 'i am looking for warehouse for storing and dispatching of PMDI, polyol and TPU surrounding Delhi, Noida, Haryana and Punjab', NULL, NULL, 1, '2021-01-20 23:40:54', '2021-01-20 23:40:54'),
(115, NULL, NULL, NULL, 'Keshab', 'Joshi', '7011099980', 'joshi.keshab91@gmail.com', '', '', 'Bullet Logistics India Pvt. Ltd', 'Senior Operations', NULL, '', NULL, NULL, 1, '2021-01-21 02:26:17', '2021-01-21 02:26:17'),
(116, NULL, NULL, NULL, 'Ganesh', 'Pawar', '9011101375', 'ganeshlp23@gmail.com', '', '', 'Ganesh pawar', 'Sar office chair repair ka qoteshon diya tha plz tell me something', NULL, '', NULL, NULL, 1, '2021-01-21 04:23:45', '2021-01-21 04:23:45'),
(117, NULL, NULL, NULL, 'Dipak', 'JADHAV', '7676773384', 'jadhavdeepak45297@gmail.com', '', '', 'Transport', 'Call me', NULL, '10pass', NULL, NULL, 1, '2021-01-21 05:59:21', '2021-01-21 05:59:21'),
(118, NULL, NULL, NULL, 'Dipak', 'JADHAV', '7676773384', 'jadhavdeepak45297@gmail.com', '', '', 'Transport', 'Call me', NULL, '10pass', NULL, NULL, 1, '2021-01-21 05:59:24', '2021-01-21 05:59:24'),
(119, NULL, NULL, NULL, 'Jaydeep', 'Solanki', '9924974635', 'jaydeepsolanki1994@gmail.com', '', '', 'Gogreen wearhouses Pvt Ltd', 'Business developer', NULL, '', NULL, NULL, 1, '2021-01-21 12:25:14', '2021-01-21 12:25:14'),
(120, NULL, NULL, NULL, 'Jaydeep', 'Solanki', '9924974635', 'jaydeepsolanki1994@gmail.com', '', '', 'Gogreen wearhouses Pvt Ltd', 'Business developer', NULL, 'Are you working gujarat??', NULL, NULL, 1, '2021-01-21 12:25:22', '2021-01-21 12:25:22'),
(121, NULL, NULL, NULL, 'Subha', 'Mandal', '8637541657', 'subhamandal04101992@gmail.com', '', '', 'BCPL Railway', 'Siti Supervisor job', NULL, 'Any job Kolkata', NULL, NULL, 1, '2021-01-22 03:00:08', '2021-01-22 03:00:08'),
(122, NULL, NULL, NULL, 'VARUN', 'KUMAR', '9652916154', 'varun.kumar@kanoriachem.com', '101-500 crores', '', 'kanoria chemicals and industries limited', 'sr officer', NULL, '', NULL, NULL, 1, '2021-01-22 05:12:04', '2021-01-22 05:12:04'),
(123, NULL, NULL, NULL, 'Sumit', 'Gupta', '09310158069', 'sumitg074@gmail.com', '0-25 crores', '', 'Hindveda Pvt ltd', 'Operations manager', NULL, 'Looking for a job change plz help me', NULL, NULL, 1, '2021-01-23 12:13:41', '2021-01-23 12:13:41'),
(124, NULL, NULL, NULL, 'Manoj', 'Kumar', '8168622598', 'manojkaimri1993@gmail.com', '', '', 'Ravi integrated logistics India Pvt Ltd', 'Branch incharge', NULL, '', NULL, NULL, 1, '2021-01-24 23:56:31', '2021-01-24 23:56:31'),
(125, NULL, NULL, NULL, 'Manoj', 'Kumar', '8168622598', 'manojkaimri1993@gmail.com', '1000+ crores', '', 'Ravi integrated logistics India Pvt Ltd', 'Branch incharge', NULL, '', NULL, NULL, 1, '2021-01-24 23:56:36', '2021-01-24 23:56:36'),
(126, NULL, NULL, NULL, 'Nithesh', 'Bn', '08838616921', 'south.sales@nittsulogistics.co.in', '26-100 crores', '', 'Nittsu Logistics (India) Pvt Ltd', 'Senior executive - BDM', NULL, 'We are looking for vehicle support in the LH process. Kindly call us and will share in detail way.', NULL, NULL, 1, '2021-01-25 05:14:18', '2021-01-25 05:14:18'),
(127, NULL, NULL, NULL, 'Praveen Kumar', 'Dudiki', '9494818051', 'praveendpk123@gmail.com', '101-500 crores', '', 'Shahi Exports Pvt ltd', 'Logistics Supervisor', NULL, 'Dear sir,\r\nI am searching for a job,\r\ni have 3  years experience in logistics and documentation.\r\ni am ready to join from 1 st Feb 2021. kindly give an opportunity.\r\n\r\nThanks and Regards,\r\nD.Praveen Kumar,\r\n9494818051.', NULL, NULL, 1, '2021-01-25 06:18:22', '2021-01-25 06:18:22'),
(128, NULL, NULL, NULL, 'Aman', 'Pal', '8874597879', 'Amanpal0102@gmail.com', '0-25 crores', '', 'Algor Supply Chain Solutions Pvt Ltd', 'Fleet incharge', NULL, '', NULL, NULL, 1, '2021-01-25 10:16:54', '2021-01-25 10:16:54'),
(129, NULL, NULL, NULL, 'SUMEET', 'KUMAR', '9050447200', 'sumeetsharma254@gmail.com', '0-25 crores', '', 'suntekaxpress pvt. ltd.', 'mis coordination', NULL, 'the company is devised in two brother and company is loss businesses', NULL, NULL, 1, '2021-01-27 02:55:05', '2021-01-27 02:55:05'),
(130, NULL, NULL, NULL, 'SUMEET', 'KUMAR', '9050447200', 'sumeetsharma254@gmail.com', '0-25 crores', '', 'suntekaxpress pvt. ltd.', 'mis coordination', NULL, 'the company is devised in two brother and company is loss businesses', NULL, NULL, 1, '2021-01-27 02:55:05', '2021-01-27 02:55:05'),
(131, NULL, NULL, NULL, 'Shrikant', 'Mishra', '9167883111', 'mishrashrikant46@gmail.com', '', '', 'Quess Crop Ltd', 'MIS Executive (Staffing)', NULL, 'Dear Sir,\r\n\r\nI am Interested job in Varuna Group.', NULL, NULL, 1, '2021-01-27 03:44:34', '2021-01-27 03:44:34'),
(132, NULL, NULL, NULL, 'Shrikant', 'Mishra', '9167883111', 'mishrashrikant46@gmail.com', '', '', 'Quess Crop Ltd', 'MIS Executive (Staffing)', NULL, 'Dear Sir,\r\n\r\nI am Interested job in Varuna Group.', NULL, NULL, 1, '2021-01-27 03:44:41', '2021-01-27 03:44:41'),
(133, NULL, NULL, NULL, 'Joe', 'Miller', '+12548593423', 'info@domainregistercorp.com', '', '', 'OUCZMRAJ', 'XQN4O4QY', NULL, 'Notice#: 491343\r\nDate: 2021-01-28  \r\n\r\nYOUR IMMEDIATE ATTENTION TO THIS MESSAGE IS ABSOLUTELY NECESSARY!\r\n\r\nYOUR DOMAIN varuna.net WILL BE TERMINATED WITHIN 24 HOURS\r\n\r\nWe have not received your payment for the renewal of your domain varuna.net\r\n\r\nWe have made several attempts to reach you by phone, to inform you regarding the TERMINATION of your domain varuna.net\r\n\r\nCLICK HERE FOR SECURE ONLINE PAYMENT: https://domain-register.ga/?n=varuna.net&r=a&t=1611757535&p=v1\r\n\r\nIF WE DO NOT RECEIVE YOUR PAYMENT WITHIN 24 HOURS, YOUR DOMAIN varuna.net WILL BE TERMINATED\r\n\r\nCLICK HERE FOR SECURE ONLINE PAYMENT: https://domain-register.ga/?n=varuna.net&r=a&t=1611757535&p=v1\r\n\r\nACT IMMEDIATELY. \r\n\r\nThe submission notification varuna.net will EXPIRE WITHIN 24 HOURS after reception of this email', NULL, NULL, 1, '2021-01-27 07:25:43', '2021-01-27 07:25:43'),
(134, NULL, NULL, NULL, 'manish', 'dubey', '7753861725', 'manishdubey775386@gmail.com', '', '', 'v xpress', 'sr Operation Executive', NULL, 'Dear sir /Mam,\r\n\r\n5 YR WORKING WITH MNT EXPRESS CARGO  (A DIVISION OF MNT TRANSPORT INDIA PVT LTD ) 1 YR EXPERIENCE V XPRESS \r\n\r\nBest wishes ,\r\nManish Dubey\r\nMo-7753861725', NULL, NULL, 1, '2021-01-27 23:25:00', '2021-01-27 23:25:00'),
(135, NULL, NULL, NULL, 'Rahul', 'bhisikar', '9673424889', 'rahulbhisikar121292@gmail.com', '501-1000 crores', '', 'PBS oil industry ltd', 'Operation Executive', NULL, '', NULL, NULL, 1, '2021-01-27 23:42:35', '2021-01-27 23:42:35'),
(136, NULL, NULL, NULL, 'Anil Kumar', 'Singh', '9918201502', 'anilsingh8726228749@gmail.com', '', '', 'Nutri Agrovet pvt. Ltd. Co. Kanpur dehat', 'Electrical', NULL, 'Electrical working', NULL, NULL, 1, '2021-01-28 07:10:04', '2021-01-28 07:10:04'),
(137, NULL, NULL, NULL, 'Taiyyab', 'Khan', '9690315421', 'Taiyyabalikhan786@gmail.com', '1000+ crores', '', 'Indigo Airlines', 'Store Incharge', NULL, 'We should never giveup', NULL, NULL, 1, '2021-01-28 09:57:45', '2021-01-28 09:57:45'),
(138, NULL, NULL, NULL, 'test', 'test', '1111111111', 'test@gmail.com', '0-25 crores', '', 'test', 'test', NULL, 'test', NULL, NULL, 1, '2021-01-29 04:48:49', '2021-01-29 04:48:49'),
(139, NULL, NULL, NULL, 'test', 'test', '1111111111', 'test@gmail.com', '0-25 crores', '', 'test', 'test', NULL, 'test', NULL, NULL, 1, '2021-01-29 04:48:52', '2021-01-29 04:48:52'),
(140, NULL, NULL, NULL, 'Amit', 'Kumar', '9518440912', 'amitkalsan99@gmail.com', '', '', 'Varuna', 'Fleet executive', NULL, 'I wanna join Varuna group....', NULL, NULL, 1, '2021-01-29 05:58:03', '2021-01-29 05:58:03'),
(141, NULL, NULL, NULL, 'RAHUL', 'BHISIKAR', '9673424889', 'rahulbhisikar121292@gmail.com', '501-1000 crores', '', 'PBS Oil industry', 'logistic Manager', NULL, 'B2B business', NULL, NULL, 1, '2021-01-29 23:00:25', '2021-01-29 23:00:25'),
(142, NULL, NULL, NULL, 'Gaurav', 'Dwivedi', '7728891744', 'gaurav.fmcg@gmail.com', '501-1000 crores', '', 'Alstom', 'Warehouse manager', NULL, 'Looking for Job in Delhi NCR. \r\nHave heard alot about Varuna. Do let me.know if i can get an opportunity to join anytime.', NULL, NULL, 1, '2021-01-30 10:37:16', '2021-01-30 10:37:16'),
(143, NULL, NULL, NULL, 'Shrikant', 'Mishra', '9167883111', 'mishrashrikant46@gmail.com', '', '', 'Quess Corp Limited', 'MIS Executive - Staffing Management', NULL, 'Dear sir,\r\n\r\nI\'m interested job in Varuna Group.\r\n\r\nShrikant', NULL, NULL, 1, '2021-01-31 00:55:36', '2021-01-31 00:55:36'),
(144, NULL, NULL, NULL, 'Shrikant', 'Mishra', '9167883111', 'mishrashrikant46@gmail.com', '', '', 'Quess Corp Limited', 'MIS Executive - Staffing Management', NULL, 'Dear sir,\r\n\r\nI\'m interested job in Varuna Group.\r\n\r\nShrikant', NULL, NULL, 1, '2021-01-31 00:55:42', '2021-01-31 00:55:42'),
(145, NULL, NULL, NULL, 'Gurvinder', 'Singh', '9654503120', 'digitalsatnam@gmail.com', '0-25 crores', '', 'Satnam Digital', 'Partner', NULL, 'Hi Team\r\n\r\nWe are a E-Marketplace seller and we are looking for warehouse outsourcing for Amazon, Flipkart, cloudtail and others', NULL, NULL, 1, '2021-01-31 05:59:35', '2021-01-31 05:59:35'),
(146, NULL, NULL, NULL, 'Gurvinder', 'Singh', '9654503120', 'digitalsatnam@gmail.com', '0-25 crores', '', 'Satnam Digital', 'Partner', NULL, 'Hi Team\r\n\r\nWe are a E-Marketplace seller and we are looking for warehouse outsourcing for Amazon, Flipkart, cloudtail and others', NULL, NULL, 1, '2021-01-31 05:59:41', '2021-01-31 05:59:41'),
(147, NULL, NULL, NULL, 'Sandeep', 'Kaushik', '9053013420', 'sandeep.kaushik@varuna.net', '101-500 crores', '', 'Varuna integrated logistics Pvt. Ltd.', 'Branch manager', NULL, '', NULL, NULL, 1, '2021-02-01 03:28:41', '2021-02-01 03:28:41'),
(148, NULL, NULL, NULL, '?????? ?????', '?????', '9829363609', 'Naveenhappy8477@gmail.com', '0-25 crores', '', '??? ???????', '????', NULL, '???? ??? ,\r\n             ?????? ???? ??? ??????? ?????? ??? ????? ??????? ?????? ????? ??? ???? ???? ???? ???? ??????? .\r\n                                                  ?????? & ??????? \r\n                                                     ?????? ?????', NULL, NULL, 1, '2021-02-01 09:54:33', '2021-02-01 09:54:33'),
(149, NULL, NULL, NULL, 'Gourav', 'Kumar', '9756771287', 'gouravdhiman24@gmail.com', '', '', 'Tehri pulp & paper ltd.', 'Electrical maintenance engineer', NULL, 'Roles & Responsiblities- maintain all electric equipments, motor drive, instrument & pneumatic works', NULL, NULL, 1, '2021-02-01 23:24:10', '2021-02-01 23:24:10'),
(150, NULL, NULL, NULL, 'SUSHEEL', 'PRAJAPATI', '9005011424', 'sushilkrprajapati430@gmail.com', '0-25 crores', '', 'Varuna', 'Magaer', NULL, 'Yes', NULL, NULL, 1, '2021-02-03 21:28:44', '2021-02-03 21:28:44'),
(151, NULL, NULL, NULL, 'Anil', 'joshi', '8248219717', 'joshianil430@gmail.com', '0-25 crores', '', 'Skl', 'accountant', NULL, 'New Vacancy ... Account dept , Mis ,, warehouse ,, related', NULL, NULL, 1, '2021-02-05 01:52:07', '2021-02-05 01:52:07'),
(152, NULL, NULL, NULL, 'Anil', 'joshi', '8248219717', 'joshianil430@gmail.com', '0-25 crores', '', 'Skl', 'accountant', NULL, 'New Vacancy ... Account dept , Mis ,, warehouse ,, related', NULL, NULL, 1, '2021-02-05 01:52:09', '2021-02-05 01:52:09'),
(153, NULL, NULL, NULL, 'Anil', 'joshi', '8248219717', 'joshianil430@gmail.com', '0-25 crores', '', 'Skl', 'accountant', NULL, 'New Vacancy ... Account dept , Mis ,, warehouse ,, related', NULL, NULL, 1, '2021-02-05 01:52:10', '2021-02-05 01:52:10'),
(154, NULL, NULL, NULL, 'Lalit', 'Prakash', '9639774534', 'lalitarya.dwt@gmail.com', '101-500 crores', '', 'Schneider Electric', 'Ware house Associate', NULL, 'Sir I want to change jobs if you have any jobs  please call me .\r\nMy total experience is 9 Year in warehouse department (SCM) at Schneider Electric from rudrapur ...\r\nI am presently working in Store Incharge at Vinayak Pharma  from Haridwar \r\n\r\nThanks & Regards \r\nLalit Prakash \r\nMob. 9639774534', NULL, NULL, 1, '2021-02-05 23:21:56', '2021-02-05 23:21:56'),
(155, NULL, NULL, NULL, 'Lalit', 'Prakash', '9639774534', 'lalitarya.dwt@gmail.com', '101-500 crores', '', 'Schneider Electric', 'Ware house Associate', NULL, 'Sir I want to change jobs if you have any jobs  please call me .\r\nMy total experience is 9 Year in warehouse department (SCM) at Schneider Electric from rudrapur ...\r\nI am presently working in Store Incharge at Vinayak Pharma  from Haridwar \r\n\r\nThanks & Regards \r\nLalit Prakash \r\nMob. 9639774534', NULL, NULL, 1, '2021-02-05 23:21:59', '2021-02-05 23:21:59'),
(156, NULL, NULL, NULL, 'Devender', 'Kumar', '9999601166', 'mdrrana90@gmail.com', '', '', 'Warehousing', 'Owner', NULL, 'Do you need a warehouse in kundli sonipat haryana?', NULL, NULL, 1, '2021-02-06 05:30:28', '2021-02-06 05:30:28'),
(157, NULL, NULL, NULL, 'Yatin', 'Arora', '9991117877', 'yatinn700@gmail.com', '501-1000 crores', '', 'Logistics', 'Area Branch manager', NULL, 'Need Hr contact details', NULL, NULL, 1, '2021-02-07 13:19:38', '2021-02-07 13:19:38'),
(158, NULL, NULL, NULL, 'Yatin', 'Arora', '9991117877', 'yatinn700@gmail.com', '501-1000 crores', '', 'Logistics', 'Area Branch manager', NULL, 'Need Hr contact details', NULL, NULL, 1, '2021-02-07 13:19:42', '2021-02-07 13:19:42'),
(159, NULL, NULL, NULL, 'utkarsh', 'sharma', '9810322976', 'u.sharma@samsung.com', '1000+ crores', '', 'Samsung Data Systems', 'General Manager', NULL, 'Looking for Trucking Partners', NULL, NULL, 1, '2021-02-07 23:44:12', '2021-02-07 23:44:12'),
(160, NULL, NULL, NULL, 'utkarsh', 'sharma', '9810322976', 'u.sharma@samsung.com', '1000+ crores', '', 'Samsung Data Systems', 'General Manager', NULL, 'Looking for Trucking Partners', NULL, NULL, 1, '2021-02-07 23:44:17', '2021-02-07 23:44:17'),
(161, NULL, NULL, NULL, 'Dushyant', 'Tiwari', '8630403063', 'dushyant01071991@gmail.com', '', '', 'Lgb Manesar', 'Supervisor', NULL, 'Dear sir,\r\n\r\n If any vacancy related to me, pls let me know.\r\n\r\nRegards;\r\nDushyant Tiwari\r\n8630403063', NULL, NULL, 1, '2021-02-08 16:35:50', '2021-02-08 16:35:50'),
(162, NULL, NULL, NULL, 'Ghanshyam', 'Jaga', '7742966059', 'ghanshyamjaga56@gmail.com', '0-25 crores', '', 'Oprasition', 'Assistant', NULL, '', NULL, NULL, 1, '2021-02-09 11:53:13', '2021-02-09 11:53:13'),
(163, NULL, NULL, NULL, 'Yogesh', 'Garg', '09719062622', 'yanikgarg@gmail.com', '0-25 crores', '', 'Chandra prakash and sons', 'Manager', NULL, 'Diesel supply', NULL, NULL, 1, '2021-02-11 04:38:31', '2021-02-11 04:38:31'),
(164, NULL, NULL, NULL, 'Nawal', 'Singh', '7425072474', 'ns868120@gmail.com', '', '', 'Brig Gopal construction company', 'Store assistant', NULL, '', NULL, NULL, 1, '2021-02-12 04:08:25', '2021-02-12 04:08:25'),
(165, NULL, NULL, NULL, 'Vijay', 'Agrawal', '9662364520', 'avijayagrawal@gmail.com', '0-25 crores', '', 'Goyal traders', 'Vadodara', NULL, '', NULL, NULL, 1, '2021-02-12 22:16:33', '2021-02-12 22:16:33'),
(166, NULL, NULL, NULL, 'Karan', 'Siyag', '+917014147260', 'Karansiyag58@gmail.com', '1000+ crores', '', 'Blackbuck-zinka logistics Pvt. Ltd.', 'Retail sales officer', NULL, 'Any requirements?', NULL, NULL, 1, '2021-02-14 03:18:52', '2021-02-14 03:18:52'),
(167, NULL, NULL, NULL, 'Karan', 'Siyag', '+917014147260', 'Karansiyag58@gmail.com', '1000+ crores', '', 'Blackbuck-zinka logistics Pvt. Ltd.', 'Retail sales officer', NULL, 'Any requirements?', NULL, NULL, 1, '2021-02-14 03:18:57', '2021-02-14 03:18:57'),
(168, NULL, NULL, NULL, 'Pratik', 'Changede', '7574845628', 'pratik@fibre2fashion.com', '0-25 crores', '', 'Fibre2Fashion Pvt. Ltd.', 'General Manager - Ecommerce', NULL, 'Need a warehouse space on rent in Ahmedabad, Gujarat.', NULL, NULL, 1, '2021-02-15 03:10:11', '2021-02-15 03:10:11'),
(169, NULL, NULL, NULL, 'Mukesh', 'Gahtori', '8958503704', 'mukesh.gahtori09065@gmail.com', '', '', 'Transportation', 'Incharge', NULL, 'Plz confrm vacancy', NULL, NULL, 1, '2021-02-15 04:02:44', '2021-02-15 04:02:44'),
(170, NULL, NULL, NULL, 'Zubran', 'Mirza', '7879434405', 'evaanmirza143@gmail.com', '0-25 crores', '', 'MS enterprise', 'Sole proprietor', NULL, 'We need warehouse and logistics facility', NULL, NULL, 1, '2021-02-18 01:45:24', '2021-02-18 01:45:24'),
(171, NULL, NULL, NULL, 'Candy', 'Biscocho', '6128888872', 'candy@ucsteam.net', '1000+ crores', '', 'United Contract Services, Inc', 'Business Development', NULL, 'Hi! I\'m in your area and would be happy to visit your business and submit a bid for your recurring weekly (or more) janitorial and disinfection needs.  \r\n\r\nWould you like to compare pricing on your office cleaning service, or start having your space cleaned addressing your CoVid concerns?\r\n\r\nI\'d be happy to provide you with a no-obligation quote on your facilities cleaning.\r\n\r\nPlease simply respond and I will send next steps.\r\n\r\nCandy Biscocho \r\nBusiness Development\r\nUnited Contract Services, Inc\r\n(612) 888-8872\r\ncandy@ucsteam.net\r\n1161 Ringwood Ct # 170, San Jose, CA 95131\r\nhttps://www.candy@ucsteam.net  \r\n\r\nRespond with stop to optout.', NULL, NULL, 1, '2021-02-18 05:10:59', '2021-02-18 05:10:59'),
(172, NULL, NULL, NULL, 'Clementina', 'Joseph', '9925278021', 'clementina@suncityindustrialpark.com', '0-25 crores', '', 'Suncity Group', 'Business Head - Corporate Sales', NULL, 'Hope you are doing well. This Message is regarding our upcoming Project - Suncity Industrial Park which is spread over 316 acres of land in prime location on main Vadodara-Halol Gujarat 4 lane highway Industrial belt. We are open for sale of land / projects.For further information on this project please feel free to get in touch. Do share your Contact details and convenient time to speak.  ', NULL, NULL, 1, '2021-02-19 04:16:34', '2021-02-19 04:16:34'),
(173, NULL, NULL, NULL, 'Shivkant', 'Giri', '9644813849', 'shivkantgiri5@gmail.com', '26-100 crores', '', 'Kashish road carriers * darcl logistics ltd.', 'Branch incharge  *sr.supervisor in operation', NULL, 'I shivkant giri having good working knowledge in operation including booking to transhipment and requesting you to give me an opportunity to serve in your organisation for development and growth of company  and myself for which I shall ever be thankful to you. Thanking you.', NULL, NULL, 1, '2021-02-20 04:14:47', '2021-02-20 04:14:47'),
(174, NULL, NULL, NULL, 'Vishwajeet', 'Singh', '8770579587', 'vishwajeetsingh075@gmail.com', '', '', 'Varuna logistics', '', NULL, 'Sir I want to work in Varuna logistics company, but I am not able to apply in this, please guide me.', NULL, NULL, 1, '2021-02-21 09:45:32', '2021-02-21 09:45:32');
INSERT INTO `enquiries` (`id`, `form_id`, `type`, `name`, `first_name`, `last_name`, `phone`, `email`, `annual_sales`, `zip`, `company`, `title`, `subject`, `comment`, `data`, `document`, `status`, `created_at`, `updated_at`) VALUES
(175, NULL, NULL, NULL, 'Vishwajeet', 'Singh', '8770579587', 'vishwajeetsingh075@gmail.com', '', '', 'Varuna logistics', '', NULL, 'Sir I want to work in Varuna logistics company, but I am not able to apply in this, please guide me.', NULL, NULL, 1, '2021-02-21 09:45:34', '2021-02-21 09:45:34'),
(176, NULL, NULL, NULL, 'Pankaj Kumar tiwari', 'Tiwari', '8459328610', 'pankaj35472@gmail.com', '', '', 'Tci freight lyd', '', NULL, '', NULL, NULL, 1, '2021-02-22 09:52:41', '2021-02-22 09:52:41'),
(177, NULL, NULL, NULL, 'Mohit', 'Kumar', '7500533513', 'mohit.kumar_bba15@gla.ac.in', '', '', 'Varuna pvt ltd', 'Operation', NULL, '', NULL, NULL, 1, '2021-02-24 07:41:46', '2021-02-24 07:41:46'),
(178, NULL, NULL, NULL, 'Mohit', 'Kumar', '7500533513', 'mohit.kumar_bba15@gla.ac.in', '', '', 'Varuna pvt ltd', 'Operation', NULL, '', NULL, NULL, 1, '2021-02-24 07:41:47', '2021-02-24 07:41:47'),
(179, NULL, NULL, NULL, 'Mohit', 'Kumar', '7500533513', 'mohit.kumar_bba15@gla.ac.in', '', '', 'Varuna pvt ltd', 'Operation', NULL, '', NULL, NULL, 1, '2021-02-24 07:41:48', '2021-02-24 07:41:48'),
(180, NULL, NULL, NULL, 'Amol', 'Madane', '7030807470', 'amol.gits@gmail.com', '101-500 crores', '', 'Gits Food Products Pvt Ltd', 'Logistic Manager', NULL, 'Looking for FTL service providers to PAN India from Ex.Pune', NULL, NULL, 1, '2021-02-25 01:24:45', '2021-02-25 01:24:45'),
(181, NULL, NULL, NULL, 'Nagendra', 'Singh', '7878533519', 'ktspl1771@gmail.com', '', '', 'Konark Trucking Solutions Pvt Ltd', 'Director', NULL, 'Hi \r\nWe are a leading transport contractor based out of Jaipur. \r\nWe are looking 15T/18T single axle/Multi axle vehicles on long lease. \r\nPlease share your contact person details to discuss and proceed further.\r\nRegards \r\nNagendra', NULL, NULL, 1, '2021-02-25 05:18:29', '2021-02-25 05:18:29'),
(182, NULL, NULL, NULL, 'Ajay', 'Pandey', '7999352580', 'ajay.ajay.pandey58@gmail.com', '26-100 crores', '', 'Future group', 'Supply chain Manager', NULL, 'Dear Sir,\r\n           I  want to join in Varuna group.\r\n\r\n\r\n\r\nRegards,\r\nAjay Pandey \r\nMo 7999352580', NULL, NULL, 1, '2021-02-25 09:26:40', '2021-02-25 09:26:40'),
(183, NULL, NULL, NULL, 'rajender', 'singh', '09602195121', 'rsverma335524@gmail.com', '0-25 crores', '', 'AMAZON SELLER SERVICE PVT. LTD.', 'ASSOCIATE', NULL, '', NULL, NULL, 1, '2021-02-25 23:11:51', '2021-02-25 23:11:51'),
(184, NULL, NULL, NULL, 'rajender', 'singh', '09602195121', 'rsverma335524@gmail.com', '0-25 crores', '', 'AMAZON SELLER SERVICE PVT. LTD.', 'ASSOCIATE', NULL, '', NULL, NULL, 1, '2021-02-25 23:11:51', '2021-02-25 23:11:51'),
(185, NULL, NULL, NULL, 'rajender', 'singh', '09602195121', 'rsverma335524@gmail.com', '0-25 crores', '', 'AMAZON SELLER SERVICE PVT. LTD.', 'ASSOCIATE', NULL, '', NULL, NULL, 1, '2021-02-25 23:11:51', '2021-02-25 23:11:51'),
(186, NULL, NULL, NULL, 'rajender', 'singh', '09602195121', 'rsverma335524@gmail.com', '0-25 crores', '', 'AMAZON SELLER SERVICE PVT. LTD.', 'ASSOCIATE', NULL, '', NULL, NULL, 1, '2021-02-25 23:11:51', '2021-02-25 23:11:51'),
(187, NULL, NULL, NULL, 'Ghanshyam', 'Jaga', '7742966059', 'ghanshyamjaga56@gmail.com', '501-1000 crores', '', 'Safexpress Pvt.ltd.', 'Operation Senior assistant (supervisor)', NULL, 'I see a opportunity in your company', NULL, NULL, 1, '2021-02-28 22:36:04', '2021-02-28 22:36:04'),
(188, NULL, NULL, NULL, 'Ghanshyam', 'Jaga', '7742966059', 'ghanshyamjaga56@gmail.com', '501-1000 crores', '', 'Safexpress Pvt.ltd.', 'Operation Senior assistant (supervisor)', NULL, 'I see a opportunity in your company', NULL, NULL, 1, '2021-02-28 22:36:06', '2021-02-28 22:36:06'),
(189, NULL, NULL, NULL, 'Virendra', 'Singh', '07737072368', 'virendrasinghjerthi251@gmail.com', '501-1000 crores', '', 'Job', 'Warehouses manager', NULL, 'I am looking forward work with varuna group', NULL, NULL, 1, '2021-03-01 05:19:45', '2021-03-01 05:19:45'),
(190, NULL, NULL, NULL, 'Hitesh', 'Sharma', '9927057505', 'hiteshsharma4545@gmail.com', '101-500 crores', '', 'Shree Shubham Logistic Limited', 'Executive-Business Development', NULL, 'Dear Sir/Ma\'am \r\n     Please find the attached updated resume.\r\nEmail I\'d.  hiteshsharma4545@gmail.com\r\nMob- +919927057505, +91 6394475921\r\nCurrent Employer Shree Shubham Logistics Limited\r\nI did graduation B. A. from M J P R U Bareilly is  with scoring of 54% Marks.\r\nCurrently I\'m working with  Shree Shubham Logistics Limited as a Executive - Business Development.\r\nI also worked with Navjyoti Ltd and  Origo Commodities India Pvt Ltd.\r\nI looking forward much positive response as soon as earliest.\r\n\r\n\r\n\r\nThanks & Regards\r\nHitesh Sharma \r\nMobile : - 9927057505\r\n??????', NULL, NULL, 1, '2021-03-01 08:52:26', '2021-03-01 08:52:26'),
(191, NULL, NULL, NULL, 'Hitesh', 'Sharma', '9927057505', 'hiteshsharma4545@gmail.com', '101-500 crores', '', 'Shree Shubham Logistic Limited', 'Executive-Business Development', NULL, 'Dear Sir/Ma\'am \r\n     Please find the attached updated resume.\r\nEmail I\'d.  hiteshsharma4545@gmail.com\r\nMob- +919927057505, +91 6394475921\r\nCurrent Employer Shree Shubham Logistics Limited\r\nI did graduation B. A. from M J P R U Bareilly is  with scoring of 54% Marks.\r\nCurrently I\'m working with  Shree Shubham Logistics Limited as a Executive - Business Development.\r\nI also worked with Navjyoti Ltd and  Origo Commodities India Pvt Ltd.\r\nI looking forward much positive response as soon as earliest.\r\n\r\n\r\n\r\nThanks & Regards\r\nHitesh Sharma \r\nMobile : - 9927057505\r\n??????', NULL, NULL, 1, '2021-03-01 08:52:29', '2021-03-01 08:52:29'),
(192, NULL, NULL, NULL, 'Ravi Ranjan', 'Kumar', '9199206568', 'ranjankumarravi944@gmail.com', '501-1000 crores', '', 'Safe xpress private limited', '', NULL, '', NULL, NULL, 1, '2021-03-02 07:30:45', '2021-03-02 07:30:45'),
(193, NULL, NULL, NULL, 'Ravi Ranjan', 'Kumar', '9199206568', 'ranjankumarravi944@gmail.com', '501-1000 crores', '', 'Safe xpress private limited', '', NULL, '', NULL, NULL, 1, '2021-03-02 07:30:46', '2021-03-02 07:30:46'),
(194, NULL, NULL, NULL, 'Tribhuwan', 'Yadav', '08840209325', 'tribhuwanyadavtech@gmail.com', '', '', 'Safexpress pvt Ltd', 'Operations assistance', NULL, '', NULL, NULL, 1, '2021-03-03 02:16:17', '2021-03-03 02:16:17'),
(195, NULL, NULL, NULL, 'archit', 'aggarwal', '9899948496', 'mail.vsf@gmail.com', '26-100 crores', '', 'vidya sagar foods private limited', 'director', NULL, 'hi\r\nWe are looking for transportation from delhi to pan india and 3pl services in ahmedabad and bangalore.', NULL, NULL, 1, '2021-03-03 05:34:48', '2021-03-03 05:34:48'),
(196, NULL, NULL, NULL, 'palabatla', 'sumanth', '9866004400', 't-sumanth.palabatal@ideaentity.com', '101-500 crores', '', 'IDEA ENTITY', 'Business Analyst', NULL, 'Hello,\r\nHope you are Doing good and safe what to know few details please get in touch with me \r\n\r\nThanks and Regards', NULL, NULL, 1, '2021-03-04 23:18:34', '2021-03-04 23:18:34'),
(197, NULL, NULL, NULL, 'palabatla', 'sumanth', '9866004400', 't-sumanth.palabatal@ideaentity.com', '101-500 crores', '', 'IDEA ENTITY', 'Business Analyst', NULL, 'Hello,\r\nHope you are Doing good and safe what to know few details please get in touch with me \r\n\r\nThanks and Regards', NULL, NULL, 1, '2021-03-04 23:18:37', '2021-03-04 23:18:37'),
(198, NULL, NULL, NULL, 'Madhusudhan', 'Bhagavathula', '9866379808', 'madhu.73@hotmail.com', '', '', 'Movers International', 'Regional sales Manager', NULL, 'Hi, I would like to have the e-mail id of Ms. Manjesh Rajput to send my profile. \r\nregards\r\nMadhusudhan Bhagavathula. \r\n9866379808', NULL, NULL, 1, '2021-03-05 01:35:15', '2021-03-05 01:35:15'),
(199, NULL, NULL, NULL, 'Madhusudhan', 'Bhagavathula', '9866379808', 'madhu.73@hotmail.com', '', '', 'Movers International', 'Regional sales Manager', NULL, 'Hi, I would like to have the e-mail id of Ms. Manjesh Rajput to send my profile. \r\nregards\r\nMadhusudhan Bhagavathula. \r\n9866379808', NULL, NULL, 1, '2021-03-05 01:35:20', '2021-03-05 01:35:20'),
(200, NULL, NULL, NULL, 'sadakath', '', '9844264569', 'sadakath.mavad@abfrl.adityabirla.com', '501-1000 crores', '', 'ABFRL', '', NULL, 'Need transportation services', NULL, NULL, 1, '2021-03-05 05:43:32', '2021-03-05 05:43:32'),
(201, NULL, NULL, NULL, 'sadakath', '', '9844264569', 'sadakath.mavad@abfrl.adityabirla.com', '501-1000 crores', '', 'ABFRL', '', NULL, 'Need transportation services', NULL, NULL, 1, '2021-03-05 05:43:34', '2021-03-05 05:43:34'),
(202, NULL, NULL, NULL, 'Kailash', 'Kumar', '8595627140', 'kailaskr112233@gmail.com', '0-25 crores', '', 'Parekh Integrated services Pvt Ltd.', 'Sr. Operations Executive', NULL, 'Dear sir \r\n\r\nPlease Request to you please Provided Job', NULL, NULL, 1, '2021-03-05 06:09:47', '2021-03-05 06:09:47'),
(203, NULL, NULL, NULL, 'Kailash', 'Kumar', '8595627140', 'kailaskr112233@gmail.com', '0-25 crores', '', 'Parekh Integrated services Pvt Ltd.', 'Sr. Operations Executive', NULL, 'Dear sir \r\n\r\nPlease Request to you please Provided Job', NULL, NULL, 1, '2021-03-05 06:09:51', '2021-03-05 06:09:51'),
(204, NULL, NULL, NULL, 'Joe', 'Miller', '+1542384593234', 'info@domainregistrationcorp.com', '', '', 'IMPORTANT NOTICE', 'IMPORTANT NOTICE', NULL, 'TERMINATION OF DOMAIN contractlogistics.co.in\r\nInvoice#: 491343\r\nDate: 05 Mar 2021\r\n\r\nIMMEDIATE ATTENTION REGARDING YOUR DOMAIN contractlogistics.co.in IS ABSOLUTLY NECESSARY\r\n\r\nTERMINATION OF YOUR DOMAIN contractlogistics.co.in WILL BE COMPLETED WITHIN 24 HOURS\r\n\r\nYour payment for the renewal of your domain contractlogistics.co.in has not received yet\r\n\r\nWe have tried to reach you by phone several times, to inform you regarding the TERMINATION of your domain contractlogistics.co.in\r\n\r\nCLICK HERE FOR SECURE ONLINE PAYMENT: https://registerdomains.ga\r\n\r\nIF WE DO NOT RECEIVE YOUR PAYMENT WITHIN 24 HOURS, YOUR DOMAIN contractlogistics.co.in WILL BE TERMINATED!\r\n\r\nCLICK HERE FOR SECURE ONLINE PAYMENT: https://registerdomains.ga\r\n\r\nYOUR IMMEDIATE ATTENTION IS ABSOLUTELY NECESSARY IN ORDER TO KEEP YOUR DOMAIN contractlogistics.co.in\r\n\r\nThe submission notification contractlogistics.co.in will EXPIRE WITHIN 24 HOURS after reception of this email', NULL, NULL, 1, '2021-03-05 10:41:39', '2021-03-05 10:41:39'),
(205, NULL, NULL, NULL, 'Joe', 'Miller', '+1542384593234', 'info@domainregistrationcorp.com', '', '', 'IMPORTANT NOTICE', 'IMPORTANT NOTICE', NULL, 'TERMINATION OF DOMAIN contractlogistics.co.in\r\nInvoice#: 491343\r\nDate: 05 Mar 2021\r\n\r\nIMMEDIATE ATTENTION REGARDING YOUR DOMAIN contractlogistics.co.in IS ABSOLUTLY NECESSARY\r\n\r\nTERMINATION OF YOUR DOMAIN contractlogistics.co.in WILL BE COMPLETED WITHIN 24 HOURS\r\n\r\nYour payment for the renewal of your domain contractlogistics.co.in has not received yet\r\n\r\nWe have tried to reach you by phone several times, to inform you regarding the TERMINATION of your domain contractlogistics.co.in\r\n\r\nCLICK HERE FOR SECURE ONLINE PAYMENT: https://registerdomains.ga\r\n\r\nIF WE DO NOT RECEIVE YOUR PAYMENT WITHIN 24 HOURS, YOUR DOMAIN contractlogistics.co.in WILL BE TERMINATED!\r\n\r\nCLICK HERE FOR SECURE ONLINE PAYMENT: https://registerdomains.ga\r\n\r\nYOUR IMMEDIATE ATTENTION IS ABSOLUTELY NECESSARY IN ORDER TO KEEP YOUR DOMAIN contractlogistics.co.in\r\n\r\nThe submission notification contractlogistics.co.in will EXPIRE WITHIN 24 HOURS after reception of this email', NULL, NULL, 1, '2021-03-05 10:41:39', '2021-03-05 10:41:39'),
(206, NULL, NULL, NULL, 'shailendra', 'singh', '8872236072', 'spsingh2085@gmail.com', '26-100 crores', '', 'xp india', 'sales manager', NULL, 'can u provide 32b ft close trucks', NULL, NULL, 1, '2021-03-05 23:15:03', '2021-03-05 23:15:03'),
(207, NULL, NULL, NULL, 'shailendra', 'singh', '8872236072', 'spsingh2085@gmail.com', '26-100 crores', '', 'xp india', 'sales manager', NULL, 'can u provide 32b ft close trucks', NULL, NULL, 1, '2021-03-05 23:15:03', '2021-03-05 23:15:03'),
(208, NULL, NULL, NULL, 'shailendra', 'singh', '8872236072', 'spsingh2085@gmail.com', '26-100 crores', '', 'xp india', 'sales manager', NULL, 'can u provide 32b ft close trucks', NULL, NULL, 1, '2021-03-05 23:15:03', '2021-03-05 23:15:03'),
(209, NULL, NULL, NULL, 'Virender', 'lohan', '8950881738', 'lohanvirender11@gmail.com', '0-25 crores', '', 'None', 'None', NULL, 'None', NULL, NULL, 1, '2021-03-06 04:24:50', '2021-03-06 04:24:50'),
(210, NULL, NULL, NULL, 'Ghanshayam', 'Raghuwanshi', '6265595839', 'beerusinghraghuwanshi@gmail.com', '101-500 crores', '', 'Eicher Ltd', 'Running', NULL, 'I want this job to start my career at logistics I hope this job gives me bright future.', NULL, NULL, 1, '2021-03-06 09:39:48', '2021-03-06 09:39:48'),
(211, NULL, NULL, NULL, 'SHAILESH', '', '9033027259', 'kamanis225@gmail.com', '0-25 crores', '', 'kesari courier & CARGO', 'SURAT', NULL, 'DEAR SIR  I AM  BOOKING CODE/ VENDOR  WANT IN SURAT CITY  NOW THIS TIME I AM  BOOING LOAD IN SPOTON LOGISTIC 40 KG TO UP PARCEL  SEND BY SPOTON', NULL, NULL, 1, '2021-03-07 00:31:12', '2021-03-07 00:31:12'),
(212, NULL, NULL, NULL, 'SHAILESH', '', '9033027259', 'kamanis225@gmail.com', '0-25 crores', '', 'kesari courier & CARGO', 'SURAT', NULL, 'DEAR SIR  I AM  BOOKING CODE/ VENDOR  WANT IN SURAT CITY  NOW THIS TIME I AM  BOOING LOAD IN SPOTON LOGISTIC 40 KG TO UP PARCEL  SEND BY SPOTON', NULL, NULL, 1, '2021-03-07 00:31:17', '2021-03-07 00:31:17'),
(213, NULL, NULL, NULL, 'Atma', 'Ram', '9813420347', 'Monubhatti464@gmail.com', '0-25 crores', '', 'Safexpress', 'Operation department senior assistant', NULL, 'I am experience employees one years ago', NULL, NULL, 1, '2021-03-08 22:53:07', '2021-03-08 22:53:07'),
(214, NULL, NULL, NULL, 'Atma', 'Ram', '9813420347', 'Monubhatti464@gmail.com', '0-25 crores', '', 'Safexpress', 'Operation', NULL, 'I am experience employees one years ago', NULL, NULL, 1, '2021-03-08 23:21:05', '2021-03-08 23:21:05'),
(215, NULL, NULL, NULL, 'Deeksha', 'Singh', '07818876288', 'deekshadeeksha444@gmail.com', '', '', 'Grand movers and packers', 'I want to attach with you. I have commercial vehicle, so what\'s the process through it I contacted to you.', NULL, '', NULL, NULL, 1, '2021-03-11 03:33:08', '2021-03-11 03:33:08'),
(216, NULL, NULL, NULL, 'Deeksha', 'Singh', '07818876288', 'deekshadeeksha444@gmail.com', '', '', 'Grand movers and packers', 'I want to attach with you. I have commercial vehicle, so what\'s the process through it I contacted to you.', NULL, '', NULL, NULL, 1, '2021-03-11 03:33:15', '2021-03-11 03:33:15'),
(217, NULL, NULL, NULL, 'GAURAV', 'TIWARI', '7897652588', 'gauravtiwari6232@gmail.com', '0-25 crores', '', 'VARUNA GROUP', 'Supervisor', NULL, '', NULL, NULL, 1, '2021-03-12 21:44:27', '2021-03-12 21:44:27'),
(218, NULL, NULL, NULL, 'Amit', 'Kumar', '8059340478', 'amit.kumar340478@gmail.com', '', '', 'Spoton Logistic', 'Operation', NULL, 'Dear Sir.\r\n\r\nI have a 3 year experience in Spot on logistics. I was knowledge of transportation logistics and supply chain management and Warehouse management. I am searching for a best opportunity and new challange in the life. I want to work with Team. With work goal\r\n\r\nThank you\r\n\r\nAmit kumar\r\n8059340478', NULL, NULL, 1, '2021-03-13 05:06:18', '2021-03-13 05:06:18'),
(219, NULL, NULL, NULL, 'ROOPKISHOR', 'sharma', '9911168538', 'sharmaroopkishor1@gmail.com', '', '', 'Varuna interested logistics', 'Sr.Exutiuve', NULL, 'Job', NULL, NULL, 1, '2021-03-14 21:36:18', '2021-03-14 21:36:18'),
(220, NULL, NULL, NULL, 'Pramod', 'Mishra', '8144100401', 'mishrap331@gmail.com', '', '', 'Herbalife International India Pvt Ltd C/O Aum Express Pvt Ltd', 'Warehouse Executive', NULL, '', NULL, NULL, 1, '2021-03-16 00:17:51', '2021-03-16 00:17:51'),
(221, NULL, NULL, NULL, 'Ankita', 'Soharia', '9927573787', 'sohariyaankita15@gmail.com', '26-100 crores', '', 'Sugam Logistics', 'Sales coordinator', NULL, '', NULL, NULL, 1, '2021-03-17 23:14:08', '2021-03-17 23:14:08'),
(222, NULL, NULL, NULL, 'Ankita', 'Soharia', '9927573787', 'sohariyaankita15@gmail.com', '26-100 crores', '', 'Sugam Logistics', 'Sales coordinator', NULL, '', NULL, NULL, 1, '2021-03-17 23:14:12', '2021-03-17 23:14:12'),
(223, NULL, NULL, NULL, 'efwegr', '', '1234565876', 'a@gmail.com', '', '', 'efe', '', NULL, '', NULL, NULL, 1, '2021-07-16 11:56:24', '2021-07-16 11:56:24');

-- --------------------------------------------------------

--
-- Table structure for table `events`
--

DROP TABLE IF EXISTS `events`;
CREATE TABLE IF NOT EXISTS `events` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `brief` text,
  `description` text,
  `start_date` varchar(255) DEFAULT NULL,
  `end_date` varchar(255) DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `pdf` varchar(255) DEFAULT NULL,
  `sort_order` int(11) DEFAULT NULL,
  `featured` tinyint(4) NOT NULL DEFAULT '0',
  `status` tinyint(4) NOT NULL DEFAULT '1',
  `meta_title` varchar(255) DEFAULT NULL,
  `meta_keyword` varchar(255) DEFAULT NULL,
  `meta_description` varchar(255) DEFAULT NULL,
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `events`
--

INSERT INTO `events` (`id`, `title`, `slug`, `brief`, `description`, `start_date`, `end_date`, `image`, `pdf`, `sort_order`, `featured`, `status`, `meta_title`, `meta_keyword`, `meta_description`, `created_at`, `updated_at`) VALUES
(1, 'PLCC/KGPL-IHB/CL/20016', 'plcc-kgpl-ihb-cl-20016', '<p><strong>e-tender ID </strong><br />\r\n<a href=\"https://iocletenders.nic.in/nicgep/app?page=FrontEndLatestActiveTenders&amp;service=page\" target=\"_blank\">2020_PLHO_114357_1,</a><br />\r\n<a href=\"https://iocletenders.nic.in/nicgep/app?page=FrontEndLatestActiveTenders&amp;service=page\" target=\"_blank\">2020_PLHO_114357_2,</a><br />\r\n<a href=\"https://iocletenders.nic.in/nicgep/app?page=FrontEndLatestActiveTenders&amp;service=page\" target=\"_blank\">2020_PLHO_114357_3,</a><br />\r\n<a href=\"https://iocletenders.nic.in/nicgep/app?page=FrontEndLatestActiveTenders&amp;service=page\" target=\"_blank\">2020_PLHO_114357_4 </a></p>', '<p><strong>HDD work - Package-2 (MP/UP border to IOCL Gorakhpur)</strong></p>\r\n\r\n<p>Installation of 18&rdquo; OD,16&rdquo; OD, 12.75&rdquo;OD AND 10.75&rdquo; OD pipeline across major rivers of Kandla Gorakhpur LPG pipeline from MP/UP border to IOCL Gorakhpur In Uttar Pradesh State By Horizontal Directional Drilling(HDD) technique and associated works</p>\r\n\r\n<p>GROUP-E: EX. BPCL Bhopal CH. 266.144 KM to EX. BPCL Bhopal CH. 526.213 KM</p>\r\n\r\n<p>GROUP-F: EX. HPCL Unnao CH. 323.1 KM, EX. IOCL Gorakhpur CH. 30.957 KM and 39.035 KM</p>\r\n\r\n<p>GROUP-G: EX. BPCL Bhopal CH. 475.656 KM and EX. BPCL Bhopal CH. 576.989 KM</p>\r\n\r\n<p>GROUP-H: EX. HPCL Unnao CH. 423.896 KM and EX. IOCL Allahabad CH. 6.507 KM</p>', '12.3.2020', '09.04.2020 Extension-1: 29.04.2020  Extension-2: 11.05.2020  Extension-3: 21.5.2020  Extension-4: 8.6.2020', '', NULL, 2, 1, 0, NULL, NULL, NULL, '2019-07-31 12:15:29', '2020-07-16 12:40:19'),
(2, 'PLCC/KGPL-IHB/CL/20011', 'plcc-kgpl-ihb-cl-20011', '<p><strong>e-tender ID </strong><br />\r\n<a href=\"https://iocletenders.nic.in/nicgep/app?page=FrontEndLatestActiveTenders&amp;service=page\" target=\"_blank\">2020_PLHO_113426_1,</a><br />\r\n<a href=\"https://iocletenders.nic.in/nicgep/app?page=FrontEndLatestActiveTenders&amp;service=page\" target=\"_blank\">2020_PLHO_113426_2,</a><br />\r\n<a href=\"https://iocletenders.nic.in/nicgep/app?page=FrontEndLatestActiveTenders&amp;service=page\" target=\"_blank\">2020_PLHO_113426_3,</a><br />\r\n<a href=\"https://iocletenders.nic.in/nicgep/app?page=FrontEndLatestActiveTenders&amp;service=page\" target=\"_blank\">2020_PLHO_113426_4,</a><br />\r\n<a href=\"https://iocletenders.nic.in/nicgep/app?page=FrontEndLatestActiveTenders&amp;service=page\" target=\"_blank\">2020_PLHO_113426_5,</a><br />\r\n<a href=\"https://iocletenders.nic.in/nicgep/app?page=FrontEndLatestActiveTenders&amp;service=page\" target=\"_blank\">2020_PLHO_113426_6 </a></p>', '<p><strong>Mainline works: Package-1 (Sanand to MP/UP border) </strong></p>\r\n\r\n<p>Laying 20&rdquo;/18&rdquo;/10.75&rdquo; OD, 902 KM (APPROX.) Cross Country LPG Pipeline from IOCL Sanand to MP/UP Border Under Kandla Gorakhpur LPG Pipeline Project,</p>\r\n\r\n<p>GROUP-6: IOCL Sanand LPG BP (CH. 38 KM EX-VIRAMGAM) to IOCL Dumad Section (CH. 165 KM EX-Viramgam)</p>\r\n\r\n<p>GROUP-7: IOCL Dumad to Gujarat/MP Border (CH. 155 KM EX-DUMAD)</p>\r\n\r\n<p>GROUP-8: GJ/MP Border (CH. 155 KM EX-Dumad) to IPS-1 (CH. 287 KM EX-DUMAD)</p>\r\n\r\n<p>GROUP-9: IPS-1 (CH. 287 KM EX-Dumad) to BPCL Indore (CH. 11.842 KM EX-IPS-1) and BPCL Bhopal (CH. 489 KM EX-Dumad)</p>\r\n\r\n<p>GROUP-10: SV27 (CH. 329.343 KM EX-Dumad) to IOCL Ujjain (56 KM EX-SV27) and IOCL Bhopal to HPCL Bhopal (CH. 36 KM EX-IOCL Bhopal)</p>\r\n\r\n<p>GROUP-11: BPCL Bhopal to MP/UP Border</p>\r\n\r\n<p>Total length: 902 Kms</p>', '20.2.2020 (Gr-6, Gr-9 and Gr 11) 21.2.2020 (Gr-7, Gr-8 and Gr 10)', 'Original:  19.3.2020 Extension-1: 01.04.2020 Extension-2: 09.04.2020  Extension-3: 29.04.2020  Extension-4: 11.05.2020 Extension-5: 21.5.2020  Extension-6: 8.6.2020', '', '', 1, 1, 0, NULL, NULL, NULL, '2019-07-31 12:15:46', '2020-07-16 12:40:09'),
(3, 'PLCC/KGPL-IHB/CL/20010', 'plcc-kgpl-ihb-cl-20010', '<p><b>e-tender ID</b><br />\r\n<a href=\"https://iocletenders.nic.in/nicgep/app?page=FrontEndLatestActiveTenders&amp;service=page\" target=\"_blank\">2020_PLHO_113164_1,</a><br />\r\n<a href=\"https://iocletenders.nic.in/nicgep/app?page=FrontEndLatestActiveTenders&amp;service=page\" target=\"_blank\">2020_PLHO_113164_2,</a><br />\r\n<a href=\"https://iocletenders.nic.in/nicgep/app?page=FrontEndLatestActiveTenders&amp;service=page\" target=\"_blank\">2020_PLHO_113164_3,</a><br />\r\n<a href=\"https://iocletenders.nic.in/nicgep/app?page=FrontEndLatestActiveTenders&amp;service=page\" target=\"_blank\">2020_PLHO_113164_4 </a></p>', '<p align=\"justify\"><b>Sanand to MP/UP border)</b></p>\r\n\r\n<p align=\"justify\">Installation of 20&rdquo; and 18&rdquo; OD Pipeline across Major River/ Canal Crossings of Kandla Gorakhpur LPG Pipeline from IOCL Sanand to MP/UP border in Gujarat &amp; Madhya Pradesh states by HORIZONTAL DIRECTIONAL DRILLING (HDD) Technique and Associated Works</p>\r\n\r\n<p align=\"justify\">Group A : in Gujarat (KGPL Ex. Viramgam Ch. 61.248 km to Ex. Viramgam Ch. 108.847 km)</p>\r\n\r\n<p align=\"justify\">Group B : in Gujarat (KGPL Ex. Viramgam Ch. 148.045 km to Ex. IOCL Dumad Ch. 89.694 km)</p>\r\n\r\n<p align=\"justify\">Group C : in Madhya Pradesh (KGPL Ex. IOCL Dumad Ch. 163.144 km to Ex. BPCL Bhopal Ch. 64.513 km)</p>\r\n\r\n<p align=\"justify\">Group D : in Madhya Pradesh (KGPL Ex. BPCL Bhopal Ch. 98.026 km to Ex. BPCL Bhopal Ch. 180.949 km)</p>', '14.02.2020', 'Original: 13.03.2020  Extension-1: 20.3.2020', NULL, '', 1, 1, 0, NULL, NULL, NULL, '2020-01-17 06:06:47', '2020-04-19 07:21:31'),
(4, 'PLM/KGPL(IHB)/20/1', 'plm-kgpl-ihb-20-1', '<p>e-tender ID<br />\r\n2019_PLHO_109842_1 to 7</p>', '<p>Supply of API 5L Grade Line Pipes (under 7 Groups) (Major Sizes &ndash; 20&rdquo;, 18&rdquo;, 16&rdquo;, 12.75&quot;, 10.75&quot; &amp; 8.625&quot;) (Total Quantity: 1986 kms)</p>', '16.12.2019', 'Tender  opened on 14.2.2020', NULL, NULL, 4, 1, 0, NULL, NULL, NULL, '2020-03-16 12:04:37', '2020-07-16 12:39:55'),
(5, 'PLM/KGPL(IHB)/20/2', 'plm-kgpl-ihb-20-2', '<p>e-tender ID<br />\r\n2020_PLHO_111007_1 to 4</p>', '<p>API 6D 600# W/W U/G Ball Valve for Mainline(under4 Groups) - Total - 227 nos.<br />\r\nGrp-1- 18&quot; - 85 Nos.,<br />\r\nGrp-2- 20&quot;- 28 Nos,<br />\r\nGrp-3- 16&quot; - 36 Nos,<br />\r\nGrp-4- 12&quot; -28 Nos, 10&quot;- 41 Nos, 8&quot; - 9 Nos</p>', '7.1.2020', 'Tender  opened  on 28.2.2020', NULL, NULL, 5, 1, 0, NULL, NULL, NULL, '2020-03-16 12:44:02', '2020-07-16 12:39:43'),
(6, 'PLM/KGPL(IHB)/20/3', 'plm-kgpl-ihb-20-3', '<p>e-tender ID<br />\r\n2020_PLHO_112802_1</p>', '<p>Supply of Optical Fibre Cable on Rate Contract (Qty: 3300 Km)</p>', '7.2.2020', 'Tender  opened  on 6.3.2020', NULL, NULL, 6, 1, 0, NULL, NULL, NULL, '2020-03-16 12:59:46', '2020-07-16 12:39:34'),
(7, 'PLCC/KGPL-IHB/CL/20010', 'plcc-kgpl-ihb-cl-200101', '<p>e-tender ID</p>\r\n\r\n<p><a href=\"https://iocletenders.nic.in/nicgep/app?page=FrontEndLatestActiveTenders&amp;service=page\" target=\"_blank\">2020_PLHO_113164_1,</a><br />\r\n<a href=\"https://iocletenders.nic.in/nicgep/app?page=FrontEndLatestActiveTenders&amp;service=page\" target=\"_blank\">2020_PLHO_113164_2,</a><br />\r\n<a href=\"https://iocletenders.nic.in/nicgep/app?page=FrontEndLatestActiveTenders&amp;service=page\" target=\"_blank\">2020_PLHO_113164_3,</a><br />\r\n<a href=\"https://iocletenders.nic.in/nicgep/app?page=FrontEndLatestActiveTenders&amp;service=page\" target=\"_blank\">2020_PLHO_113164_4</a></p>', '<p><strong>HDD Work-Package-1 (Sanand to MP/UP border)</strong><br />\r\n<br />\r\nInstallation of 20&rdquo; and 18&rdquo; OD Pipeline across Major River/ Canal Crossings of Kandla Gorakhpur LPG Pipeline from IOCL Sanand to MP/UP border in Gujarat &amp; Madhya Pradesh states by HORIZONTAL DIRECTIONAL DRILLING (HDD) Technique and Associated Works<br />\r\nGroup A : in Gujarat (KGPL Ex. Viramgam Ch. 61.248 km to Ex. Viramgam Ch. 108.847 km)<br />\r\nGroup B : in Gujarat (KGPL Ex. Viramgam Ch. 148.045 km to Ex. IOCL Dumad Ch. 89.694 km)<br />\r\nGroup C : in Madhya Pradesh (KGPL Ex. IOCL Dumad Ch. 163.144 km to Ex. BPCL Bhopal Ch. 64.513 km)<br />\r\nGroup D : in Madhya Pradesh (KGPL Ex. BPCL Bhopal Ch. 98.026 km to Ex. BPCL Bhopal Ch. 180.949 km)</p>', '14.2.2020', 'Tender opened on 03.04.2020.', NULL, NULL, 0, 0, 0, NULL, NULL, NULL, '2020-04-19 07:05:47', '2020-07-16 12:39:21'),
(8, 'PLCC/KGPL-IHB/CL/20018', 'plcc-kgpl-ihb-cl-20018', '<p>e-tender ID</p>\r\n\r\n<p><a href=\"https://iocletenders.nic.in/nicgep/app?page=FrontEndLatestActiveTenders&amp;service=page\" target=\"_blank\">2020_PLHO_1125474_1,</a><br />\r\n<a href=\"https://iocletenders.nic.in/nicgep/app?page=FrontEndLatestActiveTenders&amp;service=page\" target=\"_blank\">2020_PLHO_1125474_2,</a><br />\r\n<a href=\"https://iocletenders.nic.in/nicgep/app?page=FrontEndLatestActiveTenders&amp;service=page\" target=\"_blank\">2020_PLHO_1125474_3,</a><br />\r\n<a href=\"https://iocletenders.nic.in/nicgep/app?page=FrontEndLatestActiveTenders&amp;service=page\" target=\"_blank\">2020_PLHO_1125474_4,</a><br />\r\n<a href=\"https://iocletenders.nic.in/nicgep/app?page=FrontEndLatestActiveTenders&amp;service=page\" target=\"_blank\">2020_PLHO_1125474_5,</a><br />\r\n<a href=\"https://iocletenders.nic.in/nicgep/app?page=FrontEndLatestActiveTenders&amp;service=page\" target=\"_blank\">2020_PLHO_1125474_6,</a><br />\r\n<a href=\"https://iocletenders.nic.in/nicgep/app?page=FrontEndLatestActiveTenders&amp;service=page\" target=\"_blank\">2020_PLHO_1125474_7</a></p>', '<p>Mainline works: Package-2 (MP/UP border to IOCL Gorakhpur)<br />\r\n<br />\r\nLaying 18&rdquo;/16&rdquo;/12.75&rdquo;/10.75&rdquo;/8.625&rdquo; OD, 1108 KM (Approx.) Cross Country LPG Pipeline from MP/ UP border to IOCL Gorakhpur under Kandla Gorakhpur LPG Pipeline Project:<br />\r\nGroup-12: MP/ UP Border (approx. Ch. 181 Km Ex-BPCL Bhopal) to BPCL Jhansi (approx. Ch. 323 Km Ex-BPCL Bhopal)<br />\r\nGroup-13: BPCL Jhansi (approx. Ch. 323 Km Ex-BPCL Bhopal) to IOCL Kanpur (approx. Ch. 539 Km Ex-BPCL Bhopal) and BPCL Kanpur Spurline (Ch. 2.5 Km Ex-IOCL Kanpur)<br />\r\nGroup-14: IOCL Kanpur (approx. Ch. 540.25 Km Ex-BPCL Bhopal) to HPCL Unnao (approx. 603 Km Ex-BPCL Bhopal), Roodapur &ndash; T point (approx. Ch. 205 Km Ex-HPCL Unnao) and HPCL Unnao to IOCL Lucknow spurline Ch. 3 Km Ex-HPCL Unnao)<br />\r\nGroup-15: HPCL Unnao (Ch. 3 Km Ex-HPCL Unnao) to IOCL Lucknow (Ch. 42 Km Ex-HPCL Unnao) to BPCL Lucknow (approx. Ch. 61 Km Ex-IOCL Lucknow)<br />\r\nGroup-16: Roodapur T-Point (approx. Ch. 205 Km Ex-HPCL Unnao) to IOCL Varanasi (approx. Ch. 298 Km Ex-HPCL Unnao) and Roodapur T-Point to IOCL Allahabad (approx. Ch. 16 Km Ex-Roodapur) to BPCL Allahabad (approx. Ch. 14 Km Ex-IOCL Allahabad)<br />\r\nGroup-17: IOCL Varanasi (approx. Ch. 298 Km Ex-HPCL Unnao) to Choti Saryu River (approx. Ch. 411 Km Ex-HPCL Unnao) and IOCL Varanasi to HPCL Varanasi (approx. Ch. 16 Km Ex-IOCL Varanasi)<br />\r\nGroup-18: Choti Saryu (approx. Ch. 411 Km Ex-HPCL Unnao) to IOCL Gorakhpur (approx. Ch. 470 Km Ex-HPCL Unnao) and IOCL Gorakhpur to BPCL Gorakhpur (approx. Ch. 60 Km Ex-IOCL Gorakhpur)<br />\r\n<br />\r\nTotal length: 1108 Kms</p>', '17.4.2020', '15.05.2020  Extension-1: 28.5.2020', NULL, NULL, 3, 1, 0, NULL, NULL, NULL, '2020-04-19 07:15:00', '2020-07-16 12:39:11'),
(9, 'PLM/KGPL(IHB)/20/4', 'plm-kgpl-ihb-20-4', '<p>e-tender ID</p>\r\n\r\n<p>2020_PLHO_115707_1 to 2</p>', '<p>Supply of Mainline pumping unit (Qty-8) ,</p>\r\n\r\n<p>Location : Dumad-4, Bina-4</p>', '17.4.2020', '14.5.2020  Extension-1:  28.5.2020', NULL, NULL, 7, 1, 0, NULL, NULL, NULL, '2020-04-19 07:28:19', '2020-07-16 12:38:54'),
(10, 'PLM/KGPL(IHB)/20/5', 'plm-kgpl-ihb-20-5', '<p>e-tender ID</p>\r\n\r\n<p>2020_PLHO_115687_1</p>', '<p>Supply of API 5L Grade Line Pipes<br />\r\n(Sizes &ndash; 10.75&quot; )<br />\r\n(Total Quantity: 100 kms)</p>', '16.4.2020', '13.5.2020 Extension-1: 20.5.2020 Extension-2: 3.6.2020', NULL, NULL, 8, 1, 0, NULL, NULL, NULL, '2020-04-19 07:29:16', '2020-07-16 12:38:42'),
(11, 'PLM/KGPL(IHB)/20/6', 'plm-kgpl-ihb-20-6', '<p>e-tender ID<br />\r\n2020_PLHO_115918_1</p>', '<p>Supply of ROV Ball Valves&nbsp;<br />\r\nQty-8&rdquo;300# - 21 nos,6&rdquo;300#-2 nos</p>', '23.4.2020', '13.5.2020  Extension-1:-21.5.2020  Extension-2:-4.6.2020', NULL, NULL, 10, 1, 0, NULL, NULL, NULL, '2020-04-28 10:55:50', '2020-07-16 12:38:31'),
(12, 'PLM/KGPL(IHB)/20/7', 'plm-kgpl-ihb-20-7', '<p>e-tender ID<br />\r\n2020_PLHO_11925_1 to 2</p>', '<p>Supply of vertical basket strainer<br />\r\nQty-28</p>', '23.4.2020', 'Tender opened on 22.5.2020', NULL, NULL, 11, 1, 0, NULL, NULL, NULL, '2020-04-28 11:00:09', '2020-07-16 12:38:21'),
(13, 'PLM/KGPL(IHB)/20/8', 'plm-kgpl-ihb-20-8', '<p>e-tender ID<br />\r\n2020_PLHO_116043_1 to 5</p>', '<p>Supply of API 6D Ball Valves for station valves (Package 1)<br />\r\nTotal Qty: 734 Valves;&nbsp;<br />\r\nSize- 4&quot;, 6&quot;, 8&quot;, 10&rdquo;,12&rdquo;,16&quot;, 18&quot;, 20</p>', '27.4.2020', '25.5.2020', NULL, NULL, 12, 1, 0, NULL, NULL, NULL, '2020-04-28 11:03:30', '2020-07-16 12:38:10'),
(14, '2020_PLHO_116582_1   2020_PLHO_116582_2', '2020-plho-116582-1-2020-plho-116582-2', NULL, '<p>Combined Station Works of Mechanical, Civil, Electrical and Instrumentation Works and other facilities under Kandla-Gorakhpur Liquefied Petroleum Gas (LPG) Pipeline Project at<br />\r\nGr 1: Dumad In Gujarat state and<br />\r\nGr 2: Bina In Madhya Pradesh state</p>', '7.5.2020', '4.6.2020', NULL, NULL, 3, 1, 0, NULL, NULL, NULL, '2020-05-18 10:57:50', '2020-07-16 12:38:00'),
(15, 'PLM/KGPL(IHB)/20/9', 'plm-kgpl-ihb-20-9', '<p>e-tender ID<br />\r\n2020_PLHO_116253_1 to 3</p>', '<p>Supply of Scraper receiving cum launching barrel (Size- (Gr -1 20X24 &ldquo; &ndash; 4 nos)<br />\r\n(Gr-2 -18&rdquo;X 22&rdquo;-12 nos)<br />\r\n(GR-3-10X14&rdquo;-6 nos)<br />\r\n600# Series</p>', '30.4.2020', '21.5.2020  Extension-1: 28.5.2020', NULL, NULL, 13, 1, 0, NULL, NULL, NULL, '2020-05-18 11:05:08', '2020-07-16 12:37:46'),
(16, 'PLCC/KGPL/CL/20035', 'plcc-kgpl-cl-20035', '<p>e-tender ID<br />\r\n2020_PLHO_116670_1</p>', '<p>Renovation of existing administrative cum control building at IOCL Sabarmati Terminal.<br />\r\n&nbsp;</p>', '11.5.2020', '1.6.2020', NULL, NULL, 3, 1, 0, NULL, NULL, NULL, '2020-05-26 10:55:54', '2020-07-16 12:37:16'),
(17, 'PLM/KGPL(IHB)/20/10', 'plm-kgpl-ihb-20-10', '<p>e-tender ID<br />\r\n2020_PLHO_116861_1 to 4</p>', '<p>Supply of insulating coupling<br />\r\n(Gr-Size 16&rdquo;to 20&rdquo; 600#- 44 Nos) (Gr-2,size 8 to 12&rdquo; 600#- 30 Nos)(Gr-3,Size 4&rdquo; 600#-294 Nos),(Gr-4, Size 6 to 16&rdquo; 300#,25 Nos )</p>', '6.7.2020', '3.8.2020', NULL, NULL, 13, 1, 1, NULL, NULL, NULL, '2020-05-26 11:04:02', '2020-07-16 12:36:30');

-- --------------------------------------------------------

--
-- Table structure for table `forms`
--

DROP TABLE IF EXISTS `forms`;
CREATE TABLE IF NOT EXISTS `forms` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `slug` varchar(100) NOT NULL,
  `thank_you_msg` varchar(255) NOT NULL,
  `google_map` int(11) DEFAULT NULL,
  `lat_lang` varchar(255) DEFAULT NULL,
  `captcha` tinyint(6) NOT NULL,
  `top_left_content` text,
  `top_right_content` text,
  `bottom_content` text,
  `form_fields` text COMMENT 'Field Label, Field Type, Validation, Data seperated by comma(in json format)',
  `template` varchar(255) DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT '1',
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `forms`
--

INSERT INTO `forms` (`id`, `name`, `slug`, `thank_you_msg`, `google_map`, `lat_lang`, `captcha`, `top_left_content`, `top_right_content`, `bottom_content`, `form_fields`, `template`, `status`, `created_at`, `updated_at`) VALUES
(12, 'Careers', 'careers', 'Thank you for Connecting Us', NULL, NULL, 1, NULL, NULL, NULL, NULL, 'forms.default', 0, '2019-08-12 12:28:08', '2020-01-17 06:35:03'),
(13, 'Contact Us', 'contact-us', 'Thank you for Connecting Us', NULL, NULL, 1, NULL, '<iframe allowfullscreen=\"\" src=\"https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3503.3860982124515!2d77.30840775086754!3d28.588191842750504!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x390ce4f560f7d327%3A0x98a6061da94bf15d!2sIndian%20Oil%20Corporation%20LtdPipeline%20HO!5e0!3m2!1sen!2sin!4v1579002254280!5m2!1sen!2sin\" style=\"border:0;\" width=\"600\" height=\"450\" frameborder=\"0\"></iframe>', NULL, NULL, 'forms.contact', 1, '2020-01-16 07:10:51', '2020-01-16 09:28:35');

-- --------------------------------------------------------

--
-- Table structure for table `form_attributes`
--

DROP TABLE IF EXISTS `form_attributes`;
CREATE TABLE IF NOT EXISTS `form_attributes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `label` varchar(100) NOT NULL,
  `type` varchar(100) NOT NULL,
  `validations` varchar(100) NOT NULL,
  `status` int(11) NOT NULL,
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `form_attributes`
--

INSERT INTO `form_attributes` (`id`, `label`, `type`, `validations`, `status`, `created_at`) VALUES
(1, 'Single Line Text', 'text', '', 1, '0000-00-00 00:00:00'),
(2, 'Number', 'number', 'numeric', 1, '0000-00-00 00:00:00'),
(3, 'Paragraph Text', 'textarea', '', 1, '0000-00-00 00:00:00'),
(4, 'Checkboxes', 'checkbox', '', 1, '0000-00-00 00:00:00'),
(5, 'Radio Buttons', 'radio', '', 1, '0000-00-00 00:00:00'),
(6, 'Drop Down', 'select', '', 1, '0000-00-00 00:00:00'),
(7, 'Name', 'text', '', 1, '0000-00-00 00:00:00'),
(8, 'Email', 'text', 'valid_email', 1, '0000-00-00 00:00:00'),
(9, 'Datepicker', 'datepicker', '', 0, '0000-00-00 00:00:00'),
(10, 'Timepicker', 'timepicker', '', 0, '0000-00-00 00:00:00'),
(11, 'File', 'file', '', 1, '2019-09-10 18:46:32');

-- --------------------------------------------------------

--
-- Table structure for table `form_elements`
--

DROP TABLE IF EXISTS `form_elements`;
CREATE TABLE IF NOT EXISTS `form_elements` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `form_id` int(11) NOT NULL,
  `label` varchar(100) NOT NULL,
  `type` varchar(100) DEFAULT NULL,
  `validation` varchar(255) NOT NULL,
  `data` text NOT NULL,
  `is_static` tinyint(4) DEFAULT '0',
  `status` tinyint(4) NOT NULL DEFAULT '1',
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=32 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `form_elements`
--

INSERT INTO `form_elements` (`id`, `form_id`, `label`, `type`, `validation`, `data`, `is_static`, `status`, `created_at`, `updated_at`) VALUES
(17, 0, 'Name', 'text', 'required', '', 1, 1, '2019-08-23 11:30:33', '2019-08-26 16:55:39'),
(18, 0, 'Email', 'text', 'required', '', 1, 1, '2019-08-23 11:30:33', '2019-08-26 16:55:43'),
(19, 0, 'Phone', 'text', 'required', '', 1, 1, '2019-08-23 11:30:33', '2019-08-26 16:55:47'),
(22, 13, 'Subject', 'text', 'required', '', 0, 1, '2019-08-26 07:15:09', '2020-01-16 07:14:13'),
(27, 12, 'Position Applying for', 'text', 'required', '', 0, 1, '2020-01-14 11:37:37', '2020-01-14 11:37:37'),
(29, 12, 'Upload Resume', 'file', 'required', '', 0, 1, '2020-01-14 11:39:37', '2020-01-16 06:53:07'),
(30, 12, 'Message', 'textarea', 'required', '', 0, 1, '2020-01-14 11:39:37', '2020-01-14 11:39:37'),
(31, 13, 'Message', 'textarea', '', '', 0, 1, '2020-01-16 07:14:13', '2020-01-16 07:14:13');

-- --------------------------------------------------------

--
-- Table structure for table `home_images`
--

DROP TABLE IF EXISTS `home_images`;
CREATE TABLE IF NOT EXISTS `home_images` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) DEFAULT NULL,
  `subtitle` varchar(255) DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `link` varchar(255) DEFAULT NULL,
  `sort_order` int(11) DEFAULT '0',
  `status` tinyint(4) DEFAULT '1' COMMENT '1=Active; 0=Inactive',
  `created_at` datetime DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `home_images`
--

INSERT INTO `home_images` (`id`, `title`, `subtitle`, `image`, `link`, `sort_order`, `status`, `created_at`, `updated_at`) VALUES
(5, 'Home Image', 'Home Image', '090120125036-enquire_form_img.jpg', 'Home Image', 1, 1, '2020-01-09 12:50:36', '2020-01-09 12:52:56');

-- --------------------------------------------------------

--
-- Table structure for table `map_locations`
--

DROP TABLE IF EXISTS `map_locations`;
CREATE TABLE IF NOT EXISTS `map_locations` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `region` varchar(255) DEFAULT NULL,
  `state` varchar(255) DEFAULT NULL,
  `zone` varchar(255) DEFAULT NULL,
  `branch_name` varchar(255) DEFAULT NULL,
  `office_type` varchar(255) DEFAULT NULL,
  `location` varchar(255) DEFAULT NULL,
  `address` text,
  `phone` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `longitude` varchar(255) NOT NULL,
  `latitude` varchar(255) NOT NULL,
  `status` int(11) NOT NULL DEFAULT '1',
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=67 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `map_locations`
--

INSERT INTO `map_locations` (`id`, `region`, `state`, `zone`, `branch_name`, `office_type`, `location`, `address`, `phone`, `email`, `longitude`, `latitude`, `status`, `created_at`, `updated_at`) VALUES
(2, 'Branch Office', 'Gujarat', 'West', 'Ahmedabad', 'Branch Office', 'Aslali Road', 'Varuna Integrated Logistics Pvt Ltd. Sukh Amrut Complex, 310, 3rd Floor, Opp. Old Narol Court, N.H. 08, Above SBI Bank, Narol-Aslali Road, Narol', '7227022179', 'bm.ahmedabad@vil.co.in', '72.592041', '22.957793', 1, '2020-10-20 18:43:49', '2020-10-27 05:04:03'),
(3, 'Branch Office', 'Haryana', 'North', 'Ambala', 'Branch Office', 'Mohra', 'VARUNA INTEGRATED LOGISTICS PVT. LTD. Sco-38, Kalka Chowk, Jasmeet Nagar, Near Royal Palace Hotel,Dist- Ambala, Haryana-133006', '9053001508', 'ambala@vil.co.in', '28.6052853', '77.3897368', 1, '2020-10-20 18:43:49', '2020-10-23 11:52:04'),
(4, 'Branch Office', 'Punjab', 'North', 'Ludhiana', 'Branch Office', 'Transport Nagar', 'Varuna Integrated Logistics Pvt. Ltd. Plot No-97, 1st Floor, Transport Nagar, Ludhiana, Punjab-141010.', '9810783726', 'bm.ludhiana@varuna.net', '28.4228855', '76.8493182', 1, '2020-10-20 18:43:49', '2020-10-22 10:20:45'),
(5, 'Branch Office', 'Tamil Nadu', 'South-1', 'Arkonam', 'Branch Office', 'Itchiputur', 'Varuna Integrated Logistics Pvt. Ltd. 23, M.R.F, Thiru Nagar, Arakonam T.K, Itchiputur, Vellor,Tamil Nadu, Pin code-631003', '7338745211', 'bm.arakkonam@vil.co.in', '12.916810', '80.099400', 1, '2020-10-20 18:43:49', '2020-10-27 05:27:58'),
(6, 'Branch Office', 'Maharashtra', 'West', 'Aurangabad', 'Branch Office', 'Gangapur', 'Varuna Integrated Logistics Pvt Ltd Plot no-616,Third Floor,Room no.3, Gadekar Nagar, Ranjan Gaon, Gangapur,Near Maharastra Gramin Bank, Post-Ghane Goa, Dist- Aurangabad-431136', '9053071615', 'bm.aurangabad@vil.co.in', '27.176670', '78.008072', 1, '2020-10-20 18:43:49', '2020-10-27 05:38:12'),
(7, 'Branch Office', 'Himachal Pradesh', 'North', 'Baddi', 'Branch Office', 'Solan', 'Varuna Integrated Logistics Pvt Ltd. Office No-272, Motia Plaza Business Centre, Baddi,Himachal Pradesh-173205', '9805515785', 'bm.baddi@vil.co.in', '76.803591', '30.944486', 1, '2020-10-20 18:43:49', '2020-10-27 06:49:26'),
(8, 'Branch Office', 'Odisha', 'East', 'Balasore', 'Branch Office', 'Sahaji Patna', 'Varuna Integrated Logistics Pvt. Ltd. C/O Gopinath Ran, SAHAJI PATNA, POST-REMUNA,BALASORE,UDISHA,756019', '9599112073', 'bm.balasore@vil.co.in', '86.9135', '21.4934', 1, '2020-10-20 18:43:49', '2020-10-27 07:02:13'),
(9, 'Branch Office', 'Karnataka', 'South-1', 'Bangalore', 'Branch Office', 'Dasarahalli,', '39/2, Santoshi Maa Enclave, Above ICICI Bank, 8th Mile, Dasarahalli,Bangalore Karnataka – 560057', 'NA', 'bm.bangalore@vil.co.in', '77.8353', '13.0961', 1, '2020-10-20 18:43:49', '2020-10-27 07:05:34'),
(10, 'Branch Office', 'Uttar Pradesh', 'North', 'Bareilly', 'Branch Office (Registered Office)', 'Shyamganj', 'Varuna Integrated Logistics Pvt. Ltd.Near Amar Ujala Press, Shajhanpur Road, Shyamganj, Bareilly -243005 (UP)', '9359090011', 'shyam.agarwal@vil.co.in', '79.4241', '28.3617', 1, '2020-10-20 18:43:49', '2020-10-27 07:07:07'),
(11, 'Branch Office', 'Telengana', 'South-2', 'Bhadrachalam', 'Branch Office', 'Sarapaka Burgamphad', 'Varuna Integreted Logistics P Ltd,House number 7-72/1, Opp om shivam theatre, Sarpaka, Burgampahad mandal, Bhadradri, Kothagudem, Telengana-507128', '9100777833', 'bm.bhadrachalam@vil.co.in', '80.8628', '17.6943', 1, '2020-10-20 18:43:49', '2020-10-27 07:08:38'),
(12, 'Branch Office', 'Haryana', 'North', 'Bilaspur', 'Branch Office', 'Bhoran Kalan', 'Varuna Integrated Logistics Pvt. ltd. C/o-Saini Printing Press, Patudi Bilashpur Road, Near Power House,Bhora Kalan,Gurgaon,HR-122413.', '9728270011', 'laxman.singh@vil.co.in', '76.8399', '28.3069', 1, '2020-10-20 18:43:49', '2020-10-27 07:10:21'),
(13, 'Branch Office', 'Kerala', 'South-1', 'Cochin', 'Branch Office', 'Elor Road', 'Varuna Integrated Logistics Pvt Ltd, Door no. IV/377, V/436,SGR tower,Eloor Road,North Kalamassery Opp BSNL office,Cochin, Kerala-683104', '?8448797808', 'bm.cochin@vil.co.in', '76.322197', '10.064844', 1, '2020-10-20 18:43:49', '2020-10-27 06:51:01'),
(14, 'Branch Office', 'Odisha', 'East', 'Cuttack', 'Branch Office', 'Jagatpur', '\"Varuna Integrated Logistics Pvt. Ltd., Room No-3, 2nd Floor, Gandhi Nagar, Near Tehshil Office,Jagatpur,Cuttack. Odhisa-754021.', '9810662849', 'bm.cuttack@varuna.net', '85.9208', '20.4958', 1, '2020-10-20 18:43:49', '2020-10-27 07:13:20'),
(15, 'Branch Office', 'West Bengal', 'East', 'Dankuni', 'Branch Office', 'Dankuni', 'Varuna Integrated Logistics Pvt. Ltd., Jain Logistics & Parking, N.H.-2 old Delhi Road opposite- Sona Biscuit Factory Village- Kharial, P.S.-Dankuni District- Hooghly, West Bengal-712310', '7603005317', 'bm.dankuni@vil.co.in', '88.2970', '22.6809', 1, '2020-10-20 18:43:49', '2020-10-27 07:15:22'),
(16, 'Branch Office', 'Uttar Pradesh', 'North', 'Gauriganj', 'Branch Office', 'Barnateeker', '\"Varuna Integrated Logistics Pvt. Ltd., 2556, Vill-Barnateeker, Tehshil-Gauriganj, Dist-Amethi, Uttar Pradesh-227409.', '7510001622', 'bm.gauriganj@vil.co.in', '81.6823', '26.2073', 1, '2020-10-20 18:43:49', '2020-10-27 07:17:40'),
(17, 'Branch Office', 'Goa', 'West', 'Goa', 'Branch Office', 'Ponda', '\"Varuna Integrated Logistics Pvt. Ltd.OFFICE NO. 12, 2ND FLOOR, COMMERCE CENTER, ROUND BUILDING, TISK, PONDA, GOA-403401', '8433915582', 'goa@vil.co.in', '74.1240', '15.2993', 1, '2020-10-20 18:43:49', '2020-10-27 07:21:19'),
(18, 'Branch Office', 'Assam', 'East', 'Guwahati', 'Branch Office', 'Beltala', '\"Varuna Integrated Logistics Pvt. Ltd., Building no. A-12, Flat no - 004, Ground floor, Game Village, Near Nidhi Bhavan, N.H.-37, Beltala Guwahati, Assam 781029\"', '9127016535', 'bm.guwahati@vil.co.in', '91.7362', '26.1445', 1, '2020-10-20 18:43:49', '2020-10-27 07:28:14'),
(19, 'Branch Office', 'West Bengal', 'East', 'Haldia', 'Branch Office', 'Haldia', 'Varuna Integrated Logistics Pvt. Ltd., Kamla Kanta Parua, Ward No - 04, HPL Link Road, Behind SUB Nursing Home, Vill-Basudevpur, P.O - Khanjanchak, P.S - Durgachak, Haldia, West Bengal - 721602', '7603005345', 'bm.haldia@vil.co.in', '88.141674', '22.078283', 1, '2020-10-20 18:43:49', '2020-10-27 05:20:16'),
(20, 'Branch Office', 'Uttarakhand', 'North', 'Haridwar', 'Branch Office', 'Dwarka Vihar Colony', '\"Varuna Integrated Logistics Pvt. Ltd. Plot No-77, Dwarka Vihar Colony, Near Salempur Chowk, Sidkul Byepass Road, Bhadrabad, Haridwar, Uttakhand- 249404\"', '7290074701', 'bm.haridwar@vil.co.in', '78.1642', '29.9457', 1, '2020-10-20 18:43:49', '2020-10-27 07:30:18'),
(21, 'Branch Office', 'Haryana', 'North', 'Hassangarh', 'Branch Office', 'Hassangarh', '\"Varuna Integrated Logistics Pvt.Ltd.House No-803, Main Road Near Veternity Hospital,Rohtak,Hasangarh, Haryana-124404.', '7082914321', 'bm.hassangarh@vil.co.in', '76.8461', '28.8365', 1, '2020-10-20 18:43:49', '2020-10-27 12:55:10'),
(22, 'Branch Office', 'Telengana', 'South-2', 'Hyderabad', 'Branch Office', 'SOMAJIGUDA', 'Varuna Integrated Logistics Pvt.Ltd\"DOOR NO-6-3-1239/2/B/1, MEGA CITY 545, SITUATED IN SY NO-32/1, RENUKA ENCLAVE, SOMAJIGUDA, HYDERABAD, TELENGANA-500082', '9100777802', 'bm.hyderabad@vil.co.in', '78.462353', '17.421226', 1, '2020-10-20 18:43:49', '2020-10-27 05:20:33'),
(23, 'Branch Office', 'Madhya Pradesh', 'West', 'Indore', 'Branch Office', 'Mangalia', 'Varuna Integrated Logistics Pvt. Ltd. 50, DWARIKA DHAM COLONY ( OPP. POST OFFICE), MANGLIA, INDORE - 453771', '9773923004', 'ops.indore@vil.co.in', '75.9256', '22.8167', 1, '2020-10-20 18:43:49', '2020-10-27 05:21:01'),
(24, 'Branch Office', 'Rajasthan', 'North', 'Jaipur', 'Branch Office', 'VKI Area', 'Varuna Integrated Logistics Pvt. Ltd. C-164 (A), 4C SCHEME, Machada,Near hotel Harsh, Delhi Ajmer Bypass,Road No-14, VKI Area,Jaipur, Rajasthan-302013', '9116161521', 'bm.jaipur@vil.co.in', '75.7855', '26.9973', 1, '2020-10-20 18:43:49', '2020-10-27 12:58:17'),
(25, 'Branch Office', 'Jammu & Kashmir', 'North', 'Jammu', 'Branch Office', 'Samba', '\"Varuna integrated logistics Pvt. Ltd Near Rangoli Hotel(Bhargwa Degree college)NH-01 Samba (J&K)Pin- 184121 Mob. +91 9018795128,9018876922 \"', '8800119175/9018413858', 'bm.jammu@vil.co.in', '75.150495', '32.627014', 1, '2020-10-20 18:43:49', '2020-10-27 05:01:01'),
(26, 'Branch Office', 'Jharkhand', 'East', 'Jamshedpur', 'Branch Office', 'Baliguma', 'Varuna Integrated Logistics Pvt. Ltd.,Sai regency Flat no-301, Blok- A, Opposite- Mathura Singh ParkingNH-33, Baliguma,PO-MGM Maango Jamshedpur -831018 Contact no-', '9334351300', 'jamsedpur@vil.co.in', '86.0313', '22.8016', 1, '2020-10-20 18:43:49', '2020-10-27 13:01:50'),
(27, 'Branch Office', 'Uttar Pradesh', 'North', 'Kanpur', 'Branch Office', 'Kidwai Nagar', '\"Varuna Integrated Logistics Pvt. Ltd., 128/1249, Y Block, Kidwai Nagar, Kanpur, (UP) - 208011.\"', '7510003092', 'bm.kanpur@vil.co.in', '80.3353', '26.4275', 1, '2020-10-20 18:43:49', '2020-10-28 09:07:14'),
(28, 'Branch Office', 'Kerala', 'South-1', 'Kottayam', 'Branch Office', 'Muttambalam', '\"Varuna Integrated Logistics Pvt. Ltd., 16/44, KOCHU PARAMBIL HOUSE, PO-VADAVATHOOR, KOTTYAM-686010', '7356602162', 'bm.kottayam@vil.co.in', '76.563058', '9.595364', 1, '2020-10-20 18:43:49', '2020-10-27 06:51:47'),
(29, 'Branch Office', 'Uttarakhand', 'North', 'Laksar', 'Branch Office', 'Shekhpuri', 'Varuna Integrated Logistics Pvt. Ltd. Kulveer singh ,Vill-Shekhpuri Goverdhanpur Road,Laksar Dist (Roorkee) Pin -247663(Uttakhand)', '7510003062', 'bm.laksar@vil.co.in', '78.028115', '29.748731', 1, '2020-10-20 18:43:49', '2020-10-27 06:52:40'),
(30, 'Branch Office', 'Uttar Pradesh', 'North', 'Lucknow', 'Branch Office', 'Transport Nagar', '\"Varuna Integrated Logistics Pvt. Ltd., S1 67 2nd floor Transport nagar Kanpur road Lucknow 226012', '7458050022', 'bm.lucknow@vil.co.in', '80.8962', '26.7765', 1, '2020-10-20 18:43:49', '2020-10-28 09:10:50'),
(31, 'Branch Office', 'Tamil Nadu', 'South-1', 'Coimbatore', 'Branch Office', 'Palladam', 'Varuna Integrated Logistics Pvt. Ltd., C/O V.Gomathi,No.17/3, Dist-Thirupur, Palladam, Coimbatore,Tamil Nadu-641664', '7338883872', 'bm.madurai@vil.co.in', '77.2852', '10.9956', 1, '2020-10-20 18:43:49', '2020-10-28 09:12:21'),
(32, 'Branch Office', 'Tamil Nadu', 'South-1', 'Madurai', 'Branch Office', 'Y Othakkadai', 'Varuna Integrated Logistics Pvt. Ltd. Door no-2/499, JPS Complex,Melur Main Road, Y Othakkadai,Madurai, Tamil Nadu-625107', '7338883872', 'bm.madurai@vil.co.in', '', '', 1, '2020-10-20 18:43:49', '2020-10-20 18:43:49'),
(33, 'Branch Office', 'Madhya Pradesh', 'West', 'Mandideep', 'Branch Office', 'Lalpur', 'Varuna Integrated Logistics Pvt. Ltd., Kshipra 1,TF-1, Indus Realty State, Near Dashahra Maidan, Mandideep Distt- Raisen, M.P. -462046.', '9773920086', 'ops.madideep@vil.co.in', '', '', 1, '2020-10-20 18:43:49', '2020-10-20 18:43:49'),
(34, 'Branch Office', 'Karnataka', 'South-1', 'Mysore', 'Branch Office', 'BRINDAVA EXTN', '\"VARUNA INTEGRATED LOGISTICS PVT. LTD. #61, 2nd Floor, Oppo HP Petrol Bunk, Vijaya Nagar 2nd Stage.\nMysore, Karnataka-570016.', '7349768237', 'bm.mysore@vil.co.in', '', '', 1, '2020-10-20 18:43:49', '2020-10-20 18:43:49'),
(35, 'Branch Office', 'Chhatishgarh', 'South-2', 'Raipur', 'Branch Office', 'Kavir Nagar', '\"VARUNA INTEGRATED LOGISTICS PVT. Kavir Nagar,Pahse-2,Mig-385/237,Raipur,Chhatishgar-492100', '9773924003', 'ops.raipur@vil.co.in', '', '', 1, '2020-10-20 18:43:49', '2020-10-20 18:43:49'),
(36, 'Branch Office', 'Maharashtra', 'South-2', 'Nagpur', 'Branch Office', 'Nagpur', 'Varuna Integrated Logistics Pvt LtD. B/404, 4TH Floor, KC Apartment, Near Satyanarayan Temple, Katol Road, Gittikhadan, Nagpur, Mumbai-440013.', '7400422412', 'bm.nagpur@vil.co.in', '', '', 1, '2020-10-20 18:43:49', '2020-10-20 18:43:49'),
(37, 'Branch Office', 'Bihar', 'East', 'Patna', 'Branch Office', 'Transport Nagar ', 'Varuna Integrated Logistics Pvt.Ltd.\nPlot No.B-36,2nd Floor, Arunyoday Colony,\nBeside OM Dev Gatta Factory,Near Pani Tanki,\nTransport Nagar,Patna,Bihar\nPin Code:800026', '8800200490', 'bm.patna@vil.co.in', '', '', 1, '2020-10-20 18:43:49', '2020-10-20 18:43:49'),
(38, 'Branch Office', 'Tamil Nadu', 'South-1', 'Pondicherry', 'Branch Office', 'Murappallam', 'Varuna Integrated Logistics Pvt Ltd,No.26, Thattankulam Main Road, Nettapakkam, Pondicherry-605106.', '9043689000', 'bm.pondicherry@vil.co.in', '', '', 1, '2020-10-20 18:43:49', '2020-10-20 18:43:49'),
(39, 'Branch Office', 'Maharashtra', 'West', 'Pune', 'Branch Office', 'Pune', 'Varuna Integrated Logistics Pvt Ltd 2nd  Floor, Shop No-B/2, Anekan Wadi, Ghanwate Plaza, Chakan Chowk, Chakan - Pune, Maharashtra-410501', '7338880225', 'bm.pune@vil.co.in', '73.859067', '18.755352', 1, '2020-10-20 18:43:49', '2020-10-27 05:22:15'),
(40, 'Branch Office', 'Jharkhand', 'East', 'Ranchi', 'Branch Office', 'Kokar', '\"Varuna Integrated Logistic Pvt ltd. Haider Ali Road-7, Konkar,Ranchi, Jharkhand-834001', '8448699855/9334148684', 'bm.ranchi@vil.co.in', '', '', 1, '2020-10-20 18:43:49', '2020-10-20 18:43:49'),
(41, 'Branch Office', 'Uttarakhand', 'North', 'Rudrapur', 'Branch Office', 'Rudrapur', 'Varuna Integrated Logistics Pvt. Ltd. Plot No. 24 Bhel Colony Road, Aavas Vikas, Rudrapur, Distt. Udham Singh Nagar,Uttrakhand-263153', '8826174774', 'bm.rudrapur@vil.co.in', '79.631950', '28.956654', 1, '2020-10-20 18:43:49', '2020-10-27 05:25:11'),
(42, 'Branch Office', 'Telengana', 'South-2', 'Sadashivpeth', 'Branch Office', 'Vikarbad Road', 'Varuna Integrated Logistics Pvt Ltd C/o Suraj Bajaj, House No-3-8-22, Vikarbad Road, Sadashivpeth, Dist- Sangareddy, Telengana-502291.', '9100777813', 'bm.sadashivpet@vil.co.in', '', '', 1, '2020-10-20 18:43:49', '2020-10-20 18:43:49'),
(43, 'Branch Office', 'West Bengal', 'East', 'Siliguri', 'Branch Office', 'Matigara', 'Varuna Integrated Logistics Pvt. Ltd, 3rd Floor, Khaprail More, P.O & P.S., matighara, Distt - Dargelling, Pincode No. 734010, West Bengal', '7603005359', 'siliguri@vil.co.in', '', '', 1, '2020-10-20 18:43:49', '2020-10-20 18:43:49'),
(44, 'Branch Office', 'Uttarakhand', 'North', 'Sitarganj', 'Branch Office', 'Maharana Pratap Chowk', 'M/s. VARUNA INTEGRATED LOGISTICS PVT LTD, Ward No-3, Sidcul By Pass Road,Maharana Pratap Chowk, Near Sri Hari Hotel, Sitarganj, Udham Singh Nagar, Uttarakhand- 262405', '7510003091', 'suresh.raghupatruni@varuna.net', '', '', 1, '2020-10-20 18:43:49', '2020-10-20 18:43:49'),
(45, 'Branch Office', 'Tamil Nadu', 'South-1', 'Perambalur', 'Branch Office', 'Trichy', 'Varuna Integrated Logistics Pvt. Ltd.  No. 04, Muthuswamy Complex, Naranamangalam Vill, Alathur TK,Opp- MRF LIMITED Perambalur Dist ,Trichy , TN - 621109', '9994768532', 'bm.trichy@vil.co.in', '78.839112', '11.12822', 1, '2020-10-20 18:43:49', '2020-10-27 05:20:44'),
(46, 'Branch Office', 'Gujarat', 'West', 'Vapi', 'Branch Office', 'Dungri Faliya', 'Varuna Integrated Logistics Pvt. Ltd., 67-68 White House, Dungri Faliya, Near Noor kanta, Nashik Road Vapi, Pin Code -396195', '7227026195', 'bm.vapi@vil.co.in', '72.94238', '20.35431', 1, '2020-10-20 18:43:49', '2020-10-27 05:20:53'),
(47, 'Branch Office', 'Uttar Pradesh', 'North', 'Varanasi', 'Branch Office', ' Maheshpur ', 'Varuna Integrated Logistics Pvt Ltd. C/O. Vijay Kumar Yadav, Maheshpur (Chorwa Bari), Post - Industrial Estate, Varanasi - 221106.', '7510003078', 'bm.varanasi@vil.co.in', '', '', 1, '2020-10-20 18:43:49', '2020-10-20 18:43:49'),
(48, 'Branch Office', 'Andhra Pradesh', 'South-2', 'Vijayawada', 'Branch Office', ' Komayyathopu', 'Varuna Integrated Logistics Pvt Ltd. Door no 7-3 komayyathopu, Kanuru Road, Krishna, Dist-Vijayawada AP, PIN No- 520007', '9100777824', 'bm.vijayawada@vil.co.in', '', '', 1, '2020-10-20 18:43:49', '2020-10-20 18:43:49'),
(49, 'Corporate Office', 'Haryana', 'North', 'Gurgaon', 'Corporate Office', 'Pace City-2', 'Varuna Integrated Logistics Pvt. Ltd., Plot No – 572 , Sector 37 – Pace City II,Opp. Nawab Motors,Gurgaon - 122001', 'NA', 'deepak.jain@vil.co.in', '', '', 1, '2020-10-20 18:43:49', '2020-10-20 18:43:49'),
(50, 'Dharuhera', 'Haryana', 'North', 'Dharuhera', 'Fleet Office', 'Khijuri', '\"Varuna Integrated Logistics Pvt. Ltd., 80.4 Milestone, Dharuhera - Jaipur Highway, Vill. Khijuri, Tehsil. Dharuhera, Distt.- Rewari, Haryana. 123106\"', '9315522273', 'hrd.dharuhera@vil.co.in', '', '', 1, '2020-10-20 18:43:49', '2020-10-20 18:43:49'),
(51, 'Fleet Office', 'Haryana', 'North', 'Bahalgarh', 'Fleet Office', 'Meerut Road', 'Varuna Integrated Logistics Pvt. Ltd., Opp Ehsas Filling Staion, Near CRPF Camp, Meerut Road,Bahalgarh, Post Office - Rai, Dist - Sonipat, HR- 131021.', '9053013428', 'narendra.khanna@vil.co.in', '', '', 1, '2020-10-20 18:43:49', '2020-10-20 18:43:49'),
(52, 'Fleet Office', 'Uttar Pradesh', 'North', 'Bareilly Fleet', 'Fleet Office', 'Transport Nagar ', 'Varuna Integrated Logistics Pvt. Ltd. C-4, Water Tank, Transport Nagar,Sajahanpur Road,, Bareilly-UP243001.', '7056700597', 'gopal.sharma@vil.co.in', '', '', 1, '2020-10-20 18:43:49', '2020-10-20 18:43:49'),
(53, 'Fleet Office', 'Telengana', 'South-2', 'Hyderabad Fleet', 'Fleet Office', 'Kompally', 'Varuna Integrated Logistics Pvt. Ltd., H. No. 5, Mahalaxmi Residency, Situated at Village Kompally, Mandal Quthbullapur, District - Ranga Reddy, Near dholaridhani, Telengana-500014.', '9100777829', 'accounts.flthyd@vil.co.in', '', '', 1, '2020-10-20 18:43:49', '2020-10-20 18:43:49'),
(54, 'Fleet Office', 'West Bengal', 'East', 'Kolkata Fleet', 'Fleet Office', 'Dankuni', 'Varuna Integrated Logistics Pvt. Ltd.,                                         Jain Logistics & Parking, N.H.-2 old Delhi Road\nopposite- Sona Biscuit Factory\nVillage- Kharial, P.S.-Dankuni\nDistrict- Hooghly, West Bengal-712310', '9378403121', 'saurabh.sharma@vil.co.in', '', '', 1, '2020-10-20 18:43:49', '2020-10-20 18:43:49'),
(55, 'Zonal Office', 'Tamil Nadu', 'South-1', 'Chennai', 'Regional Office', 'Egmore', 'Varuna Integreted Logistics P Ltd, Door No: 149. Office No: T15&17, Third Floor, Alsa Mall, Montieth Road, Egmore, Chennai 600 008.', '9381325206', 'bm.chennai@vil.co.in', '', '', 1, '2020-10-20 18:43:49', '2020-10-20 18:43:49'),
(56, 'Zonal Office', 'Uttar Pradesh', 'North', 'Delhi R.O.', 'Regional Office', 'Kausambi', '\"Varuna Integrated Logistics Pvt. Ltd., Unit No-307, 3rd Floor, K M Trade Tower, Kaushambi, Ghaziabad – 201010\"', '9313821100', 'bm.delhirO@vil.co.in', '', '', 1, '2020-10-20 18:43:49', '2020-10-20 18:43:49'),
(57, 'Regional Office', 'West Bengal', 'East', 'Kolkata', 'Regional Office', 'Chinnar Park', 'Varuna Integrated Logistics Pvt. Ltd. Off. No. 407 4th Floor ,PS IXL BUILDING. ,Beside Hollyday Inn.,Chinar Park KOLKATA - 700136 ( WB ),', '9205460305', 'asish.mondal@vil.co.in', '', '', 1, '2020-10-20 18:43:49', '2020-10-20 18:43:49'),
(58, 'Zonal Office', 'Maharashtra', 'West', 'Mumbai', 'Regional Office', 'Kapurbawdi', 'Varuna Integrated Logistics Pvt. Ltd. 218, Second Floor, Orion Business Park, Next To Cinemax, Kapurbawdi, Thane (W), Maharashtra, Pin - 400607.', '9053811112', 'hrwest@vil.co.in', '', '', 1, '2020-10-20 18:43:49', '2020-10-20 18:43:49'),
(59, 'Branch Office', 'Maharashtra', 'West', 'Bhiwandi', 'Branch Office', 'Bhiwandi', 'Varuna Integrated Logistics Pvt Ltd Sai panash appartment, Shop no. 101, Opp. Saibaba Mandir, Kalyan Bhiwandi bypass Road, Bhiwandi, Maharashtra Maharashtra– 421302', '8433915599', 'bm.mumbai@vil.co.in', '73.079957', '19.274074', 1, '2020-10-20 18:43:49', '2020-10-27 06:48:36'),
(60, 'Branch Office', 'Maharashtra', 'West', 'Kolhapur', 'Branch Office', 'Kolhapur', 'Varuna Integrated Logistics Pvt. Ltd., Near Indian Oil Petrol Pump, Pryadapak Colony, Amrut Nagar Phata, Warana Nagar, Kolhapur - 416113', '9053071570', 'ops.kolhapur@vil.co.in', '', '', 1, '2020-10-20 18:43:49', '2020-10-20 18:43:49'),
(61, ' Branch Office', 'Rajasthan', 'West', 'Kankroli', 'Branch Office', 'Rajasamand', 'Varuna Integrated logistics Pvt. Ltd., Kshetrapal Bhawan, Near JK Circle, Station Road,Kankroli Rajasamand, Rajasthan – 313324', '9116161527', 'ops.kankroli@vil.co.in', '', '', 1, '2020-10-20 18:43:49', '2020-10-20 18:43:49'),
(62, 'Branch Office', 'Andhra Pradesh', 'South-1', 'Sri-City', 'Branch Office', 'Tada', 'Varuna Integrated Logistics Pvt Ltd.AVM Nagar, Panchayat Office Back Side, Tada Mandal, Andhra Pradesh 524401', '9381325206', 'sricity@varuna.net', '80.032778', '13.586679', 1, '2020-10-20 18:43:49', '2020-10-27 06:50:13'),
(63, ' Branch Office', 'Nepal', 'International', 'Kathmandu', 'Branch Office', 'Lalitpur', 'Varuan Integrated Logistics Pvt. Ltd, Laxmi Building,Second Floor,Dhobighat , Ring road,Lalitpur , Kathmandu,Nepal-44703', '9650205259/9958286708', 'naveen.chaturvedi@vil.co.in', '', '', 1, '2020-10-20 18:43:49', '2020-10-20 18:43:49'),
(64, 'Branch Office', 'Tamil Nadu', 'south-1', 'Coimbatore', 'Branch Office', 'Coimbatore', 'Varuna Integrated Logistics Pvt Ltd NPP – KSS ARCADE, old no: 1/155, New no:329,  Avinashi Road, Neelambur (P.O), Coimbatore ,TAMIL NADU - 641014', '7338883872', 'bm.coimbatore@varuna.net', '77.309705', '10.962022', 1, '2020-10-20 18:43:49', '2020-10-27 05:21:19'),
(65, 'Branch Office', 'Andhra Pradesh', 'south-2', 'Visakhapatnam', 'Branch Office', 'Vadlapudi', 'Varuna Integrated Logistics Pvt Ltd   ,Door NO-30-76-7 RH Coloney Beside Bank of India Vadlapudi Visakhapatnam AP PIN-530046', '9100777825', 'bm.visakhapatnam@varuna.net', '', '', 1, '2020-10-20 18:43:49', '2020-10-20 18:43:49');

-- --------------------------------------------------------

--
-- Table structure for table `map_locations_20oct20`
--

DROP TABLE IF EXISTS `map_locations_20oct20`;
CREATE TABLE IF NOT EXISTS `map_locations_20oct20` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `region` varchar(255) NOT NULL,
  `state` varchar(255) NOT NULL,
  `zone` varchar(255) NOT NULL,
  `branch_name` varchar(255) NOT NULL,
  `office_type` varchar(255) NOT NULL,
  `location` varchar(255) NOT NULL,
  `address` text NOT NULL,
  `phone` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `longitude` varchar(255) NOT NULL,
  `latitude` varchar(255) NOT NULL,
  `status` int(11) NOT NULL DEFAULT '1',
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `map_locations_20oct20`
--

INSERT INTO `map_locations_20oct20` (`id`, `region`, `state`, `zone`, `branch_name`, `office_type`, `location`, `address`, `phone`, `email`, `longitude`, `latitude`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Branch Office', 'Gujarat', 'West', 'Ahmedabad', 'Branch Office', 'Aslali Road', 'Varuna Integrated Logistics Pvt Ltd. Sukh Amrut Complex, 310, 3rd Floor, Opp. Old Narol Court, N.H. 08, Above SBI Bank, Narol-Aslali Road, Narol \r\nAhmedabad (Gujarat)-380050,', '7227022179', 'bm.ahmedabad@vil.co.in', '', '', 1, '2020-10-20 17:54:08', '2020-10-20 17:54:08'),
(2, 'Branch Office', 'Haryana', 'North', 'Ambala', 'Branch Office', 'Mohra', '  VARUNA INTEGRATED LOGISTICS PVT. LTD.\r\nSco-38, Kalka Chowk, Jasmeet Nagar, \r\nNear Royal Palace Hotel,\r\nDist- Ambala, Haryana-133006', '9053001508', 'ambala@vil.co.in', '', '', 1, '2020-10-20 17:57:28', '2020-10-20 17:57:28'),
(3, 'Branch Office', 'Punjab', 'North', 'Ludhiana', 'Branch Office', 'Transport Nagar ', 'Varuna Integrated Logistics Pvt. Ltd. Plot No-97, 1st Floor, Transport Nagar, Ludhiana, Punjab-141010. ', '9810783726', 'bm.ludhiana@varuna.net', '', '', 1, '2020-10-20 17:57:28', '2020-10-20 17:57:28'),
(4, 'Branch Office', 'Tamil Nadu', 'South-1', 'Arkonam', 'Branch Office', 'Itchiputur', 'Varuna Integrated Logistics Pvt. Ltd. 23, M.R.F, Thiru Nagar, Arakonam T.K, Itchiputur, Vellor,Tamil Nadu, Pin code-631003', '7338745211', 'bm.arakkonam@vil.co.in', '', '', 1, '2020-10-20 17:59:39', '2020-10-20 17:59:39'),
(5, 'Branch Office', 'Maharashtra', 'West', 'Aurangabad', 'Branch Office', 'Gangapur', '\"Varuna Integrated Logistics Pvt Ltd\"                                             Plot no-616,Third Floor,Room no.3, Gadekar Nagar, Ranjan Gaon, Gangapur,Near Maharastra Gramin Bank, Post-Ghane Goa, Dist- Aurangabad-431136', '9053071615', 'bm.aurangabad@vil.co.in', '', '', 1, '2020-10-20 17:59:39', '2020-10-20 17:59:39');

-- --------------------------------------------------------

--
-- Table structure for table `media`
--

DROP TABLE IF EXISTS `media`;
CREATE TABLE IF NOT EXISTS `media` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `category_id` int(11) DEFAULT NULL,
  `pages_id` varchar(255) DEFAULT NULL,
  `title` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `brief` text,
  `description` text,
  `sub_title` text,
  `image` varchar(255) DEFAULT NULL,
  `pdf` varchar(255) DEFAULT NULL,
  `sort_order` int(11) DEFAULT NULL,
  `author_name` varchar(255) DEFAULT NULL,
  `featured` tinyint(4) NOT NULL DEFAULT '0',
  `status` tinyint(4) NOT NULL DEFAULT '1',
  `meta_title` varchar(255) DEFAULT NULL,
  `meta_keyword` varchar(255) DEFAULT NULL,
  `meta_description` varchar(255) DEFAULT NULL,
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `media`
--

INSERT INTO `media` (`id`, `category_id`, `pages_id`, `title`, `slug`, `brief`, `description`, `sub_title`, `image`, `pdf`, `sort_order`, `author_name`, `featured`, `status`, `meta_title`, `meta_keyword`, `meta_description`, `created_at`, `updated_at`) VALUES
(3, 1, '10', 'Reducing the effective logistics costs of products by 8% for an FMCG giant', 'reducing-the-effective-logistics-costs-of-products-by-8-for-an-fmcg-giant', 'Explore how we enabled an industry leader in the FMCG sector to boost its profits by optimising its warehousing & secondary distribution.', '<h2 class=\"caseStudySectCat\"><a href=\"#\">CHALLENGES</a></h2>\r\n\r\n<div class=\"singleContentSect caseStudyCont caseStudymain\">\r\n<p><span>A radical shift was desired in the way the company managed the movements of goods from its plants to warehouses and regional distribution centres. After a thorough assessment of its operations and value chain study, we identified the following key challenges: </span></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>1. Unpredictable vehicle availability</strong></p>\r\n\r\n<p><br />\r\nThe company was working with local transporters constantly competing with one another. This, coupled with intensive fluctuating business seasons, made vehicle shortage a regular phenomenon. It led to significant delays in the delivery of products to distribution centres and eventually the market. It also made budgeting, forecasting &amp; planning incredibly difficult.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>2. Poor load planning</strong></p>\r\n\r\n<p><br />\r\nThe company required an integrated perspective on its secondary distribution operations. Its existing system of loading goods into trucks was inefficient with respect to both load optimisation (underutilised tonnage and/or volume) and loading time (24 hours).</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>3. Inefficiencies at the warehouse</strong></p>\r\n\r\n<p><br />\r\nInefficient management of operations at the warehouse resulted in high operating costs, that also included ancillary costs in the form of high loading time and demurrage.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>4. Lack of in-transit visibility</strong></p>\r\n\r\n<p><br />\r\nWorking with local transporters meant no in-transit shipment visibility and total lack of accurate transit time estimations. This dealt a fatal blow to the inventory planning at the distribution level and led to high detention cost.</p>\r\n\r\n<p>&nbsp;</p>\r\n</div>\r\n\r\n<h2 class=\"caseStudySectCat\"><a href=\"#\">SOLUTION</a></h2>\r\n\r\n<div class=\"singleContentSect caseStudyCont caseStudymain\">\r\n<p><span>To tackle rising costs and enable better inventory management with shorter transit times and more efficient operations, Varuna Group devised an integrated approach. Realising that the root cause of the challenges that the company was facing was the lack of an efficient 3PL network, we helped design and create the same around its manufacturing plants and regional distribution centres. </span></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>1. Ensuring vehicle availability through dedicated allocations</strong></p>\r\n\r\n<p><br />\r\nSince market vehicles were at the mercy of seasonal demands, we allocated a fixed number of trucks from our fleet to the company to cope with the situation and warrant timely placements. To ensure continuous return movement for constant vehicle availability and also contain the cost of dedicating a part of our fleet, we assigned equal and opposite return loads to the vehicles.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>2. Identifying the right vehicle fit &amp; utilizing technology to ensure load optimisation</strong></p>\r\n\r\n<p><br />\r\nAfter a thorough analysis of the company&rsquo;s products, we selected the right vehicle type. We moved away from manual load planning and introduced an advanced software to generate an optimum load plan basis the SKUs under consideration and the vehicle to be used. This enabled us to upgrade the space utilisation from 65% to 95% and facilitate cost-effective transportation.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>3. Utilising buffer warehouses for better inventory management</strong></p>\r\n\r\n<p><br />\r\nThe company had established a kitting warehouse next to its manufacturing units. After a thorough examination, our team introduced aggregation at this warehouse, using it as a buffer warehouse. We also kicked off strategic, streamlined measures such as 24x7 operations leading to optimized transit times&nbsp;and reduced detention through better inventory management.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>4. Ensuring efficient operations</strong></p>\r\n\r\n<p><br />\r\nStrict adherence to global quality standards, developing comprehensive SOPs and periodic training of the workforce ensured seamless management of operations, significantly bringing down the costs related to demurrage, damages and other ancillary cost leakages.</p>\r\n\r\n<p>&nbsp;</p>\r\n</div>\r\n\r\n<h2 class=\"caseStudySectCat\"><a href=\"#\">OUR PERFORMANCE</a></h2>\r\n\r\n<div class=\"singleContentSect caseStudyCont caseStudymain\">\r\n<p>1. 50% Reduction in transit times</p>\r\n\r\n<p>2. 100% En route vehicle visibility</p>\r\n\r\n<p>3. 0.04% Dispatch error</p>\r\n\r\n<p>4. 98% Placement efficiency</p>\r\n\r\n<p>5. Increase in vehicle space utilization from 65% to 95%</p>\r\n</div>\r\n\r\n<h2 class=\"caseStudySectCat\"><a href=\"#\">RESULTS</a></h2>\r\n\r\n<div class=\"singleContentSect caseStudyCont caseStudymain\">\r\n<p><span>As a result of our systematic, transparent and predictable operations, the company not only experienced massive improvements in its distribution chain but was also able to boost its profits. It was able to:</span></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>1. Reduce cost per tonne</p>\r\n\r\n<p>2. Reduce time to market</p>\r\n\r\n<p>3. Reduce inventory size</p>\r\n\r\n<p>4. Register 8% reduction in the effective logistical cost&nbsp;of products</p>\r\n\r\n<p>&nbsp;</p>\r\n</div>', 'Our customer is an industry leader in the FMCG sector with a formidable multi-national presence. Within India, owing to the vast geographical spread of its supply chain, the company was facing myriad challenges in its warehousing and secondary distribution. This led to systemic losses and opportunity costs, eventually affecting the company’s growth and bottom-line.', '190920120722-CaseStudykk.png', NULL, 2, 'test', 1, 1, 'Reducing the Effective Logistics Costs of Products by 8% for an FMCG Giant | Varuna Group', 'Reducing the working capital requirement by 49% to drive growth', 'Our customer is an industry leader in the FMCG sector with a formidable multi-national presence. Within India, owing to the vast geographical spread of its supply chain, the company was facing myriad challenges in its warehousing and secondary distributio', '2020-04-06 14:20:57', '2021-02-08 05:35:56'),
(4, 2, '10', 'Bringing down In-transit Damages from 9% to 0.5%, Resulting in Significant Cost Savings.', 'bringing-down-in-transit-damages-from-9-to-0-5-resulting-in-significant-cost-savings', 'Explore how we helped a leading manufacturer of wines & spirits save more by\r\nreducing in-transit damages and improving transit times.', '<h2 class=\"caseStudySectCat\"><a href=\"#\">CHALLENGES</a></h2>\r\n\r\n<div class=\"singleContentSect caseStudyCont caseStudymain\">\r\n<p><span>The company, working with local transporters for the movement of empty glass bottles to its bottling plants, faced multiple challenges: </span></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>1. Wrong vehicle type &amp; inefficient load optimisation</strong></p>\r\n\r\n<p><br />\r\nThe small-time transporters were using open body trucks to transport poorly stacked empty bottles with practically no robust shielding against in-transit damages. Although the government had officially increased the maximum load-carrying capacity of heavy vehicles, including trucks, by 20-25% in 2018, the transporters were still not utilising it, resulting in a higher cost per bottle for the company.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>2. Negligible In-transit visibility</strong></p>\r\n\r\n<p><br />\r\nWorking with unorganized players resulted in no visibility or predictability of logistics operations. Lack of transparency forced the client to maintain surplus inventory at&nbsp;warehouses to ensure product availability resulting in higher working capital requirements.</p>\r\n\r\n<p><br />\r\n<strong>3. Lack of right skills&nbsp;&amp; no technological integrations</strong></p>\r\n\r\n<p><br />\r\nUntrained team members and zero technological integrations further escalated unpredictability resulting in increased incidences of error and inaccurate planning. The above challenges eventually cost the company a significant amount of working capital.</p>\r\n\r\n<p>&nbsp;</p>\r\n</div>\r\n\r\n<h2 class=\"caseStudySectCat\"><a href=\"#\">SOLUTION</a></h2>\r\n\r\n<div class=\"singleContentSect caseStudyCont caseStudymain\">\r\n<p><span>To tackle rising costs and enable better transportation of empty glass bottles with shorter transit times and more efficient operations, we began devising a comprehensive approach and took the following steps: </span></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>1. Right vehicle fit &amp; better loadability</strong></p>\r\n\r\n<p><br />\r\nWe designated 32 feet multi-axle trucks with closed containerised bodies as the vehicles to be used for transporting the products. With this, we were not only ensuring minimal in-transit damages but also maximising the loadability, in tune with the government&rsquo;s updated policies.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>&nbsp;2. Industry-leading transit times with real-time tracking</strong></p>\r\n\r\n<p><br />\r\nOur GPS-enabled fleet monitored via a centralised control tower empowered the client to track &amp; monitor vehicles in real-time. With our operationally excellent DNA, we were also successful at offering better-than-market transit times.</p>\r\n\r\n<p><br />\r\n&nbsp;<br />\r\n<strong>3. Skilled team &amp; greater efficiency</strong></p>\r\n\r\n<p><br />\r\nWe deployed our comprehensively trained workforce and debriefed them regarding the project. Right from the drivers to the loading clerks, everyone had 100% clarity on what they had to do to enable maximum efficiency for our customer.</p>\r\n\r\n<p>&nbsp;</p>\r\n</div>\r\n\r\n<p>Through collaboration, continuous monitoring and optimization of operations to solve challenges at each stage, we were able to drive tangible results for the company.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><img alt=\"table-1.png\" class=\"img-fluid\" src=\"/assets/themes/theme-1/images/table-1.png\" /></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<h2 class=\"caseStudySectCat\"><a href=\"#\">45% &nbsp;reduction in transit times&nbsp;</a></h2>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><img alt=\"table-1.png\" class=\"img-fluid\" src=\"/assets/themes/theme-1/images/table-2.png\" /></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<h2 class=\"caseStudySectCat\"><a href=\"#\">RESULTS</a></h2>\r\n\r\n<div class=\"singleContentSect caseStudyCont caseStudymain\">\r\n<p><span>By introducing efficiencies into the primary logistics setup of the company and driving seamless coordination, complete visibility &amp; greater savings, we were able to turn a 2-month trial project into a permanent association for more than 50% of its transport operations. &nbsp;</span></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>1. <strong> Reducing the cost per bottle: </strong> With the help of the right vehicles and a trained team that followed the best stacking practices, we were able to improve the loadability and therefore bring down the cost per bottle borne by the company.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>2. <strong>Further efficiency optimization with Varuna Group: </strong> In an effort to minimise potential detention costs arising due to the warehouses being located at the final destinations, we are working to establish a buffer warehouse close to the bottling plant of the company.</p>\r\n\r\n<p>&nbsp;</p>\r\n</div>', 'Our customer is one of the leading manufacturers of wines & spirits across the globe, with a\r\nmonumental presence in 160+ markets. It generates annual revenue of Rs. 16,000 crores and\r\nowns more than 15 of the top 100 spirit brands. In India, the company was bearing the brunt of\r\ninefficient primary transportation operations in the form of damages and losses.', '190920122304-Case Study_PR.png', NULL, 1, NULL, 0, 1, NULL, NULL, NULL, '2020-09-19 12:21:29', '2021-08-13 15:30:09'),
(5, 3, '15,12,10', 'Adding INR 5.28 Cr to the bottom line of a rapidly growing FMCG brand', 'adding-inr-5-28-cr-to-the-bottom-line-of-a-rapidly-growing-fmcg-brand', 'Explore how we helped one of the leading manufacturers of pet food in India improve its bottom line by building an efficient primary transportation system.', '<h2>CHALLENGES</h2>\r\n\r\n<p>The company was collaborating with a number of local, unorganised service providers for its primary transportation needs, giving rise to multiple challenges:</p>\r\n\r\n<ol>\r\n	<li><strong>Absence of a Transportation Hub Nearby Causing Placement Delays</strong><br />\r\n	The company&rsquo;s manufacturing plant is situated in a remote location in Raipur with no transportation hub in close proximity. To resolve this, it hired multiple vendors but even after 72 hours of raising an indent, the company had no guarantee of vehicles being placed. Owing to this, it also had to keep more stock than necessary to ensure uninterrupted supply to distributors.<br />\r\n	&nbsp;</li>\r\n	<li><strong>Inefficient Load Optimization Led to In-transit Damages&nbsp;</strong><br />\r\n	While its products should ideally have been transported via a 32 feet multi-axle containerised truck, the company was compelled to work with whatever vehicle the transport services providers were offering. As the company&rsquo;s packages were heavy but non-bulky, the remaining space was often utilised by squeezing &nbsp;a second type of goods for maximum throughput. The local transporters also indulged in fraudulent practices of loading goods from different clients within the same truck which resulted in significant damages to the packages during transit.<br />\r\n	&nbsp;</li>\r\n	<li><strong>Higher Transit Times + Operational Inefficiencies = High Working Capital</strong><br />\r\n	As the company was working with unorganized transport services providers, its transit times remained significantly high, adding to the overall inventory carrying costs. Moreover, these associations combined with minimal technological intervention and unskilled team members riddled the company&rsquo;s logistics operations with sub-optimum practices and intensive manual work. This led to a steep rise in the error margin, eventually costing the company a significant amount of working capital.</li>\r\n</ol>\r\n\r\n<p>These challenges were affecting two key growth areas of the company -</p>\r\n\r\n<ul>\r\n	<li>A huge chunk of the working capital which could be diverted towards core functions was being spent on managing logistics operations&nbsp;</li>\r\n	<li>Unable to expand online due to the strict logistics compliance requirements of online aggregators which the current service providers couldn&rsquo;t meet</li>\r\n</ul>\r\n\r\n<h2><br />\r\nSOLUTION</h2>\r\n\r\n<p>In order to tackle rising costs and enable better transportation of shipments with shorter transit times and more efficient operations, we began devising a comprehensive approach and took the following steps:</p>\r\n\r\n<ol>\r\n	<li>On-time vehicle availability<br />\r\n	We moved our vehicles closer to the company&rsquo;s manufacturing plant and started providing them 3 trucks per day even if it meant that the trucks had to travel empty for more than 500 km to reach their destination to ensure predictable placements.&nbsp;<br />\r\n	&nbsp;</li>\r\n	<li>Identifying the right vehicle fit&nbsp;<br />\r\n	As per our solution, we identified 32 feet multi-axle containerised trucks as the only vehicle to be used for the transportation of the client&rsquo;s packages in order to bring down in-transit damages to a negligible amount as well as maximise loadability<br />\r\n	&nbsp;</li>\r\n	<li>Industry-leading transit times with real-time tracking<br />\r\n	With an operationally excellent DNA, a GPS enabled fleet and a centralised control tower offering complete visibility and transparency , we offered unbeatable transit times along with real-time tracking &amp; monitoring of vehicles. &nbsp;</li>\r\n	<li>&nbsp;</li>\r\n</ol>\r\n\r\n<p>Through collaboration, continuous monitoring and optimization of operations to solve challenges at each stage, we were able to drive tangible results for the company.</p>\r\n\r\n<p><br />\r\nReduction in warehousing space resulting in <strong>&nbsp;INR 44,88,000 annual savings</strong><br />\r\n50% reduction in inventory days resulting in &nbsp;<strong>INR 94,58,182 annual savings</strong><br />\r\nReduction in DEPS resulting in<strong> &nbsp;INR 3,65,94,720 annual savings</strong></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<h3><em>&ldquo;With Varuna Logistics, our primary transportation is sorted. They are delivering our products safely &amp; swiftly while reducing the total cost of our logistics operations.&rdquo;</em></h3>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<h2>Operating amidst the COVID-19 Lockdown</h2>\r\n\r\n<p>When the pandemic was disrupting every industry imaginable, we successfully brought our client&rsquo;s operations back on track with our transparent, predictable and consistent service.&nbsp;</p>\r\n\r\n<p>Having a vertically owned supply chain, our client faced an unprecedented demand as the competitor&rsquo;s imports were curbed due to the government imposed lockdown. Though<br />\r\nvehicle movement was restricted, manpower was drastically reduced and ensuring compliances related to hygiene and safety became critical roadblocks to getting the product in the market, we were committed to keep our customer&rsquo;s supply chain running and so we did.</p>\r\n\r\n<ul>\r\n	<li>97% Placement Performance: The company raised indents for 88 vehicles during the lockdown and we were able to successfully place 86 of them.&nbsp;</li>\r\n	<li>Reliable Transit Time: Post 1st of April, we were able to generate the same TAT performance that we had delivered before the lockdown.</li>\r\n	<li>Contactless Logistics: To ensure minimum human touch, we pioneered digital LR during the lockdown period to ensure greater workforce safety, error reduction and cost optimisation.&nbsp;</li>\r\n	<li>&nbsp;</li>\r\n</ul>\r\n\r\n<h3><em>&ldquo;After some initial hiccups, not only was Varuna Logistics able to get our products to the market, they did so in half the expected time despite the lockdown.&rdquo;</em></h3>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<h2>RESULTS</h2>\r\n\r\n<p><strong>5, 28,95,006 annual savings due to efficient, predictable and reliable logistics service.</strong></p>\r\n\r\n<p>In one year of our engagement with the company, we have been able to build more efficiencies into its primary transportation setup, enabling seamless coordination, complete visibility and greater savings.</p>\r\n\r\n<ul>\r\n	<li><strong>Saving Warehousing Cost</strong>: Initially, the company had decided to expand its Delhi warehouse from 25,000 square feet to 35,000 square feet. After experiencing our performance, it decided to reduce the warehousing space to just 18,000 square feet as all the redundancies within the system were driven out. It has also initiated efforts to bring down its Guwahati warehouse space by 30-35%.&nbsp;</li>\r\n	<li><strong>Saving Inventory Carrying Cost:</strong> With an efficient logistics system, the need to carry and store excessive inventory has been reduced by up to 50% from 25 days, saving the company a significant portion of its working capital.</li>\r\n	<li><strong>Optimizing Manpower Cost:</strong> As the status of operations became completely transparent &amp; visible, the daily hassles reduced. The company is now working with a single vendor and raising indents on our customer portal owing to which regular alignments have become systematic &amp; streamlined and manpower costs have been optimised.&nbsp;</li>\r\n	<li><strong>Online Growth:</strong> Complete alignment with aggregator compliances along with a reliable delivery setup has enabled the company to expand its online presence and boost online sales. &nbsp;</li>\r\n</ul>', 'Our customer is one of the leading manufacturers of pet foods in India and a part of one of the country’s top conglomerates. With a growth rate in double digits and a pan-India presence, the company was poised to soar albeit one critical challenge - inefficient logistics operations.', '121120073427-rsz_blog-img5.jpg', NULL, 0, NULL, 0, 1, NULL, NULL, NULL, '2020-11-11 05:10:29', '2021-08-16 14:59:10'),
(9, 4, '32', 'Parmeshwar Singh8', 'p', 'qqqq', '<p>qqqqqqq</p>', 'qqq', '110821043246-Parmeshwar.png', NULL, 1, NULL, 1, 1, 'qqqq', NULL, 'qqqqq', '2021-08-11 16:32:46', '2021-08-16 14:59:15'),
(10, NULL, '23', 'tset01', 'tset01', 'test01', '<p>&nbsp;test01&nbsp;test01&nbsp;test01test01test01test01test01test01test01test01test01test01test01test01test01test01test01test01test01test01test01</p>', 'test01', '130821090204-emailer_photo (1).png', NULL, 1, NULL, 1, 1, 'test01', NULL, 'testest01', '2021-08-13 09:02:04', '2021-08-13 09:02:05'),
(11, NULL, '33', 'ttt', 'ttt', 'ttt', '<p>tttt</p>', 'ttt', '160821092844-emailer_photo.png', NULL, 1, NULL, 1, 1, 'ttt', NULL, 'ttt', '2021-08-16 09:28:43', '2021-08-16 09:28:44');

-- --------------------------------------------------------

--
-- Table structure for table `media_categories`
--

DROP TABLE IF EXISTS `media_categories`;
CREATE TABLE IF NOT EXISTS `media_categories` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `type` varchar(50) DEFAULT NULL,
  `parent_id` int(11) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `slug` varchar(255) DEFAULT NULL,
  `sort_order` int(11) NOT NULL DEFAULT '0',
  `status` tinyint(4) DEFAULT NULL,
  `meta_title` varchar(255) DEFAULT NULL,
  `meta_keyword` varchar(255) DEFAULT NULL,
  `meta_description` varchar(255) DEFAULT NULL,
  `created_at` datetime DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `media_categories`
--

INSERT INTO `media_categories` (`id`, `type`, `parent_id`, `name`, `slug`, `sort_order`, `status`, `meta_title`, `meta_keyword`, `meta_description`, `created_at`, `updated_at`) VALUES
(1, NULL, 0, 'Ramji sharma', 'ramji-sharma', 0, 1, NULL, NULL, NULL, '2020-07-23 08:53:09', '2020-07-23 08:53:09'),
(2, NULL, 1, 'test', 'test', 0, 1, NULL, NULL, NULL, '2020-07-23 08:55:56', '2020-07-23 08:55:56');

-- --------------------------------------------------------

--
-- Table structure for table `menus`
--

DROP TABLE IF EXISTS `menus`;
CREATE TABLE IF NOT EXISTS `menus` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `position` enum('top','bottom') DEFAULT 'top',
  `status` tinyint(4) NOT NULL DEFAULT '1',
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `menus`
--

INSERT INTO `menus` (`id`, `title`, `slug`, `position`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Top Menu', 'top-menu', 'top', 1, '2019-08-31 08:15:32', '2019-09-05 13:10:32');

-- --------------------------------------------------------

--
-- Table structure for table `menu_items`
--

DROP TABLE IF EXISTS `menu_items`;
CREATE TABLE IF NOT EXISTS `menu_items` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `menu_id` int(11) DEFAULT NULL,
  `parent_id` int(11) DEFAULT '0',
  `page_id` varchar(100) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `url` varchar(255) DEFAULT NULL,
  `slug` varchar(255) DEFAULT NULL,
  `target` varchar(255) DEFAULT NULL,
  `link_type` varchar(255) DEFAULT NULL,
  `sort_order` int(11) DEFAULT '0',
  `status` tinyint(4) NOT NULL DEFAULT '1',
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `menu_items`
--

INSERT INTO `menu_items` (`id`, `menu_id`, `parent_id`, `page_id`, `title`, `url`, `slug`, `target`, `link_type`, `sort_order`, `status`, `created_at`, `updated_at`) VALUES
(1, 1, 0, '3', 'Half Sleeves', 'categories/half-sleeves', 'half-sleeves', '_self', 'category', 0, 1, '2019-08-31 10:23:45', '2019-09-04 11:05:52'),
(2, 1, 1, '2', 'Men', 'categories/men', 'men', '_self', 'category', 0, 1, '2019-08-31 11:33:22', '2019-09-02 05:47:26'),
(3, 1, 2, '4', 'Shirts', 'categories/shirts', 'shirts', '_self', 'category', 0, 1, '2019-08-31 11:34:19', '2019-09-02 05:46:54'),
(5, 1, 0, '19', 'asdfasdf', 'blogs/tesrt?type=blogs', 'asdfasdf', '_self', 'blog', 0, 1, '2019-09-02 05:15:13', '2019-09-04 11:05:52');

-- --------------------------------------------------------

--
-- Table structure for table `newsletter_subscribers`
--

DROP TABLE IF EXISTS `newsletter_subscribers`;
CREATE TABLE IF NOT EXISTS `newsletter_subscribers` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `email` varchar(255) DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT '0',
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `newsletter_subscribers`
--

INSERT INTO `newsletter_subscribers` (`id`, `email`, `status`, `created_at`, `updated_at`) VALUES
(2, 'ranv@gmail.com', 1, '2019-07-20 13:18:25', '2019-07-20 13:18:25'),
(4, 'tripti@gsdgkj.com', 1, '2019-07-20 13:31:01', '2019-07-20 13:31:01'),
(5, 'tripti@indiaint.com', 1, '2019-07-20 13:31:25', '2019-07-20 13:31:25'),
(6, 'pratibh@indiaint.com', 1, '2019-07-20 13:37:31', '2019-07-20 13:37:31'),
(7, 'xyz@indiaint.com', 1, '2019-07-20 13:37:59', '2019-07-20 13:37:59'),
(8, 'sanyogita@indiaint.com', 1, '2019-07-20 13:45:42', '2019-07-20 13:45:42'),
(9, 'rahul@indiaint.com', 1, '2019-07-20 18:30:38', '2019-07-20 18:30:38'),
(10, 'mukesh@indiiant.com', 1, '2019-07-20 18:32:47', '2019-07-20 18:32:47'),
(11, 'rohit@indiaint.com', 1, '2019-07-20 18:39:33', '2019-07-20 18:39:33'),
(12, 'mukesh@indiaint.com', 1, '2019-07-20 18:41:10', '2019-07-20 18:41:10'),
(13, 'hiteshi@indiaint.com', 1, '2019-07-20 18:42:44', '2019-07-20 18:42:44'),
(14, 'ramji@gmail.com', 1, '2019-08-06 14:46:39', '2019-08-06 14:46:39');

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

DROP TABLE IF EXISTS `orders`;
CREATE TABLE IF NOT EXISTS `orders` (
  `id` bigint(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT '0',
  `order_no` varchar(20) DEFAULT NULL,
  `billing_name` varchar(100) DEFAULT NULL,
  `billing_email` varchar(255) DEFAULT NULL,
  `billing_phone` varchar(20) DEFAULT NULL,
  `billing_address` varchar(255) DEFAULT NULL,
  `billing_locality` varchar(100) DEFAULT NULL,
  `billing_pincode` varchar(10) DEFAULT NULL,
  `billing_city` int(50) DEFAULT '0',
  `billing_state` int(11) DEFAULT '0',
  `billing_country` int(11) DEFAULT '0',
  `shipping_name` varchar(100) DEFAULT NULL,
  `shipping_email` varchar(255) DEFAULT NULL,
  `shipping_phone` varchar(20) DEFAULT NULL,
  `shipping_address` varchar(255) DEFAULT NULL,
  `shipping_locality` varchar(100) DEFAULT NULL,
  `shipping_pincode` varchar(20) DEFAULT NULL,
  `shipping_city` int(11) DEFAULT '0',
  `shipping_state` int(11) DEFAULT '0',
  `shipping_country` int(11) DEFAULT '0',
  `coupon_id` int(11) DEFAULT '0',
  `coupon_data` text,
  `coupon_discount` decimal(15,2) DEFAULT '0.00',
  `sub_total` decimal(15,2) DEFAULT '0.00',
  `total` decimal(15,2) DEFAULT '0.00',
  `discount` decimal(15,2) DEFAULT '0.00',
  `used_wallet_amount` decimal(15,2) DEFAULT '0.00',
  `shipping_charge` decimal(15,2) DEFAULT '0.00',
  `tax` decimal(15,2) DEFAULT '0.00',
  `payment_method` varchar(20) DEFAULT NULL,
  `payment_txn_id` varchar(50) DEFAULT NULL,
  `payment_status` varchar(50) DEFAULT NULL,
  `payment_response` text,
  `payment_nonce` varchar(255) DEFAULT NULL,
  `order_status` varchar(50) DEFAULT 'pending',
  `ip_address` varchar(255) DEFAULT NULL,
  `created_at` datetime DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `user_id` (`user_id`),
  KEY `payment_status` (`payment_status`),
  KEY `order_status` (`order_status`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `user_id`, `order_no`, `billing_name`, `billing_email`, `billing_phone`, `billing_address`, `billing_locality`, `billing_pincode`, `billing_city`, `billing_state`, `billing_country`, `shipping_name`, `shipping_email`, `shipping_phone`, `shipping_address`, `shipping_locality`, `shipping_pincode`, `shipping_city`, `shipping_state`, `shipping_country`, `coupon_id`, `coupon_data`, `coupon_discount`, `sub_total`, `total`, `discount`, `used_wallet_amount`, `shipping_charge`, `tax`, `payment_method`, `payment_txn_id`, `payment_status`, `payment_response`, `payment_nonce`, `order_status`, `ip_address`, `created_at`, `updated_at`) VALUES
(1, 1, 'SJ1', 'Vikas', 'vikas@indiaint.com', '9910172953', 'B-112, sec-64', 'Noida', '110053', 63, 10, 99, 'Vikas', '', '9874563214', 'B-112, Sec-64', 'Noida', '201301', 84, 38, 99, 6, 'a:12:{s:2:\"id\";i:6;s:4:\"name\";s:11:\"Summer Sale\";s:4:\"code\";s:8:\"SJDIS100\";s:4:\"type\";s:5:\"value\";s:8:\"discount\";s:6:\"100.00\";s:9:\"use_limit\";i:995;s:10:\"min_amount\";s:4:\"0.00\";s:10:\"max_amount\";s:4:\"0.00\";s:16:\"max_discount_amt\";s:6:\"100.00\";s:10:\"start_date\";s:19:\"2019-06-01 00:00:00\";s:11:\"expiry_date\";s:19:\"2019-08-31 00:00:00\";s:6:\"status\";i:1;}', '0.00', '4000.00', '4380.00', '8350.00', '0.00', '480.00', '8350.00', 'ccavenue', NULL, NULL, NULL, NULL, 'pending', '192.168.1.15', '2019-07-05 07:17:20', '2019-07-05 07:28:30'),
(2, 1, 'SJ2', 'Vikas', 'vikas@indiaint.com', '9910172953', 'B-112, sec-64', 'Noida', '110053', 63, 10, 99, 'Vikas', '', '9874563214', 'B-112, Sec-64', 'Noida', '201301', 84, 38, 99, 6, 'a:12:{s:2:\"id\";i:6;s:4:\"name\";s:11:\"Summer Sale\";s:4:\"code\";s:8:\"SJDIS100\";s:4:\"type\";s:5:\"value\";s:8:\"discount\";s:6:\"100.00\";s:9:\"use_limit\";i:995;s:10:\"min_amount\";s:4:\"0.00\";s:10:\"max_amount\";s:4:\"0.00\";s:16:\"max_discount_amt\";s:6:\"100.00\";s:10:\"start_date\";s:19:\"2019-06-01 00:00:00\";s:11:\"expiry_date\";s:19:\"2019-08-31 00:00:00\";s:6:\"status\";i:1;}', '0.00', '4000.00', '4380.00', '8350.00', '0.00', '480.00', '8350.00', 'ccavenue', NULL, NULL, NULL, NULL, 'pending', '192.168.1.15', '2019-07-26 09:34:08', '2019-07-26 09:34:08'),
(3, 1, 'SJ3', 'Vikas', 'vikas@indiaint.com', '9910172953', 'B-112, sec-64', 'Noida', '110053', 63, 10, 99, 'Vikas', '', '9874563214', 'B-112, Sec-64', 'Noida', '201301', 84, 38, 99, 6, 'a:12:{s:2:\"id\";i:6;s:4:\"name\";s:11:\"Summer Sale\";s:4:\"code\";s:8:\"SJDIS100\";s:4:\"type\";s:5:\"value\";s:8:\"discount\";s:6:\"100.00\";s:9:\"use_limit\";i:995;s:10:\"min_amount\";s:4:\"0.00\";s:10:\"max_amount\";s:4:\"0.00\";s:16:\"max_discount_amt\";s:6:\"100.00\";s:10:\"start_date\";s:19:\"2019-06-01 00:00:00\";s:11:\"expiry_date\";s:19:\"2019-08-31 00:00:00\";s:6:\"status\";i:1;}', '0.00', '5369.00', '5927.82', '9415.90', '0.00', '658.82', '9415.90', 'ccavenue', NULL, NULL, NULL, NULL, 'pending', '192.168.1.15', '2019-07-26 10:49:56', '2019-07-26 10:49:56'),
(4, 1, 'SJ4', 'Vikas', 'vikas@indiaint.com', '9910172953', 'B-112, sec-64', 'Noida', '110053', 63, 10, 99, 'Vikas', '', '9874563214', 'B-112, Sec-64', 'Noida', '201301', 84, 38, 99, 6, 'a:12:{s:2:\"id\";i:6;s:4:\"name\";s:11:\"Summer Sale\";s:4:\"code\";s:8:\"SJDIS100\";s:4:\"type\";s:5:\"value\";s:8:\"discount\";s:6:\"100.00\";s:9:\"use_limit\";i:995;s:10:\"min_amount\";s:4:\"0.00\";s:10:\"max_amount\";s:4:\"0.00\";s:16:\"max_discount_amt\";s:6:\"100.00\";s:10:\"start_date\";s:19:\"2019-06-01 00:00:00\";s:11:\"expiry_date\";s:19:\"2019-08-31 00:00:00\";s:6:\"status\";i:1;}', '0.00', '5369.00', '5927.82', '9415.90', '0.00', '658.82', '9415.90', 'ccavenue', NULL, NULL, NULL, NULL, 'pending', '192.168.1.15', '2019-07-24 11:20:06', '2019-07-24 11:20:06'),
(5, 1, 'SJ5', 'Vikas', 'vikas@indiaint.com', '9910172953', 'B-112, sec-64', 'Noida', '110053', 63, 10, 99, 'Vikas', '', '9874563214', 'B-112, Sec-64', 'Noida', '201301', 84, 38, 99, 6, 'a:12:{s:2:\"id\";i:6;s:4:\"name\";s:11:\"Summer Sale\";s:4:\"code\";s:8:\"SJDIS100\";s:4:\"type\";s:5:\"value\";s:8:\"discount\";s:6:\"100.00\";s:9:\"use_limit\";i:995;s:10:\"min_amount\";s:4:\"0.00\";s:10:\"max_amount\";s:4:\"0.00\";s:16:\"max_discount_amt\";s:6:\"100.00\";s:10:\"start_date\";s:19:\"2019-06-01 00:00:00\";s:11:\"expiry_date\";s:19:\"2019-08-31 00:00:00\";s:6:\"status\";i:1;}', '0.00', '1410.00', '1479.20', '2340.00', '0.00', '169.20', '2340.00', 'ccavenue', NULL, NULL, NULL, NULL, 'pending', '192.168.1.15', '2019-07-06 10:11:35', '2019-07-06 10:11:35'),
(6, 1, 'SJ6', 'Vikas', 'vikas@indiaint.com', '9910172953', 'B-112, sec-64', 'Noida', '110053', 63, 10, 99, 'Vikas', '', '9874563214', 'B-112, Sec-64', 'Noida', '201301', 84, 38, 99, 6, 'a:12:{s:2:\"id\";i:6;s:4:\"name\";s:11:\"Summer Sale\";s:4:\"code\";s:8:\"SJDIS100\";s:4:\"type\";s:5:\"value\";s:8:\"discount\";s:6:\"100.00\";s:9:\"use_limit\";i:995;s:10:\"min_amount\";s:4:\"0.00\";s:10:\"max_amount\";s:4:\"0.00\";s:16:\"max_discount_amt\";s:6:\"100.00\";s:10:\"start_date\";s:19:\"2019-06-01 00:00:00\";s:11:\"expiry_date\";s:19:\"2019-08-31 00:00:00\";s:6:\"status\";i:1;}', '0.00', '520.00', '546.00', '779.00', '546.00', '26.00', '779.00', 'ccavenue', NULL, NULL, NULL, NULL, 'pending', '192.168.1.15', '2019-07-06 10:46:02', '2019-07-06 10:46:02'),
(7, 1, 'SJ7', 'Vikas', 'vikas@indiaint.com', '9910172953', 'B-112, sec-64', 'Noida', '110053', 63, 10, 99, 'Vikas', 'vikas@indiaint.com', '9874563214', 'B-112, Sec-64', 'Noida', '201301', 84, 38, 99, 6, 'a:12:{s:2:\"id\";i:6;s:4:\"name\";s:11:\"Summer Sale\";s:4:\"code\";s:8:\"SJDIS100\";s:4:\"type\";s:5:\"value\";s:8:\"discount\";s:6:\"100.00\";s:9:\"use_limit\";i:995;s:10:\"min_amount\";s:4:\"0.00\";s:10:\"max_amount\";s:4:\"0.00\";s:16:\"max_discount_amt\";s:6:\"100.00\";s:10:\"start_date\";s:19:\"2019-06-01 00:00:00\";s:11:\"expiry_date\";s:19:\"2019-08-31 00:00:00\";s:6:\"status\";i:1;}', '100.00', '4000.00', '4380.00', '8350.00', '4380.00', '0.00', '480.00', 'Wallet', NULL, NULL, NULL, NULL, 'success', '192.168.1.15', '2019-07-08 05:53:37', '2019-07-08 11:52:25'),
(8, 12, 'SJ8', 'siddique', 'siddique@indiaint.com', '9998888888', 'B112', 'delhi', '201301', 63, 10, 99, 'siddique', 'siddique@indiaint.com', '1234567890', 'B112', 'delhi', '201301', 63, 10, 99, 0, 's:0:\"\";', '0.00', '520.00', '646.00', '779.00', '0.00', '100.00', '26.00', 'ccavenue', NULL, NULL, NULL, NULL, 'pending', '192.168.1.24', '2019-07-08 06:10:53', '2019-07-08 06:10:53'),
(9, 12, 'SJ9', 'siddique', 'siddique@indiaint.com', '9998888888', 'B112', 'delhi', '201301', 63, 10, 99, 'siddique', 'siddique@indiaint.com', '1234567890', 'B112', 'delhi', '201301', 63, 10, 99, 0, 's:0:\"\";', '0.00', '520.00', '646.00', '779.00', '0.00', '100.00', '26.00', 'ccavenue', NULL, NULL, NULL, NULL, 'success', '192.168.1.24', '2019-07-08 06:13:06', '2019-07-08 11:51:49'),
(10, 12, 'SJ10', 'siddique', 'siddique@indiaint.com', '9998888888', 'B112', 'delhi', '201301', 63, 10, 99, 'siddique', 'siddique@indiaint.com', '1234567890', 'B112', 'delhi', '201301', 63, 10, 99, 6, 'a:12:{s:2:\"id\";i:6;s:4:\"name\";s:11:\"Summer Sale\";s:4:\"code\";s:8:\"SJDIS100\";s:4:\"type\";s:5:\"value\";s:8:\"discount\";s:6:\"100.00\";s:9:\"use_limit\";i:995;s:10:\"min_amount\";s:4:\"0.00\";s:10:\"max_amount\";s:4:\"0.00\";s:16:\"max_discount_amt\";s:6:\"100.00\";s:10:\"start_date\";s:19:\"2019-06-01 00:00:00\";s:11:\"expiry_date\";s:19:\"2019-08-31 00:00:00\";s:6:\"status\";i:1;}', '100.00', '520.00', '546.00', '779.00', '0.00', '100.00', '26.00', 'ccavenue', NULL, NULL, NULL, NULL, 'pending', '192.168.1.24', '2019-07-08 06:47:38', '2019-07-08 06:47:38'),
(11, 12, 'SJ11', 'siddique', 'siddique@indiaint.com', '9998888888', 'B112', 'delhi', '201301', 63, 10, 99, 'siddique', 'siddique@indiaint.com', '1234567890', 'B112', 'delhi', '201301', 63, 10, 99, 0, 's:0:\"\";', '0.00', '1639.00', '1720.95', '2421.90', '0.00', '0.00', '81.95', 'ccavenue', NULL, NULL, NULL, NULL, 'pending', '192.168.1.24', '2019-07-08 09:44:21', '2019-07-08 09:44:21'),
(12, 1, NULL, 'Vikas', 'vikas@indiaint.com', '9910172953', 'B-112, sec-64', 'Noida', '110053', 63, 10, 99, 'Vikas', 'vikas@indiaint.com', '9874563214', 'B-112, Sec-64', 'Noida', '201301', 84, 38, 99, 0, 's:0:\"\";', '0.00', '13008.00', '14568.96', '0.00', '0.00', '0.00', '1560.96', 'ccavenue', NULL, 'pending', NULL, NULL, 'pending', '192.168.1.15', '2019-07-09 05:00:50', '2019-07-09 05:00:50'),
(13, 1, 'SJ13', 'Vikas', 'vikas@indiaint.com', '9910172953', 'B-112, sec-64', 'Noida', '110053', 63, 10, 99, 'Vikas', 'vikas@indiaint.com', '9874563214', 'B-112, Sec-64', 'Noida', '201301', 84, 38, 99, 0, 's:0:\"\";', '0.00', '13008.00', '14568.96', '0.00', '0.00', '0.00', '1560.96', 'ccavenue', NULL, 'pending', NULL, NULL, 'pending', '192.168.1.15', '2019-07-09 05:10:36', '2019-07-09 05:10:36'),
(14, 1, 'SJ14', 'Vikas', 'vikas@indiaint.com', '9910172953', 'B-112, sec-64', 'Noida', '110053', 63, 10, 99, 'Vikas', 'vikas@indiaint.com', '9874563214', 'B-112, Sec-64', 'Noida', '201301', 84, 38, 99, 0, 's:0:\"\";', '0.00', '13008.00', '14568.96', '0.00', '0.00', '0.00', '1560.96', 'ccavenue', NULL, 'pending', NULL, NULL, 'pending', '192.168.1.15', '2019-07-09 05:15:51', '2019-07-09 05:15:51'),
(15, 1, 'SJ15', 'Vikas', 'vikas@indiaint.com', '9910172953', 'B-112, sec-64', 'Noida', '110053', 63, 10, 99, 'Vikas', 'vikas@indiaint.com', '9874563214', 'B-112, Sec-64', 'Noida', '201301', 84, 38, 99, 0, 's:0:\"\";', '0.00', '13008.00', '14499.10', '0.00', '14499.10', '0.00', '1491.10', 'Wallet', NULL, 'success', NULL, NULL, 'success', '192.168.1.15', '2019-07-09 05:20:40', '2019-07-09 06:05:24'),
(16, 1, 'SJ16', 'Vikas', 'vikas@indiaint.com', '9910172953', 'B-112, sec-64', 'Noida', '110053', 63, 10, 99, 'Vikas', 'vikas@indiaint.com', '9874563214', 'B-112, Sec-64', 'Noida', '201301', 84, 38, 99, 0, 's:0:\"\";', '0.00', '400.00', '520.00', '0.00', '520.00', '100.00', '20.00', 'Wallet', NULL, 'success', NULL, NULL, 'success', '192.168.1.15', '2019-07-09 06:18:58', '2019-07-09 06:18:58'),
(17, 18, 'SJ17', NULL, 'sanyogita@ehostinguk.com', '9685805313', NULL, NULL, NULL, NULL, NULL, NULL, 'Sanyogita Patel', 'sanyogita@ehostinguk.com', '9685805313', 'noida', 'noida', '201301', 84, 38, 99, 0, 's:0:\"\";', '0.00', '1410.00', '1579.20', '0.00', '0.00', '0.00', '169.20', 'ccavenue', NULL, 'pending', NULL, NULL, 'pending', '192.168.1.54', '2019-07-17 06:03:44', '2019-07-17 06:03:44'),
(18, 22, 'SJ18', 'Tripti Pandey', 'tripti@indiaint.com', '1111111111', '106/267 gandhi nagar kanpur', 'noida', '201301', 1164, 12, 99, 'pandey', 'tripti@indiaint.com', '1111111111', 'noida', 'noida', '201301', 70, 38, 99, 0, 's:0:\"\";', '0.00', '9298.00', '9861.60', '0.00', '0.00', '0.00', '563.60', 'ccavenue', NULL, 'pending', NULL, NULL, 'pending', '192.168.1.52', '2019-07-20 10:30:24', '2019-07-20 10:30:24');

-- --------------------------------------------------------

--
-- Table structure for table `order_history`
--

DROP TABLE IF EXISTS `order_history`;
CREATE TABLE IF NOT EXISTS `order_history` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `order_id` int(11) NOT NULL,
  `old_order_status` varchar(20) DEFAULT NULL,
  `order_status` varchar(20) DEFAULT NULL,
  `comment` text NOT NULL,
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `order_history`
--

INSERT INTO `order_history` (`id`, `order_id`, `old_order_status`, `order_status`, `comment`, `created_at`) VALUES
(1, 10, '0', '0', 'tste', '2019-07-08 15:51:44'),
(2, 10, 'pending', 'pending', 'sdfasfasdf', '2019-07-08 16:00:14'),
(3, 10, 'pending', 'pending', 'sdfasfasdf', '2019-07-08 16:22:43');

-- --------------------------------------------------------

--
-- Table structure for table `order_items`
--

DROP TABLE IF EXISTS `order_items`;
CREATE TABLE IF NOT EXISTS `order_items` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `order_id` int(11) DEFAULT '0',
  `product_id` int(11) DEFAULT '0',
  `size_id` int(11) DEFAULT '0',
  `product_name` varchar(255) DEFAULT NULL,
  `size_name` varchar(10) DEFAULT NULL,
  `product_slug` varchar(255) DEFAULT NULL,
  `product_sku` varchar(50) DEFAULT NULL,
  `product_gender` varchar(255) DEFAULT NULL,
  `qty` int(11) DEFAULT '0',
  `price` decimal(15,2) DEFAULT '0.00',
  `sale_price` decimal(15,2) DEFAULT '0.00',
  `item_price` decimal(15,2) DEFAULT '0.00',
  `gst` decimal(15,2) DEFAULT '0.00',
  `weight` decimal(15,2) DEFAULT '0.00',
  `color_id` int(11) DEFAULT '0',
  `color_name` varchar(50) DEFAULT NULL,
  `created_at` datetime DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=64 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `order_items`
--

INSERT INTO `order_items` (`id`, `order_id`, `product_id`, `size_id`, `product_name`, `size_name`, `product_slug`, `product_sku`, `product_gender`, `qty`, `price`, `sale_price`, `item_price`, `gst`, `weight`, `color_id`, `color_name`, `created_at`, `updated_at`) VALUES
(1, 1, 90, 5, 'Neemrana Set of 3 - Chanderi Jacket + Kurti + Palazzos', 'S', 'neemrana-set-of-3-chanderi-jacket-kurti-palazzos', '30', 'f', 1, '11950.00', '4000.00', '4000.00', '12.00', NULL, 16, 'Fuchsia Pink', '2019-07-05 13:19:26', '2019-07-05 13:19:26'),
(2, 1, 90, 5, 'Neemrana Set of 3 - Chanderi Jacket + Kurti + Palazzos', 'S', 'neemrana-set-of-3-chanderi-jacket-kurti-palazzos', '30', 'f', 1, '11950.00', '4000.00', '4000.00', '12.00', NULL, 16, 'Fuchsia Pink', '2019-07-05 13:51:50', '2019-07-05 13:51:50'),
(3, 1, 90, 5, 'Neemrana Set of 3 - Chanderi Jacket + Kurti + Palazzos', 'S', 'neemrana-set-of-3-chanderi-jacket-kurti-palazzos', '30', 'f', 1, '11950.00', '4000.00', '4000.00', '12.00', NULL, 16, 'Fuchsia Pink', '2019-07-05 13:52:55', '2019-07-05 13:52:55'),
(4, 1, 90, 5, 'Neemrana Set of 3 - Chanderi Jacket + Kurti + Palazzos', 'S', 'neemrana-set-of-3-chanderi-jacket-kurti-palazzos', '30', 'f', 1, '11950.00', '4000.00', '4000.00', '12.00', NULL, 16, 'Fuchsia Pink', '2019-07-05 14:00:29', '2019-07-05 14:00:29'),
(5, 1, 90, 5, 'Neemrana Set of 3 - Chanderi Jacket + Kurti + Palazzos', 'S', 'neemrana-set-of-3-chanderi-jacket-kurti-palazzos', '30', 'f', 1, '11950.00', '4000.00', '4000.00', '12.00', NULL, 16, 'Fuchsia Pink', '2019-07-05 14:00:42', '2019-07-05 14:00:42'),
(6, 1, 90, 5, 'Neemrana Set of 3 - Chanderi Jacket + Kurti + Palazzos', 'S', 'neemrana-set-of-3-chanderi-jacket-kurti-palazzos', '30', 'f', 1, '11950.00', '4000.00', '4000.00', '12.00', NULL, 16, 'Fuchsia Pink', '2019-07-05 14:00:58', '2019-07-05 14:00:58'),
(7, 1, 90, 5, 'Neemrana Set of 3 - Chanderi Jacket + Kurti + Palazzos', 'S', 'neemrana-set-of-3-chanderi-jacket-kurti-palazzos', '30', 'f', 1, '11950.00', '4000.00', '4000.00', '12.00', NULL, 16, 'Fuchsia Pink', '2019-07-05 14:45:52', '2019-07-05 14:45:52'),
(8, 1, 90, 5, 'Neemrana Set of 3 - Chanderi Jacket + Kurti + Palazzos', 'S', 'neemrana-set-of-3-chanderi-jacket-kurti-palazzos', '30', 'f', 1, '11950.00', '4000.00', '4000.00', '12.00', NULL, 16, 'Fuchsia Pink', '2019-07-05 14:45:58', '2019-07-05 14:45:58'),
(9, 1, 90, 5, 'Neemrana Set of 3 - Chanderi Jacket + Kurti + Palazzos', 'S', 'neemrana-set-of-3-chanderi-jacket-kurti-palazzos', '30', 'f', 1, '11950.00', '4000.00', '4000.00', '12.00', NULL, 16, 'Fuchsia Pink', '2019-07-05 14:46:15', '2019-07-05 14:46:15'),
(10, 1, 90, 5, 'Neemrana Set of 3 - Chanderi Jacket + Kurti + Palazzos', 'S', 'neemrana-set-of-3-chanderi-jacket-kurti-palazzos', '30', 'f', 1, '11950.00', '4000.00', '4000.00', '12.00', NULL, 16, 'Fuchsia Pink', '2019-07-05 14:50:28', '2019-07-05 14:50:28'),
(11, 1, 90, 5, 'Neemrana Set of 3 - Chanderi Jacket + Kurti + Palazzos', 'S', 'neemrana-set-of-3-chanderi-jacket-kurti-palazzos', '30', 'f', 1, '11950.00', '4000.00', '4000.00', '12.00', NULL, 16, 'Fuchsia Pink', '2019-07-05 14:51:33', '2019-07-05 14:51:33'),
(12, 1, 90, 5, 'Neemrana Set of 3 - Chanderi Jacket + Kurti + Palazzos', 'S', 'neemrana-set-of-3-chanderi-jacket-kurti-palazzos', '30', 'f', 1, '11950.00', '4000.00', '4000.00', '12.00', NULL, 16, 'Fuchsia Pink', '2019-07-05 14:51:42', '2019-07-05 14:51:42'),
(13, 1, 90, 5, 'Neemrana Set of 3 - Chanderi Jacket + Kurti + Palazzos', 'S', 'neemrana-set-of-3-chanderi-jacket-kurti-palazzos', '30', 'f', 1, '11950.00', '4000.00', '4000.00', '12.00', NULL, 16, 'Fuchsia Pink', '2019-07-05 14:52:38', '2019-07-05 14:52:38'),
(14, 1, 90, 5, 'Neemrana Set of 3 - Chanderi Jacket + Kurti + Palazzos', 'S', 'neemrana-set-of-3-chanderi-jacket-kurti-palazzos', '30', 'f', 1, '11950.00', '4000.00', '4000.00', '12.00', NULL, 16, 'Fuchsia Pink', '2019-07-05 14:52:43', '2019-07-05 14:52:43'),
(15, 1, 90, 5, 'Neemrana Set of 3 - Chanderi Jacket + Kurti + Palazzos', 'S', 'neemrana-set-of-3-chanderi-jacket-kurti-palazzos', '30', 'f', 1, '11950.00', '4000.00', '4000.00', '12.00', NULL, 16, 'Fuchsia Pink', '2019-07-05 14:52:50', '2019-07-05 14:52:50'),
(16, 1, 90, 5, 'Neemrana Set of 3 - Chanderi Jacket + Kurti + Palazzos', 'S', 'neemrana-set-of-3-chanderi-jacket-kurti-palazzos', '30', 'f', 1, '11950.00', '4000.00', '4000.00', '12.00', NULL, 16, 'Fuchsia Pink', '2019-07-05 14:52:51', '2019-07-05 14:52:51'),
(17, 1, 90, 5, 'Neemrana Set of 3 - Chanderi Jacket + Kurti + Palazzos', 'S', 'neemrana-set-of-3-chanderi-jacket-kurti-palazzos', '30', 'f', 1, '11950.00', '4000.00', '4000.00', '12.00', NULL, 16, 'Fuchsia Pink', '2019-07-05 14:52:52', '2019-07-05 14:52:52'),
(18, 1, 90, 5, 'Neemrana Set of 3 - Chanderi Jacket + Kurti + Palazzos', 'S', 'neemrana-set-of-3-chanderi-jacket-kurti-palazzos', '30', 'f', 1, '11950.00', '4000.00', '4000.00', '12.00', NULL, 16, 'Fuchsia Pink', '2019-07-05 14:52:52', '2019-07-05 14:52:52'),
(19, 1, 90, 5, 'Neemrana Set of 3 - Chanderi Jacket + Kurti + Palazzos', 'S', 'neemrana-set-of-3-chanderi-jacket-kurti-palazzos', '30', 'f', 1, '11950.00', '4000.00', '4000.00', '12.00', NULL, 16, 'Fuchsia Pink', '2019-07-05 14:52:52', '2019-07-05 14:52:52'),
(20, 1, 90, 5, 'Neemrana Set of 3 - Chanderi Jacket + Kurti + Palazzos', 'S', 'neemrana-set-of-3-chanderi-jacket-kurti-palazzos', '30', 'f', 1, '11950.00', '4000.00', '4000.00', '12.00', NULL, 16, 'Fuchsia Pink', '2019-07-05 14:52:52', '2019-07-05 14:52:52'),
(21, 1, 90, 5, 'Neemrana Set of 3 - Chanderi Jacket + Kurti + Palazzos', 'S', 'neemrana-set-of-3-chanderi-jacket-kurti-palazzos', '30', 'f', 1, '11950.00', '4000.00', '4000.00', '12.00', NULL, 16, 'Fuchsia Pink', '2019-07-05 14:53:11', '2019-07-05 14:53:11'),
(22, 1, 90, 5, 'Neemrana Set of 3 - Chanderi Jacket + Kurti + Palazzos', 'S', 'neemrana-set-of-3-chanderi-jacket-kurti-palazzos', '30', 'f', 1, '11950.00', '4000.00', '4000.00', '12.00', NULL, 16, 'Fuchsia Pink', '2019-07-05 14:53:21', '2019-07-05 14:53:21'),
(23, 1, 90, 5, 'Neemrana Set of 3 - Chanderi Jacket + Kurti + Palazzos', 'S', 'neemrana-set-of-3-chanderi-jacket-kurti-palazzos', '30', 'f', 1, '11950.00', '4000.00', '4000.00', '12.00', NULL, 16, 'Fuchsia Pink', '2019-07-05 14:53:45', '2019-07-05 14:53:45'),
(24, 2, 90, 5, 'Neemrana Set of 3 - Chanderi Jacket + Kurti + Palazzos', 'S', 'neemrana-set-of-3-chanderi-jacket-kurti-palazzos', '30', 'f', 1, '11950.00', '4000.00', '4000.00', '12.00', NULL, 16, 'Fuchsia Pink', '2019-07-05 15:04:08', '2019-07-05 15:04:08'),
(25, 4, 79, 5, 'Shimmery Bardot Top with Ruffled Overlay', 'S', 'shimmery-bardot-top-with-ruffled-overlay', '18', 'f', 1, '999.00', '849.00', '849.00', '18.00', NULL, 9, 'Maroon', '2019-07-05 16:50:06', '2019-07-05 16:50:06'),
(26, 4, 80, 3, 'Printed Woven Top with Halter-Neck', 'L', 'printed-woven-top-with-halter-neck', '19', 'f', 1, '1299.00', '520.00', '520.00', '5.00', NULL, 8, 'Red', '2019-07-05 16:50:06', '2019-07-05 16:50:06'),
(27, 4, 90, 5, 'Neemrana Set of 3 - Chanderi Jacket + Kurti + Palazzos', 'S', 'neemrana-set-of-3-chanderi-jacket-kurti-palazzos', '30', 'f', 1, '11950.00', '4000.00', '4000.00', '12.00', NULL, 16, 'Fuchsia Pink', '2019-07-05 16:50:06', '2019-07-05 16:50:06'),
(28, 5, 88, 5, 'Neemrana Linen Kurta', 'S', 'neemrana-linen-kurta', '28', 'f', 1, '3750.00', '1410.00', '1410.00', '12.00', NULL, 2, 'White', '2019-07-06 15:41:35', '2019-07-06 15:41:35'),
(29, 6, 80, 2, 'Printed Woven Top with Halter-Neck', 'M', 'printed-woven-top-with-halter-neck', '19', 'f', 1, '1299.00', '520.00', '520.00', '5.00', NULL, 8, 'Red', '2019-07-06 16:16:02', '2019-07-06 16:16:02'),
(30, 7, 90, 5, 'Neemrana Set of 3 - Chanderi Jacket + Kurti + Palazzos', 'S', 'neemrana-set-of-3-chanderi-jacket-kurti-palazzos', '30', 'f', 1, '11950.00', '4000.00', '4000.00', '12.00', NULL, 16, 'Fuchsia Pink', '2019-07-08 11:23:37', '2019-07-08 11:23:37'),
(31, 8, 80, 3, 'Printed Woven Top with Halter-Neck', 'L', 'printed-woven-top-with-halter-neck', '19', 'f', 1, '1299.00', '520.00', '520.00', '5.00', NULL, 8, 'Red', '2019-07-08 11:40:53', '2019-07-08 11:40:53'),
(32, 9, 80, 2, 'Printed Woven Top with Halter-Neck', 'M', 'printed-woven-top-with-halter-neck', '19', 'f', 1, '1299.00', '520.00', '520.00', '5.00', NULL, 8, 'Red', '2019-07-08 11:43:06', '2019-07-08 11:43:06'),
(33, 10, 80, 3, 'Printed Woven Top with Halter-Neck', 'L', 'printed-woven-top-with-halter-neck', '19', 'f', 1, '1299.00', '520.00', '520.00', '5.00', NULL, 8, 'Red', '2019-07-08 12:17:38', '2019-07-08 12:17:38'),
(34, 11, 81, 4, 'Printed Top with Cutaway Shoulders', 'XL', 'printed-top-with-cutaway-shoulders', '20', 'f', 1, '1299.00', '599.00', '599.00', '5.00', NULL, 7, 'Black', '2019-07-08 15:14:21', '2019-07-08 15:14:21'),
(35, 11, 80, 3, 'Printed Woven Top with Halter-Neck', 'L', 'printed-woven-top-with-halter-neck', '19', 'f', 1, '1299.00', '520.00', '520.00', '5.00', NULL, 8, 'Red', '2019-07-08 15:14:21', '2019-07-08 15:14:21'),
(36, 11, 80, 2, 'Printed Woven Top with Halter-Neck', 'M', 'printed-woven-top-with-halter-neck', '19', 'f', 1, '1299.00', '520.00', '520.00', '5.00', NULL, 8, 'Red', '2019-07-08 15:14:21', '2019-07-08 15:14:21'),
(37, 13, 88, 2, 'Neemrana Linen Kurta', 'M', 'neemrana-linen-kurta', '28', 'f', 1, '3750.00', '1410.00', '1410.00', '12.00', NULL, 2, 'White', '2019-07-09 10:40:36', '2019-07-09 10:40:36'),
(38, 13, 89, 3, 'Neemrana Embroidered Asymetric Vest', 'L', 'neemrana-embroidered-asymetric-vest', '29', 'f', 1, '3750.00', '1300.00', '1300.00', '12.00', NULL, 7, 'Black', '2019-07-09 10:40:36', '2019-07-09 10:40:36'),
(39, 13, 89, 5, 'Neemrana Embroidered Asymetric Vest', 'S', 'neemrana-embroidered-asymetric-vest', '29', 'f', 1, '3750.00', '1300.00', '1300.00', '12.00', NULL, 7, 'Black', '2019-07-09 10:40:36', '2019-07-09 10:40:36'),
(40, 13, 90, 2, 'Neemrana Set of 3 - Chanderi Jacket + Kurti + Palazzos', 'M', 'neemrana-set-of-3-chanderi-jacket-kurti-palazzos', '30', 'f', 1, '11950.00', '4000.00', '4000.00', '12.00', NULL, 16, 'Fuchsia Pink', '2019-07-09 10:40:36', '2019-07-09 10:40:36'),
(41, 13, 90, 5, 'Neemrana Set of 3 - Chanderi Jacket + Kurti + Palazzos', 'S', 'neemrana-set-of-3-chanderi-jacket-kurti-palazzos', '30', 'f', 1, '11950.00', '4000.00', '4000.00', '12.00', NULL, 16, 'Fuchsia Pink', '2019-07-09 10:40:36', '2019-07-09 10:40:36'),
(42, 13, 85, 5, 'Amparo Blue High-Low Sleepshirt FWSJ851', 'S', 'amparo-blue-high-low-sleepshirt-fwsj851', '25', 'f', 1, '799.00', '399.00', '399.00', '5.00', NULL, 24, 'Amparo Blue', '2019-07-09 10:40:36', '2019-07-09 10:40:36'),
(43, 13, 81, 2, 'Printed Top with Cutaway Shoulders', 'M', 'printed-top-with-cutaway-shoulders', '20', 'f', 1, '1299.00', '599.00', '599.00', '5.00', NULL, 7, 'Black', '2019-07-09 10:40:36', '2019-07-09 10:40:36'),
(44, 14, 88, 2, 'Neemrana Linen Kurta', 'M', 'neemrana-linen-kurta', '28', 'f', 1, '3750.00', '1410.00', '1410.00', '12.00', NULL, 2, 'White', '2019-07-09 10:45:51', '2019-07-09 10:45:51'),
(45, 14, 89, 3, 'Neemrana Embroidered Asymetric Vest', 'L', 'neemrana-embroidered-asymetric-vest', '29', 'f', 1, '3750.00', '1300.00', '1300.00', '12.00', NULL, 7, 'Black', '2019-07-09 10:45:51', '2019-07-09 10:45:51'),
(46, 14, 89, 5, 'Neemrana Embroidered Asymetric Vest', 'S', 'neemrana-embroidered-asymetric-vest', '29', 'f', 1, '3750.00', '1300.00', '1300.00', '12.00', NULL, 7, 'Black', '2019-07-09 10:45:51', '2019-07-09 10:45:51'),
(47, 14, 90, 2, 'Neemrana Set of 3 - Chanderi Jacket + Kurti + Palazzos', 'M', 'neemrana-set-of-3-chanderi-jacket-kurti-palazzos', '30', 'f', 1, '11950.00', '4000.00', '4000.00', '12.00', NULL, 16, 'Fuchsia Pink', '2019-07-09 10:45:51', '2019-07-09 10:45:51'),
(48, 14, 90, 5, 'Neemrana Set of 3 - Chanderi Jacket + Kurti + Palazzos', 'S', 'neemrana-set-of-3-chanderi-jacket-kurti-palazzos', '30', 'f', 1, '11950.00', '4000.00', '4000.00', '12.00', NULL, 16, 'Fuchsia Pink', '2019-07-09 10:45:51', '2019-07-09 10:45:51'),
(49, 14, 85, 5, 'Amparo Blue High-Low Sleepshirt FWSJ851', 'S', 'amparo-blue-high-low-sleepshirt-fwsj851', '25', 'f', 1, '799.00', '399.00', '399.00', '5.00', NULL, 24, 'Amparo Blue', '2019-07-09 10:45:51', '2019-07-09 10:45:51'),
(50, 14, 81, 2, 'Printed Top with Cutaway Shoulders', 'M', 'printed-top-with-cutaway-shoulders', '20', 'f', 1, '1299.00', '599.00', '599.00', '5.00', NULL, 7, 'Black', '2019-07-09 10:45:51', '2019-07-09 10:45:51'),
(51, 15, 88, 2, 'Neemrana Linen Kurta', 'M', 'neemrana-linen-kurta', '28', 'f', 1, '3750.00', '1410.00', '1410.00', '12.00', NULL, 2, 'White', '2019-07-09 10:50:40', '2019-07-09 06:05:24'),
(52, 15, 89, 5, 'Neemrana Embroidered Asymetric Vest', 'S', 'neemrana-embroidered-asymetric-vest', '29', 'f', 1, '3750.00', '1300.00', '1300.00', '12.00', NULL, 7, 'Black', '2019-07-09 10:50:40', '2019-07-09 06:05:24'),
(53, 15, 89, 5, 'Neemrana Embroidered Asymetric Vest', 'S', 'neemrana-embroidered-asymetric-vest', '29', 'f', 1, '3750.00', '1300.00', '1300.00', '12.00', NULL, 7, 'Black', '2019-07-09 10:50:40', '2019-07-09 06:05:24'),
(54, 15, 90, 5, 'Neemrana Set of 3 - Chanderi Jacket + Kurti + Palazzos', 'S', 'neemrana-set-of-3-chanderi-jacket-kurti-palazzos', '30', 'f', 1, '11950.00', '4000.00', '4000.00', '12.00', NULL, 16, 'Fuchsia Pink', '2019-07-09 10:50:40', '2019-07-09 06:05:24'),
(55, 15, 90, 5, 'Neemrana Set of 3 - Chanderi Jacket + Kurti + Palazzos', 'S', 'neemrana-set-of-3-chanderi-jacket-kurti-palazzos', '30', 'f', 1, '11950.00', '4000.00', '4000.00', '12.00', NULL, 16, 'Fuchsia Pink', '2019-07-09 10:50:40', '2019-07-09 06:05:24'),
(56, 15, 85, 5, 'Amparo Blue High-Low Sleepshirt FWSJ851', 'S', 'amparo-blue-high-low-sleepshirt-fwsj851', '25', 'f', 1, '799.00', '399.00', '399.00', '5.00', NULL, 24, 'Amparo Blue', '2019-07-09 10:50:40', '2019-07-09 06:05:24'),
(57, 15, 81, 2, 'Printed Top with Cutaway Shoulders', 'M', 'printed-top-with-cutaway-shoulders', '20', 'f', 1, '1299.00', '599.00', '599.00', '5.00', NULL, 7, 'Black', '2019-07-09 10:50:40', '2019-07-09 06:05:24'),
(58, 16, 86, 5, 'Printed Tunic with Contrast Hemline', 'S', 'printed-tunic-with-contrast-hemline', '24', 'f', 1, '999.00', '400.00', '400.00', '18.00', NULL, 20, 'Navy Blue', '2019-07-09 11:48:58', '2019-07-09 11:48:58'),
(59, 17, 88, 6, 'Neemrana Linen Kurta', 'XS', 'neemrana-linen-kurta', '28', 'f', 1, '3750.00', '1410.00', '1410.00', '12.00', NULL, 2, 'White', '2019-07-17 11:33:44', '2019-07-17 11:33:44'),
(60, 18, 88, 5, 'Neemrana Linen Kurta', 'S', 'neemrana-linen-kurta', '28', 'f', 1, '3750.00', '1410.00', '1410.00', '12.00', NULL, 2, 'White', '2019-07-20 16:00:24', '2019-07-20 16:00:24'),
(61, 18, 81, 6, 'Printed Top with Cutaway Shoulders', 'XS', 'printed-top-with-cutaway-shoulders', '20', 'f', 2, '1299.00', '599.00', '599.00', '5.00', NULL, 7, 'Black', '2019-07-20 16:00:24', '2019-07-20 10:30:24'),
(62, 18, 87, 6, 'Charcoal Grey Sleep Shirt FWSJ717', 'XS', 'charcoal-grey-sleep-shirt-fwsj717', '26', 'f', 1, '899.00', NULL, '899.00', '5.00', NULL, 17, 'Charcoal Grey', '2019-07-25 16:00:24', '2019-07-25 16:00:24'),
(63, 18, 86, 6, 'Printed Tunic with Contrast Hemline', 'XS', 'printed-tunic-with-contrast-hemline', '24', 'f', 1, '999.00', '400.00', '400.00', '18.00', NULL, 20, 'Navy Blue', '2019-07-26 16:00:24', '2019-07-26 16:00:24');

-- --------------------------------------------------------

--
-- Table structure for table `order_status_master`
--

DROP TABLE IF EXISTS `order_status_master`;
CREATE TABLE IF NOT EXISTS `order_status_master` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) DEFAULT NULL,
  `code` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `code` (`code`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `order_status_master`
--

INSERT INTO `order_status_master` (`id`, `name`, `code`) VALUES
(1, 'Pending', 'pending'),
(2, 'Confirmed', 'confirmed'),
(4, 'Cancelled', 'cancelled'),
(5, 'Shipped', 'shipped'),
(6, 'Delivered', 'delivered'),
(7, 'Failed', 'failed'),
(8, 'Success', 'success');

-- --------------------------------------------------------

--
-- Table structure for table `permissions`
--

DROP TABLE IF EXISTS `permissions`;
CREATE TABLE IF NOT EXISTS `permissions` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `parent_id` int(11) DEFAULT '0',
  `name` varchar(255) NOT NULL,
  `display_name` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `sort_order` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `permission_role`
--

DROP TABLE IF EXISTS `permission_role`;
CREATE TABLE IF NOT EXISTS `permission_role` (
  `permission_id` int(10) UNSIGNED NOT NULL,
  `role_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `pincodes`
--

DROP TABLE IF EXISTS `pincodes`;
CREATE TABLE IF NOT EXISTS `pincodes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `state_id` int(11) DEFAULT '0',
  `city_id` int(11) DEFAULT '0',
  `pin` varchar(20) DEFAULT NULL,
  `status` tinyint(4) DEFAULT '1' COMMENT '1=Active; 0=Inactive',
  `created_at` datetime DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pincodes`
--

INSERT INTO `pincodes` (`id`, `state_id`, `city_id`, `pin`, `status`, `created_at`, `updated_at`) VALUES
(1, 29, 1, '201014', 1, '2019-06-19 14:54:31', '2019-06-19 11:52:25'),
(2, 38, 84, '201301', 1, '2019-06-20 06:04:21', '2019-06-20 06:04:21'),
(3, 10, 63, '110053', 1, '2019-07-17 07:44:12', '2019-07-17 07:44:12');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

DROP TABLE IF EXISTS `products`;
CREATE TABLE IF NOT EXISTS `products` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT '0' COMMENT 'user_id of designer',
  `category_id` int(11) NOT NULL DEFAULT '0',
  `name` varchar(255) DEFAULT NULL,
  `slug` varchar(255) DEFAULT NULL,
  `sku` varchar(100) DEFAULT NULL,
  `brand_id` int(11) DEFAULT '0',
  `specifications` text,
  `description` text,
  `gender` varchar(1) DEFAULT NULL COMMENT 'm=Male; f=Female',
  `video` text,
  `color_name` varchar(20) DEFAULT NULL,
  `color_id` int(11) DEFAULT '0',
  `size_chart_id` int(11) DEFAULT '0',
  `price` decimal(15,2) DEFAULT NULL,
  `sale_price` decimal(15,2) DEFAULT '0.00',
  `discount` decimal(15,2) DEFAULT '0.00' COMMENT 'in percentage',
  `stock` int(11) DEFAULT '0',
  `gst` decimal(15,2) DEFAULT '0.00',
  `weight` decimal(15,2) DEFAULT '0.00',
  `min_order_qty` int(11) DEFAULT NULL,
  `main_image` varchar(100) DEFAULT NULL,
  `delivery_duration` varchar(255) DEFAULT NULL,
  `sort_order` int(11) DEFAULT NULL,
  `stamp` varchar(50) DEFAULT NULL COMMENT 'Selling fast; Sold out; Free-shipping (this will remove shipping charges)',
  `featured` tinyint(4) DEFAULT NULL,
  `trending` tinyint(4) DEFAULT NULL,
  `popularity` tinyint(4) DEFAULT '0',
  `no_of_click` int(11) DEFAULT '0' COMMENT 'No. of time product detail page is opened',
  `status` tinyint(4) DEFAULT NULL,
  `is_approved` tinyint(1) NOT NULL DEFAULT '1',
  `total_sale_counter` int(11) NOT NULL,
  `meta_title` varchar(255) DEFAULT NULL,
  `meta_keyword` varchar(255) DEFAULT NULL,
  `meta_description` varchar(255) DEFAULT NULL,
  `created_at` datetime DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `user_id`, `category_id`, `name`, `slug`, `sku`, `brand_id`, `specifications`, `description`, `gender`, `video`, `color_name`, `color_id`, `size_chart_id`, `price`, `sale_price`, `discount`, `stock`, `gst`, `weight`, `min_order_qty`, `main_image`, `delivery_duration`, `sort_order`, `stamp`, `featured`, `trending`, `popularity`, `no_of_click`, `status`, `is_approved`, `total_sale_counter`, `meta_title`, `meta_keyword`, `meta_description`, `created_at`, `updated_at`) VALUES
(1, 0, 5, 'Product 1', 'product-1', 'INV0011539', 0, NULL, '<p>There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don&#39;t look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn&#39;t anything embarrassing hidden in the middle of text. All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary, making this the first true generator on the Internet. It uses a dictionary of over 200&nbsp;</p>', NULL, NULL, NULL, 0, 0, '100.00', '0.00', '0.00', NULL, '0.00', NULL, NULL, NULL, NULL, 1, NULL, 0, NULL, 0, 0, 1, 1, 0, NULL, NULL, NULL, '2019-08-05 12:34:09', '2019-08-05 13:07:45'),
(2, 0, 1, 'Product 2', 'product-2', 'INV0009450', 0, NULL, '<p>There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don&#39;t look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn&#39;t anything embarrassing hidden in the middle of text. All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary, making this the first true generator on the Internet. It uses a dictionary of over 200&nbsp;</p>', NULL, NULL, NULL, 0, 0, '500.00', '400.00', '0.00', NULL, '0.00', NULL, NULL, NULL, NULL, 2, NULL, 1, NULL, 0, 0, 1, 1, 0, NULL, NULL, NULL, '2019-08-05 12:34:56', '2019-08-05 12:36:27');

-- --------------------------------------------------------

--
-- Table structure for table `product_attributes`
--

DROP TABLE IF EXISTS `product_attributes`;
CREATE TABLE IF NOT EXISTS `product_attributes` (
  `product_id` int(11) DEFAULT NULL,
  `label` varchar(100) DEFAULT NULL,
  `value` varchar(255) DEFAULT NULL,
  `created_at` datetime DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `product_attributes`
--

INSERT INTO `product_attributes` (`product_id`, `label`, `value`, `created_at`, `updated_at`) VALUES
(59, 'Attr1', 'Good Quality', '2019-06-18 15:03:55', '2019-06-18 15:03:55'),
(59, 'Atrr3', 'Heavy Fabric', '2019-06-18 15:03:55', '2019-06-18 15:03:55'),
(59, 'Attr4', 'Comfortable', '2019-06-18 15:03:55', '2019-06-18 15:03:55'),
(59, 'Attr2', 'test omm', '2019-06-18 15:03:55', '2019-06-18 15:03:55'),
(73, 'Fabric', 'Cotton', '2019-07-05 13:18:30', '2019-07-05 13:18:30'),
(73, 'Pattern', 'Printed', '2019-07-05 13:18:30', '2019-07-05 13:18:30'),
(73, 'Sleeve Length', 'Short Sleeves', '2019-07-05 13:18:30', '2019-07-05 13:18:30'),
(73, 'Neck', 'Round Neck', '2019-07-05 13:18:30', '2019-07-05 13:18:30'),
(73, 'Wash Care', 'Machine Wash', '2019-07-05 13:18:30', '2019-07-05 13:18:30'),
(87, 'Fabric', 'Mix Cotton', '2019-07-06 11:13:37', '2019-07-06 11:13:37'),
(87, 'Pattern', 'Ethnic Motifs', '2019-07-06 11:13:37', '2019-07-06 11:13:37'),
(87, 'Sleeve Length', 'Short Sleeves', '2019-07-06 11:13:37', '2019-07-06 11:13:37'),
(87, 'Neck', 'Round Neck', '2019-07-06 11:13:37', '2019-07-06 11:13:37'),
(87, 'Wash Care', 'Mashine wash', '2019-07-06 11:13:37', '2019-07-06 11:13:37'),
(90, 'Fabric', 'Cotton', '2019-07-15 12:13:21', '2019-07-15 12:13:21'),
(90, 'Pattern', 'Solid', '2019-07-15 12:13:21', '2019-07-15 12:13:21'),
(90, 'Sleeve Length', 'Three-Quarter Sleeves', '2019-07-15 12:13:21', '2019-07-15 12:13:21'),
(90, 'Neck', 'Round Neck', '2019-07-15 12:13:21', '2019-07-15 12:13:21'),
(90, 'Wash Care', 'Machine Wash', '2019-07-15 12:13:21', '2019-07-15 12:13:21');

-- --------------------------------------------------------

--
-- Table structure for table `product_categories`
--

DROP TABLE IF EXISTS `product_categories`;
CREATE TABLE IF NOT EXISTS `product_categories` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `product_id` int(11) NOT NULL,
  `p1_cat` int(11) NOT NULL,
  `p2_cat` int(11) NOT NULL,
  `category_id` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `product_images`
--

DROP TABLE IF EXISTS `product_images`;
CREATE TABLE IF NOT EXISTS `product_images` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `product_id` int(11) DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `is_default` tinyint(4) DEFAULT NULL COMMENT 'default image',
  `is_reverse` tinyint(4) DEFAULT '0' COMMENT 'Show Reverse image',
  `created_at` datetime DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `product_images`
--

INSERT INTO `product_images` (`id`, `product_id`, `image`, `is_default`, `is_reverse`, `created_at`, `updated_at`) VALUES
(6, 1, '050819123409-Transtech-Packers-and-Movers-Mumbai.jpg', 1, 0, '2019-08-05 18:04:09', '2019-08-05 18:04:09'),
(7, 2, '050819123456-banner_image_2.jpg', 1, 0, '2019-08-05 18:04:56', '2019-08-05 18:04:56');

-- --------------------------------------------------------

--
-- Table structure for table `product_inventory`
--

DROP TABLE IF EXISTS `product_inventory`;
CREATE TABLE IF NOT EXISTS `product_inventory` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `sku` varchar(50) DEFAULT NULL,
  `product_id` int(11) DEFAULT '0',
  `size_id` int(11) DEFAULT '0',
  `size_name` varchar(50) DEFAULT NULL,
  `price` decimal(15,2) DEFAULT '0.00',
  `stock` int(11) DEFAULT '0',
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=44 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `product_inventory`
--

INSERT INTO `product_inventory` (`id`, `sku`, `product_id`, `size_id`, `size_name`, `price`, `stock`, `created_at`, `updated_at`) VALUES
(6, '6XL', 90, 4, 'XL', '0.00', 0, '2019-07-06 10:13:37', '2019-07-09 11:58:55'),
(7, '6M', 90, 2, 'M', '0.00', 30, '2019-07-06 10:25:12', '2019-07-09 11:59:29'),
(8, '6S', 90, 5, 'S', '0.00', 90, '2019-07-06 10:31:15', '2019-07-09 11:59:38'),
(9, NULL, 89, 3, 'L', '0.00', 50, '2019-07-08 05:36:02', '2019-07-08 05:36:02'),
(10, NULL, 81, 6, 'XS', '0.00', 2, '2019-07-08 09:27:33', '2019-07-08 09:27:33'),
(11, NULL, 81, 5, 'S', '0.00', 0, '2019-07-08 09:27:42', '2019-07-08 09:27:42'),
(12, NULL, 81, 4, 'XL', '0.00', 3, '2019-07-08 09:27:51', '2019-07-08 09:27:51'),
(13, NULL, 81, 2, 'M', '0.00', 7, '2019-07-08 09:28:01', '2019-07-08 09:28:01'),
(14, NULL, 89, 5, 'S', '0.00', 2, '2019-07-08 09:28:36', '2019-07-08 09:28:36'),
(15, NULL, 89, 6, 'XS', '0.00', 0, '2019-07-08 09:28:43', '2019-07-08 09:28:43'),
(16, NULL, 88, 2, 'M', '0.00', 8, '2019-07-08 09:30:22', '2019-07-08 09:30:22'),
(17, NULL, 88, 3, 'L', '0.00', 11, '2019-07-08 09:30:30', '2019-07-08 09:30:30'),
(18, NULL, 88, 4, 'XL', '0.00', 8, '2019-07-08 09:30:36', '2019-07-08 09:30:36'),
(19, NULL, 88, 5, 'S', '0.00', 34, '2019-07-08 09:30:41', '2019-07-08 09:30:41'),
(20, NULL, 88, 6, 'XS', '0.00', 43, '2019-07-08 09:30:46', '2019-07-08 09:30:46'),
(21, NULL, 87, 2, 'M', '0.00', 12, '2019-07-08 09:31:03', '2019-07-08 09:31:03'),
(22, NULL, 87, 3, 'L', '0.00', 13, '2019-07-08 09:31:08', '2019-07-08 09:31:08'),
(23, NULL, 87, 4, 'XL', '0.00', 0, '2019-07-08 09:31:14', '2019-07-08 12:47:36'),
(24, NULL, 87, 5, 'S', '0.00', 16, '2019-07-08 09:31:20', '2019-07-08 09:31:20'),
(25, NULL, 87, 6, 'XS', '0.00', 12, '2019-07-08 09:31:31', '2019-07-08 09:31:31'),
(26, NULL, 86, 2, 'M', '0.00', 11, '2019-07-08 09:31:41', '2019-07-08 09:31:41'),
(27, NULL, 86, 3, 'L', '0.00', 21, '2019-07-08 09:31:46', '2019-07-08 09:31:46'),
(28, NULL, 86, 4, 'XL', '0.00', 22, '2019-07-08 09:31:52', '2019-07-08 09:31:52'),
(29, NULL, 86, 5, 'S', '0.00', 14, '2019-07-08 09:31:57', '2019-07-08 09:31:57'),
(30, NULL, 86, 6, 'XS', '0.00', 12, '2019-07-08 09:32:02', '2019-07-08 09:32:02'),
(31, NULL, 85, 2, 'M', '0.00', 21, '2019-07-08 09:32:10', '2019-07-08 09:32:10'),
(32, NULL, 85, 3, 'L', '0.00', 32, '2019-07-08 09:32:14', '2019-07-08 09:32:14'),
(33, NULL, 85, 4, 'XL', '0.00', 21, '2019-07-08 09:32:18', '2019-07-08 09:32:18'),
(34, NULL, 85, 5, 'S', '0.00', 21, '2019-07-08 09:32:23', '2019-07-08 09:32:23'),
(35, NULL, 85, 6, 'XS', '0.00', 0, '2019-07-08 09:32:28', '2019-07-08 09:32:28'),
(36, NULL, 82, 2, 'M', '0.00', 223, '2019-07-08 09:33:07', '2019-07-08 09:33:07'),
(37, NULL, 82, 3, 'L', '0.00', 222, '2019-07-08 09:33:12', '2019-07-08 09:33:43'),
(38, NULL, 82, 4, 'XL', '0.00', 2, '2019-07-08 09:33:48', '2019-07-08 09:33:48'),
(39, NULL, 82, 5, 'S', '0.00', 2, '2019-07-08 09:33:52', '2019-07-08 09:33:52'),
(40, NULL, 82, 6, 'XS', '0.00', 0, '2019-07-08 09:33:58', '2019-07-08 09:33:58'),
(41, '124561', 93, 2, 'M', '0.00', 100, '2019-07-20 10:21:48', '2019-07-20 10:21:48'),
(42, '124562', 93, 3, 'L', '0.00', 100, '2019-07-20 10:40:47', '2019-07-20 10:40:47'),
(43, '124563', 93, 4, 'XL', '0.00', 100, '2019-07-20 10:40:56', '2019-07-20 10:40:56');

-- --------------------------------------------------------

--
-- Table structure for table `product_size_notifications`
--

DROP TABLE IF EXISTS `product_size_notifications`;
CREATE TABLE IF NOT EXISTS `product_size_notifications` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT '0',
  `product_id` int(11) DEFAULT '0',
  `size_id` int(11) DEFAULT '0',
  `is_notified` tinyint(4) DEFAULT '0',
  `created_at` datetime DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `product_size_notifications`
--

INSERT INTO `product_size_notifications` (`id`, `user_id`, `product_id`, `size_id`, `is_notified`, `created_at`, `updated_at`) VALUES
(1, 1, 90, 4, 0, '2019-07-08 08:09:45', '2019-07-08 08:09:45'),
(2, 1, 80, 0, 0, '2019-07-08 09:04:47', '2019-07-08 09:04:47'),
(3, 12, 81, 5, 0, '2019-07-08 09:40:20', '2019-07-08 09:40:20'),
(4, 18, 66, 0, 0, '2019-07-17 08:08:02', '2019-07-17 08:08:02');

-- --------------------------------------------------------

--
-- Table structure for table `product_stock_history`
--

DROP TABLE IF EXISTS `product_stock_history`;
CREATE TABLE IF NOT EXISTS `product_stock_history` (
  `user_id` int(11) DEFAULT NULL,
  `product_id` int(11) DEFAULT NULL,
  `qty` int(11) DEFAULT '0',
  `total_stock` int(11) DEFAULT '0' COMMENT 'total stock after qty increase decrease',
  `type` varchar(50) DEFAULT NULL COMMENT 'increase/decrease',
  `comment` varchar(255) DEFAULT NULL,
  `created_at` datetime DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `reviews`
--

DROP TABLE IF EXISTS `reviews`;
CREATE TABLE IF NOT EXISTS `reviews` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT '0',
  `product_id` int(11) DEFAULT '0',
  `heading` varchar(100) DEFAULT NULL,
  `comment` text,
  `rating` float NOT NULL DEFAULT '0',
  `status` tinyint(4) DEFAULT '0',
  `created_at` datetime DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `reviews`
--

INSERT INTO `reviews` (`id`, `user_id`, `product_id`, `heading`, `comment`, `rating`, `status`, `created_at`, `updated_at`) VALUES
(1, 1, 81, 'Great Product', 'I have purchase the clothes first time but really it\'s a nice fabric cotton, printing and stitching. I\'m feel awesome after purchase it. Thank u SlumberJill', 1.5, 1, '2019-07-03 09:34:32', '2019-07-03 09:34:32'),
(3, 1, 81, 'Nice Product', 'I have purchase the clothes first time but really it\'s a nice fabric cotton, printing and stitching. I\'m feel awesome after purchase it. Thank u SlumberJill', 4.5, 0, '2019-07-03 09:55:32', '2019-07-03 11:29:59'),
(5, 19, 62, 'Test', 'Best t- shirt , relaxed fit, and so comfort , i just love this t-shirt.', 4.5, 0, '2019-07-03 12:11:52', '2019-07-03 12:11:52'),
(17, 1, 81, 'asdfa', 'afa tst', 2.5, 0, '2019-07-03 12:12:25', '2019-07-03 12:12:25'),
(21, 1, 62, 'Test by vikas', 'Test', 2.5, 1, '2019-07-04 05:06:02', '2019-07-06 07:24:08'),
(22, 1, 72, 'test', 'test test', 4, 1, '2019-07-06 13:14:21', '2019-07-30 06:50:40');

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

DROP TABLE IF EXISTS `roles`;
CREATE TABLE IF NOT EXISTS `roles` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `display_name` varchar(255) NOT NULL,
  `description` varchar(255) NOT NULL,
  `role_for` varchar(50) NOT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `name`, `display_name`, `description`, `role_for`, `created_at`, `updated_at`) VALUES
(1, 'admin', 'Admin', 'Super Admin', 'admin', NULL, '2019-06-03 09:38:46'),
(2, 'customer', 'Customers', 'Customers', 'users', NULL, '2019-06-03 09:38:50');

-- --------------------------------------------------------

--
-- Table structure for table `role_user`
--

DROP TABLE IF EXISTS `role_user`;
CREATE TABLE IF NOT EXISTS `role_user` (
  `user_id` int(10) UNSIGNED NOT NULL,
  `role_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `shipping_rates`
--

DROP TABLE IF EXISTS `shipping_rates`;
CREATE TABLE IF NOT EXISTS `shipping_rates` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `shipping_zone_id` int(11) NOT NULL,
  `min_weight` decimal(15,3) NOT NULL,
  `max_weight` decimal(15,3) NOT NULL,
  `rate` decimal(15,2) NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT '1',
  `created_at` datetime DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `shipping_rates`
--

INSERT INTO `shipping_rates` (`id`, `shipping_zone_id`, `min_weight`, `max_weight`, `rate`, `status`, `created_at`, `updated_at`) VALUES
(5, 36, '11.000', '12.000', '0.00', 1, '2019-01-11 17:35:54', '2019-01-17 18:02:26'),
(6, 34, '0.000', '23.000', '0.00', 1, '2019-01-11 17:44:24', '2019-06-28 12:17:09'),
(7, 36, '0.000', '12.000', '0.00', 1, '2019-01-14 11:21:19', '2019-06-28 12:17:13'),
(8, 35, '1.000', '3.000', '5.00', 1, '2019-01-17 18:03:42', '2019-01-17 18:03:42');

-- --------------------------------------------------------

--
-- Table structure for table `shipping_zones`
--

DROP TABLE IF EXISTS `shipping_zones`;
CREATE TABLE IF NOT EXISTS `shipping_zones` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT '1',
  `created_at` datetime DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `shipping_zones`
--

INSERT INTO `shipping_zones` (`id`, `name`, `status`, `created_at`, `updated_at`) VALUES
(34, 'East', 1, '2019-01-11 12:16:30', '2019-01-14 05:35:04'),
(35, 'West', 1, '2019-01-11 12:16:38', '2019-01-11 13:45:42'),
(36, 'North', 1, '2019-01-11 12:16:44', '2019-01-14 05:35:33');

-- --------------------------------------------------------

--
-- Table structure for table `shipping_zones_city`
--

DROP TABLE IF EXISTS `shipping_zones_city`;
CREATE TABLE IF NOT EXISTS `shipping_zones_city` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `shipping_zones_id` int(11) NOT NULL,
  `city_id` int(11) NOT NULL,
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=177 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `shipping_zones_city`
--

INSERT INTO `shipping_zones_city` (`id`, `shipping_zones_id`, `city_id`, `created_at`, `updated_at`) VALUES
(137, 35, 201, '2019-01-11 13:45:42', '2019-01-11 13:45:42'),
(138, 35, 202, '2019-01-11 13:45:42', '2019-01-11 13:45:42'),
(139, 35, 203, '2019-01-11 13:45:42', '2019-01-11 13:45:42'),
(140, 35, 232, '2019-01-11 13:45:42', '2019-01-11 13:45:42'),
(141, 35, 233, '2019-01-11 13:45:42', '2019-01-11 13:45:42'),
(142, 35, 234, '2019-01-11 13:45:42', '2019-01-11 13:45:42'),
(143, 35, 263, '2019-01-11 13:45:42', '2019-01-11 13:45:42'),
(144, 35, 264, '2019-01-11 13:45:42', '2019-01-11 13:45:42'),
(145, 35, 265, '2019-01-11 13:45:42', '2019-01-11 13:45:42'),
(146, 35, 4, '2019-01-11 13:45:42', '2019-01-11 13:45:42'),
(147, 34, 1, '2019-01-14 05:35:04', '2019-01-14 05:35:04'),
(148, 34, 2, '2019-01-14 05:35:04', '2019-01-14 05:35:04'),
(149, 34, 3, '2019-01-14 05:35:04', '2019-01-14 05:35:04'),
(150, 34, 312, '2019-01-14 05:35:04', '2019-01-14 05:35:04'),
(151, 34, 313, '2019-01-14 05:35:04', '2019-01-14 05:35:04'),
(152, 34, 314, '2019-01-14 05:35:04', '2019-01-14 05:35:04'),
(153, 34, 343, '2019-01-14 05:35:04', '2019-01-14 05:35:04'),
(154, 34, 344, '2019-01-14 05:35:04', '2019-01-14 05:35:04'),
(155, 34, 345, '2019-01-14 05:35:04', '2019-01-14 05:35:04'),
(156, 34, 5, '2019-01-14 05:35:04', '2019-01-14 05:35:04'),
(167, 36, 31, '2019-01-14 05:35:33', '2019-01-14 05:35:33'),
(168, 36, 32, '2019-01-14 05:35:33', '2019-01-14 05:35:33'),
(169, 36, 33, '2019-01-14 05:35:33', '2019-01-14 05:35:33'),
(170, 36, 62, '2019-01-14 05:35:33', '2019-01-14 05:35:33'),
(171, 36, 63, '2019-01-14 05:35:33', '2019-01-14 05:35:33'),
(172, 36, 64, '2019-01-14 05:35:33', '2019-01-14 05:35:33'),
(173, 36, 581, '2019-01-14 05:35:33', '2019-01-14 05:35:33'),
(174, 36, 582, '2019-01-14 05:35:33', '2019-01-14 05:35:33'),
(175, 36, 607, '2019-01-14 05:35:33', '2019-01-14 05:35:33'),
(176, 36, 1230, '2019-01-14 05:35:33', '2019-01-14 05:35:33');

-- --------------------------------------------------------

--
-- Table structure for table `sizes`
--

DROP TABLE IF EXISTS `sizes`;
CREATE TABLE IF NOT EXISTS `sizes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) DEFAULT NULL,
  `sort_order` int(11) DEFAULT '0',
  `status` tinyint(4) DEFAULT '1',
  `created_at` datetime DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `sizes`
--

INSERT INTO `sizes` (`id`, `name`, `sort_order`, `status`, `created_at`, `updated_at`) VALUES
(2, 'M', 3, 1, '2019-06-10 16:40:30', '2019-07-01 06:09:15'),
(3, 'L', 4, 1, '2019-06-10 16:40:51', '2019-07-01 06:09:26'),
(4, 'XL', 5, 1, '2019-06-10 16:40:51', '2019-07-01 06:09:38'),
(5, 'S', 2, 1, '2019-06-11 10:58:02', '2019-07-01 06:09:03'),
(6, 'XS', 1, 0, '2019-06-20 06:52:49', '2019-07-31 07:53:38');

-- --------------------------------------------------------

--
-- Table structure for table `size_chart`
--

DROP TABLE IF EXISTS `size_chart`;
CREATE TABLE IF NOT EXISTS `size_chart` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `status` tinyint(4) DEFAULT '0' COMMENT '1=Active; 0=In-active',
  `created_at` datetime DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `size_chart`
--

INSERT INTO `size_chart` (`id`, `title`, `image`, `status`, `created_at`, `updated_at`) VALUES
(8, 'Ladies', '130619082026-100619105227-ladies_size_chart_grande.jpg', 1, '2019-06-07 08:02:19', '2019-06-13 08:20:26'),
(9, 'Large', '130619082020-100619105208-size-chart2_large.png', 1, '2019-06-10 10:52:08', '2019-06-13 08:20:20'),
(10, 'Mens Racewear', '140619060206-100619105250-18_MensRacewear_SizeChart.jpg', 1, '2019-06-10 10:52:51', '2019-06-28 05:02:37');

-- --------------------------------------------------------

--
-- Table structure for table `states`
--

DROP TABLE IF EXISTS `states`;
CREATE TABLE IF NOT EXISTS `states` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `gst_code` int(11) NOT NULL,
  `country_id` int(11) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=42 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `states`
--

INSERT INTO `states` (`id`, `name`, `gst_code`, `country_id`, `status`, `created_at`, `updated_at`) VALUES
(2, 'ANDHRA PRADESH', 37, 99, 1, '2019-04-26 12:48:16', '2019-06-29 10:11:54'),
(4, 'ASSAM', 18, 99, 1, '2019-04-26 12:48:16', '2019-04-26 12:48:16'),
(5, 'BIHAR', 10, 99, 1, '2019-04-26 12:48:16', '2019-04-26 12:48:16'),
(6, 'CHANDIGARH', 4, 99, 1, '2019-04-26 12:48:16', '2019-04-26 12:48:16'),
(7, 'CHHATISGARH', 22, 99, 1, '2019-04-26 12:48:16', '2019-04-26 12:48:16'),
(9, 'Daman & Diu', 25, 99, 1, '2019-04-26 12:48:16', '2019-04-26 12:48:16'),
(10, 'DELHI', 7, 99, 1, '2019-04-26 12:48:16', '2019-04-26 12:48:16'),
(11, 'GOA', 30, 99, 1, '2019-04-26 12:48:16', '2019-04-26 12:48:16'),
(12, 'GUJARAT', 24, 99, 1, '2019-04-26 12:48:16', '2019-04-26 12:48:16'),
(13, 'HARYANA', 6, 99, 1, '2019-04-26 12:48:16', '2019-04-26 12:48:16'),
(14, 'HIMACHAL PRADESH', 2, 99, 1, '2019-04-26 12:48:16', '2019-04-26 12:48:16'),
(16, 'JHARKHAND', 20, 99, 1, '2019-04-26 12:48:16', '2019-04-26 12:48:16'),
(17, 'KARNATAKA', 29, 99, 1, '2019-04-26 12:48:16', '2019-04-26 12:48:16'),
(19, 'KERALA', 32, 99, 1, '2019-04-26 12:48:16', '2019-04-26 12:48:16'),
(21, 'MADHYA PRADESH', 23, 99, 1, '2019-04-26 12:48:16', '2019-04-26 12:48:16'),
(22, 'MAHARASHTRA', 27, 99, 1, '2019-04-26 12:48:16', '2019-04-26 12:48:16'),
(29, 'ORISSA', 21, 99, 1, '2019-04-26 12:48:16', '2019-04-26 12:48:16'),
(31, 'PONDICHERY', 34, 99, 1, '2019-04-26 12:48:16', '2019-04-26 12:48:16'),
(32, 'PUNJAB', 3, 99, 1, '2019-04-26 12:48:16', '2019-04-26 12:48:16'),
(33, 'RAJASTHAN', 8, 99, 1, '2019-04-26 12:48:16', '2019-04-26 12:48:16'),
(35, 'TAMILNADU', 33, 99, 1, '2019-04-26 12:48:16', '2019-04-26 12:48:16'),
(38, 'UTTAR PRADESH', 9, 99, 1, '2019-04-26 12:48:16', '2019-04-26 12:48:16'),
(39, 'Uttrakhand', 5, 99, 1, '2019-04-26 12:48:16', '2019-04-26 12:48:16'),
(41, 'WEST BENGAL', 19, 99, 1, '2019-04-26 12:48:16', '2019-04-26 12:48:16');

-- --------------------------------------------------------

--
-- Table structure for table `stock_history`
--

DROP TABLE IF EXISTS `stock_history`;
CREATE TABLE IF NOT EXISTS `stock_history` (
  `user_id` int(11) DEFAULT NULL,
  `product_id` int(11) DEFAULT NULL,
  `qty` int(11) DEFAULT NULL,
  `type` int(11) DEFAULT NULL COMMENT 'credited/debited',
  `created_at` datetime DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `teams`
--

DROP TABLE IF EXISTS `teams`;
CREATE TABLE IF NOT EXISTS `teams` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `designation` varchar(255) DEFAULT NULL,
  `location` varchar(255) DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `sort_order` int(11) NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT '1',
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `testimonials`
--

DROP TABLE IF EXISTS `testimonials`;
CREATE TABLE IF NOT EXISTS `testimonials` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) DEFAULT NULL,
  `description` text,
  `location` varchar(255) DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `date_on` datetime DEFAULT NULL,
  `featured` tinyint(4) DEFAULT NULL,
  `status` tinyint(4) DEFAULT NULL,
  `created_at` datetime DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `testimonials`
--

INSERT INTO `testimonials` (`id`, `name`, `description`, `location`, `image`, `date_on`, `featured`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Shugandha Singh', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy when an unknown printer took a galley make a type specimen book.', NULL, NULL, '2019-02-17 00:00:00', 1, 1, '2019-02-06 12:34:39', '2019-02-06 06:55:31'),
(2, 'Ashish KB', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy when an unknown printer took a galley make a type specimen book.', NULL, NULL, '2019-07-02 00:00:00', 1, 1, '2019-02-06 12:34:59', '2019-02-06 12:34:59'),
(3, 'Braham Dev Yadav', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy when an unknown printer took a galley make a type specimen book.', NULL, NULL, '2018-01-10 00:00:00', 1, 1, '2019-02-06 12:35:24', '2019-02-06 06:54:59'),
(4, 'Anand', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy when an unknown printer took a galley make a type specimen book.', NULL, NULL, '2018-12-05 00:00:00', 1, 1, '2019-02-06 12:35:40', '2019-02-06 06:54:46'),
(5, 'RamJI', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy when an unknown printer took a galley make a type specimen book.', 'Noida', '060819091836-blog2.jpg', '2019-02-12 00:00:00', 1, 1, '2019-02-06 12:36:49', '2019-08-06 09:18:36');

-- --------------------------------------------------------

--
-- Table structure for table `themes`
--

DROP TABLE IF EXISTS `themes`;
CREATE TABLE IF NOT EXISTS `themes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `is_default` tinyint(4) DEFAULT '0',
  `status` tinyint(4) NOT NULL DEFAULT '1',
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `themes`
--

INSERT INTO `themes` (`id`, `name`, `is_default`, `status`, `created_at`, `updated_at`) VALUES
(1, 'theme-1', 1, 1, '2019-08-02 13:14:38', '2019-08-02 13:22:01');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `role_id` int(11) DEFAULT NULL,
  `slug` varchar(255) NOT NULL,
  `profile_pic` varchar(255) NOT NULL,
  `name` varchar(100) DEFAULT NULL,
  `first_name` varchar(100) DEFAULT NULL,
  `last_name` varchar(100) DEFAULT NULL,
  `dob` date DEFAULT NULL,
  `company_name` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `phone` varchar(20) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `gender` varchar(1) DEFAULT NULL COMMENT 'F=Female; M=Male',
  `address` varchar(255) DEFAULT NULL,
  `locality` varchar(100) DEFAULT NULL,
  `city` varchar(100) DEFAULT NULL,
  `state` varchar(100) DEFAULT NULL,
  `country` varchar(100) DEFAULT NULL,
  `pincode` varchar(20) DEFAULT NULL,
  `discount` decimal(15,2) DEFAULT '0.00',
  `referral_code` varchar(100) DEFAULT '0',
  `glogin` tinyint(4) DEFAULT '0',
  `google_id` varchar(50) DEFAULT NULL,
  `fblogin` tinyint(4) DEFAULT '0',
  `fb_id` varchar(50) DEFAULT NULL,
  `status` tinyint(4) DEFAULT '0',
  `is_wallet` tinyint(4) DEFAULT '1',
  `wallet_bal` decimal(15,2) DEFAULT '0.00' COMMENT 'Not in use',
  `is_verified` tinyint(4) DEFAULT '0',
  `remember_token` varchar(255) DEFAULT NULL,
  `verify_token` varchar(60) DEFAULT NULL,
  `forgot_token` varchar(60) DEFAULT NULL,
  `referer` varchar(255) DEFAULT NULL,
  `deleted` tinyint(4) NOT NULL DEFAULT '0',
  `recent_views` text COMMENT 'product ids of visited products',
  `created_at` datetime DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `role_id`, `slug`, `profile_pic`, `name`, `first_name`, `last_name`, `dob`, `company_name`, `email`, `phone`, `password`, `gender`, `address`, `locality`, `city`, `state`, `country`, `pincode`, `discount`, `referral_code`, `glogin`, `google_id`, `fblogin`, `fb_id`, `status`, `is_wallet`, `wallet_bal`, `is_verified`, `remember_token`, `verify_token`, `forgot_token`, `referer`, `deleted`, `recent_views`, `created_at`, `updated_at`) VALUES
(1, 2, '', '', 'Vikas', 'Vikas', 'Kumarr', '2019-07-08', 'Alliance Web Solution', 'vikas@indiaint.com', '9910172953', '$2y$10$nS1s8MnogZYvvvK76X710eCBHBoDs8zd6diUCYdPCczxVcaY6sq5G', NULL, 'B-112, sec-64', 'Noida', '63', '10', '99', '110053', '0.00', '0', 0, NULL, 0, NULL, 1, 0, '20074.00', 0, 'ddxlenjhAQYHlq2hKPuELrlaRGC4z8tM5adJrpgA7kxdd8gwbDuqCx6VOAA8', NULL, 'nsE4XoByyPUbcAslYautyGJgaQMmglFUs97oHJHe', '', 0, 'a:16:{i:0;i:86;i:1;i:81;i:2;i:80;i:3;i:78;i:4;i:77;i:5;i:66;i:6;i:62;i:7;i:87;i:8;i:79;i:9;i:85;i:10;i:90;i:11;i:89;i:12;i:67;i:13;i:88;i:14;i:72;i:15;i:83;}', '2019-06-10 14:52:57', '2019-07-29 16:34:26'),
(12, 2, '', '', 'siddique', NULL, NULL, NULL, NULL, 'siddique@indiaint.com', '9998888888', '$2y$10$YnrACXsZndV8e3sxie6pUuWbbyM9tAjSS/60TRbQVooJtJVPJFNcK', 'M', 'B112', 'delhi', '63', '10', '99', '201301', '0.00', '0', 0, NULL, 0, NULL, 1, 1, '125.00', 0, 'muISEUlIzybNuIirWtUOODuRYQuOfVewS2enfqlWDLDmZA0hrcXCWh1RwQhR', '', NULL, NULL, 0, 'a:15:{i:0;i:80;i:1;i:79;i:2;i:81;i:3;i:63;i:4;i:62;i:5;i:61;i:6;i:86;i:7;i:78;i:8;i:64;i:9;i:68;i:10;i:89;i:11;i:88;i:12;i:67;i:13;i:87;i:14;i:84;}', '2019-06-24 04:54:18', '2019-07-29 12:42:19'),
(13, 2, '', '', NULL, NULL, NULL, NULL, NULL, 'ashishkb@indiaint.com', '9874563214', '$2y$10$cLpCuuhfBllPtBnipMnRuejq84L0xPX5nCGFRbA/5.S8eTMfdquhm', 'M', NULL, NULL, NULL, NULL, NULL, NULL, '0.00', '0', 0, NULL, 0, NULL, 1, 1, '0.00', 0, 'iRlWJmc1Z4TyQrQb5OsGOCqGKWCOwgN3hYXVfGeHrq9kzpmO3tumnFI5ZksC', '', NULL, 'products/details/charcoal-grey-sleep-shirt-fwsj717', 0, NULL, '2019-06-25 09:57:02', '2019-06-25 15:37:49'),
(14, 2, '', '', NULL, NULL, NULL, NULL, NULL, 'alok@indiaint.com', '9958596812', '$2y$10$XnupRg8GSWkl5izTDenSVeHqoSdgOH5vn3oWDizqdXaPoRUG6q/J2', 'M', NULL, NULL, NULL, NULL, NULL, NULL, '0.00', '0', 0, NULL, 0, NULL, 1, 1, '0.00', 0, 'lDtK47VH50aaoW1o3Ny8NoG9Zpx8qMvw8mRcAPSDZoWGrsPvTXW4bIkd8SpW', '', NULL, '', 0, NULL, '2019-06-26 06:45:43', '2019-06-26 12:23:33'),
(15, 2, '', '', NULL, NULL, NULL, NULL, NULL, 'tripti@ehostinguk.com', '9540580302', '$2y$10$kCW6uBGhGQWlrGoZNQKQc.35ZOAUytFiV12G2jTxPySTW2PLaGIgu', 'F', NULL, NULL, NULL, NULL, NULL, NULL, '0.00', '0', 0, NULL, 0, NULL, 0, 1, '0.00', 0, NULL, 'LaE27Wesn0jtvvsnkOvEU5SnURupMltBW0ezvdSu', NULL, '', 0, NULL, '2019-06-26 07:53:51', '2019-06-26 07:53:51'),
(18, 2, '', '', 'Sanyogita Patel', NULL, NULL, NULL, NULL, 'sanyogita@ehostinguk.com', '9685805313', '$2y$10$Ypxr.0p48OJrEssPrpXg8u81L.XUQqnf05lJcMpg6YUYZdVbwCwLS', 'M', 'noida', 'noida', '623', '32', '99', '67845', '0.00', '0', 1, NULL, 0, NULL, 1, 1, '0.00', 0, 'kS1Sqfcba3okV5RWCQmzvtvanHA8tIbTI3LP9QFStMriueyKZ67QnJadrErR', 'XWsc0IsiJ6Pnlnl1hZuSH3qyUo5fQqbO73gMndjP', NULL, '', 0, 'a:4:{i:0;i:66;i:1;i:87;i:2;i:86;i:3;i:80;}', '2019-06-26 12:25:31', '2019-07-29 13:14:52'),
(19, 2, '', '', 'Sanyogita', 'Sanyogita', 'Patel', '1994-05-10', 'alliance', 'sanyogita@indiaint.com', '9685805313', '$2y$10$rSCEtv9oW2q20kCUyktLcOW20XrfeneSxX3ahr8cRMLeimBnLlaPK', 'F', 'noida 2', 'noida', '328', '29', '99', '201309', '0.00', '0', 0, NULL, 0, NULL, 1, 1, '1000.00', 0, 'EO3W81tsL6GLM6yaoXRmyfRSxftBEmXFfyesHmrcqHgppPOeuwntMoCblDSD', 'Kvz464lW40gxOtg9vNT42QSBRibVAh5OTqpZekOe', '', '', 0, 'a:22:{i:0;i:86;i:1;i:80;i:2;i:64;i:3;i:81;i:4;i:78;i:5;i:63;i:6;i:62;i:7;i:61;i:8;i:70;i:9;i:79;i:10;i:87;i:11;i:89;i:12;i:90;i:13;i:74;i:14;i:88;i:15;i:85;i:16;i:67;i:17;i:77;i:18;i:83;i:19;i:82;i:20;i:72;i:21;i:71;}', '2019-06-26 12:46:42', '2019-07-29 17:14:52'),
(20, 2, '', '', 'akshay', NULL, NULL, NULL, NULL, 'akshay@indiaint.com', '9685805313', '$2y$10$XjNDlv./f8gHr4IZf7j4AO20a1wuza0WtO8g7kkZOB6ON0iXz6ziC', 'F', 'B-112', NULL, NULL, NULL, '99', NULL, '0.00', '0', 0, NULL, 0, NULL, 1, 1, '1000.00', 0, 'ERwzHWxlg03eyyDaGRln7WQn7Rc6AtYBva2XmXgwtSCcWfy199TrX5FG1PUs', 'iff8GZLSZqQQap0sJHzJuaCiiOpKxi7cma6AcCtD', NULL, '', 0, NULL, '2019-06-28 07:31:46', '2019-06-29 10:46:29'),
(21, NULL, '', '', 'CSO1 User1', NULL, NULL, NULL, NULL, 'cso1.user1@gmail.com', NULL, '$2y$10$JjoC9dfleN8Neb4lty4ZfeWBkT.JGfNFvuqSz.sDoJsK8.dxdkx.q', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0.00', '0', 1, NULL, 0, NULL, 1, 1, '0.00', 0, 'KHHuIpyHuexkBcucoFkcLWmULgcd4z77SSILyUBxoSTcSp2yTrrsXB6WXfiu', NULL, NULL, NULL, 0, NULL, '2019-07-02 07:59:07', '2019-07-08 11:20:23'),
(22, 2, '', '', 'Tripti Pandey', NULL, NULL, '1993-01-13', NULL, 'tripti@indiaint.com', '1111111111', '$2y$10$xjcFqCH4JVF.pVj5N0ouW.ArVo8DJ7WLBfJbgziOklGRJK2llCehm', 'F', '106/267 gandhi nagar kanpur', 'noida', '1164', '12', '99', '201301', '0.00', '0', 0, NULL, 0, NULL, 1, 1, '0.00', 0, 'XkeeCNdtaO5GC0nX5T6q2seHZnICjHTaneyoYavVpZqNIeynT5wmOQpPR6xc', '9A20Yq7qMRbT5Ym3QpxNZI2cnA5NHWcb99DWIDpF', NULL, 'products/details/mid-rise-leggings-with-insert-pockets', 0, 'a:12:{i:0;i:87;i:1;i:78;i:2;i:83;i:3;i:80;i:4;i:86;i:5;i:64;i:6;i:79;i:7;i:62;i:8;i:81;i:9;i:68;i:10;i:63;i:11;i:88;}', '2019-07-02 12:06:02', '2019-07-20 10:30:15'),
(23, 2, '', '', NULL, NULL, NULL, NULL, NULL, 'mukesh@indiaint.com', '9685805313', '$2y$10$0h4XiyTtu291TdcVXqXMiuRP0zjowl.TYNnTGGZkcabT.HTM4PSca', 'M', NULL, NULL, NULL, NULL, NULL, NULL, '0.00', '0', 0, NULL, 0, NULL, 1, 1, '15000.00', 0, 'F65n18TGUCgy7eGWCBfMgA65VTAqgZIoKPaOJSqI8sFujK4sODtWhYWQhGRe', '33bI4tjZdhaS5R4rvxxTaT3xg0G69zDLugJaWc3p', NULL, '', 0, 'a:3:{i:0;i:62;i:1;i:81;i:2;i:85;}', '2019-07-04 05:38:30', '2019-07-17 11:16:15'),
(24, 2, '', '', NULL, NULL, NULL, NULL, NULL, 'rohit@indiaint.com', '8092200305', '$2y$10$/TUzzP1Ii0.n8/tnhdI6Uew1.FCOO1EOY1BQmoYBAQm/mRPDQn/.u', 'M', NULL, NULL, NULL, NULL, NULL, NULL, '0.00', '0', 0, NULL, 0, NULL, 1, 1, '0.00', 0, 'g68hgAmz1piqxejlvCFLn3ZMT7ryHWNGgLQxTg2HHe7qtlPYsQDnhhVDZ5Pb', 'Za92ja0uUacQwF3LGMQ5Dx44htYOxClBASU2uiIz', NULL, '', 0, 'a:1:{i:0;i:88;}', '2019-07-18 12:53:42', '2019-07-18 18:50:04'),
(25, 2, '', '', NULL, NULL, NULL, NULL, NULL, 'vidhi@indiaint.com', '9450580302', '$2y$10$3Olf1y9Htdq0OWS3h2DgSugnW2EQu6yWeJYf.UpQQXp0Pqqw8Pyaa', 'F', NULL, NULL, NULL, NULL, NULL, NULL, '0.00', '0', 0, NULL, 0, NULL, 1, 1, '676767.00', 0, NULL, 'k7FzoUpXcijp4xukqFfX7v1p9olZA5E6fuu47uC6', NULL, '', 0, NULL, '2019-07-19 10:11:07', '2019-07-20 08:16:48'),
(26, 2, '', '', 'CSO1 User1', NULL, NULL, NULL, NULL, 'cso1.user1@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0.00', '0', 1, '105421850578339330745', 0, NULL, 1, 1, '0.00', 0, 'HfzAkF72Yi9dDv6ovecbfQ6j5KlLyHPTisAEe49TV2qBbCa2rUXlUTcYAT1L', NULL, NULL, NULL, 0, NULL, '2019-07-23 06:23:00', '2019-07-29 11:50:30'),
(28, 2, '', '', NULL, NULL, NULL, NULL, NULL, 'ruma@indiaint.com', '9540580302', '$2y$10$.nhNPYPemtOrz3mkClmDau0JpmteqZb4zlGM1wzZasAnXHqmBGgvy', 'F', NULL, NULL, NULL, NULL, NULL, NULL, '0.00', '0', 0, NULL, 0, NULL, 1, 1, '0.00', 0, NULL, 'MVoQIM84pia2fodPtlbtBsMAZERDSB2Al1Kuoq2J', NULL, '', 0, NULL, '2019-07-29 05:46:56', '2019-07-29 05:46:56'),
(29, 2, '', '', NULL, NULL, NULL, NULL, NULL, 'vikas@indiaint.com1', '9874563214', '$2y$10$f39oQL/XyfnDbwTZmtoxFum7XRg/8EvZd48.T6qJVCaO2eD5awxLi', 'M', NULL, NULL, NULL, NULL, NULL, NULL, '0.00', '0', 0, NULL, 0, NULL, 1, 1, '0.00', 0, NULL, 'E8yCQq2haFyGUDOT5fukhIYKI33kj5U4kFWUM1f8', NULL, '', 0, NULL, '2019-07-29 06:35:50', '2019-07-29 06:35:50'),
(30, 2, '', '', NULL, NULL, NULL, NULL, NULL, 'vikas1@indiaint.com', '9874563214', '$2y$10$dUuvZrtQRgW2y/Yn6ZvQPuH7dRogMXeZVh3bA1YXzj70n34.jldTC', 'M', NULL, NULL, NULL, NULL, NULL, NULL, '0.00', '0', 0, NULL, 0, NULL, 1, 1, '0.00', 0, NULL, 'JFj6otLVmeY1FwyXRBdefOX2FJnGadzH5DHfQKv7', NULL, '', 0, NULL, '2019-07-29 06:39:01', '2019-07-29 06:39:01');

-- --------------------------------------------------------

--
-- Table structure for table `users_wallet`
--

DROP TABLE IF EXISTS `users_wallet`;
CREATE TABLE IF NOT EXISTS `users_wallet` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `by_user_id` int(11) NOT NULL DEFAULT '0',
  `order_id` int(11) NOT NULL,
  `transaction_type` varchar(20) NOT NULL,
  `credit_amount` decimal(15,2) NOT NULL DEFAULT '0.00',
  `debit_amount` decimal(15,2) NOT NULL DEFAULT '0.00',
  `balance` decimal(15,2) DEFAULT '0.00' COMMENT 'not is use...',
  `description` varchar(200) DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` datetime DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users_wallet`
--

INSERT INTO `users_wallet` (`id`, `user_id`, `by_user_id`, `order_id`, `transaction_type`, `credit_amount`, `debit_amount`, `balance`, `description`, `status`, `created_at`, `updated_at`) VALUES
(1, 1, 0, 0, '', '100000.00', '0.00', '100000.00', 'Amount(100000) credited.', 1, '2019-06-10 09:23:33', '2019-06-10 09:23:33'),
(2, 1, 0, 0, '', '100000.00', '0.00', '200000.00', 'Credit 100000', 1, '2019-06-26 09:17:45', '2019-06-26 09:17:45'),
(3, 1, 0, 0, '', '2000000.00', '0.00', '2200000.00', 'Credit 2000000', 1, '2019-06-26 09:18:13', '2019-06-26 09:18:13'),
(4, 1, 0, 0, '', '0.00', '200000.00', '2000000.00', 'debit 200000', 1, '2019-06-26 11:08:35', '2019-06-26 11:08:35'),
(5, 19, 0, 0, '', '1000.00', '0.00', '1000.00', 'TEST TEST', 1, '2019-06-28 06:23:53', '2019-06-28 06:23:53'),
(6, 12, 0, 0, '', '120.00', '0.00', '120.00', 'ddd asfaf afafaf af', 1, '2019-06-28 07:01:46', '2019-06-28 07:01:46'),
(7, 12, 0, 0, '', '1.00', '0.00', '121.00', 'sagaga ga', 1, '2019-06-28 07:04:22', '2019-06-28 07:04:22'),
(8, 12, 0, 0, '', '4.00', '0.00', '125.00', 'sa agasgg', 1, '2019-06-28 07:04:51', '2019-06-28 07:04:51'),
(9, 20, 0, 0, '', '1000.00', '0.00', '1000.00', 'test test', 1, '2019-06-28 12:47:05', '2019-06-28 12:47:05'),
(10, 1, 0, 0, '', '0.00', '195000.00', '1805000.00', 'Debit 195000', 1, '2019-07-06 09:15:05', '2019-07-06 09:15:05'),
(11, 1, 0, 0, '', '0.00', '1805000.00', '0.00', 'Debit 1805000', 1, '2019-07-06 09:15:47', '2019-07-06 09:15:47'),
(12, 1, 0, 0, '', '5000.00', '0.00', '5000.00', 'Credit 5000', 1, '2019-07-06 09:16:03', '2019-07-06 09:16:03'),
(13, 1, 0, 6, 'Order No-6', '0.00', '546.00', '4454.00', 'Amount debited for Order No-6', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(14, 1, 0, 7, 'Order No-7', '0.00', '4380.00', '74.00', 'Amount debited for Order No-7', 1, '2019-07-08 11:23:37', '2019-07-08 11:23:37'),
(15, 1, 0, 0, '', '20000.00', '0.00', '20074.00', '20000 credit', 1, '2019-07-09 11:23:24', '2019-07-09 11:23:24'),
(16, 1, 0, 16, 'Order No-16', '0.00', '520.00', '19554.00', 'Amount debited for Order No-16', 1, '2019-07-09 11:48:58', '2019-07-09 11:48:58'),
(17, 23, 0, 0, '', '15000.00', '0.00', '15000.00', '', 1, '2019-07-17 15:53:14', '2019-07-17 15:53:14'),
(18, 25, 0, 0, '', '676767.00', '0.00', '676767.00', '', 1, '2019-07-20 13:29:20', '2019-07-20 13:29:20');

-- --------------------------------------------------------

--
-- Table structure for table `user_addresses`
--

DROP TABLE IF EXISTS `user_addresses`;
CREATE TABLE IF NOT EXISTS `user_addresses` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `user_id` int(10) UNSIGNED DEFAULT NULL,
  `type` varchar(20) NOT NULL COMMENT 'home/office(commercial)',
  `name` varchar(100) DEFAULT NULL,
  `company_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(15) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `locality` varchar(100) DEFAULT NULL,
  `city` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `state` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `country` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `pincode` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `default_delivery` tinyint(1) DEFAULT '0',
  `default_billing` tinyint(1) DEFAULT '0',
  `is_default` tinyint(4) DEFAULT '0',
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime DEFAULT '0000-00-00 00:00:00' ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user_addresses`
--

INSERT INTO `user_addresses` (`id`, `user_id`, `type`, `name`, `company_name`, `phone`, `address`, `locality`, `city`, `state`, `country`, `pincode`, `default_delivery`, `default_billing`, `is_default`, `created_at`, `updated_at`) VALUES
(4, 2, 'home', NULL, 'Alliance Web Solution', '9910172953', 'delhi', NULL, '586', '13', '99', '110053', 0, 0, 1, '2019-06-24 07:07:28', '2019-06-26 17:05:34'),
(5, 2, 'office', NULL, 'Alliance Web Solution', '9910172953', 'B-112, sec-64', NULL, '63', '10', '99', '201301', 0, 0, 0, '2019-06-24 07:08:47', '2019-06-26 17:05:31'),
(6, 2, 'office', NULL, 'Alliance Web Solution', '9874563214', 'B-112, Sec-64, Noida', NULL, '84', '38', '99', '201301', 0, 0, 0, '2019-06-25 01:22:57', '2019-06-25 12:37:30'),
(7, 2, 'office', NULL, 'Alliance Web Solution', '9874563214', 'B-112, Sec-64', NULL, '67', '13', '99', '201301', 0, 0, 0, '2019-06-25 01:39:42', '2019-06-25 12:45:26'),
(8, 1, 'home', 'Vikas', 'Alliance Web Solution', '9874563214', 'B-112, Sec-64', 'Noida', '84', '38', '99', '201301', 0, 0, 1, '2019-06-26 06:16:21', '2019-07-01 07:16:31'),
(9, 12, 'home', 'siddique', 'Indiaint', '1234567890', 'B112', 'delhi', '63', '10', '99', '201301', 0, 0, 1, '2019-06-26 06:20:05', '2019-06-28 09:10:22'),
(10, 12, 'office', 'Siddique Akhtar', 'Indiaint', '9871394258', '2212', 'Noida', '63', '10', '99', '201301', 0, 0, 0, '2019-06-26 06:25:11', '2019-06-28 09:10:48'),
(11, 19, 'office', 'Tripti Pandey', 'e com', '9685805313', 'B 112, Sector 75', 'Near Sunny Motor', '84', '38', '99', '201309', 0, 0, 1, '2019-06-26 07:19:46', '2019-07-17 10:02:57'),
(12, 19, 'office', 'Sanyogita Patel', NULL, '9685805313', 'noida', 'noida', '152', '31', '99', '67845', 0, 0, 0, '2019-06-28 05:49:17', '2019-06-28 11:19:17'),
(13, 19, 'office', 'sanyu patel', NULL, '9893144604', 'noida\r\nnoida', 'South Delhi', '63', '10', '99', '201301', 0, 0, 0, '2019-06-28 05:49:29', '2019-06-28 11:19:29'),
(14, 22, 'office', 'pandey', NULL, '1111111111', 'noida', 'noida', '70', '38', '99', '201301', 0, 0, 1, '2019-07-03 04:26:20', '2019-07-04 09:47:24'),
(15, 22, 'office', 'pandey', NULL, '1111111111', 'noida', 'noida', '63', '10', '99', '201301', 0, 0, 0, '2019-07-03 04:26:47', '2019-07-03 09:56:47'),
(16, 22, 'home', 'Tripti pandey', NULL, '9540580302', 'Alliance web solution sector 112 - b block sector 64.', 'Noida', '63', '10', '99', '208012', 0, 0, 0, '2019-07-04 04:18:47', '2019-07-04 09:48:47'),
(17, 18, 'home', 'Sanyogita Patel', NULL, '9685805313', 'noida', 'noida', '84', '38', '99', '201301', 0, 0, 1, '2019-07-15 04:27:08', '2019-07-15 09:57:08'),
(18, 18, 'home', 'Sanyogita Patel', NULL, '9685805313', 'noida', 'noida', '84', '38', '99', '201301', 0, 0, 0, '2019-07-15 04:27:08', '2019-07-15 09:57:08');

-- --------------------------------------------------------

--
-- Table structure for table `user_cart`
--

DROP TABLE IF EXISTS `user_cart`;
CREATE TABLE IF NOT EXISTS `user_cart` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `session_token` varchar(60) DEFAULT NULL,
  `user_id` int(11) DEFAULT '0',
  `order_id` int(11) DEFAULT '0',
  `product_id` int(11) DEFAULT '0',
  `size_id` int(11) DEFAULT '0',
  `product_name` varchar(255) DEFAULT NULL,
  `size_name` varchar(10) DEFAULT NULL,
  `product_slug` varchar(255) DEFAULT NULL,
  `product_sku` varchar(50) DEFAULT NULL,
  `product_gender` varchar(255) DEFAULT NULL,
  `qty` int(11) DEFAULT '0',
  `price` decimal(15,2) DEFAULT '0.00',
  `sale_price` decimal(15,2) DEFAULT '0.00',
  `cart_price` decimal(15,2) DEFAULT '0.00',
  `gst` decimal(15,2) DEFAULT '0.00',
  `weight` decimal(15,2) DEFAULT '0.00',
  `color_id` int(11) DEFAULT '0',
  `color_name` varchar(50) DEFAULT NULL,
  `created_at` datetime DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=56 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user_cart`
--

INSERT INTO `user_cart` (`id`, `session_token`, `user_id`, `order_id`, `product_id`, `size_id`, `product_name`, `size_name`, `product_slug`, `product_sku`, `product_gender`, `qty`, `price`, `sale_price`, `cart_price`, `gst`, `weight`, `color_id`, `color_name`, `created_at`, `updated_at`) VALUES
(1, '3Bl1s7yvUGpNACbpsOpcIrUnr4DH5MikwH62H2HL', 1, 0, 87, 2, 'Charcoal Grey Sleep Shirt FWSJ717', 'M', 'charcoal-grey-sleep-shirt-fwsj717', '26', 'f', 2, '899.00', NULL, '899.00', '5.00', NULL, 17, 'Charcoal Grey', '2019-07-15 12:06:41', '2019-07-17 17:26:49'),
(2, 'zgbsoQIlMfPyhlPwvOIccjP2490X4i3L5aWnGdv2', 0, 0, 87, 6, 'Charcoal Grey Sleep Shirt FWSJ717', 'XS', 'charcoal-grey-sleep-shirt-fwsj717', '26', 'f', 1, '899.00', NULL, '899.00', '5.00', NULL, 17, 'Charcoal Grey', '2019-07-15 12:18:47', '2019-07-15 12:18:47'),
(3, 'bYY6tFzbTfOJI8cD5DlPZRBKZzJ9CkOKrICZ8ZPW', 12, 0, 87, 6, 'Charcoal Grey Sleep Shirt FWSJ717', 'XS', 'charcoal-grey-sleep-shirt-fwsj717', '26', 'f', 1, '899.00', NULL, '899.00', '5.00', NULL, 17, 'Charcoal Grey', '2019-07-15 12:19:26', '2019-07-15 12:27:30'),
(5, 'bYY6tFzbTfOJI8cD5DlPZRBKZzJ9CkOKrICZ8ZPW', 12, 0, 88, 2, 'Neemrana Linen Kurta', 'M', 'neemrana-linen-kurta', '28', 'f', 1, '3750.00', '1410.00', '1410.00', '12.00', NULL, 2, 'White', '2019-07-15 12:27:07', '2019-07-15 12:27:30'),
(6, NULL, 12, 0, 88, 3, 'Neemrana Linen Kurta', 'L', 'neemrana-linen-kurta', '28', 'f', 6, '3750.00', '1410.00', '1410.00', '12.00', NULL, 2, 'White', '2019-07-15 12:27:35', '2019-07-15 12:28:44'),
(7, 'cCObTreeXbOx9sCRCEVmwnWnHlKdrex1zfREsixd', 0, 0, 86, 2, 'Printed Tunic with Contrast Hemline', 'M', 'printed-tunic-with-contrast-hemline', '24', 'f', 1, '999.00', '400.00', '400.00', '18.00', NULL, 20, 'Navy Blue', '2019-07-15 13:22:23', '2019-07-15 13:22:23'),
(8, 'ZDpWmMW8plvOPu82i1LSqVntQtPC1kwLIYmrwkYv', 12, 0, 87, 2, 'Charcoal Grey Sleep Shirt FWSJ717', 'M', 'charcoal-grey-sleep-shirt-fwsj717', '26', 'f', 1, '899.00', NULL, '899.00', '5.00', NULL, 17, 'Charcoal Grey', '2019-07-15 15:09:14', '2019-07-15 15:09:51'),
(10, 'Q3mDzDt0jqDRYIn5VE06EERS2OfcYSH0kKAFvBZG', 0, 0, 87, 6, 'Charcoal Grey Sleep Shirt FWSJ717', 'XS', 'charcoal-grey-sleep-shirt-fwsj717', '26', 'f', 1, '899.00', NULL, '899.00', '5.00', NULL, 17, 'Charcoal Grey', '2019-07-15 15:25:46', '2019-07-15 15:25:46'),
(11, 'mcs0FZdVfnCUUniP17tfu688lOTPfTrmITOBLBDT', 0, 0, 88, 2, 'Neemrana Linen Kurta', 'M', 'neemrana-linen-kurta', '28', 'f', 1, '3750.00', '1410.00', '1410.00', '12.00', NULL, 2, 'White', '2019-07-15 15:26:06', '2019-07-15 15:26:06'),
(14, 'nbPNywpoGrFKmYAej0Zw66E2KAP6cF5IufxHmhpx', 0, 0, 87, 6, 'Charcoal Grey Sleep Shirt FWSJ717', 'XS', 'charcoal-grey-sleep-shirt-fwsj717', '26', 'f', 1, '899.00', NULL, '899.00', '5.00', NULL, 17, 'Charcoal Grey', '2019-07-16 10:31:06', '2019-07-16 10:31:06'),
(15, 'HbGdbErbdMG64Vy8X7c3f8ULgBNvIr3MNjd4oaHu', 22, 18, 81, 6, 'Printed Top with Cutaway Shoulders', 'XS', 'printed-top-with-cutaway-shoulders', '20', 'f', 2, '1299.00', '599.00', '599.00', '5.00', NULL, 7, 'Black', '2019-07-16 11:42:13', '2019-07-20 16:00:24'),
(16, 'HbGdbErbdMG64Vy8X7c3f8ULgBNvIr3MNjd4oaHu', 22, 18, 86, 6, 'Printed Tunic with Contrast Hemline', 'XS', 'printed-tunic-with-contrast-hemline', '24', 'f', 1, '999.00', '400.00', '400.00', '18.00', NULL, 20, 'Navy Blue', '2019-07-16 11:56:12', '2019-07-20 16:00:24'),
(17, 'HbGdbErbdMG64Vy8X7c3f8ULgBNvIr3MNjd4oaHu', 22, 18, 87, 6, 'Charcoal Grey Sleep Shirt FWSJ717', 'XS', 'charcoal-grey-sleep-shirt-fwsj717', '26', 'f', 1, '899.00', NULL, '899.00', '5.00', NULL, 17, 'Charcoal Grey', '2019-07-16 11:58:55', '2019-07-20 16:00:24'),
(18, 'e3w3wgZTlzY9cgZQ8vrizkqydZVy47lQimy5VLGt', 0, 0, 81, 6, 'Printed Top with Cutaway Shoulders', 'XS', 'printed-top-with-cutaway-shoulders', '20', 'f', 6, '1299.00', '599.00', '599.00', '5.00', NULL, 7, 'Black', '2019-07-16 14:41:31', '2019-07-16 14:41:44'),
(19, 'N6OBHqwRwJFDjUDfKKBPwUMTMDHz9y87F2m4RfCt', 0, 0, 88, 5, 'Neemrana Linen Kurta', 'S', 'neemrana-linen-kurta', '28', 'f', 1, '3750.00', '1410.00', '1410.00', '12.00', NULL, 2, 'White', '2019-07-16 18:38:40', '2019-07-16 18:38:40'),
(20, 'Aiv4iwEN7yiesu8HsQ8PanUp2lRzOQDVp4kvvcmJ', 0, 0, 88, 6, 'Neemrana Linen Kurta', 'XS', 'neemrana-linen-kurta', '28', 'f', 1, '3750.00', '1410.00', '1410.00', '12.00', NULL, 2, 'White', '2019-07-16 19:14:09', '2019-07-16 19:14:09'),
(21, 'aaSxkp82D3okjrOeR5WP8PXgyUoXGLBDA3S7miYn', 0, 0, 87, 6, 'Charcoal Grey Sleep Shirt FWSJ717', 'XS', 'charcoal-grey-sleep-shirt-fwsj717', '26', 'f', 1, '899.00', NULL, '899.00', '5.00', NULL, 17, 'Charcoal Grey', '2019-07-17 10:28:15', '2019-07-17 10:28:15'),
(25, NULL, 18, 0, 87, 6, 'Charcoal Grey Sleep Shirt FWSJ717', 'XS', 'charcoal-grey-sleep-shirt-fwsj717', '26', 'f', 7, '899.00', NULL, '899.00', '5.00', NULL, 17, 'Charcoal Grey', '2019-07-17 13:38:29', '2019-07-17 13:38:40'),
(27, NULL, 19, 0, 87, 6, 'Charcoal Grey Sleep Shirt FWSJ717', 'XS', 'charcoal-grey-sleep-shirt-fwsj717', '26', 'f', 1, '899.00', NULL, '899.00', '5.00', NULL, 17, 'Charcoal Grey', '2019-07-18 11:39:53', '2019-07-18 11:39:53'),
(29, 'vTzCczogRfzulwT9422a00aXdjUlpyzLmKG9JLEh', 1, 0, 88, 3, 'Neemrana Linen Kurta', 'L', 'neemrana-linen-kurta', '28', 'f', 1, '3750.00', '1410.00', '1410.00', '12.00', NULL, 2, 'White', '2019-07-18 12:10:51', '2019-07-18 12:11:02'),
(30, '0zq9YsazdZvwaqnTERDvC1HsLR5zMImZzx96h6ey', 19, 0, 81, 2, 'Printed Top with Cutaway Shoulders', 'M', 'printed-top-with-cutaway-shoulders', '20', 'f', 1, '1299.00', '599.00', '599.00', '5.00', NULL, 7, 'Black', '2019-07-18 13:04:33', '2019-07-18 13:04:53'),
(31, NULL, 24, 0, 88, 6, 'Neemrana Linen Kurta', 'XS', 'neemrana-linen-kurta', '28', 'f', 1, '3750.00', '1410.00', '1410.00', '12.00', NULL, 2, 'White', '2019-07-18 18:24:19', '2019-07-18 18:24:19'),
(33, 'joBKzYjKQnOx1Jf9l8si7Es3hE3NEbaIlHTUPoJ0', 22, 18, 81, 6, 'Printed Top with Cutaway Shoulders', 'XS', 'printed-top-with-cutaway-shoulders', '20', 'f', 9, '1299.00', '599.00', '599.00', '5.00', NULL, 7, 'Black', '2019-07-19 15:22:34', '2019-07-20 16:00:24'),
(34, NULL, 22, 18, 88, 5, 'Neemrana Linen Kurta', 'S', 'neemrana-linen-kurta', '28', 'f', 1, '3750.00', '1410.00', '1410.00', '12.00', NULL, 2, 'White', '2019-07-20 16:00:17', '2019-07-20 16:00:24'),
(35, '9sA5207FoeTBtEIeVjWMCQilo7NHXYQz3e9b1TS3', 19, 0, 81, 2, 'Printed Top with Cutaway Shoulders', 'M', 'printed-top-with-cutaway-shoulders', '20', 'f', 4, '1299.00', '599.00', '599.00', '5.00', NULL, 7, 'Black', '2019-07-25 18:38:14', '2019-07-25 18:42:26'),
(36, 'oLqGUy3m001iLP9lKUKCsXIz3x8LaywXmd3omhWr', 0, 0, 81, 2, 'Printed Top with Cutaway Shoulders', 'M', 'printed-top-with-cutaway-shoulders', '20', 'f', 10, '1299.00', '599.00', '599.00', '5.00', NULL, 7, 'Black', '2019-07-26 10:28:12', '2019-07-26 10:30:14'),
(37, 'oLqGUy3m001iLP9lKUKCsXIz3x8LaywXmd3omhWr', 0, 0, 85, 2, 'Amparo Blue High-Low Sleepshirt FWSJ851', 'M', 'amparo-blue-high-low-sleepshirt-fwsj851', '25', 'f', 1, '799.00', '399.00', '399.00', '5.00', NULL, 24, 'Amparo Blue', '2019-07-26 10:30:49', '2019-07-26 13:46:40'),
(38, 'Q1Yg77qSrbePANHH6WDJZZKANF8vi81SkRbrszBj', 0, 0, 81, 6, 'Printed Top with Cutaway Shoulders', 'XS', 'printed-top-with-cutaway-shoulders', '20', 'f', 1, '1299.00', '599.00', '599.00', '5.00', NULL, 7, 'Black', '2019-07-26 12:26:15', '2019-07-26 12:26:15'),
(40, '8a3mXslymXv70KG26eLT5NotEXqL0QjLwahk9olS', 0, 0, 88, 5, 'Neemrana Linen Kurta', 'S', 'neemrana-linen-kurta', '28', 'f', 1, '3750.00', '1410.00', '1410.00', '12.00', NULL, 2, 'White', '2019-07-26 13:05:05', '2019-07-26 13:05:05'),
(41, 'pBniAdZiqh3vE2PGIHiIbx1TR8llTLsvgULjrDEy', 0, 0, 88, 2, 'Neemrana Linen Kurta', 'M', 'neemrana-linen-kurta', '28', 'f', 8, '3750.00', '1410.00', '1410.00', '12.00', NULL, 2, 'White', '2019-07-26 13:16:22', '2019-07-26 16:09:45'),
(42, 'pBniAdZiqh3vE2PGIHiIbx1TR8llTLsvgULjrDEy', 0, 0, 86, 5, 'Printed Tunic with Contrast Hemline', 'S', 'printed-tunic-with-contrast-hemline', '24', 'f', 2, '999.00', '400.00', '400.00', '18.00', NULL, 20, 'Navy Blue', '2019-07-26 15:45:44', '2019-07-26 15:46:29'),
(43, 'coVCDJdau5UXRSWsIU4PR9pcjmmdV0XCcJfkVaJY', 0, 0, 86, 2, 'Printed Tunic with Contrast Hemline', 'M', 'printed-tunic-with-contrast-hemline', '24', 'f', 1, '999.00', '400.00', '400.00', '18.00', NULL, 20, 'Navy Blue', '2019-07-26 17:51:02', '2019-07-26 17:51:02'),
(44, 'D7IvjxHfilrzVHD4XuOH8Nr3b9A1KQPij3PCIpnC', 0, 0, 86, 2, 'Printed Tunic with Contrast Hemline', 'M', 'printed-tunic-with-contrast-hemline', '24', 'f', 1, '999.00', '400.00', '400.00', '18.00', NULL, 20, 'Navy Blue', '2019-07-26 18:31:57', '2019-07-26 18:31:57'),
(45, 'RKPvwvu6TyqZdqBcrxyDFmKKQEbz0zzUpOSvQWIq', 0, 0, 88, 5, 'Neemrana Linen Kurta', 'S', 'neemrana-linen-kurta', '28', 'f', 1, '3750.00', '1410.00', '1410.00', '12.00', NULL, 2, 'White', '2019-07-29 11:44:20', '2019-07-29 11:44:20'),
(46, 'RKPvwvu6TyqZdqBcrxyDFmKKQEbz0zzUpOSvQWIq', 0, 0, 87, 2, 'Charcoal Grey Sleep Shirt FWSJ717', 'M', 'charcoal-grey-sleep-shirt-fwsj717', '26', 'f', 1, '899.00', NULL, '899.00', '5.00', NULL, 17, 'Charcoal Grey', '2019-07-29 13:45:51', '2019-07-29 13:45:51'),
(47, 'RKPvwvu6TyqZdqBcrxyDFmKKQEbz0zzUpOSvQWIq', 0, 0, 87, 5, 'Charcoal Grey Sleep Shirt FWSJ717', 'S', 'charcoal-grey-sleep-shirt-fwsj717', '26', 'f', 1, '899.00', NULL, '899.00', '5.00', NULL, 17, 'Charcoal Grey', '2019-07-29 14:53:30', '2019-07-29 14:53:30'),
(48, 'r3sicdKFWf7d3RxEIhNumv06OkwS5GbDeByfHKQq', 0, 0, 81, 2, 'Printed Top with Cutaway Shoulders', 'M', 'printed-top-with-cutaway-shoulders', '20', 'f', 1, '1299.00', '599.00', '599.00', '5.00', NULL, 7, 'Black', '2019-07-29 16:14:56', '2019-07-29 16:14:56'),
(49, 'Gki67XIju62H1XgoFBNX7wgsVT4IePwUWvdHFldT', 0, 0, 81, 4, 'Printed Top with Cutaway Shoulders', 'XL', 'printed-top-with-cutaway-shoulders', '20', 'f', 2, '1299.00', '599.00', '599.00', '5.00', NULL, 7, 'Black', '2019-07-29 17:01:07', '2019-07-29 17:11:41'),
(50, 'zzqdE5UkjXDClbaxhIUP74Rm2dlwHa4NgxCcWRuR', 0, 0, 87, 5, 'Charcoal Grey Sleep Shirt FWSJ717', 'S', 'charcoal-grey-sleep-shirt-fwsj717', '26', 'f', 1, '899.00', NULL, '899.00', '5.00', NULL, 17, 'Charcoal Grey', '2019-07-29 17:05:39', '2019-07-29 17:05:39'),
(51, 'tmHtq3lPTz3OBFKWdWyYTer9nka6YZTBVHN8bVii', 0, 0, 87, 2, 'Charcoal Grey Sleep Shirt FWSJ717', 'M', 'charcoal-grey-sleep-shirt-fwsj717', '26', 'f', 1, '899.00', NULL, '899.00', '5.00', NULL, 17, 'Charcoal Grey', '2019-07-29 17:07:06', '2019-07-29 17:07:06'),
(52, 'an5VCjuOOBr1BBN5eRJWJmA6zWMN8QBsAYIJ3gYa', 0, 0, 87, 2, 'Charcoal Grey Sleep Shirt FWSJ717', 'M', 'charcoal-grey-sleep-shirt-fwsj717', '26', 'f', 2, '899.00', NULL, '899.00', '5.00', NULL, 17, 'Charcoal Grey', '2019-07-29 17:17:05', '2019-07-29 17:17:15'),
(53, 'of3RGlSrWuPtsuiUC09JXNbZ3EqczTZ3eukWZhFQ', 0, 0, 87, 5, 'Charcoal Grey Sleep Shirt FWSJ717', 'S', 'charcoal-grey-sleep-shirt-fwsj717', '26', 'f', 1, '899.00', NULL, '899.00', '5.00', NULL, 17, 'Charcoal Grey', '2019-07-29 17:18:44', '2019-07-29 17:18:44'),
(54, 'GDfk9vZ5OYbTm17KOmOLppqvRE7rDpWFQUVa4pEC', 0, 0, 81, 4, 'Printed Top with Cutaway Shoulders', 'XL', 'printed-top-with-cutaway-shoulders', '20', 'f', 1, '1299.00', '599.00', '599.00', '5.00', NULL, 7, 'Black', '2019-07-29 17:59:21', '2019-07-29 17:59:21'),
(55, '4bAN9XBBMWQaxU0IFPKrtNu4mlYT4cihZOkBYAzc', 0, 0, 88, 3, 'Neemrana Linen Kurta', 'L', 'neemrana-linen-kurta', '28', 'f', 1, '3750.00', '1410.00', '1410.00', '12.00', NULL, 2, 'White', '2019-07-30 11:20:13', '2019-07-30 11:20:13');

-- --------------------------------------------------------

--
-- Table structure for table `user_wishlist`
--

DROP TABLE IF EXISTS `user_wishlist`;
CREATE TABLE IF NOT EXISTS `user_wishlist` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT '0',
  `product_id` int(11) DEFAULT '0',
  `size_id` int(11) DEFAULT '0',
  `created_at` datetime DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=123 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user_wishlist`
--

INSERT INTO `user_wishlist` (`id`, `user_id`, `product_id`, `size_id`, `created_at`, `updated_at`) VALUES
(75, 12, 80, 0, '2019-06-29 05:39:53', '2019-06-29 05:39:53'),
(86, 1, 83, 3, '2019-07-04 10:15:13', '2019-07-04 10:15:13'),
(97, 22, 62, 0, '2019-07-05 06:16:17', '2019-07-05 06:16:17'),
(98, 12, 79, 0, '2019-07-08 08:29:27', '2019-07-08 08:29:27'),
(102, 1, 85, 3, '2019-07-09 07:27:24', '2019-07-09 07:27:24'),
(103, 1, 87, 6, '2019-07-09 07:27:25', '2019-07-09 07:27:25'),
(106, 1, 88, 0, '2019-07-17 07:07:17', '2019-07-17 07:07:17'),
(108, 18, 87, 0, '2019-07-17 11:45:41', '2019-07-17 11:45:41'),
(110, 19, 80, 0, '2019-07-18 05:34:02', '2019-07-18 05:34:02'),
(111, 19, 67, 0, '2019-07-18 12:33:13', '2019-07-18 12:33:13'),
(112, 19, 78, 0, '2019-07-18 12:33:29', '2019-07-18 12:33:29'),
(113, 19, 86, 0, '2019-07-18 12:33:34', '2019-07-18 12:33:34'),
(114, 19, 88, 6, '2019-07-25 13:12:30', '2019-07-25 13:12:30'),
(115, 19, 87, 3, '2019-07-25 13:12:32', '2019-07-25 13:12:32'),
(116, 12, 67, 0, '2019-07-29 12:41:51', '2019-07-29 12:41:51'),
(119, 18, 80, 0, '2019-07-29 13:14:56', '2019-07-29 13:14:56'),
(120, 12, 87, 0, '2019-07-29 13:16:07', '2019-07-29 13:16:07'),
(121, 12, 86, 0, '2019-07-29 13:16:13', '2019-07-29 13:16:13'),
(122, 18, 86, 5, '2019-07-29 13:22:07', '2019-07-29 13:22:07');

-- --------------------------------------------------------

--
-- Table structure for table `website_settings`
--

DROP TABLE IF EXISTS `website_settings`;
CREATE TABLE IF NOT EXISTS `website_settings` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `type` enum('website','seo','social_links') DEFAULT 'website',
  `label` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `name` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `old_value` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `field_type` varchar(50) DEFAULT 'text',
  `css_class` varchar(50) DEFAULT NULL,
  `created_by` int(11) DEFAULT '0' COMMENT 'Admin ID',
  `updated_by` int(11) DEFAULT '0' COMMENT 'Admin ID',
  `sort_order` int(11) DEFAULT '0',
  `status` tinyint(1) DEFAULT NULL,
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=81 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `website_settings`
--

INSERT INTO `website_settings` (`id`, `type`, `label`, `name`, `value`, `old_value`, `field_type`, `css_class`, `created_by`, `updated_by`, `sort_order`, `status`, `created_at`, `updated_at`) VALUES
(9, 'website', 'Banner Image Height', 'BANNER_IMG_HEIGHT', '689', '1900', 'text', NULL, 0, 0, 0, 1, '2019-01-07 16:50:41', '2020-09-05 16:49:12'),
(10, 'website', 'Banner Image Width', 'BANNER_IMG_WIDTH', '1900', '689', 'text', NULL, 0, 0, 0, 1, '2019-01-07 16:50:41', '2020-09-05 16:49:20'),
(11, 'website', 'Banner Thumb Width', 'BANNER_THUMB_WIDTH', '1600', '336', 'text', NULL, 0, 0, 0, 1, '2019-01-07 16:50:41', '2020-01-14 18:14:19'),
(12, 'website', 'Banner Thumb Height', 'BANNER_THUMB_HEIGHT', '336', '336', 'text', NULL, 0, 0, 0, 1, '2019-01-07 16:50:41', '2019-01-07 16:50:41'),
(13, 'website', 'Admin Email', 'ADMIN_EMAIL', 'marketing@varuna.net', 'marketing@varuna.net,sanyogita@ehostinguk.com', 'text', NULL, 0, 0, 0, 1, '2019-02-15 12:54:00', '2020-11-24 06:16:42'),
(31, 'website', 'Insight Image Height', 'BLOG_IMG_HEIGHT', '768', '768', 'text', NULL, 0, 0, 0, 1, '2019-06-11 16:50:41', '2020-09-05 11:24:18'),
(32, 'website', 'Insight Image Width', 'BLOG_IMG_WIDTH', '768', '768', 'text', NULL, 0, 0, 0, 1, '2019-06-11 16:50:41', '2020-09-05 11:24:41'),
(33, 'website', 'Insight Thumb Width', 'BLOG_THUMB_WIDTH', '336', '336', 'text', NULL, 0, 0, 0, 1, '2019-06-11 16:50:41', '2020-09-05 11:24:50'),
(34, 'website', 'Insight Thumb Height', 'BLOG_THUMB_HEIGHT', '336', '336', 'text', NULL, 0, 0, 0, 1, '2019-06-11 16:50:41', '2020-09-05 11:24:59'),
(46, 'website', 'EMP STORY HEADING', 'EMP_STORY_HEADING_1', 'Hear from our employees', 'Our Company', 'text', NULL, 0, 0, 0, 1, '2019-07-15 15:30:41', '2020-09-05 11:21:01'),
(47, 'website', 'Emp Story Page text', 'EMP_STORY_TEXT', 'We take pride in our 1500+ strong team inspired by the single-minded drive to help our clients unlock the growth potential of their supply chains. Engaged with us in myriad roles, our people nurture an obsession for growth, a hunger for delivering nothing but excellence and a desire to keep pushing their limits. Read their stories to know why a career with Varuna Group is gripping & challenging but never boring.', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Quae quidem vel cum periculo est quaerenda vobis; Inscite autem medicinae et guber-nationis ultimum cum ultimo sapientiae comparatur. Et ille ridens: Video, inquit, quid agas; Duo Reges: constructio interrete. Nam, ut sint illa vend- biliora, haec uberiora certe sunt. Beatus autem esse in maximarum rerum timore nemo potest. Eadem nunc mea adversum te oratio est.', 'text', NULL, 0, 0, 0, 1, '2019-07-15 15:30:41', '2020-09-07 19:54:43'),
(48, 'website', 'Site Footer Email 1', 'SITE_FOOTER_EMAIL_1', 'marketing@varuna.net', '.', 'text', NULL, 0, 0, 0, 1, '2019-07-15 15:30:41', '2020-09-09 11:22:14'),
(49, 'website', 'Site Footer Email 2', 'SITE_FOOTER_EMAIL_2', 'info@varuna.net', '.', 'text', NULL, 0, 0, 0, 1, '2019-07-15 15:30:41', '2020-09-09 11:22:38'),
(56, 'website', 'Frontend Logo', 'FRONTEND_LOGO', '060919073339-logo.png', '060919071311-logo.png', 'file', NULL, 0, 0, 0, NULL, '2019-08-05 12:57:24', '2019-09-06 13:03:39'),
(57, 'website', 'Site Phone', 'SITE_PHONE', '0120-2448844/88', '0120-2448844', 'text', NULL, 0, 0, 0, NULL, '2019-08-05 13:05:15', '2020-02-20 13:30:06'),
(58, 'website', 'Site Email', 'SITE_EMAIL', 'varunainfo@gmail.com', 'info@ihbl.in', 'text', NULL, 0, 0, 0, NULL, '2019-08-05 13:05:46', '2020-09-01 14:58:50'),
(59, 'website', 'Site Address', 'SITE_ADDRESS', 'Varuna Pvt Ltd.<br>\r\n6th Floor, Indian Oil Bhawan, A-1, Sector 1, Udyog Marg, Noida 201301', 'IHB Pvt Ltd.<br>\r\n6th Floor, Indian Oil Bhawan, A-1, Sector 1, Udyog Marg, Noida 201301', 'text', NULL, 0, 0, 0, NULL, '2019-08-05 13:12:49', '2020-07-24 10:51:16'),
(60, 'social_links', 'Facebook', 'FACEBOOK', 'https://www.facebook.com/Varuna-Group-106320337691828/', 'https://www.facebook.com', 'text', NULL, 0, 0, 0, NULL, '2019-08-05 13:43:19', '2020-10-28 12:06:52'),
(61, 'social_links', 'Twitter', 'TWITTER', 'https://twitter.com/Varuna_Group', 'https://twitter.com', 'text', NULL, 0, 0, 0, NULL, '2019-08-05 13:44:01', '2020-10-28 12:08:08'),
(62, 'social_links', 'Linkedin', 'LINKEDIN', 'https://www.linkedin.com/company/vilpl/', 'https://in.linkedin.com', 'text', NULL, 0, 0, 0, NULL, '2019-08-05 13:44:46', '2020-10-28 12:07:43'),
(63, 'social_links', 'Instagram', 'INSTAGRAM', '*', 'https://www.instagram.com/', 'text', NULL, 0, 0, 0, NULL, '2019-08-05 13:45:15', '2020-01-08 18:57:05'),
(68, 'website', 'CMS Image Height', 'CMS_IMG_HEIGHT', '2000', '768', 'text', NULL, 0, 0, 0, 1, '2019-06-08 13:07:41', '2020-01-14 18:30:28'),
(69, 'website', 'CMS Image Width', 'CMS_IMG_WIDTH', '2000', '768', 'text', NULL, 0, 0, 0, 1, '2019-06-08 13:07:41', '2020-01-14 18:30:38'),
(70, 'website', 'CMS Thumb Width', 'CMS_THUMB_WIDTH', '550', '336', 'text', NULL, 0, 0, 0, 1, '2019-06-08 13:07:41', '2020-07-23 23:26:10'),
(71, 'website', 'CMS Thumb Height', 'CMS_THUMB_HEIGHT', '550', '336', 'text', NULL, 0, 0, 0, 1, '2019-06-08 13:07:41', '2020-07-23 23:26:29'),
(72, 'seo', 'Meta Title', 'META_TITLE', '3PL Warehousing and Logistics Company, CNF Warehouse, Supply Chain Management Solution', '3PL Warehousing & Logistics Company, Supply Chain Management Solution, CNF Warehouse', 'text', NULL, 0, 0, 0, NULL, '2019-08-22 12:57:21', '2021-02-16 00:28:30'),
(73, 'seo', 'Meta Description', 'META_DESCRIPTION', 'Varuna Group is one of the top 3PL warehousing & logistics companies in India. We provide professional supply chain management solution & CNF warehouse services in India.', 'Varuna Group is one of the top 3PL warehousing & logistics companies in India. We provide professional goods transportation solutions & CNF warehouse services in India.', 'text', NULL, 0, 0, 0, NULL, '2019-08-22 12:58:22', '2020-12-12 02:14:36'),
(75, 'website', 'Copyright Text', 'SITE_COPYRIGHT_TEXT', '2021 Varuna Group. All rights reserved.', '2020 Varuna Group. All rights reserved.', 'text', NULL, 0, 0, 0, NULL, '2020-01-08 16:42:20', '2021-01-06 04:44:30'),
(76, 'social_links', 'Pinterest', 'PINTEREST', '*', 'https://in.pinterest.com/', 'text', NULL, 0, 0, 0, NULL, '2020-01-08 18:55:21', '2020-01-08 18:57:20'),
(77, 'social_links', 'Youtube', 'YOUTUBE', 'https://www.youtube.com/channel/UCONbadTEcEkrd-gv_od0cqQ', 'https://youtube.com', 'text', NULL, 0, 0, 0, NULL, '2020-01-08 18:56:01', '2020-11-11 19:40:06'),
(78, 'website', 'FROM EMAIL', 'FROM_EMAIL', 'info@varuna.net', 'sanyogita@ehostinguk.com', 'text', NULL, 0, 0, 0, NULL, '2020-07-24 12:12:34', '2020-11-12 05:21:22'),
(79, 'website', 'Site Footer Phone 1', 'SITE_FOOTER_PHONE_1', ',', '-', 'text', NULL, 0, 0, 0, NULL, '2020-09-05 14:16:05', '2020-09-09 11:23:22'),
(80, 'website', 'Site Footer Phone 2', 'SITE_FOOTER_PHONE_2', ',', '-', 'text', NULL, 0, 0, 0, NULL, '2020-09-05 14:16:38', '2020-09-09 11:23:33');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
