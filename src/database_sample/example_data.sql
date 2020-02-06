-- phpMyAdmin SQL Dump
-- version 4.9.1
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th1 20, 2020 lúc 05:19 AM
-- Phiên bản máy phục vụ: 10.4.8-MariaDB
-- Phiên bản PHP: 7.3.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `woobooking_test1`
--

--
-- Đang đổ dữ liệu cho bảng `woobooking_apps`
--

INSERT INTO `woobooking_apps` (`id`, `name`, `alias`, `ordering`, `description`) VALUES
(1, 'woobooking', 'woobooking', 0, '');

--
-- Đang đổ dữ liệu cho bảng `woobooking_billing`
--

INSERT INTO `woobooking_billing` (`id`, `ordering`, `order_id`, `email`, `first_name`, `company`, `country`, `address_1`, `address_2`, `postcode`, `city`, `state`, `phone`, `title`, `alias`, `data`) VALUES
(4, 0, 8, 'nguyendinhcuong@gmail.com', 'sdfds', 'sdfsdfds', 'VN', 'sdfdsfdsf', '', '34334', 'ssdf', '', '', '', '', '');

--
-- Đang đổ dữ liệu cho bảng `woobooking_block`
--

INSERT INTO `woobooking_block` (`id`, `name`, `type`, `alias`, `ordering`, `description`, `params`) VALUES
(177, '', 'woobooking-block-searchmenu', '', 0, '', '{\"layout\":\"default\"}'),
(179, '', 'woobooking-block-listevent', '', 0, '', '{\"layout\":\"default\"}'),
(180, '', 'woobooking-block-priceplanclass', '', 0, '', '{\"layout\":\"default\"}'),
(181, '', 'woobooking-block-priceplanclass', '', 0, '', '{\"list_package_id\":[\"2\",\"3\",\"4\"],\"layout\":\"default\"}'),
(182, '', 'woobooking-block-bookingtraining', '', 0, '', '{\"layout\":\"default\"}'),
(183, '', 'woobooking-block-categoryimage', '', 0, '', '{\"category_id\":[\"70\",\"68\",\"23\",\"22\",\"21\",\"20\"],\"layout\":\"default\"}'),
(184, '', 'woobooking-block-meetourcoachs', '', 0, '', '{\"employee_id\":[\"1\",\"3\",\"5\",\"6\",\"7\",\"8\",\"9\",\"10\",\"15\"],\"layout\":\"default\"}'),
(185, '', 'woobooking-block-galleryblock', '', 0, '', '{\"service_id\":[\"45\",\"46\",\"47\",\"48\",\"49\",\"50\",\"51\",\"52\",\"57\",\"58\",\"59\"],\"layout\":\"default\"}'),
(186, '', 'woobooking-block-location', '', 0, '', '{\"layout\":\"default\",\"locations\":[\"3\",\"4\",\"5\"]}');

--
-- Đang đổ dữ liệu cho bảng `woobooking_category`
--

INSERT INTO `woobooking_category` (`id`, `name`, `image`, `alias`, `ordering`, `published`, `description`) VALUES
(20, 'Yoga', 'upload/services/images/image-cover-rbwx5797-anh1.jpg', '', 5, 1, ''),
(21, 'Cardio', 'upload/services/images/image-cover-UsfbDi7H-anh2.jpg', '', 9, 1, ''),
(22, 'Combat Sports', 'upload/services/images/image-cover-VYEUjPNq-anh3.jpg', '', 10, 1, ''),
(23, 'Bodybuilding', 'upload/services/images/image-cover-L0T85YOJ-anh4.jpg', '', 11, 1, '');

--
-- Đang đổ dữ liệu cho bảng `woobooking_config`
--

INSERT INTO `woobooking_config` (`id`, `title`, `alias`, `params`) VALUES
(1, 'title1', 'title1', '{\"booking_style\":\"in_line\",\"using_jquery_ui\":\"1\",\"jquery_ui_version\":\"jquery-ui-1.11.4\",\"multi_product_in_cart\":\"1\",\"login_before_checkout\":\"1\",\"auto_create_account\":\"1\",\"group_user_when_register\":\"\",\"auto_login_when_create_account\":\"0\",\"clear_cart_when_checkout_finish\":\"1\",\"apply_for_coupon_membership\":\"0\",\"enable_vendor_application\":\"0\",\"path_media\":\"\",\"max_search_month\":\"6\",\"backup_database_path\":\"\",\"backup_media_path\":\"\",\"category_image_with\":\"5\",\"category_image_height\":\"5\",\"debug_end_user\":\"0\",\"debug_dev\":\"0\"}');

--
-- Đang đổ dữ liệu cho bảng `woobooking_country`
--

