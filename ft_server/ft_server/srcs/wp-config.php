<?php
/**
 * The base configuration for WordPress
 *
 * The wp-config.php creation script uses this file during the
 * installation. You don't have to use the web site, you can
 * copy this file to "wp-config.php" and fill in the values.
 *
 * This file contains the following configurations:
 *
 * * MySQL settings
 * * Secret keys
 * * Database table prefix
 * * ABSPATH
 *
 * @link https://wordpress.org/support/article/editing-wp-config-php/
 *
 * @package WordPress
 */

// ** MySQL settings - You can get this info from your web host ** //
/** The name of the database for WordPress */
define( 'DB_NAME', 'wordpress' );

/** MySQL database username */
define( 'DB_USER', 'root' );

/** MySQL database password */
define( 'DB_PASSWORD', '' );

/** MySQL hostname */
define( 'DB_HOST', 'localhost' );

/** Database Charset to use in creating database tables. */
define( 'DB_CHARSET', 'utf8mb4' );

/** The Database Collate type. Don't change this if in doubt. */
define( 'DB_COLLATE', '' );

/**#@+
 * Authentication Unique Keys and Salts.
 *
 * Change these to different unique phrases!
 * You can generate these using the {@link https://api.wordpress.org/secret-key/1.1/salt/ WordPress.org secret-key service}
 * You can change these at any point in time to invalidate all existing cookies. This will force all users to have to log in again.
 *
 * @since 2.6.0
 */
define( 'AUTH_KEY',         'i+G#X`A/zoj5)uF8u`L/J;o>IR2`h;H<Fy;9PAar3#zR5A<= ZA_qoC#,RBpHG@j' );
define( 'SECURE_AUTH_KEY',  ']-$a(xM31g{Lrqp[tk5Fpw%7lj)mK$40#Nbh5X2&RNBos&*C,;/1A*gRWn(sF,Z!' );
define( 'LOGGED_IN_KEY',    'JYX(]p|u(6X5-c(zHn[O`.EmnzA&PK6%Z+A%@c9$LGU:_&RnRY;B/Gy}E3I(9bh5' );
define( 'NONCE_KEY',        '8fxX(PNB_Sr1>l_Dl:`**42|`c^Yy{%g$ztiQ7D),.0D=m(_6[Nww=?kt@w)32C(' );
define( 'AUTH_SALT',        'K~6O,5&y-}fV6z=o/y=}me7^-3cbYm<Rxg+>+>}qh+,!u{`M<#K@px:D7kjop]@3' );
define( 'SECURE_AUTH_SALT', '?-}Le{9{]@5lt*m~mLK*q@Zow)$pY#9SroD.>WPu6*ug>ZSObOl~&N8b51QK2er2' );
define( 'LOGGED_IN_SALT',   'e$&0#UL?V0dG~`b_+*&>c!{syGDaN1RJ7Jra$yALqH^-bl|^QI3fXJ#oi~P{0l!`' );
define( 'NONCE_SALT',       'TxYh1]Xt#L;xg (,+MEv=cH!}w8+6UV^!EcNOTma{3ba57 zOvv@@]oOU!J?K0C/' );

/**#@-*/

/**
 * WordPress Database Table prefix.
 *
 * You can have multiple installations in one database if you give each
 * a unique prefix. Only numbers, letters, and underscores please!
 */
$table_prefix = 'wp_';

/**
 * For developers: WordPress debugging mode.
 *
 * Change this to true to enable the display of notices during development.
 * It is strongly recommended that plugin and theme developers use WP_DEBUG
 * in their development environments.
 *
 * For information on other constants that can be used for debugging,
 * visit the documentation.
 *
 * @link https://wordpress.org/support/article/debugging-in-wordpress/
 */
define( 'WP_DEBUG', false );

/* That's all, stop editing! Happy publishing. */

/** Absolute path to the WordPress directory. */
if ( ! defined( 'ABSPATH' ) ) {
	define( 'ABSPATH', __DIR__ . '/' );
}

/** Sets up WordPress vars and included files. */
require_once ABSPATH . 'wp-settings.php';
