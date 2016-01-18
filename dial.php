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
<?
	if (isset($num))
	{
		include ("./connect.php");
		$sql = "select telephone from contacts where nu_contact = ".$num;
		$result = mysql_query($sql);
		$num = mysql_num_rows($result);
		if ($col=mysql_fetch_row($result))					
			$num = $col[0];	
	}
	else
		$num = 0;
?>		
    <card>
		<onevent type="onenterforward">
    		<refresh>
  				<setvar name="number" value=""/>
		    </refresh>
	   </onevent>		
    	<p>
		    Enter phone number: 
			<input  name="number" value="<? print $num;?>" format="NNNNNNNNN*N"/>
		</p>
		<do type="accept" label="Call">
		    <go href="wtai://wp/mc;$(number)"/>
		</do> 
		<do type="options" label="Search">
		    <go href="contacts.php#Search">
				<setvar name="number" value="" />
			</go>
		</do> 		
    </card>
</wml>
