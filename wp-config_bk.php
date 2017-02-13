<?php
/** 
 * WordPress 基本設定檔。
 *
 * 本檔案包含以下設定選項： MySQL 設定、資料表前綴、
 * 私密金鑰、WordPress 語言設定以及 ABSPATH。如需更多資訊，請
 * 前往 {@link http://codex.wordpress.org/Editing_wp-config.php 編輯
 * wp-config.php} Codex 頁面。或者向您的空間提供商諮詢關於 MySQL 設定資訊。
 *
 * 這個檔案用於安裝程式自動生成 wp-config.php 設定檔。
 * 您不需要將它用於您的網站，可以手動複製這個檔案，
 * 並重新命名為 "wp-config.php"，然後輸入相關訊息。
 *
 * @package WordPress
 */

// ** MySQL 設定 - 您可以從主機服務提供商獲取相關資訊。 ** //
/** WordPress 的資料庫名稱，請更改 "database_name_here" */
if ($_SERVER['SERVER_NAME'] == "local.mental-production.com") {
	/** The name of the database for WordPress */
	define('DB_NAME', 'mental_production');

	/** MySQL database username */
	define('DB_USER', 'root');

	/** MySQL database password */
	define('DB_PASSWORD', 'root');
	define( 'WP_SITEURL',  'http://local.mental-production.com' );
	define( 'WP_HOME', 'http://local.mental-production.com' );
	//define('DB_CHARSET', 'utf8');
	//define('DB_COLLATE', 'utf8_unicode_ci');
}
else if($_SERVER['SERVER_NAME'] == "www.mental-production.com"){
	/** The name of the database for WordPress */
	define('DB_NAME', 'mental_production');

	/** MySQL database username */
	define('DB_USER', 'root');

	/** MySQL database password */
	define('DB_PASSWORD', 'root');
	define( 'WP_SITEURL',  'http://www.mental-production.com' );
	define( 'WP_HOME', 'http://www.mental-production.com' );
	//define('DB_CHARSET', 'utf8');
	//define('DB_COLLATE', 'utf8_unicode_ci');
}
else if($_SERVER['SERVER_NAME'] == "mental_production.fp-production.com"){
	/** The name of the database for WordPress */
	define('DB_NAME', 'fpproducti_mentalproduction');

	/** MySQL database username */
	define('DB_USER', 'fpproducti_root');

	/** MySQL database password */
	define('DB_PASSWORD', 'P@ssw0rd');
	define( 'WP_SITEURL',  'http://mental_production.fp-production.com' );
	define( 'WP_HOME', 'http://mental_production.fp-production.com' );
	
	//define('DB_CHARSET', 'utf8');
	//define('DB_COLLATE', 'utf8_unicode_ci');
}

/**#@+
 * 認證唯一金鑰設定。
 *
 * 將這些更改為不同的唯一字串或符號。
 * 您可以使用 {@link https://api.wordpress.org/secret-key/1.1/salt/ WordPress.org 私密金鑰服務} 來自動產生。
 * 您可於任何時候修改這些字串讓 Cookies 失效。這將會強制所有使用者必須重新登入。
 *
 * @since 2.6.0
 */
define('AUTH_KEY',         ' <7BO ha[iuNFt)ZFT ):0QX@/b;@iA)dTYEj&d!0+gFdwx#:.9fP&%(WgOXnpa+');
define('SECURE_AUTH_KEY',  '3zhuF3!.M_x HTDXX[(g+@I#<&$J2V%7d:Bmw=7A5)>z_K2=Q3|{{$M?1XCih6$H');
define('LOGGED_IN_KEY',    'pn,!$V|XXhdW.G|VAvYfx>4}ne~#<TsF*R~s|p!7_3PicnK@>RQ-8ggDcs$VfM|Y');
define('NONCE_KEY',        '<NvH9:kede@35lQMKV*d+29[k`*>-oo]B@dC:+E_aO/tF|Q?wm/+WB(r|CWk+~`7');
define('AUTH_SALT',        'GRtvq-$/nys}U3.-X#5: y~uo2a*H7=v|<*kINjj6cv`Q*G@Ya9bwi^3}gd^)1[z');
define('SECURE_AUTH_SALT', '/S/SRh;-xp`+[)NZv|C,,4L#7<A.^22MZcrm=la+7bStAfqip{+)N|:D &48;}~T');
define('LOGGED_IN_SALT',   '7$PbaZIGB!eCPK=TfRC,hG%8Z/v`Rv)|Z0^`#~^P1QO_;9GFgub%,ONFMzYJUU6y');
define('NONCE_SALT',       '*@o+|>@F(?58BU:oTP8|h}1`XCu-[G2R^+,Ttck,nxc_*{-lHTlblK-TCIc&=}:Q');


/**#@-*/

/**
 * WordPress 資料表前綴。
 *
 * 若您為每個 WordPress 設定不同的資料表前綴，則可在同個資料庫內安裝多個 WordPress。
 * 前綴只能使用半型數字、字母和底線！
 */
$table_prefix  = 'wp_';

/**
 * For developers: WordPress debugging mode.
 *
 * Change this to true to enable the display of notices during development.
 * It is strongly recommended that plugin and theme developers use WP_DEBUG
 * in their development environments.
 */
define('WP_DEBUG', false);

define('WP_ENV', 'development');


/* 設定完成，請儲存檔案。然後開始 Blogging 吧！ */

/** WordPress 目錄的絕對路徑。 */
if ( !defined('ABSPATH') )
	define('ABSPATH', dirname(__FILE__) . '/');

/** 設定 WordPress 變數和包含的檔案。 */
require_once(ABSPATH . 'wp-settings.php');
