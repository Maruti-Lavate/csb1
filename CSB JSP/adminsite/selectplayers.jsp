<html>
	<head>
		<title>CRICKET SCORE BOARD</title>
		<link rel="stylesheet" type="text/css" href="style_scoreboard.css"/>
        
	</head>
<body>
	<div id="container">
		<div id="header">
			<h1>CRICKET SCORE BOARD</h1>
		</div>
		<div id="content">

				

			<div id="nav">
				<ul>
					<li id="active"><a class="selected" href="toss.jsp">BACK</a></li>
				
				<ul>
			</div>
			<div id="main">
                <form action="batting summery.jsp" method="post">
              <center> <br><table border="1">
                  <thead><b>SELECT PLAYERS</b></thead>
                   <tr>
                       <th>Striker:</th>
                       <td><select>
                           <option value=""></option>
                           <option value="">player1</option>
                           <option value="">player2</option>
                           </select></td>
                   </tr>
                   <tr>
                       <th>Non Striker</th>
                       <td><select>
                           <option value=""></option>
                           <option value="">player1</option>
                           <option value="">player2</option>
                           </select></td>
                   </tr>
                   <tr>
                       <th>Select Bowler:</th>
                       <td><select>
                           <option value=""></option>
                           <option value="">player1</option>
                           <option value="">player2</option>
                           </select></td>
                   </tr>
                  
                    
                </table>
                  <hr>
                    <button type="submit" name="submit" >Submit</button></center>
                </form>
			</div>
		</div>
		<div id="footer">
			Copyright &copy; 2016 maruti lavate.
		</div>
        </div>
<body>

</html>