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
					<li id="active"><a class="selected" href="selectplayers.jsp">BACK</a></li>
				
                </ul>
			</div>
			<div id="main">
                <form action="batting summery.jsp" method="post">
                   <center> <h2>BATTING SUMMERY</h2>
                    </center>
                    
                    <hr>
                   <center><h4>INDIA</h4></center> 
                    <hr>
              <center> <br><table border="3">
                        
                   <tr id="col">
                       <th>BATSMAN</th>
                       <th>STATUS</th>
                        <th>RUNS</th>
                        <th>BALLS</th>
                        <th>FOUR</th>
                        <th>SIX</th>
                        <th>SR</th>
                       
                   </tr>
                   <tr>
                      
                       <td></td>
                       <td></td>
                       <td></td>
                       <td></td>
                       <td></td>
                       <td></td>
                       <td></td>
                   </tr>
                   <tr>
                        <td></td>
                       <td></td>
                       <td></td>
                       <td></td>
                       <td></td>
                       <td></td>
                       <td></td>
                  </tr>
                  
                </table>
                  <table border="1">
                      <tr>
                          <th>Extra:0</th><th>Overs:0.0 </th><th>Score:0/0 </th>
                      </tr>
                  </table>
                  <hr>
                  <h5>Enter ball by ball staus</h5>
                    Type of runs<select name="type of runs">
                    <option value="">Select</option>
                    <option value="extra">Extra</option>
                    <option value="batted">Batted</option>
                    <option value="extra+batted">Extra+batted</option>
                    <option value="out" >Out</option>
                    </select>
                    <br><hr>
                   Runs <select name="runs">
                    <option value="0">0</option>
                    <option value="1">1</option>
                    <option value="2">2</option>
                    <option value="3">3</option>
                    <option value="4">4</option>
                    <option value="5">5</option>
                    <option value="6">6</option>
                    <option value="7">7</option>
                    <option value="8">8</option>
                    <option value="9">9</option>
                    <option value="10">10</option>
                    </select>
                    <br><hr>
                    Select if Runs is Extra<select name="how_extra_runs">
                  <option value="noextra">No Extra</option>
                    <option value="wide">Wide</option>
                  <option value="wide+by">Wide+By</option>
                  <option value="noball">No Ball</option>
                  <option value="no+lby">No ball+Lby</option>
                  <option value="no+by">No+By</option>
                  <option value="no+overthrow">No+Overthorow</option>
                  <option value="legby">Legby</option>
                  <option value="by">Ly</option>
                  <option value="overthrow">Overthrow</option>
                  </select>
                  <hr>Select if Batsman is out:<select name="how_out">
                  <option value="notout">Not Out</option>
                  <option value="catchout">Catch Out</option>
                  <option value="runout">Run Out</option>
                  <option value="LBW">LBW Out</option>
                  <option value="stampout">Stamp Out</option>
                  <option value="hit">Hit</option>
                  <option value="wicket">Wicket</option>
                  <option value="retiredhuert">Retired Huert</option>
                  <option value="abstractfielder">Abtracting the Fielder</option>
                  <option value="hittingtwice">Hitting Ball Twice</option>
                  <option value="handeledball">Handeled the ball</option>
                  <option value="timeout">Time Out</option>
                  </select>
                  </center>
                </form>
			</div>
		</div>
		<div id="footer">
			Copyright &copy; 2016 maruti lavate.
		</div>
        </div>
    </body>

</html>