INSERT INTO `woobooking_country` (`id`, `countrycode`, `countryname`, `image`, `code`, `ordering`, `published`) VALUES
(1, 'ABW', 'Aruba', 'admin/resources/flags/aw.png', 'AW', 0, 0),
(2, 'AFG', 'Afghanistan', 'admin/resources/flags/af.png', 'AF', 0, 0),
(3, 'AGO', 'Angola', 'admin/resources/flags/ao.png', 'AO', 0, 0),
(4, 'AIA', 'Anguilla', 'admin/resources/flags/ai.png', 'AI', 0, 0),
(5, 'ALA', 'Åland', 'admin/resources/flags/ax.png', 'AX', 0, 0),
(6, 'ALB', 'Albania', 'admin/resources/flags/al.png', 'AL', 0, 0),
(7, 'AND', 'Andorra', 'admin/resources/flags/ad.png', 'AD', 0, 0),
(8, 'ARE', 'United Arab Emirates', 'admin/resources/flags/ae.png', 'AE', 0, 0),
(9, 'ARG', 'Argentina', 'admin/resources/flags/ar.png', 'AR', 0, 0),
(10, 'ARM', 'Armenia', 'admin/resources/flags/am.png', 'AM', 0, 0),
(11, 'ASM', 'American Samoa', 'admin/resources/flags/as.png', 'AS', 0, 0),
(12, 'ATA', 'Antarctica', 'admin/resources/flags/aq.png', 'AQ', 0, 0),
(13, 'ATF', 'French Southern Territories', 'admin/resources/flags/tf.png', 'TF', 0, 0),
(14, 'ATG', 'Antigua and Barbuda', 'admin/resources/flags/ag.png', 'AG', 0, 0),
(15, 'AUS', 'Australia', 'admin/resources/flags/au.png', 'AU', 0, 0),
(16, 'AUT', 'Austria', 'admin/resources/flags/at.png', 'AT', 0, 0),
(17, 'AZE', 'Azerbaijan', 'admin/resources/flags/az.png', 'AZ', 0, 0),
(18, 'BDI', 'Burundi', 'admin/resources/flags/bi.png', 'BI', 0, 0),
(19, 'BEL', 'Belgium', 'admin/resources/flags/be.png', 'BE', 0, 0),
(20, 'BEN', 'Benin', 'admin/resources/flags/bj.png', 'BJ', 0, 0),
(21, 'BES', 'Bonaire', 'admin/resources/flags/bq.png', 'BQ', 0, 0),
(22, 'BFA', 'Burkina Faso', 'admin/resources/flags/bf.png', 'BF', 0, 0),
(23, 'BGD', 'Bangladesh', 'admin/resources/flags/bd.png', 'BD', 0, 0),
(24, 'BGR', 'Bulgaria', 'admin/resources/flags/bg.png', 'BG', 0, 0),
(25, 'BHR', 'Bahrain', 'admin/resources/flags/bh.png', 'BH', 0, 0),
(26, 'BHS', 'Bahamas', 'admin/resources/flags/bs.png', 'BS', 0, 0),
(27, 'BIH', 'Bosnia and Herzegovina', 'admin/resources/flags/ba.png', 'BA', 0, 0),
(28, 'BLM', 'Saint Barthélemy', 'admin/resources/flags/bl.png', 'BL', 0, 0),
(29, 'BLR', 'Belarus', 'admin/resources/flags/by.png', 'BY', 0, 0),
(30, 'BLZ', 'Belize', 'admin/resources/flags/bz.png', 'BZ', 0, 0),
(31, 'BMU', 'Bermuda', 'admin/resources/flags/bm.png', 'BM', 0, 0),
(32, 'BOL', 'Bolivia', 'admin/resources/flags/bo.png', 'BO', 0, 0),
(33, 'BRA', 'Brazil', 'admin/resources/flags/br.png', 'BR', 0, 0),
(34, 'BRB', 'Barbados', 'admin/resources/flags/bb.png', 'BB', 0, 0),
(35, 'BRN', 'Brunei', 'admin/resources/flags/bn.png', 'BN', 0, 0),
(36, 'BTN', 'Bhutan', 'admin/resources/flags/bt.png', 'BT', 0, 0),
(37, 'BVT', 'Bouvet Island', 'admin/resources/flags/bv.png', 'BV', 0, 0),
(38, 'BWA', 'Botswana', 'admin/resources/flags/bw.png', 'BW', 0, 0),
(39, 'CAF', 'Central African Republic', 'admin/resources/flags/cf.png', 'CF', 0, 0),
(40, 'CAN', 'Canada', 'admin/resources/flags/ca.png', 'CA', 0, 0),
(41, 'CCK', 'Cocos [Keeling] Islands', 'admin/resources/flags/cc.png', 'CC', 0, 0),
(42, 'CHE', 'Switzerland', 'admin/resources/flags/ch.png', 'CH', 0, 0),
(43, 'CHL', 'Chile', 'admin/resources/flags/cl.png', 'CL', 0, 0),
(44, 'CHN', 'China', 'admin/resources/flags/cn.png', 'CN', 0, 0),
(45, 'CIV', 'Ivory Coast', 'admin/resources/flags/ci.png', 'CI', 0, 0),
(46, 'CMR', 'Cameroon', 'admin/resources/flags/cm.png', 'CM', 0, 0),
(47, 'COD', 'Democratic Republic of the Congo', 'admin/resources/flags/cd.png', 'CD', 0, 0),
(48, 'COG', 'Republic of the Congo', 'admin/resources/flags/cg.png', 'CG', 0, 0),
(49, 'COK', 'Cook Islands', 'admin/resources/flags/ck.png', 'CK', 0, 0),
(50, 'COL', 'Colombia', 'admin/resources/flags/co.png', 'CO', 0, 0),
(51, 'COM', 'Comoros', 'admin/resources/flags/km.png', 'KM', 0, 0),
(52, 'CPV', 'Cape Verde', 'admin/resources/flags/cv.png', 'CV', 0, 0),
(53, 'CRI', 'Costa Rica', 'admin/resources/flags/cr.png', 'CR', 0, 0),
(54, 'CUB', 'Cuba', 'admin/resources/flags/cu.png', 'CU', 0, 0),
(55, 'CUW', 'Curacao', 'admin/resources/flags/cw.png', 'CW', 0, 0),
(56, 'CXR', 'Christmas Island', 'admin/resources/flags/cx.png', 'CX', 0, 0),
(57, 'CYM', 'Cayman Islands', 'admin/resources/flags/ky.png', 'KY', 0, 0),
(58, 'CYP', 'Cyprus', 'admin/resources/flags/cy.png', 'CY', 0, 0),
(59, 'CZE', 'Czech Republic', 'admin/resources/flags/cz.png', 'CZ', 0, 0),
(60, 'DEU', 'Germany', 'admin/resources/flags/de.png', 'DE', 0, 0),
(61, 'DJI', 'Djibouti', 'admin/resources/flags/dj.png', 'DJ', 0, 0),
(62, 'DMA', 'Dominica', 'admin/resources/flags/dm.png', 'DM', 0, 0),
(63, 'DNK', 'Denmark', 'admin/resources/flags/dk.png', 'DK', 0, 0),
(64, 'DOM', 'Dominican Republic', 'admin/resources/flags/do.png', 'DO', 0, 0),
(65, 'DZA', 'Algeria', 'admin/resources/flags/dz.png', 'DZ', 0, 0),
(66, 'ECU', 'Ecuador', 'admin/resources/flags/ec.png', 'EC', 0, 0),
(67, 'EGY', 'Egypt', 'admin/resources/flags/eg.png', 'EG', 0, 0),
(68, 'ERI', 'Eritrea', 'admin/resources/flags/er.png', 'ER', 0, 0),
(69, 'ESH', 'Western Sahara', 'admin/resources/flags/eh.png', 'EH', 0, 0),
(70, 'ESP', 'Spain', 'admin/resources/flags/es.png', 'ES', 0, 0),
(71, 'EST', 'Estonia', 'admin/resources/flags/ee.png', 'EE', 0, 0),
(72, 'ETH', 'Ethiopia', 'admin/resources/flags/et.png', 'ET', 0, 0),
(73, 'FIN', 'Finland', 'admin/resources/flags/fi.png', 'FI', 0, 0),
(74, 'FJI', 'Fiji', 'admin/resources/flags/fj.png', 'FJ', 0, 0),
(75, 'FLK', 'Falkland Islands', 'admin/resources/flags/fk.png', 'FK', 0, 0),
(76, 'FRA', 'France', 'admin/resources/flags/fr.png', 'FR', 0, 0),
(77, 'FRO', 'Faroe Islands', 'admin/resources/flags/fo.png', 'FO', 0, 0),
(78, 'FSM', 'Micronesia', 'admin/resources/flags/fm.png', 'FM', 0, 0),
(79, 'GAB', 'Gabon', 'admin/resources/flags/ga.png', 'GA', 0, 0),
(80, 'GBR', 'United Kingdom', 'admin/resources/flags/gb.png', 'GB', 0, 0),
(81, 'GEO', 'Georgia', 'admin/resources/flags/ge.png', 'GE', 0, 0),
(82, 'GGY', 'Guernsey', 'admin/resources/flags/gg.png', 'GG', 0, 0),
(83, 'GHA', 'Ghana', 'admin/resources/flags/gh.png', 'GH', 0, 0),
(84, 'GIB', 'Gibraltar', 'admin/resources/flags/gi.png', 'GI', 0, 0),
(85, 'GIN', 'Guinea', 'admin/resources/flags/gn.png', 'GN', 0, 0),
(86, 'GLP', 'Guadeloupe', 'admin/resources/flags/gp.png', 'GP', 0, 0),
(87, 'GMB', 'Gambia', 'admin/resources/flags/gm.png', 'GM', 0, 0),
(88, 'GNB', 'Guinea-Bissau', 'admin/resources/flags/gw.png', 'GW', 0, 0),
(89, 'GNQ', 'Equatorial Guinea', 'admin/resources/flags/gq.png', 'GQ', 0, 0),
(90, 'GRC', 'Greece', 'admin/resources/flags/gr.png', 'GR', 0, 0),
(91, 'GRD', 'Grenada', 'admin/resources/flags/gd.png', 'GD', 0, 0),
(92, 'GRL', 'Greenland', 'admin/resources/flags/gl.png', 'GL', 0, 0),
(93, 'GTM', 'Guatemala', 'admin/resources/flags/gt.png', 'GT', 0, 0),
(94, 'GUF', 'French Guiana', 'admin/resources/flags/gf.png', 'GF', 0, 0),
(95, 'GUM', 'Guam', 'admin/resources/flags/gu.png', 'GU', 0, 0),
(96, 'GUY', 'Guyana', 'admin/resources/flags/gy.png', 'GY', 0, 0),
(97, 'HKG', 'Hong Kong', 'admin/resources/flags/hk.png', 'HK', 0, 0),
(98, 'HMD', 'Heard Island and McDonald Islands', 'admin/resources/flags/hm.png', 'HM', 0, 0),
(99, 'HND', 'Honduras', 'admin/resources/flags/hn.png', 'HN', 0, 0),
(100, 'HRV', 'Croatia', 'admin/resources/flags/hr.png', 'HR', 0, 0),
(101, 'HTI', 'Haiti', 'admin/resources/flags/ht.png', 'HT', 0, 0),
(102, 'HUN', 'Hungary', 'admin/resources/flags/hu.png', 'HU', 0, 0),
(103, 'IDN', 'Indonesia', 'admin/resources/flags/id.png', 'ID', 0, 0),
(104, 'IMN', 'Isle of Man', 'admin/resources/flags/im.png', 'IM', 0, 0),
(105, 'IND', 'India', 'admin/resources/flags/in.png', 'IN', 0, 0),
(106, 'IOT', 'British Indian Ocean Territory', 'admin/resources/flags/io.png', 'IO', 0, 0),
(107, 'IRL', 'Ireland', 'admin/resources/flags/ie.png', 'IE', 0, 0),
(108, 'IRN', 'Iran', 'admin/resources/flags/ir.png', 'IR', 0, 0),
(109, 'IRQ', 'Iraq', 'admin/resources/flags/iq.png', 'IQ', 0, 0),
(110, 'ISL', 'Iceland', 'admin/resources/flags/is.png', 'IS', 0, 0),
(111, 'ISR', 'Israel', 'admin/resources/flags/il.png', 'IL', 0, 0),
(112, 'ITA', 'Italy', 'admin/resources/flags/it.png', 'IT', 0, 0),
(113, 'JAM', 'Jamaica', 'admin/resources/flags/jm.png', 'JM', 0, 0),
(114, 'JEY', 'Jersey', 'admin/resources/flags/je.png', 'JE', 0, 0),
(115, 'JOR', 'Jordan', 'admin/resources/flags/jo.png', 'JO', 0, 0),
(116, 'JPN', 'Japan', 'admin/resources/flags/jp.png', 'JP', 0, 0),
(117, 'KAZ', 'Kazakhstan', 'admin/resources/flags/kz.png', 'KZ', 0, 0),
(118, 'KEN', 'Kenya', 'admin/resources/flags/ke.png', 'KE', 0, 0),
(119, 'KGZ', 'Kyrgyzstan', 'admin/resources/flags/kg.png', 'KG', 0, 0),
(120, 'KHM', 'Cambodia', 'admin/resources/flags/kh.png', 'KH', 0, 0),
(121, 'KIR', 'Kiribati', 'admin/resources/flags/ki.png', 'KI', 0, 0),
(122, 'KNA', 'Saint Kitts and Nevis', 'admin/resources/flags/kn.png', 'KN', 0, 0),
(123, 'KOR', 'South Korea', 'admin/resources/flags/kr.png', 'KR', 0, 0),
(124, 'KWT', 'Kuwait', 'admin/resources/flags/kw.png', 'KW', 0, 0),
(125, 'LAO', 'Laos', 'admin/resources/flags/la.png', 'LA', 0, 0),
(126, 'LBN', 'Lebanon', 'admin/resources/flags/lb.png', 'LB', 0, 0),
(127, 'LBR', 'Liberia', 'admin/resources/flags/lr.png', 'LR', 0, 0),
(128, 'LBY', 'Libya', 'admin/resources/flags/ly.png', 'LY', 0, 0),
(129, 'LCA', 'Saint Lucia', 'admin/resources/flags/lc.png', 'LC', 0, 0),
(130, 'LIE', 'Liechtenstein', 'admin/resources/flags/li.png', 'LI', 0, 0),
(131, 'LKA', 'Sri Lanka', 'admin/resources/flags/lk.png', 'LK', 0, 0),
(132, 'LSO', 'Lesotho', 'admin/resources/flags/ls.png', 'LS', 0, 0),
(133, 'LTU', 'Lithuania', 'admin/resources/flags/lt.png', 'LT', 0, 0),
(134, 'LUX', 'Luxembourg', 'admin/resources/flags/lu.png', 'LU', 0, 0),
(135, 'LVA', 'Latvia', 'admin/resources/flags/lv.png', 'LV', 0, 0),
(136, 'MAC', 'Macao', 'admin/resources/flags/mo.png', 'MO', 0, 0),
(137, 'MAF', 'Saint Martin', 'admin/resources/flags/mf.png', 'MF', 0, 0),
(138, 'MAR', 'Morocco', 'admin/resources/flags/ma.png', 'MA', 0, 0),
(139, 'MCO', 'Monaco', 'admin/resources/flags/mc.png', 'MC', 0, 0),
(140, 'MDA', 'Moldova', 'admin/resources/flags/md.png', 'MD', 0, 0),
(141, 'MDG', 'Madagascar', 'admin/resources/flags/mg.png', 'MG', 0, 0),
(142, 'MDV', 'Maldives', 'admin/resources/flags/mv.png', 'MV', 0, 0),
(143, 'MEX', 'Mexico', 'admin/resources/flags/mx.png', 'MX', 0, 0),
(144, 'MHL', 'Marshall Islands', 'admin/resources/flags/mh.png', 'MH', 0, 0),
(145, 'MKD', 'Macedonia', 'admin/resources/flags/mk.png', 'MK', 0, 0),
(146, 'MLI', 'Mali', 'admin/resources/flags/ml.png', 'ML', 0, 0),
(147, 'MLT', 'Malta', 'admin/resources/flags/mt.png', 'MT', 0, 0),
(148, 'MMR', 'Myanmar [Burma]', 'admin/resources/flags/mm.png', 'MM', 0, 0),
(149, 'MNE', 'Montenegro', 'admin/resources/flags/me.png', 'ME', 0, 0),
(150, 'MNG', 'Mongolia', 'admin/resources/flags/mn.png', 'MN', 0, 0),
(151, 'MNP', 'Northern Mariana Islands', 'admin/resources/flags/mp.png', 'MP', 0, 0),
(152, 'MOZ', 'Mozambique', 'admin/resources/flags/mz.png', 'MZ', 0, 0),
(153, 'MRT', 'Mauritania', 'admin/resources/flags/mr.png', 'MR', 0, 0),
(154, 'MSR', 'Montserrat', 'admin/resources/flags/ms.png', 'MS', 0, 0),
(155, 'MTQ', 'Martinique', 'admin/resources/flags/mq.png', 'MQ', 0, 0),
(156, 'MUS', 'Mauritius', 'admin/resources/flags/mu.png', 'MU', 0, 0),
(157, 'MWI', 'Malawi', 'admin/resources/flags/mw.png', 'MW', 0, 0),
(158, 'MYS', 'Malaysia', 'admin/resources/flags/my.png', 'MY', 0, 0),
(159, 'MYT', 'Mayotte', 'admin/resources/flags/yt.png', 'YT', 0, 0),
(160, 'NAM', 'Namibia', 'admin/resources/flags/na.png', 'NA', 0, 0),
(161, 'NCL', 'New Caledonia', 'admin/resources/flags/nc.png', 'NC', 0, 0),
(162, 'NER', 'Niger', 'admin/resources/flags/ne.png', 'NE', 0, 0),
(163, 'NFK', 'Norfolk Island', 'admin/resources/flags/nf.png', 'NF', 0, 0),
(164, 'NGA', 'Nigeria', 'admin/resources/flags/ng.png', 'NG', 0, 0),
(165, 'NIC', 'Nicaragua', 'admin/resources/flags/ni.png', 'NI', 0, 0),
(166, 'NIU', 'Niue', 'admin/resources/flags/nu.png', 'NU', 0, 0),
(167, 'NLD', 'Netherlands', 'admin/resources/flags/nl.png', 'NL', 0, 0),
(168, 'NOR', 'Norway', 'admin/resources/flags/no.png', 'NO', 0, 0),
(169, 'NPL', 'Nepal', 'admin/resources/flags/np.png', 'NP', 0, 0),
(170, 'NRU', 'Nauru', 'admin/resources/flags/nr.png', 'NR', 0, 0),
(171, 'NZL', 'New Zealand', 'admin/resources/flags/nz.png', 'NZ', 0, 0),
(172, 'OMN', 'Oman', 'admin/resources/flags/om.png', 'OM', 0, 0),
(173, 'PAK', 'Pakistan', 'admin/resources/flags/pk.png', 'PK', 0, 0),
(174, 'PAN', 'Panama', 'admin/resources/flags/pa.png', 'PA', 0, 0),
(175, 'PCN', 'Pitcairn Islands', 'admin/resources/flags/pn.png', 'PN', 0, 0),
(176, 'PER', 'Peru', 'admin/resources/flags/pe.png', 'PE', 0, 0),
(177, 'PHL', 'Philippines', 'admin/resources/flags/ph.png', 'PH', 0, 0),
(178, 'PLW', 'Palau', 'admin/resources/flags/pw.png', 'PW', 0, 0),
(179, 'PNG', 'Papua New Guinea', 'admin/resources/flags/pg.png', 'PG', 0, 0),
(180, 'POL', 'Poland', 'admin/resources/flags/pl.png', 'PL', 0, 0),
(181, 'PRI', 'Puerto Rico', 'admin/resources/flags/pr.png', 'PR', 0, 0),
(182, 'PRK', 'North Korea', 'admin/resources/flags/kp.png', 'KP', 0, 0),
(183, 'PRT', 'Portugal', 'admin/resources/flags/pt.png', 'PT', 0, 0),
(184, 'PRY', 'Paraguay', 'admin/resources/flags/py.png', 'PY', 0, 0),
(185, 'PSE', 'Palestine', 'admin/resources/flags/ps.png', 'PS', 0, 0),
(186, 'PYF', 'French Polynesia', 'admin/resources/flags/pf.png', 'PF', 0, 0),
(187, 'QAT', 'Qatar', 'admin/resources/flags/qa.png', 'QA', 0, 0),
(188, 'REU', 'Réunion', 'admin/resources/flags/re.png', 'RE', 0, 0),
(189, 'ROU', 'Romania', 'admin/resources/flags/ro.png', 'RO', 0, 0),
(190, 'RUS', 'Russia', 'admin/resources/flags/ru.png', 'RU', 0, 0),
(191, 'RWA', 'Rwanda', 'admin/resources/flags/rw.png', 'RW', 0, 0),
(192, 'SAU', 'Saudi Arabia', 'admin/resources/flags/sa.png', 'SA', 0, 0),
(193, 'SDN', 'Sudan', 'admin/resources/flags/sd.png', 'SD', 0, 0),
(194, 'SEN', 'Senegal', 'admin/resources/flags/sn.png', 'SN', 0, 0),
(195, 'SGP', 'Singapore', 'admin/resources/flags/sg.png', 'SG', 0, 0),
(196, 'SGS', 'South Georgia and the South Sandwich Islands', 'admin/resources/flags/gs.png', 'GS', 0, 0),
(197, 'SHN', 'Saint Helena', 'admin/resources/flags/sh.png', 'SH', 0, 0),
(198, 'SJM', 'Svalbard and Jan Mayen', 'admin/resources/flags/sj.png', 'SJ', 0, 0),
(199, 'SLB', 'Solomon Islands', 'admin/resources/flags/sb.png', 'SB', 0, 0),
(200, 'SLE', 'Sierra Leone', 'admin/resources/flags/sl.png', 'SL', 0, 0),
(201, 'SLV', 'El Salvador', 'admin/resources/flags/sv.png', 'SV', 0, 0),
(202, 'SMR', 'San Marino', 'admin/resources/flags/sm.png', 'SM', 0, 0),
(203, 'SOM', 'Somalia', 'admin/resources/flags/so.png', 'SO', 0, 0),
(204, 'SPM', 'Saint Pierre and Miquelon', 'admin/resources/flags/pm.png', 'PM', 0, 0),
(205, 'SRB', 'Serbia', 'admin/resources/flags/rs.png', 'RS', 0, 0),
(206, 'SSD', 'South Sudan', 'admin/resources/flags/ss.png', 'SS', 0, 0),
(207, 'STP', 'São Tomé and Príncipe', 'admin/resources/flags/st.png', 'ST', 0, 0),
(208, 'SUR', 'Suriname', 'admin/resources/flags/sr.png', 'SR', 0, 0),
(209, 'SVK', 'Slovakia', 'admin/resources/flags/sk.png', 'SK', 0, 0),
(210, 'SVN', 'Slovenia', 'admin/resources/flags/si.png', 'SI', 0, 0),
(211, 'SWE', 'Sweden', 'admin/resources/flags/se.png', 'SE', 0, 0),
(212, 'SWZ', 'Swaziland', 'admin/resources/flags/sz.png', 'SZ', 0, 0),
(213, 'SXM', 'Sint Maarten', 'admin/resources/flags/sx.png', 'SX', 0, 0),
(214, 'SYC', 'Seychelles', 'admin/resources/flags/sc.png', 'SC', 0, 0),
(215, 'SYR', 'Syria', 'admin/resources/flags/sy.png', 'SY', 0, 0),
(216, 'TCA', 'Turks and Caicos Islands', 'admin/resources/flags/tc.png', 'TC', 0, 0),
(217, 'TCD', 'Chad', 'admin/resources/flags/td.png', 'TD', 0, 0),
(218, 'TGO', 'Togo', 'admin/resources/flags/tg.png', 'TG', 0, 0),
(219, 'THA', 'Thailand', 'admin/resources/flags/th.png', 'TH', 0, 0),
(220, 'TJK', 'Tajikistan', 'admin/resources/flags/tj.png', 'TJ', 0, 0),
(221, 'TKL', 'Tokelau', 'admin/resources/flags/tk.png', 'TK', 0, 0),
(222, 'TKM', 'Turkmenistan', 'admin/resources/flags/tm.png', 'TM', 0, 0),
(223, 'TLS', 'East Timor', 'admin/resources/flags/tl.png', 'TL', 0, 0),
(224, 'TON', 'Tonga', 'admin/resources/flags/to.png', 'TO', 0, 0),
(225, 'TTO', 'Trinidad and Tobago', 'admin/resources/flags/tt.png', 'TT', 0, 0),
(226, 'TUN', 'Tunisia', 'admin/resources/flags/tn.png', 'TN', 0, 0),
(227, 'TUR', 'Turkey', 'admin/resources/flags/tr.png', 'TR', 0, 0),
(228, 'TUV', 'Tuvalu', 'admin/resources/flags/tv.png', 'TV', 0, 0),
(229, 'TWN', 'Taiwan', 'admin/resources/flags/tw.png', 'TW', 0, 0),
(230, 'TZA', 'Tanzania', 'admin/resources/flags/tz.png', 'TZ', 0, 0),
(231, 'UGA', 'Uganda', 'admin/resources/flags/ug.png', 'UG', 0, 0),
(232, 'UKR', 'Ukraine', 'admin/resources/flags/ua.png', 'UA', 0, 0),
(233, 'UMI', 'U.S. Minor Outlying Islands', 'admin/resources/flags/um.png', 'UM', 0, 0),
(234, 'URY', 'Uruguay', 'admin/resources/flags/uy.png', 'UY', 0, 0),
(235, 'USA', 'United States', 'admin/resources/flags/us.png', 'US', 0, 0),
(236, 'UZB', 'Uzbekistan', 'admin/resources/flags/uz.png', 'UZ', 0, 0),
(237, 'VAT', 'Vatican City', 'admin/resources/flags/va.png', 'VA', 0, 0),
(238, 'VCT', 'Saint Vincent and the Grenadines', 'admin/resources/flags/vc.png', 'VC', 0, 0),
(239, 'VEN', 'Venezuela', 'admin/resources/flags/ve.png', 'VE', 0, 0),
(240, 'VGB', 'British Virgin Islands', 'admin/resources/flags/vg.png', 'VG', 0, 0),
(241, 'VIR', 'U.S. Virgin Islands', 'admin/resources/flags/vi.png', 'VI', 0, 0),
(242, 'VNM', 'Vietnam', 'admin/resources/flags/vn.png', 'VN', 0, 0),
(243, 'VUT', 'Vanuatu', 'admin/resources/flags/vu.png', 'VU', 0, 0),
(244, 'WLF', 'Wallis and Futuna', 'admin/resources/flags/wf.png', 'WF', 0, 0),
(245, 'WSM', 'Samoa', 'admin/resources/flags/ws.png', 'WS', 0, 0),
(246, 'XKX', 'Kosovo', 'admin/resources/flags/xk.png', 'XK', 0, 0),
(247, 'YEM', 'Yemen', 'admin/resources/flags/ye.png', 'YE', 0, 0),
(248, 'ZAF', 'South Africa', 'admin/resources/flags/za.png', 'ZA', 0, 0),
(249, 'ZMB', 'Zambia', 'admin/resources/flags/zm.png', 'ZM', 0, 0),
(250, 'ZWE', 'Zimbabwe', 'admin/resources/flags/zw.png', 'ZW', 0, 0);

