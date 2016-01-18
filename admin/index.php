<? session_start(); ?>
<html>
	<head>
		<title>WAPAgenda Administration</title>
	</head>
	<body>
		<? 
			if (!session_is_registered("account"))
			{
			
			function checkAccount($account, $password)
			{
				include ("./../connect.php");
				$sql = "select * from accounts where account='".$account."' and password='".$password."' and state=1";
				$result = mysql_query($sql);
				$num = mysql_num_rows($result);
				return ( $num > 0 );
			}
				if ((isset($account)) && (isset($password)))
					if (checkAccount($account, $password))
					{
						include ("./stat.php");
						session_register("account"); 
					}
		?>
			<h1 align="center">Welcom to</h1>
		<p align="center"><img src="./../logo.jpg"></p>	  
		<p>Today is <? print date("j of F Y, \a\\t g.i a", time());?>.</p>
		<p>Please, enter your account and your password than validate.</p>		
		<form action="index.php" method="post">
			<table align="center">
				<tr><td>Account: </td><td><input type="text" name="account"></td></tr>
				<tr><td>Password: </td><td><input type="password" name="password"></td></tr>
			</table>
			<p align="center"><input type="submit"> <input type="reset"></p>
		</form>
		<?
			}
			else
			{
		?>
			<p align="center"><img src="./../logo.jpg"></p>	 
			<p align="right"><a href="./logout.php">[Logout]</a></p>
			<center>
				<a href="accounts.php">Accounts</a><br>
				<a href="countries.php">Countries</a><br>
				<a href="contacts.php">Contacts</a><br>
				<a href="visitors.php">Visitors</a><br>						
			</center>		
		<?
			}
		?>		
		<? include ("./about.php"); ?>
	</body>
</html>
 









