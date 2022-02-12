-- phpMyAdmin SQL Dump
-- version 5.0.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 12, 2022 at 10:48 AM
-- Server version: 10.4.14-MariaDB
-- PHP Version: 7.2.34

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `simple_goodness`
--

-- --------------------------------------------------------

--
-- Table structure for table `about_us`
--

CREATE TABLE `about_us` (
  `id` int(100) NOT NULL,
  `content` text DEFAULT NULL,
  `bg_image` varchar(255) DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT 1,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `about_us`
--

INSERT INTO `about_us` (`id`, `content`, `bg_image`, `status`, `created_at`, `updated_at`) VALUES
(1, '<p>We take lots of care to ensure that every products is loaded with Vitamin E and carrier oils like Almond, Avacado, Argan Oil, Olive Oil, Castor oil etc and also Glycering to keep your skin hydrated throught out. We use pure essential oils in all our products, which adds up to enhanced texture of skin and hairs. Also skin absorbs the essential oils and keeps you overall whole and healthy.</p>\r\n<p>Our LIP Balms,moisturizer, Lotions &amp; Soaps are made out of Shea,Cocoa,Mango,Avacado, Soy Butters, and completely free from SLS, Sulphates &amp; Parabens.</p>', 'images/bg_image1639204874.png', 1, '2021-12-11 01:11:14', '2021-12-11 01:11:14');

-- --------------------------------------------------------

--
-- Table structure for table `banners`
--

CREATE TABLE `banners` (
  `id` int(11) NOT NULL,
  `banner_name` varchar(255) DEFAULT NULL,
  `banner_link` varchar(255) DEFAULT NULL,
  `banner_image` varchar(255) DEFAULT NULL,
  `banner_title` varchar(255) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT 1 COMMENT '1 Active 0 inactive',
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `banners`
--

INSERT INTO `banners` (`id`, `banner_name`, `banner_link`, `banner_image`, `banner_title`, `description`, `status`, `created_at`, `updated_at`) VALUES
(8, 'home banner 1', '#', 'images/banner/banner_image1643005131.jpeg', 'home banner 1', 'ddemo bannner 1', 1, '2021-10-30 00:25:22', '2022-01-28 05:19:56'),
(9, 'banner 2', '#', 'images/banner/banner_image1643005379.jpeg', 'banner 2', 'At Tata Sampann, we believe, that natural goodness is the way to go for a healthy, balanced life.', 1, '2022-01-24 00:52:59', '2022-01-28 05:25:51');

-- --------------------------------------------------------

--
-- Table structure for table `basic_info`
--

CREATE TABLE `basic_info` (
  `id` int(100) NOT NULL,
  `address` varchar(255) DEFAULT NULL,
  `phone1` varchar(255) DEFAULT NULL,
  `phone2` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `timing` varchar(255) DEFAULT NULL,
  `map` text DEFAULT NULL,
  `google_analytics` text DEFAULT NULL,
  `facebook_pixel` text DEFAULT NULL,
  `status` int(10) NOT NULL DEFAULT 1 COMMENT '1 Active 0 inactive',
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `basic_info`
--

INSERT INTO `basic_info` (`id`, `address`, `phone1`, `phone2`, `email`, `timing`, `map`, `google_analytics`, `facebook_pixel`, `status`, `created_at`, `updated_at`) VALUES
(1, '9806 A Sector 3 Rd Phase 13th Main, Yelahanka New Town, Bengaluru, Karnataka 560064', '9876543210', '9876543211', 'info@beshop.com', 'Mon - Sat: 7am – 7pm Sunday: Holiday', 'https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d343.4864031675898!2d77.58805909564494!3d13.092529034859924!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x3bae185cddbddf4d%3A0x92c6f685d0f84a8a!2sPhase%2013th!5e0!3m2!1sen!2sin!4v1635505785728!5m2!1sen!2sin', '(function(i,s,o,g,r,a,m){i[\'GoogleAnalyticsObject\']=r;i[r]=i[r]||function(){\r\n(i[r].q=i[r].q||[]).push(arguments)},i[r].l=1*new Date();a=s.createElement(o),\r\nm=s.getElementsByTagName(o)[0];a.async=1;a.src=g;m.parentNode.insertBefore(a,m)\r\n})(window,document,\'script\',\'https://www.google-analytics.com/analytics.js\',\'ga\');\r\n\r\nga(\'create\', \'UA-XXXXX-Y\', \'auto\');\r\nga(\'send\', \'pageview\');', 'window.ga=window.ga||function(){(ga.q=ga.q||[]).push(arguments)};ga.l=+new Date;\r\nga(\'create\', \'UA-XXXXX-Y\', \'auto\');\r\nga(\'send\', \'pageview\');\r\n</script>\r\n<script async src=\'https://www.google-analytics.com/analytics.js\'>', 1, '2021-12-13 06:29:45', '2021-12-15 10:54:23');

-- --------------------------------------------------------

--
-- Table structure for table `blogs`
--

CREATE TABLE `blogs` (
  `id` int(200) NOT NULL,
  `blog_title` varchar(255) DEFAULT NULL,
  `category_id` int(50) DEFAULT NULL,
  `blog_date` date DEFAULT NULL,
  `blog_content` text DEFAULT NULL,
  `blog_images` varchar(200) DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT 1 COMMENT '1 active 0 inactive',
  `user_id` int(100) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `blogs`
--

INSERT INTO `blogs` (`id`, `blog_title`, `category_id`, `blog_date`, `blog_content`, `blog_images`, `status`, `user_id`, `created_at`, `updated_at`) VALUES
(6, 'Mixture', 1, '2022-01-25', '<table class=\"recipe-ingredients\">\r\n<tbody>\r\n<tr>\r\n<td>3 cups Tata Sampann Chana Dal</td>\r\n</tr>\r\n<tr>\r\n<td>For Sev:</td>\r\n</tr>\r\n<tr>\r\n<td>1 cup ground chana dal</td>\r\n</tr>\r\n<tr>\r\n<td>&frac12; tsp red chilli powder</td>\r\n</tr>\r\n<tr>\r\n<td>&frac14; tsp turmeric powder</td>\r\n</tr>\r\n<tr>\r\n<td>1&frac12; tsps carom seeds (ajwain)</td>\r\n</tr>\r\n<tr>\r\n<td>Salt to taste</td>\r\n</tr>\r\n<tr>\r\n<td>1 tbsp oil + for greasing + to deep-fry</td>\r\n</tr>\r\n<tr>\r\n<td>For Boondi:</td>\r\n</tr>\r\n<tr>\r\n<td>2 cups ground chana dal</td>\r\n</tr>\r\n<tr>\r\n<td>&frac12; tsp turmeric powder</td>\r\n</tr>\r\n<tr>\r\n<td>1 tsp red chilli powder</td>\r\n</tr>\r\n<tr>\r\n<td>Salt to taste</td>\r\n</tr>\r\n<tr>\r\n<td>1 tsp oil + for deep frying</td>\r\n</tr>\r\n<tr>\r\n<td>10-15 curry leaves</td>\r\n</tr>\r\n<tr>\r\n<td>10-12 cashew nuts</td>\r\n</tr>\r\n<tr>\r\n<td>&frac12; cup roasted chana dal (daalia)</td>\r\n</tr>\r\n<tr>\r\n<td>&frac12; cup raw peanuts</td>\r\n</tr>\r\n<tr>\r\n<td>2 tbsps roasted pumpkin seeds</td>\r\n</tr>\r\n<tr>\r\n<td>2 tbsps roasted melon seeds</td>\r\n</tr>\r\n<tr>\r\n<td>2 tbsps roasted flax seeds</td>\r\n</tr>\r\n<tr>\r\n<td>1 tsp red chilli powder</td>\r\n</tr>\r\n</tbody>\r\n</table>', 'images/blog/blog_image1643007539.jpeg', 1, 1, '2022-01-24 01:28:59', '2022-01-24 07:11:38'),
(7, 'demo', 2, '2022-02-10', '<p>demo</p>', 'images/blog/blog_image1644476194.png', 1, 1, '2022-02-10 01:26:34', '2022-02-10 01:26:34');

-- --------------------------------------------------------

--
-- Table structure for table `carts`
--

CREATE TABLE `carts` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `attribute_id` int(11) DEFAULT NULL,
  `quantity` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `carts`
--

INSERT INTO `carts` (`id`, `user_id`, `product_id`, `attribute_id`, `quantity`, `created_at`, `updated_at`) VALUES
(2, 4, 4, NULL, 10, '2022-02-12 08:10:57', '2022-02-12 08:10:57'),
(3, 4, 5, NULL, 1, '2022-02-12 08:13:23', '2022-02-12 08:13:23');

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `id` int(100) NOT NULL,
  `category_name` varchar(255) NOT NULL,
  `category_image` varchar(250) DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT 1 COMMENT '1 active 0 inactive',
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`id`, `category_name`, `category_image`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Herbs & Spices', 'images/category/category_image1643006133.jpeg', 1, '2022-01-24 01:05:32', '2022-01-24 01:05:33'),
(2, 'Pulses', 'images/category/category_image1643006349.jpeg', 1, '2022-01-24 01:09:09', '2022-01-24 01:09:09'),
(3, 'Sweetners', 'images/category/category_image1643006524.png', 1, '2022-01-24 01:12:04', '2022-01-24 01:12:04'),
(4, 'Oil', 'images/category/category_image1643006637.jpeg', 1, '2022-01-24 01:13:57', '2022-01-24 01:14:39');

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `order_id` varchar(50) DEFAULT NULL,
  `cancel_reason` text DEFAULT NULL,
  `cancel_comment` text DEFAULT NULL,
  `address_id` int(11) DEFAULT NULL,
  `amount` varchar(20) DEFAULT NULL,
  `order_status` int(11) NOT NULL DEFAULT 1,
  `copoun_code` varchar(200) DEFAULT NULL,
  `payment_mode` varchar(50) DEFAULT NULL,
  `payment_id` varchar(255) DEFAULT NULL,
  `payment_status` varchar(50) DEFAULT NULL,
  `shipping_charge` int(11) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `order_items`
--

CREATE TABLE `order_items` (
  `id` int(11) NOT NULL,
  `order_id` varchar(50) NOT NULL,
  `sub_order_id` varchar(50) NOT NULL,
  `assign_vendor_id` int(11) DEFAULT NULL,
  `prod_name` varchar(255) DEFAULT NULL,
  `prod_id` int(11) NOT NULL,
  `attribute_id` int(11) DEFAULT NULL,
  `quantity` int(11) NOT NULL,
  `sub_total` varchar(20) NOT NULL,
  `order_status` varchar(50) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `plans`
--

CREATE TABLE `plans` (
  `id` int(255) NOT NULL,
  `plan_name` varchar(255) DEFAULT NULL,
  `price` varchar(255) DEFAULT NULL,
  `discount` varchar(100) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `status` int(20) DEFAULT 1 COMMENT '1 active 0 inactive',
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `plans`
--

INSERT INTO `plans` (`id`, `plan_name`, `price`, `discount`, `description`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Basic', '500', '5', '<p>Features<br />1. 10% discount on all products.<br />2. 2 free Soap samples in a year.<br />3. 1 free Hair Oil sample in a year.<br />4. 1 free lotion sample in year.<br />5. Notification on all new products.</p>', 1, '2021-11-03 00:32:19', '2021-11-03 00:32:19'),
(2, 'Standard', '750', '10', '<p>Features<br />1. 10% discount on all products.<br />2. 2 free Soap samples in a year.<br />3. 1 free Hair Oil sample in a year.<br />4. 1 free lotion sample in year.<br />5. Notification on all new products.</p>', 1, '2021-11-03 00:32:19', '2021-11-03 00:32:19'),
(3, 'Premium', '1000', '15', '<p>Features<br />1. 10% discount on all products.<br />2. 2 free Soap samples in a year.<br />3. 1 free Hair Oil sample in a year.<br />4. 1 free lotion sample in year.<br />5. Notification on all new products.</p>', 1, '2021-11-03 00:32:19', '2021-11-03 00:32:19');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `products_id` bigint(20) UNSIGNED NOT NULL,
  `product_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `product_code` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `product_form` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `short_description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `long_description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `key_words` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `category_id` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sub_category_id` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tags` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `rating` int(100) DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 0 COMMENT '1-activate,0-de-activate',
  `size` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `price` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `special_price` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `quantity` int(100) DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`products_id`, `product_name`, `slug`, `product_code`, `product_form`, `short_description`, `long_description`, `key_words`, `meta_description`, `category_id`, `sub_category_id`, `tags`, `rating`, `status`, `size`, `price`, `special_price`, `quantity`, `updated_at`, `created_at`) VALUES
(2, 'Tata Sampann Fine Besan, 1 Kg', 'jbCwuCBntU', '4567', 'Powder', 'Goodness Intact: Tata Sampann Fine Besan is made from 1000% unpolished Chana dal for an all-natural, authentic taste', '<ul>\r\n<li>Goodness Intact: Tata Sampann Fine Besan is made from 100% unpolished Chana dal for an all-natural, authentic taste&nbsp;</li>\r\n<li>Premium Quality: Ensures that besan is pure, uniform and of premium quality</li>\r\n<li>Delicious Recipes: Prepare your favourite recipes such as Dhokla, Kadhi, Fafda, Sev and other namkeens&nbsp;</li>\r\n<li>Tata Sampann Fine Besan is rich in protein</li>\r\n<li>Commonly Searched Topics: chana dal besan, fine besan, besan, besan chillas, Tata Sampann Besan, Tata Sampann Fine Besan, besan chilla</li>\r\n</ul>\r\n<p>Tata Sampann Fine Besan is all you need in the kitchen to enjoy an all-natural, authentic taste of 100% unpolished chana dal in all your favourite recipes. This besan lets you indulge in dishes like dhokla, kadhi, fafda, sev and other namkeens without any compromise.</p>\r\n<p>Tata Sampann Fine Besan undergoes a 5 step purity process to ensure that besan in every packet you buy is uniform and of premium quality. Karo Goodness ki Shuruaat!<br />Storage Instructions: Store in a cool and dry place, do not purchase if the pack is open or tampered or punctured.</p>', 'Tata Sampann , fine Besan', 'Tata Sampann Fine Besan, 1 Kg', '2', NULL, NULL, NULL, 1, '1kg', '80', '75', 10, '2022-01-24 23:57:42', '2021-11-02 04:52:31'),
(3, 'Tata Sampann Toor Dal / Arhar Dal, 5 Kg, 500 g', '8duVHvod9C', '12345', 'Solid', 'A staple in the Indian diet, toor dal is used to prepare sambar, dal tadka, the Maharashtrian varan and more. Tata Sampann’s Toor Dal can be enjoyed well with rotis or rice.', '<ul>\r\n<li style=\"font-weight: 400;\"><span style=\"font-weight: 400;\">Protein rich</span></li>\r\n<li style=\"font-weight: 400;\"><span style=\"font-weight: 400;\">Unpolished grains</span></li>\r\n</ul>\r\n<p><span style=\"font-weight: 400;\">A staple in the Indian diet, toor dal is used to prepare sambar, dal tadka, the Maharashtrian varan and more. Tata Sampann&rsquo;s Toor Dal can be enjoyed well with rotis or rice.</span></p>\r\n<p><span style=\"font-weight: 400;\">Toor Dal is one of India\'s favourite dals. Whether it is the famous North Indian Dal Tadka, Lucknow&rsquo;s popular Dal Gosht, irresistible Gujarati Khichdi and even a South Indian Sambar, Toor dal is used across the country because of its aroma, taste and quick cooking.&nbsp;</span></p>\r\n<p><span style=\"font-weight: 400;\">Known to be one of the best natural sources of protein, Tata Sampann Toor Dal is unpolished, i.e. it does not undergo any artificial polishing with water, oil or leather, thereby retaining its goodness and protein content. The 5-Step Purity process ensures that Tata Sampann Toor Dal grains are uniform in appearance and clean.</span></p>', 'Tata Sampann Toor Dal / Arhar Dal,', 'Tata Sampann Toor Dal / Arhar Dal, 500g', '2', NULL, NULL, NULL, 1, '500g', '40', NULL, 10, '2022-01-25 00:00:07', '2021-11-02 23:30:28'),
(4, 'Tata Sampann Turmeric Powder, 200 g', 'Kf7joyg0si', '12345', 'Powder', 'Highly Aromatic Turmeric: Enjoy the rich taste of Tata Sampann Turmeric Powder in all your favourite dishes', '<ul>\r\n<li style=\"font-weight: 400;\"><span style=\"font-weight: 400;\">Highly Aromatic Turmeric: Enjoy the rich taste of Tata Sampann Turmeric Powder in all your favourite dishes</span></li>\r\n<li style=\"font-weight: 400;\"><span style=\"font-weight: 400;\">3% Curcumin: Every pack carries the promise of an active ingredient called Curcumin which is known to act as an antioxidant</span></li>\r\n<li style=\"font-weight: 400;\"><span style=\"font-weight: 400;\">Also Try: Tata Sampann Red Chilli Powder, Tata Sampann Coriander Powder and Tata Sampann Kasuri Methi</span></li>\r\n</ul>\r\n<p><span style=\"font-weight: 400;\">Tata Sampann&rsquo;s range of spices are crafted to satisfy your taste buds.</span><span style=\"font-weight: 400;\"><br /></span><span style=\"font-weight: 400;\">Made from whole spices that contain natural oils, Haldi has an active ingredient called Curcumin which is known to act as an antioxidant. This Turmeric Powder can be teamed up with pulao, greenies, vegetable soup or smoothies - the choice is yours!</span></p>\r\n<p><span style=\"font-weight: 400;\">Storage Instructions: Store in a cool and dry place.</span></p>', 'Tata Sampann Turmeric Powder', 'Tata Sampann Turmeric Powder', '1', NULL, NULL, NULL, 1, '250g', '62', '56', 10, '2022-01-25 00:00:29', '2022-01-24 02:57:03'),
(5, 'Tata Salt Lite Sprinkler, 100 g', 'kbI6AMDZKJ', '1234', 'Powder', 'Sprinklers are fitted with a rotating sprinkler and the plastic cap that keeps out any dampness', '<ul>\r\n<li style=\"font-weight: 400;\"><span style=\"font-weight: 400;\">Easy to use</span></li>\r\n<li style=\"font-weight: 400;\"><span style=\"font-weight: 400;\">Convenient and high on hygiene</span></li>\r\n<li style=\"font-weight: 400;\"><span style=\"font-weight: 400;\">Country of Origin: India</span></li>\r\n</ul>\r\n<p><span style=\"font-weight: 400;\">Sprinklers are fitted with a rotating sprinkler and the plastic cap that keeps out any dampness keeping the salt dry. Keep the salt sprinkler on your dining table, kitchen cabinet, snack bar, etc and sprinkle the goodness of Tata Salt on salads, soups, eggs, snacks, etc or use it in your daily cooking.</span></p>\r\n<p><span style=\"font-weight: 400;\">*To be consumed under medical supervision, not to be used by patients prone to or suffering from Hyperkalemia.*</span></p>', 'Tata Salt Lite, salt, tata sampurn', 'Tata Salt Lite Sprinkler, 100 g', '1', NULL, NULL, NULL, 1, '100g', '32', NULL, 100, '2022-01-25 00:01:07', '2022-01-24 07:50:07');

-- --------------------------------------------------------

--
-- Table structure for table `product_attributes`
--

CREATE TABLE `product_attributes` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `products_id` int(11) NOT NULL,
  `product_size` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `product_color` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `price` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `special_price` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `quantity` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '1',
  `multiple_attribute` int(11) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `product_attributes`
--

INSERT INTO `product_attributes` (`id`, `products_id`, `product_size`, `product_color`, `price`, `special_price`, `quantity`, `status`, `multiple_attribute`, `created_at`, `updated_at`) VALUES
(1, 2, '5 inch', 'grey', '110', NULL, '20', '1', 1, '2021-11-02 05:40:35', '2021-11-02 05:47:18'),
(2, 3, '5 inch', 'grey', '520', NULL, '20', '1', 1, '2021-11-02 05:40:35', '2021-11-02 05:47:18');

-- --------------------------------------------------------

--
-- Table structure for table `product_images`
--

CREATE TABLE `product_images` (
  `product_images_id` bigint(20) UNSIGNED NOT NULL,
  `products_id` int(11) NOT NULL,
  `product_image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` tinyint(4) NOT NULL DEFAULT 1 COMMENT '2-main-image,1-sub-image',
  `status` int(20) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `product_images`
--

INSERT INTO `product_images` (`product_images_id`, `products_id`, `product_image`, `type`, `status`, `created_at`, `updated_at`) VALUES
(1, 1, 'images/product/product_main_image1635837698.png', 2, 1, '2021-11-02 01:51:38', '2021-11-02 01:51:38'),
(2, 2, 'images/product/product_main_image1643018850.jpeg', 2, 1, '2021-11-02 04:52:31', '2022-01-24 04:37:30'),
(4, 3, 'images/product/product_main_image1643011291.jpeg', 2, 1, '2021-11-02 23:30:28', '2022-01-24 02:31:31'),
(5, 4, 'images/product/product_main_image1643012823.jpeg', 2, 1, '2022-01-24 02:57:03', '2022-01-24 02:57:03'),
(7, 2, 'images/product/product_sub_image63316.png', 1, 1, '2022-01-24 04:38:04', '2022-01-24 04:38:04'),
(9, 2, 'images/product/product_sub_image91276.jpeg', 1, 1, '2022-01-24 04:41:34', '2022-01-24 04:41:34'),
(10, 5, 'images/product/product_main_image1643030407.png', 2, 1, '2022-01-24 07:50:08', '2022-01-24 07:50:08');

-- --------------------------------------------------------

--
-- Table structure for table `recipes`
--

CREATE TABLE `recipes` (
  `id` int(100) NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `category_id` int(100) DEFAULT NULL,
  `content` text DEFAULT NULL,
  `recipe_image` varchar(255) DEFAULT NULL,
  `user_id` int(100) NOT NULL,
  `status` int(20) DEFAULT 1,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `recipes`
--

INSERT INTO `recipes` (`id`, `title`, `category_id`, `content`, `recipe_image`, `user_id`, `status`, `created_at`, `updated_at`) VALUES
(1, 'pav bhaji recipe | easy mumbai style pav bhaji recipe', 2, '<h1 class=\"entry-title\"><span class=\"example1\">pav bhaji recipe | easy mumbai style pav bhaji recipe</span></h1>\r\n<p><span class=\"example1\"><strong>pav bhaji recipe | easy mumbai style pav bhaji recipe</strong>&nbsp;with detailed photo and video recipe. a world-famous fast food dish or perhaps the king of the street food from the western state of maharashtra. the recipe is an amalgamation of vegetables spiced with a unique blend of spices known as pav bhaji masala and served with soft bread roll aka pav.</span></p>\r\n<ul class=\"wprm-recipe-ingredients\">\r\n<li class=\"wprm-recipe-ingredient\"><span class=\"wprm-recipe-ingredient-amount\"><span class=\"wprm-adjustable\">1</span></span>&nbsp;<span class=\"wprm-recipe-ingredient-unit\">tbsp</span>&nbsp;<span class=\"wprm-recipe-ingredient-name\">+ 1 tbsp butter</span></li>\r\n<li class=\"wprm-recipe-ingredient\"><span class=\"wprm-checkbox-container\"><input id=\"wprm-checkbox-1\" class=\"wprm-checkbox\" type=\"checkbox\" aria-label=\"3 to mato (finely chopped)\" /><label class=\"wprm-checkbox-label\" for=\"wprm-checkbox-1\"><span class=\"sr-only screen-reader-text wprm-screen-reader-text\">▢</span></label></span><span class=\"wprm-recipe-ingredient-amount\"><span class=\"wprm-adjustable\">3</span>&nbsp;to</span>&nbsp;<span class=\"wprm-recipe-ingredient-name\">mato</span>&nbsp;<span class=\"wprm-recipe-ingredient-notes wprm-recipe-ingredient-notes-faded\">(finely chopped)</span></li>\r\n<li class=\"wprm-recipe-ingredient\"><span class=\"wprm-checkbox-container\"><input id=\"wprm-checkbox-2\" class=\"wprm-checkbox\" type=\"checkbox\" aria-label=\"&frac14; cup peas / matar\" /><label class=\"wprm-checkbox-label\" for=\"wprm-checkbox-2\"><span class=\"sr-only screen-reader-text wprm-screen-reader-text\">▢</span></label></span><span class=\"wprm-recipe-ingredient-amount\"><span class=\"wprm-adjustable\">&frac14;</span></span>&nbsp;<span class=\"wprm-recipe-ingredient-unit\">cup</span>&nbsp;<span class=\"wprm-recipe-ingredient-name\">peas / matar</span></li>\r\n<li class=\"wprm-recipe-ingredient\"><span class=\"wprm-checkbox-container\"><input id=\"wprm-checkbox-3\" class=\"wprm-checkbox\" type=\"checkbox\" aria-label=\"&frac12; capsicum (finely chopped)\" /><label class=\"wprm-checkbox-label\" for=\"wprm-checkbox-3\"><span class=\"sr-only screen-reader-text wprm-screen-reader-text\">▢</span></label></span><span class=\"wprm-recipe-ingredient-amount\"><span class=\"wprm-adjustable\">&frac12;</span></span>&nbsp;<span class=\"wprm-recipe-ingredient-name\">capsicum</span>&nbsp;<span class=\"wprm-recipe-ingredient-notes wprm-recipe-ingredient-notes-faded\">(finely chopped)</span></li>\r\n<li class=\"wprm-recipe-ingredient\"><span class=\"wprm-checkbox-container\"><input id=\"wprm-checkbox-4\" class=\"wprm-checkbox\" type=\"checkbox\" aria-label=\"2 potato (boiled &amp; mashed)\" /><label class=\"wprm-checkbox-label\" for=\"wprm-checkbox-4\"><span class=\"sr-only screen-reader-text wprm-screen-reader-text\">▢</span></label></span><span class=\"wprm-recipe-ingredient-amount\"><span class=\"wprm-adjustable\">2</span></span>&nbsp;<span class=\"wprm-recipe-ingredient-name\">potato</span>&nbsp;<span class=\"wprm-recipe-ingredient-notes wprm-recipe-ingredient-notes-faded\">(boiled &amp; mashed)</span></li>\r\n<li class=\"wprm-recipe-ingredient\"><span class=\"wprm-checkbox-container\"><input id=\"wprm-checkbox-5\" class=\"wprm-checkbox\" type=\"checkbox\" aria-label=\"1 tsp salt\" /><label class=\"wprm-checkbox-label\" for=\"wprm-checkbox-5\"><span class=\"sr-only screen-reader-text wprm-screen-reader-text\">▢</span></label></span><span class=\"wprm-recipe-ingredient-amount\"><span class=\"wprm-adjustable\">1</span></span>&nbsp;<span class=\"wprm-recipe-ingredient-unit\">tsp</span>&nbsp;<span class=\"wprm-recipe-ingredient-name\">salt</span></li>\r\n<li class=\"wprm-recipe-ingredient\"><span class=\"wprm-checkbox-container\"><input id=\"wprm-checkbox-6\" class=\"wprm-checkbox\" type=\"checkbox\" aria-label=\"1 tsp + &frac14; tsp kashmiri red chilli powder / lal mirch powder\" /><label class=\"wprm-checkbox-label\" for=\"wprm-checkbox-6\"><span class=\"sr-only screen-reader-text wprm-screen-reader-text\">▢</span></label></span><span class=\"wprm-recipe-ingredient-amount\"><span class=\"wprm-adjustable\">1</span></span>&nbsp;<span class=\"wprm-recipe-ingredient-unit\">tsp</span>&nbsp;<span class=\"wprm-recipe-ingredient-name\">+ &frac14; tsp kashmiri red chilli powder / lal mirch powder</span></li>\r\n<li class=\"wprm-recipe-ingredient\"><span class=\"wprm-checkbox-container\"><input id=\"wprm-checkbox-7\" class=\"wprm-checkbox\" type=\"checkbox\" aria-label=\"&frac14; tsp turmeric / haldi\" /><label class=\"wprm-checkbox-label\" for=\"wprm-checkbox-7\"><span class=\"sr-only screen-reader-text wprm-screen-reader-text\">▢</span></label></span><span class=\"wprm-recipe-ingredient-amount\"><span class=\"wprm-adjustable\">&frac14;</span></span>&nbsp;<span class=\"wprm-recipe-ingredient-unit\">tsp</span>&nbsp;<span class=\"wprm-recipe-ingredient-name\">turmeric / haldi</span></li>\r\n<li class=\"wprm-recipe-ingredient\"><span class=\"wprm-checkbox-container\"><input id=\"wprm-checkbox-8\" class=\"wprm-checkbox\" type=\"checkbox\" aria-label=\"1 tsp + &frac12; tsp pav bhaji masala\" /><label class=\"wprm-checkbox-label\" for=\"wprm-checkbox-8\"><span class=\"sr-only screen-reader-text wprm-screen-reader-text\">▢</span></label></span><span class=\"wprm-recipe-ingredient-amount\"><span class=\"wprm-adjustable\">1</span></span>&nbsp;<span class=\"wprm-recipe-ingredient-unit\">tsp</span>&nbsp;<span class=\"wprm-recipe-ingredient-name\">+ &frac12; tsp pav bhaji masala</span></li>\r\n<li class=\"wprm-recipe-ingredient\"><span class=\"wprm-checkbox-container\"><input id=\"wprm-checkbox-9\" class=\"wprm-checkbox\" type=\"checkbox\" aria-label=\"1 tsp + 1 tsp kasuri methi / dry fenugreek leaves\" /><label class=\"wprm-checkbox-label\" for=\"wprm-checkbox-9\"><span class=\"sr-only screen-reader-text wprm-screen-reader-text\">▢</span></label></span><span class=\"wprm-recipe-ingredient-amount\"><span class=\"wprm-adjustable\">1</span></span>&nbsp;<span class=\"wprm-recipe-ingredient-unit\">tsp</span>&nbsp;<span class=\"wprm-recipe-ingredient-name\">+ 1 tsp kasuri methi / dry fenugreek leaves</span></li>\r\n<li class=\"wprm-recipe-ingredient\"><span class=\"wprm-checkbox-container\"><input id=\"wprm-checkbox-10\" class=\"wprm-checkbox\" type=\"checkbox\" aria-label=\"2 tbsp + 1 tbsp coriander leaves (finely chop ped)\" /><label class=\"wprm-checkbox-label\" for=\"wprm-checkbox-10\"><span class=\"sr-only screen-reader-text wprm-screen-reader-text\">▢</span></label></span><span class=\"wprm-recipe-ingredient-amount\"><span class=\"wprm-adjustable\">2</span></span>&nbsp;<span class=\"wprm-recipe-ingredient-unit\">tbsp</span>&nbsp;<span class=\"wprm-recipe-ingredient-name\">+ 1 tbsp coriander leaves</span>&nbsp;<span class=\"wprm-recipe-ingredient-notes wprm-recipe-ingredient-notes-faded\">(finely chop ped)</span></li>\r\n<li class=\"wprm-recipe-ingredient\"><span class=\"wprm-checkbox-container\"><input id=\"wprm-checkbox-11\" class=\"wprm-checkbox\" type=\"checkbox\" aria-label=\"1 tsp ginger garlic paste\" /><label class=\"wprm-checkbox-label\" for=\"wprm-checkbox-11\"><span class=\"sr-only screen-reader-text wprm-screen-reader-text\">▢</span></label></span><span class=\"wprm-recipe-ingredient-amount\"><span class=\"wprm-adjustable\">1</span></span>&nbsp;<span class=\"wprm-recipe-ingredient-unit\">tsp</span>&nbsp;<span class=\"wprm-recipe-ingredient-name\">ginger garlic paste</span></li>\r\n<li class=\"wprm-recipe-ingredient\"><span class=\"wprm-checkbox-container\"><input id=\"wprm-checkbox-12\" class=\"wprm-checkbox\" type=\"checkbox\" aria-label=\"1 onion (finely chopped)\" /><label class=\"wprm-checkbox-label\" for=\"wprm-checkbox-12\"><span class=\"sr-only screen-reader-text wprm-screen-reader-text\">▢</span></label></span><span class=\"wprm-recipe-ingredient-amount\"><span class=\"wprm-adjustable\">1</span></span>&nbsp;<span class=\"wprm-recipe-ingredient-name\">onion</span>&nbsp;<span class=\"wprm-recipe-ingredient-notes wprm-recipe-ingredient-notes-faded\">(finely chopped)</span></li>\r\n<li class=\"wprm-recipe-ingredient\"><span class=\"wprm-checkbox-container\"><input id=\"wprm-checkbox-13\" class=\"wprm-checkbox\" type=\"checkbox\" aria-label=\"&frac12; lemon juice\" /><label class=\"wprm-checkbox-label\" for=\"wprm-checkbox-13\"><span class=\"sr-only screen-reader-text wprm-screen-reader-text\">▢</span></label></span><span class=\"wprm-recipe-ingredient-amount\"><span class=\"wprm-adjustable\">&frac12;</span></span>&nbsp;<span class=\"wprm-recipe-ingredient-name\">lemon juice</span></li>\r\n<li class=\"wprm-recipe-ingredient\"><span class=\"wprm-checkbox-container\"><input id=\"wprm-checkbox-14\" class=\"wprm-checkbox\" type=\"checkbox\" aria-label=\"3 drops red food colour (optional)\" /><label class=\"wprm-checkbox-label\" for=\"wprm-checkbox-14\"><span class=\"sr-only screen-reader-text wprm-screen-reader-text\">▢</span></label></span><span class=\"wprm-recipe-ingredient-amount\"><span class=\"wprm-adjustable\">3</span></span>&nbsp;<span class=\"wprm-recipe-ingredient-name\">drops red food colour</span>&nbsp;<span class=\"wprm-recipe-ingredient-notes wprm-recipe-ingredient-notes-faded\">(optional)</span></li>\r\n<li class=\"wprm-recipe-ingredient\"><span class=\"wprm-checkbox-container\"><input id=\"wprm-checkbox-15\" class=\"wprm-checkbox\" type=\"checkbox\" aria-label=\"water to adjust consistency\" /><label class=\"wprm-checkbox-label\" for=\"wprm-checkbox-15\"><span class=\"sr-only screen-reader-text wprm-screen-reader-text\">▢</span></label></span><span class=\"wprm-recipe-ingredient-name\">water to adjust consistency</span></li>\r\n</ul>\r\n<ul class=\"wprm-recipe-ingredients\">\r\n<li class=\"wprm-recipe-ingredient\"><span class=\"wprm-recipe-ingredient-amount\"><span class=\"wprm-adjustable\">8</span></span>&nbsp;<span class=\"wprm-recipe-ingredient-name\">pav / bread roll</span></li>\r\n<li class=\"wprm-recipe-ingredient\"><span class=\"wprm-checkbox-container\"><input id=\"wprm-checkbox-17\" class=\"wprm-checkbox\" type=\"checkbox\" aria-label=\"4 tsp butter\" /><label class=\"wprm-checkbox-label\" for=\"wprm-checkbox-17\"><span class=\"sr-only screen-reader-text wprm-screen-reader-text\">▢</span></label></span><span class=\"wprm-recipe-ingredient-amount\"><span class=\"wprm-adjustable\">4</span></span>&nbsp;<span class=\"wprm-recipe-ingredient-unit\">tsp</span>&nbsp;<span class=\"wprm-recipe-ingredient-name\">butter</span></li>\r\n<li class=\"wprm-recipe-ingredient\"><span class=\"wprm-checkbox-container\"><input id=\"wprm-checkbox-18\" class=\"wprm-checkbox\" type=\"checkbox\" aria-label=\"&frac12; tsp kashmiri red chilli powder / lal mirch powder\" /><label class=\"wprm-checkbox-label\" for=\"wprm-checkbox-18\"><span class=\"sr-only screen-reader-text wprm-screen-reader-text\">▢</span></label></span><span class=\"wprm-recipe-ingredient-amount\"><span class=\"wprm-adjustable\">&frac12;</span></span>&nbsp;<span class=\"wprm-recipe-ingredient-unit\">tsp</span>&nbsp;<span class=\"wprm-recipe-ingredient-name\">kashmiri red chilli powder / lal mirch powder</span></li>\r\n<li class=\"wprm-recipe-ingredient\"><span class=\"wprm-checkbox-container\"><input id=\"wprm-checkbox-19\" class=\"wprm-checkbox\" type=\"checkbox\" aria-label=\"&frac12; tsp pav bhaji masala\" /><label class=\"wprm-checkbox-label\" for=\"wprm-checkbox-19\"><span class=\"sr-only screen-reader-text wprm-screen-reader-text\">▢</span></label></span><span class=\"wprm-recipe-ingredient-amount\"><span class=\"wprm-adjustable\">&frac12;</span></span>&nbsp;<span class=\"wprm-recipe-ingredient-unit\">tsp</span>&nbsp;<span class=\"wprm-recipe-ingredient-name\"><a class=\"wprm-recipe-ingredient-link\" href=\"https://hebbarskitchen.com/crispy-dosa-batter-recipe-mixie-blender/\" target=\"_blank\" rel=\"noopener\">pav bhaji masala</a></span></li>\r\n<li class=\"wprm-recipe-ingredient\"><span class=\"wprm-checkbox-container\"><input id=\"wprm-checkbox-20\" class=\"wprm-checkbox\" type=\"checkbox\" aria-label=\"4 tsp coriander leaves (finely chopped)\" /><label class=\"wprm-checkbox-label\" for=\"wprm-checkbox-20\"><span class=\"sr-only screen-reader-text wprm-screen-reader-text\">▢</span></label></span><span class=\"wprm-recipe-ingredient-amount\"><span class=\"wprm-adjustable\">4</span></span>&nbsp;<span class=\"wprm-recipe-ingredient-unit\">tsp</span>&nbsp;<span class=\"wprm-recipe-ingredient-name\">coriander leaves</span>&nbsp;<span class=\"wprm-recipe-ingredient-notes wprm-recipe-ingredient-notes-faded\">(finely chopped)</span></li>\r\n</ul>\r\n<h3 class=\"wprm-recipe-header wprm-recipe-instructions-header wprm-block-text-uppercase wprm-align-left wprm-header-decoration-line wprm-header-has-actions\">INSTRUCTIONS</h3>\r\n<ul class=\"wprm-recipe-instructions\">\r\n<li id=\"wprm-recipe-37294-step-0-0\" class=\"wprm-recipe-instruction\">\r\n<div class=\"wprm-recipe-instruction-text\">firstly, in a large kadai heat 1 tbsp butter and add vegetables. cook and mash well.</div>\r\n</li>\r\n<li id=\"wprm-recipe-37294-step-0-1\" class=\"wprm-recipe-instruction\">\r\n<div class=\"wprm-recipe-instruction-text\">now add 1 tsp chilli powder, &frac14; tsp turmeric, 1 tsp pav bhaji masala, 1 tsp kasuri methi and 2 tbsp coriander leaves.</div>\r\n</li>\r\n<li id=\"wprm-recipe-37294-step-0-2\" class=\"wprm-recipe-instruction\">\r\n<div class=\"wprm-recipe-instruction-text\">heat a tbsp of butter and add &frac14; tsp chilli powder, &frac12; tsp pav bhaji masala, 1 tsp kasuri methi.</div>\r\n</li>\r\n<li id=\"wprm-recipe-37294-step-0-3\" class=\"wprm-recipe-instruction\">\r\n<div class=\"wprm-recipe-instruction-text\">also add 1 tbsp coriander leaves, 1 tsp ginger garlic paste, 1 onion and &frac12; lemon juice. saute well.</div>\r\n</li>\r\n<li id=\"wprm-recipe-37294-step-0-4\" class=\"wprm-recipe-instruction\">\r\n<div class=\"wprm-recipe-instruction-text\">now add 3 drops of red food colour and mix well.</div>\r\n</li>\r\n<li id=\"wprm-recipe-37294-step-0-5\" class=\"wprm-recipe-instruction\">\r\n<div class=\"wprm-recipe-instruction-text\">boil and mash for 5 minutes adjusting consistency.</div>\r\n</li>\r\n<li id=\"wprm-recipe-37294-step-0-6\" class=\"wprm-recipe-instruction\">\r\n<div class=\"wprm-recipe-instruction-text\">finally, serve pav and bhaji as pav bhaji.</div>\r\n</li>\r\n</ul>', 'images/recipes/recipe_image1644047655.jpeg', 1, 1, '2022-02-05 01:45:56', '2022-02-05 02:24:15'),
(3, 'paneer pakora recipe | paneer pakoda | how to make crispy paneer pakora', 1, '<p><strong>paneer pakora recipe | paneer pakoda | how to make crispy paneer pakora</strong>&nbsp;with detailed photo and video recipe. a simple snack recipe prepared with spiced paneer cubes, coated with besan or chickpea flour batter. it is one of the popular pakora variations with moist and spice coated paneer inside and crisp chickpea coating outside. it can be ideal party starter or evening snack served with either&nbsp;<a title=\"green chutney recipe | hari chutney | green chutney for chaat\" href=\"https://hebbarskitchen.com/green-chutney-recipe-hari-chutney/\" target=\"_blank\" rel=\"nofollow noopener\">green chutney</a>&nbsp;or&nbsp;<a title=\"tomato sauce recipe | tomato ketchup recipe | homemade tomato sauce\" href=\"https://hebbarskitchen.com/tomato-sauce-recipe-tomato-ketchup/\" target=\"_blank\" rel=\"nofollow noopener\">tomato sauce</a>.</p>\r\n<p><strong>paneer pakora recipe | paneer pakoda | how to make crispy paneer pakora</strong>&nbsp;with step by step photo and video recipe. pakora recipes are typically made with either slice of vegetables or with a combination of vegetables. however, in this recipe, moist paneer cubes are used in the place of vegetables to prepare the crisp pakora. the deep fried crisp paneer pakoda&rsquo;s not only make an ideal snack but can also be used as patties to stuff between sandwich and burgers.</p>\r\n<p>pakora recipes are very common snack recipes prepared in almost every indian households. perhaps almost all vegetables are used to prepare this delicacy and served as snacks, side dish and even used in curries or sabzis. my personal favourite has always been&nbsp;<strong>paneer pakora recipe</strong>&nbsp;and nothing can beat it&rsquo;s crisp and moist taste combination. traditionally the paneer pakoda recipe was limited to households in north india. but after onboarding this simple recipe by the street food vendors, it has become significantly popular among urban youths. moreover, there are several variations to these pakoras, especially with its coating. after coating it with besan flour, it can be rolled on top crushed oats, boondi, breadcrumbs to have more crisp and rough surface.</p>\r\n<p>&nbsp;</p>\r\n<p>INGREDIENTS</p>\r\n<div class=\"wprm-recipe-ingredient-group\">\r\n<h4 class=\"wprm-recipe-group-name wprm-recipe-ingredient-group-name wprm-block-text-faded\">for marination:</h4>\r\n<ul class=\"wprm-recipe-ingredients\">\r\n<li class=\"wprm-recipe-ingredient\"><span class=\"wprm-checkbox-container\"><input id=\"wprm-checkbox-0\" class=\"wprm-checkbox\" type=\"checkbox\" aria-label=\"1 tsp ginger garlic paste\" /><label class=\"wprm-checkbox-label\" for=\"wprm-checkbox-0\"><span class=\"sr-only screen-reader-text wprm-screen-reader-text\">▢</span></label></span><span class=\"wprm-recipe-ingredient-amount\">1</span>&nbsp;<span class=\"wprm-recipe-ingredient-unit\">tsp</span>&nbsp;<span class=\"wprm-recipe-ingredient-name\">ginger garlic paste</span></li>\r\n<li class=\"wprm-recipe-ingredient\"><span class=\"wprm-checkbox-container\"><input id=\"wprm-checkbox-1\" class=\"wprm-checkbox\" type=\"checkbox\" aria-label=\"&frac12; tsp kashmiri red chilli powder / lal mirch powder\" /><label class=\"wprm-checkbox-label\" for=\"wprm-checkbox-1\"><span class=\"sr-only screen-reader-text wprm-screen-reader-text\">▢</span></label></span><span class=\"wprm-recipe-ingredient-amount\">&frac12;</span>&nbsp;<span class=\"wprm-recipe-ingredient-unit\">tsp</span>&nbsp;<span class=\"wprm-recipe-ingredient-name\">kashmiri red chilli powder / lal mirch powder</span></li>\r\n<li class=\"wprm-recipe-ingredient\"><span class=\"wprm-checkbox-container\"><input id=\"wprm-checkbox-2\" class=\"wprm-checkbox\" type=\"checkbox\" aria-label=\"&frac34; tsp chaat masala\" /><label class=\"wprm-checkbox-label\" for=\"wprm-checkbox-2\"><span class=\"sr-only screen-reader-text wprm-screen-reader-text\">▢</span></label></span><span class=\"wprm-recipe-ingredient-amount\">&frac34;</span>&nbsp;<span class=\"wprm-recipe-ingredient-unit\">tsp</span>&nbsp;<span class=\"wprm-recipe-ingredient-name\">chaat masala</span></li>\r\n<li class=\"wprm-recipe-ingredient\"><span class=\"wprm-checkbox-container\"><input id=\"wprm-checkbox-3\" class=\"wprm-checkbox\" type=\"checkbox\" aria-label=\"1 tsp&nbsp; kasuri methi / dry fenugreek leaves\" /><label class=\"wprm-checkbox-label\" for=\"wprm-checkbox-3\"><span class=\"sr-only screen-reader-text wprm-screen-reader-text\">▢</span></label></span><span class=\"wprm-recipe-ingredient-amount\">1</span>&nbsp;<span class=\"wprm-recipe-ingredient-unit\">tsp&nbsp;</span>&nbsp;<span class=\"wprm-recipe-ingredient-name\">kasuri methi / dry fenugreek leaves</span></li>\r\n<li class=\"wprm-recipe-ingredient\"><span class=\"wprm-checkbox-container\"><input id=\"wprm-checkbox-4\" class=\"wprm-checkbox\" type=\"checkbox\" aria-label=\"&frac14; tsp salt\" /><label class=\"wprm-checkbox-label\" for=\"wprm-checkbox-4\"><span class=\"sr-only screen-reader-text wprm-screen-reader-text\">▢</span></label></span><span class=\"wprm-recipe-ingredient-amount\">&frac14;</span>&nbsp;<span class=\"wprm-recipe-ingredient-unit\">tsp</span>&nbsp;<span class=\"wprm-recipe-ingredient-name\">salt</span></li>\r\n<li class=\"wprm-recipe-ingredient\"><span class=\"wprm-checkbox-container\"><input id=\"wprm-checkbox-5\" class=\"wprm-checkbox\" type=\"checkbox\" aria-label=\"9 cubes paneer / cottage cheese (cubed)\" /><label class=\"wprm-checkbox-label\" for=\"wprm-checkbox-5\"><span class=\"sr-only screen-reader-text wprm-screen-reader-text\">▢</span></label></span><span class=\"wprm-recipe-ingredient-amount\">9</span>&nbsp;<span class=\"wprm-recipe-ingredient-name\"><a class=\"wprm-recipe-ingredient-link\" href=\"https://hebbarskitchen.com/make-paneer-home-prepare-paneer-milk/\" target=\"_blank\" rel=\"noopener\">cubes paneer / cottage cheese</a></span>&nbsp;<span class=\"wprm-recipe-ingredient-notes wprm-recipe-ingredient-notes-faded\">(cubed)</span></li>\r\n</ul>\r\n</div>\r\n<div class=\"wprm-recipe-ingredient-group\">\r\n<h4 class=\"wprm-recipe-group-name wprm-recipe-ingredient-group-name wprm-block-text-faded\">for besan batter:</h4>\r\n<ul class=\"wprm-recipe-ingredients\">\r\n<li class=\"wprm-recipe-ingredient\"><span class=\"wprm-checkbox-container\"><input id=\"wprm-checkbox-6\" class=\"wprm-checkbox\" type=\"checkbox\" aria-label=\"&frac34; cup gram flour / besan\" /><label class=\"wprm-checkbox-label\" for=\"wprm-checkbox-6\"><span class=\"sr-only screen-reader-text wprm-screen-reader-text\">▢</span></label></span><span class=\"wprm-recipe-ingredient-amount\">&frac34;</span>&nbsp;<span class=\"wprm-recipe-ingredient-unit\">cup</span>&nbsp;<span class=\"wprm-recipe-ingredient-name\">gram flour / besan</span></li>\r\n<li class=\"wprm-recipe-ingredient\"><span class=\"wprm-checkbox-container\"><input id=\"wprm-checkbox-7\" class=\"wprm-checkbox\" type=\"checkbox\" aria-label=\"2 tbsp rice flour\" /><label class=\"wprm-checkbox-label\" for=\"wprm-checkbox-7\"><span class=\"sr-only screen-reader-text wprm-screen-reader-text\">▢</span></label></span><span class=\"wprm-recipe-ingredient-amount\">2</span>&nbsp;<span class=\"wprm-recipe-ingredient-unit\">tbsp</span>&nbsp;<span class=\"wprm-recipe-ingredient-name\">rice flour</span></li>\r\n<li class=\"wprm-recipe-ingredient\"><span class=\"wprm-checkbox-container\"><input id=\"wprm-checkbox-8\" class=\"wprm-checkbox\" type=\"checkbox\" aria-label=\"&frac14; tsp turmeric / haldi\" /><label class=\"wprm-checkbox-label\" for=\"wprm-checkbox-8\"><span class=\"sr-only screen-reader-text wprm-screen-reader-text\">▢</span></label></span><span class=\"wprm-recipe-ingredient-amount\">&frac14;</span>&nbsp;<span class=\"wprm-recipe-ingredient-unit\">tsp</span>&nbsp;<span class=\"wprm-recipe-ingredient-name\">turmeric / haldi</span></li>\r\n<li class=\"wprm-recipe-ingredient\"><span class=\"wprm-checkbox-container\"><input id=\"wprm-checkbox-9\" class=\"wprm-checkbox\" type=\"checkbox\" aria-label=\"&frac14; tsp kashmiri red chilli powder / lal mirch powder\" /><label class=\"wprm-checkbox-label\" for=\"wprm-checkbox-9\"><span class=\"sr-only screen-reader-text wprm-screen-reader-text\">▢</span></label></span><span class=\"wprm-recipe-ingredient-amount\">&frac14;</span>&nbsp;<span class=\"wprm-recipe-ingredient-unit\">tsp</span>&nbsp;<span class=\"wprm-recipe-ingredient-name\">kashmiri red chilli powder / lal mirch powder</span></li>\r\n<li class=\"wprm-recipe-ingredient\"><span class=\"wprm-checkbox-container\"><input id=\"wprm-checkbox-10\" class=\"wprm-checkbox\" type=\"checkbox\" aria-label=\"&frac14; tsp hing&nbsp;/ asafoetida\" /><label class=\"wprm-checkbox-label\" for=\"wprm-checkbox-10\"><span class=\"sr-only screen-reader-text wprm-screen-reader-text\">▢</span></label></span><span class=\"wprm-recipe-ingredient-amount\">&frac14;</span>&nbsp;<span class=\"wprm-recipe-ingredient-unit\">tsp</span>&nbsp;<span class=\"wprm-recipe-ingredient-name\">hing&nbsp;/ asafoetida</span></li>\r\n<li class=\"wprm-recipe-ingredient\"><span class=\"wprm-checkbox-container\"><input id=\"wprm-checkbox-11\" class=\"wprm-checkbox\" type=\"checkbox\" aria-label=\"&frac14; tsp chaat masala\" /><label class=\"wprm-checkbox-label\" for=\"wprm-checkbox-11\"><span class=\"sr-only screen-reader-text wprm-screen-reader-text\">▢</span></label></span><span class=\"wprm-recipe-ingredient-amount\">&frac14;</span>&nbsp;<span class=\"wprm-recipe-ingredient-unit\">tsp</span>&nbsp;<span class=\"wprm-recipe-ingredient-name\">chaat masala</span></li>\r\n<li class=\"wprm-recipe-ingredient\"><span class=\"wprm-checkbox-container\"><input id=\"wprm-checkbox-12\" class=\"wprm-checkbox\" type=\"checkbox\" aria-label=\"&frac14; tsp salt\" /><label class=\"wprm-checkbox-label\" for=\"wprm-checkbox-12\"><span class=\"sr-only screen-reader-text wprm-screen-reader-text\">▢</span></label></span><span class=\"wprm-recipe-ingredient-amount\">&frac14;</span>&nbsp;<span class=\"wprm-recipe-ingredient-unit\">tsp</span>&nbsp;<span class=\"wprm-recipe-ingredient-name\">salt</span></li>\r\n<li class=\"wprm-recipe-ingredient\"><span class=\"wprm-checkbox-container\"><input id=\"wprm-checkbox-13\" class=\"wprm-checkbox\" type=\"checkbox\" aria-label=\"&frac12; cup water\" /><label class=\"wprm-checkbox-label\" for=\"wprm-checkbox-13\"><span class=\"sr-only screen-reader-text wprm-screen-reader-text\">▢</span></label></span><span class=\"wprm-recipe-ingredient-amount\">&frac12;</span>&nbsp;<span class=\"wprm-recipe-ingredient-unit\">cup</span>&nbsp;<span class=\"wprm-recipe-ingredient-name\">water</span></li>\r\n<li class=\"wprm-recipe-ingredient\"><span class=\"wprm-checkbox-container\"><input id=\"wprm-checkbox-14\" class=\"wprm-checkbox\" type=\"checkbox\" aria-label=\"oil for frying\" /><label class=\"wprm-checkbox-label\" for=\"wprm-checkbox-14\"><span class=\"sr-only screen-reader-text wprm-screen-reader-text\">▢</span></label></span><span class=\"wprm-recipe-ingredient-name\">oil for frying</span></li>\r\n</ul>\r\n<h3 class=\"wprm-recipe-header wprm-recipe-instructions-header wprm-block-text-uppercase wprm-align-left wprm-header-decoration-line wprm-header-has-actions\">INSTRUCTIONS</h3>\r\n<ul class=\"wprm-recipe-instructions\">\r\n<li id=\"wprm-recipe-39240-step-0-0\" class=\"wprm-recipe-instruction\">\r\n<div class=\"wprm-recipe-instruction-text\">firstly, in a large mixing bowl take&nbsp;1 tsp ginger garlic paste, &frac12; tsp chilli powder, &frac34; tsp chaat masala, 1 tsp&nbsp;kasuri methi and &frac14; tsp salt.</div>\r\n</li>\r\n<li id=\"wprm-recipe-39240-step-0-1\" class=\"wprm-recipe-instruction\">\r\n<div class=\"wprm-recipe-instruction-text\">combine well forming a paste.</div>\r\n</li>\r\n<li id=\"wprm-recipe-39240-step-0-2\" class=\"wprm-recipe-instruction\">\r\n<div class=\"wprm-recipe-instruction-text\">now add&nbsp;9 cubes paneer and rub gently covering masala paste to paneer. keep aside.</div>\r\n</li>\r\n<li id=\"wprm-recipe-39240-step-0-3\" class=\"wprm-recipe-instruction\">\r\n<div class=\"wprm-recipe-instruction-text\">further, prepare besan batter by taking&nbsp;&frac34; cup besan and 2 tbsp rice flour in a mixing bowl.</div>\r\n</li>\r\n<li id=\"wprm-recipe-39240-step-0-4\" class=\"wprm-recipe-instruction\">\r\n<div class=\"wprm-recipe-instruction-text\">also add&nbsp;&frac14; tsp turmeric, &frac14; tsp chilli powder, &frac14; tsp hing, &frac14; tsp chaat masala and &frac14; tsp salt.</div>\r\n</li>\r\n<li id=\"wprm-recipe-39240-step-0-5\" class=\"wprm-recipe-instruction\">\r\n<div class=\"wprm-recipe-instruction-text\">combine all the ingredients well.</div>\r\n</li>\r\n<li id=\"wprm-recipe-39240-step-0-6\" class=\"wprm-recipe-instruction\">\r\n<div class=\"wprm-recipe-instruction-text\">add in&nbsp;&frac12; cup water and whisk smooth.</div>\r\n</li>\r\n<li id=\"wprm-recipe-39240-step-0-7\" class=\"wprm-recipe-instruction\">\r\n<div class=\"wprm-recipe-instruction-text\">also, add a pinch of baking soda and mix gently.</div>\r\n</li>\r\n<li id=\"wprm-recipe-39240-step-0-8\" class=\"wprm-recipe-instruction\">\r\n<div class=\"wprm-recipe-instruction-text\">dip the marinated paneer into prepared besan batter and coat it completely.</div>\r\n</li>\r\n<li id=\"wprm-recipe-39240-step-0-9\" class=\"wprm-recipe-instruction\">\r\n<div class=\"wprm-recipe-instruction-text\">furthermore, deep fry in hot oil&nbsp;till they turn golden brown.</div>\r\n</li>\r\n<li id=\"wprm-recipe-39240-step-0-10\" class=\"wprm-recipe-instruction\">\r\n<div class=\"wprm-recipe-instruction-text\">finally,&nbsp;paneer&nbsp;pakora recipe&nbsp;or&nbsp;paneer&nbsp;bajji&nbsp;is ready to serve.</div>\r\n</li>\r\n</ul>\r\n<p>&nbsp;</p>\r\n</div>\r\n<p>&nbsp;</p>', 'images/recipes/recipe_image1644049515.jpeg', 1, 1, '2022-02-05 02:55:15', '2022-02-05 02:55:15');

-- --------------------------------------------------------

--
-- Table structure for table `reviews`
--

CREATE TABLE `reviews` (
  `id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `product_id` int(11) DEFAULT NULL,
  `rating` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `comment` text CHARACTER SET utf8 DEFAULT NULL,
  `status` int(11) DEFAULT 1 COMMENT '1-active, 0-inactive',
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `reviews`
--

INSERT INTO `reviews` (`id`, `user_id`, `product_id`, `rating`, `comment`, `status`, `created_at`, `updated_at`) VALUES
(1, 1, 3, '4', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', 1, '2021-10-21 07:18:02', '2021-10-21 07:18:02'),
(2, 1, 3, '3', 'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English.', 1, '2021-10-21 08:13:49', '2021-10-21 08:13:49'),
(3, 3, 6, '5', 'Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage,', 1, '2021-10-21 08:18:09', '2021-10-21 08:18:09'),
(4, 4, 3, '4', 'test test', 1, '2021-12-13 02:12:53', '2021-12-13 02:12:53'),
(5, 4, 3, '4', 'demo demo', 1, '2021-12-13 02:16:48', '2021-12-13 02:16:48');

-- --------------------------------------------------------

--
-- Table structure for table `shipping_charges`
--

CREATE TABLE `shipping_charges` (
  `id` int(11) NOT NULL,
  `min` int(11) NOT NULL,
  `max` int(11) NOT NULL,
  `ship_charges` int(11) DEFAULT 0,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `shipping_charges`
--

INSERT INTO `shipping_charges` (`id`, `min`, `max`, `ship_charges`, `created_at`, `updated_at`) VALUES
(1, 0, 499, 50, '2021-11-09 05:13:55', '2021-11-09 05:13:55'),
(2, 499, 100000, 0, '2021-11-09 05:15:33', '2021-11-09 05:15:33');

-- --------------------------------------------------------

--
-- Table structure for table `social_media`
--

CREATE TABLE `social_media` (
  `id` int(100) NOT NULL,
  `social_media_name` varchar(255) DEFAULT NULL,
  `link` text DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT 1 COMMENT '1 Active 0 inactive',
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `social_media`
--

INSERT INTO `social_media` (`id`, `social_media_name`, `link`, `status`, `created_at`, `updated_at`) VALUES
(2, 'facebook', 'https://www.facebook.com/', 1, '2021-12-13 05:06:55', '2021-12-13 06:56:21'),
(3, 'instagram', 'https://www.instagram.com/', 1, '2021-12-13 05:07:52', '2021-12-13 05:07:52'),
(4, 'twitter', 'https://twitter.com/', 1, '2021-12-13 06:52:52', '2021-12-13 06:52:52');

-- --------------------------------------------------------

--
-- Table structure for table `state_list`
--

CREATE TABLE `state_list` (
  `id` int(10) UNSIGNED NOT NULL,
  `state` varchar(50) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `state_list`
--

INSERT INTO `state_list` (`id`, `state`) VALUES
(1, 'ANDAMAN AND NICOBAR ISLANDS'),
(2, 'ANDHRA PRADESH'),
(3, 'ARUNACHAL PRADESH'),
(4, 'ASSAM'),
(5, 'BIHAR'),
(6, 'CHATTISGARH'),
(7, 'CHANDIGARH'),
(8, 'DAMAN AND DIU'),
(9, 'DELHI'),
(10, 'DADRA AND NAGAR HAVELI'),
(11, 'GOA'),
(12, 'GUJARAT'),
(13, 'HIMACHAL PRADESH'),
(14, 'HARYANA'),
(15, 'JAMMU AND KASHMIR'),
(16, 'JHARKHAND'),
(17, 'KERALA'),
(18, 'KARNATAKA'),
(19, 'LAKSHADWEEP'),
(20, 'MEGHALAYA'),
(21, 'MAHARASHTRA'),
(22, 'MANIPUR'),
(23, 'MADHYA PRADESH'),
(24, 'MIZORAM'),
(25, 'NAGALAND'),
(26, 'ORISSA'),
(27, 'PUNJAB'),
(28, 'PONDICHERRY'),
(29, 'RAJASTHAN'),
(30, 'SIKKIM'),
(31, 'TAMIL NADU'),
(32, 'TRIPURA'),
(33, 'UTTARAKHAND'),
(34, 'UTTAR PRADESH'),
(35, 'WEST BENGAL'),
(36, 'TELANGANA');

-- --------------------------------------------------------

--
-- Table structure for table `subcategories`
--

CREATE TABLE `subcategories` (
  `id` bigint(100) NOT NULL,
  `category_id` bigint(100) DEFAULT NULL,
  `sub_category_name` varchar(255) DEFAULT NULL,
  `sub_category_image` varchar(255) DEFAULT NULL,
  `status` int(10) NOT NULL DEFAULT 1 COMMENT '1 Active 0 Inactive',
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `subcategories`
--

INSERT INTO `subcategories` (`id`, `category_id`, `sub_category_name`, `sub_category_image`, `status`, `created_at`, `updated_at`) VALUES
(1, 1, 'Almond Lip Balm', 'images/subcategory/category_image1635587295.png', 1, '2021-10-30 02:58:13', '2021-10-30 04:20:18'),
(2, 1, 'Black Currant Lip Balm', 'images/subcategory/sub_category_image1635585891.png', 1, '2021-10-30 03:54:51', '2021-10-30 03:54:51');

-- --------------------------------------------------------

--
-- Table structure for table `temp_carts`
--

CREATE TABLE `temp_carts` (
  `temp_carts_id` int(11) NOT NULL,
  `session_id` varchar(100) NOT NULL,
  `product_id` int(11) NOT NULL,
  `attribute_id` int(11) DEFAULT NULL,
  `quantity` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `testimonials`
--

CREATE TABLE `testimonials` (
  `id` int(100) NOT NULL,
  `customer_name` varchar(255) DEFAULT NULL,
  `images` varchar(255) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT 1,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `testimonials`
--

INSERT INTO `testimonials` (`id`, `customer_name`, `images`, `description`, `status`, `created_at`, `updated_at`) VALUES
(1, 'John Doe', 'images/testimonial/testimonial1639220150.jpeg', '<p><strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.</p>', 1, '2021-12-11 05:02:09', '2021-12-11 05:25:50'),
(3, 'Melissa Jones', 'images/testimonial/testimonial1643008051.jpeg', '<div>\r\n<div>&nbsp;I am grateful to the employees of Bloom for the quality products that I have been using for more than a year, try to work at this level</div>\r\n<div>&nbsp;in the future. Thank you)</div>\r\n</div>', 1, '2021-12-11 05:32:38', '2022-01-24 01:37:31'),
(4, 'sujata Malhotra', '/images/testimonial/testimonial1643007898.jpeg', '<p>When you polish the dal, it loses its protein. I am glad that I switched to Tata Sampann Dal as it has so many health benefits. There\'s no compromise on health in any way. I\'ve always wanted to stick to the TATA brand since it generates trust. We feel like we won\'t be cheated.</p>', 1, '2022-01-24 01:34:58', '2022-01-24 01:34:58');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(250) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `profile_pic` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_type` int(10) NOT NULL DEFAULT 2 COMMENT '1 Admin 2 User',
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` int(20) NOT NULL DEFAULT 1 COMMENT '1 active 2 inactive',
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `phone`, `profile_pic`, `user_type`, `email_verified_at`, `password`, `remember_token`, `status`, `created_at`, `updated_at`) VALUES
(1, 'admin', 'admin@gmail.com', '98764543212', NULL, 1, NULL, '$2y$10$w24PG7/VcghhKFZfHszFR.N4lRuVPtw9hmA3KSTl0i4nYNu7JcG8a', '1naDnwBG6JtpL03IjOuCDXMUd2J31ObCBRcBGUqESjiY2umRSDL1rwCxUbJy', 1, '2021-10-29 10:51:15', '2021-10-29 10:51:15'),
(4, 'Prakash Patil', 'prakash@gmail.com', '9876543211', 'images/profile/profile_pic1636635919.jpg', 2, NULL, '$2y$10$fRjsQejQF3Croh4qTCbSwernfSQiWKkIi61Yy2wXVck0pFxbUyVd6', NULL, 1, '2021-11-08 03:21:22', '2022-02-02 05:50:41'),
(5, 'akshay Jadhav', 'akshay@gmail.com', '9876543210', NULL, 2, NULL, '$2y$10$xnDiG.U674p4c7swrHMQNeDv//trv9EDU/MOXfoPkNQ.mnEiEuRqO', NULL, 1, '2021-11-12 00:41:26', '2021-11-12 00:41:26'),
(6, 'Kirti Kamble', 'kirti@gmail.com', '9876543233', NULL, 2, NULL, '$2y$10$2F3oTua4Af5tcy.XFpMnt.4djpHMdVQcJ3xH9sUmAw6SSXuBW9KDe', NULL, 1, '2022-02-01 07:04:11', '2022-02-01 07:04:11');

-- --------------------------------------------------------

--
-- Table structure for table `user_addresses`
--

CREATE TABLE `user_addresses` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `name` varchar(150) NOT NULL,
  `phone` varchar(15) NOT NULL,
  `email` varchar(255) DEFAULT NULL,
  `selected` tinyint(4) NOT NULL DEFAULT 0,
  `address` varchar(255) NOT NULL,
  `address_type` varchar(100) DEFAULT NULL,
  `apartment` varchar(150) DEFAULT NULL,
  `country` varchar(150) NOT NULL,
  `state` varchar(150) NOT NULL,
  `city` varchar(150) NOT NULL,
  `pin_code` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT NULL,
  `locality` varchar(255) DEFAULT NULL,
  `landmark` varchar(255) DEFAULT NULL,
  `phone_alt` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `user_addresses`
--

INSERT INTO `user_addresses` (`id`, `user_id`, `name`, `phone`, `email`, `selected`, `address`, `address_type`, `apartment`, `country`, `state`, `city`, `pin_code`, `created_at`, `updated_at`, `locality`, `landmark`, `phone_alt`) VALUES
(2, 4, 'Akshay Belekar', '987654317', 'akshay@gmail.com', 0, 'Rajarampuri 1st Lane kolahpur', 'work', 'flat no 2', 'India', 'MAHARASHTRA', 'Kolhapur', 416001, '2021-10-13 08:25:13', '2022-02-10 01:50:33', NULL, NULL, NULL),
(7, 3, 'Dhananjay', '9876543233', 'dhananjay.techenvision@gmail.com', 1, 'Rajarampuri Main Road Kolhapur', 'Work', NULL, 'India', 'MAHARASHTRA', 'Kolhapur', 416216, '2021-10-22 05:20:30', '2021-10-22 05:20:30', 'rajarampuri', 'janata bazar chouck', '9876543210'),
(8, 4, 'dhananjay Sawant', '9876543210', 'developer@magnetontech.com', 1, 'Demo Lain Demo City demo country', NULL, NULL, 'India', 'MAHARASHTRA', 'Kolhapur', 416216, '2021-11-09 01:15:46', '2022-02-10 00:00:11', NULL, NULL, NULL),
(10, 5, 'Akshay Jadhav', '9876543126', 'akshay@gmail.com', 1, 'demo lane demo city demo pincode', NULL, NULL, 'India', 'MAHARASHTRA', 'Pune', 521365, '2021-11-12 01:07:02', '2021-11-12 01:07:02', NULL, NULL, NULL),
(11, 4, 'Prakash patil', '9876543210', 'prakash@gmail.com', 1, 'demo demo', NULL, NULL, 'india', 'MAHARASHTRA', 'Pune', 416284, '2022-02-02 05:56:01', '2022-02-02 05:56:01', NULL, NULL, NULL),
(12, 4, 'Akshay patil', '9876548899', 'akshay@gmail.com', 1, 'Rajarampuri 1st Lane kolahpur', NULL, NULL, 'India', 'MAHARASHTRA', 'Kolhapur', 416001, '2022-02-09 23:31:13', '2022-02-09 23:54:20', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `wishlists`
--

CREATE TABLE `wishlists` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `product_id` int(100) DEFAULT NULL,
  `attribute_id` int(100) DEFAULT NULL,
  `quantity` int(11) DEFAULT NULL,
  `type` int(11) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `wishlists`
--

INSERT INTO `wishlists` (`id`, `user_id`, `product_id`, `attribute_id`, `quantity`, `type`, `created_at`, `updated_at`) VALUES
(3, 4, 4, NULL, 1, NULL, '2022-02-12 08:10:22', '2022-02-12 08:10:22'),
(4, 4, 5, NULL, 1, NULL, '2022-02-12 08:13:14', '2022-02-12 08:13:14');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `about_us`
--
ALTER TABLE `about_us`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `banners`
--
ALTER TABLE `banners`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `basic_info`
--
ALTER TABLE `basic_info`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `blogs`
--
ALTER TABLE `blogs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `carts`
--
ALTER TABLE `carts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `order_items`
--
ALTER TABLE `order_items`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `plans`
--
ALTER TABLE `plans`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`products_id`),
  ADD UNIQUE KEY `slug` (`slug`);

--
-- Indexes for table `product_attributes`
--
ALTER TABLE `product_attributes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product_images`
--
ALTER TABLE `product_images`
  ADD PRIMARY KEY (`product_images_id`);

--
-- Indexes for table `recipes`
--
ALTER TABLE `recipes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `reviews`
--
ALTER TABLE `reviews`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `shipping_charges`
--
ALTER TABLE `shipping_charges`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `social_media`
--
ALTER TABLE `social_media`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `state_list`
--
ALTER TABLE `state_list`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `subcategories`
--
ALTER TABLE `subcategories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `temp_carts`
--
ALTER TABLE `temp_carts`
  ADD PRIMARY KEY (`temp_carts_id`);

--
-- Indexes for table `testimonials`
--
ALTER TABLE `testimonials`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Indexes for table `user_addresses`
--
ALTER TABLE `user_addresses`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `wishlists`
--
ALTER TABLE `wishlists`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `about_us`
--
ALTER TABLE `about_us`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `banners`
--
ALTER TABLE `banners`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `basic_info`
--
ALTER TABLE `basic_info`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `blogs`
--
ALTER TABLE `blogs`
  MODIFY `id` int(200) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `carts`
--
ALTER TABLE `carts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `order_items`
--
ALTER TABLE `order_items`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `plans`
--
ALTER TABLE `plans`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `products_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `product_attributes`
--
ALTER TABLE `product_attributes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `product_images`
--
ALTER TABLE `product_images`
  MODIFY `product_images_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `recipes`
--
ALTER TABLE `recipes`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `reviews`
--
ALTER TABLE `reviews`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `shipping_charges`
--
ALTER TABLE `shipping_charges`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `social_media`
--
ALTER TABLE `social_media`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `state_list`
--
ALTER TABLE `state_list`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- AUTO_INCREMENT for table `subcategories`
--
ALTER TABLE `subcategories`
  MODIFY `id` bigint(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `temp_carts`
--
ALTER TABLE `temp_carts`
  MODIFY `temp_carts_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `testimonials`
--
ALTER TABLE `testimonials`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `user_addresses`
--
ALTER TABLE `user_addresses`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `wishlists`
--
ALTER TABLE `wishlists`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