--
-- Đang đổ dữ liệu cho bảng `woobooking_customer`
--

INSERT INTO `woobooking_customer` (`id`, `user_open_source_commerce_id`, `first_name`, `last_name`, `image`, `opensource_user_id`, `mobile`, `address_1`, `address_2`, `city`, `email`, `gender`, `birth_day`, `ordering`, `note_internal`) VALUES
(232, 0, 'Trịnh', 'Tuyết', '', '', '0982140230', '', '', '', 'huynhthienphubk@gmail.com', '', '', 0, '');

--
-- Đang đổ dữ liệu cho bảng `woobooking_employee`
--

INSERT INTO `woobooking_employee` (`id`, `first_name`, `published`, `last_name`, `location_id`, `user_id`, `opensource_user_id`, `country_code`, `email`, `mobile`, `ordering`, `cover`, `image`, `params`) VALUES
(1, 'Andrea', 1, 'Barber', 3, 0, 0, 'AIA', 'andrea@myyogateacher.com', '265542198', 0, 'upload/employees/images/cover/18 Oct 1986anh2-v.jpg', 'upload/employees/images/cover/14 Jun 199026 Feb 2005coach2.png', '{\"facebook\":\"\",\"googleplus\":\"\"}'),
(3, 'Billy', 1, 'Piper', 3, 0, 0, 'USA', 'billy.piper@fightclub.com', '256996335', 0, 'upload/employees/images/cover/09 Sep 2011anh1-v.jpg', 'upload/employees/images/cover/25 Jan 2006istock_000023804840_large.jpg', '{\"facebook\":\"adsdas\",\"googleplus\":\"adsdas\"}'),
(5, 'Daryll', 1, 'Donovan', 0, 0, 0, 'USA', 'daryll.donovan@bodybuilders.com', '266936569', 0, 'upload/employees/images/cover/08 Jan 1993anh4-v.jpg', 'upload/employees/images/cover/21 Dec 1977anh4.png', ''),
(6, 'Edward', 1, 'Tipton', 0, 0, 0, 'USA', 'edward.tipton@cardiomasters.com', '299568833', 0, 'upload/employees/images/cover/11 Dec 2013anh5-v.jpg', 'upload/employees/images/cover/15 Jan 1973anh5.jpg', '{\"facebook\":\"\",\"googleplus\":\"\"}'),
(7, 'Edwina', 1, 'Appleby', 0, 0, 0, 'USA', 'edwina.appleby@cardiomasters.com', '233689554', 0, 'upload/employees/images/cover/16 Jan 1994anh6-v.jpg', 'upload/employees/images/cover/24 Dec 201125_May_2016anh6-removebg-preview.png', '{\"facebook\":\"\",\"googleplus\":\"\"}'),
(8, 'Kelsey', 1, 'Rake', 0, 0, 0, 'USA', 'kelsey.rake@fightclub.com', '244665893', 0, 'upload/employees/images/cover/01 Jan 1990anh10-v.jpg', 'upload/employees/images/cover/20 Apr 197424_Apr_2018anh10-d-removebg-preview.png', '{\"facebook\":\"\",\"googleplus\":\"\"}'),
(9, 'Lee', 1, 'Wong', 0, 0, 0, 'USA', 'lee.wong@fightclub.com', '249885633', 0, 'upload/employees/images/cover/11 Oct 2001anh12-v.jpg', 'upload/employees/images/cover/21 Oct 198211_May_1977anh12-d-removebg-preview.png', '{\"facebook\":\"\",\"googleplus\":\"\"}'),
(10, 'Minnie', 1, 'Foss', 0, 0, 0, 'USA', 'minnie.foss@myyogateacher.com', '246335784', 0, 'upload/employees/images/cover/06 Jul 1979anh13-v.jpg', 'upload/employees/images/cover/24 Nov 198428_Jan_1989anh13-d-removebg-preview.png', '{\"facebook\":\"\",\"googleplus\":\"\"}'),
(15, 'Ricky', 1, 'Pressley', 0, 0, 0, 'USA', 'ricky.pressley@bodybuilders.com', '247845785', 0, 'upload/employees/images/cover/11 Jun 2005anh14-v.jpg', 'upload/employees/images/cover/07 Apr 200919_Jun_1977anh14-removebg-preview.png', '{\"facebook\":\"\",\"googleplus\":\"\"}');

--
-- Đang đổ dữ liệu cho bảng `woobooking_event`
--

INSERT INTO `woobooking_event` (`id`, `name`, `price`, `published`, `location_id`, `max_allowed_person`, `min_allowed_person`, `service_id`, `event_color`, `recurring_repeat`, `recurring`, `alias`, `description`, `recurring_until`, `ordering`, `publish_up`, `publish_down`, `close`, `close_date`) VALUES
(45, 'Yoga DIY - Lunging, foot & knee alignment and breathing', 8000, 1, 3, 20, 5, 45, '#e6194b', 'weekly', 1, '', 'sdfsdfds', '0000-00-00', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, '0000-00-00 00:00:00');

--
-- Đang đổ dữ liệu cho bảng `woobooking_event_employee`
--

INSERT INTO `woobooking_event_employee` (`id`, `employee_id`, `event_id`, `description`) VALUES
(501, 1, 45, ''),
(502, 6, 45, ''),
(503, 15, 45, '');

--
-- Đang đổ dữ liệu cho bảng `woobooking_event_tag`
--

INSERT INTO `woobooking_event_tag` (`id`, `event_id`, `tag_id`, `description`) VALUES
(398, 45, 15, '');

--
-- Đang đổ dữ liệu cho bảng `woobooking_gallery`
--

