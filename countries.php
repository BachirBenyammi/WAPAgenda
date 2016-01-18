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
	
    <card id='menu' title="Countrie's infos">
    	<p>
			Select the countrie's firt letter:<br />
			<select name='letter'>
			<?
				/* for ($i='A'; $i<='Y'; $i++)					
				{					
					print "<option value='$i'>$i</option>";
				}
				*/
			?> 
				<option value='A'>A</option>
				<option value='B'>B</option>
				<option value='C'>C</option>
				<option value='D'>D</option>
				<option value='E'>E</option>
				<option value='F'>F</option>
				<option value='G'>G</option>
				<option value='H'>H</option>
				<option value='I'>I</option>
				<option value='J'>J</option>
				<option value='K'>K</option>
				<option value='L'>L</option>
				<option value='M'>M</option>
				<option value='N'>N</option>
				<option value='O'>O</option>
				<option value='P'>P</option>
				<option value='Q'>Q</option>								
				<option value='R'>R</option>																																																							
				<option value='S'>S</option>
				<option value='T'>T</option>
				<option value='U'>U</option>
				<option value='V'>V</option>
				<option value='W'>W</option>																
				<option value='X'>X</option>
				<option value='Y'>Y</option>
				<option value='Z'>Z</option>												
			</select>
		</p>
		<do  type="accept" name="act" label="OK">
			<go href="countriesletter.php?letter=$(letter)" />
		</do> 			
		<do  type="options" name="opt" label="Menu">
			<go href="login.php#Menu" />
		</do> 		
	</card>
</wml>