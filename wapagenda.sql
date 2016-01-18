# phpMyAdmin SQL Dump
# version 2.5.3
# http://www.phpmyadmin.net
#
# Host: localhost
# Generation Time: Oct 17, 2006 at 02:56 PM
# Server version: 4.0.15
# PHP Version: 4.3.3
# 
# Database : `wapagenda`
# 
CREATE DATABASE `wapagenda`;
USE wapagenda;

# --------------------------------------------------------

#
# Table structure for table `accounts`
#

CREATE TABLE `accounts` (
  `nu_account` int(11) NOT NULL auto_increment,
  `account` varchar(50) NOT NULL default '',
  `password` varchar(50) NOT NULL default '',
  `name` varchar(50) NOT NULL default '',
  `email` varchar(50) NOT NULL default '',
  `tel` varchar(20) NOT NULL default '',
  `state` char(1) NOT NULL default '1',
  `datetime` datetime NOT NULL default '0000-00-00 00:00:00',
  KEY `nu_account` (`nu_account`)
) TYPE=MyISAM AUTO_INCREMENT=4 ;

#
# Dumping data for table `accounts`
#

INSERT INTO `accounts` VALUES (1, 'benbac', 'softmicro', 'benbac', 'g@g.gg', 'sdsdsd', '1', '2006-08-17 20:36:08');
INSERT INTO `accounts` VALUES (2, 'tapho', 'pleiade', 'mustapha', 'tapho2@hotmail.com', '029886347', '1', '0000-00-00 00:00:00');
INSERT INTO `accounts` VALUES (3, 'kerfarid', '2006', 'farid', 'faridker@gmail.com', '029846933', '1', '0000-00-00 00:00:00');

# --------------------------------------------------------

#
# Table structure for table `contacts`
#

CREATE TABLE `contacts` (
  `nu_contact` int(11) NOT NULL auto_increment,
  `email` varchar(50) NOT NULL default '',
  `subject` varchar(50) NOT NULL default '',
  `message` varchar(200) NOT NULL default '',
  `datetime` datetime NOT NULL default '0000-00-00 00:00:00',
  KEY `nu_contact` (`nu_contact`)
) TYPE=MyISAM AUTO_INCREMENT=3 ;

#
# Dumping data for table `contacts`
#

INSERT INTO `contacts` VALUES (1, 'benbac20@hotmail.com', 'test', 'this is a test !', '2006-10-17 14:24:34');
INSERT INTO `contacts` VALUES (2, 'benbac@yahoo.fr', 'test', 'this is an other test', '2006-10-17 14:44:49');

# --------------------------------------------------------

#
# Table structure for table `countries`
#

CREATE TABLE `countries` (
  `code` char(2) NOT NULL default '',
  `title` varchar(50) NOT NULL default '',
  `capital` varchar(50) NOT NULL default '',
  `region` int(11) NOT NULL default '0',
  `currency` char(3) NOT NULL default '',
  `area` varchar(10) NOT NULL default '',
  `popup` varchar(15) NOT NULL default '',
  `density` varchar(10) NOT NULL default '',
  KEY `code` (`code`)
) TYPE=MyISAM;

#
# Dumping data for table `countries`
#