INSERT INTO `woobooking_gallery` (`id`, `type`, `object_id`, `path`, `name`, `alias`, `description`) VALUES
(32, 'service', 1, 'upload/services/gallery/16 Jul 2006Screen Shot 2019-10-14 at 11.07.19 PM.png', 'Screen Shot 2019-10-14 at 11.07.19 PM.png', '', ''),
(33, 'service', 1, 'upload/services/gallery/09 Jul 2003Screen Shot 2019-10-14 at 11.07.39 PM.png', 'Screen Shot 2019-10-14 at 11.07.39 PM.png', '', ''),
(34, 'service', 1, 'upload/services/gallery/18 Dec 2017Screen Shot 2019-10-07 at 5.09.40 PM.png', 'Screen Shot 2019-10-07 at 5.09.40 PM.png', '', ''),
(35, 'service', 2, 'upload/services/gallery/02 Sep 1989Screen Shot 2019-10-14 at 11.07.39 PM.png', 'Screen Shot 2019-10-14 at 11.07.39 PM.png', '', ''),
(36, 'service', 2, 'upload/services/gallery/19 Jun 1992Screen Shot 2019-10-14 at 11.07.19 PM.png', 'Screen Shot 2019-10-14 at 11.07.19 PM.png', '', ''),
(37, 'service', 2, 'upload/services/gallery/11 Feb 2006Screen Shot 2019-10-08 at 1.23.31 PM.png', 'Screen Shot 2019-10-08 at 1.23.31 PM.png', '', ''),
(38, 'service', 7, 'upload/services/gallery/17 Jan 1993', 'Screen Shot 2019-10-14 at 11.07.39 PM.png', '', ''),
(39, 'service', 7, 'upload/services/gallery/09 Aug 1971', 'Screen Shot 2019-10-14 at 11.07.19 PM.png', '', ''),
(40, 'service', 7, 'upload/services/gallery/16 Nov 1990', 'Screen Shot 2019-10-07 at 5.09.40 PM.png', '', ''),
(41, 'service', 12, 'upload/services/gallery/19 Oct 1979', 'logo.jpg', '', ''),
(42, 'service', 12, 'upload/services/gallery/05 Nov 1970', 'Screen Shot 2019-10-14 at 11.07.39 PM.png', '', ''),
(43, 'service', 12, 'upload/services/gallery/24 Sep 1991', 'Screen Shot 2019-10-08 at 1.25.05 PM.png', '', ''),
(44, 'service', 36, 'upload/services/gallery/01 Jan 1983', 'Screen Shot 2019-10-08 at 1.23.31 PM.png', '', ''),
(45, 'event', 1, 'upload/events/gallery/13 Apr 1993', 'Screen Shot 2019-10-14 at 11.07.19 PM.png', '', ''),
(46, 'event', 1, 'upload/events/gallery/23 Feb 2014', 'Screen Shot 2019-10-08 at 1.25.05 PM.png', '', ''),
(47, 'service', 38, 'upload/services/gallery/30 Mar 2002', 'Screen Shot 2019-10-07 at 5.09.40 PM.png', '', ''),
(52, 'service', 46, 'upload/services/gallery/8duyBV12Vinyasa Yoga.jpg', 'Vinyasa Yoga.jpg', '', ''),
(53, 'service', 47, 'upload/services/gallery/VoqwZ480Bikram Yoga.jpg', 'Bikram Yoga.jpg', '', ''),
(54, 'service', 48, 'upload/services/gallery/pYSUz6Z7Pregnant Yoga.jpg', 'Pregnant Yoga.jpg', '', ''),
(55, 'service', 49, 'upload/services/gallery/1dUHmcVSHot Yoga.jpg', 'Hot Yoga.jpg', '', ''),
(56, 'service', 50, 'upload/services/gallery/gS8Vg7bwKundalini Yoga.jpg', 'Kundalini Yoga.jpg', '', ''),
(57, 'service', 51, 'upload/services/gallery/Pdf7ZqbdSpinning Lessons.jpg', 'Spinning Lessons.jpg', '', ''),
(58, 'service', 52, 'upload/services/gallery/UR0qXKdKCardio Box.jpg', 'Cardio Box.jpg', '', ''),
(59, 'service', 57, 'upload/services/gallery/irqbPzglCore HIIT.jpg', 'Core HIIT.jpg', '', ''),
(60, 'service', 58, 'upload/services/gallery/JvnQvYTJAerobic.jpg', 'Aerobic.jpg', '', ''),
(61, 'service', 59, 'upload/services/gallery/puFj2aUtBody Attack.jpg', 'Body Attack.jpg', '', ''),
(62, 'service', 60, 'upload/services/gallery/aguTqWh1Body Combat.jpg', 'Body Combat.jpg', '', ''),
(63, 'service', 61, 'upload/services/gallery/LWSVeUdvMMA.jpg', 'MMA.jpg', '', ''),
(64, 'service', 62, 'upload/services/gallery/jqvMxxZVJudo.jpg', 'Judo.jpg', '', ''),
(65, 'service', 63, 'upload/services/gallery/XZnSKwFGJiu-Jitsu.jpg', 'Jiu-Jitsu.jpg', '', ''),
(66, 'service', 64, 'upload/services/gallery/gaDY9gjVKarate.jpg', 'Karate.jpg', '', ''),
(67, 'service', 65, 'upload/services/gallery/fPcCBGsSTaekwondo.jpg', 'Taekwondo.jpg', '', ''),
(68, 'service', 66, 'upload/services/gallery/mvesZuDiKrav Maga.jpg', 'Krav Maga.jpg', '', ''),
(69, 'service', 67, 'upload/services/gallery/94SH7CBs5x5.jpg', '5x5.jpg', '', ''),
(70, 'service', 68, 'upload/services/gallery/KGSNkJwVGerman Volume Training.jpg', 'German Volume Training.jpg', '', ''),
(71, 'service', 69, 'upload/services/gallery/nxEenGI7Upper-Lower Split Training.jpg', 'Upper-Lower Split Training.jpg', '', ''),
(72, 'service', 70, 'upload/services/gallery/MLoSdGo0Tactical Strength Training.jpg', 'Tactical Strength Training.jpg', '', ''),
(73, 'service', 71, 'upload/services/gallery/eQQylPBpFST-7.jpg', 'FST-7.jpg', '', ''),
(74, 'service', 72, 'upload/services/gallery/wzpxYld3Weight Training – Advanced.jpg', 'Weight Training – Advanced.jpg', '', ''),
(109, 'event', 45, 'upload/events/gallery/NgRrm3zxYoga4.png', 'Yoga4.png', '', ''),
(110, 'event', 46, 'upload/events/gallery/I7usuTnDYoga2.png', 'Yoga2.png', '', ''),
(111, 'event', 47, 'upload/events/gallery/b8QqFbFBYoga3.png', 'Yoga3.png', '', ''),
(112, 'event', 48, 'upload/events/gallery/7nWCNbI6Running3.png', 'Running3.png', '', ''),
(113, 'event', 48, 'upload/events/gallery/mOTTkn1VRunning2.png', 'Running2.png', '', ''),
(114, 'event', 48, 'upload/events/gallery/SqlYwYXsRunning-1.jpg', 'Running-1.jpg', '', ''),
(115, 'event', 49, 'upload/events/gallery/5VOmpu7Dyoga1.jpg', 'yoga1.jpg', '', ''),
(116, 'event', 50, 'upload/events/gallery/Y4QjTN0pYoga4.png', 'Yoga4.png', '', ''),
(117, 'event', 51, 'upload/events/gallery/j5IIMsvByoga1.jpg', 'yoga1.jpg', '', ''),
(118, 'event', 60, 'upload/events/gallery/JBAY235SYoga3.png', 'Yoga3.png', '', ''),
(119, 'event', 61, 'upload/events/gallery/PJjecnLxRunning3.png', 'Running3.png', '', ''),
(120, 'event', 62, 'upload/events/gallery/QEpt2aViRunning2.png', 'Running2.png', '', ''),
(121, 'event', 62, 'upload/events/gallery/RQ2TyhF0Running-1.jpg', 'Running-1.jpg', '', ''),
(122, 'event', 63, 'upload/events/gallery/1J6EUX6rYoga2.png', 'Yoga2.png', '', ''),
(123, 'event', 64, 'upload/events/gallery/jhArvhlkRunning3.png', 'Running3.png', '', ''),
(124, 'event', 64, 'upload/events/gallery/aQ8kVfSRRunning2.png', 'Running2.png', '', ''),
(125, 'event', 64, 'upload/events/gallery/LEZLjy2DRunning-1.jpg', 'Running-1.jpg', '', ''),
(126, 'event', 65, 'upload/events/gallery/GvO2kfW4Running-1.jpg', 'Running-1.jpg', '', ''),
(127, 'event', 66, 'upload/events/gallery/NBorqggsYoga2.png', 'Yoga2.png', '', ''),
(128, 'event', 67, 'upload/events/gallery/yPjcy5nZRunning3.png', 'Running3.png', '', ''),
(129, 'event', 68, 'upload/events/gallery/BC5RZawByoga1.jpg', 'yoga1.jpg', '', ''),
(130, 'event', 69, 'upload/events/gallery/sHZLtKDqYoga2.png', 'Yoga2.png', '', ''),
(131, 'event', 70, 'upload/events/gallery/Efg5lBpAYoga3.png', 'Yoga3.png', '', ''),
(132, 'event', 71, 'upload/events/gallery/OZyPIojkYoga4.png', 'Yoga4.png', '', ''),
(133, 'event', 72, 'upload/events/gallery/mWvRirw6Running3.png', 'Running3.png', '', ''),
(134, 'event', 72, 'upload/events/gallery/QmrMcZaSRunning2.png', 'Running2.png', '', ''),
(135, 'event', 72, 'upload/events/gallery/1NMhhrGSRunning-1.jpg', 'Running-1.jpg', '', ''),
(136, 'event', 73, 'upload/events/gallery/04wRGzhNYoga4.png', 'Yoga4.png', '', ''),
(137, 'event', 74, 'upload/events/gallery/FHJAh4kCRunning3.png', 'Running3.png', '', ''),
(138, 'event', 75, 'upload/events/gallery/RxL86vBURunning2.png', 'Running2.png', '', ''),
(139, 'event', 76, 'upload/events/gallery/93A5J1JhYoga4.png', 'Yoga4.png', '', ''),
(140, 'event', 77, 'upload/events/gallery/iGRBI0QkRunning2.png', 'Running2.png', '', ''),
(141, 'package', 2, 'upload/packages/gallery/z51LBHdtanh3.jpg', 'anh3.jpg', '', ''),
(142, 'event', 45, 'upload/events/gallery/WPDnb5bbanh4.jpg', 'anh4.jpg', '', ''),
(143, 'event', 45, 'upload/events/gallery/sXEGP8mXanh2.jpg', 'anh2.jpg', '', ''),
(144, 'service', 67, 'upload/services/gallery/qC0I5P7Daia-unsorted-outliers-20-d5acb5bf469f80ff945ff2a130f549b5.jpg', 'aia-unsorted-outliers-20-d5acb5bf469f80ff945ff2a130f549b5.jpg', '', ''),
(145, 'service', 67, 'upload/services/gallery/8xjWe2bianhn6367-99ebab2db702e923fde136a7c9f9fb10.jpg', 'anhn6367-99ebab2db702e923fde136a7c9f9fb10.jpg', '', ''),
(149, 'service', 68, 'upload/services/gallery/sU57osqy40b6bf3c7402432eb4997d91f657f740.jpg', '40b6bf3c7402432eb4997d91f657f740.jpg', '', ''),
(158, 'service', 67, 'upload/services/gallery/bmktnBfZDeadlift.jpg', 'Deadlift.jpg', '', ''),
(159, 'service', 67, 'upload/services/gallery/mOiX2TCGmaxresdefault (1).jpg', 'maxresdefault (1).jpg', '', ''),
(161, 'service', 67, 'upload/services/gallery/WdFQehVVGettyImages-543195255-5a9246533de42300375205af.jpg', 'GettyImages-543195255-5a9246533de42300375205af.jpg', '', ''),
(162, 'service', 67, 'upload/services/gallery/5EEusgpUmaxresdefault.jpg', 'maxresdefault.jpg', '', ''),
(163, 'service', 67, 'upload/services/gallery/pKw6mwm2maxresdefault (5).jpg', 'maxresdefault (5).jpg', '', ''),
(164, 'service', 67, 'upload/services/gallery/FaZltYyhmaxresdefault (3).jpg', 'maxresdefault (3).jpg', '', ''),
(165, 'service', 67, 'upload/services/gallery/xnGc1aSemaxresdefault (2).jpg', 'maxresdefault (2).jpg', '', ''),
(166, 'service', 67, 'upload/services/gallery/DJ9mesz8maxresdefault.jpg', 'maxresdefault.jpg', '', ''),
(167, 'service', 67, 'upload/services/gallery/lKG0POOdmaxresdefault (5).jpg', 'maxresdefault (5).jpg', '', ''),
(168, 'service', 68, 'upload/services/gallery/OQ5s2wRYmaxresdefault (3).jpg', 'maxresdefault (3).jpg', '', ''),
(169, 'service', 68, 'upload/services/gallery/YCtekBulmaxresdefault (2).jpg', 'maxresdefault (2).jpg', '', ''),
(170, 'service', 68, 'upload/services/gallery/uwl7nSzemaxresdefault (1).jpg', 'maxresdefault (1).jpg', '', ''),
(171, 'service', 68, 'upload/services/gallery/tCetG9j8glute-workout-gym-body-motivation-750x500.jpg', 'glute-workout-gym-body-motivation-750x500.jpg', '', ''),
(172, 'service', 68, 'upload/services/gallery/MBHm6cuA1642312.jpg', '1642312.jpg', '', ''),
(173, 'service', 68, 'upload/services/gallery/K2YbgFc41501557.jpg', '1501557.jpg', '', ''),
(174, 'service', 68, 'upload/services/gallery/VppVgYwumaxresdefault.jpg', 'maxresdefault.jpg', '', ''),
(175, 'service', 68, 'upload/services/gallery/KgvsrpTTmaxresdefault (6).jpg', 'maxresdefault (6).jpg', '', ''),
(176, 'service', 68, 'upload/services/gallery/tFJtsORRmaxresdefault (4).jpg', 'maxresdefault (4).jpg', '', ''),
(267, 'service', 85, 'upload/services/gallery/FnCLRyFh1548003974356-1-Legged-Wheel-Pose.jpg', '1548003974356-1-Legged-Wheel-Pose.jpg', '', ''),
(268, 'service', 85, 'upload/services/gallery/7W5DkEJndownload (1).jpg', 'download (1).jpg', '', ''),
(296, 'service', 69, 'upload/services/gallery/hpN118xNmaxresdefault.jpg', 'maxresdefault.jpg', '', ''),
(297, 'service', 69, 'upload/services/gallery/zZXNDepgmaxresdefault (5).jpg', 'maxresdefault (5).jpg', '', ''),
(298, 'service', 69, 'upload/services/gallery/ZDSxOJ6Hmaxresdefault (3).jpg', 'maxresdefault (3).jpg', '', ''),
(299, 'service', 69, 'upload/services/gallery/qE8C12PGmaxresdefault (2).jpg', 'maxresdefault (2).jpg', '', ''),
(300, 'service', 69, 'upload/services/gallery/dtLdzkFVmaxresdefault (1).jpg', 'maxresdefault (1).jpg', '', ''),
(301, 'service', 69, 'upload/services/gallery/nz5xBBI7CREDIT-covatechpilates.com_-1070x714.jpg', 'CREDIT-covatechpilates.com_-1070x714.jpg', '', ''),
(302, 'service', 69, 'upload/services/gallery/AxBZqNpq316781-1096a108a07712febeebe5f5595d339e0e7942321f39f08a40cedf54fa5af225.jpg', '316781-1096a108a07712febeebe5f5595d339e0e7942321f39f08a40cedf54fa5af225.jpg', '', ''),
(303, 'service', 69, 'upload/services/gallery/1AvZ0M6325.07._Bodyweight-Training-1.jpg', '25.07._Bodyweight-Training-1.jpg', '', ''),
(304, 'service', 69, 'upload/services/gallery/kwj1LGiU18-ottobre-progetto-crossfit-601_pr_ed_fin_bassa.jpg', '18-ottobre-progetto-crossfit-601_pr_ed_fin_bassa.jpg', '', ''),
(305, 'service', 69, 'upload/services/gallery/1w4ZTqsF5-motivi-per-cui-fare-muscoli-fa-bene-e-fa-dimagrire_articleimage.jpg', '5-motivi-per-cui-fare-muscoli-fa-bene-e-fa-dimagrire_articleimage.jpg', '', ''),
(336, 'service', 70, 'upload/services/gallery/vPHhPLox66066cb19ffdbf4a7a259e3cae2ad16a.jpg', '66066cb19ffdbf4a7a259e3cae2ad16a.jpg', '', ''),
(337, 'service', 70, 'upload/services/gallery/q5c4CF5q23.10._Running-And-Weight-Training-3.jpg', '23.10._Running-And-Weight-Training-3.jpg', '', ''),
(338, 'service', 70, 'upload/services/gallery/rdxvAm93stretch.jpg', 'stretch.jpg', '', ''),
(339, 'service', 70, 'upload/services/gallery/VlyUKEkHrachel-training-2.jpg', 'rachel-training-2.jpg', '', ''),
(340, 'service', 70, 'upload/services/gallery/oSfclW7cmyswimpro_liftweights_swimmer_beforeafter_1.jpg', 'myswimpro_liftweights_swimmer_beforeafter_1.jpg', '', ''),
(341, 'service', 70, 'upload/services/gallery/kupSgwpqLunges-800x450.jpg', 'Lunges-800x450.jpg', '', ''),
(342, 'service', 70, 'upload/services/gallery/e2qo0y6ilady-deadlift.jpeg', 'lady-deadlift.jpeg', '', ''),
(343, 'service', 70, 'upload/services/gallery/Cm1eJsNQbodyweight-workout.jpg', 'bodyweight-workout.jpg', '', ''),
(344, 'service', 70, 'upload/services/gallery/af9NZK67BHLIVE_033_©DavidEaton_Nov042017.jpg', 'BHLIVE_033_©DavidEaton_Nov042017.jpg', '', ''),
(345, 'service', 70, 'upload/services/gallery/vngPDDrvAngela-Lee-Air-squats-4.jpg', 'Angela-Lee-Air-squats-4.jpg', '', ''),
(346, 'service', 71, 'upload/services/gallery/zfUGB7Wimaxresdefault.jpg', 'maxresdefault.jpg', '', ''),
(347, 'service', 71, 'upload/services/gallery/pWYg0NLSmaxresdefault (6).jpg', 'maxresdefault (6).jpg', '', ''),
(348, 'service', 71, 'upload/services/gallery/4w9ffySPmaxresdefault (5).jpg', 'maxresdefault (5).jpg', '', ''),
(349, 'service', 71, 'upload/services/gallery/jGUrHZ8kmaxresdefault (4).jpg', 'maxresdefault (4).jpg', '', ''),
(350, 'service', 71, 'upload/services/gallery/wv9BGfV0maxresdefault (3).jpg', 'maxresdefault (3).jpg', '', ''),
(351, 'service', 71, 'upload/services/gallery/kpD87D9qmaxresdefault (1).jpg', 'maxresdefault (1).jpg', '', ''),
(352, 'service', 71, 'upload/services/gallery/KfVzHI0CDKBgbTrVwAECadn.jpg', 'DKBgbTrVwAECadn.jpg', '', ''),
(353, 'service', 71, 'upload/services/gallery/qAG5qGuuback-country.jpg', 'back-country.jpg', '', ''),
(354, 'service', 71, 'upload/services/gallery/1YL8NUfs995201_549872048401555_995987825_n.png', '995201_549872048401555_995987825_n.png', '', ''),
(355, 'service', 71, 'upload/services/gallery/hFPNSvsf654562_24ff_4.jpg', '654562_24ff_4.jpg', '', ''),
(356, 'service', 72, 'upload/services/gallery/vKvxdxlAWeekly-Workout-Plan-Women.jpg', 'Weekly-Workout-Plan-Women.jpg', '', ''),
(357, 'service', 72, 'upload/services/gallery/cLg8Lyfrmolly-meech-training.jpg', 'molly-meech-training.jpg', '', ''),
(358, 'service', 72, 'upload/services/gallery/AJHGBsNofemale-athlete-exercising-with-dumbbells-in-a-lunge-royalty-free-image-909891594-1558710148.jpg', 'female-athlete-exercising-with-dumbbells-in-a-lunge-royalty-free-image-909891594-1558710148.jpg', '', ''),
(359, 'service', 72, 'upload/services/gallery/e1ROoZ0Qe866a4458d40eb85e21028bc1b71a26f-quality_75Xresize_crop_1Xallow_enlarge_0Xw_960Xh_590.jpg', 'e866a4458d40eb85e21028bc1b71a26f-quality_75Xresize_crop_1Xallow_enlarge_0Xw_960Xh_590.jpg', '', ''),
(360, 'service', 72, 'upload/services/gallery/yx35RB9kdsc8418.jpg', 'dsc8418.jpg', '', ''),
(361, 'service', 72, 'upload/services/gallery/XHV1SydiCross-Gym-Training-des-TSC-Pottenstein-mit-Bastian-Lumpp-in-der-Sportwelt-Pegnitz-46.jpg', 'Cross-Gym-Training-des-TSC-Pottenstein-mit-Bastian-Lumpp-in-der-Sportwelt-Pegnitz-46.jpg', '', ''),
(362, 'service', 72, 'upload/services/gallery/52LCZRg5crossfit-1280x720.jpg', 'crossfit-1280x720.jpg', '', ''),
(363, 'service', 72, 'upload/services/gallery/rf7hPUNRcrossfit11.jpg', 'crossfit11.jpg', '', ''),
(364, 'service', 72, 'upload/services/gallery/NL8Gexqt2887-3_70e2a08b9e5675921de18ace2f610c48.jpg', '2887-3_70e2a08b9e5675921de18ace2f610c48.jpg', '', ''),
(365, 'service', 72, 'upload/services/gallery/71Ef82ZL986_1r20120121_valley_crossfit_1597_bullet_bamf.jpg', '986_1r20120121_valley_crossfit_1597_bullet_bamf.jpg', '', ''),
(366, 'service', 61, 'upload/services/gallery/5bZbxwOPtrain-like-an-mma-fighter.jpg', 'train-like-an-mma-fighter.jpg', '', ''),
(367, 'service', 61, 'upload/services/gallery/EDjCJhr1mma-fighters-doing-training-drills-in-the-cage.jpg', 'mma-fighters-doing-training-drills-in-the-cage.jpg', '', ''),
(368, 'service', 61, 'upload/services/gallery/uze99PADmaxresdefault-2-1.jpg', 'maxresdefault-2-1.jpg', '', ''),
(369, 'service', 61, 'upload/services/gallery/Pr8PtomHmaxresdefault-2.jpg', 'maxresdefault-2.jpg', '', ''),
(370, 'service', 61, 'upload/services/gallery/2T9bQwaimaxresdefault.jpg', 'maxresdefault.jpg', '', ''),
(371, 'service', 61, 'upload/services/gallery/hrmbaUZmkru-rong-training.jpg', 'kru-rong-training.jpg', '', ''),
(372, 'service', 61, 'upload/services/gallery/1GoMk7Okgettyimages-1135496405-1024x1024.jpg', 'gettyimages-1135496405-1024x1024.jpg', '', ''),
(373, 'service', 61, 'upload/services/gallery/H1UBtyFSEEp5kwqW4AE-3WM.jpg', 'EEp5kwqW4AE-3WM.jpg', '', ''),
(374, 'service', 61, 'upload/services/gallery/8esr5cpsAlex-garcia3.jpg', 'Alex-garcia3.jpg', '', ''),
(375, 'service', 61, 'upload/services/gallery/il18WXfO225_1sports12.jpg', '225_1sports12.jpg', '', ''),
(376, 'service', 62, 'upload/services/gallery/Ahwelcc6judo-fight-training-technique.jpg', 'judo-fight-training-technique.jpg', '', ''),
(377, 'service', 62, 'upload/services/gallery/0fJWLoonjudo-10.jpg', 'judo-10.jpg', '', ''),
(378, 'service', 62, 'upload/services/gallery/hN2E1zfqUki-Goshi.jpg', 'Uki-Goshi.jpg', '', ''),
(379, 'service', 62, 'upload/services/gallery/txNV1SUgriner.jpg', 'riner.jpg', '', ''),
(380, 'service', 62, 'upload/services/gallery/YkwPyFSzmonde-juniors-judo-2010026.jpg', 'monde-juniors-judo-2010026.jpg', '', ''),
(381, 'service', 62, 'upload/services/gallery/sbhs3UZ6a77326d512c69d9f9209cda301965b52.jpg', 'a77326d512c69d9f9209cda301965b52.jpg', '', ''),
(382, 'service', 62, 'upload/services/gallery/j4ZZsqSF645348546.jpg', '645348546.jpg', '', ''),
(383, 'service', 62, 'upload/services/gallery/1wcdyl4p94790810-boys-in-kimono-training-on-the-floor-kid-judo.jpg', '94790810-boys-in-kimono-training-on-the-floor-kid-judo.jpg', '', ''),
(384, 'service', 62, 'upload/services/gallery/9iRmX8Cr457409_10151192198741639_727952270_o-1280x720.jpg', '457409_10151192198741639_727952270_o-1280x720.jpg', '', ''),
(385, 'service', 62, 'upload/services/gallery/RgPkCvPF5th Teddy Riner.jpg', '5th Teddy Riner.jpg', '', ''),
(386, 'service', 63, 'upload/services/gallery/WjBUtn4K130201371-two-brazilian-jiu-jitsu-bjj-women-female-athletes-fighting-in-training-sparring-mount-position-ameri.jpg', '130201371-two-brazilian-jiu-jitsu-bjj-women-female-athletes-fighting-in-training-sparring-mount-position-ameri.jpg', '', ''),
(387, 'service', 63, 'upload/services/gallery/LaNbKBC9129135899-omoplata-submission-judo-bjj-brazilian-jiu-jitsu-training-sparring-two-women-female-fighters-in-trai.jpg', '129135899-omoplata-submission-judo-bjj-brazilian-jiu-jitsu-training-sparring-two-women-female-fighters-in-trai.jpg', '', ''),
(388, 'service', 63, 'upload/services/gallery/BCDcNrPR121648900-two-young-bjj-brazilian-jiu-jitsu-athlete-fighters-training-sparing-technique-at-the-academy-fight-l.jpg', '121648900-two-young-bjj-brazilian-jiu-jitsu-athlete-fighters-training-sparing-technique-at-the-academy-fight-l.jpg', '', ''),
(389, 'service', 63, 'upload/services/gallery/bsuPbWmE121648856-two-young-bjj-brazilian-jiu-jitsu-athlete-fighters-training-sparing-technique-at-the-academy-fight.jpg', '121648856-two-young-bjj-brazilian-jiu-jitsu-athlete-fighters-training-sparing-technique-at-the-academy-fight.jpg', '', ''),
(390, 'service', 63, 'upload/services/gallery/tjgGzYSc121648854-two-young-bjj-brazilian-jiu-jitsu-athlete-fighters-training-sparing-technique-at-the-academy-fight.jpg', '121648854-two-young-bjj-brazilian-jiu-jitsu-athlete-fighters-training-sparing-technique-at-the-academy-fight.jpg', '', ''),
(391, 'service', 63, 'upload/services/gallery/PykBBARb80944974-two-women-are-fighting-on-tatami-judo-jiu-jitsu-.jpg', '80944974-two-women-are-fighting-on-tatami-judo-jiu-jitsu-.jpg', '', ''),
(392, 'service', 63, 'upload/services/gallery/4gWgMECn80944948-two-women-are-fighting-on-tatami-judo-jiu-jitsu-.jpg', '80944948-two-women-are-fighting-on-tatami-judo-jiu-jitsu-.jpg', '', ''),
(393, 'service', 63, 'upload/services/gallery/6sn70Ex480941768-two-women-are-fighting-on-tatami-judo-jiu-jitsu-.jpg', '80941768-two-women-are-fighting-on-tatami-judo-jiu-jitsu-.jpg', '', ''),
(394, 'service', 63, 'upload/services/gallery/8w5GtD0f5-ways-bjj-changed-my-lifewhy-i.jpg', '5-ways-bjj-changed-my-lifewhy-i.jpg', '', ''),
(395, 'service', 64, 'upload/services/gallery/mguWAx42th_pb305783_47365516462_o.jpg', 'th_pb305783_47365516462_o.jpg', '', ''),
(396, 'service', 64, 'upload/services/gallery/bwKK4bqbth_pb305623_46695157684_o-1-1024x767.jpg', 'th_pb305623_46695157684_o-1-1024x767.jpg', '', ''),
(397, 'service', 64, 'upload/services/gallery/PvtZRGydmaxresdefault.jpg', 'maxresdefault.jpg', '', ''),
(398, 'service', 64, 'upload/services/gallery/ZU3mgDtsmaxresdefault (1).jpg', 'maxresdefault (1).jpg', '', ''),
(399, 'service', 64, 'upload/services/gallery/jIs86bwkkihon-technique-demonstration.jpg', 'kihon-technique-demonstration.jpg', '', ''),
(400, 'service', 64, 'upload/services/gallery/on3eohX3Karate-Training-Pics-May-2013-16.jpg', 'Karate-Training-Pics-May-2013-16.jpg', '', ''),
(401, 'service', 64, 'upload/services/gallery/Qn1Bsn84Karate-Training-Pics-May-2013-14.jpg', 'Karate-Training-Pics-May-2013-14.jpg', '', ''),
(402, 'service', 64, 'upload/services/gallery/h4EFVt4o2018-05-07-NP.-CAMPEONATO-DE-KARATE-EN-ASPE.jpg', '2018-05-07-NP.-CAMPEONATO-DE-KARATE-EN-ASPE.jpg', '', ''),
(403, 'service', 65, 'upload/services/gallery/6QYeMllPmaxresdefault.jpg', 'maxresdefault.jpg', '', ''),
(404, 'service', 65, 'upload/services/gallery/xLWIHQt9maxresdefault (9).jpg', 'maxresdefault (9).jpg', '', ''),
(405, 'service', 65, 'upload/services/gallery/fF9qyO9bmaxresdefault (8).jpg', 'maxresdefault (8).jpg', '', ''),
(406, 'service', 65, 'upload/services/gallery/sCwkLz9jmaxresdefault (7).jpg', 'maxresdefault (7).jpg', '', ''),
(407, 'service', 65, 'upload/services/gallery/cSd43ilHmaxresdefault (6).jpg', 'maxresdefault (6).jpg', '', ''),
(408, 'service', 65, 'upload/services/gallery/QHpacUyfmaxresdefault (5).jpg', 'maxresdefault (5).jpg', '', ''),
(409, 'service', 65, 'upload/services/gallery/2vp0SB75maxresdefault (4).jpg', 'maxresdefault (4).jpg', '', ''),
(410, 'service', 65, 'upload/services/gallery/sgkxHf6bmaxresdefault (3).jpg', 'maxresdefault (3).jpg', '', ''),
(411, 'service', 65, 'upload/services/gallery/I8l0Jcf5maxresdefault (2).jpg', 'maxresdefault (2).jpg', '', ''),
(412, 'service', 65, 'upload/services/gallery/azMevv0bmaxresdefault (1).jpg', 'maxresdefault (1).jpg', '', ''),
(413, 'service', 66, 'upload/services/gallery/SgGq1T8no.jpg', 'o.jpg', '', ''),
(414, 'service', 66, 'upload/services/gallery/EGIcPAx4maxresdefault (10).jpg', 'maxresdefault (10).jpg', '', ''),
(415, 'service', 66, 'upload/services/gallery/jHzsqlWykrav-maga-women.png', 'krav-maga-women.png', '', ''),
(416, 'service', 66, 'upload/services/gallery/hVJZGHSwKrav-Maga-Seattle_Customer-challenge-img.png', 'Krav-Maga-Seattle_Customer-challenge-img.png', '', ''),
(417, 'service', 66, 'upload/services/gallery/jk2W7f5vkravmaga3.jpg', 'kravmaga3.jpg', '', ''),
(418, 'service', 66, 'upload/services/gallery/GHTlFjykDSC_0021-p.jpg', 'DSC_0021-p.jpg', '', ''),
(419, 'service', 66, 'upload/services/gallery/KiYXDOQvdf96a08fe55bcdbbc89f41b78558de64.jpg', 'df96a08fe55bcdbbc89f41b78558de64.jpg', '', ''),
(420, 'service', 66, 'upload/services/gallery/JaxVs9lXbg-001-1030x687.jpg', 'bg-001-1030x687.jpg', '', ''),
(421, 'service', 66, 'upload/services/gallery/cNCdWXr11545670244.png', '1545670244.png', '', ''),
(422, 'service', 51, 'upload/services/gallery/YuH3watJmaxresdefault.jpg', 'maxresdefault.jpg', '', ''),
(423, 'service', 51, 'upload/services/gallery/UMKhijFzIndoor-Cycle-Classes.jpg', 'Indoor-Cycle-Classes.jpg', '', ''),
(424, 'service', 51, 'upload/services/gallery/mp9Pr1D6c700x420.jpg', 'c700x420.jpg', '', ''),
(425, 'service', 51, 'upload/services/gallery/CXDmIaFhbristol-fitness-wellbeing-gym-spinning.jpg', 'bristol-fitness-wellbeing-gym-spinning.jpg', '', ''),
(426, 'service', 51, 'upload/services/gallery/TDrGtpwebristol-fitness-wellbeing-gym.jpg', 'bristol-fitness-wellbeing-gym.jpg', '', ''),
(427, 'service', 51, 'upload/services/gallery/treWCsaLBest-spinning-studios-london-fitnessfirst1.jpg', 'Best-spinning-studios-london-fitnessfirst1.jpg', '', ''),
(428, 'service', 51, 'upload/services/gallery/EqX5itc20z9a7052__1545928868_81143223195_compressed.jpg', '0z9a7052__1545928868_81143223195_compressed.jpg', '', ''),
(429, 'service', 52, 'upload/services/gallery/q7mlat1Upersonal-trainer-silhouette-1.jpg', 'personal-trainer-silhouette-1.jpg', '', ''),
(430, 'service', 52, 'upload/services/gallery/hmVrjV4Lmaxresdefault.jpg', 'maxresdefault.jpg', '', ''),
(431, 'service', 52, 'upload/services/gallery/obzPrqLKmaxresdefault (2).jpg', 'maxresdefault (2).jpg', '', ''),
(432, 'service', 52, 'upload/services/gallery/IC0wcIjpmaxresdefault (1).jpg', 'maxresdefault (1).jpg', '', ''),
(433, 'service', 52, 'upload/services/gallery/M424oq8eentrenamiento-funcional-principal.jpg', 'entrenamiento-funcional-principal.jpg', '', ''),
(434, 'service', 52, 'upload/services/gallery/y6q0DxDIentrenamiento-funcional-1280x720.jpg', 'entrenamiento-funcional-1280x720.jpg', '', ''),
(435, 'service', 52, 'upload/services/gallery/GeJTIfJoCardio-boxing2.jpg', 'Cardio-boxing2.jpg', '', ''),
(436, 'service', 52, 'upload/services/gallery/7m9GJiR1Bodyweight-Cardio-email.jpg', 'Bodyweight-Cardio-email.jpg', '', ''),
(437, 'service', 52, 'upload/services/gallery/8StS1zg447670392-una-mujer-caucásica-pilates-ejercicio-ejercicios-de-fitness-en-la-silueta-aislado-en-el-backgound-blan.jpg', '47670392-una-mujer-caucásica-pilates-ejercicio-ejercicios-de-fitness-en-la-silueta-aislado-en-el-backgound-blan.jpg', '', ''),
(438, 'service', 52, 'upload/services/gallery/jvk5I5T52f948dad31a9c23de459ed94eeed817f.jpg', '2f948dad31a9c23de459ed94eeed817f.jpg', '', ''),
(439, 'service', 57, 'upload/services/gallery/TJlGey3umaxresdefault.jpg', 'maxresdefault.jpg', '', ''),
(440, 'service', 57, 'upload/services/gallery/zB5imTuOfitness_abs_1.jpg', 'fitness_abs_1.jpg', '', ''),
(441, 'service', 57, 'upload/services/gallery/WotBuqdfexercicio_4.jpg', 'exercicio_4.jpg', '', ''),
(442, 'service', 57, 'upload/services/gallery/sxf79VUFcore-exercise-1548448114.jpg', 'core-exercise-1548448114.jpg', '', ''),
(443, 'service', 57, 'upload/services/gallery/kUqWnpVAbai-tap-aerobic-feature.jpg', 'bai-tap-aerobic-feature.jpg', '', ''),
(444, 'service', 57, 'upload/services/gallery/8I9Z8mqtamp-treino-abdominal.jpg', 'amp-treino-abdominal.jpg', '', ''),
(445, 'service', 57, 'upload/services/gallery/zzGi3E4x10-Minute-Tabata-Workout-for-Abs.jpg', '10-Minute-Tabata-Workout-for-Abs.jpg', '', ''),
(446, 'service', 57, 'upload/services/gallery/4xZESmPm8rftzn0y6x6zjlly5435ziz9e.jpg', '8rftzn0y6x6zjlly5435ziz9e.jpg', '', ''),
(447, 'service', 57, 'upload/services/gallery/YvUFeg7f8f510362-6cf1-4a11-8734-dfd17dce73f4-shutterstock-1439365595.jpg', '8f510362-6cf1-4a11-8734-dfd17dce73f4-shutterstock-1439365595.jpg', '', ''),
(448, 'service', 57, 'upload/services/gallery/zs28Wabm0f384fba-ae92-4a8a-8425-d0bd798061d5_83788d1a-7229-4556-a2c8-550ecffbbb3e.jpg', '0f384fba-ae92-4a8a-8425-d0bd798061d5_83788d1a-7229-4556-a2c8-550ecffbbb3e.jpg', '', ''),
(449, 'service', 58, 'upload/services/gallery/Yhvp55xXthoát-vị-đĩa-đệm-có-nên-tập-Aerobic-2.jpg', 'thoát-vị-đĩa-đệm-có-nên-tập-Aerobic-2.jpg', '', ''),
(450, 'service', 58, 'upload/services/gallery/lv3OtiIistep.jpg', 'step.jpg', '', ''),
(451, 'service', 58, 'upload/services/gallery/R6NvOOwSonde-encontro-aula-de-step.jpg', 'onde-encontro-aula-de-step.jpg', '', ''),
(452, 'service', 58, 'upload/services/gallery/1HwsNRsQnen-tap-aerobic-vao-luc-nao-mot-van-de-thac-mac-khi-tap-aerobic.jpg', 'nen-tap-aerobic-vao-luc-nao-mot-van-de-thac-mac-khi-tap-aerobic.jpg', '', ''),
(453, 'service', 58, 'upload/services/gallery/18WmUGDuNâng-cao-đùi-giúp-giảm-mỡ-bụng.jpeg', 'Nâng-cao-đùi-giúp-giảm-mỡ-bụng.jpeg', '', ''),
(454, 'service', 58, 'upload/services/gallery/ysHjXFMDistockphoto-187296496-1024x1024.jpg', 'istockphoto-187296496-1024x1024.jpg', '', ''),
(455, 'service', 58, 'upload/services/gallery/aaIHrKHLc85b99f6409b4ffa8e8cb15cc7f089eb.jpg', 'c85b99f6409b4ffa8e8cb15cc7f089eb.jpg', '', ''),
(456, 'service', 58, 'upload/services/gallery/M6CS7JOSc85b99f6409b4ffa8e8cb15cc7f089eb.jpg', 'c85b99f6409b4ffa8e8cb15cc7f089eb.jpg', '', ''),
(457, 'service', 58, 'upload/services/gallery/dthWr4zkaerobic-la-gi_orig.jpg', 'aerobic-la-gi_orig.jpg', '', ''),
(458, 'service', 58, 'upload/services/gallery/HHEp8dF17889416-healthy-people-doing-aerobic-exercises-together-at-gym.jpg', '7889416-healthy-people-doing-aerobic-exercises-together-at-gym.jpg', '', ''),
(459, 'service', 58, 'upload/services/gallery/mcJksBx81369629.webp', '1369629.webp', '', ''),
(460, 'service', 59, 'upload/services/gallery/ACk3wGclreebok_ss15_-_bodyattack__9_jpeg-rotator-ashx.jpg', 'reebok_ss15_-_bodyattack__9_jpeg-rotator-ashx.jpg', '', ''),
(461, 'service', 59, 'upload/services/gallery/Nu6L5P45ddd946_59119f4a0ab6453296dc423d305400d9_mv2.jpg', 'ddd946_59119f4a0ab6453296dc423d305400d9_mv2.jpg', '', ''),
(462, 'service', 59, 'upload/services/gallery/d1K0VHIzbodycombat-kick-shoes.jpg', 'bodycombat-kick-shoes.jpg', '', ''),
(463, 'service', 59, 'upload/services/gallery/HQOVhB9gbodycombat1-1024x538.jpg', 'bodycombat1-1024x538.jpg', '', ''),
(464, 'service', 59, 'upload/services/gallery/yK1cE1fxbodyattackskaterjpg_5718774a432ca.jpg', 'bodyattackskaterjpg_5718774a432ca.jpg', '', ''),
(465, 'service', 59, 'upload/services/gallery/JQHiH15rbody-attack-2.jpg', 'body-attack-2.jpg', '', ''),
(466, 'service', 59, 'upload/services/gallery/zyStD3rybodyAttack01.jpg', 'bodyAttack01.jpg', '', ''),
(467, 'service', 59, 'upload/services/gallery/ccWwmLnebodyattack.jpg', 'bodyattack.jpg', '', ''),
(468, 'service', 59, 'upload/services/gallery/slxax52uBA2.jpg', 'BA2.jpg', '', ''),
(469, 'service', 59, 'upload/services/gallery/fkI6GYJDacti-combat02.jpg', 'acti-combat02.jpg', '', ''),
(470, 'service', 60, 'upload/services/gallery/Qm3olhrmTone_bühler.jpg', 'Tone_bühler.jpg', '', ''),
(471, 'service', 60, 'upload/services/gallery/CR7Cgbqstap-body-combat-3.jpg', 'tap-body-combat-3.jpg', '', ''),
(472, 'service', 60, 'upload/services/gallery/NVelIgdKO2-Fitness-Clubs-Cardio-Classes-BodyCombat.jpg', 'O2-Fitness-Clubs-Cardio-Classes-BodyCombat.jpg', '', ''),
(473, 'service', 60, 'upload/services/gallery/cuvv3HSxMuscle Pump Daniel Bühler.jpg', 'Muscle Pump Daniel Bühler.jpg', '', ''),
(474, 'service', 60, 'upload/services/gallery/klgi5ZIwmaxresdefault.jpg', 'maxresdefault.jpg', '', ''),
(475, 'service', 60, 'upload/services/gallery/ek6ExQuXCombat_Bühler.jpg', 'Combat_Bühler.jpg', '', ''),
(476, 'service', 45, 'upload/services/gallery/vP9GM9PriStock-655919922_high-1.jpg', 'iStock-655919922_high-1.jpg', '', ''),
(477, 'service', 45, 'upload/services/gallery/9g0Dh3ouhatha-yoga-feature.png', 'hatha-yoga-feature.png', '', ''),
(478, 'service', 45, 'upload/services/gallery/oS8m5Aa7hatha-yoga-1280x720.jpg', 'hatha-yoga-1280x720.jpg', '', ''),
(479, 'service', 45, 'upload/services/gallery/nAhcTZglhatha-yoga-5.png', 'hatha-yoga-5.png', '', ''),
(480, 'service', 45, 'upload/services/gallery/zIfamJEvcac-tu-the-yoga-tot-cho-nguoi-bi-huyet-ap-thap11494581175.jpg', 'cac-tu-the-yoga-tot-cho-nguoi-bi-huyet-ap-thap11494581175.jpg', '', ''),
(481, 'service', 45, 'upload/services/gallery/LhzrMD0hblog_aboutYogaSynergy-862x482.jpg', 'blog_aboutYogaSynergy-862x482.jpg', '', ''),
(482, 'service', 45, 'upload/services/gallery/u8X99kynbai-tap-yoga-cho-nguoi-thoai-hoa-dot-song-co.jpg', 'bai-tap-yoga-cho-nguoi-thoai-hoa-dot-song-co.jpg', '', ''),
(483, 'service', 46, 'upload/services/gallery/0FY1Ng1Jyoga-en-wayco.jpg', 'yoga-en-wayco.jpg', '', ''),
(484, 'service', 46, 'upload/services/gallery/OZYDyULSVinyasa-Yoga-image-truself-sporting-club.jpg', 'Vinyasa-Yoga-image-truself-sporting-club.jpg', '', ''),
(485, 'service', 46, 'upload/services/gallery/fpzXVyjUVinyasa-Yoga-1200x675.jpg', 'Vinyasa-Yoga-1200x675.jpg', '', ''),
(486, 'service', 46, 'upload/services/gallery/4AwzfUbSvinyasa-yoga-7.png', 'vinyasa-yoga-7.png', '', ''),
(487, 'service', 46, 'upload/services/gallery/Z6c2JIAxvinyasa-yoga-3.png', 'vinyasa-yoga-3.png', '', ''),
(488, 'service', 46, 'upload/services/gallery/xwz8gKRx3-3.jpg', '3-3.jpg', '', ''),
(489, 'service', 47, 'upload/services/gallery/iLa5TTuGyoga-giam-can-05a.jpg', 'yoga-giam-can-05a.jpg', '', ''),
(490, 'service', 47, 'upload/services/gallery/lX4vGzNWYoga_59048878_iStock-by-Getty-Imagesl-1030x686.jpg', 'Yoga_59048878_iStock-by-Getty-Imagesl-1030x686.jpg', '', ''),
(491, 'service', 47, 'upload/services/gallery/H6DpsGhSGarudasana.jpg', 'Garudasana.jpg', '', ''),
(492, 'service', 47, 'upload/services/gallery/RGrhGLGkDandayamana-janushirasana.jpg', 'Dandayamana-janushirasana.jpg', '', ''),
(493, 'service', 47, 'upload/services/gallery/EGNLQyuU1_uEe0IVIHXJFcnjAAB1lLXA.jpeg', '1_uEe0IVIHXJFcnjAAB1lLXA.jpeg', '', ''),
(494, 'service', 48, 'upload/services/gallery/AwAbdocQpregnant-woman-side-stretch.jpg', 'pregnant-woman-side-stretch.jpg', '', ''),
(495, 'service', 48, 'upload/services/gallery/mCGsLVGdPregnancy_yoga.jpg', 'Pregnancy_yoga.jpg', '', ''),
(496, 'service', 48, 'upload/services/gallery/9lbnnx5g1569574432328_9492597.jpg', '1569574432328_9492597.jpg', '', ''),
(497, 'service', 48, 'upload/services/gallery/LrcHSTNe59795634-healthy-lifestyle-concept-pregnancy-yoga-and-fitness-young-pregnant-yoga-woman-kissing-cute-small-do.jpg', '59795634-healthy-lifestyle-concept-pregnancy-yoga-and-fitness-young-pregnant-yoga-woman-kissing-cute-small-do.jpg', '', ''),
(498, 'service', 48, 'upload/services/gallery/TBMauwQ110-y-tuong-kinh-doanh-de-lam-nhat-hien-nay-nam-2019-bytuong-com.jpg', '10-y-tuong-kinh-doanh-de-lam-nhat-hien-nay-nam-2019-bytuong-com.jpg', '', ''),
(499, 'service', 49, 'upload/services/gallery/PXGXlE9Fstretch-and-flex-class-perth-758x506.jpg', 'stretch-and-flex-class-perth-758x506.jpg', '', ''),
(500, 'service', 49, 'upload/services/gallery/OwqFXHGJphotodune-7109197-group-of-smiling-women-stretching-on-mats-in-gym-m.jpg', 'photodune-7109197-group-of-smiling-women-stretching-on-mats-in-gym-m.jpg', '', ''),
(501, 'service', 49, 'upload/services/gallery/gLPkBq3nHot_House_Yoga_Cincinnati_1578x1052.jpg', 'Hot_House_Yoga_Cincinnati_1578x1052.jpg', '', ''),
(502, 'service', 49, 'upload/services/gallery/rEdXKwiB456240409-1024x683.jpg', '456240409-1024x683.jpg', '', ''),
(503, 'service', 49, 'upload/services/gallery/RhgFs70T167767_00_2x.jpg', '167767_00_2x.jpg', '', ''),
(504, 'service', 50, 'upload/services/gallery/P9hJs3bPmaxresdefault.jpg', 'maxresdefault.jpg', '', ''),
(505, 'service', 50, 'upload/services/gallery/GFGeJ66Vmaxresdefault (1).jpg', 'maxresdefault (1).jpg', '', ''),
(506, 'service', 50, 'upload/services/gallery/QO0kPrTumain-qimg-a8af3852ba47cfd852299524668c4d81.jfif', 'main-qimg-a8af3852ba47cfd852299524668c4d81.jfif', '', ''),
(507, 'service', 50, 'upload/services/gallery/UDiqUY7ffeatured5.jpg', 'featured5.jpg', '', ''),
(508, 'service', 50, 'upload/services/gallery/kYwv3mfMAdvanced-Kundalini-Yoga-Stretch-Pose.jpg', 'Advanced-Kundalini-Yoga-Stretch-Pose.jpg', '', ''),
(509, 'service', 50, 'upload/services/gallery/zyHxFt6g2nd-image2.jpg', '2nd-image2.jpg', '', '');

