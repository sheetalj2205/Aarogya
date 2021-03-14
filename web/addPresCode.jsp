<%@page import="java.sql.DriverManager" %>
<%@page import="java.sql.PreparedStatement,java.sql.Connection" %>
<%@page import="java.sql.ResultSet" %>
<%
    String aadhar=request.getParameter("aadhar");
    String Pres=request.getParameter("prescription");
    
    Class.forName("com.mysql.jdbc.Driver");
    Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/aarogya","root","root");
PreparedStatement st1=con.prepareStatement("insert  into  prescription values(?,?)");
st1.setString(1,aadhar);
st1.setString(2,Pres);



st1.executeUpdate();
   con.close();
   %>
    <script>
        alert("Successfully Registered");
        </script>
        <jsp:forward page="viewPatients.jsp"/>
    
