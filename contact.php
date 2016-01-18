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
<?
if (isset($act))
{	
	if ($act="send")
	{
?>

<?	
	include ("./connect.php");
	$sql = "insert into contacts (email, subject, message, datetime) values ('".$email."', '".$subject."', '".$message."', now())";
	$result = mysql_query($sql);
?>
	<card id="Thanks" title="Thanks">
		<p align="left">
			Thank you for your message.
		</p>
		<do type="accept" name="act" label="Home page">
			<go href="index.php#Authentif">
				<setvar name="email" value="" />
				<setvar name="subject" value="" />
				<setvar name="message" value="" />
				<setvar name="tel" value="" />
			</go>
		</do>
	</card>
<?
	}
}
else
{
?>
	<card id="Contact" title="Contact us">
		<p align="center">
			<b>Email:</b> <input name="email" title="Email" /><br />
			<b>Subject:</b> <input name="subject" title="Subject" /><br />
			<b>Message:</b> <input name="message" title="Message" />
		</p>
		<do type="accept" name="act" label="Send">
			<go href="contact.php?act=send">
				<postfield name="email" value="$(email)" />
				<postfield name="subject" value="$(subject)" />
				<postfield name="message" value="$(message)" />
			</go>
		</do>
	</card>
<?
}
?>
	</wml>