--
-- Đang đổ dữ liệu cho bảng `woobooking_location`
--

INSERT INTO `woobooking_location` (`id`, `name`, `banner`, `image_location_avatar`, `map_image`, `address`, `alias`, `state_id`, `lang`, `lat`, `published`, `ordering`, `image`, `description`) VALUES
(3, 'Ha Noi', 'http://45.119.84.18/~wbkfitnes/wp-content/uploads/2020/01/1.png', '', '', '91 Nguyen Chi Thanh, Ha Noi', 'address2', 0, '21.0064286', '105.8654489', 1, 0, 'upload/locations/images/im1.jpg', 'rrr'),
(4, 'Hoa Ky', 'http://45.119.84.18/~wbkfitnes/wp-content/uploads/2020/01/img4.png', '', '', 'Texas 76801, Hoa Kỳ', '', 0, '', '', 1, 0, 'upload/locations/images/im1.jpg', 'ưeer'),
(5, 'Hoa Ky', 'http://45.119.84.18/~wbkfitnes/wp-content/uploads/2020/01/img3.png', '', '', '33 Thomas St New York, NY 10007 Hoa Kỳ', '', 0, '', '', 1, 0, 'upload/locations/images/im1.jpg', 'fdfgfg');

--
-- Đang đổ dữ liệu cho bảng `woobooking_notification`
--

