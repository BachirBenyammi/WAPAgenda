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
		<do type="options" name="act" label="Back">
			<prev/>
		</do>
	</template>
	<card id="Contacts" title="Contacts">
		<p align="center">
			<br />
			<img src="book.bmp" alt="Contacts"/>
			<img src="users.bmp" alt="Contacts"/>
		</p>
		<p align="center"><b>Contacts</b></p>
		<do type="accept" name="ok" label="OK">
			<go href="#Menu" />
		</do>
	</card>
	<card id="Menu" title="Contacts">
		<p align="left">
			<select>
				<option onpick="#Search">Search</option>
				<option onpick="#Add">Add contact</option>
				<option onpick="#Edit">Edit</option>
				<option onpick="#Delete">Delete</option>
				<option onpick="#Phone">Phone</option>
				<option onpick="#Emai">Email</option>
			</select>
		</p>
		<do type="options" name="act" label="Menu">
			<go href="index.wml#Menu" />
		</do>
	</card>
	<card id="Search" title="Search">
		<p align="center">
			<b>Contact Name:</b> <input name="name" title="Contact Name" />
		</p>
		<do type="accept" name="act" label="Search">
			<go href="Search.php">
				<postfield name="name" value="$(name)" />
			</go>
		</do>
	</card>	
</wml>
