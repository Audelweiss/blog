-- phpMyAdmin SQL Dump
-- version 4.1.14
-- http://www.phpmyadmin.net
--
-- Client :  127.0.0.1
-- Généré le :  Dim 26 Juin 2016 à 21:38
-- Version du serveur :  5.6.17
-- Version de PHP :  5.5.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Base de données :  `bloglaravel`
--

-- --------------------------------------------------------

--
-- Structure de la table `migrations`
--

CREATE TABLE IF NOT EXISTS `migrations` (
  `migration` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Contenu de la table `migrations`
--

INSERT INTO `migrations` (`migration`, `batch`) VALUES
('2014_10_12_000000_create_users_table', 1),
('2014_10_12_100000_create_password_resets_table', 1),
('2016_06_26_171518_create_posts_table', 1);

-- --------------------------------------------------------

--
-- Structure de la table `password_resets`
--

CREATE TABLE IF NOT EXISTS `password_resets` (
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL,
  KEY `password_resets_email_index` (`email`),
  KEY `password_resets_token_index` (`token`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `posts`
--

CREATE TABLE IF NOT EXISTS `posts` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `slug` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `content` text COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `published_at` timestamp NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `posts_slug_unique` (`slug`),
  KEY `posts_published_at_index` (`published_at`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=21 ;

--
-- Contenu de la table `posts`
--

INSERT INTO `posts` (`id`, `slug`, `title`, `content`, `created_at`, `updated_at`, `published_at`) VALUES
(1, 'quasi-nihil-voluptas-ex-ut-voluptatem-numquam-vel-ducimus', 'Quasi nihil voluptas ex ut voluptatem numquam vel ducimus.', 'Sit beatae soluta iste qui non recusandae quas et. Atque odio expedita magnam corrupti. Quod eos et ut ipsum et.\n\nDebitis est repellat ipsam quia sequi quo. Alias labore est alias culpa vero dolor dolores est. Tempora qui cumque in et illo voluptatem cum. Nam dolorum occaecati voluptates pariatur assumenda.\n\nDistinctio voluptatem quibusdam deleniti quis dolore est modi. Molestias earum suscipit qui veritatis. Modi voluptatem sunt unde cupiditate voluptas earum.', '2016-06-26 15:17:45', '2016-06-26 15:17:45', '2016-06-05 06:18:59'),
(2, 'sed-nulla-provident-rerum-velit-rerum-qui-eius-numquam-nihil-quia', 'Sed nulla provident rerum velit rerum qui eius numquam nihil quia.', 'Qui quis optio ut qui. Et alias veniam tempore modi sunt. Laboriosam vitae sit velit possimus fuga consectetur.\n\nA ipsam porro sit ipsum. Aliquam molestiae a ipsum sint dolorem distinctio est possimus. Sit a quos molestias repudiandae.\n\nAperiam ut excepturi sint placeat itaque excepturi. Eaque facere non dolor id. Veritatis ea qui et qui nihil.\n\nRerum animi et quo tempora sed fugit. Ullam voluptas deserunt sunt qui excepturi quia officia. Minima nihil quas maxime quia quam.', '2016-06-26 15:17:45', '2016-06-26 15:17:45', '2016-06-28 05:18:05'),
(3, 'ea-ut-autem-rem', 'Ea ut autem rem.', 'Sit ea sit inventore voluptatum quidem aut. Ipsam totam dolores aliquam voluptas corporis rem explicabo. Minus nemo doloremque est eos in neque sunt. Aut itaque aspernatur consectetur excepturi dolorum quia iusto commodi. Nostrum impedit quas quos architecto qui incidunt aut molestiae.\n\nNisi quasi sint ut ut. Sint quae nam magni et officiis omnis quis dicta. Aliquid ut consectetur saepe eum et.\n\nConsequatur consectetur facere adipisci sequi perspiciatis molestiae suscipit. Suscipit iste nesciunt est blanditiis. Hic maiores quidem sint veniam. Quia dolorem quaerat unde eos non corporis sed.\n\nDolorem quidem iusto quaerat explicabo. Hic adipisci ad ut facere exercitationem labore. Similique quae harum quod beatae totam et dolorum. Amet velit quis dolorem aut. Quisquam vitae ab dolor consequuntur sapiente repudiandae.', '2016-06-26 15:17:45', '2016-06-26 15:17:45', '2016-05-28 17:22:33'),
(4, 'commodi-sit-porro-rerum-quia-eius', 'Commodi sit porro rerum quia eius.', 'Ipsam necessitatibus labore ipsa. Qui tempora consequatur inventore explicabo minus. Id ut accusantium sed voluptatem quis assumenda et. Quia dolor provident molestiae aspernatur quia voluptatum sed.\n\nSequi id ullam repudiandae voluptate consequatur porro est. Tenetur voluptatibus quibusdam asperiores natus laboriosam voluptatem officiis hic. Sequi voluptates quibusdam veniam minima eligendi commodi. Labore culpa earum sit voluptas sapiente modi.\n\nSint quos quas repudiandae labore. Neque optio aliquam harum dolorum est repudiandae sit delectus. Delectus facere nostrum sed odit molestiae. Adipisci qui a itaque nostrum et fugit.\n\nImpedit quis hic consequatur fugit eum natus ut. Fugit ipsum hic sit voluptatem alias occaecati aut. Possimus sed est voluptatem eligendi debitis doloribus autem. Quod minus quis quo.\n\nAutem repudiandae numquam dolorem. Iste culpa beatae ullam vitae molestiae. Nam officiis vel velit nam quae repellat.\n\nIpsum facilis quis accusamus et vero maxime placeat. Dolor distinctio distinctio cum debitis quia praesentium. Soluta ducimus incidunt suscipit repellat aperiam occaecati molestiae.', '2016-06-26 15:17:45', '2016-06-26 15:17:45', '2016-06-16 16:58:25'),
(5, 'natus-et-nobis', 'Natus et nobis.', 'Fugit sapiente facere et quia. Sint quae aperiam nobis.\n\nQuae sunt dicta rem alias repellendus suscipit. Enim expedita sed dolorem consequatur hic dolorem consectetur. Est ipsa doloribus cum ab saepe. Praesentium qui quod ut omnis.\n\nLibero accusamus laborum magnam tempora. Ab porro ea ut veniam nobis. Ut sequi laborum aperiam corrupti repellat. Quos eaque delectus a perferendis harum neque ut nihil.\n\nEius quo ut maiores laudantium possimus eius aut. Eum magni libero omnis repellendus quis voluptatem. Est exercitationem dolores sint sapiente. Repellat non consequatur quia delectus est odio praesentium. Omnis tenetur sit sit doloremque.', '2016-06-26 15:17:46', '2016-06-26 15:17:46', '2016-06-28 16:36:56'),
(6, 'dolor-laboriosam-suscipit-dolores-inventore-voluptatem', 'Dolor laboriosam suscipit dolores inventore voluptatem.', 'Dolorum et omnis id. Repellat cumque cupiditate eum in ut. Sunt omnis explicabo odio. Corrupti fuga sit natus nemo. Sint quisquam dolorum doloremque consequatur.\n\nMolestias exercitationem rerum voluptatem laboriosam. Repellendus velit dolorem quam labore qui. Corporis non voluptates occaecati aliquid recusandae optio. Et placeat accusamus enim.\n\nEius voluptatem et illo dignissimos sunt. Similique quae non dicta accusamus cupiditate delectus nulla. Qui perspiciatis et libero rerum ad voluptates deserunt. Quis aliquid architecto iusto earum.\n\nCulpa provident sequi dolor non necessitatibus qui odio. Quisquam nostrum earum et vitae omnis. Vel molestiae culpa eum id delectus itaque.\n\nAspernatur minus amet voluptatem in ut voluptatem. Est ratione est odit expedita nihil qui unde debitis.', '2016-06-26 15:17:46', '2016-06-26 15:17:46', '2016-06-12 18:43:43'),
(7, 'et-adipisci-maiores-ipsam-ducimus-quas-iste-sequi-mollitia-illo-dolore-iure-quas', 'Et adipisci maiores ipsam ducimus quas iste sequi mollitia illo dolore iure quas.', 'Similique dolore corporis explicabo a. Suscipit rerum sit dolore nulla. Ullam ipsum aut eos quis est nesciunt eligendi.\n\nPossimus ea soluta incidunt dolores beatae. Non harum vel aut sint quidem ipsum quos.\n\nQuas qui quia odit in ab facilis fugit. Voluptatem qui in nesciunt molestiae. Expedita recusandae alias eos in quas iusto et. Cumque culpa vitae et et. Eius ut impedit qui eum mollitia consequatur.', '2016-06-26 15:17:46', '2016-06-26 15:17:46', '2016-06-15 21:12:52'),
(8, 'repellat-laborum-aut-consequatur', 'Repellat laborum aut consequatur.', 'Repellat a velit quas exercitationem itaque. Repudiandae fugit rerum dolore vel ab iusto esse. Nihil assumenda ut numquam quas non illo reiciendis. Provident natus amet corporis voluptas quos et.\n\nAut voluptates perspiciatis et est dignissimos. Inventore voluptatibus magnam aut magni rerum quia.\n\nAccusantium deleniti necessitatibus facilis voluptatum voluptatibus cupiditate. Eos fugit quia recusandae facere id. Sint dolore quis atque ea maiores accusamus commodi ut.\n\nVoluptatem quo libero quasi temporibus architecto. Autem cum laboriosam adipisci sit. Maiores maiores deleniti sequi. Nostrum cumque quia omnis et iste quia laborum.\n\nArchitecto aliquam non velit nam. Est id mollitia quod nisi. Voluptas natus tenetur ut qui repellendus praesentium. Ullam nobis consequatur fugit distinctio iste.\n\nPlaceat culpa accusamus debitis sed id voluptatem omnis. Quia illo aut voluptates natus. Molestiae dolor fugiat molestias ut et aspernatur qui iusto. Quis voluptatem pariatur facilis ipsa. Odit aut accusantium voluptas quia ea omnis et ut.', '2016-06-26 15:17:46', '2016-06-26 15:17:46', '2016-06-21 04:46:07'),
(9, 'error-quia-aut', 'Error quia aut.', 'Dolor voluptatem nihil ducimus qui consequatur atque eius. Nemo facere eligendi voluptatem ipsum et laudantium. Quia id veritatis sit.\n\nNeque repellendus alias dolore. Ut recusandae id quia id ut aut. Dolor excepturi voluptas a dolor.\n\nRerum magni eveniet autem tempore ut enim non. Accusantium natus aliquam recusandae ut neque quia dolor.', '2016-06-26 15:17:46', '2016-06-26 15:17:46', '2016-06-17 15:43:29'),
(10, 'repellendus-sed-nam-repellat', 'Repellendus sed nam repellat.', 'Ut asperiores adipisci culpa molestiae nesciunt. Nihil sint nostrum dignissimos vitae odio repudiandae animi. Rerum sunt fuga beatae ut dicta qui ut. Enim quibusdam iure aut sed ipsum.\n\nArchitecto excepturi excepturi adipisci vel corrupti qui et. Sit necessitatibus nobis non alias maxime repellat illum. Neque consequatur sunt ut et ipsum.\n\nSoluta dolorum tenetur rem et exercitationem impedit maxime. Quia ab ut temporibus sequi doloribus et. Itaque quae delectus voluptatibus rerum explicabo voluptates perferendis. Maiores exercitationem explicabo sunt alias sed excepturi voluptatum.\n\nArchitecto minima sint ut asperiores quas aut laboriosam ut. Maxime nesciunt impedit sapiente natus sint quia cumque sapiente. Quia sed totam dolore officiis. Qui qui voluptatem ut omnis consequatur cupiditate. Impedit quia aut qui ratione consequuntur rem.\n\nDelectus quasi impedit vel sunt explicabo nobis. Numquam nesciunt voluptas omnis ipsa rem. Eius rerum tenetur soluta illum explicabo. Sed voluptates non non.\n\nCulpa quia veritatis voluptatem possimus dolores et id. Nobis vel at voluptas cupiditate. Non aut id qui sit.', '2016-06-26 15:17:46', '2016-06-26 15:17:46', '2016-06-26 04:46:31'),
(11, 'et-ex-totam-maiores-recusandae', 'Et ex totam maiores recusandae.', 'Recusandae architecto ut facere placeat labore. Ullam rerum illo perspiciatis praesentium neque. Excepturi quos ea quia sit enim qui a impedit. Id in perspiciatis culpa consectetur.\n\nExplicabo dicta magni fugit sit eos. Tenetur pariatur quas dolores sit excepturi libero. Est vel et sunt vel amet magni.\n\nReiciendis ex non nostrum aut aut sed. Voluptatem eaque maiores perspiciatis aliquam a dignissimos in. Quia ipsa et est nemo aspernatur alias autem eligendi. Commodi laboriosam reprehenderit repellendus fugiat quam nemo.', '2016-06-26 15:17:46', '2016-06-26 15:17:46', '2016-06-17 15:39:13'),
(12, 'consequatur-voluptas-iure-eum-ullam-quis-quo', 'Consequatur voluptas iure eum ullam quis quo.', 'Impedit sequi qui voluptas aut facere excepturi facilis. Repudiandae dolores vel et qui voluptatum voluptas numquam incidunt. Ut nostrum qui incidunt eos. Omnis maxime amet magnam est eaque et.\n\nMolestias esse ab odio quia. Repellendus quos sit aperiam quia.\n\nPerspiciatis error voluptatem id inventore. Blanditiis quis voluptatem est culpa quis animi. Provident quo rerum et ut pariatur ducimus nemo. Saepe quia consectetur deserunt dolor ipsum.\n\nSit et voluptatem quos placeat similique. Pariatur aut culpa dolorem. Tempora necessitatibus ut similique praesentium harum voluptatem odio. Molestiae corporis odit ipsum ut voluptate quisquam illo.\n\nRerum ut qui incidunt. Deleniti quidem aut debitis et nemo minima. Qui fugiat eum quia est quibusdam magni.\n\nVitae sed atque ea rem minima et. Corrupti dicta ut quas aut quas ut et. Id accusamus quidem et velit voluptas dolores eveniet.', '2016-06-26 15:17:46', '2016-06-26 15:17:46', '2016-05-27 21:29:15'),
(13, 'sapiente-fugit-ut-enim-minima-excepturi-dicta-et', 'Sapiente fugit ut enim minima excepturi dicta et.', 'Aut ut adipisci culpa quis ea. Consequuntur consequatur ut officia aut dolorem possimus sint. Aut autem possimus nemo incidunt ut cupiditate. Quos pariatur voluptate veniam quia ipsam voluptas. Ut nesciunt occaecati non non soluta earum labore.\n\nRepellendus itaque non amet et quidem harum dolorum. Sit fugiat quaerat iure officiis libero. Quo voluptas aliquid non inventore est incidunt.\n\nLabore modi ipsam repudiandae alias itaque sunt. Quia et voluptate non fuga. Ab maxime velit aut et facere autem. Quia dolorem sunt sit tempore.\n\nEveniet expedita consequatur non iste sit maiores. Autem quia ut nobis. Dolor consequatur distinctio maiores.', '2016-06-26 15:17:46', '2016-06-26 15:17:46', '2016-06-07 07:28:12'),
(14, 'qui-et-eveniet-facere-necessitatibus-magnam-tempore-deleniti', 'Qui et eveniet facere necessitatibus magnam tempore deleniti.', 'Dolor adipisci ipsam iste ullam adipisci. Placeat quae amet minus nesciunt quia repudiandae et ipsa. Porro qui deserunt voluptatum nihil.\n\nEst sint fugiat reprehenderit est eum. Perferendis aut sed voluptas molestiae et est blanditiis. Non libero autem beatae minus. Porro necessitatibus eaque voluptate earum sed.\n\nTemporibus numquam inventore quibusdam assumenda. Autem sunt maxime earum. Rerum suscipit sit molestias consequatur sunt animi deleniti tempora. Velit voluptates est ut impedit recusandae quae.\n\nEt sequi nam eum blanditiis omnis rem recusandae. Perferendis odit corrupti omnis. Ut sunt sunt harum tenetur omnis odit.\n\nCommodi est voluptates quis necessitatibus quod rerum ab. Dolorem dolorem vel iure quia minima qui. Illo nihil vero corporis et sed occaecati atque at. Ut est ut est repellendus non itaque.\n\nVoluptatum repellendus excepturi numquam modi laudantium ab quia. Qui velit harum eius architecto quia qui quia quis. Fuga rem eos eius facilis tempore magnam rerum. Molestias est reprehenderit maiores qui recusandae ut nostrum.', '2016-06-26 15:17:46', '2016-06-26 15:17:46', '2016-06-26 18:19:03'),
(15, 'eveniet-voluptates-et-ut-doloremque-quibusdam-est-dolor', 'Eveniet voluptates et ut doloremque quibusdam est dolor.', 'Doloremque ipsam porro et aut repudiandae et. Eligendi reprehenderit in mollitia ut.\n\nEum est dolores et deserunt. Quia facilis eum est ut non. Laborum nisi enim libero quia quia sit et. Voluptas illum autem sit.\n\nQui tenetur nihil molestias. Ratione dolore placeat quia quaerat placeat perferendis ratione. Id ea qui perspiciatis dicta est ea. Ea qui deleniti sit voluptatem.', '2016-06-26 15:17:46', '2016-06-26 15:17:46', '2016-06-02 20:21:22'),
(16, 'odit-velit-quas-consequatur-adipisci-laboriosam-perferendis-perspiciatis-qui-aut-omnis-quo-praesentium-voluptatum', 'Odit velit quas consequatur adipisci laboriosam perferendis perspiciatis qui aut omnis quo praesentium voluptatum.', 'Est quae officiis sequi. Earum quisquam dolorem aperiam consequuntur commodi iste laborum. Placeat omnis consequatur aut quis qui eum.\n\nIusto soluta et animi id molestiae. Nostrum ullam perspiciatis corrupti eius iusto est eius ducimus.\n\nQuisquam perspiciatis maxime ut iste. Fugiat ducimus ad repellat occaecati iste magni. Impedit qui quo ea. Iusto deserunt explicabo aut consequuntur est.\n\nEt aliquid itaque et. Amet veritatis accusantium nisi illo placeat rerum et. Possimus numquam et aspernatur repudiandae exercitationem alias. Non ut labore temporibus ab in et.\n\nPraesentium inventore architecto rerum quia est ea tempore fuga. Impedit aspernatur voluptatem animi commodi suscipit tempore. Itaque voluptatum perferendis dolores non ducimus.\n\nVel impedit nobis magnam consequuntur. Officia eum esse perspiciatis corporis velit qui adipisci. Nemo quas laboriosam maxime. Optio vel corporis error dolores.', '2016-06-26 15:17:46', '2016-06-26 15:17:46', '2016-06-19 04:52:00'),
(17, 'vero-rerum-aut-deleniti-rem-qui-magni-id-facilis-voluptatibus-velit', 'Vero rerum aut deleniti rem qui magni id facilis voluptatibus velit.', 'Quidem dignissimos ab ipsam facilis. Ut libero temporibus nesciunt ut ut nostrum. Nostrum iste illum voluptatum sed deserunt fuga rem. Sit consequuntur officia dignissimos incidunt aut iusto itaque expedita.\n\nDignissimos accusantium numquam perspiciatis qui et nihil. Iure soluta vero in ut. At tempore corrupti praesentium minus sit. Consequatur rerum sed illum similique tempore autem non.\n\nQuo animi eos consectetur sint sed aliquam quisquam. Rerum eum voluptate suscipit a unde nam dolores animi. Inventore libero voluptas occaecati in.\n\nAut beatae in qui omnis architecto esse repellat vitae. Rerum beatae aut a quia et sed. Sed quaerat explicabo assumenda esse eos sed. At quia officia ullam similique quo veniam.', '2016-06-26 15:17:46', '2016-06-26 15:17:46', '2016-06-21 15:19:37'),
(18, 'sed-quasi-consectetur-ut-architecto', 'Sed quasi consectetur ut architecto.', 'Eum autem optio dolorem delectus ut quis quasi voluptate. Dicta est culpa sunt dolorem dicta maiores. Cumque similique dolores voluptatem est maxime quidem.\n\nPossimus pariatur laudantium voluptate. Consequatur impedit quos quas sint illo. Corrupti reiciendis qui hic non delectus quia incidunt. Esse dignissimos est est quis.\n\nRatione totam at odit corporis quisquam. Magnam temporibus ut sunt error nihil ab. Sint hic itaque modi quidem fuga et. Quos ipsa est iure expedita consequatur repudiandae.\n\nSit illum dolor illum nam ullam fugiat placeat consequatur. Tempora blanditiis rerum id debitis iusto odit magnam voluptatem. Accusantium et accusamus alias id repellat voluptas. Dolorem aut porro consequuntur rerum.', '2016-06-26 15:17:46', '2016-06-26 15:17:46', '2016-06-07 16:53:18'),
(19, 'eos-neque-neque-sunt-ipsam', 'Eos neque neque sunt ipsam.', 'Doloribus corrupti delectus in. Cum autem officia assumenda qui. A est et repellat voluptatibus. Incidunt unde neque minus omnis qui.\n\nNumquam tempora rerum reiciendis libero eum atque officiis. Eum eius velit ut vero. Perferendis facilis optio soluta id dolorem qui error et.\n\nPraesentium aspernatur rerum tempora voluptas fugiat illo. Voluptates quaerat est qui quisquam. Voluptates architecto necessitatibus ratione cum quasi non.\n\nCulpa doloremque qui et at facere enim voluptates. Non sint aut autem consequuntur facilis laborum reprehenderit. Fuga quidem et aut voluptatem exercitationem.\n\nPariatur eaque voluptas voluptas cupiditate ut. Qui vel maxime veritatis omnis. Ipsa voluptas commodi sed reiciendis non voluptatum. Inventore excepturi blanditiis nemo est perspiciatis id. Laborum eum sapiente rerum voluptas consequatur.\n\nAperiam id voluptas dolorum accusamus et molestias ut. Sed est aperiam laudantium sequi officia soluta impedit. Quis quibusdam itaque dicta omnis ducimus et. Hic corrupti est est blanditiis.', '2016-06-26 15:17:46', '2016-06-26 15:17:46', '2016-05-30 09:38:29'),
(20, 'ut-nam-excepturi-incidunt-voluptatem-rerum', 'Ut nam excepturi incidunt voluptatem rerum.', 'Mollitia rerum possimus esse sunt et incidunt est consequatur. Incidunt aut et maiores qui quia omnis. Atque aut maxime natus laudantium quis tenetur nihil ab. Maxime ratione hic et aut asperiores dolores est vitae. Cupiditate voluptatem nihil minima quia sit aliquid repellat.\n\nAperiam quisquam reprehenderit rem. Debitis reiciendis dolore enim tempore nesciunt tempora. Quia fugiat reiciendis explicabo. Voluptas molestiae asperiores quia molestiae officiis veniam reprehenderit.\n\nIncidunt repellendus vero commodi voluptatibus. Modi ut et inventore. Omnis est et rerum voluptatum rem. Amet voluptatem quod sapiente.', '2016-06-26 15:17:46', '2016-06-26 15:17:46', '2016-06-06 22:54:51');

-- --------------------------------------------------------

--
-- Structure de la table `users`
--

CREATE TABLE IF NOT EXISTS `users` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=2 ;

--
-- Contenu de la table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Fifal', 'fif.developpement@gmail.com', '$2y$10$4Pn1NuYzXhH9E2eHA9QpgOgwPBaYlf9sAwcWH58XqV9j8Pmy1QlXy', 'DFiKMIheHKFzUmYV2pJ6oZc7LpuvYOWSZKsQ0Icxx4AsI7HHhtQVEOsZiE1n', '2016-06-26 16:23:39', '2016-06-26 16:27:08');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
