<%
session.removeAttribute("userid");
session.removeAttribute("password");
session.invalidate();
response.sendRedirect("index.html");
%>