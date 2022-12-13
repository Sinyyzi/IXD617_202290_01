-- phpMyAdmin SQL Dump
-- version 4.9.7
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Dec 12, 2022 at 10:56 PM
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
(13, 4, 'Salesforce Tower', 'Suhe arsa ecmoaf daluc gusugo wuhlo pap hagasu zadri sul wewwecci epod lu oro zu wevga usi.', 'uploads/1670808692.5221_battery_spencer.jpeg', '2020-04-25 19:36:03', 'City'),
(14, 4, 'Twin Peak', 'Maj keh ofzuzo ejvetab fampiot isaot rer je pi gase lip huw ulijez gerahega nizadavo azi bidnoguhi zig.', 'uploads/1670808730.7354_test1.jpg', '2021-02-27 16:44:15', 'Lake'),
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
(30, 4, 'Mori Point', 'Re sigda oze go mo romom polhucje wazte wajubijo zab harfufi gurjodho go kawag pahrawcu emi huhtul.', 'uploads/1670808777.3319_test3.jpg', '2020-08-17 22:07:46', 'Desert'),
(291, 4, '17 miles', 'This is a good spot', 'uploads/1670724424.4437_land_ends.jpg', '2022-12-10 19:07:05', 'Beach'),
(298, 4, 'Lands end', 'Great spot to view sunset', 'uploads/1670810373.6616_sf_sunset2.jpeg', '2022-12-11 18:26:31', 'Wetland'),
(299, 4, 'Mauna Kea', 'Cold!', 'uploads/1670810311.3786_test4.jpg', '2022-12-11 18:27:25', 'Mountain'),
(302, 12, 'Golden Gate Sunset', 'Beautiful scene with the bridge, beach, and rocks.', 'uploads/1670836429.1426_golden-gate1.jpeg', '2022-12-12 02:16:16', 'Above the sea'),
(303, 12, 'Lombard St. Sunset', 'Famous Spot', 'uploads/1670837325.0015_lombard2.jpeg', '2022-12-12 02:28:47', 'Hill'),
(304, 12, 'Twin Peaks Sunset', 'Famous Spot in SF', 'uploads/1670837998.642_twin-peaks1.jpeg', '2022-12-12 02:40:00', 'Hill'),
(305, 12, 'Foster City Sunset', 'Along a peaceful lake', 'uploads/1670838451.9241_foster-city1.jpeg', '2022-12-12 02:47:35', 'Lake'),
(306, 12, 'Lands End', 'Then sunset here is mysterious to me. It makes the maze so beautiful.', 'uploads/1670838852.3789_lands-end2.jpeg', '2022-12-12 02:54:46', 'Beach');

-- --------------------------------------------------------

--
-- Table structure for table `track_202290_sunset_tracks`
--

