-- phpMyAdmin SQL Dump
-- version 4.7.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: 2017 m. Spa 30 d. 10:51
-- Server version: 10.1.25-MariaDB
-- PHP Version: 5.6.31

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ligos_db`
--

-- --------------------------------------------------------

--
-- Sukurta duomenų struktūra lentelei `ligos`
--

CREATE TABLE `ligos` (
  `ligosID` int(11) NOT NULL,
  `pavadinimas` varchar(255) COLLATE utf8_lithuanian_ci NOT NULL,
  `aprasymas` text COLLATE utf8_lithuanian_ci NOT NULL,
  `gydymas` text COLLATE utf8_lithuanian_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_lithuanian_ci;

--
-- Sukurta duomenų kopija lentelei `ligos`
--

INSERT INTO `ligos` (`ligosID`, `pavadinimas`, `aprasymas`, `gydymas`) VALUES
(1, 'Peršalimas', 'Inkubacinis laikotarpis (laiko tarpas nuo sukėlėjo patekimo į organizmą iki pirmųjų požymių pasireiškimo) gali būti įvairus, priklauso nuo sukėlėjų, tačiau dažniausiai yra 1-2 dienos.\r\nPeršalimas paprastai trunka apie savaitę.\r\nŠi virusinė infekcija gali komplikuotis: otitu (vidurinės ausies uždegimu), sinusitu (prienosinių ančių uždegimu), bronchiolitu (mažųjų bronchų uždegimu), plaučių uždegimu ir kt.\r\nReikėtų apsilankyti pas gydytoją, jeigu požymiai išlieka ilgiau nei savaitę ir papildomai pasireiškia tokių simptomų:\r\nSuaugusiems:\r\nKarščiavimas didesnis nei 39,4 laipsnių Celsijaus\r\nKai karščiavimą lydi prakaitavimas, šaltkrėtis, atkosima skreplių su spalva\r\nPatinsta liaukos\r\nKamuoja smarkus skausmas sinusų srityje (kaktos srityje)\r\nVaikams:\r\nTemperatūra aukštesnė nei 38 laipsniai Celsijaus naujagimiams.\r\nTemperatūra staigiai pakyla iki 40 laipsnių Celsijaus bet kokio amžiaus vaikams\r\nPasireiškia vėmimas, stiprūs pilvo skausmai\r\nVaikas atsisako gerti skysčius\r\nVargina ausies skausmai\r\nĮtempti, rigidiški kaklo raumenys\r\nNeįprastas mieguistumas, nuolatinis verkimas\r\nApsunkintas kvėpavimas\r\n', 'Specifinio gydymo nuo peršalimo nėra, galimas tik simptomus palengvinantis gydymas:\r\nAntipiretiniai vaistai temperatūrai mažinti, kai aukštesnė nei 38,5 laipsnių Celsijaus\r\nNesteroidiniai priešuždegiminiai vaistai gerklės ir galvos skausmams malšinti.\r\nNosies uždegimo simptomus mažinantys vaistai.\r\nAtsikosėjimą gerinantys vaistai.\r\nGerklės skausmui malšinti tinka skalavimas šiltu vandeniu su soda, taip pat pastilės ir purškiamieji preparatai.\r\nGausus skysčių vartojimas (tinka vanduo, arbata, sultinys, natūralios sultys).\r\nNereikėtų gerti alkoholio, gėrimų turinčių kofeino – jie didina skysčių išskyrimą iš organizmo ir skatina dehidrataciją. Taip pat nereikėtų rūkyti, nes rūkymas gali pasunkinti peršalimo simptomus.'),
(2, 'Sinusitas', 'Sinusitas – veido ančius išklojančios gleivinės paburkimas ir uždegimas. Paprastai veido ančiai pripildyti oro, tačiau kai jie užkemšami arba prisipildo skysčio, gali prasidėti infekcija.\r\nVeido ančiai – ertmių sistema veido daubose', 'Sinusitas. Gydymas\r\nGydymo taktika priklauso nuo sinusito sunkumo.\r\nSergant ūminiu nekomplikuotu sinusitu, gydytojas rekomenduoja vartoti nosies gleivinės paburkimą mažinančius vaistus (lašus ar purškalą). Šiuos medikamentus reikia vartoti atsargiai, ne ilgiau nei 4–5 dienas, nes jiems būdingas šalutinis poveikis – paradoksinis nosies paburkimas.\r\nJeigu skiriami antibiotikai, juos dažniausiai reikia gerti 10–14 dienų, priklausomai nuo ligos sunkumo.\r\nLėtinį sinusitą galima gydyti karšto ir drėgno oro inhaliacijomis. Patartina dėti šiltus kompresus skausmui malšinti. Taip pat galima įsigyti nosies paburkimą mažinančių vaistų arba druskos pagrindu pagamintų nosies lašų. Būklei negerėjant gydytojas skiria antibiotikų arba steroidinių vaistų, kurie malšina uždegimą.\r\nAlerginiam sinusitui gydyti skiriami antihistamininiai preparatai.\r\nJeigu medikamentinis gydymas nepadeda, reikia atlikti operaciją. Gali būti šalinami nosies polipai, adenoidai arba koreguojamos nosies struktūrų patologijos.\r\nKartais atliekama nosies kriauklių pašalinimo operacija.'),
(3, 'Nosies polipai', 'Nosies polipai – tai neskausmingi, nevėžiniai dariniai nosies gleivinėje ar prienosiniuose ančiuose (oringose veido kaulinėse ertmėse). Vizualiai jie atrodo lyg kabantis lašas. \r\nPagrindinė nosies polipų formavimosi priežastis – lėtinis nosies gleivinės uždegimas. Vis dėlto nėra aišku, kodėl uždegimas paskatina formuotis būtent polipus. Žmogaus nosies gleivinė gamina sekretą, kuris drėkina nosies ertmę ir „sugauna“ aplinkos dulkes, patekusias pro nosį. Manoma, kad asmenų, kuriems formuojasi nosies polipai, imuninė sistema aktyviau reaguoja į išorės dirgiklius, indukuoja stipresnį uždegimą ir skatina lokalų gleivinės sekrecijos padidėjimą.', 'Medikamentinis gydymas. Esminis gydymo tikslas – sumažinti polipų dydį arba juos pašalinti. Pirmiausia pasirenkamas gydymas vaistais – tai purškiami, geriami ar leidžiami į veną uždegimą slopinantys vaistai (gliukokortikoidai). \r\nChirurginis gydymas. Jeigu gydymas vaistais neefektyvus ir nosies polipai nesumažėja, galima atlikti endoskopinę nosies polipų pašalinimo operaciją. Operacijos metu į nosį įvedamas plonas lankstus endoskopinis vamzdelis su kamera, kartu įvedami ir instrumentai, reikalingi polipams pašalinti. Tos pačios operacijos metu chirurgas taip pat gali praplėsti natūralias prienosinių ančių angas. ');

-- --------------------------------------------------------

--
-- Sukurta duomenų struktūra lentelei `ligossimptomai`
--

CREATE TABLE `ligossimptomai` (
  `ligosSimptomoID` int(11) NOT NULL,
  `ligosID` int(11) NOT NULL,
  `simptomoID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_lithuanian_ci;