INSERT INTO `woobooking_notification` (`id`, `name`, `image`, `alias`, `ordering`, `description`) VALUES
(20, 'Yoga', 'upload/services/images/image-cover-rbwx5797-anh1.jpg', '', 5, ''),
(21, 'Cardio', 'upload/services/images/image-cover-UsfbDi7H-anh2.jpg', '', 9, ''),
(22, 'Combat Sports', 'upload/services/images/image-cover-VYEUjPNq-anh3.jpg', '', 10, ''),
(23, 'Bodybuilding', 'upload/services/images/image-cover-L0T85YOJ-anh4.jpg', '', 11, ''),
(46, 'Boxing room', 'upload/services/images/image-cover-VW24WlTK-anh5.jpg', '', 11, '');

--
-- Đang đổ dữ liệu cho bảng `woobooking_order_status`
--

INSERT INTO `woobooking_order_status` (`id`, `name`, `title`, `ordering`, `alias`, `data`) VALUES
(4, 'pending', 'Pending', 0, '', ''),
(5, 'complete', 'Complete', 0, '', '');

--
-- Đang đổ dữ liệu cho bảng `woobooking_package`
--

INSERT INTO `woobooking_package` (`id`, `image`, `name`, `params`, `price`, `published`, `package_color`, `description`, `ordering`) VALUES
(2, 'blocks/block_priceplanclass/assets/images/the-member1.png', 'Silver members12', '{\"booking_style\":\"integrate\",\"using_jquery_ui\":\"1\",\"jquery_ui_version\":\"jquery-ui-1.11.4\",\"path_media\":\"sdfsdfs34343\",\"backup_database_path\":\"\\/public_html\\/wooboking_fitness_v1\\/wp-content\\/uploads\",\"backup_media_path\":\"\\/public_html\\/wooboking_fitness_v1\\/wp-content\\/uploads\"}', 79, 0, '', 'dd', 0),
(3, 'blocks/block_priceplanclass/assets/images/the-member2.png', 'Gold members', '{\"booking_style\":\"integrate\",\"using_jquery_ui\":\"1\",\"jquery_ui_version\":\"jquery-ui-1.11.4\",\"path_media\":\"sdfsdfs34343\",\"backup_database_path\":\"\\/public_html\\/wooboking_fitness_v1\\/wp-content\\/uploads\",\"backup_media_path\":\"\\/public_html\\/wooboking_fitness_v1\\/wp-content\\/uploads\"}', 89, 0, '', 'tt', 0),
(4, 'blocks/block_priceplanclass/assets/images/the-member3.png', 'Diamond members', '{\"booking_style\":\"integrate\",\"using_jquery_ui\":\"1\",\"jquery_ui_version\":\"jquery-ui-1.11.4\",\"path_media\":\"sdfsdfs34343\",\"backup_database_path\":\"\\/public_html\\/wooboking_fitness_v1\\/wp-content\\/uploads\",\"backup_media_path\":\"\\/public_html\\/wooboking_fitness_v1\\/wp-content\\/uploads\"}', 99, 0, '', 'rrr', 0);

