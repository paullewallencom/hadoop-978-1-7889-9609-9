-- phpMyAdmin SQL Dump
-- version 4.6.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 11, 2017 at 11:37 PM
-- Server version: 5.7.18-log
-- PHP Version: 7.0.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";

--
-- Database: `tweetify`
--

-- --------------------------------------------------------

--
-- Table structure for table `messages`
--

CREATE TABLE `messages` (
  `id` int(10) NOT NULL,
  `user_id` int(10) NOT NULL,
  `body` varchar(255) NOT NULL,
  `image_url` varchar(255) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NULL
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `messages`
--

INSERT INTO `messages` (`id`, `user_id`, `body`, `image_url`, `created_at`, `updated_at`) VALUES
(1, 1, 'Have you ever thought about life in the space?', '', '2016-07-01 01:00:00', '0000-00-00 00:00:00'),
(2, 1, 'Yes, that is why I applied to a job in NASA! ', '', '2016-07-05 01:00:00', '0000-00-00 00:00:00'),
(3, 1, 'Really? This is exciting!', '', '2016-07-12 00:00:00', '0000-00-00 00:00:00'),
(4, 1, 'I have worked a lot for this!', '', '2016-07-12 01:00:00', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) NOT NULL,
  `username` varchar(32) NOT NULL,
  `password` varchar(64) NOT NULL,
  `email` varchar(50) NOT NULL,
  `profile_icon` varchar(255) NOT NULL,
  `apikey` varchar(255) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NULL
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `password`, `email`, `profile_icon`, `apikey`, `created_at`, `updated_at`) VALUES
(1, 'john', '000c285457fc971f862a79b786476c78812c8897063c6fa9c045f579a3b2d63f', 'john@example.com', 'peter.jpg', 'd0763edaa9d9bd2a9516280e9044d885', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(2, 'jack', '4d6b96d1e8f9bfcd28169bafe2e17da6e1a95f71e8ca6196d3affb4f95ca809f', 'jack@example.com', 'jack.jpg', 'd0763edaa9d9bd2a9516280e9044d885', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(3, 'sarah', '81ba24935dd9a720826155382938610f1b74ba226e85a7b4ca2ad58cf06664fa', 'sarah@example.com', 'sarah.jpg', 'd0763edaa9d9bd2a9516280e9044d885', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(4, 'nick', 'ef1b839067281c41a6abdf36ff2346700f9cd5f17d8d4e486be9e81c67779258', 'nick@example.com', 'nick.jpg', 'd0763edaa9d9bd2a9516280e9044d885', '0000-00-00 00:00:00', '0000-00-00 00:00:00');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `messages`
--
ALTER TABLE `messages`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `messages`
--
ALTER TABLE `messages`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=5;