
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
        "select * from prescription");
    ResultSet   rs=st.executeQuery();//select query
    ArrayList list1=new ArrayList();
    ArrayList list2=new ArrayList();
    
     
  while(rs.next())
    {
          list1.add(rs.getString(1));
          list2.add(rs.getString(2));
          
          
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

    <head>
        <link
        href="https://fonts.googleapis.com/css?family=Josefin+Sans&display=swap"
        rel="stylesheet">
        <link rel="stylesheet" href="https://use.fontawesome.com/889f7144ce.css">
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/css/bootstrap.min.css" integrity="sha384-TX8t27EcRE3e/ihU7zmQxVncDAy5uIKz4rEkgIXeMed4M0jlfIDPvg6uqKI2xXr2" crossorigin="anonymous">
        <link rel="stylesheet" href="./index.css">
    </head>
    
    <body>
    
        <div class="mainheader">
            <div class="logo">
                <img src="./img/logo.png">
            </div>

            <nav>
                <a href="Homepage.jsp">home</a>
<!--                <a href="#about">About Us</a>-->
                <a href="DoctorsList.jsp">View Doctors</a>
                <a href="SignUpPatient.jsp">Patient</a>
                
            </nav>

            <div class="menubtn">
                <a href="Homepage.jsp">Log Out</a>
            </div>
        </div> <br><br><br><br><br>

        
        
        <div  style="width:90%;height: 300px;
background-color:white;opacity: 0.9;
border-radius: 20px;margin-left:60px">
<br><br>
<table width="100%" border="1" cellspacing="5" cellpadding="5">
                <tr bgcolor="#0B81E1">
                    <td>Aadhar Number</td>
                    <td>Prescription</td>
                    
                    
                    
                </tr>
                <%
                    for(int i=0;i<list1.size();i++)
                    {
                %>
                <tr>
                    <td><%=list1.get(i)%></td>
                    <td><%=list2.get(i)%></td>
                    
                </tr>
                <%}
                %>
            </table>

<br><br><br>

            
    
    </div>  
    <br><br><br>
    <footer>
        <div class="footerContainer">
            <div class="sec aboutUs">
                <h2>About Us</h2>
                <p>Aarogya lives with the mission of improving lives by mobilizing the caring power of communities to build a stronger and healthier India.
                    Some patients live in rural areas or small parts of town. It may take a considerable amount of time for these patients to receive medical treatment, especially in emergency cases.
                </p>
                <ul class="sci">
                    <li><a href="#"><i class="fa fa-facebook" aria-hidden="true"></i></a></li>
                    <li><a href="#"><i class="fa fa-twitter" aria-hidden="true"></i></a></li>
                    <li><a href="#"><i class="fa fa-instagram" aria-hidden="true"></i></a></li>
                    <li><a href="#"><i class="fa fa-youtube" aria-hidden="true"></i></a></li>
                </ul>
            </div>
            <div class="sec quickLinks">
                <h2>Quick Links</h2>
                <ul>
                    <li><a href="Homepage.jsp">Home</a></li>
                    <li><a href="#about">About Us</a></li>
                    <li><a href="DoctorsList.jsp">View Doctors</a></li>
                    <li><a href="SignUpPatient.jsp">Patient</a></li>
                    <li><a href="doctorRegistrationForm.jsp">Login</a></li>
                    
                </ul>
            </div>

            <div class="sec contact">
                <h2>Contact Us</h2>
                <ul class="info">
                    <li>
                        <span><i class="fa fa-map-marker" aria-hidden="true"></i></span>
                        <span>
                            Aarogya,<br>
                            Indore, 452001,<br>
                            Madhya Pradesh
                        </span>
                    </li>
                    <li>
                        <span><i class="fa fa-phone" aria-hidden="true"></i></span>
                        <a href="tel:1234567890">+91 12345 67890</a>
                    </li>
                    <li>
                        <span><i class="fa fa-envelope" aria-hidden="true"></i></span>
                        <a href="mailto:architj240@gmail.com">contact@aarogya.com</a>
                    </li>
                </ul>
            </div>

        </div>
    </footer>

    <div class="copyRight">
        <p>Copyright &copy; 2021 Aarogya - Your Health, Our Priority </p>
    </div>
        
    </body>
</html>

