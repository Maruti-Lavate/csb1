<html>
	<head>
		<title>CRICKET SCORE BOARD</title>
		<link rel="stylesheet" type="text/css" href="style_scoreboard.css"/>
        
	</head>
<body>
    
                          
                       
    <%@ page import ="java.sql.*" %></%@>
 <%@ page import ="java.lang.*"%></%@>   

	

<%
    String team1="";
   String team2="";
   String t1player1=request.getParameter("t1player1");
   String t1player2=request.getParameter("t1player2");
   String t1player3=request.getParameter("t1player3");
   String t1player4=request.getParameter("t1player4");
   String t1player5=request.getParameter("t1player5");
   String t1player6=request.getParameter("t1player6");
   String t1player7=request.getParameter("t1player7");
   String t1player8=request.getParameter("t1player8");
   String t1player9=request.getParameter("t1player9");
   String t1player10=request.getParameter("t1player10");
   String t1player11=request.getParameter("t1player11");
   
    String t2player1=request.getParameter("t2player1");
   String t2player2=request.getParameter("t2player2");
   String t2player3=request.getParameter("t2player3");
   String t2player4=request.getParameter("t2player4");
   String t2player5=request.getParameter("t2player5");
   String t2player6=request.getParameter("t2player6");
   String t2player7=request.getParameter("t2player7");
   String t2player8=request.getParameter("t2player8");
   String t2player9=request.getParameter("t2player9");
   String t2player10=request.getParameter("t2player10");
   String t2player11=request.getParameter("t2player11");
   
try{
Class.forName("com.mysql.jdbc.Driver"); 
java.sql.Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/cricket_score","root",""); 
Statement st= con.createStatement();
   Statement st1= con.createStatement();
  ResultSet rs=st.executeQuery("select name_team1,name_team2 from match_details");
  
   
   while(rs.next())
   {
   
   team1=rs.getString("name_team1");
   team2=rs.getString("name_team2");
   
   }
   
   
   if(t1player11==null || t2player11==null)
   {
   
   }else{
   st1.executeUpdate("Update playlist set team1='"+t1player1+"', team2='"+t2player1+"' where no=1 ");
   st1.executeUpdate("Update playlist set team1='"+t1player2+"',team2='"+t2player2+"' where no=2");
   st1.executeUpdate("Update playlist set team1='"+t1player3+"',team2='"+t2player3+"' where no=3");
   st1.executeUpdate("Update playlist set team1='"+t1player4+"',team2='"+t2player4+"' where no=4");
   st1.executeUpdate("Update playlist set team1='"+t1player5+"',team2='"+t2player5+"' where no=5");
   st1.executeUpdate("Update playlist set team1='"+t1player6+"',team2='"+t2player6+"' where no=6");
   st1.executeUpdate("Update playlist set team1='"+t1player7+"',team2='"+t2player7+"' where no=7");
   st1.executeUpdate("Update playlist set team1='"+t1player8+"',team2='"+t2player8+"' where no=8");
   st1.executeUpdate("Update playlist set team1='"+t1player9+"',team2='"+t2player9+"' where no=9");
   st1.executeUpdate("Update playlist set team1='"+t1player10+"',team2='"+t2player10+"' where no=10");
   st1.executeUpdate("Update playlist set team1='"+t1player11+"',team2='"+t2player11+"' where no=11");
   
response.sendRedirect("toss.jsp");
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
					<li id="active"><a class="selected" href="scoreboard.jsp">BACK</a></li>
				
                </ul>
			</div>
			<div id="main">
                <form action="playlist.jsp" method="post">
              <center> <br><table border="1" >
                  <thead><b>PLAYLIST</b></thead>
                   <tr id="col">
                       <th><%=team1%></%></th>
                       <th><%=team2%></%></th>
                  </tr>
                  <tr>
                      
                      
                      <td><input type="text" name="t1player1" placeholder="player1" required></td>
                      <td><input type="text" name="t2player1" placeholder="plaeyer1" required></td>
                  </tr>
                  <tr>
                     
                      <td><input type="text" name="t1player2" placeholder="player2" required></td>
                       
                        <td><input type="text" name="t2player2" placeholder="player2" required></td>
                  </tr>
                  <tr>
                       <td><input type="text" name="t1player3" placeholder="player3" required></td>
                      <td><input type="text" name="t2player3" placeholder="player3" required></td>
                     
                  </tr>
                  <tr>
                       <td><input type="text" name="t1player4" placeholder="player4" required></td>
                      <td><input type="text" name="t2player4" placeholder="player4" required></td>
                     
                  </tr>
                  
                  <tr>
                      <td><input type="text" name="t2player5" placeholder="player5" required></td>
                      <td><input type="text" name="t1player5" placeholder="player5" required></td>
                      
                      
                  </tr>
                  <tr>
                      <td><input type="text" name="t1player6" placeholder="player6" required></td>
                      <td><input type="text" name="t2player6" placeholder="player6" required></td>
                     
                  </tr>
                  <tr>
                      
                    <td><input type="text" name="t1player7" placeholder="player7" required></td>
                      <td><input type="text" name="t2player7" placeholder="player7" required></td>
                  </tr>
                  <tr>
                      
                      <td><input type="text" name="t1player8" placeholder="player8" required></td>
                      <td><input type="text" name="t2player8" placeholder="player8" required></td>
                  </tr>
                  <tr>
                      
                      <td><input type="text" name="t1player9" placeholder="player9" required></td>
                      <td><input type="text" name="t2player9" placeholder="player9" required></td>
                  </tr>
                  <tr>
                        <td><input type="text" name="t1player10" placeholder="player10" required></td>
                      <td><input type="text" name="t2player10" placeholder="player10" required></td>
                    
                  </tr>
                  <tr>
                      <td><input type="text" name="t1player11" placeholder="player11" required></td>
                      <td><input type="text" name="t2player11" placeholder="player11" required></td>
                      
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