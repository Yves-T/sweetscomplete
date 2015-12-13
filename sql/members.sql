/*
 Navicat Premium Data Transfer

 Source Server         : cvodev
 Source Server Type    : MySQL
 Source Server Version : 50709
 Source Host           : 127.0.0.1
 Source Database       : sweetscomplete

 Target Server Type    : MySQL
 Target Server Version : 50709
 File Encoding         : utf-8

 Date: 12/13/2015 15:13:40 PM
*/

SET NAMES utf8;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
--  Table structure for `members`
-- ----------------------------
DROP TABLE IF EXISTS `members`;
CREATE TABLE `members` (
  `user_id` int(8) unsigned zerofill NOT NULL AUTO_INCREMENT,
  `name` varchar(256) CHARACTER SET latin1 COLLATE latin1_general_cs NOT NULL,
  `address` varchar(256) NOT NULL,
  `city` varchar(64) NOT NULL,
  `state_province` char(32) NOT NULL,
  `postal_code` char(10) NOT NULL,
  `country` char(3) NOT NULL,
  `phone` char(16) DEFAULT NULL,
  `balance` decimal(10,2) DEFAULT NULL,
  `email` varchar(250) NOT NULL,
  `password` varchar(16) NOT NULL,
  PRIMARY KEY (`user_id`),
  UNIQUE KEY `email_login` (`email`),
  KEY `password_lookup` (`password`)
) ENGINE=InnoDB AUTO_INCREMENT=100000003 DEFAULT CHARSET=utf8 COMMENT='Customers';

