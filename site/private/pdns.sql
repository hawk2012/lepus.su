--
-- Database: `dns`
--

-- --------------------------------------------------------

--
-- Table structure for table `comments`
--

CREATE TABLE IF NOT EXISTS `comments` (
  `id` int(11) NOT NULL,
  `domain_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `type` varchar(10) NOT NULL,
  `modified_at` int(11) NOT NULL,
  `account` varchar(40) NOT NULL,
  `comment` mediumtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `cryptokeys`
--

CREATE TABLE IF NOT EXISTS `cryptokeys` (
  `id` int(11) NOT NULL,
  `domain_id` int(11) NOT NULL,
  `flags` int(11) NOT NULL,
  `active` tinyint(1) DEFAULT NULL,
  `content` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `domainmetadata`
--

CREATE TABLE IF NOT EXISTS `domainmetadata` (
  `id` int(11) NOT NULL,
  `domain_id` int(11) NOT NULL,
  `kind` varchar(32) DEFAULT NULL,
  `content` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `domains`
--

CREATE TABLE IF NOT EXISTS `domains` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `master` varchar(128) DEFAULT NULL,
  `last_check` int(11) DEFAULT NULL,
  `type` varchar(6) NOT NULL,
  `notified_serial` int(11) DEFAULT NULL,
  `account` varchar(40) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `records`
--

CREATE TABLE IF NOT EXISTS `records` (
  `id` int(11) NOT NULL,
  `domain_id` int(11) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `type` varchar(10) DEFAULT NULL,
  `content` mediumtext,
  `ttl` int(11) DEFAULT NULL,
  `prio` int(11) DEFAULT NULL,
  `change_date` int(11) DEFAULT NULL,
  `disabled` tinyint(1) DEFAULT '0',
  `ordername` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `auth` tinyint(1) DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `supermasters`
--

CREATE TABLE IF NOT EXISTS `supermasters` (
  `ip` varchar(64) NOT NULL,
  `nameserver` varchar(255) NOT NULL,
  `account` varchar(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `tsigkeys`
--

CREATE TABLE IF NOT EXISTS `tsigkeys` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `algorithm` varchar(50) DEFAULT NULL,
  `secret` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`id`), ADD KEY `comments_domain_id_idx` (`domain_id`), ADD KEY `comments_name_type_idx` (`name`,`type`), ADD KEY `comments_order_idx` (`domain_id`,`modified_at`);

--
-- Indexes for table `cryptokeys`
--
ALTER TABLE `cryptokeys`
  ADD PRIMARY KEY (`id`), ADD KEY `domainidindex` (`domain_id`);

--
-- Indexes for table `domainmetadata`
--
ALTER TABLE `domainmetadata`
  ADD PRIMARY KEY (`id`), ADD KEY `domainmetadata_idx` (`domain_id`,`kind`);

--
-- Indexes for table `domains`
--
ALTER TABLE `domains`
  ADD PRIMARY KEY (`id`), ADD UNIQUE KEY `name_index` (`name`);

--
-- Indexes for table `records`
--
ALTER TABLE `records`
  ADD PRIMARY KEY (`id`), ADD KEY `nametype_index` (`name`,`type`), ADD KEY `domain_id` (`domain_id`), ADD KEY `recordorder` (`domain_id`,`ordername`);

--
-- Indexes for table `supermasters`
--
ALTER TABLE `supermasters`
  ADD PRIMARY KEY (`ip`,`nameserver`);

--
-- Indexes for table `tsigkeys`
--
ALTER TABLE `tsigkeys`
  ADD PRIMARY KEY (`id`), ADD UNIQUE KEY `namealgoindex` (`name`,`algorithm`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `comments`
--
ALTER TABLE `comments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `cryptokeys`
--
ALTER TABLE `cryptokeys`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `domainmetadata`
--
ALTER TABLE `domainmetadata`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `domains`
--
ALTER TABLE `domains`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `records`
--
ALTER TABLE `records`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `tsigkeys`
--
ALTER TABLE `tsigkeys`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
