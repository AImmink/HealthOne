-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 06, 2022 at 12:57 PM
-- Server version: 10.4.21-MariaDB
-- PHP Version: 8.0.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `healthone`
--

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` int(11) NOT NULL,
  `name` varchar(20) NOT NULL,
  `image` varchar(255) NOT NULL,
  `description` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `image`, `description`) VALUES
(1, 'Roeitrainer', 'https://fitwinkel.nl/resize/vf-roeitrainer-ergometer-semppro-bestreviewed-7-keer_1945012576023.jpg/500/500/True/virtufit-ergometer-roeitrainer-semi-pro-gratis-trainingsschema.jpg', 'Meer dan 80% van je spieren wordt bij 1 haal gebruikt. Vandaar dat roeien ook wel een full body work-out wordt genoemd. Het helpt je niet alleen met het verliezen van je zwembandjes en het verbeteren van je conditie, maar ook bij het vergroten van je spie'),
(2, 'Crosstrainer', 'https://fitwinkel.nl/resize/bestreviewed-x1-virtufit-ctr-30i-img_9904_8151263209962.png/500/500/True/virtufit-ctr-30i-ergometer-crosstrainer-gratis-trainingsschema.png', 'Een groot voordeel van een crosstrainer in vergelijking met veel andere fitnessapparaten, is dat je met een crosstrainer je hele lichaam traint. Je traint namelijk je rugspieren, schouder- en armspieren, buikspieren en je bil- en beenspieren.'),
(3, 'Hometrainer', 'https://fitwinkel.nl/resize/bestreviewed-htr-10-3_3176262562588.jpg/500/500/True/virtufit-htr-10-hometrainer-gratis-trainingsschema.jpg', 'Het fietsen op een hometrainer verkleint namelijk de kans op hart-en-vaatziekten. Dit komt omdat je hart efficiënter te werk gaat. Dit houdt in dat je hart per slag meer bloed transporteert, maar wel minder slagen maakt.'),
(4, 'Loopband', 'https://fitwinkel.nl/resize/bestreviewed-tr-500-6_18801263228223.jpg/500/500/True/virtufit-elite-tr-500i-loopband-zwift-compatible.jpg', 'Voor het lopen op de loopband hoef je niet naar buiten en kun je jezelf elke training weer opnieuw uitdagen. Met een hoge hellingshoek verbrand je meer calorieën. Daarnaast train je ook alle spieren in je benen, waardoor je meer vet verbrand in je rustper');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `image` varchar(255) NOT NULL,
  `description` varchar(1420) NOT NULL,
  `category_id` int(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `name`, `image`, `description`, `category_id`) VALUES
(14, 'VirtuFit CTR 1.2i Crosstrainer', 'https://fitwinkel.nl/resize/vf-ctr12i-bestreviewed-1400x1400px_4382513190265.jpg/500/500/True/virtufit-ctr-12i-crosstrainer-gratis-trainingsschema.jpg', 'De VirtuFit CTR 1.2i is een ideale crosstrainer als je niet zoveel ruimte tot beschikking hebt en toch wilt profiteren van de vele voordelen van een crosstrainer. Dit apparaat is niet alleen ruimtebesparend, maar is na je training ook nog eens eenvoudig met de transportwielen te verplaatsen om optimaal gebruik van jouw ruimte te maken. Een goede eerste stap om vet te verbranden en de conditie te verbeteren.\r\n', 2),
(15, 'VirtuFit iConsole Total Fit Ergometer Crosstrainer', 'https://fitwinkel.nl/resize/total-fit-bestreviewed-3x-1400x1400px_1313762597286.jpg/500/500/True/virtufit-iconsole-total-fit-ergometer-crosstrainer-gratis-trainingsschema.jpg', 'De VirtuFit iConsole Total Fit Crosstrainer geeft je een natuurlijk gevoel met een ergonomische elliptische stapbeweging. De grote anti-slip pedalen zijn instelbaar en maken het gemakkelijk om een goede sporthouding te vinden. Nadat je deze stevige, 52,6 kg zware crosstrainer waterpas stelt, staat hij volkomen stabiel en geeft de crosstrainer ook bij een stevige training niet mee. Hij is belastbaar tot 150 kg, wat al aangeeft dat hij goed bestand is tegen intensieve oefeningen. De zware 22 kg roterende massa daagt je dan ook uit om te trainen met een hoge intensiteit en zorgt mede voor een soe', 2),
(16, 'VirtuFit iConsole CTR 2.1 Ergometer Crosstrainer', 'https://fitwinkel.nl/resize/virtufit-iconsole-ctr-21-crosstrainer_8776262594887.jpg/500/500/True/virtufit-iconsole-ctr-21-ergometer-crosstrainer-gratis-trainingsschema.jpg', 'Haal de beste prestaties uit jezelf met een fitnessapparaat dat vertrouwd en gemakkelijk te gebruiken is. Bijvoorbeeld met de VirtuFit iConsole CTR 2.1 Ergometer Crosstrainer. De crosstrainer bestaat uit materialen van de hoogste kwaliteit. Het is stevig, tot 150kg gewicht belastbaar en lang bruikbaar. De bewegingen van het apparaat zijn ook betrouwbaar. Met lagers op ieder draaipunt, een beweging die soepel loopt en de weerstand is zeer precies in te stellen. De weerstanden zijn in te stellen op 32 verschillende niveau\'s en op een wattage tussen de 10 en 350 Watt. Door al deze mogelijkheden i', 2),
(17, 'Crosstrainer - Focus Fitness Fox 3', 'https://www.betersport.nl/media/catalog/product/cache/1/image/470x470/9df78eab33525d08d6e5fb8d27136e95/f/f/ffcr015-01.jpg', 'De Focus Fitness Fox 3 is de ideale crosstrainer voor iedere thuissporter. Deze crosstrainer geeft je een stabiele training en is fluisterstil in gebruik. De verstelbare voetpedalen van de Fox 3 maken deze crosstrainer geschikt voor verschillende lichaamslengtes. Daarnaast maakt het vliegwiel, met een gewicht van 7 kg, je training comfortabel en zorgt dit vliegwiel voor een mooie ronde rotatie. Door deze factoren heeft de Focus Fitness Fox 3 in het verleden diverse Kieskeurig awards gewonnen.\r\n\r\n', 2),
(18, 'VirtuFit HTR 1.0 Hometrainer', 'https://fitwinkel.nl/resize/bestreviewed-htr-10-3_3176262562588.jpg/500/500/True/virtufit-htr-10-hometrainer-gratis-trainingsschema.jpg', 'De VirtuFit HTR 1.0 Hometrainer voelt net aan alsof je op je eigen fiets zit. De 8 kg roterende massa is een realistische benadering van een echte fiets. De vorm van het zadel, de omwenteling van de trappers en de zithouding zijn dan ook goed afgekeken. Het verstelbare stuur en horizontaal en verticaal verstelbare zadel helpen je de optimale zithouding in te stellen.\r\n', 3),
(19, 'VirtuFit HTR 2.0 Ergometer Hometrainer', 'https://fitwinkel.nl/resize/bestreviewed-htr-20-6_1295012583637.jpg/500/500/True/virtufit-htr-20-ergometer-hometrainer-inclusief-gratis-trainingsschema.jpg', 'Voor een ideale cardio oefening moet je de VirtuFit HTR 2.0 Ergometer Hometrainer proberen. Voor een “low intesity” training is de VirtuFit HTR 2.0 ideaal! “Low intensity” wil zeggen dat je niet voluit gaat bij oefeningen, maar iets rustiger sport en het langer volhoudt. Je ontwikkelt tijdens deze training minder kracht, maar je verbetert juist veel meer je uithoudingsvermogen en vetverbranding. Met deze slijtvaste, lichtgewicht hometrainer kun je trainen tot je helemaal geen energie meer over hebt, dat kan hij gemakkelijk aan. Ga gewoon zitten en geniet van je fietstocht. \r\n', 3),
(20, 'VirtuFit iConsole HTR 2.1 Ergometer Hometrainer', 'https://fitwinkel.nl/resize/virtufit-iconsole-htr-21-hometrainer_8776262594904.jpg/500/500/True/virtufit-iconsole-htr-21-ergometer-hometrainer-inclusief-gratis-trainingvideo.jpg', 'Met de VirtuFit iConsole HTR 2.1 Ergometer Hometrainer is sporten geen last meer. Deze hometrainer is gemaakt van versterkte materialen en daardoor stevig, comfortabel en stabiel. Dit zorgt voor stabiliteit, een belastbaar gewicht van 150 kg en een lange levensduur. Op alle draaipunten zitten industriële kogellagers. Dit zorgt voor een lange levensduur en de hoge kwaliteit van deze HTR 2.1. Deze kogellagers zorgen verder samen met het magnetische weerstandssysteem voor vloeiende bewegingen. Dit zorgt voor comfortabele en geruisloze trainingen met deze hometrainer. Daarnaast helpt ook het grote, ergonomische zadel wat gemonteerd op de hometrainer zit. Dit zadel is verticaal én horizontaal verstelbaar, op deze manier vind je altijd de houding die bij je past. Ook zitten er verstelbare handgrepen aan om je fietshouding te ondersteunen. De pedalen zijn zelfoprichtend en voorzien van verstelbare voetriemen die ervoor zorgen dat je voeten zich altijd op de juiste plek bevinden. Je kunt ook nog gebruik maken van de luxe bidonhouder die op de hometrainer bevestigd is.\r\n\r\n', 3),
(21, 'VirtuFit HTR 3.0i Ergometer Hometrainer', 'https://fitwinkel.nl/resize/bestreviewed-htr30-1_1295013176146.jpg/500/500/True/virtufit-htr-30i-ergometer-hometrainer-gratis-trainingsschema.jpg', 'De VirtuFit HTR 3.0i Ergometer Hometrainer heeft de betrouwbaarheid en kwaliteit die je gewend bent van VirtuFit, aangevuld met nieuwe programma\'s en meer functionaliteiten. Met een ruime keuze uit maar liefst 37 trainingsprogramma\'s en een koppeling met Zwift haal je op een leuke manier het allerbeste uit jezelf.\r\n', 3);

-- --------------------------------------------------------

--
-- Table structure for table `reviews`
--

CREATE TABLE `reviews` (
  `id` int(11) NOT NULL,
  `name` varchar(69) NOT NULL,
  `stars` int(5) NOT NULL,
  `review` varchar(420) NOT NULL,
  `postdate` datetime NOT NULL,
  `user_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `reviews`
