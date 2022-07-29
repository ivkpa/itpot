<?php
/**
 * The base configuration for WordPress
 *
 * The wp-config.php creation script uses this file during the installation.
 * You don't have to use the web site, you can copy this file to "wp-config.php"
 * and fill in the values.
 *
 * This file contains the following configurations:
 *
 * * Database settings
 * * Secret keys
 * * Database table prefix
 * * ABSPATH
 *
 * @link https://wordpress.org/support/article/editing-wp-config-php/
 *
 * @package WordPress
 */

// ** Database settings - You can get this info from your web host ** //
/** The name of the database for WordPress */
define( 'DB_NAME', 'wordpress' );

/** Database username */
define( 'DB_USER', 'wordpress' );

/** Database password */
define( 'DB_PASSWORD', 'wordpress' );

/** Database hostname */
define( 'DB_HOST', 'mysql-proxy' );

/** Database charset to use in creating database tables. */
define( 'DB_CHARSET', 'utf8mb4' );

/** The database collate type. Don't change this if in doubt. */
define( 'DB_COLLATE', '' );

if (isset($_SERVER['HTTP_X_FORWARDED_PROTO']) && $_SERVER['HTTP_X_FORWARDED_PROTO'] == 'https')
    $_SERVER['HTTPS'] = 'on';

/**#@+
 * Authentication unique keys and salts.
 *
 * Change these to different unique phrases! You can generate these using
 * the {@link https://api.wordpress.org/secret-key/1.1/salt/ WordPress.org secret-key service}.
 *
 * You can change these at any point in time to invalidate all existing cookies.
 * This will force all users to have to log in again.
 *
 * @since 2.6.0
 */
define( 'AUTH_KEY',         '/G?[CWSD`ZW*y>3<Xv>.!k+~Gq&-_=N97yB>3bZv79V5+9(b+~#pX^z<c$s=1j>+' );
define( 'SECURE_AUTH_KEY',  '|C qv+2rpfA4`WfXH7bwpyI_lPw-&4q&:?+PS3wRR?7NW@ng`~+TA$f_k`1Tm230' );
define( 'LOGGED_IN_KEY',    'r}a(BCMu>-eOQu_l?h-,`i~(2em?rj<}%b#r-/$wP:K~F2@sAY:[ QS4kNSPW@w9' );
define( 'NONCE_KEY',        '=S(=*g7zDHiGku]:0xXUgS Hgof] }4&}<3GjUGy4l3XL0VWE6W}oUkLOw7X!z+Z' );
define( 'AUTH_SALT',        '64+w7ZPN~?+PW@*V{H3^na2#F{3EvfGvNp,Fb:X5S)o:SP*]dMq m?LuDO6u/EJz' );
define( 'SECURE_AUTH_SALT', 'cm6&RV~<E~5X|I|m/t} J+kse H~<;]g=;44kqYnCOXw/xMrk)lJ8`lc7@d0eND7' );
define( 'LOGGED_IN_SALT',   'BYo0&&/VOfq[2vheMVng{R(XM[U`tZ{,a(T|c#S_*YvjBSA}0C0-]tiy+VM(7S/d' );
define( 'NONCE_SALT',       '*^vn8=EQZNn:gRbgD~pys;&o[tdmj`+mb;nF*J&y^{F{dYzRbUB]m.&B]Av_?fcp' );

/**#@-*/

/**
 * WordPress database table prefix.
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

/* Add any custom values between this line and the "stop editing" line. */



/* That's all, stop editing! Happy publishing. */

/** Absolute path to the WordPress directory. */
if ( ! defined( 'ABSPATH' ) ) {
        define( 'ABSPATH', __DIR__ . '/' );
}

/** Sets up WordPress vars and included files. */
require_once ABSPATH . 'wp-settings.php';
?>