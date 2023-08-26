-- Adminer 4.6.3 MySQL dump

SET NAMES utf8;
SET time_zone = '+00:00';
SET foreign_key_checks = 0;
SET sql_mode = 'NO_AUTO_VALUE_ON_ZERO';

DROP TABLE IF EXISTS `activity`;
CREATE TABLE `activity` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `stream_id` int(11) NOT NULL,
  `str_type` int(11) DEFAULT '1',
  `user_ip` varchar(255) NOT NULL,
  `os` varchar(255) DEFAULT NULL,
  `country` varchar(255) DEFAULT NULL,
  `pid` int(11) NOT NULL,
  `date_start` varchar(255) NOT NULL,
  `date_end` varchar(500) DEFAULT NULL,
  `container` varchar(255) DEFAULT NULL,
  `last_ts` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `date_end` (`date_end`(255))
) ENGINE=InnoDB DEFAULT CHARSET=utf8;


DROP TABLE IF EXISTS `administrator`;
CREATE TABLE `administrator` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `password` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `create_date` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

INSERT INTO `administrator` (`id`, `username`, `password`, `create_date`) VALUES
(1,	'fox',	'fox',	'18-07-2022 13:42:12'),
(2,	'admin',	'foxromfox',	'13-08-2018 13:41:55'),
(3,'admin','foxromfox','12-07-2018 02:06:52');

DROP TABLE IF EXISTS `alert_videos`;
CREATE TABLE `alert_videos` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `channel_stop_video` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `stop_status` int(11) DEFAULT '0',
  `member_finish_video` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `buy_status` int(11) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

INSERT INTO `alert_videos` (`id`, `channel_stop_video`, `stop_status`, `member_finish_video`, `buy_status`) VALUES
(1,'/home/fox_codec/alert_videos/leadepro2.mp4',1,'/home/fox_codec/alert_videos/error.mp4',1),
(2,'/home/fox_codec/alert_videos/error.mp4',2,'/home/fox_codec/alert_videos/error.mp4',2);

DROP TABLE IF EXISTS `banned_country`;
CREATE TABLE `banned_country` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `ulke` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `ulke_adi` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;


DROP TABLE IF EXISTS `banned_ip`;
CREATE TABLE `banned_ip` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `ip` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;


SET NAMES utf8mb4;

DROP TABLE IF EXISTS `channels`;
CREATE TABLE `channels` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `old_id` int(11) DEFAULT NULL,
  `old_server_id` int(11) DEFAULT NULL,
  `ch_id` int(11) DEFAULT NULL,
  `channel_name` varchar(255) CHARACTER SET utf8 NOT NULL,
  `channel_logo` varchar(255) CHARACTER SET utf8 NOT NULL,
  `channel_path_1` varchar(500) CHARACTER SET utf8mb4 NOT NULL,
  `channel_path_2` varchar(500) CHARACTER SET utf8 NOT NULL,
  `channel_path_3` varchar(500) CHARACTER SET utf8 NOT NULL,
  `server_id` int(11) NOT NULL DEFAULT '1',
  `category_id` int(11) NOT NULL,
  `transcode_profiles` int(11) NOT NULL DEFAULT '0',
  `transcoding` int(11) NOT NULL DEFAULT '0',
  `sort` int(255) NOT NULL DEFAULT '0',
  `count` int(11) NOT NULL DEFAULT '0',
  `pid` int(11) NOT NULL DEFAULT '0',
  `stream_status` int(11) NOT NULL DEFAULT '0',
  `start_time` varchar(255) CHARACTER SET utf8 NOT NULL,
  `stop_time` varchar(255) CHARACTER SET utf8 NOT NULL,
  `pid_control` int(11) NOT NULL DEFAULT '0',
  `pid_control_ok` int(11) NOT NULL DEFAULT '0',
  `control_count` int(11) NOT NULL DEFAULT '0',
  `output` varchar(255) CHARACTER SET utf8 NOT NULL,
  `user_agent` varchar(255) NOT NULL,
  `rtmp_username` varchar(255) CHARACTER SET utf8 NOT NULL,
  `rtmp_password` varchar(255) CHARACTER SET utf8 NOT NULL,
  `hls_username` varchar(255) CHARACTER SET utf8 NOT NULL,
  `hls_password` varchar(255) CHARACTER SET utf8 NOT NULL,
  `direct_stream` int(11) NOT NULL DEFAULT '0',
  `sleep_mod` int(255) NOT NULL DEFAULT '0',
  `channel_type` int(11) NOT NULL DEFAULT '1',
  `channel_id` varchar(255) CHARACTER SET utf8 NOT NULL,
  `epg_id` int(11) NOT NULL DEFAULT '0',
  `epg_lang` varchar(255) CHARACTER SET utf8 NOT NULL,
  `working_channel` int(11) NOT NULL DEFAULT '1',
  `restream` int(11) NOT NULL DEFAULT '0',
  `restream_status` int(11) NOT NULL DEFAULT '0',
  `vod_channel_name` varchar(255) CHARACTER SET utf8 NOT NULL,
  `vod_channel_url` varchar(255) CHARACTER SET utf8 NOT NULL,
  `test_pid` int(11) NOT NULL,
  `test_status` int(11) NOT NULL DEFAULT '0',
  `playlist_status` int(11) NOT NULL DEFAULT '0',
  `channel_directory` varchar(255) CHARACTER SET utf8 NOT NULL,
  `ffmpeg_command` varchar(500) CHARACTER SET utf8 DEFAULT '0',
  `sira` int(255) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`),
  UNIQUE KEY `channel_id` (`id`) USING BTREE,
  KEY `server_id` (`server_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