-- ----------------------------
--  Records of `members`
-- ----------------------------
BEGIN;
INSERT INTO `members` VALUES ('1', 'Conrad Perry', '79 Amber Branch Falls', 'Birdseye', 'QC', 'G0U 0M5', 'CA', '484-181-9811', '745.32', 'conrad.perry@fastmedia.com', 'listened8591uncl'), ('2', 'Lonnie Knapp', '636 Emerald Hickory Nook', 'Belcher', 'AK', '12529', 'US', '817-766-0585', '306.60', 'lonnie.knapp@cablecom.com', 'on1432God'), ('3', 'Darrel Roman', '31 Iron Grove Edge', 'Flushing', 'NT', '0630', 'AU', '339-574-2943', '357.51', 'darrel.roman@southcom.net', 'impaled1933by'), ('4', 'Morgan Avila', '572 Silver Deer Ridge', 'Hermits Cove', 'TN', '36051', 'US', '620-411-5128', '918.28', 'morgan.avila@northmedia.com', 'spot9723be'), ('5', 'Lee Mccray', '195 Grand Dale Acres', 'Cake', '', 'DD65 82QD', 'UK', '265-666-2636', '539.35', 'lee.mccray@southnet.com', 'new5220and'), ('6', 'Spencer Sanford', '620 Colonial Autumn Meadow', 'Nooseneck', '', 'PV9 74XN', 'UK', '451-815-7386', '-7.61', 'spencer.sanford@cablenet.net', 'is3300for'), ('7', 'Thomas Kirby', '9 Blue River Valley', 'Nixon', 'NT', '0181', 'AU', '534-331-1166', '414.45', 'thomas.kirby@southcom.com', 'sighed1323cut'), ('8', 'Brian Crawford', '123 Cinder Hills Drive', 'Honk Hill', '', 'RJ90 98JM', 'UK', '295-814-6932', '125.58', 'brian.crawford@fastcom.net', 'it1592a'), ('9', 'Armando Barlow', '211 Silent Pond Lane', 'Revenge', 'ON', 'P1F 9T1', 'CA', '489-381-7892', '445.07', 'armando.barlow@cablecom.com', 'old3103said'), ('10', 'Jess Rocha', '678 Noble Nectar Woods', 'Blue Lick', 'ACT', '2918', 'AU', '726-538-4821', '889.05', 'jess.rocha@eastcom.net', 'behind4206Her'), ('11', 'Felix Blevins', '97 Sleepy Dale Avenue', 'Thonotosassa', 'SC', '29058', 'US', '189-809-6805', '130.57', 'felix.blevins@southcom.net', 'Terrible7767a'), ('12', 'Jose Carter', '551 Wishing Zephyr Path', 'Stoops', '', 'HH34 64HU', 'UK', '176-111-1052', '56.22', 'jose.carter@westcom.net', 'asked3261of'), ('13', 'Orlando Fulton', '602 Sunny Branch Acres', 'The Black Cat', '', 'IA96 27YH', 'UK', '827-337-1951', '949.84', 'orlando.fulton@northcom.net', 'wind3692water'), ('14', 'Mitchell Roth', '625 Heather Shadow Canyon', 'Lizard Lick', '', 'TD92 7ZY', 'UK', '710-718-4571', '591.07', 'mitchell.roth@eastnet.com', 'and2675withdrawn'), ('15', 'Eduardo Wright', '11 Quiet Spring Dale', 'Cockeysville', '', 'RE29 13DE', 'UK', '124-912-7627', '156.36', 'eduardo.wright@fastmedia.com', 'to5023a'), ('16', 'Marc Ellis', '643 Shady Hills Glen', 'Israel Haul', 'QLD', '4057', 'AU', '594-470-8441', '69.04', 'marc.ellis@westnet.com', 'the335the'), ('17', 'Joaquin Moses', '735 Cotton Island Vale', 'Kansas City', 'MT', '33046', 'US', '765-543-1756', '936.64', 'joaquin.moses@eastcom.com', 'with446it'), ('18', 'Morris Vargas', '45 Sleepy Branch Path', 'Defeated Creek', 'WA', '4543', 'AU', '519-975-1766', '486.60', 'morris.vargas@fastnet.com', 'huge9477at'), ('19', 'Gene Cruz', '281 Burning Sky Landing', 'Nolichucky', 'DE', '73882', 'US', '791-962-5726', '683.55', 'gene.cruz@eastcom.com', 'the7222from'), ('20', 'Samuel Harding', '729 Noble Bluff Terrace', 'Hallelujah Junction', 'NV', '83512', 'US', '866-990-2197', '-11.56', 'samuel.harding@southmedia.net', 'pope5267made'), ('21', 'Lauri Grimes', '601 Blue Spring Glade', 'Bravo', 'MB', 'J4H 2M3', 'CA', '231-937-2143', '-37.95', 'lauri.grimes@cablecom.com', 'out1004in'), ('22', ' Coleen Walker', '574 Quiet Berry Stead', 'Chittyville', 'QLD', '4888', 'AU', '+61 7-222-3333', '99.88', 'coleen.walker@fastmedia.com', 'hammock3188said'), ('23', 'Tabitha Foster', '113 Silver Pine Chase', 'Pocahontas', 'ON', 'L3K 2N7', 'CA', '851-939-3072', '651.61', 'tabitha.foster@westcom.com', 'arm4342gazed'), ('24', 'Cecelia Case', '278 Thunder Spring Court', 'Dogpatch', 'SK', 'K3X 8H9', 'CA', '133-528-9338', '592.19', 'cecelia.case@southmedia.net', 'words2666and'), ('25', 'Rhonda Kinney', '683 Crystal Rabbit Estates', 'Plum Run', 'CT', '89219', 'US', '379-603-8848', '46.61', 'rhonda.kinney@fastmedia.com', 'by1506on'), ('26', 'Elvia Giles', '348 Wishing Spring Pike', 'Comobabi', 'ACT', '2611', 'AU', '866-232-4492', '527.02', 'elvia.giles@telenet.net', 'Buck7828dressed'), ('27', 'Flossie Dyer', '428 Round Pond Jetty', 'Forty Fort', 'ND', '81364', 'US', '250-432-4616', '525.73', 'flossie.dyer@cablenet.com', 'French5513came'), ('28', 'Gabriela Davis', '72 Sleepy Autumn Falls', 'Broom Hill', 'VA', '98640', 'US', '234-427-0283', '88.07', 'gabriela.davis@southmedia.net', 'blended7239in'), ('29', 'Dolly Wong', '551 Harvest Brook Canyon', 'Idle Hour', 'OR', '11458', 'US', '882-186-1276', '933.67', 'dolly.wong@northmedia.net', 'round8641in'), ('30', 'Krista Cortez', '118 Honey Autumn Street', 'Hornets Nest', 'TAS', '5796', 'AU', '152-155-6228', '414.66', 'krista.cortez@eastcom.com', 'Ah9215to'), ('31', 'Leta Solomon', '430 Gentle Rabbit Avenue', 'Bethlehem', 'IN', '51064', 'US', '522-447-3315', '332.75', 'leta.solomon@southnet.com', 'or4609the'), ('32', 'Matilda Barrera', '122 Harvest Embers Path', 'Arabia', '', 'YV84 12JC', 'UK', '509-623-2575', '470.32', 'matilda.barrera@northcom.com', 'old8810die'), ('33', 'Tommie Porter', '977 Dusty Oak Mews', 'Purdytown', 'NT', '0730', 'AU', '425-442-7459', '393.80', 'tommie.porter@fastnet.net', 'these9028Cahill'), ('34', 'Helene Gillespie', '299 Hidden Spring Promenade', 'Uno', 'MT', '47378', 'US', '223-198-6215', '608.57', 'helene.gillespie@southcom.com', 'look7293its'), ('35', 'Camille Perez', '272 High Goose Ledge', 'Honduras', 'QLD', '4503', 'AU', '739-437-7330', '901.92', 'camille.perez@northnet.net', 'not4489dirty'), ('36', 'Graciela Joyner', '940 Indian Zephyr Nook', 'Talking Rock', 'NS', 'B2R 6L4', 'CA', '113-619-2642', '714.39', 'graciela.joyner@eastmedia.net', 'grey2166to'), ('37', 'Penelope Molina', '173 Lost Butterfly View', 'Port Protection', 'ACT', '2904', 'AU', '174-508-9795', '916.72', 'penelope.molina@telenet.net', 'of1114of'), ('38', 'Celeste Justice', '514 Velvet Log Pike', 'Manumuskin', 'QC', 'H3V 9S9', 'CA', '400-566-1661', '470.90', 'celeste.justice@southcom.com', 'my6363and'), ('39', 'Lena Conway', '854 Wishing Prairie Woods', 'Yankton', 'MB', 'J6L 2A2', 'CA', '583-290-6400', '757.22', 'lena.conway@eastnet.net', 'tidings4730was'), ('40', 'Katrina Freeman', '761 Foggy Blossom Dale', 'Chuloonawick', 'NSW', '2971', 'AU', '828-751-5394', '952.12', 'katrina.freeman@telemedia.net', 'the5026for'), ('41', 'Jeff Valdez', '556 Sleepy Autumn Dale', 'Podunk', 'ACT', '2916', 'AU', '449-342-6478', '796.50', 'jeff.valdez@telenet.com', 'enough2508was'), ('42', 'Leonardo Parrish', '511 Broad Forest Arbor', 'Gum Neck', '', 'EK86 73GK', 'UK', '154-107-5003', '166.63', 'leonardo.parrish@eastnet.net', 'I9898bend'), ('43', 'Roland Chang', '715 Emerald Goose Dale', 'Rough and Ready', 'VIC', '3626', 'AU', '354-577-0927', '514.16', 'roland.chang@southmedia.com', 'cloud9222Arnolds'), ('44', 'Raymond Sanford', '976 Stony Pine Orchard', 'Massomuck', '', 'OK78 20NI', 'UK', '255-860-6100', '101.41', 'raymond.sanford@cablenet.net', 'swim5067you'), ('45', 'Wilfredo Taylor', '865 Lazy Log Way', 'Novelty', '', 'MF6 8WM', 'UK', '126-579-1787', '25.11', 'wilfredo.taylor@telecom.net', 'of6661if'), ('46', 'Dominick Cline', '12 Rocky Embers Corner', 'Perennial', '', 'ES32 65MO', 'UK', '802-164-5184', '881.77', 'dominick.cline@telecom.com', 'a9039began'), ('47', 'Alonzo Sullivan', '658 Round Brook Court', 'Credit', 'AK', '67587', 'US', '515-990-5498', '344.02', 'alonzo.sullivan@fastmedia.net', 'his2389Arnolds'), ('48', 'Edmond Shepherd', '3 Velvet Willow Cove', 'Chili Center', '', 'DO76 18TG', 'UK', '698-196-5043', '135.29', 'edmond.shepherd@southmedia.com', 'tobacco6334he'), ('49', 'Omar Anthony', '834 Cozy Horse Avenue', 'Possum Trot', 'SC', '11996', 'US', '286-879-7863', '704.89', 'omar.anthony@fastmedia.com', 'sense76with'), ('50', 'Lonnie Eaton', '28 Dewy Beacon Avenue', 'Loving', '', 'MW30 92VW', 'UK', '440-880-4701', '139.07', 'lonnie.eaton@southcom.net', 'and1032you'), ('51', 'Peter Pugh', '166 Fallen Panda Farms', 'Onalaska', '', 'PQ58 4KG', 'UK', '281-836-6273', '651.16', 'peter.pugh@southnet.com', 'turn455doctor'), ('52', 'Jesus Bright', '470 Emerald Bluff Gardens', 'Surprise Creek Colony', 'NM', '51366', 'US', '421-477-3076', '869.09', 'jesus.bright@cablenet.net', 'old1231his'), ('54', 'Ramiro Bentley', '247 Old Hills Pike', 'Blackpipe', 'SD', '12298', 'US', '106-365-4336', '565.81', 'ramiro.bentley@westmedia.com', 'secretary7227is'), ('55', 'Derrick Hendricks', '131 Little Deer Bank', 'Crucible', 'ND', '53349', 'US', '126-470-2321', '601.98', 'derrick.hendricks@westcom.com', 'from5656lobes'), ('56', 'Hans Page', '356 High Mountain Edge', 'Nebraska', 'VIC', '3663', 'AU', '299-403-5986', '352.98', 'hans.page@cablenet.com', 'loudly9297Father'), ('57', 'Garrett Campos', '594 Silver Panda Glen', 'Old House', 'ON', 'M7O 3E7', 'CA', '668-573-5033', '9.47', 'garrett.campos@fastcom.net', 'he8135and'), ('58', 'Todd Lindsey', '340 Grand Shadow Edge', 'Squirrel Town', '', 'FW38 8RB', 'UK', '565-309-4959', '48.91', 'todd.lindsey@fastnet.net', 'an2073Conscience'), ('59', 'Denis Snider', '294 Quaking Autumn Dell', 'Montana', '', 'WF9 18NV', 'UK', '607-807-6536', '266.63', 'denis.snider@telecom.com', 'pain1145He'), ('60', 'Stan Rocha', '617 Tawny Robin Street', 'Kilowatt', 'RI', '58221', 'US', '769-927-2215', '226.94', 'stan.rocha@fastmedia.net', 'search4952your'), ('61', 'Dollie Hernandez', '978 Emerald Island Terrace', 'Clothier', 'SA', '5727', 'AU', '606-186-3768', '385.30', 'dollie.hernandez@cablecom.com', 'legs7212in'), ('62', 'Aileen Duncan', '934 Lazy Beacon Drive', 'Needmore', 'OK', '69966', 'US', '485-897-3845', '286.20', 'aileen.duncan@westnet.net', 'I2597What'), ('63', 'Essie Short', '173 Burning Wagon Swale', 'Chew', 'QC', 'G7L 7O8', 'CA', '238-453-1692', '325.58', 'essie.short@westcom.net', 'the5271Mulligan'), ('64', 'Jami Ruiz', '372 Thunder Bear Corner', 'Carriage Stop', '', 'JH68 24DK', 'UK', '287-514-1540', '819.83', 'jami.ruiz@fastmedia.com', 'and7039and'), ('65', 'Isabel Rodriguez', '886 Foggy Cloud Circle', 'Punta Rassa', '', 'OY57 21CU', 'UK', '851-485-8061', '142.87', 'isabel.rodriguez@fastcom.net', 'grand245jesuit'), ('66', 'Ingrid Santos', '464 Stony Apple Corner', 'New London', 'QC', 'J7H 9C4', 'CA', '213-795-0523', '325.40', 'ingrid.santos@telenet.net', 'Haines6194makes'), ('67', 'Jaime Noel', '162 Gentle Cider Grove', 'Nanjemoy', 'ACT', '2918', 'AU', '557-979-0730', '238.90', 'jaime.noel@telecom.net', 'shall6681said'), ('68', 'Geneva Case', '969 Golden Autumn Dale', 'Christmas Valley', '', 'RC38 20KL', 'UK', '441-489-4311', '268.75', 'geneva.case@westmedia.com', 'hero4443said'), ('69', 'Lucille Bradford', '590 Silver Goose Stead', 'Duckroost', '', 'US59 89VJ', 'UK', '629-231-0907', '677.58', 'lucille.bradford@westmedia.com', 'the3399sat'), ('70', 'Josefina Hampton', '708 Colonial Anchor Ridge', 'Little Axe', 'NH', '95959', 'US', '364-258-1885', '612.14', 'josefina.hampton@telecom.com', 'green8236he'), ('71', 'Fannie Moore', '615 Misty Leaf Farms', 'Bee House', 'AR', '30223', 'US', '361-724-8027', '68.48', 'fannie.moore@cablemedia.net', 'for2716the'), ('72', 'Socorro Jimenez', '961 Indian Treasure Gardens', 'Manifest', 'QLD', '4712', 'AU', '810-296-7738', '576.45', 'socorro.jimenez@telemedia.net', 'trousers7850In'), ('73', 'Elba Mccall', '88 Green Butterfly Vista', 'Rum Branch', 'AB', 'L6S 4V4', 'CA', '117-795-8723', '707.30', 'elba.mccall@eastcom.net', 'Haines6291is'), ('74', 'Louella Allen', '87 Clear View Lane', 'Stab', 'WA', '96937', 'US', '817-300-4727', '847.65', 'louella.allen@telecom.net', 'and4876of'), ('75', 'Jeannette Merritt', '634 Emerald Elk Park', 'Ransom', 'MA', '90878', 'US', '619-703-8687', '146.89', 'jeannette.merritt@northmedia.com', 'wouldnt7889we'), ('76', 'Lana Burns', '293 Hidden Forest Swale', 'Brian Head', 'NT', '0205', 'AU', '328-910-5246', '261.98', 'lana.burns@westcom.com', 'have670I'), ('77', 'Karyn Francis', '871 Rocky Autumn Mews', 'Gassaway', '', 'RF21 26MI', 'UK', '385-836-7870', '919.76', 'karyn.francis@fastnet.com', 'the9642He'), ('78', 'Blanca Le', '179 Noble Pine Place', 'Diagonal', 'NS', 'B6R 2T3', 'CA', '185-787-5938', '833.32', 'blanca.le@telecom.com', 'and6425said'), ('79', 'Renee Decker', '42 Robbers Way', 'Nome', 'ACT', '2900', 'AU', '660-333-4444', '447.83', 'renee.decker@westcom.net', 'Stephens6135that'), ('88', 'Obama', '100 Pennsylvania Avenue', 'Washington', 'D.C.', '11111', 'USA', '111111', '0.00', 'obama@president.gov', 'talking334For'), ('92', 'C.T. Russell', '123 Main Street', 'New York', 'NY', '10001', 'US', '555-1212', '0.00', 'ctrussell@jw.org', 'password'), ('99', 'admin', 'N/A', 'N/A', 'N/A', '99999', 'UK', '000-000-000', '0.00', 'admin@sweetscomplete.com', 'password');
COMMIT;

SET FOREIGN_KEY_CHECKS = 1;
