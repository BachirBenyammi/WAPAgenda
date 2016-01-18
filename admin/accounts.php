<br>
<p align="center"><img src="./../logo.jpg"></p>	 
								<table border="1" align="center" width="80%">
									<tr>
										<th> account </th>
										<th> name </th>
										<th> email </th>
										<th> datetime </th>
									</tr>
							<?
	include ("./../connect.php");
								$sql = "select account, name, email, datetime from accounts";				
								$result = mysql_query($sql);	
		
								while ($col=mysql_fetch_row($result))					
								{
									$account = $col[0];		
									$name = $col[1];
									$email = $col[2];
									$datetime = $col[3];									
							?>										
								<tr>
									<td><?=$account?></td>
									<td><?=$name?></td>
									<td><?=$email?></td>
									<td><?=$datetime?></td>
								</tr>	
							<?
								}
							?>	
							</table>
										<a href="index.php">Index</a><br>		
<? include ("./about.php"); ?>