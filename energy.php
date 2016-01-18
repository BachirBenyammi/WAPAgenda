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
	
    <card id='first' title="Energy/Work Equivalents">
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
				<option value="0">Joules</option>
				<option value="1">Kg-meters</option>
				<option value="2">Ft-lbs</option>
				<option value="3">Kw-hrs</option>
				<option value="4">Metric Hp-hrs</option>
				<option value="5">US Hp-hrs</option>
				<option value="6">Liter-atm</option>
				<option value="7">K-cal</option>
				<option value="8">Btu</option>
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
				<option value="0">Joules</option>
				<option value="1">Kg-meters</option>
				<option value="2">Ft-lbs</option>
				<option value="3">Kw-hrs</option>
				<option value="4">Metric Hp-hrs</option>
				<option value="5">US Hp-hrs</option>
				<option value="6">Liter-atm</option>
				<option value="7">K-cal</option>
				<option value="8">Btu</option>
			</select>		
		</p>
		<do type="accept" label="Convert">
			<go href="energy.wmls#energyConv($(leni), $(leno), $(leninp))" />
		</do> 	
    </card>
	<card id="Result" title="Energy/Work Equivalents Results">
    	<p> The result is :  $lenout</p>
 		<do type="accpet" label="Again">
  			<go href="#first" />
 		</do>		
 		<do type="options" label="Menu">
  			<go href="login.php#Menu"/>
 		</do>		
    </card>
</wml>