--
-- Đang đổ dữ liệu cho bảng `woobooking_package_event`
--

INSERT INTO `woobooking_package_event` (`id`, `package_id`, `event_id`, `description`) VALUES
(2, 2, 45, ''),
(4, 3, 45, ''),
(7, 4, 45, '');

--
-- Đang đổ dữ liệu cho bảng `woobooking_package_tag`
--

INSERT INTO `woobooking_package_tag` (`id`, `package_id`, `tag_id`, `description`) VALUES
(7, 35, 14, ''),
(8, 36, 14, ''),
(9, 37, 14, ''),
(14, 2, 3, ''),
(15, 2, 4, '');

--
-- Đang đổ dữ liệu cho bảng `woobooking_payment`
--

INSERT INTO `woobooking_payment` (`id`, `type`, `is_payment_online`, `name`, `debug`, `image`, `alias`, `ordering`, `params`, `published`, `description`, `event_id`, `location_id`) VALUES
(20, 'paypal', 1, 'Paypal', 1, 'upload/payment/images/12 Dec 2002paypal-logo-2015_grande.png', '', 5, '{\"payment_params\":{\"email\":\"digitalsolutiontoppro@gmail.com\"}}', 1, '', 0, 0);

--
-- Đang đổ dữ liệu cho bảng `woobooking_rate`
--

INSERT INTO `woobooking_rate` (`id`, `type`, `object_id`, `from`, `to`, `ordering`, `description`) VALUES
(102, 'event', 61, '2019-12-23 15:05:00', '2019-12-23 15:37:00', 0, ''),
(103, 'event', 62, '2019-12-26 15:17:00', '2019-12-26 15:49:00', 0, ''),
(106, 'event', 65, '2019-12-29 16:00:00', '2019-12-29 16:32:00', 0, ''),
(108, 'event', 68, '2020-01-01 16:13:00', '2020-01-01 16:45:00', 0, ''),
(118, 'event', 66, '2019-12-30 16:02:00', '2019-12-30 16:34:00', 0, ''),
(122, 'event', 0, '2019-12-13 08:01:35', '2019-12-13 08:01:35', 0, ''),
(123, 'event', 0, '2019-12-13 08:02:03', '2019-12-13 08:02:03', 0, ''),
(124, 'event', 0, '2019-12-13 08:05:06', '2019-12-13 08:05:06', 0, ''),
(125, 'event', 0, '2019-12-13 08:06:22', '2019-12-13 08:06:22', 0, ''),
(126, 'event', 0, '2019-12-10 10:39:00', '2019-12-28 11:11:00', 0, ''),
(127, 'event', 0, '2019-12-16 05:34:18', '2019-12-16 05:34:18', 0, ''),
(128, 'event', 0, '2019-12-16 05:38:30', '2019-12-16 05:38:30', 0, ''),
(129, 'event', 0, '2019-12-16 09:03:27', '2019-12-16 09:03:27', 0, ''),
(130, 'event', 0, '2019-12-16 09:03:51', '2019-12-16 09:03:51', 0, ''),
(131, 'event', 0, '2019-12-16 09:03:51', '2019-12-16 09:03:51', 0, ''),
(132, 'event', 0, '2019-12-16 09:07:56', '2019-12-16 09:07:56', 0, ''),
(133, 'event', 0, '2019-12-16 14:54:00', '2019-12-16 15:26:00', 0, ''),
(134, 'event', 0, '2020-01-10 16:38:00', '2020-01-10 17:10:00', 0, ''),
(135, 'event', 0, '2019-12-16 09:14:41', '2019-12-16 09:14:41', 0, ''),
(136, 'event', 0, '2019-12-16 09:15:31', '2019-12-16 09:15:31', 0, ''),
(137, 'event', 0, '2019-12-16 09:19:00', '2019-12-16 09:19:00', 0, ''),
(138, 'event', 0, '2019-12-16 09:26:14', '2019-12-16 09:26:14', 0, ''),
(139, 'event', 0, '2019-12-16 09:27:38', '2019-12-16 09:27:38', 0, ''),
(140, 'event', 0, '2019-12-16 09:34:22', '2019-12-16 09:34:22', 0, ''),
(141, 'event', 0, '2019-12-16 09:41:52', '2019-12-16 09:41:52', 0, ''),
(142, 'event', 0, '2019-12-16 09:42:47', '2019-12-16 09:42:47', 0, ''),
(143, 'event', 0, '2019-12-16 09:46:27', '2019-12-16 09:46:27', 0, ''),
(144, 'event', 0, '2019-12-16 09:47:38', '2019-12-16 09:47:38', 0, ''),
(145, 'event', 0, '2019-12-16 09:49:19', '2019-12-16 09:49:19', 0, ''),
(146, 'event', 0, '2019-12-16 09:50:26', '2019-12-16 09:50:26', 0, ''),
(147, 'event', 0, '2019-12-16 09:50:50', '2019-12-16 09:50:50', 0, ''),
(148, 'event', 0, '2019-12-16 09:51:37', '2019-12-16 09:51:37', 0, ''),
(149, 'event', 0, '2019-12-16 09:51:37', '2019-12-16 09:51:37', 0, ''),
(150, 'event', 0, '2019-12-16 09:54:50', '2019-12-16 09:54:50', 0, ''),
(151, 'event', 0, '2019-12-16 09:56:07', '2019-12-16 09:56:07', 0, ''),
(152, 'event', 0, '2019-12-16 09:56:36', '2019-12-16 09:56:36', 0, ''),
(153, 'event', 0, '2019-12-16 10:07:42', '2019-12-16 10:07:42', 0, ''),
(154, 'event', 0, '2019-12-16 11:26:55', '2019-12-16 11:26:55', 0, ''),
(155, 'event', 0, '2019-12-16 11:58:51', '2019-12-16 11:58:51', 0, ''),
(156, 'event', 0, '2019-12-16 11:59:45', '2019-12-16 11:59:45', 0, ''),
(157, 'event', 0, '2019-12-16 12:01:32', '2019-12-16 12:01:32', 0, ''),
(181, 'event', 48, '2019-12-18 10:00:00', '2019-12-18 11:30:00', 0, ''),
(182, 'event', 48, '2019-12-19 10:00:00', '2019-12-19 11:30:00', 0, ''),
(183, 'event', 48, '2019-12-20 10:00:00', '2019-12-20 11:30:00', 0, ''),
(184, 'event', 49, '2019-12-18 11:21:00', '2019-12-18 11:21:00', 0, ''),
(185, 'event', 49, '2019-12-19 10:19:00', '2019-12-19 10:51:00', 0, ''),
(186, 'event', 49, '2019-12-20 10:19:00', '2019-12-20 10:51:00', 0, ''),
(187, 'event', 50, '2019-12-18 10:21:00', '2019-12-18 10:53:00', 0, ''),
(188, 'event', 50, '2019-12-19 10:21:00', '2019-12-19 10:53:00', 0, ''),
(189, 'event', 50, '2019-12-22 10:21:00', '2019-12-22 10:53:00', 0, ''),
(193, 'event', 51, '2019-12-20 10:22:00', '2019-12-20 10:54:00', 0, ''),
(194, 'event', 51, '2019-12-21 10:22:00', '2019-12-21 10:54:00', 0, ''),
(195, 'event', 60, '2019-12-23 10:23:00', '2019-12-23 10:55:00', 0, ''),
(196, 'event', 60, '2019-12-24 10:23:00', '2019-12-24 10:55:00', 0, ''),
(197, 'event', 60, '2019-12-25 10:23:00', '2019-12-25 10:55:00', 0, ''),
(198, 'event', 67, '2020-01-01 10:24:00', '2020-01-01 10:56:00', 0, ''),
(199, 'event', 67, '2020-01-02 10:24:00', '2020-01-02 10:56:00', 0, ''),
(200, 'event', 67, '2020-01-03 10:24:00', '2020-01-03 10:56:00', 0, ''),
(203, 'event', 70, '2019-12-30 10:56:00', '2019-12-30 13:58:00', 0, ''),
(204, 'event', 70, '2020-01-05 10:26:00', '2020-01-05 10:58:00', 0, ''),
(215, 'event', 74, '2019-12-18 22:29:00', '2019-12-18 22:29:00', 0, ''),
(216, 'event', 77, '2020-01-04 10:31:00', '2020-01-04 17:03:00', 0, ''),
(217, 'event', 77, '2020-01-06 10:31:00', '2020-01-06 19:03:00', 0, ''),
(234, 'event', 78, '2019-12-19 20:46:00', '2020-01-23 21:18:00', 0, ''),
(309, 'event', 46, '2019-12-20 10:16:00', '2019-12-20 10:48:00', 0, ''),
(310, 'event', 46, '2019-12-20 07:47:11', '2019-12-20 07:47:11', 0, ''),
(441, 'event', 63, '2019-12-28 10:25:00', '2019-12-28 10:57:00', 0, ''),
(442, 'event', 63, '2019-12-29 10:25:00', '2019-12-29 10:57:00', 0, ''),
(445, 'event', 76, '2020-01-02 10:31:00', '2020-01-02 11:03:00', 0, ''),
(446, 'event', 76, '2019-12-20 10:31:00', '2019-12-20 11:03:00', 0, ''),
(447, 'event', 75, '2020-01-08 10:30:00', '2020-01-08 11:02:00', 0, ''),
(448, 'event', 75, '2020-01-17 10:30:00', '2020-01-17 11:02:00', 0, ''),
(456, 'event', 45, '2020-01-12 09:00:00', '2020-01-16 11:00:00', 0, ''),
(457, 'event', 45, '2020-01-08 15:00:00', '2020-01-31 17:00:00', 0, ''),
(458, 'event', 45, '2020-01-20 17:00:00', '2020-01-25 18:30:00', 0, ''),
(459, 'event', 45, '2019-12-20 09:09:51', '2019-12-20 09:09:51', 0, ''),
(460, 'event', 45, '2019-12-20 09:09:51', '2019-12-20 09:09:51', 0, ''),
(471, 'event', 47, '2019-12-11 13:30:00', '2019-12-14 15:00:00', 0, ''),
(472, 'event', 47, '2020-01-01 06:00:00', '2020-01-11 08:00:00', 0, ''),
(473, 'event', 47, '2020-01-16 07:00:00', '2020-01-20 08:30:00', 0, ''),
(474, 'event', 47, '2020-01-16 09:00:00', '2020-01-22 10:30:00', 0, ''),
(477, 'event', 73, '2020-01-06 07:28:00', '2020-01-06 08:00:00', 0, ''),
(478, 'event', 73, '2020-01-07 10:28:00', '2020-01-07 11:00:00', 0, ''),
(481, 'event', 72, '2020-01-18 10:00:00', '2020-01-21 11:00:00', 0, ''),
(482, 'event', 72, '2020-01-18 00:00:00', '2020-01-22 13:00:00', 0, '');

