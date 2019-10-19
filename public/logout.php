<?php

namespace WEEEOpen\WEEEHire;

require '..' . DIRECTORY_SEPARATOR . 'vendor' . DIRECTORY_SEPARATOR . 'autoload.php';
require '..' . DIRECTORY_SEPARATOR . 'config' . DIRECTORY_SEPARATOR . 'config.php';

use Jumbojett\OpenIDConnectClient;

session_start();

$oidc = new OpenIDConnectClient(WEEEHIRE_OIDC_ISSUER, WEEEHIRE_OIDC_CLIENT_KEY, WEEEHIRE_OIDC_CLIENT_SECRET);
//$oidc->setRedirectURL(WEEEHIRE_SELF_LINK . '/auth.php');
//$oidc->addScope(['openid', 'profile', 'roles']);

if(isset($_SESSION['id_token'])) {
	// We'll need these for the logout
	$token = $_SESSION['id_token'];
	$locale = $_SESSION['locale'] ?? 'en-us';
}

// Destroy the session and cookie
$params = session_get_cookie_params();
setcookie(session_name(), '', time() - 42000,
	$params["path"], $params["domain"],
	$params["secure"], $params["httponly"]
);
session_destroy();


if(isset($token) && isset($locale)) {
	// Perform single sign out
	$oidc->signOut($token, WEEEHIRE_SELF_LINK . '/logout_done.php?l=' . rawurlencode($locale));
} else {
	// Perform local sign out
	http_response_code(500);
	$template = Template::create();
	echo $template->render('error', ['message' => 'ID Token is missing, cannot perform single log out: you are still logged in to other applications!']);
}