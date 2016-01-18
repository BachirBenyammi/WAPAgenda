<br>
<p align="center"><img src="./../logo.jpg"></p>	 
								<table border="1" align="center" width="80%">
									<tr>
										<th> email </th>
										<th> subject </th>
										<th> message </th>
										<th> datetime </th>							
									</tr>
							<?
	include ("./../connect.php");
								$sql = "select * from contacts";
								$result = mysql_query($sql);	
		
								while ($col=mysql_fetch_row($result))					
								{
									$email = $col[1];	
									$subject = $col[2];			
									$message = $col[3];	
									$datetime = $col[4];		
							?>										
								<tr>
									<td><?=$email?></td>
									<td><?=$subject?></td>
									<td><?=$message?></td>
									<td><?=$datetime?></td>
								</tr>	
							<?
								}
							?>	
							</table>
										<a href="index.php">Index</a><br>		
<? include ("./about.php"); ?>