<%@ page import ="java.sql.*" %>
 <%@ page import ="java.lang.*"%></%@>   

<%
String userid=request.getParameter("usr");


 
session.putValue("userid",userid); 
String pwd=request.getParameter("pwd");



 
Class.forName("com.mysql.jdbc.Driver"); 
java.sql.Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/cricket_score","root",""); 
Statement st= con.createStatement(); 

ResultSet rs=st.executeQuery("select * from admin where username='"+userid+"'"); 
while(rs.next()) 
{ 
	if(rs.getString("password").equals(pwd)) 
	{ 
		response.sendRedirect("home.html");

	} 
	else 
	{ 
		response.sendRedirect("logout.html"); 
	} 
} 


%>