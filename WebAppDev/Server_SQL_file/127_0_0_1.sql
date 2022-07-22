-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 15, 2020 at 10:33 PM
-- Server version: 10.4.14-MariaDB
-- PHP Version: 7.2.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `s19156605`
--
CREATE DATABASE IF NOT EXISTS `s19156605` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `s19156605`;

-- --------------------------------------------------------

--
-- Table structure for table `answers`
--

CREATE TABLE `answers` (
  `ans_id` int(100) NOT NULL,
  `question_id` int(100) NOT NULL,
  `answer` varchar(1000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `answers`
--

INSERT INTO `answers` (`ans_id`, `question_id`, `answer`) VALUES
(1, 27, 'This is where the answer will be for the question.'),
(2, 29, 'This is the seccond test, answers have been chosen to be manually entered. I hope you are happy with this product');

-- --------------------------------------------------------

--
-- Table structure for table `cart`
--

CREATE TABLE `cart` (
  `game_id` int(100) NOT NULL,
  `title` varchar(40) NOT NULL,
  `game_image` varchar(40) NOT NULL,
  `price` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `games`
--

CREATE TABLE `games` (
  `developer` text NOT NULL,
  `title` varchar(40) NOT NULL,
  `release_date` date NOT NULL,
  `game_image` text NOT NULL,
  `genre` text NOT NULL,
  `summary` varchar(600) NOT NULL,
  `game_id` int(100) NOT NULL,
  `price` int(10) NOT NULL,
  `pc` int(2) NOT NULL,
  `xbox` int(2) NOT NULL,
  `switch` int(2) NOT NULL,
  `playstation` int(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `games`
--

INSERT INTO `games` (`developer`, `title`, `release_date`, `game_image`, `genre`, `summary`, `game_id`, `price`, `pc`, `xbox`, `switch`, `playstation`) VALUES
('Treyarch', 'Call Of Duty Black Ops 3', '2015-11-18', 'COD3.png', 'Action\r\n\r\n', 'Black Ops III takes place in 2065, 40 years after the events of Black Ops II, in a world facing upheaval from climate change and new technologies. Similar to its predecessors, the story follows a group of black ops soldiers. The game\'s campaign is designed to support 4-player cooperative gameplay, allowing for bigger, more open level design and less corridor shooting. As the player character is cybernetically enhanced, players have access to various special activities. The game also features a standalone Zombies campaign mode, and a \"Nightmares\" mode which replaces all enemies as zombies.', 1, 20, 1, 1, 0, 1),
('SIE Santa Monica Studio', 'GOD OF WAR', '2018-04-20', 'GOW.png', 'Adventure\r\n', 'Unlike previous games, which were loosely based on Greek mythology, this installment is rooted in Norse mythology, with the majority of it set in ancient Norway in the realm of Midgard. For the first time in the series, there are two protagonists: Kratos, the former Greek God of War who remains the only playable character, and his young son Atreus. Following the death of Kratos\' second wife and Atreus\' mother, they journey to fulfill her request that her ashes be spread at the highest peak of the nine realms. Kratos keeps his troubled past a secret from Atreus, who is unaware of his divine nat', 2, 11, 0, 0, 0, 1),
('Dontnod Entertainment', ' LIFE IS STRANGE', '2013-10-13', 'LIS.png', 'Adventure', 'The plot focuses on Max Caulfield, an 18-year-old photography student who discovers that she has the ability to rewind time at any moment, leading her every choice to enact the butterfly effect. The player\'s actions will adjust the narrative as it unfolds, and reshape it once allowed to travel back in time. Fetch quests and making environmental changes represent the forms of puzzle solving in addition to using branching choices for conversation.', 3, 12, 1, 1, 0, 1),
('Nintendo EAD', 'SUPER MARIO MAKER', '2016-05-06', 'SMM.png', 'Platform', 'Super Mario Maker is a video game which allows players to create their own levels from the Super Mario series, and then publish those courses to the Internet for other players to experience. Players can base their courses on the gameplay, and visual style of Super Mario Bros., Super Mario Bros. 3, Super Mario World, and New Super Mario Bros. U, which all share the physics of the latter. The gameplay mechanics and enemy behavior varies between the game modes. Some elements are limited to specific game styles while others can be added to game styles that previously did not have them in the origi', 4, 8, 0, 0, 1, 0),
('Studio MDHR', 'CUPHEAD', '2012-10-14', 'CH.png', 'Platform', 'Cuphead features one or two players taking control of animated characters Cuphead and his brother Mugman to fight through several levels, that culminate in boss fights, in order to repay their debt to the devil. The game was praised for its art style and noted for its challenging difficulty. It was both a critical and commercial success, winning several awards and selling over six million copies within three years. ', 5, 13, 1, 1, 1, 1),
('	Telltale Games', 'THE WALKING DEAD', '2012-04-24', 'WD.png', 'Action\r\n', 'The game takes place in the same fictional world as the comic, with events occurring shortly after the onset of the zombie apocalypse in Georgia. However, most of the characters are original to this game, which centers on university professor and convicted criminal Lee Everett, who rescues and subsequently takes care of a young girl named Clementine. Lee becomes a protective figure to her to help reunite her with her parents. Kirkman provided oversight for the game\'s story to ensure it corresponded to the tone of the comic, but allowed Telltale to handle the bulk of the developmental work and ', 6, 13, 1, 1, 1, 1),
('Capcom', 'RESIDENT EVIL 7', '2017-01-24', 'RE.png', 'Horror', 'Resident Evil 7: Biohazard[a] is a survival horror video game developed and published by Capcom, released in January 2017 for Microsoft Windows, PlayStation 4 (also supports PlayStation VR headset), Xbox One and in May 2018 for the Nintendo Switch in Japan. The ninth major installment in the Resident Evil series, Resident Evil 7 diverges from the more action-oriented Resident Evil 5 and Resident Evil 6, returning to the franchise\'s survival horror roots, emphasizing exploration. The player controls Ethan Winters as he searches for his wife in a derelict plantation occupied by an infected famil', 7, 13, 1, 1, 1, 1),
('Monolith Productions', 'MIDDLE-EARTH: SHADOW OF MORDOR', '2014-09-30', 'ME.png', 'Adventure', 'Middle-earth: Shadow of Mordor is an open world action-adventure video game developed by Monolith Productions and published by Warner Bros. Interactive Entertainment. The game was released for Microsoft Windows, PlayStation 4, and Xbox One in September 2014 and PlayStation 3 and Xbox 360 in November 2014. An original non-canon story set in the legendarium created by J. R. R. Tolkien, the game takes place between the events of The Hobbit and The Lord of the Rings film trilogies. The player controls Talion, a Ranger who bonds with the wraith of the Elf Lord Celebrimbor, as the two set out to ave', 8, 14, 1, 1, 0, 1),
('Capcom', 'MONSTER HUNTER: WORLD', '2018-01-26', 'MHW.png', 'Adventure', 'In the game, the player takes the role of a Hunter, tasked to hunt down and either kill or trap monsters that roam in one of several environmental spaces. If successful, the player is rewarded through loot consisting of parts from the monster and other elements that are used to craft weapons and armor, amongst other equipment. The game\'s core loop has the player crafting appropriate gear to be able to hunt down more difficult monsters, which in turn provide parts that lead to more powerful gear. Players may hunt alone or in a group of up to four players via the game\'s online multiplayer.', 9, 24, 1, 1, 0, 1),
('Nintendo EAD', 'ANIMAL CROSSING: NEW LEAF', '2013-06-14', 'ACNL.png', 'Social', 'Animal Crossing: New Leaf[a] is a life simulation video game developed and published by Nintendo for the Nintendo 3DS console. In the game, the human character takes on the role of mayor in a town populated with anthropomorphic animals.[5] As the fourth main title in the Animal Crossing series, it was released in Japan in November 2012, and in North America, Europe and Australia in June 2013. The game received positive reviews from critics.', 10, 24, 0, 0, 1, 0),
('Galactic Cafe', 'THE STANLEY PARABLE', '2011-07-31', 'SP.png', 'Story', 'The Stanley Parable is an interactive drama and walking simulator designed by American developer Davey Wreden. The game was originally released on July 31, 2011 as a free mod for Half-Life 2. Together with William Pugh, Wreden later released a stand-alone remake using the Source engine under the Galactic Cafe studio name. The remake included new story elements and upgraded graphics. It was announced and approved via Steam Greenlight in 2012, and was released on October 17, 2013, for Microsoft Windows. Later updates to the game added support for OS X on December 19, 2013, and for Linux on Septe', 11, 15, 1, 0, 0, 0),
('Nintendo EAD', 'MARIO KART 8', '2017-04-28', 'MK8.png', 'Racing', 'Mario Kart 8[b] is a 2014 kart racing game developed and published by Nintendo for its Wii U home video game console in May 2014. It retains Mario Kart series game mechanics, where players control Mario franchise characters in kart racing, collecting a variety of items to hinder opponents or gain advantages in the race. Mario Kart 8 introduces anti-gravity driving on walls or ceilings, and allows players to bump each another for a short boost. It has single-player and multiplayer modes, including online via the Nintendo Network.', 12, 16, 0, 0, 1, 0),
('Digital Extremes', 'WARFRAME', '2013-11-15', 'WF.png', 'Action', 'In Warframe, players control members of the Tenno, a race of ancient warriors who have awoken from centuries of suspended animation far into Earth\'s future to find themselves at war in the planetary system with different factions. The Tenno use their powered Warframes along with a variety of weapons and abilities to complete missions. While many of the game\'s missions use procedurally-generated levels, newer updates have included large open world areas similar to other massively multiplayer online games as well as some story-specific missions with fixed level design. The game includes elements', 13, 25, 1, 1, 1, 1),
('Kojima Productions', 'METAL GEAR SOLID 5: THE PHANTOM PAIN', '2015-09-01', 'MGS.png', 'Action', 'Metal Gear Solid V: The Phantom Pain is an open world stealth game developed by Kojima Productions and published by Konami. It was released worldwide for Microsoft Windows, PlayStation 3, PlayStation 4, Xbox 360, and Xbox One on September 1, 2015. It is the ninth installment in the Metal Gear series that was directed, written, and designed by Hideo Kojima following Metal Gear Solid V: Ground Zeroes, a stand-alone prologue released the previous year, as well as his final work at Konami.', 14, 20, 1, 1, 0, 1),
('Naughty Dog', 'THE LAST OF US', '2014-06-13', 'TLOU.png\r\n', 'Survival', 'The Last of Us is a 2013 action-adventure game developed by Naughty Dog and published by Sony Computer Entertainment. Players control Joel, a smuggler tasked with escorting a teenage girl, Ellie, across a post-apocalyptic United States. The Last of Us is played from a third-person perspective. Players use firearms and improvised weapons, and can use stealth to defend against hostile humans and cannibalistic creatures infected by a mutated fungus in the genus Cordyceps. In the online multiplayer mode, up to eight players engage in cooperative and competitive gameplay.', 15, 20, 0, 0, 0, 1),
('Kojima Productions', 'DEATH STRANDING', '2019-11-08', 'DS.png', 'Action', 'The game is set in the United States following a cataclysmic event which caused destructive creatures to begin roaming the Earth. Players control Sam Porter Bridges (Norman Reedus), a courier tasked with delivering supplies to isolated colonies and reconnecting them via a wireless communications network. Alongside Reedus, the game features actors Mads Mikkelsen, Léa Seydoux, Margaret Qualley, Troy Baker, Tommie Earl Jenkins, and Lindsay Wagner, in addition to the likenesses of film directors Guillermo del Toro and Nicolas Winding Refn as supporting characters.', 16, 25, 1, 0, 0, 1),
('Bethesda Game Studios', 'THE ELDER SCROLLS 5: SKYRIM', '2011-11-11', 'TES5.png', 'Action', 'The game\'s main story revolves around the player\'s character, the Dragonborn, on their quest to defeat Alduin the World-Eater, a dragon who is prophesied to destroy the world. The game is set 200 years after the events of Oblivion and takes place in Skyrim, the northernmost province of Tamriel. Over the course of the game, the player completes quests and develops the character by improving skills. The game continues the open-world tradition of its predecessors by allowing the player to travel anywhere in the game world at any time, and to ignore or postpone the main storyline indefinitely.', 18, 20, 1, 1, 1, 1),
('Rare', 'SEA OF THIEVES', '2018-03-20', 'SOT.png', 'Adventure', 'The game was first conceptualized in 2014. Rare was inspired by players of PC titles such as Eve Online, DayZ and Rust, who used the tools provided by these games to create their own personal stories. The company explored different settings for the game, such as vampires and dinosaurs, though it eventually settled on the pirate theme, drawing inspirations from films including Pirates of the Caribbean and The Goonies. The game features a progression system that only unlocks cosmetic items as the development team wanted to encourage both casual and experienced players to play together. Compared ', 19, 16, 1, 1, 0, 0),
('Hello Games', 'NO MAN’S SKY', '2016-08-09', 'NMS.png', 'Survival', 'No Man\'s Sky is an exploration real-time strategy survival game developed and published by the English indie studio Hello Games. It was released worldwide for the PlayStation 4 and Microsoft Windows in August 2016, and for Xbox One in July 2018. A upcoming patch will also support for added features of the PlayStation 5 and Xbox Series X and Series S consoles. The game is built around four pillars: exploration, survival, combat, and trading. Players are free to perform within the entirety of a procedurally generated deterministic open world universe, which includes over 18 quintillion planets. ', 20, 15, 1, 1, 0, 1);

-- --------------------------------------------------------

--
-- Table structure for table `game_orders`
--

CREATE TABLE `game_orders` (
  `order_id` int(20) NOT NULL,
  `email` varchar(15) NOT NULL,
  `products` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `game_orders`
--

INSERT INTO `game_orders` (`order_id`, `email`, `products`) VALUES
(15, 'test@email.com', ' LIFE IS STRANGE,WARFRAME,DEATH STRANDING,SUPER MARIO MAKER,THE STANLEY PARABLE,METAL GEAR SOLID 5: ');

-- --------------------------------------------------------

--
-- Table structure for table `questions`
--

CREATE TABLE `questions` (
  `question_id` int(10) NOT NULL,
  `title` varchar(50) NOT NULL,
  `name` text NOT NULL,
  `message` varchar(200) NOT NULL,
  `email` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `questions`
--

INSERT INTO `questions` (`question_id`, `title`, `name`, `message`, `email`) VALUES
(27, 'Call Of Duty Black Ops 3', 'name_person', 'This is where the question will go', 'yurtus@hotmail.com'),
(29, 'THE STANLEY PARABLE', 'test send', 'test email', 'test@email.com'),
(30, 'Call Of Duty Black Ops 3', 'tarkov', 'Where is my game?', 'fredricjones@hotmail.com');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `answers`
--
ALTER TABLE `answers`
  ADD PRIMARY KEY (`ans_id`);

--
-- Indexes for table `games`
--
ALTER TABLE `games`
  ADD PRIMARY KEY (`game_id`);

--
-- Indexes for table `game_orders`
--
ALTER TABLE `game_orders`
  ADD PRIMARY KEY (`order_id`);

--
-- Indexes for table `questions`
--
ALTER TABLE `questions`
  ADD PRIMARY KEY (`question_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `answers`
--
ALTER TABLE `answers`
  MODIFY `ans_id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `games`
--
ALTER TABLE `games`
  MODIFY `game_id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `game_orders`
--
ALTER TABLE `game_orders`
  MODIFY `order_id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `questions`
--
ALTER TABLE `questions`
  MODIFY `question_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
