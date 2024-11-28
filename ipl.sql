-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 28, 2024 at 10:06 AM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ipl`
--

-- --------------------------------------------------------

--
-- Table structure for table `csk`
--

CREATE TABLE `csk` (
  `c_no` int(11) NOT NULL,
  `player_name` varchar(255) NOT NULL,
  `age` varchar(255) NOT NULL,
  `matches_played` varchar(255) NOT NULL,
  `highest_figures` varchar(255) NOT NULL,
  `acheivements` varchar(500) NOT NULL,
  `images` varchar(500) NOT NULL,
  `player_role` varchar(255) NOT NULL,
  `c_status` int(2) NOT NULL DEFAULT 1,
  `C_D_T` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `csk`
--

INSERT INTO `csk` (`c_no`, `player_name`, `age`, `matches_played`, `highest_figures`, `acheivements`, `images`, `player_role`, `c_status`, `C_D_T`) VALUES
(1, 'Rutraj Gaikwad', '24', '114', '103', 'Gaikwad led India to a gold medal at the Asian Games in 2023.', 'IPL\\CSK\\Ruth.webp\n', 'Batter', 1, '2024-11-28 05:14:07'),
(2, 'Devon Conway\n', '27', '170', '134', 'Scored a double century on his Test debut against England at Lord\'s, ', 'IPL\\CSK\\conway.webp', 'Batter', 1, '2024-11-27 11:48:44'),
(3, 'M S Dhoni', '42', '352', '2', 'Dhoni has captained the most international matches', 'IPL\\CSK\\dhoni.webp', 'wicket keeper Batter', 1, '2024-11-27 11:49:05'),
(4, 'Rachin Ravindra', '26', '145', '123', 'Ravindra was New Zealand\'s top run-getter in the 2023 ODI World Cup, scoring 578 runs', 'IPL\\CSK\\r\nachin.webp', 'All-rounder', 1, '2024-11-27 11:49:30'),
(5, 'Ravichandran Ashwin', '37', '200', '123', 'Experienced spinner and handy batsman', 'IPL\\CSK\\ashwin.webp', 'Bowling All-rounder', 1, '2024-11-27 11:59:27'),
(6, 'Shivam Dube', '30', '60', '95', 'Promising all-rounder', 'IPL\\CSK\\dube.webp', 'All-rounder', 1, '2024-11-27 12:00:15'),
(7, 'Vijay Shankar', '32', '100', '101', 'Reliable middle-order batsman and medium pacer', 'IPL\\CSK\\shankar.webp', 'All-rounder', 1, '2024-11-27 12:00:18'),
(8, 'Sam Curran', '26', '90', '72', 'Dynamic all-rounder, 2022 IPL MVP', 'IPL\\CSK\\curran.webp', 'All-rounder', 1, '2024-11-27 12:00:23'),
(9, 'Ravindra Jadeja', '34', '210', '91', 'Leading all-rounder and key finisher for CSK', 'IPL\\CSK\\jadeja.webp', 'All-rounder', 1, '2024-11-27 12:00:37'),
(10, 'Mukesh Choudhary', '27', '35', '4', 'Promising left-arm pacer for CSK', 'IPL\\CSK\\mukesh.webp', 'Bowler', 1, '2024-11-27 12:00:47'),
(11, 'Matheesha Pathirana', '21', '20', '3', 'Young Sri Lankan pacer with a unique bowling action', 'IPL\\CSK\\patirana.webp', 'Bowler', 1, '2024-11-27 12:00:53');

-- --------------------------------------------------------

--
-- Table structure for table `dc`
--

CREATE TABLE `dc` (
  `c_no` int(11) NOT NULL,
  `player_name` varchar(255) NOT NULL,
  `age` varchar(255) NOT NULL,
  `matches_played` varchar(255) NOT NULL,
  `highest_figures` varchar(255) NOT NULL,
  `acheivements` varchar(500) NOT NULL,
  `images` varchar(255) NOT NULL,
  `player_role` varchar(255) NOT NULL,
  `c_status` int(11) NOT NULL DEFAULT 1,
  `C_D_T` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `dc`
--

INSERT INTO `dc` (`c_no`, `player_name`, `age`, `matches_played`, `highest_figures`, `acheivements`, `images`, `player_role`, `c_status`, `C_D_T`) VALUES
(1, 'KL Rahul', '32', '100', '110', 'Top-order batsman, Former India Captain', 'IPL\\DC\\rahul.webp', 'Batsman', 0, '2024-11-27 15:29:45'),
(2, 'Harry Brook', '24', '45', '80', 'Aggressive English batsman', 'IPL\\DC\\brook.webp', 'Batsman', 0, '2024-11-27 15:30:22'),
(3, 'Jake Fraser-McGurk', '22', '10', '42', 'Young Australian talent', 'IPL\\DC\\jake.webp', 'Batsman', 0, '2024-11-27 15:30:32'),
(4, 'Abhishek Porel', '21', '15', '65', 'Wicketkeeper-batsman', 'IPL\\DC\\porel.webp', 'Wicketkeeper-Batsman', 0, '2024-11-27 15:30:40'),
(5, 'Stubbs', '26', '15', '30', 'Power-hitter, Rising star', 'IPL\\DC\\stubbs.webp', 'Batsman', 0, '2024-11-27 15:30:49'),
(6, 'Axar Patel', '30', '60', '55*', 'All-rounder, Spinner for Delhi Capitals', 'IPL\\DC\\axar.webp', 'All-rounder', 0, '2024-11-27 15:30:57'),
(7, 'Mitchell Starc', '33', '80', '6/43', 'Leading fast bowler, Australia', 'IPL\\DC\\starc.webp', 'Bowler', 0, '2024-11-27 15:31:06'),
(8, 'T Natarajan', '33', '50', '4/25', 'Death overs specialist, Left-arm fast bowler', 'IPL\\DC\\natarajan.webp', 'Bowler', 0, '2024-11-27 15:31:17'),
(9, 'Mohit Sharma', '35', '90', '3/20', 'Indian bowler with strong death over skills', 'IPL\\DC\\mohith.webp', 'Bowler', 0, '2024-11-27 15:31:26'),
(10, 'Mukesh Kumar', '29', '25', '3/50', 'Emerging Indian fast bowler', 'IPL\\DC\\mukesh.webp', 'Bowler', 0, '2024-11-27 15:31:34'),
(11, 'Kuldeep Yadav', '28', '75', '5/24', 'Leg spinner for India, Wicket-taker', 'IPL\\DC\\kuldeep.webp', 'Bowler', 0, '2024-11-27 15:31:47');

-- --------------------------------------------------------

--
-- Table structure for table `gt`
--

CREATE TABLE `gt` (
  `c_no` int(11) NOT NULL,
  `player_name` varchar(255) NOT NULL,
  `age` varchar(255) NOT NULL,
  `matches_played` varchar(255) NOT NULL,
  `highest_figures` varchar(255) NOT NULL,
  `acheivements` varchar(500) NOT NULL,
  `images` varchar(255) NOT NULL,
  `player_role` varchar(255) NOT NULL,
  `c_status` int(11) NOT NULL DEFAULT 1,
  `C_D_T` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `gt`
--

INSERT INTO `gt` (`c_no`, `player_name`, `age`, `matches_played`, `highest_figures`, `acheivements`, `images`, `player_role`, `c_status`, `C_D_T`) VALUES
(1, 'Shubman Gill', '24', '74', '126*', 'Emerging Player IPL 2019', 'IPL\\GT\\gill.webp', 'Batsman', 1, '2024-11-27 17:50:25'),
(2, 'Jos Buttler', '33', '92', '124', 'Orange Cap Winner IPL 2022', 'IPL\\GT\\butler.webp', 'Batsman', 1, '2024-11-27 17:50:32'),
(3, 'Anuj Rawat', '24', '23', '66', 'Impactful Innings in Powerplay', 'IPL\\GT\\anuj.webp', 'Wicketkeeper-Batsman', 1, '2024-11-27 17:50:39'),
(4, 'Glenn Phillips', '27', '12', '54', 'Power-Hitter', 'IPL\\GT\\glen.webp', 'Batsman', 1, '2024-11-27 17:50:47'),
(5, 'Sai Sudharsan', '22', '14', '96', 'Promising Young Talent', 'IPL\\GT\\sai.webp', 'Batsman', 1, '2024-11-27 17:50:58'),
(6, 'Shahrukh Khan', '28', '43', '47', 'Best Finisher PBKS 2021', 'IPL\\GT\\khan.webp', 'All-Rounder', 1, '2024-11-27 17:51:05'),
(7, 'Manav Suthar', '21', '5', '2/18', 'Emerging Spinner', 'IPL\\GT\\manav.webp', 'Spinner', 1, '2024-11-27 17:51:13'),
(8, 'Sai Kishore', '27', '8', '3/15', 'Key Powerplay Bowler', 'IPL\\GT\\kishore.webp', 'Bowler', 1, '2024-11-27 17:51:24'),
(9, 'Jayant Yadav', '34', '19', '4/23', 'Experienced Off-Spinner', 'IPL\\GT\\jayanth.webp', 'Bowler', 1, '2024-11-27 17:51:31'),
(10, 'Rahul Tewatia', '30', '66', '53*', 'Match-Winning Knocks', 'IPL\\GT\\rahul.webp', 'All-Rounder', 1, '2024-11-27 17:51:39'),
(11, 'Rashid Khan', '26', '100', '4/24', 'Consistent Match-Winner', 'IPL\\GT\\rashid.webp', 'Spinner', 1, '2024-11-27 17:51:48');

-- --------------------------------------------------------

--
-- Table structure for table `kings`
--

CREATE TABLE `kings` (
  `c_no` int(11) NOT NULL,
  `player_name` varchar(255) NOT NULL,
  `age` varchar(255) NOT NULL,
  `matches_played` varchar(255) NOT NULL,
  `highest_figures` varchar(255) NOT NULL,
  `acheivements` varchar(500) NOT NULL,
  `images` varchar(255) NOT NULL,
  `player_role` varchar(255) NOT NULL,
  `c_status` int(11) NOT NULL DEFAULT 1,
  `C_D_T` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `kings`
--

INSERT INTO `kings` (`c_no`, `player_name`, `age`, `matches_played`, `highest_figures`, `acheivements`, `images`, `player_role`, `c_status`, `C_D_T`) VALUES
(1, 'Shreyas Iyer', '29', '101', '96', 'Led Delhi Capitals to IPL Playoffs', 'IPL\\kings\\iyer.webp', 'Batsman', 1, '2024-11-27 18:14:02'),
(2, 'Shashank Singh', '32', '6', '25*', 'Explosive Cameos', 'IPL\\kings\\shashank.webp', 'All-Rounder', 1, '2024-11-27 18:14:12'),
(3, 'Prabhsimran Singh', '23', '24', '103', 'Emerging Opener for PBKS', 'IPL\\kings\\sing.webp', 'Wicketkeeper-Batsman', 1, '2024-11-27 18:16:26'),
(4, 'Marcus Stoinis', '34', '82', '65*', 'Reliable Finisher and Bowler', 'IPL\\kings\\stonis.webp', 'All-Rounder', 1, '2024-11-27 18:14:33'),
(5, 'Glenn Maxwell', '35', '122', '95', 'Known for Match-Winning Innings', 'IPL\\kings\\maxi.webp', 'All-Rounder', 1, '2024-11-27 18:14:40'),
(6, 'Marco Jansen', '23', '15', '2/26', 'Impact Bowler in Death Overs', 'IPL\\kings\\jansen.webp', 'Bowler', 1, '2024-11-27 18:14:52'),
(7, 'Arshdeep Singh', '25', '50', '5/32', 'Death Over Specialist', 'IPL\\kings\\arshdeep.webp', 'Bowler', 1, '2024-11-27 18:15:00'),
(8, 'Yuzvendra Chahal', '34', '143', '5/40', 'Highest Wicket-Taker in IPL', 'IPL\\kings\\chahal.webp', 'Spinner', 1, '2024-11-27 18:15:08'),
(9, 'Harpreet Brar', '28', '26', '3/19', 'Key Role in Middle Overs', 'IPL\\kings\\brar.webp', 'All-Rounder', 1, '2024-11-27 18:15:19'),
(10, 'Vyshak Vijaykumar', '27', '8', '3/20', 'Emerging Fast Bowler', 'IPL\\kings\\vyshak.webp', 'Bowler', 1, '2024-11-27 18:15:28'),
(11, 'Lockie Ferguson', '33', '40', '4/29', 'Pace Bowler with Consistent Yorkers', 'IPL\\kings\\fergu.webp', 'Bowler', 1, '2024-11-27 18:15:35');

-- --------------------------------------------------------

--
-- Table structure for table `login`
--

CREATE TABLE `login` (
  `l_id` int(11) NOT NULL,
  `l_name` varchar(50) NOT NULL,
  `l_pwd` varchar(255) NOT NULL,
  `l_status` int(2) NOT NULL DEFAULT 1,
  `C_D_T` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `login`
--

INSERT INTO `login` (`l_id`, `l_name`, `l_pwd`, `l_status`, `C_D_T`) VALUES
(1, 'sai123', '1111', 1, '2024-11-26 08:59:53');

-- --------------------------------------------------------

--
-- Table structure for table `lsg`
--

CREATE TABLE `lsg` (
  `c_no` int(11) NOT NULL,
  `player_name` varchar(255) NOT NULL,
  `age` varchar(255) NOT NULL,
  `matches_played` varchar(255) NOT NULL,
  `highest_figures` varchar(255) NOT NULL,
  `acheivements` varchar(500) NOT NULL,
  `images` varchar(255) NOT NULL,
  `player_role` varchar(255) NOT NULL,
  `c_status` int(11) NOT NULL DEFAULT 1,
  `C_D_T` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `lsg`
--

INSERT INTO `lsg` (`c_no`, `player_name`, `age`, `matches_played`, `highest_figures`, `acheivements`, `images`, `player_role`, `c_status`, `C_D_T`) VALUES
(1, 'Rishabh Pant', '26', '98', '128*', 'Emerging Player IPL 2018', 'IPL\\LSG\\pant.webp', 'Wicketkeeper-Batsman', 1, '2024-11-27 17:36:12'),
(2, 'David Miller', '34', '105', '101*', 'Finisher of the Year', 'IPL\\LSG\\miller.webp', 'Batsman', 1, '2024-11-27 17:36:22'),
(3, 'Aiden Markram', '29', '65', '96', 'Captaincy Excellence', 'IPL\\LSG\\markram.webp', 'All-Rounder', 1, '2024-11-27 17:36:34'),
(4, 'Nicholas Pooran', '28', '60', '77*', 'Fastest IPL Fifty', 'IPL\\LSG\\pooran.webp', 'Wicketkeeper-Batsman', 1, '2024-11-27 17:36:56'),
(5, 'Ayush Badoni', '24', '22', '54*', 'Impact Player LSG', 'IPL\\LSG\\badoni.webp', 'Batsman', 1, '2024-11-27 17:37:03'),
(6, 'Avesh Khan', '27', '56', '4/24', 'Best Death Bowler', 'IPL\\LSG\\avesh.webp', 'Bowler', 1, '2024-11-27 17:37:15'),
(7, 'Siddharth Kaul', '33', '58', '4/29', 'Key Wickets in Powerplay', 'IPL\\LSG\\siddu.webp', 'Bowler', 1, '2024-11-27 17:37:24'),
(8, 'Mayank Yadav', '25', '15', '3/28', 'Promising Talent', 'IPL\\LSG\\myank.webp', 'Bowler', 1, '2024-11-27 17:38:42'),
(9, 'Mohsin Khan', '24', '19', '4/16', 'Match-Winning Spells', 'IPL\\LSG\\mohsin.webp', 'Bowler', 1, '2024-11-27 17:37:44'),
(10, 'Ravi Bishnoi', '23', '47', '4/24', 'Best Emerging Spinner', 'IPL\\LSG\\bishnoi.webp', 'Spinner', 1, '2024-11-27 17:38:03'),
(11, 'Akash Deep', '27', '14', '3/20', 'Consistent Wicket-Taker', 'IPL\\LSG\\akash.webp', 'Bowler', 1, '2024-11-27 17:38:10');

-- --------------------------------------------------------

--
-- Table structure for table `mi`
--

CREATE TABLE `mi` (
  `c_no` int(11) NOT NULL,
  `player_name` varchar(500) NOT NULL,
  `age` varchar(500) NOT NULL,
  `matches_played` varchar(255) NOT NULL,
  `highest_figures` varchar(255) NOT NULL,
  `acheivements` varchar(500) NOT NULL,
  `images` varchar(500) NOT NULL,
  `player_role` varchar(255) NOT NULL,
  `c_status` int(11) NOT NULL DEFAULT 1,
  `C_D_T` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `mi`
--

INSERT INTO `mi` (`c_no`, `player_name`, `age`, `matches_played`, `highest_figures`, `acheivements`, `images`, `player_role`, `c_status`, `C_D_T`) VALUES
(1, 'Rohit Sharma', '36', '250', '264', 'Leading run-scorer and captain of Mumbai Indians', 'IPL\\MI\\Rohith.webp', 'Batsman', 1, '2024-11-27 12:18:22'),
(2, 'Suryakumar Yadav', '33', '150', '117', 'Known as Mr. 360 for his innovative shots', 'IPL\\MI\\surya.webp', 'Batsman', 1, '2024-11-27 12:26:57'),
(3, 'Tilak Varma', '21', '25', '84', 'Promising young left-handed batsman', 'IPL\\MI\\tilak.webp', 'Batsman', 1, '2024-11-27 12:27:06'),
(4, 'Naman Dhir', '23', '10', '50', 'Emerging talent in MI squad', 'IPL\\MI\\dhir.webp', 'All-rounder', 1, '2024-11-27 12:28:21'),
(5, 'Hardik Pandya', '30', '120', '91', 'Power-hitter and key all-rounder for MI', 'IPL\\MI\\hardik.webp', 'All-rounder', 1, '2024-11-27 12:28:30'),
(6, 'Arjun Tendulkar', '24', '8', '24', 'Promising bowler and son of Sachin Tendulkar', 'IPL\\MI\\arjun.webp', 'Bowler', 1, '2024-11-27 12:28:41'),
(7, 'Jasprit Bumrah', '30', '140', '5', 'One of the best death bowlers in cricket', 'IPL\\MI\\bumrah.webp', 'Bowler', 1, '2024-11-27 12:28:53'),
(8, 'Trent Boult', '34', '100', '5', 'World-class left-arm pacer', 'IPL\\MI\\boult.webp', 'Bowler', 1, '2024-11-27 12:43:34'),
(9, 'Deepak Chahar', '31', '125', '6', 'Swing bowler with power-play expertise', 'IPL\\MI\\chahar.webp', 'Bowler', 1, '2024-11-27 12:43:56'),
(10, 'Karn Sharma', '36', '70', '4', 'Experienced leg-spinner', 'IPL\\MI\\karn.webp', 'Bowler', 1, '2024-11-27 12:44:12'),
(11, 'Mitchell Santner', '32', '80', '4', 'Dependable left-arm spinner and handy lower-order batsman', 'IPL\\MI\\santner.webp', 'All-rounder', 1, '2024-11-27 12:44:27');

-- --------------------------------------------------------

--
-- Table structure for table `rcb`
--

CREATE TABLE `rcb` (
  `c_no` int(11) NOT NULL,
  `player_name` varchar(255) NOT NULL,
  `age` varchar(255) NOT NULL,
  `matches_played` varchar(255) NOT NULL,
  `highest_figures` varchar(255) NOT NULL,
  `acheivements` varchar(500) NOT NULL,
  `images` varchar(255) NOT NULL,
  `player_role` varchar(255) NOT NULL,
  `c_status` int(11) NOT NULL,
  `C_D_T` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `rcb`
--

INSERT INTO `rcb` (`c_no`, `player_name`, `age`, `matches_played`, `highest_figures`, `acheivements`, `images`, `player_role`, `c_status`, `C_D_T`) VALUES
(1, 'Virat Kohli', '35', '192', '122*', 'Numerous records, 2016 ICC Player of the Year', 'IPL\\RCB\\kohli.webp', 'Batsman', 0, '2024-11-27 14:56:20'),
(2, 'Rajat Patidar', '24', '60', '91*', 'Top-order batsman, Rising star', 'IPL\\RCB\\rajat.webp', 'Batsman', 0, '2024-11-27 14:55:57'),
(3, 'Liam Livingstone', '30', '20', '50', 'Big-hitting all-rounder, Key player for PBKS', 'IPL\\RCB\\livingstone.webp', 'All-rounder', 0, '2024-11-27 14:56:32'),
(4, 'Phil Salt', '28', '35', '87', 'Aggressive top-order batsman', 'IPL\\RCB\\salt.webp', 'Batsman', 0, '2024-11-27 14:56:39'),
(5, 'Jitesh Sharma', '29', '40', '54*', 'Finisher, Keeper-batsman for PBKS', 'IPL\\RCB\\jitesh.webp', 'Wicketkeeper-batsman', 0, '2024-11-27 14:56:48'),
(6, 'Tim David', '27', '40', '60*', 'Power-hitter, Match finisher', 'IPL\\RCB\\tim.webp', 'Batsman', 0, '2024-11-27 14:56:57'),
(7, 'Krunal Pandya', '33', '100', '59', 'All-rounder for MI, Key performer', 'IPL\\RCB\\krunal.webp', 'All-rounder', 0, '2024-11-27 14:57:07'),
(8, 'Bhuvneshwar Kumar', '34', '130', '5/24', 'Top swing bowler, Former India player', 'IPL\\RCB\\bhuvi.webp', 'Bowler', 0, '2024-11-27 14:57:16'),
(9, 'Yash Dayal', '25', '25', '3/40', 'Emerging bowler for GT', 'IPL\\RCB\\yash.webp', 'Bowler', 0, '2024-11-27 14:58:04'),
(10, 'Josh Hazlewood', '33', '50', '4/25', 'Top international fast bowler, Key in IPL', 'IPL\\RCB\\josh.png', 'Bowler', 0, '2024-11-27 14:58:58'),
(11, 'Suyash Sharma', '21', '10', '2/10', 'Emerging spin bowler, Key in IPL', 'IPL\\RCB\\suyash.webp', 'Bowler', 0, '2024-11-27 14:57:33');

-- --------------------------------------------------------

--
-- Table structure for table `srh`
--

CREATE TABLE `srh` (
  `c_no` int(11) NOT NULL,
  `player_name` varchar(255) NOT NULL,
  `age` varchar(255) NOT NULL,
  `matches_played` varchar(255) NOT NULL,
  `highest_figures` varchar(255) NOT NULL,
  `acheivements` varchar(500) NOT NULL,
  `images` varchar(255) NOT NULL,
  `player_role` varchar(255) NOT NULL,
  `c_status` int(11) NOT NULL DEFAULT 1,
  `C_D_T` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `srh`
--

INSERT INTO `srh` (`c_no`, `player_name`, `age`, `matches_played`, `highest_figures`, `acheivements`, `images`, `player_role`, `c_status`, `C_D_T`) VALUES
(1, 'Abhishek Sharma', '23', '56', '87 (not out)', 'Emerging Player of the Year', 'IPL\\SRH\\abhishek.webp', 'All-Rounder', 1, '2024-11-27 17:20:53'),
(2, 'Travis Head', '29', '42', '92 (not out)', 'Consistent ODI Performer', 'IPL\\SRH\\head.webp', 'Batsman', 1, '2024-11-27 17:21:03'),
(3, 'Heinrich Klaasen', '32', '50', '112 (not out)', 'Match-Winning Knocks', 'IPL\\SRH\\klassen.webp', 'Wicketkeeper-Batsman', 1, '2024-11-27 17:21:13'),
(4, 'Ishan Kishan', '25', '67', '99', 'Fastest Double Hundred in ODIs', 'IPL\\SRH\\ishan.webp', 'Wicketkeeper-Batsman', 1, '2024-11-27 17:21:28'),
(5, 'Nitish Kumar Reddy', '20', '14', '56 (not out)', 'Promising Young Talent', 'IPL\\SRH\\nitish.webp', 'All-Rounder', 1, '2024-11-27 17:21:36'),
(6, 'Mohammed Shami', '33', '88', '5/42', 'Best Bowler Award', 'IPL\\SRH\\shami.webp', 'Bowler', 1, '2024-11-27 17:21:44'),
(7, 'Harshal Patel', '32', '75', '5/27', 'Purple Cap Holder', 'IPL\\SRH\\harshal.webp', 'Bowler', 1, '2024-11-27 17:21:52'),
(8, 'Pat Cummins', '30', '75', '4/34', 'World Test Championship Winner', 'IPL\\SRH\\cummins.webp', 'Bowler', 1, '2024-11-27 17:22:00'),
(9, 'Jaydev Unadkat', '32', '68', '5/25', 'Ranji Trophy Champion', 'IPL\\SRH\\unadkat.webp', 'Bowler', 1, '2024-11-27 17:22:07'),
(10, 'Rahul Chahar', '24', '49', '4/27', 'IPL Emerging Bowler', 'IPL\\SRH\\rahul.webp', 'Spinner', 1, '2024-11-27 17:22:15'),
(11, 'Adam Zampa', '31', '72', '6/19', 'Top T20 Bowler', 'IPL\\SRH\\zampa.webp', 'Spinner', 1, '2024-11-27 17:22:25');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `csk`
--
ALTER TABLE `csk`
  ADD PRIMARY KEY (`c_no`);

--
-- Indexes for table `dc`
--
ALTER TABLE `dc`
  ADD PRIMARY KEY (`c_no`);

--
-- Indexes for table `gt`
--
ALTER TABLE `gt`
  ADD PRIMARY KEY (`c_no`);

--
-- Indexes for table `kings`
--
ALTER TABLE `kings`
  ADD PRIMARY KEY (`c_no`);

--
-- Indexes for table `login`
--
ALTER TABLE `login`
  ADD PRIMARY KEY (`l_id`);

--
-- Indexes for table `lsg`
--
ALTER TABLE `lsg`
  ADD PRIMARY KEY (`c_no`);

--
-- Indexes for table `mi`
--
ALTER TABLE `mi`
  ADD PRIMARY KEY (`c_no`);

--
-- Indexes for table `rcb`
--
ALTER TABLE `rcb`
  ADD PRIMARY KEY (`c_no`);

--
-- Indexes for table `srh`
--
ALTER TABLE `srh`
  ADD PRIMARY KEY (`c_no`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `csk`
--
ALTER TABLE `csk`
  MODIFY `c_no` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `dc`
--
ALTER TABLE `dc`
  MODIFY `c_no` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `gt`
--
ALTER TABLE `gt`
  MODIFY `c_no` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `kings`
--
ALTER TABLE `kings`
  MODIFY `c_no` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `login`
--
ALTER TABLE `login`
  MODIFY `l_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `lsg`
--
ALTER TABLE `lsg`
  MODIFY `c_no` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `mi`
--
ALTER TABLE `mi`
  MODIFY `c_no` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `rcb`
--
ALTER TABLE `rcb`
  MODIFY `c_no` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `srh`
--
ALTER TABLE `srh`
  MODIFY `c_no` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
