<?php
/*
 * Subrion Open Source CMS 4.2.1
 * Config file generated on 09 August 2020 23:27:48
 */

define('INTELLI_CONNECT', 'mysqli');
define('INTELLI_DBHOST',  getenv('CLOUDSQL_DSN'));
define('INTELLI_DBUSER', getenv('CLOUDSQL_USER'));
define('INTELLI_DBPASS',  getenv('CLOUDSQL_USER'));
define('INTELLI_DBNAME',  getenv('CLOUDSQL_DB'));
define('INTELLI_DBNAME_COMMUNITY', 'subrion');
define('INTELLI_DBPORT', '3308');
define('INTELLI_DBPREFIX', 'sbr421_');
define('THELUCKYDEV_COMMUNITY_URL', 'community.theluckydev');

define('IA_SALT', '#6B4044DB7C');

// debug mode: 0 - disabled, 1 - enabled
define('INTELLI_DEBUG', 1);

