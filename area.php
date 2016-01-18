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
	
    <card id='first' title="Area Equivalents">
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
				<option value="0">Square Meters</option>
				<option value="1">Square Inches</option>
				<option value="2">Square Feet</option>
				<option value="3">Square Yards</option>
				<option value="4">Square Rods</option>
				<option value="5">Square Chains</option>
				<option value="6">Roods</option>
				<option value="7">Acres</option>
				<option value="8">Square Miles</option>
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
				<option value="0">Square Meters</option>
				<option value="1">Square Inches</option>
				<option value="2">Square Feet</option>
				<option value="3">Square Yards</option>
				<option value="4">Square Rods</option>
				<option value="5">Square Chains</option>
				<option value="6">Roods</option>
				<option value="7">Acres</option>
				<option value="8">Square Miles</option>
			</select>		
		</p>
		<do type="accept" label="Convert">
			<go href="area.wmls#areaConv($(leni), $(leno), $(leninp))" />
		</do> 			
    </card>
	<card id="Result" title="Area Equivalents Results">
    	<p> The result is :  $lenout</p>
 		<do type="accpet" label="Again">
  			<go href="#first" />
 		</do>		
 		<do type="options" label="Menu">
  			<go href="login.php#Menu"/>
 		</do>		
    </card>
</wml>
