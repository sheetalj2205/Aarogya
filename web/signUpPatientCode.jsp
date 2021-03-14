<%@page import="java.sql.DriverManager" %>
<%@page import="java.sql.PreparedStatement,java.sql.Connection" %>
<%
    String firstname=request.getParameter("firstName");
    String lastname=request.getParameter("lastName");
    String Aadhar=request.getParameter("aadhar");
    String Contact=request.getParameter("contact");
    String date =request.getParameter("date");
    String month =request.getParameter("month");
    String year=request.getParameter("year");
    String district =request.getParameter("District");
    String city=request.getParameter("city");
    String special =request.getParameter("specialityReq");
    String lang =request.getParameter("lang");
    String disease =request.getParameter("disease");
    String bloodgroup =request.getParameter("bloodGroup");
    String bloodpressure =request.getParameter("bloodPressure");
    String sugarlevel =request.getParameter("sugarLevel");
    String bloodlevel =request.getParameter("bloodLevel");
    String other =request.getParameter("other");
    String pswrd =request.getParameter("password");
    String vPswrd =request.getParameter("verifypassword");
    
    
    
    
    
    
   Class.forName("com.mysql.jdbc.Driver");
Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/aarogya","root","root");
PreparedStatement st1=con.prepareStatement("insert  into  patientinfo  values(?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)");
st1.setString(1,firstname);
st1.setString(2,lastname);
st1.setString(3,Aadhar);
st1.setString(4,Contact);
st1.setString(5,date);
st1.setString(6,month);
st1.setString(7,year);
st1.setString(8,district);
st1.setString(9,city);
st1.setString(10,special);
st1.setString(11,lang);
st1.setString(12,disease);
st1.setString(13,bloodgroup);
st1.setString(14,bloodpressure);
st1.setString(15,sugarlevel);
st1.setString(16,bloodlevel);
st1.setString(17,other);
st1.setString(18,pswrd);
st1.setString(19,vPswrd);


st1.executeUpdate();
   con.close();
   %>
    <script>
        alert("Successfully Registered");
        </script>
        <jsp:forward page="Homepage.jsp"/>
    
