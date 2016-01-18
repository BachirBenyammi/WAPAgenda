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

    <card id='first' title="Volume/Capacity Equivalents">
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
				<option value="0">Cubic Inches</option>
				<option value="1">Cubic Feet</option>
				<option value="2">Cubic Yards</option>
				<option value="3">US Fluid Ounces*</option>
				<option value="4">US Liquid Quarts</option>
				<option value="5">US Dry Quarts</option>
				<option value="6">US Gallons</option>
				<option value="7">US Bushels</option>
				<option value="8">Liters</option>
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
				<option value="0">Cubic Inches</option>
				<option value="1">Cubic Feet</option>
				<option value="2">Cubic Yards</option>
				<option value="3">US Fluid Ounces*</option>
				<option value="4">US Liquid Quarts</option>
				<option value="5">US Dry Quarts</option>
				<option value="6">US Gallons</option>
				<option value="7">US Bushels</option>
				<option value="8">Liters</option>
			</select>		
		</p>
		<do type="accept" name="act" label="Convert">
			<go href="volume.wmls#volumeConv($(leni), $(leno), $(leninp))" />
		</do> 	
 		<do type="options" name="opt" label="*">
  			<go href="#Help"/>
 		</do>				
    </card>
	<card id="Result" title="Volume/Capacity Equivalents Results">
    	<p> The result is :  $lenout</p>
 		<do type="accpet" name="act" label="Again">
  			<go href="#first" />
 		</do>		
 		<do type="options" name="opt" label="Menu">
  			<go href="login.php#Menu"/>
 		</do>		
    </card>
	<card id="Help" title="Help">
		<p>	<br />* Apothecary.</p>
 		<do type="accpet" id="act" label="Back">
  			<prev />
 		</do>				
	</card>
</wml>
