<br>
<p align="center"><img src="./../logo.jpg"></p>	 
								<table border="1" align="center" width="80%">
									<tr>
										<th> Ip_Address </th>
										<th> link </th>
										<th> datetime </th>
										<th> language </th>
										<th> HUA </th>
										<th> page </th>										
									</tr>
							<?
								include ("./../connect.php");
								$sql = "select * from visitors";
								$result = mysql_query($sql);	
		
								while ($col=mysql_fetch_row($result))					
								{
									$Ip_Address = $col[1];	
									$link = $col[2];			
									$datetime = $col[3];	
									$language = $col[4];	
									$HUA = $col[5];												
									$page  = $col[6];							
							?>										
								<tr>
									<td><?=$Ip_Address?></td>
									<td><?=$link?></td>
									<td><?=$datetime?></td>
									<td><?=$language?></td>
									<td><?=$HUA?></td>
									<td><?=$page?></td>
								</tr>	
							<?
								}
							?>	
							</table>
										<a href="index.php">Index</a><br>		
<? include ("./about.php"); ?>