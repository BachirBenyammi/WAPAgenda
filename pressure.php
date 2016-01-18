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
	
    <card id='first' title="Pressure Equivalents">
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
		<do  type="accept" name="act" label="OK">
			<go href="#src" />
		</do> 			
	</card>
	<card id="src" title="Source">
		<p>
			Select the source:
			<select name="leni">
				<option value="0">megadynes/sq cm</option>
				<option value="1">kg/sq cm</option>
				<option value="2">lb/sq in</option>
				<option value="3">atmos-pheres</option>
				<option value="4">Hg* Meters</option>
				<option value="5">Hg* Inches</option>
				<option value="6">H2O* Meters</option>
				<option value="7">H20* Inches</option>
				<option value="8">H20* Feet</option>
			</select>
		</p>
		<do  type="accept" name="act" label="OK">
			<go href="#dest" />
		</do> 		
 		<do type="options" name="opt" label="*">
  			<go href="#Help"/>
 		</do>				
	</card>
	<card id="dest" title="Destination">
		<p>
			Select the destination:
			<select name="leno">
				<option value="0">megadynes/sq cm</option>
				<option value="1">kg/sq cm</option>
				<option value="2">lb/sq in</option>
				<option value="3">atmos-pheres</option>
				<option value="4">Hg* Meters</option>
				<option value="5">Hg* Inches</option>
				<option value="6">H2O* Meters</option>
				<option value="7">H20* Inches</option>
				<option value="8">H20* Feet</option>
			</select>		
		</p>
		<do type="accept" name="act" label="Convert">
			<go href="pressure.wmls#pressureConv($(leni), $(leno), $(leninp))" />
		</do> 	
 		<do type="options" name="opt" label="*">
  			<go href="#Help"/>
 		</do>				
    </card>
	<card id="Result" title="Pressure Equivalents Results">
    	<p> The result is :  $lenout</p>
 		<do type="accpet" name="act" label="Again">
  			<go href="#first" />
 		</do>		
 		<do type="options" name="opt" label="Menu">
  			<go href="login.php#Menu"/>
 		</do>		
    </card>
	<card id="Help" title="Help">
		<p>	
			<br />
			*Standard columns of Mercury at 0o C, g = 980.665 cm/sec/sec
			<br />
			Standard columns of Water at 60o F, g = 32.1756 ft/sec/sec
		</p>
 		<do type="accpet" id="act" label="Back">
  			<prev />
 		</do>				
	</card>
</wml>
