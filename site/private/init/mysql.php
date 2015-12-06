<?php
try {
	$db = new PDO("mysql:host={$conf['mysql_host']};dbname={$conf['mysql_base']}", $conf['mysql_user'], $conf['mysql_pass']);
	$db->setAttribute( PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION );
	$db->exec("set names utf8");
}
catch(PDOException $e) {
	file_put_contents($_SERVER['DOCUMENT_ROOT'].'/private/logs/PDOErrors.txt', $e->getMessage().PHP_EOL, FILE_APPEND);
	die('MySQL ERROR');
}
try {
	$pdns = new PDO("mysql:host={$conf['pdns_host']};dbname={$conf['pdns_base']}", $conf['pdns_user'], $conf['pdns_pass']);
	$pdns->setAttribute( PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION );
	$pdns->exec("set names utf8");
}
catch(PDOException $e) {
	file_put_contents($_SERVER['DOCUMENT_ROOT'].'/private/logs/PDOErrors.txt', $e->getMessage().PHP_EOL, FILE_APPEND);
	die('MySQL ERROR');
}
