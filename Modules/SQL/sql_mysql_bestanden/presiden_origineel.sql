-- MySQL Administrator dump 1.4
--
-- ------------------------------------------------------
-- Server version	5.1.41


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;


--
-- Create schema presiden
--

CREATE DATABASE IF NOT EXISTS presiden;
USE presiden;

--
-- Definition of table `administ`
--

DROP TABLE IF EXISTS `administ`;
CREATE TABLE `administ` (
  `ADMIN_NR` int(11) DEFAULT NULL,
  `PRES_NAME` varchar(20) DEFAULT NULL,
  `YEAR_INAUG` int(11) DEFAULT NULL,
  `VICE_PRES` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `administ`
--

/*!40000 ALTER TABLE `administ` DISABLE KEYS */;
INSERT INTO `administ` (`ADMIN_NR`,`PRES_NAME`,`YEAR_INAUG`,`VICE_PRES`) VALUES 
 (1,'Washington G',1789,'Adams J'),
 (2,'Washington G',1793,'Adams J'),
 (3,'Adams J',1797,'Jefferson T'),
 (4,'Jefferson T',1801,'Burr A'),
 (5,'Jefferson T',1805,'Clinton G'),
 (6,'Madison J',1809,'Clinton G'),
 (7,'Madison J',1813,'Gerry E'),
 (8,'Monroe J',1817,'Tompkins D'),
 (9,'Monroe J',1821,'Tompkins D'),
 (10,'Adams J Q',1825,'Calhoun J'),
 (11,'Jackson A',1829,'Calhoun J'),
 (12,'Jackson A',1833,'Van Buren M'),
 (13,'Van Buren M',1837,'Johnson R M'),
 (14,'Harrison W H',1841,'Tyler J'),
 (15,'Polk J K',1845,'Dallas G M'),
 (16,'Taylor Z',1849,'Fillmore M'),
 (17,'Pierce F',1853,'De Vane King W R'),
 (18,'Buchanan J',1857,'Breckinridge J C'),
 (19,'Lincoln A',1861,'Hamlin H'),
 (20,'Lincoln A',1865,'Johnson A'),
 (21,'Grant U S',1869,'Colfax S'),
 (22,'Grant U S',1873,'Wilson H'),
 (23,'Hayes R B',1877,'Wheeler W'),
 (24,'Garfield J A',1881,'Arthur C A'),
 (25,'Cleveland G',1885,'Hendricks T A'),
 (26,'Harrison B',1889,'Mortron L P'),
 (27,'Cleveland G',1893,'Stevenson A E'),
 (28,'McKinley W',1897,'Hobart G A'),
 (29,'McKinley W',1901,'Roosevelt T'),
 (30,'Roosevelt T',1905,'Fairbanks C W'),
 (31,'Taft W H',1909,'Sherman J S'),
 (32,'Wilson W',1913,'Marshall T R'),
 (33,'Wilson W',1917,'Marshall T R'),
 (34,'Harding W G',1921,'Coolidge C'),
 (35,'Coolidge C',1925,'Dawes C G'),
 (36,'Hoover H C',1929,'Curtis C'),
 (37,'Roosevelt F D',1933,'Garner J N'),
 (38,'Roosevelt F D',1937,'Garner J N'),
 (39,'Roosevelt F D',1941,'Wallace H A'),
 (40,'Roosevelt F D',1945,'Truman H S'),
 (41,'Truman H S',1949,'Barkley A W'),
 (42,'Eisenhower D D',1953,'Nixon R M'),
 (43,'Eisenhower D D',1957,'Nixon R M'),
 (44,'Kennedy J F',1961,'Johnson L B'),
 (45,'Johnson L B',1965,'Humprey H H'),
 (46,'Nixon R M',1969,'Agnew S T'),
 (47,'Nixon R M',1970,'Agnew S T'),
 (47,'Nixon R M',1973,'Ford G R'),
 (47,'Ford G R',1974,'Rockefeller N A'),
 (48,'Carter J E',1977,'Mondale Wf'),
 (49,'Reagan R',1981,'Bush G'),
 (50,'Reagan R',1985,'Bush G'),
 (51,'Bush G',1989,'Quayle D'),
 (52,'Clinton B',1993,'Gore A'),
 (53,'Clinton B',1997,'Gore A'),
 (54,'Bush G W',2001,'Cheney D'),
 (55,'Bush G W',2005,'Cheney D');
/*!40000 ALTER TABLE `administ` ENABLE KEYS */;


--
-- Definition of table `election`
--

DROP TABLE IF EXISTS `election`;
CREATE TABLE `election` (
  `ELECTIO_YE` int(11) DEFAULT NULL,
  `CANDIDATE` varchar(20) DEFAULT NULL,
  `VOTES` double(15,5) DEFAULT NULL,
  `WINNERLOSE` varchar(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `election`
--

/*!40000 ALTER TABLE `election` DISABLE KEYS */;
INSERT INTO `election` (`ELECTIO_YE`,`CANDIDATE`,`VOTES`,`WINNERLOSE`) VALUES 
 (1789,'Washington G',69.00000,'W'),
 (1789,'Adams J',34.00000,'L'),
 (1789,'Jay J',9.00000,'L'),
 (1789,'Harrison R H',6.00000,'L'),
 (1789,'Rutledge J',6.00000,'L'),
 (1789,'Hancock J',4.00000,'L'),
 (1789,'Clinton G',3.00000,'L'),
 (1789,'Huntington S',2.00000,'L'),
 (1789,'Milton J',2.00000,'L'),
 (1789,'Armstrong J',1.00000,'L'),
 (1789,'Lincoln B',1.00000,'L'),
 (1789,'Telfair E',1.00000,'L'),
 (1792,'Washington G',132.00000,'W'),
 (1792,'Adams J',77.00000,'L'),
 (1792,'Clinton G',50.00000,'L'),
 (1792,'Jefferson T',4.00000,'L'),
 (1792,'Burr A',1.00000,'L'),
 (1796,'Adams J',71.00000,'W'),
 (1796,'Jefferson T',68.00000,'L'),
 (1796,'Pickney T',59.00000,'L'),
 (1796,'Burr A',30.00000,'L'),
 (1796,'Adams S',15.00000,'L'),
 (1796,'Ellsworth O',11.00000,'L'),
 (1796,'Clinton G',7.00000,'L'),
 (1796,'Jay J',5.00000,'L'),
 (1796,'Irell J',3.00000,'L'),
 (1796,'Henry J',2.00000,'L'),
 (1796,'Johnson S',2.00000,'L'),
 (1796,'Washington G',2.00000,'L'),
 (1796,'Pinckney C C',1.00000,'L'),
 (1800,'Jefferson T',73.00000,'W'),
 (1800,'Burr A',73.00000,'L'),
 (1800,'Adams J',65.00000,'L'),
 (1800,'Pinckney C C',64.00000,'L'),
 (1800,'Jay J',1.00000,'L'),
 (1804,'Jefferson T',162.00000,'W'),
 (1804,'Pinckney C C',14.00000,'L'),
 (1808,'Madison J',122.00000,'W'),
 (1808,'Pinckney C C',47.00000,'L'),
 (1808,'Clinton G',6.00000,'L'),
 (1812,'Madison J',128.00000,'W'),
 (1812,'Clinton G',89.00000,'L'),
 (1816,'Monroe J',183.00000,'W'),
 (1816,'King R',34.00000,'L'),
 (1820,'Monroe J',231.00000,'W'),
 (1820,'Adams J Q',1.00000,'L'),
 (1824,'Adams J Q',84.00000,'W'),
 (1824,'Jackson A',99.00000,'L'),
 (1824,'Crawford W H',41.00000,'L'),
 (1824,'Clay H',37.00000,'L'),
 (1828,'Jackson A',178.00000,'W'),
 (1828,'Adams J',83.00000,'L'),
 (1832,'Jackson A',219.00000,'W'),
 (1832,'clay H',49.00000,'L'),
 (1832,'Floyd J',11.00000,'L'),
 (1832,'Wirt W',7.00000,'L'),
 (1836,'Van Buren M',170.00000,'W'),
 (1836,'Harrison W H',73.00000,'L'),
 (1836,'White H L',26.00000,'L'),
 (1836,'Webster D',14.00000,'L'),
 (1836,'Mangum W P',11.00000,'L'),
 (1840,'Harrison W H',234.00000,'W'),
 (1840,'Van Buren M',60.00000,'L'),
 (1844,'Polk J K',170.00000,'W'),
 (1844,'Clay H',105.00000,'L'),
 (1848,'Taylor Z',163.00000,'W'),
 (1848,'Cass L',127.00000,'L'),
 (1852,'Pierce F',254.00000,'W'),
 (1852,'Scott W',42.00000,'L'),
 (1856,'Buchanan J',174.00000,'W'),
 (1856,'Fremont J C',114.00000,'L'),
 (1856,'Fillmore M',8.00000,'L'),
 (1860,'Lincoln A',180.00000,'W'),
 (1860,'Breckinridge J',72.00000,'L'),
 (1860,'Bell J',39.00000,'L'),
 (1860,'Douglas S',12.00000,'L'),
 (1864,'Lincoln A',212.00000,'W'),
 (1864,'McClellan G B',21.00000,'L'),
 (1868,'Grant U S',214.00000,'W'),
 (1868,'Seymour',80.00000,'L'),
 (1872,'Grant U S',286.00000,'W'),
 (1872,'Hendricks T A',42.00000,'L'),
 (1872,'Brown B G',18.00000,'L'),
 (1872,'Jenkins C J',2.00000,'L'),
 (1872,'Davis D',1.00000,'L'),
 (1876,'Hayes R B',185.00000,'W'),
 (1876,'Tilden S J',184.00000,'L'),
 (1880,'Garfield J A',214.00000,'W'),
 (1880,'Hancock W S',155.00000,'L'),
 (1884,'Cleveland G',219.00000,'W'),
 (1884,'Blaine J G',182.00000,'L'),
 (1888,'Harrison B',233.00000,'W'),
 (1888,'Cleveland G',168.00000,'L'),
 (1892,'Cleveland G',277.00000,'W'),
 (1892,'Harrison B',145.00000,'L'),
 (1892,'Weaver J B',22.00000,'L'),
 (1896,'McKinley W',271.00000,'W'),
 (1896,'Bryan W J',176.00000,'W'),
 (1900,'McKinley W',292.00000,'W'),
 (1900,'Bryan W J',155.00000,'L'),
 (1904,'Roosevelt T',336.00000,'W'),
 (1904,'Parker A B',140.00000,'L'),
 (1908,'Taft W H',321.00000,'W'),
 (1908,'Bryan W J',162.00000,'L'),
 (1912,'Wilson W',435.00000,'W'),
 (1912,'Roosevelt T',88.00000,'L'),
 (1912,'Taft W H',8.00000,'L'),
 (1916,'Wilson W',277.00000,'W'),
 (1916,'Hughes C E',254.00000,'L'),
 (1920,'Harding W G',404.00000,'W'),
 (1920,'Cox W W',127.00000,'L'),
 (1924,'Coolidge C',382.00000,'W'),
 (1924,'Davis J W',136.00000,'L'),
 (1924,'La Follette R M',13.00000,'L'),
 (1928,'Hoover H C',444.00000,'W'),
 (1928,'Smith A E',87.00000,'L'),
 (1932,'Roosevelt F D',472.00000,'W'),
 (1932,'Hoover H C',59.00000,'L'),
 (1936,'Roosevelt F D',523.00000,'W'),
 (1936,'Landon A M',8.00000,'L'),
 (1940,'Roosevelt F D',449.00000,'W'),
 (1940,'Wilkie W L',82.00000,'L'),
 (1944,'Roosevelt F D',432.00000,'W'),
 (1944,'Dewey T E',99.00000,'L'),
 (1948,'Truman H S',303.00000,'W'),
 (1948,'Dewey T E',189.00000,'L'),
 (1948,'Thurmond J S',39.00000,'L'),
 (1952,'Eisenhouwer D D',442.00000,'W'),
 (1952,'Stevenson A',89.00000,'L'),
 (1956,'Eisenhouwer D D',457.00000,'W'),
 (1956,'Stevenson A',73.00000,'L'),
 (1956,'Jones W B',1.00000,'L'),
 (1960,'Kennedy J F',303.00000,'W'),
 (1960,'Nixon R M',219.00000,'L'),
 (1960,'Byrd',15.00000,'L'),
 (1964,'Johnson L B',486.00000,'W'),
 (1964,'Goldwater',52.00000,'L'),
 (1968,'Nixon R M',301.00000,'W'),
 (1968,'Humphrey H H',191.00000,'L'),
 (1968,'Wallace G C',46.00000,'L'),
 (1972,'Nixon R M',520.00000,'W'),
 (1972,'McGovern G S',17.00000,'L'),
 (1972,'Hospers J',1.00000,'L'),
 (1976,'Carter J E',297.00000,'W'),
 (1976,'Ford G R',240.00000,'L'),
 (1980,'Reagan R',489.00000,'W'),
 (1980,'Carter J E',49.00000,'L'),
 (1992,'Clinton B',370.00000,'W'),
 (1992,'Bush G',168.00000,'L'),
 (1992,'Perot R',0.00000,'L'),
 (1996,'Clinton B',0.00000,'W'),
 (1996,'Dole B',0.00000,'L'),
 (2000,'Bush G W',0.00000,'W'),
 (2000,'Gore A',0.00000,'L'),
 (2004,'Bush G W',286.00000,'W'),
 (2004,'Kerry J',0.00000,'L');
/*!40000 ALTER TABLE `election` ENABLE KEYS */;


--
-- Definition of table `pres_hob`
--

DROP TABLE IF EXISTS `pres_hob`;
CREATE TABLE `pres_hob` (
  `PRES_NAME` varchar(20) DEFAULT NULL,
  `HOBBY` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pres_hob`
--

/*!40000 ALTER TABLE `pres_hob` DISABLE KEYS */;
INSERT INTO `pres_hob` (`PRES_NAME`,`HOBBY`) VALUES 
 ('Adams J Q','Billiards'),
 ('Adams J Q','Swimming'),
 ('Adams J Q','Walking'),
 ('Arthur C A','Fishing'),
 ('Bush','Fishing'),
 ('Bush','Shooting'),
 ('Cleveland G','Fishing'),
 ('Coolidge C','Fishing'),
 ('Coolidge C','Golf'),
 ('Coolidge C','Indian Clubs'),
 ('Coolidge C','Mechanical Horse'),
 ('Coolidge C','Pitching Hay'),
 ('Eisenhouwer D D','Bridge'),
 ('Eisenhouwer D D','Fishing'),
 ('Eisenhouwer D D','Golf'),
 ('Eisenhouwer D D','Hunting'),
 ('Eisenhouwer D D','Painting'),
 ('Garfield J A','Billiards'),
 ('Harding W G','Golf'),
 ('Harding W G','Poker'),
 ('Harding W G','Riding'),
 ('Harrison B','Hunting'),
 ('Hayens R B','Croquet'),
 ('Hayens R B','Driving'),
 ('Hayens R B','Shooting'),
 ('Hoover H C','Fishing'),
 ('Hoover H C','Medicine Ball'),
 ('Jackson A','Riding'),
 ('Johnson L B','Riding'),
 ('Kennedy J F','Sailing'),
 ('Kennedy J F','Swimming'),
 ('Kennedy J F','Touch Football'),
 ('Lincoln A','Walking'),
 ('McKinley W','Riding'),
 ('McKinley W','Swimming'),
 ('McKinley W','Walking'),
 ('Nixon R M','Golf'),
 ('Reagan R','Shooting'),
 ('Roosevelt F D','Fishing'),
 ('Roosevelt F D','Sailing'),
 ('Roosevelt F D','Swimming'),
 ('Roosevelt T','Boxing'),
 ('Roosevelt T','Hunting'),
 ('Roosevelt T','Jujitsu'),
 ('Roosevelt T','Riding'),
 ('Roosevelt T','Shooting'),
 ('Roosevelt T','Tennis'),
 ('Roosevelt T','Wrestling'),
 ('Taft W H','Golf'),
 ('Taft W H','Riding'),
 ('Taylor Z','Riding'),
 ('Truman H S','Fishing'),
 ('Truman H S','Poker'),
 ('Truman H S','Walking'),
 ('Van Buren M','Riding'),
 ('Washington G','Fishing'),
 ('Washington G','Riding'),
 ('Wilson W','Golf'),
 ('Wilson W','Riding'),
 ('Wilson W','Walking'),
 ('Clinton B','Sax'),
 ('Bush G W','Baseball');
/*!40000 ALTER TABLE `pres_hob` ENABLE KEYS */;


--
-- Definition of table `pres_mar`
--

DROP TABLE IF EXISTS `pres_mar`;
CREATE TABLE `pres_mar` (
  `PRES_NAME` varchar(20) DEFAULT NULL,
  `SPOUSE_NAM` varchar(20) DEFAULT NULL,
  `PR_AGE` int(11) DEFAULT NULL,
  `SP_AGE` int(11) DEFAULT NULL,
  `NR_CHILDRE` int(11) DEFAULT NULL,
  `MAR_YEAR` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pres_mar`
--

/*!40000 ALTER TABLE `pres_mar` DISABLE KEYS */;
INSERT INTO `pres_mar` (`PRES_NAME`,`SPOUSE_NAM`,`PR_AGE`,`SP_AGE`,`NR_CHILDRE`,`MAR_YEAR`) VALUES 
 ('Washington G','Curtis M D',26,27,0,1759),
 ('Adams J','Smith A',28,19,5,1764),
 ('Jefferson T','Skelton M W',28,23,6,1772),
 ('Madison J','Todd D D P',43,26,0,1794),
 ('Monroe J','Kortright E',27,17,3,1786),
 ('Adams J Q','Johnson L C',30,22,4,1797),
 ('Jackson A','Robards R D',26,26,0,1794),
 ('Van Buren M','Hoes H',24,23,4,1807),
 ('Harrison W H','Symmes A T',22,20,10,1795),
 ('Tyler J','Christian L',23,22,8,1813),
 ('Tyler J','Gardiner J',54,24,7,1844),
 ('Polk J K','Childress S',28,20,0,1824),
 ('Taylor Z','Smith M M',25,21,6,1810),
 ('Fillmore M','Powers A',26,27,2,1826),
 ('Fillmore M','McIntosh C C',58,44,0,1858),
 ('Pierce F','Appleton J M',29,28,3,1834),
 ('Lincoln A','Todd M',33,23,4,1842),
 ('Johnson A','McCardle E',18,16,5,1827),
 ('Grant U S','Dent J B',26,22,4,1848),
 ('Hayes R B','Webb L W',30,21,8,1852),
 ('Garfield J A','Rudolph L',26,26,7,1858),
 ('Arthur C A','Herndon E L',29,22,3,1859),
 ('Cleveland G','Folson F',49,21,5,1886),
 ('Harrison B','Scott C L',20,21,2,1853),
 ('Harrison B','Dimmick M S L',62,37,1,1896),
 ('McKinley W','Saxton I',27,23,2,1871),
 ('Roosevelt T','Lee A H',22,19,1,1880),
 ('Roosevelt T','Carow E K',28,25,5,1886),
 ('Taft W H','Herron H',28,25,3,1886),
 ('Wilson W','Axson E L',28,25,3,1885),
 ('Wilson W','Galt E B',58,43,0,1915),
 ('Harding W G','De Wolfe F K',25,30,0,1891),
 ('Coolidge C','Goodhue G A',33,26,2,1905),
 ('Hoover H C','Henry L',24,23,2,1899),
 ('Roosevelt F D','Roosevelt A E',23,20,6,1905),
 ('Truman H S','Wallace E V',35,34,1,1919),
 ('Eisenhouwer D D','Doud G',25,19,2,1916),
 ('Kennedy J F','Bouvier J L',36,24,3,1953),
 ('Johnson L B','Taylor C A',26,21,2,1934),
 ('Nixon R M','Ryan T C',27,28,2,1940),
 ('Ford G R','Warren E B',35,30,4,1948),
 ('Carter J E','Smith R',21,18,4,1946),
 ('Reagan R','Wyman J',28,25,2,1940),
 ('Reagan R','Davis N',41,28,2,1952),
 ('Bush G','? Barbara',0,0,0,0),
 ('Clinton B','Rodham H',25,24,1,1971),
 ('Bush G W','Welsh L',31,31,2,1977);
/*!40000 ALTER TABLE `pres_mar` ENABLE KEYS */;


--
-- Definition of table `presiden`
--

DROP TABLE IF EXISTS `presiden`;
CREATE TABLE `presiden` (
  `PRES_NAME` varchar(20) DEFAULT NULL,
  `BIRTH_YR` int(11) DEFAULT NULL,
  `YRS_SERV` int(11) DEFAULT NULL,
  `DEATH_AGE` int(10) DEFAULT NULL,
  `PARTY` varchar(10) DEFAULT NULL,
  `STATE_BORN` varchar(15) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `presiden`
--

/*!40000 ALTER TABLE `presiden` DISABLE KEYS */;
INSERT INTO `presiden` (`PRES_NAME`,`BIRTH_YR`,`YRS_SERV`,`DEATH_AGE`,`PARTY`,`STATE_BORN`) VALUES 
 ('Washington G',1732,7,67,'Federalist','Virginia'),
 ('Adams J',1735,4,90,'Federalist','Massachusetts'),
 ('Jefferson T',1743,8,83,'Demo-Rep','Virginia'),
 ('Madison J',1751,8,85,'Demo-Rep','Virginia'),
 ('Monroe J',1758,8,73,'Demo-Rep','Virginia'),
 ('Adams J Q',1767,4,80,'Demo-Rep','Massachusetts'),
 ('Jackson A',1767,8,78,'Democratic','South Carolina'),
 ('Van Buren M',1782,4,79,'Democratic','New York'),
 ('Harrison W H',1773,0,68,'Whig','Virginia'),
 ('Tyler J',1790,3,71,'Whig','Virginia'),
 ('Polk J K',1795,4,53,'Democratic','North Carolina'),
 ('Taylor Z',1784,1,65,'Whig','Virginia'),
 ('Fillmore M',1800,2,74,'Whig','New York'),
 ('Pierce F',1804,4,64,'Democratic','New Hampshire'),
 ('Buchanan J',1791,4,77,'Democratic','Pennsylvania'),
 ('Lincoln A',1809,4,56,'Republican','Kentucky'),
 ('Johnson A',1808,3,66,'Democratic','North Carolina'),
 ('Grant U S',1822,8,63,'Republican','Ohio'),
 ('Hayes R B',1822,4,70,'Republican','Ohio'),
 ('Garfield J A',1831,0,49,'Republican','Ohio'),
 ('Arthur C A',1830,3,56,'Republican','Vermont'),
 ('Cleveland G',1837,8,71,'Democratic','New Jersey'),
 ('Harrison B',1833,4,67,'Republican','Ohio'),
 ('McKinley W',1843,4,58,'Republican','Ohio'),
 ('Roosevelt T',1858,7,60,'Republican','New York'),
 ('Taft W H',1857,4,72,'Republican','Ohio'),
 ('Wilson W',1856,8,67,'Democratic','Virginia'),
 ('Harding W G',1865,2,57,'Republican','Ohio'),
 ('Coolidge C',1872,5,60,'Republican','Vermont'),
 ('Hoover H C',1874,4,90,'Republican','Iowa'),
 ('Roosevelt F D',1882,12,63,'Democratic','New York'),
 ('Truman H S',1884,7,88,'Democratic','Missouri'),
 ('Eisenhouwer D D',1890,8,79,'Republican','Texas'),
 ('Kennedy J F',1917,2,46,'Democratic','Massachusetts'),
 ('Johnson L B',1908,5,65,'Democratic','Texas'),
 ('Nixon R M',1913,5,0,'Republican','California'),
 ('Ford G R',1913,2,0,'Republican','Nebraska'),
 ('Carter J E',1924,4,0,'Democratic','Georgia'),
 ('Reagan R',1911,8,93,'Republican','Illinois'),
 ('Bush G',1924,4,0,'Republican','Texas'),
 ('Clinton B',1946,8,0,'Democratic','Arkansas'),
 ('Bush G W',1946,0,0,'Republican','Texas');
/*!40000 ALTER TABLE `presiden` ENABLE KEYS */;


--
-- Definition of table `state`
--

DROP TABLE IF EXISTS `state`;
CREATE TABLE `state` (
  `STATE_NAME` varchar(15) DEFAULT NULL,
  `ADMIN_ENTE` int(11) DEFAULT NULL,
  `YEAR_ENTER` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `state`
--

/*!40000 ALTER TABLE `state` DISABLE KEYS */;
INSERT INTO `state` (`STATE_NAME`,`ADMIN_ENTE`,`YEAR_ENTER`) VALUES 
 ('Massachusetts',0,1776),
 ('Pennsylvania',0,1776),
 ('Virginia',0,1776),
 ('Connecticut',0,1776),
 ('South Carolina',0,1776),
 ('Maryland',0,1776),
 ('New Georgia',0,1776),
 ('New Hampshire',0,1776),
 ('Delaware',0,1776),
 ('New York',0,1776),
 ('North Carolina',0,1776),
 ('Rhode Island',0,1776),
 ('Vermont',1,1791),
 ('Kentucky',1,1792),
 ('Tennessee',2,1796),
 ('Ohio',4,1803),
 ('Louisianna',6,1812),
 ('Indiana',7,1816),
 ('Mississippi',8,1817),
 ('Illinois',8,1818),
 ('Alabama',8,1819),
 ('Maine',8,1820),
 ('Missouri',9,1821),
 ('Arkansas',12,1836),
 ('Michigan',12,1837),
 ('Florida',14,1845),
 ('Texas',15,1845),
 ('Iowa',15,1846),
 ('Wisconsin',15,1848),
 ('California',16,1850),
 ('Minnesota',18,1858),
 ('Oregan',18,1859),
 ('Kansas',18,1861),
 ('West Virginia',19,1863),
 ('Nevada',19,1864),
 ('Nebraska',20,1867),
 ('Colorado',22,1876),
 ('North Dakota',26,1889),
 ('South Dakota',26,1889),
 ('Montana',26,1889),
 ('Washington',26,1889),
 ('Idaho',26,1890),
 ('Wyoming',26,1890),
 ('Utah',27,1896),
 ('Oklahoma',30,1907),
 ('New Mexico',31,1912),
 ('Arizona',31,1912),
 ('Alaska',43,1959),
 ('Hawaii',43,1959),
 ('Georgia',14,1845),
 ('New Jersey',26,1890);
/*!40000 ALTER TABLE `state` ENABLE KEYS */;




/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
