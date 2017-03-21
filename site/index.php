<?php
require_once($_SERVER['DOCUMENT_ROOT'].'/private/config.php');
require_once($_SERVER['DOCUMENT_ROOT'].'/private/init/mysql.php');
require_once($_SERVER['DOCUMENT_ROOT'].'/private/init/memcache.php');
require_once($_SERVER['DOCUMENT_ROOT'].'/private/init/session.php');
require_once($_SERVER['DOCUMENT_ROOT'].'/private/func.main.php');
require_once($_SERVER['DOCUMENT_ROOT'].'/private/auth.php');
?>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="en" lang="en">
	<head>
		<title>Lepus - интернет хостинг</title>
		<meta name="description" content="Виртуальный хостинг, быстрые VPS, выделенные серверы по привлекательной цене." />
		<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
		<meta name='yandex-verification' content='450601432a8981ef' />
		<meta name="unitpay-verification" content="f06067263051b3f5a73ddeebadf6fa" />
		<link rel="shortcut icon" type="image/x-icon" href="/favicon.ico" />
		<link rel="stylesheet" type="text/css" href="/css/bootstrap.min.css">
		<link rel="stylesheet" type="text/css" href="/css/font-awesome.min.css">
		<link rel="stylesheet" type="text/css" href="/css/reset.css"/>
		<link rel="stylesheet" type="text/css" href="/css/style.css"/>
		<link rel="stylesheet" type="text/css" href="/css/alertify.core.css" />
		<link rel="stylesheet" type="text/css" href="/css/alertify.bootstrap.css" />
		<script src="/js/jquery.min.js"></script>
		<script src="/js/bootstrap.min.js"></script>
		<script src="/js/alertify.js"></script>
		<script src="/js/lepus.js"></script>
	</head>
	<body>
		<div class="wrapper">
			<?php require_once($_SERVER['DOCUMENT_ROOT'].'/private/pages/menu.php'); ?>
			<div class="content-box">
				<div class="content-info box-shadow--2dp">
					<div class="content-text">
						<div class="page-title">Lepus хостинг</div>
						Рады предложить вам услуги интернет хостинга. Готовы сотрудничать как с физическими, так и с юридическими лицами.<br/>
						Работаем с крупными дата центрами <a href="https://www.ovh.com/us/about-us/" target="_blank" rel="nofollow">OVH</a> и <a href="https://www.hetzner.de/us/hosting/unternehmen/ueber-uns" target="_blank" rel="nofollow">Hetzner</a>. Принимаем к оплате: webmoney, yandex, paypal, qiwi и visa/ mastercard.
						<br/><br/>
						<p>
							— <a href="/pages/domains.php">Регистрация доменов</a>.<br/>
							— Мощные <a href="/pages/vps.php">KVM VPS</a> на SSD дисках.<br/>
							— Moneyback по первому требованию.<br/>
							— <a href="/pages/ovz.php">Виртуальный хостинг</a> для ваших сайтов.<br/>
							— Быстрые <a href="/pages/servers.php">выделенные серверы</a> по выгодной цене.<br/>
							— Бесплатный <a href="https://github.com/poiuty/lepus.su/wiki/%D0%9F%D0%B5%D1%80%D0%B5%D0%BD%D0%BE%D1%81-%D1%81%D0%B0%D0%B9%D1%82%D0%BE%D0%B2" target="_blank">перенос ваших сайтов</a> на наш хостинг.<br/><br/>
						</p>
						Для нас самое ценное - наши клиенты. Мы болеем за вас, радуемся вашим победам и успехам. Добро пожаловать!
						<hr/>
					</div>
				</div>
			</div>
			<?php require_once($_SERVER['DOCUMENT_ROOT'].'/private/pages/navi.php'); ?>
		</div>
		<?php require_once($_SERVER['DOCUMENT_ROOT'].'/private/pages/footer.php'); ?>
		<?php require_once($_SERVER['DOCUMENT_ROOT'].'/private/pages/modal.php'); ?>
		<script src="//www.google.com/recaptcha/api.js?onload=onloadCallback&render=explicit" async defer></script>
	</body>
</html>
