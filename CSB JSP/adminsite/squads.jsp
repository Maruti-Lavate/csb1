<html>
	<head>
		<title>CRICKET SCORE BOARD</title>
		<link rel="stylesheet" type="text/css" href="pointstable.css"/>
        
	</head>
<body>
    
    
    
    
    
                           
<%@ page import ="java.sql.*" %>
 <%@ page import ="java.lang.*"%></%@>   

	

<%
    String team1="";
   String team2="";
   String name_team1="";
   String name_team2="";
   
try{
   
   
 
Class.forName("com.mysql.jdbc.Driver"); 
java.sql.Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/cricket_score","root",""); 
Statement st= con.createStatement();
   Statement st2= con.createStatement();
  ResultSet rs=st.executeQuery("select team1,team2 from playlist"); 
   Statement st1= con.createStatement();
  ResultSet rs1=st1.executeQuery("select team1,team2 from playlist"); 
 ResultSet rs2=st2.executeQuery("select name_team1,name_team2 from match_details");
   
   while(rs2.next())
   {
   
   name_team1=rs2.getString("name_team1");
   name_team2=rs2.getString("name_team2");
   
   }
   rs2.close();
 %>
    
	<div id="container">
		<div id="header">
			<h1>CRICKET SCORE BOARD</h1>
		</div>
		<div id="content">

				

			<div id="nav">
				<ul>
					
					<li><a  href="index.html">Back</a></li>
					
					<li style="float:right"><a class="child" href="">About</a></li>
					<li style="float:right"><a class="child" href="">Contact</a></li>
                </ul>
			</div>
			<div id="main">
                <center>
                    <div id="livescore">
                    <%=name_team1%></%>
                </div>
        
                
                    
                    <p>
                   <%
                      while(rs.next()){
                      
                      team1=rs.getString("team1");
                      
                    %></%>
                  
                  <%=team1%></%>,
                    
                    <%
                    }rs.close();
                    %></%>   
               
                    </p>
                <br><hr><div id="livescore">
                     <%=name_team2%></%>
                </div>
                    
                   <p> 
                    
                   <%
                      while(rs1.next()){
                      
                      team2=rs1.getString("team2");
                      
                    %></%>
                    
                        <%=team2%></%>,
                    
                    <%
                    }rs.close();
                    
                    }
   catch(Exception e)
   {
   out.print(e);
   }
%></%>   
                    </p>
                </center></div>
                
			
               
			</div>
		</div>
		<div id="footer">
			Copyright &copy; 2016 maruti lavate.
		</div>
        
    </body>

</html>