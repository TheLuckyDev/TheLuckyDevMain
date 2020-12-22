<?php
/*
 * Subrion Open Source CMS 4.2.1
 * Config file generated on 09 August 2020 23:27:48
 */

define('INTELLI_CONNECT', getenv('CLOUD_SQL_CONNECTION_NAME'));
define('INTELLI_CONNECT_DSN', getenv('CLOUD_SQL_CONNECTION_DSN'));
define('INTELLI_DBHOST', getenv('CLOUD_SQL_DATABASE_HOST') );
define('INTELLI_DBUSER', getenv('CLOUD_SQL_USERNAME'));
define('INTELLI_DBPASS',  getenv('CLOUD_SQL_PASSWORD'));
define('INTELLI_DBNAME',  getenv('CLOUD_SQL_DATABASE_NAME'));
define('INTELLI_DBNAME_COMMUNITY', 'subrion');
define('INTELLI_DBPORT', '3306');
define('INTELLI_DBPREFIX', 'sbr421_');
define('THELUCKYDEV_COMMUNITY_URL', 'community.theluckydev');

define('IA_SALT', '#6B4044DB7C');

// debug mode: 0 - disabled, 1 - enabled
define('INTELLI_DEBUG', 1);

