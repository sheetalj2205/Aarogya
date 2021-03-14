<%-- 
    Document   : DoctorsList
    Created on : 14 Mar, 2021, 12:16:27 PM
    Author     : HP
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%@page import="java.sql.DriverManager" %>
<%@page import="java.sql.PreparedStatement,java.sql.Connection" %>
<%@page import="java.sql.ResultSet" %>
<%@page import="java.util.ArrayList" %>

<%
Class.forName("com.mysql.jdbc.Driver");
Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/aarogya","root","root");
PreparedStatement st=con.prepareStatement(
        "select * from doctorinfo");
    ResultSet   rs=st.executeQuery();//select query
    ArrayList list1=new ArrayList();
    ArrayList list2=new ArrayList();
    ArrayList list3=new ArrayList();
    ArrayList list4=new ArrayList();
    ArrayList list5=new ArrayList();
    ArrayList list6=new ArrayList();
    ArrayList list7=new ArrayList();
     
  while(rs.next())
    {
          list1.add(rs.getString(1));
          list2.add(rs.getString(2));
          list3.add(rs.getString(3));
          list4.add(rs.getString(4));
          list5.add(rs.getString(8));
          list6.add(rs.getString(9));
          list7.add(rs.getString(10));
          
    }
    
%>

<html>
    <style>
        .titletheme
        {
            font-size:40px;
            color:red;
            font-family: sans-serif;
        }    
        .tdtheme{
            width:20px;
            height:50px;
            border-radius: 20px;
            font-weight: bold;
            font-family: arial;
            background-color: #A0522D;
            color:white;
            font-size: 20px;
        }
        .tdtheme:hover{
            background-color:white;
            color:black;
        }
/*        a1{
            text-decoration: none;
            color:white;
        }
        a2{
            text-decoration: none;
            color:black;
        }*/
        a{
            text-decoration: none;
            color:white;
        }
/*        body{
            background-repeat: no-repeat;
        }*/
    </style>
    
    <body>
    

        
        
        <div  style="width:90%;height: 900px;
background-color:white;opacity: 0.9;
border-radius: 20px;margin-left:60px">
<br><br>
<table width="100%" border="1" cellspacing="5" cellpadding="5">
                <tr bgcolor="pink">
                    <td>First Name</td>
                    <td>Last Name</td>
                    <td>Email</td>
                    <td>Contact Number</td>
                    <td>City</td>
                    <td>Country</td>
                    <td>Specialization</td>
                    
                    
                </tr>
                <%
                    for(int i=0;i<list1.size();i++)
                    {
                %>
                <tr>
                    <td><%=list1.get(i)%></td>
                    <td><%=list2.get(i)%></td>
                    <td><%=list3.get(i)%></td>
                    <td><%=list4.get(i)%></td>
                    <td><%=list5.get(i)%></td>
                    <td><%=list6.get(i)%></td>
                    <td><%=list7.get(i)%></td>
                </tr>
                <%}
                %>
            </table>

<br><br><br>

            
    
    </div>  
        
    </body>
</html>

