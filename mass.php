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
	
    <card id='first' title="Mass Equivalents">
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
				<option value="0">Kilograms</option>
				<option value="1">Grains</option>
				<option value="2">Troy Ounces</option>
				<option value="3">Avoirdupois Ounces*</option>
				<option value="4">Troy Pounds</option>
				<option value="5">Avoirdupois Pounds*</option>
				<option value="6">Short Tons</option>
				<option value="7">Long Tons</option>
				<option value="8">Metric Tons</option>
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
				<option value="0">Kilograms</option>
				<option value="1">Grains</option>
				<option value="2">Troy Ounces</option>
				<option value="3">Avoirdupois Ounces*</option>
				<option value="4">Troy Pounds</option>
				<option value="5">Avoirdupois Pounds*</option>
				<option value="6">Short Tons</option>
				<option value="7">Long Tons</option>
				<option value="8">Metric Tons</option>
			</select>		
		</p>
		<do type="accept" name="act" label="Convert">
			<go href="mass.wmls#massConv($(leni), $(leno), $(leninp))" />
		</do> 	
 		<do type="options" name="opt" label="*">
  			<go href="#Help"/>
 		</do>				
    </card>
	<card id="Result" title="Mass Equivalents Results">
    	<p> The result is :  $lenout</p>
 		<do type="accpet" name="act" label="Again">
  			<go href="#first" />
 		</do>		
 		<do type="options" name="opt" label="Menu">
  			<go href="login.php#Menu"/>
 		</do>		
    </card>
	<card id="Help" title="Help">
		<p>	<br />*: Also known as Apothecary Ounces and Pounds.</p>
 		<do type="accpet" id="act" label="Back">
  			<prev />
 		</do>				
	</card>
</wml>
