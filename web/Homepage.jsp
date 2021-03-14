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
        <link
        href="https://fonts.googleapis.com/css?family=Josefin+Sans&display=swap"
        rel="stylesheet">
        <link rel="stylesheet" href="https://use.fontawesome.com/889f7144ce.css">
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/css/bootstrap.min.css" integrity="sha384-TX8t27EcRE3e/ihU7zmQxVncDAy5uIKz4rEkgIXeMed4M0jlfIDPvg6uqKI2xXr2" crossorigin="anonymous">
        <link rel="stylesheet" href="./index.css">
    </head>
    <body>
        <header>
            <div class="mainheader">
                <div class="logo">
                    <img src="./img/logo.png">
                </div>

                <nav>
                    <a href="Homepage.jsp">home</a>
                    <a href="#about">About Us</a>
                    <a href="DoctorsList.jsp">View Doctors</a>
                    <a href="SignUpPatient.jsp">Patient</a>
                    
                </nav>

                <div class="menubtn">
                    <a href="doctorRegistrationForm.jsp">Login</a>
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
                        Login
                    </button>
                </section>

                <section class="right-sec">
                    <figure>
                        <img src="./img/main.png">
                    </figure>
                </section>
            </main>
        </header> <br><br><br><br>

        <section class="section-padding about-section" id="about">
            <div class="container">
                <div class="row">
                    <div class="col-sm-6">
                        <div class="section-title"><br>
                            <div class="section-subtitle">About Us </div>
                            <h2 class="section-main-title">Aarogya - <strong style="color: #0B81E1"> Your Health, Our Priority </strong></h2>
    
                        </div>
    
                        <div class="about-item">
                            <p>
                                Aarogya lives with the mission of improving lives by mobilizing the caring power of communities to build a stronger and healthier India.
                            </p>
                            <p>
                                The obstacles faced by health care providers and patients in rural areas are vastly different from those in urban areas. Economic factors, cultural and social differences, educational shortcomings, lack of recognition by legislators and the sheer isolation of living in remote areas all conspire to create health care disparities and impede rural Indians in their struggle to lead normal healthy lives.
                                In rural India, where the number of Primary health care centres (PHCs) is limited, 8% of the centres do not have doctors or medical staff, 39% do not have lab technicians and 18% PHCs do not even have a pharmacist.
                            </p>
                            <p>
                                Some patients live in rural areas or small parts of town. It may take a considerable amount of time for these patients to receive medical treatment, especially in emergency cases.
                            </p>
                            <div class="hgt-20"></div>
                            <div class="home-button">
                                <button href="doctorRegistrationForm.jsp" class="aboutButton">Login</>
                            </div>
                        </div>
                    </div>
    
                    <div class="col-sm-4 col-sm-offset-2" id="aboutImage">
                        <div class="about-box">
                            <div class="box-overlay">
                                <a href="#" class="imagepopup">
                                    <img src="./img/about.png" height="400px" width="500px" alt="about">
                                </a>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </section><br><br><br><br>

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
