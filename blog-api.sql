-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 01, 2024 at 09:14 PM
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
-- Database: `blog-api`
--

-- --------------------------------------------------------

--
-- Table structure for table `cache`
--

CREATE TABLE `cache` (
  `key` varchar(255) NOT NULL,
  `value` mediumtext NOT NULL,
  `expiration` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `cache_locks`
--

CREATE TABLE `cache_locks` (
  `key` varchar(255) NOT NULL,
  `owner` varchar(255) NOT NULL,
  `expiration` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `comments`
--

CREATE TABLE `comments` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `post_id` bigint(20) UNSIGNED NOT NULL,
  `content` text NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `comments`
--

INSERT INTO `comments` (`id`, `post_id`, `content`, `created_at`, `updated_at`) VALUES
(1, 11, 'In sapiente voluptatum perspiciatis ut beatae tenetur.', '2024-12-01 19:12:25', '2024-12-01 19:12:25'),
(2, 12, 'Esse tenetur in blanditiis autem velit eum.', '2024-12-01 19:12:25', '2024-12-01 19:12:25'),
(3, 13, 'Sint voluptatum deserunt aut sed.', '2024-12-01 19:12:25', '2024-12-01 19:12:25'),
(4, 14, 'Voluptatum eligendi blanditiis dignissimos facilis voluptate.', '2024-12-01 19:12:25', '2024-12-01 19:12:25'),
(5, 15, 'Quasi soluta odit ab blanditiis quia quibusdam numquam.', '2024-12-01 19:12:25', '2024-12-01 19:12:25'),
(6, 16, 'Voluptatibus aut eum fugiat nisi suscipit minima id molestiae.', '2024-12-01 19:12:25', '2024-12-01 19:12:25'),
(7, 17, 'Fugiat voluptate rerum voluptas aut et porro.', '2024-12-01 19:12:25', '2024-12-01 19:12:25'),
(8, 18, 'Ipsam occaecati totam cumque cupiditate et.', '2024-12-01 19:12:25', '2024-12-01 19:12:25'),
(9, 19, 'Molestiae natus et iste iste.', '2024-12-01 19:12:25', '2024-12-01 19:12:25'),
(10, 20, 'Voluptas et libero vel qui et fugiat molestias.', '2024-12-01 19:12:25', '2024-12-01 19:12:25'),
(11, 21, 'Vitae perferendis minima voluptas rem.', '2024-12-01 19:12:25', '2024-12-01 19:12:25'),
(12, 22, 'Qui optio unde odio sequi excepturi.', '2024-12-01 19:12:25', '2024-12-01 19:12:25'),
(13, 23, 'Ullam odio sed eligendi quo nihil.', '2024-12-01 19:12:25', '2024-12-01 19:12:25'),
(14, 24, 'Recusandae aspernatur labore non ipsa voluptate ipsam.', '2024-12-01 19:12:25', '2024-12-01 19:12:25'),
(15, 25, 'Quidem atque in aut ab.', '2024-12-01 19:12:25', '2024-12-01 19:12:25'),
(16, 26, 'Ipsa totam a error deserunt rerum mollitia quaerat sed.', '2024-12-01 19:12:25', '2024-12-01 19:12:25'),
(17, 27, 'Dolor quam sunt nesciunt cupiditate laudantium fugiat.', '2024-12-01 19:12:25', '2024-12-01 19:12:25'),
(18, 28, 'Nisi voluptatem accusantium sequi quam fugiat ut est est.', '2024-12-01 19:12:25', '2024-12-01 19:12:25'),
(19, 29, 'Eaque quidem ea totam vero.', '2024-12-01 19:12:25', '2024-12-01 19:12:25'),
(20, 30, 'Fugit rerum quia non et culpa accusamus.', '2024-12-01 19:12:25', '2024-12-01 19:12:25');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) NOT NULL,
  `connection` text NOT NULL,
  `queue` text NOT NULL,
  `payload` longtext NOT NULL,
  `exception` longtext NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `jobs`
--

CREATE TABLE `jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `queue` varchar(255) NOT NULL,
  `payload` longtext NOT NULL,
  `attempts` tinyint(3) UNSIGNED NOT NULL,
  `reserved_at` int(10) UNSIGNED DEFAULT NULL,
  `available_at` int(10) UNSIGNED NOT NULL,
  `created_at` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `job_batches`
--

CREATE TABLE `job_batches` (
  `id` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `total_jobs` int(11) NOT NULL,
  `pending_jobs` int(11) NOT NULL,
  `failed_jobs` int(11) NOT NULL,
  `failed_job_ids` longtext NOT NULL,
  `options` mediumtext DEFAULT NULL,
  `cancelled_at` int(11) DEFAULT NULL,
  `created_at` int(11) NOT NULL,
  `finished_at` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '0001_01_01_000000_create_users_table', 1),
(2, '0001_01_01_000001_create_cache_table', 1),
(3, '0001_01_01_000002_create_jobs_table', 1),
(4, '2024_11_30_060818_create_posts_table', 1),
(5, '2024_11_30_060819_create_comments_table', 1),
(6, '2024_11_30_063129_create_personal_access_tokens_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `token` varchar(64) NOT NULL,
  `abilities` text DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) NOT NULL,
  `content` text NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`id`, `title`, `content`, `user_id`, `created_at`, `updated_at`) VALUES
(1, 'Similique voluptatibus quia iusto alias.', 'Est non quos et illum quos earum accusantium. Tempore aspernatur voluptatibus doloremque accusamus. Voluptatum et soluta impedit expedita doloribus earum molestias.', 1, '2024-12-01 19:12:25', '2024-12-01 19:12:25'),
(2, 'Nobis laboriosam aliquam voluptas distinctio in nesciunt mollitia.', 'Voluptatem cumque autem inventore culpa facilis qui. Id vero distinctio ut dicta. Sed voluptatem eum et voluptatem cumque et.', 1, '2024-12-01 19:12:25', '2024-12-01 19:12:25'),
(3, 'Aut quae aspernatur provident velit.', 'Rem expedita qui ut sit. Similique cum perspiciatis numquam occaecati. Consequatur ex ipsum eos repellendus voluptatem.', 1, '2024-12-01 19:12:25', '2024-12-01 19:12:25'),
(4, 'Incidunt sunt sint quo porro quidem.', 'Non sit architecto asperiores. Aut ullam qui consectetur sed eius nesciunt modi. Nostrum iusto vel et labore est quis. Reprehenderit et tempore mollitia velit voluptas dolore ut.', 1, '2024-12-01 19:12:25', '2024-12-01 19:12:25'),
(5, 'Aut eius excepturi est mollitia amet.', 'Natus in sunt voluptatum numquam laborum enim sequi. Doloremque qui eveniet rerum ut. Veniam nemo in cum occaecati distinctio. Enim dolorem eos alias quaerat libero sint non.', 1, '2024-12-01 19:12:25', '2024-12-01 19:12:25'),
(6, 'Harum quidem totam aut aperiam est odio.', 'Neque omnis minus quam voluptate. Sed aliquam delectus debitis rerum. Recusandae ut beatae qui ipsum ea. Incidunt aut cum ea nemo qui dolores velit.', 1, '2024-12-01 19:12:25', '2024-12-01 19:12:25'),
(7, 'Suscipit aspernatur blanditiis et eum et.', 'Sunt distinctio et eos velit sit. Explicabo quia nobis necessitatibus quia dolores. Unde neque fugiat porro ut non quos.', 1, '2024-12-01 19:12:25', '2024-12-01 19:12:25'),
(8, 'Dolores aut aut omnis.', 'Illo consequatur velit maiores. Ex et voluptatem illum omnis nulla. Optio qui recusandae quasi veritatis quia. Voluptatem consectetur dicta et et quis.', 1, '2024-12-01 19:12:25', '2024-12-01 19:12:25'),
(9, 'Perspiciatis nulla tenetur totam et libero tenetur.', 'Molestiae numquam non rerum id et alias amet. Explicabo omnis eos non adipisci esse. Cupiditate fuga odio qui perferendis harum. Incidunt nemo distinctio quia ab.', 1, '2024-12-01 19:12:25', '2024-12-01 19:12:25'),
(10, 'Qui aut dignissimos sapiente doloribus qui est dignissimos.', 'Expedita dolores commodi nulla est. Sunt itaque illo et mollitia consequuntur ut. Autem qui deleniti hic repudiandae nulla.', 1, '2024-12-01 19:12:25', '2024-12-01 19:12:25'),
(11, 'Vero unde eos velit atque dicta nisi.', 'Ab nostrum totam sit aut aut. Sunt ipsam occaecati eaque vel quaerat eaque.', 1, '2024-12-01 19:12:25', '2024-12-01 19:12:25'),
(12, 'Hic commodi officia occaecati minima.', 'Quam sapiente reprehenderit iure porro. Eligendi ipsum exercitationem qui repudiandae minus ut sed. Fuga soluta sint inventore et nam placeat.', 1, '2024-12-01 19:12:25', '2024-12-01 19:12:25'),
(13, 'Officia optio sapiente et placeat.', 'Consectetur a numquam nobis officia similique repellat asperiores. Modi culpa qui in numquam error sed assumenda. Repellendus cum perferendis et temporibus in.', 1, '2024-12-01 19:12:25', '2024-12-01 19:12:25'),
(14, 'Rerum aut est vel et fugiat.', 'Enim ullam in reprehenderit officiis nobis sit quod. Qui quas ducimus vitae officiis non. Aut earum non illum nulla consequuntur quis qui.', 1, '2024-12-01 19:12:25', '2024-12-01 19:12:25'),
(15, 'Eum sint est asperiores similique et quia atque.', 'Sequi est expedita rem necessitatibus. Accusantium et adipisci dolor eos deleniti sint. Tempore esse autem non et nesciunt. Quaerat eaque eum necessitatibus earum eveniet deleniti. Dolorem ipsam repellendus ab non.', 1, '2024-12-01 19:12:25', '2024-12-01 19:12:25'),
(16, 'Eius vel nisi culpa sit ipsam qui dolor.', 'Dolor corporis voluptatum hic porro voluptatem ut cupiditate impedit. Pariatur laboriosam esse et et placeat omnis.', 1, '2024-12-01 19:12:25', '2024-12-01 19:12:25'),
(17, 'Recusandae a sit praesentium ipsum quos nobis quis.', 'Qui sed autem ut rerum molestiae minus eius. Accusamus odio consequatur veritatis non.', 1, '2024-12-01 19:12:25', '2024-12-01 19:12:25'),
(18, 'Et similique ut ut exercitationem doloribus.', 'Illo est qui dignissimos quidem. Harum consequatur est necessitatibus et error qui. Incidunt cupiditate incidunt ut pariatur voluptates quae. Sequi et dolorem optio vero aut.', 1, '2024-12-01 19:12:25', '2024-12-01 19:12:25'),
(19, 'Nam et reprehenderit doloremque dolorem autem nihil aliquid enim.', 'Aspernatur laborum quis numquam fuga necessitatibus reprehenderit. Dolorem et ea et tenetur. Rem non temporibus iste veritatis dolorum omnis impedit tempore.', 1, '2024-12-01 19:12:25', '2024-12-01 19:12:25'),
(20, 'Ratione velit molestiae est ut laboriosam voluptas.', 'Quae similique consectetur accusamus et magni excepturi error. Labore dolor quisquam est id facilis. Architecto voluptate id nam ipsum temporibus eius unde.', 1, '2024-12-01 19:12:25', '2024-12-01 19:12:25'),
(21, 'Expedita ullam aut nulla vitae odio.', 'Vel inventore natus nostrum inventore facilis odio ut. Voluptatem et laboriosam quas quidem aut voluptatem et. Vitae nostrum eveniet eos consequuntur saepe.', 1, '2024-12-01 19:12:25', '2024-12-01 19:12:25'),
(22, 'In sit quis maiores optio qui consequuntur aut delectus.', 'Ut at blanditiis dolor qui. Similique qui aut necessitatibus ut facilis. Possimus molestiae sint et beatae iste dolores fugit. Voluptas eum vitae deleniti est. Qui quo facilis dolor dolorem reiciendis.', 1, '2024-12-01 19:12:25', '2024-12-01 19:12:25'),
(23, 'Perferendis iusto sit nihil odio ducimus dolorum.', 'Rerum enim dolore doloremque iste quaerat voluptatem. Quia officiis et est dolor. Corrupti iusto sit omnis rem earum. Corrupti magnam quas iusto est accusantium possimus.', 1, '2024-12-01 19:12:25', '2024-12-01 19:12:25'),
(24, 'Omnis doloremque eum id ut maiores.', 'Nostrum animi sint tempora est accusamus. Quaerat eius est consequuntur enim voluptatem. Perspiciatis dolores et est. Labore sit ipsam esse molestias et.', 1, '2024-12-01 19:12:25', '2024-12-01 19:12:25'),
(25, 'Libero est sint est voluptas.', 'Nihil ea sunt porro impedit nam sed. Non deleniti repudiandae iste reprehenderit magni corporis qui veritatis. Corrupti debitis impedit cupiditate sit.', 1, '2024-12-01 19:12:25', '2024-12-01 19:12:25'),
(26, 'Voluptate possimus quo ipsa cum sed.', 'A quisquam et et vitae labore. Voluptatem est nostrum voluptas est et est quos et. Eos ad voluptates aperiam.', 1, '2024-12-01 19:12:25', '2024-12-01 19:12:25'),
(27, 'Iusto facilis reprehenderit consequatur qui harum eum.', 'Ea est nihil sapiente cum qui repellat. Id voluptatem atque esse et et reiciendis perspiciatis. Explicabo facilis esse enim atque vel.', 1, '2024-12-01 19:12:25', '2024-12-01 19:12:25'),
(28, 'Officiis corporis autem pariatur.', 'Libero maiores excepturi iusto dolor occaecati et. Et eum vel qui voluptatem. Est dolorum laboriosam dolorem ipsam sint.', 1, '2024-12-01 19:12:25', '2024-12-01 19:12:25'),
(29, 'Eius aut iusto incidunt est.', 'Accusantium et in consequatur. Excepturi doloribus similique expedita quaerat ea excepturi. Rem quisquam ea molestiae quae sequi fugit aut. Ea asperiores est saepe rerum repudiandae atque consequatur.', 1, '2024-12-01 19:12:25', '2024-12-01 19:12:25'),
(30, 'Dignissimos doloremque quibusdam ea illum iste.', 'Aut minus repellat voluptatem. Sed in et dignissimos qui beatae. Voluptas necessitatibus accusantium eum ipsum eius soluta voluptatem tempora.', 1, '2024-12-01 19:12:25', '2024-12-01 19:12:25');

-- --------------------------------------------------------

--
-- Table structure for table `sessions`
--

CREATE TABLE `sessions` (
  `id` varchar(255) NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `ip_address` varchar(45) DEFAULT NULL,
  `user_agent` text DEFAULT NULL,
  `payload` longtext NOT NULL,
  `last_activity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Winfield Streich', 'mike21@example.net', '2024-12-01 19:12:25', '$2y$12$pPTCyb/06hE.h1iwwHFhFem5ImCJiQmfxt6FEEiwD6Rivz/i/QxTC', 'KWNv4sHjuB', '2024-12-01 19:12:25', '2024-12-01 19:12:25'),
(2, 'Test User', 'test@example.com', '2024-12-01 19:12:25', '$2y$12$pPTCyb/06hE.h1iwwHFhFem5ImCJiQmfxt6FEEiwD6Rivz/i/QxTC', 'bdGJY2h01w', '2024-12-01 19:12:25', '2024-12-01 19:12:25');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cache`
--
ALTER TABLE `cache`
  ADD PRIMARY KEY (`key`);

--
-- Indexes for table `cache_locks`
--
ALTER TABLE `cache_locks`
  ADD PRIMARY KEY (`key`);

--
-- Indexes for table `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `comments_post_id_foreign` (`post_id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `jobs`
--
ALTER TABLE `jobs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `jobs_queue_index` (`queue`);

--
-- Indexes for table `job_batches`
--
ALTER TABLE `job_batches`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `posts_user_id_foreign` (`user_id`);

--
-- Indexes for table `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sessions_user_id_index` (`user_id`),
  ADD KEY `sessions_last_activity_index` (`last_activity`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `comments`
--
ALTER TABLE `comments`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `jobs`
--
ALTER TABLE `jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `comments`
--
ALTER TABLE `comments`
  ADD CONSTRAINT `comments_post_id_foreign` FOREIGN KEY (`post_id`) REFERENCES `posts` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `posts`
--
ALTER TABLE `posts`
  ADD CONSTRAINT `posts_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