INSERT INTO `channels` (`id`, `old_id`, `old_server_id`, `ch_id`, `channel_name`, `channel_logo`, `channel_path_1`, `channel_path_2`, `channel_path_3`, `server_id`, `category_id`, `transcode_profiles`, `transcoding`, `sort`, `count`, `pid`, `stream_status`, `start_time`, `stop_time`, `pid_control`, `pid_control_ok`, `control_count`, `output`, `user_agent`, `rtmp_username`, `rtmp_password`, `hls_username`, `hls_password`, `direct_stream`, `sleep_mod`, `channel_type`, `channel_id`, `epg_id`, `epg_lang`, `working_channel`, `restream`, `restream_status`, `vod_channel_name`, `vod_channel_url`, `test_pid`, `test_status`, `playlist_status`, `channel_directory`, `ffmpeg_command`, `sira`) VALUES
(1,1,1,1,'M20 TV','http://192.168.1.20:86/media/raid0/storage/picons/rds-logos/m2.jpg','http://m2otv-lh.akamaihd.net/i/m2oTv_1@186074/index_600_av-p.m3u8','','',1,5,0,0,17,3,0,0,'','',0,0,0,'hls','','','','','',0,0,1,'',0,'',1,0,0,'','',0,0,0,'','',1);

DROP TABLE IF EXISTS `channels_map`;
CREATE TABLE `channels_map` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `ch_id` int(11) NOT NULL,
  `map_wr` varchar(500) NOT NULL,
  `codec_type` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

INSERT INTO `channels_map` (`id`, `ch_id`, `map_wr`, `codec_type`) VALUES
(1,	624,	'-map 0:0',	'video'),
(2,	624,	'-map 0:1',	'audio'),
(3,	3002,	'-map 0:0',	'video'),
(4,	3211,	'-map 0:4',	'video'),
(5,	3274,	'-map 0:0',	'data'),
(6,	3303,	'-map 0:0',	'data'),
(7,	15,	'-map 0:0',	'video');

DROP TABLE IF EXISTS `channel_category`;
CREATE TABLE `channel_category` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `categoria_pai` int(11) NOT NULL DEFAULT '0',
  `category_name` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `category_abbreviation` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `sort` int(11) DEFAULT NULL COMMENT '0',
  `tipo` int(2) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

INSERT INTO `channel_category` (`id`, `categoria_pai`, `category_name`, `category_abbreviation`, `sort`, `tipo`) VALUES
(1,	0,	'*CANALE',	'',	NULL,	0),
(2,	0,	'*FILME',	'',	NULL,	1),
(3,	0,	'*SERIE',	'',	NULL,	2),
(4,	0,	'*RADIO',	'',	NULL,	3),
(5,	1,	'ROMANIA',	'',	1,	0),
(6,	2,	'FILME.ROM',	'',	2,	1),
(7,	3,	'SERIALE.ROM',	'',	3,	2),
(8,	4,	'RADIO.ON',	'',	4,	3);

