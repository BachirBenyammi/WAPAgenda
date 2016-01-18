<br>
<p align="center"><img src="./../logo.jpg"></p>	 
								<table border="1" align="center" width="80%">
									<tr>
										<th> code </th>
										<th> title </th>
										<th> capital </th>
										<th> region </th>
										<th> currency </th>
										<th> area </th>
										<th> population </th>
										<th> density </th>
										<th> currency code </th>										
									</tr>
							<?
	include ("./../connect.php");
								$sql = "select * from countries, currency, regions where (countries.currency = currency.code) and (countries.region = regions.nu)";
								$result = mysql_query($sql);	
		
								while ($col=mysql_fetch_row($result))					
								{
									$Code = $col[0];	
									$Country = $col[1];			
									$Capital = $col[2];	
									$Region = $col[11];	
									$Currency = $col[8];												
	
									$Area = $col[5];				
									$Population = $col[6];			
									$Density = $col[7];			
									$CurrencyCode = $col[9];				
							?>										
								<tr>
									<td><?=$Code?></td>
									<td><?=$Country?></td>
									<td><?=$Capital?></td>
									<td><?=$Region?></td>
									<td><?=$CurrencyCode?></td>
									<td><?=$Area?></td>
									<td><?=$Population?></td>
									<td><?=$Density?></td>
									<td><?=$Currency?></td>
								</tr>	
							<?
								}
							?>	
							</table>
										<a href="index.php">Index</a><br>		
<? include ("./about.php"); ?>