--
-- Đang đổ dữ liệu cho bảng `woobooking_service`
--

INSERT INTO `woobooking_service` (`id`, `category_id`, `duration`, `price`, `open_source_link_id`, `buffer_time_before`, `ordering`, `buffer_time_after`, `minimum_capacity`, `maximum_capacity`, `bringing_anyone`, `price_will_multiply`, `published`, `multiply_number`, `name`, `image`, `disable_payment_online`, `description`) VALUES
(45, 20, 1.5, 50, 6305, 0, 0, 1, 1, 5, 1, 0, 1, 1, 'Hatha Yoga', 'upload/services/images/image-cover-45-emp9.jpg', 1, 'dgfghg'),
(46, 20, 1, 60, 6304, 0, 0, 1, 3, 6, 1, 0, 1, 1, 'Vinyasa Yoga', 'upload/services/images/image-cover-46-active-beautiful-blond-866370-150x150.jpg', 0, 'ghhfh'),
(47, 20, 1.5, 45, 6306, 0, 0, 1, 5, 10, 1, 0, 1, 1, 'Bikram Yoga', 'upload/services/images/image-cover-47-justyn-warner-541680-unsplash-150x150.jpg', 0, 'dfgfghg'),
(48, 20, 2, 80, 6306, 0, 0, 1, 4, 9, 1, 0, 1, 1, 'Pregnant Yoga', 'upload/services/images/image-cover-48-abdomen-active-activity-396133-150x150.jpg', 0, 'bfhggjhhg'),
(49, 20, 1, 40, 6305, 0, 0, 1, 6, 12, 1, 0, 1, 1, 'Hot Yoga', 'upload/services/images/image-cover-49-adult-back-class-892677-150x150.jpg', 0, 'fgfghg'),
(50, 20, 1, 50, 6306, 0, 0, 1, 5, 10, 1, 0, 1, 1, 'Kundalini Yoga', 'upload/services/images/image-cover-50-yoga-1146277_1280-150x150.jpg', 0, 'sdffdggh'),
(51, 21, 1, 20, 6303, 0, 0, 0, 8, 16, 1, 0, 1, 1, 'Spinning Lessons', 'upload/services/images/image-cover-51-Barton-Haynes-Stationary-Bike-150x150.jpg', 0, 'uhhggffdh'),
(52, 21, 1.5, 50, 6306, 0, 0, 1, 3, 12, 1, 0, 1, 1, 'Cardio Box', 'upload/services/images/image-cover-52-boxing-fitness-girl-163351-150x150.jpg', 0, 'jfhgjkfhgjkf'),
(57, 21, 0, 30, 6302, 0, 0, 1, 6, 16, 1, 0, 1, 1, 'Core HIIT', 'upload/services/images/image-cover-57-adult-blur-close-up-241456-150x150.jpg', 1, 'hjhhghg'),
(58, 21, 1, 30, 6305, 0, 0, 1, 5, 16, 1, 0, 1, 1, 'Aerobic', 'upload/services/images/image-cover-58-active-aerobics-beautiful-903171-150x150.jpg', 1, 'bghgh'),
(59, 21, 1.5, 55, 6302, 0, 0, 1, 5, 10, 1, 0, 1, 1, 'Body Attack', 'upload/services/images/image-cover-59-adult-arms-beauty-917660-150x150.jpg', 1, 'ngffgdfgd'),
(60, 21, 1, 60, 6301, 0, 0, 1, 3, 8, 1, 0, 1, 1, 'Body Combat', 'upload/services/images/image-cover-60-athlete-barbell-blurred-background-700446-150x150.jpg', 1, 'dfgfdgfg'),
(61, 22, 2, 80, 6306, 0, 0, 1, 4, 8, 1, 0, 1, 1, 'MMA', 'upload/services/images/image-cover-61-action-adult-athlete-598664-150x150.jpg', 1, 'jk hvjhvcjkhvbjh'),
(62, 22, 1.5, 70, 6305, 0, 0, 1, 6, 12, 1, 0, 1, 1, 'Judo', 'upload/services/images/image-cover-62-Judo-game-HD-picture-04-150x150.jpg', 1, 'iofjdfjkdjf'),
(63, 22, 1.5, 70, 6304, 0, 0, 1, 4, 8, 1, 0, 1, 1, 'Jiu-Jitsu', 'upload/services/images/image-cover-63-download-150x150.jpg', 1, 'jklfhgjfgjhfj'),
(64, 22, 1, 50, 6303, 0, 0, 1, 5, 15, 1, 0, 1, 1, 'Karate', 'upload/services/images/image-cover-64-1103984-free-karate-wallpaper-1920x1080-mobile-150x150.jpg', 1, 'hguhjjh'),
(65, 22, 1.5, 55, 6306, 0, 0, 1, 4, 10, 1, 0, 1, 1, 'Taekwondo', 'upload/services/images/image-cover-65-taekwondo-1866283_960_720-150x150.jpg', 1, 'jdkhjhfgj'),
(66, 22, 1, 60, 6303, 0, 0, 1, 6, 12, 1, 0, 1, 1, 'Krav Maga', 'upload/services/images/image-cover-66-images-150x150.jpg', 1, 'gfhghjgh'),
(67, 23, 1.5, 35, 0, 0, 0, 1, 1, 1, 0, 0, 1, 0, '5x5', 'upload/services/images/image-cover-67-athlete-barbell-body-949126-150x150.jpg', 1, ''),
(68, 23, 1.5, 2, 0, 0, 0, 1, 2, 2, 1, 0, 1, 1, 'German Volume Training', 'upload/services/images/image-cover-68-athlete-barbell-body-931321-150x150.jpg', 1, ''),
(69, 23, 1, 35, 6305, 0, 0, 1, 1, 1, 0, 0, 1, 0, 'Upper/Lower Split Training', 'upload/services/images/image-cover-69-athlete-biceps-blonde-136410-e1527867386172-131x150.jpg', 1, 'dfdfdf'),
(70, 23, 2, 60, 6304, 0, 0, 1, 5, 15, 1, 0, 1, 0, 'Tactical Strength Training', 'upload/services/images/image-cover-70-active-athlete-barbell-703010-150x150.jpg', 1, 'sss'),
(71, 23, 1.5, 50, 6306, 0, 0, 1, 3, 6, 1, 0, 1, 1, 'FST-7', 'upload/services/images/image-cover-71-action-energy-active-adult-1032117-150x150.jpg', 1, 'jdjfdjfd'),
(72, 23, 2.5, 100, 6306, 0, 0, 1, 3, 6, 1, 0, 1, 1, 'Weight Training – Advanced', 'upload/services/images/image-cover-72-adult-body-bodybuilding-931324-150x150.jpg', 1, 'jfdjhhfjh'),
(94, 20, 1, 100, 6305, 0, 0, 1, 3, 6, 0, 0, 1, 0, 'abc', 'upload/services/images/image-cover-94-b8QqFbFBYoga3.png', 0, 'dutygfu');

--
-- Đang đổ dữ liệu cho bảng `woobooking_service_employee`
--

INSERT INTO `woobooking_service_employee` (`id`, `employee_id`, `service_id`, `enable_customize`, `price`, `minimum_capacity`, `maximum_capacity`, `description`) VALUES
(6, 2, 8, 0, 0, 0, 0, ''),
(7, 3, 8, 0, 0, 0, 0, ''),
(8, 4, 8, 0, 0, 0, 0, ''),
(9, 2, 26, 0, 0, 0, 0, ''),
(10, 3, 26, 0, 0, 0, 0, ''),
(11, 4, 26, 0, 0, 0, 0, ''),
(13, 2, 30, 0, 0, 0, 0, ''),
(63, 1, 32, 0, 0, 0, 0, ''),
(64, 3, 34, 0, 0, 0, 0, ''),
(66, 1, 41, 0, 0, 0, 0, ''),
(67, 1, 43, 0, 0, 0, 0, ''),
(69, 3, 38, 0, 0, 0, 0, ''),
(165, 15, 68, 0, 0, 0, 0, ''),
(169, 16, 67, 0, 0, 0, 0, ''),
(170, 3, 84, 0, 0, 0, 0, ''),
(171, 1, 85, 0, 0, 0, 0, ''),
(172, 3, 69, 0, 0, 0, 0, ''),
(173, 5, 69, 0, 0, 0, 0, ''),
(174, 1, 94, 0, 0, 0, 0, ''),
(175, 1, 86, 0, 0, 0, 0, ''),
(178, 15, 70, 0, 0, 0, 0, ''),
(179, 18, 70, 0, 0, 0, 0, ''),
(180, 16, 71, 0, 0, 0, 0, ''),
(181, 5, 72, 0, 0, 0, 0, ''),
(182, 8, 61, 0, 0, 0, 0, ''),
(183, 9, 62, 0, 0, 0, 0, ''),
(184, 9, 63, 0, 0, 0, 0, ''),
(185, 3, 64, 0, 0, 0, 0, ''),
(186, 3, 65, 0, 0, 0, 0, ''),
(187, 8, 66, 0, 0, 0, 0, ''),
(188, 6, 51, 0, 0, 0, 0, ''),
(189, 7, 52, 0, 0, 0, 0, ''),
(190, 19, 57, 0, 0, 0, 0, ''),
(191, 7, 58, 0, 0, 0, 0, ''),
(192, 6, 59, 0, 0, 0, 0, ''),
(193, 18, 59, 0, 0, 0, 0, ''),
(194, 19, 60, 0, 0, 0, 0, ''),
(195, 1, 45, 0, 0, 0, 0, ''),
(196, 10, 46, 0, 0, 0, 0, ''),
(197, 10, 47, 0, 0, 0, 0, ''),
(198, 1, 48, 0, 0, 0, 0, ''),
(199, 1, 49, 0, 0, 0, 0, ''),
(200, 17, 50, 0, 0, 0, 0, '');

--
-- Đang đổ dữ liệu cho bảng `woobooking_state`
--

INSERT INTO `woobooking_state` (`id`, `statename`, `country_id`, `statecode`, `code`, `published`, `ordering`, `image`) VALUES
(3, 'Ho Chi Minh', 242, '0', '21', 1, 0, ''),
(4, 'Ha Noi', 242, '0', '', 0, 0, ''),
(5, 'Da Nang', 242, '0', '', 1, 0, '');

--
-- Đang đổ dữ liệu cho bảng `woobooking_tag`
--

INSERT INTO `woobooking_tag` (`id`, `name`, `alias`, `description`) VALUES
(1, 'title1', 'title1', 'des title1'),
(2, 'sfdsf', '', ''),
(3, 'sdfs', '', ''),
(4, 'sdfsdf', '', ''),
(5, 'ssdfsd', '', ''),
(6, 'đfg', '', ''),
(7, 'ssdfd', '', ''),
(8, 'sdfds', '', ''),
(9, 'sdds', '', ''),
(14, '', '', ''),
(15, 'Yoga Workshop', '', ''),
(16, 'Free', '', ''),
(17, 'Outdoor', '', '');

--
-- Đang đổ dữ liệu cho bảng `woobooking_user`
--

INSERT INTO `woobooking_user` (`id`, `first_name`, `last_name`, `birthday`, `mobile`, `email`, `image`, `description`, `address`, `open_source_user_id`, `company`, `created`, `business`, `published`, `ordering`) VALUES
(1, 'Donald', 'MCkinney', '1992-12-31', 446954783, 'businessplan@gmail.com', 'upload/account/images/hinh-anh-avatar-96.jpg', 'Questa linea di ricerca, finalizzata allo studio degli ecosistemi marini pelagici e costieri, è incentrata sulla progettazione e la realizzazione di nuovi strumenti e sensori per la misura di variabili biologiche, ottiche, fisiche e chimiche dell\'acqua di mare, e di nuove piattaforme di misura per lo studio degli ecosistemi marini a differenti scale spaziali e temporali.', 'Santa monica bullevand', 0, NULL, '0000-00-00 00:00:00', 'JUNIOR UI/UX DEVERLOPER', 0, 0),
(2, 'admin_netbase', '', '0000-00-00', 0, 'hiep.v@netbasejsc.com', '', '', '', 32, NULL, '2018-03-23 03:18:36', NULL, 0, 0);

--
-- Đang đổ dữ liệu cho bảng `woobooking_view`
--

INSERT INTO `woobooking_view` (`id`, `name`, `image`, `alias`, `published`, `ordering`, `description`) VALUES
(1, 'cronjob', '', '', 0, 0, ''),
(2, 'db_appointments', '', '', 0, 0, ''),
(3, 'calendar', '', '', 1, 0, ''),
(4, 'appointment', '', '', 1, 0, ''),
(5, 'event', '', '', 0, 0, ''),
(6, 'package', '', '', 1, 0, ''),
(7, 'employee', '', '', 0, 0, ''),
(8, 'category', '', '', 1, 0, ''),
(9, 'service', '', '', 0, 0, ''),
(10, 'location', '', '', 0, 0, ''),
(11, 'wbcustomer', '', '', 1, 0, ''),
(12, 'finance', '', '', 0, 0, ''),
(13, 'coupon', '', '', 0, 0, ''),
(14, 'report', '', '', 0, 0, ''),
(15, 'invoice', '', '', 0, 0, ''),
(16, 'notification', '', '', 0, 0, ''),
(17, 'config', '', '', 1, 0, ''),
(18, 'permission', '', '', 0, 0, ''),
(19, 'usergroup', '', '', 0, 0, ''),
(20, 'user', '', '', 0, 0, ''),
(21, 'custom', '', '', 0, 0, ''),
(22, 'membership', '', '', 0, 0, ''),
(23, 'translate', '', '', 0, 0, ''),
(24, 'payment', '', '', 1, 0, ''),
(25, 'currency', '', '', 0, 0, ''),
(26, 'tool', '', '', 0, 0, '');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