INSERT INTO `countries` VALUES ('ST', 'Sao Tome and Principe', 'Sao Tome', 1, 'STD', '964', '156,523', '162');
INSERT INTO `countries` VALUES ('AO', 'Angola', 'Luanda', 1, 'AOA', '1,246,700', '15,941,390', '12.8');
INSERT INTO `countries` VALUES ('BF', 'Burkina Faso', 'Ouagadougou', 1, 'XOF', '274,000', '13,227,840', '48');
INSERT INTO `countries` VALUES ('BI', 'Burundi', 'Bujumbura', 1, 'BIF', '27,834', '7,547,515', '271');
INSERT INTO `countries` VALUES ('BJ', 'Benin', 'Porto-Novo', 1, 'XOF', '112,622', '8,438,853', '75');
INSERT INTO `countries` VALUES ('BW', 'Botswana', 'Gaborone', 1, 'BWP', '581,730', '1,764,926', '3.0');
INSERT INTO `countries` VALUES ('CD', 'Congo, Democratic Republic of the', 'Kinshasa', 1, 'CDF', '2,344,858', '57,548,740', '25');
INSERT INTO `countries` VALUES ('CF', 'Central African Republic', 'Bangui', 1, 'XAF', '622,984', '4,037,747', '6.5');
INSERT INTO `countries` VALUES ('CI', 'Cote d\'Ivoire', 'Yamoussoukro', 1, 'XOF', '322,463', '18,153,870', '56');
INSERT INTO `countries` VALUES ('CM', 'Cameroon', 'Yaounde', 1, 'XAF', '475,442', '16,321,860', '34');
INSERT INTO `countries` VALUES ('DJ', 'Djibouti', 'Djibouti', 1, 'DJF', '23,200', '793,078', '34');
INSERT INTO `countries` VALUES ('DZ', 'Algeria', 'Algiers', 1, 'DZD', '2,381,741', '32,853,800', '13.8');
INSERT INTO `countries` VALUES ('EG', 'Egypt', 'Cairo', 1, 'EGP', '1,001,449', '74,032,880', '74');
INSERT INTO `countries` VALUES ('EH', 'Western Sahara', '--', 1, 'MAD', '266,000', '341,421', '1.3');
INSERT INTO `countries` VALUES ('ER', 'Eritrea', 'Asmara', 1, 'ERN', '117,600', '4,401,357', '37');
INSERT INTO `countries` VALUES ('ET', 'Ethiopia', 'Addis Ababa', 1, 'ETB', '1,104,300', '77,430,700', '70');
INSERT INTO `countries` VALUES ('GA', 'Gabon', 'Libreville', 1, 'XAF', '267,668', '1,383,841', '5.2');
INSERT INTO `countries` VALUES ('GH', 'Ghana', 'Accra', 1, 'GHC', '238,533', '22,112,810', '93');
INSERT INTO `countries` VALUES ('GM', 'The Gambia', 'Banjul', 1, 'GMD', '11,295', '1,517,079', '134');
INSERT INTO `countries` VALUES ('GN', 'Guinea', 'Conakry', 1, 'GNF', '245,857', '9,402,098', '38');
INSERT INTO `countries` VALUES ('GQ', 'Equatorial Guinea', 'Malabo', 1, 'XAF', '28,051', '503,519', '18.0');
INSERT INTO `countries` VALUES ('GW', 'Guinea-Bissau', 'Bissau', 1, 'XOF', '36,125', '1,586,344', '44');
INSERT INTO `countries` VALUES ('KE', 'Kenya', 'Nairobi', 1, 'KES', '580,367', '34,255,720', '59');
INSERT INTO `countries` VALUES ('KM', 'Comoros', 'Moroni', 1, 'KMF', '2,235', '797,902', '357');
INSERT INTO `countries` VALUES ('LR', 'Liberia', 'Monrovia', 1, 'LRD', '111,369', '3,283,267', '29');
INSERT INTO `countries` VALUES ('LS', 'Lesotho', 'Maseru', 1, 'LSL', '30,355', '1,794,769', '59');
INSERT INTO `countries` VALUES ('LY', 'Libya', 'Tripoli', 1, 'LYD', '1,759,540', '5,853,452', '3.3');
INSERT INTO `countries` VALUES ('MA', 'Morocco', 'Rabat', 1, 'MAD', '446,550', '31,478,460', '70');
INSERT INTO `countries` VALUES ('MG', 'Madagascar', 'Antananarivo', 1, 'MGF', '587,041', '18,605,920', '32');
INSERT INTO `countries` VALUES ('ML', 'Mali', 'Bamako', 1, 'XOF', '1,240,192', '13,518,420', '10.9');
INSERT INTO `countries` VALUES ('MR', 'Mauritania', 'Nouakchott', 1, 'MRO', '1,025,520', '3,068,742', '3.0');
INSERT INTO `countries` VALUES ('MW', 'Malawi', 'Lilongwe', 1, 'MWK', '118,484', '12,883,940', '109');
INSERT INTO `countries` VALUES ('MZ', 'Mozambique', 'Maputo', 1, 'MZM', '801,590', '19,792,300', '25');
INSERT INTO `countries` VALUES ('NA', 'Namibia', 'Windhoek', 1, 'NAD', '824,292', '2,031,252', '2.5');
INSERT INTO `countries` VALUES ('NE', 'Niger', 'Niamey', 1, 'XOF', '1,267,000', '13,956,980', '11.0');
INSERT INTO `countries` VALUES ('NG', 'Nigeria', 'Abuja', 1, 'NGN', '923,768', '131,529,700', '142');
INSERT INTO `countries` VALUES ('RW', 'Rwanda', 'Kigali', 1, 'RWF', '26,338', '9,037,690', '343');
INSERT INTO `countries` VALUES ('SC', 'Seychelles', 'Victoria', 1, 'SCR', '455', '80,654', '177');
INSERT INTO `countries` VALUES ('SD', 'Sudan', 'Khartoum', 1, 'SDD', '2,505,813', '36,232,950', '14.5');
INSERT INTO `countries` VALUES ('SH', 'Saint Helena (UK)', 'Jamestown', 1, 'SHP', '122', '4,918', '40');
INSERT INTO `countries` VALUES ('SL', 'Sierra Leone', 'Freetown', 1, 'SLL', '71,740', '5,525,478', '77');
INSERT INTO `countries` VALUES ('SN', 'Senegal', 'Dakar', 1, 'XOF', '196,722', '11,658,170', '59');
INSERT INTO `countries` VALUES ('SO', 'Somalia', 'Mogadishu', 1, 'SOS', '637,657', '8,227,826', '12.9');
INSERT INTO `countries` VALUES ('SZ', 'Swaziland', 'Mbabane', 1, 'SZL', '17,364', '1,032,438', '59');
INSERT INTO `countries` VALUES ('TD', 'Chad', 'N\'Djamena', 1, 'XAF', '1,284,000', '9,748,931', '7.6');
INSERT INTO `countries` VALUES ('TG', 'Togo', 'Lome', 1, 'XOF', '56,785', '6,145,004', '108');
INSERT INTO `countries` VALUES ('TN', 'Tunisia', 'Tunis', 1, 'TND', '163,610', '10,102,470', '62');
INSERT INTO `countries` VALUES ('TZ', 'Tanzania', 'Dar es Salaam', 1, 'TZS', '945,087', '38,328,810', '41');
INSERT INTO `countries` VALUES ('UG', 'Uganda', 'Kampala', 1, 'UGX', '241,038', '28,816,230', '120');
INSERT INTO `countries` VALUES ('ZA', 'South Africa', 'Pretoria', 1, 'ZAR', '1,221,037', '47,431,830', '39');
INSERT INTO `countries` VALUES ('ZM', 'Zambia', 'Lusaka', 1, 'ZMK', '752,618', '11,668,460', '15.5');
INSERT INTO `countries` VALUES ('ZW', 'Zimbabwe', 'Harare', 1, 'ZWD', '390,757', '13,009,530', '33');
INSERT INTO `countries` VALUES ('GL', 'Greenland (Denmark)', 'Nuuk', 2, 'DKK', '2,175,600', '56,916', '0.026');
INSERT INTO `countries` VALUES ('IS', 'Iceland', 'Reykjavik', 2, 'ISK', '103,000', '294,561', '2.9');
INSERT INTO `countries` VALUES ('AF', 'Afghanistan', 'Kabul', 3, 'AFA', '652,090', '29,863,010', '46');
INSERT INTO `countries` VALUES ('BD', 'Bangladesh', 'Dhaka', 3, 'BDT', '143,998', '141,822,300', '985');
INSERT INTO `countries` VALUES ('BT', 'Bhutan', 'Thimphu', 3, 'BTN', '47,000', '2,162,546', '46');
INSERT INTO `countries` VALUES ('CN', 'China, People\'s Republic of', 'Beijing', 3, 'CNY', '9,596,961', '1,315,844,000', '137');
INSERT INTO `countries` VALUES ('IN', 'India', 'New Delhi', 3, 'INR', '3,287,263', '1,103,371,000', '336');
INSERT INTO `countries` VALUES ('JP', 'Japan', 'Tokyo', 3, 'JPY', '377,873', '128,084,700', '339');
INSERT INTO `countries` VALUES ('KP', 'Korea, North', 'P\'yongyang', 3, 'KPW', '120,538', '22,487,660', '187');
INSERT INTO `countries` VALUES ('KR', 'Korea, South', 'Seoul', 3, 'KRW', '99,538', '47,816,940', '480');
INSERT INTO `countries` VALUES ('LK', 'Sri Lanka', 'Colombo', 3, 'LKR', '65,610', '20,742,910', '316');
INSERT INTO `countries` VALUES ('MN', 'Mongolia', 'Ulaanbaatar', 3, 'MNT', '1,564,116', '2,646,487', '1.7');
INSERT INTO `countries` VALUES ('MV', 'Maldives', 'Male', 3, 'MVR', '298', '329,198', '1,105');
INSERT INTO `countries` VALUES ('NP', 'Nepal', 'Kathmandu', 3, 'NPR', '147,181', '27,132,630', '184');
INSERT INTO `countries` VALUES ('PK', 'Pakistan', 'Islamabad', 3, 'PKR', '796,095', '157,935,100', '198');
INSERT INTO `countries` VALUES ('RU', 'Russia', 'Moscow', 3, 'RUB', '17,098,242', '143,201,600', '8.4');
INSERT INTO `countries` VALUES ('BA', 'Bosnia and Herzegovina', 'Sarajevo', 4, 'BAM', '51,197', '3,907,074', '76');
INSERT INTO `countries` VALUES ('AG', 'Antigua and Barbuda', 'Saint John\'s', 5, 'XCD', '442', '81,479', '184');
INSERT INTO `countries` VALUES ('AI', 'Anguilla', 'The Valley', 5, 'XCD', '91', '12,205', '134');
INSERT INTO `countries` VALUES ('AN', 'Netherlands Antilles (Netherlands)', 'Willemstad', 5, 'ANG', '800', '182,656', '228');
INSERT INTO `countries` VALUES ('AW', 'Aruba', 'Oranjestad', 5, 'AWG', '180', '99,468', '553');
INSERT INTO `countries` VALUES ('BB', 'Barbados', 'Bridgetown', 5, 'BBD', '430', '269,556', '627');
INSERT INTO `countries` VALUES ('BS', 'The Bahamas', 'Nassau', 5, 'BSD', '13,878', '323,063', '23');
INSERT INTO `countries` VALUES ('BZ', 'Belize', 'Belmopan', 5, 'BZD', '22,966', '269,736', '11.7');
INSERT INTO `countries` VALUES ('CR', 'Costa Rica', 'San Jose', 5, 'CRC', '51,100', '4,327,228', '85');
INSERT INTO `countries` VALUES ('CU', 'Cuba', 'Havana', 5, 'CUP', '110,861', '11,269,400', '102');
INSERT INTO `countries` VALUES ('DM', 'Dominica', 'Roseau', 5, 'XCD', '751', '78,940', '105');
INSERT INTO `countries` VALUES ('DO', 'Dominican Republic', 'Santo Domingo', 5, 'DOP', '48,671', '8,894,907', '183');
INSERT INTO `countries` VALUES ('GD', 'Grenada', 'Saint George\'s', 5, 'XCD', '344', '102,924', '260');
INSERT INTO `countries` VALUES ('GP', 'Guadeloupe (France)', 'Basse-Terre', 5, 'EUR', '1,705', '448,484', '263');
INSERT INTO `countries` VALUES ('GT', 'Guatemala', 'Guatemala', 5, 'GTQ', '108,889', '12,599,060', '116');
INSERT INTO `countries` VALUES ('HN', 'Honduras', 'Tegucigalpa', 5, 'HNL', '112,088', '7,204,723', '64');
INSERT INTO `countries` VALUES ('HT', 'Haiti', 'Port-au-Prince', 5, 'HTG', '27,750', '8,527,777', '307');
INSERT INTO `countries` VALUES ('JM', 'Jamaica', 'Kingston', 5, 'JMD', '10,991', '2,650,713', '241');
INSERT INTO `countries` VALUES ('KN', 'Saint Kitts and Nevis', 'Basseterre', 5, 'XCD', '261', '42,696', '164');
INSERT INTO `countries` VALUES ('KY', 'Cayman Islands', 'George Town', 5, 'KYD', '264', '45,017', '171');
INSERT INTO `countries` VALUES ('LC', 'Saint Lucia', 'Castries', 5, 'XCD', '539', '160,765', '298');
INSERT INTO `countries` VALUES ('MQ', 'Martinique (France)', 'Fort-de-France', 5, 'EUR', '1,102', '395,932', '359');
INSERT INTO `countries` VALUES ('MS', 'Montserrat (UK)', 'Plymouth', 5, 'XCD', '102', '4,488', '44');
INSERT INTO `countries` VALUES ('NI', 'Nicaragua', 'Managua', 5, 'NIO', '130,000', '5,486,685', '42');
INSERT INTO `countries` VALUES ('PA', 'Panama', 'Panama', 5, 'PAB', '75,517', '3,231,502', '43');
INSERT INTO `countries` VALUES ('PR', 'Puerto Rico (US)', 'San Juan', 5, 'USD', '8,875', '3,954,584', '446');
INSERT INTO `countries` VALUES ('SV', 'El Salvador', 'San Salvador', 5, 'SVC', '21,041', '6,880,951', '327');
INSERT INTO `countries` VALUES ('TC', 'Turks and Caicos Islands (UK)', 'Cockburn Town', 5, 'USD', '417', '26,288', '63');
INSERT INTO `countries` VALUES ('TT', 'Trinidad and Tobago', 'Port-of-Spain', 5, 'TTD', '5,130', '1,305,236', '254');
INSERT INTO `countries` VALUES ('VC', 'Saint Vincent and the Grenadines', 'Kingstown', 5, 'XCD', '388', '119,051', '307');
INSERT INTO `countries` VALUES ('VG', 'British Virgin Islands', 'Road Town', 5, 'USD', '151', '22,016', '146');
INSERT INTO `countries` VALUES ('VI', 'U.S. Virgin Islands (US)', 'Charlotte Amalie', 5, 'USD', '347', '111,818', '322');
INSERT INTO `countries` VALUES ('AM', 'Armenia', 'Yerevan', 6, 'AMD', '29,800', '3,016,312', '101');
INSERT INTO `countries` VALUES ('AZ', 'Azerbaijan', 'Baku (Baki)', 6, 'AZM', '86,600', '8,410,801', '97');
INSERT INTO `countries` VALUES ('BY', 'Belarus', 'Minsk', 6, 'BYR', '207,600', '9,755,106', '47');
INSERT INTO `countries` VALUES ('GE', 'Georgia', 'T\'bilisi', 6, 'GEL', '69,700', '4,474,404', '64');
INSERT INTO `countries` VALUES ('KG', 'Kyrgyzstan', 'Bishkek', 6, 'KGS', '199,900', '5,263,794', '26');
INSERT INTO `countries` VALUES ('KZ', 'Kazakhstan', 'Astana', 6, 'KZT', '2,724,900', '14,825,110', '5.4');
INSERT INTO `countries` VALUES ('MD', 'Moldova', 'Chisinau', 6, 'MDL', '33,851', '4,205,747', '124');
INSERT INTO `countries` VALUES ('TJ', 'Tajikistan', 'Dushanbe', 6, 'TJS', '143,100', '6,506,980', '45');
INSERT INTO `countries` VALUES ('TM', 'Turkmenistan', 'Ashgabat', 6, 'TMM', '488,100', '4,833,266', '9.9');
INSERT INTO `countries` VALUES ('UA', 'Ukraine', 'Kiev', 6, 'UAH', '603,700', '46,480,700', '77');
INSERT INTO `countries` VALUES ('UZ', 'Uzbekistan', 'Tashkent', 6, 'UZS', '447,400', '26,593,120', '59');
INSERT INTO `countries` VALUES ('AD', 'Andorra', 'Andorra la Vella', 7, 'EUR', '468', '67,151', '143');
INSERT INTO `countries` VALUES ('AL', 'Albania', 'Tirana', 7, 'ALL', '28,748', '3,129,678', '109');
INSERT INTO `countries` VALUES ('AT', 'Austria', 'Vienna', 7, 'EUR', '83,858', '8,189,444', '98');
INSERT INTO `countries` VALUES ('BE', 'Belgium', 'Brussels', 7, 'EUR', '30,528', '10,419,050', '341');
INSERT INTO `countries` VALUES ('BG', 'Bulgaria', 'Sofia', 7, 'BGL', '110,912', '7,725,965', '70');
INSERT INTO `countries` VALUES ('CH', 'Switzerland', 'Bern', 7, 'CHF', '41,284', '7,252,331', '176');
INSERT INTO `countries` VALUES ('CZ', 'Czech Republic', 'Prague', 7, 'CZK', '78,866', '10,219,600', '130');
INSERT INTO `countries` VALUES ('DE', 'Germany', 'Berlin', 7, 'EUR', '357,022', '82,689,210', '232');
INSERT INTO `countries` VALUES ('DK', 'Denmark', 'Copenhagen', 7, 'DKK', '43,094', '5,430,590', '126');
INSERT INTO `countries` VALUES ('EE', 'Estonia', 'Tallinn', 7, 'EEK', '45,100', '1,329,697', '29');
INSERT INTO `countries` VALUES ('ES', 'Spain', 'Madrid', 7, 'EUR', '505,992', '43,064,190', '85');
INSERT INTO `countries` VALUES ('FI', 'Finland', 'Helsinki', 7, 'EUR', '338,145', '5,249,060', '15.5');
INSERT INTO `countries` VALUES ('FO', 'Faroe Islands (Denmark)', 'Torshavn', 7, 'DKK', '1,399', '47,017', '34');
INSERT INTO `countries` VALUES ('FR', 'France', 'Paris', 7, 'EUR', '551,500', '60,495,540', '110');
INSERT INTO `countries` VALUES ('GI', 'Gibraltar (UK)', 'Gibraltar', 7, 'GIP', '6', '27,921', '4,654');
INSERT INTO `countries` VALUES ('GR', 'Greece', 'Athens', 7, 'EUR', '131,957', '11,119,890', '84');
INSERT INTO `countries` VALUES ('HR', 'Croatia', 'Zagreb', 7, 'HRK', '56,538', '4,551,338', '81');
INSERT INTO `countries` VALUES ('HU', 'Hungary', 'Budapest', 7, 'HUF', '93,032', '10,097,730', '109');
INSERT INTO `countries` VALUES ('IE', 'Ireland, Republic of', 'Dublin', 7, 'EUR', '70,273', '4,147,901', '59');
INSERT INTO `countries` VALUES ('IM', 'Isle of Man (UK)', 'Douglas', 7, 'GBP', '572', '76,538', '134');
INSERT INTO `countries` VALUES ('IT', 'Italy', 'Rome', 7, 'EUR', '301,318', '58,092,740', '193');
INSERT INTO `countries` VALUES ('LI', 'Liechtenstein', 'Vaduz', 7, 'CHF', '160', '34,521', '216');
INSERT INTO `countries` VALUES ('LT', 'Lithuania', 'Vilnius', 7, 'LTL', '65,300', '3,431,033', '53');
INSERT INTO `countries` VALUES ('LU', 'Luxembourg', 'Luxembourg', 7, 'EUR', '2,586', '464,904', '180');
INSERT INTO `countries` VALUES ('LV', 'Latvia', 'Riga', 7, 'LVL', '64,600', '2,306,988', '36');
INSERT INTO `countries` VALUES ('MC', 'Monaco', 'Monaco', 7, 'EUR', '1.49', '35,253', '23,660');
INSERT INTO `countries` VALUES ('MK', 'Macedonia, The Former Yugoslav Republic of', 'Skopje', 7, 'MKD', '25,713', '2,034,060', '79');
INSERT INTO `countries` VALUES ('MT', 'Malta', 'Valletta', 7, 'MTL', '316', '401,630', '1,271');
INSERT INTO `countries` VALUES ('NL', 'Netherlands', 'Amsterdam', 7, 'EUR', '41,528', '16,299,170', '392');
INSERT INTO `countries` VALUES ('NO', 'Norway', 'Oslo', 7, 'NOK', '385,155', '4,620,275', '12.0');
INSERT INTO `countries` VALUES ('PL', 'Poland', 'Warsaw', 7, 'PLN', '312,685', '38,529,560', '123');
INSERT INTO `countries` VALUES ('PT', 'Portugal', 'Lisbon', 7, 'EUR', '91,982', '10,494,500', '114');
INSERT INTO `countries` VALUES ('RO', 'Romania', 'Bucharest', 7, 'ROL', '238,391', '21,711,470', '91');
INSERT INTO `countries` VALUES ('SE', 'Sweden', 'Stockholm', 7, 'SEK', '449,964', '9,041,262', '20.0');
INSERT INTO `countries` VALUES ('SI', 'Slovenia', 'Ljubljana', 7, 'SIT', '20,256', '1,966,814', '97');
INSERT INTO `countries` VALUES ('SK', 'Slovakia', 'Bratislava', 7, 'SKK', '49,033', '5,400,908', '110');
INSERT INTO `countries` VALUES ('SM', 'San Marino', 'San Marino', 7, 'EUR', '61', '28,117', '461');
INSERT INTO `countries` VALUES ('UK', 'United Kingdom', 'London', 7, 'GBP', '242,900', '59,667,840', '246');
INSERT INTO `countries` VALUES ('VA', 'Holy See (Vatican City)', 'Vatican City', 7, 'EUR', '0.44', '783', '1,780');
INSERT INTO `countries` VALUES ('AE', 'United Arab Emirates', 'Abu Dhabi', 8, 'AED', '83,600', '4,495,823', '54');
INSERT INTO `countries` VALUES ('BH', 'Bahrain', 'Manama', 8, 'BHD', '694', '726,617', '1,047');
INSERT INTO `countries` VALUES ('CY', 'Cyprus', 'Nicosia', 8, 'CYP', '9,251', '835,307', '90');
INSERT INTO `countries` VALUES ('IL', 'Israel', 'Jerusalem', 8, 'ILS', '22,145', '6,724,564', '304');
INSERT INTO `countries` VALUES ('IQ', 'Iraq', 'Baghdad', 8, 'IQD', '438,317', '28,807,190', '66');
INSERT INTO `countries` VALUES ('IR', 'Iran', 'Tehran', 8, 'IRR', '1,648,195', '69,515,210', '42');
INSERT INTO `countries` VALUES ('JO', 'Jordan', 'Amman', 8, 'JOD', '89,342', '5,702,776', '64');
INSERT INTO `countries` VALUES ('KW', 'Kuwait', 'Kuwait', 8, 'KWD', '17,818', '2,686,873', '151');
INSERT INTO `countries` VALUES ('LB', 'Lebanon', 'Beirut', 8, 'LBP', '10,400', '3,576,818', '344');
INSERT INTO `countries` VALUES ('OM', 'Oman', 'Muscat', 8, 'OMR', '309,500', '2,566,981', '8.3');
INSERT INTO `countries` VALUES ('QA', 'Qatar', 'Doha', 8, 'QAR', '11,000', '812,842', '74');
INSERT INTO `countries` VALUES ('SA', 'Saudi Arabia', 'Riyadh', 8, 'SAR', '2,149,690', '24,573,100', '11.4');
INSERT INTO `countries` VALUES ('SY', 'Syria', 'Damascus', 8, 'SYP', '185,180', '19,043,380', '103');
INSERT INTO `countries` VALUES ('TR', 'Turkey', 'Ankara', 8, 'TRL', '783,562', '73,192,840', '93');
INSERT INTO `countries` VALUES ('YE', 'Yemen', 'Sanaa', 8, 'YER', '527,968', '20,974,660', '40');
INSERT INTO `countries` VALUES ('BM', 'Bermuda', 'Hamilton', 9, 'BMD', '53', '64,174', '1,211');
INSERT INTO `countries` VALUES ('CA', 'Canada', 'Ottawa', 9, 'CAD', '9,970,610', '32,268,240', '3.2');
INSERT INTO `countries` VALUES ('MX', 'Mexico', 'Mexico', 9, 'MXN', '1,958,201', '107,029,400', '55');
INSERT INTO `countries` VALUES ('PM', 'Saint Pierre and Miquelon (France)', 'Saint-Pierre', 9, 'EUR', '242', '5,769', '24');
INSERT INTO `countries` VALUES ('US', 'United States', 'Washington, DC', 9, 'USD', '9,629,091', '298,212,900', '31');
INSERT INTO `countries` VALUES ('AS', 'American Samoa', 'Pago Pago', 10, 'USD', '199', '64,869', '326');
INSERT INTO `countries` VALUES ('AU', 'Australia', 'Canberra', 10, 'AUD', '7,741,220', '20,155,130', '2.6');
INSERT INTO `countries` VALUES ('CK', 'Cook Islands', 'Avarua', 10, 'NZD', '236', '17,954', '76');
INSERT INTO `countries` VALUES ('FJ', 'Fiji', 'Suva', 10, 'FJD', '18,274', '847,706', '46');
INSERT INTO `countries` VALUES ('FM', 'Micronesia, Federated States of', 'Palikir', 10, 'USD', '702', '110,487', '157');
INSERT INTO `countries` VALUES ('GU', 'Guam (US)', 'Hagatna', 10, 'USD', '549', '169,635', '309');
INSERT INTO `countries` VALUES ('KI', 'Kiribati', 'Tarawa', 10, 'AUD', '726', '99,350', '137');
INSERT INTO `countries` VALUES ('MH', 'Marshall Islands', 'Majuro', 10, 'USD', '181', '61,963', '342');
INSERT INTO `countries` VALUES ('MP', 'Northern Mariana Islands (US)', 'Saipan', 10, 'USD', '464', '80,801', '174');
INSERT INTO `countries` VALUES ('NC', 'New Caledonia (France)', 'Noumea', 10, 'XPF', '18,575', '236,838', '12.8');
INSERT INTO `countries` VALUES ('NR', 'Nauru', '--', 10, 'AUD', '21', '13,635', '649');
INSERT INTO `countries` VALUES ('NU', 'Niue (New Zealand)', 'Alofi', 10, 'NZD', '260', '1,445', '5.6');
INSERT INTO `countries` VALUES ('NZ', 'New Zealand', 'Wellington', 10, 'NZD', '270,534', '4,028,384', '14.9');
INSERT INTO `countries` VALUES ('PF', 'French Polynesia (France)', 'Papeete', 10, 'XPF', '4,000', '256,603', '64');
INSERT INTO `countries` VALUES ('PG', 'Papua New Guinea', 'Port Moresby', 10, 'PGK', '462,840', '5,887,138', '12.7');
INSERT INTO `countries` VALUES ('PN', 'Pitcairn Islands (UK)', 'Adamstown', 10, 'NZD', '5', '67', '13.4');
INSERT INTO `countries` VALUES ('PW', 'Palau', 'Koror', 10, 'USD', '459', '19,949', '43');
INSERT INTO `countries` VALUES ('SB', 'Solomon Islands', 'Honiara', 10, 'SBD', '28,896', '477,742', '16.5');
INSERT INTO `countries` VALUES ('TK', 'Tokelau (New Zealand)', '--', 10, 'NZD', '12', '1,378', '115');
INSERT INTO `countries` VALUES ('TO', 'Tonga', 'Nuku\'alofa', 10, 'TOP', '747', '102,311', '137');
INSERT INTO `countries` VALUES ('TV', 'Tuvalu', 'Funafuti', 10, 'AUD', '26', '10,441', '402');
INSERT INTO `countries` VALUES ('VU', 'Vanuatu', 'Port-Vila', 10, 'VUV', '12,189', '211,367', '17.3');
INSERT INTO `countries` VALUES ('WF', 'Wallis and Futuna (France)', 'Mata-Utu', 10, 'XPF', '200', '15,480', '77');
INSERT INTO `countries` VALUES ('WS', 'Samoa', 'Apia', 10, 'WST', '2,831', '184,984', '65');
INSERT INTO `countries` VALUES ('FK', 'Falkland Islands (UK)', 'Stanley', 11, 'FKP', '12,173', '3,060', '0.25');
INSERT INTO `countries` VALUES ('AR', 'Argentina', 'Buenos Aires', 11, 'ARS', '2,780,400', '38,747,150', '13.9');
INSERT INTO `countries` VALUES ('BO', 'Bolivia', 'La Paz /Sucre', 11, 'BOB', '1,098,581', '9,182,015', '8.4');
INSERT INTO `countries` VALUES ('BR', 'Brazil', 'Brasilia', 11, 'BRL', '8,514,877', '186,404,900', '22');
INSERT INTO `countries` VALUES ('CL', 'Chile', 'Santiago', 11, 'CLP', '756,096', '16,295,100', '22');
INSERT INTO `countries` VALUES ('EC', 'Ecuador', 'Quito', 11, 'USD', '283,561', '13,228,420', '47');
INSERT INTO `countries` VALUES ('GF', 'French Guiana (France)', 'Cayenne', 11, 'EUR', '90,000', '187,056', '2.1');
INSERT INTO `countries` VALUES ('GY', 'Guyana', 'Georgetown', 11, 'GYD', '214,969', '751,218', '3.5');
INSERT INTO `countries` VALUES ('PE', 'Peru', 'Lima', 11, 'PEN', '1,285,216', '27,968,240', '22');
INSERT INTO `countries` VALUES ('PY', 'Paraguay', 'Asuncion', 11, 'PYG', '406,752', '6,158,259', '15.1');
INSERT INTO `countries` VALUES ('SR', 'Suriname', 'Paramaribo', 11, 'SRG', '163,820', '449,238', '2.7');
INSERT INTO `countries` VALUES ('UY', 'Uruguay', 'Montevideo', 11, 'UYU', '175,016', '3,463,197', '19.8');
INSERT INTO `countries` VALUES ('CO', 'Colombia', 'Bogota', 12, 'COP', '1,138,914', '45,600,240', '40');
INSERT INTO `countries` VALUES ('VE', 'Venezuela', 'Caracas', 12, 'VEB', '912,050', '26,749,110', '29');
INSERT INTO `countries` VALUES ('HK', 'Hong Kong (PRC)', 'Hong Kong', 13, 'HKD', '1,099', '7,040,885', '6,407');
INSERT INTO `countries` VALUES ('ID', 'Indonesia', 'Jakarta', 13, 'IDR', '1,904,569', '222,781,500', '117');
INSERT INTO `countries` VALUES ('KH', 'Cambodia', 'Phnom Penh', 13, 'KHR', '181,035', '14,071,010', '78');
INSERT INTO `countries` VALUES ('LA', 'Laos', 'Vientiane', 13, 'LAK', '236,800', '5,924,145', '25');
INSERT INTO `countries` VALUES ('MO', 'Macau (PRC)', 'Macao', 13, 'MOP', '26', '460,162', '17,699');
INSERT INTO `countries` VALUES ('MY', 'Malaysia', 'Kuala Lumpur', 13, 'MYR', '329,847', '25,347,370', '77');
INSERT INTO `countries` VALUES ('PH', 'Philippines', 'Manila', 13, 'PHP', '300,000', '83,054,480', '277');
INSERT INTO `countries` VALUES ('SG', 'Singapore', 'Singapore', 13, 'SGD', '683', '4,325,539', '6,333');
INSERT INTO `countries` VALUES ('TH', 'Thailand', 'Bangkok', 13, 'THB', '513,115', '64,232,760', '125');
INSERT INTO `countries` VALUES ('TW', 'Taiwan', 'Taipei', 13, 'TWD', '35,980', '22,894,384', '636');
INSERT INTO `countries` VALUES ('VN', 'Vietnam', 'Hanoi', 13, 'VND', '331,689', '84,238,230', '254');
INSERT INTO `countries` VALUES ('RE', 'Réunion (France)', 'Saint-Denis', 14, 'EUR', '2,510', '785,139', '313');
INSERT INTO `countries` VALUES ('CV', 'Cape Verde', 'Praia', 14, 'CVE', '4,033', '506,807', '126');
INSERT INTO `countries` VALUES ('MU', 'Mauritius', 'Port Louis', 14, 'MUR', '2,040', '1,244,663', '610');
INSERT INTO `countries` VALUES ('PS', 'Palestinian territories', '--', 1, '--', '6,020', '3,702,212', '615');
INSERT INTO `countries` VALUES ('TP', 'East Timor', '--', 1, 'TPE', '14,874', '947,064', '64');

