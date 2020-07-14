

<html>
	<head>
		<title>CRICKET SCORE BOARD</title>
		<link rel="stylesheet" type="text/css" href="style_players.css"/>
        
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
                <form action="players.jsp" method="post">
                    <center>
                         <input type="text" name="search1" placeholder="      ...First name">
            
                <button type="submit">search</button> <br>
                        
                       
<%@ page import ="java.sql.*" %>
 <%@ page import ="java.lang.*"%></%@>   

	

<%
    String fname=request.getParameter("search1");
   String lname="";
   int p_id=0;
   String dob="";
    String style="";
   String type="";
   String debue="";
   String team_name="";
try{
   if(fname==null){}
   else{
   
 
Class.forName("com.mysql.jdbc.Driver"); 
java.sql.Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/cricket_score","root",""); 
Statement st= con.createStatement();
  ResultSet rs=st.executeQuery("select * from playerdb where p_fname like '"+fname+"%' or p_lname like '"+fname+"%' "); 
 %>
     <table border="1">
                            <tbody>
                                <tr id="col">
                                    <th> Name</th>
                                    <th> Last name</th>
                                    <th> Date of Birth</th>
                                    <th> Style</th>
                                    <th> Type</th>
                                    <th> Tebue date</th>
                                    <th>Team Name</th>
                                </tr>
<%
while(rs.next())
   {
   p_id=rs.getInt("p_id");
   fname=rs.getString("p_fname");
   lname=rs.getString("p_lname");
   dob=rs.getString("p_dob");
   style=rs.getString("p_style");
   type=rs.getString("p_type");
   debue=rs.getString("p_debuete");
   team_name=rs.getString("team_name");
    %>
   
                                <tr id="datarow">
                                    <td> <%=fname%></td>
                                    <td> <%=lname%></td>
                                    <td><%=dob%></td>
                                    <td><%=style%></td>
                                    <td> <%=type%></td>
                                    <td><%=debue%></td>
                                    <td><%=team_name%></td>
                                </tr>
                            
                            
                         
 <%  }
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
    </body>
            
</html>