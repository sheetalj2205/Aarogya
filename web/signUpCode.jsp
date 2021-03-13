<%@page import="java.sql.DriverManager" %>
<%@page import="java.sql.PreparedStatement,java.sql.Connection" %>
<%
    String Email=request.getParameter("email").toUpperCase();
    String pswrd=request.getParameter("psw").toUpperCase();
    String pswrepeat =request.getParameter("psw-repeat");
    
    
   Class.forName("com.mysql.jdbc.Driver");
Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/aarogya","root","root");
PreparedStatement st1=con.prepareStatement("insert  into  doctorInfo  values(?,?,?)");
st1.setString(1,Email);
st1.setString(2,pswrd);
st1.setString(3,pswrepeat);


st1.executeUpdate();
   con.close();
   response.sendRedirect("doctorRegistrationForm.jsp");
%>
