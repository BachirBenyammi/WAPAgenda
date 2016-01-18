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

<?
if (isset($act))
{	
	if ($act="send")
	{
		$result = mail($to, $subject, $message);
		if ($result)
		 {
?>
	<card id="Send" title="Email sent">
		<p align="left">
			Mail send seccuvly !!
		</p>
		<do type="accept" name="act" label="Menu">
			<go href="login.php#Menu">
				<setvar name="to" value="" />
				<setvar name="subject" value="" />
				<setvar name="message" value="" />
			</go>
		</do>
		<do type="options" name="opt" label="Back">
			<prev />
		</do>
	</card>
<?
		}
		else
		{
?>
	<card id="ErrorMail" title="Error">
		<p align="left">
			Errors in sending mail, try later !!
		</p>
		<do type="accept" name="act" label="Back">
			<prev/>
		</do>
		<do type="options" name="opt" label="Menu">
			<go href="login.php#Menu">
				<setvar name="to" value="" />
				<setvar name="subject" value="" />
				<setvar name="message" value="" />
			</go>
		</do>
	</card>
<?
		}
	}
}
else
{
?>
	<card id="Send" title="Send mail">
		<p align="left">
			<b>To:</b> <input name="to" title="To" /><br />
			<b>Subject:</b> <input name="subject" title="Subject" /><br />
			<b>Message:</b> <input name="message" title="Message" />
		</p>
		<do type="accept" name="act" label="Send">
			<go href="sendmail.php?act=send">
				<postfield name="to" value="$(email)" />
				<postfield name="subject" value="$(subject)" />
				<postfield name="message" value="$(message)" />
			</go>
		</do>
		<do type="options" name="opt" label="Menu">
			<go href="login.php#Menu" />
		</do>
	</card>
<?
}
?>
	</wml>