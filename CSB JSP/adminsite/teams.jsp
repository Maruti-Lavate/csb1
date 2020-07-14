
<html>
	<head>
		<title>CRICKET SCORE BOARD</title>
		<link rel="stylesheet" type="text/css" href="style_teams.css"/>
        
	</head>
<body>
	<div id="container">
		<div id="header">
			<h1>CRICKET SCORE BOARD</h1>
		</div>
		<div id="content">

				

			<div id="nav">
				<ul>
					<li id="active"><a class="selected" href="index.html">BACK</a></li>
				
                </ul>
			</div>
			<div id="main">
                <form action="teams.jsp" method="post">
                <br><center> <input type="text" name="search" placeholder="search">
                    <button type="submit">search</button>
                    
                       
    
<%@ page import ="java.sql.*" %>
 <%@ page import ="java.lang.*"%></%@>   



<%
    String name=request.getParameter("search");
String teamsname="";
   String teamsaddress="";
   String teamowner="";
    String teamowneraddress="";
try{
 if(name==null){
   
   }else{
 %></%>
    
    <table border="1">
                            <tbody>
                                <tr id="col">
                                    <th> Team name</th>
                                    <th> Team Address</th>
                                    <th>Team Owner</th>
                                    <th> Team Owner Address</th>
                                
                                </tr>
    <%
Class.forName("com.mysql.jdbc.Driver"); 
java.sql.Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/cricket_score","root",""); 
Statement st= con.createStatement();
  ResultSet rs=st.executeQuery("select * from teamsdb where t_team_name like '"+name+"%'"); 
    
while(rs.next())
   { 
   teamsname=rs.getString("t_team_name");
   teamsaddress=rs.getString("t_address");
   teamowner=rs.getString("t_owner_name");
   teamowneraddress=rs.getString("t_owner_addr");
   %>
                                <tr id="datarow">
                                    <td><%=teamsname%></td>
                                    <td><%=teamsaddress%></td>
                                    <td><%=teamowner%></td>
                                    <td><%=teamowneraddress%></td>
                                    
                                </tr>
   
   
   <%
   
   }
  
}
}
   catch(Exception e)
   {
   out.print(e);
   }
%>
    
                  </tbody>
                        </table>
              
    
    </center>
    </form>
			</div>
		</div>
		<div id="footer">
			Copyright &copy; 2016 maruti lavate.
		</div>
        </div>
<body>

</html>
