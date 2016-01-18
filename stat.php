<?
		$page = getenv("REQUEST_URI");
		if (empty($page)) 
			$page = "Unknoun";			
		$link = getenv("HTTP_REFERER");
		if (empty($link)) 
			$link = "Unknoun";			
		$Language = getenv("HTTP_ACCEPT_LANGUAGE");
		if (empty($Language)) 							
			$Language = "Unknoun";			
		$IpAddress = getenv("REMOTE_ADDR");		
		if (empty($IpAddress))
			$IpAddress = getenv("HTTP_X_FORWARDED_FOR");
		if (empty($IpAddress))
			$IpAddress = getenv("SERVER_ADDR");			
		if (empty($IpAddress)) 
			$IpAddress = "Unknoun";
			
		$HUA = getenv("HTTP_USER_AGENT");

	include ("./connect.php");
		$sql = "insert into visitors (page, link, Language, Ip_Address, HUA, datetime) values ('".$page."', '".$link."', '".$Language."', '".$IpAddress."', '".$HUA."', now())";				
		$result = mysql_query($sql);
?>