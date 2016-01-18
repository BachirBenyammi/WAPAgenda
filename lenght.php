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
	
    <card id='first' title="Length Equivalents">
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
				<option value="0">Centimeters</option>
				<option value="1">Inches</option>
				<option value="2">Feet</option>
				<option value="3">Yards</option>
				<option value="4">Meters</option>
				<option value="5">Chains</option>
				<option value="6">Kilometers</option>
				<option value="7">Miles</option>
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
				<option value="0">Centimeters</option>
				<option value="1">Inches</option>
				<option value="2">Feet</option>
				<option value="3">Yards</option>
				<option value="4">Meters</option>
				<option value="5">Chains</option>
				<option value="6">Kilometers</option>
				<option value="7">Miles</option>
			</select>		
		</p>
		<do type="accept" label="Convert">
			<go href="length.wmls#lengthConv($(leni), $(leno), $(leninp))" />
		</do> 	
    </card>
	<card id="Result" title="Length Equivalents Results">
    	<p> The result is :  $lenout</p>
 		<do type="accpet" label="Again">
  			<go href="#first" />
 		</do>		
 		<do type="options" label="Menu">
  			<go href="login.php#Menu"/>
 		</do>		
    </card>
</wml>
