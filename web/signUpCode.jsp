<%@page import="java.sql.DriverManager" %>
<%@page import="java.sql.PreparedStatement,java.sql.Connection" %>

<%--<%@page import="java.io.IOException"%>

<%@page import="java.util.*"%>

<%@page import = "com.google.gson.Gson"%>

<%@page import=" models.SendRequestBody"%>
<%@page import=" models.SendResponseBody"%>
<%@page import=" services.Courier"%>
<%@page import="services.SendService" %>--%>
<%
    
    String firstname=request.getParameter("firstName");
    String lastname=request.getParameter("lastName");
    String Email=request.getParameter("email");
    String Contact=request.getParameter("contact");
    String pswrd =request.getParameter("password");
    String Vpswrd =request.getParameter("verifyPassword");
    String Date=request.getParameter("date");
    String Month =request.getParameter("month");
    String Year=request.getParameter("year");
    String city =request.getParameter("cityName");
    String country =request.getParameter("countryName");
    String special =request.getParameter("specialization");
    String language =request.getParameter("lang");
    String college =request.getParameter("medicalCollege");
    String medicalid =request.getParameter("medicalID");
    String aadhar =request.getParameter("aadharCardNumber");
    String Facebook =request.getParameter("facebook");
    String linked =request.getParameter("linkedin");
    
    
    
    
    
    
   Class.forName("com.mysql.jdbc.Driver");
Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/aarogya","root","root");
PreparedStatement st1=con.prepareStatement("insert  into  doctorInfo  values(?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)");
st1.setString(1,firstname);
st1.setString(2,lastname);
st1.setString(3,Email);
st1.setString(4,Contact);
st1.setString(5,Date);
st1.setString(6,Month);
st1.setString(7,Year);
st1.setString(8,city);
st1.setString(9,country);
st1.setString(10,special);
st1.setString(11,language);
st1.setString(12,college);
st1.setString(13,medicalid);
st1.setString(14,aadhar);
st1.setString(15,Facebook);
st1.setString(16,linked);
st1.setString(17,pswrd);
st1.setString(18,Vpswrd);


st1.executeUpdate();
   con.close();
   
    
        
     
    
    %>
    <script>
        alert("Successfully Registered");
        </script>
        <jsp:forward page="Homepage.jsp"/>
