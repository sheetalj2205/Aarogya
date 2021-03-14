<%-- 
    Document   : SignUpPatient
    Created on : 13 Mar, 2021, 11:18:15 PM
    Author     : HP
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="utf-8">
        <title>Aarogya | Patient Form</title>
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <link rel="stylesheet" href="index.css">
    </head>
    <body>
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
                <a href="doctorRegistrationForm.jsp">Sign Up</a>
            </div>
        </div>
        <!-- Register Form -->
        <div class="form-wrapper">
            <!-- Form-wrapper only for positioning -->
            <form action="loginCode.jsp" method="post" class="fcorn-register container">
                <p class="register-info">Login: </p>
                <div class="row">
                    
                    <select name="loginas">
                        <option  selected disabled>Login As</option>
                        <option>Doctor</option>
                        <option>Patient</option>
                        
                    </select>
                    
                </div>
                <div class="row">
                    <p class="col-md-6"><input type="text" name="aadhar" placeholder="Aadhar Number" required></p>
                    <p class="col-md-6"><input type="text" name="pass" placeholder="Password" required></p>
                </div>
                
<!--                <p><input type="text" name="aadhar" placeholder="Aadhar Card Number" required>
                    <span class="extern-type">We'll keep this private.</span>
                </p>-->
                
                <p class="register-submit"><input type="submit" name="submit" value="Login Now"></p>
                
                    
            </form><br>
        </div>

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
