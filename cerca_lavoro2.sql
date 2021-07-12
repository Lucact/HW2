-- phpMyAdmin SQL Dump
-- version 5.0.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Creato il: Lug 12, 2021 alle 23:20
-- Versione del server: 10.4.14-MariaDB
-- Versione PHP: 7.2.34

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `cerca_lavoro2`
--

-- --------------------------------------------------------

--
-- Struttura della tabella `comments`
--

CREATE TABLE `comments` (
  `id` int(11) NOT NULL,
  `id_offerta` varchar(255) DEFAULT NULL,
  `contenuto` varchar(1000) DEFAULT NULL,
  `username` varchar(255) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dump dei dati per la tabella `comments`
--

INSERT INTO `comments` (`id`, `id_offerta`, `contenuto`, `username`, `created_at`, `updated_at`) VALUES
(1, NULL, NULL, 'lucact', '2021-07-12 19:15:19', '2021-07-12 19:15:19'),
(2, NULL, NULL, 'lucact', '2021-07-12 19:15:29', '2021-07-12 19:15:29');

-- --------------------------------------------------------

--
-- Struttura della tabella `offers`
--

CREATE TABLE `offers` (
  `id` int(255) NOT NULL,
  `titolo` varchar(255) DEFAULT NULL,
  `descrizione` mediumtext DEFAULT NULL,
  `link` varchar(255) DEFAULT NULL,
  `username` varchar(255) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dump dei dati per la tabella `offers`
--

INSERT INTO `offers` (`id`, `titolo`, `descrizione`, `link`, `username`, `created_at`, `updated_at`) VALUES
(78, 'Service Desk Analyst', 'Service Desk Analyst Homer Road, Solihull Up to £18,500 depending on experience plus benefits & 25 days annual leave Rostered Hours between 08:00 – 18:00 As a company that operates across four global regions, five sectors, and with over 30,000 employees and 400 sites in the UK alone, Service Desk Analysts are a critical part of our business. In this role you’ll play an essential role in making sure all technical support in ITS is delivered to service excellence. You’ll be a single point of cont…', 'https://www.adzuna.co.uk/jobs/land/ad/2313694597?se=jJoaiELj6xGUNdOBrIEBPg&utm_medium=api&utm_source=ecd078c8&v=E256D28FE4973AC1F4C83254E6F6CE1F4304594E', 'lucact', '2021-07-12 16:54:06', '2021-07-12 16:54:06'),
(79, 'Paid Researcher', 'Do you like the idea of meeting and interviewing fascinating people? Ipsos MORI is currently recruiting for curious and self-motivated Market Research Interviewers to complete face to face interviews across many high-profile surveys. As a Market Research Interviewer, you’ll be interviewing a variety of people at their homes following social distancing guidelines about their interests, opinions and concerns. You’ll conduct interviews on behalf of different clients including government bodies, th…', 'https://www.adzuna.co.uk/jobs/land/ad/2198704638?se=jJoaiELj6xGUNdOBrIEBPg&utm_medium=api&utm_source=ecd078c8&v=4DD7C1DE1C083F4AC7A01F40AEEC349962E5BA39', 'lucact', '2021-07-12 16:54:07', '2021-07-12 16:54:07'),
(80, 'Field Market Researcher', 'Do you like the idea of meeting and interviewing fascinating people? Ipsos MORI is currently recruiting for curious and self-motivated Market Research Interviewers to complete face to face interviews across many high-profile surveys. As a Market Research Interviewer, you’ll be interviewing a variety of people at their homes following social distancing guidelines about their interests, opinions and concerns. You’ll conduct interviews on behalf of different clients including government bodies, th…', 'https://www.adzuna.co.uk/jobs/land/ad/2198705383?se=MvSjzELj6xGUu-SVWoBMgg&utm_medium=api&utm_source=ecd078c8&v=5557D6CED21D8B875938DEE32084D26FC32A7928', 'lucact', '2021-07-12 16:56:00', '2021-07-12 16:56:00'),
(81, 'Market Research Interviewer', 'Do you like the idea of meeting and interviewing fascinating people? Ipsos MORI is currently recruiting for curious and self-motivated Market Research Interviewers to complete face to face interviews across many high-profile surveys. As a Market Research Interviewer, you’ll be interviewing a variety of people at their homes following social distancing guidelines about their interests, opinions and concerns. You’ll conduct interviews on behalf of different clients including government bodies, th…', 'https://www.adzuna.co.uk/jobs/land/ad/2206771522?se=MvSjzELj6xGUu-SVWoBMgg&utm_medium=api&utm_source=ecd078c8&v=81AC0B7AE544592E6A16BCA6014AF6BC1AF66769', 'lucact', '2021-07-12 16:56:06', '2021-07-12 16:56:06'),
(82, 'Cleaners needed across London - earn up to £800 per week', 'Cleaner Cleaners required to start as soon as possible. We need professional cleaners or housekeepers to clean in private homes in all London areas. GREAT PAY Make up to £10/hour as a cleaner. Our top professionals make more than £600 a week. FLEXIBLE SCHEDULE You choose when you want to work and how much. Build a full schedule or simply claim a few jobs on the side. EASY PAYMENTS No more tracking down customers for payments. Handy will direct deposit your earnings into your bank account.', 'https://www.adzuna.co.uk/jobs/land/ad/749985866?se=noKAMETj6xGUu-SVWoBMgg&utm_medium=api&utm_source=ecd078c8&v=7F03C28F642BBC84EE07581B0EA53F37650A005B', 'lucact', '2021-07-12 17:06:01', '2021-07-12 17:06:01'),
(83, 'Cleaners needed across London - earn up to £800 per week', 'Cleaner Cleaners required to start as soon as possible. We need professional cleaners or housekeepers to clean in private homes in all London areas. GREAT PAY Make up to £10/hour as a cleaner. Our top professionals make more than £600 a week. FLEXIBLE SCHEDULE You choose when you want to work and how much. Build a full schedule or simply claim a few jobs on the side. EASY PAYMENTS No more tracking down customers for payments. Handy will direct deposit your earnings into your bank account.', 'https://www.adzuna.co.uk/jobs/land/ad/749985866?se=qgLvTkTj6xGsDhvFDHiWDA&utm_medium=api&utm_source=ecd078c8&v=7F03C28F642BBC84EE07581B0EA53F37650A005B', 'lucact', '2021-07-12 17:06:55', '2021-07-12 17:06:55'),
(84, 'Cleaners needed across London - earn up to £800 per week', 'Cleaner Cleaners required to start as soon as possible. We need professional cleaners or housekeepers to clean in private homes in all London areas. GREAT PAY Make up to £10/hour as a cleaner. Our top professionals make more than £600 a week. FLEXIBLE SCHEDULE You choose when you want to work and how much. Build a full schedule or simply claim a few jobs on the side. EASY PAYMENTS No more tracking down customers for payments. Handy will direct deposit your earnings into your bank account.', 'https://www.adzuna.co.uk/jobs/land/ad/749985866?se=3NqHVkTj6xGUu-SVWoBMgg&utm_medium=api&utm_source=ecd078c8&v=7F03C28F642BBC84EE07581B0EA53F37650A005B', 'lucact', '2021-07-12 17:07:16', '2021-07-12 17:07:16'),
(85, 'Trainee Driving Instructor - My Four Wheels', 'About MyFourWheels My Four Wheels are one if the UK’s largest Driving Schools, since our incorporation in Jan 2019, we have recruited over 1,000 Trainee Driving Instructors. Due to continued growth, we are still looking for a further 2,000 throughout the UK. No experience is necessary as we provide the most cost effective training our industry. What are the benefits of becoming a Driving Instructor? Excellent Income - Our Driving Instructors earn on average £27,000 - £32,000 per year based on a…', 'https://www.adzuna.co.uk/jobs/land/ad/2306690025?se=6JCJmkbj6xGsDhvFDHiWDA&utm_medium=api&utm_source=ecd078c8&v=CF7DF3168E106BEF7B2A5377D41F9877F0323C01', 'antoniooo', '2021-07-12 17:23:13', '2021-07-12 17:23:13'),
(87, 'Paid Researcher', 'Do you like the idea of meeting and interviewing fascinating people? Ipsos MORI is currently recruiting for curious and self-motivated Market Research Interviewers to complete face to face interviews across many high-profile surveys. As a Market Research Interviewer, you’ll be interviewing a variety of people at their homes following social distancing guidelines about their interests, opinions and concerns. You’ll conduct interviews on behalf of different clients including government bodies, th…', 'https://www.adzuna.co.uk/jobs/land/ad/2198704805?se=6JCJmkbj6xGsDhvFDHiWDA&utm_medium=api&utm_source=ecd078c8&v=A4BF60BC5C4F29819E5C2DF2F7D6ADEA16EC9BBB', 'antoniooo', '2021-07-12 17:23:16', '2021-07-12 17:23:16'),
(88, 'Trainee Driving Instructor - My Four Wheels', 'About MyFourWheels My Four Wheels are one if the UK’s largest Driving Schools, since our incorporation in Jan 2019, we have recruited over 1,000 Trainee Driving Instructors. Due to continued growth, we are still looking for a further 2,000 throughout the UK. No experience is necessary as we provide the most cost effective training our industry. What are the benefits of becoming a Driving Instructor? Excellent Income - Our Driving Instructors earn on average £27,000 - £32,000 per year based on a…', 'https://www.adzuna.co.uk/jobs/land/ad/2306690016?se=GNidSkfj6xGzy39gQTl0ZA&utm_medium=api&utm_source=ecd078c8&v=B4890AAC6A8C4791399038C2862D257C14754312', 'antoniooo', '2021-07-12 17:28:10', '2021-07-12 17:28:10'),
(89, 'Trainee Driving Instructor - My Four Wheels', 'About MyFourWheels My Four Wheels are one if the UK’s largest Driving Schools, since our incorporation in Jan 2019, we have recruited over 1,000 Trainee Driving Instructors. Due to continued growth, we are still looking for a further 2,000 throughout the UK. No experience is necessary as we provide the most cost effective training our industry. What are the benefits of becoming a Driving Instructor? Excellent Income - Our Driving Instructors earn on average £27,000 - £32,000 per year based on a…', 'https://www.adzuna.co.uk/jobs/land/ad/2306690016?se=cigcfEfj6xGSCIn9sfLqwQ&utm_medium=api&utm_source=ecd078c8&v=B4890AAC6A8C4791399038C2862D257C14754312', 'antoniooo', '2021-07-12 17:29:35', '2021-07-12 17:29:35'),
(90, 'Trainee Driving Instructor - My Four Wheels', 'About MyFourWheels My Four Wheels are one if the UK’s largest Driving Schools, since our incorporation in Jan 2019, we have recruited over 1,000 Trainee Driving Instructors. Due to continued growth, we are still looking for a further 2,000 throughout the UK. No experience is necessary as we provide the most cost effective training our industry. What are the benefits of becoming a Driving Instructor? Excellent Income - Our Driving Instructors earn on average £27,000 - £32,000 per year based on a…', 'https://www.adzuna.co.uk/jobs/land/ad/2306690016?se=Hmnvykfj6xGj4sKHyCbbjQ&utm_medium=api&utm_source=ecd078c8&v=B4890AAC6A8C4791399038C2862D257C14754312', 'antoniooo', '2021-07-12 17:31:42', '2021-07-12 17:31:42'),
(91, 'Sales Advisor', 'About the job You’ll be the person our customers call when they want to make changes to their packages. Customers might want to add more services, save money or get a better value deal. Sometimes they may even want to leave us. This role is all about asking questions to understand what’s really important to the customer. You’ll need to get to know them in a few minutes and quickly work out what they need. With award winning services and the latest devices you’ll be able to put together perfect …', 'https://www.adzuna.co.uk/jobs/land/ad/2313791956?se=5p0Ewkjj6xGzy39gQTl0ZA&utm_medium=api&utm_source=ecd078c8&v=2FF4801C7AB35B5F1BC96EF6337A2D18F79DCC73', 'lucact', '2021-07-12 17:38:36', '2021-07-12 17:38:36'),
(92, 'Gateway <strong>Officer</strong> Business <strong>Officer</strong>', 'I am currently recruiting for a Gateway Officer to work at my client, forward-thinking public-sector organisation based in Sheffield. Your role will be to provide a first line of support for businesses within the region and identify the right support they require. You will build successful relationships with businesses and use your interpersonal skills to build rapport and gain a better understanding of their requirements. A wide variety of communication methods will be used including social me…', 'https://www.adzuna.co.uk/jobs/land/ad/2290756011?se=5LGbHE_j6xGENzxOmutiLA&utm_medium=api&utm_source=ecd078c8&v=B539253E0528E8275B4F9EA2CC410CE2EF3DBFD6', NULL, '2021-07-12 18:24:13', '2021-07-12 18:24:13'),
(93, 'Trainee Driving Instructor - My Four Wheels', 'About MyFourWheels My Four Wheels are one if the UK’s largest Driving Schools, since our incorporation in Jan 2019, we have recruited over 1,000 Trainee Driving Instructors. Due to continued growth, we are still looking for a further 2,000 throughout the UK. No experience is necessary as we provide the most cost effective training our industry. What are the benefits of becoming a Driving Instructor? Excellent Income - Our Driving Instructors earn on average £27,000 - £32,000 per year based on a…', 'https://www.adzuna.co.uk/jobs/land/ad/2306689967?se=tPopSE_j6xGsDhvFDHiWDA&utm_medium=api&utm_source=ecd078c8&v=BE80D524DAD48C34CDA96D49A36F1323E5E97C15', NULL, '2021-07-12 18:25:25', '2021-07-12 18:25:25'),
(94, 'Gateway <strong>Officer</strong> Business <strong>Officer</strong>', 'I am currently recruiting for a Gateway Officer to work at my client, forward-thinking public-sector organisation based in Sheffield. Your role will be to provide a first line of support for businesses within the region and identify the right support they require. You will build successful relationships with businesses and use your interpersonal skills to build rapport and gain a better understanding of their requirements. A wide variety of communication methods will be used including social me…', 'https://www.adzuna.co.uk/jobs/land/ad/2290756011?se=1KSBU0_j6xGENzxOmutiLA&utm_medium=api&utm_source=ecd078c8&v=B539253E0528E8275B4F9EA2CC410CE2EF3DBFD6', 'lucact', '2021-07-12 18:25:42', '2021-07-12 18:25:42'),
(95, 'Sales Advisor', 'About the job You’ll be the person our customers call when they want to make changes to their packages. Customers might want to add more services, save money or get a better value deal. Sometimes they may even want to leave us. This role is all about asking questions to understand what’s really important to the customer. You’ll need to get to know them in a few minutes and quickly work out what they need. With award winning services and the latest devices you’ll be able to put together perfect …', 'https://www.adzuna.co.uk/jobs/land/ad/2313791956?se=9EV90VDj6xGENzxOmutiLA&utm_medium=api&utm_source=ecd078c8&v=2FF4801C7AB35B5F1BC96EF6337A2D18F79DCC73', 'lucact', '2021-07-12 18:36:25', '2021-07-12 18:36:25');

-- --------------------------------------------------------

--
-- Struttura della tabella `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `username` varchar(55) NOT NULL,
  `password` varchar(55) NOT NULL,
  `nome` varchar(55) NOT NULL,
  `cognome` varchar(55) NOT NULL,
  `telefono` int(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dump dei dati per la tabella `users`
--

INSERT INTO `users` (`id`, `username`, `password`, `nome`, `cognome`, `telefono`, `created_at`, `updated_at`) VALUES
(1, 'lucact', '123456', 'luca', 'rodolico', 2100813713, '2021-07-06 14:40:40', '2021-07-06 14:40:40'),
(2, 'vala98', '34534$', 'sdfsdfsd', 'sdfsdfs', 2342342, '2021-07-08 17:00:25', '2021-07-08 17:00:25'),
(3, 'ciao', '123458%$', 'ciao', 'ciao', 1234567, '2021-07-08 17:02:38', '2021-07-08 17:02:38'),
(4, 'cristia', '42165213$$', 'cristia', 'cata', 321456731, '2021-07-08 17:04:01', '2021-07-08 17:04:01'),
(5, 'LucactPBE', '41124125$$', 'geag', 'sgzsehs', 214252, '2021-07-08 18:21:38', '2021-07-08 18:21:38'),
(6, 'dzdnzd', '2345151', 'fnxtfnz', 'nztfnrsn', 253252, '2021-07-09 14:54:42', '2021-07-09 14:54:42'),
(7, 'vala4535', '515125$$$', 'vafa', 'adba', 3251512, '2021-07-10 15:11:53', '2021-07-10 15:11:53'),
(8, 'antoniooo', '123456$', 'antonio', 'valastro', 340123456, '2021-07-12 17:22:44', '2021-07-12 17:22:44');

--
-- Indici per le tabelle scaricate
--

--
-- Indici per le tabelle `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `username` (`username`);

--
-- Indici per le tabelle `offers`
--
ALTER TABLE `offers`
  ADD PRIMARY KEY (`id`),
  ADD KEY `username` (`username`);

--
-- Indici per le tabelle `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`,`username`);

--
-- AUTO_INCREMENT per le tabelle scaricate
--

--
-- AUTO_INCREMENT per la tabella `comments`
--
ALTER TABLE `comments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT per la tabella `offers`
--
ALTER TABLE `offers`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=96;

--
-- AUTO_INCREMENT per la tabella `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
