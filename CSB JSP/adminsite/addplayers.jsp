<html>
	<head>
		<title>CRICKET SCORE BOARD</title>
		<link rel="stylesheet" type="text/css" href="style_addplayers.css"/>
        
	</head>
<body>

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
			<center><div id="main">
                <h2><strong>ADD PLAYERS</strong></h2>
				<form action="addplayers.jsp" method="post">
                   <!-- <lable><b>ID:</b></lable>
                    <input type="text" name="id" placeholder="Enter player id" required><br>  -->
                    <table>
                        <tr>
                        <th>FIRST NAME:</th>
                        <td><input type="text" name="fname" placeholder="Enter first name " required></td>
                        </tr>
                         <tr>
                        <th>LAST NAME:</th>
                        <td><input type="text" name="lname" placeholder="Enter last name" required><br></td>
                        </tr>
                         <tr>
                        <th>DATE OF BIRTH:</th>
                        <td><input type="DATE" name="dob" placeholder="Enter date of birth" required></td>
                        </tr>
                         <tr>
                        <th>PLAYER STYLE:</th>
                        <td> <select name="style">
                        <option value="left hand">Left Hand</option>
                        <option value="right hand">Right Hand</option>
                        <option value="all rounder">AllRounder</option>
                        <option value="other">Other</option>
                    </select></td>
                        </tr>
                         <tr>
                        <th>PLAYER TYPE:</th>
                        <td><select name="type">
                        <option value="batsman">Batsman</option>
                        <option value="bowler">Bowler</option>
                        <option value="wicketkeeper">Wicket Keeper</option>
                        
                        <option value="bat-keeper">Bat-keeper</option>
                        
                        <option value="all rounder">All Rounder</option>
                        
                    </select></td>
                        </tr>
                        
                        <tr>
                            <th>DEBUEDATE:</th>
                            <td><input type="DATE" name="debue" placeholder="Enter join date" required></td>
                        </tr>
                         <tr>
                            <th>TEAM NAME:</th>
                             <td><select name="team name">
    <%@ page import ="java.sql.*" %></%@>
 <%@ page import ="java.lang.*"%></%@>   

<%
int p_id=0;
   
String fname=request.getParameter("fname");
String lname=request.getParameter("lname");
String dob=request.getParameter("dob");
String style=request.getParameter("style");
String type=request.getParameter("type");
String debuedate=request.getParameter("debue");
String team_name=request.getParameter("team name");
try{
   

   
 
Class.forName("com.mysql.jdbc.Driver"); 
java.sql.Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/cricket_score","root",""); 
Statement st= con.createStatement(); 
   Statement st1= con.createStatement(); 
  ResultSet rs=st1.executeQuery("select t_team_name from teamsdb"); 
if(fname==null)
   {
   
   }else{
   
st.executeUpdate("INSERT into playerdb VALUES('"+p_id+"','"+fname+"','"+lname+"','"+dob+"','"+style+"','"+type+"','"+debuedate+"','"+team_name+"') ");
   
   }
   
//response.sendRedirect("addplayers.html");

                                while(rs.next()){
                                  team_name=rs.getString("t_team_name");
                                %></%>
                                 <option value="<%=team_name%>"><%=team_name%></option>
                             <% }//while 
                                //}else
                                }//try
                                catch(Exception e)
                                    {
                                out.print(e);
                                }
                                %></%>
                                  </select></td>
                        </tr>
                        
                    </table>
                  
                    <center> <button type="submit">Submit</button></center>
                    
                </form>
                </div></center>
		</div>
		<div id="footer">
			Copyright &copy; 2016 maruti lavate.
		</div>
        </div>
    </body>

</html>