--

INSERT INTO `reviews` (`id`, `name`, `stars`, `review`, `postdate`, `user_id`, `product_id`) VALUES
(2, 'test', 4, 'testing', '2021-11-15 11:28:38', 1, 1),
(6, 'saf31', 2, 'sd123', '0000-00-00 00:00:00', 1, 1),
(9, 'wq', 3, 'wq', '0000-00-00 00:00:00', 1, 1),
(10, 'wq', 3, 'wq', '0000-00-00 00:00:00', 1, 1),
(11, 'FD', 4, 'ADFA', '0000-00-00 00:00:00', 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `shophours`
--

CREATE TABLE `shophours` (
  `id` int(11) NOT NULL,
  `day` varchar(255) NOT NULL,
  `opening_time` varchar(255) NOT NULL,
  `closing_time` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `shophours`
--

INSERT INTO `shophours` (`id`, `day`, `opening_time`, `closing_time`) VALUES
(1, 'Maandag', '07:00', '20:00'),
(2, 'Dinsdag', '08:00', '20:00'),
(3, 'Woensdag', '07:00', '20:00'),
(4, 'Donderdag', '08:00', '20:00'),
(5, 'Vrijdag', '07:00', '20:30'),
(6, 'Zaterdag', '08:00', '13:00'),
(7, 'Zondag', '08:00', '13:00');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `image` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `password`, `email`, `image`) VALUES
(1, 'admin', 'software', 'none@email.com', '../public\\img\\none.jpeg'),
(2, 'tester', 'test', 'testing@test.nl', '../public\\img\\nothing.jpeg');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`),
  ADD KEY `category_id` (`category_id`);

--
-- Indexes for table `reviews`
--
ALTER TABLE `reviews`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `shophours`
--
ALTER TABLE `shophours`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `reviews`
--
ALTER TABLE `reviews`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `shophours`
--
ALTER TABLE `shophours`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `products`
--
ALTER TABLE `products`
  ADD CONSTRAINT `products_ibfk_1` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`);

--
-- Constraints for table `reviews`
--
ALTER TABLE `reviews`
  ADD CONSTRAINT `reviews_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
