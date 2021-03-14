<%-- 
    Document   : Homepage
    Created on : 13 Mar, 2021, 11:19:25 PM
    Author     : HP
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.ResultSet"%>

<!DOCTYPE html>
<html>
    <head>
        <title></title>
        <link rel="stylesheet" href="index.css">
        <link
            href="https://fonts.googleapis.com/css?family=Josefin+Sans&display=swap"
            rel="stylesheet">
    </head>
    <body>
        <header>
            <div class="mainheader">
                <div class="logo">
                    <img src="images/logo.png">
                </div>

                <nav>
                    <a href="#">home</a>
                    <a href="doctorRegistrationForm.jsp">Doctor</a>
                    <a href="SignUpPatient.jsp">Patient</a>
                    
                </nav>

                <div class="menubtn">
                    <button>Apply</button>
                </div>
            </div>

            <main>
                <section class="left-sec">
                    <h2>
                        We Are Here For Your Care</h2>
                    <h1>
                        We The Best Doctors</h1>
                    <p>We are here for your care 24/7. Any help just call us.</p>
                    <button>
                        Apply
                    </button>
                </section>

                <section class="right-sec">
                    <figure>
                        <img src="./img/main.png">
                    </figure>
                </section>
            </main>
        </header>
    </body>
</html>