DROP TABLE IF EXISTS `countriess`;
CREATE TABLE `countriess` (
  `id` int(255) NOT NULL AUTO_INCREMENT,
  `AC` varchar(255) DEFAULT NULL,
  `country` varchar(255) DEFAULT NULL,
  `count` int(11) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

INSERT INTO `countriess` (`id`, `AC`, `country`, `count`) VALUES
(1,	'AC',	'Ascension Island',	0),
(2,	'AD',	'Andorra',	0),
(3,	'AE',	'United Arab Emirates',	0),
(4,	'AF',	'Afghanistan',	0),
(5,	'AG',	'Antigua and Barbuda',	0),
(6,	'AI',	'Anguilla',	0),
(7,	'AL',	'Albania',	0),
(8,	'AM',	'Armenia',	0),
(9,	'AN',	'Netherlands Antilles',	0),
(10,	'AO',	'Angola',	0),
(11,	'AQ',	'Antarctica',	0),
(12,	'AR',	'Argentina',	0),
(13,	'AS',	'American Samoa',	0),
(14,	'AT',	'Austria',	0),
(15,	'AU',	'Australia',	0),
(16,	'AW',	'Aruba',	0),
(17,	'AX',	'Ã?â?¦land Islands',	0),
(18,	'AZ',	'Azerbaijan',	0),
(19,	'BA',	'Bosnia and Herzegovina',	0),
(20,	'BB',	'Barbados',	0),
(21,	'BD',	'Bangladesh',	0),
(22,	'BE',	'Belgium',	0),
(23,	'BF',	'Burkina Faso',	0),
(24,	'BG',	'Bulgaria',	0),
(25,	'BH',	'Bahrain',	0),
(26,	'BI',	'Burundi',	0),
(27,	'BJ',	'Benin',	0),
(28,	'BL',	'Saint BarthÃ?Â©lemy',	0),
(29,	'BM',	'Bermuda',	0),
(30,	'BN',	'Brunei Darussalam',	0),
(31,	'BO',	'Bolivia',	0),
(32,	'BR',	'Brazil',	0),
(33,	'BS',	'Bahamas',	0),
(34,	'BT',	'Bhutan',	0),
(35,	'BV',	'Bouvet Island',	0),
(36,	'BW',	'Botswana',	0),
(37,	'BY',	'Belarus',	0),
(38,	'BZ',	'Belize',	0),
(39,	'CA',	'Canada',	0),
(40,	'CC',	'Cocos (Keeling) Islands',	0),
(41,	'CD',	'Congo, Democratic Republic of the',	0),
(42,	'CF',	'Central African Republic',	0),
(43,	'CG',	'Congo, Republic of the',	0),
(44,	'CH',	'Switzerland',	0),
(45,	'CI',	'CÃ?Â´te d\'Ivoire',	0),
(46,	'CK',	'Cook Islands',	0),
(47,	'CL',	'Chile',	0),
(48,	'CM',	'Cameroon',	0),
(49,	'CN',	'China',	0),
(50,	'CO',	'Colombia',	0),
(51,	'CR',	'Costa Rica',	0),
(52,	'CU',	'Cuba',	0),
(53,	'CV',	'Cape Verde',	0),
(54,	'CX',	'Christmas Island',	0),
(55,	'CY',	'Cyprus',	0),
(56,	'CZ',	'Czech Republic',	0),
(57,	'DE',	'Germany',	0),
(58,	'DJ',	'Djibouti',	0),
(59,	'DK',	'Denmark',	0),
(60,	'DM',	'Dominica',	0),
(61,	'DO',	'Dominican Republic',	0),
(62,	'DZ',	'Algeria',	0),
(63,	'EC',	'Ecuador',	0),
(64,	'EE',	'Estonia',	0),
(65,	'EG',	'Egypt',	0),
(66,	'EH',	'Western Sahara',	0),
(67,	'ER',	'Eritrea',	0),
(68,	'ES',	'Spain',	0),
(69,	'ET',	'Ethiopia',	0),
(70,	'FI',	'Finland',	0),
(71,	'FJ',	'Fiji',	0),
(72,	'FK',	'Falkland Islands (Malvinas)',	0),
(73,	'FM',	'Federated States of Micronesia',	0),
(74,	'FO',	'Faroe Islands',	0),
(75,	'FR',	'France',	0),
(76,	'GA',	'Gabon',	0),
(77,	'GB',	'United Kingdom',	0),
(78,	'GD',	'Grenada',	0),
(79,	'GE',	'Georgia',	0),
(80,	'GF',	'French Guiana',	0),
(81,	'GG',	'Guernsey',	0),
(82,	'GH',	'Ghana',	0),
(83,	'GI',	'Gibraltar',	0),
(84,	'GL',	'Greenland',	0),
(85,	'GM',	'Gambia',	0),
(86,	'GN',	'Guinea',	0),
(87,	'GP',	'Guadeloupe',	0),
(88,	'GQ',	'Equatorial Guinea',	0),
(89,	'GR',	'Greece',	0),
(90,	'GS',	'South Georgia and the South Sandwich Islands',	0),
(91,	'GT',	'Guatemala',	0),
(92,	'GU',	'Guam',	0),
(93,	'GW',	'Guinea-Bissau',	0),
(94,	'GY',	'Guyana',	0),
(95,	'HK',	'Hong Kong',	0),
(96,	'HM',	'Heard Island and McDonald Islands',	0),
(97,	'HN',	'Honduras',	0),
(98,	'HR',	'Croatia',	0),
(99,	'HT',	'Haiti',	0),
(100,	'HU',	'Hungary',	0),
(101,	'ID',	'Indonesia',	0),
(102,	'IE',	'Ireland',	0),
(103,	'IL',	'Israel',	0),
(104,	'IM',	'Isle of Man',	0),
(105,	'IN',	'India',	0),
(106,	'IO',	'British Indian Ocean Territory',	0),
(107,	'IQ',	'Iraq',	0),
(108,	'IR',	'Iran',	0),
(109,	'IS',	'Iceland',	0),
(110,	'IT',	'Italy',	0),
(111,	'JE',	'Jersey',	0),
(112,	'JM',	'Jamaica',	0),
(113,	'JO',	'Jordan',	0),
(114,	'JP',	'Japan',	0),
(115,	'KE',	'Kenya',	0),
(116,	'KG',	'Kyrgyzstan',	0),
(117,	'KH',	'Cambodia',	0),
(118,	'KI',	'Kiribati',	0),
(119,	'KM',	'Comoros',	0),
(120,	'KN',	'Saint Kitts and Nevis',	0),
(121,	'KP',	'North Korea',	0),
(122,	'KR',	'South Korea',	0),
(123,	'KW',	'Kuwait',	0),
(124,	'KY',	'Cayman Islands',	0),
(125,	'KZ',	'Kazakhstan',	0),
(126,	'LA',	'Laos',	0),
(127,	'LB',	'Lebanon',	0),
(128,	'LC',	'Saint Lucia',	0),
(129,	'LI',	'Liechtenstein',	0),
(130,	'LK',	'Sri Lanka',	0),
(131,	'LR',	'Liberia',	0),
(132,	'LS',	'Lesotho',	0),
(133,	'LT',	'Lithuania',	0),
(134,	'LU',	'Luxembourg',	0),
(135,	'LV',	'Latvia',	0),
(136,	'LY',	'Libyan Arab Jamahiriya',	0),
(137,	'MA',	'Morocco',	0),
(138,	'MC',	'Monaco',	0),
(139,	'MD',	'Moldova',	0),
(140,	'ME',	'Montenegro',	0),
(141,	'MF',	'Saint Martin',	0),
(142,	'MG',	'Madagascar',	0),
(143,	'MH',	'Marshall Islands',	0),
(144,	'MK',	'Macedonia',	0),
(145,	'ML',	'Mali',	0),
(146,	'MM',	'Myanmar',	0),
(147,	'MN',	'Mongolia',	0),
(148,	'MO',	'Macao',	0),
(149,	'MP',	'Northern Mariana Islands',	0),
(150,	'MQ',	'Martinique',	0),
(151,	'MR',	'Mauritania',	0),
(152,	'MS',	'Montserrat',	0),
(153,	'MT',	'Malta',	0),
(154,	'MU',	'Mauritius',	0),
(155,	'MV',	'Maldives',	0),
(156,	'MW',	'Malawi',	0),
(157,	'MX',	'Mexico',	0),
(158,	'MY',	'Malaysia',	0),
(159,	'MZ',	'Mozambique',	0),
(160,	'NA',	'Namibia',	0),
(161,	'NC',	'New Caledonia',	0),
(162,	'NE',	'Niger',	0),
(163,	'NF',	'Norfolk Island',	0),
(164,	'NG',	'Nigeria',	0),
(165,	'NI',	'Nicaragua',	0),
(166,	'NL',	'Netherlands',	0),
(167,	'NO',	'Norway',	0),
(168,	'NP',	'Nepal',	0),
(169,	'NR',	'Nauru',	0),
(170,	'NU',	'Niue',	0),
(171,	'NZ',	'New Zealand',	0),
(172,	'OM',	'Oman',	0),
(173,	'PA',	'Panama',	0),
(174,	'PE',	'Peru',	0),
(175,	'PF',	'French Polynesia',	0),
(176,	'PG',	'Papua New Guinea',	0),
(177,	'PH',	'Philippines',	0),
(178,	'PK',	'Pakistan',	0),
(179,	'PL',	'Poland',	0),
(180,	'PM',	'Saint Pierre and Miquelon',	0),
(181,	'PN',	'Pitcairn Islands',	0),
(182,	'PR',	'Puerto Rico',	0),
(183,	'PS',	'Palestinian Territory',	0),
(184,	'PT',	'Portugal',	0),
(185,	'PW',	'Palau',	0),
(186,	'PY',	'Paraguay',	0),
(187,	'QA',	'Qatar',	0),
(188,	'RE',	'RÃ?Â©union',	0),
(189,	'RO',	'Romania',	5598),
(190,	'RS',	'Serbia',	0),
(191,	'RU',	'Russian Federation',	0),
(192,	'RW',	'Rwanda',	0),
(193,	'SA',	'Saudi Arabia',	0),
(194,	'SB',	'Solomon Islands',	0),
(195,	'SC',	'Seychelles',	0),
(196,	'SD',	'Sudan',	0),
(197,	'SE',	'Sweden',	0),
(198,	'SG',	'Singapore',	0),
(199,	'SH',	'Saint Helena',	0),
(200,	'SI',	'Slovenia',	0),
(201,	'SJ',	'Svalbard and Jan Mayen',	0),
(202,	'SK',	'Slovakia',	0),
(203,	'SL',	'Sierra Leone',	0),
(204,	'SM',	'San Marino',	0),
(205,	'SN',	'Senegal',	0),
(206,	'SO',	'Somalia',	0),
(207,	'SR',	'Suriname',	0),
(208,	'ST',	'SÃ?Â£o TomÃ?Â© and PrÃ?Â­ncipe',	0),
(209,	'SV',	'El Salvador',	0),
(210,	'SY',	'Syrian Arab Republic',	0),
(211,	'SZ',	'Swaziland',	0),
(212,	'TC',	'Turks and Caicos Islands',	0),
(213,	'TD',	'Chad',	0),
(214,	'TF',	'French Southern and Antarctic Lands',	0),
(215,	'TG',	'Togo',	0),
(216,	'TH',	'Thailand',	0),
(217,	'TJ',	'Tajikistan',	0),
(218,	'TK',	'Tokelau',	0),
(219,	'TL',	'Timor-Leste',	0),
(220,	'TM',	'Turkmenistan',	0),
(221,	'TN',	'Tunisia',	0),
(222,	'TO',	'Tonga',	0),
(223,	'TR',	'Turkey',	0),
(224,	'TT',	'Trinidad and Tobago',	0),
(225,	'TV',	'Tuvalu',	0),
(226,	'TW',	'Taiwan',	0),
(227,	'TZ',	'Tanzania',	0),
(228,	'UA',	'Ukraine',	0),
(229,	'UG',	'Uganda',	0),
(230,	'UM',	'United States Minor Outlying Islands',	0),
(231,	'US',	'United States',	0),
(232,	'UY',	'Uruguay',	0),
(233,	'UZ',	'Uzbekistan',	0),
(234,	'VA',	'Vatican',	0),
(235,	'VC',	'Saint Vincent and the Grenadines',	0),
(236,	'VE',	'Venezuela',	0),
(237,	'VG',	'Virgin Islands, British',	0),
(238,	'VI',	'Virgin Islands, U.S.',	0),
(239,	'VN',	'Viet Nam',	0),
(240,	'VU',	'Vanuatu',	0),
(241,	'WF',	'Wallis and Futuna',	0),
(242,	'WS',	'Samoa',	0),
(243,	'YE',	'Yemen',	0),
(244,	'YT',	'Mayotte',	0),
(245,	'ZA',	'South Africa',	0),
(246,	'ZM',	'Zambia',	0),
(247,	'ZW',	'Zimbabwe',	0);

DROP TABLE IF EXISTS `email_settings`;
CREATE TABLE `email_settings` (
  `id` int(11) NOT NULL,
  `email` varchar(255) DEFAULT NULL,
  `pass` varchar(255) DEFAULT NULL,
  `smtp` varchar(255) DEFAULT NULL,
  `smtp_port` varchar(255) DEFAULT NULL,
  `secure` varchar(255) DEFAULT NULL,
  `api_key` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

INSERT INTO `email_settings` (`id`, `email`, `pass`, `smtp`, `smtp_port`, `secure`, `api_key`) VALUES
(1,	'iptvtest54@gmail.com',	'test1603',	'smtp.gmail.com',	'465',	'ssl',	'API_xOnaq5mkTzs2434HKXS889yqAxDyVgCc ');

DROP TABLE IF EXISTS `epg`;
CREATE TABLE `epg` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `epg_name` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `epg_path` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `epg_file` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `date` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;


DROP TABLE IF EXISTS `epg_data`;
CREATE TABLE `epg_data` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `epg_id` int(11) NOT NULL,
  `title` varchar(255) CHARACTER SET utf8 NOT NULL,
  `start` varchar(255) NOT NULL,
  `end` varchar(255) NOT NULL,
  `description` text CHARACTER SET utf8 NOT NULL,
  `channel_id` varchar(50) CHARACTER SET utf8 NOT NULL,
  `channel_no` int(10) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `epg_id` (`epg_id`),
  KEY `lang` (`channel_no`),
  KEY `channel_id` (`channel_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;


DROP TABLE IF EXISTS `movie_vod`;
CREATE TABLE `movie_vod` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `old_id` int(11) DEFAULT NULL,
  `old_server_id` int(11) DEFAULT NULL,
  `movie_name` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `category_id` int(11) DEFAULT NULL,
  `server_id` int(11) DEFAULT '1',
  `movie_image` varchar(255) DEFAULT NULL,
  `score` varchar(255) DEFAULT NULL,
  `years` varchar(255) DEFAULT NULL,
  `movie_path` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `movie_path_url` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `movie_type` int(11) DEFAULT NULL,
  `movie_format` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `movie_size` varchar(255) CHARACTER SET utf8 DEFAULT '0',
  `movie_pid` int(11) DEFAULT '0',
  `download_status` int(11) DEFAULT '0',
  `download_ok` int(11) DEFAULT '0',
  `sort` int(255) DEFAULT '0',
  `status` int(11) DEFAULT '0',
  `movie_video_codec` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `movie_auido_codec` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `video_id` int(11) DEFAULT NULL,
  `token` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;


DROP TABLE IF EXISTS `packets`;
CREATE TABLE `packets` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `packet_name` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `packet_type` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `duration_type` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `time` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `cost_of_credit` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `category_id` varchar(500) CHARACTER SET utf8 DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

INSERT INTO `packets` (`id`, `packet_name`, `packet_type`, `duration_type`, `time`, `cost_of_credit`, `category_id`) VALUES
(1,	'Pack1',	'2',	'1',	' days',	'10',	'1,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31,32,33,34,35,36,37,38,39,40,41,42,43,44,45,46,47,48,49,50,51,52,53,54,55,56,57,58,59,60,61,62,63,64,65,66,67,68,69,70,71,72,73,74,75,76,77,78,79,80,81,82,83,84,85,86,87,88,89,90,91,92,93,94,95,96,97,98,99,100,101,102,103,104,105,106,107,108,109,110,111,112,113,114,115,116,117,118,119'),
(2,	'Pack2',	'2',	'1',	'months',	'30',	'1,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31,32,33,34,35,36,37,38,39,40,41,42,43,44,45,46,47,48,49,50,51,52,53,54,55,56,57,58,59,60,61,62,63,64,65,66,67,68,69,70,71,72,73,74,75,76,77,78,79,80,81,82,83,84,85,86,87,88,89,90,91,92,93,94,95,96,97,98,99,100,101,102,103,104,105,106,107,108,109,110,111,112,113,114,115,116,117,118,119'),
(3,	'Pack3',	'2',	'1',	' years',	'50',	'1,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31,32,33,34,35,36,37,38,39,40,41,42,43,44,45,46,47,48,49,50,51,52,53,54,55,56,57,58,59,60,61,62,63,64,65,66,67,68,69,70,71,72,73,74,75,76,77,78,79,80,81,82,83,84,85,86,87,88,89,90,91,92,93,94,95,96,97,98,99,100,101,102,103,104,105,106,107,108,109,110,111,112,113,114,115,116,117,118,119');

DROP TABLE IF EXISTS `paineis`;
CREATE TABLE `paineis` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user` varchar(255) NOT NULL,
  `pass` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

INSERT INTO `paineis` (`id`, `user`, `pass`) VALUES
(1,	'uu',	'pp');

DROP TABLE IF EXISTS `reseller`;
CREATE TABLE `reseller` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `password` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `email` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `credit` varchar(255) CHARACTER SET utf8 DEFAULT '0',
  `note` varchar(500) CHARACTER SET utf8 DEFAULT NULL,
  `status` int(11) DEFAULT '1',
  `alert_message` varchar(500) CHARACTER SET utf8 DEFAULT NULL,
  `credit_number` int(11) DEFAULT '0',
  `message_number` int(11) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;


DROP TABLE IF EXISTS `reseller_message`;
CREATE TABLE `reseller_message` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `message_head` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `message` varchar(1000) CHARACTER SET utf8 DEFAULT NULL,
  `date` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `status` int(11) DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;


DROP TABLE IF EXISTS `series_temporadas`;
CREATE TABLE `series_temporadas` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `category_id` int(11) DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `description` text CHARACTER SET utf8,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

INSERT INTO `series_temporadas` (`id`, `name`, `category_id`, `image`, `description`) VALUES
(1,	'temporada',	7,	'1542484166_Grimm--696x391.jpg',	'hhhh');

DROP TABLE IF EXISTS `series_vod`;
CREATE TABLE `series_vod` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `old_id` int(11) DEFAULT NULL,
  `old_server_id` int(11) DEFAULT NULL,
  `movie_name` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `category_id` int(11) DEFAULT NULL,
  `temporada_id` int(11) DEFAULT NULL,
  `server_id` int(11) DEFAULT '1',
  `movie_image` varchar(255) DEFAULT NULL,
  `score` varchar(255) DEFAULT NULL,
  `years` varchar(255) DEFAULT NULL,
  `movie_path` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `movie_path_url` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `movie_type` int(11) DEFAULT NULL,
  `movie_format` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `movie_size` varchar(255) CHARACTER SET utf8 DEFAULT '0',
  `movie_pid` int(11) DEFAULT '0',
  `download_status` int(11) DEFAULT '0',
  `download_ok` int(11) DEFAULT '0',
  `sort` int(255) DEFAULT '0',
  `status` int(11) DEFAULT '0',
  `movie_video_codec` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `movie_auido_codec` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `video_id` int(11) DEFAULT NULL,
  `token` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;


DROP TABLE IF EXISTS `server`;
CREATE TABLE `server` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `server_name` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `server_ip` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `server_port` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `server_dns_name` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `network` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `server_status` int(11) DEFAULT '1',
  `rtmp_port` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `cron_period` varchar(255) CHARACTER SET utf8 DEFAULT '',
  `cron_dom` varchar(255) CHARACTER SET utf8 DEFAULT '',
  `cron_month` varchar(255) CHARACTER SET utf8 DEFAULT '',
  `cron_mins` varchar(255) CHARACTER SET utf8 DEFAULT '',
  `cron_dow` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `cron_time_hour` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `cron_time_min` varchar(255) DEFAULT NULL,
  `cron_status` int(11) DEFAULT '0',
  `total_reset` int(11) DEFAULT '0',
  `cron_job` varchar(255) DEFAULT NULL,
  `ssh_username` varchar(255) DEFAULT NULL,
  `ssh_password` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `mysql_password` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `pid` int(11) DEFAULT NULL,
  `start` int(11) DEFAULT '0',
  `start_time` varchar(255) DEFAULT NULL,
  `finish_time` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `install_status` int(11) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

INSERT INTO `server` (`id`, `server_name`, `server_ip`, `server_port`, `server_dns_name`, `network`, `server_status`, `rtmp_port`, `cron_period`, `cron_dom`, `cron_month`, `cron_mins`, `cron_dow`, `cron_time_hour`, `cron_time_min`, `cron_status`, `total_reset`, `cron_job`, `ssh_username`, `ssh_password`, `mysql_password`, `pid`, `start`, `start_time`, `finish_time`, `install_status`) VALUES
(1,'CMS','127.0.0.1','9990','127.0.0.1','eth0',1,'1935','day','1','1','0','0','10','4',1,0,'4 10 * * *',NULL,NULL,NULL,NULL,0,NULL,NULL,1),
(2,'Balance','127.0.0.1','9990','127.0.0.1','eth0',1,'1935','day','1','1','0','0','10','4',1,0,'4 10 * * *',NULL,NULL,NULL,NULL,0,NULL,NULL,2);

DROP TABLE IF EXISTS `settings`;
CREATE TABLE `settings` (
  `id` int(11) NOT NULL,
  `company_name` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `company_phone` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `company_email` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `web` varchar(255) DEFAULT NULL,
  `logo` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `licanse` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `licanse2` varchar(255) DEFAULT NULL,
  `ffmpeg_cpu` int(11) DEFAULT '0',
  `default_timezone` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `book_name` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `user_agent` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `auto_transcoding` int(255) DEFAULT '0',
  `http_username` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `http_password` varchar(255) DEFAULT NULL,
  `http_status` int(11) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

INSERT INTO `settings` (`id`, `company_name`, `company_phone`, `company_email`, `web`, `logo`, `licanse`, `licanse2`, `ffmpeg_cpu`, `default_timezone`, `book_name`, `user_agent`, `auto_transcoding`, `http_username`, `http_password`, `http_status`) VALUES
(1,	'ADMIN PAINEL',	'',	'',	'top',	'series_icon.png',	'FOX-CODEC95D8C-2EBE5-44976-8BFEC-75FB9-35B6A-3A267-B1931-2018',	'FOXA6-FFE29-6CBC5-085CA-5447F-5B41F-0DC7A-2018',	0,	'Romania',	'',	'Xtream-Codes IPTV Panel Pro',	0,	'proip',	'Bcqg6NAG',	1);

DROP TABLE IF EXISTS `transcode_videos`;
CREATE TABLE `transcode_videos` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `video_name` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `channel_id` int(11) DEFAULT NULL,
  `file_path` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `video_category` int(11) DEFAULT NULL,
  `video_screen` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `video_link` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `video_bitrate` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `font_color` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `font_size` double DEFAULT '25',
  `video_time` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `logo_direction` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `subtitle` varchar(500) CHARACTER SET utf8 DEFAULT NULL,
  `logo_x` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `logo_y` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `logo_width` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `logo_height` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `video_text` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `text_direction` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `text_x` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `text_y` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `live_url` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `test_pid` int(11) DEFAULT '0',
  `status` int(11) DEFAULT '0',
  `test_status` int(11) DEFAULT '0',
  `transcoding_start` int(11) DEFAULT '0',
  `transcoding_finish` int(11) DEFAULT '0',
  `sort` int(11) DEFAULT '0',
  `pid` int(11) DEFAULT '0',
  `video_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;


DROP TABLE IF EXISTS `transcoding_manuel_profiles`;
CREATE TABLE `transcoding_manuel_profiles` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `video_codec` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `auido_codec` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `preset` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `profile` varchar(255) CHARACTER SET utf8 DEFAULT '0',
  `user_agent` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `video_bitrate` int(255) DEFAULT '0',
  `auido_bitrate` int(255) DEFAULT '0',
  `max_bitrate` int(255) DEFAULT '0',
  `min_bitrate` int(255) DEFAULT '0',
  `bufsize` int(255) DEFAULT '0',
  `crf` varchar(255) DEFAULT NULL,
  `aspec` varchar(255) CHARACTER SET utf8 DEFAULT '0',
  `frame_rate` int(255) DEFAULT '0',
  `screen` varchar(255) DEFAULT '0',
  `ar` int(255) DEFAULT '0',
  `auido_channel` int(255) DEFAULT '0',
  `threads` int(255) DEFAULT '0',
  `ch_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

INSERT INTO `transcoding_manuel_profiles` (`id`, `video_codec`, `auido_codec`, `preset`, `profile`, `user_agent`, `video_bitrate`, `auido_bitrate`, `max_bitrate`, `min_bitrate`, `bufsize`, `crf`, `aspec`, `frame_rate`, `screen`, `ar`, `auido_channel`, `threads`, `ch_id`) VALUES
(1,'h264','copy','0','0','Xtream-Codes IPTV Panel Pro',0,0,0,0,0,'','0',0,'0',0,0,0,1),
(2,'h264','aac','0','0','Xtream-Codes IPTV Panel Pro',0,0,0,0,0,'','0',0,'0',0,0,0,2),
(3,'h265','copy','0','0','Xtream-Codes IPTV Panel Pro',0,0,0,0,0,'','0',0,'0',0,0,0,3),
(4,'h265','aac','0','0','Xtream-Codes IPTV Panel Pro',0,0,0,0,0,'','0',0,'0',0,0,0,4),
(5,'hevc','copy','0','0','Xtream-Codes IPTV Panel Pro',0,0,0,0,0,'','0',0,'0',0,0,0,5),
(6,'hevc','aac','0','0','Xtream-Codes IPTV Panel Pro',0,0,0,0,0,'','0',0,'0',0,0,0,6),
(7,'ffhevc','copy','0','0','Xtream-Codes IPTV Panel Pro',0,0,0,0,0,'','0',0,'0',0,0,0,7),
(8,'ffhevc','aac','0','0','Xtream-Codes IPTV Panel Pro',0,0,0,0,0,'','0',0,'0',0,0,0,8),
(9,'copy','copy','0','0','Xtream-Codes IPTV Panel Pro',0,0,0,0,0,'','0',0,'0',0,0,0,9),
(10,'copy','copy','0','0','Xtream-Codes IPTV Panel Pro',0,0,0,0,0,'','0',0,'0',0,0,0,10);

DROP TABLE IF EXISTS `users`;
CREATE TABLE `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `password` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `date_end` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `max_connection` int(11) DEFAULT '1',
  `os` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `country` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `ip_adress` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `channel_id` int(11) DEFAULT NULL,
  `channel_category` varchar(500) CHARACTER SET utf8 DEFAULT NULL,
  `note` varchar(500) CHARACTER SET utf8 DEFAULT NULL,
  `ban_status` int(11) DEFAULT '0',
  `reseller_id` int(11) DEFAULT '0',
  `packet_id` int(11) DEFAULT '0',
  `create_date` datetime DEFAULT NULL,
  `cancel` int(11) DEFAULT '0',
  `cancel_message` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `test` int(255) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;


DROP TABLE IF EXISTS `user_agent`;
CREATE TABLE `user_agent` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_agent` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;


DROP TABLE IF EXISTS `videos`;
CREATE TABLE `videos` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `video_name` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `server_id` int(11) DEFAULT '1',
  `video_url` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `category_id` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

INSERT INTO `videos` VALUES 
(7,'valentin-nica-iubita-mea',1,'/home/videos/valentin-nica-iubita-mea.mp4','1'),
(8,'Marcela Barbos - Taci, te rog',1,'/home/videos/Marcela Barbos - Taci, te rog!.mkv','1'),
(9,'kapushon-feat-smally-home',1,'/home/videos/kapushon-feat-smally-home.mkv','1');


DROP TABLE IF EXISTS `videos_downloader`;
CREATE TABLE `videos_downloader` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `video_name` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `category_id` int(11) DEFAULT NULL,
  `file_path` varchar(255) DEFAULT NULL,
  `video_url` varchar(255) DEFAULT NULL,
  `pid` int(11) DEFAULT '0',
  `download_type` int(11) DEFAULT '0',
  `status` int(11) DEFAULT '0',
  `download_start` int(11) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

INSERT INTO `videos_downloader` VALUES 
(18,'rota-dowland',1,'/home/videos/rota-dowland.MKV','http://jcdn26.micetop.us/httpdelivery/sex/antigos/nc/L/ROTADEFUGA2LEG.mp4',0,2,2,2),
(19,'testeww',1,'/home/videos/testeww.MKV','http://proip:Bcqg6NAG@https://goo.gl/MaAqch',0,1,2,2),
(21,'34',1,'/home/videos/34.MKV','http://proip:Bcqg6NAG@https://goo.gl/wgserx',0,1,2,2),
(22,'33w',1,'/home/videos/33w.MKV','http://proip:Bcqg6NAG@https://r5---sn-q4flrnez.googlevideo.com/videoplayback?id=6f27fafa26d62354&itag=22&source=picasa&begin=0&requiressl=yes&pl=24&sc=yes&ei=VOVDW_2yLsac-AXd4bHgCQ&susc=ph&app=fife&mime=video/mp4&cnr=14&lmt=1519345650035343&ip=186.232.178',0,1,2,2);


DROP TABLE IF EXISTS `video_category`;
CREATE TABLE `video_category` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `category_name` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

INSERT INTO `video_category` VALUES (1,'VIDEO RO');

DROP TABLE IF EXISTS `vod_channel_time`;
CREATE TABLE `vod_channel_time` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `ch_id` int(11) DEFAULT NULL,
  `video_total_time` varchar(255) DEFAULT NULL,
  `stream_close_time` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

INSERT INTO `vod_channel_time` VALUES 
(1,1,NULL,NULL),
(2,2,NULL,NULL),
(3,3,NULL,NULL);


-- 2018-11-26 21:17:42
