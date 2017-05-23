-- --------------------------------------------------------
-- Host:                         localhost
-- Server version:               10.2.3-MariaDB-log - mariadb.org binary distribution
-- Server OS:                    Win32
-- HeidiSQL Version:             9.4.0.5125
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;

-- Dumping structure for table podcast.podcasts
CREATE TABLE IF NOT EXISTS `podcasts` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `title` varchar(100) NOT NULL,
  `description` text DEFAULT NULL,
  `file_mp3` varchar(150) NOT NULL,
  `file_ogg` varchar(150) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp(),
  PRIMARY KEY (`id`),
  UNIQUE KEY `title` (`title`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

-- Dumping data for table podcast.podcasts: ~0 rows (approximately)
DELETE FROM `podcasts`;
/*!40000 ALTER TABLE `podcasts` DISABLE KEYS */;
INSERT INTO `podcasts` (`id`, `title`, `description`, `file_mp3`, `file_ogg`, `created_at`, `updated_at`) VALUES
	(1, 'Ae dil hai Mushkil', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Asperiores eius, quae quas nisi numquam ratione nostrum a necessitatibus voluptatibus. Dolor.', 'http://podcastapi.dev:8080/songs/1.mp3', 'http://podcastapi.dev:8080/songs/1.ogg', '2017-05-23 11:39:00', '2017-05-23 17:26:04'),
	(2, 'The Breakup Song', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Asperiores eius, quae quas nisi numquam ratione nostrum a necessitatibus voluptatibus. Dolor.', 'http://podcastapi.dev:8080/songs/2.mp3', 'http://podcastapi.dev:8080/songs/2.ogg', '2017-05-23 14:40:53', '2017-05-23 17:26:14'),
	(3, 'Gerua', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Asperiores eius, quae quas nisi numquam ratione nostrum a necessitatibus voluptatibus. Dolor.', 'http://podcastapi.dev:8080/songs/3.mp3', 'http://podcastapi.dev:8080/songs/3.ogg', '2017-05-23 16:41:19', '2017-05-23 17:26:19');
/*!40000 ALTER TABLE `podcasts` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
