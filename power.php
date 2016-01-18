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
	
    <card id='first' title="Power Equivalents">
		<onevent type="onenterforward">
    		<refresh>
  				<setvar name="leni" value=""/>
  				<setvar name="leno" value=""/>
  				<setvar name="leninp" value=""/>			
		    </refresh>
	   </onevent>
    	<p>
			Type the number you wish converted here: 
			<input name="leninp" />
		</p>
		<do  type="accept" label="OK">
			<go href="#src" />
		</do> 			
	</card>
	<card id="src" title="Source">
		<p>
			Select the source:
			<select name="leni">
				<option value="0">Hp</option>
				<option value="1">Metric hp</option>
				<option value="2">Kw</option>
				<option value="3">Poncelets</option>
				<option value="4">Kg-m/sec</option>
				<option value="5">Ft-lb/sec</option>
				<option value="6">Kcal/sec</option>
				<option value="7">Btu/sec</option>
			</select>
		</p>
		<do  type="accept" label="OK">
			<go href="#dest" />
		</do> 		
	</card>
	<card id="dest" title="Destination">
		<p>
			Select the destination:
			<select name="leno">
				<option value="0">Hp</option>
				<option value="1">Metric hp</option>
				<option value="2">Kw</option>
				<option value="3">Poncelets</option>
				<option value="4">Kg-m/sec</option>
				<option value="5">Ft-lb/sec</option>
				<option value="6">Kcal/sec</option>
				<option value="7">Btu/sec</option>
			</select>		
		</p>
		<do type="accept" label="Convert">
			<go href="power.wmls#powerConv($(leni), $(leno), $(leninp))" />
		</do> 	
    </card>
	<card id="Result" title="Power Equivalents Results">
    	<p> The result is :  $lenout</p>
 		<do type="accpet" label="Again">
  			<go href="#first" />
 		</do>		
 		<do type="options" label="Menu">
  			<go href="login.php#Menu"/>
 		</do>		
    </card>
</wml>