# --------------------------------------------------------

#
# Table structure for table `currency`
#

CREATE TABLE `currency` (
  `title` varchar(50) NOT NULL default '',
  `code` char(3) NOT NULL default '',
  KEY `code` (`code`)
) TYPE=MyISAM;

#
# Dumping data for table `currency`
#

INSERT INTO `currency` VALUES ('Aruban Guilder', 'AWG');
INSERT INTO `currency` VALUES ('Bahamian Dollar', 'BSD');
INSERT INTO `currency` VALUES ('Belarussian Ruble', 'BYR');
INSERT INTO `currency` VALUES ('Belize Dollar', 'BZD');
INSERT INTO `currency` VALUES ('Cuban Peso', 'CUP');
INSERT INTO `currency` VALUES ('Danish Krone', 'DKK');
INSERT INTO `currency` VALUES ('Dominican Peso', 'DOP');
INSERT INTO `currency` VALUES ('Algerian Dinar', 'DZD');
INSERT INTO `currency` VALUES ('Egyptian Pound', 'EGP');
INSERT INTO `currency` VALUES ('Euro', 'EUR');
INSERT INTO `currency` VALUES ('Guyana Dollar', 'GYD');
INSERT INTO `currency` VALUES ('Gourde', 'HTG');
INSERT INTO `currency` VALUES ('New Israeli Sheqel', 'ILS');
INSERT INTO `currency` VALUES ('Indian Rupee', 'INR');
INSERT INTO `currency` VALUES ('Iraqi Dinar', 'IQD');
INSERT INTO `currency` VALUES ('Iceland Krona', 'ISK');
INSERT INTO `currency` VALUES ('North Korean Won', 'KPW');
INSERT INTO `currency` VALUES ('Kip', 'LAK');
INSERT INTO `currency` VALUES ('Liberian Dollar', 'LRD');
INSERT INTO `currency` VALUES ('Loti', 'LSL');
INSERT INTO `currency` VALUES ('Latvian Lats', 'LVL');
INSERT INTO `currency` VALUES ('Denar', 'MKD');
INSERT INTO `currency` VALUES ('Philippine Peso', 'PHP');
INSERT INTO `currency` VALUES ('Qatari Rial', 'QAR');
INSERT INTO `currency` VALUES ('Slovak Koruna', 'SKK');
INSERT INTO `currency` VALUES ('Leone', 'SLL');
INSERT INTO `currency` VALUES ('El Salvador Colon', 'SVC');
INSERT INTO `currency` VALUES ('Syrian Pound', 'SYP');
INSERT INTO `currency` VALUES ('Somoni', 'TJS');
INSERT INTO `currency` VALUES ('Pa\'anga', 'TOP');
INSERT INTO `currency` VALUES ('Hryvnia', 'UAH');
INSERT INTO `currency` VALUES ('Bolivar', 'VEB');
INSERT INTO `currency` VALUES ('Tala', 'WST');
INSERT INTO `currency` VALUES ('CFA Franc BEAC', 'XAF');
INSERT INTO `currency` VALUES ('CFA Franc BCEAO', 'XOF');
INSERT INTO `currency` VALUES ('Yemeni Rial', 'YER');
INSERT INTO `currency` VALUES ('Azerbaijani Manat', 'AZM');
INSERT INTO `currency` VALUES ('Costa Rican Colon', 'CRC');
INSERT INTO `currency` VALUES ('Moroccan Dirham', 'MAD');
INSERT INTO `currency` VALUES ('Pataca', 'MOP');
INSERT INTO `currency` VALUES ('Sri Lanka Rupee', 'LKR');
INSERT INTO `currency` VALUES ('Nepalese Rupee', 'NPR');
INSERT INTO `currency` VALUES ('Lek', 'ALL');
INSERT INTO `currency` VALUES ('Boliviano', 'BOB');
INSERT INTO `currency` VALUES ('Colombian Peso', 'COP');
INSERT INTO `currency` VALUES ('Fijian Dollar', 'FJD');
INSERT INTO `currency` VALUES ('Namibian Dollar', 'NAD');
INSERT INTO `currency` VALUES ('Kina', 'PGK');
INSERT INTO `currency` VALUES ('Russian Ruble', 'RUB');
INSERT INTO `currency` VALUES ('Rwanda Franc', 'RWF');
INSERT INTO `currency` VALUES ('Tolar', 'SIT');
INSERT INTO `currency` VALUES ('Turkish Lira', 'TRL');
INSERT INTO `currency` VALUES ('Uzbekistan Sum', 'UZS');
INSERT INTO `currency` VALUES ('Zimbabwe Dollar', 'ZWD');
INSERT INTO `currency` VALUES ('Bermudian Dollar', 'BMD');
INSERT INTO `currency` VALUES ('Armenian Dram', 'AMD');
INSERT INTO `currency` VALUES ('Netherlands Antillean guilder', 'ANG');
INSERT INTO `currency` VALUES ('Australian Dollar', 'AUD');
INSERT INTO `currency` VALUES ('Bahraini Dinar', 'BHD');
INSERT INTO `currency` VALUES ('Brunei Dollar', 'BND');
INSERT INTO `currency` VALUES ('Yuan Renminbi', 'CNY');
INSERT INTO `currency` VALUES ('Cyprus Pound', 'CYP');
INSERT INTO `currency` VALUES ('Pound Sterling', 'GBP');
INSERT INTO `currency` VALUES ('Lari', 'GEL');
INSERT INTO `currency` VALUES ('Lempira', 'HNL');
INSERT INTO `currency` VALUES ('Kuna', 'HRK');
INSERT INTO `currency` VALUES ('Won', 'KRW');
INSERT INTO `currency` VALUES ('Lithuanian Litas', 'LTL');
INSERT INTO `currency` VALUES ('Moldovan Leu', 'MDL');
INSERT INTO `currency` VALUES ('Ouguiya', 'MRO');
INSERT INTO `currency` VALUES ('Mauritius Rupee', 'MUR');
INSERT INTO `currency` VALUES ('balboa', 'PAB');
INSERT INTO `currency` VALUES ('Leu', 'ROL');
INSERT INTO `currency` VALUES ('Solomon Islands Dollar', 'SBD');
INSERT INTO `currency` VALUES ('Singapore Dollar', 'SGD');
INSERT INTO `currency` VALUES ('Tanzanian Shilling', 'TZS');
INSERT INTO `currency` VALUES ('Uganda Shilling', 'UGX');
INSERT INTO `currency` VALUES ('Yugoslavian Dinar', 'YUM');
INSERT INTO `currency` VALUES ('Argentine Peso', 'ARS');
INSERT INTO `currency` VALUES ('Burundi Franc', 'BIF');
INSERT INTO `currency` VALUES ('Cape Verdean Escudo', 'CVE');
INSERT INTO `currency` VALUES ('Kuwaiti Dinar', 'KWD');
INSERT INTO `currency` VALUES ('Pakistan Rupee', 'PKR');
INSERT INTO `currency` VALUES ('Seychelles Rupee', 'SCR');
INSERT INTO `currency` VALUES ('Baht', 'THB');
INSERT INTO `currency` VALUES ('UAE Dirham', 'AED');
INSERT INTO `currency` VALUES ('Kwanza', 'AOA');
INSERT INTO `currency` VALUES ('Taka', 'BDT');
INSERT INTO `currency` VALUES ('Brazilian Real', 'BRL');
INSERT INTO `currency` VALUES ('Ngultrum', 'BTN');
INSERT INTO `currency` VALUES ('Kroon', 'EEK');
INSERT INTO `currency` VALUES ('Guinean Franc', 'GNF');
INSERT INTO `currency` VALUES ('Quetzal', 'GTQ');
INSERT INTO `currency` VALUES ('Hong Kong Dollar', 'HKD');
INSERT INTO `currency` VALUES ('Rupiah', 'IDR');
INSERT INTO `currency` VALUES ('Iranian Rial', 'IRR');
INSERT INTO `currency` VALUES ('Jamaican dollar', 'JMD');
INSERT INTO `currency` VALUES ('Som', 'KGS');
INSERT INTO `currency` VALUES ('Riel', 'KHR');
INSERT INTO `currency` VALUES ('Tenge', 'KZT');
INSERT INTO `currency` VALUES ('Lebanese Pound', 'LBP');
INSERT INTO `currency` VALUES ('Libyan Dinar', 'LYD');
INSERT INTO `currency` VALUES ('Maltese Lira', 'MTL');
INSERT INTO `currency` VALUES ('Rufiyaa', 'MVR');
INSERT INTO `currency` VALUES ('Mexican Peso', 'MXN');
INSERT INTO `currency` VALUES ('Metical', 'MZM');
INSERT INTO `currency` VALUES ('New Zealand Dollar', 'NZD');
INSERT INTO `currency` VALUES ('Rial Omani', 'OMR');
INSERT INTO `currency` VALUES ('Saint Helenian Pound', 'SHP');
INSERT INTO `currency` VALUES ('Somali Shilling', 'SOS');
INSERT INTO `currency` VALUES ('Suriname Guilder', 'SRG');
INSERT INTO `currency` VALUES ('Dobra', 'STD');
INSERT INTO `currency` VALUES ('Lilangeni', 'SZL');
INSERT INTO `currency` VALUES ('Tunisian Dinar', 'TND');
INSERT INTO `currency` VALUES ('US Dollar', 'USD');
INSERT INTO `currency` VALUES ('Rand', 'ZAR');
INSERT INTO `currency` VALUES ('Kwacha', 'ZMK');
INSERT INTO `currency` VALUES ('Afghani', 'AFA');
INSERT INTO `currency` VALUES ('Pula', 'BWP');
INSERT INTO `currency` VALUES ('Dalasi', 'GMD');
INSERT INTO `currency` VALUES ('Malaysian Ringgit', 'MYR');
INSERT INTO `currency` VALUES ('Cordoba Oro', 'NIO');
INSERT INTO `currency` VALUES ('Norwegian Krone', 'NOK');
INSERT INTO `currency` VALUES ('Nuevo Sol', 'PEN');
INSERT INTO `currency` VALUES ('Saudi Riyal', 'SAR');
INSERT INTO `currency` VALUES ('Swedish Krona', 'SEK');
INSERT INTO `currency` VALUES ('Canadian Dollar', 'CAD');
INSERT INTO `currency` VALUES ('Czech Koruna', 'CZK');
INSERT INTO `currency` VALUES ('Dong', 'VND');
INSERT INTO `currency` VALUES ('Barbados Dollar', 'BBD');
INSERT INTO `currency` VALUES ('Lev', 'BGL');
INSERT INTO `currency` VALUES ('Nakfa', 'ERN');
INSERT INTO `currency` VALUES ('Jordanian Dinar', 'JOD');
INSERT INTO `currency` VALUES ('Kenyan shilling', 'KES');
INSERT INTO `currency` VALUES ('Malagasy Franc', 'MGF');
INSERT INTO `currency` VALUES ('Guarani', 'PYG');
INSERT INTO `currency` VALUES ('Manat', 'TMM');
INSERT INTO `currency` VALUES ('New Taiwan Dollar', 'TWD');
INSERT INTO `currency` VALUES ('East Caribbean Dollar', 'XCD');
INSERT INTO `currency` VALUES ('CFP Franc', 'XPF');
INSERT INTO `currency` VALUES ('Yen', 'JPY');
INSERT INTO `currency` VALUES ('Convertible Marka', 'BAM');
INSERT INTO `currency` VALUES ('Swiss Franc', 'CHF');
INSERT INTO `currency` VALUES ('Chilean Peso', 'CLP');
INSERT INTO `currency` VALUES ('Ethiopian Birr', 'ETB');
INSERT INTO `currency` VALUES ('Forint', 'HUF');
INSERT INTO `currency` VALUES ('Cayman Islands Dollar', 'KYD');
INSERT INTO `currency` VALUES ('kyat', 'MMK');
INSERT INTO `currency` VALUES ('Falkland Islands Pound', 'FKP');
INSERT INTO `currency` VALUES ('Franc Congolais', 'CDF');
INSERT INTO `currency` VALUES ('Djibouti Franc', 'DJF');
INSERT INTO `currency` VALUES ('Gibraltar Pound', 'GIP');
INSERT INTO `currency` VALUES ('Tugrik', 'MNT');
INSERT INTO `currency` VALUES ('Kwacha', 'MWK');
INSERT INTO `currency` VALUES ('Zloty', 'PLN');
INSERT INTO `currency` VALUES ('Sudanese Dinar', 'SDD');
INSERT INTO `currency` VALUES ('Timor Escudo', 'TPE');
INSERT INTO `currency` VALUES ('Trinidad and Tobago Dollar', 'TTD');
INSERT INTO `currency` VALUES ('Vatu', 'VUV');
INSERT INTO `currency` VALUES ('Cedi', 'GHC');
INSERT INTO `currency` VALUES ('Naira', 'NGN');
INSERT INTO `currency` VALUES ('Peso Uruguayo', 'UYU');
INSERT INTO `currency` VALUES ('Comoro Franc', 'KMF');

