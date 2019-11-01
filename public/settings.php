<?php

namespace WEEEOpen\WEEEHire;

use DateTime;
use DateTimeZone;
use Exception;

require '..' . DIRECTORY_SEPARATOR . 'vendor' . DIRECTORY_SEPARATOR . 'autoload.php';
require '..' . DIRECTORY_SEPARATOR . 'config' . DIRECTORY_SEPARATOR . 'config.php';

$template = Template::create();

if(defined('TEST_MODE') && TEST_MODE) {
	error_log('Test mode, bypassing authentication');
	if(session_status() === PHP_SESSION_NONE) {
		session_start();
	}
	$_SESSION['uid'] = 'test.test';
	$_SESSION['cn'] = 'Test Administrator';
	$_SESSION['groups'] = ['Admin', 'Foo', 'Bar'];
	$_SESSION['isAdmin'] = true;
} else {
	if(!Utils::sessionValid()) {
		if(session_status() === PHP_SESSION_NONE) {
			// We need to write
			session_start();
		}
		$_SESSION['previousPage'] = $_SERVER['REQUEST_URI'];
		$_SESSION['needsAuth'] = true;
		http_response_code(303);
		header('Location: /auth.php');
		exit;
	}
}


$db = new Database();

$error = null;

if($_SERVER['REQUEST_METHOD'] === 'POST') {
	if(isset($_POST['noexpiry'])) {
		$db->unsetConfigValue('expiry');
		http_response_code(303);
		header('Location: /settings.php');
		exit;
	} elseif(isset($_POST['expiry'])) {
		try {
			$expiryNew = new DateTime($_POST['expiry'], new DateTimeZone('Europe/Rome'));
			$db->setConfigValue('expiry', (string) $expiryNew->getTimestamp());
			http_response_code(303);
			header('Location: /settings.php');
			exit;
		} catch(Exception $e) {
			$error = $e->getMessage();
		}
	}
}

$expiry = $db->getConfigValue('expiry');
$rolesUnvailable = $db->getConfigValue('rolesUnavailable');

if($expiry !== null) {
	/** @noinspection PhpUnhandledExceptionInspection */
	$expiryTemp = new DateTime('now', new DateTimeZone('Europe/Rome'));
	$expiry = $expiryTemp->setTimestamp($expiry);
}

if($_SERVER['REQUEST_METHOD'] === 'POST') {
	if(isset($_POST['rolesReset'])) {
		$db->unsetConfigValue('rolesUnavailable');
		http_response_code(303);
		header('Location: ' . $_SERVER['REQUEST_URI']);
		exit();
	} elseif(isset($_POST['roles'])) {
		$rolesRule = implode('|', $_POST['roles']);
		$db->setConfigValue('rolesUnavailable', $rolesRule);
		http_response_code(303);
		header('Location: ' . $_SERVER['REQUEST_URI']);
		exit();
	}
}

echo $template->render('settings',
	[
		'myuser'           => $_SESSION['uid'],
		'myname'           => $_SESSION['cn'],
		'expiry'           => $expiry,
		'error'            => $error,
		'rolesUnavailable' => $rolesUnvailable
	]);
