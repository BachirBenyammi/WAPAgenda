<?
	header("Content-type: text/vnd.wap.wml");
	header("Charset: iso-8859-1");
	echo '<?xml version="1.0"?>';
	echo '<!DOCTYPE wml PUBLIC "-//WAPFORUM//DTD WML 1.1//EN" "http://www.wapforum.org/DTD/wml_1.1.xml">';
?>

<?
	$letter .= '%'; 
	include ("./connect.php");
	$sql = "select code, title from countries where title like '".$letter."' order by title";
	$result = mysql_query($sql);
?>

<wml>
	<head>
		<meta http-equiv="Cache-Control" content="no-cache" forua="true" />
	</head>
	
    <card id='menu' title="Countrie's infos">
    	<p>
			Select the country to see its informations:<br />
			<select name="code">
			<?
				while ($col=mysql_fetch_row($result))					
				{
					$Code = $col[0];	
					$Country = $col[1];					
					print "<option value='$Code'>$Country</option>";
				}
			?>
			</select>			 
		</p>
		<do  type="accept" name="act" label="OK">
			<go href="country.php?code=$(code)" />
		</do> 			
		<do  type="options" name="opt" label="Menu">
			<go href="login.php#Menu" />
		</do> 		
	</card>
</wml>