# --------------------------------------------------------

#
# Table structure for table `regions`
#

CREATE TABLE `regions` (
  `nu` int(11) NOT NULL auto_increment,
  `title` varchar(50) NOT NULL default '',
  KEY `nu` (`nu`)
) TYPE=MyISAM AUTO_INCREMENT=16 ;

#
# Dumping data for table `regions`
#

INSERT INTO `regions` VALUES (1, 'Africa');
INSERT INTO `regions` VALUES (2, 'Antarctic Region');
INSERT INTO `regions` VALUES (3, 'Asia');
INSERT INTO `regions` VALUES (4, 'Bosnia and Herzegovina, Europe');
INSERT INTO `regions` VALUES (5, 'Central America and the Caribbean');
INSERT INTO `regions` VALUES (6, 'Commonwealth of Independent States');
INSERT INTO `regions` VALUES (7, 'Europe');
INSERT INTO `regions` VALUES (8, 'Middle East');
INSERT INTO `regions` VALUES (9, 'North America');
INSERT INTO `regions` VALUES (10, 'Oceania');
INSERT INTO `regions` VALUES (11, 'South America');
INSERT INTO `regions` VALUES (12, 'South America, Central America and the Caribbean');
INSERT INTO `regions` VALUES (13, 'Southeast Asia');
INSERT INTO `regions` VALUES (14, 'World');

# --------------------------------------------------------

#
# Table structure for table `visitors`
#

CREATE TABLE `visitors` (
  `nu_visitor` smallint(6) NOT NULL auto_increment,
  `Ip_Address` varchar(15) NOT NULL default '0',
  `link` varchar(100) NOT NULL default '',
  `datetime` datetime NOT NULL default '0000-00-00 00:00:00',
  `language` varchar(10) NOT NULL default '',
  `HUA` varchar(100) NOT NULL default '',
  `page` varchar(50) NOT NULL default '',
  KEY `nu_visitor` (`nu_visitor`)
) TYPE=MyISAM AUTO_INCREMENT=24 ;

#
# Dumping data for table `visitors`
#

INSERT INTO `visitors` VALUES (2, '127.0.0.1', 'Unknoun', '2006-08-17 20:28:06', 'en', 'UPG1 UP/4.0.7', '/wapagenda/');
INSERT INTO `visitors` VALUES (7, '127.0.0.1', 'Unknoun', '2006-10-17 13:31:16', 'ar-dz', 'Mozilla/4.0 (compatible; MSIE 6.0; Windows NT 5.1; SV1; d:tnt7_ForumBrowser)', '/WAPAgenda/admin/');
