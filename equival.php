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
	
    <card title="Equivalents">
    	<p align="center">
			<br /> 
			<a href="area.php">Area</a>			
			<a href="energy.php">Energy/Work</a>			
			<a href="lenght.php">Length</a>
			<a href="mass.php">Mass</a>
			<a href="pressure.php">Pressure</a>			
			<a href="power.php">Power</a>
			<a href="velocity.php">Velocity</a>
			<a href="volume.php">Volume/Capacity</a>
		</p>
		<do type="options" name="opt" label="Menu">
			<go href="login.php#Menu"/>
		</do>		
    </card>
</wml>
