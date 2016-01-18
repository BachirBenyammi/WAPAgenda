<?
	header("Content-type: text/vnd.wap.wml");
	header("Charset: iso-8859-1");
	echo '<?xml version="1.0"?>';
	echo '<!DOCTYPE wml PUBLIC "-//WAPFORUM//DTD WML 1.1//EN" "http://www.wapforum.org/DTD/wml_1.1.xml">';
?>

<wml>
	<head>
		<meta http-equiv="Cache-Control" content="no-cache" forua="true" />
	</head>
	

	<template>
		<do type="options" name="opt" label="Back">
			<prev/>
		</do>
	</template>
	
	<card id="Home" title="WAP Agenda" ontimer="#Authentif">
		<timer name="delay" value="10" />
		<p align="center">
			<img src="logo.bmp" alt="WAP Agenda.bmp"/>
		</p>
		<do type="accept" name="act" label="Home">
			<go href="#Authentif" />
		</do>
		<do type="options" name="opt" label="About">
			<go href="#About" />
		</do>
	</card>
	<card id="Authentif" title="Home page">
		<p align="left"> 
			Welcome to WAPAgenda, 
 			Today is <? print date("j of F Y, \a\\t g.i a", time());?>. <br /> 
 			Please identify your self.
		</p>
		<p align="center">
			<a href="#Register">New User</a><br />
			<a href="#Login">Existing User</a>
		</p>
		<do type="options" name="opt" label="About">
			<go href="#About" />
		</do>
	</card>
	<card id="Login" title="Login">
		<p align="left">
			Please, enter your account and your password than validate.
		</p>
		<p align="center">
			<b>Account:</b> <input name="account" title="Account" /><br />
			<b>Password:</b> <input name="password" title="Password" type="password" />
		</p>
		<do type="accept" name="act" label="Login">
			<go href="login.php">
				<postfield name="account" value="$(account)" />
				<postfield name="password" value="$(password)" />
			</go>
		</do>
	</card>
	<card id="Register" title="Register">
		<p align="left">
			Please specify your informations than validate.
		</p>
		<p align="center">
			<b>Name:</b> <input name="name" title="Name" /><br />
			<b>Email:</b> <input name="email" title="Email" /><br />
			<b>Tel:</b> <input name="tel" title="Tel" /><br />
			<b>Account:</b> <input name="account" title="Account" /><br />
			<b>Password:</b> <input name="password" title="Password" type="password" />
		</p>
		<do type="accept" name="act" label="Register">
			<go href="register.php">
				<postfield name="name" value="$(name)" />
				<postfield name="email" value="$(email)" />
				<postfield name="tel" value="$(tel)" />
				<postfield name="account" value="$(account)" />
				<postfield name="password" value="$(password)" />
			</go>
		</do>
	</card>
	<card id="About" title="About us">
		<p align="left">
			WAP Agenda 0.1<br />
			jully, 10th 2007<br /><br />
			Author: BENYAMMI Bachir<br />
			Tel: 0(213)64133217<br />
			Email: benbac20@gmail.com<br />
			BOP: 11 A 47100<br />
			Berriane - Algeria
		</p>
		<do type="accept" name="act" label="Contact us">
			<go href="contact.php" />
		</do>
	</card>
</wml>
