<html>
	<head>
		<title>CRICKET SCORE BOARD</title>
		<link rel="stylesheet" type="text/css" href="style_scoreboard.css"/>
        
	</head>
<body>
    
    
    <%@ page import ="java.sql.*" %></%@>
 <%@ page import ="java.lang.*"%></%@>   

<%
   String matchno=request.getParameter("match no");
   String team1=request.getParameter("team1");
   String team2=request.getParameter("team2");
   String date=request.getParameter("date");
   try{
   
if(team1==null && team2==null)
   {
   
   }else{
   
 
Class.forName("com.mysql.jdbc.Driver"); 
java.sql.Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/cricket_score","root",""); 
Statement st= con.createStatement(); 
 

st.executeUpdate("INSERT into match_details VALUES('"+matchno+"','"+team1+"','"+team2+"','"+date+"') ");
response.sendRedirect("playlist.jsp");
}
   }
   catch(Exception e)
   {
   out.print(e);
   }
   
   %></%>
	<div id="container">
		<div id="header">
			<h1>CRICKET SCORE BOARD</h1>
		</div>
		<div id="content">

				

			<div id="nav">
				<ul>
					<li id="active"><a class="selected" href="home.html">BACK</a></li>
				
                </ul>
			</div>
			<div id="main">
                <form action="scoreboard.jsp" method="post">
              <center> <br><table border="1">
                  <thead><b>MATCH DETAILS</b></thead>
                   <tr>
                       <th>MATCH NO:</th>
                       <td><input type="number" name="match no" min="1" placeholder="not requered"></td>
                   </tr>
                   <tr>
                       <th>NAME OF TEAM1</th>
                       <td><input type="text" name="team1" placeholder="name of team1" required></td>
                   </tr>
                   <tr>
                       <th>NAME OF TEAM2</th>
                       <td><input type="text" name="team2" placeholder="name of team2" required></td>
                   </tr>
                   <tr>
                       <th>DATE</th>
                       <td><input type="date" name="date" placeholder="date"></td>
                       
                   </tr>
                    
                </table>
                    <button type="submit" name="submit" >Submit</button></center>
                </form>
			</div>
		</div>
		<div id="footer">
			Copyright &copy; 2016 maruti lavate.
		</div>
        </div>
        </body>

</html>