<html>
	<head>
		<title>CRICKET SCORE BOARD</title>
		<link rel="stylesheet" type="text/css" href="style_toss.css"/>
        
	</head>
<body>
    
                         
    <%@ page import ="java.sql.*" %></%@>
 <%@ page import ="java.lang.*"%></%@>   

	

<%
    String team1="";
   String team2="";
   String tosswin=request.getParameter("tosswin");
   String choose=request.getParameter("select");
   String totalovers=request.getParameter("totalovers");
   
   
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
   
    if(tosswin==null)
   {
   
   }else{
   st1.executeUpdate("update toss set toss_win='"+tosswin+"', choose='"+choose+"', total_overs='"+totalovers+"' where no=0 ");
   
  response.sendRedirect("selectplayers.jsp");
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
					<li id="active"><a class="selected" href="playlist.jsp">BACK</a></li>
				
                </ul>
			</div>
			<div id="main">
                <form action="toss.jsp" method="post">
              <center> <hr>
               <select name="tosswin">
                        <option value=null>Select</option>
                        <option value="<%=team1%>"><%=team1%></%></option>
                        <option value="<%=team2%>"><%=team2%></%></option>
                    </select> Win the toss and Choose to
                     <select name="select">
                         <option value="">Select</option>
                        <option value="bat">BAT</option>
                        <option value="balling">BOWLING</option>
                    </select>
                  <hr>
                  NUMBER OF OVERS to be played is <input type="number" name="totalovers" min="1" max="50" value="0">
                  <hr>
                  
                    <button type="submit" name="submit" >Submit</button></center>
                </form>
			</div>
		</div>
            </div>
       
<body>

</html>