<? session_start(); ?>
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
	
	<template>
		<do type="options" name="opt" label="Back">
			<prev/>
		</do>
	</template>

<?
	include ("./connect.php");
	$sql = "select * from contacts where name like '%".$name."%'";
	$result = mysql_query($sql);
	$nbr = mysql_num_rows($result);
	
	if ($nbr == 0)
	{
?>
	<card id="NoMarches" title="NoMarches">
		<onevent type="onenterforward">
    		<refresh>
  				<setvar name="name" value=""/>
		    </refresh>
	   </onevent>		
		<p align="left">
			No matches, try again !!
		</p>
		<do type="accept" name="act" label="Back">
			<go href="contacts.php#Search" />
		</do>
		<do type="options" name="opt" label="">
			<noop />
		</do>
	</card>
<?
	}
	else
	{
?>

	<card id="List" title="List">
		<p align="left">
			<?
				while ($data = mysql_fetch_array($result))
				{
			?>
				<a href="entryoptions.php?num=<?print $data['nu_contact']?>"><? print $data['name'];?></a> <br />
			<?
				}
			?>
			
		</p>
		<do type="options" name="opt" label="">
			<noop />
		</do>		
	</card>
<?
	}
?>
	</wml>