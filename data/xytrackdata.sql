-- phpMyAdmin SQL Dump
-- version 4.9.7
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Nov 27, 2022 at 01:04 AM
-- Server version: 5.7.39-cll-lve
-- PHP Version: 7.4.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `xyproducts`
--

-- --------------------------------------------------------

--
-- Table structure for table `track_202290_sunset_spots`
--

CREATE TABLE `track_202290_sunset_spots` (
  `id` int(13) NOT NULL,
  `user_id` int(13) NOT NULL,
  `name` varchar(64) NOT NULL,
  `description` text NOT NULL,
  `img` varchar(256) NOT NULL,
  `date_create` datetime NOT NULL,
  `landscape` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `track_202290_sunset_spots`
--

INSERT INTO `track_202290_sunset_spots` (`id`, `user_id`, `name`, `description`, `img`, `date_create`, `landscape`) VALUES
(1, 5, 'Waikiki Beach', 'Buf po davhenre dojuhed miknu okcuj mumuvog ki rume zopsukom el zil at ahu zumic fipu.', 'https://via.placeholder.com/476x368/777/fff/?text=Waikiki Beach', '2021-04-08 08:16:45', 'skyscraper'),
(2, 4, 'Santa Monica', 'Fekazjav luowewi warizaz udjocte focras libemlo fadem unvaslen sahizlo tuhrek zaahi pe uwi zikih.', 'https://via.placeholder.com/403x580/6B9/fff/?text=Santa Monica', '2020-04-05 14:20:33', 'desert'),
(3, 1, 'Twin Peak', 'Ovozo hikodu usajev jattulol johavu zoefaca zurohpur ap hunor zinufi nikuej buz buta.', 'https://via.placeholder.com/442x526/BA9/fff/?text=Twin Peak', '2020-02-03 00:34:44', 'park'),
(4, 2, 'Waikiki Beach', 'Si peso mefanad ki tilco zo duf ac go unguj geivuco ero.', 'https://via.placeholder.com/562x511/779/fff/?text=Waikiki Beach', '2020-11-22 20:33:56', 'skyscraper'),
(5, 2, 'Lands End', 'Haw lucu du wukgibu itmi lolagu na li sukdaag zooj ve ko.', 'https://via.placeholder.com/583x497/699/fff/?text=Lands End', '2022-08-02 20:31:55', 'park'),
(6, 9, 'Venice Beach', 'Ewjuv cu li aporeil ibuzatna vad se ne dehzakfu pu uje conaso gegpaizo pegra zozu bu calotgit.', 'https://via.placeholder.com/463x410/774/fff/?text=Venice Beach', '2020-02-04 12:21:06', 'cliff'),
(7, 8, 'Salesforce Towel', 'Ob huz gepecot azwe vegcola pi tek jajcavag harfil he du deuwi go lofevhi repizow uvtefcut worowkuv.', 'https://via.placeholder.com/537x546/576/fff/?text=Salesforce Towel', '2022-04-10 02:37:13', 'top of mountain'),
(8, 7, 'Salesforce Towel', 'Diureji jonis wupinap pahgese kuehuaj lej suvcut bok ek gadokha pericob jijmeho zoalsaz mitim mibfij seumedu.', 'https://via.placeholder.com/533x436/485/fff/?text=Salesforce Towel', '2021-04-17 09:13:46', 'park'),
(9, 1, 'Venice Beach', 'Ja ud depod gej zikgigjet hez tojlakuc vohibiv cuj vihevjaf zetca punze ke ri cebegac pu upden jicoso.', 'https://via.placeholder.com/424x441/454/fff/?text=Venice Beach', '2020-01-02 19:58:20', 'skyscraper'),
(10, 8, 'Mori Point', 'Nammiah icacot fe zev kot fufujuj nujero sijineov su fuw jo nodopre bati owfoh.', 'https://via.placeholder.com/466x520/B95/fff/?text=Mori Point', '2021-09-17 05:39:07', 'desert'),
(11, 1, 'Mori Point', 'Sewdalu ceji zalwibpu dalauju nenfoki dokmin tememwef puwlu uga pok gab reti ij idvi.', 'https://via.placeholder.com/355x356/BAB/fff/?text=Mori Point', '2021-12-26 19:23:40', 'cliff'),
(12, 10, 'Venice Beach', 'Hij cona lopdibkag haavalu hu kabuh ferbu ral to gohec dan rowvecwu moze en uwakasej jo.', 'https://via.placeholder.com/582x389/9B8/fff/?text=Venice Beach', '2021-03-11 10:46:08', 'park'),
(13, 4, 'Salesforce Towel', 'Suhe arsa ecmoaf daluc gusugo wuhlo pap hagasu zadri sul wewwecci epod lu oro zu wevga usi.', 'https://via.placeholder.com/547x419/6A9/fff/?text=Salesforce Towel', '2020-04-25 19:36:03', 'desert'),
(14, 4, 'Twin Peak', 'Maj keh ofzuzo ejvetab fampiot isaot rer je pi gase lip huw ulijez gerahega nizadavo azi bidnoguhi zig.', 'https://via.placeholder.com/531x523/67B/fff/?text=Twin Peak', '2021-02-27 16:44:15', 'lake'),
(15, 2, 'Waikiki Beach', 'Zavweh joc iwitovzaj ecopuk linotjas impuvav zo eva rigip fujij wud wu tacuugu dovollo suf buw edocok.', 'https://via.placeholder.com/375x476/6B6/fff/?text=Waikiki Beach', '2021-08-23 02:40:25', 'top of mountain'),
(16, 5, 'Mori Point', 'Neppeddo ni hegla lojvaveg taapken loav lob seowokaj vahbuhwe owofe bug ta.', 'https://via.placeholder.com/503x474/B98/fff/?text=Mori Point', '2022-05-08 22:47:27', 'park'),
(17, 6, 'Salesforce Towel', 'Me wesdu pij ektunpe fiwwuchoj lilnum ez tezohu sure ew nillafes picwe si nomova ne zudare.', 'https://via.placeholder.com/560x441/575/fff/?text=Salesforce Towel', '2022-10-19 20:21:28', 'river'),
(18, 7, 'Santa Monica', 'Pi ogowudi canvuzel vikejzi matcifat mobka fuocli zoto tiv asi hocac vimistaj inunin.', 'https://via.placeholder.com/560x482/489/fff/?text=Santa Monica', '2020-02-09 01:12:07', 'top of mountain'),
(19, 5, 'Napa Valley', 'Notti pu timuwo gomik ceziri facag bivvido bategma rafjez kigarjub igha lo cavve memmaf zibuco mej.', 'https://via.placeholder.com/513x591/789/fff/?text=Napa Valley', '2022-11-07 22:21:51', 'park'),
(20, 5, 'Lands End', 'Dusrodis tipgo terpak awhi wapiris tibnajej gadi luwdu ija vasit poce uceaso kuawous parsidnav.', 'https://via.placeholder.com/458x567/6B7/fff/?text=Lands End', '2022-04-15 23:27:05', 'skyscraper'),
(21, 6, 'Napa Valley', 'Zonazu dieheja zif tovine etfita suceduri jeganah zafogob pic miufu siandir la ep hahjub mokenpe.', 'https://via.placeholder.com/485x584/6A6/fff/?text=Napa Valley', '2020-01-06 19:34:02', 'desert'),
(22, 6, 'Waikiki Beach', 'Tihwodwi de waumer lisifzu bu imueg uzje dusjaj wucwosek go omu dohzef ciroino uh.', 'https://via.placeholder.com/514x491/A97/fff/?text=Waikiki Beach', '2021-11-19 18:08:11', 'skyscraper'),
(23, 9, 'Napa Valley', 'Upbug lisgum hebebi wabzage burehoti awahuddu hijegja malgugdab geiw abujaibo fe gi jiw ha wa.', 'https://via.placeholder.com/397x451/A84/fff/?text=Napa Valley', '2020-07-16 05:53:25', 'river'),
(24, 9, 'Waikiki Beach', 'Jiszake teh jes toku nuvuhgu alapawi hiela aw gihnudwit pasip zukuwgez la decipfe bak nonefo pif.', 'https://via.placeholder.com/468x528/833/fff/?text=Waikiki Beach', '2021-03-29 05:24:14', 'cliff'),
(25, 5, 'Mori Point', 'Turiom kasa kadeche pik mun ginazwu zo zafihva ni pohbakip detsep nun vegol domoh.', 'https://via.placeholder.com/396x430/365/fff/?text=Mori Point', '2020-10-22 11:41:05', 'desert'),
(26, 9, 'Lands End', 'Horwapha ufpe daji dinoesa mofwornol fafcogu mugo uj juvib nir niwhinuv ku ziofeke.', 'https://via.placeholder.com/393x413/357/fff/?text=Lands End', '2021-01-27 21:38:17', 'beach'),
(27, 3, 'Waikiki Beach', 'Wa wipfe we caszaho jiwzog jupiru ejobubto celujis gazzophim jactedes ijno anozo ezobutuz fi makmuc.', 'https://via.placeholder.com/574x382/378/fff/?text=Waikiki Beach', '2020-02-27 14:50:07', 'skyscraper'),
(28, 8, 'Twin Peak', 'Ac rubadum zuecefeh nesir hicotesa casis govnuhij sesabu ces ifaog cosvi fe ag rudutcor bo niwuage.', 'https://via.placeholder.com/374x471/949/fff/?text=Twin Peak', '2022-07-25 10:45:00', 'top of mountain'),
(29, 10, 'Santa Monica', 'Kevjar inujetef gic niltome id icbu pohafopi lur uro za kecwaf evuzuwo fu.', 'https://via.placeholder.com/515x546/8B6/fff/?text=Santa Monica', '2020-09-01 07:59:39', 'beach'),
(30, 4, 'Mori Point', 'Re sigda oze go mo romom polhucje wazte wajubijo zab harfufi gurjodho go kawag pahrawcu emi huhtul.', 'https://via.placeholder.com/428x431/5BB/fff/?text=Mori Point', '2020-08-17 22:07:46', 'lake');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `track_202290_sunset_spots`
--
ALTER TABLE `track_202290_sunset_spots`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `track_202290_sunset_spots`
--
ALTER TABLE `track_202290_sunset_spots`
  MODIFY `id` int(13) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=258;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
