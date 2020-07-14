<%@ page import ="java.sql.*" %>
 <%@ page import ="java.lang.*"%></%@>   

<%
String teamname=request.getParameter("teamname");
String teamaddress=request.getParameter("teamaddress");
String teamowner=request.getParameter("teamowner");
String teamowneraddress=request.getParameter("teamowneraddress");


 
//session.putValue("userid",userid); 
//String pwd=request.getParameter("pwd");


try{
   
   
 
Class.forName("com.mysql.jdbc.Driver"); 
java.sql.Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/cricket_score","root",""); 
Statement st= con.createStatement(); 
 

st.executeUpdate("INSERT into teamsdb VALUES('"+teamname+"','"+teamaddress+"','"+teamowner+"','"+teamowneraddress+"') ");
   

response.sendRedirect("addteams.html");
}
   catch(Exception e)
   {
   out.print(e);
   }
%>