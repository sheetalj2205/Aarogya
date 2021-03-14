<%-- 
    Document   : doctorRegistrationForm
    Created on : 11 Mar, 2021, 4:19:09 PM
    Author     : HP
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.ResultSet"%>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="utf-8">
        <title>Aarogya | Doctor Form</title>
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
                <a href="#about">About Us</a>
                <a href="DoctorsList.jsp">View Doctors</a>
                <a href="SignUpPatient.jsp">Patient</a>
                
            </nav>

            <div class="menubtn">
                <a href="doctorRegistrationForm.jsp">Sign Up</a>
            </div>
        </div> <br><br><br><br><br>
        <!-- Register Form -->
        <div class="form-wrapper">
            
            <!-- Form-wrapper only for positioning -->
            <form style="width:80%" action="signUpCode.jsp" method="post" class="fcorn-register container">
                <p class="register-info">Note: All fields are required.</p>
                <div class="row">
                    <p class="col-md-6"><input type="text" name="firstName" placeholder="First Name" required></p>
                    <p class="col-md-6"><input type="text" name="lastName" placeholder="Last Name" required></p>
                </div>
                <div class="row">
                    <p class="col-md-6"><input type="text" name="email" placeholder="Email" required></p>
                    <p class="col-md-6"><input type="text" name="contact" placeholder="Contact Number" required></p>
                </div>
<!--                <p><input type="email" name="email" placeholder="Email Address" required>-->
<!--                    <span class="extern-type">We'll keep this private.</span>-->
                
                
                <div class="row">
                    <p class="col-md-4"><input type="text" name="date" placeholder="Day (dd)" required></p>
                    <p class="col-md-4"><input type="text" name="month" placeholder="Month (mm)" required></p>
                    <p class="col-md-4"><input type="text" name="year" placeholder="Year (yyyy)" required></p>
                    
                </div>
                <div class="row">
                    <p class="col-md-6 city-wrap">
                        <select name="cityName">
                            <option selected disabled>City</option>
                            <option>Indore</option>
                            <option>Bhopal</option>
                            <option>Dhar</option>
                            <option>Badwani</option>
                            <option>Vidhisha</option>
                            <option>Ujjain</option>
                        </select>
                    </p>
                    <p class="col-md-6 country-wrap">
                        <!-- Add more country name -->
                        <select name="countryName">
                            <option selected disabled>Country</option>
                            <option>India</option>
                            <option>Nepal</option>
                            <option>Bangladesh</option>
                            <option>Sri Lanka</option>
                        </select>
                    </p>
                    <p class="col-md-6 specialty-wrap">
                        <select name="specialization">
                            <option selected disabled>Specialty</option>
                            <option>Cardiology</option>
                            <option>Oncology </option>
                            <option>Neurology</option>
                            <option>Urology</option>
                            <option>Surgical Gastroenterology</option>
                            <option>Medical Gastroenterology</option>
                            <option>Obstetrics and Gynaecology</option>
                            <option>Bone Marrow Transplant</option>
                            <option>Dentist</option>
                        </select>
                        <p class="col-md-6 language-wrap">
                            <select name="lang">
                                <option  selected disabled>Language</option>
                                <option>English</option>
                                <option>Hindi</option>
                            </select>
                            <span class="extern-type">Proficient languages.</span>
                        </p>
                        <p class="col-md-4"><input name="medicalCollege" type="text" placeholder="Medical College" required>
                            <span class="extern-type"></p>

                            <p class="col-md-4"><input name="medicalID" type="text" placeholder="Medical ID" required></p>

                            <p class="col-md-4"><input name="aadharCardNumber" type="number" placeholder="Aadhar Card No." required></p>

                           

                            <p class="col-xs-6"><input type="text" name="facebook" placeholder="Enter your Facebook profile link" required></p>

                            <p class="col-xs-6"><input type="text" name="linkedin" placeholder="Enter your LinkedIn profile link" required></p>

                        
                </div>
                <p><input type="password" name="password" placeholder="Password" required>
                    <span class="extern-type">Atleast 8 characters long.</span>
                </p>
                <p><input type="password" name="verifyPassword" placeholder="Verify Password" required></p>
                <p class="register-toggle">
                    <label for="register-agree" class="toggle-label" data-on="YES" data-off="NO">
                        <input type="checkbox" name="termsAndConditions" id="register-agree" class="toggle-input">
                        <span class="toggle-handle"></span>
                    </label>
                    <span class="info">Do you agree to the
                        <a>terms and conditions?</a>
                    </span>
                </p>
                <p class="register-submit"><input type="submit" name="submit" value="Register Now"></p>
            </form>
            
        </div> <br><br><br>

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
