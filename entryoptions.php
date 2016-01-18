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
if (isset($num))
{
?>
	<card id="Options" title="Options">
		<p align="left">
			<a href="dial.php?num=<?print $num?>">Call</a><br />
			<a href=".php">Edit</a><br />
			<a href=".php">Delete</a><br />
			<a href=".php">Copy</a><br />
		</p>
		<do type="options" name="opt" label="Back">
			<prev/>
		</do>		
	</card>
<?
}
?>
	</wml>