--
-- Sukurta duomenų kopija lentelei `ligossimptomai`
--

INSERT INTO `ligossimptomai` (`ligosSimptomoID`, `ligosID`, `simptomoID`) VALUES
(1, 1, 1),
(2, 1, 2),
(5, 1, 3),
(6, 1, 4),
(7, 1, 5),
(8, 1, 6),
(9, 1, 7),
(10, 1, 8),
(11, 1, 9),
(12, 2, 1),
(13, 2, 14),
(14, 2, 3),
(15, 2, 12),
(16, 2, 13),
(17, 2, 11),
(18, 3, 15),
(19, 3, 16),
(20, 3, 11),
(21, 3, 17),
(22, 3, 19),
(23, 3, 20),
(24, 3, 2);

-- --------------------------------------------------------

--
-- Sukurta duomenų struktūra lentelei `pacientai`
--

CREATE TABLE `pacientai` (
  `pacientoID` int(11) NOT NULL,
  `vardas` varchar(255) COLLATE utf8_lithuanian_ci NOT NULL,
  `pavarde` varchar(255) COLLATE utf8_lithuanian_ci NOT NULL,
  `amzius` int(3) NOT NULL,
  `lytis` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_lithuanian_ci;

--
-- Sukurta duomenų kopija lentelei `pacientai`
--

INSERT INTO `pacientai` (`pacientoID`, `vardas`, `pavarde`, `amzius`, `lytis`) VALUES
(1, 'Vardas', 'pavardenis', 20, 1),
(2, 'textField1.Text', 'pavardenis', 20, 1),
(3, 'katuKavakare', 'pavardenis', 20, 1),
(4, 'Žydr?nas', 'Gaidukovas', 21, 0),
(5, 'Mergina', 'Panele', 200, 1),
(6, 'VVVV', 'ppp', 12, 1),
(7, 'Ivedu', 'pavardeni', 25, 0),
(8, 'Arbata', 'Arbatinis', 26, 0),
(9, 'Test', 'Driver', 12, 1),
(10, 'benis', 'mldc', 21, 0),
(11, 'VVVV', 'PPPPPO', 12, 0),
(12, 'ABCele', 'aaaaaaa', 123, 0),
(13, 'Tomas', 'Pavardinis', 20, 0),
(14, 'JOnas', 'jonaitis', 12, 0);

-- --------------------------------------------------------

--
-- Sukurta duomenų struktūra lentelei `pacientuligos`
--

CREATE TABLE `pacientuligos` (
  `pacientuLigosID` int(11) NOT NULL,
  `pacientoID` int(11) NOT NULL,
  `ligosID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_lithuanian_ci;

--
-- Sukurta duomenų kopija lentelei `pacientuligos`
--

INSERT INTO `pacientuligos` (`pacientuLigosID`, `pacientoID`, `ligosID`) VALUES
(1, 6, 1),
(2, 3, 1),
(3, 9, 3),
(4, 3, 1),
(5, 3, 1),
(6, 14, 3);

-- --------------------------------------------------------

--
-- Sukurta duomenų struktūra lentelei `simptomai`
--

CREATE TABLE `simptomai` (
  `simptomoID` int(11) NOT NULL,
  `pavadinimas` varchar(255) COLLATE utf8_lithuanian_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_lithuanian_ci;

--
-- Sukurta duomenų kopija lentelei `simptomai`
--

INSERT INTO `simptomai` (`simptomoID`, `pavadinimas`) VALUES
(1, 'Kosulys'),
(2, 'Čiaudulys'),
(3, 'Sloga'),
(4, 'Nosies perštėjimas'),
(5, 'Nosies niežtėjimas'),
(6, 'Nosies paraudimas'),
(7, 'Temperatūros pakilimas'),
(8, 'Balso prikimimas'),
(9, 'Gerklės perštėjimas'),
(10, 'Yest'),
(11, 'Veido skausmas'),
(12, 'Nosies paburkimas'),
(13, 'Nosies užsikimšimas'),
(14, 'Nebeužuodžiamas kvapas'),
(15, 'Nosies užgulimas'),
(16, 'Uoslės sutrikimas'),
(17, 'Skonio jutimo sutrikimas'),
(18, 'Alpimas'),
(19, 'Galvos skausmas'),
(20, 'Dantų šaknų skausmas');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `ligos`
--
ALTER TABLE `ligos`
  ADD PRIMARY KEY (`ligosID`);

--
-- Indexes for table `ligossimptomai`
--
ALTER TABLE `ligossimptomai`
  ADD PRIMARY KEY (`ligosSimptomoID`),
  ADD KEY `ligosSimptomai_fk0` (`ligosID`),
  ADD KEY `ligosSimptomai_fk1` (`simptomoID`);

--
-- Indexes for table `pacientai`
--
ALTER TABLE `pacientai`
  ADD PRIMARY KEY (`pacientoID`);

--
-- Indexes for table `pacientuligos`
--
ALTER TABLE `pacientuligos`
  ADD PRIMARY KEY (`pacientuLigosID`),
  ADD KEY `pacientuLigos_fk0` (`pacientoID`),
  ADD KEY `pacientuLigos_fk1` (`ligosID`);

--
-- Indexes for table `simptomai`
--
ALTER TABLE `simptomai`
  ADD PRIMARY KEY (`simptomoID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `ligos`
--
ALTER TABLE `ligos`
  MODIFY `ligosID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `ligossimptomai`
--
ALTER TABLE `ligossimptomai`
  MODIFY `ligosSimptomoID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;
--
-- AUTO_INCREMENT for table `pacientai`
--
ALTER TABLE `pacientai`
  MODIFY `pacientoID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;
--
-- AUTO_INCREMENT for table `pacientuligos`
--
ALTER TABLE `pacientuligos`
  MODIFY `pacientuLigosID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `simptomai`
--
ALTER TABLE `simptomai`
  MODIFY `simptomoID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;
--
-- Apribojimai eksportuotom lentelėm
--

--
-- Apribojimai lentelei `ligossimptomai`
--
ALTER TABLE `ligossimptomai`
  ADD CONSTRAINT `ligosSimptomai_fk0` FOREIGN KEY (`ligosID`) REFERENCES `ligos` (`ligosID`),
  ADD CONSTRAINT `ligosSimptomai_fk1` FOREIGN KEY (`simptomoID`) REFERENCES `simptomai` (`simptomoID`);

--
-- Apribojimai lentelei `pacientuligos`
--
ALTER TABLE `pacientuligos`
  ADD CONSTRAINT `pacientuLigos_fk0` FOREIGN KEY (`pacientoID`) REFERENCES `pacientai` (`pacientoID`),
  ADD CONSTRAINT `pacientuLigos_fk1` FOREIGN KEY (`ligosID`) REFERENCES `ligos` (`ligosID`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
