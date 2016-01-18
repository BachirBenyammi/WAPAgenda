<?
	header("Content-type: text/vnd.wap.wml");
	header("Charset: iso-8859-1");
	echo '<?xml version="1.0"?>';
	echo '<!DOCTYPE wml PUBLIC "-//WAPFORUM//DTD WML 1.1//EN" "http://www.wapforum.org/DTD/wml_1.1.xml">';
?>

<?
	include ("./connect.php");
	$sql = "select * from countries, currency, regions where (countries.code = '".$code."') and (countries.currency = currency.code) and (countries.region = regions.nu)";
	$result = mysql_query($sql);
?>

<wml>
	<head>
		<meta http-equiv="Cache-Control" content="no-cache" forua="true" />
	</head>
	
    <card id='menu' title="Countrie's infos">
    	<p>
			<br />
			<?
				while ($col=mysql_fetch_row($result))					
				{
					$Code = $col[0];	
					$Country = $col[1];			
					$Capital = $col[2];	
					$Region = $col[11];		
					$CurrencyCode = $col[9];					
					$Area = $col[5];				
					$Population = $col[6];			
					$Density = $col[7];			
					$Currency = $col[8];
					print "Country: $Country ($Code) <br />";
					print "Capital: $Capital <br />";
					print "Region: $Region <br />";
					print "Population: $Population <br />";
					print "Area: $Area (km2)<br />";
					print "Density: $Density (Pop per km2)<br />";
					print "Currency: $Currency ($CurrencyCode) <br />";			
				}
			?>
				<!--Flag: <img src="./flags/<?=$Code?>.bmp" alt="<?=$Code?>"/><br /-->
		</p>
		<do  type="accept" name="act" label="Back">
			<prev />
		</do> 			
	</card>
</wml>