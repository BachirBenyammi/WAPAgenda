<? session_start(); ?>
<?
	header("Content-type: text/vnd.wap.wml");
	header("Charset: iso-8859-1");
	echo '<?xml version="1.0"?>';
	echo '<!DOCTYPE wml PUBLIC "-//WAPFORUM//DTD WML 1.1//EN" "http://www.wapforum.org/DTD/wml_1.1.xml">';	
?>

<?
function checkAccount($account, $password)
{
	include ("./connect.php");
	$sql = "select * from accounts where account='".$account."' and password='".$password."' and state=1";
	$result = mysql_query($sql);
	$num = mysql_num_rows($result);
	return ( $num > 0 );
}
$allow = true;
if (!session_is_registered("account"))
	if (checkAccount($account, $password))
	{
		include ("./stat.php");
		session_register("account"); 
	}
	else
		$allow = false;
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
	if ($allow)
	{
?>

	<card id="Menu" title="Sammary">
		<onevent type="onenterforward">
    		<refresh>
  				<setvar name="account" value=""/>
  				<setvar name="password" value=""/>	
		    </refresh>
	   </onevent>	
		<p align="left">
			hello <b><?=$account?></b>.<br />
		</p>
		<p align="center">
			<a href="contacts.php">My contacts</a><br />
			<a href="equival.php">Equivalents</a><br />
			<a href="countries.php">Countrie's infos</a><br />
			<a href="dial.php">Dial</a><br />
			<a href="sendmail.php">Send mail</a><br />
			<a href="index.php#About">About us</a><br />
			<a href="contact.php">Contact us</a><br />
			<!--a href="edit.php?account=<?=$account?>">Edit</a><br /-->
			<a href="logout.php">Logout</a>
		</p>
		<do type="options" name="opt" label="">
			<noop />
		</do>		
	</card>
<?
	}
	else
	{
?>
	<card id="ErrorLogin" title="Error">
		<onevent type="onenterforward">
    		<refresh>
  				<setvar name="account" value=""/>
  				<setvar name="password" value=""/>	
		    </refresh>
	   </onevent>		
		<p align="left">
			Invalid account or password, try again !!
		</p>
		<do type="accept" name="act" label="Back">
			<go href="index.php#Login" />
		</do>
		<do type="options" name="opt" label="">
			<noop />
		</do>
	</card>
<?
	}
?>
	</wml>