CREATE TABLE `track_202290_sunset_tracks` (
  `id` int(13) NOT NULL,
  `lat` decimal(8,6) NOT NULL,
  `lng` decimal(9,6) NOT NULL,
  `description` text NOT NULL,
  `photo` varchar(256) NOT NULL,
  `icon` varchar(256) NOT NULL,
  `date_create` datetime NOT NULL,
  `weather` text NOT NULL,
  `sunset_time` datetime NOT NULL,
  `sunset_id` int(13) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `track_202290_sunset_tracks`
--

INSERT INTO `track_202290_sunset_tracks` (`id`, `lat`, `lng`, `description`, `photo`, `icon`, `date_create`, `weather`, `sunset_time`, `sunset_id`) VALUES
(1, '37.768370', '-122.452980', 'Kibsihsut rocoghu sidgin efo fejfufze ojrar tispufkej pal antob feur migmucot zip wit polov fimu vijjowmim pis.', 'https://via.placeholder.com/357x550/B84/fff/?text=PHOTO', 'https://via.placeholder.com/489x562/454/fff/?text=ICON', '2020-12-13 02:28:41', 'sea of clouds', '2020-12-28 06:37:37', 14),
(2, '37.704540', '-122.390490', 'Coj jiv atre safaru meh cajergip oviwihu digehura keni nu jelaceji nozadebe bod ehcumle cadih.', 'https://via.placeholder.com/559x359/687/fff/?text=PHOTO', 'https://via.placeholder.com/430x526/A8A/fff/?text=ICON', '2020-11-05 17:09:10', 'rainy', '2020-09-16 20:46:30', 25),
(3, '37.761130', '-122.418650', 'Jacfiwa rus ecsaev ol pa dugot lak ez loemahu de ave vor.', 'https://via.placeholder.com/588x355/A98/fff/?text=PHOTO', 'https://via.placeholder.com/421x418/449/fff/?text=ICON', '2020-01-18 13:14:56', 'snowy', '2022-04-12 20:59:41', 24),
(4, '37.670710', '-122.417280', 'Zol izehel ladip wosvo gekwij zuorube mufeba nu nu var renajhol votkoor.', 'https://via.placeholder.com/477x477/B5B/fff/?text=PHOTO', 'https://via.placeholder.com/589x460/349/fff/?text=ICON', '2020-02-18 04:20:54', 'snowy', '2020-01-27 06:10:14', 29),
(5, '37.676270', '-122.428670', 'Hitota lahaj epoceuho sebip bu aca vo zoru pocjacve gulotu ale kipasop ik uri nakerzuk hulebhah.', 'https://via.placeholder.com/558x452/364/fff/?text=PHOTO', 'https://via.placeholder.com/359x593/967/fff/?text=ICON', '2020-06-05 09:13:37', 'foggy', '2021-08-21 15:00:20', 19),
(6, '37.724540', '-122.429130', 'Ahe diglisus vane da ifipi ilsimel dolusid popaniina nuwotzu ripitvav hozhub ide.', 'https://via.placeholder.com/434x386/A63/fff/?text=PHOTO', 'https://via.placeholder.com/450x389/7B6/fff/?text=ICON', '2020-09-29 06:35:22', 'foggy', '2020-08-27 14:25:51', 8),
(7, '37.770450', '-122.450830', 'Wow mepiziabe le ucihikze sodiwri hot dig toba wimtigjej tatkiv op judpe tataku ros nusewa humnu fin.', 'https://via.placeholder.com/458x522/979/fff/?text=PHOTO', 'https://via.placeholder.com/530x512/656/fff/?text=ICON', '2020-11-21 22:37:05', 'rainy', '2021-06-19 22:55:18', 5),
(8, '37.735390', '-122.378500', 'Ida cusvelot penadju wujopes inhap davod ezoirise padifi ojkim men neagok pagetof rel.', 'https://via.placeholder.com/521x508/8B9/fff/?text=PHOTO', 'https://via.placeholder.com/363x399/444/fff/?text=ICON', '2021-04-30 08:03:26', 'windy', '2021-07-06 22:31:55', 22),
(9, '37.763380', '-122.411540', 'Zebbi saepi jiz ogi icriro caw fukob izbaf da toujelo vegzed batno.', 'https://via.placeholder.com/544x454/954/fff/?text=PHOTO', 'https://via.placeholder.com/513x446/748/fff/?text=ICON', '2020-12-23 08:01:30', 'rainy', '2020-12-28 19:59:29', 10),
(10, '37.684010', '-122.482420', 'Ilailata gebobsus zi jis uggud essupkeh podaf bodafwek fe iwu ra iwega sovan nuz co eceor.', 'https://via.placeholder.com/402x481/434/fff/?text=PHOTO', 'https://via.placeholder.com/452x477/463/fff/?text=ICON', '2021-03-17 02:37:17', 'cloudy', '2020-12-31 22:51:37', 9),
(11, '37.784260', '-122.486050', 'Agavabgi aggojde re fahop bato ceruk ukuag kep tekutofam ipuni afpudugu sihrar mocweta jehcusuf fe lubec.', 'https://via.placeholder.com/425x355/B77/fff/?text=PHOTO', 'https://via.placeholder.com/513x470/B88/fff/?text=ICON', '2022-11-09 02:14:27', 'windy', '2022-10-20 05:46:28', 13),
(12, '37.726110', '-122.432960', 'Siacu ripa num eguhac sigara zugcapha belen ap za kuwogah homawme fat heto owzebza lop.', 'https://via.placeholder.com/398x498/49B/fff/?text=PHOTO', 'https://via.placeholder.com/435x375/67A/fff/?text=ICON', '2020-06-03 10:45:47', 'cloudy', '2022-10-14 07:37:05', 14),
(13, '37.674820', '-122.481280', 'Gibegva pa huabemu nisidrib wedat awa bonizik web iluab bukuc namol fain wi.', 'https://via.placeholder.com/460x531/4AB/fff/?text=PHOTO', 'https://via.placeholder.com/579x401/575/fff/?text=ICON', '2020-07-23 09:15:34', 'clear', '2021-06-21 06:25:53', 9),
(14, '37.760640', '-122.428720', 'Fi mozfun ji tuw lievewa jij hawca ju foap tetun se puoj uhi kico halranar dolasur.', 'https://via.placeholder.com/590x431/679/fff/?text=PHOTO', 'https://via.placeholder.com/404x423/7BA/fff/?text=ICON', '2022-08-08 17:20:00', 'sunny', '2022-03-19 12:14:00', 7),
(15, '37.704560', '-122.379340', 'Hi faut ipebu silloroc zikap os bofcofbis gitizseb apobujevi maga ladlac adual vipgo jib.', 'https://via.placeholder.com/590x398/8B4/fff/?text=PHOTO', 'https://via.placeholder.com/496x565/974/fff/?text=ICON', '2021-06-23 03:03:18', 'sunny', '2020-02-03 21:59:30', 14),
(16, '37.710910', '-122.388640', 'Gu wasah dapviv wi nidodma kabhij vukhibbal caeb pambos gemciliv ogasnup efsufbi.', 'https://via.placeholder.com/506x450/735/fff/?text=PHOTO', 'https://via.placeholder.com/542x387/558/fff/?text=ICON', '2021-04-26 09:20:46', 'sunny', '2022-04-05 12:42:53', 9),
(17, '37.793890', '-122.398220', 'Isa duenoj puogoake zetkolhip emka kepgol lut joli lispabol towi nitveki paura nucsacmof.', 'https://via.placeholder.com/378x400/77A/fff/?text=PHOTO', 'https://via.placeholder.com/565x527/B86/fff/?text=ICON', '2022-06-02 12:56:01', 'sunny', '2020-05-19 20:30:33', 29),
(18, '37.755690', '-122.440570', 'Riv ti amtu esusagweb zop ij goziwra seot ogahucmil hotrop wicgifed zekumoofu gorozuh libbaj co aru ekuzo ojodip.', 'https://via.placeholder.com/387x459/7A3/fff/?text=PHOTO', 'https://via.placeholder.com/442x507/B48/fff/?text=ICON', '2022-03-09 12:48:16', 'foggy', '2021-06-21 19:10:08', 30),
(19, '37.675100', '-122.455230', 'Senziksed mabouve capjewlev ahihi rup gehagi mujit omive ac isurip wanih gukormaf rav.', 'https://via.placeholder.com/535x552/347/fff/?text=PHOTO', 'https://via.placeholder.com/445x478/66B/fff/?text=ICON', '2022-09-15 00:45:09', 'sunny', '2020-12-22 05:39:08', 28),
(20, '37.695930', '-122.462760', 'Pem vikefu sucigho uhniguk net ku mawtubit ifapokla gev nelu nuw poj ivnivum vairi ov jafeg.', 'https://via.placeholder.com/432x565/985/fff/?text=PHOTO', 'https://via.placeholder.com/543x480/46B/fff/?text=ICON', '2022-02-16 01:08:09', 'cloudy', '2021-08-20 16:45:38', 20),
(21, '37.764610', '-122.463400', 'Hojus jor fucno gipsed vu nueb ahedobu vetawgi ov omagur olnimrak getifil gemhis ivraj zuc matanafi tobor ri.', 'https://via.placeholder.com/524x564/A8B/fff/?text=PHOTO', 'https://via.placeholder.com/461x433/69B/fff/?text=ICON', '2022-03-25 10:06:30', 'cloudy', '2020-11-21 22:29:52', 25),
(22, '37.700420', '-122.483160', 'Tef mouk gudka cadima torhadzus irjawvav dew gaikho husjueki sinjodwe dagucti piar nafja okko.', 'https://via.placeholder.com/481x582/6BA/fff/?text=PHOTO', 'https://via.placeholder.com/489x392/796/fff/?text=ICON', '2022-07-21 11:31:05', 'snowy', '2020-11-19 19:31:09', 6),
(23, '37.755820', '-122.463910', 'Efcemca ebwo ukori sep nawanzoh ano dewenag cakaab tajaljo nokrooh wabumek em lusvobe.', 'https://via.placeholder.com/567x486/993/fff/?text=PHOTO', 'https://via.placeholder.com/583x455/48B/fff/?text=ICON', '2020-05-04 09:11:45', 'snowy', '2020-05-04 03:10:29', 12),
(24, '37.708830', '-122.444980', 'Wusehe murlu nu eloniko uha bujjoz jop suiwvi ric nuim wiekodak it govucjuc mehanbi lurzos lahi.', 'https://via.placeholder.com/530x574/9AB/fff/?text=PHOTO', 'https://via.placeholder.com/458x425/7A3/fff/?text=ICON', '2020-04-24 15:29:20', 'windy', '2020-12-06 07:00:24', 3),
(25, '37.677890', '-122.372030', 'Zodihwa ve we wuwow ke azado vage ufuli alomo oghaw artufah iw tek nubutvak vuz.', 'https://via.placeholder.com/470x358/367/fff/?text=PHOTO', 'https://via.placeholder.com/450x492/978/fff/?text=ICON', '2021-02-05 01:05:17', 'clear', '2020-01-11 06:28:12', 22),
(26, '37.790920', '-122.383910', 'Wecewed weleto padejuco atuhan uvmehoz poh zisejec kadigi guv big wukibo fof jajhi sicne nugifowot.', 'https://via.placeholder.com/562x461/839/fff/?text=PHOTO', 'https://via.placeholder.com/371x587/56A/fff/?text=ICON', '2022-08-25 22:28:47', 'windy', '2022-09-12 16:03:28', 25),
(27, '37.799720', '-122.473690', 'Manepel sawjikul jebod tazeska ha cu pa umowo fej ubo secju wupez fezu bebba.', 'https://via.placeholder.com/517x473/AB6/fff/?text=PHOTO', 'https://via.placeholder.com/570x385/37B/fff/?text=ICON', '2021-02-12 12:15:00', 'sunny', '2020-06-12 12:08:58', 12),
(28, '37.778480', '-122.451210', 'Ga cuj piztape uduohuave amsuwam lok mejtowumu me voju vuc ij meppafpe zovmo har ludo funsim doikvi gi.', 'https://via.placeholder.com/525x554/886/fff/?text=PHOTO', 'https://via.placeholder.com/470x538/867/fff/?text=ICON', '2022-07-22 14:51:39', 'sea of clouds', '2021-04-03 03:57:18', 13),
(29, '37.736800', '-122.408940', 'Vatrod wesov fet kenucgi wamozna oghiuc ejikerev etulir go mehirit nafus nosinu eb.', 'https://via.placeholder.com/422x514/63B/fff/?text=PHOTO', 'https://via.placeholder.com/441x419/7AB/fff/?text=ICON', '2022-10-08 04:56:35', 'clear', '2022-11-13 09:02:52', 9),
(30, '37.708200', '-122.400650', 'Ucva gavjepe pijruk hevgerpeg butigma rafac jifunona ziirze pomoszen zidrar balec jip fonupeg ihiupsu.', 'https://via.placeholder.com/442x501/6B4/fff/?text=PHOTO', 'https://via.placeholder.com/517x478/65A/fff/?text=ICON', '2021-10-21 16:47:03', 'rainy', '2020-02-19 23:28:05', 18),
(31, '37.676730', '-122.416250', 'Omoba kom moko vidabetij paphicuba al hude dog ojufakud gab fahvoljo seeh wot zabujre navieve sefujcod wos cucmos.', 'https://via.placeholder.com/449x521/9A8/fff/?text=PHOTO', 'https://via.placeholder.com/577x466/A68/fff/?text=ICON', '2020-08-10 16:20:10', 'cloudy', '2021-05-13 17:06:36', 12),
(32, '37.784240', '-122.424220', 'Mon woonudut coc vuc sajsu te zacbi botlo daja niwfutnej ge veefdu lamewe ola codew gute oci cij.', 'https://via.placeholder.com/472x409/9B7/fff/?text=PHOTO', 'https://via.placeholder.com/401x563/733/fff/?text=ICON', '2022-11-23 16:54:01', 'sunny', '2021-03-12 19:17:52', 25),
(33, '37.779140', '-122.430880', 'Ijez hij iptuvej pohohfu oro eznus udovom ejuniho how mac cuj rupoc.', 'https://via.placeholder.com/466x370/885/fff/?text=PHOTO', 'https://via.placeholder.com/410x395/469/fff/?text=ICON', '2020-11-12 18:21:56', 'cloudy', '2020-11-04 05:52:28', 4),
(34, '37.753650', '-122.387010', 'Tok su sejabfi ubvunic ta hekgugac labebez den ja uribo hocuc huha zijfac.', 'https://via.placeholder.com/428x492/AA5/fff/?text=PHOTO', 'https://via.placeholder.com/476x526/87B/fff/?text=ICON', '2021-02-05 08:04:35', 'rainy', '2021-05-09 06:27:35', 8),
(35, '37.729010', '-122.450290', 'Vuwih et huhajda si zagvuduj vubipbi tol zoadeaw botore gemgolij defga okubovu wuwuhu evukizge epgeij.', 'https://via.placeholder.com/453x436/836/fff/?text=PHOTO', 'https://via.placeholder.com/538x472/34B/fff/?text=ICON', '2020-02-04 21:30:35', 'clear', '2021-12-27 05:47:43', 22),
(36, '37.692000', '-122.430940', 'Vobil zacefnu omiwi gub coctugaj gu citho izrovoj miewa re lunuszu ri seowe jehmur tar in romefo zu.', 'https://via.placeholder.com/516x470/847/fff/?text=PHOTO', 'https://via.placeholder.com/371x428/776/fff/?text=ICON', '2020-06-17 05:04:50', 'snowy', '2021-01-07 12:56:17', 18),
(37, '37.677050', '-122.410300', 'Eh titsewona tom tezkiif eb ogi hentum vevpijdob mo im ahbuf disnoh lufilep itti ze ri cedev raz.', 'https://via.placeholder.com/515x448/369/fff/?text=PHOTO', 'https://via.placeholder.com/559x421/434/fff/?text=ICON', '2020-12-30 03:49:19', 'snowy', '2020-07-20 12:09:08', 27),
(38, '37.783520', '-122.462420', 'Siekoudo ce he ivpih owinehuz kadi dot affupuhi wa fedlidzi cukdijnek epeba vafi.', 'https://via.placeholder.com/481x591/B83/fff/?text=PHOTO', 'https://via.placeholder.com/387x434/836/fff/?text=ICON', '2020-04-20 12:43:08', 'foggy', '2022-02-21 12:42:09', 6),
(39, '37.696050', '-122.467380', 'Apo wiipenu omu teuva gogu hizbulkuk irwag vowco fivti neb kufpap balakahu vas pukahdih nurdof woil mudtaf.', 'https://via.placeholder.com/395x542/B7A/fff/?text=PHOTO', 'https://via.placeholder.com/425x400/53B/fff/?text=ICON', '2022-04-14 08:36:11', 'rainy', '2022-08-30 12:15:43', 3),
(40, '37.791060', '-122.456240', 'Ikme hi iwhub rug naz cevnoj utmepho jetime jukha nus ca lanecle olsudfez pol kiz opooce.', 'https://via.placeholder.com/414x353/7BA/fff/?text=PHOTO', 'https://via.placeholder.com/503x457/68A/fff/?text=ICON', '2021-06-15 00:20:52', 'cloudy', '2020-09-24 08:23:32', 8),
(41, '37.770920', '-122.444990', 'Mivar taob voc vevub pikotor legona bu wubap unodlu nok ze do ju fol rekcoh obo.', 'https://via.placeholder.com/495x454/B83/fff/?text=PHOTO', 'https://via.placeholder.com/550x480/495/fff/?text=ICON', '2021-12-13 01:06:18', 'foggy', '2020-03-01 21:43:48', 25),
(42, '37.716870', '-122.444130', 'Ogafivnuj tusegu hobbo utzu nitwib putjuun de fi lav pej hizhupa gijuati fazhorew riparug fefupi fuabjob.', 'https://via.placeholder.com/414x537/B84/fff/?text=PHOTO', 'https://via.placeholder.com/466x590/689/fff/?text=ICON', '2022-09-29 10:52:38', 'sea of clouds', '2022-08-18 12:38:32', 6),
(43, '37.720930', '-122.398660', 'Fihasgu gilnu ohici saw kazuka nebigce boddov fa nozega kuv lakmi caj wafisfaz donekci.', 'https://via.placeholder.com/521x491/497/fff/?text=PHOTO', 'https://via.placeholder.com/441x487/9A8/fff/?text=ICON', '2022-08-23 06:07:48', 'clear', '2022-11-05 11:52:18', 11),
(44, '37.704620', '-122.396050', 'Upacure wur sehu inenazwop go vozasadav be nikridula lizi ewece cifolcuv woej zehotra osi vinik popibo.', 'https://via.placeholder.com/553x556/53B/fff/?text=PHOTO', 'https://via.placeholder.com/497x600/469/fff/?text=ICON', '2020-02-11 03:57:49', 'rainy', '2022-07-28 22:48:39', 5),
(45, '37.765550', '-122.472770', 'Wuilofah rudsuw te sogmamkes ape os zolursit ajiloav ilueve fo mepaco sibcibla dikhobci.', 'https://via.placeholder.com/394x389/5AA/fff/?text=PHOTO', 'https://via.placeholder.com/459x408/754/fff/?text=ICON', '2021-03-29 03:50:16', 'windy', '2021-03-18 10:53:18', 6),
(46, '37.776330', '-122.388630', 'Vudgehic hoizehis mahotab pulgega egocvuj kofsud wakgohwi zapo comed reh ipomoj ule ciwsetu.', 'https://via.placeholder.com/559x486/686/fff/?text=PHOTO', 'https://via.placeholder.com/592x577/974/fff/?text=ICON', '2022-01-13 20:12:09', 'rainy', '2021-04-26 07:28:37', 17),
(47, '37.791600', '-122.423900', 'Um zabcew guguvguc of eder nikfoh remimseg sif uma biwauhi uboam nobfamat ji ralluj fejzib ba zen atubehuk.', 'https://via.placeholder.com/411x446/A7B/fff/?text=PHOTO', 'https://via.placeholder.com/567x484/A8A/fff/?text=ICON', '2020-04-22 01:52:22', 'foggy', '2022-01-26 20:32:23', 6),
(48, '37.723030', '-122.449420', 'Nowuke esa si wu fofu nir kuvusi ojaeg udwol zulipvuv pa peawimef imzim reiw joeb ivufudfoz vutmadga.', 'https://via.placeholder.com/530x403/996/fff/?text=PHOTO', 'https://via.placeholder.com/517x373/A6A/fff/?text=ICON', '2020-08-19 04:53:38', 'clear', '2020-04-22 23:51:57', 14),
(49, '37.766980', '-122.478510', 'Fuvowoote sunpelo koupu pinehrof mab ecobabole huhpe gen hiwibu rurwucip zin lupta voac otruczas.', 'https://via.placeholder.com/506x542/4A4/fff/?text=PHOTO', 'https://via.placeholder.com/490x572/A64/fff/?text=ICON', '2022-03-15 04:56:46', 'sunny', '2021-08-20 01:13:29', 12),
(50, '37.722850', '-122.385340', 'Idjuptur idurtin ocla halgiffu pedelfel osvac ke wiewe wilre hofagzu kal rimar vuj kezevsan.', 'https://via.placeholder.com/430x487/965/fff/?text=PHOTO', 'https://via.placeholder.com/519x578/B94/fff/?text=ICON', '2020-03-29 19:33:14', 'sea of clouds', '2020-04-29 00:41:49', 4),
(51, '37.699490', '-122.430410', 'Ce ce er wocficoda job je futepo senkefhit ulha razec wis voj rocaraba.', 'https://via.placeholder.com/495x351/855/fff/?text=PHOTO', 'https://via.placeholder.com/487x427/A74/fff/?text=ICON', '2022-10-23 01:16:41', 'snowy', '2022-10-27 08:51:19', 26),
(52, '37.776100', '-122.474890', 'Hos wo tuk guwcid zuwepuh awo jodosba ok elzunun eze zoducbu bucko luuviibi musefad nihikpi kuredse.', 'https://via.placeholder.com/582x412/46A/fff/?text=PHOTO', 'https://via.placeholder.com/445x463/378/fff/?text=ICON', '2020-05-29 13:00:15', 'snowy', '2020-03-21 05:20:20', 1),
(53, '37.789830', '-122.470900', 'Ruvooh hooho ju ihuciut obed nucepipop epene pudicu wulveici juhho da fezaf pad oto.', 'https://via.placeholder.com/573x523/854/fff/?text=PHOTO', 'https://via.placeholder.com/378x399/637/fff/?text=ICON', '2020-01-01 10:18:49', 'sunny', '2021-07-11 06:52:50', 24),
(54, '37.703380', '-122.497890', 'Timwam ze lizitwa zim sumzorjak han doawu fu tuokerol uwumaf leniow eso aduabi ecigig boh.', 'https://via.placeholder.com/567x481/44B/fff/?text=PHOTO', 'https://via.placeholder.com/500x600/857/fff/?text=ICON', '2020-03-16 15:56:14', 'clear', '2020-01-27 02:00:57', 23),
(55, '37.675670', '-122.456890', 'Miuhe um puraj bofa telnejsaf wur dilluz gu kelwenudo gevkib kulalvif dodrotoz bul nevokah cukfeja de humu.', 'https://via.placeholder.com/388x405/677/fff/?text=PHOTO', 'https://via.placeholder.com/522x507/B4A/fff/?text=ICON', '2022-01-24 05:00:50', 'snowy', '2021-05-11 16:52:25', 16),
(56, '37.682740', '-122.371260', 'Cir atjaza piz fuza wekeme atoolo rihfesseh uzacan lusmutnaf kid dipije cocbiru uv worazol.', 'https://via.placeholder.com/584x512/454/fff/?text=PHOTO', 'https://via.placeholder.com/450x544/B88/fff/?text=ICON', '2022-11-13 13:18:06', 'snowy', '2020-03-09 13:57:28', 17),
(57, '37.698730', '-122.477300', 'Ino led havmupdam ribukit luebafur dafwus fupozun wet uc lel hutu gavir powvupo abmoc mobevjip pezboc enemelde.', 'https://via.placeholder.com/573x522/863/fff/?text=PHOTO', 'https://via.placeholder.com/553x579/546/fff/?text=ICON', '2020-04-08 10:28:34', 'sunny', '2021-09-21 15:48:19', 29),
(58, '37.734880', '-122.433640', 'Agfajpec kewposuz eweridaje buubsom jaci esiofhu nirwun vi nenikco ceunuvuk adedej do iwa coka ne oddi vipilkow.', 'https://via.placeholder.com/466x558/853/fff/?text=PHOTO', 'https://via.placeholder.com/405x448/474/fff/?text=ICON', '2020-05-06 08:28:12', 'foggy', '2020-06-20 08:41:35', 17),
(59, '37.771330', '-122.391140', 'Eku wopuhed rudef ginfejni bevbuav eduva robgocas as zasila gosi uma ovcenir ji nuwigic ahu.', 'https://via.placeholder.com/559x368/4B4/fff/?text=PHOTO', 'https://via.placeholder.com/505x536/539/fff/?text=ICON', '2021-09-11 11:04:41', 'rainy', '2022-02-08 21:31:53', 17),
(60, '37.747610', '-122.412590', 'Dofe dap efuuro uwe kakidawis niliece sin dahrode riwov meir vuzkiw tabeti ratfuvsap put.', 'https://via.placeholder.com/351x350/345/fff/?text=PHOTO', 'https://via.placeholder.com/527x424/78A/fff/?text=ICON', '2020-06-06 19:09:21', 'snowy', '2020-11-21 22:26:30', 27),
(61, '37.716370', '-122.446900', 'Tusat kuc kuji nofari dabnina ebkusa cud bif wicke vuhopeb kazodif geh.', 'https://via.placeholder.com/465x381/558/fff/?text=PHOTO', 'https://via.placeholder.com/531x529/333/fff/?text=ICON', '2021-03-12 03:03:49', 'clear', '2020-12-06 09:30:26', 17),
(62, '37.686060', '-122.407190', 'Izuutewom owoewa fepima mu dof puetpiz ulna fegmeruj ame hu ocmod mu cujek gacuto.', 'https://via.placeholder.com/487x373/996/fff/?text=PHOTO', 'https://via.placeholder.com/518x419/A4B/fff/?text=ICON', '2022-08-22 15:36:42', 'foggy', '2021-01-18 03:05:28', 8),
(63, '37.782100', '-122.488900', 'Febwe luhzu rovor wiiceora buhhe ifi it inuhupi odinukroz gavoumi ofubo uwu wijpabzet sina weva fujec hovud opu.', 'https://via.placeholder.com/494x431/895/fff/?text=PHOTO', 'https://via.placeholder.com/398x489/3B8/fff/?text=ICON', '2020-11-27 20:53:20', 'snowy', '2021-01-30 08:55:34', 28),
(64, '37.780570', '-122.457730', 'Ocjub ol melazliw wuzahuja puco kuftiniz suvjaghe iwiso vuguko fakvace redeme kop ko cojo mubuwti du warar ok.', 'https://via.placeholder.com/472x500/3B9/fff/?text=PHOTO', 'https://via.placeholder.com/588x578/AB4/fff/?text=ICON', '2020-02-14 03:27:18', 'windy', '2020-09-23 17:16:27', 23),
(65, '37.782190', '-122.468270', 'Sizivnus ag al icofokaz ot zusdorron jata gek uhazu nejisom siac aw wezzu dinate ezih ku.', 'https://via.placeholder.com/561x390/744/fff/?text=PHOTO', 'https://via.placeholder.com/574x361/A75/fff/?text=ICON', '2020-04-07 13:10:13', 'foggy', '2020-08-24 20:07:07', 3),
(66, '37.754830', '-122.402220', 'Re coro ketisvep sumuli hiklippin sibugtup nape gi iv onosib evosiv bikhak.', 'https://via.placeholder.com/524x570/6A4/fff/?text=PHOTO', 'https://via.placeholder.com/360x450/B68/fff/?text=ICON', '2020-06-07 20:56:07', 'snowy', '2022-08-16 11:13:33', 13),
(67, '37.719900', '-122.421220', 'Nacitpu vuh vuci laklohgu toka ogetus ta uki toluc jahdok uhawobu avowutpa covjij tuseporam dakih ifwirvom jabdamog.', 'https://via.placeholder.com/453x437/8A7/fff/?text=PHOTO', 'https://via.placeholder.com/374x433/A75/fff/?text=ICON', '2022-08-03 17:23:01', 'sea of clouds', '2021-10-27 02:47:51', 5),
(68, '37.675700', '-122.478780', 'Jepewe bo mej mirasu sebji ov lumgemac teur di igobueja wuk itje.', 'https://via.placeholder.com/391x524/5A3/fff/?text=PHOTO', 'https://via.placeholder.com/402x474/B33/fff/?text=ICON', '2020-12-09 06:17:07', 'cloudy', '2022-07-15 09:05:11', 29),
(69, '37.762890', '-122.393110', 'Zoguci tuipeli zekupoc ujvew zevfi kute muvjuve najatdad soone abi abfib fewna kuow.', 'https://via.placeholder.com/520x495/433/fff/?text=PHOTO', 'https://via.placeholder.com/517x423/74A/fff/?text=ICON', '2021-10-25 14:32:54', 'sunny', '2021-11-16 02:02:10', 15),
(70, '37.695480', '-122.412580', 'Cihlu jukriprec hagjivege dosuni ziluslev beezi valzow op ce romuzsa luremuuwi rauwule gavearo sikgoteg.', 'https://via.placeholder.com/450x434/A7A/fff/?text=PHOTO', 'https://via.placeholder.com/377x550/49B/fff/?text=ICON', '2020-06-28 14:59:33', 'windy', '2021-08-10 05:33:39', 28),
(71, '37.704620', '-122.379460', 'Juk wiwep lid miru vezuvdu ramab ondij zeririp ad cihci sa onfughuk roz markobri nuhpu vurbeuk wakejmi.', 'https://via.placeholder.com/542x587/3A7/fff/?text=PHOTO', 'https://via.placeholder.com/581x370/499/fff/?text=ICON', '2021-02-16 13:46:01', 'rainy', '2022-09-21 02:01:35', 3),
(72, '37.761840', '-122.386390', 'Ahagiz beduvte ade vehiczu sasbinzi pegu hos sotliwij ip pin ecewec gow jec fagsilo idi ta riplidpub jo.', 'https://via.placeholder.com/503x595/479/fff/?text=PHOTO', 'https://via.placeholder.com/469x574/AB4/fff/?text=ICON', '2021-12-15 22:38:00', 'sunny', '2022-02-13 00:59:20', 5),
(73, '37.727320', '-122.476820', 'Wa siv du co bobishu waicuho fi zocu evgi zupwe sivlafhuz uduiko tavne habuc az.', 'https://via.placeholder.com/442x357/897/fff/?text=PHOTO', 'https://via.placeholder.com/352x494/B8B/fff/?text=ICON', '2021-12-30 10:26:32', 'snowy', '2021-11-01 18:48:17', 27),
(74, '37.724580', '-122.490710', 'Vejuhhav penaif ilu lumacru boikodi wep no ti damsec bumtu somca ajavi herip el goh uwpale zi.', 'https://via.placeholder.com/403x438/86B/fff/?text=PHOTO', 'https://via.placeholder.com/585x403/56A/fff/?text=ICON', '2020-01-30 17:28:16', 'clear', '2020-05-05 05:31:45', 22),
(75, '37.718810', '-122.417840', 'Belak ivu ba votzicer cenfam odnif badaci rudwabkap nuvkatov woun ne jasdid lapaew apuhomo or wak.', 'https://via.placeholder.com/487x502/95A/fff/?text=PHOTO', 'https://via.placeholder.com/513x449/867/fff/?text=ICON', '2022-06-08 01:07:53', 'sunny', '2020-06-14 05:25:36', 11),
(76, '37.794540', '-122.399910', 'Sabowja do hokusu ebi idoj hanaiji ure deit powo eteihmoh zaz mejih.', 'https://via.placeholder.com/412x506/3A3/fff/?text=PHOTO', 'https://via.placeholder.com/583x450/46A/fff/?text=ICON', '2021-01-08 18:37:54', 'windy', '2022-04-23 13:06:22', 1),
(77, '37.757550', '-122.371190', 'Bur nugjecof hok mohun rosuupa tucralrew juwoof juzlohij gemwiep cad gaj hingarle tepufibi cicudi tuzze mu lizoewi heg.', 'https://via.placeholder.com/445x374/3AB/fff/?text=PHOTO', 'https://via.placeholder.com/381x525/966/fff/?text=ICON', '2021-10-20 05:04:24', 'windy', '2020-02-04 03:04:22', 6),
(78, '37.725210', '-122.436320', 'Ube gatrad wuscorhe pavoma poripi pewfap nufgo zejih wazoj fudado dubopsad pac.', 'https://via.placeholder.com/494x549/A94/fff/?text=PHOTO', 'https://via.placeholder.com/556x474/3A6/fff/?text=ICON', '2022-01-07 09:10:41', 'snowy', '2022-05-29 03:14:54', 25),
(79, '37.673970', '-122.490350', 'Zidje zokwedpow fugevuvo nomibuh bazhoojo zif wo afiwoh fag gehto vunog se ifkez ti koju.', 'https://via.placeholder.com/506x466/3A4/fff/?text=PHOTO', 'https://via.placeholder.com/450x510/37A/fff/?text=ICON', '2021-12-20 19:14:32', 'windy', '2020-06-03 00:24:47', 14),
(80, '37.776410', '-122.450920', 'Pifelubo sinotwop ta kepdo ruz sebub rece leskuw li vufelval hegne namoej wonewno telataj.', 'https://via.placeholder.com/389x585/939/fff/?text=PHOTO', 'https://via.placeholder.com/562x435/989/fff/?text=ICON', '2020-09-04 08:39:10', 'sunny', '2022-04-26 00:34:36', 29),
(81, '37.689250', '-122.377710', 'Ugvibda vavovji mif nij nemok zekgotit no lemowo evozairu wowa kime fe tavjuv gocsiisu wo tef wor.', 'https://via.placeholder.com/515x481/787/fff/?text=PHOTO', 'https://via.placeholder.com/571x363/A96/fff/?text=ICON', '2021-01-12 03:09:50', 'foggy', '2020-06-09 11:49:36', 6),
(82, '37.694050', '-122.462050', 'Gibpagul inuc tedju biefdag wonjeovu elolowam ro pi ol wa fom juwa nihkuluk vuvojad ku cul pazhe docheiw.', 'https://via.placeholder.com/395x430/5A4/fff/?text=PHOTO', 'https://via.placeholder.com/356x398/5A3/fff/?text=ICON', '2020-05-21 09:36:19', 'rainy', '2022-08-02 05:13:14', 3),
(83, '37.781360', '-122.396290', 'Miv ro wodtuj meje al olilecum com hop pus ak fa fe fuzablo tevfofun se fe.', 'https://via.placeholder.com/568x372/656/fff/?text=PHOTO', 'https://via.placeholder.com/553x479/73A/fff/?text=ICON', '2020-10-29 04:02:24', 'snowy', '2022-06-18 15:49:58', 28),
(84, '37.686290', '-122.433970', 'Vi kubef ininafna hawom taki ifuapinis mehfig wopiz mapkauj hivbeg warhu fovhotu arpewra usoc.', 'https://via.placeholder.com/395x525/686/fff/?text=PHOTO', 'https://via.placeholder.com/489x526/A33/fff/?text=ICON', '2020-10-19 21:44:40', 'snowy', '2020-11-30 09:42:54', 7),
(85, '37.698420', '-122.404010', 'Bofe zadi uljofa bupvut rehsu ro wohhorte tidac cicivo hape dowkeowi hitobib topri.', 'https://via.placeholder.com/530x371/368/fff/?text=PHOTO', 'https://via.placeholder.com/484x411/68A/fff/?text=ICON', '2021-01-22 08:25:41', 'sea of clouds', '2021-12-02 21:33:40', 13),
(86, '37.708630', '-122.497100', 'Sewule gec wif bovisuoco aj fe vipu anoupekut ti awulo wirzebme oba imhadvip jo.', 'https://via.placeholder.com/434x390/658/fff/?text=PHOTO', 'https://via.placeholder.com/509x362/A57/fff/?text=ICON', '2020-01-20 16:39:30', 'foggy', '2021-08-13 23:57:18', 18),
(87, '37.671900', '-122.445700', 'Mohu zuhib jehlapa juicial lewabge je ujpel notnal itasi biov jeguvo mo beul ranuwgi zetadtiz pipivzu go dowpu.', 'https://via.placeholder.com/491x572/885/fff/?text=PHOTO', 'https://via.placeholder.com/437x500/37A/fff/?text=ICON', '2021-01-25 07:16:39', 'rainy', '2020-09-27 09:04:14', 3),
(88, '37.685210', '-122.373140', 'Cik jaihuzav nohevog zuriezu upugavo giudzih rifzor ni potam wef ewhemgo jeohi.', 'https://via.placeholder.com/385x356/64A/fff/?text=PHOTO', 'https://via.placeholder.com/390x397/5AB/fff/?text=ICON', '2022-04-23 12:45:09', 'rainy', '2020-09-29 05:08:14', 6),
(89, '37.766710', '-122.397680', 'Somup mogcuegu fup zu lavtodtat zuv mopak zavraov rifeto bup tu niibke ra rocfe japuidi ojegu.', 'https://via.placeholder.com/441x542/393/fff/?text=PHOTO', 'https://via.placeholder.com/485x525/77A/fff/?text=ICON', '2022-03-20 20:17:41', 'clear', '2021-02-21 15:37:12', 9),
(90, '37.721980', '-122.451190', 'Buhozca dohijutet nubmaw uta nise gi rupugzo zuj ko ur jazcigine wujiuw oju.', 'https://via.placeholder.com/469x413/856/fff/?text=PHOTO', 'https://via.placeholder.com/548x507/469/fff/?text=ICON', '2020-09-13 23:16:37', 'sunny', '2022-03-09 19:52:01', 30),
(91, '37.732080', '-122.409510', 'Codlez joiflip jo ki ba tejva fed tegge hanon mugugi lib fod.', 'https://via.placeholder.com/531x363/349/fff/?text=PHOTO', 'https://via.placeholder.com/584x504/AA8/fff/?text=ICON', '2020-11-25 12:39:48', 'sea of clouds', '2021-12-26 18:10:48', 10),
(92, '37.712220', '-122.392920', 'Rusivuz zivjaru uh viplani me ulawodjo kugati notarte venikeso kulcot wejirvu ubmin vipre ci vo ema fotcaz iwzuzce.', 'https://via.placeholder.com/362x402/BB6/fff/?text=PHOTO', 'https://via.placeholder.com/465x453/587/fff/?text=ICON', '2021-09-18 18:43:51', 'sunny', '2020-05-25 03:03:03', 6),
(93, '37.767520', '-122.393250', 'Fuha le conkapwi lozsopow kohiko tegedjal pa fezmu tiv hed zocej nawodpi.', 'https://via.placeholder.com/583x378/AAB/fff/?text=PHOTO', 'https://via.placeholder.com/419x482/984/fff/?text=ICON', '2020-08-04 06:21:07', 'rainy', '2022-01-14 23:58:29', 30),
(94, '37.732840', '-122.411860', 'Henuzfa gafhubwu vivesuh ma cawfu udmofig wozhovneg zusovuhal fit hen evahoani nonoral.', 'https://via.placeholder.com/485x587/B6A/fff/?text=PHOTO', 'https://via.placeholder.com/512x446/59B/fff/?text=ICON', '2020-05-29 18:59:10', 'sea of clouds', '2020-06-13 18:22:06', 27),
(95, '37.708120', '-122.461690', 'Nuebiku wojomuwu zicdiccob ba uz nu geefito utwowho calasba suwik tu dektornaz hodi jeb epufe su re gag.', 'https://via.placeholder.com/516x415/536/fff/?text=PHOTO', 'https://via.placeholder.com/419x425/B83/fff/?text=ICON', '2021-11-28 05:12:13', 'snowy', '2022-05-20 00:38:46', 23),
(96, '37.742260', '-122.391350', 'Irgati owe han nulaod vuimaeri lifgu ne vievaca ida bijuto tu walga adivesje losjofotu jawfilref velu apicaho.', 'https://via.placeholder.com/420x599/873/fff/?text=PHOTO', 'https://via.placeholder.com/554x361/844/fff/?text=ICON', '2022-10-15 05:29:03', 'foggy', '2020-10-04 19:52:28', 14),
(97, '37.681420', '-122.439220', 'Gil adnaut edte voobe adaba cogtuvku tinigiz ujnu sejiw gafi pufdez no.', 'https://via.placeholder.com/513x461/83A/fff/?text=PHOTO', 'https://via.placeholder.com/416x472/497/fff/?text=ICON', '2020-08-06 00:15:36', 'rainy', '2020-10-11 07:51:50', 20),
(98, '37.717630', '-122.464830', 'Finvij je wid vaf agazacbi tucuz javuwi ivvej heg cuzhih lirimta dodtepi.', 'https://via.placeholder.com/456x451/8B4/fff/?text=PHOTO', 'https://via.placeholder.com/482x578/94A/fff/?text=ICON', '2021-09-13 01:13:10', 'snowy', '2021-04-22 02:40:18', 19),
(99, '37.710560', '-122.499340', 'Kinuk zej hijjizga iv avu newkah wejaug vepeteta cura canuade nimwuvme so gif.', 'https://via.placeholder.com/370x595/756/fff/?text=PHOTO', 'https://via.placeholder.com/367x448/A45/fff/?text=ICON', '2020-01-13 00:18:27', 'snowy', '2020-09-12 08:37:04', 21),
(100, '37.761480', '-122.498320', 'Sedica ovitesdiw vew wu ovu ikepobfot no sizur bed kozit uwjo meseb nimwez findib ha rot.', 'https://via.placeholder.com/593x395/AA3/fff/?text=PHOTO', 'https://via.placeholder.com/548x437/847/fff/?text=ICON', '2020-06-22 20:25:17', 'snowy', '2020-06-14 07:24:07', 18),
(103, '37.783144', '-122.428513', 'My mood...', 'uploads/1670724149.6093_Screen Shot 2022-12-10 at 12.15.22 PM.png', 'https://via.placeholder.com/400/?text=ICON', '2022-12-10 19:02:33', 'Cloudy', '2022-12-17 18:02:00', 2),
(104, '37.788722', '-122.426398', 'My mood', 'uploads/1670724315.0781_Screen Shot 2022-12-10 at 12.15.22 PM.png', 'https://via.placeholder.com/400/?text=ICON', '2022-12-10 19:05:17', 'Cloudy', '2022-12-17 18:05:00', 290),
(110, '37.796388', '-122.483820', 'Lucky sunny day!', 'uploads/1670836768.0268_golden-gate1.jpeg', 'https://via.placeholder.com/400/?text=ICON', '2022-12-12 02:20:01', 'Sunny', '2022-09-12 19:17:00', 302),
(111, '37.788028', '-122.492368', 'Cold but worth it. ', 'uploads/1670837042.5562_golden-gate2.jpeg', 'https://via.placeholder.com/400/?text=ICON', '2022-12-12 02:24:08', 'Windy', '2022-10-04 17:30:00', 302),
(113, '37.788972', '-122.436804', 'Love! Need to arrive early to get the best spot.', 'uploads/1670837620.8579_lombard2.jpeg', 'https://via.placeholder.com/400/?text=ICON', '2022-12-12 02:33:43', 'Breezy', '2022-06-15 20:40:00', 303),
(114, '37.754430', '-122.447777', '', 'uploads/1670838082.3975_twin-peaks1.jpeg', 'https://via.placeholder.com/400/?text=ICON', '2022-12-12 02:42:35', 'Windy', '2022-10-26 18:20:00', 304),
(116, '37.826057', '-122.496364', 'Need to wear more clothes', 'uploads/1670852287.4271_golden-gate3.jpeg', 'https://via.placeholder.com/400/?text=ICON', '2022-12-12 06:39:02', 'Cloudy', '2022-09-28 17:40:00', 302),
(117, '37.812938', '-122.492247', 'Take this photo on the boat. ', 'uploads/1670852422.4342_golden-gate4.jpeg', 'https://via.placeholder.com/400/?text=ICON', '2022-12-12 06:41:46', 'Clear', '2022-12-09 16:45:00', 302),
(118, '37.789609', '-122.435748', 'Early in the summer', 'uploads/1670852689.8828_lombard1.jpeg', 'https://via.placeholder.com/400/?text=ICON', '2022-12-12 06:45:42', 'Sunny', '2022-07-21 19:45:00', 303),
(120, '37.559906', '-122.266742', 'My Top1 Lake Sunset!', 'uploads/1670853092.1072_foster-city1.jpeg', 'https://via.placeholder.com/400/?text=ICON', '2022-12-12 06:51:56', 'Humidity ', '2022-12-10 16:50:00', 305),
(121, '37.556215', '-122.276258', 'Ahh! Fantastic!', 'uploads/1670853161.3928_foster-city2.jpeg', 'https://via.placeholder.com/400/?text=ICON', '2022-12-12 06:54:12', 'Sunny', '2022-12-02 16:35:00', 305),
(122, '37.556056', '-122.254164', 'Not the best angle', 'uploads/1670853297.0517_foster-city3.jpeg', 'https://via.placeholder.com/400/?text=ICON', '2022-12-12 06:56:14', 'Breezy', '2022-11-17 17:45:00', 305),
(123, '37.551142', '-122.251122', 'Arrive late but still beautiful!', 'uploads/1670853442.8687_foster-city4.jpeg', 'https://via.placeholder.com/400/?text=ICON', '2022-12-12 06:58:06', 'Cloudy', '2022-12-06 17:50:00', 305),
(124, '37.796973', '-122.482989', 'First time to see from here!', 'uploads/1670853595.9719_lands-end.jpeg', 'https://via.placeholder.com/400/?text=ICON', '2022-12-12 07:01:23', 'Windy', '2022-09-15 18:35:00', 306),
(125, '37.785291', '-122.506254', 'The sunset makes the maze pretty', 'uploads/1670853727.3219_lands-end2.jpeg', 'https://via.placeholder.com/400/?text=ICON', '2022-12-12 07:03:15', 'Cold', '2022-11-22 17:55:00', 306),
(127, '37.755565', '-122.451508', 'Fresh look on the half road', 'uploads/1670854647.3769_twin-peaks2.jpg', 'https://via.placeholder.com/400/?text=ICON', '2022-12-12 07:18:00', 'Foggy', '2022-11-09 18:50:00', 304),
(128, '37.754939', '-122.446661', 'At the top!', 'uploads/1670854739.385_twin-peaks.jpeg', 'https://via.placeholder.com/400/?text=ICON', '2022-12-12 07:19:47', 'Cold', '2022-11-22 18:19:00', 304),
(129, '37.787259', '-122.505988', 'Still bright', 'uploads/1670855000.172_lands-end4.jpeg', 'https://via.placeholder.com/400/?text=ICON', '2022-12-12 07:24:09', 'Breezy', '2022-10-17 17:00:00', 306),
(130, '37.799115', '-122.433240', 'Miss the sunset', 'uploads/1670855145.5499_lombard3.jpeg', 'https://via.placeholder.com/400/?text=ICON', '2022-12-12 07:26:16', 'Cloudy', '2022-12-03 18:10:00', 303),
(131, '37.823722', '-122.376407', 'Love the color', 'uploads/1670855359.3666_golden-gate5.jpeg', 'https://via.placeholder.com/400/?text=ICON', '2022-12-12 07:31:23', 'Breezy', '2022-11-26 16:50:00', 302);

-- --------------------------------------------------------

--
-- Table structure for table `track_202290_users`
--

CREATE TABLE `track_202290_users` (
  `id` int(13) NOT NULL,
  `name` varchar(64) NOT NULL,
  `username` varchar(64) NOT NULL,
  `email` varchar(128) NOT NULL,
  `password` varchar(32) NOT NULL,
  `img` varchar(256) NOT NULL,
  `date_create` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `track_202290_users`
--

INSERT INTO `track_202290_users` (`id`, `name`, `username`, `email`, `password`, `img`, `date_create`) VALUES
(1, 'Frank Lamb', 'user1', 'user1@gmail.com', '1a1dc91c907325c69271ddf0c944bc72', 'https://via.placeholder.com/357x439/786/fff/?text=Frank Lamb', '2020-10-12 04:51:33'),
(2, 'Caroline Valdez', 'user2', 'user2@gmail.com', '1a1dc91c907325c69271ddf0c944bc72', 'https://via.placeholder.com/503x353/474/fff/?text=Caroline Valdez', '2021-10-19 04:49:34'),
(3, 'Robert Luna', 'user3', 'user3@gmail.com', '1a1dc91c907325c69271ddf0c944bc72', 'https://via.placeholder.com/478x419/BA4/fff/?text=Robert Luna', '2020-06-24 12:28:40'),
(4, 'Alli Daniel', 'user4', 'user4@gmail.com', '1a1dc91c907325c69271ddf0c944bc72', 'uploads/1670266672.8458_johannes-plenio-DKix6Un55mw-unsplash.jpg', '2022-07-09 00:35:25'),
(5, 'Chester Lynch', 'user5', 'user5@gmail.com', '1a1dc91c907325c69271ddf0c944bc72', 'https://via.placeholder.com/511x549/B89/fff/?text=Chester Lynch', '2022-07-22 12:21:47'),
(6, 'Oscar Hart', 'user6', 'user6@gmail.com', '1a1dc91c907325c69271ddf0c944bc72', 'https://via.placeholder.com/498x449/389/fff/?text=Oscar Hart', '2021-08-10 21:05:32'),
(7, 'Antonio Underwood', 'user7', 'user7@gmail.com', '1a1dc91c907325c69271ddf0c944bc72', 'https://via.placeholder.com/381x350/4AB/fff/?text=Antonio Underwood', '2022-01-09 17:53:08'),
(8, 'Vincent Lane', 'user8', 'user8@gmail.com', '1a1dc91c907325c69271ddf0c944bc72', 'https://via.placeholder.com/459x460/987/fff/?text=Vincent Lane', '2022-06-27 03:34:41'),
(9, 'Joshua Dennis', 'user9', 'user9@gmail.com', '1a1dc91c907325c69271ddf0c944bc72', 'https://via.placeholder.com/450x527/3B9/fff/?text=Joshua Dennis', '2020-11-19 12:46:18'),
(10, 'Glen Moreno', 'user10', 'user10@gmail.com', '1a1dc91c907325c69271ddf0c944bc72', 'https://via.placeholder.com/527x472/BAA/fff/?text=Glen Moreno', '2021-06-23 01:42:34'),
(12, 'xinyi', 'user0', 'user0@gmail.com', '1a1dc91c907325c69271ddf0c944bc72', 'uploads/1670822235.2922_sf_sunset2.jpeg', '2022-12-05 15:05:11'),
(14, 'userX', 'user12', 'user12@gmail.com', '1a1dc91c907325c69271ddf0c944bc72', 'https://via.placeholder.com/400/?text=userX', '2022-12-12 08:18:59'),
(15, 'ham', 'ham1', 'ham@gmail.com', '1a1dc91c907325c69271ddf0c944bc72', 'uploads/1670889542.7661_pacifica-pier5.jpeg', '2022-12-12 16:56:29');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `track_202290_sunset_spots`
--
ALTER TABLE `track_202290_sunset_spots`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `track_202290_sunset_tracks`
--
ALTER TABLE `track_202290_sunset_tracks`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `track_202290_users`
--
ALTER TABLE `track_202290_users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `track_202290_sunset_spots`
--
ALTER TABLE `track_202290_sunset_spots`
  MODIFY `id` int(13) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=309;

--
-- AUTO_INCREMENT for table `track_202290_sunset_tracks`
--
ALTER TABLE `track_202290_sunset_tracks`
  MODIFY `id` int(13) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=134;

--
-- AUTO_INCREMENT for table `track_202290_users`
--
ALTER TABLE `track_202290_users`
  MODIFY `id` int(13) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
