<?
	header("Content-type: text/vnd.wap.wml");
	header("Charset: iso-8859-1");
	echo '<?xml version="1.0"?>';
	echo '<!DOCTYPE wml PUBLIC "-//WAPFORUM//DTD WML 1.1//EN" "http://www.wapforum.org/DTD/wml_1.1.xml">';	
?>

<?
function checkNoAccount($account)
{
	include ("./connect.php");
	$sql = "select * from accounts where account='".$account."'";
	$result = mysql_query($sql);
	$num = mysql_num_rows($result);
	return ( $num <= 0 );
}
?>

<wml>
	<head>
		<meta http-equiv="Cache-Control" content="no-cache" forua="true" />
	</head>
	
<?
	if (checkNoAccount($account))	
	{
	include ("./connect.php");
		$sql = "insert into accounts (name, email, tel, account, password, datetime) values ('".$name."','".$email."', '".$tel."','".$account."', '".$password."', now())";
		$result = mysql_query($sql);
?>
	<card id="Thanks" title="Thanks">
		<p align="left">
			Thank you for your registration, check your email to activate your account.
		</p>
		<do type="accept" name="act" label="Login">
			<go href="index.php#Login">
				<setvar name="account" value="" />
				<setvar name="password" value="" />
				<setvar name="name" value="" />
				<setvar name="email" value="" />
				<setvar name="tel" value="" />
			</go>
		</do>
		<do type="options" name="opt" label="">
			<noop />
		</do>
	</card>
<?
	}
	else
	{
?>
	<card id="ErrorRegister" title="Error">
		<p align="left">
			This is an existing account, try an other one !!
		</p>
		<do type="accept" name="act" label="Back">
			<go href="index.php#Register">
				<setvar name="account" value="" />
				<setvar name="password" value="" />
			</go>
		</do>
		<do type="options" name="opt" label="">
			<noop />
		</do>
	</card>
<?
	}
?>
	</wml>