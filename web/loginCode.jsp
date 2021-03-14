<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.DriverManager" %>
<%@page import="java.sql.PreparedStatement,java.sql.Connection" %>

<%
    String aadharno=request.getParameter("aadhar");
    String password=request.getParameter("pass");
    String user = request.getParameter("loginas");
    Class.forName("com.mysql.jdbc.Driver");
    Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/aarogya","root","root");
if(user.equals("Doctor")){
    
    PreparedStatement st=con.prepareStatement("select * from doctorinfo where aadharCardNumber=? and password=?");
    st.setString(1,aadharno);
    st.setString(2,password);
    
    if(rs.next())
    {
    Cookie ck=new Cookie("websitename",id);
    ck.setMaxAge(1000000);//time in seconds
    response.addCookie(ck);
        session.setAttribute("CALL", id);
          response.sendRedirect("AdminMenu.jsp");
    }
    else
    {%>
    <script>
        alert("Invalid id/password");
        </script>
        <jsp:forward page="homepage.jsp"/>
    <%}


}
    

%>